; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261104 () Bool)

(assert start!261104)

(declare-fun b!2680203 () Bool)

(declare-fun b_free!75633 () Bool)

(declare-fun b_next!76337 () Bool)

(assert (=> b!2680203 (= b_free!75633 (not b_next!76337))))

(declare-fun tp!847495 () Bool)

(declare-fun b_and!198429 () Bool)

(assert (=> b!2680203 (= tp!847495 b_and!198429)))

(declare-fun b!2680218 () Bool)

(declare-fun b_free!75635 () Bool)

(declare-fun b_next!76339 () Bool)

(assert (=> b!2680218 (= b_free!75635 (not b_next!76339))))

(declare-fun tp!847500 () Bool)

(declare-fun b_and!198431 () Bool)

(assert (=> b!2680218 (= tp!847500 b_and!198431)))

(declare-fun b_free!75637 () Bool)

(declare-fun b_next!76341 () Bool)

(assert (=> b!2680218 (= b_free!75637 (not b_next!76341))))

(declare-fun tp!847507 () Bool)

(declare-fun b_and!198433 () Bool)

(assert (=> b!2680218 (= tp!847507 b_and!198433)))

(declare-fun b!2680206 () Bool)

(declare-fun b_free!75639 () Bool)

(declare-fun b_next!76343 () Bool)

(assert (=> b!2680206 (= b_free!75639 (not b_next!76343))))

(declare-fun tp!847501 () Bool)

(declare-fun b_and!198435 () Bool)

(assert (=> b!2680206 (= tp!847501 b_and!198435)))

(declare-fun b!2680211 () Bool)

(declare-fun b_free!75641 () Bool)

(declare-fun b_next!76345 () Bool)

(assert (=> b!2680211 (= b_free!75641 (not b_next!76345))))

(declare-fun tp!847494 () Bool)

(declare-fun b_and!198437 () Bool)

(assert (=> b!2680211 (= tp!847494 b_and!198437)))

(declare-fun b!2680207 () Bool)

(declare-fun b_free!75643 () Bool)

(declare-fun b_next!76347 () Bool)

(assert (=> b!2680207 (= b_free!75643 (not b_next!76347))))

(declare-fun tp!847509 () Bool)

(declare-fun b_and!198439 () Bool)

(assert (=> b!2680207 (= tp!847509 b_and!198439)))

(declare-fun b!2680198 () Bool)

(declare-fun res!1126716 () Bool)

(declare-fun e!1689533 () Bool)

(assert (=> b!2680198 (=> (not res!1126716) (not e!1689533))))

