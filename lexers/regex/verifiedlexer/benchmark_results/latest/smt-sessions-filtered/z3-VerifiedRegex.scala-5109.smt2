; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261214 () Bool)

(assert start!261214)

(declare-fun b!2682647 () Bool)

(declare-fun b_free!75877 () Bool)

(declare-fun b_next!76581 () Bool)

(assert (=> b!2682647 (= b_free!75877 (not b_next!76581))))

(declare-fun tp!848998 () Bool)

(declare-fun b_and!198675 () Bool)

(assert (=> b!2682647 (= tp!848998 b_and!198675)))

(declare-fun b!2682651 () Bool)

(declare-fun b_free!75879 () Bool)

(declare-fun b_next!76583 () Bool)

(assert (=> b!2682651 (= b_free!75879 (not b_next!76583))))

(declare-fun tp!848990 () Bool)

(declare-fun b_and!198677 () Bool)

(assert (=> b!2682651 (= tp!848990 b_and!198677)))

(declare-fun b!2682675 () Bool)

(declare-fun b_free!75881 () Bool)

(declare-fun b_next!76585 () Bool)

(assert (=> b!2682675 (= b_free!75881 (not b_next!76585))))

(declare-fun tp!849000 () Bool)

(declare-fun b_and!198679 () Bool)

(assert (=> b!2682675 (= tp!849000 b_and!198679)))

(declare-fun b!2682648 () Bool)

(declare-fun b_free!75883 () Bool)

(declare-fun b_next!76587 () Bool)

(assert (=> b!2682648 (= b_free!75883 (not b_next!76587))))

(declare-fun tp!848997 () Bool)

(declare-fun b_and!198681 () Bool)

(assert (=> b!2682648 (= tp!848997 b_and!198681)))

(declare-fun b_free!75885 () Bool)

(declare-fun b_next!76589 () Bool)

(assert (=> b!2682648 (= b_free!75885 (not b_next!76589))))

(declare-fun tp!848988 () Bool)

(declare-fun b_and!198683 () Bool)

(assert (=> b!2682648 (= tp!848988 b_and!198683)))

(declare-fun b!2682663 () Bool)

(declare-fun b_free!75887 () Bool)

(declare-fun b_next!76591 () Bool)

(assert (=> b!2682663 (= b_free!75887 (not b_next!76591))))

(declare-fun tp!848985 () Bool)

(declare-fun b_and!198685 () Bool)

(assert (=> b!2682663 (= tp!848985 b_and!198685)))

(declare-datatypes ((List!31079 0))(
  ( (Nil!30979) (Cons!30979 (h!36399 (_ BitVec 16)) (t!224584 List!31079)) )
))
(declare-datatypes ((TokenValue!4953 0))(
  ( (FloatLiteralValue!9906 (text!35116 List!31079)) (TokenValueExt!4952 (__x!19867 Int)) (Broken!24765 (value!152422 List!31079)) (Object!5052) (End!4953) (Def!4953) (Underscore!4953) (Match!4953) (Else!4953) (Error!4953) (Case!4953) (If!4953) (Extends!4953) (Abstract!4953) (Class!4953) (Val!4953) (DelimiterValue!9906 (del!5013 List!31079)) (KeywordValue!4959 (value!152423 List!31079)) (CommentValue!9906 (value!152424 List!31079)) (WhitespaceValue!9906 (value!152425 List!31079)) (IndentationValue!4953 (value!152426 List!31079)) (String!34664) (Int32!4953) (Broken!24766 (value!152427 List!31079)) (Boolean!4954) (Unit!45104) (OperatorValue!4956 (op!5013 List!31079)) (IdentifierValue!9906 (value!152428 List!31079)) (IdentifierValue!9907 (value!152429 List!31079)) (WhitespaceValue!9907 (value!152430 List!31079)) (True!9906) (False!9906) (Broken!24767 (value!152431 List!31079)) (Broken!24768 (value!152432 List!31079)) (True!9907) (RightBrace!4953) (RightBracket!4953) (Colon!4953) (Null!4953) (Comma!4953) (LeftBracket!4953) (False!9907) (LeftBrace!4953) (ImaginaryLiteralValue!4953 (text!35117 List!31079)) (StringLiteralValue!14859 (value!152433 List!31079)) (EOFValue!4953 (value!152434 List!31079)) (IdentValue!4953 (value!152435 List!31079)) (DelimiterValue!9907 (value!152436 List!31079)) (DedentValue!4953 (value!152437 List!31079)) (NewLineValue!4953 (value!152438 List!31079)) (IntegerValue!14859 (value!152439 (_ BitVec 32)) (text!35118 List!31079)) (IntegerValue!14860 (value!152440 Int) (text!35119 List!31079)) (Times!4953) (Or!4953) (Equal!4953) (Minus!4953) (Broken!24769 (value!152441 List!31079)) (And!4953) (Div!4953) (LessEqual!4953) (Mod!4953) (Concat!12836) (Not!4953) (Plus!4953) (SpaceValue!4953 (value!152442 List!31079)) (IntegerValue!14861 (value!152443 Int) (text!35120 List!31079)) (StringLiteralValue!14860 (text!35121 List!31079)) (FloatLiteralValue!9907 (text!35122 List!31079)) (BytesLiteralValue!4953 (value!152444 List!31079)) (CommentValue!9907 (value!152445 List!31079)) (StringLiteralValue!14861 (value!152446 List!31079)) (ErrorTokenValue!4953 (msg!5014 List!31079)) )
))
(declare-datatypes ((C!15924 0))(
  ( (C!15925 (val!9896 Int)) )
))
(declare-datatypes ((Regex!7883 0))(
  ( (ElementMatch!7883 (c!432015 C!15924)) (Concat!12837 (regOne!16278 Regex!7883) (regTwo!16278 Regex!7883)) (EmptyExpr!7883) (Star!7883 (reg!8212 Regex!7883)) (EmptyLang!7883) (Union!7883 (regOne!16279 Regex!7883) (regTwo!16279 Regex!7883)) )
))
(declare-datatypes ((String!34665 0))(
  ( (String!34666 (value!152447 String)) )
))
(declare-datatypes ((List!31080 0))(
  ( (Nil!30980) (Cons!30980 (h!36400 C!15924) (t!224585 List!31080)) )
))
(declare-datatypes ((IArray!19387 0))(
  ( (IArray!19388 (innerList!9751 List!31080)) )
))
(declare-datatypes ((Conc!9691 0))(
  ( (Node!9691 (left!23922 Conc!9691) (right!24252 Conc!9691) (csize!19612 Int) (cheight!9902 Int)) (Leaf!14801 (xs!12721 IArray!19387) (csize!19613 Int)) (Empty!9691) )
))
(declare-datatypes ((BalanceConc!18996 0))(
  ( (BalanceConc!18997 (c!432016 Conc!9691)) )
))
(declare-datatypes ((TokenValueInjection!9346 0))(
  ( (TokenValueInjection!9347 (toValue!6685 Int) (toChars!6544 Int)) )
))
(declare-datatypes ((Rule!9262 0))(
  ( (Rule!9263 (regex!4731 Regex!7883) (tag!5235 String!34665) (isSeparator!4731 Bool) (transformation!4731 TokenValueInjection!9346)) )
))
(declare-datatypes ((Token!8928 0))(
  ( (Token!8929 (value!152448 TokenValue!4953) (rule!7141 Rule!9262) (size!23925 Int) (originalCharacters!5495 List!31080)) )
))
(declare-datatypes ((List!31081 0))(
  ( (Nil!30981) (Cons!30981 (h!36401 Token!8928) (t!224586 List!31081)) )
))
(declare-datatypes ((IArray!19389 0))(
  ( (IArray!19390 (innerList!9752 List!31081)) )
))
(declare-datatypes ((Conc!9692 0))(
  ( (Node!9692 (left!23923 Conc!9692) (right!24253 Conc!9692) (csize!19614 Int) (cheight!9903 Int)) (Leaf!14802 (xs!12722 IArray!19389) (csize!19615 Int)) (Empty!9692) )
))
(declare-datatypes ((BalanceConc!18998 0))(
  ( (BalanceConc!18999 (c!432017 Conc!9692)) )
))
(declare-datatypes ((tuple2!30478 0))(
  ( (tuple2!30479 (_1!17811 BalanceConc!18998) (_2!17811 BalanceConc!18996)) )
))
(declare-fun lt!945417 () tuple2!30478)

(declare-datatypes ((tuple2!30480 0))(
  ( (tuple2!30481 (_1!17812 Token!8928) (_2!17812 BalanceConc!18996)) )
))
(declare-datatypes ((Option!6119 0))(
  ( (None!6118) (Some!6118 (v!32781 tuple2!30480)) )
))
(declare-fun lt!945426 () Option!6119)

(declare-fun b!2682639 () Bool)

(declare-fun e!1691594 () Bool)

(declare-fun lt!945440 () tuple2!30478)

(declare-fun prepend!1061 (BalanceConc!18998 Token!8928) BalanceConc!18998)

(assert (=> b!2682639 (= e!1691594 (= lt!945440 (tuple2!30479 (prepend!1061 (_1!17811 lt!945417) (_1!17812 (v!32781 lt!945426))) (_2!17811 lt!945417))))))

(declare-fun e!1691610 () Bool)

(declare-fun e!1691597 () Bool)

(declare-fun b!2682640 () Bool)

(declare-fun tp!848989 () Bool)

(declare-datatypes ((List!31082 0))(
  ( (Nil!30982) (Cons!30982 (h!36402 Rule!9262) (t!224587 List!31082)) )
))
(declare-fun rules!1381 () List!31082)

(declare-fun inv!41995 (String!34665) Bool)

(declare-fun inv!42002 (TokenValueInjection!9346) Bool)

(assert (=> b!2682640 (= e!1691597 (and tp!848989 (inv!41995 (tag!5235 (h!36402 rules!1381))) (inv!42002 (transformation!4731 (h!36402 rules!1381))) e!1691610))))

(declare-fun b!2682641 () Bool)

(declare-fun e!1691608 () Bool)

(declare-fun totalInput!354 () BalanceConc!18996)

(declare-fun tp!848991 () Bool)

(declare-fun inv!42003 (Conc!9691) Bool)

(assert (=> b!2682641 (= e!1691608 (and (inv!42003 (c!432016 totalInput!354)) tp!848991))))

(declare-fun b!2682642 () Bool)

(declare-fun e!1691604 () Bool)

(declare-fun e!1691587 () Bool)

(assert (=> b!2682642 (= e!1691604 e!1691587)))

(declare-fun res!1127476 () Bool)

(assert (=> b!2682642 (=> (not res!1127476) (not e!1691587))))

(declare-fun lt!945431 () List!31081)

(declare-fun lt!945437 () List!31081)

(assert (=> b!2682642 (= res!1127476 (= lt!945431 lt!945437))))

(declare-fun acc!348 () BalanceConc!18998)

(declare-fun list!11689 (BalanceConc!18998) List!31081)

(assert (=> b!2682642 (= lt!945437 (list!11689 acc!348))))

(declare-fun lt!945429 () tuple2!30478)

(assert (=> b!2682642 (= lt!945431 (list!11689 (_1!17811 lt!945429)))))

(declare-datatypes ((LexerInterface!4327 0))(
  ( (LexerInterfaceExt!4324 (__x!19868 Int)) (Lexer!4325) )
))
(declare-fun thiss!12257 () LexerInterface!4327)

(declare-fun treated!26 () BalanceConc!18996)

(declare-fun lexRec!590 (LexerInterface!4327 List!31082 BalanceConc!18996) tuple2!30478)

(assert (=> b!2682642 (= lt!945429 (lexRec!590 thiss!12257 rules!1381 treated!26))))

(declare-fun res!1127479 () Bool)

(declare-fun e!1691602 () Bool)

(assert (=> start!261214 (=> (not res!1127479) (not e!1691602))))

(get-info :version)

(assert (=> start!261214 (= res!1127479 ((_ is Lexer!4325) thiss!12257))))

(assert (=> start!261214 e!1691602))

(declare-fun inv!42004 (BalanceConc!18996) Bool)

(assert (=> start!261214 (and (inv!42004 totalInput!354) e!1691608)))

(declare-datatypes ((List!31083 0))(
  ( (Nil!30983) (Cons!30983 (h!36403 Regex!7883) (t!224588 List!31083)) )
))
(declare-datatypes ((Context!4314 0))(
  ( (Context!4315 (exprs!2657 List!31083)) )
))
(declare-datatypes ((tuple2!30482 0))(
  ( (tuple2!30483 (_1!17813 Context!4314) (_2!17813 C!15924)) )
))
(declare-datatypes ((array!12452 0))(
  ( (array!12453 (arr!5566 (Array (_ BitVec 32) (_ BitVec 64))) (size!23926 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30484 0))(
  ( (tuple2!30485 (_1!17814 tuple2!30482) (_2!17814 (InoxSet Context!4314))) )
))
(declare-datatypes ((List!31084 0))(
  ( (Nil!30984) (Cons!30984 (h!36404 tuple2!30484) (t!224589 List!31084)) )
))
(declare-datatypes ((array!12454 0))(
  ( (array!12455 (arr!5567 (Array (_ BitVec 32) List!31084)) (size!23927 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3410 0))(
  ( (HashableExt!3409 (__x!19869 Int)) )
))
(declare-datatypes ((LongMapFixedSize!6988 0))(
  ( (LongMapFixedSize!6989 (defaultEntry!3879 Int) (mask!9172 (_ BitVec 32)) (extraKeys!3743 (_ BitVec 32)) (zeroValue!3753 List!31084) (minValue!3753 List!31084) (_size!7031 (_ BitVec 32)) (_keys!3794 array!12452) (_values!3775 array!12454) (_vacant!3555 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13785 0))(
  ( (Cell!13786 (v!32782 LongMapFixedSize!6988)) )
))
(declare-datatypes ((MutLongMap!3494 0))(
  ( (LongMap!3494 (underlying!7191 Cell!13785)) (MutLongMapExt!3493 (__x!19870 Int)) )
))
(declare-datatypes ((Cell!13787 0))(
  ( (Cell!13788 (v!32783 MutLongMap!3494)) )
))
(declare-datatypes ((MutableMap!3400 0))(
  ( (MutableMapExt!3399 (__x!19871 Int)) (HashMap!3400 (underlying!7192 Cell!13787) (hashF!5442 Hashable!3410) (_size!7032 (_ BitVec 32)) (defaultValue!3571 Int)) )
))
(declare-datatypes ((CacheUp!2110 0))(
  ( (CacheUp!2111 (cache!3543 MutableMap!3400)) )
))
(declare-fun cacheUp!486 () CacheUp!2110)

(declare-fun e!1691581 () Bool)

(declare-fun inv!42005 (CacheUp!2110) Bool)

(assert (=> start!261214 (and (inv!42005 cacheUp!486) e!1691581)))

(declare-fun e!1691600 () Bool)

(declare-fun inv!42006 (BalanceConc!18998) Bool)

(assert (=> start!261214 (and (inv!42006 acc!348) e!1691600)))

(declare-fun input!780 () BalanceConc!18996)

(declare-fun e!1691585 () Bool)

(assert (=> start!261214 (and (inv!42004 input!780) e!1691585)))

(declare-fun e!1691582 () Bool)

(assert (=> start!261214 (and (inv!42004 treated!26) e!1691582)))

(declare-fun e!1691589 () Bool)

(assert (=> start!261214 e!1691589))

(assert (=> start!261214 true))

(declare-datatypes ((tuple3!4204 0))(
  ( (tuple3!4205 (_1!17815 Regex!7883) (_2!17815 Context!4314) (_3!2572 C!15924)) )
))
(declare-datatypes ((tuple2!30486 0))(
  ( (tuple2!30487 (_1!17816 tuple3!4204) (_2!17816 (InoxSet Context!4314))) )
))
(declare-datatypes ((List!31085 0))(
  ( (Nil!30985) (Cons!30985 (h!36405 tuple2!30486) (t!224590 List!31085)) )
))
(declare-datatypes ((array!12456 0))(
  ( (array!12457 (arr!5568 (Array (_ BitVec 32) List!31085)) (size!23928 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6990 0))(
  ( (LongMapFixedSize!6991 (defaultEntry!3880 Int) (mask!9173 (_ BitVec 32)) (extraKeys!3744 (_ BitVec 32)) (zeroValue!3754 List!31085) (minValue!3754 List!31085) (_size!7033 (_ BitVec 32)) (_keys!3795 array!12452) (_values!3776 array!12456) (_vacant!3556 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13789 0))(
  ( (Cell!13790 (v!32784 LongMapFixedSize!6990)) )
))
(declare-datatypes ((MutLongMap!3495 0))(
  ( (LongMap!3495 (underlying!7193 Cell!13789)) (MutLongMapExt!3494 (__x!19872 Int)) )
))
(declare-datatypes ((Cell!13791 0))(
  ( (Cell!13792 (v!32785 MutLongMap!3495)) )
))
(declare-datatypes ((Hashable!3411 0))(
  ( (HashableExt!3410 (__x!19873 Int)) )
))
(declare-datatypes ((MutableMap!3401 0))(
  ( (MutableMapExt!3400 (__x!19874 Int)) (HashMap!3401 (underlying!7194 Cell!13791) (hashF!5443 Hashable!3411) (_size!7034 (_ BitVec 32)) (defaultValue!3572 Int)) )
))
(declare-datatypes ((CacheDown!2222 0))(
  ( (CacheDown!2223 (cache!3544 MutableMap!3401)) )
))
(declare-fun cacheDown!499 () CacheDown!2222)

(declare-fun e!1691584 () Bool)

(declare-fun inv!42007 (CacheDown!2222) Bool)

(assert (=> start!261214 (and (inv!42007 cacheDown!499) e!1691584)))

(declare-fun b!2682643 () Bool)

(declare-fun e!1691599 () Bool)

(declare-fun e!1691606 () Bool)

(declare-fun lt!945419 () MutLongMap!3494)

(assert (=> b!2682643 (= e!1691599 (and e!1691606 ((_ is LongMap!3494) lt!945419)))))

(assert (=> b!2682643 (= lt!945419 (v!32783 (underlying!7192 (cache!3543 cacheUp!486))))))

(declare-fun b!2682644 () Bool)

(declare-fun res!1127485 () Bool)

(assert (=> b!2682644 (=> (not res!1127485) (not e!1691602))))

(declare-fun valid!2703 (CacheDown!2222) Bool)

(assert (=> b!2682644 (= res!1127485 (valid!2703 cacheDown!499))))

(declare-fun b!2682645 () Bool)

(declare-fun tp!848981 () Bool)

(assert (=> b!2682645 (= e!1691589 (and e!1691597 tp!848981))))

(declare-fun b!2682646 () Bool)

(declare-fun e!1691583 () Bool)

(assert (=> b!2682646 (= e!1691584 e!1691583)))

(declare-fun e!1691590 () Bool)

(assert (=> b!2682647 (= e!1691590 (and e!1691599 tp!848998))))

(assert (=> b!2682648 (= e!1691610 (and tp!848997 tp!848988))))

(declare-fun b!2682649 () Bool)

(declare-fun res!1127483 () Bool)

(assert (=> b!2682649 (=> (not res!1127483) (not e!1691602))))

(declare-fun isEmpty!17686 (List!31082) Bool)

(assert (=> b!2682649 (= res!1127483 (not (isEmpty!17686 rules!1381)))))

(declare-fun b!2682650 () Bool)

(declare-fun tp!848996 () Bool)

(declare-fun inv!42008 (Conc!9692) Bool)

(assert (=> b!2682650 (= e!1691600 (and (inv!42008 (c!432017 acc!348)) tp!848996))))

(declare-fun e!1691580 () Bool)

(declare-fun tp!848995 () Bool)

(declare-fun tp!848979 () Bool)

(declare-fun e!1691598 () Bool)

(declare-fun array_inv!3974 (array!12452) Bool)

(declare-fun array_inv!3975 (array!12454) Bool)

(assert (=> b!2682651 (= e!1691580 (and tp!848990 tp!848979 tp!848995 (array_inv!3974 (_keys!3794 (v!32782 (underlying!7191 (v!32783 (underlying!7192 (cache!3543 cacheUp!486))))))) (array_inv!3975 (_values!3775 (v!32782 (underlying!7191 (v!32783 (underlying!7192 (cache!3543 cacheUp!486))))))) e!1691598))))

(declare-fun b!2682652 () Bool)

(declare-fun e!1691595 () tuple2!30478)

(assert (=> b!2682652 (= e!1691595 (tuple2!30479 acc!348 input!780))))

(declare-fun b!2682653 () Bool)

(declare-fun tp!848999 () Bool)

(assert (=> b!2682653 (= e!1691585 (and (inv!42003 (c!432016 input!780)) tp!848999))))

(declare-fun mapIsEmpty!15983 () Bool)

(declare-fun mapRes!15983 () Bool)

(assert (=> mapIsEmpty!15983 mapRes!15983))

(declare-fun b!2682654 () Bool)

(declare-fun tp!848992 () Bool)

(assert (=> b!2682654 (= e!1691598 (and tp!848992 mapRes!15983))))

(declare-fun condMapEmpty!15984 () Bool)

(declare-fun mapDefault!15984 () List!31084)

(assert (=> b!2682654 (= condMapEmpty!15984 (= (arr!5567 (_values!3775 (v!32782 (underlying!7191 (v!32783 (underlying!7192 (cache!3543 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31084)) mapDefault!15984)))))

(declare-fun b!2682655 () Bool)

(declare-fun e!1691603 () Bool)

(assert (=> b!2682655 (= e!1691603 e!1691580)))

(declare-fun b!2682656 () Bool)

(declare-fun e!1691609 () Bool)

(declare-fun e!1691586 () Bool)

(assert (=> b!2682656 (= e!1691609 e!1691586)))

(declare-fun lt!945424 () BalanceConc!18998)

(declare-fun b!2682657 () Bool)

(declare-fun lt!945438 () BalanceConc!18996)

(declare-fun lexTailRec!17 (LexerInterface!4327 List!31082 BalanceConc!18996 BalanceConc!18996 BalanceConc!18996 BalanceConc!18998) tuple2!30478)

(assert (=> b!2682657 (= e!1691595 (lexTailRec!17 thiss!12257 rules!1381 totalInput!354 lt!945438 (_2!17812 (v!32781 lt!945426)) lt!945424))))

(assert (=> b!2682657 (= lt!945417 (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945426))))))

(declare-fun lt!945441 () BalanceConc!18996)

(declare-fun charsOf!2980 (Token!8928) BalanceConc!18996)

(assert (=> b!2682657 (= lt!945441 (charsOf!2980 (_1!17812 (v!32781 lt!945426))))))

(declare-fun lt!945439 () List!31080)

(declare-fun list!11690 (BalanceConc!18996) List!31080)

(assert (=> b!2682657 (= lt!945439 (list!11690 lt!945441))))

(declare-fun lt!945420 () List!31080)

(assert (=> b!2682657 (= lt!945420 (list!11690 (_2!17812 (v!32781 lt!945426))))))

(declare-fun lt!945436 () List!31080)

(declare-datatypes ((Unit!45105 0))(
  ( (Unit!45106) )
))
(declare-fun lt!945416 () Unit!45105)

(declare-fun lemmaConcatAssociativity!1534 (List!31080 List!31080 List!31080) Unit!45105)

(assert (=> b!2682657 (= lt!945416 (lemmaConcatAssociativity!1534 lt!945436 lt!945439 lt!945420))))

(declare-fun lt!945422 () List!31080)

(declare-fun ++!7569 (List!31080 List!31080) List!31080)

(assert (=> b!2682657 (= lt!945422 (++!7569 lt!945436 lt!945439))))

(declare-fun res!1127484 () Bool)

(assert (=> b!2682657 (= res!1127484 (= (++!7569 lt!945422 lt!945420) (++!7569 lt!945436 (++!7569 lt!945439 lt!945420))))))

(assert (=> b!2682657 (=> (not res!1127484) (not e!1691594))))

(assert (=> b!2682657 e!1691594))

(declare-fun lt!945430 () List!31081)

(assert (=> b!2682657 (= lt!945430 (Cons!30981 (_1!17812 (v!32781 lt!945426)) Nil!30981))))

(declare-fun lt!945433 () List!31081)

(assert (=> b!2682657 (= lt!945433 (list!11689 (_1!17811 lt!945417)))))

(declare-fun lt!945415 () Unit!45105)

(declare-fun lemmaConcatAssociativity!1535 (List!31081 List!31081 List!31081) Unit!45105)

(assert (=> b!2682657 (= lt!945415 (lemmaConcatAssociativity!1535 lt!945437 lt!945430 lt!945433))))

(declare-fun ++!7570 (List!31081 List!31081) List!31081)

(assert (=> b!2682657 (= (++!7570 (++!7570 lt!945437 lt!945430) lt!945433) (++!7570 lt!945437 (++!7570 lt!945430 lt!945433)))))

(declare-fun append!755 (BalanceConc!18998 Token!8928) BalanceConc!18998)

(assert (=> b!2682657 (= lt!945424 (append!755 acc!348 (_1!17812 (v!32781 lt!945426))))))

(declare-fun lt!945432 () List!31081)

(assert (=> b!2682657 (= lt!945432 (list!11689 lt!945424))))

(declare-fun lt!945434 () Unit!45105)

(declare-fun lemmaLexThenLexPrefix!398 (LexerInterface!4327 List!31082 List!31080 List!31080 List!31081 List!31081 List!31080) Unit!45105)

(assert (=> b!2682657 (= lt!945434 (lemmaLexThenLexPrefix!398 thiss!12257 rules!1381 lt!945422 lt!945420 lt!945432 lt!945433 (list!11690 (_2!17811 lt!945417))))))

(declare-datatypes ((tuple2!30488 0))(
  ( (tuple2!30489 (_1!17817 List!31081) (_2!17817 List!31080)) )
))
(declare-fun lexList!1185 (LexerInterface!4327 List!31082 List!31080) tuple2!30488)

(assert (=> b!2682657 (= (lexList!1185 thiss!12257 rules!1381 lt!945422) (tuple2!30489 lt!945432 Nil!30980))))

(declare-fun ++!7571 (BalanceConc!18996 BalanceConc!18996) BalanceConc!18996)

(assert (=> b!2682657 (= lt!945438 (++!7571 treated!26 lt!945441))))

(declare-fun lt!945425 () Option!6119)

(declare-fun maxPrefixZipperSequence!993 (LexerInterface!4327 List!31082 BalanceConc!18996) Option!6119)

(assert (=> b!2682657 (= lt!945425 (maxPrefixZipperSequence!993 thiss!12257 rules!1381 lt!945438))))

(declare-fun c!432014 () Bool)

(assert (=> b!2682657 (= c!432014 ((_ is Some!6118) lt!945425))))

(declare-fun e!1691605 () tuple2!30478)

(assert (=> b!2682657 (= (lexRec!590 thiss!12257 rules!1381 lt!945438) e!1691605)))

(declare-fun b!2682658 () Bool)

(assert (=> b!2682658 (= e!1691605 (tuple2!30479 (BalanceConc!18999 Empty!9692) lt!945438))))

(declare-fun b!2682659 () Bool)

(declare-fun e!1691601 () Bool)

(declare-fun tp!848983 () Bool)

(declare-fun mapRes!15984 () Bool)

(assert (=> b!2682659 (= e!1691601 (and tp!848983 mapRes!15984))))

(declare-fun condMapEmpty!15983 () Bool)

(declare-fun mapDefault!15983 () List!31085)

(assert (=> b!2682659 (= condMapEmpty!15983 (= (arr!5568 (_values!3776 (v!32784 (underlying!7193 (v!32785 (underlying!7194 (cache!3544 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31085)) mapDefault!15983)))))

(declare-fun b!2682660 () Bool)

(declare-fun e!1691592 () Bool)

(assert (=> b!2682660 (= e!1691587 e!1691592)))

(declare-fun res!1127477 () Bool)

(assert (=> b!2682660 (=> (not res!1127477) (not e!1691592))))

(declare-fun lt!945418 () tuple2!30478)

(declare-fun ++!7572 (BalanceConc!18998 BalanceConc!18998) BalanceConc!18998)

(assert (=> b!2682660 (= res!1127477 (= (list!11689 (_1!17811 lt!945418)) (list!11689 (++!7572 acc!348 (_1!17811 lt!945440)))))))

(assert (=> b!2682660 (= lt!945440 (lexRec!590 thiss!12257 rules!1381 input!780))))

(assert (=> b!2682660 (= lt!945418 (lexRec!590 thiss!12257 rules!1381 totalInput!354))))

(declare-fun b!2682661 () Bool)

(declare-fun e!1691588 () Bool)

(declare-fun e!1691596 () Bool)

(declare-fun lt!945427 () MutLongMap!3495)

(assert (=> b!2682661 (= e!1691588 (and e!1691596 ((_ is LongMap!3495) lt!945427)))))

(assert (=> b!2682661 (= lt!945427 (v!32785 (underlying!7194 (cache!3544 cacheDown!499))))))

(declare-fun b!2682662 () Bool)

(declare-fun res!1127486 () Bool)

(assert (=> b!2682662 (=> (not res!1127486) (not e!1691592))))

(assert (=> b!2682662 (= res!1127486 (= (list!11690 (_2!17811 lt!945418)) (list!11690 (_2!17811 lt!945440))))))

(declare-fun tp!848993 () Bool)

(declare-fun tp!848982 () Bool)

(declare-fun array_inv!3976 (array!12456) Bool)

(assert (=> b!2682663 (= e!1691586 (and tp!848985 tp!848982 tp!848993 (array_inv!3974 (_keys!3795 (v!32784 (underlying!7193 (v!32785 (underlying!7194 (cache!3544 cacheDown!499))))))) (array_inv!3976 (_values!3776 (v!32784 (underlying!7193 (v!32785 (underlying!7194 (cache!3544 cacheDown!499))))))) e!1691601))))

(declare-fun b!2682664 () Bool)

(assert (=> b!2682664 (= e!1691596 e!1691609)))

(declare-fun b!2682665 () Bool)

(declare-fun res!1127481 () Bool)

(assert (=> b!2682665 (=> (not res!1127481) (not e!1691602))))

(declare-fun rulesInvariant!3820 (LexerInterface!4327 List!31082) Bool)

(assert (=> b!2682665 (= res!1127481 (rulesInvariant!3820 thiss!12257 rules!1381))))

(declare-fun b!2682666 () Bool)

(declare-fun e!1691607 () Bool)

(declare-fun lex!1949 (LexerInterface!4327 List!31082 BalanceConc!18996) tuple2!30478)

(declare-fun lexTailRecV2!861 (LexerInterface!4327 List!31082 BalanceConc!18996 BalanceConc!18996 BalanceConc!18996 BalanceConc!18998) tuple2!30478)

(assert (=> b!2682666 (= e!1691607 (= (lex!1949 thiss!12257 rules!1381 input!780) (lexTailRecV2!861 thiss!12257 rules!1381 input!780 (BalanceConc!18997 Empty!9691) input!780 (BalanceConc!18999 Empty!9692))))))

(declare-fun b!2682667 () Bool)

(declare-fun res!1127480 () Bool)

(assert (=> b!2682667 (=> (not res!1127480) (not e!1691602))))

(declare-fun valid!2704 (CacheUp!2110) Bool)

(assert (=> b!2682667 (= res!1127480 (valid!2704 cacheUp!486))))

(declare-fun b!2682668 () Bool)

(declare-fun lt!945435 () tuple2!30478)

(assert (=> b!2682668 (= lt!945435 (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945425))))))

(assert (=> b!2682668 (= e!1691605 (tuple2!30479 (prepend!1061 (_1!17811 lt!945435) (_1!17812 (v!32781 lt!945425))) (_2!17811 lt!945435)))))

(declare-fun b!2682669 () Bool)

(assert (=> b!2682669 (= e!1691581 e!1691590)))

(declare-fun b!2682670 () Bool)

(declare-fun e!1691579 () Bool)

(declare-datatypes ((tuple3!4206 0))(
  ( (tuple3!4207 (_1!17818 Option!6119) (_2!17818 CacheUp!2110) (_3!2573 CacheDown!2222)) )
))
(declare-fun lt!945421 () tuple3!4206)

(assert (=> b!2682670 (= e!1691579 (valid!2704 (_2!17818 lt!945421)))))

(declare-fun lt!945423 () BalanceConc!18998)

(assert (=> b!2682670 (= lt!945423 (append!755 acc!348 (_1!17812 (v!32781 (_1!17818 lt!945421)))))))

(declare-fun lt!945428 () BalanceConc!18996)

(assert (=> b!2682670 (= lt!945428 (++!7571 treated!26 (charsOf!2980 (_1!17812 (v!32781 (_1!17818 lt!945421))))))))

(declare-fun mapNonEmpty!15983 () Bool)

(declare-fun tp!848986 () Bool)

(declare-fun tp!848987 () Bool)

(assert (=> mapNonEmpty!15983 (= mapRes!15983 (and tp!848986 tp!848987))))

(declare-fun mapKey!15984 () (_ BitVec 32))

(declare-fun mapValue!15983 () List!31084)

(declare-fun mapRest!15983 () (Array (_ BitVec 32) List!31084))

(assert (=> mapNonEmpty!15983 (= (arr!5567 (_values!3775 (v!32782 (underlying!7191 (v!32783 (underlying!7192 (cache!3543 cacheUp!486))))))) (store mapRest!15983 mapKey!15984 mapValue!15983))))

(declare-fun b!2682671 () Bool)

(assert (=> b!2682671 (= e!1691606 e!1691603)))

(declare-fun b!2682672 () Bool)

(declare-fun tp!848980 () Bool)

(assert (=> b!2682672 (= e!1691582 (and (inv!42003 (c!432016 treated!26)) tp!848980))))

(declare-fun b!2682673 () Bool)

(declare-fun res!1127478 () Bool)

(assert (=> b!2682673 (=> (not res!1127478) (not e!1691587))))

(declare-fun isEmpty!17687 (List!31080) Bool)

(assert (=> b!2682673 (= res!1127478 (isEmpty!17687 (list!11690 (_2!17811 lt!945429))))))

(declare-fun b!2682674 () Bool)

(assert (=> b!2682674 (= e!1691602 e!1691604)))

(declare-fun res!1127475 () Bool)

(assert (=> b!2682674 (=> (not res!1127475) (not e!1691604))))

(assert (=> b!2682674 (= res!1127475 (= (list!11690 totalInput!354) (++!7569 lt!945436 (list!11690 input!780))))))

(assert (=> b!2682674 (= lt!945436 (list!11690 treated!26))))

(assert (=> b!2682675 (= e!1691583 (and e!1691588 tp!849000))))

(declare-fun b!2682676 () Bool)

(assert (=> b!2682676 (= e!1691592 (not e!1691579))))

(declare-fun res!1127487 () Bool)

(assert (=> b!2682676 (=> res!1127487 e!1691579)))

(assert (=> b!2682676 (= res!1127487 (not ((_ is Some!6118) (_1!17818 lt!945421))))))

(declare-fun maxPrefixZipperSequenceMem!5 (LexerInterface!4327 List!31082 BalanceConc!18996 CacheUp!2110 CacheDown!2222) tuple3!4206)

(assert (=> b!2682676 (= lt!945421 (maxPrefixZipperSequenceMem!5 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499))))

(assert (=> b!2682676 e!1691607))

(declare-fun res!1127482 () Bool)

(assert (=> b!2682676 (=> (not res!1127482) (not e!1691607))))

(assert (=> b!2682676 (= res!1127482 (= (lexTailRec!17 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) e!1691595))))

(declare-fun c!432013 () Bool)

(assert (=> b!2682676 (= c!432013 ((_ is Some!6118) lt!945426))))

(assert (=> b!2682676 (= lt!945426 (maxPrefixZipperSequence!993 thiss!12257 rules!1381 input!780))))

(declare-fun mapNonEmpty!15984 () Bool)

(declare-fun tp!848984 () Bool)

(declare-fun tp!848994 () Bool)

(assert (=> mapNonEmpty!15984 (= mapRes!15984 (and tp!848984 tp!848994))))

(declare-fun mapValue!15984 () List!31085)

(declare-fun mapRest!15984 () (Array (_ BitVec 32) List!31085))

(declare-fun mapKey!15983 () (_ BitVec 32))

(assert (=> mapNonEmpty!15984 (= (arr!5568 (_values!3776 (v!32784 (underlying!7193 (v!32785 (underlying!7194 (cache!3544 cacheDown!499))))))) (store mapRest!15984 mapKey!15983 mapValue!15984))))

(declare-fun mapIsEmpty!15984 () Bool)

(assert (=> mapIsEmpty!15984 mapRes!15984))

(assert (= (and start!261214 res!1127479) b!2682649))

(assert (= (and b!2682649 res!1127483) b!2682665))

(assert (= (and b!2682665 res!1127481) b!2682667))

(assert (= (and b!2682667 res!1127480) b!2682644))

(assert (= (and b!2682644 res!1127485) b!2682674))

(assert (= (and b!2682674 res!1127475) b!2682642))

(assert (= (and b!2682642 res!1127476) b!2682673))

(assert (= (and b!2682673 res!1127478) b!2682660))

(assert (= (and b!2682660 res!1127477) b!2682662))

(assert (= (and b!2682662 res!1127486) b!2682676))

(assert (= (and b!2682676 c!432013) b!2682657))

(assert (= (and b!2682676 (not c!432013)) b!2682652))

(assert (= (and b!2682657 res!1127484) b!2682639))

(assert (= (and b!2682657 c!432014) b!2682668))

(assert (= (and b!2682657 (not c!432014)) b!2682658))

(assert (= (and b!2682676 res!1127482) b!2682666))

(assert (= (and b!2682676 (not res!1127487)) b!2682670))

(assert (= start!261214 b!2682641))

(assert (= (and b!2682654 condMapEmpty!15984) mapIsEmpty!15983))

(assert (= (and b!2682654 (not condMapEmpty!15984)) mapNonEmpty!15983))

(assert (= b!2682651 b!2682654))

(assert (= b!2682655 b!2682651))

(assert (= b!2682671 b!2682655))

(assert (= (and b!2682643 ((_ is LongMap!3494) (v!32783 (underlying!7192 (cache!3543 cacheUp!486))))) b!2682671))

(assert (= b!2682647 b!2682643))

(assert (= (and b!2682669 ((_ is HashMap!3400) (cache!3543 cacheUp!486))) b!2682647))

(assert (= start!261214 b!2682669))

(assert (= start!261214 b!2682650))

(assert (= start!261214 b!2682653))

(assert (= start!261214 b!2682672))

(assert (= b!2682640 b!2682648))

(assert (= b!2682645 b!2682640))

(assert (= (and start!261214 ((_ is Cons!30982) rules!1381)) b!2682645))

(assert (= (and b!2682659 condMapEmpty!15983) mapIsEmpty!15984))

(assert (= (and b!2682659 (not condMapEmpty!15983)) mapNonEmpty!15984))

(assert (= b!2682663 b!2682659))

(assert (= b!2682656 b!2682663))

(assert (= b!2682664 b!2682656))

(assert (= (and b!2682661 ((_ is LongMap!3495) (v!32785 (underlying!7194 (cache!3544 cacheDown!499))))) b!2682664))

(assert (= b!2682675 b!2682661))

(assert (= (and b!2682646 ((_ is HashMap!3401) (cache!3544 cacheDown!499))) b!2682675))

(assert (= start!261214 b!2682646))

(declare-fun m!3051319 () Bool)

(assert (=> mapNonEmpty!15984 m!3051319))

(declare-fun m!3051321 () Bool)

(assert (=> b!2682657 m!3051321))

(declare-fun m!3051323 () Bool)

(assert (=> b!2682657 m!3051323))

(declare-fun m!3051325 () Bool)

(assert (=> b!2682657 m!3051325))

(declare-fun m!3051327 () Bool)

(assert (=> b!2682657 m!3051327))

(declare-fun m!3051329 () Bool)

(assert (=> b!2682657 m!3051329))

(declare-fun m!3051331 () Bool)

(assert (=> b!2682657 m!3051331))

(declare-fun m!3051333 () Bool)

(assert (=> b!2682657 m!3051333))

(declare-fun m!3051335 () Bool)

(assert (=> b!2682657 m!3051335))

(declare-fun m!3051337 () Bool)

(assert (=> b!2682657 m!3051337))

(declare-fun m!3051339 () Bool)

(assert (=> b!2682657 m!3051339))

(declare-fun m!3051341 () Bool)

(assert (=> b!2682657 m!3051341))

(declare-fun m!3051343 () Bool)

(assert (=> b!2682657 m!3051343))

(declare-fun m!3051345 () Bool)

(assert (=> b!2682657 m!3051345))

(declare-fun m!3051347 () Bool)

(assert (=> b!2682657 m!3051347))

(assert (=> b!2682657 m!3051341))

(declare-fun m!3051349 () Bool)

(assert (=> b!2682657 m!3051349))

(declare-fun m!3051351 () Bool)

(assert (=> b!2682657 m!3051351))

(declare-fun m!3051353 () Bool)

(assert (=> b!2682657 m!3051353))

(declare-fun m!3051355 () Bool)

(assert (=> b!2682657 m!3051355))

(declare-fun m!3051357 () Bool)

(assert (=> b!2682657 m!3051357))

(assert (=> b!2682657 m!3051355))

(declare-fun m!3051359 () Bool)

(assert (=> b!2682657 m!3051359))

(assert (=> b!2682657 m!3051353))

(declare-fun m!3051361 () Bool)

(assert (=> b!2682657 m!3051361))

(declare-fun m!3051363 () Bool)

(assert (=> b!2682657 m!3051363))

(assert (=> b!2682657 m!3051335))

(declare-fun m!3051365 () Bool)

(assert (=> b!2682657 m!3051365))

(declare-fun m!3051367 () Bool)

(assert (=> b!2682657 m!3051367))

(declare-fun m!3051369 () Bool)

(assert (=> b!2682644 m!3051369))

(declare-fun m!3051371 () Bool)

(assert (=> b!2682653 m!3051371))

(declare-fun m!3051373 () Bool)

(assert (=> b!2682665 m!3051373))

(declare-fun m!3051375 () Bool)

(assert (=> b!2682640 m!3051375))

(declare-fun m!3051377 () Bool)

(assert (=> b!2682640 m!3051377))

(declare-fun m!3051379 () Bool)

(assert (=> b!2682673 m!3051379))

(assert (=> b!2682673 m!3051379))

(declare-fun m!3051381 () Bool)

(assert (=> b!2682673 m!3051381))

(declare-fun m!3051383 () Bool)

(assert (=> b!2682649 m!3051383))

(declare-fun m!3051385 () Bool)

(assert (=> b!2682670 m!3051385))

(declare-fun m!3051387 () Bool)

(assert (=> b!2682670 m!3051387))

(declare-fun m!3051389 () Bool)

(assert (=> b!2682670 m!3051389))

(assert (=> b!2682670 m!3051389))

(declare-fun m!3051391 () Bool)

(assert (=> b!2682670 m!3051391))

(declare-fun m!3051393 () Bool)

(assert (=> b!2682676 m!3051393))

(declare-fun m!3051395 () Bool)

(assert (=> b!2682676 m!3051395))

(declare-fun m!3051397 () Bool)

(assert (=> b!2682676 m!3051397))

(declare-fun m!3051399 () Bool)

(assert (=> b!2682663 m!3051399))

(declare-fun m!3051401 () Bool)

(assert (=> b!2682663 m!3051401))

(declare-fun m!3051403 () Bool)

(assert (=> b!2682668 m!3051403))

(declare-fun m!3051405 () Bool)

(assert (=> b!2682668 m!3051405))

(declare-fun m!3051407 () Bool)

(assert (=> b!2682642 m!3051407))

(declare-fun m!3051409 () Bool)

(assert (=> b!2682642 m!3051409))

(declare-fun m!3051411 () Bool)

(assert (=> b!2682642 m!3051411))

(declare-fun m!3051413 () Bool)

(assert (=> b!2682672 m!3051413))

(declare-fun m!3051415 () Bool)

(assert (=> b!2682639 m!3051415))

(declare-fun m!3051417 () Bool)

(assert (=> mapNonEmpty!15983 m!3051417))

(declare-fun m!3051419 () Bool)

(assert (=> b!2682650 m!3051419))

(declare-fun m!3051421 () Bool)

(assert (=> b!2682641 m!3051421))

(declare-fun m!3051423 () Bool)

(assert (=> b!2682674 m!3051423))

(declare-fun m!3051425 () Bool)

(assert (=> b!2682674 m!3051425))

(assert (=> b!2682674 m!3051425))

(declare-fun m!3051427 () Bool)

(assert (=> b!2682674 m!3051427))

(declare-fun m!3051429 () Bool)

(assert (=> b!2682674 m!3051429))

(declare-fun m!3051431 () Bool)

(assert (=> b!2682651 m!3051431))

(declare-fun m!3051433 () Bool)

(assert (=> b!2682651 m!3051433))

(declare-fun m!3051435 () Bool)

(assert (=> b!2682666 m!3051435))

(declare-fun m!3051437 () Bool)

(assert (=> b!2682666 m!3051437))

(declare-fun m!3051439 () Bool)

(assert (=> b!2682660 m!3051439))

(declare-fun m!3051441 () Bool)

(assert (=> b!2682660 m!3051441))

(declare-fun m!3051443 () Bool)

(assert (=> b!2682660 m!3051443))

(declare-fun m!3051445 () Bool)

(assert (=> b!2682660 m!3051445))

(assert (=> b!2682660 m!3051443))

(declare-fun m!3051447 () Bool)

(assert (=> b!2682660 m!3051447))

(declare-fun m!3051449 () Bool)

(assert (=> b!2682667 m!3051449))

(declare-fun m!3051451 () Bool)

(assert (=> b!2682662 m!3051451))

(declare-fun m!3051453 () Bool)

(assert (=> b!2682662 m!3051453))

(declare-fun m!3051455 () Bool)

(assert (=> start!261214 m!3051455))

(declare-fun m!3051457 () Bool)

(assert (=> start!261214 m!3051457))

(declare-fun m!3051459 () Bool)

(assert (=> start!261214 m!3051459))

(declare-fun m!3051461 () Bool)

(assert (=> start!261214 m!3051461))

(declare-fun m!3051463 () Bool)

(assert (=> start!261214 m!3051463))

(declare-fun m!3051465 () Bool)

(assert (=> start!261214 m!3051465))

(check-sat (not b_next!76581) b_and!198675 (not b!2682657) (not b!2682674) (not b!2682641) (not b!2682654) b_and!198677 (not b!2682660) (not b!2682665) (not b_next!76589) (not b!2682662) (not b_next!76587) (not b!2682668) (not b!2682659) (not b!2682672) b_and!198685 (not b!2682653) (not b!2682670) (not b_next!76583) (not b!2682650) (not b!2682645) (not b!2682639) b_and!198681 (not mapNonEmpty!15983) (not b!2682667) (not b!2682666) (not b_next!76585) (not start!261214) (not b!2682644) (not b!2682676) (not mapNonEmpty!15984) (not b!2682649) (not b!2682640) (not b!2682663) (not b!2682651) (not b!2682642) b_and!198683 (not b!2682673) (not b_next!76591) b_and!198679)
(check-sat (not b_next!76587) (not b_next!76581) b_and!198685 b_and!198675 (not b_next!76583) b_and!198681 (not b_next!76585) b_and!198677 b_and!198683 (not b_next!76589) (not b_next!76591) b_and!198679)
(get-model)

(declare-fun d!766728 () Bool)

(declare-fun e!1691615 () Bool)

(assert (=> d!766728 e!1691615))

(declare-fun res!1127497 () Bool)

(assert (=> d!766728 (=> (not res!1127497) (not e!1691615))))

(declare-fun lt!945460 () tuple3!4206)

(assert (=> d!766728 (= res!1127497 (= (_1!17818 lt!945460) (maxPrefixZipperSequence!993 thiss!12257 rules!1381 input!780)))))

(declare-fun e!1691616 () tuple3!4206)

(assert (=> d!766728 (= lt!945460 e!1691616)))

(declare-fun c!432020 () Bool)

(assert (=> d!766728 (= c!432020 (and ((_ is Cons!30982) rules!1381) ((_ is Nil!30982) (t!224587 rules!1381))))))

(declare-fun lt!945465 () Unit!45105)

(declare-fun lt!945461 () Unit!45105)

(assert (=> d!766728 (= lt!945465 lt!945461)))

(declare-fun lt!945462 () List!31080)

(declare-fun lt!945463 () List!31080)

(declare-fun isPrefix!2463 (List!31080 List!31080) Bool)

(assert (=> d!766728 (isPrefix!2463 lt!945462 lt!945463)))

(declare-fun lemmaIsPrefixRefl!1589 (List!31080 List!31080) Unit!45105)

(assert (=> d!766728 (= lt!945461 (lemmaIsPrefixRefl!1589 lt!945462 lt!945463))))

(assert (=> d!766728 (= lt!945463 (list!11690 input!780))))

(assert (=> d!766728 (= lt!945462 (list!11690 input!780))))

(declare-fun rulesValidInductive!1645 (LexerInterface!4327 List!31082) Bool)

(assert (=> d!766728 (rulesValidInductive!1645 thiss!12257 rules!1381)))

(assert (=> d!766728 (= (maxPrefixZipperSequenceMem!5 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499) lt!945460)))

(declare-fun b!2682685 () Bool)

(assert (=> b!2682685 (= e!1691615 (valid!2703 (_3!2573 lt!945460)))))

(declare-fun call!172775 () tuple3!4206)

(declare-fun bm!172770 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceMem!2 (LexerInterface!4327 Rule!9262 BalanceConc!18996 CacheUp!2110 CacheDown!2222) tuple3!4206)

(assert (=> bm!172770 (= call!172775 (maxPrefixOneRuleZipperSequenceMem!2 thiss!12257 (h!36402 rules!1381) input!780 cacheUp!486 cacheDown!499))))

(declare-fun b!2682686 () Bool)

(declare-fun lt!945458 () tuple3!4206)

(assert (=> b!2682686 (= e!1691616 (tuple3!4207 (_1!17818 lt!945458) (_2!17818 lt!945458) (_3!2573 lt!945458)))))

(assert (=> b!2682686 (= lt!945458 call!172775)))

(declare-fun b!2682687 () Bool)

(declare-fun res!1127496 () Bool)

(assert (=> b!2682687 (=> (not res!1127496) (not e!1691615))))

(assert (=> b!2682687 (= res!1127496 (valid!2704 (_2!17818 lt!945460)))))

(declare-fun b!2682688 () Bool)

(declare-fun lt!945464 () tuple3!4206)

(declare-fun lt!945459 () tuple3!4206)

(assert (=> b!2682688 (= e!1691616 (tuple3!4207 (ite (and ((_ is None!6118) (_1!17818 lt!945464)) ((_ is None!6118) (_1!17818 lt!945459))) None!6118 (ite ((_ is None!6118) (_1!17818 lt!945459)) (_1!17818 lt!945464) (ite ((_ is None!6118) (_1!17818 lt!945464)) (_1!17818 lt!945459) (ite (>= (size!23925 (_1!17812 (v!32781 (_1!17818 lt!945464)))) (size!23925 (_1!17812 (v!32781 (_1!17818 lt!945459))))) (_1!17818 lt!945464) (_1!17818 lt!945459))))) (_2!17818 lt!945459) (_3!2573 lt!945459)))))

(assert (=> b!2682688 (= lt!945464 call!172775)))

(assert (=> b!2682688 (= lt!945459 (maxPrefixZipperSequenceMem!5 thiss!12257 (t!224587 rules!1381) input!780 (_2!17818 lt!945464) (_3!2573 lt!945464)))))

(assert (= (and d!766728 c!432020) b!2682686))

(assert (= (and d!766728 (not c!432020)) b!2682688))

(assert (= (or b!2682686 b!2682688) bm!172770))

(assert (= (and d!766728 res!1127497) b!2682687))

(assert (= (and b!2682687 res!1127496) b!2682685))

(declare-fun m!3051467 () Bool)

(assert (=> b!2682687 m!3051467))

(declare-fun m!3051469 () Bool)

(assert (=> b!2682688 m!3051469))

(declare-fun m!3051471 () Bool)

(assert (=> d!766728 m!3051471))

(assert (=> d!766728 m!3051425))

(assert (=> d!766728 m!3051397))

(declare-fun m!3051473 () Bool)

(assert (=> d!766728 m!3051473))

(declare-fun m!3051475 () Bool)

(assert (=> d!766728 m!3051475))

(declare-fun m!3051477 () Bool)

(assert (=> bm!172770 m!3051477))

(declare-fun m!3051479 () Bool)

(assert (=> b!2682685 m!3051479))

(assert (=> b!2682676 d!766728))

(declare-fun b!2682703 () Bool)

(declare-fun e!1691625 () tuple2!30478)

(declare-fun lt!945518 () BalanceConc!18996)

(assert (=> b!2682703 (= e!1691625 (tuple2!30479 (BalanceConc!18999 Empty!9692) lt!945518))))

(declare-fun d!766730 () Bool)

(declare-fun e!1691627 () Bool)

(assert (=> d!766730 e!1691627))

(declare-fun res!1127500 () Bool)

(assert (=> d!766730 (=> (not res!1127500) (not e!1691627))))

(declare-fun lt!945533 () tuple2!30478)

(assert (=> d!766730 (= res!1127500 (= (list!11689 (_1!17811 lt!945533)) (list!11689 (_1!17811 (lexRec!590 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun e!1691628 () tuple2!30478)

(assert (=> d!766730 (= lt!945533 e!1691628)))

(declare-fun c!432029 () Bool)

(declare-fun lt!945517 () Option!6119)

(assert (=> d!766730 (= c!432029 ((_ is Some!6118) lt!945517))))

(assert (=> d!766730 (= lt!945517 (maxPrefixZipperSequence!993 thiss!12257 rules!1381 input!780))))

(assert (=> d!766730 (= (lexTailRec!17 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) lt!945533)))

(declare-fun b!2682704 () Bool)

(declare-fun lt!945521 () tuple2!30478)

(declare-fun lt!945535 () Option!6119)

(assert (=> b!2682704 (= lt!945521 (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945535))))))

(assert (=> b!2682704 (= e!1691625 (tuple2!30479 (prepend!1061 (_1!17811 lt!945521) (_1!17812 (v!32781 lt!945535))) (_2!17811 lt!945521)))))

(declare-fun b!2682705 () Bool)

(assert (=> b!2682705 (= e!1691628 (lexTailRec!17 thiss!12257 rules!1381 totalInput!354 (++!7571 treated!26 (charsOf!2980 (_1!17812 (v!32781 lt!945517)))) (_2!17812 (v!32781 lt!945517)) (append!755 acc!348 (_1!17812 (v!32781 lt!945517)))))))

(declare-fun lt!945539 () tuple2!30478)

(assert (=> b!2682705 (= lt!945539 (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945517))))))

(declare-fun lt!945530 () List!31080)

(assert (=> b!2682705 (= lt!945530 (list!11690 treated!26))))

(declare-fun lt!945528 () List!31080)

(assert (=> b!2682705 (= lt!945528 (list!11690 (charsOf!2980 (_1!17812 (v!32781 lt!945517)))))))

(declare-fun lt!945527 () List!31080)

(assert (=> b!2682705 (= lt!945527 (list!11690 (_2!17812 (v!32781 lt!945517))))))

(declare-fun lt!945522 () Unit!45105)

(assert (=> b!2682705 (= lt!945522 (lemmaConcatAssociativity!1534 lt!945530 lt!945528 lt!945527))))

(assert (=> b!2682705 (= (++!7569 (++!7569 lt!945530 lt!945528) lt!945527) (++!7569 lt!945530 (++!7569 lt!945528 lt!945527)))))

(declare-fun lt!945537 () Unit!45105)

(assert (=> b!2682705 (= lt!945537 lt!945522)))

(declare-fun lt!945523 () Option!6119)

(assert (=> b!2682705 (= lt!945523 (maxPrefixZipperSequence!993 thiss!12257 rules!1381 input!780))))

(declare-fun c!432028 () Bool)

(assert (=> b!2682705 (= c!432028 ((_ is Some!6118) lt!945523))))

(declare-fun e!1691626 () tuple2!30478)

(assert (=> b!2682705 (= (lexRec!590 thiss!12257 rules!1381 input!780) e!1691626)))

(declare-fun lt!945519 () Unit!45105)

(declare-fun Unit!45107 () Unit!45105)

(assert (=> b!2682705 (= lt!945519 Unit!45107)))

(declare-fun lt!945536 () List!31081)

(assert (=> b!2682705 (= lt!945536 (list!11689 acc!348))))

(declare-fun lt!945534 () List!31081)

(assert (=> b!2682705 (= lt!945534 (Cons!30981 (_1!17812 (v!32781 lt!945517)) Nil!30981))))

(declare-fun lt!945524 () List!31081)

(assert (=> b!2682705 (= lt!945524 (list!11689 (_1!17811 lt!945539)))))

(declare-fun lt!945532 () Unit!45105)

(assert (=> b!2682705 (= lt!945532 (lemmaConcatAssociativity!1535 lt!945536 lt!945534 lt!945524))))

(assert (=> b!2682705 (= (++!7570 (++!7570 lt!945536 lt!945534) lt!945524) (++!7570 lt!945536 (++!7570 lt!945534 lt!945524)))))

(declare-fun lt!945520 () Unit!45105)

(assert (=> b!2682705 (= lt!945520 lt!945532)))

(declare-fun lt!945516 () List!31080)

(assert (=> b!2682705 (= lt!945516 (++!7569 (list!11690 treated!26) (list!11690 (charsOf!2980 (_1!17812 (v!32781 lt!945517))))))))

(declare-fun lt!945525 () List!31080)

(assert (=> b!2682705 (= lt!945525 (list!11690 (_2!17812 (v!32781 lt!945517))))))

(declare-fun lt!945531 () List!31081)

(assert (=> b!2682705 (= lt!945531 (list!11689 (append!755 acc!348 (_1!17812 (v!32781 lt!945517)))))))

(declare-fun lt!945538 () Unit!45105)

(assert (=> b!2682705 (= lt!945538 (lemmaLexThenLexPrefix!398 thiss!12257 rules!1381 lt!945516 lt!945525 lt!945531 (list!11689 (_1!17811 lt!945539)) (list!11690 (_2!17811 lt!945539))))))

(assert (=> b!2682705 (= (lexList!1185 thiss!12257 rules!1381 lt!945516) (tuple2!30489 lt!945531 Nil!30980))))

(declare-fun lt!945540 () Unit!45105)

(assert (=> b!2682705 (= lt!945540 lt!945538)))

(assert (=> b!2682705 (= lt!945518 (++!7571 treated!26 (charsOf!2980 (_1!17812 (v!32781 lt!945517)))))))

(assert (=> b!2682705 (= lt!945535 (maxPrefixZipperSequence!993 thiss!12257 rules!1381 lt!945518))))

(declare-fun c!432027 () Bool)

(assert (=> b!2682705 (= c!432027 ((_ is Some!6118) lt!945535))))

(assert (=> b!2682705 (= (lexRec!590 thiss!12257 rules!1381 (++!7571 treated!26 (charsOf!2980 (_1!17812 (v!32781 lt!945517))))) e!1691625)))

(declare-fun lt!945526 () Unit!45105)

(declare-fun Unit!45108 () Unit!45105)

(assert (=> b!2682705 (= lt!945526 Unit!45108)))

(declare-fun b!2682706 () Bool)

(assert (=> b!2682706 (= e!1691626 (tuple2!30479 (BalanceConc!18999 Empty!9692) input!780))))

(declare-fun lt!945529 () tuple2!30478)

(declare-fun b!2682707 () Bool)

(assert (=> b!2682707 (= lt!945529 (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945523))))))

(assert (=> b!2682707 (= e!1691626 (tuple2!30479 (prepend!1061 (_1!17811 lt!945529) (_1!17812 (v!32781 lt!945523))) (_2!17811 lt!945529)))))

(declare-fun b!2682708 () Bool)

(assert (=> b!2682708 (= e!1691627 (= (list!11690 (_2!17811 lt!945533)) (list!11690 (_2!17811 (lexRec!590 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun b!2682709 () Bool)

(assert (=> b!2682709 (= e!1691628 (tuple2!30479 acc!348 input!780))))

(assert (= (and d!766730 c!432029) b!2682705))

(assert (= (and d!766730 (not c!432029)) b!2682709))

(assert (= (and b!2682705 c!432028) b!2682707))

(assert (= (and b!2682705 (not c!432028)) b!2682706))

(assert (= (and b!2682705 c!432027) b!2682704))

(assert (= (and b!2682705 (not c!432027)) b!2682703))

(assert (= (and d!766730 res!1127500) b!2682708))

(declare-fun m!3051481 () Bool)

(assert (=> b!2682704 m!3051481))

(declare-fun m!3051483 () Bool)

(assert (=> b!2682704 m!3051483))

(assert (=> b!2682705 m!3051407))

(declare-fun m!3051485 () Bool)

(assert (=> b!2682705 m!3051485))

(declare-fun m!3051487 () Bool)

(assert (=> b!2682705 m!3051487))

(declare-fun m!3051489 () Bool)

(assert (=> b!2682705 m!3051489))

(declare-fun m!3051491 () Bool)

(assert (=> b!2682705 m!3051491))

(declare-fun m!3051493 () Bool)

(assert (=> b!2682705 m!3051493))

(declare-fun m!3051495 () Bool)

(assert (=> b!2682705 m!3051495))

(declare-fun m!3051497 () Bool)

(assert (=> b!2682705 m!3051497))

(declare-fun m!3051499 () Bool)

(assert (=> b!2682705 m!3051499))

(assert (=> b!2682705 m!3051497))

(declare-fun m!3051501 () Bool)

(assert (=> b!2682705 m!3051501))

(assert (=> b!2682705 m!3051501))

(declare-fun m!3051503 () Bool)

(assert (=> b!2682705 m!3051503))

(declare-fun m!3051505 () Bool)

(assert (=> b!2682705 m!3051505))

(declare-fun m!3051507 () Bool)

(assert (=> b!2682705 m!3051507))

(declare-fun m!3051509 () Bool)

(assert (=> b!2682705 m!3051509))

(declare-fun m!3051511 () Bool)

(assert (=> b!2682705 m!3051511))

(assert (=> b!2682705 m!3051491))

(declare-fun m!3051513 () Bool)

(assert (=> b!2682705 m!3051513))

(declare-fun m!3051515 () Bool)

(assert (=> b!2682705 m!3051515))

(assert (=> b!2682705 m!3051501))

(assert (=> b!2682705 m!3051491))

(declare-fun m!3051517 () Bool)

(assert (=> b!2682705 m!3051517))

(assert (=> b!2682705 m!3051445))

(declare-fun m!3051519 () Bool)

(assert (=> b!2682705 m!3051519))

(declare-fun m!3051521 () Bool)

(assert (=> b!2682705 m!3051521))

(assert (=> b!2682705 m!3051397))

(assert (=> b!2682705 m!3051507))

(assert (=> b!2682705 m!3051429))

(declare-fun m!3051523 () Bool)

(assert (=> b!2682705 m!3051523))

(declare-fun m!3051525 () Bool)

(assert (=> b!2682705 m!3051525))

(assert (=> b!2682705 m!3051485))

(assert (=> b!2682705 m!3051493))

(assert (=> b!2682705 m!3051519))

(assert (=> b!2682705 m!3051497))

(declare-fun m!3051527 () Bool)

(assert (=> b!2682705 m!3051527))

(declare-fun m!3051529 () Bool)

(assert (=> b!2682705 m!3051529))

(assert (=> b!2682705 m!3051509))

(assert (=> b!2682705 m!3051429))

(assert (=> b!2682705 m!3051499))

(declare-fun m!3051531 () Bool)

(assert (=> b!2682705 m!3051531))

(assert (=> b!2682705 m!3051527))

(declare-fun m!3051533 () Bool)

(assert (=> b!2682705 m!3051533))

(declare-fun m!3051535 () Bool)

(assert (=> d!766730 m!3051535))

(assert (=> d!766730 m!3051439))

(declare-fun m!3051537 () Bool)

(assert (=> d!766730 m!3051537))

(assert (=> d!766730 m!3051397))

(declare-fun m!3051539 () Bool)

(assert (=> b!2682707 m!3051539))

(declare-fun m!3051541 () Bool)

(assert (=> b!2682707 m!3051541))

(declare-fun m!3051543 () Bool)

(assert (=> b!2682708 m!3051543))

(assert (=> b!2682708 m!3051439))

(declare-fun m!3051545 () Bool)

(assert (=> b!2682708 m!3051545))

(assert (=> b!2682676 d!766730))

(declare-fun b!2682726 () Bool)

(declare-fun e!1691644 () Option!6119)

(declare-fun call!172778 () Option!6119)

(assert (=> b!2682726 (= e!1691644 call!172778)))

(declare-fun b!2682727 () Bool)

(declare-fun e!1691643 () Bool)

(declare-fun e!1691642 () Bool)

(assert (=> b!2682727 (= e!1691643 e!1691642)))

(declare-fun res!1127513 () Bool)

(assert (=> b!2682727 (=> (not res!1127513) (not e!1691642))))

(declare-fun lt!945559 () Option!6119)

(declare-fun get!9706 (Option!6119) tuple2!30480)

(declare-datatypes ((tuple2!30490 0))(
  ( (tuple2!30491 (_1!17819 Token!8928) (_2!17819 List!31080)) )
))
(declare-datatypes ((Option!6120 0))(
  ( (None!6119) (Some!6119 (v!32788 tuple2!30490)) )
))
(declare-fun get!9707 (Option!6120) tuple2!30490)

(declare-fun maxPrefix!2346 (LexerInterface!4327 List!31082 List!31080) Option!6120)

(assert (=> b!2682727 (= res!1127513 (= (_1!17812 (get!9706 lt!945559)) (_1!17819 (get!9707 (maxPrefix!2346 thiss!12257 rules!1381 (list!11690 input!780))))))))

(declare-fun d!766732 () Bool)

(declare-fun e!1691641 () Bool)

(assert (=> d!766732 e!1691641))

(declare-fun res!1127518 () Bool)

(assert (=> d!766732 (=> (not res!1127518) (not e!1691641))))

(declare-fun isDefined!4853 (Option!6119) Bool)

(declare-fun isDefined!4854 (Option!6120) Bool)

(declare-fun maxPrefixZipper!450 (LexerInterface!4327 List!31082 List!31080) Option!6120)

(assert (=> d!766732 (= res!1127518 (= (isDefined!4853 lt!945559) (isDefined!4854 (maxPrefixZipper!450 thiss!12257 rules!1381 (list!11690 input!780)))))))

(assert (=> d!766732 (= lt!945559 e!1691644)))

(declare-fun c!432032 () Bool)

(assert (=> d!766732 (= c!432032 (and ((_ is Cons!30982) rules!1381) ((_ is Nil!30982) (t!224587 rules!1381))))))

(declare-fun lt!945560 () Unit!45105)

(declare-fun lt!945555 () Unit!45105)

(assert (=> d!766732 (= lt!945560 lt!945555)))

(declare-fun lt!945558 () List!31080)

(declare-fun lt!945561 () List!31080)

(assert (=> d!766732 (isPrefix!2463 lt!945558 lt!945561)))

(assert (=> d!766732 (= lt!945555 (lemmaIsPrefixRefl!1589 lt!945558 lt!945561))))

(assert (=> d!766732 (= lt!945561 (list!11690 input!780))))

(assert (=> d!766732 (= lt!945558 (list!11690 input!780))))

(assert (=> d!766732 (rulesValidInductive!1645 thiss!12257 rules!1381)))

(assert (=> d!766732 (= (maxPrefixZipperSequence!993 thiss!12257 rules!1381 input!780) lt!945559)))

(declare-fun b!2682728 () Bool)

(declare-fun e!1691646 () Bool)

(declare-fun e!1691645 () Bool)

(assert (=> b!2682728 (= e!1691646 e!1691645)))

(declare-fun res!1127516 () Bool)

(assert (=> b!2682728 (=> (not res!1127516) (not e!1691645))))

(assert (=> b!2682728 (= res!1127516 (= (_1!17812 (get!9706 lt!945559)) (_1!17819 (get!9707 (maxPrefixZipper!450 thiss!12257 rules!1381 (list!11690 input!780))))))))

(declare-fun b!2682729 () Bool)

(declare-fun lt!945556 () Option!6119)

(declare-fun lt!945557 () Option!6119)

(assert (=> b!2682729 (= e!1691644 (ite (and ((_ is None!6118) lt!945556) ((_ is None!6118) lt!945557)) None!6118 (ite ((_ is None!6118) lt!945557) lt!945556 (ite ((_ is None!6118) lt!945556) lt!945557 (ite (>= (size!23925 (_1!17812 (v!32781 lt!945556))) (size!23925 (_1!17812 (v!32781 lt!945557)))) lt!945556 lt!945557)))))))

(assert (=> b!2682729 (= lt!945556 call!172778)))

(assert (=> b!2682729 (= lt!945557 (maxPrefixZipperSequence!993 thiss!12257 (t!224587 rules!1381) input!780))))

(declare-fun b!2682730 () Bool)

(assert (=> b!2682730 (= e!1691645 (= (list!11690 (_2!17812 (get!9706 lt!945559))) (_2!17819 (get!9707 (maxPrefixZipper!450 thiss!12257 rules!1381 (list!11690 input!780))))))))

(declare-fun b!2682731 () Bool)

(assert (=> b!2682731 (= e!1691641 e!1691643)))

(declare-fun res!1127514 () Bool)

(assert (=> b!2682731 (=> res!1127514 e!1691643)))

(assert (=> b!2682731 (= res!1127514 (not (isDefined!4853 lt!945559)))))

(declare-fun b!2682732 () Bool)

(declare-fun res!1127517 () Bool)

(assert (=> b!2682732 (=> (not res!1127517) (not e!1691641))))

(assert (=> b!2682732 (= res!1127517 e!1691646)))

(declare-fun res!1127515 () Bool)

(assert (=> b!2682732 (=> res!1127515 e!1691646)))

(assert (=> b!2682732 (= res!1127515 (not (isDefined!4853 lt!945559)))))

(declare-fun b!2682733 () Bool)

(assert (=> b!2682733 (= e!1691642 (= (list!11690 (_2!17812 (get!9706 lt!945559))) (_2!17819 (get!9707 (maxPrefix!2346 thiss!12257 rules!1381 (list!11690 input!780))))))))

(declare-fun bm!172773 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!459 (LexerInterface!4327 Rule!9262 BalanceConc!18996) Option!6119)

(assert (=> bm!172773 (= call!172778 (maxPrefixOneRuleZipperSequence!459 thiss!12257 (h!36402 rules!1381) input!780))))

(assert (= (and d!766732 c!432032) b!2682726))

(assert (= (and d!766732 (not c!432032)) b!2682729))

(assert (= (or b!2682726 b!2682729) bm!172773))

(assert (= (and d!766732 res!1127518) b!2682732))

(assert (= (and b!2682732 (not res!1127515)) b!2682728))

(assert (= (and b!2682728 res!1127516) b!2682730))

(assert (= (and b!2682732 res!1127517) b!2682731))

(assert (= (and b!2682731 (not res!1127514)) b!2682727))

(assert (= (and b!2682727 res!1127513) b!2682733))

(declare-fun m!3051547 () Bool)

(assert (=> d!766732 m!3051547))

(declare-fun m!3051549 () Bool)

(assert (=> d!766732 m!3051549))

(assert (=> d!766732 m!3051425))

(assert (=> d!766732 m!3051425))

(assert (=> d!766732 m!3051547))

(declare-fun m!3051551 () Bool)

(assert (=> d!766732 m!3051551))

(declare-fun m!3051553 () Bool)

(assert (=> d!766732 m!3051553))

(declare-fun m!3051555 () Bool)

(assert (=> d!766732 m!3051555))

(assert (=> d!766732 m!3051475))

(declare-fun m!3051557 () Bool)

(assert (=> b!2682728 m!3051557))

(assert (=> b!2682728 m!3051425))

(assert (=> b!2682728 m!3051425))

(assert (=> b!2682728 m!3051547))

(assert (=> b!2682728 m!3051547))

(declare-fun m!3051559 () Bool)

(assert (=> b!2682728 m!3051559))

(assert (=> b!2682731 m!3051553))

(declare-fun m!3051561 () Bool)

(assert (=> b!2682730 m!3051561))

(assert (=> b!2682730 m!3051425))

(assert (=> b!2682730 m!3051425))

(assert (=> b!2682730 m!3051547))

(assert (=> b!2682730 m!3051557))

(assert (=> b!2682730 m!3051547))

(assert (=> b!2682730 m!3051559))

(declare-fun m!3051563 () Bool)

(assert (=> b!2682729 m!3051563))

(declare-fun m!3051565 () Bool)

(assert (=> bm!172773 m!3051565))

(assert (=> b!2682733 m!3051561))

(assert (=> b!2682733 m!3051557))

(assert (=> b!2682733 m!3051425))

(declare-fun m!3051567 () Bool)

(assert (=> b!2682733 m!3051567))

(assert (=> b!2682733 m!3051567))

(declare-fun m!3051569 () Bool)

(assert (=> b!2682733 m!3051569))

(assert (=> b!2682733 m!3051425))

(assert (=> b!2682727 m!3051557))

(assert (=> b!2682727 m!3051425))

(assert (=> b!2682727 m!3051425))

(assert (=> b!2682727 m!3051567))

(assert (=> b!2682727 m!3051567))

(assert (=> b!2682727 m!3051569))

(assert (=> b!2682732 m!3051553))

(assert (=> b!2682676 d!766732))

(declare-fun b!2682748 () Bool)

(declare-fun e!1691655 () Bool)

(declare-fun e!1691658 () Bool)

(assert (=> b!2682748 (= e!1691655 e!1691658)))

(declare-fun res!1127526 () Bool)

(declare-fun lt!945568 () tuple2!30478)

(declare-fun size!23929 (BalanceConc!18996) Int)

(assert (=> b!2682748 (= res!1127526 (< (size!23929 (_2!17811 lt!945568)) (size!23929 lt!945438)))))

(assert (=> b!2682748 (=> (not res!1127526) (not e!1691658))))

(declare-fun b!2682749 () Bool)

(declare-fun e!1691657 () tuple2!30478)

(assert (=> b!2682749 (= e!1691657 (tuple2!30479 (BalanceConc!18999 Empty!9692) lt!945438))))

(declare-fun b!2682750 () Bool)

(assert (=> b!2682750 (= e!1691655 (= (list!11690 (_2!17811 lt!945568)) (list!11690 lt!945438)))))

(declare-fun b!2682751 () Bool)

(declare-fun e!1691656 () Bool)

(assert (=> b!2682751 (= e!1691656 (= (list!11690 (_2!17811 lt!945568)) (_2!17817 (lexList!1185 thiss!12257 rules!1381 (list!11690 lt!945438)))))))

(declare-fun b!2682752 () Bool)

(declare-fun res!1127525 () Bool)

(assert (=> b!2682752 (=> (not res!1127525) (not e!1691656))))

(assert (=> b!2682752 (= res!1127525 (= (list!11689 (_1!17811 lt!945568)) (_1!17817 (lexList!1185 thiss!12257 rules!1381 (list!11690 lt!945438)))))))

(declare-fun d!766734 () Bool)

(assert (=> d!766734 e!1691656))

(declare-fun res!1127527 () Bool)

(assert (=> d!766734 (=> (not res!1127527) (not e!1691656))))

(assert (=> d!766734 (= res!1127527 e!1691655)))

(declare-fun c!432038 () Bool)

(declare-fun size!23930 (BalanceConc!18998) Int)

(assert (=> d!766734 (= c!432038 (> (size!23930 (_1!17811 lt!945568)) 0))))

(assert (=> d!766734 (= lt!945568 e!1691657)))

(declare-fun c!432037 () Bool)

(declare-fun lt!945569 () Option!6119)

(assert (=> d!766734 (= c!432037 ((_ is Some!6118) lt!945569))))

(assert (=> d!766734 (= lt!945569 (maxPrefixZipperSequence!993 thiss!12257 rules!1381 lt!945438))))

(assert (=> d!766734 (= (lexRec!590 thiss!12257 rules!1381 lt!945438) lt!945568)))

(declare-fun b!2682753 () Bool)

(declare-fun isEmpty!17688 (BalanceConc!18998) Bool)

(assert (=> b!2682753 (= e!1691658 (not (isEmpty!17688 (_1!17811 lt!945568))))))

(declare-fun b!2682754 () Bool)

(declare-fun lt!945570 () tuple2!30478)

(assert (=> b!2682754 (= e!1691657 (tuple2!30479 (prepend!1061 (_1!17811 lt!945570) (_1!17812 (v!32781 lt!945569))) (_2!17811 lt!945570)))))

(assert (=> b!2682754 (= lt!945570 (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945569))))))

(assert (= (and d!766734 c!432037) b!2682754))

(assert (= (and d!766734 (not c!432037)) b!2682749))

(assert (= (and d!766734 c!432038) b!2682748))

(assert (= (and d!766734 (not c!432038)) b!2682750))

(assert (= (and b!2682748 res!1127526) b!2682753))

(assert (= (and d!766734 res!1127527) b!2682752))

(assert (= (and b!2682752 res!1127525) b!2682751))

(declare-fun m!3051571 () Bool)

(assert (=> b!2682753 m!3051571))

(declare-fun m!3051573 () Bool)

(assert (=> b!2682750 m!3051573))

(declare-fun m!3051575 () Bool)

(assert (=> b!2682750 m!3051575))

(declare-fun m!3051577 () Bool)

(assert (=> d!766734 m!3051577))

(assert (=> d!766734 m!3051367))

(declare-fun m!3051579 () Bool)

(assert (=> b!2682752 m!3051579))

(assert (=> b!2682752 m!3051575))

(assert (=> b!2682752 m!3051575))

(declare-fun m!3051581 () Bool)

(assert (=> b!2682752 m!3051581))

(declare-fun m!3051583 () Bool)

(assert (=> b!2682754 m!3051583))

(declare-fun m!3051585 () Bool)

(assert (=> b!2682754 m!3051585))

(assert (=> b!2682751 m!3051573))

(assert (=> b!2682751 m!3051575))

(assert (=> b!2682751 m!3051575))

(assert (=> b!2682751 m!3051581))

(declare-fun m!3051587 () Bool)

(assert (=> b!2682748 m!3051587))

(declare-fun m!3051589 () Bool)

(assert (=> b!2682748 m!3051589))

(assert (=> b!2682657 d!766734))

(declare-fun b!2682763 () Bool)

(declare-fun e!1691664 () List!31081)

(assert (=> b!2682763 (= e!1691664 lt!945430)))

(declare-fun b!2682764 () Bool)

(assert (=> b!2682764 (= e!1691664 (Cons!30981 (h!36401 lt!945437) (++!7570 (t!224586 lt!945437) lt!945430)))))

(declare-fun b!2682765 () Bool)

(declare-fun res!1127532 () Bool)

(declare-fun e!1691663 () Bool)

(assert (=> b!2682765 (=> (not res!1127532) (not e!1691663))))

(declare-fun lt!945573 () List!31081)

(declare-fun size!23931 (List!31081) Int)

(assert (=> b!2682765 (= res!1127532 (= (size!23931 lt!945573) (+ (size!23931 lt!945437) (size!23931 lt!945430))))))

(declare-fun d!766736 () Bool)

(assert (=> d!766736 e!1691663))

(declare-fun res!1127533 () Bool)

(assert (=> d!766736 (=> (not res!1127533) (not e!1691663))))

(declare-fun content!4392 (List!31081) (InoxSet Token!8928))

(assert (=> d!766736 (= res!1127533 (= (content!4392 lt!945573) ((_ map or) (content!4392 lt!945437) (content!4392 lt!945430))))))

(assert (=> d!766736 (= lt!945573 e!1691664)))

(declare-fun c!432041 () Bool)

(assert (=> d!766736 (= c!432041 ((_ is Nil!30981) lt!945437))))

(assert (=> d!766736 (= (++!7570 lt!945437 lt!945430) lt!945573)))

(declare-fun b!2682766 () Bool)

(assert (=> b!2682766 (= e!1691663 (or (not (= lt!945430 Nil!30981)) (= lt!945573 lt!945437)))))

(assert (= (and d!766736 c!432041) b!2682763))

(assert (= (and d!766736 (not c!432041)) b!2682764))

(assert (= (and d!766736 res!1127533) b!2682765))

(assert (= (and b!2682765 res!1127532) b!2682766))

(declare-fun m!3051591 () Bool)

(assert (=> b!2682764 m!3051591))

(declare-fun m!3051593 () Bool)

(assert (=> b!2682765 m!3051593))

(declare-fun m!3051595 () Bool)

(assert (=> b!2682765 m!3051595))

(declare-fun m!3051597 () Bool)

(assert (=> b!2682765 m!3051597))

(declare-fun m!3051599 () Bool)

(assert (=> d!766736 m!3051599))

(declare-fun m!3051601 () Bool)

(assert (=> d!766736 m!3051601))

(declare-fun m!3051603 () Bool)

(assert (=> d!766736 m!3051603))

(assert (=> b!2682657 d!766736))

(declare-fun d!766738 () Bool)

(declare-fun list!11691 (Conc!9691) List!31080)

(assert (=> d!766738 (= (list!11690 (_2!17812 (v!32781 lt!945426))) (list!11691 (c!432016 (_2!17812 (v!32781 lt!945426)))))))

(declare-fun bs!480204 () Bool)

(assert (= bs!480204 d!766738))

(declare-fun m!3051605 () Bool)

(assert (=> bs!480204 m!3051605))

(assert (=> b!2682657 d!766738))

(declare-fun d!766740 () Bool)

(declare-fun list!11692 (Conc!9692) List!31081)

(assert (=> d!766740 (= (list!11689 (_1!17811 lt!945417)) (list!11692 (c!432017 (_1!17811 lt!945417))))))

(declare-fun bs!480205 () Bool)

(assert (= bs!480205 d!766740))

(declare-fun m!3051607 () Bool)

(assert (=> bs!480205 m!3051607))

(assert (=> b!2682657 d!766740))

(declare-fun b!2682767 () Bool)

(declare-fun e!1691665 () Bool)

(declare-fun e!1691668 () Bool)

(assert (=> b!2682767 (= e!1691665 e!1691668)))

(declare-fun res!1127535 () Bool)

(declare-fun lt!945574 () tuple2!30478)

(assert (=> b!2682767 (= res!1127535 (< (size!23929 (_2!17811 lt!945574)) (size!23929 (_2!17812 (v!32781 lt!945426)))))))

(assert (=> b!2682767 (=> (not res!1127535) (not e!1691668))))

(declare-fun b!2682768 () Bool)

(declare-fun e!1691667 () tuple2!30478)

(assert (=> b!2682768 (= e!1691667 (tuple2!30479 (BalanceConc!18999 Empty!9692) (_2!17812 (v!32781 lt!945426))))))

(declare-fun b!2682769 () Bool)

(assert (=> b!2682769 (= e!1691665 (= (list!11690 (_2!17811 lt!945574)) (list!11690 (_2!17812 (v!32781 lt!945426)))))))

(declare-fun b!2682770 () Bool)

(declare-fun e!1691666 () Bool)

(assert (=> b!2682770 (= e!1691666 (= (list!11690 (_2!17811 lt!945574)) (_2!17817 (lexList!1185 thiss!12257 rules!1381 (list!11690 (_2!17812 (v!32781 lt!945426)))))))))

(declare-fun b!2682771 () Bool)

(declare-fun res!1127534 () Bool)

(assert (=> b!2682771 (=> (not res!1127534) (not e!1691666))))

(assert (=> b!2682771 (= res!1127534 (= (list!11689 (_1!17811 lt!945574)) (_1!17817 (lexList!1185 thiss!12257 rules!1381 (list!11690 (_2!17812 (v!32781 lt!945426)))))))))

(declare-fun d!766742 () Bool)

(assert (=> d!766742 e!1691666))

(declare-fun res!1127536 () Bool)

(assert (=> d!766742 (=> (not res!1127536) (not e!1691666))))

(assert (=> d!766742 (= res!1127536 e!1691665)))

(declare-fun c!432043 () Bool)

(assert (=> d!766742 (= c!432043 (> (size!23930 (_1!17811 lt!945574)) 0))))

(assert (=> d!766742 (= lt!945574 e!1691667)))

(declare-fun c!432042 () Bool)

(declare-fun lt!945575 () Option!6119)

(assert (=> d!766742 (= c!432042 ((_ is Some!6118) lt!945575))))

(assert (=> d!766742 (= lt!945575 (maxPrefixZipperSequence!993 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945426))))))

(assert (=> d!766742 (= (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945426))) lt!945574)))

(declare-fun b!2682772 () Bool)

(assert (=> b!2682772 (= e!1691668 (not (isEmpty!17688 (_1!17811 lt!945574))))))

(declare-fun b!2682773 () Bool)

(declare-fun lt!945576 () tuple2!30478)

(assert (=> b!2682773 (= e!1691667 (tuple2!30479 (prepend!1061 (_1!17811 lt!945576) (_1!17812 (v!32781 lt!945575))) (_2!17811 lt!945576)))))

(assert (=> b!2682773 (= lt!945576 (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945575))))))

(assert (= (and d!766742 c!432042) b!2682773))

(assert (= (and d!766742 (not c!432042)) b!2682768))

(assert (= (and d!766742 c!432043) b!2682767))

(assert (= (and d!766742 (not c!432043)) b!2682769))

(assert (= (and b!2682767 res!1127535) b!2682772))

(assert (= (and d!766742 res!1127536) b!2682771))

(assert (= (and b!2682771 res!1127534) b!2682770))

(declare-fun m!3051609 () Bool)

(assert (=> b!2682772 m!3051609))

(declare-fun m!3051611 () Bool)

(assert (=> b!2682769 m!3051611))

(assert (=> b!2682769 m!3051351))

(declare-fun m!3051613 () Bool)

(assert (=> d!766742 m!3051613))

(declare-fun m!3051615 () Bool)

(assert (=> d!766742 m!3051615))

(declare-fun m!3051617 () Bool)

(assert (=> b!2682771 m!3051617))

(assert (=> b!2682771 m!3051351))

(assert (=> b!2682771 m!3051351))

(declare-fun m!3051619 () Bool)

(assert (=> b!2682771 m!3051619))

(declare-fun m!3051621 () Bool)

(assert (=> b!2682773 m!3051621))

(declare-fun m!3051623 () Bool)

(assert (=> b!2682773 m!3051623))

(assert (=> b!2682770 m!3051611))

(assert (=> b!2682770 m!3051351))

(assert (=> b!2682770 m!3051351))

(assert (=> b!2682770 m!3051619))

(declare-fun m!3051625 () Bool)

(assert (=> b!2682767 m!3051625))

(declare-fun m!3051627 () Bool)

(assert (=> b!2682767 m!3051627))

(assert (=> b!2682657 d!766742))

(declare-fun d!766744 () Bool)

(assert (=> d!766744 (= (++!7569 (++!7569 lt!945436 lt!945439) lt!945420) (++!7569 lt!945436 (++!7569 lt!945439 lt!945420)))))

(declare-fun lt!945579 () Unit!45105)

(declare-fun choose!15885 (List!31080 List!31080 List!31080) Unit!45105)

(assert (=> d!766744 (= lt!945579 (choose!15885 lt!945436 lt!945439 lt!945420))))

(assert (=> d!766744 (= (lemmaConcatAssociativity!1534 lt!945436 lt!945439 lt!945420) lt!945579)))

(declare-fun bs!480206 () Bool)

(assert (= bs!480206 d!766744))

(declare-fun m!3051629 () Bool)

(assert (=> bs!480206 m!3051629))

(assert (=> bs!480206 m!3051355))

(assert (=> bs!480206 m!3051333))

(declare-fun m!3051631 () Bool)

(assert (=> bs!480206 m!3051631))

(assert (=> bs!480206 m!3051355))

(assert (=> bs!480206 m!3051359))

(assert (=> bs!480206 m!3051333))

(assert (=> b!2682657 d!766744))

(declare-fun d!766746 () Bool)

(assert (=> d!766746 (= (++!7570 (++!7570 lt!945437 lt!945430) lt!945433) (++!7570 lt!945437 (++!7570 lt!945430 lt!945433)))))

(declare-fun lt!945582 () Unit!45105)

(declare-fun choose!15886 (List!31081 List!31081 List!31081) Unit!45105)

(assert (=> d!766746 (= lt!945582 (choose!15886 lt!945437 lt!945430 lt!945433))))

(assert (=> d!766746 (= (lemmaConcatAssociativity!1535 lt!945437 lt!945430 lt!945433) lt!945582)))

(declare-fun bs!480207 () Bool)

(assert (= bs!480207 d!766746))

(assert (=> bs!480207 m!3051353))

(assert (=> bs!480207 m!3051361))

(assert (=> bs!480207 m!3051335))

(declare-fun m!3051633 () Bool)

(assert (=> bs!480207 m!3051633))

(assert (=> bs!480207 m!3051335))

(assert (=> bs!480207 m!3051337))

(assert (=> bs!480207 m!3051353))

(assert (=> b!2682657 d!766746))

(declare-fun d!766748 () Bool)

(declare-fun e!1691671 () Bool)

(assert (=> d!766748 e!1691671))

(declare-fun res!1127539 () Bool)

(assert (=> d!766748 (=> (not res!1127539) (not e!1691671))))

(declare-fun isBalanced!2931 (Conc!9692) Bool)

(declare-fun append!756 (Conc!9692 Token!8928) Conc!9692)

(assert (=> d!766748 (= res!1127539 (isBalanced!2931 (append!756 (c!432017 acc!348) (_1!17812 (v!32781 lt!945426)))))))

(declare-fun lt!945585 () BalanceConc!18998)

(assert (=> d!766748 (= lt!945585 (BalanceConc!18999 (append!756 (c!432017 acc!348) (_1!17812 (v!32781 lt!945426)))))))

(assert (=> d!766748 (= (append!755 acc!348 (_1!17812 (v!32781 lt!945426))) lt!945585)))

(declare-fun b!2682776 () Bool)

(declare-fun $colon+!163 (List!31081 Token!8928) List!31081)

(assert (=> b!2682776 (= e!1691671 (= (list!11689 lt!945585) ($colon+!163 (list!11689 acc!348) (_1!17812 (v!32781 lt!945426)))))))

(assert (= (and d!766748 res!1127539) b!2682776))

(declare-fun m!3051635 () Bool)

(assert (=> d!766748 m!3051635))

(assert (=> d!766748 m!3051635))

(declare-fun m!3051637 () Bool)

(assert (=> d!766748 m!3051637))

(declare-fun m!3051639 () Bool)

(assert (=> b!2682776 m!3051639))

(assert (=> b!2682776 m!3051407))

(assert (=> b!2682776 m!3051407))

(declare-fun m!3051641 () Bool)

(assert (=> b!2682776 m!3051641))

(assert (=> b!2682657 d!766748))

(declare-fun b!2682787 () Bool)

(declare-fun e!1691678 () Bool)

(declare-fun e!1691680 () Bool)

(assert (=> b!2682787 (= e!1691678 e!1691680)))

(declare-fun res!1127542 () Bool)

(declare-fun lt!945592 () tuple2!30488)

(declare-fun size!23932 (List!31080) Int)

(assert (=> b!2682787 (= res!1127542 (< (size!23932 (_2!17817 lt!945592)) (size!23932 lt!945422)))))

(assert (=> b!2682787 (=> (not res!1127542) (not e!1691680))))

(declare-fun b!2682788 () Bool)

(declare-fun isEmpty!17689 (List!31081) Bool)

(assert (=> b!2682788 (= e!1691680 (not (isEmpty!17689 (_1!17817 lt!945592))))))

(declare-fun b!2682790 () Bool)

(assert (=> b!2682790 (= e!1691678 (= (_2!17817 lt!945592) lt!945422))))

(declare-fun b!2682791 () Bool)

(declare-fun e!1691679 () tuple2!30488)

(assert (=> b!2682791 (= e!1691679 (tuple2!30489 Nil!30981 lt!945422))))

(declare-fun d!766750 () Bool)

(assert (=> d!766750 e!1691678))

(declare-fun c!432049 () Bool)

(assert (=> d!766750 (= c!432049 (> (size!23931 (_1!17817 lt!945592)) 0))))

(assert (=> d!766750 (= lt!945592 e!1691679)))

(declare-fun c!432050 () Bool)

(declare-fun lt!945594 () Option!6120)

(assert (=> d!766750 (= c!432050 ((_ is Some!6119) lt!945594))))

(assert (=> d!766750 (= lt!945594 (maxPrefix!2346 thiss!12257 rules!1381 lt!945422))))

(assert (=> d!766750 (= (lexList!1185 thiss!12257 rules!1381 lt!945422) lt!945592)))

(declare-fun b!2682789 () Bool)

(declare-fun lt!945593 () tuple2!30488)

(assert (=> b!2682789 (= e!1691679 (tuple2!30489 (Cons!30981 (_1!17819 (v!32788 lt!945594)) (_1!17817 lt!945593)) (_2!17817 lt!945593)))))

(assert (=> b!2682789 (= lt!945593 (lexList!1185 thiss!12257 rules!1381 (_2!17819 (v!32788 lt!945594))))))

(assert (= (and d!766750 c!432050) b!2682789))

(assert (= (and d!766750 (not c!432050)) b!2682791))

(assert (= (and d!766750 c!432049) b!2682787))

(assert (= (and d!766750 (not c!432049)) b!2682790))

(assert (= (and b!2682787 res!1127542) b!2682788))

(declare-fun m!3051643 () Bool)

(assert (=> b!2682787 m!3051643))

(declare-fun m!3051645 () Bool)

(assert (=> b!2682787 m!3051645))

(declare-fun m!3051647 () Bool)

(assert (=> b!2682788 m!3051647))

(declare-fun m!3051649 () Bool)

(assert (=> d!766750 m!3051649))

(declare-fun m!3051651 () Bool)

(assert (=> d!766750 m!3051651))

(declare-fun m!3051653 () Bool)

(assert (=> b!2682789 m!3051653))

(assert (=> b!2682657 d!766750))

(declare-fun d!766752 () Bool)

(assert (=> d!766752 (= (list!11689 lt!945424) (list!11692 (c!432017 lt!945424)))))

(declare-fun bs!480208 () Bool)

(assert (= bs!480208 d!766752))

(declare-fun m!3051655 () Bool)

(assert (=> bs!480208 m!3051655))

(assert (=> b!2682657 d!766752))

(declare-fun d!766754 () Bool)

(assert (=> d!766754 (= (list!11690 (_2!17811 lt!945417)) (list!11691 (c!432016 (_2!17811 lt!945417))))))

(declare-fun bs!480209 () Bool)

(assert (= bs!480209 d!766754))

(declare-fun m!3051657 () Bool)

(assert (=> bs!480209 m!3051657))

(assert (=> b!2682657 d!766754))

(declare-fun lt!945597 () List!31080)

(declare-fun e!1691685 () Bool)

(declare-fun b!2682803 () Bool)

(assert (=> b!2682803 (= e!1691685 (or (not (= lt!945439 Nil!30980)) (= lt!945597 lt!945436)))))

(declare-fun b!2682800 () Bool)

(declare-fun e!1691686 () List!31080)

(assert (=> b!2682800 (= e!1691686 lt!945439)))

(declare-fun b!2682802 () Bool)

(declare-fun res!1127548 () Bool)

(assert (=> b!2682802 (=> (not res!1127548) (not e!1691685))))

(assert (=> b!2682802 (= res!1127548 (= (size!23932 lt!945597) (+ (size!23932 lt!945436) (size!23932 lt!945439))))))

(declare-fun d!766756 () Bool)

(assert (=> d!766756 e!1691685))

(declare-fun res!1127547 () Bool)

(assert (=> d!766756 (=> (not res!1127547) (not e!1691685))))

(declare-fun content!4393 (List!31080) (InoxSet C!15924))

(assert (=> d!766756 (= res!1127547 (= (content!4393 lt!945597) ((_ map or) (content!4393 lt!945436) (content!4393 lt!945439))))))

(assert (=> d!766756 (= lt!945597 e!1691686)))

(declare-fun c!432053 () Bool)

(assert (=> d!766756 (= c!432053 ((_ is Nil!30980) lt!945436))))

(assert (=> d!766756 (= (++!7569 lt!945436 lt!945439) lt!945597)))

(declare-fun b!2682801 () Bool)

(assert (=> b!2682801 (= e!1691686 (Cons!30980 (h!36400 lt!945436) (++!7569 (t!224585 lt!945436) lt!945439)))))

(assert (= (and d!766756 c!432053) b!2682800))

(assert (= (and d!766756 (not c!432053)) b!2682801))

(assert (= (and d!766756 res!1127547) b!2682802))

(assert (= (and b!2682802 res!1127548) b!2682803))

(declare-fun m!3051659 () Bool)

(assert (=> b!2682802 m!3051659))

(declare-fun m!3051661 () Bool)

(assert (=> b!2682802 m!3051661))

(declare-fun m!3051663 () Bool)

(assert (=> b!2682802 m!3051663))

(declare-fun m!3051665 () Bool)

(assert (=> d!766756 m!3051665))

(declare-fun m!3051667 () Bool)

(assert (=> d!766756 m!3051667))

(declare-fun m!3051669 () Bool)

(assert (=> d!766756 m!3051669))

(declare-fun m!3051671 () Bool)

(assert (=> b!2682801 m!3051671))

(assert (=> b!2682657 d!766756))

(declare-fun d!766758 () Bool)

(assert (=> d!766758 (= (list!11690 lt!945441) (list!11691 (c!432016 lt!945441)))))

(declare-fun bs!480210 () Bool)

(assert (= bs!480210 d!766758))

(declare-fun m!3051673 () Bool)

(assert (=> bs!480210 m!3051673))

(assert (=> b!2682657 d!766758))

(declare-fun b!2682804 () Bool)

(declare-fun e!1691688 () List!31081)

(assert (=> b!2682804 (= e!1691688 (++!7570 lt!945430 lt!945433))))

(declare-fun b!2682805 () Bool)

(assert (=> b!2682805 (= e!1691688 (Cons!30981 (h!36401 lt!945437) (++!7570 (t!224586 lt!945437) (++!7570 lt!945430 lt!945433))))))

(declare-fun b!2682806 () Bool)

(declare-fun res!1127549 () Bool)

(declare-fun e!1691687 () Bool)

(assert (=> b!2682806 (=> (not res!1127549) (not e!1691687))))

(declare-fun lt!945598 () List!31081)

(assert (=> b!2682806 (= res!1127549 (= (size!23931 lt!945598) (+ (size!23931 lt!945437) (size!23931 (++!7570 lt!945430 lt!945433)))))))

(declare-fun d!766760 () Bool)

(assert (=> d!766760 e!1691687))

(declare-fun res!1127550 () Bool)

(assert (=> d!766760 (=> (not res!1127550) (not e!1691687))))

(assert (=> d!766760 (= res!1127550 (= (content!4392 lt!945598) ((_ map or) (content!4392 lt!945437) (content!4392 (++!7570 lt!945430 lt!945433)))))))

(assert (=> d!766760 (= lt!945598 e!1691688)))

(declare-fun c!432054 () Bool)

(assert (=> d!766760 (= c!432054 ((_ is Nil!30981) lt!945437))))

(assert (=> d!766760 (= (++!7570 lt!945437 (++!7570 lt!945430 lt!945433)) lt!945598)))

(declare-fun b!2682807 () Bool)

(assert (=> b!2682807 (= e!1691687 (or (not (= (++!7570 lt!945430 lt!945433) Nil!30981)) (= lt!945598 lt!945437)))))

(assert (= (and d!766760 c!432054) b!2682804))

(assert (= (and d!766760 (not c!432054)) b!2682805))

(assert (= (and d!766760 res!1127550) b!2682806))

(assert (= (and b!2682806 res!1127549) b!2682807))

(assert (=> b!2682805 m!3051353))

(declare-fun m!3051675 () Bool)

(assert (=> b!2682805 m!3051675))

(declare-fun m!3051677 () Bool)

(assert (=> b!2682806 m!3051677))

(assert (=> b!2682806 m!3051595))

(assert (=> b!2682806 m!3051353))

(declare-fun m!3051679 () Bool)

(assert (=> b!2682806 m!3051679))

(declare-fun m!3051681 () Bool)

(assert (=> d!766760 m!3051681))

(assert (=> d!766760 m!3051601))

(assert (=> d!766760 m!3051353))

(declare-fun m!3051683 () Bool)

(assert (=> d!766760 m!3051683))

(assert (=> b!2682657 d!766760))

(declare-fun b!2682808 () Bool)

(declare-fun e!1691689 () tuple2!30478)

(declare-fun lt!945601 () BalanceConc!18996)

(assert (=> b!2682808 (= e!1691689 (tuple2!30479 (BalanceConc!18999 Empty!9692) lt!945601))))

(declare-fun d!766762 () Bool)

(declare-fun e!1691691 () Bool)

(assert (=> d!766762 e!1691691))

(declare-fun res!1127551 () Bool)

(assert (=> d!766762 (=> (not res!1127551) (not e!1691691))))

(declare-fun lt!945616 () tuple2!30478)

(assert (=> d!766762 (= res!1127551 (= (list!11689 (_1!17811 lt!945616)) (list!11689 (_1!17811 (lexRec!590 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun e!1691692 () tuple2!30478)

(assert (=> d!766762 (= lt!945616 e!1691692)))

(declare-fun c!432057 () Bool)

(declare-fun lt!945600 () Option!6119)

(assert (=> d!766762 (= c!432057 ((_ is Some!6118) lt!945600))))

(assert (=> d!766762 (= lt!945600 (maxPrefixZipperSequence!993 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945426))))))

(assert (=> d!766762 (= (lexTailRec!17 thiss!12257 rules!1381 totalInput!354 lt!945438 (_2!17812 (v!32781 lt!945426)) lt!945424) lt!945616)))

(declare-fun lt!945618 () Option!6119)

(declare-fun b!2682809 () Bool)

(declare-fun lt!945604 () tuple2!30478)

(assert (=> b!2682809 (= lt!945604 (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945618))))))

(assert (=> b!2682809 (= e!1691689 (tuple2!30479 (prepend!1061 (_1!17811 lt!945604) (_1!17812 (v!32781 lt!945618))) (_2!17811 lt!945604)))))

(declare-fun b!2682810 () Bool)

(assert (=> b!2682810 (= e!1691692 (lexTailRec!17 thiss!12257 rules!1381 totalInput!354 (++!7571 lt!945438 (charsOf!2980 (_1!17812 (v!32781 lt!945600)))) (_2!17812 (v!32781 lt!945600)) (append!755 lt!945424 (_1!17812 (v!32781 lt!945600)))))))

(declare-fun lt!945622 () tuple2!30478)

(assert (=> b!2682810 (= lt!945622 (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945600))))))

(declare-fun lt!945613 () List!31080)

(assert (=> b!2682810 (= lt!945613 (list!11690 lt!945438))))

(declare-fun lt!945611 () List!31080)

(assert (=> b!2682810 (= lt!945611 (list!11690 (charsOf!2980 (_1!17812 (v!32781 lt!945600)))))))

(declare-fun lt!945610 () List!31080)

(assert (=> b!2682810 (= lt!945610 (list!11690 (_2!17812 (v!32781 lt!945600))))))

(declare-fun lt!945605 () Unit!45105)

(assert (=> b!2682810 (= lt!945605 (lemmaConcatAssociativity!1534 lt!945613 lt!945611 lt!945610))))

(assert (=> b!2682810 (= (++!7569 (++!7569 lt!945613 lt!945611) lt!945610) (++!7569 lt!945613 (++!7569 lt!945611 lt!945610)))))

(declare-fun lt!945620 () Unit!45105)

(assert (=> b!2682810 (= lt!945620 lt!945605)))

(declare-fun lt!945606 () Option!6119)

(assert (=> b!2682810 (= lt!945606 (maxPrefixZipperSequence!993 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945426))))))

(declare-fun c!432056 () Bool)

(assert (=> b!2682810 (= c!432056 ((_ is Some!6118) lt!945606))))

(declare-fun e!1691690 () tuple2!30478)

(assert (=> b!2682810 (= (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945426))) e!1691690)))

(declare-fun lt!945602 () Unit!45105)

(declare-fun Unit!45109 () Unit!45105)

(assert (=> b!2682810 (= lt!945602 Unit!45109)))

(declare-fun lt!945619 () List!31081)

(assert (=> b!2682810 (= lt!945619 (list!11689 lt!945424))))

(declare-fun lt!945617 () List!31081)

(assert (=> b!2682810 (= lt!945617 (Cons!30981 (_1!17812 (v!32781 lt!945600)) Nil!30981))))

(declare-fun lt!945607 () List!31081)

(assert (=> b!2682810 (= lt!945607 (list!11689 (_1!17811 lt!945622)))))

(declare-fun lt!945615 () Unit!45105)

(assert (=> b!2682810 (= lt!945615 (lemmaConcatAssociativity!1535 lt!945619 lt!945617 lt!945607))))

(assert (=> b!2682810 (= (++!7570 (++!7570 lt!945619 lt!945617) lt!945607) (++!7570 lt!945619 (++!7570 lt!945617 lt!945607)))))

(declare-fun lt!945603 () Unit!45105)

(assert (=> b!2682810 (= lt!945603 lt!945615)))

(declare-fun lt!945599 () List!31080)

(assert (=> b!2682810 (= lt!945599 (++!7569 (list!11690 lt!945438) (list!11690 (charsOf!2980 (_1!17812 (v!32781 lt!945600))))))))

(declare-fun lt!945608 () List!31080)

(assert (=> b!2682810 (= lt!945608 (list!11690 (_2!17812 (v!32781 lt!945600))))))

(declare-fun lt!945614 () List!31081)

(assert (=> b!2682810 (= lt!945614 (list!11689 (append!755 lt!945424 (_1!17812 (v!32781 lt!945600)))))))

(declare-fun lt!945621 () Unit!45105)

(assert (=> b!2682810 (= lt!945621 (lemmaLexThenLexPrefix!398 thiss!12257 rules!1381 lt!945599 lt!945608 lt!945614 (list!11689 (_1!17811 lt!945622)) (list!11690 (_2!17811 lt!945622))))))

(assert (=> b!2682810 (= (lexList!1185 thiss!12257 rules!1381 lt!945599) (tuple2!30489 lt!945614 Nil!30980))))

(declare-fun lt!945623 () Unit!45105)

(assert (=> b!2682810 (= lt!945623 lt!945621)))

(assert (=> b!2682810 (= lt!945601 (++!7571 lt!945438 (charsOf!2980 (_1!17812 (v!32781 lt!945600)))))))

(assert (=> b!2682810 (= lt!945618 (maxPrefixZipperSequence!993 thiss!12257 rules!1381 lt!945601))))

(declare-fun c!432055 () Bool)

(assert (=> b!2682810 (= c!432055 ((_ is Some!6118) lt!945618))))

(assert (=> b!2682810 (= (lexRec!590 thiss!12257 rules!1381 (++!7571 lt!945438 (charsOf!2980 (_1!17812 (v!32781 lt!945600))))) e!1691689)))

(declare-fun lt!945609 () Unit!45105)

(declare-fun Unit!45110 () Unit!45105)

(assert (=> b!2682810 (= lt!945609 Unit!45110)))

(declare-fun b!2682811 () Bool)

(assert (=> b!2682811 (= e!1691690 (tuple2!30479 (BalanceConc!18999 Empty!9692) (_2!17812 (v!32781 lt!945426))))))

(declare-fun b!2682812 () Bool)

(declare-fun lt!945612 () tuple2!30478)

(assert (=> b!2682812 (= lt!945612 (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945606))))))

(assert (=> b!2682812 (= e!1691690 (tuple2!30479 (prepend!1061 (_1!17811 lt!945612) (_1!17812 (v!32781 lt!945606))) (_2!17811 lt!945612)))))

(declare-fun b!2682813 () Bool)

(assert (=> b!2682813 (= e!1691691 (= (list!11690 (_2!17811 lt!945616)) (list!11690 (_2!17811 (lexRec!590 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun b!2682814 () Bool)

(assert (=> b!2682814 (= e!1691692 (tuple2!30479 lt!945424 (_2!17812 (v!32781 lt!945426))))))

(assert (= (and d!766762 c!432057) b!2682810))

(assert (= (and d!766762 (not c!432057)) b!2682814))

(assert (= (and b!2682810 c!432056) b!2682812))

(assert (= (and b!2682810 (not c!432056)) b!2682811))

(assert (= (and b!2682810 c!432055) b!2682809))

(assert (= (and b!2682810 (not c!432055)) b!2682808))

(assert (= (and d!766762 res!1127551) b!2682813))

(declare-fun m!3051685 () Bool)

(assert (=> b!2682809 m!3051685))

(declare-fun m!3051687 () Bool)

(assert (=> b!2682809 m!3051687))

(assert (=> b!2682810 m!3051365))

(declare-fun m!3051689 () Bool)

(assert (=> b!2682810 m!3051689))

(declare-fun m!3051691 () Bool)

(assert (=> b!2682810 m!3051691))

(declare-fun m!3051693 () Bool)

(assert (=> b!2682810 m!3051693))

(declare-fun m!3051695 () Bool)

(assert (=> b!2682810 m!3051695))

(declare-fun m!3051697 () Bool)

(assert (=> b!2682810 m!3051697))

(declare-fun m!3051699 () Bool)

(assert (=> b!2682810 m!3051699))

(declare-fun m!3051701 () Bool)

(assert (=> b!2682810 m!3051701))

(declare-fun m!3051703 () Bool)

(assert (=> b!2682810 m!3051703))

(assert (=> b!2682810 m!3051701))

(declare-fun m!3051705 () Bool)

(assert (=> b!2682810 m!3051705))

(assert (=> b!2682810 m!3051705))

(declare-fun m!3051707 () Bool)

(assert (=> b!2682810 m!3051707))

(declare-fun m!3051709 () Bool)

(assert (=> b!2682810 m!3051709))

(declare-fun m!3051711 () Bool)

(assert (=> b!2682810 m!3051711))

(declare-fun m!3051713 () Bool)

(assert (=> b!2682810 m!3051713))

(declare-fun m!3051715 () Bool)

(assert (=> b!2682810 m!3051715))

(assert (=> b!2682810 m!3051695))

(declare-fun m!3051717 () Bool)

(assert (=> b!2682810 m!3051717))

(declare-fun m!3051719 () Bool)

(assert (=> b!2682810 m!3051719))

(assert (=> b!2682810 m!3051705))

(assert (=> b!2682810 m!3051695))

(declare-fun m!3051721 () Bool)

(assert (=> b!2682810 m!3051721))

(assert (=> b!2682810 m!3051345))

(declare-fun m!3051723 () Bool)

(assert (=> b!2682810 m!3051723))

(declare-fun m!3051725 () Bool)

(assert (=> b!2682810 m!3051725))

(assert (=> b!2682810 m!3051615))

(assert (=> b!2682810 m!3051711))

(assert (=> b!2682810 m!3051575))

(declare-fun m!3051727 () Bool)

(assert (=> b!2682810 m!3051727))

(declare-fun m!3051729 () Bool)

(assert (=> b!2682810 m!3051729))

(assert (=> b!2682810 m!3051689))

(assert (=> b!2682810 m!3051697))

(assert (=> b!2682810 m!3051723))

(assert (=> b!2682810 m!3051701))

(declare-fun m!3051731 () Bool)

(assert (=> b!2682810 m!3051731))

(declare-fun m!3051733 () Bool)

(assert (=> b!2682810 m!3051733))

(assert (=> b!2682810 m!3051713))

(assert (=> b!2682810 m!3051575))

(assert (=> b!2682810 m!3051703))

(declare-fun m!3051735 () Bool)

(assert (=> b!2682810 m!3051735))

(assert (=> b!2682810 m!3051731))

(declare-fun m!3051737 () Bool)

(assert (=> b!2682810 m!3051737))

(declare-fun m!3051739 () Bool)

(assert (=> d!766762 m!3051739))

(assert (=> d!766762 m!3051439))

(assert (=> d!766762 m!3051537))

(assert (=> d!766762 m!3051615))

(declare-fun m!3051741 () Bool)

(assert (=> b!2682812 m!3051741))

(declare-fun m!3051743 () Bool)

(assert (=> b!2682812 m!3051743))

(declare-fun m!3051745 () Bool)

(assert (=> b!2682813 m!3051745))

(assert (=> b!2682813 m!3051439))

(assert (=> b!2682813 m!3051545))

(assert (=> b!2682657 d!766762))

(declare-fun b!2682815 () Bool)

(declare-fun e!1691694 () List!31081)

(assert (=> b!2682815 (= e!1691694 lt!945433)))

(declare-fun b!2682816 () Bool)

(assert (=> b!2682816 (= e!1691694 (Cons!30981 (h!36401 lt!945430) (++!7570 (t!224586 lt!945430) lt!945433)))))

(declare-fun b!2682817 () Bool)

(declare-fun res!1127552 () Bool)

(declare-fun e!1691693 () Bool)

(assert (=> b!2682817 (=> (not res!1127552) (not e!1691693))))

(declare-fun lt!945624 () List!31081)

(assert (=> b!2682817 (= res!1127552 (= (size!23931 lt!945624) (+ (size!23931 lt!945430) (size!23931 lt!945433))))))

(declare-fun d!766764 () Bool)

(assert (=> d!766764 e!1691693))

(declare-fun res!1127553 () Bool)

(assert (=> d!766764 (=> (not res!1127553) (not e!1691693))))

(assert (=> d!766764 (= res!1127553 (= (content!4392 lt!945624) ((_ map or) (content!4392 lt!945430) (content!4392 lt!945433))))))

(assert (=> d!766764 (= lt!945624 e!1691694)))

(declare-fun c!432058 () Bool)

(assert (=> d!766764 (= c!432058 ((_ is Nil!30981) lt!945430))))

(assert (=> d!766764 (= (++!7570 lt!945430 lt!945433) lt!945624)))

(declare-fun b!2682818 () Bool)

(assert (=> b!2682818 (= e!1691693 (or (not (= lt!945433 Nil!30981)) (= lt!945624 lt!945430)))))

(assert (= (and d!766764 c!432058) b!2682815))

(assert (= (and d!766764 (not c!432058)) b!2682816))

(assert (= (and d!766764 res!1127553) b!2682817))

(assert (= (and b!2682817 res!1127552) b!2682818))

(declare-fun m!3051747 () Bool)

(assert (=> b!2682816 m!3051747))

(declare-fun m!3051749 () Bool)

(assert (=> b!2682817 m!3051749))

(assert (=> b!2682817 m!3051597))

(declare-fun m!3051751 () Bool)

(assert (=> b!2682817 m!3051751))

(declare-fun m!3051753 () Bool)

(assert (=> d!766764 m!3051753))

(assert (=> d!766764 m!3051603))

(declare-fun m!3051755 () Bool)

(assert (=> d!766764 m!3051755))

(assert (=> b!2682657 d!766764))

(declare-fun e!1691695 () Bool)

(declare-fun lt!945625 () List!31080)

(declare-fun b!2682822 () Bool)

(assert (=> b!2682822 (= e!1691695 (or (not (= lt!945420 Nil!30980)) (= lt!945625 lt!945422)))))

(declare-fun b!2682819 () Bool)

(declare-fun e!1691696 () List!31080)

(assert (=> b!2682819 (= e!1691696 lt!945420)))

(declare-fun b!2682821 () Bool)

(declare-fun res!1127555 () Bool)

(assert (=> b!2682821 (=> (not res!1127555) (not e!1691695))))

(assert (=> b!2682821 (= res!1127555 (= (size!23932 lt!945625) (+ (size!23932 lt!945422) (size!23932 lt!945420))))))

(declare-fun d!766766 () Bool)

(assert (=> d!766766 e!1691695))

(declare-fun res!1127554 () Bool)

(assert (=> d!766766 (=> (not res!1127554) (not e!1691695))))

(assert (=> d!766766 (= res!1127554 (= (content!4393 lt!945625) ((_ map or) (content!4393 lt!945422) (content!4393 lt!945420))))))

(assert (=> d!766766 (= lt!945625 e!1691696)))

(declare-fun c!432059 () Bool)

(assert (=> d!766766 (= c!432059 ((_ is Nil!30980) lt!945422))))

(assert (=> d!766766 (= (++!7569 lt!945422 lt!945420) lt!945625)))

(declare-fun b!2682820 () Bool)

(assert (=> b!2682820 (= e!1691696 (Cons!30980 (h!36400 lt!945422) (++!7569 (t!224585 lt!945422) lt!945420)))))

(assert (= (and d!766766 c!432059) b!2682819))

(assert (= (and d!766766 (not c!432059)) b!2682820))

(assert (= (and d!766766 res!1127554) b!2682821))

(assert (= (and b!2682821 res!1127555) b!2682822))

(declare-fun m!3051757 () Bool)

(assert (=> b!2682821 m!3051757))

(assert (=> b!2682821 m!3051645))

(declare-fun m!3051759 () Bool)

(assert (=> b!2682821 m!3051759))

(declare-fun m!3051761 () Bool)

(assert (=> d!766766 m!3051761))

(declare-fun m!3051763 () Bool)

(assert (=> d!766766 m!3051763))

(declare-fun m!3051765 () Bool)

(assert (=> d!766766 m!3051765))

(declare-fun m!3051767 () Bool)

(assert (=> b!2682820 m!3051767))

(assert (=> b!2682657 d!766766))

(declare-fun d!766768 () Bool)

(assert (=> d!766768 (= (lexList!1185 thiss!12257 rules!1381 lt!945422) (tuple2!30489 lt!945432 Nil!30980))))

(declare-fun lt!945628 () Unit!45105)

(declare-fun choose!15887 (LexerInterface!4327 List!31082 List!31080 List!31080 List!31081 List!31081 List!31080) Unit!45105)

(assert (=> d!766768 (= lt!945628 (choose!15887 thiss!12257 rules!1381 lt!945422 lt!945420 lt!945432 lt!945433 (list!11690 (_2!17811 lt!945417))))))

(assert (=> d!766768 (not (isEmpty!17686 rules!1381))))

(assert (=> d!766768 (= (lemmaLexThenLexPrefix!398 thiss!12257 rules!1381 lt!945422 lt!945420 lt!945432 lt!945433 (list!11690 (_2!17811 lt!945417))) lt!945628)))

(declare-fun bs!480211 () Bool)

(assert (= bs!480211 d!766768))

(assert (=> bs!480211 m!3051325))

(assert (=> bs!480211 m!3051341))

(declare-fun m!3051769 () Bool)

(assert (=> bs!480211 m!3051769))

(assert (=> bs!480211 m!3051383))

(assert (=> b!2682657 d!766768))

(declare-fun b!2682823 () Bool)

(declare-fun e!1691700 () Option!6119)

(declare-fun call!172779 () Option!6119)

(assert (=> b!2682823 (= e!1691700 call!172779)))

(declare-fun b!2682824 () Bool)

(declare-fun e!1691699 () Bool)

(declare-fun e!1691698 () Bool)

(assert (=> b!2682824 (= e!1691699 e!1691698)))

(declare-fun res!1127556 () Bool)

(assert (=> b!2682824 (=> (not res!1127556) (not e!1691698))))

(declare-fun lt!945633 () Option!6119)

(assert (=> b!2682824 (= res!1127556 (= (_1!17812 (get!9706 lt!945633)) (_1!17819 (get!9707 (maxPrefix!2346 thiss!12257 rules!1381 (list!11690 lt!945438))))))))

(declare-fun d!766770 () Bool)

(declare-fun e!1691697 () Bool)

(assert (=> d!766770 e!1691697))

(declare-fun res!1127561 () Bool)

(assert (=> d!766770 (=> (not res!1127561) (not e!1691697))))

(assert (=> d!766770 (= res!1127561 (= (isDefined!4853 lt!945633) (isDefined!4854 (maxPrefixZipper!450 thiss!12257 rules!1381 (list!11690 lt!945438)))))))

(assert (=> d!766770 (= lt!945633 e!1691700)))

(declare-fun c!432060 () Bool)

(assert (=> d!766770 (= c!432060 (and ((_ is Cons!30982) rules!1381) ((_ is Nil!30982) (t!224587 rules!1381))))))

(declare-fun lt!945634 () Unit!45105)

(declare-fun lt!945629 () Unit!45105)

(assert (=> d!766770 (= lt!945634 lt!945629)))

(declare-fun lt!945632 () List!31080)

(declare-fun lt!945635 () List!31080)

(assert (=> d!766770 (isPrefix!2463 lt!945632 lt!945635)))

(assert (=> d!766770 (= lt!945629 (lemmaIsPrefixRefl!1589 lt!945632 lt!945635))))

(assert (=> d!766770 (= lt!945635 (list!11690 lt!945438))))

(assert (=> d!766770 (= lt!945632 (list!11690 lt!945438))))

(assert (=> d!766770 (rulesValidInductive!1645 thiss!12257 rules!1381)))

(assert (=> d!766770 (= (maxPrefixZipperSequence!993 thiss!12257 rules!1381 lt!945438) lt!945633)))

(declare-fun b!2682825 () Bool)

(declare-fun e!1691702 () Bool)

(declare-fun e!1691701 () Bool)

(assert (=> b!2682825 (= e!1691702 e!1691701)))

(declare-fun res!1127559 () Bool)

(assert (=> b!2682825 (=> (not res!1127559) (not e!1691701))))

(assert (=> b!2682825 (= res!1127559 (= (_1!17812 (get!9706 lt!945633)) (_1!17819 (get!9707 (maxPrefixZipper!450 thiss!12257 rules!1381 (list!11690 lt!945438))))))))

(declare-fun b!2682826 () Bool)

(declare-fun lt!945630 () Option!6119)

(declare-fun lt!945631 () Option!6119)

(assert (=> b!2682826 (= e!1691700 (ite (and ((_ is None!6118) lt!945630) ((_ is None!6118) lt!945631)) None!6118 (ite ((_ is None!6118) lt!945631) lt!945630 (ite ((_ is None!6118) lt!945630) lt!945631 (ite (>= (size!23925 (_1!17812 (v!32781 lt!945630))) (size!23925 (_1!17812 (v!32781 lt!945631)))) lt!945630 lt!945631)))))))

(assert (=> b!2682826 (= lt!945630 call!172779)))

(assert (=> b!2682826 (= lt!945631 (maxPrefixZipperSequence!993 thiss!12257 (t!224587 rules!1381) lt!945438))))

(declare-fun b!2682827 () Bool)

(assert (=> b!2682827 (= e!1691701 (= (list!11690 (_2!17812 (get!9706 lt!945633))) (_2!17819 (get!9707 (maxPrefixZipper!450 thiss!12257 rules!1381 (list!11690 lt!945438))))))))

(declare-fun b!2682828 () Bool)

(assert (=> b!2682828 (= e!1691697 e!1691699)))

(declare-fun res!1127557 () Bool)

(assert (=> b!2682828 (=> res!1127557 e!1691699)))

(assert (=> b!2682828 (= res!1127557 (not (isDefined!4853 lt!945633)))))

(declare-fun b!2682829 () Bool)

(declare-fun res!1127560 () Bool)

(assert (=> b!2682829 (=> (not res!1127560) (not e!1691697))))

(assert (=> b!2682829 (= res!1127560 e!1691702)))

(declare-fun res!1127558 () Bool)

(assert (=> b!2682829 (=> res!1127558 e!1691702)))

(assert (=> b!2682829 (= res!1127558 (not (isDefined!4853 lt!945633)))))

(declare-fun b!2682830 () Bool)

(assert (=> b!2682830 (= e!1691698 (= (list!11690 (_2!17812 (get!9706 lt!945633))) (_2!17819 (get!9707 (maxPrefix!2346 thiss!12257 rules!1381 (list!11690 lt!945438))))))))

(declare-fun bm!172774 () Bool)

(assert (=> bm!172774 (= call!172779 (maxPrefixOneRuleZipperSequence!459 thiss!12257 (h!36402 rules!1381) lt!945438))))

(assert (= (and d!766770 c!432060) b!2682823))

(assert (= (and d!766770 (not c!432060)) b!2682826))

(assert (= (or b!2682823 b!2682826) bm!172774))

(assert (= (and d!766770 res!1127561) b!2682829))

(assert (= (and b!2682829 (not res!1127558)) b!2682825))

(assert (= (and b!2682825 res!1127559) b!2682827))

(assert (= (and b!2682829 res!1127560) b!2682828))

(assert (= (and b!2682828 (not res!1127557)) b!2682824))

(assert (= (and b!2682824 res!1127556) b!2682830))

(declare-fun m!3051771 () Bool)

(assert (=> d!766770 m!3051771))

(declare-fun m!3051773 () Bool)

(assert (=> d!766770 m!3051773))

(assert (=> d!766770 m!3051575))

(assert (=> d!766770 m!3051575))

(assert (=> d!766770 m!3051771))

(declare-fun m!3051775 () Bool)

(assert (=> d!766770 m!3051775))

(declare-fun m!3051777 () Bool)

(assert (=> d!766770 m!3051777))

(declare-fun m!3051779 () Bool)

(assert (=> d!766770 m!3051779))

(assert (=> d!766770 m!3051475))

(declare-fun m!3051781 () Bool)

(assert (=> b!2682825 m!3051781))

(assert (=> b!2682825 m!3051575))

(assert (=> b!2682825 m!3051575))

(assert (=> b!2682825 m!3051771))

(assert (=> b!2682825 m!3051771))

(declare-fun m!3051783 () Bool)

(assert (=> b!2682825 m!3051783))

(assert (=> b!2682828 m!3051777))

(declare-fun m!3051785 () Bool)

(assert (=> b!2682827 m!3051785))

(assert (=> b!2682827 m!3051575))

(assert (=> b!2682827 m!3051575))

(assert (=> b!2682827 m!3051771))

(assert (=> b!2682827 m!3051781))

(assert (=> b!2682827 m!3051771))

(assert (=> b!2682827 m!3051783))

(declare-fun m!3051787 () Bool)

(assert (=> b!2682826 m!3051787))

(declare-fun m!3051789 () Bool)

(assert (=> bm!172774 m!3051789))

(assert (=> b!2682830 m!3051785))

(assert (=> b!2682830 m!3051781))

(assert (=> b!2682830 m!3051575))

(declare-fun m!3051791 () Bool)

(assert (=> b!2682830 m!3051791))

(assert (=> b!2682830 m!3051791))

(declare-fun m!3051793 () Bool)

(assert (=> b!2682830 m!3051793))

(assert (=> b!2682830 m!3051575))

(assert (=> b!2682824 m!3051781))

(assert (=> b!2682824 m!3051575))

(assert (=> b!2682824 m!3051575))

(assert (=> b!2682824 m!3051791))

(assert (=> b!2682824 m!3051791))

(assert (=> b!2682824 m!3051793))

(assert (=> b!2682829 m!3051777))

(assert (=> b!2682657 d!766770))

(declare-fun b!2682831 () Bool)

(declare-fun e!1691704 () List!31081)

(assert (=> b!2682831 (= e!1691704 lt!945433)))

(declare-fun b!2682832 () Bool)

(assert (=> b!2682832 (= e!1691704 (Cons!30981 (h!36401 (++!7570 lt!945437 lt!945430)) (++!7570 (t!224586 (++!7570 lt!945437 lt!945430)) lt!945433)))))

(declare-fun b!2682833 () Bool)

(declare-fun res!1127562 () Bool)

(declare-fun e!1691703 () Bool)

(assert (=> b!2682833 (=> (not res!1127562) (not e!1691703))))

(declare-fun lt!945636 () List!31081)

(assert (=> b!2682833 (= res!1127562 (= (size!23931 lt!945636) (+ (size!23931 (++!7570 lt!945437 lt!945430)) (size!23931 lt!945433))))))

(declare-fun d!766772 () Bool)

(assert (=> d!766772 e!1691703))

(declare-fun res!1127563 () Bool)

(assert (=> d!766772 (=> (not res!1127563) (not e!1691703))))

(assert (=> d!766772 (= res!1127563 (= (content!4392 lt!945636) ((_ map or) (content!4392 (++!7570 lt!945437 lt!945430)) (content!4392 lt!945433))))))

(assert (=> d!766772 (= lt!945636 e!1691704)))

(declare-fun c!432061 () Bool)

(assert (=> d!766772 (= c!432061 ((_ is Nil!30981) (++!7570 lt!945437 lt!945430)))))

(assert (=> d!766772 (= (++!7570 (++!7570 lt!945437 lt!945430) lt!945433) lt!945636)))

(declare-fun b!2682834 () Bool)

(assert (=> b!2682834 (= e!1691703 (or (not (= lt!945433 Nil!30981)) (= lt!945636 (++!7570 lt!945437 lt!945430))))))

(assert (= (and d!766772 c!432061) b!2682831))

(assert (= (and d!766772 (not c!432061)) b!2682832))

(assert (= (and d!766772 res!1127563) b!2682833))

(assert (= (and b!2682833 res!1127562) b!2682834))

(declare-fun m!3051795 () Bool)

(assert (=> b!2682832 m!3051795))

(declare-fun m!3051797 () Bool)

(assert (=> b!2682833 m!3051797))

(assert (=> b!2682833 m!3051335))

(declare-fun m!3051799 () Bool)

(assert (=> b!2682833 m!3051799))

(assert (=> b!2682833 m!3051751))

(declare-fun m!3051801 () Bool)

(assert (=> d!766772 m!3051801))

(assert (=> d!766772 m!3051335))

(declare-fun m!3051803 () Bool)

(assert (=> d!766772 m!3051803))

(assert (=> d!766772 m!3051755))

(assert (=> b!2682657 d!766772))

(declare-fun d!766774 () Bool)

(declare-fun lt!945639 () BalanceConc!18996)

(assert (=> d!766774 (= (list!11690 lt!945639) (originalCharacters!5495 (_1!17812 (v!32781 lt!945426))))))

(declare-fun dynLambda!13428 (Int TokenValue!4953) BalanceConc!18996)

(assert (=> d!766774 (= lt!945639 (dynLambda!13428 (toChars!6544 (transformation!4731 (rule!7141 (_1!17812 (v!32781 lt!945426))))) (value!152448 (_1!17812 (v!32781 lt!945426)))))))

(assert (=> d!766774 (= (charsOf!2980 (_1!17812 (v!32781 lt!945426))) lt!945639)))

(declare-fun b_lambda!81893 () Bool)

(assert (=> (not b_lambda!81893) (not d!766774)))

(declare-fun t!224592 () Bool)

(declare-fun tb!150593 () Bool)

(assert (=> (and b!2682648 (= (toChars!6544 (transformation!4731 (h!36402 rules!1381))) (toChars!6544 (transformation!4731 (rule!7141 (_1!17812 (v!32781 lt!945426)))))) t!224592) tb!150593))

(declare-fun b!2682839 () Bool)

(declare-fun e!1691707 () Bool)

(declare-fun tp!849003 () Bool)

(assert (=> b!2682839 (= e!1691707 (and (inv!42003 (c!432016 (dynLambda!13428 (toChars!6544 (transformation!4731 (rule!7141 (_1!17812 (v!32781 lt!945426))))) (value!152448 (_1!17812 (v!32781 lt!945426)))))) tp!849003))))

(declare-fun result!185984 () Bool)

(assert (=> tb!150593 (= result!185984 (and (inv!42004 (dynLambda!13428 (toChars!6544 (transformation!4731 (rule!7141 (_1!17812 (v!32781 lt!945426))))) (value!152448 (_1!17812 (v!32781 lt!945426))))) e!1691707))))

(assert (= tb!150593 b!2682839))

(declare-fun m!3051805 () Bool)

(assert (=> b!2682839 m!3051805))

(declare-fun m!3051807 () Bool)

(assert (=> tb!150593 m!3051807))

(assert (=> d!766774 t!224592))

(declare-fun b_and!198687 () Bool)

(assert (= b_and!198683 (and (=> t!224592 result!185984) b_and!198687)))

(declare-fun m!3051809 () Bool)

(assert (=> d!766774 m!3051809))

(declare-fun m!3051811 () Bool)

(assert (=> d!766774 m!3051811))

(assert (=> b!2682657 d!766774))

(declare-fun d!766776 () Bool)

(declare-fun e!1691710 () Bool)

(assert (=> d!766776 e!1691710))

(declare-fun res!1127574 () Bool)

(assert (=> d!766776 (=> (not res!1127574) (not e!1691710))))

(declare-fun appendAssocInst!653 (Conc!9691 Conc!9691) Bool)

(assert (=> d!766776 (= res!1127574 (appendAssocInst!653 (c!432016 treated!26) (c!432016 lt!945441)))))

(declare-fun lt!945642 () BalanceConc!18996)

(declare-fun ++!7573 (Conc!9691 Conc!9691) Conc!9691)

(assert (=> d!766776 (= lt!945642 (BalanceConc!18997 (++!7573 (c!432016 treated!26) (c!432016 lt!945441))))))

(assert (=> d!766776 (= (++!7571 treated!26 lt!945441) lt!945642)))

(declare-fun b!2682849 () Bool)

(declare-fun res!1127575 () Bool)

(assert (=> b!2682849 (=> (not res!1127575) (not e!1691710))))

(declare-fun height!1413 (Conc!9691) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2682849 (= res!1127575 (<= (height!1413 (++!7573 (c!432016 treated!26) (c!432016 lt!945441))) (+ (max!0 (height!1413 (c!432016 treated!26)) (height!1413 (c!432016 lt!945441))) 1)))))

(declare-fun b!2682848 () Bool)

(declare-fun res!1127572 () Bool)

(assert (=> b!2682848 (=> (not res!1127572) (not e!1691710))))

(declare-fun isBalanced!2932 (Conc!9691) Bool)

(assert (=> b!2682848 (= res!1127572 (isBalanced!2932 (++!7573 (c!432016 treated!26) (c!432016 lt!945441))))))

(declare-fun b!2682850 () Bool)

(declare-fun res!1127573 () Bool)

(assert (=> b!2682850 (=> (not res!1127573) (not e!1691710))))

(assert (=> b!2682850 (= res!1127573 (>= (height!1413 (++!7573 (c!432016 treated!26) (c!432016 lt!945441))) (max!0 (height!1413 (c!432016 treated!26)) (height!1413 (c!432016 lt!945441)))))))

(declare-fun b!2682851 () Bool)

(assert (=> b!2682851 (= e!1691710 (= (list!11690 lt!945642) (++!7569 (list!11690 treated!26) (list!11690 lt!945441))))))

(assert (= (and d!766776 res!1127574) b!2682848))

(assert (= (and b!2682848 res!1127572) b!2682849))

(assert (= (and b!2682849 res!1127575) b!2682850))

(assert (= (and b!2682850 res!1127573) b!2682851))

(declare-fun m!3051813 () Bool)

(assert (=> d!766776 m!3051813))

(declare-fun m!3051815 () Bool)

(assert (=> d!766776 m!3051815))

(declare-fun m!3051817 () Bool)

(assert (=> b!2682850 m!3051817))

(declare-fun m!3051819 () Bool)

(assert (=> b!2682850 m!3051819))

(assert (=> b!2682850 m!3051815))

(declare-fun m!3051821 () Bool)

(assert (=> b!2682850 m!3051821))

(assert (=> b!2682850 m!3051815))

(assert (=> b!2682850 m!3051819))

(assert (=> b!2682850 m!3051817))

(declare-fun m!3051823 () Bool)

(assert (=> b!2682850 m!3051823))

(declare-fun m!3051825 () Bool)

(assert (=> b!2682851 m!3051825))

(assert (=> b!2682851 m!3051429))

(assert (=> b!2682851 m!3051357))

(assert (=> b!2682851 m!3051429))

(assert (=> b!2682851 m!3051357))

(declare-fun m!3051827 () Bool)

(assert (=> b!2682851 m!3051827))

(assert (=> b!2682849 m!3051817))

(assert (=> b!2682849 m!3051819))

(assert (=> b!2682849 m!3051815))

(assert (=> b!2682849 m!3051821))

(assert (=> b!2682849 m!3051815))

(assert (=> b!2682849 m!3051819))

(assert (=> b!2682849 m!3051817))

(assert (=> b!2682849 m!3051823))

(assert (=> b!2682848 m!3051815))

(assert (=> b!2682848 m!3051815))

(declare-fun m!3051829 () Bool)

(assert (=> b!2682848 m!3051829))

(assert (=> b!2682657 d!766776))

(declare-fun lt!945643 () List!31080)

(declare-fun b!2682855 () Bool)

(declare-fun e!1691711 () Bool)

(assert (=> b!2682855 (= e!1691711 (or (not (= lt!945420 Nil!30980)) (= lt!945643 lt!945439)))))

(declare-fun b!2682852 () Bool)

(declare-fun e!1691712 () List!31080)

(assert (=> b!2682852 (= e!1691712 lt!945420)))

(declare-fun b!2682854 () Bool)

(declare-fun res!1127577 () Bool)

(assert (=> b!2682854 (=> (not res!1127577) (not e!1691711))))

(assert (=> b!2682854 (= res!1127577 (= (size!23932 lt!945643) (+ (size!23932 lt!945439) (size!23932 lt!945420))))))

(declare-fun d!766778 () Bool)

(assert (=> d!766778 e!1691711))

(declare-fun res!1127576 () Bool)

(assert (=> d!766778 (=> (not res!1127576) (not e!1691711))))

(assert (=> d!766778 (= res!1127576 (= (content!4393 lt!945643) ((_ map or) (content!4393 lt!945439) (content!4393 lt!945420))))))

(assert (=> d!766778 (= lt!945643 e!1691712)))

(declare-fun c!432065 () Bool)

(assert (=> d!766778 (= c!432065 ((_ is Nil!30980) lt!945439))))

(assert (=> d!766778 (= (++!7569 lt!945439 lt!945420) lt!945643)))

(declare-fun b!2682853 () Bool)

(assert (=> b!2682853 (= e!1691712 (Cons!30980 (h!36400 lt!945439) (++!7569 (t!224585 lt!945439) lt!945420)))))

(assert (= (and d!766778 c!432065) b!2682852))

(assert (= (and d!766778 (not c!432065)) b!2682853))

(assert (= (and d!766778 res!1127576) b!2682854))

(assert (= (and b!2682854 res!1127577) b!2682855))

(declare-fun m!3051831 () Bool)

(assert (=> b!2682854 m!3051831))

(assert (=> b!2682854 m!3051663))

(assert (=> b!2682854 m!3051759))

(declare-fun m!3051833 () Bool)

(assert (=> d!766778 m!3051833))

(assert (=> d!766778 m!3051669))

(assert (=> d!766778 m!3051765))

(declare-fun m!3051835 () Bool)

(assert (=> b!2682853 m!3051835))

(assert (=> b!2682657 d!766778))

(declare-fun lt!945644 () List!31080)

(declare-fun e!1691713 () Bool)

(declare-fun b!2682859 () Bool)

(assert (=> b!2682859 (= e!1691713 (or (not (= (++!7569 lt!945439 lt!945420) Nil!30980)) (= lt!945644 lt!945436)))))

(declare-fun b!2682856 () Bool)

(declare-fun e!1691714 () List!31080)

(assert (=> b!2682856 (= e!1691714 (++!7569 lt!945439 lt!945420))))

(declare-fun b!2682858 () Bool)

(declare-fun res!1127579 () Bool)

(assert (=> b!2682858 (=> (not res!1127579) (not e!1691713))))

(assert (=> b!2682858 (= res!1127579 (= (size!23932 lt!945644) (+ (size!23932 lt!945436) (size!23932 (++!7569 lt!945439 lt!945420)))))))

(declare-fun d!766780 () Bool)

(assert (=> d!766780 e!1691713))

(declare-fun res!1127578 () Bool)

(assert (=> d!766780 (=> (not res!1127578) (not e!1691713))))

(assert (=> d!766780 (= res!1127578 (= (content!4393 lt!945644) ((_ map or) (content!4393 lt!945436) (content!4393 (++!7569 lt!945439 lt!945420)))))))

(assert (=> d!766780 (= lt!945644 e!1691714)))

(declare-fun c!432066 () Bool)

(assert (=> d!766780 (= c!432066 ((_ is Nil!30980) lt!945436))))

(assert (=> d!766780 (= (++!7569 lt!945436 (++!7569 lt!945439 lt!945420)) lt!945644)))

(declare-fun b!2682857 () Bool)

(assert (=> b!2682857 (= e!1691714 (Cons!30980 (h!36400 lt!945436) (++!7569 (t!224585 lt!945436) (++!7569 lt!945439 lt!945420))))))

(assert (= (and d!766780 c!432066) b!2682856))

(assert (= (and d!766780 (not c!432066)) b!2682857))

(assert (= (and d!766780 res!1127578) b!2682858))

(assert (= (and b!2682858 res!1127579) b!2682859))

(declare-fun m!3051837 () Bool)

(assert (=> b!2682858 m!3051837))

(assert (=> b!2682858 m!3051661))

(assert (=> b!2682858 m!3051355))

(declare-fun m!3051839 () Bool)

(assert (=> b!2682858 m!3051839))

(declare-fun m!3051841 () Bool)

(assert (=> d!766780 m!3051841))

(assert (=> d!766780 m!3051667))

(assert (=> d!766780 m!3051355))

(declare-fun m!3051843 () Bool)

(assert (=> d!766780 m!3051843))

(assert (=> b!2682857 m!3051355))

(declare-fun m!3051845 () Bool)

(assert (=> b!2682857 m!3051845))

(assert (=> b!2682657 d!766780))

(declare-fun d!766782 () Bool)

(declare-fun c!432069 () Bool)

(assert (=> d!766782 (= c!432069 ((_ is Node!9692) (c!432017 acc!348)))))

(declare-fun e!1691719 () Bool)

(assert (=> d!766782 (= (inv!42008 (c!432017 acc!348)) e!1691719)))

(declare-fun b!2682866 () Bool)

(declare-fun inv!42009 (Conc!9692) Bool)

(assert (=> b!2682866 (= e!1691719 (inv!42009 (c!432017 acc!348)))))

(declare-fun b!2682867 () Bool)

(declare-fun e!1691720 () Bool)

(assert (=> b!2682867 (= e!1691719 e!1691720)))

(declare-fun res!1127582 () Bool)

(assert (=> b!2682867 (= res!1127582 (not ((_ is Leaf!14802) (c!432017 acc!348))))))

(assert (=> b!2682867 (=> res!1127582 e!1691720)))

(declare-fun b!2682868 () Bool)

(declare-fun inv!42010 (Conc!9692) Bool)

(assert (=> b!2682868 (= e!1691720 (inv!42010 (c!432017 acc!348)))))

(assert (= (and d!766782 c!432069) b!2682866))

(assert (= (and d!766782 (not c!432069)) b!2682867))

(assert (= (and b!2682867 (not res!1127582)) b!2682868))

(declare-fun m!3051847 () Bool)

(assert (=> b!2682866 m!3051847))

(declare-fun m!3051849 () Bool)

(assert (=> b!2682868 m!3051849))

(assert (=> b!2682650 d!766782))

(declare-fun d!766784 () Bool)

(declare-fun validCacheMapUp!319 (MutableMap!3400) Bool)

(assert (=> d!766784 (= (valid!2704 (_2!17818 lt!945421)) (validCacheMapUp!319 (cache!3543 (_2!17818 lt!945421))))))

(declare-fun bs!480212 () Bool)

(assert (= bs!480212 d!766784))

(declare-fun m!3051851 () Bool)

(assert (=> bs!480212 m!3051851))

(assert (=> b!2682670 d!766784))

(declare-fun d!766786 () Bool)

(declare-fun e!1691721 () Bool)

(assert (=> d!766786 e!1691721))

(declare-fun res!1127583 () Bool)

(assert (=> d!766786 (=> (not res!1127583) (not e!1691721))))

(assert (=> d!766786 (= res!1127583 (isBalanced!2931 (append!756 (c!432017 acc!348) (_1!17812 (v!32781 (_1!17818 lt!945421))))))))

(declare-fun lt!945645 () BalanceConc!18998)

(assert (=> d!766786 (= lt!945645 (BalanceConc!18999 (append!756 (c!432017 acc!348) (_1!17812 (v!32781 (_1!17818 lt!945421))))))))

(assert (=> d!766786 (= (append!755 acc!348 (_1!17812 (v!32781 (_1!17818 lt!945421)))) lt!945645)))

(declare-fun b!2682869 () Bool)

(assert (=> b!2682869 (= e!1691721 (= (list!11689 lt!945645) ($colon+!163 (list!11689 acc!348) (_1!17812 (v!32781 (_1!17818 lt!945421))))))))

(assert (= (and d!766786 res!1127583) b!2682869))

(declare-fun m!3051853 () Bool)

(assert (=> d!766786 m!3051853))

(assert (=> d!766786 m!3051853))

(declare-fun m!3051855 () Bool)

(assert (=> d!766786 m!3051855))

(declare-fun m!3051857 () Bool)

(assert (=> b!2682869 m!3051857))

(assert (=> b!2682869 m!3051407))

(assert (=> b!2682869 m!3051407))

(declare-fun m!3051859 () Bool)

(assert (=> b!2682869 m!3051859))

(assert (=> b!2682670 d!766786))

(declare-fun d!766788 () Bool)

(declare-fun e!1691722 () Bool)

(assert (=> d!766788 e!1691722))

(declare-fun res!1127586 () Bool)

(assert (=> d!766788 (=> (not res!1127586) (not e!1691722))))

(assert (=> d!766788 (= res!1127586 (appendAssocInst!653 (c!432016 treated!26) (c!432016 (charsOf!2980 (_1!17812 (v!32781 (_1!17818 lt!945421)))))))))

(declare-fun lt!945646 () BalanceConc!18996)

(assert (=> d!766788 (= lt!945646 (BalanceConc!18997 (++!7573 (c!432016 treated!26) (c!432016 (charsOf!2980 (_1!17812 (v!32781 (_1!17818 lt!945421))))))))))

(assert (=> d!766788 (= (++!7571 treated!26 (charsOf!2980 (_1!17812 (v!32781 (_1!17818 lt!945421))))) lt!945646)))

(declare-fun b!2682871 () Bool)

(declare-fun res!1127587 () Bool)

(assert (=> b!2682871 (=> (not res!1127587) (not e!1691722))))

(assert (=> b!2682871 (= res!1127587 (<= (height!1413 (++!7573 (c!432016 treated!26) (c!432016 (charsOf!2980 (_1!17812 (v!32781 (_1!17818 lt!945421))))))) (+ (max!0 (height!1413 (c!432016 treated!26)) (height!1413 (c!432016 (charsOf!2980 (_1!17812 (v!32781 (_1!17818 lt!945421))))))) 1)))))

(declare-fun b!2682870 () Bool)

(declare-fun res!1127584 () Bool)

(assert (=> b!2682870 (=> (not res!1127584) (not e!1691722))))

(assert (=> b!2682870 (= res!1127584 (isBalanced!2932 (++!7573 (c!432016 treated!26) (c!432016 (charsOf!2980 (_1!17812 (v!32781 (_1!17818 lt!945421))))))))))

(declare-fun b!2682872 () Bool)

(declare-fun res!1127585 () Bool)

(assert (=> b!2682872 (=> (not res!1127585) (not e!1691722))))

(assert (=> b!2682872 (= res!1127585 (>= (height!1413 (++!7573 (c!432016 treated!26) (c!432016 (charsOf!2980 (_1!17812 (v!32781 (_1!17818 lt!945421))))))) (max!0 (height!1413 (c!432016 treated!26)) (height!1413 (c!432016 (charsOf!2980 (_1!17812 (v!32781 (_1!17818 lt!945421)))))))))))

(declare-fun b!2682873 () Bool)

(assert (=> b!2682873 (= e!1691722 (= (list!11690 lt!945646) (++!7569 (list!11690 treated!26) (list!11690 (charsOf!2980 (_1!17812 (v!32781 (_1!17818 lt!945421))))))))))

(assert (= (and d!766788 res!1127586) b!2682870))

(assert (= (and b!2682870 res!1127584) b!2682871))

(assert (= (and b!2682871 res!1127587) b!2682872))

(assert (= (and b!2682872 res!1127585) b!2682873))

(declare-fun m!3051861 () Bool)

(assert (=> d!766788 m!3051861))

(declare-fun m!3051863 () Bool)

(assert (=> d!766788 m!3051863))

(declare-fun m!3051865 () Bool)

(assert (=> b!2682872 m!3051865))

(assert (=> b!2682872 m!3051819))

(assert (=> b!2682872 m!3051863))

(declare-fun m!3051867 () Bool)

(assert (=> b!2682872 m!3051867))

(assert (=> b!2682872 m!3051863))

(assert (=> b!2682872 m!3051819))

(assert (=> b!2682872 m!3051865))

(declare-fun m!3051869 () Bool)

(assert (=> b!2682872 m!3051869))

(declare-fun m!3051871 () Bool)

(assert (=> b!2682873 m!3051871))

(assert (=> b!2682873 m!3051429))

(assert (=> b!2682873 m!3051389))

(declare-fun m!3051873 () Bool)

(assert (=> b!2682873 m!3051873))

(assert (=> b!2682873 m!3051429))

(assert (=> b!2682873 m!3051873))

(declare-fun m!3051875 () Bool)

(assert (=> b!2682873 m!3051875))

(assert (=> b!2682871 m!3051865))

(assert (=> b!2682871 m!3051819))

(assert (=> b!2682871 m!3051863))

(assert (=> b!2682871 m!3051867))

(assert (=> b!2682871 m!3051863))

(assert (=> b!2682871 m!3051819))

(assert (=> b!2682871 m!3051865))

(assert (=> b!2682871 m!3051869))

(assert (=> b!2682870 m!3051863))

(assert (=> b!2682870 m!3051863))

(declare-fun m!3051877 () Bool)

(assert (=> b!2682870 m!3051877))

(assert (=> b!2682670 d!766788))

(declare-fun d!766790 () Bool)

(declare-fun lt!945647 () BalanceConc!18996)

(assert (=> d!766790 (= (list!11690 lt!945647) (originalCharacters!5495 (_1!17812 (v!32781 (_1!17818 lt!945421)))))))

(assert (=> d!766790 (= lt!945647 (dynLambda!13428 (toChars!6544 (transformation!4731 (rule!7141 (_1!17812 (v!32781 (_1!17818 lt!945421)))))) (value!152448 (_1!17812 (v!32781 (_1!17818 lt!945421))))))))

(assert (=> d!766790 (= (charsOf!2980 (_1!17812 (v!32781 (_1!17818 lt!945421)))) lt!945647)))

(declare-fun b_lambda!81895 () Bool)

(assert (=> (not b_lambda!81895) (not d!766790)))

(declare-fun t!224594 () Bool)

(declare-fun tb!150595 () Bool)

(assert (=> (and b!2682648 (= (toChars!6544 (transformation!4731 (h!36402 rules!1381))) (toChars!6544 (transformation!4731 (rule!7141 (_1!17812 (v!32781 (_1!17818 lt!945421))))))) t!224594) tb!150595))

(declare-fun b!2682874 () Bool)

(declare-fun e!1691723 () Bool)

(declare-fun tp!849004 () Bool)

(assert (=> b!2682874 (= e!1691723 (and (inv!42003 (c!432016 (dynLambda!13428 (toChars!6544 (transformation!4731 (rule!7141 (_1!17812 (v!32781 (_1!17818 lt!945421)))))) (value!152448 (_1!17812 (v!32781 (_1!17818 lt!945421))))))) tp!849004))))

(declare-fun result!185988 () Bool)

(assert (=> tb!150595 (= result!185988 (and (inv!42004 (dynLambda!13428 (toChars!6544 (transformation!4731 (rule!7141 (_1!17812 (v!32781 (_1!17818 lt!945421)))))) (value!152448 (_1!17812 (v!32781 (_1!17818 lt!945421)))))) e!1691723))))

(assert (= tb!150595 b!2682874))

(declare-fun m!3051879 () Bool)

(assert (=> b!2682874 m!3051879))

(declare-fun m!3051881 () Bool)

(assert (=> tb!150595 m!3051881))

(assert (=> d!766790 t!224594))

(declare-fun b_and!198689 () Bool)

(assert (= b_and!198687 (and (=> t!224594 result!185988) b_and!198689)))

(declare-fun m!3051883 () Bool)

(assert (=> d!766790 m!3051883))

(declare-fun m!3051885 () Bool)

(assert (=> d!766790 m!3051885))

(assert (=> b!2682670 d!766790))

(declare-fun d!766792 () Bool)

(assert (=> d!766792 (= (array_inv!3974 (_keys!3794 (v!32782 (underlying!7191 (v!32783 (underlying!7192 (cache!3543 cacheUp!486))))))) (bvsge (size!23926 (_keys!3794 (v!32782 (underlying!7191 (v!32783 (underlying!7192 (cache!3543 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2682651 d!766792))

(declare-fun d!766794 () Bool)

(assert (=> d!766794 (= (array_inv!3975 (_values!3775 (v!32782 (underlying!7191 (v!32783 (underlying!7192 (cache!3543 cacheUp!486))))))) (bvsge (size!23927 (_values!3775 (v!32782 (underlying!7191 (v!32783 (underlying!7192 (cache!3543 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2682651 d!766794))

(declare-fun d!766796 () Bool)

(declare-fun c!432072 () Bool)

(assert (=> d!766796 (= c!432072 ((_ is Node!9691) (c!432016 treated!26)))))

(declare-fun e!1691728 () Bool)

(assert (=> d!766796 (= (inv!42003 (c!432016 treated!26)) e!1691728)))

(declare-fun b!2682881 () Bool)

(declare-fun inv!42011 (Conc!9691) Bool)

(assert (=> b!2682881 (= e!1691728 (inv!42011 (c!432016 treated!26)))))

(declare-fun b!2682882 () Bool)

(declare-fun e!1691729 () Bool)

(assert (=> b!2682882 (= e!1691728 e!1691729)))

(declare-fun res!1127590 () Bool)

(assert (=> b!2682882 (= res!1127590 (not ((_ is Leaf!14801) (c!432016 treated!26))))))

(assert (=> b!2682882 (=> res!1127590 e!1691729)))

(declare-fun b!2682883 () Bool)

(declare-fun inv!42012 (Conc!9691) Bool)

(assert (=> b!2682883 (= e!1691729 (inv!42012 (c!432016 treated!26)))))

(assert (= (and d!766796 c!432072) b!2682881))

(assert (= (and d!766796 (not c!432072)) b!2682882))

(assert (= (and b!2682882 (not res!1127590)) b!2682883))

(declare-fun m!3051887 () Bool)

(assert (=> b!2682881 m!3051887))

(declare-fun m!3051889 () Bool)

(assert (=> b!2682883 m!3051889))

(assert (=> b!2682672 d!766796))

(declare-fun d!766798 () Bool)

(declare-fun c!432073 () Bool)

(assert (=> d!766798 (= c!432073 ((_ is Node!9691) (c!432016 input!780)))))

(declare-fun e!1691730 () Bool)

(assert (=> d!766798 (= (inv!42003 (c!432016 input!780)) e!1691730)))

(declare-fun b!2682884 () Bool)

(assert (=> b!2682884 (= e!1691730 (inv!42011 (c!432016 input!780)))))

(declare-fun b!2682885 () Bool)

(declare-fun e!1691731 () Bool)

(assert (=> b!2682885 (= e!1691730 e!1691731)))

(declare-fun res!1127591 () Bool)

(assert (=> b!2682885 (= res!1127591 (not ((_ is Leaf!14801) (c!432016 input!780))))))

(assert (=> b!2682885 (=> res!1127591 e!1691731)))

(declare-fun b!2682886 () Bool)

(assert (=> b!2682886 (= e!1691731 (inv!42012 (c!432016 input!780)))))

(assert (= (and d!766798 c!432073) b!2682884))

(assert (= (and d!766798 (not c!432073)) b!2682885))

(assert (= (and b!2682885 (not res!1127591)) b!2682886))

(declare-fun m!3051891 () Bool)

(assert (=> b!2682884 m!3051891))

(declare-fun m!3051893 () Bool)

(assert (=> b!2682886 m!3051893))

(assert (=> b!2682653 d!766798))

(declare-fun d!766800 () Bool)

(assert (=> d!766800 (= (isEmpty!17687 (list!11690 (_2!17811 lt!945429))) ((_ is Nil!30980) (list!11690 (_2!17811 lt!945429))))))

(assert (=> b!2682673 d!766800))

(declare-fun d!766802 () Bool)

(assert (=> d!766802 (= (list!11690 (_2!17811 lt!945429)) (list!11691 (c!432016 (_2!17811 lt!945429))))))

(declare-fun bs!480213 () Bool)

(assert (= bs!480213 d!766802))

(declare-fun m!3051895 () Bool)

(assert (=> bs!480213 m!3051895))

(assert (=> b!2682673 d!766802))

(declare-fun d!766804 () Bool)

(assert (=> d!766804 (= (list!11690 totalInput!354) (list!11691 (c!432016 totalInput!354)))))

(declare-fun bs!480214 () Bool)

(assert (= bs!480214 d!766804))

(declare-fun m!3051897 () Bool)

(assert (=> bs!480214 m!3051897))

(assert (=> b!2682674 d!766804))

(declare-fun e!1691732 () Bool)

(declare-fun lt!945648 () List!31080)

(declare-fun b!2682890 () Bool)

(assert (=> b!2682890 (= e!1691732 (or (not (= (list!11690 input!780) Nil!30980)) (= lt!945648 lt!945436)))))

(declare-fun b!2682887 () Bool)

(declare-fun e!1691733 () List!31080)

(assert (=> b!2682887 (= e!1691733 (list!11690 input!780))))

(declare-fun b!2682889 () Bool)

(declare-fun res!1127593 () Bool)

(assert (=> b!2682889 (=> (not res!1127593) (not e!1691732))))

(assert (=> b!2682889 (= res!1127593 (= (size!23932 lt!945648) (+ (size!23932 lt!945436) (size!23932 (list!11690 input!780)))))))

(declare-fun d!766806 () Bool)

(assert (=> d!766806 e!1691732))

(declare-fun res!1127592 () Bool)

(assert (=> d!766806 (=> (not res!1127592) (not e!1691732))))

(assert (=> d!766806 (= res!1127592 (= (content!4393 lt!945648) ((_ map or) (content!4393 lt!945436) (content!4393 (list!11690 input!780)))))))

(assert (=> d!766806 (= lt!945648 e!1691733)))

(declare-fun c!432074 () Bool)

(assert (=> d!766806 (= c!432074 ((_ is Nil!30980) lt!945436))))

(assert (=> d!766806 (= (++!7569 lt!945436 (list!11690 input!780)) lt!945648)))

(declare-fun b!2682888 () Bool)

(assert (=> b!2682888 (= e!1691733 (Cons!30980 (h!36400 lt!945436) (++!7569 (t!224585 lt!945436) (list!11690 input!780))))))

(assert (= (and d!766806 c!432074) b!2682887))

(assert (= (and d!766806 (not c!432074)) b!2682888))

(assert (= (and d!766806 res!1127592) b!2682889))

(assert (= (and b!2682889 res!1127593) b!2682890))

(declare-fun m!3051899 () Bool)

(assert (=> b!2682889 m!3051899))

(assert (=> b!2682889 m!3051661))

(assert (=> b!2682889 m!3051425))

(declare-fun m!3051901 () Bool)

(assert (=> b!2682889 m!3051901))

(declare-fun m!3051903 () Bool)

(assert (=> d!766806 m!3051903))

(assert (=> d!766806 m!3051667))

(assert (=> d!766806 m!3051425))

(declare-fun m!3051905 () Bool)

(assert (=> d!766806 m!3051905))

(assert (=> b!2682888 m!3051425))

(declare-fun m!3051907 () Bool)

(assert (=> b!2682888 m!3051907))

(assert (=> b!2682674 d!766806))

(declare-fun d!766808 () Bool)

(assert (=> d!766808 (= (list!11690 input!780) (list!11691 (c!432016 input!780)))))

(declare-fun bs!480215 () Bool)

(assert (= bs!480215 d!766808))

(declare-fun m!3051909 () Bool)

(assert (=> bs!480215 m!3051909))

(assert (=> b!2682674 d!766808))

(declare-fun d!766810 () Bool)

(assert (=> d!766810 (= (list!11690 treated!26) (list!11691 (c!432016 treated!26)))))

(declare-fun bs!480216 () Bool)

(assert (= bs!480216 d!766810))

(declare-fun m!3051911 () Bool)

(assert (=> bs!480216 m!3051911))

(assert (=> b!2682674 d!766810))

(declare-fun d!766812 () Bool)

(declare-fun res!1127596 () Bool)

(declare-fun e!1691736 () Bool)

(assert (=> d!766812 (=> (not res!1127596) (not e!1691736))))

(declare-fun rulesValid!1762 (LexerInterface!4327 List!31082) Bool)

(assert (=> d!766812 (= res!1127596 (rulesValid!1762 thiss!12257 rules!1381))))

(assert (=> d!766812 (= (rulesInvariant!3820 thiss!12257 rules!1381) e!1691736)))

(declare-fun b!2682893 () Bool)

(declare-datatypes ((List!31086 0))(
  ( (Nil!30986) (Cons!30986 (h!36406 String!34665) (t!224599 List!31086)) )
))
(declare-fun noDuplicateTag!1758 (LexerInterface!4327 List!31082 List!31086) Bool)

(assert (=> b!2682893 (= e!1691736 (noDuplicateTag!1758 thiss!12257 rules!1381 Nil!30986))))

(assert (= (and d!766812 res!1127596) b!2682893))

(declare-fun m!3051913 () Bool)

(assert (=> d!766812 m!3051913))

(declare-fun m!3051915 () Bool)

(assert (=> b!2682893 m!3051915))

(assert (=> b!2682665 d!766812))

(declare-fun d!766814 () Bool)

(assert (=> d!766814 (= (inv!42004 input!780) (isBalanced!2932 (c!432016 input!780)))))

(declare-fun bs!480217 () Bool)

(assert (= bs!480217 d!766814))

(declare-fun m!3051917 () Bool)

(assert (=> bs!480217 m!3051917))

(assert (=> start!261214 d!766814))

(declare-fun d!766816 () Bool)

(assert (=> d!766816 (= (inv!42004 treated!26) (isBalanced!2932 (c!432016 treated!26)))))

(declare-fun bs!480218 () Bool)

(assert (= bs!480218 d!766816))

(declare-fun m!3051919 () Bool)

(assert (=> bs!480218 m!3051919))

(assert (=> start!261214 d!766816))

(declare-fun d!766818 () Bool)

(declare-fun res!1127599 () Bool)

(declare-fun e!1691739 () Bool)

(assert (=> d!766818 (=> (not res!1127599) (not e!1691739))))

(assert (=> d!766818 (= res!1127599 ((_ is HashMap!3400) (cache!3543 cacheUp!486)))))

(assert (=> d!766818 (= (inv!42005 cacheUp!486) e!1691739)))

(declare-fun b!2682896 () Bool)

(assert (=> b!2682896 (= e!1691739 (validCacheMapUp!319 (cache!3543 cacheUp!486)))))

(assert (= (and d!766818 res!1127599) b!2682896))

(declare-fun m!3051921 () Bool)

(assert (=> b!2682896 m!3051921))

(assert (=> start!261214 d!766818))

(declare-fun d!766820 () Bool)

(declare-fun res!1127602 () Bool)

(declare-fun e!1691742 () Bool)

(assert (=> d!766820 (=> (not res!1127602) (not e!1691742))))

(assert (=> d!766820 (= res!1127602 ((_ is HashMap!3401) (cache!3544 cacheDown!499)))))

(assert (=> d!766820 (= (inv!42007 cacheDown!499) e!1691742)))

(declare-fun b!2682899 () Bool)

(declare-fun validCacheMapDown!350 (MutableMap!3401) Bool)

(assert (=> b!2682899 (= e!1691742 (validCacheMapDown!350 (cache!3544 cacheDown!499)))))

(assert (= (and d!766820 res!1127602) b!2682899))

(declare-fun m!3051923 () Bool)

(assert (=> b!2682899 m!3051923))

(assert (=> start!261214 d!766820))

(declare-fun d!766822 () Bool)

(assert (=> d!766822 (= (inv!42006 acc!348) (isBalanced!2931 (c!432017 acc!348)))))

(declare-fun bs!480219 () Bool)

(assert (= bs!480219 d!766822))

(declare-fun m!3051925 () Bool)

(assert (=> bs!480219 m!3051925))

(assert (=> start!261214 d!766822))

(declare-fun d!766824 () Bool)

(assert (=> d!766824 (= (inv!42004 totalInput!354) (isBalanced!2932 (c!432016 totalInput!354)))))

(declare-fun bs!480220 () Bool)

(assert (= bs!480220 d!766824))

(declare-fun m!3051927 () Bool)

(assert (=> bs!480220 m!3051927))

(assert (=> start!261214 d!766824))

(declare-fun b!2682910 () Bool)

(declare-fun res!1127609 () Bool)

(declare-fun e!1691750 () Bool)

(assert (=> b!2682910 (=> (not res!1127609) (not e!1691750))))

(declare-fun lt!945651 () tuple2!30478)

(assert (=> b!2682910 (= res!1127609 (= (list!11689 (_1!17811 lt!945651)) (_1!17817 (lexList!1185 thiss!12257 rules!1381 (list!11690 input!780)))))))

(declare-fun b!2682911 () Bool)

(declare-fun e!1691751 () Bool)

(declare-fun e!1691749 () Bool)

(assert (=> b!2682911 (= e!1691751 e!1691749)))

(declare-fun res!1127611 () Bool)

(assert (=> b!2682911 (= res!1127611 (< (size!23929 (_2!17811 lt!945651)) (size!23929 input!780)))))

(assert (=> b!2682911 (=> (not res!1127611) (not e!1691749))))

(declare-fun d!766826 () Bool)

(assert (=> d!766826 e!1691750))

(declare-fun res!1127610 () Bool)

(assert (=> d!766826 (=> (not res!1127610) (not e!1691750))))

(assert (=> d!766826 (= res!1127610 e!1691751)))

(declare-fun c!432077 () Bool)

(assert (=> d!766826 (= c!432077 (> (size!23930 (_1!17811 lt!945651)) 0))))

(assert (=> d!766826 (= lt!945651 (lexTailRecV2!861 thiss!12257 rules!1381 input!780 (BalanceConc!18997 Empty!9691) input!780 (BalanceConc!18999 Empty!9692)))))

(assert (=> d!766826 (= (lex!1949 thiss!12257 rules!1381 input!780) lt!945651)))

(declare-fun b!2682912 () Bool)

(assert (=> b!2682912 (= e!1691749 (not (isEmpty!17688 (_1!17811 lt!945651))))))

(declare-fun b!2682913 () Bool)

(assert (=> b!2682913 (= e!1691751 (= (_2!17811 lt!945651) input!780))))

(declare-fun b!2682914 () Bool)

(assert (=> b!2682914 (= e!1691750 (= (list!11690 (_2!17811 lt!945651)) (_2!17817 (lexList!1185 thiss!12257 rules!1381 (list!11690 input!780)))))))

(assert (= (and d!766826 c!432077) b!2682911))

(assert (= (and d!766826 (not c!432077)) b!2682913))

(assert (= (and b!2682911 res!1127611) b!2682912))

(assert (= (and d!766826 res!1127610) b!2682910))

(assert (= (and b!2682910 res!1127609) b!2682914))

(declare-fun m!3051929 () Bool)

(assert (=> b!2682911 m!3051929))

(declare-fun m!3051931 () Bool)

(assert (=> b!2682911 m!3051931))

(declare-fun m!3051933 () Bool)

(assert (=> b!2682912 m!3051933))

(declare-fun m!3051935 () Bool)

(assert (=> b!2682914 m!3051935))

(assert (=> b!2682914 m!3051425))

(assert (=> b!2682914 m!3051425))

(declare-fun m!3051937 () Bool)

(assert (=> b!2682914 m!3051937))

(declare-fun m!3051939 () Bool)

(assert (=> b!2682910 m!3051939))

(assert (=> b!2682910 m!3051425))

(assert (=> b!2682910 m!3051425))

(assert (=> b!2682910 m!3051937))

(declare-fun m!3051941 () Bool)

(assert (=> d!766826 m!3051941))

(assert (=> d!766826 m!3051437))

(assert (=> b!2682666 d!766826))

(declare-fun lt!945734 () tuple2!30478)

(declare-fun b!2682929 () Bool)

(declare-fun lt!945726 () Option!6119)

(assert (=> b!2682929 (= lt!945734 (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945726))))))

(declare-fun e!1691763 () tuple2!30478)

(assert (=> b!2682929 (= e!1691763 (tuple2!30479 (prepend!1061 (_1!17811 lt!945734) (_1!17812 (v!32781 lt!945726))) (_2!17811 lt!945734)))))

(declare-fun lt!945743 () tuple2!30478)

(declare-fun e!1691761 () Bool)

(declare-fun b!2682930 () Bool)

(assert (=> b!2682930 (= e!1691761 (= (list!11690 (_2!17811 lt!945743)) (list!11690 (_2!17811 (lexRec!590 thiss!12257 rules!1381 input!780)))))))

(declare-fun b!2682931 () Bool)

(declare-fun e!1691762 () tuple2!30478)

(declare-fun lt!945740 () BalanceConc!18996)

(declare-fun lt!945753 () Option!6119)

(assert (=> b!2682931 (= e!1691762 (lexTailRecV2!861 thiss!12257 rules!1381 input!780 lt!945740 (_2!17812 (v!32781 lt!945753)) (append!755 (BalanceConc!18999 Empty!9692) (_1!17812 (v!32781 lt!945753)))))))

(declare-fun lt!945738 () tuple2!30478)

(assert (=> b!2682931 (= lt!945738 (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945753))))))

(declare-fun lt!945729 () List!31080)

(assert (=> b!2682931 (= lt!945729 (list!11690 (BalanceConc!18997 Empty!9691)))))

(declare-fun lt!945722 () List!31080)

(assert (=> b!2682931 (= lt!945722 (list!11690 (charsOf!2980 (_1!17812 (v!32781 lt!945753)))))))

(declare-fun lt!945724 () List!31080)

(assert (=> b!2682931 (= lt!945724 (list!11690 (_2!17812 (v!32781 lt!945753))))))

(declare-fun lt!945733 () Unit!45105)

(assert (=> b!2682931 (= lt!945733 (lemmaConcatAssociativity!1534 lt!945729 lt!945722 lt!945724))))

(assert (=> b!2682931 (= (++!7569 (++!7569 lt!945729 lt!945722) lt!945724) (++!7569 lt!945729 (++!7569 lt!945722 lt!945724)))))

(declare-fun lt!945730 () Unit!45105)

(assert (=> b!2682931 (= lt!945730 lt!945733)))

(assert (=> b!2682931 (= lt!945726 (maxPrefixZipperSequence!993 thiss!12257 rules!1381 input!780))))

(declare-fun c!432086 () Bool)

(assert (=> b!2682931 (= c!432086 ((_ is Some!6118) lt!945726))))

(assert (=> b!2682931 (= (lexRec!590 thiss!12257 rules!1381 input!780) e!1691763)))

(declare-fun lt!945728 () Unit!45105)

(declare-fun Unit!45111 () Unit!45105)

(assert (=> b!2682931 (= lt!945728 Unit!45111)))

(declare-fun lt!945739 () List!31081)

(assert (=> b!2682931 (= lt!945739 (list!11689 (BalanceConc!18999 Empty!9692)))))

(declare-fun lt!945723 () List!31081)

(assert (=> b!2682931 (= lt!945723 (Cons!30981 (_1!17812 (v!32781 lt!945753)) Nil!30981))))

(declare-fun lt!945720 () List!31081)

(assert (=> b!2682931 (= lt!945720 (list!11689 (_1!17811 lt!945738)))))

(declare-fun lt!945747 () Unit!45105)

(assert (=> b!2682931 (= lt!945747 (lemmaConcatAssociativity!1535 lt!945739 lt!945723 lt!945720))))

(assert (=> b!2682931 (= (++!7570 (++!7570 lt!945739 lt!945723) lt!945720) (++!7570 lt!945739 (++!7570 lt!945723 lt!945720)))))

(declare-fun lt!945746 () Unit!45105)

(assert (=> b!2682931 (= lt!945746 lt!945747)))

(declare-fun lt!945736 () List!31080)

(assert (=> b!2682931 (= lt!945736 (++!7569 (list!11690 (BalanceConc!18997 Empty!9691)) (list!11690 (charsOf!2980 (_1!17812 (v!32781 lt!945753))))))))

(declare-fun lt!945752 () List!31080)

(assert (=> b!2682931 (= lt!945752 (list!11690 (_2!17812 (v!32781 lt!945753))))))

(declare-fun lt!945721 () List!31081)

(assert (=> b!2682931 (= lt!945721 (list!11689 (append!755 (BalanceConc!18999 Empty!9692) (_1!17812 (v!32781 lt!945753)))))))

(declare-fun lt!945732 () Unit!45105)

(assert (=> b!2682931 (= lt!945732 (lemmaLexThenLexPrefix!398 thiss!12257 rules!1381 lt!945736 lt!945752 lt!945721 (list!11689 (_1!17811 lt!945738)) (list!11690 (_2!17811 lt!945738))))))

(assert (=> b!2682931 (= (lexList!1185 thiss!12257 rules!1381 lt!945736) (tuple2!30489 lt!945721 Nil!30980))))

(declare-fun lt!945725 () Unit!45105)

(assert (=> b!2682931 (= lt!945725 lt!945732)))

(declare-fun lt!945745 () BalanceConc!18996)

(assert (=> b!2682931 (= lt!945745 (++!7571 (BalanceConc!18997 Empty!9691) (charsOf!2980 (_1!17812 (v!32781 lt!945753)))))))

(declare-fun lt!945750 () Option!6119)

(assert (=> b!2682931 (= lt!945750 (maxPrefixZipperSequence!993 thiss!12257 rules!1381 lt!945745))))

(declare-fun c!432084 () Bool)

(assert (=> b!2682931 (= c!432084 ((_ is Some!6118) lt!945750))))

(declare-fun e!1691760 () tuple2!30478)

(assert (=> b!2682931 (= (lexRec!590 thiss!12257 rules!1381 (++!7571 (BalanceConc!18997 Empty!9691) (charsOf!2980 (_1!17812 (v!32781 lt!945753))))) e!1691760)))

(declare-fun lt!945737 () Unit!45105)

(declare-fun Unit!45112 () Unit!45105)

(assert (=> b!2682931 (= lt!945737 Unit!45112)))

(assert (=> b!2682931 (= lt!945740 (++!7571 (BalanceConc!18997 Empty!9691) (charsOf!2980 (_1!17812 (v!32781 lt!945753)))))))

(declare-fun lt!945741 () List!31080)

(assert (=> b!2682931 (= lt!945741 (list!11690 lt!945740))))

(declare-fun lt!945748 () List!31080)

(assert (=> b!2682931 (= lt!945748 (list!11690 (_2!17812 (v!32781 lt!945753))))))

(declare-fun lt!945735 () Unit!45105)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!509 (List!31080 List!31080) Unit!45105)

(assert (=> b!2682931 (= lt!945735 (lemmaConcatTwoListThenFSndIsSuffix!509 lt!945741 lt!945748))))

(declare-fun isSuffix!824 (List!31080 List!31080) Bool)

(assert (=> b!2682931 (isSuffix!824 lt!945748 (++!7569 lt!945741 lt!945748))))

(declare-fun lt!945751 () Unit!45105)

(assert (=> b!2682931 (= lt!945751 lt!945735)))

(declare-fun b!2682932 () Bool)

(assert (=> b!2682932 (= e!1691760 (tuple2!30479 (BalanceConc!18999 Empty!9692) lt!945745))))

(declare-fun b!2682933 () Bool)

(assert (=> b!2682933 (= e!1691763 (tuple2!30479 (BalanceConc!18999 Empty!9692) input!780))))

(declare-fun lt!945742 () tuple2!30478)

(declare-fun b!2682935 () Bool)

(assert (=> b!2682935 (= lt!945742 (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945750))))))

(assert (=> b!2682935 (= e!1691760 (tuple2!30479 (prepend!1061 (_1!17811 lt!945742) (_1!17812 (v!32781 lt!945750))) (_2!17811 lt!945742)))))

(declare-fun d!766828 () Bool)

(assert (=> d!766828 e!1691761))

(declare-fun res!1127614 () Bool)

(assert (=> d!766828 (=> (not res!1127614) (not e!1691761))))

(assert (=> d!766828 (= res!1127614 (= (list!11689 (_1!17811 lt!945743)) (list!11689 (_1!17811 (lexRec!590 thiss!12257 rules!1381 input!780)))))))

(assert (=> d!766828 (= lt!945743 e!1691762)))

(declare-fun c!432085 () Bool)

(assert (=> d!766828 (= c!432085 ((_ is Some!6118) lt!945753))))

(declare-fun maxPrefixZipperSequenceV2!449 (LexerInterface!4327 List!31082 BalanceConc!18996 BalanceConc!18996) Option!6119)

(assert (=> d!766828 (= lt!945753 (maxPrefixZipperSequenceV2!449 thiss!12257 rules!1381 input!780 input!780))))

(declare-fun lt!945731 () Unit!45105)

(declare-fun lt!945749 () Unit!45105)

(assert (=> d!766828 (= lt!945731 lt!945749)))

(declare-fun lt!945727 () List!31080)

(declare-fun lt!945744 () List!31080)

(assert (=> d!766828 (isSuffix!824 lt!945727 (++!7569 lt!945744 lt!945727))))

(assert (=> d!766828 (= lt!945749 (lemmaConcatTwoListThenFSndIsSuffix!509 lt!945744 lt!945727))))

(assert (=> d!766828 (= lt!945727 (list!11690 input!780))))

(assert (=> d!766828 (= lt!945744 (list!11690 (BalanceConc!18997 Empty!9691)))))

(assert (=> d!766828 (= (lexTailRecV2!861 thiss!12257 rules!1381 input!780 (BalanceConc!18997 Empty!9691) input!780 (BalanceConc!18999 Empty!9692)) lt!945743)))

(declare-fun b!2682934 () Bool)

(assert (=> b!2682934 (= e!1691762 (tuple2!30479 (BalanceConc!18999 Empty!9692) input!780))))

(assert (= (and d!766828 c!432085) b!2682931))

(assert (= (and d!766828 (not c!432085)) b!2682934))

(assert (= (and b!2682931 c!432086) b!2682929))

(assert (= (and b!2682931 (not c!432086)) b!2682933))

(assert (= (and b!2682931 c!432084) b!2682935))

(assert (= (and b!2682931 (not c!432084)) b!2682932))

(assert (= (and d!766828 res!1127614) b!2682930))

(declare-fun m!3051943 () Bool)

(assert (=> b!2682930 m!3051943))

(assert (=> b!2682930 m!3051445))

(declare-fun m!3051945 () Bool)

(assert (=> b!2682930 m!3051945))

(declare-fun m!3051947 () Bool)

(assert (=> b!2682931 m!3051947))

(assert (=> b!2682931 m!3051947))

(declare-fun m!3051949 () Bool)

(assert (=> b!2682931 m!3051949))

(declare-fun m!3051951 () Bool)

(assert (=> b!2682931 m!3051951))

(declare-fun m!3051953 () Bool)

(assert (=> b!2682931 m!3051953))

(declare-fun m!3051955 () Bool)

(assert (=> b!2682931 m!3051955))

(declare-fun m!3051957 () Bool)

(assert (=> b!2682931 m!3051957))

(assert (=> b!2682931 m!3051951))

(declare-fun m!3051959 () Bool)

(assert (=> b!2682931 m!3051959))

(declare-fun m!3051961 () Bool)

(assert (=> b!2682931 m!3051961))

(declare-fun m!3051963 () Bool)

(assert (=> b!2682931 m!3051963))

(assert (=> b!2682931 m!3051445))

(declare-fun m!3051965 () Bool)

(assert (=> b!2682931 m!3051965))

(declare-fun m!3051967 () Bool)

(assert (=> b!2682931 m!3051967))

(declare-fun m!3051969 () Bool)

(assert (=> b!2682931 m!3051969))

(assert (=> b!2682931 m!3051961))

(declare-fun m!3051971 () Bool)

(assert (=> b!2682931 m!3051971))

(assert (=> b!2682931 m!3051957))

(declare-fun m!3051973 () Bool)

(assert (=> b!2682931 m!3051973))

(declare-fun m!3051975 () Bool)

(assert (=> b!2682931 m!3051975))

(declare-fun m!3051977 () Bool)

(assert (=> b!2682931 m!3051977))

(declare-fun m!3051979 () Bool)

(assert (=> b!2682931 m!3051979))

(assert (=> b!2682931 m!3051977))

(declare-fun m!3051981 () Bool)

(assert (=> b!2682931 m!3051981))

(declare-fun m!3051983 () Bool)

(assert (=> b!2682931 m!3051983))

(declare-fun m!3051985 () Bool)

(assert (=> b!2682931 m!3051985))

(assert (=> b!2682931 m!3051981))

(assert (=> b!2682931 m!3051971))

(declare-fun m!3051987 () Bool)

(assert (=> b!2682931 m!3051987))

(declare-fun m!3051989 () Bool)

(assert (=> b!2682931 m!3051989))

(assert (=> b!2682931 m!3051967))

(declare-fun m!3051991 () Bool)

(assert (=> b!2682931 m!3051991))

(declare-fun m!3051993 () Bool)

(assert (=> b!2682931 m!3051993))

(assert (=> b!2682931 m!3051397))

(assert (=> b!2682931 m!3051983))

(declare-fun m!3051995 () Bool)

(assert (=> b!2682931 m!3051995))

(assert (=> b!2682931 m!3051965))

(assert (=> b!2682931 m!3051973))

(declare-fun m!3051997 () Bool)

(assert (=> b!2682931 m!3051997))

(assert (=> b!2682931 m!3051947))

(declare-fun m!3051999 () Bool)

(assert (=> b!2682931 m!3051999))

(assert (=> b!2682931 m!3051965))

(declare-fun m!3052001 () Bool)

(assert (=> b!2682931 m!3052001))

(declare-fun m!3052003 () Bool)

(assert (=> b!2682931 m!3052003))

(assert (=> b!2682931 m!3051955))

(declare-fun m!3052005 () Bool)

(assert (=> b!2682931 m!3052005))

(declare-fun m!3052007 () Bool)

(assert (=> b!2682931 m!3052007))

(declare-fun m!3052009 () Bool)

(assert (=> d!766828 m!3052009))

(declare-fun m!3052011 () Bool)

(assert (=> d!766828 m!3052011))

(declare-fun m!3052013 () Bool)

(assert (=> d!766828 m!3052013))

(assert (=> d!766828 m!3051445))

(assert (=> d!766828 m!3051957))

(assert (=> d!766828 m!3051425))

(declare-fun m!3052015 () Bool)

(assert (=> d!766828 m!3052015))

(assert (=> d!766828 m!3052009))

(declare-fun m!3052017 () Bool)

(assert (=> d!766828 m!3052017))

(declare-fun m!3052019 () Bool)

(assert (=> d!766828 m!3052019))

(declare-fun m!3052021 () Bool)

(assert (=> b!2682935 m!3052021))

(declare-fun m!3052023 () Bool)

(assert (=> b!2682935 m!3052023))

(declare-fun m!3052025 () Bool)

(assert (=> b!2682929 m!3052025))

(declare-fun m!3052027 () Bool)

(assert (=> b!2682929 m!3052027))

(assert (=> b!2682666 d!766828))

(declare-fun d!766830 () Bool)

(assert (=> d!766830 (= (valid!2704 cacheUp!486) (validCacheMapUp!319 (cache!3543 cacheUp!486)))))

(declare-fun bs!480221 () Bool)

(assert (= bs!480221 d!766830))

(assert (=> bs!480221 m!3051921))

(assert (=> b!2682667 d!766830))

(declare-fun b!2682936 () Bool)

(declare-fun e!1691764 () Bool)

(declare-fun e!1691767 () Bool)

(assert (=> b!2682936 (= e!1691764 e!1691767)))

(declare-fun res!1127616 () Bool)

(declare-fun lt!945754 () tuple2!30478)

(assert (=> b!2682936 (= res!1127616 (< (size!23929 (_2!17811 lt!945754)) (size!23929 (_2!17812 (v!32781 lt!945425)))))))

(assert (=> b!2682936 (=> (not res!1127616) (not e!1691767))))

(declare-fun b!2682937 () Bool)

(declare-fun e!1691766 () tuple2!30478)

(assert (=> b!2682937 (= e!1691766 (tuple2!30479 (BalanceConc!18999 Empty!9692) (_2!17812 (v!32781 lt!945425))))))

(declare-fun b!2682938 () Bool)

(assert (=> b!2682938 (= e!1691764 (= (list!11690 (_2!17811 lt!945754)) (list!11690 (_2!17812 (v!32781 lt!945425)))))))

(declare-fun b!2682939 () Bool)

(declare-fun e!1691765 () Bool)

(assert (=> b!2682939 (= e!1691765 (= (list!11690 (_2!17811 lt!945754)) (_2!17817 (lexList!1185 thiss!12257 rules!1381 (list!11690 (_2!17812 (v!32781 lt!945425)))))))))

(declare-fun b!2682940 () Bool)

(declare-fun res!1127615 () Bool)

(assert (=> b!2682940 (=> (not res!1127615) (not e!1691765))))

(assert (=> b!2682940 (= res!1127615 (= (list!11689 (_1!17811 lt!945754)) (_1!17817 (lexList!1185 thiss!12257 rules!1381 (list!11690 (_2!17812 (v!32781 lt!945425)))))))))

(declare-fun d!766832 () Bool)

(assert (=> d!766832 e!1691765))

(declare-fun res!1127617 () Bool)

(assert (=> d!766832 (=> (not res!1127617) (not e!1691765))))

(assert (=> d!766832 (= res!1127617 e!1691764)))

(declare-fun c!432088 () Bool)

(assert (=> d!766832 (= c!432088 (> (size!23930 (_1!17811 lt!945754)) 0))))

(assert (=> d!766832 (= lt!945754 e!1691766)))

(declare-fun c!432087 () Bool)

(declare-fun lt!945755 () Option!6119)

(assert (=> d!766832 (= c!432087 ((_ is Some!6118) lt!945755))))

(assert (=> d!766832 (= lt!945755 (maxPrefixZipperSequence!993 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945425))))))

(assert (=> d!766832 (= (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945425))) lt!945754)))

(declare-fun b!2682941 () Bool)

(assert (=> b!2682941 (= e!1691767 (not (isEmpty!17688 (_1!17811 lt!945754))))))

(declare-fun b!2682942 () Bool)

(declare-fun lt!945756 () tuple2!30478)

(assert (=> b!2682942 (= e!1691766 (tuple2!30479 (prepend!1061 (_1!17811 lt!945756) (_1!17812 (v!32781 lt!945755))) (_2!17811 lt!945756)))))

(assert (=> b!2682942 (= lt!945756 (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945755))))))

(assert (= (and d!766832 c!432087) b!2682942))

(assert (= (and d!766832 (not c!432087)) b!2682937))

(assert (= (and d!766832 c!432088) b!2682936))

(assert (= (and d!766832 (not c!432088)) b!2682938))

(assert (= (and b!2682936 res!1127616) b!2682941))

(assert (= (and d!766832 res!1127617) b!2682940))

(assert (= (and b!2682940 res!1127615) b!2682939))

(declare-fun m!3052029 () Bool)

(assert (=> b!2682941 m!3052029))

(declare-fun m!3052031 () Bool)

(assert (=> b!2682938 m!3052031))

(declare-fun m!3052033 () Bool)

(assert (=> b!2682938 m!3052033))

(declare-fun m!3052035 () Bool)

(assert (=> d!766832 m!3052035))

(declare-fun m!3052037 () Bool)

(assert (=> d!766832 m!3052037))

(declare-fun m!3052039 () Bool)

(assert (=> b!2682940 m!3052039))

(assert (=> b!2682940 m!3052033))

(assert (=> b!2682940 m!3052033))

(declare-fun m!3052041 () Bool)

(assert (=> b!2682940 m!3052041))

(declare-fun m!3052043 () Bool)

(assert (=> b!2682942 m!3052043))

(declare-fun m!3052045 () Bool)

(assert (=> b!2682942 m!3052045))

(assert (=> b!2682939 m!3052031))

(assert (=> b!2682939 m!3052033))

(assert (=> b!2682939 m!3052033))

(assert (=> b!2682939 m!3052041))

(declare-fun m!3052047 () Bool)

(assert (=> b!2682936 m!3052047))

(declare-fun m!3052049 () Bool)

(assert (=> b!2682936 m!3052049))

(assert (=> b!2682668 d!766832))

(declare-fun d!766834 () Bool)

(declare-fun e!1691770 () Bool)

(assert (=> d!766834 e!1691770))

(declare-fun res!1127620 () Bool)

(assert (=> d!766834 (=> (not res!1127620) (not e!1691770))))

(declare-fun prepend!1062 (Conc!9692 Token!8928) Conc!9692)

(assert (=> d!766834 (= res!1127620 (isBalanced!2931 (prepend!1062 (c!432017 (_1!17811 lt!945435)) (_1!17812 (v!32781 lt!945425)))))))

(declare-fun lt!945759 () BalanceConc!18998)

(assert (=> d!766834 (= lt!945759 (BalanceConc!18999 (prepend!1062 (c!432017 (_1!17811 lt!945435)) (_1!17812 (v!32781 lt!945425)))))))

(assert (=> d!766834 (= (prepend!1061 (_1!17811 lt!945435) (_1!17812 (v!32781 lt!945425))) lt!945759)))

(declare-fun b!2682945 () Bool)

(assert (=> b!2682945 (= e!1691770 (= (list!11689 lt!945759) (Cons!30981 (_1!17812 (v!32781 lt!945425)) (list!11689 (_1!17811 lt!945435)))))))

(assert (= (and d!766834 res!1127620) b!2682945))

(declare-fun m!3052051 () Bool)

(assert (=> d!766834 m!3052051))

(assert (=> d!766834 m!3052051))

(declare-fun m!3052053 () Bool)

(assert (=> d!766834 m!3052053))

(declare-fun m!3052055 () Bool)

(assert (=> b!2682945 m!3052055))

(declare-fun m!3052057 () Bool)

(assert (=> b!2682945 m!3052057))

(assert (=> b!2682668 d!766834))

(declare-fun d!766836 () Bool)

(assert (=> d!766836 (= (isEmpty!17686 rules!1381) ((_ is Nil!30982) rules!1381))))

(assert (=> b!2682649 d!766836))

(declare-fun d!766838 () Bool)

(declare-fun e!1691771 () Bool)

(assert (=> d!766838 e!1691771))

(declare-fun res!1127621 () Bool)

(assert (=> d!766838 (=> (not res!1127621) (not e!1691771))))

(assert (=> d!766838 (= res!1127621 (isBalanced!2931 (prepend!1062 (c!432017 (_1!17811 lt!945417)) (_1!17812 (v!32781 lt!945426)))))))

(declare-fun lt!945760 () BalanceConc!18998)

(assert (=> d!766838 (= lt!945760 (BalanceConc!18999 (prepend!1062 (c!432017 (_1!17811 lt!945417)) (_1!17812 (v!32781 lt!945426)))))))

(assert (=> d!766838 (= (prepend!1061 (_1!17811 lt!945417) (_1!17812 (v!32781 lt!945426))) lt!945760)))

(declare-fun b!2682946 () Bool)

(assert (=> b!2682946 (= e!1691771 (= (list!11689 lt!945760) (Cons!30981 (_1!17812 (v!32781 lt!945426)) (list!11689 (_1!17811 lt!945417)))))))

(assert (= (and d!766838 res!1127621) b!2682946))

(declare-fun m!3052059 () Bool)

(assert (=> d!766838 m!3052059))

(assert (=> d!766838 m!3052059))

(declare-fun m!3052061 () Bool)

(assert (=> d!766838 m!3052061))

(declare-fun m!3052063 () Bool)

(assert (=> b!2682946 m!3052063))

(assert (=> b!2682946 m!3051339))

(assert (=> b!2682639 d!766838))

(declare-fun d!766840 () Bool)

(assert (=> d!766840 (= (inv!41995 (tag!5235 (h!36402 rules!1381))) (= (mod (str.len (value!152447 (tag!5235 (h!36402 rules!1381)))) 2) 0))))

(assert (=> b!2682640 d!766840))

(declare-fun d!766842 () Bool)

(declare-fun res!1127624 () Bool)

(declare-fun e!1691774 () Bool)

(assert (=> d!766842 (=> (not res!1127624) (not e!1691774))))

(declare-fun semiInverseModEq!1956 (Int Int) Bool)

(assert (=> d!766842 (= res!1127624 (semiInverseModEq!1956 (toChars!6544 (transformation!4731 (h!36402 rules!1381))) (toValue!6685 (transformation!4731 (h!36402 rules!1381)))))))

(assert (=> d!766842 (= (inv!42002 (transformation!4731 (h!36402 rules!1381))) e!1691774)))

(declare-fun b!2682949 () Bool)

(declare-fun equivClasses!1857 (Int Int) Bool)

(assert (=> b!2682949 (= e!1691774 (equivClasses!1857 (toChars!6544 (transformation!4731 (h!36402 rules!1381))) (toValue!6685 (transformation!4731 (h!36402 rules!1381)))))))

(assert (= (and d!766842 res!1127624) b!2682949))

(declare-fun m!3052065 () Bool)

(assert (=> d!766842 m!3052065))

(declare-fun m!3052067 () Bool)

(assert (=> b!2682949 m!3052067))

(assert (=> b!2682640 d!766842))

(declare-fun b!2682950 () Bool)

(declare-fun e!1691775 () Bool)

(declare-fun e!1691778 () Bool)

(assert (=> b!2682950 (= e!1691775 e!1691778)))

(declare-fun res!1127626 () Bool)

(declare-fun lt!945761 () tuple2!30478)

(assert (=> b!2682950 (= res!1127626 (< (size!23929 (_2!17811 lt!945761)) (size!23929 input!780)))))

(assert (=> b!2682950 (=> (not res!1127626) (not e!1691778))))

(declare-fun b!2682951 () Bool)

(declare-fun e!1691777 () tuple2!30478)

(assert (=> b!2682951 (= e!1691777 (tuple2!30479 (BalanceConc!18999 Empty!9692) input!780))))

(declare-fun b!2682952 () Bool)

(assert (=> b!2682952 (= e!1691775 (= (list!11690 (_2!17811 lt!945761)) (list!11690 input!780)))))

(declare-fun b!2682953 () Bool)

(declare-fun e!1691776 () Bool)

(assert (=> b!2682953 (= e!1691776 (= (list!11690 (_2!17811 lt!945761)) (_2!17817 (lexList!1185 thiss!12257 rules!1381 (list!11690 input!780)))))))

(declare-fun b!2682954 () Bool)

(declare-fun res!1127625 () Bool)

(assert (=> b!2682954 (=> (not res!1127625) (not e!1691776))))

(assert (=> b!2682954 (= res!1127625 (= (list!11689 (_1!17811 lt!945761)) (_1!17817 (lexList!1185 thiss!12257 rules!1381 (list!11690 input!780)))))))

(declare-fun d!766844 () Bool)

(assert (=> d!766844 e!1691776))

(declare-fun res!1127627 () Bool)

(assert (=> d!766844 (=> (not res!1127627) (not e!1691776))))

(assert (=> d!766844 (= res!1127627 e!1691775)))

(declare-fun c!432091 () Bool)

(assert (=> d!766844 (= c!432091 (> (size!23930 (_1!17811 lt!945761)) 0))))

(assert (=> d!766844 (= lt!945761 e!1691777)))

(declare-fun c!432090 () Bool)

(declare-fun lt!945762 () Option!6119)

(assert (=> d!766844 (= c!432090 ((_ is Some!6118) lt!945762))))

(assert (=> d!766844 (= lt!945762 (maxPrefixZipperSequence!993 thiss!12257 rules!1381 input!780))))

(assert (=> d!766844 (= (lexRec!590 thiss!12257 rules!1381 input!780) lt!945761)))

(declare-fun b!2682955 () Bool)

(assert (=> b!2682955 (= e!1691778 (not (isEmpty!17688 (_1!17811 lt!945761))))))

(declare-fun b!2682956 () Bool)

(declare-fun lt!945763 () tuple2!30478)

(assert (=> b!2682956 (= e!1691777 (tuple2!30479 (prepend!1061 (_1!17811 lt!945763) (_1!17812 (v!32781 lt!945762))) (_2!17811 lt!945763)))))

(assert (=> b!2682956 (= lt!945763 (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945762))))))

(assert (= (and d!766844 c!432090) b!2682956))

(assert (= (and d!766844 (not c!432090)) b!2682951))

(assert (= (and d!766844 c!432091) b!2682950))

(assert (= (and d!766844 (not c!432091)) b!2682952))

(assert (= (and b!2682950 res!1127626) b!2682955))

(assert (= (and d!766844 res!1127627) b!2682954))

(assert (= (and b!2682954 res!1127625) b!2682953))

(declare-fun m!3052069 () Bool)

(assert (=> b!2682955 m!3052069))

(declare-fun m!3052071 () Bool)

(assert (=> b!2682952 m!3052071))

(assert (=> b!2682952 m!3051425))

(declare-fun m!3052073 () Bool)

(assert (=> d!766844 m!3052073))

(assert (=> d!766844 m!3051397))

(declare-fun m!3052075 () Bool)

(assert (=> b!2682954 m!3052075))

(assert (=> b!2682954 m!3051425))

(assert (=> b!2682954 m!3051425))

(assert (=> b!2682954 m!3051937))

(declare-fun m!3052077 () Bool)

(assert (=> b!2682956 m!3052077))

(declare-fun m!3052079 () Bool)

(assert (=> b!2682956 m!3052079))

(assert (=> b!2682953 m!3052071))

(assert (=> b!2682953 m!3051425))

(assert (=> b!2682953 m!3051425))

(assert (=> b!2682953 m!3051937))

(declare-fun m!3052081 () Bool)

(assert (=> b!2682950 m!3052081))

(assert (=> b!2682950 m!3051931))

(assert (=> b!2682660 d!766844))

(declare-fun b!2682957 () Bool)

(declare-fun e!1691779 () Bool)

(declare-fun e!1691782 () Bool)

(assert (=> b!2682957 (= e!1691779 e!1691782)))

(declare-fun res!1127629 () Bool)

(declare-fun lt!945764 () tuple2!30478)

(assert (=> b!2682957 (= res!1127629 (< (size!23929 (_2!17811 lt!945764)) (size!23929 totalInput!354)))))

(assert (=> b!2682957 (=> (not res!1127629) (not e!1691782))))

(declare-fun b!2682958 () Bool)

(declare-fun e!1691781 () tuple2!30478)

(assert (=> b!2682958 (= e!1691781 (tuple2!30479 (BalanceConc!18999 Empty!9692) totalInput!354))))

(declare-fun b!2682959 () Bool)

(assert (=> b!2682959 (= e!1691779 (= (list!11690 (_2!17811 lt!945764)) (list!11690 totalInput!354)))))

(declare-fun b!2682960 () Bool)

(declare-fun e!1691780 () Bool)

(assert (=> b!2682960 (= e!1691780 (= (list!11690 (_2!17811 lt!945764)) (_2!17817 (lexList!1185 thiss!12257 rules!1381 (list!11690 totalInput!354)))))))

(declare-fun b!2682961 () Bool)

(declare-fun res!1127628 () Bool)

(assert (=> b!2682961 (=> (not res!1127628) (not e!1691780))))

(assert (=> b!2682961 (= res!1127628 (= (list!11689 (_1!17811 lt!945764)) (_1!17817 (lexList!1185 thiss!12257 rules!1381 (list!11690 totalInput!354)))))))

(declare-fun d!766846 () Bool)

(assert (=> d!766846 e!1691780))

(declare-fun res!1127630 () Bool)

(assert (=> d!766846 (=> (not res!1127630) (not e!1691780))))

(assert (=> d!766846 (= res!1127630 e!1691779)))

(declare-fun c!432093 () Bool)

(assert (=> d!766846 (= c!432093 (> (size!23930 (_1!17811 lt!945764)) 0))))

(assert (=> d!766846 (= lt!945764 e!1691781)))

(declare-fun c!432092 () Bool)

(declare-fun lt!945765 () Option!6119)

(assert (=> d!766846 (= c!432092 ((_ is Some!6118) lt!945765))))

(assert (=> d!766846 (= lt!945765 (maxPrefixZipperSequence!993 thiss!12257 rules!1381 totalInput!354))))

(assert (=> d!766846 (= (lexRec!590 thiss!12257 rules!1381 totalInput!354) lt!945764)))

(declare-fun b!2682962 () Bool)

(assert (=> b!2682962 (= e!1691782 (not (isEmpty!17688 (_1!17811 lt!945764))))))

(declare-fun b!2682963 () Bool)

(declare-fun lt!945766 () tuple2!30478)

(assert (=> b!2682963 (= e!1691781 (tuple2!30479 (prepend!1061 (_1!17811 lt!945766) (_1!17812 (v!32781 lt!945765))) (_2!17811 lt!945766)))))

(assert (=> b!2682963 (= lt!945766 (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945765))))))

(assert (= (and d!766846 c!432092) b!2682963))

(assert (= (and d!766846 (not c!432092)) b!2682958))

(assert (= (and d!766846 c!432093) b!2682957))

(assert (= (and d!766846 (not c!432093)) b!2682959))

(assert (= (and b!2682957 res!1127629) b!2682962))

(assert (= (and d!766846 res!1127630) b!2682961))

(assert (= (and b!2682961 res!1127628) b!2682960))

(declare-fun m!3052083 () Bool)

(assert (=> b!2682962 m!3052083))

(declare-fun m!3052085 () Bool)

(assert (=> b!2682959 m!3052085))

(assert (=> b!2682959 m!3051423))

(declare-fun m!3052087 () Bool)

(assert (=> d!766846 m!3052087))

(declare-fun m!3052089 () Bool)

(assert (=> d!766846 m!3052089))

(declare-fun m!3052091 () Bool)

(assert (=> b!2682961 m!3052091))

(assert (=> b!2682961 m!3051423))

(assert (=> b!2682961 m!3051423))

(declare-fun m!3052093 () Bool)

(assert (=> b!2682961 m!3052093))

(declare-fun m!3052095 () Bool)

(assert (=> b!2682963 m!3052095))

(declare-fun m!3052097 () Bool)

(assert (=> b!2682963 m!3052097))

(assert (=> b!2682960 m!3052085))

(assert (=> b!2682960 m!3051423))

(assert (=> b!2682960 m!3051423))

(assert (=> b!2682960 m!3052093))

(declare-fun m!3052099 () Bool)

(assert (=> b!2682957 m!3052099))

(declare-fun m!3052101 () Bool)

(assert (=> b!2682957 m!3052101))

(assert (=> b!2682660 d!766846))

(declare-fun d!766848 () Bool)

(assert (=> d!766848 (= (list!11689 (_1!17811 lt!945418)) (list!11692 (c!432017 (_1!17811 lt!945418))))))

(declare-fun bs!480222 () Bool)

(assert (= bs!480222 d!766848))

(declare-fun m!3052103 () Bool)

(assert (=> bs!480222 m!3052103))

(assert (=> b!2682660 d!766848))

(declare-fun d!766850 () Bool)

(assert (=> d!766850 (= (list!11689 (++!7572 acc!348 (_1!17811 lt!945440))) (list!11692 (c!432017 (++!7572 acc!348 (_1!17811 lt!945440)))))))

(declare-fun bs!480223 () Bool)

(assert (= bs!480223 d!766850))

(declare-fun m!3052105 () Bool)

(assert (=> bs!480223 m!3052105))

(assert (=> b!2682660 d!766850))

(declare-fun d!766852 () Bool)

(declare-fun e!1691785 () Bool)

(assert (=> d!766852 e!1691785))

(declare-fun res!1127641 () Bool)

(assert (=> d!766852 (=> (not res!1127641) (not e!1691785))))

(declare-fun appendAssocInst!654 (Conc!9692 Conc!9692) Bool)

(assert (=> d!766852 (= res!1127641 (appendAssocInst!654 (c!432017 acc!348) (c!432017 (_1!17811 lt!945440))))))

(declare-fun lt!945769 () BalanceConc!18998)

(declare-fun ++!7574 (Conc!9692 Conc!9692) Conc!9692)

(assert (=> d!766852 (= lt!945769 (BalanceConc!18999 (++!7574 (c!432017 acc!348) (c!432017 (_1!17811 lt!945440)))))))

(assert (=> d!766852 (= (++!7572 acc!348 (_1!17811 lt!945440)) lt!945769)))

(declare-fun b!2682973 () Bool)

(declare-fun res!1127639 () Bool)

(assert (=> b!2682973 (=> (not res!1127639) (not e!1691785))))

(declare-fun height!1414 (Conc!9692) Int)

(assert (=> b!2682973 (= res!1127639 (<= (height!1414 (++!7574 (c!432017 acc!348) (c!432017 (_1!17811 lt!945440)))) (+ (max!0 (height!1414 (c!432017 acc!348)) (height!1414 (c!432017 (_1!17811 lt!945440)))) 1)))))

(declare-fun b!2682972 () Bool)

(declare-fun res!1127640 () Bool)

(assert (=> b!2682972 (=> (not res!1127640) (not e!1691785))))

(assert (=> b!2682972 (= res!1127640 (isBalanced!2931 (++!7574 (c!432017 acc!348) (c!432017 (_1!17811 lt!945440)))))))

(declare-fun b!2682975 () Bool)

(assert (=> b!2682975 (= e!1691785 (= (list!11689 lt!945769) (++!7570 (list!11689 acc!348) (list!11689 (_1!17811 lt!945440)))))))

(declare-fun b!2682974 () Bool)

(declare-fun res!1127642 () Bool)

(assert (=> b!2682974 (=> (not res!1127642) (not e!1691785))))

(assert (=> b!2682974 (= res!1127642 (>= (height!1414 (++!7574 (c!432017 acc!348) (c!432017 (_1!17811 lt!945440)))) (max!0 (height!1414 (c!432017 acc!348)) (height!1414 (c!432017 (_1!17811 lt!945440))))))))

(assert (= (and d!766852 res!1127641) b!2682972))

(assert (= (and b!2682972 res!1127640) b!2682973))

(assert (= (and b!2682973 res!1127639) b!2682974))

(assert (= (and b!2682974 res!1127642) b!2682975))

(declare-fun m!3052107 () Bool)

(assert (=> b!2682975 m!3052107))

(assert (=> b!2682975 m!3051407))

(declare-fun m!3052109 () Bool)

(assert (=> b!2682975 m!3052109))

(assert (=> b!2682975 m!3051407))

(assert (=> b!2682975 m!3052109))

(declare-fun m!3052111 () Bool)

(assert (=> b!2682975 m!3052111))

(declare-fun m!3052113 () Bool)

(assert (=> b!2682973 m!3052113))

(declare-fun m!3052115 () Bool)

(assert (=> b!2682973 m!3052115))

(declare-fun m!3052117 () Bool)

(assert (=> b!2682973 m!3052117))

(declare-fun m!3052119 () Bool)

(assert (=> b!2682973 m!3052119))

(assert (=> b!2682973 m!3052113))

(declare-fun m!3052121 () Bool)

(assert (=> b!2682973 m!3052121))

(assert (=> b!2682973 m!3052117))

(assert (=> b!2682973 m!3052115))

(assert (=> b!2682974 m!3052113))

(assert (=> b!2682974 m!3052115))

(assert (=> b!2682974 m!3052117))

(assert (=> b!2682974 m!3052119))

(assert (=> b!2682974 m!3052113))

(assert (=> b!2682974 m!3052121))

(assert (=> b!2682974 m!3052117))

(assert (=> b!2682974 m!3052115))

(assert (=> b!2682972 m!3052113))

(assert (=> b!2682972 m!3052113))

(declare-fun m!3052123 () Bool)

(assert (=> b!2682972 m!3052123))

(declare-fun m!3052125 () Bool)

(assert (=> d!766852 m!3052125))

(assert (=> d!766852 m!3052113))

(assert (=> b!2682660 d!766852))

(declare-fun d!766854 () Bool)

(declare-fun c!432097 () Bool)

(assert (=> d!766854 (= c!432097 ((_ is Node!9691) (c!432016 totalInput!354)))))

(declare-fun e!1691786 () Bool)

(assert (=> d!766854 (= (inv!42003 (c!432016 totalInput!354)) e!1691786)))

(declare-fun b!2682976 () Bool)

(assert (=> b!2682976 (= e!1691786 (inv!42011 (c!432016 totalInput!354)))))

(declare-fun b!2682977 () Bool)

(declare-fun e!1691787 () Bool)

(assert (=> b!2682977 (= e!1691786 e!1691787)))

(declare-fun res!1127643 () Bool)

(assert (=> b!2682977 (= res!1127643 (not ((_ is Leaf!14801) (c!432016 totalInput!354))))))

(assert (=> b!2682977 (=> res!1127643 e!1691787)))

(declare-fun b!2682978 () Bool)

(assert (=> b!2682978 (= e!1691787 (inv!42012 (c!432016 totalInput!354)))))

(assert (= (and d!766854 c!432097) b!2682976))

(assert (= (and d!766854 (not c!432097)) b!2682977))

(assert (= (and b!2682977 (not res!1127643)) b!2682978))

(declare-fun m!3052127 () Bool)

(assert (=> b!2682976 m!3052127))

(declare-fun m!3052129 () Bool)

(assert (=> b!2682978 m!3052129))

(assert (=> b!2682641 d!766854))

(declare-fun d!766856 () Bool)

(assert (=> d!766856 (= (list!11689 acc!348) (list!11692 (c!432017 acc!348)))))

(declare-fun bs!480224 () Bool)

(assert (= bs!480224 d!766856))

(declare-fun m!3052131 () Bool)

(assert (=> bs!480224 m!3052131))

(assert (=> b!2682642 d!766856))

(declare-fun d!766858 () Bool)

(assert (=> d!766858 (= (list!11689 (_1!17811 lt!945429)) (list!11692 (c!432017 (_1!17811 lt!945429))))))

(declare-fun bs!480225 () Bool)

(assert (= bs!480225 d!766858))

(declare-fun m!3052133 () Bool)

(assert (=> bs!480225 m!3052133))

(assert (=> b!2682642 d!766858))

(declare-fun b!2682979 () Bool)

(declare-fun e!1691788 () Bool)

(declare-fun e!1691791 () Bool)

(assert (=> b!2682979 (= e!1691788 e!1691791)))

(declare-fun res!1127645 () Bool)

(declare-fun lt!945770 () tuple2!30478)

(assert (=> b!2682979 (= res!1127645 (< (size!23929 (_2!17811 lt!945770)) (size!23929 treated!26)))))

(assert (=> b!2682979 (=> (not res!1127645) (not e!1691791))))

(declare-fun b!2682980 () Bool)

(declare-fun e!1691790 () tuple2!30478)

(assert (=> b!2682980 (= e!1691790 (tuple2!30479 (BalanceConc!18999 Empty!9692) treated!26))))

(declare-fun b!2682981 () Bool)

(assert (=> b!2682981 (= e!1691788 (= (list!11690 (_2!17811 lt!945770)) (list!11690 treated!26)))))

(declare-fun b!2682982 () Bool)

(declare-fun e!1691789 () Bool)

(assert (=> b!2682982 (= e!1691789 (= (list!11690 (_2!17811 lt!945770)) (_2!17817 (lexList!1185 thiss!12257 rules!1381 (list!11690 treated!26)))))))

(declare-fun b!2682983 () Bool)

(declare-fun res!1127644 () Bool)

(assert (=> b!2682983 (=> (not res!1127644) (not e!1691789))))

(assert (=> b!2682983 (= res!1127644 (= (list!11689 (_1!17811 lt!945770)) (_1!17817 (lexList!1185 thiss!12257 rules!1381 (list!11690 treated!26)))))))

(declare-fun d!766860 () Bool)

(assert (=> d!766860 e!1691789))

(declare-fun res!1127646 () Bool)

(assert (=> d!766860 (=> (not res!1127646) (not e!1691789))))

(assert (=> d!766860 (= res!1127646 e!1691788)))

(declare-fun c!432099 () Bool)

(assert (=> d!766860 (= c!432099 (> (size!23930 (_1!17811 lt!945770)) 0))))

(assert (=> d!766860 (= lt!945770 e!1691790)))

(declare-fun c!432098 () Bool)

(declare-fun lt!945771 () Option!6119)

(assert (=> d!766860 (= c!432098 ((_ is Some!6118) lt!945771))))

(assert (=> d!766860 (= lt!945771 (maxPrefixZipperSequence!993 thiss!12257 rules!1381 treated!26))))

(assert (=> d!766860 (= (lexRec!590 thiss!12257 rules!1381 treated!26) lt!945770)))

(declare-fun b!2682984 () Bool)

(assert (=> b!2682984 (= e!1691791 (not (isEmpty!17688 (_1!17811 lt!945770))))))

(declare-fun b!2682985 () Bool)

(declare-fun lt!945772 () tuple2!30478)

(assert (=> b!2682985 (= e!1691790 (tuple2!30479 (prepend!1061 (_1!17811 lt!945772) (_1!17812 (v!32781 lt!945771))) (_2!17811 lt!945772)))))

(assert (=> b!2682985 (= lt!945772 (lexRec!590 thiss!12257 rules!1381 (_2!17812 (v!32781 lt!945771))))))

(assert (= (and d!766860 c!432098) b!2682985))

(assert (= (and d!766860 (not c!432098)) b!2682980))

(assert (= (and d!766860 c!432099) b!2682979))

(assert (= (and d!766860 (not c!432099)) b!2682981))

(assert (= (and b!2682979 res!1127645) b!2682984))

(assert (= (and d!766860 res!1127646) b!2682983))

(assert (= (and b!2682983 res!1127644) b!2682982))

(declare-fun m!3052135 () Bool)

(assert (=> b!2682984 m!3052135))

(declare-fun m!3052137 () Bool)

(assert (=> b!2682981 m!3052137))

(assert (=> b!2682981 m!3051429))

(declare-fun m!3052139 () Bool)

(assert (=> d!766860 m!3052139))

(declare-fun m!3052141 () Bool)

(assert (=> d!766860 m!3052141))

(declare-fun m!3052143 () Bool)

(assert (=> b!2682983 m!3052143))

(assert (=> b!2682983 m!3051429))

(assert (=> b!2682983 m!3051429))

(declare-fun m!3052145 () Bool)

(assert (=> b!2682983 m!3052145))

(declare-fun m!3052147 () Bool)

(assert (=> b!2682985 m!3052147))

(declare-fun m!3052149 () Bool)

(assert (=> b!2682985 m!3052149))

(assert (=> b!2682982 m!3052137))

(assert (=> b!2682982 m!3051429))

(assert (=> b!2682982 m!3051429))

(assert (=> b!2682982 m!3052145))

(declare-fun m!3052151 () Bool)

(assert (=> b!2682979 m!3052151))

(declare-fun m!3052153 () Bool)

(assert (=> b!2682979 m!3052153))

(assert (=> b!2682642 d!766860))

(declare-fun d!766862 () Bool)

(assert (=> d!766862 (= (list!11690 (_2!17811 lt!945418)) (list!11691 (c!432016 (_2!17811 lt!945418))))))

(declare-fun bs!480226 () Bool)

(assert (= bs!480226 d!766862))

(declare-fun m!3052155 () Bool)

(assert (=> bs!480226 m!3052155))

(assert (=> b!2682662 d!766862))

(declare-fun d!766864 () Bool)

(assert (=> d!766864 (= (list!11690 (_2!17811 lt!945440)) (list!11691 (c!432016 (_2!17811 lt!945440))))))

(declare-fun bs!480227 () Bool)

(assert (= bs!480227 d!766864))

(declare-fun m!3052157 () Bool)

(assert (=> bs!480227 m!3052157))

(assert (=> b!2682662 d!766864))

(declare-fun d!766866 () Bool)

(assert (=> d!766866 (= (array_inv!3974 (_keys!3795 (v!32784 (underlying!7193 (v!32785 (underlying!7194 (cache!3544 cacheDown!499))))))) (bvsge (size!23926 (_keys!3795 (v!32784 (underlying!7193 (v!32785 (underlying!7194 (cache!3544 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2682663 d!766866))

(declare-fun d!766868 () Bool)

(assert (=> d!766868 (= (array_inv!3976 (_values!3776 (v!32784 (underlying!7193 (v!32785 (underlying!7194 (cache!3544 cacheDown!499))))))) (bvsge (size!23928 (_values!3776 (v!32784 (underlying!7193 (v!32785 (underlying!7194 (cache!3544 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2682663 d!766868))

(declare-fun d!766870 () Bool)

(assert (=> d!766870 (= (valid!2703 cacheDown!499) (validCacheMapDown!350 (cache!3544 cacheDown!499)))))

(declare-fun bs!480228 () Bool)

(assert (= bs!480228 d!766870))

(assert (=> bs!480228 m!3051923))

(assert (=> b!2682644 d!766870))

(declare-fun b!2682994 () Bool)

(declare-fun e!1691799 () Bool)

(declare-fun tp!849014 () Bool)

(assert (=> b!2682994 (= e!1691799 tp!849014)))

(declare-fun setIsEmpty!20973 () Bool)

(declare-fun setRes!20973 () Bool)

(assert (=> setIsEmpty!20973 setRes!20973))

(declare-fun e!1691800 () Bool)

(assert (=> b!2682654 (= tp!848992 e!1691800)))

(declare-fun e!1691798 () Bool)

(declare-fun b!2682995 () Bool)

(declare-fun tp!849016 () Bool)

(declare-fun tp_is_empty!13841 () Bool)

(declare-fun inv!42013 (Context!4314) Bool)

(assert (=> b!2682995 (= e!1691800 (and (inv!42013 (_1!17813 (_1!17814 (h!36404 mapDefault!15984)))) e!1691798 tp_is_empty!13841 setRes!20973 tp!849016))))

(declare-fun condSetEmpty!20973 () Bool)

(assert (=> b!2682995 (= condSetEmpty!20973 (= (_2!17814 (h!36404 mapDefault!15984)) ((as const (Array Context!4314 Bool)) false)))))

(declare-fun tp!849013 () Bool)

(declare-fun setElem!20973 () Context!4314)

(declare-fun setNonEmpty!20973 () Bool)

(assert (=> setNonEmpty!20973 (= setRes!20973 (and tp!849013 (inv!42013 setElem!20973) e!1691799))))

(declare-fun setRest!20973 () (InoxSet Context!4314))

(assert (=> setNonEmpty!20973 (= (_2!17814 (h!36404 mapDefault!15984)) ((_ map or) (store ((as const (Array Context!4314 Bool)) false) setElem!20973 true) setRest!20973))))

(declare-fun b!2682996 () Bool)

(declare-fun tp!849015 () Bool)

(assert (=> b!2682996 (= e!1691798 tp!849015)))

(assert (= b!2682995 b!2682996))

(assert (= (and b!2682995 condSetEmpty!20973) setIsEmpty!20973))

(assert (= (and b!2682995 (not condSetEmpty!20973)) setNonEmpty!20973))

(assert (= setNonEmpty!20973 b!2682994))

(assert (= (and b!2682654 ((_ is Cons!30984) mapDefault!15984)) b!2682995))

(declare-fun m!3052159 () Bool)

(assert (=> b!2682995 m!3052159))

(declare-fun m!3052161 () Bool)

(assert (=> setNonEmpty!20973 m!3052161))

(declare-fun b!2683007 () Bool)

(declare-fun b_free!75889 () Bool)

(declare-fun b_next!76593 () Bool)

(assert (=> b!2683007 (= b_free!75889 (not b_next!76593))))

(declare-fun tp!849026 () Bool)

(declare-fun b_and!198691 () Bool)

(assert (=> b!2683007 (= tp!849026 b_and!198691)))

(declare-fun b_free!75891 () Bool)

(declare-fun b_next!76595 () Bool)

(assert (=> b!2683007 (= b_free!75891 (not b_next!76595))))

(declare-fun tb!150597 () Bool)

(declare-fun t!224596 () Bool)

(assert (=> (and b!2683007 (= (toChars!6544 (transformation!4731 (h!36402 (t!224587 rules!1381)))) (toChars!6544 (transformation!4731 (rule!7141 (_1!17812 (v!32781 lt!945426)))))) t!224596) tb!150597))

(declare-fun result!185994 () Bool)

(assert (= result!185994 result!185984))

(assert (=> d!766774 t!224596))

(declare-fun t!224598 () Bool)

(declare-fun tb!150599 () Bool)

(assert (=> (and b!2683007 (= (toChars!6544 (transformation!4731 (h!36402 (t!224587 rules!1381)))) (toChars!6544 (transformation!4731 (rule!7141 (_1!17812 (v!32781 (_1!17818 lt!945421))))))) t!224598) tb!150599))

(declare-fun result!185996 () Bool)

(assert (= result!185996 result!185988))

(assert (=> d!766790 t!224598))

(declare-fun b_and!198693 () Bool)

(declare-fun tp!849025 () Bool)

(assert (=> b!2683007 (= tp!849025 (and (=> t!224596 result!185994) (=> t!224598 result!185996) b_and!198693))))

(declare-fun e!1691811 () Bool)

(assert (=> b!2683007 (= e!1691811 (and tp!849026 tp!849025))))

(declare-fun e!1691810 () Bool)

(declare-fun tp!849027 () Bool)

(declare-fun b!2683006 () Bool)

(assert (=> b!2683006 (= e!1691810 (and tp!849027 (inv!41995 (tag!5235 (h!36402 (t!224587 rules!1381)))) (inv!42002 (transformation!4731 (h!36402 (t!224587 rules!1381)))) e!1691811))))

(declare-fun b!2683005 () Bool)

(declare-fun e!1691812 () Bool)

(declare-fun tp!849028 () Bool)

(assert (=> b!2683005 (= e!1691812 (and e!1691810 tp!849028))))

(assert (=> b!2682645 (= tp!848981 e!1691812)))

(assert (= b!2683006 b!2683007))

(assert (= b!2683005 b!2683006))

(assert (= (and b!2682645 ((_ is Cons!30982) (t!224587 rules!1381))) b!2683005))

(declare-fun m!3052163 () Bool)

(assert (=> b!2683006 m!3052163))

(declare-fun m!3052165 () Bool)

(assert (=> b!2683006 m!3052165))

(declare-fun mapIsEmpty!15987 () Bool)

(declare-fun mapRes!15987 () Bool)

(assert (=> mapIsEmpty!15987 mapRes!15987))

(declare-fun setNonEmpty!20978 () Bool)

(declare-fun e!1691828 () Bool)

(declare-fun setRes!20978 () Bool)

(declare-fun setElem!20979 () Context!4314)

(declare-fun tp!849051 () Bool)

(assert (=> setNonEmpty!20978 (= setRes!20978 (and tp!849051 (inv!42013 setElem!20979) e!1691828))))

(declare-fun mapDefault!15987 () List!31085)

(declare-fun setRest!20979 () (InoxSet Context!4314))

(assert (=> setNonEmpty!20978 (= (_2!17816 (h!36405 mapDefault!15987)) ((_ map or) (store ((as const (Array Context!4314 Bool)) false) setElem!20979 true) setRest!20979))))

(declare-fun setIsEmpty!20978 () Bool)

(declare-fun setRes!20979 () Bool)

(assert (=> setIsEmpty!20978 setRes!20979))

(declare-fun e!1691825 () Bool)

(declare-fun tp!849059 () Bool)

(declare-fun b!2683022 () Bool)

(declare-fun tp!849060 () Bool)

(declare-fun e!1691830 () Bool)

(assert (=> b!2683022 (= e!1691830 (and tp!849060 (inv!42013 (_2!17815 (_1!17816 (h!36405 mapDefault!15987)))) e!1691825 tp_is_empty!13841 setRes!20978 tp!849059))))

(declare-fun condSetEmpty!20979 () Bool)

(assert (=> b!2683022 (= condSetEmpty!20979 (= (_2!17816 (h!36405 mapDefault!15987)) ((as const (Array Context!4314 Bool)) false)))))

(declare-fun tp!849061 () Bool)

(declare-fun setElem!20978 () Context!4314)

(declare-fun setNonEmpty!20979 () Bool)

(declare-fun e!1691829 () Bool)

(assert (=> setNonEmpty!20979 (= setRes!20979 (and tp!849061 (inv!42013 setElem!20978) e!1691829))))

(declare-fun mapValue!15987 () List!31085)

(declare-fun setRest!20978 () (InoxSet Context!4314))

(assert (=> setNonEmpty!20979 (= (_2!17816 (h!36405 mapValue!15987)) ((_ map or) (store ((as const (Array Context!4314 Bool)) false) setElem!20978 true) setRest!20978))))

(declare-fun b!2683023 () Bool)

(declare-fun tp!849057 () Bool)

(assert (=> b!2683023 (= e!1691825 tp!849057)))

(declare-fun e!1691827 () Bool)

(declare-fun tp!849056 () Bool)

(declare-fun e!1691826 () Bool)

(declare-fun tp!849052 () Bool)

(declare-fun b!2683024 () Bool)

(assert (=> b!2683024 (= e!1691826 (and tp!849056 (inv!42013 (_2!17815 (_1!17816 (h!36405 mapValue!15987)))) e!1691827 tp_is_empty!13841 setRes!20979 tp!849052))))

(declare-fun condSetEmpty!20978 () Bool)

(assert (=> b!2683024 (= condSetEmpty!20978 (= (_2!17816 (h!36405 mapValue!15987)) ((as const (Array Context!4314 Bool)) false)))))

(declare-fun b!2683025 () Bool)

(declare-fun tp!849058 () Bool)

(assert (=> b!2683025 (= e!1691828 tp!849058)))

(declare-fun mapNonEmpty!15987 () Bool)

(declare-fun tp!849055 () Bool)

(assert (=> mapNonEmpty!15987 (= mapRes!15987 (and tp!849055 e!1691826))))

(declare-fun mapRest!15987 () (Array (_ BitVec 32) List!31085))

(declare-fun mapKey!15987 () (_ BitVec 32))

(assert (=> mapNonEmpty!15987 (= mapRest!15984 (store mapRest!15987 mapKey!15987 mapValue!15987))))

(declare-fun b!2683026 () Bool)

(declare-fun tp!849054 () Bool)

(assert (=> b!2683026 (= e!1691829 tp!849054)))

(declare-fun condMapEmpty!15987 () Bool)

(assert (=> mapNonEmpty!15984 (= condMapEmpty!15987 (= mapRest!15984 ((as const (Array (_ BitVec 32) List!31085)) mapDefault!15987)))))

(assert (=> mapNonEmpty!15984 (= tp!848984 (and e!1691830 mapRes!15987))))

(declare-fun setIsEmpty!20979 () Bool)

(assert (=> setIsEmpty!20979 setRes!20978))

(declare-fun b!2683027 () Bool)

(declare-fun tp!849053 () Bool)

(assert (=> b!2683027 (= e!1691827 tp!849053)))

(assert (= (and mapNonEmpty!15984 condMapEmpty!15987) mapIsEmpty!15987))

(assert (= (and mapNonEmpty!15984 (not condMapEmpty!15987)) mapNonEmpty!15987))

(assert (= b!2683024 b!2683027))

(assert (= (and b!2683024 condSetEmpty!20978) setIsEmpty!20978))

(assert (= (and b!2683024 (not condSetEmpty!20978)) setNonEmpty!20979))

(assert (= setNonEmpty!20979 b!2683026))

(assert (= (and mapNonEmpty!15987 ((_ is Cons!30985) mapValue!15987)) b!2683024))

(assert (= b!2683022 b!2683023))

(assert (= (and b!2683022 condSetEmpty!20979) setIsEmpty!20979))

(assert (= (and b!2683022 (not condSetEmpty!20979)) setNonEmpty!20978))

(assert (= setNonEmpty!20978 b!2683025))

(assert (= (and mapNonEmpty!15984 ((_ is Cons!30985) mapDefault!15987)) b!2683022))

(declare-fun m!3052167 () Bool)

(assert (=> mapNonEmpty!15987 m!3052167))

(declare-fun m!3052169 () Bool)

(assert (=> b!2683022 m!3052169))

(declare-fun m!3052171 () Bool)

(assert (=> setNonEmpty!20979 m!3052171))

(declare-fun m!3052173 () Bool)

(assert (=> b!2683024 m!3052173))

(declare-fun m!3052175 () Bool)

(assert (=> setNonEmpty!20978 m!3052175))

(declare-fun setElem!20982 () Context!4314)

(declare-fun e!1691837 () Bool)

(declare-fun setRes!20982 () Bool)

(declare-fun setNonEmpty!20982 () Bool)

(declare-fun tp!849076 () Bool)

(assert (=> setNonEmpty!20982 (= setRes!20982 (and tp!849076 (inv!42013 setElem!20982) e!1691837))))

(declare-fun setRest!20982 () (InoxSet Context!4314))

(assert (=> setNonEmpty!20982 (= (_2!17816 (h!36405 mapValue!15984)) ((_ map or) (store ((as const (Array Context!4314 Bool)) false) setElem!20982 true) setRest!20982))))

(declare-fun b!2683036 () Bool)

(declare-fun tp!849073 () Bool)

(assert (=> b!2683036 (= e!1691837 tp!849073)))

(declare-fun e!1691838 () Bool)

(assert (=> mapNonEmpty!15984 (= tp!848994 e!1691838)))

(declare-fun setIsEmpty!20982 () Bool)

(assert (=> setIsEmpty!20982 setRes!20982))

(declare-fun tp!849075 () Bool)

(declare-fun e!1691839 () Bool)

(declare-fun tp!849074 () Bool)

(declare-fun b!2683037 () Bool)

(assert (=> b!2683037 (= e!1691838 (and tp!849074 (inv!42013 (_2!17815 (_1!17816 (h!36405 mapValue!15984)))) e!1691839 tp_is_empty!13841 setRes!20982 tp!849075))))

(declare-fun condSetEmpty!20982 () Bool)

(assert (=> b!2683037 (= condSetEmpty!20982 (= (_2!17816 (h!36405 mapValue!15984)) ((as const (Array Context!4314 Bool)) false)))))

(declare-fun b!2683038 () Bool)

(declare-fun tp!849072 () Bool)

(assert (=> b!2683038 (= e!1691839 tp!849072)))

(assert (= b!2683037 b!2683038))

(assert (= (and b!2683037 condSetEmpty!20982) setIsEmpty!20982))

(assert (= (and b!2683037 (not condSetEmpty!20982)) setNonEmpty!20982))

(assert (= setNonEmpty!20982 b!2683036))

(assert (= (and mapNonEmpty!15984 ((_ is Cons!30985) mapValue!15984)) b!2683037))

(declare-fun m!3052177 () Bool)

(assert (=> setNonEmpty!20982 m!3052177))

(declare-fun m!3052179 () Bool)

(assert (=> b!2683037 m!3052179))

(declare-fun setRes!20983 () Bool)

(declare-fun e!1691840 () Bool)

(declare-fun setElem!20983 () Context!4314)

(declare-fun setNonEmpty!20983 () Bool)

(declare-fun tp!849081 () Bool)

(assert (=> setNonEmpty!20983 (= setRes!20983 (and tp!849081 (inv!42013 setElem!20983) e!1691840))))

(declare-fun setRest!20983 () (InoxSet Context!4314))

(assert (=> setNonEmpty!20983 (= (_2!17816 (h!36405 mapDefault!15983)) ((_ map or) (store ((as const (Array Context!4314 Bool)) false) setElem!20983 true) setRest!20983))))

(declare-fun b!2683039 () Bool)

(declare-fun tp!849078 () Bool)

(assert (=> b!2683039 (= e!1691840 tp!849078)))

(declare-fun e!1691841 () Bool)

(assert (=> b!2682659 (= tp!848983 e!1691841)))

(declare-fun setIsEmpty!20983 () Bool)

(assert (=> setIsEmpty!20983 setRes!20983))

(declare-fun tp!849080 () Bool)

(declare-fun tp!849079 () Bool)

(declare-fun b!2683040 () Bool)

(declare-fun e!1691842 () Bool)

(assert (=> b!2683040 (= e!1691841 (and tp!849079 (inv!42013 (_2!17815 (_1!17816 (h!36405 mapDefault!15983)))) e!1691842 tp_is_empty!13841 setRes!20983 tp!849080))))

(declare-fun condSetEmpty!20983 () Bool)

(assert (=> b!2683040 (= condSetEmpty!20983 (= (_2!17816 (h!36405 mapDefault!15983)) ((as const (Array Context!4314 Bool)) false)))))

(declare-fun b!2683041 () Bool)

(declare-fun tp!849077 () Bool)

(assert (=> b!2683041 (= e!1691842 tp!849077)))

(assert (= b!2683040 b!2683041))

(assert (= (and b!2683040 condSetEmpty!20983) setIsEmpty!20983))

(assert (= (and b!2683040 (not condSetEmpty!20983)) setNonEmpty!20983))

(assert (= setNonEmpty!20983 b!2683039))

(assert (= (and b!2682659 ((_ is Cons!30985) mapDefault!15983)) b!2683040))

(declare-fun m!3052181 () Bool)

(assert (=> setNonEmpty!20983 m!3052181))

(declare-fun m!3052183 () Bool)

(assert (=> b!2683040 m!3052183))

(declare-fun e!1691848 () Bool)

(declare-fun tp!849089 () Bool)

(declare-fun b!2683050 () Bool)

(declare-fun tp!849088 () Bool)

(assert (=> b!2683050 (= e!1691848 (and (inv!42008 (left!23923 (c!432017 acc!348))) tp!849088 (inv!42008 (right!24253 (c!432017 acc!348))) tp!849089))))

(declare-fun b!2683052 () Bool)

(declare-fun e!1691847 () Bool)

(declare-fun tp!849090 () Bool)

(assert (=> b!2683052 (= e!1691847 tp!849090)))

(declare-fun b!2683051 () Bool)

(declare-fun inv!42014 (IArray!19389) Bool)

(assert (=> b!2683051 (= e!1691848 (and (inv!42014 (xs!12722 (c!432017 acc!348))) e!1691847))))

(assert (=> b!2682650 (= tp!848996 (and (inv!42008 (c!432017 acc!348)) e!1691848))))

(assert (= (and b!2682650 ((_ is Node!9692) (c!432017 acc!348))) b!2683050))

(assert (= b!2683051 b!2683052))

(assert (= (and b!2682650 ((_ is Leaf!14802) (c!432017 acc!348))) b!2683051))

(declare-fun m!3052185 () Bool)

(assert (=> b!2683050 m!3052185))

(declare-fun m!3052187 () Bool)

(assert (=> b!2683050 m!3052187))

(declare-fun m!3052189 () Bool)

(assert (=> b!2683051 m!3052189))

(assert (=> b!2682650 m!3051419))

(declare-fun e!1691851 () Bool)

(assert (=> b!2682640 (= tp!848989 e!1691851)))

(declare-fun b!2683063 () Bool)

(assert (=> b!2683063 (= e!1691851 tp_is_empty!13841)))

(declare-fun b!2683066 () Bool)

(declare-fun tp!849104 () Bool)

(declare-fun tp!849101 () Bool)

(assert (=> b!2683066 (= e!1691851 (and tp!849104 tp!849101))))

(declare-fun b!2683065 () Bool)

(declare-fun tp!849103 () Bool)

(assert (=> b!2683065 (= e!1691851 tp!849103)))

(declare-fun b!2683064 () Bool)

(declare-fun tp!849102 () Bool)

(declare-fun tp!849105 () Bool)

(assert (=> b!2683064 (= e!1691851 (and tp!849102 tp!849105))))

(assert (= (and b!2682640 ((_ is ElementMatch!7883) (regex!4731 (h!36402 rules!1381)))) b!2683063))

(assert (= (and b!2682640 ((_ is Concat!12837) (regex!4731 (h!36402 rules!1381)))) b!2683064))

(assert (= (and b!2682640 ((_ is Star!7883) (regex!4731 (h!36402 rules!1381)))) b!2683065))

(assert (= (and b!2682640 ((_ is Union!7883) (regex!4731 (h!36402 rules!1381)))) b!2683066))

(declare-fun tp!849131 () Bool)

(declare-fun e!1691865 () Bool)

(declare-fun setRes!20989 () Bool)

(declare-fun b!2683081 () Bool)

(declare-fun mapDefault!15990 () List!31084)

(declare-fun e!1691867 () Bool)

(assert (=> b!2683081 (= e!1691865 (and (inv!42013 (_1!17813 (_1!17814 (h!36404 mapDefault!15990)))) e!1691867 tp_is_empty!13841 setRes!20989 tp!849131))))

(declare-fun condSetEmpty!20989 () Bool)

(assert (=> b!2683081 (= condSetEmpty!20989 (= (_2!17814 (h!36404 mapDefault!15990)) ((as const (Array Context!4314 Bool)) false)))))

(declare-fun mapIsEmpty!15990 () Bool)

(declare-fun mapRes!15990 () Bool)

(assert (=> mapIsEmpty!15990 mapRes!15990))

(declare-fun mapNonEmpty!15990 () Bool)

(declare-fun tp!849125 () Bool)

(declare-fun e!1691864 () Bool)

(assert (=> mapNonEmpty!15990 (= mapRes!15990 (and tp!849125 e!1691864))))

(declare-fun mapRest!15990 () (Array (_ BitVec 32) List!31084))

(declare-fun mapValue!15990 () List!31084)

(declare-fun mapKey!15990 () (_ BitVec 32))

(assert (=> mapNonEmpty!15990 (= mapRest!15983 (store mapRest!15990 mapKey!15990 mapValue!15990))))

(declare-fun b!2683083 () Bool)

(declare-fun e!1691866 () Bool)

(declare-fun tp!849132 () Bool)

(assert (=> b!2683083 (= e!1691866 tp!849132)))

(declare-fun tp!849127 () Bool)

(declare-fun setRes!20988 () Bool)

(declare-fun setElem!20988 () Context!4314)

(declare-fun e!1691868 () Bool)

(declare-fun setNonEmpty!20988 () Bool)

(assert (=> setNonEmpty!20988 (= setRes!20988 (and tp!849127 (inv!42013 setElem!20988) e!1691868))))

(declare-fun setRest!20989 () (InoxSet Context!4314))

(assert (=> setNonEmpty!20988 (= (_2!17814 (h!36404 mapValue!15990)) ((_ map or) (store ((as const (Array Context!4314 Bool)) false) setElem!20988 true) setRest!20989))))

(declare-fun setIsEmpty!20988 () Bool)

(assert (=> setIsEmpty!20988 setRes!20988))

(declare-fun setIsEmpty!20989 () Bool)

(assert (=> setIsEmpty!20989 setRes!20989))

(declare-fun condMapEmpty!15990 () Bool)

(assert (=> mapNonEmpty!15983 (= condMapEmpty!15990 (= mapRest!15983 ((as const (Array (_ BitVec 32) List!31084)) mapDefault!15990)))))

(assert (=> mapNonEmpty!15983 (= tp!848986 (and e!1691865 mapRes!15990))))

(declare-fun b!2683082 () Bool)

(declare-fun e!1691869 () Bool)

(declare-fun tp!849124 () Bool)

(assert (=> b!2683082 (= e!1691869 tp!849124)))

(declare-fun b!2683084 () Bool)

(declare-fun tp!849129 () Bool)

(assert (=> b!2683084 (= e!1691864 (and (inv!42013 (_1!17813 (_1!17814 (h!36404 mapValue!15990)))) e!1691866 tp_is_empty!13841 setRes!20988 tp!849129))))

(declare-fun condSetEmpty!20988 () Bool)

(assert (=> b!2683084 (= condSetEmpty!20988 (= (_2!17814 (h!36404 mapValue!15990)) ((as const (Array Context!4314 Bool)) false)))))

(declare-fun setNonEmpty!20989 () Bool)

(declare-fun setElem!20989 () Context!4314)

(declare-fun tp!849130 () Bool)

(assert (=> setNonEmpty!20989 (= setRes!20989 (and tp!849130 (inv!42013 setElem!20989) e!1691869))))

(declare-fun setRest!20988 () (InoxSet Context!4314))

(assert (=> setNonEmpty!20989 (= (_2!17814 (h!36404 mapDefault!15990)) ((_ map or) (store ((as const (Array Context!4314 Bool)) false) setElem!20989 true) setRest!20988))))

(declare-fun b!2683085 () Bool)

(declare-fun tp!849126 () Bool)

(assert (=> b!2683085 (= e!1691867 tp!849126)))

(declare-fun b!2683086 () Bool)

(declare-fun tp!849128 () Bool)

(assert (=> b!2683086 (= e!1691868 tp!849128)))

(assert (= (and mapNonEmpty!15983 condMapEmpty!15990) mapIsEmpty!15990))

(assert (= (and mapNonEmpty!15983 (not condMapEmpty!15990)) mapNonEmpty!15990))

(assert (= b!2683084 b!2683083))

(assert (= (and b!2683084 condSetEmpty!20988) setIsEmpty!20988))

(assert (= (and b!2683084 (not condSetEmpty!20988)) setNonEmpty!20988))

(assert (= setNonEmpty!20988 b!2683086))

(assert (= (and mapNonEmpty!15990 ((_ is Cons!30984) mapValue!15990)) b!2683084))

(assert (= b!2683081 b!2683085))

(assert (= (and b!2683081 condSetEmpty!20989) setIsEmpty!20989))

(assert (= (and b!2683081 (not condSetEmpty!20989)) setNonEmpty!20989))

(assert (= setNonEmpty!20989 b!2683082))

(assert (= (and mapNonEmpty!15983 ((_ is Cons!30984) mapDefault!15990)) b!2683081))

(declare-fun m!3052191 () Bool)

(assert (=> mapNonEmpty!15990 m!3052191))

(declare-fun m!3052193 () Bool)

(assert (=> b!2683081 m!3052193))

(declare-fun m!3052195 () Bool)

(assert (=> b!2683084 m!3052195))

(declare-fun m!3052197 () Bool)

(assert (=> setNonEmpty!20988 m!3052197))

(declare-fun m!3052199 () Bool)

(assert (=> setNonEmpty!20989 m!3052199))

(declare-fun b!2683087 () Bool)

(declare-fun e!1691871 () Bool)

(declare-fun tp!849134 () Bool)

(assert (=> b!2683087 (= e!1691871 tp!849134)))

(declare-fun setIsEmpty!20990 () Bool)

(declare-fun setRes!20990 () Bool)

(assert (=> setIsEmpty!20990 setRes!20990))

(declare-fun e!1691872 () Bool)

(assert (=> mapNonEmpty!15983 (= tp!848987 e!1691872)))

(declare-fun b!2683088 () Bool)

(declare-fun e!1691870 () Bool)

(declare-fun tp!849136 () Bool)

(assert (=> b!2683088 (= e!1691872 (and (inv!42013 (_1!17813 (_1!17814 (h!36404 mapValue!15983)))) e!1691870 tp_is_empty!13841 setRes!20990 tp!849136))))

(declare-fun condSetEmpty!20990 () Bool)

(assert (=> b!2683088 (= condSetEmpty!20990 (= (_2!17814 (h!36404 mapValue!15983)) ((as const (Array Context!4314 Bool)) false)))))

(declare-fun setNonEmpty!20990 () Bool)

(declare-fun tp!849133 () Bool)

(declare-fun setElem!20990 () Context!4314)

(assert (=> setNonEmpty!20990 (= setRes!20990 (and tp!849133 (inv!42013 setElem!20990) e!1691871))))

(declare-fun setRest!20990 () (InoxSet Context!4314))

(assert (=> setNonEmpty!20990 (= (_2!17814 (h!36404 mapValue!15983)) ((_ map or) (store ((as const (Array Context!4314 Bool)) false) setElem!20990 true) setRest!20990))))

(declare-fun b!2683089 () Bool)

(declare-fun tp!849135 () Bool)

(assert (=> b!2683089 (= e!1691870 tp!849135)))

(assert (= b!2683088 b!2683089))

(assert (= (and b!2683088 condSetEmpty!20990) setIsEmpty!20990))

(assert (= (and b!2683088 (not condSetEmpty!20990)) setNonEmpty!20990))

(assert (= setNonEmpty!20990 b!2683087))

(assert (= (and mapNonEmpty!15983 ((_ is Cons!30984) mapValue!15983)) b!2683088))

(declare-fun m!3052201 () Bool)

(assert (=> b!2683088 m!3052201))

(declare-fun m!3052203 () Bool)

(assert (=> setNonEmpty!20990 m!3052203))

(declare-fun b!2683090 () Bool)

(declare-fun e!1691874 () Bool)

(declare-fun tp!849138 () Bool)

(assert (=> b!2683090 (= e!1691874 tp!849138)))

(declare-fun setIsEmpty!20991 () Bool)

(declare-fun setRes!20991 () Bool)

(assert (=> setIsEmpty!20991 setRes!20991))

(declare-fun e!1691875 () Bool)

(assert (=> b!2682651 (= tp!848979 e!1691875)))

(declare-fun e!1691873 () Bool)

(declare-fun b!2683091 () Bool)

(declare-fun tp!849140 () Bool)

(assert (=> b!2683091 (= e!1691875 (and (inv!42013 (_1!17813 (_1!17814 (h!36404 (zeroValue!3753 (v!32782 (underlying!7191 (v!32783 (underlying!7192 (cache!3543 cacheUp!486)))))))))) e!1691873 tp_is_empty!13841 setRes!20991 tp!849140))))

(declare-fun condSetEmpty!20991 () Bool)

(assert (=> b!2683091 (= condSetEmpty!20991 (= (_2!17814 (h!36404 (zeroValue!3753 (v!32782 (underlying!7191 (v!32783 (underlying!7192 (cache!3543 cacheUp!486)))))))) ((as const (Array Context!4314 Bool)) false)))))

(declare-fun tp!849137 () Bool)

(declare-fun setNonEmpty!20991 () Bool)

(declare-fun setElem!20991 () Context!4314)

(assert (=> setNonEmpty!20991 (= setRes!20991 (and tp!849137 (inv!42013 setElem!20991) e!1691874))))

(declare-fun setRest!20991 () (InoxSet Context!4314))

(assert (=> setNonEmpty!20991 (= (_2!17814 (h!36404 (zeroValue!3753 (v!32782 (underlying!7191 (v!32783 (underlying!7192 (cache!3543 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4314 Bool)) false) setElem!20991 true) setRest!20991))))

(declare-fun b!2683092 () Bool)

(declare-fun tp!849139 () Bool)

(assert (=> b!2683092 (= e!1691873 tp!849139)))

(assert (= b!2683091 b!2683092))

(assert (= (and b!2683091 condSetEmpty!20991) setIsEmpty!20991))

(assert (= (and b!2683091 (not condSetEmpty!20991)) setNonEmpty!20991))

(assert (= setNonEmpty!20991 b!2683090))

(assert (= (and b!2682651 ((_ is Cons!30984) (zeroValue!3753 (v!32782 (underlying!7191 (v!32783 (underlying!7192 (cache!3543 cacheUp!486)))))))) b!2683091))

(declare-fun m!3052205 () Bool)

(assert (=> b!2683091 m!3052205))

(declare-fun m!3052207 () Bool)

(assert (=> setNonEmpty!20991 m!3052207))

(declare-fun b!2683093 () Bool)

(declare-fun e!1691877 () Bool)

(declare-fun tp!849142 () Bool)

(assert (=> b!2683093 (= e!1691877 tp!849142)))

(declare-fun setIsEmpty!20992 () Bool)

(declare-fun setRes!20992 () Bool)

(assert (=> setIsEmpty!20992 setRes!20992))

(declare-fun e!1691878 () Bool)

(assert (=> b!2682651 (= tp!848995 e!1691878)))

(declare-fun b!2683094 () Bool)

(declare-fun tp!849144 () Bool)

(declare-fun e!1691876 () Bool)

(assert (=> b!2683094 (= e!1691878 (and (inv!42013 (_1!17813 (_1!17814 (h!36404 (minValue!3753 (v!32782 (underlying!7191 (v!32783 (underlying!7192 (cache!3543 cacheUp!486)))))))))) e!1691876 tp_is_empty!13841 setRes!20992 tp!849144))))

(declare-fun condSetEmpty!20992 () Bool)

(assert (=> b!2683094 (= condSetEmpty!20992 (= (_2!17814 (h!36404 (minValue!3753 (v!32782 (underlying!7191 (v!32783 (underlying!7192 (cache!3543 cacheUp!486)))))))) ((as const (Array Context!4314 Bool)) false)))))

(declare-fun tp!849141 () Bool)

(declare-fun setElem!20992 () Context!4314)

(declare-fun setNonEmpty!20992 () Bool)

(assert (=> setNonEmpty!20992 (= setRes!20992 (and tp!849141 (inv!42013 setElem!20992) e!1691877))))

(declare-fun setRest!20992 () (InoxSet Context!4314))

(assert (=> setNonEmpty!20992 (= (_2!17814 (h!36404 (minValue!3753 (v!32782 (underlying!7191 (v!32783 (underlying!7192 (cache!3543 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4314 Bool)) false) setElem!20992 true) setRest!20992))))

(declare-fun b!2683095 () Bool)

(declare-fun tp!849143 () Bool)

(assert (=> b!2683095 (= e!1691876 tp!849143)))

(assert (= b!2683094 b!2683095))

(assert (= (and b!2683094 condSetEmpty!20992) setIsEmpty!20992))

(assert (= (and b!2683094 (not condSetEmpty!20992)) setNonEmpty!20992))

(assert (= setNonEmpty!20992 b!2683093))

(assert (= (and b!2682651 ((_ is Cons!30984) (minValue!3753 (v!32782 (underlying!7191 (v!32783 (underlying!7192 (cache!3543 cacheUp!486)))))))) b!2683094))

(declare-fun m!3052209 () Bool)

(assert (=> b!2683094 m!3052209))

(declare-fun m!3052211 () Bool)

(assert (=> setNonEmpty!20992 m!3052211))

(declare-fun e!1691884 () Bool)

(declare-fun tp!849153 () Bool)

(declare-fun b!2683104 () Bool)

(declare-fun tp!849152 () Bool)

(assert (=> b!2683104 (= e!1691884 (and (inv!42003 (left!23922 (c!432016 totalInput!354))) tp!849153 (inv!42003 (right!24252 (c!432016 totalInput!354))) tp!849152))))

(declare-fun b!2683106 () Bool)

(declare-fun e!1691883 () Bool)

(declare-fun tp!849151 () Bool)

(assert (=> b!2683106 (= e!1691883 tp!849151)))

(declare-fun b!2683105 () Bool)

(declare-fun inv!42015 (IArray!19387) Bool)

(assert (=> b!2683105 (= e!1691884 (and (inv!42015 (xs!12721 (c!432016 totalInput!354))) e!1691883))))

(assert (=> b!2682641 (= tp!848991 (and (inv!42003 (c!432016 totalInput!354)) e!1691884))))

(assert (= (and b!2682641 ((_ is Node!9691) (c!432016 totalInput!354))) b!2683104))

(assert (= b!2683105 b!2683106))

(assert (= (and b!2682641 ((_ is Leaf!14801) (c!432016 totalInput!354))) b!2683105))

(declare-fun m!3052213 () Bool)

(assert (=> b!2683104 m!3052213))

(declare-fun m!3052215 () Bool)

(assert (=> b!2683104 m!3052215))

(declare-fun m!3052217 () Bool)

(assert (=> b!2683105 m!3052217))

(assert (=> b!2682641 m!3051421))

(declare-fun b!2683107 () Bool)

(declare-fun e!1691886 () Bool)

(declare-fun tp!849155 () Bool)

(declare-fun tp!849156 () Bool)

(assert (=> b!2683107 (= e!1691886 (and (inv!42003 (left!23922 (c!432016 treated!26))) tp!849156 (inv!42003 (right!24252 (c!432016 treated!26))) tp!849155))))

(declare-fun b!2683109 () Bool)

(declare-fun e!1691885 () Bool)

(declare-fun tp!849154 () Bool)

(assert (=> b!2683109 (= e!1691885 tp!849154)))

(declare-fun b!2683108 () Bool)

(assert (=> b!2683108 (= e!1691886 (and (inv!42015 (xs!12721 (c!432016 treated!26))) e!1691885))))

(assert (=> b!2682672 (= tp!848980 (and (inv!42003 (c!432016 treated!26)) e!1691886))))

(assert (= (and b!2682672 ((_ is Node!9691) (c!432016 treated!26))) b!2683107))

(assert (= b!2683108 b!2683109))

(assert (= (and b!2682672 ((_ is Leaf!14801) (c!432016 treated!26))) b!2683108))

(declare-fun m!3052219 () Bool)

(assert (=> b!2683107 m!3052219))

(declare-fun m!3052221 () Bool)

(assert (=> b!2683107 m!3052221))

(declare-fun m!3052223 () Bool)

(assert (=> b!2683108 m!3052223))

(assert (=> b!2682672 m!3051413))

(declare-fun tp!849161 () Bool)

(declare-fun e!1691887 () Bool)

(declare-fun setNonEmpty!20993 () Bool)

(declare-fun setRes!20993 () Bool)

(declare-fun setElem!20993 () Context!4314)

(assert (=> setNonEmpty!20993 (= setRes!20993 (and tp!849161 (inv!42013 setElem!20993) e!1691887))))

(declare-fun setRest!20993 () (InoxSet Context!4314))

(assert (=> setNonEmpty!20993 (= (_2!17816 (h!36405 (zeroValue!3754 (v!32784 (underlying!7193 (v!32785 (underlying!7194 (cache!3544 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4314 Bool)) false) setElem!20993 true) setRest!20993))))

(declare-fun b!2683110 () Bool)

(declare-fun tp!849158 () Bool)

(assert (=> b!2683110 (= e!1691887 tp!849158)))

(declare-fun e!1691888 () Bool)

(assert (=> b!2682663 (= tp!848982 e!1691888)))

(declare-fun setIsEmpty!20993 () Bool)

(assert (=> setIsEmpty!20993 setRes!20993))

(declare-fun tp!849159 () Bool)

(declare-fun b!2683111 () Bool)

(declare-fun e!1691889 () Bool)

(declare-fun tp!849160 () Bool)

(assert (=> b!2683111 (= e!1691888 (and tp!849159 (inv!42013 (_2!17815 (_1!17816 (h!36405 (zeroValue!3754 (v!32784 (underlying!7193 (v!32785 (underlying!7194 (cache!3544 cacheDown!499)))))))))) e!1691889 tp_is_empty!13841 setRes!20993 tp!849160))))

(declare-fun condSetEmpty!20993 () Bool)

(assert (=> b!2683111 (= condSetEmpty!20993 (= (_2!17816 (h!36405 (zeroValue!3754 (v!32784 (underlying!7193 (v!32785 (underlying!7194 (cache!3544 cacheDown!499)))))))) ((as const (Array Context!4314 Bool)) false)))))

(declare-fun b!2683112 () Bool)

(declare-fun tp!849157 () Bool)

(assert (=> b!2683112 (= e!1691889 tp!849157)))

(assert (= b!2683111 b!2683112))

(assert (= (and b!2683111 condSetEmpty!20993) setIsEmpty!20993))

(assert (= (and b!2683111 (not condSetEmpty!20993)) setNonEmpty!20993))

(assert (= setNonEmpty!20993 b!2683110))

(assert (= (and b!2682663 ((_ is Cons!30985) (zeroValue!3754 (v!32784 (underlying!7193 (v!32785 (underlying!7194 (cache!3544 cacheDown!499)))))))) b!2683111))

(declare-fun m!3052225 () Bool)

(assert (=> setNonEmpty!20993 m!3052225))

(declare-fun m!3052227 () Bool)

(assert (=> b!2683111 m!3052227))

(declare-fun tp!849166 () Bool)

(declare-fun setElem!20994 () Context!4314)

(declare-fun setNonEmpty!20994 () Bool)

(declare-fun setRes!20994 () Bool)

(declare-fun e!1691890 () Bool)

(assert (=> setNonEmpty!20994 (= setRes!20994 (and tp!849166 (inv!42013 setElem!20994) e!1691890))))

(declare-fun setRest!20994 () (InoxSet Context!4314))

(assert (=> setNonEmpty!20994 (= (_2!17816 (h!36405 (minValue!3754 (v!32784 (underlying!7193 (v!32785 (underlying!7194 (cache!3544 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4314 Bool)) false) setElem!20994 true) setRest!20994))))

(declare-fun b!2683113 () Bool)

(declare-fun tp!849163 () Bool)

(assert (=> b!2683113 (= e!1691890 tp!849163)))

(declare-fun e!1691891 () Bool)

(assert (=> b!2682663 (= tp!848993 e!1691891)))

(declare-fun setIsEmpty!20994 () Bool)

(assert (=> setIsEmpty!20994 setRes!20994))

(declare-fun e!1691892 () Bool)

(declare-fun tp!849164 () Bool)

(declare-fun b!2683114 () Bool)

(declare-fun tp!849165 () Bool)

(assert (=> b!2683114 (= e!1691891 (and tp!849164 (inv!42013 (_2!17815 (_1!17816 (h!36405 (minValue!3754 (v!32784 (underlying!7193 (v!32785 (underlying!7194 (cache!3544 cacheDown!499)))))))))) e!1691892 tp_is_empty!13841 setRes!20994 tp!849165))))

(declare-fun condSetEmpty!20994 () Bool)

(assert (=> b!2683114 (= condSetEmpty!20994 (= (_2!17816 (h!36405 (minValue!3754 (v!32784 (underlying!7193 (v!32785 (underlying!7194 (cache!3544 cacheDown!499)))))))) ((as const (Array Context!4314 Bool)) false)))))

(declare-fun b!2683115 () Bool)

(declare-fun tp!849162 () Bool)

(assert (=> b!2683115 (= e!1691892 tp!849162)))

(assert (= b!2683114 b!2683115))

(assert (= (and b!2683114 condSetEmpty!20994) setIsEmpty!20994))

(assert (= (and b!2683114 (not condSetEmpty!20994)) setNonEmpty!20994))

(assert (= setNonEmpty!20994 b!2683113))

(assert (= (and b!2682663 ((_ is Cons!30985) (minValue!3754 (v!32784 (underlying!7193 (v!32785 (underlying!7194 (cache!3544 cacheDown!499)))))))) b!2683114))

(declare-fun m!3052229 () Bool)

(assert (=> setNonEmpty!20994 m!3052229))

(declare-fun m!3052231 () Bool)

(assert (=> b!2683114 m!3052231))

(declare-fun b!2683116 () Bool)

(declare-fun tp!849168 () Bool)

(declare-fun e!1691894 () Bool)

(declare-fun tp!849169 () Bool)

(assert (=> b!2683116 (= e!1691894 (and (inv!42003 (left!23922 (c!432016 input!780))) tp!849169 (inv!42003 (right!24252 (c!432016 input!780))) tp!849168))))

(declare-fun b!2683118 () Bool)

(declare-fun e!1691893 () Bool)

(declare-fun tp!849167 () Bool)

(assert (=> b!2683118 (= e!1691893 tp!849167)))

(declare-fun b!2683117 () Bool)

(assert (=> b!2683117 (= e!1691894 (and (inv!42015 (xs!12721 (c!432016 input!780))) e!1691893))))

(assert (=> b!2682653 (= tp!848999 (and (inv!42003 (c!432016 input!780)) e!1691894))))

(assert (= (and b!2682653 ((_ is Node!9691) (c!432016 input!780))) b!2683116))

(assert (= b!2683117 b!2683118))

(assert (= (and b!2682653 ((_ is Leaf!14801) (c!432016 input!780))) b!2683117))

(declare-fun m!3052233 () Bool)

(assert (=> b!2683116 m!3052233))

(declare-fun m!3052235 () Bool)

(assert (=> b!2683116 m!3052235))

(declare-fun m!3052237 () Bool)

(assert (=> b!2683117 m!3052237))

(assert (=> b!2682653 m!3051371))

(check-sat b_and!198693 (not b!2683065) (not d!766826) (not tb!150595) (not b!2682767) (not b!2682983) (not d!766778) (not b_next!76587) (not d!766736) (not b!2682949) (not b!2682817) (not b!2682883) (not b!2682727) (not b!2683050) (not d!766748) (not b_next!76581) (not b!2682911) (not d!766776) (not d!766838) (not b!2682839) (not setNonEmpty!20989) (not b!2682776) (not b!2682772) (not b!2682824) (not d!766766) (not b!2683117) (not d!766824) (not b!2682672) (not d!766744) (not b!2682810) b_and!198691 (not b!2683089) b_and!198685 (not d!766852) (not b!2682984) (not b!2682979) (not b!2682754) (not b!2682827) (not b!2683084) (not b!2682653) b_and!198675 (not b!2683112) (not b!2682996) (not b!2683038) (not b!2682962) (not d!766742) (not bm!172774) (not d!766808) (not b!2682884) (not d!766754) (not b!2683086) (not b!2682869) (not b!2683064) (not b!2682889) (not setNonEmpty!20973) (not b!2682833) (not d!766770) (not b!2682705) (not d!766864) (not b!2683006) (not b!2682733) (not b!2683114) (not b!2683083) (not d!766844) (not b_next!76583) (not b!2683108) (not b!2682731) (not b!2683082) (not mapNonEmpty!15987) (not d!766832) (not d!766746) (not setNonEmpty!20988) (not b!2682963) (not b!2682752) (not b!2683095) (not d!766850) (not b!2682857) (not b!2682732) (not b!2682850) (not b!2683052) (not b!2682769) (not b!2682959) (not b!2682956) (not b!2682912) (not d!766842) (not b!2682687) (not b!2682957) (not d!766806) (not d!766752) (not b!2683111) (not b!2682960) (not d!766816) (not b!2683115) (not b!2682881) (not b!2682771) (not b!2682974) (not b!2682805) (not b!2683036) (not b!2683113) (not b!2682995) (not b!2683039) (not b!2682868) (not b!2682641) (not setNonEmpty!20993) (not b!2682750) (not b!2682914) (not b!2682830) (not d!766772) (not b!2683025) (not b!2682955) (not b!2682650) (not b!2682773) (not d!766734) (not b!2682938) (not b!2682953) (not b!2682961) b_and!198681 (not b!2682939) (not d!766812) (not b!2682950) (not b_lambda!81893) (not b!2683091) (not b!2683023) (not d!766828) (not b!2682872) (not b!2682829) (not b!2682972) (not d!766814) (not b!2682899) (not b!2682820) (not b!2682936) (not bm!172770) (not setNonEmpty!20978) (not b!2682813) (not d!766860) (not d!766774) (not b!2683093) (not d!766762) (not b!2683022) (not b!2683005) (not b!2682858) (not d!766740) (not b!2682728) (not d!766758) (not d!766788) (not b!2682816) (not d!766870) (not b!2683116) (not setNonEmpty!20991) (not d!766756) (not b!2682870) (not b!2682806) (not b!2682707) (not b!2682931) (not d!766738) (not d!766802) (not b!2682873) (not b!2682952) (not b!2683087) (not b!2682704) (not b!2682821) (not b!2682848) (not setNonEmpty!20982) (not b!2682874) (not b!2682787) tp_is_empty!13841 (not b!2682893) (not b_next!76585) (not b!2683027) (not b!2682770) (not b!2682941) (not b!2682825) (not b!2682981) (not b!2682764) (not b_next!76593) (not b!2683109) b_and!198689 (not d!766830) (not d!766804) (not b!2682832) (not bm!172773) (not b!2682765) (not b!2682851) (not b!2682853) (not d!766858) (not b!2682866) (not b!2682978) (not b!2683092) (not b!2683040) (not b!2683037) (not b!2682935) (not b!2683051) b_and!198677 (not b!2682802) (not b!2682801) (not b!2683110) (not b!2682826) (not setNonEmpty!20994) (not d!766846) (not d!766732) (not b!2683107) (not d!766790) (not d!766728) (not b!2682729) (not b!2682975) (not b!2682812) (not d!766784) (not b!2682910) (not b!2683118) (not tb!150593) (not b!2682945) (not b!2682973) (not b!2682828) (not d!766760) (not b!2682871) (not b!2682940) (not setNonEmpty!20992) (not b!2682809) (not b!2682685) (not d!766822) (not b!2683105) (not b_next!76595) (not b!2682849) (not b!2683106) (not b!2682748) (not b!2683094) (not b!2682976) (not setNonEmpty!20983) (not b!2683104) (not b!2682982) (not b!2683066) (not b!2682929) (not mapNonEmpty!15990) (not d!766730) (not b!2683026) (not b!2683090) (not d!766810) (not d!766862) (not b!2683081) (not b!2682994) (not b_lambda!81895) (not b!2683088) (not d!766848) (not d!766856) (not b!2683024) (not b_next!76589) (not b!2682730) (not b!2683085) (not b!2682930) (not b!2682888) (not b!2682942) (not b!2682688) (not b!2682789) (not d!766764) (not d!766750) (not b!2683041) (not b!2682708) (not d!766768) (not b!2682854) (not b!2682946) (not b!2682886) (not b!2682751) (not b!2682896) (not b!2682954) (not d!766834) (not b_next!76591) (not setNonEmpty!20979) (not d!766786) (not d!766780) (not b!2682788) b_and!198679 (not setNonEmpty!20990) (not b!2682985) (not b!2682753))
(check-sat (not b_next!76581) b_and!198691 b_and!198685 b_and!198675 (not b_next!76583) b_and!198681 (not b_next!76585) b_and!198677 (not b_next!76595) (not b_next!76589) b_and!198693 (not b_next!76587) b_and!198689 (not b_next!76593) (not b_next!76591) b_and!198679)