(declare-datatypes ((C!15884 0))(
  ( (C!15885 (val!9876 Int)) )
))
(declare-datatypes ((Regex!7863 0))(
  ( (ElementMatch!7863 (c!431796 C!15884)) (Concat!12798 (regOne!16238 Regex!7863) (regTwo!16238 Regex!7863)) (EmptyExpr!7863) (Star!7863 (reg!8192 Regex!7863)) (EmptyLang!7863) (Union!7863 (regOne!16239 Regex!7863) (regTwo!16239 Regex!7863)) )
))
(declare-datatypes ((array!12339 0))(
  ( (array!12340 (arr!5511 (Array (_ BitVec 32) (_ BitVec 64))) (size!23849 (_ BitVec 32))) )
))
(declare-datatypes ((List!30951 0))(
  ( (Nil!30851) (Cons!30851 (h!36271 Regex!7863) (t!224452 List!30951)) )
))
(declare-datatypes ((Context!4274 0))(
  ( (Context!4275 (exprs!2637 List!30951)) )
))
(declare-datatypes ((tuple3!4158 0))(
  ( (tuple3!4159 (_1!17706 Regex!7863) (_2!17706 Context!4274) (_3!2549 C!15884)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30314 0))(
  ( (tuple2!30315 (_1!17707 tuple3!4158) (_2!17707 (InoxSet Context!4274))) )
))
(declare-datatypes ((List!30952 0))(
  ( (Nil!30852) (Cons!30852 (h!36272 tuple2!30314) (t!224453 List!30952)) )
))
(declare-datatypes ((array!12341 0))(
  ( (array!12342 (arr!5512 (Array (_ BitVec 32) List!30952)) (size!23850 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6918 0))(
  ( (LongMapFixedSize!6919 (defaultEntry!3844 Int) (mask!9127 (_ BitVec 32)) (extraKeys!3708 (_ BitVec 32)) (zeroValue!3718 List!30952) (minValue!3718 List!30952) (_size!6961 (_ BitVec 32)) (_keys!3759 array!12339) (_values!3740 array!12341) (_vacant!3520 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13645 0))(
  ( (Cell!13646 (v!32699 LongMapFixedSize!6918)) )
))
(declare-datatypes ((MutLongMap!3459 0))(
  ( (LongMap!3459 (underlying!7121 Cell!13645)) (MutLongMapExt!3458 (__x!19727 Int)) )
))
(declare-datatypes ((Cell!13647 0))(
  ( (Cell!13648 (v!32700 MutLongMap!3459)) )
))
(declare-datatypes ((Hashable!3375 0))(
  ( (HashableExt!3374 (__x!19728 Int)) )
))
(declare-datatypes ((MutableMap!3365 0))(
  ( (MutableMapExt!3364 (__x!19729 Int)) (HashMap!3365 (underlying!7122 Cell!13647) (hashF!5407 Hashable!3375) (_size!6962 (_ BitVec 32)) (defaultValue!3536 Int)) )
))
(declare-datatypes ((CacheDown!2182 0))(
  ( (CacheDown!2183 (cache!3508 MutableMap!3365)) )
))
(declare-fun cacheDown!499 () CacheDown!2182)

(declare-fun valid!2679 (CacheDown!2182) Bool)

(assert (=> b!2680198 (= res!1126716 (valid!2679 cacheDown!499))))

(declare-fun b!2680199 () Bool)

(declare-fun e!1689526 () Bool)

(declare-fun e!1689531 () Bool)

(assert (=> b!2680199 (= e!1689526 e!1689531)))

(declare-fun b!2680200 () Bool)

(declare-fun res!1126715 () Bool)

(assert (=> b!2680200 (=> (not res!1126715) (not e!1689533))))

(declare-datatypes ((List!30953 0))(
  ( (Nil!30853) (Cons!30853 (h!36273 (_ BitVec 16)) (t!224454 List!30953)) )
))
(declare-datatypes ((TokenValue!4935 0))(
  ( (FloatLiteralValue!9870 (text!34990 List!30953)) (TokenValueExt!4934 (__x!19730 Int)) (Broken!24675 (value!151907 List!30953)) (Object!5034) (End!4935) (Def!4935) (Underscore!4935) (Match!4935) (Else!4935) (Error!4935) (Case!4935) (If!4935) (Extends!4935) (Abstract!4935) (Class!4935) (Val!4935) (DelimiterValue!9870 (del!4995 List!30953)) (KeywordValue!4941 (value!151908 List!30953)) (CommentValue!9870 (value!151909 List!30953)) (WhitespaceValue!9870 (value!151910 List!30953)) (IndentationValue!4935 (value!151911 List!30953)) (String!34570) (Int32!4935) (Broken!24676 (value!151912 List!30953)) (Boolean!4936) (Unit!45068) (OperatorValue!4938 (op!4995 List!30953)) (IdentifierValue!9870 (value!151913 List!30953)) (IdentifierValue!9871 (value!151914 List!30953)) (WhitespaceValue!9871 (value!151915 List!30953)) (True!9870) (False!9870) (Broken!24677 (value!151916 List!30953)) (Broken!24678 (value!151917 List!30953)) (True!9871) (RightBrace!4935) (RightBracket!4935) (Colon!4935) (Null!4935) (Comma!4935) (LeftBracket!4935) (False!9871) (LeftBrace!4935) (ImaginaryLiteralValue!4935 (text!34991 List!30953)) (StringLiteralValue!14805 (value!151918 List!30953)) (EOFValue!4935 (value!151919 List!30953)) (IdentValue!4935 (value!151920 List!30953)) (DelimiterValue!9871 (value!151921 List!30953)) (DedentValue!4935 (value!151922 List!30953)) (NewLineValue!4935 (value!151923 List!30953)) (IntegerValue!14805 (value!151924 (_ BitVec 32)) (text!34992 List!30953)) (IntegerValue!14806 (value!151925 Int) (text!34993 List!30953)) (Times!4935) (Or!4935) (Equal!4935) (Minus!4935) (Broken!24679 (value!151926 List!30953)) (And!4935) (Div!4935) (LessEqual!4935) (Mod!4935) (Concat!12799) (Not!4935) (Plus!4935) (SpaceValue!4935 (value!151927 List!30953)) (IntegerValue!14807 (value!151928 Int) (text!34994 List!30953)) (StringLiteralValue!14806 (text!34995 List!30953)) (FloatLiteralValue!9871 (text!34996 List!30953)) (BytesLiteralValue!4935 (value!151929 List!30953)) (CommentValue!9871 (value!151930 List!30953)) (StringLiteralValue!14807 (value!151931 List!30953)) (ErrorTokenValue!4935 (msg!4996 List!30953)) )
))
(declare-datatypes ((List!30954 0))(
  ( (Nil!30854) (Cons!30854 (h!36274 C!15884) (t!224455 List!30954)) )
))
(declare-datatypes ((IArray!19315 0))(
  ( (IArray!19316 (innerList!9715 List!30954)) )
))
(declare-datatypes ((Conc!9655 0))(
  ( (Node!9655 (left!23874 Conc!9655) (right!24204 Conc!9655) (csize!19540 Int) (cheight!9866 Int)) (Leaf!14755 (xs!12685 IArray!19315) (csize!19541 Int)) (Empty!9655) )
))
(declare-datatypes ((BalanceConc!18924 0))(
  ( (BalanceConc!18925 (c!431797 Conc!9655)) )
))
(declare-datatypes ((TokenValueInjection!9310 0))(
  ( (TokenValueInjection!9311 (toValue!6667 Int) (toChars!6526 Int)) )
))
(declare-datatypes ((String!34571 0))(
  ( (String!34572 (value!151932 String)) )
))
(declare-datatypes ((Rule!9226 0))(
  ( (Rule!9227 (regex!4713 Regex!7863) (tag!5217 String!34571) (isSeparator!4713 Bool) (transformation!4713 TokenValueInjection!9310)) )
))
(declare-datatypes ((List!30955 0))(
  ( (Nil!30855) (Cons!30855 (h!36275 Rule!9226) (t!224456 List!30955)) )
))
(declare-fun rules!1381 () List!30955)

(declare-fun isEmpty!17663 (List!30955) Bool)

(assert (=> b!2680200 (= res!1126715 (not (isEmpty!17663 rules!1381)))))

(declare-fun b!2680201 () Bool)

(declare-fun e!1689535 () Bool)

(declare-fun e!1689547 () Bool)

(declare-datatypes ((tuple2!30316 0))(
  ( (tuple2!30317 (_1!17708 Context!4274) (_2!17708 C!15884)) )
))
(declare-datatypes ((tuple2!30318 0))(
  ( (tuple2!30319 (_1!17709 tuple2!30316) (_2!17709 (InoxSet Context!4274))) )
))
(declare-datatypes ((List!30956 0))(
  ( (Nil!30856) (Cons!30856 (h!36276 tuple2!30318) (t!224457 List!30956)) )
))
(declare-datatypes ((array!12343 0))(
  ( (array!12344 (arr!5513 (Array (_ BitVec 32) List!30956)) (size!23851 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6920 0))(
  ( (LongMapFixedSize!6921 (defaultEntry!3845 Int) (mask!9128 (_ BitVec 32)) (extraKeys!3709 (_ BitVec 32)) (zeroValue!3719 List!30956) (minValue!3719 List!30956) (_size!6963 (_ BitVec 32)) (_keys!3760 array!12339) (_values!3741 array!12343) (_vacant!3521 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13649 0))(
  ( (Cell!13650 (v!32701 LongMapFixedSize!6920)) )
))
(declare-datatypes ((MutLongMap!3460 0))(
  ( (LongMap!3460 (underlying!7123 Cell!13649)) (MutLongMapExt!3459 (__x!19731 Int)) )
))
(declare-fun lt!944092 () MutLongMap!3460)

(get-info :version)

(assert (=> b!2680201 (= e!1689535 (and e!1689547 ((_ is LongMap!3460) lt!944092)))))

(declare-datatypes ((Hashable!3376 0))(
  ( (HashableExt!3375 (__x!19732 Int)) )
))
(declare-datatypes ((Cell!13651 0))(
  ( (Cell!13652 (v!32702 MutLongMap!3460)) )
))
(declare-datatypes ((MutableMap!3366 0))(
  ( (MutableMapExt!3365 (__x!19733 Int)) (HashMap!3366 (underlying!7124 Cell!13651) (hashF!5408 Hashable!3376) (_size!6964 (_ BitVec 32)) (defaultValue!3537 Int)) )
))
(declare-datatypes ((CacheUp!2080 0))(
  ( (CacheUp!2081 (cache!3509 MutableMap!3366)) )
))
(declare-fun cacheUp!486 () CacheUp!2080)

(assert (=> b!2680201 (= lt!944092 (v!32702 (underlying!7124 (cache!3509 cacheUp!486))))))

(declare-fun b!2680202 () Bool)

(declare-fun e!1689539 () Bool)

(declare-fun e!1689538 () Bool)

(assert (=> b!2680202 (= e!1689539 e!1689538)))

(assert (=> b!2680203 (= e!1689538 (and e!1689535 tp!847495))))

(declare-fun mapNonEmpty!15857 () Bool)

(declare-fun mapRes!15858 () Bool)

(declare-fun tp!847505 () Bool)

(declare-fun tp!847508 () Bool)

(assert (=> mapNonEmpty!15857 (= mapRes!15858 (and tp!847505 tp!847508))))

(declare-fun mapRest!15857 () (Array (_ BitVec 32) List!30952))

(declare-fun mapValue!15857 () List!30952)

(declare-fun mapKey!15858 () (_ BitVec 32))

(assert (=> mapNonEmpty!15857 (= (arr!5512 (_values!3740 (v!32699 (underlying!7121 (v!32700 (underlying!7122 (cache!3508 cacheDown!499))))))) (store mapRest!15857 mapKey!15858 mapValue!15857))))

(declare-fun b!2680204 () Bool)

(declare-fun e!1689546 () Bool)

(declare-fun input!780 () BalanceConc!18924)

(declare-fun tp!847499 () Bool)

(declare-fun inv!41883 (Conc!9655) Bool)

(assert (=> b!2680204 (= e!1689546 (and (inv!41883 (c!431797 input!780)) tp!847499))))

(declare-fun b!2680205 () Bool)

(declare-fun e!1689534 () Bool)

(declare-fun totalInput!354 () BalanceConc!18924)

(declare-fun tp!847498 () Bool)

(assert (=> b!2680205 (= e!1689534 (and (inv!41883 (c!431797 totalInput!354)) tp!847498))))

(declare-fun tp!847512 () Bool)

(declare-fun tp!847502 () Bool)

(declare-fun e!1689524 () Bool)

(declare-fun array_inv!3936 (array!12339) Bool)

(declare-fun array_inv!3937 (array!12343) Bool)

(assert (=> b!2680206 (= e!1689531 (and tp!847501 tp!847502 tp!847512 (array_inv!3936 (_keys!3760 (v!32701 (underlying!7123 (v!32702 (underlying!7124 (cache!3509 cacheUp!486))))))) (array_inv!3937 (_values!3741 (v!32701 (underlying!7123 (v!32702 (underlying!7124 (cache!3509 cacheUp!486))))))) e!1689524))))

(declare-fun mapNonEmpty!15858 () Bool)

(declare-fun mapRes!15857 () Bool)

(declare-fun tp!847503 () Bool)

(declare-fun tp!847496 () Bool)

(assert (=> mapNonEmpty!15858 (= mapRes!15857 (and tp!847503 tp!847496))))

(declare-fun mapRest!15858 () (Array (_ BitVec 32) List!30956))

(declare-fun mapValue!15858 () List!30956)

(declare-fun mapKey!15857 () (_ BitVec 32))

(assert (=> mapNonEmpty!15858 (= (arr!5513 (_values!3741 (v!32701 (underlying!7123 (v!32702 (underlying!7124 (cache!3509 cacheUp!486))))))) (store mapRest!15858 mapKey!15857 mapValue!15858))))

(declare-fun tp!847511 () Bool)

(declare-fun e!1689530 () Bool)

(declare-fun tp!847510 () Bool)

(declare-fun e!1689544 () Bool)

(declare-fun array_inv!3938 (array!12341) Bool)

(assert (=> b!2680207 (= e!1689544 (and tp!847509 tp!847510 tp!847511 (array_inv!3936 (_keys!3759 (v!32699 (underlying!7121 (v!32700 (underlying!7122 (cache!3508 cacheDown!499))))))) (array_inv!3938 (_values!3740 (v!32699 (underlying!7121 (v!32700 (underlying!7122 (cache!3508 cacheDown!499))))))) e!1689530))))

(declare-fun b!2680208 () Bool)

(declare-fun e!1689540 () Bool)

(declare-fun e!1689527 () Bool)

(assert (=> b!2680208 (= e!1689540 e!1689527)))

(declare-fun b!2680209 () Bool)

(declare-fun res!1126717 () Bool)

(assert (=> b!2680209 (=> (not res!1126717) (not e!1689533))))

(declare-fun valid!2680 (CacheUp!2080) Bool)

(assert (=> b!2680209 (= res!1126717 (valid!2680 cacheUp!486))))

(declare-fun b!2680210 () Bool)

(declare-fun tp!847493 () Bool)

(assert (=> b!2680210 (= e!1689524 (and tp!847493 mapRes!15857))))

(declare-fun condMapEmpty!15857 () Bool)

(declare-fun mapDefault!15857 () List!30956)

(assert (=> b!2680210 (= condMapEmpty!15857 (= (arr!5513 (_values!3741 (v!32701 (underlying!7123 (v!32702 (underlying!7124 (cache!3509 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!30956)) mapDefault!15857)))))

(declare-fun mapIsEmpty!15857 () Bool)

(assert (=> mapIsEmpty!15857 mapRes!15857))

(declare-fun res!1126714 () Bool)

(assert (=> start!261104 (=> (not res!1126714) (not e!1689533))))

(declare-datatypes ((LexerInterface!4310 0))(
  ( (LexerInterfaceExt!4307 (__x!19734 Int)) (Lexer!4308) )
))
(declare-fun thiss!12257 () LexerInterface!4310)

(assert (=> start!261104 (= res!1126714 ((_ is Lexer!4308) thiss!12257))))

(assert (=> start!261104 e!1689533))

(declare-fun inv!41884 (BalanceConc!18924) Bool)

(assert (=> start!261104 (and (inv!41884 totalInput!354) e!1689534)))

(declare-fun inv!41885 (CacheUp!2080) Bool)

(assert (=> start!261104 (and (inv!41885 cacheUp!486) e!1689539)))

(assert (=> start!261104 (and (inv!41884 input!780) e!1689546)))

(declare-fun treated!26 () BalanceConc!18924)

(declare-fun e!1689528 () Bool)

(assert (=> start!261104 (and (inv!41884 treated!26) e!1689528)))

(declare-fun e!1689525 () Bool)

(assert (=> start!261104 e!1689525))

(assert (=> start!261104 true))

(declare-fun inv!41886 (CacheDown!2182) Bool)

(assert (=> start!261104 (and (inv!41886 cacheDown!499) e!1689540)))

(declare-fun mapIsEmpty!15858 () Bool)

(assert (=> mapIsEmpty!15858 mapRes!15858))

(declare-fun e!1689541 () Bool)

(assert (=> b!2680211 (= e!1689527 (and e!1689541 tp!847494))))

(declare-fun b!2680212 () Bool)

(declare-fun tp!847506 () Bool)

(assert (=> b!2680212 (= e!1689528 (and (inv!41883 (c!431797 treated!26)) tp!847506))))

(declare-fun b!2680213 () Bool)

(declare-fun tp!847492 () Bool)

(assert (=> b!2680213 (= e!1689530 (and tp!847492 mapRes!15858))))

(declare-fun condMapEmpty!15858 () Bool)

(declare-fun mapDefault!15858 () List!30952)

(assert (=> b!2680213 (= condMapEmpty!15858 (= (arr!5512 (_values!3740 (v!32699 (underlying!7121 (v!32700 (underlying!7122 (cache!3508 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!30952)) mapDefault!15858)))))

(declare-fun b!2680214 () Bool)

(declare-fun e!1689532 () Bool)

(declare-fun e!1689536 () Bool)

(assert (=> b!2680214 (= e!1689532 e!1689536)))

(declare-fun b!2680215 () Bool)

(declare-fun e!1689529 () Bool)

(declare-fun tp!847497 () Bool)

(assert (=> b!2680215 (= e!1689525 (and e!1689529 tp!847497))))

(declare-fun b!2680216 () Bool)

(assert (=> b!2680216 (= e!1689533 false)))

(declare-fun lt!944095 () List!30954)

(declare-fun lt!944093 () List!30954)

(declare-fun lt!944094 () List!30954)

(declare-fun ++!7534 (List!30954 List!30954) List!30954)

(assert (=> b!2680216 (= lt!944095 (++!7534 lt!944093 lt!944094))))

(declare-fun lt!944091 () List!30954)

(declare-fun list!11660 (BalanceConc!18924) List!30954)

(assert (=> b!2680216 (= lt!944091 (list!11660 totalInput!354))))

(assert (=> b!2680216 (= lt!944094 (list!11660 input!780))))

(assert (=> b!2680216 (= lt!944093 (list!11660 treated!26))))

(declare-fun tp!847504 () Bool)

(declare-fun b!2680217 () Bool)

(declare-fun e!1689545 () Bool)

(declare-fun inv!41880 (String!34571) Bool)

(declare-fun inv!41887 (TokenValueInjection!9310) Bool)

(assert (=> b!2680217 (= e!1689529 (and tp!847504 (inv!41880 (tag!5217 (h!36275 rules!1381))) (inv!41887 (transformation!4713 (h!36275 rules!1381))) e!1689545))))

(assert (=> b!2680218 (= e!1689545 (and tp!847500 tp!847507))))

(declare-fun b!2680219 () Bool)

(declare-fun lt!944096 () MutLongMap!3459)

(assert (=> b!2680219 (= e!1689541 (and e!1689532 ((_ is LongMap!3459) lt!944096)))))

(assert (=> b!2680219 (= lt!944096 (v!32700 (underlying!7122 (cache!3508 cacheDown!499))))))

(declare-fun b!2680220 () Bool)

(declare-fun res!1126713 () Bool)

(assert (=> b!2680220 (=> (not res!1126713) (not e!1689533))))

(declare-fun rulesInvariant!3810 (LexerInterface!4310 List!30955) Bool)

(assert (=> b!2680220 (= res!1126713 (rulesInvariant!3810 thiss!12257 rules!1381))))

(declare-fun b!2680221 () Bool)

(assert (=> b!2680221 (= e!1689536 e!1689544)))

(declare-fun b!2680222 () Bool)

(assert (=> b!2680222 (= e!1689547 e!1689526)))

(assert (= (and start!261104 res!1126714) b!2680200))

(assert (= (and b!2680200 res!1126715) b!2680220))

(assert (= (and b!2680220 res!1126713) b!2680209))

(assert (= (and b!2680209 res!1126717) b!2680198))

(assert (= (and b!2680198 res!1126716) b!2680216))

(assert (= start!261104 b!2680205))

(assert (= (and b!2680210 condMapEmpty!15857) mapIsEmpty!15857))

(assert (= (and b!2680210 (not condMapEmpty!15857)) mapNonEmpty!15858))

(assert (= b!2680206 b!2680210))

(assert (= b!2680199 b!2680206))

(assert (= b!2680222 b!2680199))

(assert (= (and b!2680201 ((_ is LongMap!3460) (v!32702 (underlying!7124 (cache!3509 cacheUp!486))))) b!2680222))

(assert (= b!2680203 b!2680201))

(assert (= (and b!2680202 ((_ is HashMap!3366) (cache!3509 cacheUp!486))) b!2680203))

(assert (= start!261104 b!2680202))

(assert (= start!261104 b!2680204))

(assert (= start!261104 b!2680212))

(assert (= b!2680217 b!2680218))

(assert (= b!2680215 b!2680217))

(assert (= (and start!261104 ((_ is Cons!30855) rules!1381)) b!2680215))

(assert (= (and b!2680213 condMapEmpty!15858) mapIsEmpty!15858))

(assert (= (and b!2680213 (not condMapEmpty!15858)) mapNonEmpty!15857))

(assert (= b!2680207 b!2680213))

(assert (= b!2680221 b!2680207))

(assert (= b!2680214 b!2680221))

(assert (= (and b!2680219 ((_ is LongMap!3459) (v!32700 (underlying!7122 (cache!3508 cacheDown!499))))) b!2680214))

(assert (= b!2680211 b!2680219))

(assert (= (and b!2680208 ((_ is HashMap!3365) (cache!3508 cacheDown!499))) b!2680211))

(assert (= start!261104 b!2680208))

(declare-fun m!3048467 () Bool)

(assert (=> b!2680220 m!3048467))

(declare-fun m!3048469 () Bool)

(assert (=> b!2680216 m!3048469))

(declare-fun m!3048471 () Bool)

(assert (=> b!2680216 m!3048471))

(declare-fun m!3048473 () Bool)

(assert (=> b!2680216 m!3048473))

(declare-fun m!3048475 () Bool)

(assert (=> b!2680216 m!3048475))

(declare-fun m!3048477 () Bool)

(assert (=> b!2680209 m!3048477))

(declare-fun m!3048479 () Bool)

(assert (=> b!2680206 m!3048479))

(declare-fun m!3048481 () Bool)

(assert (=> b!2680206 m!3048481))

(declare-fun m!3048483 () Bool)

(assert (=> b!2680217 m!3048483))

(declare-fun m!3048485 () Bool)

(assert (=> b!2680217 m!3048485))

(declare-fun m!3048487 () Bool)

(assert (=> b!2680204 m!3048487))

(declare-fun m!3048489 () Bool)

(assert (=> b!2680207 m!3048489))

(declare-fun m!3048491 () Bool)

(assert (=> b!2680207 m!3048491))

(declare-fun m!3048493 () Bool)

(assert (=> mapNonEmpty!15857 m!3048493))

(declare-fun m!3048495 () Bool)

(assert (=> b!2680200 m!3048495))

(declare-fun m!3048497 () Bool)

(assert (=> start!261104 m!3048497))

(declare-fun m!3048499 () Bool)

(assert (=> start!261104 m!3048499))

(declare-fun m!3048501 () Bool)

(assert (=> start!261104 m!3048501))

(declare-fun m!3048503 () Bool)

(assert (=> start!261104 m!3048503))

(declare-fun m!3048505 () Bool)

(assert (=> start!261104 m!3048505))

(declare-fun m!3048507 () Bool)

(assert (=> mapNonEmpty!15858 m!3048507))

(declare-fun m!3048509 () Bool)

(assert (=> b!2680212 m!3048509))

(declare-fun m!3048511 () Bool)

(assert (=> b!2680205 m!3048511))

(declare-fun m!3048513 () Bool)

(assert (=> b!2680198 m!3048513))

(check-sat (not b!2680217) b_and!198429 (not b!2680220) (not b_next!76341) (not mapNonEmpty!15857) (not b_next!76345) b_and!198433 (not start!261104) (not b_next!76339) b_and!198439 b_and!198437 (not b!2680198) (not b_next!76337) b_and!198435 (not b!2680204) (not b_next!76347) (not b!2680213) (not b!2680205) (not mapNonEmpty!15858) (not b_next!76343) (not b!2680207) (not b!2680210) b_and!198431 (not b!2680215) (not b!2680209) (not b!2680216) (not b!2680212) (not b!2680206) (not b!2680200))
(check-sat b_and!198429 (not b_next!76343) (not b_next!76341) b_and!198431 (not b_next!76345) b_and!198433 (not b_next!76339) b_and!198439 b_and!198437 (not b_next!76337) b_and!198435 (not b_next!76347))
