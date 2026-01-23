; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201128 () Bool)

(assert start!201128)

(declare-fun b!2040796 () Bool)

(declare-fun b_free!56873 () Bool)

(declare-fun b_next!57577 () Bool)

(assert (=> b!2040796 (= b_free!56873 (not b_next!57577))))

(declare-fun tp!605673 () Bool)

(declare-fun b_and!162813 () Bool)

(assert (=> b!2040796 (= tp!605673 b_and!162813)))

(declare-fun b_free!56875 () Bool)

(declare-fun b_next!57579 () Bool)

(assert (=> b!2040796 (= b_free!56875 (not b_next!57579))))

(declare-fun tp!605670 () Bool)

(declare-fun b_and!162815 () Bool)

(assert (=> b!2040796 (= tp!605670 b_and!162815)))

(declare-fun b!2040783 () Bool)

(declare-fun b_free!56877 () Bool)

(declare-fun b_next!57581 () Bool)

(assert (=> b!2040783 (= b_free!56877 (not b_next!57581))))

(declare-fun tp!605663 () Bool)

(declare-fun b_and!162817 () Bool)

(assert (=> b!2040783 (= tp!605663 b_and!162817)))

(declare-fun b!2040799 () Bool)

(declare-fun b_free!56879 () Bool)

(declare-fun b_next!57583 () Bool)

(assert (=> b!2040799 (= b_free!56879 (not b_next!57583))))

(declare-fun tp!605675 () Bool)

(declare-fun b_and!162819 () Bool)

(assert (=> b!2040799 (= tp!605675 b_and!162819)))

(declare-fun b!2040787 () Bool)

(declare-fun b_free!56881 () Bool)

(declare-fun b_next!57585 () Bool)

(assert (=> b!2040787 (= b_free!56881 (not b_next!57585))))

(declare-fun tp!605666 () Bool)

(declare-fun b_and!162821 () Bool)

(assert (=> b!2040787 (= tp!605666 b_and!162821)))

(declare-fun b!2040771 () Bool)

(declare-fun b_free!56883 () Bool)

(declare-fun b_next!57587 () Bool)

(assert (=> b!2040771 (= b_free!56883 (not b_next!57587))))

(declare-fun tp!605676 () Bool)

(declare-fun b_and!162823 () Bool)

(assert (=> b!2040771 (= tp!605676 b_and!162823)))

(declare-fun b!2040769 () Bool)

(declare-fun e!1288494 () Bool)

(declare-fun e!1288495 () Bool)

(declare-datatypes ((C!11004 0))(
  ( (C!11005 (val!6488 Int)) )
))
(declare-datatypes ((Regex!5429 0))(
  ( (ElementMatch!5429 (c!330710 C!11004)) (Concat!9568 (regOne!11370 Regex!5429) (regTwo!11370 Regex!5429)) (EmptyExpr!5429) (Star!5429 (reg!5758 Regex!5429)) (EmptyLang!5429) (Union!5429 (regOne!11371 Regex!5429) (regTwo!11371 Regex!5429)) )
))
(declare-datatypes ((List!22387 0))(
  ( (Nil!22303) (Cons!22303 (h!27704 Regex!5429) (t!191496 List!22387)) )
))
(declare-datatypes ((Context!1998 0))(
  ( (Context!1999 (exprs!1499 List!22387)) )
))
(declare-datatypes ((tuple3!2016 0))(
  ( (tuple3!2017 (_1!11952 Regex!5429) (_2!11952 Context!1998) (_3!1472 C!11004)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!20960 0))(
  ( (tuple2!20961 (_1!11953 tuple3!2016) (_2!11953 (InoxSet Context!1998))) )
))
(declare-datatypes ((List!22388 0))(
  ( (Nil!22304) (Cons!22304 (h!27705 tuple2!20960) (t!191497 List!22388)) )
))
(declare-datatypes ((array!6811 0))(
  ( (array!6812 (arr!3025 (Array (_ BitVec 32) (_ BitVec 64))) (size!17451 (_ BitVec 32))) )
))
(declare-datatypes ((array!6813 0))(
  ( (array!6814 (arr!3026 (Array (_ BitVec 32) List!22388)) (size!17452 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3950 0))(
  ( (LongMapFixedSize!3951 (defaultEntry!2340 Int) (mask!6005 (_ BitVec 32)) (extraKeys!2223 (_ BitVec 32)) (zeroValue!2233 List!22388) (minValue!2233 List!22388) (_size!4001 (_ BitVec 32)) (_keys!2272 array!6811) (_values!2255 array!6813) (_vacant!2036 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7725 0))(
  ( (Cell!7726 (v!27037 LongMapFixedSize!3950)) )
))
(declare-datatypes ((MutLongMap!1975 0))(
  ( (LongMap!1975 (underlying!4145 Cell!7725)) (MutLongMapExt!1974 (__x!13791 Int)) )
))
(declare-fun lt!765595 () MutLongMap!1975)

(get-info :version)

(assert (=> b!2040769 (= e!1288494 (and e!1288495 ((_ is LongMap!1975) lt!765595)))))

(declare-datatypes ((Hashable!1889 0))(
  ( (HashableExt!1888 (__x!13792 Int)) )
))
(declare-datatypes ((Cell!7727 0))(
  ( (Cell!7728 (v!27038 MutLongMap!1975)) )
))
(declare-datatypes ((MutableMap!1889 0))(
  ( (MutableMapExt!1888 (__x!13793 Int)) (HashMap!1889 (underlying!4146 Cell!7727) (hashF!3812 Hashable!1889) (_size!4002 (_ BitVec 32)) (defaultValue!2051 Int)) )
))
(declare-datatypes ((CacheDown!1186 0))(
  ( (CacheDown!1187 (cache!2270 MutableMap!1889)) )
))
(declare-fun cacheDown!575 () CacheDown!1186)

(assert (=> b!2040769 (= lt!765595 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))

(declare-fun mapIsEmpty!9136 () Bool)

(declare-fun mapRes!9136 () Bool)

(assert (=> mapIsEmpty!9136 mapRes!9136))

(declare-fun e!1288477 () Bool)

(declare-fun e!1288474 () Bool)

(declare-datatypes ((List!22389 0))(
  ( (Nil!22305) (Cons!22305 (h!27706 (_ BitVec 16)) (t!191498 List!22389)) )
))
(declare-datatypes ((TokenValue!4139 0))(
  ( (FloatLiteralValue!8278 (text!29418 List!22389)) (TokenValueExt!4138 (__x!13794 Int)) (Broken!20695 (value!125710 List!22389)) (Object!4222) (End!4139) (Def!4139) (Underscore!4139) (Match!4139) (Else!4139) (Error!4139) (Case!4139) (If!4139) (Extends!4139) (Abstract!4139) (Class!4139) (Val!4139) (DelimiterValue!8278 (del!4199 List!22389)) (KeywordValue!4145 (value!125711 List!22389)) (CommentValue!8278 (value!125712 List!22389)) (WhitespaceValue!8278 (value!125713 List!22389)) (IndentationValue!4139 (value!125714 List!22389)) (String!25882) (Int32!4139) (Broken!20696 (value!125715 List!22389)) (Boolean!4140) (Unit!36990) (OperatorValue!4142 (op!4199 List!22389)) (IdentifierValue!8278 (value!125716 List!22389)) (IdentifierValue!8279 (value!125717 List!22389)) (WhitespaceValue!8279 (value!125718 List!22389)) (True!8278) (False!8278) (Broken!20697 (value!125719 List!22389)) (Broken!20698 (value!125720 List!22389)) (True!8279) (RightBrace!4139) (RightBracket!4139) (Colon!4139) (Null!4139) (Comma!4139) (LeftBracket!4139) (False!8279) (LeftBrace!4139) (ImaginaryLiteralValue!4139 (text!29419 List!22389)) (StringLiteralValue!12417 (value!125721 List!22389)) (EOFValue!4139 (value!125722 List!22389)) (IdentValue!4139 (value!125723 List!22389)) (DelimiterValue!8279 (value!125724 List!22389)) (DedentValue!4139 (value!125725 List!22389)) (NewLineValue!4139 (value!125726 List!22389)) (IntegerValue!12417 (value!125727 (_ BitVec 32)) (text!29420 List!22389)) (IntegerValue!12418 (value!125728 Int) (text!29421 List!22389)) (Times!4139) (Or!4139) (Equal!4139) (Minus!4139) (Broken!20699 (value!125729 List!22389)) (And!4139) (Div!4139) (LessEqual!4139) (Mod!4139) (Concat!9569) (Not!4139) (Plus!4139) (SpaceValue!4139 (value!125730 List!22389)) (IntegerValue!12419 (value!125731 Int) (text!29422 List!22389)) (StringLiteralValue!12418 (text!29423 List!22389)) (FloatLiteralValue!8279 (text!29424 List!22389)) (BytesLiteralValue!4139 (value!125732 List!22389)) (CommentValue!8279 (value!125733 List!22389)) (StringLiteralValue!12419 (value!125734 List!22389)) (ErrorTokenValue!4139 (msg!4200 List!22389)) )
))
(declare-datatypes ((List!22390 0))(
  ( (Nil!22306) (Cons!22306 (h!27707 C!11004) (t!191499 List!22390)) )
))
(declare-datatypes ((IArray!14967 0))(
  ( (IArray!14968 (innerList!7541 List!22390)) )
))
(declare-datatypes ((Conc!7481 0))(
  ( (Node!7481 (left!17758 Conc!7481) (right!18088 Conc!7481) (csize!15192 Int) (cheight!7692 Int)) (Leaf!10963 (xs!10387 IArray!14967) (csize!15193 Int)) (Empty!7481) )
))
(declare-datatypes ((BalanceConc!14724 0))(
  ( (BalanceConc!14725 (c!330711 Conc!7481)) )
))
(declare-datatypes ((String!25883 0))(
  ( (String!25884 (value!125735 String)) )
))
(declare-datatypes ((TokenValueInjection!7862 0))(
  ( (TokenValueInjection!7863 (toValue!5684 Int) (toChars!5543 Int)) )
))
(declare-datatypes ((Rule!7806 0))(
  ( (Rule!7807 (regex!4003 Regex!5429) (tag!4493 String!25883) (isSeparator!4003 Bool) (transformation!4003 TokenValueInjection!7862)) )
))
(declare-datatypes ((List!22391 0))(
  ( (Nil!22307) (Cons!22307 (h!27708 Rule!7806) (t!191500 List!22391)) )
))
(declare-fun rules!1563 () List!22391)

(declare-fun b!2040770 () Bool)

(declare-fun tp!605674 () Bool)

(declare-fun inv!29636 (String!25883) Bool)

(declare-fun inv!29637 (TokenValueInjection!7862) Bool)

(assert (=> b!2040770 (= e!1288477 (and tp!605674 (inv!29636 (tag!4493 (h!27708 rules!1563))) (inv!29637 (transformation!4003 (h!27708 rules!1563))) e!1288474))))

(declare-fun e!1288496 () Bool)

(declare-fun e!1288471 () Bool)

(assert (=> b!2040771 (= e!1288496 (and e!1288471 tp!605676))))

(declare-fun b!2040772 () Bool)

(declare-fun e!1288497 () Bool)

(declare-datatypes ((LexerInterface!3616 0))(
  ( (LexerInterfaceExt!3613 (__x!13795 Int)) (Lexer!3614) )
))
(declare-fun thiss!12889 () LexerInterface!3616)

(declare-fun rulesValidInductive!1390 (LexerInterface!3616 List!22391) Bool)

(assert (=> b!2040772 (= e!1288497 (rulesValidInductive!1390 thiss!12889 rules!1563))))

(declare-fun b!2040773 () Bool)

(declare-fun res!894499 () Bool)

(declare-fun e!1288480 () Bool)

(assert (=> b!2040773 (=> (not res!894499) (not e!1288480))))

(declare-fun valid!1575 (CacheDown!1186) Bool)

(assert (=> b!2040773 (= res!894499 (valid!1575 cacheDown!575))))

(declare-fun b!2040774 () Bool)

(declare-fun e!1288488 () Bool)

(assert (=> b!2040774 (= e!1288495 e!1288488)))

(declare-fun b!2040775 () Bool)

(declare-fun e!1288479 () Bool)

(assert (=> b!2040775 (= e!1288479 e!1288496)))

(declare-fun b!2040776 () Bool)

(declare-fun e!1288492 () Bool)

(declare-fun totalInput!418 () BalanceConc!14724)

(declare-fun tp!605664 () Bool)

(declare-fun inv!29638 (Conc!7481) Bool)

(assert (=> b!2040776 (= e!1288492 (and (inv!29638 (c!330711 totalInput!418)) tp!605664))))

(declare-fun b!2040777 () Bool)

(declare-fun res!894508 () Bool)

(declare-fun e!1288475 () Bool)

(assert (=> b!2040777 (=> (not res!894508) (not e!1288475))))

(declare-fun isEmpty!13945 (List!22391) Bool)

(assert (=> b!2040777 (= res!894508 (not (isEmpty!13945 rules!1563)))))

(declare-fun b!2040778 () Bool)

(declare-fun e!1288482 () Bool)

(declare-fun e!1288489 () Bool)

(assert (=> b!2040778 (= e!1288482 e!1288489)))

(declare-fun res!894505 () Bool)

(assert (=> b!2040778 (=> (not res!894505) (not e!1288489))))

(declare-datatypes ((Token!7556 0))(
  ( (Token!7557 (value!125736 TokenValue!4139) (rule!6239 Rule!7806) (size!17453 Int) (originalCharacters!4809 List!22390)) )
))
(declare-datatypes ((List!22392 0))(
  ( (Nil!22308) (Cons!22308 (h!27709 Token!7556) (t!191501 List!22392)) )
))
(declare-datatypes ((IArray!14969 0))(
  ( (IArray!14970 (innerList!7542 List!22392)) )
))
(declare-datatypes ((Conc!7482 0))(
  ( (Node!7482 (left!17759 Conc!7482) (right!18089 Conc!7482) (csize!15194 Int) (cheight!7693 Int)) (Leaf!10964 (xs!10388 IArray!14969) (csize!15195 Int)) (Empty!7482) )
))
(declare-datatypes ((BalanceConc!14726 0))(
  ( (BalanceConc!14727 (c!330712 Conc!7482)) )
))
(declare-datatypes ((tuple2!20962 0))(
  ( (tuple2!20963 (_1!11954 BalanceConc!14726) (_2!11954 BalanceConc!14724)) )
))
(declare-fun lt!765596 () tuple2!20962)

(declare-fun acc!382 () BalanceConc!14726)

(declare-fun list!9150 (BalanceConc!14726) List!22392)

(assert (=> b!2040778 (= res!894505 (= (list!9150 (_1!11954 lt!765596)) (list!9150 acc!382)))))

(declare-fun treated!60 () BalanceConc!14724)

(declare-fun lexRec!421 (LexerInterface!3616 List!22391 BalanceConc!14724) tuple2!20962)

(assert (=> b!2040778 (= lt!765596 (lexRec!421 thiss!12889 rules!1563 treated!60))))

(declare-fun b!2040779 () Bool)

(assert (=> b!2040779 (= e!1288489 e!1288480)))

(declare-fun res!894500 () Bool)

(assert (=> b!2040779 (=> (not res!894500) (not e!1288480))))

(declare-fun lt!765587 () tuple2!20962)

(declare-fun lt!765590 () tuple2!20962)

(declare-fun ++!6060 (BalanceConc!14726 BalanceConc!14726) BalanceConc!14726)

(assert (=> b!2040779 (= res!894500 (= (list!9150 (_1!11954 lt!765590)) (list!9150 (++!6060 acc!382 (_1!11954 lt!765587)))))))

(declare-fun input!986 () BalanceConc!14724)

(assert (=> b!2040779 (= lt!765587 (lexRec!421 thiss!12889 rules!1563 input!986))))

(assert (=> b!2040779 (= lt!765590 (lexRec!421 thiss!12889 rules!1563 totalInput!418))))

(declare-fun b!2040780 () Bool)

(declare-fun res!894503 () Bool)

(assert (=> b!2040780 (=> (not res!894503) (not e!1288480))))

(declare-fun list!9151 (BalanceConc!14724) List!22390)

(assert (=> b!2040780 (= res!894503 (= (list!9151 (_2!11954 lt!765590)) (list!9151 (_2!11954 lt!765587))))))

(declare-fun b!2040781 () Bool)

(declare-fun e!1288493 () Bool)

(declare-fun e!1288487 () Bool)

(assert (=> b!2040781 (= e!1288493 e!1288487)))

(declare-fun b!2040782 () Bool)

(declare-fun e!1288499 () Bool)

(declare-fun tp!605665 () Bool)

(declare-fun mapRes!9137 () Bool)

(assert (=> b!2040782 (= e!1288499 (and tp!605665 mapRes!9137))))

(declare-fun condMapEmpty!9136 () Bool)

(declare-datatypes ((tuple2!20964 0))(
  ( (tuple2!20965 (_1!11955 Context!1998) (_2!11955 C!11004)) )
))
(declare-datatypes ((tuple2!20966 0))(
  ( (tuple2!20967 (_1!11956 tuple2!20964) (_2!11956 (InoxSet Context!1998))) )
))
(declare-datatypes ((List!22393 0))(
  ( (Nil!22309) (Cons!22309 (h!27710 tuple2!20966) (t!191502 List!22393)) )
))
(declare-datatypes ((array!6815 0))(
  ( (array!6816 (arr!3027 (Array (_ BitVec 32) List!22393)) (size!17454 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3952 0))(
  ( (LongMapFixedSize!3953 (defaultEntry!2341 Int) (mask!6006 (_ BitVec 32)) (extraKeys!2224 (_ BitVec 32)) (zeroValue!2234 List!22393) (minValue!2234 List!22393) (_size!4003 (_ BitVec 32)) (_keys!2273 array!6811) (_values!2256 array!6815) (_vacant!2037 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7729 0))(
  ( (Cell!7730 (v!27039 LongMapFixedSize!3952)) )
))
(declare-datatypes ((MutLongMap!1976 0))(
  ( (LongMap!1976 (underlying!4147 Cell!7729)) (MutLongMapExt!1975 (__x!13796 Int)) )
))
(declare-datatypes ((Hashable!1890 0))(
  ( (HashableExt!1889 (__x!13797 Int)) )
))
(declare-datatypes ((Cell!7731 0))(
  ( (Cell!7732 (v!27040 MutLongMap!1976)) )
))
(declare-datatypes ((MutableMap!1890 0))(
  ( (MutableMapExt!1889 (__x!13798 Int)) (HashMap!1890 (underlying!4148 Cell!7731) (hashF!3813 Hashable!1890) (_size!4004 (_ BitVec 32)) (defaultValue!2052 Int)) )
))
(declare-datatypes ((CacheUp!1186 0))(
  ( (CacheUp!1187 (cache!2271 MutableMap!1890)) )
))
(declare-fun cacheUp!562 () CacheUp!1186)

(declare-fun mapDefault!9136 () List!22393)

(assert (=> b!2040782 (= condMapEmpty!9136 (= (arr!3027 (_values!2256 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22393)) mapDefault!9136)))))

(declare-fun e!1288490 () Bool)

(declare-fun e!1288486 () Bool)

(declare-fun tp!605655 () Bool)

(declare-fun tp!605668 () Bool)

(declare-fun array_inv!2169 (array!6811) Bool)

(declare-fun array_inv!2170 (array!6813) Bool)

(assert (=> b!2040783 (= e!1288486 (and tp!605663 tp!605668 tp!605655 (array_inv!2169 (_keys!2272 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))) (array_inv!2170 (_values!2255 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))) e!1288490))))

(declare-fun b!2040784 () Bool)

(declare-fun e!1288478 () Bool)

(declare-fun tp!605660 () Bool)

(declare-fun inv!29639 (Conc!7482) Bool)

(assert (=> b!2040784 (= e!1288478 (and (inv!29639 (c!330712 acc!382)) tp!605660))))

(declare-fun b!2040785 () Bool)

(declare-fun res!894502 () Bool)

(assert (=> b!2040785 (=> (not res!894502) (not e!1288475))))

(declare-fun rulesInvariant!3222 (LexerInterface!3616 List!22391) Bool)

(assert (=> b!2040785 (= res!894502 (rulesInvariant!3222 thiss!12889 rules!1563))))

(declare-fun b!2040786 () Bool)

(declare-fun e!1288483 () Bool)

(declare-fun lt!765593 () MutLongMap!1976)

(assert (=> b!2040786 (= e!1288471 (and e!1288483 ((_ is LongMap!1976) lt!765593)))))

(assert (=> b!2040786 (= lt!765593 (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))))

(declare-fun mapIsEmpty!9137 () Bool)

(assert (=> mapIsEmpty!9137 mapRes!9137))

(declare-fun tp!605667 () Bool)

(declare-fun tp!605669 () Bool)

(declare-fun array_inv!2171 (array!6815) Bool)

(assert (=> b!2040787 (= e!1288487 (and tp!605666 tp!605667 tp!605669 (array_inv!2169 (_keys!2273 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))))) (array_inv!2171 (_values!2256 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))))) e!1288499))))

(declare-fun mapNonEmpty!9136 () Bool)

(declare-fun tp!605658 () Bool)

(declare-fun tp!605672 () Bool)

(assert (=> mapNonEmpty!9136 (= mapRes!9136 (and tp!605658 tp!605672))))

(declare-fun mapRest!9137 () (Array (_ BitVec 32) List!22388))

(declare-fun mapValue!9136 () List!22388)

(declare-fun mapKey!9137 () (_ BitVec 32))

(assert (=> mapNonEmpty!9136 (= (arr!3026 (_values!2255 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))) (store mapRest!9137 mapKey!9137 mapValue!9136))))

(declare-fun b!2040788 () Bool)

(declare-fun e!1288481 () Bool)

(declare-fun e!1288491 () Bool)

(assert (=> b!2040788 (= e!1288481 e!1288491)))

(declare-fun b!2040789 () Bool)

(declare-fun res!894504 () Bool)

(assert (=> b!2040789 (=> (not res!894504) (not e!1288489))))

(declare-fun isEmpty!13946 (List!22390) Bool)

(assert (=> b!2040789 (= res!894504 (isEmpty!13946 (list!9151 (_2!11954 lt!765596))))))

(declare-fun mapNonEmpty!9137 () Bool)

(declare-fun tp!605657 () Bool)

(declare-fun tp!605671 () Bool)

(assert (=> mapNonEmpty!9137 (= mapRes!9137 (and tp!605657 tp!605671))))

(declare-fun mapRest!9136 () (Array (_ BitVec 32) List!22393))

(declare-fun mapValue!9137 () List!22393)

(declare-fun mapKey!9136 () (_ BitVec 32))

(assert (=> mapNonEmpty!9137 (= (arr!3027 (_values!2256 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))))) (store mapRest!9136 mapKey!9136 mapValue!9137))))

(declare-fun b!2040790 () Bool)

(declare-fun res!894501 () Bool)

(assert (=> b!2040790 (=> (not res!894501) (not e!1288480))))

(declare-fun valid!1576 (CacheUp!1186) Bool)

(assert (=> b!2040790 (= res!894501 (valid!1576 cacheUp!562))))

(declare-fun b!2040791 () Bool)

(assert (=> b!2040791 (= e!1288483 e!1288493)))

(declare-fun b!2040792 () Bool)

(assert (=> b!2040792 (= e!1288480 (not e!1288497))))

(declare-fun res!894509 () Bool)

(assert (=> b!2040792 (=> res!894509 e!1288497)))

(declare-fun lt!765594 () List!22390)

(declare-fun lt!765592 () List!22390)

(declare-fun isSuffix!466 (List!22390 List!22390) Bool)

(assert (=> b!2040792 (= res!894509 (not (isSuffix!466 lt!765594 lt!765592)))))

(declare-fun lt!765589 () List!22390)

(assert (=> b!2040792 (isSuffix!466 lt!765594 lt!765589)))

(declare-datatypes ((Unit!36991 0))(
  ( (Unit!36992) )
))
(declare-fun lt!765588 () Unit!36991)

(declare-fun lt!765591 () List!22390)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!367 (List!22390 List!22390) Unit!36991)

(assert (=> b!2040792 (= lt!765588 (lemmaConcatTwoListThenFSndIsSuffix!367 lt!765591 lt!765594))))

(declare-fun b!2040793 () Bool)

(declare-fun e!1288498 () Bool)

(declare-fun tp!605661 () Bool)

(assert (=> b!2040793 (= e!1288498 (and (inv!29638 (c!330711 input!986)) tp!605661))))

(declare-fun b!2040794 () Bool)

(assert (=> b!2040794 (= e!1288475 e!1288482)))

(declare-fun res!894506 () Bool)

(assert (=> b!2040794 (=> (not res!894506) (not e!1288482))))

(assert (=> b!2040794 (= res!894506 (= lt!765592 lt!765589))))

(declare-fun ++!6061 (List!22390 List!22390) List!22390)

(assert (=> b!2040794 (= lt!765589 (++!6061 lt!765591 lt!765594))))

(assert (=> b!2040794 (= lt!765592 (list!9151 totalInput!418))))

(assert (=> b!2040794 (= lt!765594 (list!9151 input!986))))

(assert (=> b!2040794 (= lt!765591 (list!9151 treated!60))))

(declare-fun b!2040795 () Bool)

(declare-fun tp!605656 () Bool)

(assert (=> b!2040795 (= e!1288490 (and tp!605656 mapRes!9136))))

(declare-fun condMapEmpty!9137 () Bool)

(declare-fun mapDefault!9137 () List!22388)

(assert (=> b!2040795 (= condMapEmpty!9137 (= (arr!3026 (_values!2255 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22388)) mapDefault!9137)))))

(assert (=> b!2040796 (= e!1288474 (and tp!605673 tp!605670))))

(declare-fun b!2040797 () Bool)

(declare-fun e!1288484 () Bool)

(declare-fun tp!605659 () Bool)

(assert (=> b!2040797 (= e!1288484 (and (inv!29638 (c!330711 treated!60)) tp!605659))))

(declare-fun res!894507 () Bool)

(assert (=> start!201128 (=> (not res!894507) (not e!1288475))))

(assert (=> start!201128 (= res!894507 ((_ is Lexer!3614) thiss!12889))))

(assert (=> start!201128 e!1288475))

(declare-fun inv!29640 (CacheDown!1186) Bool)

(assert (=> start!201128 (and (inv!29640 cacheDown!575) e!1288481)))

(assert (=> start!201128 true))

(declare-fun inv!29641 (CacheUp!1186) Bool)

(assert (=> start!201128 (and (inv!29641 cacheUp!562) e!1288479)))

(declare-fun e!1288473 () Bool)

(assert (=> start!201128 e!1288473))

(declare-fun inv!29642 (BalanceConc!14724) Bool)

(assert (=> start!201128 (and (inv!29642 totalInput!418) e!1288492)))

(assert (=> start!201128 (and (inv!29642 treated!60) e!1288484)))

(assert (=> start!201128 (and (inv!29642 input!986) e!1288498)))

(declare-fun inv!29643 (BalanceConc!14726) Bool)

(assert (=> start!201128 (and (inv!29643 acc!382) e!1288478)))

(declare-fun b!2040798 () Bool)

(assert (=> b!2040798 (= e!1288488 e!1288486)))

(assert (=> b!2040799 (= e!1288491 (and e!1288494 tp!605675))))

(declare-fun b!2040800 () Bool)

(declare-fun tp!605662 () Bool)

(assert (=> b!2040800 (= e!1288473 (and e!1288477 tp!605662))))

(assert (= (and start!201128 res!894507) b!2040777))

(assert (= (and b!2040777 res!894508) b!2040785))

(assert (= (and b!2040785 res!894502) b!2040794))

(assert (= (and b!2040794 res!894506) b!2040778))

(assert (= (and b!2040778 res!894505) b!2040789))

(assert (= (and b!2040789 res!894504) b!2040779))

(assert (= (and b!2040779 res!894500) b!2040780))

(assert (= (and b!2040780 res!894503) b!2040790))

(assert (= (and b!2040790 res!894501) b!2040773))

(assert (= (and b!2040773 res!894499) b!2040792))

(assert (= (and b!2040792 (not res!894509)) b!2040772))

(assert (= (and b!2040795 condMapEmpty!9137) mapIsEmpty!9136))

(assert (= (and b!2040795 (not condMapEmpty!9137)) mapNonEmpty!9136))

(assert (= b!2040783 b!2040795))

(assert (= b!2040798 b!2040783))

(assert (= b!2040774 b!2040798))

(assert (= (and b!2040769 ((_ is LongMap!1975) (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))) b!2040774))

(assert (= b!2040799 b!2040769))

(assert (= (and b!2040788 ((_ is HashMap!1889) (cache!2270 cacheDown!575))) b!2040799))

(assert (= start!201128 b!2040788))

(assert (= (and b!2040782 condMapEmpty!9136) mapIsEmpty!9137))

(assert (= (and b!2040782 (not condMapEmpty!9136)) mapNonEmpty!9137))

(assert (= b!2040787 b!2040782))

(assert (= b!2040781 b!2040787))

(assert (= b!2040791 b!2040781))

(assert (= (and b!2040786 ((_ is LongMap!1976) (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))) b!2040791))

(assert (= b!2040771 b!2040786))

(assert (= (and b!2040775 ((_ is HashMap!1890) (cache!2271 cacheUp!562))) b!2040771))

(assert (= start!201128 b!2040775))

(assert (= b!2040770 b!2040796))

(assert (= b!2040800 b!2040770))

(assert (= (and start!201128 ((_ is Cons!22307) rules!1563)) b!2040800))

(assert (= start!201128 b!2040776))

(assert (= start!201128 b!2040797))

(assert (= start!201128 b!2040793))

(assert (= start!201128 b!2040784))

(declare-fun m!2484693 () Bool)

(assert (=> b!2040776 m!2484693))

(declare-fun m!2484695 () Bool)

(assert (=> b!2040780 m!2484695))

(declare-fun m!2484697 () Bool)

(assert (=> b!2040780 m!2484697))

(declare-fun m!2484699 () Bool)

(assert (=> b!2040787 m!2484699))

(declare-fun m!2484701 () Bool)

(assert (=> b!2040787 m!2484701))

(declare-fun m!2484703 () Bool)

(assert (=> b!2040770 m!2484703))

(declare-fun m!2484705 () Bool)

(assert (=> b!2040770 m!2484705))

(declare-fun m!2484707 () Bool)

(assert (=> b!2040778 m!2484707))

(declare-fun m!2484709 () Bool)

(assert (=> b!2040778 m!2484709))

(declare-fun m!2484711 () Bool)

(assert (=> b!2040778 m!2484711))

(declare-fun m!2484713 () Bool)

(assert (=> b!2040779 m!2484713))

(declare-fun m!2484715 () Bool)

(assert (=> b!2040779 m!2484715))

(declare-fun m!2484717 () Bool)

(assert (=> b!2040779 m!2484717))

(declare-fun m!2484719 () Bool)

(assert (=> b!2040779 m!2484719))

(assert (=> b!2040779 m!2484715))

(declare-fun m!2484721 () Bool)

(assert (=> b!2040779 m!2484721))

(declare-fun m!2484723 () Bool)

(assert (=> b!2040772 m!2484723))

(declare-fun m!2484725 () Bool)

(assert (=> b!2040790 m!2484725))

(declare-fun m!2484727 () Bool)

(assert (=> b!2040792 m!2484727))

(declare-fun m!2484729 () Bool)

(assert (=> b!2040792 m!2484729))

(declare-fun m!2484731 () Bool)

(assert (=> b!2040792 m!2484731))

(declare-fun m!2484733 () Bool)

(assert (=> b!2040783 m!2484733))

(declare-fun m!2484735 () Bool)

(assert (=> b!2040783 m!2484735))

(declare-fun m!2484737 () Bool)

(assert (=> b!2040773 m!2484737))

(declare-fun m!2484739 () Bool)

(assert (=> b!2040784 m!2484739))

(declare-fun m!2484741 () Bool)

(assert (=> b!2040794 m!2484741))

(declare-fun m!2484743 () Bool)

(assert (=> b!2040794 m!2484743))

(declare-fun m!2484745 () Bool)

(assert (=> b!2040794 m!2484745))

(declare-fun m!2484747 () Bool)

(assert (=> b!2040794 m!2484747))

(declare-fun m!2484749 () Bool)

(assert (=> b!2040789 m!2484749))

(assert (=> b!2040789 m!2484749))

(declare-fun m!2484751 () Bool)

(assert (=> b!2040789 m!2484751))

(declare-fun m!2484753 () Bool)

(assert (=> b!2040793 m!2484753))

(declare-fun m!2484755 () Bool)

(assert (=> b!2040777 m!2484755))

(declare-fun m!2484757 () Bool)

(assert (=> mapNonEmpty!9136 m!2484757))

(declare-fun m!2484759 () Bool)

(assert (=> b!2040785 m!2484759))

(declare-fun m!2484761 () Bool)

(assert (=> mapNonEmpty!9137 m!2484761))

(declare-fun m!2484763 () Bool)

(assert (=> b!2040797 m!2484763))

(declare-fun m!2484765 () Bool)

(assert (=> start!201128 m!2484765))

(declare-fun m!2484767 () Bool)

(assert (=> start!201128 m!2484767))

(declare-fun m!2484769 () Bool)

(assert (=> start!201128 m!2484769))

(declare-fun m!2484771 () Bool)

(assert (=> start!201128 m!2484771))

(declare-fun m!2484773 () Bool)

(assert (=> start!201128 m!2484773))

(declare-fun m!2484775 () Bool)

(assert (=> start!201128 m!2484775))

(check-sat (not mapNonEmpty!9137) (not b!2040792) (not b!2040794) (not b!2040789) b_and!162823 b_and!162813 (not b_next!57583) (not b!2040797) (not b!2040782) (not b_next!57587) (not b!2040787) (not b!2040780) (not b_next!57577) (not b!2040795) (not b!2040773) b_and!162821 (not b!2040793) (not b!2040790) (not b!2040772) (not start!201128) b_and!162817 (not b!2040770) (not b_next!57585) (not b!2040777) (not b_next!57579) (not b!2040776) (not b!2040784) b_and!162819 (not b!2040778) (not b!2040800) b_and!162815 (not b!2040783) (not b_next!57581) (not b!2040785) (not mapNonEmpty!9136) (not b!2040779))
(check-sat b_and!162821 b_and!162817 (not b_next!57585) (not b_next!57579) b_and!162819 b_and!162823 b_and!162813 (not b_next!57583) (not b_next!57587) b_and!162815 (not b_next!57581) (not b_next!57577))
(get-model)

(declare-fun d!624978 () Bool)

(assert (=> d!624978 (= (array_inv!2169 (_keys!2273 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))))) (bvsge (size!17451 (_keys!2273 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2040787 d!624978))

(declare-fun d!624980 () Bool)

(assert (=> d!624980 (= (array_inv!2171 (_values!2256 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))))) (bvsge (size!17454 (_values!2256 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2040787 d!624980))

(declare-fun d!624982 () Bool)

(assert (=> d!624982 (= (isEmpty!13945 rules!1563) ((_ is Nil!22307) rules!1563))))

(assert (=> b!2040777 d!624982))

(declare-fun d!624984 () Bool)

(declare-fun c!330715 () Bool)

(assert (=> d!624984 (= c!330715 ((_ is Node!7481) (c!330711 totalInput!418)))))

(declare-fun e!1288504 () Bool)

(assert (=> d!624984 (= (inv!29638 (c!330711 totalInput!418)) e!1288504)))

(declare-fun b!2040807 () Bool)

(declare-fun inv!29644 (Conc!7481) Bool)

(assert (=> b!2040807 (= e!1288504 (inv!29644 (c!330711 totalInput!418)))))

(declare-fun b!2040808 () Bool)

(declare-fun e!1288505 () Bool)

(assert (=> b!2040808 (= e!1288504 e!1288505)))

(declare-fun res!894512 () Bool)

(assert (=> b!2040808 (= res!894512 (not ((_ is Leaf!10963) (c!330711 totalInput!418))))))

(assert (=> b!2040808 (=> res!894512 e!1288505)))

(declare-fun b!2040809 () Bool)

(declare-fun inv!29645 (Conc!7481) Bool)

(assert (=> b!2040809 (= e!1288505 (inv!29645 (c!330711 totalInput!418)))))

(assert (= (and d!624984 c!330715) b!2040807))

(assert (= (and d!624984 (not c!330715)) b!2040808))

(assert (= (and b!2040808 (not res!894512)) b!2040809))

(declare-fun m!2484777 () Bool)

(assert (=> b!2040807 m!2484777))

(declare-fun m!2484779 () Bool)

(assert (=> b!2040809 m!2484779))

(assert (=> b!2040776 d!624984))

(declare-fun d!624986 () Bool)

(declare-fun e!1288511 () Bool)

(assert (=> d!624986 e!1288511))

(declare-fun res!894517 () Bool)

(assert (=> d!624986 (=> (not res!894517) (not e!1288511))))

(declare-fun lt!765599 () List!22390)

(declare-fun content!3314 (List!22390) (InoxSet C!11004))

(assert (=> d!624986 (= res!894517 (= (content!3314 lt!765599) ((_ map or) (content!3314 lt!765591) (content!3314 lt!765594))))))

(declare-fun e!1288510 () List!22390)

(assert (=> d!624986 (= lt!765599 e!1288510)))

(declare-fun c!330718 () Bool)

(assert (=> d!624986 (= c!330718 ((_ is Nil!22306) lt!765591))))

(assert (=> d!624986 (= (++!6061 lt!765591 lt!765594) lt!765599)))

(declare-fun b!2040821 () Bool)

(assert (=> b!2040821 (= e!1288511 (or (not (= lt!765594 Nil!22306)) (= lt!765599 lt!765591)))))

(declare-fun b!2040820 () Bool)

(declare-fun res!894518 () Bool)

(assert (=> b!2040820 (=> (not res!894518) (not e!1288511))))

(declare-fun size!17455 (List!22390) Int)

(assert (=> b!2040820 (= res!894518 (= (size!17455 lt!765599) (+ (size!17455 lt!765591) (size!17455 lt!765594))))))

(declare-fun b!2040819 () Bool)

(assert (=> b!2040819 (= e!1288510 (Cons!22306 (h!27707 lt!765591) (++!6061 (t!191499 lt!765591) lt!765594)))))

(declare-fun b!2040818 () Bool)

(assert (=> b!2040818 (= e!1288510 lt!765594)))

(assert (= (and d!624986 c!330718) b!2040818))

(assert (= (and d!624986 (not c!330718)) b!2040819))

(assert (= (and d!624986 res!894517) b!2040820))

(assert (= (and b!2040820 res!894518) b!2040821))

(declare-fun m!2484781 () Bool)

(assert (=> d!624986 m!2484781))

(declare-fun m!2484783 () Bool)

(assert (=> d!624986 m!2484783))

(declare-fun m!2484785 () Bool)

(assert (=> d!624986 m!2484785))

(declare-fun m!2484787 () Bool)

(assert (=> b!2040820 m!2484787))

(declare-fun m!2484789 () Bool)

(assert (=> b!2040820 m!2484789))

(declare-fun m!2484791 () Bool)

(assert (=> b!2040820 m!2484791))

(declare-fun m!2484793 () Bool)

(assert (=> b!2040819 m!2484793))

(assert (=> b!2040794 d!624986))

(declare-fun d!624988 () Bool)

(declare-fun list!9152 (Conc!7481) List!22390)

(assert (=> d!624988 (= (list!9151 totalInput!418) (list!9152 (c!330711 totalInput!418)))))

(declare-fun bs!421513 () Bool)

(assert (= bs!421513 d!624988))

(declare-fun m!2484795 () Bool)

(assert (=> bs!421513 m!2484795))

(assert (=> b!2040794 d!624988))

(declare-fun d!624990 () Bool)

(assert (=> d!624990 (= (list!9151 input!986) (list!9152 (c!330711 input!986)))))

(declare-fun bs!421514 () Bool)

(assert (= bs!421514 d!624990))

(declare-fun m!2484797 () Bool)

(assert (=> bs!421514 m!2484797))

(assert (=> b!2040794 d!624990))

(declare-fun d!624992 () Bool)

(assert (=> d!624992 (= (list!9151 treated!60) (list!9152 (c!330711 treated!60)))))

(declare-fun bs!421515 () Bool)

(assert (= bs!421515 d!624992))

(declare-fun m!2484799 () Bool)

(assert (=> bs!421515 m!2484799))

(assert (=> b!2040794 d!624992))

(declare-fun d!624994 () Bool)

(declare-fun c!330719 () Bool)

(assert (=> d!624994 (= c!330719 ((_ is Node!7481) (c!330711 input!986)))))

(declare-fun e!1288512 () Bool)

(assert (=> d!624994 (= (inv!29638 (c!330711 input!986)) e!1288512)))

(declare-fun b!2040822 () Bool)

(assert (=> b!2040822 (= e!1288512 (inv!29644 (c!330711 input!986)))))

(declare-fun b!2040823 () Bool)

(declare-fun e!1288513 () Bool)

(assert (=> b!2040823 (= e!1288512 e!1288513)))

(declare-fun res!894519 () Bool)

(assert (=> b!2040823 (= res!894519 (not ((_ is Leaf!10963) (c!330711 input!986))))))

(assert (=> b!2040823 (=> res!894519 e!1288513)))

(declare-fun b!2040824 () Bool)

(assert (=> b!2040824 (= e!1288513 (inv!29645 (c!330711 input!986)))))

(assert (= (and d!624994 c!330719) b!2040822))

(assert (= (and d!624994 (not c!330719)) b!2040823))

(assert (= (and b!2040823 (not res!894519)) b!2040824))

(declare-fun m!2484801 () Bool)

(assert (=> b!2040822 m!2484801))

(declare-fun m!2484803 () Bool)

(assert (=> b!2040824 m!2484803))

(assert (=> b!2040793 d!624994))

(declare-fun d!624996 () Bool)

(declare-fun res!894522 () Bool)

(declare-fun e!1288516 () Bool)

(assert (=> d!624996 (=> (not res!894522) (not e!1288516))))

(declare-fun rulesValid!1501 (LexerInterface!3616 List!22391) Bool)

(assert (=> d!624996 (= res!894522 (rulesValid!1501 thiss!12889 rules!1563))))

(assert (=> d!624996 (= (rulesInvariant!3222 thiss!12889 rules!1563) e!1288516)))

(declare-fun b!2040827 () Bool)

(declare-datatypes ((List!22394 0))(
  ( (Nil!22310) (Cons!22310 (h!27711 String!25883) (t!191503 List!22394)) )
))
(declare-fun noDuplicateTag!1499 (LexerInterface!3616 List!22391 List!22394) Bool)

(assert (=> b!2040827 (= e!1288516 (noDuplicateTag!1499 thiss!12889 rules!1563 Nil!22310))))

(assert (= (and d!624996 res!894522) b!2040827))

(declare-fun m!2484805 () Bool)

(assert (=> d!624996 m!2484805))

(declare-fun m!2484807 () Bool)

(assert (=> b!2040827 m!2484807))

(assert (=> b!2040785 d!624996))

(declare-fun d!624998 () Bool)

(declare-fun isBalanced!2354 (Conc!7481) Bool)

(assert (=> d!624998 (= (inv!29642 input!986) (isBalanced!2354 (c!330711 input!986)))))

(declare-fun bs!421516 () Bool)

(assert (= bs!421516 d!624998))

(declare-fun m!2484809 () Bool)

(assert (=> bs!421516 m!2484809))

(assert (=> start!201128 d!624998))

(declare-fun d!625000 () Bool)

(declare-fun res!894525 () Bool)

(declare-fun e!1288519 () Bool)

(assert (=> d!625000 (=> (not res!894525) (not e!1288519))))

(assert (=> d!625000 (= res!894525 ((_ is HashMap!1890) (cache!2271 cacheUp!562)))))

(assert (=> d!625000 (= (inv!29641 cacheUp!562) e!1288519)))

(declare-fun b!2040830 () Bool)

(declare-fun validCacheMapUp!184 (MutableMap!1890) Bool)

(assert (=> b!2040830 (= e!1288519 (validCacheMapUp!184 (cache!2271 cacheUp!562)))))

(assert (= (and d!625000 res!894525) b!2040830))

(declare-fun m!2484811 () Bool)

(assert (=> b!2040830 m!2484811))

(assert (=> start!201128 d!625000))

(declare-fun d!625002 () Bool)

(declare-fun isBalanced!2355 (Conc!7482) Bool)

(assert (=> d!625002 (= (inv!29643 acc!382) (isBalanced!2355 (c!330712 acc!382)))))

(declare-fun bs!421517 () Bool)

(assert (= bs!421517 d!625002))

(declare-fun m!2484813 () Bool)

(assert (=> bs!421517 m!2484813))

(assert (=> start!201128 d!625002))

(declare-fun d!625004 () Bool)

(declare-fun res!894528 () Bool)

(declare-fun e!1288522 () Bool)

(assert (=> d!625004 (=> (not res!894528) (not e!1288522))))

(assert (=> d!625004 (= res!894528 ((_ is HashMap!1889) (cache!2270 cacheDown!575)))))

(assert (=> d!625004 (= (inv!29640 cacheDown!575) e!1288522)))

(declare-fun b!2040833 () Bool)

(declare-fun validCacheMapDown!182 (MutableMap!1889) Bool)

(assert (=> b!2040833 (= e!1288522 (validCacheMapDown!182 (cache!2270 cacheDown!575)))))

(assert (= (and d!625004 res!894528) b!2040833))

(declare-fun m!2484815 () Bool)

(assert (=> b!2040833 m!2484815))

(assert (=> start!201128 d!625004))

(declare-fun d!625006 () Bool)

(assert (=> d!625006 (= (inv!29642 totalInput!418) (isBalanced!2354 (c!330711 totalInput!418)))))

(declare-fun bs!421518 () Bool)

(assert (= bs!421518 d!625006))

(declare-fun m!2484817 () Bool)

(assert (=> bs!421518 m!2484817))

(assert (=> start!201128 d!625006))

(declare-fun d!625008 () Bool)

(assert (=> d!625008 (= (inv!29642 treated!60) (isBalanced!2354 (c!330711 treated!60)))))

(declare-fun bs!421519 () Bool)

(assert (= bs!421519 d!625008))

(declare-fun m!2484819 () Bool)

(assert (=> bs!421519 m!2484819))

(assert (=> start!201128 d!625008))

(declare-fun d!625010 () Bool)

(declare-fun c!330722 () Bool)

(assert (=> d!625010 (= c!330722 ((_ is Node!7482) (c!330712 acc!382)))))

(declare-fun e!1288527 () Bool)

(assert (=> d!625010 (= (inv!29639 (c!330712 acc!382)) e!1288527)))

(declare-fun b!2040840 () Bool)

(declare-fun inv!29646 (Conc!7482) Bool)

(assert (=> b!2040840 (= e!1288527 (inv!29646 (c!330712 acc!382)))))

(declare-fun b!2040841 () Bool)

(declare-fun e!1288528 () Bool)

(assert (=> b!2040841 (= e!1288527 e!1288528)))

(declare-fun res!894531 () Bool)

(assert (=> b!2040841 (= res!894531 (not ((_ is Leaf!10964) (c!330712 acc!382))))))

(assert (=> b!2040841 (=> res!894531 e!1288528)))

(declare-fun b!2040842 () Bool)

(declare-fun inv!29647 (Conc!7482) Bool)

(assert (=> b!2040842 (= e!1288528 (inv!29647 (c!330712 acc!382)))))

(assert (= (and d!625010 c!330722) b!2040840))

(assert (= (and d!625010 (not c!330722)) b!2040841))

(assert (= (and b!2040841 (not res!894531)) b!2040842))

(declare-fun m!2484821 () Bool)

(assert (=> b!2040840 m!2484821))

(declare-fun m!2484823 () Bool)

(assert (=> b!2040842 m!2484823))

(assert (=> b!2040784 d!625010))

(declare-fun d!625012 () Bool)

(declare-fun e!1288531 () Bool)

(assert (=> d!625012 e!1288531))

(declare-fun res!894534 () Bool)

(assert (=> d!625012 (=> res!894534 e!1288531)))

(declare-fun lt!765602 () Bool)

(assert (=> d!625012 (= res!894534 (not lt!765602))))

(declare-fun drop!1124 (List!22390 Int) List!22390)

(assert (=> d!625012 (= lt!765602 (= lt!765594 (drop!1124 lt!765592 (- (size!17455 lt!765592) (size!17455 lt!765594)))))))

(assert (=> d!625012 (= (isSuffix!466 lt!765594 lt!765592) lt!765602)))

(declare-fun b!2040845 () Bool)

(assert (=> b!2040845 (= e!1288531 (>= (size!17455 lt!765592) (size!17455 lt!765594)))))

(assert (= (and d!625012 (not res!894534)) b!2040845))

(declare-fun m!2484825 () Bool)

(assert (=> d!625012 m!2484825))

(assert (=> d!625012 m!2484791))

(declare-fun m!2484827 () Bool)

(assert (=> d!625012 m!2484827))

(assert (=> b!2040845 m!2484825))

(assert (=> b!2040845 m!2484791))

(assert (=> b!2040792 d!625012))

(declare-fun d!625014 () Bool)

(declare-fun e!1288532 () Bool)

(assert (=> d!625014 e!1288532))

(declare-fun res!894535 () Bool)

(assert (=> d!625014 (=> res!894535 e!1288532)))

(declare-fun lt!765603 () Bool)

(assert (=> d!625014 (= res!894535 (not lt!765603))))

(assert (=> d!625014 (= lt!765603 (= lt!765594 (drop!1124 lt!765589 (- (size!17455 lt!765589) (size!17455 lt!765594)))))))

(assert (=> d!625014 (= (isSuffix!466 lt!765594 lt!765589) lt!765603)))

(declare-fun b!2040846 () Bool)

(assert (=> b!2040846 (= e!1288532 (>= (size!17455 lt!765589) (size!17455 lt!765594)))))

(assert (= (and d!625014 (not res!894535)) b!2040846))

(declare-fun m!2484829 () Bool)

(assert (=> d!625014 m!2484829))

(assert (=> d!625014 m!2484791))

(declare-fun m!2484831 () Bool)

(assert (=> d!625014 m!2484831))

(assert (=> b!2040846 m!2484829))

(assert (=> b!2040846 m!2484791))

(assert (=> b!2040792 d!625014))

(declare-fun d!625016 () Bool)

(assert (=> d!625016 (isSuffix!466 lt!765594 (++!6061 lt!765591 lt!765594))))

(declare-fun lt!765606 () Unit!36991)

(declare-fun choose!12459 (List!22390 List!22390) Unit!36991)

(assert (=> d!625016 (= lt!765606 (choose!12459 lt!765591 lt!765594))))

(assert (=> d!625016 (= (lemmaConcatTwoListThenFSndIsSuffix!367 lt!765591 lt!765594) lt!765606)))

(declare-fun bs!421520 () Bool)

(assert (= bs!421520 d!625016))

(assert (=> bs!421520 m!2484741))

(assert (=> bs!421520 m!2484741))

(declare-fun m!2484833 () Bool)

(assert (=> bs!421520 m!2484833))

(declare-fun m!2484835 () Bool)

(assert (=> bs!421520 m!2484835))

(assert (=> b!2040792 d!625016))

(declare-fun d!625018 () Bool)

(assert (=> d!625018 (= (valid!1575 cacheDown!575) (validCacheMapDown!182 (cache!2270 cacheDown!575)))))

(declare-fun bs!421521 () Bool)

(assert (= bs!421521 d!625018))

(assert (=> bs!421521 m!2484815))

(assert (=> b!2040773 d!625018))

(declare-fun d!625020 () Bool)

(assert (=> d!625020 true))

(declare-fun lt!765609 () Bool)

(declare-fun lambda!76644 () Int)

(declare-fun forall!4761 (List!22391 Int) Bool)

(assert (=> d!625020 (= lt!765609 (forall!4761 rules!1563 lambda!76644))))

(declare-fun e!1288537 () Bool)

(assert (=> d!625020 (= lt!765609 e!1288537)))

(declare-fun res!894541 () Bool)

(assert (=> d!625020 (=> res!894541 e!1288537)))

(assert (=> d!625020 (= res!894541 (not ((_ is Cons!22307) rules!1563)))))

(assert (=> d!625020 (= (rulesValidInductive!1390 thiss!12889 rules!1563) lt!765609)))

(declare-fun b!2040851 () Bool)

(declare-fun e!1288538 () Bool)

(assert (=> b!2040851 (= e!1288537 e!1288538)))

(declare-fun res!894540 () Bool)

(assert (=> b!2040851 (=> (not res!894540) (not e!1288538))))

(declare-fun ruleValid!1226 (LexerInterface!3616 Rule!7806) Bool)

(assert (=> b!2040851 (= res!894540 (ruleValid!1226 thiss!12889 (h!27708 rules!1563)))))

(declare-fun b!2040852 () Bool)

(assert (=> b!2040852 (= e!1288538 (rulesValidInductive!1390 thiss!12889 (t!191500 rules!1563)))))

(assert (= (and d!625020 (not res!894541)) b!2040851))

(assert (= (and b!2040851 res!894540) b!2040852))

(declare-fun m!2484837 () Bool)

(assert (=> d!625020 m!2484837))

(declare-fun m!2484839 () Bool)

(assert (=> b!2040851 m!2484839))

(declare-fun m!2484841 () Bool)

(assert (=> b!2040852 m!2484841))

(assert (=> b!2040772 d!625020))

(declare-fun d!625022 () Bool)

(assert (=> d!625022 (= (array_inv!2169 (_keys!2272 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))) (bvsge (size!17451 (_keys!2272 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2040783 d!625022))

(declare-fun d!625024 () Bool)

(assert (=> d!625024 (= (array_inv!2170 (_values!2255 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))) (bvsge (size!17452 (_values!2255 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2040783 d!625024))

(declare-fun d!625026 () Bool)

(assert (=> d!625026 (= (valid!1576 cacheUp!562) (validCacheMapUp!184 (cache!2271 cacheUp!562)))))

(declare-fun bs!421522 () Bool)

(assert (= bs!421522 d!625026))

(assert (=> bs!421522 m!2484811))

(assert (=> b!2040790 d!625026))

(declare-fun d!625028 () Bool)

(assert (=> d!625028 (= (inv!29636 (tag!4493 (h!27708 rules!1563))) (= (mod (str.len (value!125735 (tag!4493 (h!27708 rules!1563)))) 2) 0))))

(assert (=> b!2040770 d!625028))

(declare-fun d!625030 () Bool)

(declare-fun res!894544 () Bool)

(declare-fun e!1288541 () Bool)

(assert (=> d!625030 (=> (not res!894544) (not e!1288541))))

(declare-fun semiInverseModEq!1614 (Int Int) Bool)

(assert (=> d!625030 (= res!894544 (semiInverseModEq!1614 (toChars!5543 (transformation!4003 (h!27708 rules!1563))) (toValue!5684 (transformation!4003 (h!27708 rules!1563)))))))

(assert (=> d!625030 (= (inv!29637 (transformation!4003 (h!27708 rules!1563))) e!1288541)))

(declare-fun b!2040857 () Bool)

(declare-fun equivClasses!1541 (Int Int) Bool)

(assert (=> b!2040857 (= e!1288541 (equivClasses!1541 (toChars!5543 (transformation!4003 (h!27708 rules!1563))) (toValue!5684 (transformation!4003 (h!27708 rules!1563)))))))

(assert (= (and d!625030 res!894544) b!2040857))

(declare-fun m!2484843 () Bool)

(assert (=> d!625030 m!2484843))

(declare-fun m!2484845 () Bool)

(assert (=> b!2040857 m!2484845))

(assert (=> b!2040770 d!625030))

(declare-fun d!625032 () Bool)

(assert (=> d!625032 (= (list!9151 (_2!11954 lt!765590)) (list!9152 (c!330711 (_2!11954 lt!765590))))))

(declare-fun bs!421523 () Bool)

(assert (= bs!421523 d!625032))

(declare-fun m!2484847 () Bool)

(assert (=> bs!421523 m!2484847))

(assert (=> b!2040780 d!625032))

(declare-fun d!625034 () Bool)

(assert (=> d!625034 (= (list!9151 (_2!11954 lt!765587)) (list!9152 (c!330711 (_2!11954 lt!765587))))))

(declare-fun bs!421524 () Bool)

(assert (= bs!421524 d!625034))

(declare-fun m!2484849 () Bool)

(assert (=> bs!421524 m!2484849))

(assert (=> b!2040780 d!625034))

(declare-fun d!625036 () Bool)

(assert (=> d!625036 (= (isEmpty!13946 (list!9151 (_2!11954 lt!765596))) ((_ is Nil!22306) (list!9151 (_2!11954 lt!765596))))))

(assert (=> b!2040789 d!625036))

(declare-fun d!625038 () Bool)

(assert (=> d!625038 (= (list!9151 (_2!11954 lt!765596)) (list!9152 (c!330711 (_2!11954 lt!765596))))))

(declare-fun bs!421525 () Bool)

(assert (= bs!421525 d!625038))

(declare-fun m!2484851 () Bool)

(assert (=> bs!421525 m!2484851))

(assert (=> b!2040789 d!625038))

(declare-fun d!625040 () Bool)

(declare-fun c!330723 () Bool)

(assert (=> d!625040 (= c!330723 ((_ is Node!7481) (c!330711 treated!60)))))

(declare-fun e!1288542 () Bool)

(assert (=> d!625040 (= (inv!29638 (c!330711 treated!60)) e!1288542)))

(declare-fun b!2040858 () Bool)

(assert (=> b!2040858 (= e!1288542 (inv!29644 (c!330711 treated!60)))))

(declare-fun b!2040859 () Bool)

(declare-fun e!1288543 () Bool)

(assert (=> b!2040859 (= e!1288542 e!1288543)))

(declare-fun res!894545 () Bool)

(assert (=> b!2040859 (= res!894545 (not ((_ is Leaf!10963) (c!330711 treated!60))))))

(assert (=> b!2040859 (=> res!894545 e!1288543)))

(declare-fun b!2040860 () Bool)

(assert (=> b!2040860 (= e!1288543 (inv!29645 (c!330711 treated!60)))))

(assert (= (and d!625040 c!330723) b!2040858))

(assert (= (and d!625040 (not c!330723)) b!2040859))

(assert (= (and b!2040859 (not res!894545)) b!2040860))

(declare-fun m!2484853 () Bool)

(assert (=> b!2040858 m!2484853))

(declare-fun m!2484855 () Bool)

(assert (=> b!2040860 m!2484855))

(assert (=> b!2040797 d!625040))

(declare-fun b!2040875 () Bool)

(declare-fun e!1288553 () Bool)

(declare-fun lt!765618 () tuple2!20962)

(assert (=> b!2040875 (= e!1288553 (= (list!9151 (_2!11954 lt!765618)) (list!9151 totalInput!418)))))

(declare-fun d!625042 () Bool)

(declare-fun e!1288555 () Bool)

(assert (=> d!625042 e!1288555))

(declare-fun res!894553 () Bool)

(assert (=> d!625042 (=> (not res!894553) (not e!1288555))))

(assert (=> d!625042 (= res!894553 e!1288553)))

(declare-fun c!330729 () Bool)

(declare-fun size!17456 (BalanceConc!14726) Int)

(assert (=> d!625042 (= c!330729 (> (size!17456 (_1!11954 lt!765618)) 0))))

(declare-fun e!1288554 () tuple2!20962)

(assert (=> d!625042 (= lt!765618 e!1288554)))

(declare-fun c!330730 () Bool)

(declare-datatypes ((tuple2!20968 0))(
  ( (tuple2!20969 (_1!11957 Token!7556) (_2!11957 BalanceConc!14724)) )
))
(declare-datatypes ((Option!4687 0))(
  ( (None!4686) (Some!4686 (v!27041 tuple2!20968)) )
))
(declare-fun lt!765617 () Option!4687)

(assert (=> d!625042 (= c!330730 ((_ is Some!4686) lt!765617))))

(declare-fun maxPrefixZipperSequence!786 (LexerInterface!3616 List!22391 BalanceConc!14724) Option!4687)

(assert (=> d!625042 (= lt!765617 (maxPrefixZipperSequence!786 thiss!12889 rules!1563 totalInput!418))))

(assert (=> d!625042 (= (lexRec!421 thiss!12889 rules!1563 totalInput!418) lt!765618)))

(declare-fun b!2040876 () Bool)

(declare-fun e!1288552 () Bool)

(assert (=> b!2040876 (= e!1288553 e!1288552)))

(declare-fun res!894552 () Bool)

(declare-fun size!17457 (BalanceConc!14724) Int)

(assert (=> b!2040876 (= res!894552 (< (size!17457 (_2!11954 lt!765618)) (size!17457 totalInput!418)))))

(assert (=> b!2040876 (=> (not res!894552) (not e!1288552))))

(declare-fun b!2040877 () Bool)

(declare-fun res!894554 () Bool)

(assert (=> b!2040877 (=> (not res!894554) (not e!1288555))))

(declare-datatypes ((tuple2!20970 0))(
  ( (tuple2!20971 (_1!11958 List!22392) (_2!11958 List!22390)) )
))
(declare-fun lexList!986 (LexerInterface!3616 List!22391 List!22390) tuple2!20970)

(assert (=> b!2040877 (= res!894554 (= (list!9150 (_1!11954 lt!765618)) (_1!11958 (lexList!986 thiss!12889 rules!1563 (list!9151 totalInput!418)))))))

(declare-fun b!2040878 () Bool)

(assert (=> b!2040878 (= e!1288555 (= (list!9151 (_2!11954 lt!765618)) (_2!11958 (lexList!986 thiss!12889 rules!1563 (list!9151 totalInput!418)))))))

(declare-fun b!2040879 () Bool)

(assert (=> b!2040879 (= e!1288554 (tuple2!20963 (BalanceConc!14727 Empty!7482) totalInput!418))))

(declare-fun b!2040880 () Bool)

(declare-fun lt!765616 () tuple2!20962)

(declare-fun prepend!907 (BalanceConc!14726 Token!7556) BalanceConc!14726)

(assert (=> b!2040880 (= e!1288554 (tuple2!20963 (prepend!907 (_1!11954 lt!765616) (_1!11957 (v!27041 lt!765617))) (_2!11954 lt!765616)))))

(assert (=> b!2040880 (= lt!765616 (lexRec!421 thiss!12889 rules!1563 (_2!11957 (v!27041 lt!765617))))))

(declare-fun b!2040881 () Bool)

(declare-fun isEmpty!13947 (BalanceConc!14726) Bool)

(assert (=> b!2040881 (= e!1288552 (not (isEmpty!13947 (_1!11954 lt!765618))))))

(assert (= (and d!625042 c!330730) b!2040880))

(assert (= (and d!625042 (not c!330730)) b!2040879))

(assert (= (and d!625042 c!330729) b!2040876))

(assert (= (and d!625042 (not c!330729)) b!2040875))

(assert (= (and b!2040876 res!894552) b!2040881))

(assert (= (and d!625042 res!894553) b!2040877))

(assert (= (and b!2040877 res!894554) b!2040878))

(declare-fun m!2484857 () Bool)

(assert (=> b!2040876 m!2484857))

(declare-fun m!2484859 () Bool)

(assert (=> b!2040876 m!2484859))

(declare-fun m!2484861 () Bool)

(assert (=> b!2040878 m!2484861))

(assert (=> b!2040878 m!2484743))

(assert (=> b!2040878 m!2484743))

(declare-fun m!2484863 () Bool)

(assert (=> b!2040878 m!2484863))

(declare-fun m!2484865 () Bool)

(assert (=> b!2040880 m!2484865))

(declare-fun m!2484867 () Bool)

(assert (=> b!2040880 m!2484867))

(declare-fun m!2484869 () Bool)

(assert (=> b!2040877 m!2484869))

(assert (=> b!2040877 m!2484743))

(assert (=> b!2040877 m!2484743))

(assert (=> b!2040877 m!2484863))

(declare-fun m!2484871 () Bool)

(assert (=> b!2040881 m!2484871))

(declare-fun m!2484873 () Bool)

(assert (=> d!625042 m!2484873))

(declare-fun m!2484875 () Bool)

(assert (=> d!625042 m!2484875))

(assert (=> b!2040875 m!2484861))

(assert (=> b!2040875 m!2484743))

(assert (=> b!2040779 d!625042))

(declare-fun b!2040882 () Bool)

(declare-fun e!1288557 () Bool)

(declare-fun lt!765621 () tuple2!20962)

(assert (=> b!2040882 (= e!1288557 (= (list!9151 (_2!11954 lt!765621)) (list!9151 input!986)))))

(declare-fun d!625044 () Bool)

(declare-fun e!1288559 () Bool)

(assert (=> d!625044 e!1288559))

(declare-fun res!894556 () Bool)

(assert (=> d!625044 (=> (not res!894556) (not e!1288559))))

(assert (=> d!625044 (= res!894556 e!1288557)))

(declare-fun c!330731 () Bool)

(assert (=> d!625044 (= c!330731 (> (size!17456 (_1!11954 lt!765621)) 0))))

(declare-fun e!1288558 () tuple2!20962)

(assert (=> d!625044 (= lt!765621 e!1288558)))

(declare-fun c!330732 () Bool)

(declare-fun lt!765620 () Option!4687)

(assert (=> d!625044 (= c!330732 ((_ is Some!4686) lt!765620))))

(assert (=> d!625044 (= lt!765620 (maxPrefixZipperSequence!786 thiss!12889 rules!1563 input!986))))

(assert (=> d!625044 (= (lexRec!421 thiss!12889 rules!1563 input!986) lt!765621)))

(declare-fun b!2040883 () Bool)

(declare-fun e!1288556 () Bool)

(assert (=> b!2040883 (= e!1288557 e!1288556)))

(declare-fun res!894555 () Bool)

(assert (=> b!2040883 (= res!894555 (< (size!17457 (_2!11954 lt!765621)) (size!17457 input!986)))))

(assert (=> b!2040883 (=> (not res!894555) (not e!1288556))))

(declare-fun b!2040884 () Bool)

(declare-fun res!894557 () Bool)

(assert (=> b!2040884 (=> (not res!894557) (not e!1288559))))

(assert (=> b!2040884 (= res!894557 (= (list!9150 (_1!11954 lt!765621)) (_1!11958 (lexList!986 thiss!12889 rules!1563 (list!9151 input!986)))))))

(declare-fun b!2040885 () Bool)

(assert (=> b!2040885 (= e!1288559 (= (list!9151 (_2!11954 lt!765621)) (_2!11958 (lexList!986 thiss!12889 rules!1563 (list!9151 input!986)))))))

(declare-fun b!2040886 () Bool)

(assert (=> b!2040886 (= e!1288558 (tuple2!20963 (BalanceConc!14727 Empty!7482) input!986))))

(declare-fun b!2040887 () Bool)

(declare-fun lt!765619 () tuple2!20962)

(assert (=> b!2040887 (= e!1288558 (tuple2!20963 (prepend!907 (_1!11954 lt!765619) (_1!11957 (v!27041 lt!765620))) (_2!11954 lt!765619)))))

(assert (=> b!2040887 (= lt!765619 (lexRec!421 thiss!12889 rules!1563 (_2!11957 (v!27041 lt!765620))))))

(declare-fun b!2040888 () Bool)

(assert (=> b!2040888 (= e!1288556 (not (isEmpty!13947 (_1!11954 lt!765621))))))

(assert (= (and d!625044 c!330732) b!2040887))

(assert (= (and d!625044 (not c!330732)) b!2040886))

(assert (= (and d!625044 c!330731) b!2040883))

(assert (= (and d!625044 (not c!330731)) b!2040882))

(assert (= (and b!2040883 res!894555) b!2040888))

(assert (= (and d!625044 res!894556) b!2040884))

(assert (= (and b!2040884 res!894557) b!2040885))

(declare-fun m!2484877 () Bool)

(assert (=> b!2040883 m!2484877))

(declare-fun m!2484879 () Bool)

(assert (=> b!2040883 m!2484879))

(declare-fun m!2484881 () Bool)

(assert (=> b!2040885 m!2484881))

(assert (=> b!2040885 m!2484745))

(assert (=> b!2040885 m!2484745))

(declare-fun m!2484883 () Bool)

(assert (=> b!2040885 m!2484883))

(declare-fun m!2484885 () Bool)

(assert (=> b!2040887 m!2484885))

(declare-fun m!2484887 () Bool)

(assert (=> b!2040887 m!2484887))

(declare-fun m!2484889 () Bool)

(assert (=> b!2040884 m!2484889))

(assert (=> b!2040884 m!2484745))

(assert (=> b!2040884 m!2484745))

(assert (=> b!2040884 m!2484883))

(declare-fun m!2484891 () Bool)

(assert (=> b!2040888 m!2484891))

(declare-fun m!2484893 () Bool)

(assert (=> d!625044 m!2484893))

(declare-fun m!2484895 () Bool)

(assert (=> d!625044 m!2484895))

(assert (=> b!2040882 m!2484881))

(assert (=> b!2040882 m!2484745))

(assert (=> b!2040779 d!625044))

(declare-fun b!2040898 () Bool)

(declare-fun res!894567 () Bool)

(declare-fun e!1288562 () Bool)

(assert (=> b!2040898 (=> (not res!894567) (not e!1288562))))

(declare-fun height!1174 (Conc!7482) Int)

(declare-fun ++!6062 (Conc!7482 Conc!7482) Conc!7482)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2040898 (= res!894567 (<= (height!1174 (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587)))) (+ (max!0 (height!1174 (c!330712 acc!382)) (height!1174 (c!330712 (_1!11954 lt!765587)))) 1)))))

(declare-fun b!2040897 () Bool)

(declare-fun res!894569 () Bool)

(assert (=> b!2040897 (=> (not res!894569) (not e!1288562))))

(assert (=> b!2040897 (= res!894569 (isBalanced!2355 (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587)))))))

(declare-fun d!625046 () Bool)

(assert (=> d!625046 e!1288562))

(declare-fun res!894568 () Bool)

(assert (=> d!625046 (=> (not res!894568) (not e!1288562))))

(declare-fun appendAssocInst!547 (Conc!7482 Conc!7482) Bool)

(assert (=> d!625046 (= res!894568 (appendAssocInst!547 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587))))))

(declare-fun lt!765624 () BalanceConc!14726)

(assert (=> d!625046 (= lt!765624 (BalanceConc!14727 (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587)))))))

(assert (=> d!625046 (= (++!6060 acc!382 (_1!11954 lt!765587)) lt!765624)))

(declare-fun b!2040899 () Bool)

(declare-fun res!894566 () Bool)

(assert (=> b!2040899 (=> (not res!894566) (not e!1288562))))

(assert (=> b!2040899 (= res!894566 (>= (height!1174 (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587)))) (max!0 (height!1174 (c!330712 acc!382)) (height!1174 (c!330712 (_1!11954 lt!765587))))))))

(declare-fun b!2040900 () Bool)

(declare-fun ++!6063 (List!22392 List!22392) List!22392)

(assert (=> b!2040900 (= e!1288562 (= (list!9150 lt!765624) (++!6063 (list!9150 acc!382) (list!9150 (_1!11954 lt!765587)))))))

(assert (= (and d!625046 res!894568) b!2040897))

(assert (= (and b!2040897 res!894569) b!2040898))

(assert (= (and b!2040898 res!894567) b!2040899))

(assert (= (and b!2040899 res!894566) b!2040900))

(declare-fun m!2484897 () Bool)

(assert (=> d!625046 m!2484897))

(declare-fun m!2484899 () Bool)

(assert (=> d!625046 m!2484899))

(declare-fun m!2484901 () Bool)

(assert (=> b!2040898 m!2484901))

(declare-fun m!2484903 () Bool)

(assert (=> b!2040898 m!2484903))

(assert (=> b!2040898 m!2484899))

(assert (=> b!2040898 m!2484901))

(assert (=> b!2040898 m!2484903))

(declare-fun m!2484905 () Bool)

(assert (=> b!2040898 m!2484905))

(assert (=> b!2040898 m!2484899))

(declare-fun m!2484907 () Bool)

(assert (=> b!2040898 m!2484907))

(assert (=> b!2040899 m!2484901))

(assert (=> b!2040899 m!2484903))

(assert (=> b!2040899 m!2484899))

(assert (=> b!2040899 m!2484901))

(assert (=> b!2040899 m!2484903))

(assert (=> b!2040899 m!2484905))

(assert (=> b!2040899 m!2484899))

(assert (=> b!2040899 m!2484907))

(declare-fun m!2484909 () Bool)

(assert (=> b!2040900 m!2484909))

(assert (=> b!2040900 m!2484709))

(declare-fun m!2484911 () Bool)

(assert (=> b!2040900 m!2484911))

(assert (=> b!2040900 m!2484709))

(assert (=> b!2040900 m!2484911))

(declare-fun m!2484913 () Bool)

(assert (=> b!2040900 m!2484913))

(assert (=> b!2040897 m!2484899))

(assert (=> b!2040897 m!2484899))

(declare-fun m!2484915 () Bool)

(assert (=> b!2040897 m!2484915))

(assert (=> b!2040779 d!625046))

(declare-fun d!625048 () Bool)

(declare-fun list!9153 (Conc!7482) List!22392)

(assert (=> d!625048 (= (list!9150 (++!6060 acc!382 (_1!11954 lt!765587))) (list!9153 (c!330712 (++!6060 acc!382 (_1!11954 lt!765587)))))))

(declare-fun bs!421526 () Bool)

(assert (= bs!421526 d!625048))

(declare-fun m!2484917 () Bool)

(assert (=> bs!421526 m!2484917))

(assert (=> b!2040779 d!625048))

(declare-fun d!625050 () Bool)

(assert (=> d!625050 (= (list!9150 (_1!11954 lt!765590)) (list!9153 (c!330712 (_1!11954 lt!765590))))))

(declare-fun bs!421527 () Bool)

(assert (= bs!421527 d!625050))

(declare-fun m!2484919 () Bool)

(assert (=> bs!421527 m!2484919))

(assert (=> b!2040779 d!625050))

(declare-fun d!625052 () Bool)

(assert (=> d!625052 (= (list!9150 (_1!11954 lt!765596)) (list!9153 (c!330712 (_1!11954 lt!765596))))))

(declare-fun bs!421528 () Bool)

(assert (= bs!421528 d!625052))

(declare-fun m!2484921 () Bool)

(assert (=> bs!421528 m!2484921))

(assert (=> b!2040778 d!625052))

(declare-fun d!625054 () Bool)

(assert (=> d!625054 (= (list!9150 acc!382) (list!9153 (c!330712 acc!382)))))

(declare-fun bs!421529 () Bool)

(assert (= bs!421529 d!625054))

(declare-fun m!2484923 () Bool)

(assert (=> bs!421529 m!2484923))

(assert (=> b!2040778 d!625054))

(declare-fun b!2040901 () Bool)

(declare-fun e!1288564 () Bool)

(declare-fun lt!765627 () tuple2!20962)

(assert (=> b!2040901 (= e!1288564 (= (list!9151 (_2!11954 lt!765627)) (list!9151 treated!60)))))

(declare-fun d!625056 () Bool)

(declare-fun e!1288566 () Bool)

(assert (=> d!625056 e!1288566))

(declare-fun res!894571 () Bool)

(assert (=> d!625056 (=> (not res!894571) (not e!1288566))))

(assert (=> d!625056 (= res!894571 e!1288564)))

(declare-fun c!330736 () Bool)

(assert (=> d!625056 (= c!330736 (> (size!17456 (_1!11954 lt!765627)) 0))))

(declare-fun e!1288565 () tuple2!20962)

(assert (=> d!625056 (= lt!765627 e!1288565)))

(declare-fun c!330737 () Bool)

(declare-fun lt!765626 () Option!4687)

(assert (=> d!625056 (= c!330737 ((_ is Some!4686) lt!765626))))

(assert (=> d!625056 (= lt!765626 (maxPrefixZipperSequence!786 thiss!12889 rules!1563 treated!60))))

(assert (=> d!625056 (= (lexRec!421 thiss!12889 rules!1563 treated!60) lt!765627)))

(declare-fun b!2040902 () Bool)

(declare-fun e!1288563 () Bool)

(assert (=> b!2040902 (= e!1288564 e!1288563)))

(declare-fun res!894570 () Bool)

(assert (=> b!2040902 (= res!894570 (< (size!17457 (_2!11954 lt!765627)) (size!17457 treated!60)))))

(assert (=> b!2040902 (=> (not res!894570) (not e!1288563))))

(declare-fun b!2040903 () Bool)

(declare-fun res!894572 () Bool)

(assert (=> b!2040903 (=> (not res!894572) (not e!1288566))))

(assert (=> b!2040903 (= res!894572 (= (list!9150 (_1!11954 lt!765627)) (_1!11958 (lexList!986 thiss!12889 rules!1563 (list!9151 treated!60)))))))

(declare-fun b!2040904 () Bool)

(assert (=> b!2040904 (= e!1288566 (= (list!9151 (_2!11954 lt!765627)) (_2!11958 (lexList!986 thiss!12889 rules!1563 (list!9151 treated!60)))))))

(declare-fun b!2040905 () Bool)

(assert (=> b!2040905 (= e!1288565 (tuple2!20963 (BalanceConc!14727 Empty!7482) treated!60))))

(declare-fun b!2040906 () Bool)

(declare-fun lt!765625 () tuple2!20962)

(assert (=> b!2040906 (= e!1288565 (tuple2!20963 (prepend!907 (_1!11954 lt!765625) (_1!11957 (v!27041 lt!765626))) (_2!11954 lt!765625)))))

(assert (=> b!2040906 (= lt!765625 (lexRec!421 thiss!12889 rules!1563 (_2!11957 (v!27041 lt!765626))))))

(declare-fun b!2040907 () Bool)

(assert (=> b!2040907 (= e!1288563 (not (isEmpty!13947 (_1!11954 lt!765627))))))

(assert (= (and d!625056 c!330737) b!2040906))

(assert (= (and d!625056 (not c!330737)) b!2040905))

(assert (= (and d!625056 c!330736) b!2040902))

(assert (= (and d!625056 (not c!330736)) b!2040901))

(assert (= (and b!2040902 res!894570) b!2040907))

(assert (= (and d!625056 res!894571) b!2040903))

(assert (= (and b!2040903 res!894572) b!2040904))

(declare-fun m!2484925 () Bool)

(assert (=> b!2040902 m!2484925))

(declare-fun m!2484927 () Bool)

(assert (=> b!2040902 m!2484927))

(declare-fun m!2484929 () Bool)

(assert (=> b!2040904 m!2484929))

(assert (=> b!2040904 m!2484747))

(assert (=> b!2040904 m!2484747))

(declare-fun m!2484931 () Bool)

(assert (=> b!2040904 m!2484931))

(declare-fun m!2484933 () Bool)

(assert (=> b!2040906 m!2484933))

(declare-fun m!2484935 () Bool)

(assert (=> b!2040906 m!2484935))

(declare-fun m!2484937 () Bool)

(assert (=> b!2040903 m!2484937))

(assert (=> b!2040903 m!2484747))

(assert (=> b!2040903 m!2484747))

(assert (=> b!2040903 m!2484931))

(declare-fun m!2484939 () Bool)

(assert (=> b!2040907 m!2484939))

(declare-fun m!2484941 () Bool)

(assert (=> d!625056 m!2484941))

(declare-fun m!2484943 () Bool)

(assert (=> d!625056 m!2484943))

(assert (=> b!2040901 m!2484929))

(assert (=> b!2040901 m!2484747))

(assert (=> b!2040778 d!625056))

(declare-fun b!2040916 () Bool)

(declare-fun e!1288574 () Bool)

(declare-fun tp!605686 () Bool)

(assert (=> b!2040916 (= e!1288574 tp!605686)))

(declare-fun e!1288575 () Bool)

(assert (=> b!2040787 (= tp!605667 e!1288575)))

(declare-fun tp!605688 () Bool)

(declare-fun setRes!11734 () Bool)

(declare-fun setElem!11734 () Context!1998)

(declare-fun setNonEmpty!11734 () Bool)

(declare-fun inv!29648 (Context!1998) Bool)

(assert (=> setNonEmpty!11734 (= setRes!11734 (and tp!605688 (inv!29648 setElem!11734) e!1288574))))

(declare-fun setRest!11734 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11734 (= (_2!11956 (h!27710 (zeroValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11734 true) setRest!11734))))

(declare-fun b!2040917 () Bool)

(declare-fun tp!605687 () Bool)

(declare-fun tp_is_empty!9291 () Bool)

(declare-fun e!1288573 () Bool)

(assert (=> b!2040917 (= e!1288575 (and (inv!29648 (_1!11955 (_1!11956 (h!27710 (zeroValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562)))))))))) e!1288573 tp_is_empty!9291 setRes!11734 tp!605687))))

(declare-fun condSetEmpty!11734 () Bool)

(assert (=> b!2040917 (= condSetEmpty!11734 (= (_2!11956 (h!27710 (zeroValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562)))))))) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun b!2040918 () Bool)

(declare-fun tp!605685 () Bool)

(assert (=> b!2040918 (= e!1288573 tp!605685)))

(declare-fun setIsEmpty!11734 () Bool)

(assert (=> setIsEmpty!11734 setRes!11734))

(assert (= b!2040917 b!2040918))

(assert (= (and b!2040917 condSetEmpty!11734) setIsEmpty!11734))

(assert (= (and b!2040917 (not condSetEmpty!11734)) setNonEmpty!11734))

(assert (= setNonEmpty!11734 b!2040916))

(assert (= (and b!2040787 ((_ is Cons!22309) (zeroValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562)))))))) b!2040917))

(declare-fun m!2484945 () Bool)

(assert (=> setNonEmpty!11734 m!2484945))

(declare-fun m!2484947 () Bool)

(assert (=> b!2040917 m!2484947))

(declare-fun b!2040919 () Bool)

(declare-fun e!1288577 () Bool)

(declare-fun tp!605690 () Bool)

(assert (=> b!2040919 (= e!1288577 tp!605690)))

(declare-fun e!1288578 () Bool)

(assert (=> b!2040787 (= tp!605669 e!1288578)))

(declare-fun setElem!11735 () Context!1998)

(declare-fun tp!605692 () Bool)

(declare-fun setNonEmpty!11735 () Bool)

(declare-fun setRes!11735 () Bool)

(assert (=> setNonEmpty!11735 (= setRes!11735 (and tp!605692 (inv!29648 setElem!11735) e!1288577))))

(declare-fun setRest!11735 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11735 (= (_2!11956 (h!27710 (minValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11735 true) setRest!11735))))

(declare-fun tp!605691 () Bool)

(declare-fun e!1288576 () Bool)

(declare-fun b!2040920 () Bool)

(assert (=> b!2040920 (= e!1288578 (and (inv!29648 (_1!11955 (_1!11956 (h!27710 (minValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562)))))))))) e!1288576 tp_is_empty!9291 setRes!11735 tp!605691))))

(declare-fun condSetEmpty!11735 () Bool)

(assert (=> b!2040920 (= condSetEmpty!11735 (= (_2!11956 (h!27710 (minValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562)))))))) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun b!2040921 () Bool)

(declare-fun tp!605689 () Bool)

(assert (=> b!2040921 (= e!1288576 tp!605689)))

(declare-fun setIsEmpty!11735 () Bool)

(assert (=> setIsEmpty!11735 setRes!11735))

(assert (= b!2040920 b!2040921))

(assert (= (and b!2040920 condSetEmpty!11735) setIsEmpty!11735))

(assert (= (and b!2040920 (not condSetEmpty!11735)) setNonEmpty!11735))

(assert (= setNonEmpty!11735 b!2040919))

(assert (= (and b!2040787 ((_ is Cons!22309) (minValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562)))))))) b!2040920))

(declare-fun m!2484949 () Bool)

(assert (=> setNonEmpty!11735 m!2484949))

(declare-fun m!2484951 () Bool)

(assert (=> b!2040920 m!2484951))

(declare-fun b!2040930 () Bool)

(declare-fun e!1288587 () Bool)

(declare-fun tp!605707 () Bool)

(assert (=> b!2040930 (= e!1288587 tp!605707)))

(declare-fun b!2040931 () Bool)

(declare-fun e!1288585 () Bool)

(declare-fun tp!605704 () Bool)

(assert (=> b!2040931 (= e!1288585 tp!605704)))

(declare-fun setIsEmpty!11738 () Bool)

(declare-fun setRes!11738 () Bool)

(assert (=> setIsEmpty!11738 setRes!11738))

(declare-fun tp!605703 () Bool)

(declare-fun b!2040932 () Bool)

(declare-fun e!1288586 () Bool)

(declare-fun tp!605706 () Bool)

(assert (=> b!2040932 (= e!1288586 (and tp!605706 (inv!29648 (_2!11952 (_1!11953 (h!27705 mapDefault!9137)))) e!1288585 tp_is_empty!9291 setRes!11738 tp!605703))))

(declare-fun condSetEmpty!11738 () Bool)

(assert (=> b!2040932 (= condSetEmpty!11738 (= (_2!11953 (h!27705 mapDefault!9137)) ((as const (Array Context!1998 Bool)) false)))))

(assert (=> b!2040795 (= tp!605656 e!1288586)))

(declare-fun tp!605705 () Bool)

(declare-fun setElem!11738 () Context!1998)

(declare-fun setNonEmpty!11738 () Bool)

(assert (=> setNonEmpty!11738 (= setRes!11738 (and tp!605705 (inv!29648 setElem!11738) e!1288587))))

(declare-fun setRest!11738 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11738 (= (_2!11953 (h!27705 mapDefault!9137)) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11738 true) setRest!11738))))

(assert (= b!2040932 b!2040931))

(assert (= (and b!2040932 condSetEmpty!11738) setIsEmpty!11738))

(assert (= (and b!2040932 (not condSetEmpty!11738)) setNonEmpty!11738))

(assert (= setNonEmpty!11738 b!2040930))

(assert (= (and b!2040795 ((_ is Cons!22304) mapDefault!9137)) b!2040932))

(declare-fun m!2484953 () Bool)

(assert (=> b!2040932 m!2484953))

(declare-fun m!2484955 () Bool)

(assert (=> setNonEmpty!11738 m!2484955))

(declare-fun b!2040941 () Bool)

(declare-fun e!1288593 () Bool)

(declare-fun tp!605714 () Bool)

(declare-fun tp!605715 () Bool)

(assert (=> b!2040941 (= e!1288593 (and (inv!29638 (left!17758 (c!330711 totalInput!418))) tp!605714 (inv!29638 (right!18088 (c!330711 totalInput!418))) tp!605715))))

(declare-fun b!2040943 () Bool)

(declare-fun e!1288592 () Bool)

(declare-fun tp!605716 () Bool)

(assert (=> b!2040943 (= e!1288592 tp!605716)))

(declare-fun b!2040942 () Bool)

(declare-fun inv!29649 (IArray!14967) Bool)

(assert (=> b!2040942 (= e!1288593 (and (inv!29649 (xs!10387 (c!330711 totalInput!418))) e!1288592))))

(assert (=> b!2040776 (= tp!605664 (and (inv!29638 (c!330711 totalInput!418)) e!1288593))))

(assert (= (and b!2040776 ((_ is Node!7481) (c!330711 totalInput!418))) b!2040941))

(assert (= b!2040942 b!2040943))

(assert (= (and b!2040776 ((_ is Leaf!10963) (c!330711 totalInput!418))) b!2040942))

(declare-fun m!2484957 () Bool)

(assert (=> b!2040941 m!2484957))

(declare-fun m!2484959 () Bool)

(assert (=> b!2040941 m!2484959))

(declare-fun m!2484961 () Bool)

(assert (=> b!2040942 m!2484961))

(assert (=> b!2040776 m!2484693))

(declare-fun e!1288595 () Bool)

(declare-fun tp!605718 () Bool)

(declare-fun tp!605717 () Bool)

(declare-fun b!2040944 () Bool)

(assert (=> b!2040944 (= e!1288595 (and (inv!29638 (left!17758 (c!330711 input!986))) tp!605717 (inv!29638 (right!18088 (c!330711 input!986))) tp!605718))))

(declare-fun b!2040946 () Bool)

(declare-fun e!1288594 () Bool)

(declare-fun tp!605719 () Bool)

(assert (=> b!2040946 (= e!1288594 tp!605719)))

(declare-fun b!2040945 () Bool)

(assert (=> b!2040945 (= e!1288595 (and (inv!29649 (xs!10387 (c!330711 input!986))) e!1288594))))

(assert (=> b!2040793 (= tp!605661 (and (inv!29638 (c!330711 input!986)) e!1288595))))

(assert (= (and b!2040793 ((_ is Node!7481) (c!330711 input!986))) b!2040944))

(assert (= b!2040945 b!2040946))

(assert (= (and b!2040793 ((_ is Leaf!10963) (c!330711 input!986))) b!2040945))

(declare-fun m!2484963 () Bool)

(assert (=> b!2040944 m!2484963))

(declare-fun m!2484965 () Bool)

(assert (=> b!2040944 m!2484965))

(declare-fun m!2484967 () Bool)

(assert (=> b!2040945 m!2484967))

(assert (=> b!2040793 m!2484753))

(declare-fun e!1288600 () Bool)

(declare-fun tp!605728 () Bool)

(declare-fun b!2040955 () Bool)

(declare-fun tp!605726 () Bool)

(assert (=> b!2040955 (= e!1288600 (and (inv!29639 (left!17759 (c!330712 acc!382))) tp!605728 (inv!29639 (right!18089 (c!330712 acc!382))) tp!605726))))

(declare-fun b!2040957 () Bool)

(declare-fun e!1288601 () Bool)

(declare-fun tp!605727 () Bool)

(assert (=> b!2040957 (= e!1288601 tp!605727)))

(declare-fun b!2040956 () Bool)

(declare-fun inv!29650 (IArray!14969) Bool)

(assert (=> b!2040956 (= e!1288600 (and (inv!29650 (xs!10388 (c!330712 acc!382))) e!1288601))))

(assert (=> b!2040784 (= tp!605660 (and (inv!29639 (c!330712 acc!382)) e!1288600))))

(assert (= (and b!2040784 ((_ is Node!7482) (c!330712 acc!382))) b!2040955))

(assert (= b!2040956 b!2040957))

(assert (= (and b!2040784 ((_ is Leaf!10964) (c!330712 acc!382))) b!2040956))

(declare-fun m!2484969 () Bool)

(assert (=> b!2040955 m!2484969))

(declare-fun m!2484971 () Bool)

(assert (=> b!2040955 m!2484971))

(declare-fun m!2484973 () Bool)

(assert (=> b!2040956 m!2484973))

(assert (=> b!2040784 m!2484739))

(declare-fun b!2040958 () Bool)

(declare-fun e!1288604 () Bool)

(declare-fun tp!605733 () Bool)

(assert (=> b!2040958 (= e!1288604 tp!605733)))

(declare-fun b!2040959 () Bool)

(declare-fun e!1288602 () Bool)

(declare-fun tp!605730 () Bool)

(assert (=> b!2040959 (= e!1288602 tp!605730)))

(declare-fun setIsEmpty!11739 () Bool)

(declare-fun setRes!11739 () Bool)

(assert (=> setIsEmpty!11739 setRes!11739))

(declare-fun tp!605732 () Bool)

(declare-fun e!1288603 () Bool)

(declare-fun tp!605729 () Bool)

(declare-fun b!2040960 () Bool)

(assert (=> b!2040960 (= e!1288603 (and tp!605732 (inv!29648 (_2!11952 (_1!11953 (h!27705 (zeroValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575)))))))))) e!1288602 tp_is_empty!9291 setRes!11739 tp!605729))))

(declare-fun condSetEmpty!11739 () Bool)

(assert (=> b!2040960 (= condSetEmpty!11739 (= (_2!11953 (h!27705 (zeroValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575)))))))) ((as const (Array Context!1998 Bool)) false)))))

(assert (=> b!2040783 (= tp!605668 e!1288603)))

(declare-fun tp!605731 () Bool)

(declare-fun setElem!11739 () Context!1998)

(declare-fun setNonEmpty!11739 () Bool)

(assert (=> setNonEmpty!11739 (= setRes!11739 (and tp!605731 (inv!29648 setElem!11739) e!1288604))))

(declare-fun setRest!11739 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11739 (= (_2!11953 (h!27705 (zeroValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11739 true) setRest!11739))))

(assert (= b!2040960 b!2040959))

(assert (= (and b!2040960 condSetEmpty!11739) setIsEmpty!11739))

(assert (= (and b!2040960 (not condSetEmpty!11739)) setNonEmpty!11739))

(assert (= setNonEmpty!11739 b!2040958))

(assert (= (and b!2040783 ((_ is Cons!22304) (zeroValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575)))))))) b!2040960))

(declare-fun m!2484975 () Bool)

(assert (=> b!2040960 m!2484975))

(declare-fun m!2484977 () Bool)

(assert (=> setNonEmpty!11739 m!2484977))

(declare-fun b!2040961 () Bool)

(declare-fun e!1288607 () Bool)

(declare-fun tp!605738 () Bool)

(assert (=> b!2040961 (= e!1288607 tp!605738)))

(declare-fun b!2040962 () Bool)

(declare-fun e!1288605 () Bool)

(declare-fun tp!605735 () Bool)

(assert (=> b!2040962 (= e!1288605 tp!605735)))

(declare-fun setIsEmpty!11740 () Bool)

(declare-fun setRes!11740 () Bool)

(assert (=> setIsEmpty!11740 setRes!11740))

(declare-fun e!1288606 () Bool)

(declare-fun tp!605737 () Bool)

(declare-fun tp!605734 () Bool)

(declare-fun b!2040963 () Bool)

(assert (=> b!2040963 (= e!1288606 (and tp!605737 (inv!29648 (_2!11952 (_1!11953 (h!27705 (minValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575)))))))))) e!1288605 tp_is_empty!9291 setRes!11740 tp!605734))))

(declare-fun condSetEmpty!11740 () Bool)

(assert (=> b!2040963 (= condSetEmpty!11740 (= (_2!11953 (h!27705 (minValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575)))))))) ((as const (Array Context!1998 Bool)) false)))))

(assert (=> b!2040783 (= tp!605655 e!1288606)))

(declare-fun setNonEmpty!11740 () Bool)

(declare-fun tp!605736 () Bool)

(declare-fun setElem!11740 () Context!1998)

(assert (=> setNonEmpty!11740 (= setRes!11740 (and tp!605736 (inv!29648 setElem!11740) e!1288607))))

(declare-fun setRest!11740 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11740 (= (_2!11953 (h!27705 (minValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11740 true) setRest!11740))))

(assert (= b!2040963 b!2040962))

(assert (= (and b!2040963 condSetEmpty!11740) setIsEmpty!11740))

(assert (= (and b!2040963 (not condSetEmpty!11740)) setNonEmpty!11740))

(assert (= setNonEmpty!11740 b!2040961))

(assert (= (and b!2040783 ((_ is Cons!22304) (minValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575)))))))) b!2040963))

(declare-fun m!2484979 () Bool)

(assert (=> b!2040963 m!2484979))

(declare-fun m!2484981 () Bool)

(assert (=> setNonEmpty!11740 m!2484981))

(declare-fun b!2040964 () Bool)

(declare-fun e!1288609 () Bool)

(declare-fun tp!605740 () Bool)

(assert (=> b!2040964 (= e!1288609 tp!605740)))

(declare-fun e!1288610 () Bool)

(assert (=> b!2040782 (= tp!605665 e!1288610)))

(declare-fun tp!605742 () Bool)

(declare-fun setNonEmpty!11741 () Bool)

(declare-fun setRes!11741 () Bool)

(declare-fun setElem!11741 () Context!1998)

(assert (=> setNonEmpty!11741 (= setRes!11741 (and tp!605742 (inv!29648 setElem!11741) e!1288609))))

(declare-fun setRest!11741 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11741 (= (_2!11956 (h!27710 mapDefault!9136)) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11741 true) setRest!11741))))

(declare-fun e!1288608 () Bool)

(declare-fun tp!605741 () Bool)

(declare-fun b!2040965 () Bool)

(assert (=> b!2040965 (= e!1288610 (and (inv!29648 (_1!11955 (_1!11956 (h!27710 mapDefault!9136)))) e!1288608 tp_is_empty!9291 setRes!11741 tp!605741))))

(declare-fun condSetEmpty!11741 () Bool)

(assert (=> b!2040965 (= condSetEmpty!11741 (= (_2!11956 (h!27710 mapDefault!9136)) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun b!2040966 () Bool)

(declare-fun tp!605739 () Bool)

(assert (=> b!2040966 (= e!1288608 tp!605739)))

(declare-fun setIsEmpty!11741 () Bool)

(assert (=> setIsEmpty!11741 setRes!11741))

(assert (= b!2040965 b!2040966))

(assert (= (and b!2040965 condSetEmpty!11741) setIsEmpty!11741))

(assert (= (and b!2040965 (not condSetEmpty!11741)) setNonEmpty!11741))

(assert (= setNonEmpty!11741 b!2040964))

(assert (= (and b!2040782 ((_ is Cons!22309) mapDefault!9136)) b!2040965))

(declare-fun m!2484983 () Bool)

(assert (=> setNonEmpty!11741 m!2484983))

(declare-fun m!2484985 () Bool)

(assert (=> b!2040965 m!2484985))

(declare-fun mapIsEmpty!9140 () Bool)

(declare-fun mapRes!9140 () Bool)

(assert (=> mapIsEmpty!9140 mapRes!9140))

(declare-fun b!2040981 () Bool)

(declare-fun mapValue!9140 () List!22393)

(declare-fun tp!605765 () Bool)

(declare-fun e!1288626 () Bool)

(declare-fun setRes!11747 () Bool)

(declare-fun e!1288623 () Bool)

(assert (=> b!2040981 (= e!1288623 (and (inv!29648 (_1!11955 (_1!11956 (h!27710 mapValue!9140)))) e!1288626 tp_is_empty!9291 setRes!11747 tp!605765))))

(declare-fun condSetEmpty!11746 () Bool)

(assert (=> b!2040981 (= condSetEmpty!11746 (= (_2!11956 (h!27710 mapValue!9140)) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun b!2040982 () Bool)

(declare-fun setRes!11746 () Bool)

(declare-fun tp!605764 () Bool)

(declare-fun e!1288625 () Bool)

(declare-fun e!1288627 () Bool)

(declare-fun mapDefault!9140 () List!22393)

(assert (=> b!2040982 (= e!1288625 (and (inv!29648 (_1!11955 (_1!11956 (h!27710 mapDefault!9140)))) e!1288627 tp_is_empty!9291 setRes!11746 tp!605764))))

(declare-fun condSetEmpty!11747 () Bool)

(assert (=> b!2040982 (= condSetEmpty!11747 (= (_2!11956 (h!27710 mapDefault!9140)) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun condMapEmpty!9140 () Bool)

(assert (=> mapNonEmpty!9137 (= condMapEmpty!9140 (= mapRest!9136 ((as const (Array (_ BitVec 32) List!22393)) mapDefault!9140)))))

(assert (=> mapNonEmpty!9137 (= tp!605657 (and e!1288625 mapRes!9140))))

(declare-fun b!2040983 () Bool)

(declare-fun e!1288628 () Bool)

(declare-fun tp!605768 () Bool)

(assert (=> b!2040983 (= e!1288628 tp!605768)))

(declare-fun b!2040984 () Bool)

(declare-fun tp!605766 () Bool)

(assert (=> b!2040984 (= e!1288626 tp!605766)))

(declare-fun setIsEmpty!11746 () Bool)

(assert (=> setIsEmpty!11746 setRes!11747))

(declare-fun mapNonEmpty!9140 () Bool)

(declare-fun tp!605763 () Bool)

(assert (=> mapNonEmpty!9140 (= mapRes!9140 (and tp!605763 e!1288623))))

(declare-fun mapKey!9140 () (_ BitVec 32))

(declare-fun mapRest!9140 () (Array (_ BitVec 32) List!22393))

(assert (=> mapNonEmpty!9140 (= mapRest!9136 (store mapRest!9140 mapKey!9140 mapValue!9140))))

(declare-fun setNonEmpty!11746 () Bool)

(declare-fun tp!605761 () Bool)

(declare-fun setElem!11746 () Context!1998)

(declare-fun e!1288624 () Bool)

(assert (=> setNonEmpty!11746 (= setRes!11747 (and tp!605761 (inv!29648 setElem!11746) e!1288624))))

(declare-fun setRest!11747 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11746 (= (_2!11956 (h!27710 mapValue!9140)) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11746 true) setRest!11747))))

(declare-fun b!2040985 () Bool)

(declare-fun tp!605769 () Bool)

(assert (=> b!2040985 (= e!1288627 tp!605769)))

(declare-fun b!2040986 () Bool)

(declare-fun tp!605767 () Bool)

(assert (=> b!2040986 (= e!1288624 tp!605767)))

(declare-fun setIsEmpty!11747 () Bool)

(assert (=> setIsEmpty!11747 setRes!11746))

(declare-fun tp!605762 () Bool)

(declare-fun setNonEmpty!11747 () Bool)

(declare-fun setElem!11747 () Context!1998)

(assert (=> setNonEmpty!11747 (= setRes!11746 (and tp!605762 (inv!29648 setElem!11747) e!1288628))))

(declare-fun setRest!11746 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11747 (= (_2!11956 (h!27710 mapDefault!9140)) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11747 true) setRest!11746))))

(assert (= (and mapNonEmpty!9137 condMapEmpty!9140) mapIsEmpty!9140))

(assert (= (and mapNonEmpty!9137 (not condMapEmpty!9140)) mapNonEmpty!9140))

(assert (= b!2040981 b!2040984))

(assert (= (and b!2040981 condSetEmpty!11746) setIsEmpty!11746))

(assert (= (and b!2040981 (not condSetEmpty!11746)) setNonEmpty!11746))

(assert (= setNonEmpty!11746 b!2040986))

(assert (= (and mapNonEmpty!9140 ((_ is Cons!22309) mapValue!9140)) b!2040981))

(assert (= b!2040982 b!2040985))

(assert (= (and b!2040982 condSetEmpty!11747) setIsEmpty!11747))

(assert (= (and b!2040982 (not condSetEmpty!11747)) setNonEmpty!11747))

(assert (= setNonEmpty!11747 b!2040983))

(assert (= (and mapNonEmpty!9137 ((_ is Cons!22309) mapDefault!9140)) b!2040982))

(declare-fun m!2484987 () Bool)

(assert (=> setNonEmpty!11746 m!2484987))

(declare-fun m!2484989 () Bool)

(assert (=> mapNonEmpty!9140 m!2484989))

(declare-fun m!2484991 () Bool)

(assert (=> setNonEmpty!11747 m!2484991))

(declare-fun m!2484993 () Bool)

(assert (=> b!2040981 m!2484993))

(declare-fun m!2484995 () Bool)

(assert (=> b!2040982 m!2484995))

(declare-fun b!2040987 () Bool)

(declare-fun e!1288630 () Bool)

(declare-fun tp!605771 () Bool)

(assert (=> b!2040987 (= e!1288630 tp!605771)))

(declare-fun e!1288631 () Bool)

(assert (=> mapNonEmpty!9137 (= tp!605671 e!1288631)))

(declare-fun setElem!11748 () Context!1998)

(declare-fun tp!605773 () Bool)

(declare-fun setNonEmpty!11748 () Bool)

(declare-fun setRes!11748 () Bool)

(assert (=> setNonEmpty!11748 (= setRes!11748 (and tp!605773 (inv!29648 setElem!11748) e!1288630))))

(declare-fun setRest!11748 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11748 (= (_2!11956 (h!27710 mapValue!9137)) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11748 true) setRest!11748))))

(declare-fun tp!605772 () Bool)

(declare-fun e!1288629 () Bool)

(declare-fun b!2040988 () Bool)

(assert (=> b!2040988 (= e!1288631 (and (inv!29648 (_1!11955 (_1!11956 (h!27710 mapValue!9137)))) e!1288629 tp_is_empty!9291 setRes!11748 tp!605772))))

(declare-fun condSetEmpty!11748 () Bool)

(assert (=> b!2040988 (= condSetEmpty!11748 (= (_2!11956 (h!27710 mapValue!9137)) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun b!2040989 () Bool)

(declare-fun tp!605770 () Bool)

(assert (=> b!2040989 (= e!1288629 tp!605770)))

(declare-fun setIsEmpty!11748 () Bool)

(assert (=> setIsEmpty!11748 setRes!11748))

(assert (= b!2040988 b!2040989))

(assert (= (and b!2040988 condSetEmpty!11748) setIsEmpty!11748))

(assert (= (and b!2040988 (not condSetEmpty!11748)) setNonEmpty!11748))

(assert (= setNonEmpty!11748 b!2040987))

(assert (= (and mapNonEmpty!9137 ((_ is Cons!22309) mapValue!9137)) b!2040988))

(declare-fun m!2484997 () Bool)

(assert (=> setNonEmpty!11748 m!2484997))

(declare-fun m!2484999 () Bool)

(assert (=> b!2040988 m!2484999))

(declare-fun b!2041000 () Bool)

(declare-fun b_free!56885 () Bool)

(declare-fun b_next!57589 () Bool)

(assert (=> b!2041000 (= b_free!56885 (not b_next!57589))))

(declare-fun tp!605782 () Bool)

(declare-fun b_and!162825 () Bool)

(assert (=> b!2041000 (= tp!605782 b_and!162825)))

(declare-fun b_free!56887 () Bool)

(declare-fun b_next!57591 () Bool)

(assert (=> b!2041000 (= b_free!56887 (not b_next!57591))))

(declare-fun tp!605784 () Bool)

(declare-fun b_and!162827 () Bool)

(assert (=> b!2041000 (= tp!605784 b_and!162827)))

(declare-fun e!1288640 () Bool)

(assert (=> b!2041000 (= e!1288640 (and tp!605782 tp!605784))))

(declare-fun b!2040999 () Bool)

(declare-fun tp!605785 () Bool)

(declare-fun e!1288643 () Bool)

(assert (=> b!2040999 (= e!1288643 (and tp!605785 (inv!29636 (tag!4493 (h!27708 (t!191500 rules!1563)))) (inv!29637 (transformation!4003 (h!27708 (t!191500 rules!1563)))) e!1288640))))

(declare-fun b!2040998 () Bool)

(declare-fun e!1288641 () Bool)

(declare-fun tp!605783 () Bool)

(assert (=> b!2040998 (= e!1288641 (and e!1288643 tp!605783))))

(assert (=> b!2040800 (= tp!605662 e!1288641)))

(assert (= b!2040999 b!2041000))

(assert (= b!2040998 b!2040999))

(assert (= (and b!2040800 ((_ is Cons!22307) (t!191500 rules!1563))) b!2040998))

(declare-fun m!2485001 () Bool)

(assert (=> b!2040999 m!2485001))

(declare-fun m!2485003 () Bool)

(assert (=> b!2040999 m!2485003))

(declare-fun b!2041012 () Bool)

(declare-fun e!1288646 () Bool)

(declare-fun tp!605796 () Bool)

(declare-fun tp!605798 () Bool)

(assert (=> b!2041012 (= e!1288646 (and tp!605796 tp!605798))))

(declare-fun b!2041013 () Bool)

(declare-fun tp!605797 () Bool)

(assert (=> b!2041013 (= e!1288646 tp!605797)))

(declare-fun b!2041014 () Bool)

(declare-fun tp!605800 () Bool)

(declare-fun tp!605799 () Bool)

(assert (=> b!2041014 (= e!1288646 (and tp!605800 tp!605799))))

(assert (=> b!2040770 (= tp!605674 e!1288646)))

(declare-fun b!2041011 () Bool)

(assert (=> b!2041011 (= e!1288646 tp_is_empty!9291)))

(assert (= (and b!2040770 ((_ is ElementMatch!5429) (regex!4003 (h!27708 rules!1563)))) b!2041011))

(assert (= (and b!2040770 ((_ is Concat!9568) (regex!4003 (h!27708 rules!1563)))) b!2041012))

(assert (= (and b!2040770 ((_ is Star!5429) (regex!4003 (h!27708 rules!1563)))) b!2041013))

(assert (= (and b!2040770 ((_ is Union!5429) (regex!4003 (h!27708 rules!1563)))) b!2041014))

(declare-fun tp!605801 () Bool)

(declare-fun tp!605802 () Bool)

(declare-fun b!2041015 () Bool)

(declare-fun e!1288648 () Bool)

(assert (=> b!2041015 (= e!1288648 (and (inv!29638 (left!17758 (c!330711 treated!60))) tp!605801 (inv!29638 (right!18088 (c!330711 treated!60))) tp!605802))))

(declare-fun b!2041017 () Bool)

(declare-fun e!1288647 () Bool)

(declare-fun tp!605803 () Bool)

(assert (=> b!2041017 (= e!1288647 tp!605803)))

(declare-fun b!2041016 () Bool)

(assert (=> b!2041016 (= e!1288648 (and (inv!29649 (xs!10387 (c!330711 treated!60))) e!1288647))))

(assert (=> b!2040797 (= tp!605659 (and (inv!29638 (c!330711 treated!60)) e!1288648))))

(assert (= (and b!2040797 ((_ is Node!7481) (c!330711 treated!60))) b!2041015))

(assert (= b!2041016 b!2041017))

(assert (= (and b!2040797 ((_ is Leaf!10963) (c!330711 treated!60))) b!2041016))

(declare-fun m!2485005 () Bool)

(assert (=> b!2041015 m!2485005))

(declare-fun m!2485007 () Bool)

(assert (=> b!2041015 m!2485007))

(declare-fun m!2485009 () Bool)

(assert (=> b!2041016 m!2485009))

(assert (=> b!2040797 m!2484763))

(declare-fun setRes!11754 () Bool)

(declare-fun setElem!11754 () Context!1998)

(declare-fun setNonEmpty!11753 () Bool)

(declare-fun e!1288661 () Bool)

(declare-fun tp!605835 () Bool)

(assert (=> setNonEmpty!11753 (= setRes!11754 (and tp!605835 (inv!29648 setElem!11754) e!1288661))))

(declare-fun mapDefault!9143 () List!22388)

(declare-fun setRest!11753 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11753 (= (_2!11953 (h!27705 mapDefault!9143)) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11754 true) setRest!11753))))

(declare-fun b!2041032 () Bool)

(declare-fun e!1288666 () Bool)

(declare-fun tp!605831 () Bool)

(assert (=> b!2041032 (= e!1288666 tp!605831)))

(declare-fun condMapEmpty!9143 () Bool)

(assert (=> mapNonEmpty!9136 (= condMapEmpty!9143 (= mapRest!9137 ((as const (Array (_ BitVec 32) List!22388)) mapDefault!9143)))))

(declare-fun e!1288664 () Bool)

(declare-fun mapRes!9143 () Bool)

(assert (=> mapNonEmpty!9136 (= tp!605658 (and e!1288664 mapRes!9143))))

(declare-fun b!2041033 () Bool)

(declare-fun tp!605829 () Bool)

(assert (=> b!2041033 (= e!1288661 tp!605829)))

(declare-fun mapNonEmpty!9143 () Bool)

(declare-fun tp!605832 () Bool)

(declare-fun e!1288665 () Bool)

(assert (=> mapNonEmpty!9143 (= mapRes!9143 (and tp!605832 e!1288665))))

(declare-fun mapValue!9143 () List!22388)

(declare-fun mapKey!9143 () (_ BitVec 32))

(declare-fun mapRest!9143 () (Array (_ BitVec 32) List!22388))

(assert (=> mapNonEmpty!9143 (= mapRest!9137 (store mapRest!9143 mapKey!9143 mapValue!9143))))

(declare-fun b!2041034 () Bool)

(declare-fun e!1288663 () Bool)

(declare-fun tp!605834 () Bool)

(assert (=> b!2041034 (= e!1288663 tp!605834)))

(declare-fun tp!605828 () Bool)

(declare-fun b!2041035 () Bool)

(declare-fun setRes!11753 () Bool)

(declare-fun tp!605833 () Bool)

(assert (=> b!2041035 (= e!1288665 (and tp!605828 (inv!29648 (_2!11952 (_1!11953 (h!27705 mapValue!9143)))) e!1288663 tp_is_empty!9291 setRes!11753 tp!605833))))

(declare-fun condSetEmpty!11753 () Bool)

(assert (=> b!2041035 (= condSetEmpty!11753 (= (_2!11953 (h!27705 mapValue!9143)) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun setIsEmpty!11753 () Bool)

(assert (=> setIsEmpty!11753 setRes!11753))

(declare-fun setIsEmpty!11754 () Bool)

(assert (=> setIsEmpty!11754 setRes!11754))

(declare-fun setElem!11753 () Context!1998)

(declare-fun setNonEmpty!11754 () Bool)

(declare-fun tp!605826 () Bool)

(assert (=> setNonEmpty!11754 (= setRes!11753 (and tp!605826 (inv!29648 setElem!11753) e!1288666))))

(declare-fun setRest!11754 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11754 (= (_2!11953 (h!27705 mapValue!9143)) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11753 true) setRest!11754))))

(declare-fun mapIsEmpty!9143 () Bool)

(assert (=> mapIsEmpty!9143 mapRes!9143))

(declare-fun b!2041036 () Bool)

(declare-fun tp!605827 () Bool)

(declare-fun e!1288662 () Bool)

(declare-fun tp!605836 () Bool)

(assert (=> b!2041036 (= e!1288664 (and tp!605827 (inv!29648 (_2!11952 (_1!11953 (h!27705 mapDefault!9143)))) e!1288662 tp_is_empty!9291 setRes!11754 tp!605836))))

(declare-fun condSetEmpty!11754 () Bool)

(assert (=> b!2041036 (= condSetEmpty!11754 (= (_2!11953 (h!27705 mapDefault!9143)) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun b!2041037 () Bool)

(declare-fun tp!605830 () Bool)

(assert (=> b!2041037 (= e!1288662 tp!605830)))

(assert (= (and mapNonEmpty!9136 condMapEmpty!9143) mapIsEmpty!9143))

(assert (= (and mapNonEmpty!9136 (not condMapEmpty!9143)) mapNonEmpty!9143))

(assert (= b!2041035 b!2041034))

(assert (= (and b!2041035 condSetEmpty!11753) setIsEmpty!11753))

(assert (= (and b!2041035 (not condSetEmpty!11753)) setNonEmpty!11754))

(assert (= setNonEmpty!11754 b!2041032))

(assert (= (and mapNonEmpty!9143 ((_ is Cons!22304) mapValue!9143)) b!2041035))

(assert (= b!2041036 b!2041037))

(assert (= (and b!2041036 condSetEmpty!11754) setIsEmpty!11754))

(assert (= (and b!2041036 (not condSetEmpty!11754)) setNonEmpty!11753))

(assert (= setNonEmpty!11753 b!2041033))

(assert (= (and mapNonEmpty!9136 ((_ is Cons!22304) mapDefault!9143)) b!2041036))

(declare-fun m!2485011 () Bool)

(assert (=> setNonEmpty!11753 m!2485011))

(declare-fun m!2485013 () Bool)

(assert (=> b!2041035 m!2485013))

(declare-fun m!2485015 () Bool)

(assert (=> b!2041036 m!2485015))

(declare-fun m!2485017 () Bool)

(assert (=> setNonEmpty!11754 m!2485017))

(declare-fun m!2485019 () Bool)

(assert (=> mapNonEmpty!9143 m!2485019))

(declare-fun b!2041038 () Bool)

(declare-fun e!1288669 () Bool)

(declare-fun tp!605841 () Bool)

(assert (=> b!2041038 (= e!1288669 tp!605841)))

(declare-fun b!2041039 () Bool)

(declare-fun e!1288667 () Bool)

(declare-fun tp!605838 () Bool)

(assert (=> b!2041039 (= e!1288667 tp!605838)))

(declare-fun setIsEmpty!11755 () Bool)

(declare-fun setRes!11755 () Bool)

(assert (=> setIsEmpty!11755 setRes!11755))

(declare-fun b!2041040 () Bool)

(declare-fun tp!605840 () Bool)

(declare-fun e!1288668 () Bool)

(declare-fun tp!605837 () Bool)

(assert (=> b!2041040 (= e!1288668 (and tp!605840 (inv!29648 (_2!11952 (_1!11953 (h!27705 mapValue!9136)))) e!1288667 tp_is_empty!9291 setRes!11755 tp!605837))))

(declare-fun condSetEmpty!11755 () Bool)

(assert (=> b!2041040 (= condSetEmpty!11755 (= (_2!11953 (h!27705 mapValue!9136)) ((as const (Array Context!1998 Bool)) false)))))

(assert (=> mapNonEmpty!9136 (= tp!605672 e!1288668)))

(declare-fun setElem!11755 () Context!1998)

(declare-fun setNonEmpty!11755 () Bool)

(declare-fun tp!605839 () Bool)

(assert (=> setNonEmpty!11755 (= setRes!11755 (and tp!605839 (inv!29648 setElem!11755) e!1288669))))

(declare-fun setRest!11755 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11755 (= (_2!11953 (h!27705 mapValue!9136)) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11755 true) setRest!11755))))

(assert (= b!2041040 b!2041039))

(assert (= (and b!2041040 condSetEmpty!11755) setIsEmpty!11755))

(assert (= (and b!2041040 (not condSetEmpty!11755)) setNonEmpty!11755))

(assert (= setNonEmpty!11755 b!2041038))

(assert (= (and mapNonEmpty!9136 ((_ is Cons!22304) mapValue!9136)) b!2041040))

(declare-fun m!2485021 () Bool)

(assert (=> b!2041040 m!2485021))

(declare-fun m!2485023 () Bool)

(assert (=> setNonEmpty!11755 m!2485023))

(check-sat (not d!625046) (not b!2040945) (not b!2040998) (not b!2041017) (not d!625038) (not b!2040966) (not setNonEmpty!11754) (not b!2040917) (not setNonEmpty!11755) (not b!2040983) (not b!2040946) (not b!2040964) (not b!2040845) (not d!625050) (not b!2041012) (not b!2040880) (not b!2040830) (not d!625008) b_and!162821 (not d!625052) (not b!2040793) (not b!2040965) (not b!2040884) (not b!2041013) (not d!625048) (not b!2040918) (not b!2040897) (not d!625006) (not b!2041038) (not b!2040900) (not b!2041032) b_and!162817 (not b!2040906) (not d!624996) (not b!2040807) (not d!625014) (not b!2040955) (not b!2040999) (not b!2040919) (not b!2040858) (not b!2040809) (not b_next!57585) (not b!2040921) (not b!2041035) (not mapNonEmpty!9143) (not d!625016) (not b!2040824) (not b!2040827) (not b!2040941) (not b_next!57591) (not setNonEmpty!11739) (not b!2040932) (not b!2040842) (not b!2040875) (not b!2040943) (not b!2040888) (not b!2040931) (not b!2040988) (not b!2040876) (not setNonEmpty!11734) (not d!625018) (not b!2040776) (not d!625030) (not b!2040784) (not b!2040902) (not b_next!57579) (not b!2040860) (not d!625002) (not b!2040986) (not b!2040944) (not b!2040833) (not b!2040916) (not b!2040881) (not d!624988) (not b!2040930) (not b!2041037) (not setNonEmpty!11746) (not d!625020) b_and!162819 (not d!624990) b_and!162823 (not b!2041033) (not b!2041040) b_and!162813 (not b!2040898) (not b!2040956) (not b!2040904) (not setNonEmpty!11747) (not b!2040907) (not b!2040883) (not b!2040920) (not b!2040942) (not d!625032) (not b!2040903) (not b!2041016) (not b!2040901) (not setNonEmpty!11740) (not b!2040857) (not b_next!57583) (not b!2040797) (not d!624986) (not b!2041015) (not b!2040885) (not b!2040984) (not b!2040989) (not setNonEmpty!11741) (not b!2040982) b_and!162825 (not b_next!57587) (not d!624998) b_and!162815 (not d!625056) tp_is_empty!9291 (not b!2040957) (not b!2040985) (not b!2040851) (not setNonEmpty!11735) (not b!2040899) (not b!2040882) (not d!625034) (not b_next!57581) (not b!2040981) (not d!624992) (not b!2040987) (not mapNonEmpty!9140) (not b!2040820) (not b!2040958) (not b!2040819) (not b!2040961) (not b!2040959) (not b!2041034) (not b!2040852) (not b!2041039) (not b!2040887) (not b_next!57577) (not d!625012) (not b!2040822) (not d!625054) b_and!162827 (not setNonEmpty!11738) (not b!2040877) (not setNonEmpty!11753) (not b!2041014) (not d!625044) (not b!2040878) (not setNonEmpty!11748) (not d!625026) (not d!625042) (not b_next!57589) (not b!2040960) (not b!2040963) (not b!2040840) (not b!2040962) (not b!2041036) (not b!2040846))
(check-sat b_and!162821 b_and!162817 (not b_next!57585) (not b_next!57591) (not b_next!57579) b_and!162819 b_and!162823 b_and!162813 (not b_next!57583) b_and!162815 (not b_next!57581) (not b_next!57577) b_and!162827 (not b_next!57589) b_and!162825 (not b_next!57587))
(get-model)

(declare-fun d!625058 () Bool)

(assert (=> d!625058 (= (list!9151 (_2!11954 lt!765621)) (list!9152 (c!330711 (_2!11954 lt!765621))))))

(declare-fun bs!421530 () Bool)

(assert (= bs!421530 d!625058))

(declare-fun m!2485025 () Bool)

(assert (=> bs!421530 m!2485025))

(assert (=> b!2040882 d!625058))

(assert (=> b!2040882 d!624990))

(declare-fun d!625060 () Bool)

(declare-fun res!894581 () Bool)

(declare-fun e!1288672 () Bool)

(assert (=> d!625060 (=> (not res!894581) (not e!1288672))))

(declare-fun size!17458 (Conc!7481) Int)

(assert (=> d!625060 (= res!894581 (= (csize!15192 (c!330711 totalInput!418)) (+ (size!17458 (left!17758 (c!330711 totalInput!418))) (size!17458 (right!18088 (c!330711 totalInput!418))))))))

(assert (=> d!625060 (= (inv!29644 (c!330711 totalInput!418)) e!1288672)))

(declare-fun b!2041047 () Bool)

(declare-fun res!894582 () Bool)

(assert (=> b!2041047 (=> (not res!894582) (not e!1288672))))

(assert (=> b!2041047 (= res!894582 (and (not (= (left!17758 (c!330711 totalInput!418)) Empty!7481)) (not (= (right!18088 (c!330711 totalInput!418)) Empty!7481))))))

(declare-fun b!2041048 () Bool)

(declare-fun res!894583 () Bool)

(assert (=> b!2041048 (=> (not res!894583) (not e!1288672))))

(declare-fun height!1175 (Conc!7481) Int)

(assert (=> b!2041048 (= res!894583 (= (cheight!7692 (c!330711 totalInput!418)) (+ (max!0 (height!1175 (left!17758 (c!330711 totalInput!418))) (height!1175 (right!18088 (c!330711 totalInput!418)))) 1)))))

(declare-fun b!2041049 () Bool)

(assert (=> b!2041049 (= e!1288672 (<= 0 (cheight!7692 (c!330711 totalInput!418))))))

(assert (= (and d!625060 res!894581) b!2041047))

(assert (= (and b!2041047 res!894582) b!2041048))

(assert (= (and b!2041048 res!894583) b!2041049))

(declare-fun m!2485027 () Bool)

(assert (=> d!625060 m!2485027))

(declare-fun m!2485029 () Bool)

(assert (=> d!625060 m!2485029))

(declare-fun m!2485031 () Bool)

(assert (=> b!2041048 m!2485031))

(declare-fun m!2485033 () Bool)

(assert (=> b!2041048 m!2485033))

(assert (=> b!2041048 m!2485031))

(assert (=> b!2041048 m!2485033))

(declare-fun m!2485035 () Bool)

(assert (=> b!2041048 m!2485035))

(assert (=> b!2040807 d!625060))

(declare-fun b!2041058 () Bool)

(declare-fun e!1288677 () List!22392)

(assert (=> b!2041058 (= e!1288677 Nil!22308)))

(declare-fun b!2041060 () Bool)

(declare-fun e!1288678 () List!22392)

(declare-fun list!9154 (IArray!14969) List!22392)

(assert (=> b!2041060 (= e!1288678 (list!9154 (xs!10388 (c!330712 acc!382))))))

(declare-fun d!625062 () Bool)

(declare-fun c!330742 () Bool)

(assert (=> d!625062 (= c!330742 ((_ is Empty!7482) (c!330712 acc!382)))))

(assert (=> d!625062 (= (list!9153 (c!330712 acc!382)) e!1288677)))

(declare-fun b!2041061 () Bool)

(assert (=> b!2041061 (= e!1288678 (++!6063 (list!9153 (left!17759 (c!330712 acc!382))) (list!9153 (right!18089 (c!330712 acc!382)))))))

(declare-fun b!2041059 () Bool)

(assert (=> b!2041059 (= e!1288677 e!1288678)))

(declare-fun c!330743 () Bool)

(assert (=> b!2041059 (= c!330743 ((_ is Leaf!10964) (c!330712 acc!382)))))

(assert (= (and d!625062 c!330742) b!2041058))

(assert (= (and d!625062 (not c!330742)) b!2041059))

(assert (= (and b!2041059 c!330743) b!2041060))

(assert (= (and b!2041059 (not c!330743)) b!2041061))

(declare-fun m!2485037 () Bool)

(assert (=> b!2041060 m!2485037))

(declare-fun m!2485039 () Bool)

(assert (=> b!2041061 m!2485039))

(declare-fun m!2485041 () Bool)

(assert (=> b!2041061 m!2485041))

(assert (=> b!2041061 m!2485039))

(assert (=> b!2041061 m!2485041))

(declare-fun m!2485043 () Bool)

(assert (=> b!2041061 m!2485043))

(assert (=> d!625054 d!625062))

(declare-fun d!625064 () Bool)

(assert (=> d!625064 (= (list!9151 (_2!11954 lt!765627)) (list!9152 (c!330711 (_2!11954 lt!765627))))))

(declare-fun bs!421531 () Bool)

(assert (= bs!421531 d!625064))

(declare-fun m!2485045 () Bool)

(assert (=> bs!421531 m!2485045))

(assert (=> b!2040904 d!625064))

(declare-fun d!625066 () Bool)

(declare-fun e!1288686 () Bool)

(assert (=> d!625066 e!1288686))

(declare-fun c!330748 () Bool)

(declare-fun lt!765634 () tuple2!20970)

(declare-fun size!17459 (List!22392) Int)

(assert (=> d!625066 (= c!330748 (> (size!17459 (_1!11958 lt!765634)) 0))))

(declare-fun e!1288687 () tuple2!20970)

(assert (=> d!625066 (= lt!765634 e!1288687)))

(declare-fun c!330749 () Bool)

(declare-datatypes ((tuple2!20972 0))(
  ( (tuple2!20973 (_1!11959 Token!7556) (_2!11959 List!22390)) )
))
(declare-datatypes ((Option!4688 0))(
  ( (None!4687) (Some!4687 (v!27043 tuple2!20972)) )
))
(declare-fun lt!765636 () Option!4688)

(assert (=> d!625066 (= c!330749 ((_ is Some!4687) lt!765636))))

(declare-fun maxPrefix!2050 (LexerInterface!3616 List!22391 List!22390) Option!4688)

(assert (=> d!625066 (= lt!765636 (maxPrefix!2050 thiss!12889 rules!1563 (list!9151 treated!60)))))

(assert (=> d!625066 (= (lexList!986 thiss!12889 rules!1563 (list!9151 treated!60)) lt!765634)))

(declare-fun b!2041072 () Bool)

(declare-fun e!1288685 () Bool)

(assert (=> b!2041072 (= e!1288686 e!1288685)))

(declare-fun res!894586 () Bool)

(assert (=> b!2041072 (= res!894586 (< (size!17455 (_2!11958 lt!765634)) (size!17455 (list!9151 treated!60))))))

(assert (=> b!2041072 (=> (not res!894586) (not e!1288685))))

(declare-fun b!2041073 () Bool)

(declare-fun lt!765635 () tuple2!20970)

(assert (=> b!2041073 (= e!1288687 (tuple2!20971 (Cons!22308 (_1!11959 (v!27043 lt!765636)) (_1!11958 lt!765635)) (_2!11958 lt!765635)))))

(assert (=> b!2041073 (= lt!765635 (lexList!986 thiss!12889 rules!1563 (_2!11959 (v!27043 lt!765636))))))

(declare-fun b!2041074 () Bool)

(assert (=> b!2041074 (= e!1288686 (= (_2!11958 lt!765634) (list!9151 treated!60)))))

(declare-fun b!2041075 () Bool)

(declare-fun isEmpty!13948 (List!22392) Bool)

(assert (=> b!2041075 (= e!1288685 (not (isEmpty!13948 (_1!11958 lt!765634))))))

(declare-fun b!2041076 () Bool)

(assert (=> b!2041076 (= e!1288687 (tuple2!20971 Nil!22308 (list!9151 treated!60)))))

(assert (= (and d!625066 c!330749) b!2041073))

(assert (= (and d!625066 (not c!330749)) b!2041076))

(assert (= (and d!625066 c!330748) b!2041072))

(assert (= (and d!625066 (not c!330748)) b!2041074))

(assert (= (and b!2041072 res!894586) b!2041075))

(declare-fun m!2485047 () Bool)

(assert (=> d!625066 m!2485047))

(assert (=> d!625066 m!2484747))

(declare-fun m!2485049 () Bool)

(assert (=> d!625066 m!2485049))

(declare-fun m!2485051 () Bool)

(assert (=> b!2041072 m!2485051))

(assert (=> b!2041072 m!2484747))

(declare-fun m!2485053 () Bool)

(assert (=> b!2041072 m!2485053))

(declare-fun m!2485055 () Bool)

(assert (=> b!2041073 m!2485055))

(declare-fun m!2485057 () Bool)

(assert (=> b!2041075 m!2485057))

(assert (=> b!2040904 d!625066))

(assert (=> b!2040904 d!624992))

(declare-fun d!625068 () Bool)

(assert (=> d!625068 (= (height!1174 (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587)))) (ite ((_ is Empty!7482) (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587)))) 0 (ite ((_ is Leaf!10964) (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587)))) 1 (cheight!7693 (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587)))))))))

(assert (=> b!2040898 d!625068))

(declare-fun d!625070 () Bool)

(assert (=> d!625070 (= (max!0 (height!1174 (c!330712 acc!382)) (height!1174 (c!330712 (_1!11954 lt!765587)))) (ite (< (height!1174 (c!330712 acc!382)) (height!1174 (c!330712 (_1!11954 lt!765587)))) (height!1174 (c!330712 (_1!11954 lt!765587))) (height!1174 (c!330712 acc!382))))))

(assert (=> b!2040898 d!625070))

(declare-fun bm!125256 () Bool)

(declare-fun call!125266 () Conc!7482)

(declare-fun call!125273 () Conc!7482)

(assert (=> bm!125256 (= call!125266 call!125273)))

(declare-fun d!625072 () Bool)

(declare-fun e!1288710 () Bool)

(assert (=> d!625072 e!1288710))

(declare-fun res!894599 () Bool)

(assert (=> d!625072 (=> (not res!894599) (not e!1288710))))

(assert (=> d!625072 (= res!894599 (appendAssocInst!547 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587))))))

(declare-fun lt!765645 () Conc!7482)

(declare-fun e!1288712 () Conc!7482)

(assert (=> d!625072 (= lt!765645 e!1288712)))

(declare-fun c!330766 () Bool)

(assert (=> d!625072 (= c!330766 (= (c!330712 acc!382) Empty!7482))))

(declare-fun e!1288713 () Bool)

(assert (=> d!625072 e!1288713))

(declare-fun res!894598 () Bool)

(assert (=> d!625072 (=> (not res!894598) (not e!1288713))))

(assert (=> d!625072 (= res!894598 (isBalanced!2355 (c!330712 acc!382)))))

(assert (=> d!625072 (= (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587))) lt!765645)))

(declare-fun b!2041119 () Bool)

(declare-fun res!894597 () Bool)

(assert (=> b!2041119 (=> (not res!894597) (not e!1288710))))

(assert (=> b!2041119 (= res!894597 (>= (height!1174 lt!765645) (max!0 (height!1174 (c!330712 acc!382)) (height!1174 (c!330712 (_1!11954 lt!765587))))))))

(declare-fun b!2041120 () Bool)

(declare-fun e!1288711 () Conc!7482)

(declare-fun call!125274 () Conc!7482)

(assert (=> b!2041120 (= e!1288711 call!125274)))

(declare-fun b!2041121 () Bool)

(declare-fun res!894601 () Bool)

(assert (=> b!2041121 (=> (not res!894601) (not e!1288710))))

(assert (=> b!2041121 (= res!894601 (<= (height!1174 lt!765645) (+ (max!0 (height!1174 (c!330712 acc!382)) (height!1174 (c!330712 (_1!11954 lt!765587)))) 1)))))

(declare-fun bm!125257 () Bool)

(declare-fun call!125261 () Conc!7482)

(assert (=> bm!125257 (= call!125261 call!125274)))

(declare-fun bm!125258 () Bool)

(declare-fun call!125263 () Int)

(declare-fun c!330770 () Bool)

(declare-fun lt!765647 () Conc!7482)

(assert (=> bm!125258 (= call!125263 (height!1174 (ite c!330770 lt!765647 (right!18089 (c!330712 (_1!11954 lt!765587))))))))

(declare-fun c!330772 () Bool)

(declare-fun c!330769 () Bool)

(declare-fun bm!125259 () Bool)

(assert (=> bm!125259 (= call!125273 (++!6062 (ite c!330770 (ite c!330769 (right!18089 (c!330712 acc!382)) (right!18089 (right!18089 (c!330712 acc!382)))) (c!330712 acc!382)) (ite c!330770 (c!330712 (_1!11954 lt!765587)) (ite c!330772 (left!17759 (c!330712 (_1!11954 lt!765587))) (left!17759 (left!17759 (c!330712 (_1!11954 lt!765587))))))))))

(declare-fun b!2041122 () Bool)

(declare-fun e!1288716 () Conc!7482)

(declare-fun call!125267 () Conc!7482)

(assert (=> b!2041122 (= e!1288716 call!125267)))

(declare-fun bm!125260 () Bool)

(declare-fun call!125275 () Conc!7482)

(assert (=> bm!125260 (= call!125274 call!125275)))

(declare-fun bm!125261 () Bool)

(declare-fun call!125262 () Conc!7482)

(declare-fun call!125276 () Conc!7482)

(assert (=> bm!125261 (= call!125262 call!125276)))

(declare-fun b!2041123 () Bool)

(declare-fun e!1288717 () Conc!7482)

(declare-fun e!1288714 () Conc!7482)

(assert (=> b!2041123 (= e!1288717 e!1288714)))

(declare-fun lt!765646 () Conc!7482)

(assert (=> b!2041123 (= lt!765646 call!125266)))

(declare-fun c!330767 () Bool)

(declare-fun call!125268 () Int)

(declare-fun call!125265 () Int)

(assert (=> b!2041123 (= c!330767 (= call!125268 (- call!125265 3)))))

(declare-fun b!2041124 () Bool)

(declare-fun call!125270 () Int)

(assert (=> b!2041124 (= c!330769 (>= call!125268 call!125270))))

(declare-fun e!1288715 () Conc!7482)

(assert (=> b!2041124 (= e!1288715 e!1288711)))

(declare-fun b!2041125 () Bool)

(declare-fun e!1288708 () Conc!7482)

(assert (=> b!2041125 (= e!1288712 e!1288708)))

(declare-fun c!330771 () Bool)

(assert (=> b!2041125 (= c!330771 (= (c!330712 (_1!11954 lt!765587)) Empty!7482))))

(declare-fun b!2041126 () Bool)

(assert (=> b!2041126 (= e!1288712 (c!330712 (_1!11954 lt!765587)))))

(declare-fun bm!125262 () Bool)

(declare-fun call!125272 () Conc!7482)

(assert (=> bm!125262 (= call!125272 call!125275)))

(declare-fun b!2041127 () Bool)

(declare-fun e!1288709 () Conc!7482)

(assert (=> b!2041127 (= e!1288709 e!1288715)))

(declare-fun lt!765648 () Int)

(assert (=> b!2041127 (= c!330770 (< lt!765648 (- 1)))))

(declare-fun b!2041128 () Bool)

(assert (=> b!2041128 (= c!330772 (>= call!125263 call!125270))))

(assert (=> b!2041128 (= e!1288715 e!1288717)))

(declare-fun bm!125263 () Bool)

(assert (=> bm!125263 (= call!125270 (height!1174 (ite c!330770 (right!18089 (c!330712 acc!382)) (left!17759 (c!330712 (_1!11954 lt!765587))))))))

(declare-fun b!2041129 () Bool)

(declare-fun res!894600 () Bool)

(assert (=> b!2041129 (=> (not res!894600) (not e!1288710))))

(assert (=> b!2041129 (= res!894600 (isBalanced!2355 lt!765645))))

(declare-fun b!2041130 () Bool)

(assert (=> b!2041130 (= e!1288713 (isBalanced!2355 (c!330712 (_1!11954 lt!765587))))))

(declare-fun b!2041131 () Bool)

(assert (=> b!2041131 (= e!1288717 call!125272)))

(declare-fun bm!125264 () Bool)

(declare-fun call!125269 () Conc!7482)

(assert (=> bm!125264 (= call!125275 call!125269)))

(declare-fun bm!125265 () Bool)

(assert (=> bm!125265 (= call!125265 (height!1174 (ite c!330770 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587)))))))

(declare-fun b!2041132 () Bool)

(assert (=> b!2041132 (= e!1288714 call!125262)))

(declare-fun b!2041133 () Bool)

(assert (=> b!2041133 (= e!1288711 e!1288716)))

(declare-fun call!125264 () Conc!7482)

(assert (=> b!2041133 (= lt!765647 call!125264)))

(declare-fun c!330768 () Bool)

(assert (=> b!2041133 (= c!330768 (= call!125263 (- call!125265 3)))))

(declare-fun b!2041134 () Bool)

(assert (=> b!2041134 (= e!1288714 call!125262)))

(declare-fun c!330773 () Bool)

(declare-fun bm!125266 () Bool)

(declare-fun <>!179 (Conc!7482 Conc!7482) Conc!7482)

(assert (=> bm!125266 (= call!125269 (<>!179 (ite c!330773 (c!330712 acc!382) (ite c!330770 (ite c!330769 (left!17759 (c!330712 acc!382)) (ite c!330768 (left!17759 (right!18089 (c!330712 acc!382))) (left!17759 (c!330712 acc!382)))) (ite c!330772 call!125266 (ite c!330767 lt!765646 (right!18089 (left!17759 (c!330712 (_1!11954 lt!765587)))))))) (ite c!330773 (c!330712 (_1!11954 lt!765587)) (ite c!330770 (ite c!330769 call!125264 (ite c!330768 lt!765647 (left!17759 (right!18089 (c!330712 acc!382))))) (ite c!330772 (right!18089 (c!330712 (_1!11954 lt!765587))) (ite c!330767 (right!18089 (left!17759 (c!330712 (_1!11954 lt!765587)))) (right!18089 (c!330712 (_1!11954 lt!765587)))))))))))

(declare-fun b!2041135 () Bool)

(assert (=> b!2041135 (= c!330773 (and (<= (- 1) lt!765648) (<= lt!765648 1)))))

(assert (=> b!2041135 (= lt!765648 (- (height!1174 (c!330712 (_1!11954 lt!765587))) (height!1174 (c!330712 acc!382))))))

(assert (=> b!2041135 (= e!1288708 e!1288709)))

(declare-fun bm!125267 () Bool)

(assert (=> bm!125267 (= call!125264 call!125273)))

(declare-fun b!2041136 () Bool)

(assert (=> b!2041136 (= e!1288716 call!125267)))

(declare-fun bm!125268 () Bool)

(declare-fun call!125271 () Conc!7482)

(assert (=> bm!125268 (= call!125271 call!125272)))

(declare-fun b!2041137 () Bool)

(assert (=> b!2041137 (= e!1288709 call!125269)))

(declare-fun bm!125269 () Bool)

(assert (=> bm!125269 (= call!125268 (height!1174 (ite c!330770 (left!17759 (c!330712 acc!382)) lt!765646)))))

(declare-fun bm!125270 () Bool)

(assert (=> bm!125270 (= call!125276 (<>!179 (ite c!330770 (ite c!330768 (left!17759 (c!330712 acc!382)) call!125261) (ite c!330767 call!125271 lt!765646)) (ite c!330770 (ite c!330768 call!125261 lt!765647) (ite c!330767 (right!18089 (c!330712 (_1!11954 lt!765587))) call!125271))))))

(declare-fun b!2041138 () Bool)

(assert (=> b!2041138 (= e!1288710 (= (list!9153 lt!765645) (++!6063 (list!9153 (c!330712 acc!382)) (list!9153 (c!330712 (_1!11954 lt!765587))))))))

(declare-fun b!2041139 () Bool)

(assert (=> b!2041139 (= e!1288708 (c!330712 acc!382))))

(declare-fun bm!125271 () Bool)

(assert (=> bm!125271 (= call!125267 call!125276)))

(assert (= (and d!625072 res!894598) b!2041130))

(assert (= (and d!625072 c!330766) b!2041126))

(assert (= (and d!625072 (not c!330766)) b!2041125))

(assert (= (and b!2041125 c!330771) b!2041139))

(assert (= (and b!2041125 (not c!330771)) b!2041135))

(assert (= (and b!2041135 c!330773) b!2041137))

(assert (= (and b!2041135 (not c!330773)) b!2041127))

(assert (= (and b!2041127 c!330770) b!2041124))

(assert (= (and b!2041127 (not c!330770)) b!2041128))

(assert (= (and b!2041124 c!330769) b!2041120))

(assert (= (and b!2041124 (not c!330769)) b!2041133))

(assert (= (and b!2041133 c!330768) b!2041122))

(assert (= (and b!2041133 (not c!330768)) b!2041136))

(assert (= (or b!2041122 b!2041136) bm!125257))

(assert (= (or b!2041122 b!2041136) bm!125271))

(assert (= (or b!2041120 b!2041133) bm!125267))

(assert (= (or b!2041120 bm!125257) bm!125260))

(assert (= (and b!2041128 c!330772) b!2041131))

(assert (= (and b!2041128 (not c!330772)) b!2041123))

(assert (= (and b!2041123 c!330767) b!2041132))

(assert (= (and b!2041123 (not c!330767)) b!2041134))

(assert (= (or b!2041132 b!2041134) bm!125268))

(assert (= (or b!2041132 b!2041134) bm!125261))

(assert (= (or b!2041131 b!2041123) bm!125256))

(assert (= (or b!2041131 bm!125268) bm!125262))

(assert (= (or bm!125271 bm!125261) bm!125270))

(assert (= (or b!2041133 b!2041128) bm!125258))

(assert (= (or bm!125260 bm!125262) bm!125264))

(assert (= (or b!2041133 b!2041123) bm!125265))

(assert (= (or b!2041124 b!2041128) bm!125263))

(assert (= (or bm!125267 bm!125256) bm!125259))

(assert (= (or b!2041124 b!2041123) bm!125269))

(assert (= (or b!2041137 bm!125264) bm!125266))

(assert (= (and d!625072 res!894599) b!2041129))

(assert (= (and b!2041129 res!894600) b!2041121))

(assert (= (and b!2041121 res!894601) b!2041119))

(assert (= (and b!2041119 res!894597) b!2041138))

(declare-fun m!2485059 () Bool)

(assert (=> bm!125266 m!2485059))

(declare-fun m!2485061 () Bool)

(assert (=> b!2041121 m!2485061))

(assert (=> b!2041121 m!2484901))

(assert (=> b!2041121 m!2484903))

(assert (=> b!2041121 m!2484901))

(assert (=> b!2041121 m!2484903))

(assert (=> b!2041121 m!2484905))

(declare-fun m!2485063 () Bool)

(assert (=> bm!125265 m!2485063))

(assert (=> b!2041135 m!2484903))

(assert (=> b!2041135 m!2484901))

(declare-fun m!2485065 () Bool)

(assert (=> bm!125263 m!2485065))

(declare-fun m!2485067 () Bool)

(assert (=> b!2041129 m!2485067))

(declare-fun m!2485069 () Bool)

(assert (=> b!2041130 m!2485069))

(assert (=> b!2041119 m!2485061))

(assert (=> b!2041119 m!2484901))

(assert (=> b!2041119 m!2484903))

(assert (=> b!2041119 m!2484901))

(assert (=> b!2041119 m!2484903))

(assert (=> b!2041119 m!2484905))

(declare-fun m!2485071 () Bool)

(assert (=> bm!125269 m!2485071))

(declare-fun m!2485073 () Bool)

(assert (=> bm!125258 m!2485073))

(declare-fun m!2485075 () Bool)

(assert (=> bm!125270 m!2485075))

(declare-fun m!2485077 () Bool)

(assert (=> bm!125259 m!2485077))

(assert (=> d!625072 m!2484897))

(assert (=> d!625072 m!2484813))

(declare-fun m!2485079 () Bool)

(assert (=> b!2041138 m!2485079))

(assert (=> b!2041138 m!2484923))

(declare-fun m!2485081 () Bool)

(assert (=> b!2041138 m!2485081))

(assert (=> b!2041138 m!2484923))

(assert (=> b!2041138 m!2485081))

(declare-fun m!2485083 () Bool)

(assert (=> b!2041138 m!2485083))

(assert (=> b!2040898 d!625072))

(declare-fun d!625074 () Bool)

(assert (=> d!625074 (= (height!1174 (c!330712 acc!382)) (ite ((_ is Empty!7482) (c!330712 acc!382)) 0 (ite ((_ is Leaf!10964) (c!330712 acc!382)) 1 (cheight!7693 (c!330712 acc!382)))))))

(assert (=> b!2040898 d!625074))

(declare-fun d!625076 () Bool)

(assert (=> d!625076 (= (height!1174 (c!330712 (_1!11954 lt!765587))) (ite ((_ is Empty!7482) (c!330712 (_1!11954 lt!765587))) 0 (ite ((_ is Leaf!10964) (c!330712 (_1!11954 lt!765587))) 1 (cheight!7693 (c!330712 (_1!11954 lt!765587))))))))

(assert (=> b!2040898 d!625076))

(declare-fun d!625078 () Bool)

(assert (=> d!625078 (= (inv!29649 (xs!10387 (c!330711 totalInput!418))) (<= (size!17455 (innerList!7541 (xs!10387 (c!330711 totalInput!418)))) 2147483647))))

(declare-fun bs!421532 () Bool)

(assert (= bs!421532 d!625078))

(declare-fun m!2485085 () Bool)

(assert (=> bs!421532 m!2485085))

(assert (=> b!2040942 d!625078))

(declare-fun d!625080 () Bool)

(declare-fun lambda!76647 () Int)

(declare-fun forall!4762 (List!22387 Int) Bool)

(assert (=> d!625080 (= (inv!29648 (_2!11952 (_1!11953 (h!27705 mapValue!9143)))) (forall!4762 (exprs!1499 (_2!11952 (_1!11953 (h!27705 mapValue!9143)))) lambda!76647))))

(declare-fun bs!421533 () Bool)

(assert (= bs!421533 d!625080))

(declare-fun m!2485087 () Bool)

(assert (=> bs!421533 m!2485087))

(assert (=> b!2041035 d!625080))

(declare-fun d!625082 () Bool)

(assert (=> d!625082 true))

(declare-fun lambda!76650 () Int)

(declare-fun order!14271 () Int)

(declare-fun order!14269 () Int)

(declare-fun dynLambda!11111 (Int Int) Int)

(declare-fun dynLambda!11112 (Int Int) Int)

(assert (=> d!625082 (< (dynLambda!11111 order!14269 (toChars!5543 (transformation!4003 (h!27708 rules!1563)))) (dynLambda!11112 order!14271 lambda!76650))))

(assert (=> d!625082 true))

(declare-fun order!14273 () Int)

(declare-fun dynLambda!11113 (Int Int) Int)

(assert (=> d!625082 (< (dynLambda!11113 order!14273 (toValue!5684 (transformation!4003 (h!27708 rules!1563)))) (dynLambda!11112 order!14271 lambda!76650))))

(declare-fun Forall!1023 (Int) Bool)

(assert (=> d!625082 (= (semiInverseModEq!1614 (toChars!5543 (transformation!4003 (h!27708 rules!1563))) (toValue!5684 (transformation!4003 (h!27708 rules!1563)))) (Forall!1023 lambda!76650))))

(declare-fun bs!421534 () Bool)

(assert (= bs!421534 d!625082))

(declare-fun m!2485089 () Bool)

(assert (=> bs!421534 m!2485089))

(assert (=> d!625030 d!625082))

(declare-fun d!625084 () Bool)

(assert (=> d!625084 (= (list!9151 (_2!11954 lt!765618)) (list!9152 (c!330711 (_2!11954 lt!765618))))))

(declare-fun bs!421535 () Bool)

(assert (= bs!421535 d!625084))

(declare-fun m!2485091 () Bool)

(assert (=> bs!421535 m!2485091))

(assert (=> b!2040878 d!625084))

(declare-fun d!625086 () Bool)

(declare-fun e!1288719 () Bool)

(assert (=> d!625086 e!1288719))

(declare-fun c!330774 () Bool)

(declare-fun lt!765649 () tuple2!20970)

(assert (=> d!625086 (= c!330774 (> (size!17459 (_1!11958 lt!765649)) 0))))

(declare-fun e!1288720 () tuple2!20970)

(assert (=> d!625086 (= lt!765649 e!1288720)))

(declare-fun c!330775 () Bool)

(declare-fun lt!765651 () Option!4688)

(assert (=> d!625086 (= c!330775 ((_ is Some!4687) lt!765651))))

(assert (=> d!625086 (= lt!765651 (maxPrefix!2050 thiss!12889 rules!1563 (list!9151 totalInput!418)))))

(assert (=> d!625086 (= (lexList!986 thiss!12889 rules!1563 (list!9151 totalInput!418)) lt!765649)))

(declare-fun b!2041144 () Bool)

(declare-fun e!1288718 () Bool)

(assert (=> b!2041144 (= e!1288719 e!1288718)))

(declare-fun res!894602 () Bool)

(assert (=> b!2041144 (= res!894602 (< (size!17455 (_2!11958 lt!765649)) (size!17455 (list!9151 totalInput!418))))))

(assert (=> b!2041144 (=> (not res!894602) (not e!1288718))))

(declare-fun b!2041145 () Bool)

(declare-fun lt!765650 () tuple2!20970)

(assert (=> b!2041145 (= e!1288720 (tuple2!20971 (Cons!22308 (_1!11959 (v!27043 lt!765651)) (_1!11958 lt!765650)) (_2!11958 lt!765650)))))

(assert (=> b!2041145 (= lt!765650 (lexList!986 thiss!12889 rules!1563 (_2!11959 (v!27043 lt!765651))))))

(declare-fun b!2041146 () Bool)

(assert (=> b!2041146 (= e!1288719 (= (_2!11958 lt!765649) (list!9151 totalInput!418)))))

(declare-fun b!2041147 () Bool)

(assert (=> b!2041147 (= e!1288718 (not (isEmpty!13948 (_1!11958 lt!765649))))))

(declare-fun b!2041148 () Bool)

(assert (=> b!2041148 (= e!1288720 (tuple2!20971 Nil!22308 (list!9151 totalInput!418)))))

(assert (= (and d!625086 c!330775) b!2041145))

(assert (= (and d!625086 (not c!330775)) b!2041148))

(assert (= (and d!625086 c!330774) b!2041144))

(assert (= (and d!625086 (not c!330774)) b!2041146))

(assert (= (and b!2041144 res!894602) b!2041147))

(declare-fun m!2485093 () Bool)

(assert (=> d!625086 m!2485093))

(assert (=> d!625086 m!2484743))

(declare-fun m!2485095 () Bool)

(assert (=> d!625086 m!2485095))

(declare-fun m!2485097 () Bool)

(assert (=> b!2041144 m!2485097))

(assert (=> b!2041144 m!2484743))

(declare-fun m!2485099 () Bool)

(assert (=> b!2041144 m!2485099))

(declare-fun m!2485101 () Bool)

(assert (=> b!2041145 m!2485101))

(declare-fun m!2485103 () Bool)

(assert (=> b!2041147 m!2485103))

(assert (=> b!2040878 d!625086))

(assert (=> b!2040878 d!624988))

(declare-fun bs!421536 () Bool)

(declare-fun d!625088 () Bool)

(assert (= bs!421536 (and d!625088 d!625080)))

(declare-fun lambda!76651 () Int)

(assert (=> bs!421536 (= lambda!76651 lambda!76647)))

(assert (=> d!625088 (= (inv!29648 (_1!11955 (_1!11956 (h!27710 mapDefault!9136)))) (forall!4762 (exprs!1499 (_1!11955 (_1!11956 (h!27710 mapDefault!9136)))) lambda!76651))))

(declare-fun bs!421537 () Bool)

(assert (= bs!421537 d!625088))

(declare-fun m!2485105 () Bool)

(assert (=> bs!421537 m!2485105))

(assert (=> b!2040965 d!625088))

(declare-fun b!2041167 () Bool)

(declare-fun e!1288735 () Int)

(declare-fun call!125279 () Int)

(assert (=> b!2041167 (= e!1288735 call!125279)))

(declare-fun b!2041168 () Bool)

(declare-fun e!1288733 () Int)

(assert (=> b!2041168 (= e!1288733 (- call!125279 (- (size!17455 lt!765589) (size!17455 lt!765594))))))

(declare-fun b!2041169 () Bool)

(declare-fun e!1288732 () List!22390)

(assert (=> b!2041169 (= e!1288732 (drop!1124 (t!191499 lt!765589) (- (- (size!17455 lt!765589) (size!17455 lt!765594)) 1)))))

(declare-fun b!2041170 () Bool)

(assert (=> b!2041170 (= e!1288732 lt!765589)))

(declare-fun b!2041171 () Bool)

(declare-fun e!1288734 () List!22390)

(assert (=> b!2041171 (= e!1288734 Nil!22306)))

(declare-fun d!625090 () Bool)

(declare-fun e!1288731 () Bool)

(assert (=> d!625090 e!1288731))

(declare-fun res!894605 () Bool)

(assert (=> d!625090 (=> (not res!894605) (not e!1288731))))

(declare-fun lt!765654 () List!22390)

(assert (=> d!625090 (= res!894605 (= ((_ map implies) (content!3314 lt!765654) (content!3314 lt!765589)) ((as const (InoxSet C!11004)) true)))))

(assert (=> d!625090 (= lt!765654 e!1288734)))

(declare-fun c!330785 () Bool)

(assert (=> d!625090 (= c!330785 ((_ is Nil!22306) lt!765589))))

(assert (=> d!625090 (= (drop!1124 lt!765589 (- (size!17455 lt!765589) (size!17455 lt!765594))) lt!765654)))

(declare-fun bm!125274 () Bool)

(assert (=> bm!125274 (= call!125279 (size!17455 lt!765589))))

(declare-fun b!2041172 () Bool)

(assert (=> b!2041172 (= e!1288734 e!1288732)))

(declare-fun c!330787 () Bool)

(assert (=> b!2041172 (= c!330787 (<= (- (size!17455 lt!765589) (size!17455 lt!765594)) 0))))

(declare-fun b!2041173 () Bool)

(assert (=> b!2041173 (= e!1288733 0)))

(declare-fun b!2041174 () Bool)

(assert (=> b!2041174 (= e!1288731 (= (size!17455 lt!765654) e!1288735))))

(declare-fun c!330784 () Bool)

(assert (=> b!2041174 (= c!330784 (<= (- (size!17455 lt!765589) (size!17455 lt!765594)) 0))))

(declare-fun b!2041175 () Bool)

(assert (=> b!2041175 (= e!1288735 e!1288733)))

(declare-fun c!330786 () Bool)

(assert (=> b!2041175 (= c!330786 (>= (- (size!17455 lt!765589) (size!17455 lt!765594)) call!125279))))

(assert (= (and d!625090 c!330785) b!2041171))

(assert (= (and d!625090 (not c!330785)) b!2041172))

(assert (= (and b!2041172 c!330787) b!2041170))

(assert (= (and b!2041172 (not c!330787)) b!2041169))

(assert (= (and d!625090 res!894605) b!2041174))

(assert (= (and b!2041174 c!330784) b!2041167))

(assert (= (and b!2041174 (not c!330784)) b!2041175))

(assert (= (and b!2041175 c!330786) b!2041173))

(assert (= (and b!2041175 (not c!330786)) b!2041168))

(assert (= (or b!2041167 b!2041175 b!2041168) bm!125274))

(declare-fun m!2485107 () Bool)

(assert (=> b!2041169 m!2485107))

(declare-fun m!2485109 () Bool)

(assert (=> d!625090 m!2485109))

(declare-fun m!2485111 () Bool)

(assert (=> d!625090 m!2485111))

(assert (=> bm!125274 m!2484829))

(declare-fun m!2485113 () Bool)

(assert (=> b!2041174 m!2485113))

(assert (=> d!625014 d!625090))

(declare-fun d!625092 () Bool)

(declare-fun lt!765657 () Int)

(assert (=> d!625092 (>= lt!765657 0)))

(declare-fun e!1288738 () Int)

(assert (=> d!625092 (= lt!765657 e!1288738)))

(declare-fun c!330790 () Bool)

(assert (=> d!625092 (= c!330790 ((_ is Nil!22306) lt!765589))))

(assert (=> d!625092 (= (size!17455 lt!765589) lt!765657)))

(declare-fun b!2041180 () Bool)

(assert (=> b!2041180 (= e!1288738 0)))

(declare-fun b!2041181 () Bool)

(assert (=> b!2041181 (= e!1288738 (+ 1 (size!17455 (t!191499 lt!765589))))))

(assert (= (and d!625092 c!330790) b!2041180))

(assert (= (and d!625092 (not c!330790)) b!2041181))

(declare-fun m!2485115 () Bool)

(assert (=> b!2041181 m!2485115))

(assert (=> d!625014 d!625092))

(declare-fun d!625094 () Bool)

(declare-fun lt!765658 () Int)

(assert (=> d!625094 (>= lt!765658 0)))

(declare-fun e!1288739 () Int)

(assert (=> d!625094 (= lt!765658 e!1288739)))

(declare-fun c!330791 () Bool)

(assert (=> d!625094 (= c!330791 ((_ is Nil!22306) lt!765594))))

(assert (=> d!625094 (= (size!17455 lt!765594) lt!765658)))

(declare-fun b!2041182 () Bool)

(assert (=> b!2041182 (= e!1288739 0)))

(declare-fun b!2041183 () Bool)

(assert (=> b!2041183 (= e!1288739 (+ 1 (size!17455 (t!191499 lt!765594))))))

(assert (= (and d!625094 c!330791) b!2041182))

(assert (= (and d!625094 (not c!330791)) b!2041183))

(declare-fun m!2485117 () Bool)

(assert (=> b!2041183 m!2485117))

(assert (=> d!625014 d!625094))

(declare-fun bs!421538 () Bool)

(declare-fun d!625096 () Bool)

(assert (= bs!421538 (and d!625096 d!625080)))

(declare-fun lambda!76652 () Int)

(assert (=> bs!421538 (= lambda!76652 lambda!76647)))

(declare-fun bs!421539 () Bool)

(assert (= bs!421539 (and d!625096 d!625088)))

(assert (=> bs!421539 (= lambda!76652 lambda!76651)))

(assert (=> d!625096 (= (inv!29648 (_1!11955 (_1!11956 (h!27710 mapDefault!9140)))) (forall!4762 (exprs!1499 (_1!11955 (_1!11956 (h!27710 mapDefault!9140)))) lambda!76652))))

(declare-fun bs!421540 () Bool)

(assert (= bs!421540 d!625096))

(declare-fun m!2485119 () Bool)

(assert (=> bs!421540 m!2485119))

(assert (=> b!2040982 d!625096))

(declare-fun d!625098 () Bool)

(declare-fun res!894610 () Bool)

(declare-fun e!1288742 () Bool)

(assert (=> d!625098 (=> (not res!894610) (not e!1288742))))

(declare-fun validRegex!2182 (Regex!5429) Bool)

(assert (=> d!625098 (= res!894610 (validRegex!2182 (regex!4003 (h!27708 rules!1563))))))

(assert (=> d!625098 (= (ruleValid!1226 thiss!12889 (h!27708 rules!1563)) e!1288742)))

(declare-fun b!2041188 () Bool)

(declare-fun res!894611 () Bool)

(assert (=> b!2041188 (=> (not res!894611) (not e!1288742))))

(declare-fun nullable!1656 (Regex!5429) Bool)

(assert (=> b!2041188 (= res!894611 (not (nullable!1656 (regex!4003 (h!27708 rules!1563)))))))

(declare-fun b!2041189 () Bool)

(assert (=> b!2041189 (= e!1288742 (not (= (tag!4493 (h!27708 rules!1563)) (String!25884 ""))))))

(assert (= (and d!625098 res!894610) b!2041188))

(assert (= (and b!2041188 res!894611) b!2041189))

(declare-fun m!2485121 () Bool)

(assert (=> d!625098 m!2485121))

(declare-fun m!2485123 () Bool)

(assert (=> b!2041188 m!2485123))

(assert (=> b!2040851 d!625098))

(declare-fun bs!421541 () Bool)

(declare-fun d!625100 () Bool)

(assert (= bs!421541 (and d!625100 d!625080)))

(declare-fun lambda!76653 () Int)

(assert (=> bs!421541 (= lambda!76653 lambda!76647)))

(declare-fun bs!421542 () Bool)

(assert (= bs!421542 (and d!625100 d!625088)))

(assert (=> bs!421542 (= lambda!76653 lambda!76651)))

(declare-fun bs!421543 () Bool)

(assert (= bs!421543 (and d!625100 d!625096)))

(assert (=> bs!421543 (= lambda!76653 lambda!76652)))

(assert (=> d!625100 (= (inv!29648 setElem!11734) (forall!4762 (exprs!1499 setElem!11734) lambda!76653))))

(declare-fun bs!421544 () Bool)

(assert (= bs!421544 d!625100))

(declare-fun m!2485125 () Bool)

(assert (=> bs!421544 m!2485125))

(assert (=> setNonEmpty!11734 d!625100))

(declare-fun bs!421545 () Bool)

(declare-fun d!625102 () Bool)

(assert (= bs!421545 (and d!625102 d!625080)))

(declare-fun lambda!76654 () Int)

(assert (=> bs!421545 (= lambda!76654 lambda!76647)))

(declare-fun bs!421546 () Bool)

(assert (= bs!421546 (and d!625102 d!625088)))

(assert (=> bs!421546 (= lambda!76654 lambda!76651)))

(declare-fun bs!421547 () Bool)

(assert (= bs!421547 (and d!625102 d!625096)))

(assert (=> bs!421547 (= lambda!76654 lambda!76652)))

(declare-fun bs!421548 () Bool)

(assert (= bs!421548 (and d!625102 d!625100)))

(assert (=> bs!421548 (= lambda!76654 lambda!76653)))

(assert (=> d!625102 (= (inv!29648 setElem!11738) (forall!4762 (exprs!1499 setElem!11738) lambda!76654))))

(declare-fun bs!421549 () Bool)

(assert (= bs!421549 d!625102))

(declare-fun m!2485127 () Bool)

(assert (=> bs!421549 m!2485127))

(assert (=> setNonEmpty!11738 d!625102))

(declare-fun bs!421550 () Bool)

(declare-fun d!625104 () Bool)

(assert (= bs!421550 (and d!625104 d!625088)))

(declare-fun lambda!76655 () Int)

(assert (=> bs!421550 (= lambda!76655 lambda!76651)))

(declare-fun bs!421551 () Bool)

(assert (= bs!421551 (and d!625104 d!625100)))

(assert (=> bs!421551 (= lambda!76655 lambda!76653)))

(declare-fun bs!421552 () Bool)

(assert (= bs!421552 (and d!625104 d!625080)))

(assert (=> bs!421552 (= lambda!76655 lambda!76647)))

(declare-fun bs!421553 () Bool)

(assert (= bs!421553 (and d!625104 d!625102)))

(assert (=> bs!421553 (= lambda!76655 lambda!76654)))

(declare-fun bs!421554 () Bool)

(assert (= bs!421554 (and d!625104 d!625096)))

(assert (=> bs!421554 (= lambda!76655 lambda!76652)))

(assert (=> d!625104 (= (inv!29648 (_1!11955 (_1!11956 (h!27710 (minValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562)))))))))) (forall!4762 (exprs!1499 (_1!11955 (_1!11956 (h!27710 (minValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562)))))))))) lambda!76655))))

(declare-fun bs!421555 () Bool)

(assert (= bs!421555 d!625104))

(declare-fun m!2485129 () Bool)

(assert (=> bs!421555 m!2485129))

(assert (=> b!2040920 d!625104))

(declare-fun bs!421556 () Bool)

(declare-fun d!625106 () Bool)

(assert (= bs!421556 (and d!625106 d!625088)))

(declare-fun lambda!76656 () Int)

(assert (=> bs!421556 (= lambda!76656 lambda!76651)))

(declare-fun bs!421557 () Bool)

(assert (= bs!421557 (and d!625106 d!625100)))

(assert (=> bs!421557 (= lambda!76656 lambda!76653)))

(declare-fun bs!421558 () Bool)

(assert (= bs!421558 (and d!625106 d!625080)))

(assert (=> bs!421558 (= lambda!76656 lambda!76647)))

(declare-fun bs!421559 () Bool)

(assert (= bs!421559 (and d!625106 d!625104)))

(assert (=> bs!421559 (= lambda!76656 lambda!76655)))

(declare-fun bs!421560 () Bool)

(assert (= bs!421560 (and d!625106 d!625102)))

(assert (=> bs!421560 (= lambda!76656 lambda!76654)))

(declare-fun bs!421561 () Bool)

(assert (= bs!421561 (and d!625106 d!625096)))

(assert (=> bs!421561 (= lambda!76656 lambda!76652)))

(assert (=> d!625106 (= (inv!29648 setElem!11746) (forall!4762 (exprs!1499 setElem!11746) lambda!76656))))

(declare-fun bs!421562 () Bool)

(assert (= bs!421562 d!625106))

(declare-fun m!2485131 () Bool)

(assert (=> bs!421562 m!2485131))

(assert (=> setNonEmpty!11746 d!625106))

(declare-fun d!625108 () Bool)

(declare-fun lt!765661 () Int)

(assert (=> d!625108 (= lt!765661 (size!17459 (list!9150 (_1!11954 lt!765618))))))

(declare-fun size!17460 (Conc!7482) Int)

(assert (=> d!625108 (= lt!765661 (size!17460 (c!330712 (_1!11954 lt!765618))))))

(assert (=> d!625108 (= (size!17456 (_1!11954 lt!765618)) lt!765661)))

(declare-fun bs!421563 () Bool)

(assert (= bs!421563 d!625108))

(assert (=> bs!421563 m!2484869))

(assert (=> bs!421563 m!2484869))

(declare-fun m!2485133 () Bool)

(assert (=> bs!421563 m!2485133))

(declare-fun m!2485135 () Bool)

(assert (=> bs!421563 m!2485135))

(assert (=> d!625042 d!625108))

(declare-fun bm!125277 () Bool)

(declare-fun call!125282 () Option!4687)

(declare-fun maxPrefixOneRuleZipperSequence!382 (LexerInterface!3616 Rule!7806 BalanceConc!14724) Option!4687)

(assert (=> bm!125277 (= call!125282 (maxPrefixOneRuleZipperSequence!382 thiss!12889 (h!27708 rules!1563) totalInput!418))))

(declare-fun b!2041206 () Bool)

(declare-fun e!1288755 () Option!4687)

(declare-fun lt!765676 () Option!4687)

(declare-fun lt!765682 () Option!4687)

(assert (=> b!2041206 (= e!1288755 (ite (and ((_ is None!4686) lt!765676) ((_ is None!4686) lt!765682)) None!4686 (ite ((_ is None!4686) lt!765682) lt!765676 (ite ((_ is None!4686) lt!765676) lt!765682 (ite (>= (size!17453 (_1!11957 (v!27041 lt!765676))) (size!17453 (_1!11957 (v!27041 lt!765682)))) lt!765676 lt!765682)))))))

(assert (=> b!2041206 (= lt!765676 call!125282)))

(assert (=> b!2041206 (= lt!765682 (maxPrefixZipperSequence!786 thiss!12889 (t!191500 rules!1563) totalInput!418))))

(declare-fun b!2041207 () Bool)

(declare-fun e!1288759 () Bool)

(declare-fun e!1288760 () Bool)

(assert (=> b!2041207 (= e!1288759 e!1288760)))

(declare-fun res!894624 () Bool)

(assert (=> b!2041207 (=> (not res!894624) (not e!1288760))))

(declare-fun lt!765679 () Option!4687)

(declare-fun get!7093 (Option!4687) tuple2!20968)

(declare-fun get!7094 (Option!4688) tuple2!20972)

(assert (=> b!2041207 (= res!894624 (= (_1!11957 (get!7093 lt!765679)) (_1!11959 (get!7094 (maxPrefix!2050 thiss!12889 rules!1563 (list!9151 totalInput!418))))))))

(declare-fun b!2041208 () Bool)

(declare-fun e!1288756 () Bool)

(assert (=> b!2041208 (= e!1288756 e!1288759)))

(declare-fun res!894629 () Bool)

(assert (=> b!2041208 (=> res!894629 e!1288759)))

(declare-fun isDefined!3971 (Option!4687) Bool)

(assert (=> b!2041208 (= res!894629 (not (isDefined!3971 lt!765679)))))

(declare-fun e!1288757 () Bool)

(declare-fun b!2041210 () Bool)

(declare-fun maxPrefixZipper!390 (LexerInterface!3616 List!22391 List!22390) Option!4688)

(assert (=> b!2041210 (= e!1288757 (= (list!9151 (_2!11957 (get!7093 lt!765679))) (_2!11959 (get!7094 (maxPrefixZipper!390 thiss!12889 rules!1563 (list!9151 totalInput!418))))))))

(declare-fun b!2041211 () Bool)

(assert (=> b!2041211 (= e!1288755 call!125282)))

(declare-fun b!2041212 () Bool)

(declare-fun e!1288758 () Bool)

(assert (=> b!2041212 (= e!1288758 e!1288757)))

(declare-fun res!894627 () Bool)

(assert (=> b!2041212 (=> (not res!894627) (not e!1288757))))

(assert (=> b!2041212 (= res!894627 (= (_1!11957 (get!7093 lt!765679)) (_1!11959 (get!7094 (maxPrefixZipper!390 thiss!12889 rules!1563 (list!9151 totalInput!418))))))))

(declare-fun b!2041213 () Bool)

(declare-fun res!894628 () Bool)

(assert (=> b!2041213 (=> (not res!894628) (not e!1288756))))

(assert (=> b!2041213 (= res!894628 e!1288758)))

(declare-fun res!894626 () Bool)

(assert (=> b!2041213 (=> res!894626 e!1288758)))

(assert (=> b!2041213 (= res!894626 (not (isDefined!3971 lt!765679)))))

(declare-fun d!625110 () Bool)

(assert (=> d!625110 e!1288756))

(declare-fun res!894625 () Bool)

(assert (=> d!625110 (=> (not res!894625) (not e!1288756))))

(declare-fun isDefined!3972 (Option!4688) Bool)

(assert (=> d!625110 (= res!894625 (= (isDefined!3971 lt!765679) (isDefined!3972 (maxPrefixZipper!390 thiss!12889 rules!1563 (list!9151 totalInput!418)))))))

(assert (=> d!625110 (= lt!765679 e!1288755)))

(declare-fun c!330794 () Bool)

(assert (=> d!625110 (= c!330794 (and ((_ is Cons!22307) rules!1563) ((_ is Nil!22307) (t!191500 rules!1563))))))

(declare-fun lt!765677 () Unit!36991)

(declare-fun lt!765680 () Unit!36991)

(assert (=> d!625110 (= lt!765677 lt!765680)))

(declare-fun lt!765678 () List!22390)

(declare-fun lt!765681 () List!22390)

(declare-fun isPrefix!1990 (List!22390 List!22390) Bool)

(assert (=> d!625110 (isPrefix!1990 lt!765678 lt!765681)))

(declare-fun lemmaIsPrefixRefl!1308 (List!22390 List!22390) Unit!36991)

(assert (=> d!625110 (= lt!765680 (lemmaIsPrefixRefl!1308 lt!765678 lt!765681))))

(assert (=> d!625110 (= lt!765681 (list!9151 totalInput!418))))

(assert (=> d!625110 (= lt!765678 (list!9151 totalInput!418))))

(assert (=> d!625110 (rulesValidInductive!1390 thiss!12889 rules!1563)))

(assert (=> d!625110 (= (maxPrefixZipperSequence!786 thiss!12889 rules!1563 totalInput!418) lt!765679)))

(declare-fun b!2041209 () Bool)

(assert (=> b!2041209 (= e!1288760 (= (list!9151 (_2!11957 (get!7093 lt!765679))) (_2!11959 (get!7094 (maxPrefix!2050 thiss!12889 rules!1563 (list!9151 totalInput!418))))))))

(assert (= (and d!625110 c!330794) b!2041211))

(assert (= (and d!625110 (not c!330794)) b!2041206))

(assert (= (or b!2041211 b!2041206) bm!125277))

(assert (= (and d!625110 res!894625) b!2041213))

(assert (= (and b!2041213 (not res!894626)) b!2041212))

(assert (= (and b!2041212 res!894627) b!2041210))

(assert (= (and b!2041213 res!894628) b!2041208))

(assert (= (and b!2041208 (not res!894629)) b!2041207))

(assert (= (and b!2041207 res!894624) b!2041209))

(declare-fun m!2485137 () Bool)

(assert (=> b!2041206 m!2485137))

(declare-fun m!2485139 () Bool)

(assert (=> b!2041207 m!2485139))

(assert (=> b!2041207 m!2484743))

(assert (=> b!2041207 m!2484743))

(assert (=> b!2041207 m!2485095))

(assert (=> b!2041207 m!2485095))

(declare-fun m!2485141 () Bool)

(assert (=> b!2041207 m!2485141))

(assert (=> b!2041209 m!2484743))

(assert (=> b!2041209 m!2485095))

(assert (=> b!2041209 m!2485141))

(declare-fun m!2485143 () Bool)

(assert (=> b!2041209 m!2485143))

(assert (=> b!2041209 m!2484743))

(assert (=> b!2041209 m!2485095))

(assert (=> b!2041209 m!2485139))

(declare-fun m!2485145 () Bool)

(assert (=> b!2041208 m!2485145))

(assert (=> b!2041210 m!2484743))

(declare-fun m!2485147 () Bool)

(assert (=> b!2041210 m!2485147))

(declare-fun m!2485149 () Bool)

(assert (=> b!2041210 m!2485149))

(assert (=> b!2041210 m!2485143))

(assert (=> b!2041210 m!2484743))

(assert (=> b!2041210 m!2485147))

(assert (=> b!2041210 m!2485139))

(assert (=> b!2041213 m!2485145))

(assert (=> b!2041212 m!2485139))

(assert (=> b!2041212 m!2484743))

(assert (=> b!2041212 m!2484743))

(assert (=> b!2041212 m!2485147))

(assert (=> b!2041212 m!2485147))

(assert (=> b!2041212 m!2485149))

(declare-fun m!2485151 () Bool)

(assert (=> bm!125277 m!2485151))

(assert (=> d!625110 m!2484723))

(declare-fun m!2485153 () Bool)

(assert (=> d!625110 m!2485153))

(declare-fun m!2485155 () Bool)

(assert (=> d!625110 m!2485155))

(assert (=> d!625110 m!2484743))

(assert (=> d!625110 m!2485147))

(assert (=> d!625110 m!2485145))

(assert (=> d!625110 m!2485147))

(declare-fun m!2485157 () Bool)

(assert (=> d!625110 m!2485157))

(assert (=> d!625110 m!2484743))

(assert (=> d!625042 d!625110))

(declare-fun b!2041226 () Bool)

(declare-fun res!894642 () Bool)

(declare-fun e!1288765 () Bool)

(assert (=> b!2041226 (=> (not res!894642) (not e!1288765))))

(assert (=> b!2041226 (= res!894642 (isBalanced!2354 (right!18088 (c!330711 totalInput!418))))))

(declare-fun d!625112 () Bool)

(declare-fun res!894646 () Bool)

(declare-fun e!1288766 () Bool)

(assert (=> d!625112 (=> res!894646 e!1288766)))

(assert (=> d!625112 (= res!894646 (not ((_ is Node!7481) (c!330711 totalInput!418))))))

(assert (=> d!625112 (= (isBalanced!2354 (c!330711 totalInput!418)) e!1288766)))

(declare-fun b!2041227 () Bool)

(assert (=> b!2041227 (= e!1288766 e!1288765)))

(declare-fun res!894643 () Bool)

(assert (=> b!2041227 (=> (not res!894643) (not e!1288765))))

(assert (=> b!2041227 (= res!894643 (<= (- 1) (- (height!1175 (left!17758 (c!330711 totalInput!418))) (height!1175 (right!18088 (c!330711 totalInput!418))))))))

(declare-fun b!2041228 () Bool)

(declare-fun res!894644 () Bool)

(assert (=> b!2041228 (=> (not res!894644) (not e!1288765))))

(assert (=> b!2041228 (= res!894644 (<= (- (height!1175 (left!17758 (c!330711 totalInput!418))) (height!1175 (right!18088 (c!330711 totalInput!418)))) 1))))

(declare-fun b!2041229 () Bool)

(declare-fun res!894647 () Bool)

(assert (=> b!2041229 (=> (not res!894647) (not e!1288765))))

(declare-fun isEmpty!13949 (Conc!7481) Bool)

(assert (=> b!2041229 (= res!894647 (not (isEmpty!13949 (left!17758 (c!330711 totalInput!418)))))))

(declare-fun b!2041230 () Bool)

(assert (=> b!2041230 (= e!1288765 (not (isEmpty!13949 (right!18088 (c!330711 totalInput!418)))))))

(declare-fun b!2041231 () Bool)

(declare-fun res!894645 () Bool)

(assert (=> b!2041231 (=> (not res!894645) (not e!1288765))))

(assert (=> b!2041231 (= res!894645 (isBalanced!2354 (left!17758 (c!330711 totalInput!418))))))

(assert (= (and d!625112 (not res!894646)) b!2041227))

(assert (= (and b!2041227 res!894643) b!2041228))

(assert (= (and b!2041228 res!894644) b!2041231))

(assert (= (and b!2041231 res!894645) b!2041226))

(assert (= (and b!2041226 res!894642) b!2041229))

(assert (= (and b!2041229 res!894647) b!2041230))

(assert (=> b!2041228 m!2485031))

(assert (=> b!2041228 m!2485033))

(declare-fun m!2485159 () Bool)

(assert (=> b!2041226 m!2485159))

(assert (=> b!2041227 m!2485031))

(assert (=> b!2041227 m!2485033))

(declare-fun m!2485161 () Bool)

(assert (=> b!2041229 m!2485161))

(declare-fun m!2485163 () Bool)

(assert (=> b!2041231 m!2485163))

(declare-fun m!2485165 () Bool)

(assert (=> b!2041230 m!2485165))

(assert (=> d!625006 d!625112))

(declare-fun d!625114 () Bool)

(declare-fun res!894652 () Bool)

(declare-fun e!1288771 () Bool)

(assert (=> d!625114 (=> res!894652 e!1288771)))

(assert (=> d!625114 (= res!894652 ((_ is Nil!22307) rules!1563))))

(assert (=> d!625114 (= (forall!4761 rules!1563 lambda!76644) e!1288771)))

(declare-fun b!2041236 () Bool)

(declare-fun e!1288772 () Bool)

(assert (=> b!2041236 (= e!1288771 e!1288772)))

(declare-fun res!894653 () Bool)

(assert (=> b!2041236 (=> (not res!894653) (not e!1288772))))

(declare-fun dynLambda!11114 (Int Rule!7806) Bool)

(assert (=> b!2041236 (= res!894653 (dynLambda!11114 lambda!76644 (h!27708 rules!1563)))))

(declare-fun b!2041237 () Bool)

(assert (=> b!2041237 (= e!1288772 (forall!4761 (t!191500 rules!1563) lambda!76644))))

(assert (= (and d!625114 (not res!894652)) b!2041236))

(assert (= (and b!2041236 res!894653) b!2041237))

(declare-fun b_lambda!69053 () Bool)

(assert (=> (not b_lambda!69053) (not b!2041236)))

(declare-fun m!2485167 () Bool)

(assert (=> b!2041236 m!2485167))

(declare-fun m!2485169 () Bool)

(assert (=> b!2041237 m!2485169))

(assert (=> d!625020 d!625114))

(declare-fun bs!421564 () Bool)

(declare-fun d!625116 () Bool)

(assert (= bs!421564 (and d!625116 d!625088)))

(declare-fun lambda!76657 () Int)

(assert (=> bs!421564 (= lambda!76657 lambda!76651)))

(declare-fun bs!421565 () Bool)

(assert (= bs!421565 (and d!625116 d!625100)))

(assert (=> bs!421565 (= lambda!76657 lambda!76653)))

(declare-fun bs!421566 () Bool)

(assert (= bs!421566 (and d!625116 d!625080)))

(assert (=> bs!421566 (= lambda!76657 lambda!76647)))

(declare-fun bs!421567 () Bool)

(assert (= bs!421567 (and d!625116 d!625104)))

(assert (=> bs!421567 (= lambda!76657 lambda!76655)))

(declare-fun bs!421568 () Bool)

(assert (= bs!421568 (and d!625116 d!625102)))

(assert (=> bs!421568 (= lambda!76657 lambda!76654)))

(declare-fun bs!421569 () Bool)

(assert (= bs!421569 (and d!625116 d!625096)))

(assert (=> bs!421569 (= lambda!76657 lambda!76652)))

(declare-fun bs!421570 () Bool)

(assert (= bs!421570 (and d!625116 d!625106)))

(assert (=> bs!421570 (= lambda!76657 lambda!76656)))

(assert (=> d!625116 (= (inv!29648 setElem!11747) (forall!4762 (exprs!1499 setElem!11747) lambda!76657))))

(declare-fun bs!421571 () Bool)

(assert (= bs!421571 d!625116))

(declare-fun m!2485171 () Bool)

(assert (=> bs!421571 m!2485171))

(assert (=> setNonEmpty!11747 d!625116))

(declare-fun d!625118 () Bool)

(declare-fun c!330795 () Bool)

(assert (=> d!625118 (= c!330795 ((_ is Node!7481) (left!17758 (c!330711 input!986))))))

(declare-fun e!1288773 () Bool)

(assert (=> d!625118 (= (inv!29638 (left!17758 (c!330711 input!986))) e!1288773)))

(declare-fun b!2041238 () Bool)

(assert (=> b!2041238 (= e!1288773 (inv!29644 (left!17758 (c!330711 input!986))))))

(declare-fun b!2041239 () Bool)

(declare-fun e!1288774 () Bool)

(assert (=> b!2041239 (= e!1288773 e!1288774)))

(declare-fun res!894654 () Bool)

(assert (=> b!2041239 (= res!894654 (not ((_ is Leaf!10963) (left!17758 (c!330711 input!986)))))))

(assert (=> b!2041239 (=> res!894654 e!1288774)))

(declare-fun b!2041240 () Bool)

(assert (=> b!2041240 (= e!1288774 (inv!29645 (left!17758 (c!330711 input!986))))))

(assert (= (and d!625118 c!330795) b!2041238))

(assert (= (and d!625118 (not c!330795)) b!2041239))

(assert (= (and b!2041239 (not res!894654)) b!2041240))

(declare-fun m!2485173 () Bool)

(assert (=> b!2041238 m!2485173))

(declare-fun m!2485175 () Bool)

(assert (=> b!2041240 m!2485175))

(assert (=> b!2040944 d!625118))

(declare-fun d!625120 () Bool)

(declare-fun c!330796 () Bool)

(assert (=> d!625120 (= c!330796 ((_ is Node!7481) (right!18088 (c!330711 input!986))))))

(declare-fun e!1288775 () Bool)

(assert (=> d!625120 (= (inv!29638 (right!18088 (c!330711 input!986))) e!1288775)))

(declare-fun b!2041241 () Bool)

(assert (=> b!2041241 (= e!1288775 (inv!29644 (right!18088 (c!330711 input!986))))))

(declare-fun b!2041242 () Bool)

(declare-fun e!1288776 () Bool)

(assert (=> b!2041242 (= e!1288775 e!1288776)))

(declare-fun res!894655 () Bool)

(assert (=> b!2041242 (= res!894655 (not ((_ is Leaf!10963) (right!18088 (c!330711 input!986)))))))

(assert (=> b!2041242 (=> res!894655 e!1288776)))

(declare-fun b!2041243 () Bool)

(assert (=> b!2041243 (= e!1288776 (inv!29645 (right!18088 (c!330711 input!986))))))

(assert (= (and d!625120 c!330796) b!2041241))

(assert (= (and d!625120 (not c!330796)) b!2041242))

(assert (= (and b!2041242 (not res!894655)) b!2041243))

(declare-fun m!2485177 () Bool)

(assert (=> b!2041241 m!2485177))

(declare-fun m!2485179 () Bool)

(assert (=> b!2041243 m!2485179))

(assert (=> b!2040944 d!625120))

(assert (=> b!2040776 d!624984))

(declare-fun b!2041256 () Bool)

(declare-fun res!894672 () Bool)

(declare-fun e!1288782 () Bool)

(assert (=> b!2041256 (=> (not res!894672) (not e!1288782))))

(assert (=> b!2041256 (= res!894672 (isBalanced!2355 (left!17759 (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587))))))))

(declare-fun d!625122 () Bool)

(declare-fun res!894671 () Bool)

(declare-fun e!1288781 () Bool)

(assert (=> d!625122 (=> res!894671 e!1288781)))

(assert (=> d!625122 (= res!894671 (not ((_ is Node!7482) (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587))))))))

(assert (=> d!625122 (= (isBalanced!2355 (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587)))) e!1288781)))

(declare-fun b!2041257 () Bool)

(assert (=> b!2041257 (= e!1288781 e!1288782)))

(declare-fun res!894673 () Bool)

(assert (=> b!2041257 (=> (not res!894673) (not e!1288782))))

(assert (=> b!2041257 (= res!894673 (<= (- 1) (- (height!1174 (left!17759 (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587))))) (height!1174 (right!18089 (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587))))))))))

(declare-fun b!2041258 () Bool)

(declare-fun res!894670 () Bool)

(assert (=> b!2041258 (=> (not res!894670) (not e!1288782))))

(assert (=> b!2041258 (= res!894670 (isBalanced!2355 (right!18089 (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587))))))))

(declare-fun b!2041259 () Bool)

(declare-fun res!894668 () Bool)

(assert (=> b!2041259 (=> (not res!894668) (not e!1288782))))

(declare-fun isEmpty!13950 (Conc!7482) Bool)

(assert (=> b!2041259 (= res!894668 (not (isEmpty!13950 (left!17759 (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587)))))))))

(declare-fun b!2041260 () Bool)

(assert (=> b!2041260 (= e!1288782 (not (isEmpty!13950 (right!18089 (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587)))))))))

(declare-fun b!2041261 () Bool)

(declare-fun res!894669 () Bool)

(assert (=> b!2041261 (=> (not res!894669) (not e!1288782))))

(assert (=> b!2041261 (= res!894669 (<= (- (height!1174 (left!17759 (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587))))) (height!1174 (right!18089 (++!6062 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587)))))) 1))))

(assert (= (and d!625122 (not res!894671)) b!2041257))

(assert (= (and b!2041257 res!894673) b!2041261))

(assert (= (and b!2041261 res!894669) b!2041256))

(assert (= (and b!2041256 res!894672) b!2041258))

(assert (= (and b!2041258 res!894670) b!2041259))

(assert (= (and b!2041259 res!894668) b!2041260))

(declare-fun m!2485181 () Bool)

(assert (=> b!2041257 m!2485181))

(declare-fun m!2485183 () Bool)

(assert (=> b!2041257 m!2485183))

(declare-fun m!2485185 () Bool)

(assert (=> b!2041260 m!2485185))

(declare-fun m!2485187 () Bool)

(assert (=> b!2041256 m!2485187))

(assert (=> b!2041261 m!2485181))

(assert (=> b!2041261 m!2485183))

(declare-fun m!2485189 () Bool)

(assert (=> b!2041258 m!2485189))

(declare-fun m!2485191 () Bool)

(assert (=> b!2041259 m!2485191))

(assert (=> b!2040897 d!625122))

(assert (=> b!2040897 d!625072))

(declare-fun d!625124 () Bool)

(declare-fun c!330797 () Bool)

(assert (=> d!625124 (= c!330797 ((_ is Node!7481) (left!17758 (c!330711 totalInput!418))))))

(declare-fun e!1288783 () Bool)

(assert (=> d!625124 (= (inv!29638 (left!17758 (c!330711 totalInput!418))) e!1288783)))

(declare-fun b!2041262 () Bool)

(assert (=> b!2041262 (= e!1288783 (inv!29644 (left!17758 (c!330711 totalInput!418))))))

(declare-fun b!2041263 () Bool)

(declare-fun e!1288784 () Bool)

(assert (=> b!2041263 (= e!1288783 e!1288784)))

(declare-fun res!894674 () Bool)

(assert (=> b!2041263 (= res!894674 (not ((_ is Leaf!10963) (left!17758 (c!330711 totalInput!418)))))))

(assert (=> b!2041263 (=> res!894674 e!1288784)))

(declare-fun b!2041264 () Bool)

(assert (=> b!2041264 (= e!1288784 (inv!29645 (left!17758 (c!330711 totalInput!418))))))

(assert (= (and d!625124 c!330797) b!2041262))

(assert (= (and d!625124 (not c!330797)) b!2041263))

(assert (= (and b!2041263 (not res!894674)) b!2041264))

(declare-fun m!2485193 () Bool)

(assert (=> b!2041262 m!2485193))

(declare-fun m!2485195 () Bool)

(assert (=> b!2041264 m!2485195))

(assert (=> b!2040941 d!625124))

(declare-fun d!625126 () Bool)

(declare-fun c!330798 () Bool)

(assert (=> d!625126 (= c!330798 ((_ is Node!7481) (right!18088 (c!330711 totalInput!418))))))

(declare-fun e!1288785 () Bool)

(assert (=> d!625126 (= (inv!29638 (right!18088 (c!330711 totalInput!418))) e!1288785)))

(declare-fun b!2041265 () Bool)

(assert (=> b!2041265 (= e!1288785 (inv!29644 (right!18088 (c!330711 totalInput!418))))))

(declare-fun b!2041266 () Bool)

(declare-fun e!1288786 () Bool)

(assert (=> b!2041266 (= e!1288785 e!1288786)))

(declare-fun res!894675 () Bool)

(assert (=> b!2041266 (= res!894675 (not ((_ is Leaf!10963) (right!18088 (c!330711 totalInput!418)))))))

(assert (=> b!2041266 (=> res!894675 e!1288786)))

(declare-fun b!2041267 () Bool)

(assert (=> b!2041267 (= e!1288786 (inv!29645 (right!18088 (c!330711 totalInput!418))))))

(assert (= (and d!625126 c!330798) b!2041265))

(assert (= (and d!625126 (not c!330798)) b!2041266))

(assert (= (and b!2041266 (not res!894675)) b!2041267))

(declare-fun m!2485197 () Bool)

(assert (=> b!2041265 m!2485197))

(declare-fun m!2485199 () Bool)

(assert (=> b!2041267 m!2485199))

(assert (=> b!2040941 d!625126))

(declare-fun d!625128 () Bool)

(assert (=> d!625128 (= (list!9150 (_1!11954 lt!765627)) (list!9153 (c!330712 (_1!11954 lt!765627))))))

(declare-fun bs!421572 () Bool)

(assert (= bs!421572 d!625128))

(declare-fun m!2485201 () Bool)

(assert (=> bs!421572 m!2485201))

(assert (=> b!2040903 d!625128))

(assert (=> b!2040903 d!625066))

(assert (=> b!2040903 d!624992))

(declare-fun d!625130 () Bool)

(declare-fun lt!765683 () Int)

(assert (=> d!625130 (>= lt!765683 0)))

(declare-fun e!1288787 () Int)

(assert (=> d!625130 (= lt!765683 e!1288787)))

(declare-fun c!330799 () Bool)

(assert (=> d!625130 (= c!330799 ((_ is Nil!22306) lt!765599))))

(assert (=> d!625130 (= (size!17455 lt!765599) lt!765683)))

(declare-fun b!2041268 () Bool)

(assert (=> b!2041268 (= e!1288787 0)))

(declare-fun b!2041269 () Bool)

(assert (=> b!2041269 (= e!1288787 (+ 1 (size!17455 (t!191499 lt!765599))))))

(assert (= (and d!625130 c!330799) b!2041268))

(assert (= (and d!625130 (not c!330799)) b!2041269))

(declare-fun m!2485203 () Bool)

(assert (=> b!2041269 m!2485203))

(assert (=> b!2040820 d!625130))

(declare-fun d!625132 () Bool)

(declare-fun lt!765684 () Int)

(assert (=> d!625132 (>= lt!765684 0)))

(declare-fun e!1288788 () Int)

(assert (=> d!625132 (= lt!765684 e!1288788)))

(declare-fun c!330800 () Bool)

(assert (=> d!625132 (= c!330800 ((_ is Nil!22306) lt!765591))))

(assert (=> d!625132 (= (size!17455 lt!765591) lt!765684)))

(declare-fun b!2041270 () Bool)

(assert (=> b!2041270 (= e!1288788 0)))

(declare-fun b!2041271 () Bool)

(assert (=> b!2041271 (= e!1288788 (+ 1 (size!17455 (t!191499 lt!765591))))))

(assert (= (and d!625132 c!330800) b!2041270))

(assert (= (and d!625132 (not c!330800)) b!2041271))

(declare-fun m!2485205 () Bool)

(assert (=> b!2041271 m!2485205))

(assert (=> b!2040820 d!625132))

(assert (=> b!2040820 d!625094))

(declare-fun d!625134 () Bool)

(declare-fun res!894680 () Bool)

(declare-fun e!1288791 () Bool)

(assert (=> d!625134 (=> (not res!894680) (not e!1288791))))

(declare-fun list!9155 (IArray!14967) List!22390)

(assert (=> d!625134 (= res!894680 (<= (size!17455 (list!9155 (xs!10387 (c!330711 input!986)))) 512))))

(assert (=> d!625134 (= (inv!29645 (c!330711 input!986)) e!1288791)))

(declare-fun b!2041276 () Bool)

(declare-fun res!894681 () Bool)

(assert (=> b!2041276 (=> (not res!894681) (not e!1288791))))

(assert (=> b!2041276 (= res!894681 (= (csize!15193 (c!330711 input!986)) (size!17455 (list!9155 (xs!10387 (c!330711 input!986))))))))

(declare-fun b!2041277 () Bool)

(assert (=> b!2041277 (= e!1288791 (and (> (csize!15193 (c!330711 input!986)) 0) (<= (csize!15193 (c!330711 input!986)) 512)))))

(assert (= (and d!625134 res!894680) b!2041276))

(assert (= (and b!2041276 res!894681) b!2041277))

(declare-fun m!2485207 () Bool)

(assert (=> d!625134 m!2485207))

(assert (=> d!625134 m!2485207))

(declare-fun m!2485209 () Bool)

(assert (=> d!625134 m!2485209))

(assert (=> b!2041276 m!2485207))

(assert (=> b!2041276 m!2485207))

(assert (=> b!2041276 m!2485209))

(assert (=> b!2040824 d!625134))

(declare-fun d!625136 () Bool)

(declare-fun res!894688 () Bool)

(declare-fun e!1288794 () Bool)

(assert (=> d!625136 (=> (not res!894688) (not e!1288794))))

(assert (=> d!625136 (= res!894688 (= (csize!15194 (c!330712 acc!382)) (+ (size!17460 (left!17759 (c!330712 acc!382))) (size!17460 (right!18089 (c!330712 acc!382))))))))

(assert (=> d!625136 (= (inv!29646 (c!330712 acc!382)) e!1288794)))

(declare-fun b!2041284 () Bool)

(declare-fun res!894689 () Bool)

(assert (=> b!2041284 (=> (not res!894689) (not e!1288794))))

(assert (=> b!2041284 (= res!894689 (and (not (= (left!17759 (c!330712 acc!382)) Empty!7482)) (not (= (right!18089 (c!330712 acc!382)) Empty!7482))))))

(declare-fun b!2041285 () Bool)

(declare-fun res!894690 () Bool)

(assert (=> b!2041285 (=> (not res!894690) (not e!1288794))))

(assert (=> b!2041285 (= res!894690 (= (cheight!7693 (c!330712 acc!382)) (+ (max!0 (height!1174 (left!17759 (c!330712 acc!382))) (height!1174 (right!18089 (c!330712 acc!382)))) 1)))))

(declare-fun b!2041286 () Bool)

(assert (=> b!2041286 (= e!1288794 (<= 0 (cheight!7693 (c!330712 acc!382))))))

(assert (= (and d!625136 res!894688) b!2041284))

(assert (= (and b!2041284 res!894689) b!2041285))

(assert (= (and b!2041285 res!894690) b!2041286))

(declare-fun m!2485211 () Bool)

(assert (=> d!625136 m!2485211))

(declare-fun m!2485213 () Bool)

(assert (=> d!625136 m!2485213))

(declare-fun m!2485215 () Bool)

(assert (=> b!2041285 m!2485215))

(declare-fun m!2485217 () Bool)

(assert (=> b!2041285 m!2485217))

(assert (=> b!2041285 m!2485215))

(assert (=> b!2041285 m!2485217))

(declare-fun m!2485219 () Bool)

(assert (=> b!2041285 m!2485219))

(assert (=> b!2040840 d!625136))

(declare-fun d!625138 () Bool)

(declare-fun c!330801 () Bool)

(assert (=> d!625138 (= c!330801 ((_ is Node!7482) (left!17759 (c!330712 acc!382))))))

(declare-fun e!1288795 () Bool)

(assert (=> d!625138 (= (inv!29639 (left!17759 (c!330712 acc!382))) e!1288795)))

(declare-fun b!2041287 () Bool)

(assert (=> b!2041287 (= e!1288795 (inv!29646 (left!17759 (c!330712 acc!382))))))

(declare-fun b!2041288 () Bool)

(declare-fun e!1288796 () Bool)

(assert (=> b!2041288 (= e!1288795 e!1288796)))

(declare-fun res!894691 () Bool)

(assert (=> b!2041288 (= res!894691 (not ((_ is Leaf!10964) (left!17759 (c!330712 acc!382)))))))

(assert (=> b!2041288 (=> res!894691 e!1288796)))

(declare-fun b!2041289 () Bool)

(assert (=> b!2041289 (= e!1288796 (inv!29647 (left!17759 (c!330712 acc!382))))))

(assert (= (and d!625138 c!330801) b!2041287))

(assert (= (and d!625138 (not c!330801)) b!2041288))

(assert (= (and b!2041288 (not res!894691)) b!2041289))

(declare-fun m!2485221 () Bool)

(assert (=> b!2041287 m!2485221))

(declare-fun m!2485223 () Bool)

(assert (=> b!2041289 m!2485223))

(assert (=> b!2040955 d!625138))

(declare-fun d!625140 () Bool)

(declare-fun c!330802 () Bool)

(assert (=> d!625140 (= c!330802 ((_ is Node!7482) (right!18089 (c!330712 acc!382))))))

(declare-fun e!1288797 () Bool)

(assert (=> d!625140 (= (inv!29639 (right!18089 (c!330712 acc!382))) e!1288797)))

(declare-fun b!2041290 () Bool)

(assert (=> b!2041290 (= e!1288797 (inv!29646 (right!18089 (c!330712 acc!382))))))

(declare-fun b!2041291 () Bool)

(declare-fun e!1288798 () Bool)

(assert (=> b!2041291 (= e!1288797 e!1288798)))

(declare-fun res!894692 () Bool)

(assert (=> b!2041291 (= res!894692 (not ((_ is Leaf!10964) (right!18089 (c!330712 acc!382)))))))

(assert (=> b!2041291 (=> res!894692 e!1288798)))

(declare-fun b!2041292 () Bool)

(assert (=> b!2041292 (= e!1288798 (inv!29647 (right!18089 (c!330712 acc!382))))))

(assert (= (and d!625140 c!330802) b!2041290))

(assert (= (and d!625140 (not c!330802)) b!2041291))

(assert (= (and b!2041291 (not res!894692)) b!2041292))

(declare-fun m!2485225 () Bool)

(assert (=> b!2041290 m!2485225))

(declare-fun m!2485227 () Bool)

(assert (=> b!2041292 m!2485227))

(assert (=> b!2040955 d!625140))

(declare-fun b!2041293 () Bool)

(declare-fun e!1288803 () Int)

(declare-fun call!125283 () Int)

(assert (=> b!2041293 (= e!1288803 call!125283)))

(declare-fun b!2041294 () Bool)

(declare-fun e!1288801 () Int)

(assert (=> b!2041294 (= e!1288801 (- call!125283 (- (size!17455 lt!765592) (size!17455 lt!765594))))))

(declare-fun b!2041295 () Bool)

(declare-fun e!1288800 () List!22390)

(assert (=> b!2041295 (= e!1288800 (drop!1124 (t!191499 lt!765592) (- (- (size!17455 lt!765592) (size!17455 lt!765594)) 1)))))

(declare-fun b!2041296 () Bool)

(assert (=> b!2041296 (= e!1288800 lt!765592)))

(declare-fun b!2041297 () Bool)

(declare-fun e!1288802 () List!22390)

(assert (=> b!2041297 (= e!1288802 Nil!22306)))

(declare-fun d!625142 () Bool)

(declare-fun e!1288799 () Bool)

(assert (=> d!625142 e!1288799))

(declare-fun res!894693 () Bool)

(assert (=> d!625142 (=> (not res!894693) (not e!1288799))))

(declare-fun lt!765685 () List!22390)

(assert (=> d!625142 (= res!894693 (= ((_ map implies) (content!3314 lt!765685) (content!3314 lt!765592)) ((as const (InoxSet C!11004)) true)))))

(assert (=> d!625142 (= lt!765685 e!1288802)))

(declare-fun c!330804 () Bool)

(assert (=> d!625142 (= c!330804 ((_ is Nil!22306) lt!765592))))

(assert (=> d!625142 (= (drop!1124 lt!765592 (- (size!17455 lt!765592) (size!17455 lt!765594))) lt!765685)))

(declare-fun bm!125278 () Bool)

(assert (=> bm!125278 (= call!125283 (size!17455 lt!765592))))

(declare-fun b!2041298 () Bool)

(assert (=> b!2041298 (= e!1288802 e!1288800)))

(declare-fun c!330806 () Bool)

(assert (=> b!2041298 (= c!330806 (<= (- (size!17455 lt!765592) (size!17455 lt!765594)) 0))))

(declare-fun b!2041299 () Bool)

(assert (=> b!2041299 (= e!1288801 0)))

(declare-fun b!2041300 () Bool)

(assert (=> b!2041300 (= e!1288799 (= (size!17455 lt!765685) e!1288803))))

(declare-fun c!330803 () Bool)

(assert (=> b!2041300 (= c!330803 (<= (- (size!17455 lt!765592) (size!17455 lt!765594)) 0))))

(declare-fun b!2041301 () Bool)

(assert (=> b!2041301 (= e!1288803 e!1288801)))

(declare-fun c!330805 () Bool)

(assert (=> b!2041301 (= c!330805 (>= (- (size!17455 lt!765592) (size!17455 lt!765594)) call!125283))))

(assert (= (and d!625142 c!330804) b!2041297))

(assert (= (and d!625142 (not c!330804)) b!2041298))

(assert (= (and b!2041298 c!330806) b!2041296))

(assert (= (and b!2041298 (not c!330806)) b!2041295))

(assert (= (and d!625142 res!894693) b!2041300))

(assert (= (and b!2041300 c!330803) b!2041293))

(assert (= (and b!2041300 (not c!330803)) b!2041301))

(assert (= (and b!2041301 c!330805) b!2041299))

(assert (= (and b!2041301 (not c!330805)) b!2041294))

(assert (= (or b!2041293 b!2041301 b!2041294) bm!125278))

(declare-fun m!2485229 () Bool)

(assert (=> b!2041295 m!2485229))

(declare-fun m!2485231 () Bool)

(assert (=> d!625142 m!2485231))

(declare-fun m!2485233 () Bool)

(assert (=> d!625142 m!2485233))

(assert (=> bm!125278 m!2484825))

(declare-fun m!2485235 () Bool)

(assert (=> b!2041300 m!2485235))

(assert (=> d!625012 d!625142))

(declare-fun d!625144 () Bool)

(declare-fun lt!765686 () Int)

(assert (=> d!625144 (>= lt!765686 0)))

(declare-fun e!1288804 () Int)

(assert (=> d!625144 (= lt!765686 e!1288804)))

(declare-fun c!330807 () Bool)

(assert (=> d!625144 (= c!330807 ((_ is Nil!22306) lt!765592))))

(assert (=> d!625144 (= (size!17455 lt!765592) lt!765686)))

(declare-fun b!2041302 () Bool)

(assert (=> b!2041302 (= e!1288804 0)))

(declare-fun b!2041303 () Bool)

(assert (=> b!2041303 (= e!1288804 (+ 1 (size!17455 (t!191499 lt!765592))))))

(assert (= (and d!625144 c!330807) b!2041302))

(assert (= (and d!625144 (not c!330807)) b!2041303))

(declare-fun m!2485237 () Bool)

(assert (=> b!2041303 m!2485237))

(assert (=> d!625012 d!625144))

(assert (=> d!625012 d!625094))

(declare-fun bs!421573 () Bool)

(declare-fun d!625146 () Bool)

(assert (= bs!421573 (and d!625146 d!625088)))

(declare-fun lambda!76658 () Int)

(assert (=> bs!421573 (= lambda!76658 lambda!76651)))

(declare-fun bs!421574 () Bool)

(assert (= bs!421574 (and d!625146 d!625100)))

(assert (=> bs!421574 (= lambda!76658 lambda!76653)))

(declare-fun bs!421575 () Bool)

(assert (= bs!421575 (and d!625146 d!625080)))

(assert (=> bs!421575 (= lambda!76658 lambda!76647)))

(declare-fun bs!421576 () Bool)

(assert (= bs!421576 (and d!625146 d!625116)))

(assert (=> bs!421576 (= lambda!76658 lambda!76657)))

(declare-fun bs!421577 () Bool)

(assert (= bs!421577 (and d!625146 d!625104)))

(assert (=> bs!421577 (= lambda!76658 lambda!76655)))

(declare-fun bs!421578 () Bool)

(assert (= bs!421578 (and d!625146 d!625102)))

(assert (=> bs!421578 (= lambda!76658 lambda!76654)))

(declare-fun bs!421579 () Bool)

(assert (= bs!421579 (and d!625146 d!625096)))

(assert (=> bs!421579 (= lambda!76658 lambda!76652)))

(declare-fun bs!421580 () Bool)

(assert (= bs!421580 (and d!625146 d!625106)))

(assert (=> bs!421580 (= lambda!76658 lambda!76656)))

(assert (=> d!625146 (= (inv!29648 setElem!11741) (forall!4762 (exprs!1499 setElem!11741) lambda!76658))))

(declare-fun bs!421581 () Bool)

(assert (= bs!421581 d!625146))

(declare-fun m!2485239 () Bool)

(assert (=> bs!421581 m!2485239))

(assert (=> setNonEmpty!11741 d!625146))

(declare-fun d!625148 () Bool)

(assert (=> d!625148 (= (list!9150 (_1!11954 lt!765618)) (list!9153 (c!330712 (_1!11954 lt!765618))))))

(declare-fun bs!421582 () Bool)

(assert (= bs!421582 d!625148))

(declare-fun m!2485241 () Bool)

(assert (=> bs!421582 m!2485241))

(assert (=> b!2040877 d!625148))

(assert (=> b!2040877 d!625086))

(assert (=> b!2040877 d!624988))

(declare-fun bs!421583 () Bool)

(declare-fun d!625150 () Bool)

(assert (= bs!421583 (and d!625150 d!625088)))

(declare-fun lambda!76659 () Int)

(assert (=> bs!421583 (= lambda!76659 lambda!76651)))

(declare-fun bs!421584 () Bool)

(assert (= bs!421584 (and d!625150 d!625100)))

(assert (=> bs!421584 (= lambda!76659 lambda!76653)))

(declare-fun bs!421585 () Bool)

(assert (= bs!421585 (and d!625150 d!625080)))

(assert (=> bs!421585 (= lambda!76659 lambda!76647)))

(declare-fun bs!421586 () Bool)

(assert (= bs!421586 (and d!625150 d!625116)))

(assert (=> bs!421586 (= lambda!76659 lambda!76657)))

(declare-fun bs!421587 () Bool)

(assert (= bs!421587 (and d!625150 d!625104)))

(assert (=> bs!421587 (= lambda!76659 lambda!76655)))

(declare-fun bs!421588 () Bool)

(assert (= bs!421588 (and d!625150 d!625102)))

(assert (=> bs!421588 (= lambda!76659 lambda!76654)))

(declare-fun bs!421589 () Bool)

(assert (= bs!421589 (and d!625150 d!625096)))

(assert (=> bs!421589 (= lambda!76659 lambda!76652)))

(declare-fun bs!421590 () Bool)

(assert (= bs!421590 (and d!625150 d!625106)))

(assert (=> bs!421590 (= lambda!76659 lambda!76656)))

(declare-fun bs!421591 () Bool)

(assert (= bs!421591 (and d!625150 d!625146)))

(assert (=> bs!421591 (= lambda!76659 lambda!76658)))

(assert (=> d!625150 (= (inv!29648 (_1!11955 (_1!11956 (h!27710 mapValue!9140)))) (forall!4762 (exprs!1499 (_1!11955 (_1!11956 (h!27710 mapValue!9140)))) lambda!76659))))

(declare-fun bs!421592 () Bool)

(assert (= bs!421592 d!625150))

(declare-fun m!2485243 () Bool)

(assert (=> bs!421592 m!2485243))

(assert (=> b!2040981 d!625150))

(assert (=> b!2040885 d!625058))

(declare-fun d!625152 () Bool)

(declare-fun e!1288806 () Bool)

(assert (=> d!625152 e!1288806))

(declare-fun c!330808 () Bool)

(declare-fun lt!765687 () tuple2!20970)

(assert (=> d!625152 (= c!330808 (> (size!17459 (_1!11958 lt!765687)) 0))))

(declare-fun e!1288807 () tuple2!20970)

(assert (=> d!625152 (= lt!765687 e!1288807)))

(declare-fun c!330809 () Bool)

(declare-fun lt!765689 () Option!4688)

(assert (=> d!625152 (= c!330809 ((_ is Some!4687) lt!765689))))

(assert (=> d!625152 (= lt!765689 (maxPrefix!2050 thiss!12889 rules!1563 (list!9151 input!986)))))

(assert (=> d!625152 (= (lexList!986 thiss!12889 rules!1563 (list!9151 input!986)) lt!765687)))

(declare-fun b!2041304 () Bool)

(declare-fun e!1288805 () Bool)

(assert (=> b!2041304 (= e!1288806 e!1288805)))

(declare-fun res!894694 () Bool)

(assert (=> b!2041304 (= res!894694 (< (size!17455 (_2!11958 lt!765687)) (size!17455 (list!9151 input!986))))))

(assert (=> b!2041304 (=> (not res!894694) (not e!1288805))))

(declare-fun b!2041305 () Bool)

(declare-fun lt!765688 () tuple2!20970)

(assert (=> b!2041305 (= e!1288807 (tuple2!20971 (Cons!22308 (_1!11959 (v!27043 lt!765689)) (_1!11958 lt!765688)) (_2!11958 lt!765688)))))

(assert (=> b!2041305 (= lt!765688 (lexList!986 thiss!12889 rules!1563 (_2!11959 (v!27043 lt!765689))))))

(declare-fun b!2041306 () Bool)

(assert (=> b!2041306 (= e!1288806 (= (_2!11958 lt!765687) (list!9151 input!986)))))

(declare-fun b!2041307 () Bool)

(assert (=> b!2041307 (= e!1288805 (not (isEmpty!13948 (_1!11958 lt!765687))))))

(declare-fun b!2041308 () Bool)

(assert (=> b!2041308 (= e!1288807 (tuple2!20971 Nil!22308 (list!9151 input!986)))))

(assert (= (and d!625152 c!330809) b!2041305))

(assert (= (and d!625152 (not c!330809)) b!2041308))

(assert (= (and d!625152 c!330808) b!2041304))

(assert (= (and d!625152 (not c!330808)) b!2041306))

(assert (= (and b!2041304 res!894694) b!2041307))

(declare-fun m!2485245 () Bool)

(assert (=> d!625152 m!2485245))

(assert (=> d!625152 m!2484745))

(declare-fun m!2485247 () Bool)

(assert (=> d!625152 m!2485247))

(declare-fun m!2485249 () Bool)

(assert (=> b!2041304 m!2485249))

(assert (=> b!2041304 m!2484745))

(declare-fun m!2485251 () Bool)

(assert (=> b!2041304 m!2485251))

(declare-fun m!2485253 () Bool)

(assert (=> b!2041305 m!2485253))

(declare-fun m!2485255 () Bool)

(assert (=> b!2041307 m!2485255))

(assert (=> b!2040885 d!625152))

(assert (=> b!2040885 d!624990))

(declare-fun bs!421593 () Bool)

(declare-fun d!625154 () Bool)

(assert (= bs!421593 (and d!625154 d!625150)))

(declare-fun lambda!76660 () Int)

(assert (=> bs!421593 (= lambda!76660 lambda!76659)))

(declare-fun bs!421594 () Bool)

(assert (= bs!421594 (and d!625154 d!625088)))

(assert (=> bs!421594 (= lambda!76660 lambda!76651)))

(declare-fun bs!421595 () Bool)

(assert (= bs!421595 (and d!625154 d!625100)))

(assert (=> bs!421595 (= lambda!76660 lambda!76653)))

(declare-fun bs!421596 () Bool)

(assert (= bs!421596 (and d!625154 d!625080)))

(assert (=> bs!421596 (= lambda!76660 lambda!76647)))

(declare-fun bs!421597 () Bool)

(assert (= bs!421597 (and d!625154 d!625116)))

(assert (=> bs!421597 (= lambda!76660 lambda!76657)))

(declare-fun bs!421598 () Bool)

(assert (= bs!421598 (and d!625154 d!625104)))

(assert (=> bs!421598 (= lambda!76660 lambda!76655)))

(declare-fun bs!421599 () Bool)

(assert (= bs!421599 (and d!625154 d!625102)))

(assert (=> bs!421599 (= lambda!76660 lambda!76654)))

(declare-fun bs!421600 () Bool)

(assert (= bs!421600 (and d!625154 d!625096)))

(assert (=> bs!421600 (= lambda!76660 lambda!76652)))

(declare-fun bs!421601 () Bool)

(assert (= bs!421601 (and d!625154 d!625106)))

(assert (=> bs!421601 (= lambda!76660 lambda!76656)))

(declare-fun bs!421602 () Bool)

(assert (= bs!421602 (and d!625154 d!625146)))

(assert (=> bs!421602 (= lambda!76660 lambda!76658)))

(assert (=> d!625154 (= (inv!29648 setElem!11753) (forall!4762 (exprs!1499 setElem!11753) lambda!76660))))

(declare-fun bs!421603 () Bool)

(assert (= bs!421603 d!625154))

(declare-fun m!2485257 () Bool)

(assert (=> bs!421603 m!2485257))

(assert (=> setNonEmpty!11754 d!625154))

(declare-fun d!625156 () Bool)

(declare-fun c!330814 () Bool)

(assert (=> d!625156 (= c!330814 ((_ is Empty!7481) (c!330711 input!986)))))

(declare-fun e!1288812 () List!22390)

(assert (=> d!625156 (= (list!9152 (c!330711 input!986)) e!1288812)))

(declare-fun b!2041320 () Bool)

(declare-fun e!1288813 () List!22390)

(assert (=> b!2041320 (= e!1288813 (++!6061 (list!9152 (left!17758 (c!330711 input!986))) (list!9152 (right!18088 (c!330711 input!986)))))))

(declare-fun b!2041317 () Bool)

(assert (=> b!2041317 (= e!1288812 Nil!22306)))

(declare-fun b!2041318 () Bool)

(assert (=> b!2041318 (= e!1288812 e!1288813)))

(declare-fun c!330815 () Bool)

(assert (=> b!2041318 (= c!330815 ((_ is Leaf!10963) (c!330711 input!986)))))

(declare-fun b!2041319 () Bool)

(assert (=> b!2041319 (= e!1288813 (list!9155 (xs!10387 (c!330711 input!986))))))

(assert (= (and d!625156 c!330814) b!2041317))

(assert (= (and d!625156 (not c!330814)) b!2041318))

(assert (= (and b!2041318 c!330815) b!2041319))

(assert (= (and b!2041318 (not c!330815)) b!2041320))

(declare-fun m!2485259 () Bool)

(assert (=> b!2041320 m!2485259))

(declare-fun m!2485261 () Bool)

(assert (=> b!2041320 m!2485261))

(assert (=> b!2041320 m!2485259))

(assert (=> b!2041320 m!2485261))

(declare-fun m!2485263 () Bool)

(assert (=> b!2041320 m!2485263))

(assert (=> b!2041319 m!2485207))

(assert (=> d!624990 d!625156))

(declare-fun d!625158 () Bool)

(declare-fun lt!765692 () Bool)

(assert (=> d!625158 (= lt!765692 (isEmpty!13948 (list!9150 (_1!11954 lt!765627))))))

(assert (=> d!625158 (= lt!765692 (isEmpty!13950 (c!330712 (_1!11954 lt!765627))))))

(assert (=> d!625158 (= (isEmpty!13947 (_1!11954 lt!765627)) lt!765692)))

(declare-fun bs!421604 () Bool)

(assert (= bs!421604 d!625158))

(assert (=> bs!421604 m!2484937))

(assert (=> bs!421604 m!2484937))

(declare-fun m!2485265 () Bool)

(assert (=> bs!421604 m!2485265))

(declare-fun m!2485267 () Bool)

(assert (=> bs!421604 m!2485267))

(assert (=> b!2040907 d!625158))

(declare-fun b!2041321 () Bool)

(declare-fun res!894695 () Bool)

(declare-fun e!1288814 () Bool)

(assert (=> b!2041321 (=> (not res!894695) (not e!1288814))))

(assert (=> b!2041321 (= res!894695 (isBalanced!2354 (right!18088 (c!330711 input!986))))))

(declare-fun d!625160 () Bool)

(declare-fun res!894699 () Bool)

(declare-fun e!1288815 () Bool)

(assert (=> d!625160 (=> res!894699 e!1288815)))

(assert (=> d!625160 (= res!894699 (not ((_ is Node!7481) (c!330711 input!986))))))

(assert (=> d!625160 (= (isBalanced!2354 (c!330711 input!986)) e!1288815)))

(declare-fun b!2041322 () Bool)

(assert (=> b!2041322 (= e!1288815 e!1288814)))

(declare-fun res!894696 () Bool)

(assert (=> b!2041322 (=> (not res!894696) (not e!1288814))))

(assert (=> b!2041322 (= res!894696 (<= (- 1) (- (height!1175 (left!17758 (c!330711 input!986))) (height!1175 (right!18088 (c!330711 input!986))))))))

(declare-fun b!2041323 () Bool)

(declare-fun res!894697 () Bool)

(assert (=> b!2041323 (=> (not res!894697) (not e!1288814))))

(assert (=> b!2041323 (= res!894697 (<= (- (height!1175 (left!17758 (c!330711 input!986))) (height!1175 (right!18088 (c!330711 input!986)))) 1))))

(declare-fun b!2041324 () Bool)

(declare-fun res!894700 () Bool)

(assert (=> b!2041324 (=> (not res!894700) (not e!1288814))))

(assert (=> b!2041324 (= res!894700 (not (isEmpty!13949 (left!17758 (c!330711 input!986)))))))

(declare-fun b!2041325 () Bool)

(assert (=> b!2041325 (= e!1288814 (not (isEmpty!13949 (right!18088 (c!330711 input!986)))))))

(declare-fun b!2041326 () Bool)

(declare-fun res!894698 () Bool)

(assert (=> b!2041326 (=> (not res!894698) (not e!1288814))))

(assert (=> b!2041326 (= res!894698 (isBalanced!2354 (left!17758 (c!330711 input!986))))))

(assert (= (and d!625160 (not res!894699)) b!2041322))

(assert (= (and b!2041322 res!894696) b!2041323))

(assert (= (and b!2041323 res!894697) b!2041326))

(assert (= (and b!2041326 res!894698) b!2041321))

(assert (= (and b!2041321 res!894695) b!2041324))

(assert (= (and b!2041324 res!894700) b!2041325))

(declare-fun m!2485269 () Bool)

(assert (=> b!2041323 m!2485269))

(declare-fun m!2485271 () Bool)

(assert (=> b!2041323 m!2485271))

(declare-fun m!2485273 () Bool)

(assert (=> b!2041321 m!2485273))

(assert (=> b!2041322 m!2485269))

(assert (=> b!2041322 m!2485271))

(declare-fun m!2485275 () Bool)

(assert (=> b!2041324 m!2485275))

(declare-fun m!2485277 () Bool)

(assert (=> b!2041326 m!2485277))

(declare-fun m!2485279 () Bool)

(assert (=> b!2041325 m!2485279))

(assert (=> d!624998 d!625160))

(declare-fun d!625162 () Bool)

(declare-fun res!894701 () Bool)

(declare-fun e!1288816 () Bool)

(assert (=> d!625162 (=> (not res!894701) (not e!1288816))))

(assert (=> d!625162 (= res!894701 (<= (size!17455 (list!9155 (xs!10387 (c!330711 treated!60)))) 512))))

(assert (=> d!625162 (= (inv!29645 (c!330711 treated!60)) e!1288816)))

(declare-fun b!2041327 () Bool)

(declare-fun res!894702 () Bool)

(assert (=> b!2041327 (=> (not res!894702) (not e!1288816))))

(assert (=> b!2041327 (= res!894702 (= (csize!15193 (c!330711 treated!60)) (size!17455 (list!9155 (xs!10387 (c!330711 treated!60))))))))

(declare-fun b!2041328 () Bool)

(assert (=> b!2041328 (= e!1288816 (and (> (csize!15193 (c!330711 treated!60)) 0) (<= (csize!15193 (c!330711 treated!60)) 512)))))

(assert (= (and d!625162 res!894701) b!2041327))

(assert (= (and b!2041327 res!894702) b!2041328))

(declare-fun m!2485281 () Bool)

(assert (=> d!625162 m!2485281))

(assert (=> d!625162 m!2485281))

(declare-fun m!2485283 () Bool)

(assert (=> d!625162 m!2485283))

(assert (=> b!2041327 m!2485281))

(assert (=> b!2041327 m!2485281))

(assert (=> b!2041327 m!2485283))

(assert (=> b!2040860 d!625162))

(declare-fun b!2041329 () Bool)

(declare-fun e!1288817 () List!22392)

(assert (=> b!2041329 (= e!1288817 Nil!22308)))

(declare-fun b!2041331 () Bool)

(declare-fun e!1288818 () List!22392)

(assert (=> b!2041331 (= e!1288818 (list!9154 (xs!10388 (c!330712 (++!6060 acc!382 (_1!11954 lt!765587))))))))

(declare-fun d!625164 () Bool)

(declare-fun c!330816 () Bool)

(assert (=> d!625164 (= c!330816 ((_ is Empty!7482) (c!330712 (++!6060 acc!382 (_1!11954 lt!765587)))))))

(assert (=> d!625164 (= (list!9153 (c!330712 (++!6060 acc!382 (_1!11954 lt!765587)))) e!1288817)))

(declare-fun b!2041332 () Bool)

(assert (=> b!2041332 (= e!1288818 (++!6063 (list!9153 (left!17759 (c!330712 (++!6060 acc!382 (_1!11954 lt!765587))))) (list!9153 (right!18089 (c!330712 (++!6060 acc!382 (_1!11954 lt!765587)))))))))

(declare-fun b!2041330 () Bool)

(assert (=> b!2041330 (= e!1288817 e!1288818)))

(declare-fun c!330817 () Bool)

(assert (=> b!2041330 (= c!330817 ((_ is Leaf!10964) (c!330712 (++!6060 acc!382 (_1!11954 lt!765587)))))))

(assert (= (and d!625164 c!330816) b!2041329))

(assert (= (and d!625164 (not c!330816)) b!2041330))

(assert (= (and b!2041330 c!330817) b!2041331))

(assert (= (and b!2041330 (not c!330817)) b!2041332))

(declare-fun m!2485285 () Bool)

(assert (=> b!2041331 m!2485285))

(declare-fun m!2485287 () Bool)

(assert (=> b!2041332 m!2485287))

(declare-fun m!2485289 () Bool)

(assert (=> b!2041332 m!2485289))

(assert (=> b!2041332 m!2485287))

(assert (=> b!2041332 m!2485289))

(declare-fun m!2485291 () Bool)

(assert (=> b!2041332 m!2485291))

(assert (=> d!625048 d!625164))

(declare-fun d!625166 () Bool)

(declare-fun c!330818 () Bool)

(assert (=> d!625166 (= c!330818 ((_ is Empty!7481) (c!330711 (_2!11954 lt!765596))))))

(declare-fun e!1288819 () List!22390)

(assert (=> d!625166 (= (list!9152 (c!330711 (_2!11954 lt!765596))) e!1288819)))

(declare-fun b!2041336 () Bool)

(declare-fun e!1288820 () List!22390)

(assert (=> b!2041336 (= e!1288820 (++!6061 (list!9152 (left!17758 (c!330711 (_2!11954 lt!765596)))) (list!9152 (right!18088 (c!330711 (_2!11954 lt!765596))))))))

(declare-fun b!2041333 () Bool)

(assert (=> b!2041333 (= e!1288819 Nil!22306)))

(declare-fun b!2041334 () Bool)

(assert (=> b!2041334 (= e!1288819 e!1288820)))

(declare-fun c!330819 () Bool)

(assert (=> b!2041334 (= c!330819 ((_ is Leaf!10963) (c!330711 (_2!11954 lt!765596))))))

(declare-fun b!2041335 () Bool)

(assert (=> b!2041335 (= e!1288820 (list!9155 (xs!10387 (c!330711 (_2!11954 lt!765596)))))))

(assert (= (and d!625166 c!330818) b!2041333))

(assert (= (and d!625166 (not c!330818)) b!2041334))

(assert (= (and b!2041334 c!330819) b!2041335))

(assert (= (and b!2041334 (not c!330819)) b!2041336))

(declare-fun m!2485293 () Bool)

(assert (=> b!2041336 m!2485293))

(declare-fun m!2485295 () Bool)

(assert (=> b!2041336 m!2485295))

(assert (=> b!2041336 m!2485293))

(assert (=> b!2041336 m!2485295))

(declare-fun m!2485297 () Bool)

(assert (=> b!2041336 m!2485297))

(declare-fun m!2485299 () Bool)

(assert (=> b!2041335 m!2485299))

(assert (=> d!625038 d!625166))

(declare-fun d!625168 () Bool)

(assert (=> d!625168 true))

(declare-fun lambda!76663 () Int)

(declare-fun order!14275 () Int)

(declare-fun dynLambda!11115 (Int Int) Int)

(assert (=> d!625168 (< (dynLambda!11113 order!14273 (toValue!5684 (transformation!4003 (h!27708 rules!1563)))) (dynLambda!11115 order!14275 lambda!76663))))

(declare-fun Forall2!648 (Int) Bool)

(assert (=> d!625168 (= (equivClasses!1541 (toChars!5543 (transformation!4003 (h!27708 rules!1563))) (toValue!5684 (transformation!4003 (h!27708 rules!1563)))) (Forall2!648 lambda!76663))))

(declare-fun bs!421605 () Bool)

(assert (= bs!421605 d!625168))

(declare-fun m!2485301 () Bool)

(assert (=> bs!421605 m!2485301))

(assert (=> b!2040857 d!625168))

(declare-fun bs!421606 () Bool)

(declare-fun d!625170 () Bool)

(assert (= bs!421606 (and d!625170 d!625150)))

(declare-fun lambda!76664 () Int)

(assert (=> bs!421606 (= lambda!76664 lambda!76659)))

(declare-fun bs!421607 () Bool)

(assert (= bs!421607 (and d!625170 d!625088)))

(assert (=> bs!421607 (= lambda!76664 lambda!76651)))

(declare-fun bs!421608 () Bool)

(assert (= bs!421608 (and d!625170 d!625100)))

(assert (=> bs!421608 (= lambda!76664 lambda!76653)))

(declare-fun bs!421609 () Bool)

(assert (= bs!421609 (and d!625170 d!625080)))

(assert (=> bs!421609 (= lambda!76664 lambda!76647)))

(declare-fun bs!421610 () Bool)

(assert (= bs!421610 (and d!625170 d!625116)))

(assert (=> bs!421610 (= lambda!76664 lambda!76657)))

(declare-fun bs!421611 () Bool)

(assert (= bs!421611 (and d!625170 d!625104)))

(assert (=> bs!421611 (= lambda!76664 lambda!76655)))

(declare-fun bs!421612 () Bool)

(assert (= bs!421612 (and d!625170 d!625102)))

(assert (=> bs!421612 (= lambda!76664 lambda!76654)))

(declare-fun bs!421613 () Bool)

(assert (= bs!421613 (and d!625170 d!625154)))

(assert (=> bs!421613 (= lambda!76664 lambda!76660)))

(declare-fun bs!421614 () Bool)

(assert (= bs!421614 (and d!625170 d!625096)))

(assert (=> bs!421614 (= lambda!76664 lambda!76652)))

(declare-fun bs!421615 () Bool)

(assert (= bs!421615 (and d!625170 d!625106)))

(assert (=> bs!421615 (= lambda!76664 lambda!76656)))

(declare-fun bs!421616 () Bool)

(assert (= bs!421616 (and d!625170 d!625146)))

(assert (=> bs!421616 (= lambda!76664 lambda!76658)))

(assert (=> d!625170 (= (inv!29648 setElem!11755) (forall!4762 (exprs!1499 setElem!11755) lambda!76664))))

(declare-fun bs!421617 () Bool)

(assert (= bs!421617 d!625170))

(declare-fun m!2485303 () Bool)

(assert (=> bs!421617 m!2485303))

(assert (=> setNonEmpty!11755 d!625170))

(declare-fun bs!421618 () Bool)

(declare-fun d!625172 () Bool)

(assert (= bs!421618 (and d!625172 d!625150)))

(declare-fun lambda!76665 () Int)

(assert (=> bs!421618 (= lambda!76665 lambda!76659)))

(declare-fun bs!421619 () Bool)

(assert (= bs!421619 (and d!625172 d!625088)))

(assert (=> bs!421619 (= lambda!76665 lambda!76651)))

(declare-fun bs!421620 () Bool)

(assert (= bs!421620 (and d!625172 d!625100)))

(assert (=> bs!421620 (= lambda!76665 lambda!76653)))

(declare-fun bs!421621 () Bool)

(assert (= bs!421621 (and d!625172 d!625080)))

(assert (=> bs!421621 (= lambda!76665 lambda!76647)))

(declare-fun bs!421622 () Bool)

(assert (= bs!421622 (and d!625172 d!625170)))

(assert (=> bs!421622 (= lambda!76665 lambda!76664)))

(declare-fun bs!421623 () Bool)

(assert (= bs!421623 (and d!625172 d!625116)))

(assert (=> bs!421623 (= lambda!76665 lambda!76657)))

(declare-fun bs!421624 () Bool)

(assert (= bs!421624 (and d!625172 d!625104)))

(assert (=> bs!421624 (= lambda!76665 lambda!76655)))

(declare-fun bs!421625 () Bool)

(assert (= bs!421625 (and d!625172 d!625102)))

(assert (=> bs!421625 (= lambda!76665 lambda!76654)))

(declare-fun bs!421626 () Bool)

(assert (= bs!421626 (and d!625172 d!625154)))

(assert (=> bs!421626 (= lambda!76665 lambda!76660)))

(declare-fun bs!421627 () Bool)

(assert (= bs!421627 (and d!625172 d!625096)))

(assert (=> bs!421627 (= lambda!76665 lambda!76652)))

(declare-fun bs!421628 () Bool)

(assert (= bs!421628 (and d!625172 d!625106)))

(assert (=> bs!421628 (= lambda!76665 lambda!76656)))

(declare-fun bs!421629 () Bool)

(assert (= bs!421629 (and d!625172 d!625146)))

(assert (=> bs!421629 (= lambda!76665 lambda!76658)))

(assert (=> d!625172 (= (inv!29648 setElem!11735) (forall!4762 (exprs!1499 setElem!11735) lambda!76665))))

(declare-fun bs!421630 () Bool)

(assert (= bs!421630 d!625172))

(declare-fun m!2485305 () Bool)

(assert (=> bs!421630 m!2485305))

(assert (=> setNonEmpty!11735 d!625172))

(assert (=> b!2040846 d!625092))

(assert (=> b!2040846 d!625094))

(declare-fun bs!421631 () Bool)

(declare-fun d!625174 () Bool)

(assert (= bs!421631 (and d!625174 d!625150)))

(declare-fun lambda!76666 () Int)

(assert (=> bs!421631 (= lambda!76666 lambda!76659)))

(declare-fun bs!421632 () Bool)

(assert (= bs!421632 (and d!625174 d!625088)))

(assert (=> bs!421632 (= lambda!76666 lambda!76651)))

(declare-fun bs!421633 () Bool)

(assert (= bs!421633 (and d!625174 d!625100)))

(assert (=> bs!421633 (= lambda!76666 lambda!76653)))

(declare-fun bs!421634 () Bool)

(assert (= bs!421634 (and d!625174 d!625080)))

(assert (=> bs!421634 (= lambda!76666 lambda!76647)))

(declare-fun bs!421635 () Bool)

(assert (= bs!421635 (and d!625174 d!625170)))

(assert (=> bs!421635 (= lambda!76666 lambda!76664)))

(declare-fun bs!421636 () Bool)

(assert (= bs!421636 (and d!625174 d!625116)))

(assert (=> bs!421636 (= lambda!76666 lambda!76657)))

(declare-fun bs!421637 () Bool)

(assert (= bs!421637 (and d!625174 d!625104)))

(assert (=> bs!421637 (= lambda!76666 lambda!76655)))

(declare-fun bs!421638 () Bool)

(assert (= bs!421638 (and d!625174 d!625102)))

(assert (=> bs!421638 (= lambda!76666 lambda!76654)))

(declare-fun bs!421639 () Bool)

(assert (= bs!421639 (and d!625174 d!625154)))

(assert (=> bs!421639 (= lambda!76666 lambda!76660)))

(declare-fun bs!421640 () Bool)

(assert (= bs!421640 (and d!625174 d!625096)))

(assert (=> bs!421640 (= lambda!76666 lambda!76652)))

(declare-fun bs!421641 () Bool)

(assert (= bs!421641 (and d!625174 d!625172)))

(assert (=> bs!421641 (= lambda!76666 lambda!76665)))

(declare-fun bs!421642 () Bool)

(assert (= bs!421642 (and d!625174 d!625106)))

(assert (=> bs!421642 (= lambda!76666 lambda!76656)))

(declare-fun bs!421643 () Bool)

(assert (= bs!421643 (and d!625174 d!625146)))

(assert (=> bs!421643 (= lambda!76666 lambda!76658)))

(assert (=> d!625174 (= (inv!29648 (_2!11952 (_1!11953 (h!27705 mapDefault!9137)))) (forall!4762 (exprs!1499 (_2!11952 (_1!11953 (h!27705 mapDefault!9137)))) lambda!76666))))

(declare-fun bs!421644 () Bool)

(assert (= bs!421644 d!625174))

(declare-fun m!2485307 () Bool)

(assert (=> bs!421644 m!2485307))

(assert (=> b!2040932 d!625174))

(declare-fun d!625176 () Bool)

(declare-fun lt!765693 () Int)

(assert (=> d!625176 (= lt!765693 (size!17459 (list!9150 (_1!11954 lt!765621))))))

(assert (=> d!625176 (= lt!765693 (size!17460 (c!330712 (_1!11954 lt!765621))))))

(assert (=> d!625176 (= (size!17456 (_1!11954 lt!765621)) lt!765693)))

(declare-fun bs!421645 () Bool)

(assert (= bs!421645 d!625176))

(assert (=> bs!421645 m!2484889))

(assert (=> bs!421645 m!2484889))

(declare-fun m!2485309 () Bool)

(assert (=> bs!421645 m!2485309))

(declare-fun m!2485311 () Bool)

(assert (=> bs!421645 m!2485311))

(assert (=> d!625044 d!625176))

(declare-fun call!125284 () Option!4687)

(declare-fun bm!125279 () Bool)

(assert (=> bm!125279 (= call!125284 (maxPrefixOneRuleZipperSequence!382 thiss!12889 (h!27708 rules!1563) input!986))))

(declare-fun b!2041341 () Bool)

(declare-fun e!1288823 () Option!4687)

(declare-fun lt!765694 () Option!4687)

(declare-fun lt!765700 () Option!4687)

(assert (=> b!2041341 (= e!1288823 (ite (and ((_ is None!4686) lt!765694) ((_ is None!4686) lt!765700)) None!4686 (ite ((_ is None!4686) lt!765700) lt!765694 (ite ((_ is None!4686) lt!765694) lt!765700 (ite (>= (size!17453 (_1!11957 (v!27041 lt!765694))) (size!17453 (_1!11957 (v!27041 lt!765700)))) lt!765694 lt!765700)))))))

(assert (=> b!2041341 (= lt!765694 call!125284)))

(assert (=> b!2041341 (= lt!765700 (maxPrefixZipperSequence!786 thiss!12889 (t!191500 rules!1563) input!986))))

(declare-fun b!2041342 () Bool)

(declare-fun e!1288827 () Bool)

(declare-fun e!1288828 () Bool)

(assert (=> b!2041342 (= e!1288827 e!1288828)))

(declare-fun res!894705 () Bool)

(assert (=> b!2041342 (=> (not res!894705) (not e!1288828))))

(declare-fun lt!765697 () Option!4687)

(assert (=> b!2041342 (= res!894705 (= (_1!11957 (get!7093 lt!765697)) (_1!11959 (get!7094 (maxPrefix!2050 thiss!12889 rules!1563 (list!9151 input!986))))))))

(declare-fun b!2041343 () Bool)

(declare-fun e!1288824 () Bool)

(assert (=> b!2041343 (= e!1288824 e!1288827)))

(declare-fun res!894710 () Bool)

(assert (=> b!2041343 (=> res!894710 e!1288827)))

(assert (=> b!2041343 (= res!894710 (not (isDefined!3971 lt!765697)))))

(declare-fun e!1288825 () Bool)

(declare-fun b!2041345 () Bool)

(assert (=> b!2041345 (= e!1288825 (= (list!9151 (_2!11957 (get!7093 lt!765697))) (_2!11959 (get!7094 (maxPrefixZipper!390 thiss!12889 rules!1563 (list!9151 input!986))))))))

(declare-fun b!2041346 () Bool)

(assert (=> b!2041346 (= e!1288823 call!125284)))

(declare-fun b!2041347 () Bool)

(declare-fun e!1288826 () Bool)

(assert (=> b!2041347 (= e!1288826 e!1288825)))

(declare-fun res!894708 () Bool)

(assert (=> b!2041347 (=> (not res!894708) (not e!1288825))))

(assert (=> b!2041347 (= res!894708 (= (_1!11957 (get!7093 lt!765697)) (_1!11959 (get!7094 (maxPrefixZipper!390 thiss!12889 rules!1563 (list!9151 input!986))))))))

(declare-fun b!2041348 () Bool)

(declare-fun res!894709 () Bool)

(assert (=> b!2041348 (=> (not res!894709) (not e!1288824))))

(assert (=> b!2041348 (= res!894709 e!1288826)))

(declare-fun res!894707 () Bool)

(assert (=> b!2041348 (=> res!894707 e!1288826)))

(assert (=> b!2041348 (= res!894707 (not (isDefined!3971 lt!765697)))))

(declare-fun d!625178 () Bool)

(assert (=> d!625178 e!1288824))

(declare-fun res!894706 () Bool)

(assert (=> d!625178 (=> (not res!894706) (not e!1288824))))

(assert (=> d!625178 (= res!894706 (= (isDefined!3971 lt!765697) (isDefined!3972 (maxPrefixZipper!390 thiss!12889 rules!1563 (list!9151 input!986)))))))

(assert (=> d!625178 (= lt!765697 e!1288823)))

(declare-fun c!330820 () Bool)

(assert (=> d!625178 (= c!330820 (and ((_ is Cons!22307) rules!1563) ((_ is Nil!22307) (t!191500 rules!1563))))))

(declare-fun lt!765695 () Unit!36991)

(declare-fun lt!765698 () Unit!36991)

(assert (=> d!625178 (= lt!765695 lt!765698)))

(declare-fun lt!765696 () List!22390)

(declare-fun lt!765699 () List!22390)

(assert (=> d!625178 (isPrefix!1990 lt!765696 lt!765699)))

(assert (=> d!625178 (= lt!765698 (lemmaIsPrefixRefl!1308 lt!765696 lt!765699))))

(assert (=> d!625178 (= lt!765699 (list!9151 input!986))))

(assert (=> d!625178 (= lt!765696 (list!9151 input!986))))

(assert (=> d!625178 (rulesValidInductive!1390 thiss!12889 rules!1563)))

(assert (=> d!625178 (= (maxPrefixZipperSequence!786 thiss!12889 rules!1563 input!986) lt!765697)))

(declare-fun b!2041344 () Bool)

(assert (=> b!2041344 (= e!1288828 (= (list!9151 (_2!11957 (get!7093 lt!765697))) (_2!11959 (get!7094 (maxPrefix!2050 thiss!12889 rules!1563 (list!9151 input!986))))))))

(assert (= (and d!625178 c!330820) b!2041346))

(assert (= (and d!625178 (not c!330820)) b!2041341))

(assert (= (or b!2041346 b!2041341) bm!125279))

(assert (= (and d!625178 res!894706) b!2041348))

(assert (= (and b!2041348 (not res!894707)) b!2041347))

(assert (= (and b!2041347 res!894708) b!2041345))

(assert (= (and b!2041348 res!894709) b!2041343))

(assert (= (and b!2041343 (not res!894710)) b!2041342))

(assert (= (and b!2041342 res!894705) b!2041344))

(declare-fun m!2485313 () Bool)

(assert (=> b!2041341 m!2485313))

(declare-fun m!2485315 () Bool)

(assert (=> b!2041342 m!2485315))

(assert (=> b!2041342 m!2484745))

(assert (=> b!2041342 m!2484745))

(assert (=> b!2041342 m!2485247))

(assert (=> b!2041342 m!2485247))

(declare-fun m!2485317 () Bool)

(assert (=> b!2041342 m!2485317))

(assert (=> b!2041344 m!2484745))

(assert (=> b!2041344 m!2485247))

(assert (=> b!2041344 m!2485317))

(declare-fun m!2485319 () Bool)

(assert (=> b!2041344 m!2485319))

(assert (=> b!2041344 m!2484745))

(assert (=> b!2041344 m!2485247))

(assert (=> b!2041344 m!2485315))

(declare-fun m!2485321 () Bool)

(assert (=> b!2041343 m!2485321))

(assert (=> b!2041345 m!2484745))

(declare-fun m!2485323 () Bool)

(assert (=> b!2041345 m!2485323))

(declare-fun m!2485325 () Bool)

(assert (=> b!2041345 m!2485325))

(assert (=> b!2041345 m!2485319))

(assert (=> b!2041345 m!2484745))

(assert (=> b!2041345 m!2485323))

(assert (=> b!2041345 m!2485315))

(assert (=> b!2041348 m!2485321))

(assert (=> b!2041347 m!2485315))

(assert (=> b!2041347 m!2484745))

(assert (=> b!2041347 m!2484745))

(assert (=> b!2041347 m!2485323))

(assert (=> b!2041347 m!2485323))

(assert (=> b!2041347 m!2485325))

(declare-fun m!2485327 () Bool)

(assert (=> bm!125279 m!2485327))

(assert (=> d!625178 m!2484723))

(declare-fun m!2485329 () Bool)

(assert (=> d!625178 m!2485329))

(declare-fun m!2485331 () Bool)

(assert (=> d!625178 m!2485331))

(assert (=> d!625178 m!2484745))

(assert (=> d!625178 m!2485323))

(assert (=> d!625178 m!2485321))

(assert (=> d!625178 m!2485323))

(declare-fun m!2485333 () Bool)

(assert (=> d!625178 m!2485333))

(assert (=> d!625178 m!2484745))

(assert (=> d!625044 d!625178))

(declare-fun d!625180 () Bool)

(declare-fun c!330823 () Bool)

(assert (=> d!625180 (= c!330823 ((_ is Nil!22306) lt!765599))))

(declare-fun e!1288831 () (InoxSet C!11004))

(assert (=> d!625180 (= (content!3314 lt!765599) e!1288831)))

(declare-fun b!2041353 () Bool)

(assert (=> b!2041353 (= e!1288831 ((as const (Array C!11004 Bool)) false))))

(declare-fun b!2041354 () Bool)

(assert (=> b!2041354 (= e!1288831 ((_ map or) (store ((as const (Array C!11004 Bool)) false) (h!27707 lt!765599) true) (content!3314 (t!191499 lt!765599))))))

(assert (= (and d!625180 c!330823) b!2041353))

(assert (= (and d!625180 (not c!330823)) b!2041354))

(declare-fun m!2485335 () Bool)

(assert (=> b!2041354 m!2485335))

(declare-fun m!2485337 () Bool)

(assert (=> b!2041354 m!2485337))

(assert (=> d!624986 d!625180))

(declare-fun d!625182 () Bool)

(declare-fun c!330824 () Bool)

(assert (=> d!625182 (= c!330824 ((_ is Nil!22306) lt!765591))))

(declare-fun e!1288832 () (InoxSet C!11004))

(assert (=> d!625182 (= (content!3314 lt!765591) e!1288832)))

(declare-fun b!2041355 () Bool)

(assert (=> b!2041355 (= e!1288832 ((as const (Array C!11004 Bool)) false))))

(declare-fun b!2041356 () Bool)

(assert (=> b!2041356 (= e!1288832 ((_ map or) (store ((as const (Array C!11004 Bool)) false) (h!27707 lt!765591) true) (content!3314 (t!191499 lt!765591))))))

(assert (= (and d!625182 c!330824) b!2041355))

(assert (= (and d!625182 (not c!330824)) b!2041356))

(declare-fun m!2485339 () Bool)

(assert (=> b!2041356 m!2485339))

(declare-fun m!2485341 () Bool)

(assert (=> b!2041356 m!2485341))

(assert (=> d!624986 d!625182))

(declare-fun d!625184 () Bool)

(declare-fun c!330825 () Bool)

(assert (=> d!625184 (= c!330825 ((_ is Nil!22306) lt!765594))))

(declare-fun e!1288833 () (InoxSet C!11004))

(assert (=> d!625184 (= (content!3314 lt!765594) e!1288833)))

(declare-fun b!2041357 () Bool)

(assert (=> b!2041357 (= e!1288833 ((as const (Array C!11004 Bool)) false))))

(declare-fun b!2041358 () Bool)

(assert (=> b!2041358 (= e!1288833 ((_ map or) (store ((as const (Array C!11004 Bool)) false) (h!27707 lt!765594) true) (content!3314 (t!191499 lt!765594))))))

(assert (= (and d!625184 c!330825) b!2041357))

(assert (= (and d!625184 (not c!330825)) b!2041358))

(declare-fun m!2485343 () Bool)

(assert (=> b!2041358 m!2485343))

(declare-fun m!2485345 () Bool)

(assert (=> b!2041358 m!2485345))

(assert (=> d!624986 d!625184))

(declare-fun d!625186 () Bool)

(assert (=> d!625186 (= (inv!29650 (xs!10388 (c!330712 acc!382))) (<= (size!17459 (innerList!7542 (xs!10388 (c!330712 acc!382)))) 2147483647))))

(declare-fun bs!421646 () Bool)

(assert (= bs!421646 d!625186))

(declare-fun m!2485347 () Bool)

(assert (=> bs!421646 m!2485347))

(assert (=> b!2040956 d!625186))

(declare-fun d!625188 () Bool)

(declare-fun c!330826 () Bool)

(assert (=> d!625188 (= c!330826 ((_ is Empty!7481) (c!330711 treated!60)))))

(declare-fun e!1288834 () List!22390)

(assert (=> d!625188 (= (list!9152 (c!330711 treated!60)) e!1288834)))

(declare-fun b!2041362 () Bool)

(declare-fun e!1288835 () List!22390)

(assert (=> b!2041362 (= e!1288835 (++!6061 (list!9152 (left!17758 (c!330711 treated!60))) (list!9152 (right!18088 (c!330711 treated!60)))))))

(declare-fun b!2041359 () Bool)

(assert (=> b!2041359 (= e!1288834 Nil!22306)))

(declare-fun b!2041360 () Bool)

(assert (=> b!2041360 (= e!1288834 e!1288835)))

(declare-fun c!330827 () Bool)

(assert (=> b!2041360 (= c!330827 ((_ is Leaf!10963) (c!330711 treated!60)))))

(declare-fun b!2041361 () Bool)

(assert (=> b!2041361 (= e!1288835 (list!9155 (xs!10387 (c!330711 treated!60))))))

(assert (= (and d!625188 c!330826) b!2041359))

(assert (= (and d!625188 (not c!330826)) b!2041360))

(assert (= (and b!2041360 c!330827) b!2041361))

(assert (= (and b!2041360 (not c!330827)) b!2041362))

(declare-fun m!2485349 () Bool)

(assert (=> b!2041362 m!2485349))

(declare-fun m!2485351 () Bool)

(assert (=> b!2041362 m!2485351))

(assert (=> b!2041362 m!2485349))

(assert (=> b!2041362 m!2485351))

(declare-fun m!2485353 () Bool)

(assert (=> b!2041362 m!2485353))

(assert (=> b!2041361 m!2485281))

(assert (=> d!624992 d!625188))

(declare-fun bs!421647 () Bool)

(declare-fun d!625190 () Bool)

(assert (= bs!421647 (and d!625190 d!625150)))

(declare-fun lambda!76667 () Int)

(assert (=> bs!421647 (= lambda!76667 lambda!76659)))

(declare-fun bs!421648 () Bool)

(assert (= bs!421648 (and d!625190 d!625088)))

(assert (=> bs!421648 (= lambda!76667 lambda!76651)))

(declare-fun bs!421649 () Bool)

(assert (= bs!421649 (and d!625190 d!625080)))

(assert (=> bs!421649 (= lambda!76667 lambda!76647)))

(declare-fun bs!421650 () Bool)

(assert (= bs!421650 (and d!625190 d!625170)))

(assert (=> bs!421650 (= lambda!76667 lambda!76664)))

(declare-fun bs!421651 () Bool)

(assert (= bs!421651 (and d!625190 d!625116)))

(assert (=> bs!421651 (= lambda!76667 lambda!76657)))

(declare-fun bs!421652 () Bool)

(assert (= bs!421652 (and d!625190 d!625104)))

(assert (=> bs!421652 (= lambda!76667 lambda!76655)))

(declare-fun bs!421653 () Bool)

(assert (= bs!421653 (and d!625190 d!625102)))

(assert (=> bs!421653 (= lambda!76667 lambda!76654)))

(declare-fun bs!421654 () Bool)

(assert (= bs!421654 (and d!625190 d!625154)))

(assert (=> bs!421654 (= lambda!76667 lambda!76660)))

(declare-fun bs!421655 () Bool)

(assert (= bs!421655 (and d!625190 d!625096)))

(assert (=> bs!421655 (= lambda!76667 lambda!76652)))

(declare-fun bs!421656 () Bool)

(assert (= bs!421656 (and d!625190 d!625172)))

(assert (=> bs!421656 (= lambda!76667 lambda!76665)))

(declare-fun bs!421657 () Bool)

(assert (= bs!421657 (and d!625190 d!625106)))

(assert (=> bs!421657 (= lambda!76667 lambda!76656)))

(declare-fun bs!421658 () Bool)

(assert (= bs!421658 (and d!625190 d!625146)))

(assert (=> bs!421658 (= lambda!76667 lambda!76658)))

(declare-fun bs!421659 () Bool)

(assert (= bs!421659 (and d!625190 d!625174)))

(assert (=> bs!421659 (= lambda!76667 lambda!76666)))

(declare-fun bs!421660 () Bool)

(assert (= bs!421660 (and d!625190 d!625100)))

(assert (=> bs!421660 (= lambda!76667 lambda!76653)))

(assert (=> d!625190 (= (inv!29648 setElem!11754) (forall!4762 (exprs!1499 setElem!11754) lambda!76667))))

(declare-fun bs!421661 () Bool)

(assert (= bs!421661 d!625190))

(declare-fun m!2485355 () Bool)

(assert (=> bs!421661 m!2485355))

(assert (=> setNonEmpty!11753 d!625190))

(declare-fun d!625192 () Bool)

(declare-fun c!330828 () Bool)

(assert (=> d!625192 (= c!330828 ((_ is Empty!7481) (c!330711 totalInput!418)))))

(declare-fun e!1288836 () List!22390)

(assert (=> d!625192 (= (list!9152 (c!330711 totalInput!418)) e!1288836)))

(declare-fun b!2041366 () Bool)

(declare-fun e!1288837 () List!22390)

(assert (=> b!2041366 (= e!1288837 (++!6061 (list!9152 (left!17758 (c!330711 totalInput!418))) (list!9152 (right!18088 (c!330711 totalInput!418)))))))

(declare-fun b!2041363 () Bool)

(assert (=> b!2041363 (= e!1288836 Nil!22306)))

(declare-fun b!2041364 () Bool)

(assert (=> b!2041364 (= e!1288836 e!1288837)))

(declare-fun c!330829 () Bool)

(assert (=> b!2041364 (= c!330829 ((_ is Leaf!10963) (c!330711 totalInput!418)))))

(declare-fun b!2041365 () Bool)

(assert (=> b!2041365 (= e!1288837 (list!9155 (xs!10387 (c!330711 totalInput!418))))))

(assert (= (and d!625192 c!330828) b!2041363))

(assert (= (and d!625192 (not c!330828)) b!2041364))

(assert (= (and b!2041364 c!330829) b!2041365))

(assert (= (and b!2041364 (not c!330829)) b!2041366))

(declare-fun m!2485357 () Bool)

(assert (=> b!2041366 m!2485357))

(declare-fun m!2485359 () Bool)

(assert (=> b!2041366 m!2485359))

(assert (=> b!2041366 m!2485357))

(assert (=> b!2041366 m!2485359))

(declare-fun m!2485361 () Bool)

(assert (=> b!2041366 m!2485361))

(declare-fun m!2485363 () Bool)

(assert (=> b!2041365 m!2485363))

(assert (=> d!624988 d!625192))

(declare-fun bs!421662 () Bool)

(declare-fun d!625194 () Bool)

(assert (= bs!421662 (and d!625194 d!625088)))

(declare-fun lambda!76668 () Int)

(assert (=> bs!421662 (= lambda!76668 lambda!76651)))

(declare-fun bs!421663 () Bool)

(assert (= bs!421663 (and d!625194 d!625080)))

(assert (=> bs!421663 (= lambda!76668 lambda!76647)))

(declare-fun bs!421664 () Bool)

(assert (= bs!421664 (and d!625194 d!625170)))

(assert (=> bs!421664 (= lambda!76668 lambda!76664)))

(declare-fun bs!421665 () Bool)

(assert (= bs!421665 (and d!625194 d!625116)))

(assert (=> bs!421665 (= lambda!76668 lambda!76657)))

(declare-fun bs!421666 () Bool)

(assert (= bs!421666 (and d!625194 d!625104)))

(assert (=> bs!421666 (= lambda!76668 lambda!76655)))

(declare-fun bs!421667 () Bool)

(assert (= bs!421667 (and d!625194 d!625102)))

(assert (=> bs!421667 (= lambda!76668 lambda!76654)))

(declare-fun bs!421668 () Bool)

(assert (= bs!421668 (and d!625194 d!625154)))

(assert (=> bs!421668 (= lambda!76668 lambda!76660)))

(declare-fun bs!421669 () Bool)

(assert (= bs!421669 (and d!625194 d!625096)))

(assert (=> bs!421669 (= lambda!76668 lambda!76652)))

(declare-fun bs!421670 () Bool)

(assert (= bs!421670 (and d!625194 d!625172)))

(assert (=> bs!421670 (= lambda!76668 lambda!76665)))

(declare-fun bs!421671 () Bool)

(assert (= bs!421671 (and d!625194 d!625106)))

(assert (=> bs!421671 (= lambda!76668 lambda!76656)))

(declare-fun bs!421672 () Bool)

(assert (= bs!421672 (and d!625194 d!625146)))

(assert (=> bs!421672 (= lambda!76668 lambda!76658)))

(declare-fun bs!421673 () Bool)

(assert (= bs!421673 (and d!625194 d!625190)))

(assert (=> bs!421673 (= lambda!76668 lambda!76667)))

(declare-fun bs!421674 () Bool)

(assert (= bs!421674 (and d!625194 d!625150)))

(assert (=> bs!421674 (= lambda!76668 lambda!76659)))

(declare-fun bs!421675 () Bool)

(assert (= bs!421675 (and d!625194 d!625174)))

(assert (=> bs!421675 (= lambda!76668 lambda!76666)))

(declare-fun bs!421676 () Bool)

(assert (= bs!421676 (and d!625194 d!625100)))

(assert (=> bs!421676 (= lambda!76668 lambda!76653)))

(assert (=> d!625194 (= (inv!29648 (_1!11955 (_1!11956 (h!27710 mapValue!9137)))) (forall!4762 (exprs!1499 (_1!11955 (_1!11956 (h!27710 mapValue!9137)))) lambda!76668))))

(declare-fun bs!421677 () Bool)

(assert (= bs!421677 d!625194))

(declare-fun m!2485365 () Bool)

(assert (=> bs!421677 m!2485365))

(assert (=> b!2040988 d!625194))

(declare-fun b!2041367 () Bool)

(declare-fun e!1288838 () List!22392)

(assert (=> b!2041367 (= e!1288838 Nil!22308)))

(declare-fun b!2041369 () Bool)

(declare-fun e!1288839 () List!22392)

(assert (=> b!2041369 (= e!1288839 (list!9154 (xs!10388 (c!330712 (_1!11954 lt!765596)))))))

(declare-fun d!625196 () Bool)

(declare-fun c!330830 () Bool)

(assert (=> d!625196 (= c!330830 ((_ is Empty!7482) (c!330712 (_1!11954 lt!765596))))))

(assert (=> d!625196 (= (list!9153 (c!330712 (_1!11954 lt!765596))) e!1288838)))

(declare-fun b!2041370 () Bool)

(assert (=> b!2041370 (= e!1288839 (++!6063 (list!9153 (left!17759 (c!330712 (_1!11954 lt!765596)))) (list!9153 (right!18089 (c!330712 (_1!11954 lt!765596))))))))

(declare-fun b!2041368 () Bool)

(assert (=> b!2041368 (= e!1288838 e!1288839)))

(declare-fun c!330831 () Bool)

(assert (=> b!2041368 (= c!330831 ((_ is Leaf!10964) (c!330712 (_1!11954 lt!765596))))))

(assert (= (and d!625196 c!330830) b!2041367))

(assert (= (and d!625196 (not c!330830)) b!2041368))

(assert (= (and b!2041368 c!330831) b!2041369))

(assert (= (and b!2041368 (not c!330831)) b!2041370))

(declare-fun m!2485367 () Bool)

(assert (=> b!2041369 m!2485367))

(declare-fun m!2485369 () Bool)

(assert (=> b!2041370 m!2485369))

(declare-fun m!2485371 () Bool)

(assert (=> b!2041370 m!2485371))

(assert (=> b!2041370 m!2485369))

(assert (=> b!2041370 m!2485371))

(declare-fun m!2485373 () Bool)

(assert (=> b!2041370 m!2485373))

(assert (=> d!625052 d!625196))

(declare-fun d!625198 () Bool)

(declare-fun c!330832 () Bool)

(assert (=> d!625198 (= c!330832 ((_ is Empty!7481) (c!330711 (_2!11954 lt!765587))))))

(declare-fun e!1288840 () List!22390)

(assert (=> d!625198 (= (list!9152 (c!330711 (_2!11954 lt!765587))) e!1288840)))

(declare-fun b!2041374 () Bool)

(declare-fun e!1288841 () List!22390)

(assert (=> b!2041374 (= e!1288841 (++!6061 (list!9152 (left!17758 (c!330711 (_2!11954 lt!765587)))) (list!9152 (right!18088 (c!330711 (_2!11954 lt!765587))))))))

(declare-fun b!2041371 () Bool)

(assert (=> b!2041371 (= e!1288840 Nil!22306)))

(declare-fun b!2041372 () Bool)

(assert (=> b!2041372 (= e!1288840 e!1288841)))

(declare-fun c!330833 () Bool)

(assert (=> b!2041372 (= c!330833 ((_ is Leaf!10963) (c!330711 (_2!11954 lt!765587))))))

(declare-fun b!2041373 () Bool)

(assert (=> b!2041373 (= e!1288841 (list!9155 (xs!10387 (c!330711 (_2!11954 lt!765587)))))))

(assert (= (and d!625198 c!330832) b!2041371))

(assert (= (and d!625198 (not c!330832)) b!2041372))

(assert (= (and b!2041372 c!330833) b!2041373))

(assert (= (and b!2041372 (not c!330833)) b!2041374))

(declare-fun m!2485375 () Bool)

(assert (=> b!2041374 m!2485375))

(declare-fun m!2485377 () Bool)

(assert (=> b!2041374 m!2485377))

(assert (=> b!2041374 m!2485375))

(assert (=> b!2041374 m!2485377))

(declare-fun m!2485379 () Bool)

(assert (=> b!2041374 m!2485379))

(declare-fun m!2485381 () Bool)

(assert (=> b!2041373 m!2485381))

(assert (=> d!625034 d!625198))

(declare-fun d!625200 () Bool)

(declare-fun res!894715 () Bool)

(declare-fun e!1288844 () Bool)

(assert (=> d!625200 (=> (not res!894715) (not e!1288844))))

(declare-fun valid!1577 (MutableMap!1890) Bool)

(assert (=> d!625200 (= res!894715 (valid!1577 (cache!2271 cacheUp!562)))))

(assert (=> d!625200 (= (validCacheMapUp!184 (cache!2271 cacheUp!562)) e!1288844)))

(declare-fun b!2041379 () Bool)

(declare-fun res!894716 () Bool)

(assert (=> b!2041379 (=> (not res!894716) (not e!1288844))))

(declare-fun invariantList!265 (List!22393) Bool)

(declare-datatypes ((ListMap!579 0))(
  ( (ListMap!580 (toList!1018 List!22393)) )
))
(declare-fun map!4679 (MutableMap!1890) ListMap!579)

(assert (=> b!2041379 (= res!894716 (invariantList!265 (toList!1018 (map!4679 (cache!2271 cacheUp!562)))))))

(declare-fun b!2041380 () Bool)

(declare-fun lambda!76671 () Int)

(declare-fun forall!4763 (List!22393 Int) Bool)

(assert (=> b!2041380 (= e!1288844 (forall!4763 (toList!1018 (map!4679 (cache!2271 cacheUp!562))) lambda!76671))))

(assert (= (and d!625200 res!894715) b!2041379))

(assert (= (and b!2041379 res!894716) b!2041380))

(declare-fun m!2485384 () Bool)

(assert (=> d!625200 m!2485384))

(declare-fun m!2485386 () Bool)

(assert (=> b!2041379 m!2485386))

(declare-fun m!2485388 () Bool)

(assert (=> b!2041379 m!2485388))

(assert (=> b!2041380 m!2485386))

(declare-fun m!2485390 () Bool)

(assert (=> b!2041380 m!2485390))

(assert (=> b!2040830 d!625200))

(declare-fun d!625202 () Bool)

(declare-fun e!1288847 () Bool)

(assert (=> d!625202 e!1288847))

(declare-fun res!894719 () Bool)

(assert (=> d!625202 (=> (not res!894719) (not e!1288847))))

(declare-fun prepend!908 (Conc!7482 Token!7556) Conc!7482)

(assert (=> d!625202 (= res!894719 (isBalanced!2355 (prepend!908 (c!330712 (_1!11954 lt!765625)) (_1!11957 (v!27041 lt!765626)))))))

(declare-fun lt!765703 () BalanceConc!14726)

(assert (=> d!625202 (= lt!765703 (BalanceConc!14727 (prepend!908 (c!330712 (_1!11954 lt!765625)) (_1!11957 (v!27041 lt!765626)))))))

(assert (=> d!625202 (= (prepend!907 (_1!11954 lt!765625) (_1!11957 (v!27041 lt!765626))) lt!765703)))

(declare-fun b!2041383 () Bool)

(assert (=> b!2041383 (= e!1288847 (= (list!9150 lt!765703) (Cons!22308 (_1!11957 (v!27041 lt!765626)) (list!9150 (_1!11954 lt!765625)))))))

(assert (= (and d!625202 res!894719) b!2041383))

(declare-fun m!2485392 () Bool)

(assert (=> d!625202 m!2485392))

(assert (=> d!625202 m!2485392))

(declare-fun m!2485394 () Bool)

(assert (=> d!625202 m!2485394))

(declare-fun m!2485396 () Bool)

(assert (=> b!2041383 m!2485396))

(declare-fun m!2485398 () Bool)

(assert (=> b!2041383 m!2485398))

(assert (=> b!2040906 d!625202))

(declare-fun b!2041384 () Bool)

(declare-fun e!1288849 () Bool)

(declare-fun lt!765706 () tuple2!20962)

(assert (=> b!2041384 (= e!1288849 (= (list!9151 (_2!11954 lt!765706)) (list!9151 (_2!11957 (v!27041 lt!765626)))))))

(declare-fun d!625204 () Bool)

(declare-fun e!1288851 () Bool)

(assert (=> d!625204 e!1288851))

(declare-fun res!894721 () Bool)

(assert (=> d!625204 (=> (not res!894721) (not e!1288851))))

(assert (=> d!625204 (= res!894721 e!1288849)))

(declare-fun c!330835 () Bool)

(assert (=> d!625204 (= c!330835 (> (size!17456 (_1!11954 lt!765706)) 0))))

(declare-fun e!1288850 () tuple2!20962)

(assert (=> d!625204 (= lt!765706 e!1288850)))

(declare-fun c!330836 () Bool)

(declare-fun lt!765705 () Option!4687)

(assert (=> d!625204 (= c!330836 ((_ is Some!4686) lt!765705))))

(assert (=> d!625204 (= lt!765705 (maxPrefixZipperSequence!786 thiss!12889 rules!1563 (_2!11957 (v!27041 lt!765626))))))

(assert (=> d!625204 (= (lexRec!421 thiss!12889 rules!1563 (_2!11957 (v!27041 lt!765626))) lt!765706)))

(declare-fun b!2041385 () Bool)

(declare-fun e!1288848 () Bool)

(assert (=> b!2041385 (= e!1288849 e!1288848)))

(declare-fun res!894720 () Bool)

(assert (=> b!2041385 (= res!894720 (< (size!17457 (_2!11954 lt!765706)) (size!17457 (_2!11957 (v!27041 lt!765626)))))))

(assert (=> b!2041385 (=> (not res!894720) (not e!1288848))))

(declare-fun b!2041386 () Bool)

(declare-fun res!894722 () Bool)

(assert (=> b!2041386 (=> (not res!894722) (not e!1288851))))

(assert (=> b!2041386 (= res!894722 (= (list!9150 (_1!11954 lt!765706)) (_1!11958 (lexList!986 thiss!12889 rules!1563 (list!9151 (_2!11957 (v!27041 lt!765626)))))))))

(declare-fun b!2041387 () Bool)

(assert (=> b!2041387 (= e!1288851 (= (list!9151 (_2!11954 lt!765706)) (_2!11958 (lexList!986 thiss!12889 rules!1563 (list!9151 (_2!11957 (v!27041 lt!765626)))))))))

(declare-fun b!2041388 () Bool)

(assert (=> b!2041388 (= e!1288850 (tuple2!20963 (BalanceConc!14727 Empty!7482) (_2!11957 (v!27041 lt!765626))))))

(declare-fun b!2041389 () Bool)

(declare-fun lt!765704 () tuple2!20962)

(assert (=> b!2041389 (= e!1288850 (tuple2!20963 (prepend!907 (_1!11954 lt!765704) (_1!11957 (v!27041 lt!765705))) (_2!11954 lt!765704)))))

(assert (=> b!2041389 (= lt!765704 (lexRec!421 thiss!12889 rules!1563 (_2!11957 (v!27041 lt!765705))))))

(declare-fun b!2041390 () Bool)

(assert (=> b!2041390 (= e!1288848 (not (isEmpty!13947 (_1!11954 lt!765706))))))

(assert (= (and d!625204 c!330836) b!2041389))

(assert (= (and d!625204 (not c!330836)) b!2041388))

(assert (= (and d!625204 c!330835) b!2041385))

(assert (= (and d!625204 (not c!330835)) b!2041384))

(assert (= (and b!2041385 res!894720) b!2041390))

(assert (= (and d!625204 res!894721) b!2041386))

(assert (= (and b!2041386 res!894722) b!2041387))

(declare-fun m!2485400 () Bool)

(assert (=> b!2041385 m!2485400))

(declare-fun m!2485402 () Bool)

(assert (=> b!2041385 m!2485402))

(declare-fun m!2485404 () Bool)

(assert (=> b!2041387 m!2485404))

(declare-fun m!2485406 () Bool)

(assert (=> b!2041387 m!2485406))

(assert (=> b!2041387 m!2485406))

(declare-fun m!2485408 () Bool)

(assert (=> b!2041387 m!2485408))

(declare-fun m!2485410 () Bool)

(assert (=> b!2041389 m!2485410))

(declare-fun m!2485412 () Bool)

(assert (=> b!2041389 m!2485412))

(declare-fun m!2485414 () Bool)

(assert (=> b!2041386 m!2485414))

(assert (=> b!2041386 m!2485406))

(assert (=> b!2041386 m!2485406))

(assert (=> b!2041386 m!2485408))

(declare-fun m!2485416 () Bool)

(assert (=> b!2041390 m!2485416))

(declare-fun m!2485418 () Bool)

(assert (=> d!625204 m!2485418))

(declare-fun m!2485420 () Bool)

(assert (=> d!625204 m!2485420))

(assert (=> b!2041384 m!2485404))

(assert (=> b!2041384 m!2485406))

(assert (=> b!2040906 d!625204))

(assert (=> b!2040845 d!625144))

(assert (=> b!2040845 d!625094))

(assert (=> b!2040793 d!624994))

(declare-fun d!625206 () Bool)

(declare-fun e!1288853 () Bool)

(assert (=> d!625206 e!1288853))

(declare-fun res!894723 () Bool)

(assert (=> d!625206 (=> (not res!894723) (not e!1288853))))

(declare-fun lt!765707 () List!22390)

(assert (=> d!625206 (= res!894723 (= (content!3314 lt!765707) ((_ map or) (content!3314 (t!191499 lt!765591)) (content!3314 lt!765594))))))

(declare-fun e!1288852 () List!22390)

(assert (=> d!625206 (= lt!765707 e!1288852)))

(declare-fun c!330837 () Bool)

(assert (=> d!625206 (= c!330837 ((_ is Nil!22306) (t!191499 lt!765591)))))

(assert (=> d!625206 (= (++!6061 (t!191499 lt!765591) lt!765594) lt!765707)))

(declare-fun b!2041394 () Bool)

(assert (=> b!2041394 (= e!1288853 (or (not (= lt!765594 Nil!22306)) (= lt!765707 (t!191499 lt!765591))))))

(declare-fun b!2041393 () Bool)

(declare-fun res!894724 () Bool)

(assert (=> b!2041393 (=> (not res!894724) (not e!1288853))))

(assert (=> b!2041393 (= res!894724 (= (size!17455 lt!765707) (+ (size!17455 (t!191499 lt!765591)) (size!17455 lt!765594))))))

(declare-fun b!2041392 () Bool)

(assert (=> b!2041392 (= e!1288852 (Cons!22306 (h!27707 (t!191499 lt!765591)) (++!6061 (t!191499 (t!191499 lt!765591)) lt!765594)))))

(declare-fun b!2041391 () Bool)

(assert (=> b!2041391 (= e!1288852 lt!765594)))

(assert (= (and d!625206 c!330837) b!2041391))

(assert (= (and d!625206 (not c!330837)) b!2041392))

(assert (= (and d!625206 res!894723) b!2041393))

(assert (= (and b!2041393 res!894724) b!2041394))

(declare-fun m!2485422 () Bool)

(assert (=> d!625206 m!2485422))

(assert (=> d!625206 m!2485341))

(assert (=> d!625206 m!2484785))

(declare-fun m!2485424 () Bool)

(assert (=> b!2041393 m!2485424))

(assert (=> b!2041393 m!2485205))

(assert (=> b!2041393 m!2484791))

(declare-fun m!2485426 () Bool)

(assert (=> b!2041392 m!2485426))

(assert (=> b!2040819 d!625206))

(declare-fun d!625208 () Bool)

(declare-fun lt!765710 () Int)

(assert (=> d!625208 (= lt!765710 (size!17455 (list!9151 (_2!11954 lt!765627))))))

(assert (=> d!625208 (= lt!765710 (size!17458 (c!330711 (_2!11954 lt!765627))))))

(assert (=> d!625208 (= (size!17457 (_2!11954 lt!765627)) lt!765710)))

(declare-fun bs!421678 () Bool)

(assert (= bs!421678 d!625208))

(assert (=> bs!421678 m!2484929))

(assert (=> bs!421678 m!2484929))

(declare-fun m!2485428 () Bool)

(assert (=> bs!421678 m!2485428))

(declare-fun m!2485430 () Bool)

(assert (=> bs!421678 m!2485430))

(assert (=> b!2040902 d!625208))

(declare-fun d!625210 () Bool)

(declare-fun lt!765711 () Int)

(assert (=> d!625210 (= lt!765711 (size!17455 (list!9151 treated!60)))))

(assert (=> d!625210 (= lt!765711 (size!17458 (c!330711 treated!60)))))

(assert (=> d!625210 (= (size!17457 treated!60) lt!765711)))

(declare-fun bs!421679 () Bool)

(assert (= bs!421679 d!625210))

(assert (=> bs!421679 m!2484747))

(assert (=> bs!421679 m!2484747))

(assert (=> bs!421679 m!2485053))

(declare-fun m!2485432 () Bool)

(assert (=> bs!421679 m!2485432))

(assert (=> b!2040902 d!625210))

(declare-fun b!2041395 () Bool)

(declare-fun res!894729 () Bool)

(declare-fun e!1288855 () Bool)

(assert (=> b!2041395 (=> (not res!894729) (not e!1288855))))

(assert (=> b!2041395 (= res!894729 (isBalanced!2355 (left!17759 (c!330712 acc!382))))))

(declare-fun d!625212 () Bool)

(declare-fun res!894728 () Bool)

(declare-fun e!1288854 () Bool)

(assert (=> d!625212 (=> res!894728 e!1288854)))

(assert (=> d!625212 (= res!894728 (not ((_ is Node!7482) (c!330712 acc!382))))))

(assert (=> d!625212 (= (isBalanced!2355 (c!330712 acc!382)) e!1288854)))

(declare-fun b!2041396 () Bool)

(assert (=> b!2041396 (= e!1288854 e!1288855)))

(declare-fun res!894730 () Bool)

(assert (=> b!2041396 (=> (not res!894730) (not e!1288855))))

(assert (=> b!2041396 (= res!894730 (<= (- 1) (- (height!1174 (left!17759 (c!330712 acc!382))) (height!1174 (right!18089 (c!330712 acc!382))))))))

(declare-fun b!2041397 () Bool)

(declare-fun res!894727 () Bool)

(assert (=> b!2041397 (=> (not res!894727) (not e!1288855))))

(assert (=> b!2041397 (= res!894727 (isBalanced!2355 (right!18089 (c!330712 acc!382))))))

(declare-fun b!2041398 () Bool)

(declare-fun res!894725 () Bool)

(assert (=> b!2041398 (=> (not res!894725) (not e!1288855))))

(assert (=> b!2041398 (= res!894725 (not (isEmpty!13950 (left!17759 (c!330712 acc!382)))))))

(declare-fun b!2041399 () Bool)

(assert (=> b!2041399 (= e!1288855 (not (isEmpty!13950 (right!18089 (c!330712 acc!382)))))))

(declare-fun b!2041400 () Bool)

(declare-fun res!894726 () Bool)

(assert (=> b!2041400 (=> (not res!894726) (not e!1288855))))

(assert (=> b!2041400 (= res!894726 (<= (- (height!1174 (left!17759 (c!330712 acc!382))) (height!1174 (right!18089 (c!330712 acc!382)))) 1))))

(assert (= (and d!625212 (not res!894728)) b!2041396))

(assert (= (and b!2041396 res!894730) b!2041400))

(assert (= (and b!2041400 res!894726) b!2041395))

(assert (= (and b!2041395 res!894729) b!2041397))

(assert (= (and b!2041397 res!894727) b!2041398))

(assert (= (and b!2041398 res!894725) b!2041399))

(assert (=> b!2041396 m!2485215))

(assert (=> b!2041396 m!2485217))

(declare-fun m!2485434 () Bool)

(assert (=> b!2041399 m!2485434))

(declare-fun m!2485436 () Bool)

(assert (=> b!2041395 m!2485436))

(assert (=> b!2041400 m!2485215))

(assert (=> b!2041400 m!2485217))

(declare-fun m!2485438 () Bool)

(assert (=> b!2041397 m!2485438))

(declare-fun m!2485440 () Bool)

(assert (=> b!2041398 m!2485440))

(assert (=> d!625002 d!625212))

(declare-fun d!625214 () Bool)

(declare-fun lt!765712 () Int)

(assert (=> d!625214 (= lt!765712 (size!17455 (list!9151 (_2!11954 lt!765618))))))

(assert (=> d!625214 (= lt!765712 (size!17458 (c!330711 (_2!11954 lt!765618))))))

(assert (=> d!625214 (= (size!17457 (_2!11954 lt!765618)) lt!765712)))

(declare-fun bs!421680 () Bool)

(assert (= bs!421680 d!625214))

(assert (=> bs!421680 m!2484861))

(assert (=> bs!421680 m!2484861))

(declare-fun m!2485442 () Bool)

(assert (=> bs!421680 m!2485442))

(declare-fun m!2485444 () Bool)

(assert (=> bs!421680 m!2485444))

(assert (=> b!2040876 d!625214))

(declare-fun d!625216 () Bool)

(declare-fun lt!765713 () Int)

(assert (=> d!625216 (= lt!765713 (size!17455 (list!9151 totalInput!418)))))

(assert (=> d!625216 (= lt!765713 (size!17458 (c!330711 totalInput!418)))))

(assert (=> d!625216 (= (size!17457 totalInput!418) lt!765713)))

(declare-fun bs!421681 () Bool)

(assert (= bs!421681 d!625216))

(assert (=> bs!421681 m!2484743))

(assert (=> bs!421681 m!2484743))

(assert (=> bs!421681 m!2485099))

(declare-fun m!2485446 () Bool)

(assert (=> bs!421681 m!2485446))

(assert (=> b!2040876 d!625216))

(declare-fun d!625218 () Bool)

(assert (=> d!625218 (= (list!9150 (_1!11954 lt!765621)) (list!9153 (c!330712 (_1!11954 lt!765621))))))

(declare-fun bs!421682 () Bool)

(assert (= bs!421682 d!625218))

(declare-fun m!2485448 () Bool)

(assert (=> bs!421682 m!2485448))

(assert (=> b!2040884 d!625218))

(assert (=> b!2040884 d!625152))

(assert (=> b!2040884 d!624990))

(assert (=> b!2040797 d!625040))

(declare-fun d!625220 () Bool)

(declare-fun res!894731 () Bool)

(declare-fun e!1288856 () Bool)

(assert (=> d!625220 (=> (not res!894731) (not e!1288856))))

(assert (=> d!625220 (= res!894731 (<= (size!17455 (list!9155 (xs!10387 (c!330711 totalInput!418)))) 512))))

(assert (=> d!625220 (= (inv!29645 (c!330711 totalInput!418)) e!1288856)))

(declare-fun b!2041401 () Bool)

(declare-fun res!894732 () Bool)

(assert (=> b!2041401 (=> (not res!894732) (not e!1288856))))

(assert (=> b!2041401 (= res!894732 (= (csize!15193 (c!330711 totalInput!418)) (size!17455 (list!9155 (xs!10387 (c!330711 totalInput!418))))))))

(declare-fun b!2041402 () Bool)

(assert (=> b!2041402 (= e!1288856 (and (> (csize!15193 (c!330711 totalInput!418)) 0) (<= (csize!15193 (c!330711 totalInput!418)) 512)))))

(assert (= (and d!625220 res!894731) b!2041401))

(assert (= (and b!2041401 res!894732) b!2041402))

(assert (=> d!625220 m!2485363))

(assert (=> d!625220 m!2485363))

(declare-fun m!2485450 () Bool)

(assert (=> d!625220 m!2485450))

(assert (=> b!2041401 m!2485363))

(assert (=> b!2041401 m!2485363))

(assert (=> b!2041401 m!2485450))

(assert (=> b!2040809 d!625220))

(declare-fun d!625222 () Bool)

(assert (=> d!625222 (= (list!9150 lt!765624) (list!9153 (c!330712 lt!765624)))))

(declare-fun bs!421683 () Bool)

(assert (= bs!421683 d!625222))

(declare-fun m!2485452 () Bool)

(assert (=> bs!421683 m!2485452))

(assert (=> b!2040900 d!625222))

(declare-fun d!625224 () Bool)

(declare-fun e!1288862 () Bool)

(assert (=> d!625224 e!1288862))

(declare-fun res!894738 () Bool)

(assert (=> d!625224 (=> (not res!894738) (not e!1288862))))

(declare-fun lt!765716 () List!22392)

(declare-fun content!3315 (List!22392) (InoxSet Token!7556))

(assert (=> d!625224 (= res!894738 (= (content!3315 lt!765716) ((_ map or) (content!3315 (list!9150 acc!382)) (content!3315 (list!9150 (_1!11954 lt!765587))))))))

(declare-fun e!1288861 () List!22392)

(assert (=> d!625224 (= lt!765716 e!1288861)))

(declare-fun c!330840 () Bool)

(assert (=> d!625224 (= c!330840 ((_ is Nil!22308) (list!9150 acc!382)))))

(assert (=> d!625224 (= (++!6063 (list!9150 acc!382) (list!9150 (_1!11954 lt!765587))) lt!765716)))

(declare-fun b!2041411 () Bool)

(assert (=> b!2041411 (= e!1288861 (list!9150 (_1!11954 lt!765587)))))

(declare-fun b!2041412 () Bool)

(assert (=> b!2041412 (= e!1288861 (Cons!22308 (h!27709 (list!9150 acc!382)) (++!6063 (t!191501 (list!9150 acc!382)) (list!9150 (_1!11954 lt!765587)))))))

(declare-fun b!2041413 () Bool)

(declare-fun res!894737 () Bool)

(assert (=> b!2041413 (=> (not res!894737) (not e!1288862))))

(assert (=> b!2041413 (= res!894737 (= (size!17459 lt!765716) (+ (size!17459 (list!9150 acc!382)) (size!17459 (list!9150 (_1!11954 lt!765587))))))))

(declare-fun b!2041414 () Bool)

(assert (=> b!2041414 (= e!1288862 (or (not (= (list!9150 (_1!11954 lt!765587)) Nil!22308)) (= lt!765716 (list!9150 acc!382))))))

(assert (= (and d!625224 c!330840) b!2041411))

(assert (= (and d!625224 (not c!330840)) b!2041412))

(assert (= (and d!625224 res!894738) b!2041413))

(assert (= (and b!2041413 res!894737) b!2041414))

(declare-fun m!2485454 () Bool)

(assert (=> d!625224 m!2485454))

(assert (=> d!625224 m!2484709))

(declare-fun m!2485456 () Bool)

(assert (=> d!625224 m!2485456))

(assert (=> d!625224 m!2484911))

(declare-fun m!2485458 () Bool)

(assert (=> d!625224 m!2485458))

(assert (=> b!2041412 m!2484911))

(declare-fun m!2485460 () Bool)

(assert (=> b!2041412 m!2485460))

(declare-fun m!2485462 () Bool)

(assert (=> b!2041413 m!2485462))

(assert (=> b!2041413 m!2484709))

(declare-fun m!2485464 () Bool)

(assert (=> b!2041413 m!2485464))

(assert (=> b!2041413 m!2484911))

(declare-fun m!2485466 () Bool)

(assert (=> b!2041413 m!2485466))

(assert (=> b!2040900 d!625224))

(assert (=> b!2040900 d!625054))

(declare-fun d!625226 () Bool)

(assert (=> d!625226 (= (list!9150 (_1!11954 lt!765587)) (list!9153 (c!330712 (_1!11954 lt!765587))))))

(declare-fun bs!421684 () Bool)

(assert (= bs!421684 d!625226))

(assert (=> bs!421684 m!2485081))

(assert (=> b!2040900 d!625226))

(declare-fun bs!421685 () Bool)

(declare-fun d!625228 () Bool)

(assert (= bs!421685 (and d!625228 d!625088)))

(declare-fun lambda!76672 () Int)

(assert (=> bs!421685 (= lambda!76672 lambda!76651)))

(declare-fun bs!421686 () Bool)

(assert (= bs!421686 (and d!625228 d!625080)))

(assert (=> bs!421686 (= lambda!76672 lambda!76647)))

(declare-fun bs!421687 () Bool)

(assert (= bs!421687 (and d!625228 d!625170)))

(assert (=> bs!421687 (= lambda!76672 lambda!76664)))

(declare-fun bs!421688 () Bool)

(assert (= bs!421688 (and d!625228 d!625116)))

(assert (=> bs!421688 (= lambda!76672 lambda!76657)))

(declare-fun bs!421689 () Bool)

(assert (= bs!421689 (and d!625228 d!625104)))

(assert (=> bs!421689 (= lambda!76672 lambda!76655)))

(declare-fun bs!421690 () Bool)

(assert (= bs!421690 (and d!625228 d!625102)))

(assert (=> bs!421690 (= lambda!76672 lambda!76654)))

(declare-fun bs!421691 () Bool)

(assert (= bs!421691 (and d!625228 d!625154)))

(assert (=> bs!421691 (= lambda!76672 lambda!76660)))

(declare-fun bs!421692 () Bool)

(assert (= bs!421692 (and d!625228 d!625096)))

(assert (=> bs!421692 (= lambda!76672 lambda!76652)))

(declare-fun bs!421693 () Bool)

(assert (= bs!421693 (and d!625228 d!625194)))

(assert (=> bs!421693 (= lambda!76672 lambda!76668)))

(declare-fun bs!421694 () Bool)

(assert (= bs!421694 (and d!625228 d!625172)))

(assert (=> bs!421694 (= lambda!76672 lambda!76665)))

(declare-fun bs!421695 () Bool)

(assert (= bs!421695 (and d!625228 d!625106)))

(assert (=> bs!421695 (= lambda!76672 lambda!76656)))

(declare-fun bs!421696 () Bool)

(assert (= bs!421696 (and d!625228 d!625146)))

(assert (=> bs!421696 (= lambda!76672 lambda!76658)))

(declare-fun bs!421697 () Bool)

(assert (= bs!421697 (and d!625228 d!625190)))

(assert (=> bs!421697 (= lambda!76672 lambda!76667)))

(declare-fun bs!421698 () Bool)

(assert (= bs!421698 (and d!625228 d!625150)))

(assert (=> bs!421698 (= lambda!76672 lambda!76659)))

(declare-fun bs!421699 () Bool)

(assert (= bs!421699 (and d!625228 d!625174)))

(assert (=> bs!421699 (= lambda!76672 lambda!76666)))

(declare-fun bs!421700 () Bool)

(assert (= bs!421700 (and d!625228 d!625100)))

(assert (=> bs!421700 (= lambda!76672 lambda!76653)))

(assert (=> d!625228 (= (inv!29648 setElem!11739) (forall!4762 (exprs!1499 setElem!11739) lambda!76672))))

(declare-fun bs!421701 () Bool)

(assert (= bs!421701 d!625228))

(declare-fun m!2485468 () Bool)

(assert (=> bs!421701 m!2485468))

(assert (=> setNonEmpty!11739 d!625228))

(declare-fun bs!421702 () Bool)

(declare-fun d!625230 () Bool)

(assert (= bs!421702 (and d!625230 d!625088)))

(declare-fun lambda!76673 () Int)

(assert (=> bs!421702 (= lambda!76673 lambda!76651)))

(declare-fun bs!421703 () Bool)

(assert (= bs!421703 (and d!625230 d!625080)))

(assert (=> bs!421703 (= lambda!76673 lambda!76647)))

(declare-fun bs!421704 () Bool)

(assert (= bs!421704 (and d!625230 d!625170)))

(assert (=> bs!421704 (= lambda!76673 lambda!76664)))

(declare-fun bs!421705 () Bool)

(assert (= bs!421705 (and d!625230 d!625116)))

(assert (=> bs!421705 (= lambda!76673 lambda!76657)))

(declare-fun bs!421706 () Bool)

(assert (= bs!421706 (and d!625230 d!625104)))

(assert (=> bs!421706 (= lambda!76673 lambda!76655)))

(declare-fun bs!421707 () Bool)

(assert (= bs!421707 (and d!625230 d!625102)))

(assert (=> bs!421707 (= lambda!76673 lambda!76654)))

(declare-fun bs!421708 () Bool)

(assert (= bs!421708 (and d!625230 d!625154)))

(assert (=> bs!421708 (= lambda!76673 lambda!76660)))

(declare-fun bs!421709 () Bool)

(assert (= bs!421709 (and d!625230 d!625096)))

(assert (=> bs!421709 (= lambda!76673 lambda!76652)))

(declare-fun bs!421710 () Bool)

(assert (= bs!421710 (and d!625230 d!625194)))

(assert (=> bs!421710 (= lambda!76673 lambda!76668)))

(declare-fun bs!421711 () Bool)

(assert (= bs!421711 (and d!625230 d!625172)))

(assert (=> bs!421711 (= lambda!76673 lambda!76665)))

(declare-fun bs!421712 () Bool)

(assert (= bs!421712 (and d!625230 d!625106)))

(assert (=> bs!421712 (= lambda!76673 lambda!76656)))

(declare-fun bs!421713 () Bool)

(assert (= bs!421713 (and d!625230 d!625146)))

(assert (=> bs!421713 (= lambda!76673 lambda!76658)))

(declare-fun bs!421714 () Bool)

(assert (= bs!421714 (and d!625230 d!625228)))

(assert (=> bs!421714 (= lambda!76673 lambda!76672)))

(declare-fun bs!421715 () Bool)

(assert (= bs!421715 (and d!625230 d!625190)))

(assert (=> bs!421715 (= lambda!76673 lambda!76667)))

(declare-fun bs!421716 () Bool)

(assert (= bs!421716 (and d!625230 d!625150)))

(assert (=> bs!421716 (= lambda!76673 lambda!76659)))

(declare-fun bs!421717 () Bool)

(assert (= bs!421717 (and d!625230 d!625174)))

(assert (=> bs!421717 (= lambda!76673 lambda!76666)))

(declare-fun bs!421718 () Bool)

(assert (= bs!421718 (and d!625230 d!625100)))

(assert (=> bs!421718 (= lambda!76673 lambda!76653)))

(assert (=> d!625230 (= (inv!29648 setElem!11740) (forall!4762 (exprs!1499 setElem!11740) lambda!76673))))

(declare-fun bs!421719 () Bool)

(assert (= bs!421719 d!625230))

(declare-fun m!2485470 () Bool)

(assert (=> bs!421719 m!2485470))

(assert (=> setNonEmpty!11740 d!625230))

(declare-fun b!2041415 () Bool)

(declare-fun e!1288863 () List!22392)

(assert (=> b!2041415 (= e!1288863 Nil!22308)))

(declare-fun b!2041417 () Bool)

(declare-fun e!1288864 () List!22392)

(assert (=> b!2041417 (= e!1288864 (list!9154 (xs!10388 (c!330712 (_1!11954 lt!765590)))))))

(declare-fun d!625232 () Bool)

(declare-fun c!330841 () Bool)

(assert (=> d!625232 (= c!330841 ((_ is Empty!7482) (c!330712 (_1!11954 lt!765590))))))

(assert (=> d!625232 (= (list!9153 (c!330712 (_1!11954 lt!765590))) e!1288863)))

(declare-fun b!2041418 () Bool)

(assert (=> b!2041418 (= e!1288864 (++!6063 (list!9153 (left!17759 (c!330712 (_1!11954 lt!765590)))) (list!9153 (right!18089 (c!330712 (_1!11954 lt!765590))))))))

(declare-fun b!2041416 () Bool)

(assert (=> b!2041416 (= e!1288863 e!1288864)))

(declare-fun c!330842 () Bool)

(assert (=> b!2041416 (= c!330842 ((_ is Leaf!10964) (c!330712 (_1!11954 lt!765590))))))

(assert (= (and d!625232 c!330841) b!2041415))

(assert (= (and d!625232 (not c!330841)) b!2041416))

(assert (= (and b!2041416 c!330842) b!2041417))

(assert (= (and b!2041416 (not c!330842)) b!2041418))

(declare-fun m!2485472 () Bool)

(assert (=> b!2041417 m!2485472))

(declare-fun m!2485474 () Bool)

(assert (=> b!2041418 m!2485474))

(declare-fun m!2485476 () Bool)

(assert (=> b!2041418 m!2485476))

(assert (=> b!2041418 m!2485474))

(assert (=> b!2041418 m!2485476))

(declare-fun m!2485478 () Bool)

(assert (=> b!2041418 m!2485478))

(assert (=> d!625050 d!625232))

(declare-fun bs!421720 () Bool)

(declare-fun d!625234 () Bool)

(assert (= bs!421720 (and d!625234 d!625088)))

(declare-fun lambda!76674 () Int)

(assert (=> bs!421720 (= lambda!76674 lambda!76651)))

(declare-fun bs!421721 () Bool)

(assert (= bs!421721 (and d!625234 d!625230)))

(assert (=> bs!421721 (= lambda!76674 lambda!76673)))

(declare-fun bs!421722 () Bool)

(assert (= bs!421722 (and d!625234 d!625080)))

(assert (=> bs!421722 (= lambda!76674 lambda!76647)))

(declare-fun bs!421723 () Bool)

(assert (= bs!421723 (and d!625234 d!625170)))

(assert (=> bs!421723 (= lambda!76674 lambda!76664)))

(declare-fun bs!421724 () Bool)

(assert (= bs!421724 (and d!625234 d!625116)))

(assert (=> bs!421724 (= lambda!76674 lambda!76657)))

(declare-fun bs!421725 () Bool)

(assert (= bs!421725 (and d!625234 d!625104)))

(assert (=> bs!421725 (= lambda!76674 lambda!76655)))

(declare-fun bs!421726 () Bool)

(assert (= bs!421726 (and d!625234 d!625102)))

(assert (=> bs!421726 (= lambda!76674 lambda!76654)))

(declare-fun bs!421727 () Bool)

(assert (= bs!421727 (and d!625234 d!625154)))

(assert (=> bs!421727 (= lambda!76674 lambda!76660)))

(declare-fun bs!421728 () Bool)

(assert (= bs!421728 (and d!625234 d!625096)))

(assert (=> bs!421728 (= lambda!76674 lambda!76652)))

(declare-fun bs!421729 () Bool)

(assert (= bs!421729 (and d!625234 d!625194)))

(assert (=> bs!421729 (= lambda!76674 lambda!76668)))

(declare-fun bs!421730 () Bool)

(assert (= bs!421730 (and d!625234 d!625172)))

(assert (=> bs!421730 (= lambda!76674 lambda!76665)))

(declare-fun bs!421731 () Bool)

(assert (= bs!421731 (and d!625234 d!625106)))

(assert (=> bs!421731 (= lambda!76674 lambda!76656)))

(declare-fun bs!421732 () Bool)

(assert (= bs!421732 (and d!625234 d!625146)))

(assert (=> bs!421732 (= lambda!76674 lambda!76658)))

(declare-fun bs!421733 () Bool)

(assert (= bs!421733 (and d!625234 d!625228)))

(assert (=> bs!421733 (= lambda!76674 lambda!76672)))

(declare-fun bs!421734 () Bool)

(assert (= bs!421734 (and d!625234 d!625190)))

(assert (=> bs!421734 (= lambda!76674 lambda!76667)))

(declare-fun bs!421735 () Bool)

(assert (= bs!421735 (and d!625234 d!625150)))

(assert (=> bs!421735 (= lambda!76674 lambda!76659)))

(declare-fun bs!421736 () Bool)

(assert (= bs!421736 (and d!625234 d!625174)))

(assert (=> bs!421736 (= lambda!76674 lambda!76666)))

(declare-fun bs!421737 () Bool)

(assert (= bs!421737 (and d!625234 d!625100)))

(assert (=> bs!421737 (= lambda!76674 lambda!76653)))

(assert (=> d!625234 (= (inv!29648 (_2!11952 (_1!11953 (h!27705 mapValue!9136)))) (forall!4762 (exprs!1499 (_2!11952 (_1!11953 (h!27705 mapValue!9136)))) lambda!76674))))

(declare-fun bs!421738 () Bool)

(assert (= bs!421738 d!625234))

(declare-fun m!2485480 () Bool)

(assert (=> bs!421738 m!2485480))

(assert (=> b!2041040 d!625234))

(declare-fun d!625236 () Bool)

(declare-fun lt!765717 () Bool)

(assert (=> d!625236 (= lt!765717 (isEmpty!13948 (list!9150 (_1!11954 lt!765618))))))

(assert (=> d!625236 (= lt!765717 (isEmpty!13950 (c!330712 (_1!11954 lt!765618))))))

(assert (=> d!625236 (= (isEmpty!13947 (_1!11954 lt!765618)) lt!765717)))

(declare-fun bs!421739 () Bool)

(assert (= bs!421739 d!625236))

(assert (=> bs!421739 m!2484869))

(assert (=> bs!421739 m!2484869))

(declare-fun m!2485482 () Bool)

(assert (=> bs!421739 m!2485482))

(declare-fun m!2485484 () Bool)

(assert (=> bs!421739 m!2485484))

(assert (=> b!2040881 d!625236))

(assert (=> b!2040784 d!625010))

(declare-fun d!625238 () Bool)

(declare-fun res!894745 () Bool)

(declare-fun e!1288869 () Bool)

(assert (=> d!625238 (=> (not res!894745) (not e!1288869))))

(declare-fun valid!1578 (MutableMap!1889) Bool)

(assert (=> d!625238 (= res!894745 (valid!1578 (cache!2270 cacheDown!575)))))

(assert (=> d!625238 (= (validCacheMapDown!182 (cache!2270 cacheDown!575)) e!1288869)))

(declare-fun b!2041425 () Bool)

(declare-fun res!894746 () Bool)

(assert (=> b!2041425 (=> (not res!894746) (not e!1288869))))

(declare-fun invariantList!266 (List!22388) Bool)

(declare-datatypes ((ListMap!581 0))(
  ( (ListMap!582 (toList!1019 List!22388)) )
))
(declare-fun map!4680 (MutableMap!1889) ListMap!581)

(assert (=> b!2041425 (= res!894746 (invariantList!266 (toList!1019 (map!4680 (cache!2270 cacheDown!575)))))))

(declare-fun b!2041426 () Bool)

(declare-fun lambda!76677 () Int)

(declare-fun forall!4764 (List!22388 Int) Bool)

(assert (=> b!2041426 (= e!1288869 (forall!4764 (toList!1019 (map!4680 (cache!2270 cacheDown!575))) lambda!76677))))

(assert (= (and d!625238 res!894745) b!2041425))

(assert (= (and b!2041425 res!894746) b!2041426))

(declare-fun m!2485487 () Bool)

(assert (=> d!625238 m!2485487))

(declare-fun m!2485489 () Bool)

(assert (=> b!2041425 m!2485489))

(declare-fun m!2485491 () Bool)

(assert (=> b!2041425 m!2485491))

(assert (=> b!2041426 m!2485489))

(declare-fun m!2485493 () Bool)

(assert (=> b!2041426 m!2485493))

(assert (=> d!625018 d!625238))

(declare-fun b!2041445 () Bool)

(declare-fun e!1288890 () Bool)

(declare-fun e!1288891 () Bool)

(assert (=> b!2041445 (= e!1288890 e!1288891)))

(declare-fun res!894773 () Bool)

(assert (=> b!2041445 (=> (not res!894773) (not e!1288891))))

(declare-fun appendAssoc!135 (List!22392 List!22392 List!22392) Bool)

(assert (=> b!2041445 (= res!894773 (appendAssoc!135 (list!9153 (left!17759 (right!18089 (c!330712 acc!382)))) (list!9153 (right!18089 (right!18089 (c!330712 acc!382)))) (list!9153 (c!330712 (_1!11954 lt!765587)))))))

(declare-fun b!2041446 () Bool)

(assert (=> b!2041446 (= e!1288891 (appendAssoc!135 (list!9153 (left!17759 (c!330712 acc!382))) (list!9153 (left!17759 (right!18089 (c!330712 acc!382)))) (++!6063 (list!9153 (right!18089 (right!18089 (c!330712 acc!382)))) (list!9153 (c!330712 (_1!11954 lt!765587))))))))

(declare-fun b!2041447 () Bool)

(declare-fun e!1288896 () Bool)

(declare-fun e!1288892 () Bool)

(assert (=> b!2041447 (= e!1288896 e!1288892)))

(declare-fun res!894770 () Bool)

(assert (=> b!2041447 (=> (not res!894770) (not e!1288892))))

(assert (=> b!2041447 (= res!894770 (appendAssoc!135 (list!9153 (c!330712 acc!382)) (list!9153 (left!17759 (c!330712 (_1!11954 lt!765587)))) (list!9153 (right!18089 (c!330712 (_1!11954 lt!765587))))))))

(declare-fun b!2041448 () Bool)

(declare-fun e!1288895 () Bool)

(assert (=> b!2041448 (= e!1288895 e!1288890)))

(declare-fun res!894772 () Bool)

(assert (=> b!2041448 (=> res!894772 e!1288890)))

(assert (=> b!2041448 (= res!894772 (not ((_ is Node!7482) (right!18089 (c!330712 acc!382)))))))

(declare-fun d!625240 () Bool)

(declare-fun e!1288889 () Bool)

(assert (=> d!625240 e!1288889))

(declare-fun res!894771 () Bool)

(assert (=> d!625240 (=> (not res!894771) (not e!1288889))))

(declare-fun e!1288894 () Bool)

(assert (=> d!625240 (= res!894771 e!1288894)))

(declare-fun res!894766 () Bool)

(assert (=> d!625240 (=> res!894766 e!1288894)))

(assert (=> d!625240 (= res!894766 (not ((_ is Node!7482) (c!330712 acc!382))))))

(assert (=> d!625240 (= (appendAssocInst!547 (c!330712 acc!382) (c!330712 (_1!11954 lt!765587))) true)))

(declare-fun b!2041449 () Bool)

(assert (=> b!2041449 (= e!1288889 e!1288896)))

(declare-fun res!894767 () Bool)

(assert (=> b!2041449 (=> res!894767 e!1288896)))

(assert (=> b!2041449 (= res!894767 (not ((_ is Node!7482) (c!330712 (_1!11954 lt!765587)))))))

(declare-fun b!2041450 () Bool)

(declare-fun e!1288888 () Bool)

(assert (=> b!2041450 (= e!1288888 (appendAssoc!135 (++!6063 (list!9153 (c!330712 acc!382)) (list!9153 (left!17759 (left!17759 (c!330712 (_1!11954 lt!765587)))))) (list!9153 (right!18089 (left!17759 (c!330712 (_1!11954 lt!765587))))) (list!9153 (right!18089 (c!330712 (_1!11954 lt!765587))))))))

(declare-fun b!2041451 () Bool)

(declare-fun e!1288893 () Bool)

(assert (=> b!2041451 (= e!1288892 e!1288893)))

(declare-fun res!894768 () Bool)

(assert (=> b!2041451 (=> res!894768 e!1288893)))

(assert (=> b!2041451 (= res!894768 (not ((_ is Node!7482) (left!17759 (c!330712 (_1!11954 lt!765587))))))))

(declare-fun b!2041452 () Bool)

(assert (=> b!2041452 (= e!1288893 e!1288888)))

(declare-fun res!894769 () Bool)

(assert (=> b!2041452 (=> (not res!894769) (not e!1288888))))

(assert (=> b!2041452 (= res!894769 (appendAssoc!135 (list!9153 (c!330712 acc!382)) (list!9153 (left!17759 (left!17759 (c!330712 (_1!11954 lt!765587))))) (list!9153 (right!18089 (left!17759 (c!330712 (_1!11954 lt!765587)))))))))

(declare-fun b!2041453 () Bool)

(assert (=> b!2041453 (= e!1288894 e!1288895)))

(declare-fun res!894765 () Bool)

(assert (=> b!2041453 (=> (not res!894765) (not e!1288895))))

(assert (=> b!2041453 (= res!894765 (appendAssoc!135 (list!9153 (left!17759 (c!330712 acc!382))) (list!9153 (right!18089 (c!330712 acc!382))) (list!9153 (c!330712 (_1!11954 lt!765587)))))))

(assert (= (and d!625240 (not res!894766)) b!2041453))

(assert (= (and b!2041453 res!894765) b!2041448))

(assert (= (and b!2041448 (not res!894772)) b!2041445))

(assert (= (and b!2041445 res!894773) b!2041446))

(assert (= (and d!625240 res!894771) b!2041449))

(assert (= (and b!2041449 (not res!894767)) b!2041447))

(assert (= (and b!2041447 res!894770) b!2041451))

(assert (= (and b!2041451 (not res!894768)) b!2041452))

(assert (= (and b!2041452 res!894769) b!2041450))

(assert (=> b!2041452 m!2484923))

(declare-fun m!2485495 () Bool)

(assert (=> b!2041452 m!2485495))

(declare-fun m!2485497 () Bool)

(assert (=> b!2041452 m!2485497))

(assert (=> b!2041452 m!2484923))

(assert (=> b!2041452 m!2485495))

(assert (=> b!2041452 m!2485497))

(declare-fun m!2485499 () Bool)

(assert (=> b!2041452 m!2485499))

(assert (=> b!2041453 m!2485039))

(assert (=> b!2041453 m!2485041))

(assert (=> b!2041453 m!2485081))

(assert (=> b!2041453 m!2485039))

(assert (=> b!2041453 m!2485041))

(assert (=> b!2041453 m!2485081))

(declare-fun m!2485501 () Bool)

(assert (=> b!2041453 m!2485501))

(assert (=> b!2041450 m!2484923))

(assert (=> b!2041450 m!2484923))

(assert (=> b!2041450 m!2485495))

(declare-fun m!2485503 () Bool)

(assert (=> b!2041450 m!2485503))

(assert (=> b!2041450 m!2485497))

(declare-fun m!2485505 () Bool)

(assert (=> b!2041450 m!2485505))

(assert (=> b!2041450 m!2485495))

(assert (=> b!2041450 m!2485503))

(assert (=> b!2041450 m!2485497))

(assert (=> b!2041450 m!2485505))

(declare-fun m!2485507 () Bool)

(assert (=> b!2041450 m!2485507))

(assert (=> b!2041446 m!2485081))

(declare-fun m!2485509 () Bool)

(assert (=> b!2041446 m!2485509))

(declare-fun m!2485511 () Bool)

(assert (=> b!2041446 m!2485511))

(assert (=> b!2041446 m!2485081))

(declare-fun m!2485513 () Bool)

(assert (=> b!2041446 m!2485513))

(assert (=> b!2041446 m!2485039))

(assert (=> b!2041446 m!2485509))

(assert (=> b!2041446 m!2485513))

(declare-fun m!2485515 () Bool)

(assert (=> b!2041446 m!2485515))

(assert (=> b!2041446 m!2485039))

(assert (=> b!2041446 m!2485511))

(assert (=> b!2041445 m!2485509))

(assert (=> b!2041445 m!2485511))

(assert (=> b!2041445 m!2485081))

(assert (=> b!2041445 m!2485509))

(assert (=> b!2041445 m!2485511))

(assert (=> b!2041445 m!2485081))

(declare-fun m!2485517 () Bool)

(assert (=> b!2041445 m!2485517))

(assert (=> b!2041447 m!2484923))

(declare-fun m!2485519 () Bool)

(assert (=> b!2041447 m!2485519))

(assert (=> b!2041447 m!2485505))

(assert (=> b!2041447 m!2484923))

(assert (=> b!2041447 m!2485519))

(assert (=> b!2041447 m!2485505))

(declare-fun m!2485521 () Bool)

(assert (=> b!2041447 m!2485521))

(assert (=> d!625046 d!625240))

(assert (=> d!625046 d!625072))

(declare-fun bs!421740 () Bool)

(declare-fun d!625242 () Bool)

(assert (= bs!421740 (and d!625242 d!625088)))

(declare-fun lambda!76678 () Int)

(assert (=> bs!421740 (= lambda!76678 lambda!76651)))

(declare-fun bs!421741 () Bool)

(assert (= bs!421741 (and d!625242 d!625230)))

(assert (=> bs!421741 (= lambda!76678 lambda!76673)))

(declare-fun bs!421742 () Bool)

(assert (= bs!421742 (and d!625242 d!625080)))

(assert (=> bs!421742 (= lambda!76678 lambda!76647)))

(declare-fun bs!421743 () Bool)

(assert (= bs!421743 (and d!625242 d!625170)))

(assert (=> bs!421743 (= lambda!76678 lambda!76664)))

(declare-fun bs!421744 () Bool)

(assert (= bs!421744 (and d!625242 d!625116)))

(assert (=> bs!421744 (= lambda!76678 lambda!76657)))

(declare-fun bs!421745 () Bool)

(assert (= bs!421745 (and d!625242 d!625104)))

(assert (=> bs!421745 (= lambda!76678 lambda!76655)))

(declare-fun bs!421746 () Bool)

(assert (= bs!421746 (and d!625242 d!625102)))

(assert (=> bs!421746 (= lambda!76678 lambda!76654)))

(declare-fun bs!421747 () Bool)

(assert (= bs!421747 (and d!625242 d!625154)))

(assert (=> bs!421747 (= lambda!76678 lambda!76660)))

(declare-fun bs!421748 () Bool)

(assert (= bs!421748 (and d!625242 d!625096)))

(assert (=> bs!421748 (= lambda!76678 lambda!76652)))

(declare-fun bs!421749 () Bool)

(assert (= bs!421749 (and d!625242 d!625194)))

(assert (=> bs!421749 (= lambda!76678 lambda!76668)))

(declare-fun bs!421750 () Bool)

(assert (= bs!421750 (and d!625242 d!625172)))

(assert (=> bs!421750 (= lambda!76678 lambda!76665)))

(declare-fun bs!421751 () Bool)

(assert (= bs!421751 (and d!625242 d!625106)))

(assert (=> bs!421751 (= lambda!76678 lambda!76656)))

(declare-fun bs!421752 () Bool)

(assert (= bs!421752 (and d!625242 d!625228)))

(assert (=> bs!421752 (= lambda!76678 lambda!76672)))

(declare-fun bs!421753 () Bool)

(assert (= bs!421753 (and d!625242 d!625190)))

(assert (=> bs!421753 (= lambda!76678 lambda!76667)))

(declare-fun bs!421754 () Bool)

(assert (= bs!421754 (and d!625242 d!625150)))

(assert (=> bs!421754 (= lambda!76678 lambda!76659)))

(declare-fun bs!421755 () Bool)

(assert (= bs!421755 (and d!625242 d!625174)))

(assert (=> bs!421755 (= lambda!76678 lambda!76666)))

(declare-fun bs!421756 () Bool)

(assert (= bs!421756 (and d!625242 d!625100)))

(assert (=> bs!421756 (= lambda!76678 lambda!76653)))

(declare-fun bs!421757 () Bool)

(assert (= bs!421757 (and d!625242 d!625146)))

(assert (=> bs!421757 (= lambda!76678 lambda!76658)))

(declare-fun bs!421758 () Bool)

(assert (= bs!421758 (and d!625242 d!625234)))

(assert (=> bs!421758 (= lambda!76678 lambda!76674)))

(assert (=> d!625242 (= (inv!29648 setElem!11748) (forall!4762 (exprs!1499 setElem!11748) lambda!76678))))

(declare-fun bs!421759 () Bool)

(assert (= bs!421759 d!625242))

(declare-fun m!2485523 () Bool)

(assert (=> bs!421759 m!2485523))

(assert (=> setNonEmpty!11748 d!625242))

(declare-fun d!625244 () Bool)

(assert (=> d!625244 (= (inv!29649 (xs!10387 (c!330711 treated!60))) (<= (size!17455 (innerList!7541 (xs!10387 (c!330711 treated!60)))) 2147483647))))

(declare-fun bs!421760 () Bool)

(assert (= bs!421760 d!625244))

(declare-fun m!2485525 () Bool)

(assert (=> bs!421760 m!2485525))

(assert (=> b!2041016 d!625244))

(assert (=> b!2040899 d!625068))

(assert (=> b!2040899 d!625070))

(assert (=> b!2040899 d!625072))

(assert (=> b!2040899 d!625074))

(assert (=> b!2040899 d!625076))

(declare-fun d!625246 () Bool)

(declare-fun res!894774 () Bool)

(declare-fun e!1288897 () Bool)

(assert (=> d!625246 (=> (not res!894774) (not e!1288897))))

(assert (=> d!625246 (= res!894774 (= (csize!15192 (c!330711 treated!60)) (+ (size!17458 (left!17758 (c!330711 treated!60))) (size!17458 (right!18088 (c!330711 treated!60))))))))

(assert (=> d!625246 (= (inv!29644 (c!330711 treated!60)) e!1288897)))

(declare-fun b!2041454 () Bool)

(declare-fun res!894775 () Bool)

(assert (=> b!2041454 (=> (not res!894775) (not e!1288897))))

(assert (=> b!2041454 (= res!894775 (and (not (= (left!17758 (c!330711 treated!60)) Empty!7481)) (not (= (right!18088 (c!330711 treated!60)) Empty!7481))))))

(declare-fun b!2041455 () Bool)

(declare-fun res!894776 () Bool)

(assert (=> b!2041455 (=> (not res!894776) (not e!1288897))))

(assert (=> b!2041455 (= res!894776 (= (cheight!7692 (c!330711 treated!60)) (+ (max!0 (height!1175 (left!17758 (c!330711 treated!60))) (height!1175 (right!18088 (c!330711 treated!60)))) 1)))))

(declare-fun b!2041456 () Bool)

(assert (=> b!2041456 (= e!1288897 (<= 0 (cheight!7692 (c!330711 treated!60))))))

(assert (= (and d!625246 res!894774) b!2041454))

(assert (= (and b!2041454 res!894775) b!2041455))

(assert (= (and b!2041455 res!894776) b!2041456))

(declare-fun m!2485527 () Bool)

(assert (=> d!625246 m!2485527))

(declare-fun m!2485529 () Bool)

(assert (=> d!625246 m!2485529))

(declare-fun m!2485531 () Bool)

(assert (=> b!2041455 m!2485531))

(declare-fun m!2485533 () Bool)

(assert (=> b!2041455 m!2485533))

(assert (=> b!2041455 m!2485531))

(assert (=> b!2041455 m!2485533))

(declare-fun m!2485535 () Bool)

(assert (=> b!2041455 m!2485535))

(assert (=> b!2040858 d!625246))

(declare-fun d!625248 () Bool)

(declare-fun res!894781 () Bool)

(declare-fun e!1288900 () Bool)

(assert (=> d!625248 (=> (not res!894781) (not e!1288900))))

(assert (=> d!625248 (= res!894781 (<= (size!17459 (list!9154 (xs!10388 (c!330712 acc!382)))) 512))))

(assert (=> d!625248 (= (inv!29647 (c!330712 acc!382)) e!1288900)))

(declare-fun b!2041461 () Bool)

(declare-fun res!894782 () Bool)

(assert (=> b!2041461 (=> (not res!894782) (not e!1288900))))

(assert (=> b!2041461 (= res!894782 (= (csize!15195 (c!330712 acc!382)) (size!17459 (list!9154 (xs!10388 (c!330712 acc!382))))))))

(declare-fun b!2041462 () Bool)

(assert (=> b!2041462 (= e!1288900 (and (> (csize!15195 (c!330712 acc!382)) 0) (<= (csize!15195 (c!330712 acc!382)) 512)))))

(assert (= (and d!625248 res!894781) b!2041461))

(assert (= (and b!2041461 res!894782) b!2041462))

(assert (=> d!625248 m!2485037))

(assert (=> d!625248 m!2485037))

(declare-fun m!2485537 () Bool)

(assert (=> d!625248 m!2485537))

(assert (=> b!2041461 m!2485037))

(assert (=> b!2041461 m!2485037))

(assert (=> b!2041461 m!2485537))

(assert (=> b!2040842 d!625248))

(declare-fun d!625250 () Bool)

(declare-fun e!1288901 () Bool)

(assert (=> d!625250 e!1288901))

(declare-fun res!894783 () Bool)

(assert (=> d!625250 (=> (not res!894783) (not e!1288901))))

(assert (=> d!625250 (= res!894783 (isBalanced!2355 (prepend!908 (c!330712 (_1!11954 lt!765619)) (_1!11957 (v!27041 lt!765620)))))))

(declare-fun lt!765718 () BalanceConc!14726)

(assert (=> d!625250 (= lt!765718 (BalanceConc!14727 (prepend!908 (c!330712 (_1!11954 lt!765619)) (_1!11957 (v!27041 lt!765620)))))))

(assert (=> d!625250 (= (prepend!907 (_1!11954 lt!765619) (_1!11957 (v!27041 lt!765620))) lt!765718)))

(declare-fun b!2041463 () Bool)

(assert (=> b!2041463 (= e!1288901 (= (list!9150 lt!765718) (Cons!22308 (_1!11957 (v!27041 lt!765620)) (list!9150 (_1!11954 lt!765619)))))))

(assert (= (and d!625250 res!894783) b!2041463))

(declare-fun m!2485539 () Bool)

(assert (=> d!625250 m!2485539))

(assert (=> d!625250 m!2485539))

(declare-fun m!2485541 () Bool)

(assert (=> d!625250 m!2485541))

(declare-fun m!2485543 () Bool)

(assert (=> b!2041463 m!2485543))

(declare-fun m!2485545 () Bool)

(assert (=> b!2041463 m!2485545))

(assert (=> b!2040887 d!625250))

(declare-fun b!2041464 () Bool)

(declare-fun e!1288903 () Bool)

(declare-fun lt!765721 () tuple2!20962)

(assert (=> b!2041464 (= e!1288903 (= (list!9151 (_2!11954 lt!765721)) (list!9151 (_2!11957 (v!27041 lt!765620)))))))

(declare-fun d!625252 () Bool)

(declare-fun e!1288905 () Bool)

(assert (=> d!625252 e!1288905))

(declare-fun res!894785 () Bool)

(assert (=> d!625252 (=> (not res!894785) (not e!1288905))))

(assert (=> d!625252 (= res!894785 e!1288903)))

(declare-fun c!330843 () Bool)

(assert (=> d!625252 (= c!330843 (> (size!17456 (_1!11954 lt!765721)) 0))))

(declare-fun e!1288904 () tuple2!20962)

(assert (=> d!625252 (= lt!765721 e!1288904)))

(declare-fun c!330844 () Bool)

(declare-fun lt!765720 () Option!4687)

(assert (=> d!625252 (= c!330844 ((_ is Some!4686) lt!765720))))

(assert (=> d!625252 (= lt!765720 (maxPrefixZipperSequence!786 thiss!12889 rules!1563 (_2!11957 (v!27041 lt!765620))))))

(assert (=> d!625252 (= (lexRec!421 thiss!12889 rules!1563 (_2!11957 (v!27041 lt!765620))) lt!765721)))

(declare-fun b!2041465 () Bool)

(declare-fun e!1288902 () Bool)

(assert (=> b!2041465 (= e!1288903 e!1288902)))

(declare-fun res!894784 () Bool)

(assert (=> b!2041465 (= res!894784 (< (size!17457 (_2!11954 lt!765721)) (size!17457 (_2!11957 (v!27041 lt!765620)))))))

(assert (=> b!2041465 (=> (not res!894784) (not e!1288902))))

(declare-fun b!2041466 () Bool)

(declare-fun res!894786 () Bool)

(assert (=> b!2041466 (=> (not res!894786) (not e!1288905))))

(assert (=> b!2041466 (= res!894786 (= (list!9150 (_1!11954 lt!765721)) (_1!11958 (lexList!986 thiss!12889 rules!1563 (list!9151 (_2!11957 (v!27041 lt!765620)))))))))

(declare-fun b!2041467 () Bool)

(assert (=> b!2041467 (= e!1288905 (= (list!9151 (_2!11954 lt!765721)) (_2!11958 (lexList!986 thiss!12889 rules!1563 (list!9151 (_2!11957 (v!27041 lt!765620)))))))))

(declare-fun b!2041468 () Bool)

(assert (=> b!2041468 (= e!1288904 (tuple2!20963 (BalanceConc!14727 Empty!7482) (_2!11957 (v!27041 lt!765620))))))

(declare-fun b!2041469 () Bool)

(declare-fun lt!765719 () tuple2!20962)

(assert (=> b!2041469 (= e!1288904 (tuple2!20963 (prepend!907 (_1!11954 lt!765719) (_1!11957 (v!27041 lt!765720))) (_2!11954 lt!765719)))))

(assert (=> b!2041469 (= lt!765719 (lexRec!421 thiss!12889 rules!1563 (_2!11957 (v!27041 lt!765720))))))

(declare-fun b!2041470 () Bool)

(assert (=> b!2041470 (= e!1288902 (not (isEmpty!13947 (_1!11954 lt!765721))))))

(assert (= (and d!625252 c!330844) b!2041469))

(assert (= (and d!625252 (not c!330844)) b!2041468))

(assert (= (and d!625252 c!330843) b!2041465))

(assert (= (and d!625252 (not c!330843)) b!2041464))

(assert (= (and b!2041465 res!894784) b!2041470))

(assert (= (and d!625252 res!894785) b!2041466))

(assert (= (and b!2041466 res!894786) b!2041467))

(declare-fun m!2485547 () Bool)

(assert (=> b!2041465 m!2485547))

(declare-fun m!2485549 () Bool)

(assert (=> b!2041465 m!2485549))

(declare-fun m!2485551 () Bool)

(assert (=> b!2041467 m!2485551))

(declare-fun m!2485553 () Bool)

(assert (=> b!2041467 m!2485553))

(assert (=> b!2041467 m!2485553))

(declare-fun m!2485555 () Bool)

(assert (=> b!2041467 m!2485555))

(declare-fun m!2485557 () Bool)

(assert (=> b!2041469 m!2485557))

(declare-fun m!2485559 () Bool)

(assert (=> b!2041469 m!2485559))

(declare-fun m!2485561 () Bool)

(assert (=> b!2041466 m!2485561))

(assert (=> b!2041466 m!2485553))

(assert (=> b!2041466 m!2485553))

(assert (=> b!2041466 m!2485555))

(declare-fun m!2485563 () Bool)

(assert (=> b!2041470 m!2485563))

(declare-fun m!2485565 () Bool)

(assert (=> d!625252 m!2485565))

(declare-fun m!2485567 () Bool)

(assert (=> d!625252 m!2485567))

(assert (=> b!2041464 m!2485551))

(assert (=> b!2041464 m!2485553))

(assert (=> b!2040887 d!625252))

(declare-fun bs!421761 () Bool)

(declare-fun d!625254 () Bool)

(assert (= bs!421761 (and d!625254 d!625020)))

(declare-fun lambda!76679 () Int)

(assert (=> bs!421761 (= lambda!76679 lambda!76644)))

(assert (=> d!625254 true))

(declare-fun lt!765722 () Bool)

(assert (=> d!625254 (= lt!765722 (forall!4761 (t!191500 rules!1563) lambda!76679))))

(declare-fun e!1288906 () Bool)

(assert (=> d!625254 (= lt!765722 e!1288906)))

(declare-fun res!894788 () Bool)

(assert (=> d!625254 (=> res!894788 e!1288906)))

(assert (=> d!625254 (= res!894788 (not ((_ is Cons!22307) (t!191500 rules!1563))))))

(assert (=> d!625254 (= (rulesValidInductive!1390 thiss!12889 (t!191500 rules!1563)) lt!765722)))

(declare-fun b!2041471 () Bool)

(declare-fun e!1288907 () Bool)

(assert (=> b!2041471 (= e!1288906 e!1288907)))

(declare-fun res!894787 () Bool)

(assert (=> b!2041471 (=> (not res!894787) (not e!1288907))))

(assert (=> b!2041471 (= res!894787 (ruleValid!1226 thiss!12889 (h!27708 (t!191500 rules!1563))))))

(declare-fun b!2041472 () Bool)

(assert (=> b!2041472 (= e!1288907 (rulesValidInductive!1390 thiss!12889 (t!191500 (t!191500 rules!1563))))))

(assert (= (and d!625254 (not res!894788)) b!2041471))

(assert (= (and b!2041471 res!894787) b!2041472))

(declare-fun m!2485569 () Bool)

(assert (=> d!625254 m!2485569))

(declare-fun m!2485571 () Bool)

(assert (=> b!2041471 m!2485571))

(declare-fun m!2485573 () Bool)

(assert (=> b!2041472 m!2485573))

(assert (=> b!2040852 d!625254))

(declare-fun d!625256 () Bool)

(declare-fun lt!765723 () Int)

(assert (=> d!625256 (= lt!765723 (size!17459 (list!9150 (_1!11954 lt!765627))))))

(assert (=> d!625256 (= lt!765723 (size!17460 (c!330712 (_1!11954 lt!765627))))))

(assert (=> d!625256 (= (size!17456 (_1!11954 lt!765627)) lt!765723)))

(declare-fun bs!421762 () Bool)

(assert (= bs!421762 d!625256))

(assert (=> bs!421762 m!2484937))

(assert (=> bs!421762 m!2484937))

(declare-fun m!2485575 () Bool)

(assert (=> bs!421762 m!2485575))

(declare-fun m!2485577 () Bool)

(assert (=> bs!421762 m!2485577))

(assert (=> d!625056 d!625256))

(declare-fun call!125285 () Option!4687)

(declare-fun bm!125280 () Bool)

(assert (=> bm!125280 (= call!125285 (maxPrefixOneRuleZipperSequence!382 thiss!12889 (h!27708 rules!1563) treated!60))))

(declare-fun b!2041473 () Bool)

(declare-fun e!1288908 () Option!4687)

(declare-fun lt!765724 () Option!4687)

(declare-fun lt!765730 () Option!4687)

(assert (=> b!2041473 (= e!1288908 (ite (and ((_ is None!4686) lt!765724) ((_ is None!4686) lt!765730)) None!4686 (ite ((_ is None!4686) lt!765730) lt!765724 (ite ((_ is None!4686) lt!765724) lt!765730 (ite (>= (size!17453 (_1!11957 (v!27041 lt!765724))) (size!17453 (_1!11957 (v!27041 lt!765730)))) lt!765724 lt!765730)))))))

(assert (=> b!2041473 (= lt!765724 call!125285)))

(assert (=> b!2041473 (= lt!765730 (maxPrefixZipperSequence!786 thiss!12889 (t!191500 rules!1563) treated!60))))

(declare-fun b!2041474 () Bool)

(declare-fun e!1288912 () Bool)

(declare-fun e!1288913 () Bool)

(assert (=> b!2041474 (= e!1288912 e!1288913)))

(declare-fun res!894789 () Bool)

(assert (=> b!2041474 (=> (not res!894789) (not e!1288913))))

(declare-fun lt!765727 () Option!4687)

(assert (=> b!2041474 (= res!894789 (= (_1!11957 (get!7093 lt!765727)) (_1!11959 (get!7094 (maxPrefix!2050 thiss!12889 rules!1563 (list!9151 treated!60))))))))

(declare-fun b!2041475 () Bool)

(declare-fun e!1288909 () Bool)

(assert (=> b!2041475 (= e!1288909 e!1288912)))

(declare-fun res!894794 () Bool)

(assert (=> b!2041475 (=> res!894794 e!1288912)))

(assert (=> b!2041475 (= res!894794 (not (isDefined!3971 lt!765727)))))

(declare-fun e!1288910 () Bool)

(declare-fun b!2041477 () Bool)

(assert (=> b!2041477 (= e!1288910 (= (list!9151 (_2!11957 (get!7093 lt!765727))) (_2!11959 (get!7094 (maxPrefixZipper!390 thiss!12889 rules!1563 (list!9151 treated!60))))))))

(declare-fun b!2041478 () Bool)

(assert (=> b!2041478 (= e!1288908 call!125285)))

(declare-fun b!2041479 () Bool)

(declare-fun e!1288911 () Bool)

(assert (=> b!2041479 (= e!1288911 e!1288910)))

(declare-fun res!894792 () Bool)

(assert (=> b!2041479 (=> (not res!894792) (not e!1288910))))

(assert (=> b!2041479 (= res!894792 (= (_1!11957 (get!7093 lt!765727)) (_1!11959 (get!7094 (maxPrefixZipper!390 thiss!12889 rules!1563 (list!9151 treated!60))))))))

(declare-fun b!2041480 () Bool)

(declare-fun res!894793 () Bool)

(assert (=> b!2041480 (=> (not res!894793) (not e!1288909))))

(assert (=> b!2041480 (= res!894793 e!1288911)))

(declare-fun res!894791 () Bool)

(assert (=> b!2041480 (=> res!894791 e!1288911)))

(assert (=> b!2041480 (= res!894791 (not (isDefined!3971 lt!765727)))))

(declare-fun d!625258 () Bool)

(assert (=> d!625258 e!1288909))

(declare-fun res!894790 () Bool)

(assert (=> d!625258 (=> (not res!894790) (not e!1288909))))

(assert (=> d!625258 (= res!894790 (= (isDefined!3971 lt!765727) (isDefined!3972 (maxPrefixZipper!390 thiss!12889 rules!1563 (list!9151 treated!60)))))))

(assert (=> d!625258 (= lt!765727 e!1288908)))

(declare-fun c!330845 () Bool)

(assert (=> d!625258 (= c!330845 (and ((_ is Cons!22307) rules!1563) ((_ is Nil!22307) (t!191500 rules!1563))))))

(declare-fun lt!765725 () Unit!36991)

(declare-fun lt!765728 () Unit!36991)

(assert (=> d!625258 (= lt!765725 lt!765728)))

(declare-fun lt!765726 () List!22390)

(declare-fun lt!765729 () List!22390)

(assert (=> d!625258 (isPrefix!1990 lt!765726 lt!765729)))

(assert (=> d!625258 (= lt!765728 (lemmaIsPrefixRefl!1308 lt!765726 lt!765729))))

(assert (=> d!625258 (= lt!765729 (list!9151 treated!60))))

(assert (=> d!625258 (= lt!765726 (list!9151 treated!60))))

(assert (=> d!625258 (rulesValidInductive!1390 thiss!12889 rules!1563)))

(assert (=> d!625258 (= (maxPrefixZipperSequence!786 thiss!12889 rules!1563 treated!60) lt!765727)))

(declare-fun b!2041476 () Bool)

(assert (=> b!2041476 (= e!1288913 (= (list!9151 (_2!11957 (get!7093 lt!765727))) (_2!11959 (get!7094 (maxPrefix!2050 thiss!12889 rules!1563 (list!9151 treated!60))))))))

(assert (= (and d!625258 c!330845) b!2041478))

(assert (= (and d!625258 (not c!330845)) b!2041473))

(assert (= (or b!2041478 b!2041473) bm!125280))

(assert (= (and d!625258 res!894790) b!2041480))

(assert (= (and b!2041480 (not res!894791)) b!2041479))

(assert (= (and b!2041479 res!894792) b!2041477))

(assert (= (and b!2041480 res!894793) b!2041475))

(assert (= (and b!2041475 (not res!894794)) b!2041474))

(assert (= (and b!2041474 res!894789) b!2041476))

(declare-fun m!2485579 () Bool)

(assert (=> b!2041473 m!2485579))

(declare-fun m!2485581 () Bool)

(assert (=> b!2041474 m!2485581))

(assert (=> b!2041474 m!2484747))

(assert (=> b!2041474 m!2484747))

(assert (=> b!2041474 m!2485049))

(assert (=> b!2041474 m!2485049))

(declare-fun m!2485583 () Bool)

(assert (=> b!2041474 m!2485583))

(assert (=> b!2041476 m!2484747))

(assert (=> b!2041476 m!2485049))

(assert (=> b!2041476 m!2485583))

(declare-fun m!2485585 () Bool)

(assert (=> b!2041476 m!2485585))

(assert (=> b!2041476 m!2484747))

(assert (=> b!2041476 m!2485049))

(assert (=> b!2041476 m!2485581))

(declare-fun m!2485587 () Bool)

(assert (=> b!2041475 m!2485587))

(assert (=> b!2041477 m!2484747))

(declare-fun m!2485589 () Bool)

(assert (=> b!2041477 m!2485589))

(declare-fun m!2485591 () Bool)

(assert (=> b!2041477 m!2485591))

(assert (=> b!2041477 m!2485585))

(assert (=> b!2041477 m!2484747))

(assert (=> b!2041477 m!2485589))

(assert (=> b!2041477 m!2485581))

(assert (=> b!2041480 m!2485587))

(assert (=> b!2041479 m!2485581))

(assert (=> b!2041479 m!2484747))

(assert (=> b!2041479 m!2484747))

(assert (=> b!2041479 m!2485589))

(assert (=> b!2041479 m!2485589))

(assert (=> b!2041479 m!2485591))

(declare-fun m!2485593 () Bool)

(assert (=> bm!125280 m!2485593))

(assert (=> d!625258 m!2484723))

(declare-fun m!2485595 () Bool)

(assert (=> d!625258 m!2485595))

(declare-fun m!2485597 () Bool)

(assert (=> d!625258 m!2485597))

(assert (=> d!625258 m!2484747))

(assert (=> d!625258 m!2485589))

(assert (=> d!625258 m!2485587))

(assert (=> d!625258 m!2485589))

(declare-fun m!2485599 () Bool)

(assert (=> d!625258 m!2485599))

(assert (=> d!625258 m!2484747))

(assert (=> d!625056 d!625258))

(declare-fun bs!421763 () Bool)

(declare-fun d!625260 () Bool)

(assert (= bs!421763 (and d!625260 d!625088)))

(declare-fun lambda!76680 () Int)

(assert (=> bs!421763 (= lambda!76680 lambda!76651)))

(declare-fun bs!421764 () Bool)

(assert (= bs!421764 (and d!625260 d!625230)))

(assert (=> bs!421764 (= lambda!76680 lambda!76673)))

(declare-fun bs!421765 () Bool)

(assert (= bs!421765 (and d!625260 d!625080)))

(assert (=> bs!421765 (= lambda!76680 lambda!76647)))

(declare-fun bs!421766 () Bool)

(assert (= bs!421766 (and d!625260 d!625170)))

(assert (=> bs!421766 (= lambda!76680 lambda!76664)))

(declare-fun bs!421767 () Bool)

(assert (= bs!421767 (and d!625260 d!625116)))

(assert (=> bs!421767 (= lambda!76680 lambda!76657)))

(declare-fun bs!421768 () Bool)

(assert (= bs!421768 (and d!625260 d!625104)))

(assert (=> bs!421768 (= lambda!76680 lambda!76655)))

(declare-fun bs!421769 () Bool)

(assert (= bs!421769 (and d!625260 d!625102)))

(assert (=> bs!421769 (= lambda!76680 lambda!76654)))

(declare-fun bs!421770 () Bool)

(assert (= bs!421770 (and d!625260 d!625154)))

(assert (=> bs!421770 (= lambda!76680 lambda!76660)))

(declare-fun bs!421771 () Bool)

(assert (= bs!421771 (and d!625260 d!625242)))

(assert (=> bs!421771 (= lambda!76680 lambda!76678)))

(declare-fun bs!421772 () Bool)

(assert (= bs!421772 (and d!625260 d!625096)))

(assert (=> bs!421772 (= lambda!76680 lambda!76652)))

(declare-fun bs!421773 () Bool)

(assert (= bs!421773 (and d!625260 d!625194)))

(assert (=> bs!421773 (= lambda!76680 lambda!76668)))

(declare-fun bs!421774 () Bool)

(assert (= bs!421774 (and d!625260 d!625172)))

(assert (=> bs!421774 (= lambda!76680 lambda!76665)))

(declare-fun bs!421775 () Bool)

(assert (= bs!421775 (and d!625260 d!625106)))

(assert (=> bs!421775 (= lambda!76680 lambda!76656)))

(declare-fun bs!421776 () Bool)

(assert (= bs!421776 (and d!625260 d!625228)))

(assert (=> bs!421776 (= lambda!76680 lambda!76672)))

(declare-fun bs!421777 () Bool)

(assert (= bs!421777 (and d!625260 d!625190)))

(assert (=> bs!421777 (= lambda!76680 lambda!76667)))

(declare-fun bs!421778 () Bool)

(assert (= bs!421778 (and d!625260 d!625150)))

(assert (=> bs!421778 (= lambda!76680 lambda!76659)))

(declare-fun bs!421779 () Bool)

(assert (= bs!421779 (and d!625260 d!625174)))

(assert (=> bs!421779 (= lambda!76680 lambda!76666)))

(declare-fun bs!421780 () Bool)

(assert (= bs!421780 (and d!625260 d!625100)))

(assert (=> bs!421780 (= lambda!76680 lambda!76653)))

(declare-fun bs!421781 () Bool)

(assert (= bs!421781 (and d!625260 d!625146)))

(assert (=> bs!421781 (= lambda!76680 lambda!76658)))

(declare-fun bs!421782 () Bool)

(assert (= bs!421782 (and d!625260 d!625234)))

(assert (=> bs!421782 (= lambda!76680 lambda!76674)))

(assert (=> d!625260 (= (inv!29648 (_2!11952 (_1!11953 (h!27705 mapDefault!9143)))) (forall!4762 (exprs!1499 (_2!11952 (_1!11953 (h!27705 mapDefault!9143)))) lambda!76680))))

(declare-fun bs!421783 () Bool)

(assert (= bs!421783 d!625260))

(declare-fun m!2485601 () Bool)

(assert (=> bs!421783 m!2485601))

(assert (=> b!2041036 d!625260))

(declare-fun bs!421784 () Bool)

(declare-fun d!625262 () Bool)

(assert (= bs!421784 (and d!625262 d!625020)))

(declare-fun lambda!76683 () Int)

(assert (=> bs!421784 (= lambda!76683 lambda!76644)))

(declare-fun bs!421785 () Bool)

(assert (= bs!421785 (and d!625262 d!625254)))

(assert (=> bs!421785 (= lambda!76683 lambda!76679)))

(assert (=> d!625262 true))

(declare-fun lt!765733 () Bool)

(assert (=> d!625262 (= lt!765733 (rulesValidInductive!1390 thiss!12889 rules!1563))))

(assert (=> d!625262 (= lt!765733 (forall!4761 rules!1563 lambda!76683))))

(assert (=> d!625262 (= (rulesValid!1501 thiss!12889 rules!1563) lt!765733)))

(declare-fun bs!421786 () Bool)

(assert (= bs!421786 d!625262))

(assert (=> bs!421786 m!2484723))

(declare-fun m!2485603 () Bool)

(assert (=> bs!421786 m!2485603))

(assert (=> d!624996 d!625262))

(assert (=> b!2040833 d!625238))

(assert (=> b!2040875 d!625084))

(assert (=> b!2040875 d!624988))

(declare-fun d!625264 () Bool)

(declare-fun lt!765734 () Int)

(assert (=> d!625264 (= lt!765734 (size!17455 (list!9151 (_2!11954 lt!765621))))))

(assert (=> d!625264 (= lt!765734 (size!17458 (c!330711 (_2!11954 lt!765621))))))

(assert (=> d!625264 (= (size!17457 (_2!11954 lt!765621)) lt!765734)))

(declare-fun bs!421787 () Bool)

(assert (= bs!421787 d!625264))

(assert (=> bs!421787 m!2484881))

(assert (=> bs!421787 m!2484881))

(declare-fun m!2485605 () Bool)

(assert (=> bs!421787 m!2485605))

(declare-fun m!2485607 () Bool)

(assert (=> bs!421787 m!2485607))

(assert (=> b!2040883 d!625264))

(declare-fun d!625266 () Bool)

(declare-fun lt!765735 () Int)

(assert (=> d!625266 (= lt!765735 (size!17455 (list!9151 input!986)))))

(assert (=> d!625266 (= lt!765735 (size!17458 (c!330711 input!986)))))

(assert (=> d!625266 (= (size!17457 input!986) lt!765735)))

(declare-fun bs!421788 () Bool)

(assert (= bs!421788 d!625266))

(assert (=> bs!421788 m!2484745))

(assert (=> bs!421788 m!2484745))

(assert (=> bs!421788 m!2485251))

(declare-fun m!2485609 () Bool)

(assert (=> bs!421788 m!2485609))

(assert (=> b!2040883 d!625266))

(declare-fun b!2041481 () Bool)

(declare-fun res!894795 () Bool)

(declare-fun e!1288914 () Bool)

(assert (=> b!2041481 (=> (not res!894795) (not e!1288914))))

(assert (=> b!2041481 (= res!894795 (isBalanced!2354 (right!18088 (c!330711 treated!60))))))

(declare-fun d!625268 () Bool)

(declare-fun res!894799 () Bool)

(declare-fun e!1288915 () Bool)

(assert (=> d!625268 (=> res!894799 e!1288915)))

(assert (=> d!625268 (= res!894799 (not ((_ is Node!7481) (c!330711 treated!60))))))

(assert (=> d!625268 (= (isBalanced!2354 (c!330711 treated!60)) e!1288915)))

(declare-fun b!2041482 () Bool)

(assert (=> b!2041482 (= e!1288915 e!1288914)))

(declare-fun res!894796 () Bool)

(assert (=> b!2041482 (=> (not res!894796) (not e!1288914))))

(assert (=> b!2041482 (= res!894796 (<= (- 1) (- (height!1175 (left!17758 (c!330711 treated!60))) (height!1175 (right!18088 (c!330711 treated!60))))))))

(declare-fun b!2041483 () Bool)

(declare-fun res!894797 () Bool)

(assert (=> b!2041483 (=> (not res!894797) (not e!1288914))))

(assert (=> b!2041483 (= res!894797 (<= (- (height!1175 (left!17758 (c!330711 treated!60))) (height!1175 (right!18088 (c!330711 treated!60)))) 1))))

(declare-fun b!2041484 () Bool)

(declare-fun res!894800 () Bool)

(assert (=> b!2041484 (=> (not res!894800) (not e!1288914))))

(assert (=> b!2041484 (= res!894800 (not (isEmpty!13949 (left!17758 (c!330711 treated!60)))))))

(declare-fun b!2041485 () Bool)

(assert (=> b!2041485 (= e!1288914 (not (isEmpty!13949 (right!18088 (c!330711 treated!60)))))))

(declare-fun b!2041486 () Bool)

(declare-fun res!894798 () Bool)

(assert (=> b!2041486 (=> (not res!894798) (not e!1288914))))

(assert (=> b!2041486 (= res!894798 (isBalanced!2354 (left!17758 (c!330711 treated!60))))))

(assert (= (and d!625268 (not res!894799)) b!2041482))

(assert (= (and b!2041482 res!894796) b!2041483))

(assert (= (and b!2041483 res!894797) b!2041486))

(assert (= (and b!2041486 res!894798) b!2041481))

(assert (= (and b!2041481 res!894795) b!2041484))

(assert (= (and b!2041484 res!894800) b!2041485))

(assert (=> b!2041483 m!2485531))

(assert (=> b!2041483 m!2485533))

(declare-fun m!2485611 () Bool)

(assert (=> b!2041481 m!2485611))

(assert (=> b!2041482 m!2485531))

(assert (=> b!2041482 m!2485533))

(declare-fun m!2485613 () Bool)

(assert (=> b!2041484 m!2485613))

(declare-fun m!2485615 () Bool)

(assert (=> b!2041486 m!2485615))

(declare-fun m!2485617 () Bool)

(assert (=> b!2041485 m!2485617))

(assert (=> d!625008 d!625268))

(declare-fun bs!421789 () Bool)

(declare-fun d!625270 () Bool)

(assert (= bs!421789 (and d!625270 d!625088)))

(declare-fun lambda!76684 () Int)

(assert (=> bs!421789 (= lambda!76684 lambda!76651)))

(declare-fun bs!421790 () Bool)

(assert (= bs!421790 (and d!625270 d!625230)))

(assert (=> bs!421790 (= lambda!76684 lambda!76673)))

(declare-fun bs!421791 () Bool)

(assert (= bs!421791 (and d!625270 d!625080)))

(assert (=> bs!421791 (= lambda!76684 lambda!76647)))

(declare-fun bs!421792 () Bool)

(assert (= bs!421792 (and d!625270 d!625170)))

(assert (=> bs!421792 (= lambda!76684 lambda!76664)))

(declare-fun bs!421793 () Bool)

(assert (= bs!421793 (and d!625270 d!625116)))

(assert (=> bs!421793 (= lambda!76684 lambda!76657)))

(declare-fun bs!421794 () Bool)

(assert (= bs!421794 (and d!625270 d!625104)))

(assert (=> bs!421794 (= lambda!76684 lambda!76655)))

(declare-fun bs!421795 () Bool)

(assert (= bs!421795 (and d!625270 d!625102)))

(assert (=> bs!421795 (= lambda!76684 lambda!76654)))

(declare-fun bs!421796 () Bool)

(assert (= bs!421796 (and d!625270 d!625154)))

(assert (=> bs!421796 (= lambda!76684 lambda!76660)))

(declare-fun bs!421797 () Bool)

(assert (= bs!421797 (and d!625270 d!625242)))

(assert (=> bs!421797 (= lambda!76684 lambda!76678)))

(declare-fun bs!421798 () Bool)

(assert (= bs!421798 (and d!625270 d!625096)))

(assert (=> bs!421798 (= lambda!76684 lambda!76652)))

(declare-fun bs!421799 () Bool)

(assert (= bs!421799 (and d!625270 d!625194)))

(assert (=> bs!421799 (= lambda!76684 lambda!76668)))

(declare-fun bs!421800 () Bool)

(assert (= bs!421800 (and d!625270 d!625172)))

(assert (=> bs!421800 (= lambda!76684 lambda!76665)))

(declare-fun bs!421801 () Bool)

(assert (= bs!421801 (and d!625270 d!625106)))

(assert (=> bs!421801 (= lambda!76684 lambda!76656)))

(declare-fun bs!421802 () Bool)

(assert (= bs!421802 (and d!625270 d!625228)))

(assert (=> bs!421802 (= lambda!76684 lambda!76672)))

(declare-fun bs!421803 () Bool)

(assert (= bs!421803 (and d!625270 d!625190)))

(assert (=> bs!421803 (= lambda!76684 lambda!76667)))

(declare-fun bs!421804 () Bool)

(assert (= bs!421804 (and d!625270 d!625150)))

(assert (=> bs!421804 (= lambda!76684 lambda!76659)))

(declare-fun bs!421805 () Bool)

(assert (= bs!421805 (and d!625270 d!625174)))

(assert (=> bs!421805 (= lambda!76684 lambda!76666)))

(declare-fun bs!421806 () Bool)

(assert (= bs!421806 (and d!625270 d!625100)))

(assert (=> bs!421806 (= lambda!76684 lambda!76653)))

(declare-fun bs!421807 () Bool)

(assert (= bs!421807 (and d!625270 d!625260)))

(assert (=> bs!421807 (= lambda!76684 lambda!76680)))

(declare-fun bs!421808 () Bool)

(assert (= bs!421808 (and d!625270 d!625146)))

(assert (=> bs!421808 (= lambda!76684 lambda!76658)))

(declare-fun bs!421809 () Bool)

(assert (= bs!421809 (and d!625270 d!625234)))

(assert (=> bs!421809 (= lambda!76684 lambda!76674)))

(assert (=> d!625270 (= (inv!29648 (_1!11955 (_1!11956 (h!27710 (zeroValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562)))))))))) (forall!4762 (exprs!1499 (_1!11955 (_1!11956 (h!27710 (zeroValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562)))))))))) lambda!76684))))

(declare-fun bs!421810 () Bool)

(assert (= bs!421810 d!625270))

(declare-fun m!2485619 () Bool)

(assert (=> bs!421810 m!2485619))

(assert (=> b!2040917 d!625270))

(assert (=> d!625026 d!625200))

(declare-fun bs!421811 () Bool)

(declare-fun d!625272 () Bool)

(assert (= bs!421811 (and d!625272 d!625088)))

(declare-fun lambda!76685 () Int)

(assert (=> bs!421811 (= lambda!76685 lambda!76651)))

(declare-fun bs!421812 () Bool)

(assert (= bs!421812 (and d!625272 d!625230)))

(assert (=> bs!421812 (= lambda!76685 lambda!76673)))

(declare-fun bs!421813 () Bool)

(assert (= bs!421813 (and d!625272 d!625080)))

(assert (=> bs!421813 (= lambda!76685 lambda!76647)))

(declare-fun bs!421814 () Bool)

(assert (= bs!421814 (and d!625272 d!625170)))

(assert (=> bs!421814 (= lambda!76685 lambda!76664)))

(declare-fun bs!421815 () Bool)

(assert (= bs!421815 (and d!625272 d!625116)))

(assert (=> bs!421815 (= lambda!76685 lambda!76657)))

(declare-fun bs!421816 () Bool)

(assert (= bs!421816 (and d!625272 d!625104)))

(assert (=> bs!421816 (= lambda!76685 lambda!76655)))

(declare-fun bs!421817 () Bool)

(assert (= bs!421817 (and d!625272 d!625102)))

(assert (=> bs!421817 (= lambda!76685 lambda!76654)))

(declare-fun bs!421818 () Bool)

(assert (= bs!421818 (and d!625272 d!625154)))

(assert (=> bs!421818 (= lambda!76685 lambda!76660)))

(declare-fun bs!421819 () Bool)

(assert (= bs!421819 (and d!625272 d!625242)))

(assert (=> bs!421819 (= lambda!76685 lambda!76678)))

(declare-fun bs!421820 () Bool)

(assert (= bs!421820 (and d!625272 d!625270)))

(assert (=> bs!421820 (= lambda!76685 lambda!76684)))

(declare-fun bs!421821 () Bool)

(assert (= bs!421821 (and d!625272 d!625096)))

(assert (=> bs!421821 (= lambda!76685 lambda!76652)))

(declare-fun bs!421822 () Bool)

(assert (= bs!421822 (and d!625272 d!625194)))

(assert (=> bs!421822 (= lambda!76685 lambda!76668)))

(declare-fun bs!421823 () Bool)

(assert (= bs!421823 (and d!625272 d!625172)))

(assert (=> bs!421823 (= lambda!76685 lambda!76665)))

(declare-fun bs!421824 () Bool)

(assert (= bs!421824 (and d!625272 d!625106)))

(assert (=> bs!421824 (= lambda!76685 lambda!76656)))

(declare-fun bs!421825 () Bool)

(assert (= bs!421825 (and d!625272 d!625228)))

(assert (=> bs!421825 (= lambda!76685 lambda!76672)))

(declare-fun bs!421826 () Bool)

(assert (= bs!421826 (and d!625272 d!625190)))

(assert (=> bs!421826 (= lambda!76685 lambda!76667)))

(declare-fun bs!421827 () Bool)

(assert (= bs!421827 (and d!625272 d!625150)))

(assert (=> bs!421827 (= lambda!76685 lambda!76659)))

(declare-fun bs!421828 () Bool)

(assert (= bs!421828 (and d!625272 d!625174)))

(assert (=> bs!421828 (= lambda!76685 lambda!76666)))

(declare-fun bs!421829 () Bool)

(assert (= bs!421829 (and d!625272 d!625100)))

(assert (=> bs!421829 (= lambda!76685 lambda!76653)))

(declare-fun bs!421830 () Bool)

(assert (= bs!421830 (and d!625272 d!625260)))

(assert (=> bs!421830 (= lambda!76685 lambda!76680)))

(declare-fun bs!421831 () Bool)

(assert (= bs!421831 (and d!625272 d!625146)))

(assert (=> bs!421831 (= lambda!76685 lambda!76658)))

(declare-fun bs!421832 () Bool)

(assert (= bs!421832 (and d!625272 d!625234)))

(assert (=> bs!421832 (= lambda!76685 lambda!76674)))

(assert (=> d!625272 (= (inv!29648 (_2!11952 (_1!11953 (h!27705 (minValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575)))))))))) (forall!4762 (exprs!1499 (_2!11952 (_1!11953 (h!27705 (minValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575)))))))))) lambda!76685))))

(declare-fun bs!421833 () Bool)

(assert (= bs!421833 d!625272))

(declare-fun m!2485621 () Bool)

(assert (=> bs!421833 m!2485621))

(assert (=> b!2040963 d!625272))

(declare-fun bs!421834 () Bool)

(declare-fun d!625274 () Bool)

(assert (= bs!421834 (and d!625274 d!625088)))

(declare-fun lambda!76686 () Int)

(assert (=> bs!421834 (= lambda!76686 lambda!76651)))

(declare-fun bs!421835 () Bool)

(assert (= bs!421835 (and d!625274 d!625230)))

(assert (=> bs!421835 (= lambda!76686 lambda!76673)))

(declare-fun bs!421836 () Bool)

(assert (= bs!421836 (and d!625274 d!625080)))

(assert (=> bs!421836 (= lambda!76686 lambda!76647)))

(declare-fun bs!421837 () Bool)

(assert (= bs!421837 (and d!625274 d!625170)))

(assert (=> bs!421837 (= lambda!76686 lambda!76664)))

(declare-fun bs!421838 () Bool)

(assert (= bs!421838 (and d!625274 d!625116)))

(assert (=> bs!421838 (= lambda!76686 lambda!76657)))

(declare-fun bs!421839 () Bool)

(assert (= bs!421839 (and d!625274 d!625104)))

(assert (=> bs!421839 (= lambda!76686 lambda!76655)))

(declare-fun bs!421840 () Bool)

(assert (= bs!421840 (and d!625274 d!625102)))

(assert (=> bs!421840 (= lambda!76686 lambda!76654)))

(declare-fun bs!421841 () Bool)

(assert (= bs!421841 (and d!625274 d!625154)))

(assert (=> bs!421841 (= lambda!76686 lambda!76660)))

(declare-fun bs!421842 () Bool)

(assert (= bs!421842 (and d!625274 d!625242)))

(assert (=> bs!421842 (= lambda!76686 lambda!76678)))

(declare-fun bs!421843 () Bool)

(assert (= bs!421843 (and d!625274 d!625270)))

(assert (=> bs!421843 (= lambda!76686 lambda!76684)))

(declare-fun bs!421844 () Bool)

(assert (= bs!421844 (and d!625274 d!625096)))

(assert (=> bs!421844 (= lambda!76686 lambda!76652)))

(declare-fun bs!421845 () Bool)

(assert (= bs!421845 (and d!625274 d!625194)))

(assert (=> bs!421845 (= lambda!76686 lambda!76668)))

(declare-fun bs!421846 () Bool)

(assert (= bs!421846 (and d!625274 d!625172)))

(assert (=> bs!421846 (= lambda!76686 lambda!76665)))

(declare-fun bs!421847 () Bool)

(assert (= bs!421847 (and d!625274 d!625272)))

(assert (=> bs!421847 (= lambda!76686 lambda!76685)))

(declare-fun bs!421848 () Bool)

(assert (= bs!421848 (and d!625274 d!625106)))

(assert (=> bs!421848 (= lambda!76686 lambda!76656)))

(declare-fun bs!421849 () Bool)

(assert (= bs!421849 (and d!625274 d!625228)))

(assert (=> bs!421849 (= lambda!76686 lambda!76672)))

(declare-fun bs!421850 () Bool)

(assert (= bs!421850 (and d!625274 d!625190)))

(assert (=> bs!421850 (= lambda!76686 lambda!76667)))

(declare-fun bs!421851 () Bool)

(assert (= bs!421851 (and d!625274 d!625150)))

(assert (=> bs!421851 (= lambda!76686 lambda!76659)))

(declare-fun bs!421852 () Bool)

(assert (= bs!421852 (and d!625274 d!625174)))

(assert (=> bs!421852 (= lambda!76686 lambda!76666)))

(declare-fun bs!421853 () Bool)

(assert (= bs!421853 (and d!625274 d!625100)))

(assert (=> bs!421853 (= lambda!76686 lambda!76653)))

(declare-fun bs!421854 () Bool)

(assert (= bs!421854 (and d!625274 d!625260)))

(assert (=> bs!421854 (= lambda!76686 lambda!76680)))

(declare-fun bs!421855 () Bool)

(assert (= bs!421855 (and d!625274 d!625146)))

(assert (=> bs!421855 (= lambda!76686 lambda!76658)))

(declare-fun bs!421856 () Bool)

(assert (= bs!421856 (and d!625274 d!625234)))

(assert (=> bs!421856 (= lambda!76686 lambda!76674)))

(assert (=> d!625274 (= (inv!29648 (_2!11952 (_1!11953 (h!27705 (zeroValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575)))))))))) (forall!4762 (exprs!1499 (_2!11952 (_1!11953 (h!27705 (zeroValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575)))))))))) lambda!76686))))

(declare-fun bs!421857 () Bool)

(assert (= bs!421857 d!625274))

(declare-fun m!2485623 () Bool)

(assert (=> bs!421857 m!2485623))

(assert (=> b!2040960 d!625274))

(declare-fun d!625276 () Bool)

(declare-fun e!1288916 () Bool)

(assert (=> d!625276 e!1288916))

(declare-fun res!894801 () Bool)

(assert (=> d!625276 (=> (not res!894801) (not e!1288916))))

(assert (=> d!625276 (= res!894801 (isBalanced!2355 (prepend!908 (c!330712 (_1!11954 lt!765616)) (_1!11957 (v!27041 lt!765617)))))))

(declare-fun lt!765736 () BalanceConc!14726)

(assert (=> d!625276 (= lt!765736 (BalanceConc!14727 (prepend!908 (c!330712 (_1!11954 lt!765616)) (_1!11957 (v!27041 lt!765617)))))))

(assert (=> d!625276 (= (prepend!907 (_1!11954 lt!765616) (_1!11957 (v!27041 lt!765617))) lt!765736)))

(declare-fun b!2041487 () Bool)

(assert (=> b!2041487 (= e!1288916 (= (list!9150 lt!765736) (Cons!22308 (_1!11957 (v!27041 lt!765617)) (list!9150 (_1!11954 lt!765616)))))))

(assert (= (and d!625276 res!894801) b!2041487))

(declare-fun m!2485625 () Bool)

(assert (=> d!625276 m!2485625))

(assert (=> d!625276 m!2485625))

(declare-fun m!2485627 () Bool)

(assert (=> d!625276 m!2485627))

(declare-fun m!2485629 () Bool)

(assert (=> b!2041487 m!2485629))

(declare-fun m!2485631 () Bool)

(assert (=> b!2041487 m!2485631))

(assert (=> b!2040880 d!625276))

(declare-fun b!2041488 () Bool)

(declare-fun e!1288918 () Bool)

(declare-fun lt!765739 () tuple2!20962)

(assert (=> b!2041488 (= e!1288918 (= (list!9151 (_2!11954 lt!765739)) (list!9151 (_2!11957 (v!27041 lt!765617)))))))

(declare-fun d!625278 () Bool)

(declare-fun e!1288920 () Bool)

(assert (=> d!625278 e!1288920))

(declare-fun res!894803 () Bool)

(assert (=> d!625278 (=> (not res!894803) (not e!1288920))))

(assert (=> d!625278 (= res!894803 e!1288918)))

(declare-fun c!330846 () Bool)

(assert (=> d!625278 (= c!330846 (> (size!17456 (_1!11954 lt!765739)) 0))))

(declare-fun e!1288919 () tuple2!20962)

(assert (=> d!625278 (= lt!765739 e!1288919)))

(declare-fun c!330847 () Bool)

(declare-fun lt!765738 () Option!4687)

(assert (=> d!625278 (= c!330847 ((_ is Some!4686) lt!765738))))

(assert (=> d!625278 (= lt!765738 (maxPrefixZipperSequence!786 thiss!12889 rules!1563 (_2!11957 (v!27041 lt!765617))))))

(assert (=> d!625278 (= (lexRec!421 thiss!12889 rules!1563 (_2!11957 (v!27041 lt!765617))) lt!765739)))

(declare-fun b!2041489 () Bool)

(declare-fun e!1288917 () Bool)

(assert (=> b!2041489 (= e!1288918 e!1288917)))

(declare-fun res!894802 () Bool)

(assert (=> b!2041489 (= res!894802 (< (size!17457 (_2!11954 lt!765739)) (size!17457 (_2!11957 (v!27041 lt!765617)))))))

(assert (=> b!2041489 (=> (not res!894802) (not e!1288917))))

(declare-fun b!2041490 () Bool)

(declare-fun res!894804 () Bool)

(assert (=> b!2041490 (=> (not res!894804) (not e!1288920))))

(assert (=> b!2041490 (= res!894804 (= (list!9150 (_1!11954 lt!765739)) (_1!11958 (lexList!986 thiss!12889 rules!1563 (list!9151 (_2!11957 (v!27041 lt!765617)))))))))

(declare-fun b!2041491 () Bool)

(assert (=> b!2041491 (= e!1288920 (= (list!9151 (_2!11954 lt!765739)) (_2!11958 (lexList!986 thiss!12889 rules!1563 (list!9151 (_2!11957 (v!27041 lt!765617)))))))))

(declare-fun b!2041492 () Bool)

(assert (=> b!2041492 (= e!1288919 (tuple2!20963 (BalanceConc!14727 Empty!7482) (_2!11957 (v!27041 lt!765617))))))

(declare-fun b!2041493 () Bool)

(declare-fun lt!765737 () tuple2!20962)

(assert (=> b!2041493 (= e!1288919 (tuple2!20963 (prepend!907 (_1!11954 lt!765737) (_1!11957 (v!27041 lt!765738))) (_2!11954 lt!765737)))))

(assert (=> b!2041493 (= lt!765737 (lexRec!421 thiss!12889 rules!1563 (_2!11957 (v!27041 lt!765738))))))

(declare-fun b!2041494 () Bool)

(assert (=> b!2041494 (= e!1288917 (not (isEmpty!13947 (_1!11954 lt!765739))))))

(assert (= (and d!625278 c!330847) b!2041493))

(assert (= (and d!625278 (not c!330847)) b!2041492))

(assert (= (and d!625278 c!330846) b!2041489))

(assert (= (and d!625278 (not c!330846)) b!2041488))

(assert (= (and b!2041489 res!894802) b!2041494))

(assert (= (and d!625278 res!894803) b!2041490))

(assert (= (and b!2041490 res!894804) b!2041491))

(declare-fun m!2485633 () Bool)

(assert (=> b!2041489 m!2485633))

(declare-fun m!2485635 () Bool)

(assert (=> b!2041489 m!2485635))

(declare-fun m!2485637 () Bool)

(assert (=> b!2041491 m!2485637))

(declare-fun m!2485639 () Bool)

(assert (=> b!2041491 m!2485639))

(assert (=> b!2041491 m!2485639))

(declare-fun m!2485641 () Bool)

(assert (=> b!2041491 m!2485641))

(declare-fun m!2485643 () Bool)

(assert (=> b!2041493 m!2485643))

(declare-fun m!2485645 () Bool)

(assert (=> b!2041493 m!2485645))

(declare-fun m!2485647 () Bool)

(assert (=> b!2041490 m!2485647))

(assert (=> b!2041490 m!2485639))

(assert (=> b!2041490 m!2485639))

(assert (=> b!2041490 m!2485641))

(declare-fun m!2485649 () Bool)

(assert (=> b!2041494 m!2485649))

(declare-fun m!2485651 () Bool)

(assert (=> d!625278 m!2485651))

(declare-fun m!2485653 () Bool)

(assert (=> d!625278 m!2485653))

(assert (=> b!2041488 m!2485637))

(assert (=> b!2041488 m!2485639))

(assert (=> b!2040880 d!625278))

(declare-fun d!625280 () Bool)

(declare-fun lt!765740 () Bool)

(assert (=> d!625280 (= lt!765740 (isEmpty!13948 (list!9150 (_1!11954 lt!765621))))))

(assert (=> d!625280 (= lt!765740 (isEmpty!13950 (c!330712 (_1!11954 lt!765621))))))

(assert (=> d!625280 (= (isEmpty!13947 (_1!11954 lt!765621)) lt!765740)))

(declare-fun bs!421858 () Bool)

(assert (= bs!421858 d!625280))

(assert (=> bs!421858 m!2484889))

(assert (=> bs!421858 m!2484889))

(declare-fun m!2485655 () Bool)

(assert (=> bs!421858 m!2485655))

(declare-fun m!2485657 () Bool)

(assert (=> bs!421858 m!2485657))

(assert (=> b!2040888 d!625280))

(declare-fun d!625282 () Bool)

(declare-fun res!894809 () Bool)

(declare-fun e!1288925 () Bool)

(assert (=> d!625282 (=> res!894809 e!1288925)))

(assert (=> d!625282 (= res!894809 ((_ is Nil!22307) rules!1563))))

(assert (=> d!625282 (= (noDuplicateTag!1499 thiss!12889 rules!1563 Nil!22310) e!1288925)))

(declare-fun b!2041499 () Bool)

(declare-fun e!1288926 () Bool)

(assert (=> b!2041499 (= e!1288925 e!1288926)))

(declare-fun res!894810 () Bool)

(assert (=> b!2041499 (=> (not res!894810) (not e!1288926))))

(declare-fun contains!4113 (List!22394 String!25883) Bool)

(assert (=> b!2041499 (= res!894810 (not (contains!4113 Nil!22310 (tag!4493 (h!27708 rules!1563)))))))

(declare-fun b!2041500 () Bool)

(assert (=> b!2041500 (= e!1288926 (noDuplicateTag!1499 thiss!12889 (t!191500 rules!1563) (Cons!22310 (tag!4493 (h!27708 rules!1563)) Nil!22310)))))

(assert (= (and d!625282 (not res!894809)) b!2041499))

(assert (= (and b!2041499 res!894810) b!2041500))

(declare-fun m!2485659 () Bool)

(assert (=> b!2041499 m!2485659))

(declare-fun m!2485661 () Bool)

(assert (=> b!2041500 m!2485661))

(assert (=> b!2040827 d!625282))

(declare-fun d!625284 () Bool)

(declare-fun res!894811 () Bool)

(declare-fun e!1288927 () Bool)

(assert (=> d!625284 (=> (not res!894811) (not e!1288927))))

(assert (=> d!625284 (= res!894811 (= (csize!15192 (c!330711 input!986)) (+ (size!17458 (left!17758 (c!330711 input!986))) (size!17458 (right!18088 (c!330711 input!986))))))))

(assert (=> d!625284 (= (inv!29644 (c!330711 input!986)) e!1288927)))

(declare-fun b!2041501 () Bool)

(declare-fun res!894812 () Bool)

(assert (=> b!2041501 (=> (not res!894812) (not e!1288927))))

(assert (=> b!2041501 (= res!894812 (and (not (= (left!17758 (c!330711 input!986)) Empty!7481)) (not (= (right!18088 (c!330711 input!986)) Empty!7481))))))

(declare-fun b!2041502 () Bool)

(declare-fun res!894813 () Bool)

(assert (=> b!2041502 (=> (not res!894813) (not e!1288927))))

(assert (=> b!2041502 (= res!894813 (= (cheight!7692 (c!330711 input!986)) (+ (max!0 (height!1175 (left!17758 (c!330711 input!986))) (height!1175 (right!18088 (c!330711 input!986)))) 1)))))

(declare-fun b!2041503 () Bool)

(assert (=> b!2041503 (= e!1288927 (<= 0 (cheight!7692 (c!330711 input!986))))))

(assert (= (and d!625284 res!894811) b!2041501))

(assert (= (and b!2041501 res!894812) b!2041502))

(assert (= (and b!2041502 res!894813) b!2041503))

(declare-fun m!2485663 () Bool)

(assert (=> d!625284 m!2485663))

(declare-fun m!2485665 () Bool)

(assert (=> d!625284 m!2485665))

(assert (=> b!2041502 m!2485269))

(assert (=> b!2041502 m!2485271))

(assert (=> b!2041502 m!2485269))

(assert (=> b!2041502 m!2485271))

(declare-fun m!2485667 () Bool)

(assert (=> b!2041502 m!2485667))

(assert (=> b!2040822 d!625284))

(declare-fun d!625286 () Bool)

(declare-fun c!330848 () Bool)

(assert (=> d!625286 (= c!330848 ((_ is Empty!7481) (c!330711 (_2!11954 lt!765590))))))

(declare-fun e!1288928 () List!22390)

(assert (=> d!625286 (= (list!9152 (c!330711 (_2!11954 lt!765590))) e!1288928)))

(declare-fun b!2041507 () Bool)

(declare-fun e!1288929 () List!22390)

(assert (=> b!2041507 (= e!1288929 (++!6061 (list!9152 (left!17758 (c!330711 (_2!11954 lt!765590)))) (list!9152 (right!18088 (c!330711 (_2!11954 lt!765590))))))))

(declare-fun b!2041504 () Bool)

(assert (=> b!2041504 (= e!1288928 Nil!22306)))

(declare-fun b!2041505 () Bool)

(assert (=> b!2041505 (= e!1288928 e!1288929)))

(declare-fun c!330849 () Bool)

(assert (=> b!2041505 (= c!330849 ((_ is Leaf!10963) (c!330711 (_2!11954 lt!765590))))))

(declare-fun b!2041506 () Bool)

(assert (=> b!2041506 (= e!1288929 (list!9155 (xs!10387 (c!330711 (_2!11954 lt!765590)))))))

(assert (= (and d!625286 c!330848) b!2041504))

(assert (= (and d!625286 (not c!330848)) b!2041505))

(assert (= (and b!2041505 c!330849) b!2041506))

(assert (= (and b!2041505 (not c!330849)) b!2041507))

(declare-fun m!2485669 () Bool)

(assert (=> b!2041507 m!2485669))

(declare-fun m!2485671 () Bool)

(assert (=> b!2041507 m!2485671))

(assert (=> b!2041507 m!2485669))

(assert (=> b!2041507 m!2485671))

(declare-fun m!2485673 () Bool)

(assert (=> b!2041507 m!2485673))

(declare-fun m!2485675 () Bool)

(assert (=> b!2041506 m!2485675))

(assert (=> d!625032 d!625286))

(assert (=> b!2040901 d!625064))

(assert (=> b!2040901 d!624992))

(declare-fun d!625288 () Bool)

(assert (=> d!625288 (= (inv!29636 (tag!4493 (h!27708 (t!191500 rules!1563)))) (= (mod (str.len (value!125735 (tag!4493 (h!27708 (t!191500 rules!1563))))) 2) 0))))

(assert (=> b!2040999 d!625288))

(declare-fun d!625290 () Bool)

(declare-fun res!894814 () Bool)

(declare-fun e!1288930 () Bool)

(assert (=> d!625290 (=> (not res!894814) (not e!1288930))))

(assert (=> d!625290 (= res!894814 (semiInverseModEq!1614 (toChars!5543 (transformation!4003 (h!27708 (t!191500 rules!1563)))) (toValue!5684 (transformation!4003 (h!27708 (t!191500 rules!1563))))))))

(assert (=> d!625290 (= (inv!29637 (transformation!4003 (h!27708 (t!191500 rules!1563)))) e!1288930)))

(declare-fun b!2041508 () Bool)

(assert (=> b!2041508 (= e!1288930 (equivClasses!1541 (toChars!5543 (transformation!4003 (h!27708 (t!191500 rules!1563)))) (toValue!5684 (transformation!4003 (h!27708 (t!191500 rules!1563))))))))

(assert (= (and d!625290 res!894814) b!2041508))

(declare-fun m!2485677 () Bool)

(assert (=> d!625290 m!2485677))

(declare-fun m!2485679 () Bool)

(assert (=> b!2041508 m!2485679))

(assert (=> b!2040999 d!625290))

(declare-fun d!625292 () Bool)

(declare-fun e!1288931 () Bool)

(assert (=> d!625292 e!1288931))

(declare-fun res!894815 () Bool)

(assert (=> d!625292 (=> res!894815 e!1288931)))

(declare-fun lt!765741 () Bool)

(assert (=> d!625292 (= res!894815 (not lt!765741))))

(assert (=> d!625292 (= lt!765741 (= lt!765594 (drop!1124 (++!6061 lt!765591 lt!765594) (- (size!17455 (++!6061 lt!765591 lt!765594)) (size!17455 lt!765594)))))))

(assert (=> d!625292 (= (isSuffix!466 lt!765594 (++!6061 lt!765591 lt!765594)) lt!765741)))

(declare-fun b!2041509 () Bool)

(assert (=> b!2041509 (= e!1288931 (>= (size!17455 (++!6061 lt!765591 lt!765594)) (size!17455 lt!765594)))))

(assert (= (and d!625292 (not res!894815)) b!2041509))

(assert (=> d!625292 m!2484741))

(declare-fun m!2485681 () Bool)

(assert (=> d!625292 m!2485681))

(assert (=> d!625292 m!2484791))

(assert (=> d!625292 m!2484741))

(declare-fun m!2485683 () Bool)

(assert (=> d!625292 m!2485683))

(assert (=> b!2041509 m!2484741))

(assert (=> b!2041509 m!2485681))

(assert (=> b!2041509 m!2484791))

(assert (=> d!625016 d!625292))

(assert (=> d!625016 d!624986))

(declare-fun d!625294 () Bool)

(assert (=> d!625294 (isSuffix!466 lt!765594 (++!6061 lt!765591 lt!765594))))

(assert (=> d!625294 true))

(declare-fun _$47!768 () Unit!36991)

(assert (=> d!625294 (= (choose!12459 lt!765591 lt!765594) _$47!768)))

(declare-fun bs!421859 () Bool)

(assert (= bs!421859 d!625294))

(assert (=> bs!421859 m!2484741))

(assert (=> bs!421859 m!2484741))

(assert (=> bs!421859 m!2484833))

(assert (=> d!625016 d!625294))

(declare-fun d!625296 () Bool)

(assert (=> d!625296 (= (inv!29649 (xs!10387 (c!330711 input!986))) (<= (size!17455 (innerList!7541 (xs!10387 (c!330711 input!986)))) 2147483647))))

(declare-fun bs!421860 () Bool)

(assert (= bs!421860 d!625296))

(declare-fun m!2485685 () Bool)

(assert (=> bs!421860 m!2485685))

(assert (=> b!2040945 d!625296))

(declare-fun d!625298 () Bool)

(declare-fun c!330850 () Bool)

(assert (=> d!625298 (= c!330850 ((_ is Node!7481) (left!17758 (c!330711 treated!60))))))

(declare-fun e!1288932 () Bool)

(assert (=> d!625298 (= (inv!29638 (left!17758 (c!330711 treated!60))) e!1288932)))

(declare-fun b!2041510 () Bool)

(assert (=> b!2041510 (= e!1288932 (inv!29644 (left!17758 (c!330711 treated!60))))))

(declare-fun b!2041511 () Bool)

(declare-fun e!1288933 () Bool)

(assert (=> b!2041511 (= e!1288932 e!1288933)))

(declare-fun res!894816 () Bool)

(assert (=> b!2041511 (= res!894816 (not ((_ is Leaf!10963) (left!17758 (c!330711 treated!60)))))))

(assert (=> b!2041511 (=> res!894816 e!1288933)))

(declare-fun b!2041512 () Bool)

(assert (=> b!2041512 (= e!1288933 (inv!29645 (left!17758 (c!330711 treated!60))))))

(assert (= (and d!625298 c!330850) b!2041510))

(assert (= (and d!625298 (not c!330850)) b!2041511))

(assert (= (and b!2041511 (not res!894816)) b!2041512))

(declare-fun m!2485687 () Bool)

(assert (=> b!2041510 m!2485687))

(declare-fun m!2485689 () Bool)

(assert (=> b!2041512 m!2485689))

(assert (=> b!2041015 d!625298))

(declare-fun d!625300 () Bool)

(declare-fun c!330851 () Bool)

(assert (=> d!625300 (= c!330851 ((_ is Node!7481) (right!18088 (c!330711 treated!60))))))

(declare-fun e!1288934 () Bool)

(assert (=> d!625300 (= (inv!29638 (right!18088 (c!330711 treated!60))) e!1288934)))

(declare-fun b!2041513 () Bool)

(assert (=> b!2041513 (= e!1288934 (inv!29644 (right!18088 (c!330711 treated!60))))))

(declare-fun b!2041514 () Bool)

(declare-fun e!1288935 () Bool)

(assert (=> b!2041514 (= e!1288934 e!1288935)))

(declare-fun res!894817 () Bool)

(assert (=> b!2041514 (= res!894817 (not ((_ is Leaf!10963) (right!18088 (c!330711 treated!60)))))))

(assert (=> b!2041514 (=> res!894817 e!1288935)))

(declare-fun b!2041515 () Bool)

(assert (=> b!2041515 (= e!1288935 (inv!29645 (right!18088 (c!330711 treated!60))))))

(assert (= (and d!625300 c!330851) b!2041513))

(assert (= (and d!625300 (not c!330851)) b!2041514))

(assert (= (and b!2041514 (not res!894817)) b!2041515))

(declare-fun m!2485691 () Bool)

(assert (=> b!2041513 m!2485691))

(declare-fun m!2485693 () Bool)

(assert (=> b!2041515 m!2485693))

(assert (=> b!2041015 d!625300))

(declare-fun b!2041517 () Bool)

(declare-fun e!1288936 () Bool)

(declare-fun tp!605842 () Bool)

(declare-fun tp!605844 () Bool)

(assert (=> b!2041517 (= e!1288936 (and tp!605842 tp!605844))))

(declare-fun b!2041518 () Bool)

(declare-fun tp!605843 () Bool)

(assert (=> b!2041518 (= e!1288936 tp!605843)))

(declare-fun b!2041519 () Bool)

(declare-fun tp!605846 () Bool)

(declare-fun tp!605845 () Bool)

(assert (=> b!2041519 (= e!1288936 (and tp!605846 tp!605845))))

(assert (=> b!2041035 (= tp!605828 e!1288936)))

(declare-fun b!2041516 () Bool)

(assert (=> b!2041516 (= e!1288936 tp_is_empty!9291)))

(assert (= (and b!2041035 ((_ is ElementMatch!5429) (_1!11952 (_1!11953 (h!27705 mapValue!9143))))) b!2041516))

(assert (= (and b!2041035 ((_ is Concat!9568) (_1!11952 (_1!11953 (h!27705 mapValue!9143))))) b!2041517))

(assert (= (and b!2041035 ((_ is Star!5429) (_1!11952 (_1!11953 (h!27705 mapValue!9143))))) b!2041518))

(assert (= (and b!2041035 ((_ is Union!5429) (_1!11952 (_1!11953 (h!27705 mapValue!9143))))) b!2041519))

(declare-fun b!2041520 () Bool)

(declare-fun e!1288939 () Bool)

(declare-fun tp!605851 () Bool)

(assert (=> b!2041520 (= e!1288939 tp!605851)))

(declare-fun b!2041521 () Bool)

(declare-fun e!1288937 () Bool)

(declare-fun tp!605848 () Bool)

(assert (=> b!2041521 (= e!1288937 tp!605848)))

(declare-fun setIsEmpty!11756 () Bool)

(declare-fun setRes!11756 () Bool)

(assert (=> setIsEmpty!11756 setRes!11756))

(declare-fun e!1288938 () Bool)

(declare-fun tp!605850 () Bool)

(declare-fun tp!605847 () Bool)

(declare-fun b!2041522 () Bool)

(assert (=> b!2041522 (= e!1288938 (and tp!605850 (inv!29648 (_2!11952 (_1!11953 (h!27705 (t!191497 mapValue!9143))))) e!1288937 tp_is_empty!9291 setRes!11756 tp!605847))))

(declare-fun condSetEmpty!11756 () Bool)

(assert (=> b!2041522 (= condSetEmpty!11756 (= (_2!11953 (h!27705 (t!191497 mapValue!9143))) ((as const (Array Context!1998 Bool)) false)))))

(assert (=> b!2041035 (= tp!605833 e!1288938)))

(declare-fun setElem!11756 () Context!1998)

(declare-fun tp!605849 () Bool)

(declare-fun setNonEmpty!11756 () Bool)

(assert (=> setNonEmpty!11756 (= setRes!11756 (and tp!605849 (inv!29648 setElem!11756) e!1288939))))

(declare-fun setRest!11756 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11756 (= (_2!11953 (h!27705 (t!191497 mapValue!9143))) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11756 true) setRest!11756))))

(assert (= b!2041522 b!2041521))

(assert (= (and b!2041522 condSetEmpty!11756) setIsEmpty!11756))

(assert (= (and b!2041522 (not condSetEmpty!11756)) setNonEmpty!11756))

(assert (= setNonEmpty!11756 b!2041520))

(assert (= (and b!2041035 ((_ is Cons!22304) (t!191497 mapValue!9143))) b!2041522))

(declare-fun m!2485695 () Bool)

(assert (=> b!2041522 m!2485695))

(declare-fun m!2485697 () Bool)

(assert (=> setNonEmpty!11756 m!2485697))

(declare-fun setNonEmpty!11757 () Bool)

(declare-fun e!1288940 () Bool)

(declare-fun tp!605861 () Bool)

(declare-fun setElem!11758 () Context!1998)

(declare-fun setRes!11758 () Bool)

(assert (=> setNonEmpty!11757 (= setRes!11758 (and tp!605861 (inv!29648 setElem!11758) e!1288940))))

(declare-fun mapDefault!9144 () List!22388)

(declare-fun setRest!11757 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11757 (= (_2!11953 (h!27705 mapDefault!9144)) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11758 true) setRest!11757))))

(declare-fun b!2041523 () Bool)

(declare-fun e!1288945 () Bool)

(declare-fun tp!605857 () Bool)

(assert (=> b!2041523 (= e!1288945 tp!605857)))

(declare-fun condMapEmpty!9144 () Bool)

(assert (=> mapNonEmpty!9143 (= condMapEmpty!9144 (= mapRest!9143 ((as const (Array (_ BitVec 32) List!22388)) mapDefault!9144)))))

(declare-fun e!1288943 () Bool)

(declare-fun mapRes!9144 () Bool)

(assert (=> mapNonEmpty!9143 (= tp!605832 (and e!1288943 mapRes!9144))))

(declare-fun b!2041524 () Bool)

(declare-fun tp!605855 () Bool)

(assert (=> b!2041524 (= e!1288940 tp!605855)))

(declare-fun mapNonEmpty!9144 () Bool)

(declare-fun tp!605858 () Bool)

(declare-fun e!1288944 () Bool)

(assert (=> mapNonEmpty!9144 (= mapRes!9144 (and tp!605858 e!1288944))))

(declare-fun mapValue!9144 () List!22388)

(declare-fun mapKey!9144 () (_ BitVec 32))

(declare-fun mapRest!9144 () (Array (_ BitVec 32) List!22388))

(assert (=> mapNonEmpty!9144 (= mapRest!9143 (store mapRest!9144 mapKey!9144 mapValue!9144))))

(declare-fun b!2041525 () Bool)

(declare-fun e!1288942 () Bool)

(declare-fun tp!605860 () Bool)

(assert (=> b!2041525 (= e!1288942 tp!605860)))

(declare-fun setRes!11757 () Bool)

(declare-fun b!2041526 () Bool)

(declare-fun tp!605854 () Bool)

(declare-fun tp!605859 () Bool)

(assert (=> b!2041526 (= e!1288944 (and tp!605854 (inv!29648 (_2!11952 (_1!11953 (h!27705 mapValue!9144)))) e!1288942 tp_is_empty!9291 setRes!11757 tp!605859))))

(declare-fun condSetEmpty!11757 () Bool)

(assert (=> b!2041526 (= condSetEmpty!11757 (= (_2!11953 (h!27705 mapValue!9144)) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun setIsEmpty!11757 () Bool)

(assert (=> setIsEmpty!11757 setRes!11757))

(declare-fun setIsEmpty!11758 () Bool)

(assert (=> setIsEmpty!11758 setRes!11758))

(declare-fun tp!605852 () Bool)

(declare-fun setElem!11757 () Context!1998)

(declare-fun setNonEmpty!11758 () Bool)

(assert (=> setNonEmpty!11758 (= setRes!11757 (and tp!605852 (inv!29648 setElem!11757) e!1288945))))

(declare-fun setRest!11758 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11758 (= (_2!11953 (h!27705 mapValue!9144)) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11757 true) setRest!11758))))

(declare-fun mapIsEmpty!9144 () Bool)

(assert (=> mapIsEmpty!9144 mapRes!9144))

(declare-fun tp!605853 () Bool)

(declare-fun e!1288941 () Bool)

(declare-fun b!2041527 () Bool)

(declare-fun tp!605862 () Bool)

(assert (=> b!2041527 (= e!1288943 (and tp!605853 (inv!29648 (_2!11952 (_1!11953 (h!27705 mapDefault!9144)))) e!1288941 tp_is_empty!9291 setRes!11758 tp!605862))))

(declare-fun condSetEmpty!11758 () Bool)

(assert (=> b!2041527 (= condSetEmpty!11758 (= (_2!11953 (h!27705 mapDefault!9144)) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun b!2041528 () Bool)

(declare-fun tp!605856 () Bool)

(assert (=> b!2041528 (= e!1288941 tp!605856)))

(assert (= (and mapNonEmpty!9143 condMapEmpty!9144) mapIsEmpty!9144))

(assert (= (and mapNonEmpty!9143 (not condMapEmpty!9144)) mapNonEmpty!9144))

(assert (= b!2041526 b!2041525))

(assert (= (and b!2041526 condSetEmpty!11757) setIsEmpty!11757))

(assert (= (and b!2041526 (not condSetEmpty!11757)) setNonEmpty!11758))

(assert (= setNonEmpty!11758 b!2041523))

(assert (= (and mapNonEmpty!9144 ((_ is Cons!22304) mapValue!9144)) b!2041526))

(assert (= b!2041527 b!2041528))

(assert (= (and b!2041527 condSetEmpty!11758) setIsEmpty!11758))

(assert (= (and b!2041527 (not condSetEmpty!11758)) setNonEmpty!11757))

(assert (= setNonEmpty!11757 b!2041524))

(assert (= (and mapNonEmpty!9143 ((_ is Cons!22304) mapDefault!9144)) b!2041527))

(declare-fun m!2485699 () Bool)

(assert (=> setNonEmpty!11757 m!2485699))

(declare-fun m!2485701 () Bool)

(assert (=> b!2041526 m!2485701))

(declare-fun m!2485703 () Bool)

(assert (=> b!2041527 m!2485703))

(declare-fun m!2485705 () Bool)

(assert (=> setNonEmpty!11758 m!2485705))

(declare-fun m!2485707 () Bool)

(assert (=> mapNonEmpty!9144 m!2485707))

(declare-fun b!2041533 () Bool)

(declare-fun e!1288948 () Bool)

(declare-fun tp!605867 () Bool)

(declare-fun tp!605868 () Bool)

(assert (=> b!2041533 (= e!1288948 (and tp!605867 tp!605868))))

(assert (=> b!2041037 (= tp!605830 e!1288948)))

(assert (= (and b!2041037 ((_ is Cons!22303) (exprs!1499 (_2!11952 (_1!11953 (h!27705 mapDefault!9143)))))) b!2041533))

(declare-fun b!2041534 () Bool)

(declare-fun e!1288949 () Bool)

(declare-fun tp!605869 () Bool)

(declare-fun tp!605870 () Bool)

(assert (=> b!2041534 (= e!1288949 (and tp!605869 tp!605870))))

(assert (=> b!2040931 (= tp!605704 e!1288949)))

(assert (= (and b!2040931 ((_ is Cons!22303) (exprs!1499 (_2!11952 (_1!11953 (h!27705 mapDefault!9137)))))) b!2041534))

(declare-fun b!2041535 () Bool)

(declare-fun e!1288950 () Bool)

(declare-fun tp!605871 () Bool)

(declare-fun tp!605872 () Bool)

(assert (=> b!2041535 (= e!1288950 (and tp!605871 tp!605872))))

(assert (=> b!2040962 (= tp!605735 e!1288950)))

(assert (= (and b!2040962 ((_ is Cons!22303) (exprs!1499 (_2!11952 (_1!11953 (h!27705 (minValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575)))))))))))) b!2041535))

(declare-fun b!2041536 () Bool)

(declare-fun e!1288952 () Bool)

(declare-fun tp!605874 () Bool)

(assert (=> b!2041536 (= e!1288952 tp!605874)))

(declare-fun e!1288953 () Bool)

(assert (=> b!2040965 (= tp!605741 e!1288953)))

(declare-fun tp!605876 () Bool)

(declare-fun setElem!11759 () Context!1998)

(declare-fun setNonEmpty!11759 () Bool)

(declare-fun setRes!11759 () Bool)

(assert (=> setNonEmpty!11759 (= setRes!11759 (and tp!605876 (inv!29648 setElem!11759) e!1288952))))

(declare-fun setRest!11759 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11759 (= (_2!11956 (h!27710 (t!191502 mapDefault!9136))) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11759 true) setRest!11759))))

(declare-fun b!2041537 () Bool)

(declare-fun e!1288951 () Bool)

(declare-fun tp!605875 () Bool)

(assert (=> b!2041537 (= e!1288953 (and (inv!29648 (_1!11955 (_1!11956 (h!27710 (t!191502 mapDefault!9136))))) e!1288951 tp_is_empty!9291 setRes!11759 tp!605875))))

(declare-fun condSetEmpty!11759 () Bool)

(assert (=> b!2041537 (= condSetEmpty!11759 (= (_2!11956 (h!27710 (t!191502 mapDefault!9136))) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun b!2041538 () Bool)

(declare-fun tp!605873 () Bool)

(assert (=> b!2041538 (= e!1288951 tp!605873)))

(declare-fun setIsEmpty!11759 () Bool)

(assert (=> setIsEmpty!11759 setRes!11759))

(assert (= b!2041537 b!2041538))

(assert (= (and b!2041537 condSetEmpty!11759) setIsEmpty!11759))

(assert (= (and b!2041537 (not condSetEmpty!11759)) setNonEmpty!11759))

(assert (= setNonEmpty!11759 b!2041536))

(assert (= (and b!2040965 ((_ is Cons!22309) (t!191502 mapDefault!9136))) b!2041537))

(declare-fun m!2485709 () Bool)

(assert (=> setNonEmpty!11759 m!2485709))

(declare-fun m!2485711 () Bool)

(assert (=> b!2041537 m!2485711))

(declare-fun b!2041540 () Bool)

(declare-fun e!1288954 () Bool)

(declare-fun tp!605877 () Bool)

(declare-fun tp!605879 () Bool)

(assert (=> b!2041540 (= e!1288954 (and tp!605877 tp!605879))))

(declare-fun b!2041541 () Bool)

(declare-fun tp!605878 () Bool)

(assert (=> b!2041541 (= e!1288954 tp!605878)))

(declare-fun b!2041542 () Bool)

(declare-fun tp!605881 () Bool)

(declare-fun tp!605880 () Bool)

(assert (=> b!2041542 (= e!1288954 (and tp!605881 tp!605880))))

(assert (=> b!2041014 (= tp!605800 e!1288954)))

(declare-fun b!2041539 () Bool)

(assert (=> b!2041539 (= e!1288954 tp_is_empty!9291)))

(assert (= (and b!2041014 ((_ is ElementMatch!5429) (regOne!11371 (regex!4003 (h!27708 rules!1563))))) b!2041539))

(assert (= (and b!2041014 ((_ is Concat!9568) (regOne!11371 (regex!4003 (h!27708 rules!1563))))) b!2041540))

(assert (= (and b!2041014 ((_ is Star!5429) (regOne!11371 (regex!4003 (h!27708 rules!1563))))) b!2041541))

(assert (= (and b!2041014 ((_ is Union!5429) (regOne!11371 (regex!4003 (h!27708 rules!1563))))) b!2041542))

(declare-fun b!2041544 () Bool)

(declare-fun e!1288955 () Bool)

(declare-fun tp!605882 () Bool)

(declare-fun tp!605884 () Bool)

(assert (=> b!2041544 (= e!1288955 (and tp!605882 tp!605884))))

(declare-fun b!2041545 () Bool)

(declare-fun tp!605883 () Bool)

(assert (=> b!2041545 (= e!1288955 tp!605883)))

(declare-fun b!2041546 () Bool)

(declare-fun tp!605886 () Bool)

(declare-fun tp!605885 () Bool)

(assert (=> b!2041546 (= e!1288955 (and tp!605886 tp!605885))))

(assert (=> b!2041014 (= tp!605799 e!1288955)))

(declare-fun b!2041543 () Bool)

(assert (=> b!2041543 (= e!1288955 tp_is_empty!9291)))

(assert (= (and b!2041014 ((_ is ElementMatch!5429) (regTwo!11371 (regex!4003 (h!27708 rules!1563))))) b!2041543))

(assert (= (and b!2041014 ((_ is Concat!9568) (regTwo!11371 (regex!4003 (h!27708 rules!1563))))) b!2041544))

(assert (= (and b!2041014 ((_ is Star!5429) (regTwo!11371 (regex!4003 (h!27708 rules!1563))))) b!2041545))

(assert (= (and b!2041014 ((_ is Union!5429) (regTwo!11371 (regex!4003 (h!27708 rules!1563))))) b!2041546))

(declare-fun b!2041547 () Bool)

(declare-fun e!1288956 () Bool)

(declare-fun tp!605887 () Bool)

(declare-fun tp!605888 () Bool)

(assert (=> b!2041547 (= e!1288956 (and tp!605887 tp!605888))))

(assert (=> b!2040984 (= tp!605766 e!1288956)))

(assert (= (and b!2040984 ((_ is Cons!22303) (exprs!1499 (_1!11955 (_1!11956 (h!27710 mapValue!9140)))))) b!2041547))

(declare-fun b!2041548 () Bool)

(declare-fun e!1288958 () Bool)

(declare-fun tp!605890 () Bool)

(assert (=> b!2041548 (= e!1288958 tp!605890)))

(declare-fun e!1288959 () Bool)

(assert (=> b!2040982 (= tp!605764 e!1288959)))

(declare-fun setElem!11760 () Context!1998)

(declare-fun setNonEmpty!11760 () Bool)

(declare-fun tp!605892 () Bool)

(declare-fun setRes!11760 () Bool)

(assert (=> setNonEmpty!11760 (= setRes!11760 (and tp!605892 (inv!29648 setElem!11760) e!1288958))))

(declare-fun setRest!11760 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11760 (= (_2!11956 (h!27710 (t!191502 mapDefault!9140))) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11760 true) setRest!11760))))

(declare-fun tp!605891 () Bool)

(declare-fun e!1288957 () Bool)

(declare-fun b!2041549 () Bool)

(assert (=> b!2041549 (= e!1288959 (and (inv!29648 (_1!11955 (_1!11956 (h!27710 (t!191502 mapDefault!9140))))) e!1288957 tp_is_empty!9291 setRes!11760 tp!605891))))

(declare-fun condSetEmpty!11760 () Bool)

(assert (=> b!2041549 (= condSetEmpty!11760 (= (_2!11956 (h!27710 (t!191502 mapDefault!9140))) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun b!2041550 () Bool)

(declare-fun tp!605889 () Bool)

(assert (=> b!2041550 (= e!1288957 tp!605889)))

(declare-fun setIsEmpty!11760 () Bool)

(assert (=> setIsEmpty!11760 setRes!11760))

(assert (= b!2041549 b!2041550))

(assert (= (and b!2041549 condSetEmpty!11760) setIsEmpty!11760))

(assert (= (and b!2041549 (not condSetEmpty!11760)) setNonEmpty!11760))

(assert (= setNonEmpty!11760 b!2041548))

(assert (= (and b!2040982 ((_ is Cons!22309) (t!191502 mapDefault!9140))) b!2041549))

(declare-fun m!2485713 () Bool)

(assert (=> setNonEmpty!11760 m!2485713))

(declare-fun m!2485715 () Bool)

(assert (=> b!2041549 m!2485715))

(declare-fun b!2041551 () Bool)

(declare-fun e!1288960 () Bool)

(declare-fun tp!605893 () Bool)

(declare-fun tp!605894 () Bool)

(assert (=> b!2041551 (= e!1288960 (and tp!605893 tp!605894))))

(assert (=> b!2040964 (= tp!605740 e!1288960)))

(assert (= (and b!2040964 ((_ is Cons!22303) (exprs!1499 setElem!11741))) b!2041551))

(declare-fun b!2041553 () Bool)

(declare-fun e!1288961 () Bool)

(declare-fun tp!605895 () Bool)

(declare-fun tp!605897 () Bool)

(assert (=> b!2041553 (= e!1288961 (and tp!605895 tp!605897))))

(declare-fun b!2041554 () Bool)

(declare-fun tp!605896 () Bool)

(assert (=> b!2041554 (= e!1288961 tp!605896)))

(declare-fun b!2041555 () Bool)

(declare-fun tp!605899 () Bool)

(declare-fun tp!605898 () Bool)

(assert (=> b!2041555 (= e!1288961 (and tp!605899 tp!605898))))

(assert (=> b!2041012 (= tp!605796 e!1288961)))

(declare-fun b!2041552 () Bool)

(assert (=> b!2041552 (= e!1288961 tp_is_empty!9291)))

(assert (= (and b!2041012 ((_ is ElementMatch!5429) (regOne!11370 (regex!4003 (h!27708 rules!1563))))) b!2041552))

(assert (= (and b!2041012 ((_ is Concat!9568) (regOne!11370 (regex!4003 (h!27708 rules!1563))))) b!2041553))

(assert (= (and b!2041012 ((_ is Star!5429) (regOne!11370 (regex!4003 (h!27708 rules!1563))))) b!2041554))

(assert (= (and b!2041012 ((_ is Union!5429) (regOne!11370 (regex!4003 (h!27708 rules!1563))))) b!2041555))

(declare-fun b!2041557 () Bool)

(declare-fun e!1288962 () Bool)

(declare-fun tp!605900 () Bool)

(declare-fun tp!605902 () Bool)

(assert (=> b!2041557 (= e!1288962 (and tp!605900 tp!605902))))

(declare-fun b!2041558 () Bool)

(declare-fun tp!605901 () Bool)

(assert (=> b!2041558 (= e!1288962 tp!605901)))

(declare-fun b!2041559 () Bool)

(declare-fun tp!605904 () Bool)

(declare-fun tp!605903 () Bool)

(assert (=> b!2041559 (= e!1288962 (and tp!605904 tp!605903))))

(assert (=> b!2041012 (= tp!605798 e!1288962)))

(declare-fun b!2041556 () Bool)

(assert (=> b!2041556 (= e!1288962 tp_is_empty!9291)))

(assert (= (and b!2041012 ((_ is ElementMatch!5429) (regTwo!11370 (regex!4003 (h!27708 rules!1563))))) b!2041556))

(assert (= (and b!2041012 ((_ is Concat!9568) (regTwo!11370 (regex!4003 (h!27708 rules!1563))))) b!2041557))

(assert (= (and b!2041012 ((_ is Star!5429) (regTwo!11370 (regex!4003 (h!27708 rules!1563))))) b!2041558))

(assert (= (and b!2041012 ((_ is Union!5429) (regTwo!11370 (regex!4003 (h!27708 rules!1563))))) b!2041559))

(declare-fun b!2041560 () Bool)

(declare-fun e!1288963 () Bool)

(declare-fun tp!605905 () Bool)

(declare-fun tp!605906 () Bool)

(assert (=> b!2041560 (= e!1288963 (and tp!605905 tp!605906))))

(assert (=> b!2040986 (= tp!605767 e!1288963)))

(assert (= (and b!2040986 ((_ is Cons!22303) (exprs!1499 setElem!11746))) b!2041560))

(declare-fun condSetEmpty!11763 () Bool)

(assert (=> setNonEmpty!11734 (= condSetEmpty!11763 (= setRest!11734 ((as const (Array Context!1998 Bool)) false)))))

(declare-fun setRes!11763 () Bool)

(assert (=> setNonEmpty!11734 (= tp!605688 setRes!11763)))

(declare-fun setIsEmpty!11763 () Bool)

(assert (=> setIsEmpty!11763 setRes!11763))

(declare-fun tp!605911 () Bool)

(declare-fun setNonEmpty!11763 () Bool)

(declare-fun setElem!11763 () Context!1998)

(declare-fun e!1288966 () Bool)

(assert (=> setNonEmpty!11763 (= setRes!11763 (and tp!605911 (inv!29648 setElem!11763) e!1288966))))

(declare-fun setRest!11763 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11763 (= setRest!11734 ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11763 true) setRest!11763))))

(declare-fun b!2041565 () Bool)

(declare-fun tp!605912 () Bool)

(assert (=> b!2041565 (= e!1288966 tp!605912)))

(assert (= (and setNonEmpty!11734 condSetEmpty!11763) setIsEmpty!11763))

(assert (= (and setNonEmpty!11734 (not condSetEmpty!11763)) setNonEmpty!11763))

(assert (= setNonEmpty!11763 b!2041565))

(declare-fun m!2485717 () Bool)

(assert (=> setNonEmpty!11763 m!2485717))

(declare-fun condSetEmpty!11764 () Bool)

(assert (=> setNonEmpty!11739 (= condSetEmpty!11764 (= setRest!11739 ((as const (Array Context!1998 Bool)) false)))))

(declare-fun setRes!11764 () Bool)

(assert (=> setNonEmpty!11739 (= tp!605731 setRes!11764)))

(declare-fun setIsEmpty!11764 () Bool)

(assert (=> setIsEmpty!11764 setRes!11764))

(declare-fun e!1288967 () Bool)

(declare-fun setElem!11764 () Context!1998)

(declare-fun tp!605913 () Bool)

(declare-fun setNonEmpty!11764 () Bool)

(assert (=> setNonEmpty!11764 (= setRes!11764 (and tp!605913 (inv!29648 setElem!11764) e!1288967))))

(declare-fun setRest!11764 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11764 (= setRest!11739 ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11764 true) setRest!11764))))

(declare-fun b!2041566 () Bool)

(declare-fun tp!605914 () Bool)

(assert (=> b!2041566 (= e!1288967 tp!605914)))

(assert (= (and setNonEmpty!11739 condSetEmpty!11764) setIsEmpty!11764))

(assert (= (and setNonEmpty!11739 (not condSetEmpty!11764)) setNonEmpty!11764))

(assert (= setNonEmpty!11764 b!2041566))

(declare-fun m!2485719 () Bool)

(assert (=> setNonEmpty!11764 m!2485719))

(declare-fun condSetEmpty!11765 () Bool)

(assert (=> setNonEmpty!11738 (= condSetEmpty!11765 (= setRest!11738 ((as const (Array Context!1998 Bool)) false)))))

(declare-fun setRes!11765 () Bool)

(assert (=> setNonEmpty!11738 (= tp!605705 setRes!11765)))

(declare-fun setIsEmpty!11765 () Bool)

(assert (=> setIsEmpty!11765 setRes!11765))

(declare-fun e!1288968 () Bool)

(declare-fun setElem!11765 () Context!1998)

(declare-fun setNonEmpty!11765 () Bool)

(declare-fun tp!605915 () Bool)

(assert (=> setNonEmpty!11765 (= setRes!11765 (and tp!605915 (inv!29648 setElem!11765) e!1288968))))

(declare-fun setRest!11765 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11765 (= setRest!11738 ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11765 true) setRest!11765))))

(declare-fun b!2041567 () Bool)

(declare-fun tp!605916 () Bool)

(assert (=> b!2041567 (= e!1288968 tp!605916)))

(assert (= (and setNonEmpty!11738 condSetEmpty!11765) setIsEmpty!11765))

(assert (= (and setNonEmpty!11738 (not condSetEmpty!11765)) setNonEmpty!11765))

(assert (= setNonEmpty!11765 b!2041567))

(declare-fun m!2485721 () Bool)

(assert (=> setNonEmpty!11765 m!2485721))

(declare-fun condSetEmpty!11766 () Bool)

(assert (=> setNonEmpty!11740 (= condSetEmpty!11766 (= setRest!11740 ((as const (Array Context!1998 Bool)) false)))))

(declare-fun setRes!11766 () Bool)

(assert (=> setNonEmpty!11740 (= tp!605736 setRes!11766)))

(declare-fun setIsEmpty!11766 () Bool)

(assert (=> setIsEmpty!11766 setRes!11766))

(declare-fun setElem!11766 () Context!1998)

(declare-fun tp!605917 () Bool)

(declare-fun setNonEmpty!11766 () Bool)

(declare-fun e!1288969 () Bool)

(assert (=> setNonEmpty!11766 (= setRes!11766 (and tp!605917 (inv!29648 setElem!11766) e!1288969))))

(declare-fun setRest!11766 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11766 (= setRest!11740 ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11766 true) setRest!11766))))

(declare-fun b!2041568 () Bool)

(declare-fun tp!605918 () Bool)

(assert (=> b!2041568 (= e!1288969 tp!605918)))

(assert (= (and setNonEmpty!11740 condSetEmpty!11766) setIsEmpty!11766))

(assert (= (and setNonEmpty!11740 (not condSetEmpty!11766)) setNonEmpty!11766))

(assert (= setNonEmpty!11766 b!2041568))

(declare-fun m!2485723 () Bool)

(assert (=> setNonEmpty!11766 m!2485723))

(declare-fun b!2041569 () Bool)

(declare-fun e!1288971 () Bool)

(declare-fun tp!605920 () Bool)

(assert (=> b!2041569 (= e!1288971 tp!605920)))

(declare-fun e!1288972 () Bool)

(assert (=> b!2040920 (= tp!605691 e!1288972)))

(declare-fun setRes!11767 () Bool)

(declare-fun setNonEmpty!11767 () Bool)

(declare-fun setElem!11767 () Context!1998)

(declare-fun tp!605922 () Bool)

(assert (=> setNonEmpty!11767 (= setRes!11767 (and tp!605922 (inv!29648 setElem!11767) e!1288971))))

(declare-fun setRest!11767 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11767 (= (_2!11956 (h!27710 (t!191502 (minValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))))))) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11767 true) setRest!11767))))

(declare-fun tp!605921 () Bool)

(declare-fun b!2041570 () Bool)

(declare-fun e!1288970 () Bool)

(assert (=> b!2041570 (= e!1288972 (and (inv!29648 (_1!11955 (_1!11956 (h!27710 (t!191502 (minValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))))))))) e!1288970 tp_is_empty!9291 setRes!11767 tp!605921))))

(declare-fun condSetEmpty!11767 () Bool)

(assert (=> b!2041570 (= condSetEmpty!11767 (= (_2!11956 (h!27710 (t!191502 (minValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))))))) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun b!2041571 () Bool)

(declare-fun tp!605919 () Bool)

(assert (=> b!2041571 (= e!1288970 tp!605919)))

(declare-fun setIsEmpty!11767 () Bool)

(assert (=> setIsEmpty!11767 setRes!11767))

(assert (= b!2041570 b!2041571))

(assert (= (and b!2041570 condSetEmpty!11767) setIsEmpty!11767))

(assert (= (and b!2041570 (not condSetEmpty!11767)) setNonEmpty!11767))

(assert (= setNonEmpty!11767 b!2041569))

(assert (= (and b!2040920 ((_ is Cons!22309) (t!191502 (minValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))))))) b!2041570))

(declare-fun m!2485725 () Bool)

(assert (=> setNonEmpty!11767 m!2485725))

(declare-fun m!2485727 () Bool)

(assert (=> b!2041570 m!2485727))

(declare-fun b!2041573 () Bool)

(declare-fun e!1288973 () Bool)

(declare-fun tp!605923 () Bool)

(declare-fun tp!605925 () Bool)

(assert (=> b!2041573 (= e!1288973 (and tp!605923 tp!605925))))

(declare-fun b!2041574 () Bool)

(declare-fun tp!605924 () Bool)

(assert (=> b!2041574 (= e!1288973 tp!605924)))

(declare-fun b!2041575 () Bool)

(declare-fun tp!605927 () Bool)

(declare-fun tp!605926 () Bool)

(assert (=> b!2041575 (= e!1288973 (and tp!605927 tp!605926))))

(assert (=> b!2041040 (= tp!605840 e!1288973)))

(declare-fun b!2041572 () Bool)

(assert (=> b!2041572 (= e!1288973 tp_is_empty!9291)))

(assert (= (and b!2041040 ((_ is ElementMatch!5429) (_1!11952 (_1!11953 (h!27705 mapValue!9136))))) b!2041572))

(assert (= (and b!2041040 ((_ is Concat!9568) (_1!11952 (_1!11953 (h!27705 mapValue!9136))))) b!2041573))

(assert (= (and b!2041040 ((_ is Star!5429) (_1!11952 (_1!11953 (h!27705 mapValue!9136))))) b!2041574))

(assert (= (and b!2041040 ((_ is Union!5429) (_1!11952 (_1!11953 (h!27705 mapValue!9136))))) b!2041575))

(declare-fun b!2041576 () Bool)

(declare-fun e!1288976 () Bool)

(declare-fun tp!605932 () Bool)

(assert (=> b!2041576 (= e!1288976 tp!605932)))

(declare-fun b!2041577 () Bool)

(declare-fun e!1288974 () Bool)

(declare-fun tp!605929 () Bool)

(assert (=> b!2041577 (= e!1288974 tp!605929)))

(declare-fun setIsEmpty!11768 () Bool)

(declare-fun setRes!11768 () Bool)

(assert (=> setIsEmpty!11768 setRes!11768))

(declare-fun e!1288975 () Bool)

(declare-fun b!2041578 () Bool)

(declare-fun tp!605931 () Bool)

(declare-fun tp!605928 () Bool)

(assert (=> b!2041578 (= e!1288975 (and tp!605931 (inv!29648 (_2!11952 (_1!11953 (h!27705 (t!191497 mapValue!9136))))) e!1288974 tp_is_empty!9291 setRes!11768 tp!605928))))

(declare-fun condSetEmpty!11768 () Bool)

(assert (=> b!2041578 (= condSetEmpty!11768 (= (_2!11953 (h!27705 (t!191497 mapValue!9136))) ((as const (Array Context!1998 Bool)) false)))))

(assert (=> b!2041040 (= tp!605837 e!1288975)))

(declare-fun setNonEmpty!11768 () Bool)

(declare-fun tp!605930 () Bool)

(declare-fun setElem!11768 () Context!1998)

(assert (=> setNonEmpty!11768 (= setRes!11768 (and tp!605930 (inv!29648 setElem!11768) e!1288976))))

(declare-fun setRest!11768 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11768 (= (_2!11953 (h!27705 (t!191497 mapValue!9136))) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11768 true) setRest!11768))))

(assert (= b!2041578 b!2041577))

(assert (= (and b!2041578 condSetEmpty!11768) setIsEmpty!11768))

(assert (= (and b!2041578 (not condSetEmpty!11768)) setNonEmpty!11768))

(assert (= setNonEmpty!11768 b!2041576))

(assert (= (and b!2041040 ((_ is Cons!22304) (t!191497 mapValue!9136))) b!2041578))

(declare-fun m!2485729 () Bool)

(assert (=> b!2041578 m!2485729))

(declare-fun m!2485731 () Bool)

(assert (=> setNonEmpty!11768 m!2485731))

(declare-fun b!2041579 () Bool)

(declare-fun e!1288977 () Bool)

(declare-fun tp!605933 () Bool)

(declare-fun tp!605934 () Bool)

(assert (=> b!2041579 (= e!1288977 (and tp!605933 tp!605934))))

(assert (=> b!2040919 (= tp!605690 e!1288977)))

(assert (= (and b!2040919 ((_ is Cons!22303) (exprs!1499 setElem!11735))) b!2041579))

(declare-fun b!2041580 () Bool)

(declare-fun e!1288978 () Bool)

(declare-fun tp!605935 () Bool)

(declare-fun tp!605936 () Bool)

(assert (=> b!2041580 (= e!1288978 (and tp!605935 tp!605936))))

(assert (=> b!2041039 (= tp!605838 e!1288978)))

(assert (= (and b!2041039 ((_ is Cons!22303) (exprs!1499 (_2!11952 (_1!11953 (h!27705 mapValue!9136)))))) b!2041580))

(declare-fun b!2041594 () Bool)

(declare-fun b_free!56889 () Bool)

(declare-fun b_next!57593 () Bool)

(assert (=> b!2041594 (= b_free!56889 (not b_next!57593))))

(declare-fun tp!605950 () Bool)

(declare-fun b_and!162829 () Bool)

(assert (=> b!2041594 (= tp!605950 b_and!162829)))

(declare-fun b_free!56891 () Bool)

(declare-fun b_next!57595 () Bool)

(assert (=> b!2041594 (= b_free!56891 (not b_next!57595))))

(declare-fun tp!605948 () Bool)

(declare-fun b_and!162831 () Bool)

(assert (=> b!2041594 (= tp!605948 b_and!162831)))

(declare-fun e!1288995 () Bool)

(assert (=> b!2040957 (= tp!605727 e!1288995)))

(declare-fun b!2041592 () Bool)

(declare-fun e!1288993 () Bool)

(declare-fun tp!605947 () Bool)

(declare-fun e!1288991 () Bool)

(declare-fun inv!21 (TokenValue!4139) Bool)

(assert (=> b!2041592 (= e!1288991 (and (inv!21 (value!125736 (h!27709 (innerList!7542 (xs!10388 (c!330712 acc!382)))))) e!1288993 tp!605947))))

(declare-fun e!1288992 () Bool)

(assert (=> b!2041594 (= e!1288992 (and tp!605950 tp!605948))))

(declare-fun b!2041593 () Bool)

(declare-fun tp!605951 () Bool)

(assert (=> b!2041593 (= e!1288993 (and tp!605951 (inv!29636 (tag!4493 (rule!6239 (h!27709 (innerList!7542 (xs!10388 (c!330712 acc!382))))))) (inv!29637 (transformation!4003 (rule!6239 (h!27709 (innerList!7542 (xs!10388 (c!330712 acc!382))))))) e!1288992))))

(declare-fun b!2041591 () Bool)

(declare-fun tp!605949 () Bool)

(declare-fun inv!29651 (Token!7556) Bool)

(assert (=> b!2041591 (= e!1288995 (and (inv!29651 (h!27709 (innerList!7542 (xs!10388 (c!330712 acc!382))))) e!1288991 tp!605949))))

(assert (= b!2041593 b!2041594))

(assert (= b!2041592 b!2041593))

(assert (= b!2041591 b!2041592))

(assert (= (and b!2040957 ((_ is Cons!22308) (innerList!7542 (xs!10388 (c!330712 acc!382))))) b!2041591))

(declare-fun m!2485733 () Bool)

(assert (=> b!2041592 m!2485733))

(declare-fun m!2485735 () Bool)

(assert (=> b!2041593 m!2485735))

(declare-fun m!2485737 () Bool)

(assert (=> b!2041593 m!2485737))

(declare-fun m!2485739 () Bool)

(assert (=> b!2041591 m!2485739))

(declare-fun condSetEmpty!11769 () Bool)

(assert (=> setNonEmpty!11746 (= condSetEmpty!11769 (= setRest!11747 ((as const (Array Context!1998 Bool)) false)))))

(declare-fun setRes!11769 () Bool)

(assert (=> setNonEmpty!11746 (= tp!605761 setRes!11769)))

(declare-fun setIsEmpty!11769 () Bool)

(assert (=> setIsEmpty!11769 setRes!11769))

(declare-fun tp!605952 () Bool)

(declare-fun setElem!11769 () Context!1998)

(declare-fun e!1288997 () Bool)

(declare-fun setNonEmpty!11769 () Bool)

(assert (=> setNonEmpty!11769 (= setRes!11769 (and tp!605952 (inv!29648 setElem!11769) e!1288997))))

(declare-fun setRest!11769 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11769 (= setRest!11747 ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11769 true) setRest!11769))))

(declare-fun b!2041595 () Bool)

(declare-fun tp!605953 () Bool)

(assert (=> b!2041595 (= e!1288997 tp!605953)))

(assert (= (and setNonEmpty!11746 condSetEmpty!11769) setIsEmpty!11769))

(assert (= (and setNonEmpty!11746 (not condSetEmpty!11769)) setNonEmpty!11769))

(assert (= setNonEmpty!11769 b!2041595))

(declare-fun m!2485741 () Bool)

(assert (=> setNonEmpty!11769 m!2485741))

(declare-fun b!2041596 () Bool)

(declare-fun e!1288998 () Bool)

(declare-fun tp!605954 () Bool)

(declare-fun tp!605955 () Bool)

(assert (=> b!2041596 (= e!1288998 (and tp!605954 tp!605955))))

(assert (=> b!2040966 (= tp!605739 e!1288998)))

(assert (= (and b!2040966 ((_ is Cons!22303) (exprs!1499 (_1!11955 (_1!11956 (h!27710 mapDefault!9136)))))) b!2041596))

(declare-fun b!2041599 () Bool)

(declare-fun b_free!56893 () Bool)

(declare-fun b_next!57597 () Bool)

(assert (=> b!2041599 (= b_free!56893 (not b_next!57597))))

(declare-fun tp!605956 () Bool)

(declare-fun b_and!162833 () Bool)

(assert (=> b!2041599 (= tp!605956 b_and!162833)))

(declare-fun b_free!56895 () Bool)

(declare-fun b_next!57599 () Bool)

(assert (=> b!2041599 (= b_free!56895 (not b_next!57599))))

(declare-fun tp!605958 () Bool)

(declare-fun b_and!162835 () Bool)

(assert (=> b!2041599 (= tp!605958 b_and!162835)))

(declare-fun e!1288999 () Bool)

(assert (=> b!2041599 (= e!1288999 (and tp!605956 tp!605958))))

(declare-fun e!1289002 () Bool)

(declare-fun b!2041598 () Bool)

(declare-fun tp!605959 () Bool)

(assert (=> b!2041598 (= e!1289002 (and tp!605959 (inv!29636 (tag!4493 (h!27708 (t!191500 (t!191500 rules!1563))))) (inv!29637 (transformation!4003 (h!27708 (t!191500 (t!191500 rules!1563))))) e!1288999))))

(declare-fun b!2041597 () Bool)

(declare-fun e!1289000 () Bool)

(declare-fun tp!605957 () Bool)

(assert (=> b!2041597 (= e!1289000 (and e!1289002 tp!605957))))

(assert (=> b!2040998 (= tp!605783 e!1289000)))

(assert (= b!2041598 b!2041599))

(assert (= b!2041597 b!2041598))

(assert (= (and b!2040998 ((_ is Cons!22307) (t!191500 (t!191500 rules!1563)))) b!2041597))

(declare-fun m!2485743 () Bool)

(assert (=> b!2041598 m!2485743))

(declare-fun m!2485745 () Bool)

(assert (=> b!2041598 m!2485745))

(declare-fun b!2041600 () Bool)

(declare-fun e!1289003 () Bool)

(declare-fun tp!605960 () Bool)

(declare-fun tp!605961 () Bool)

(assert (=> b!2041600 (= e!1289003 (and tp!605960 tp!605961))))

(assert (=> b!2041032 (= tp!605831 e!1289003)))

(assert (= (and b!2041032 ((_ is Cons!22303) (exprs!1499 setElem!11753))) b!2041600))

(declare-fun b!2041601 () Bool)

(declare-fun e!1289004 () Bool)

(declare-fun tp!605962 () Bool)

(declare-fun tp!605963 () Bool)

(assert (=> b!2041601 (= e!1289004 (and tp!605962 tp!605963))))

(assert (=> b!2040989 (= tp!605770 e!1289004)))

(assert (= (and b!2040989 ((_ is Cons!22303) (exprs!1499 (_1!11955 (_1!11956 (h!27710 mapValue!9137)))))) b!2041601))

(declare-fun b!2041606 () Bool)

(declare-fun e!1289007 () Bool)

(declare-fun tp!605966 () Bool)

(assert (=> b!2041606 (= e!1289007 (and tp_is_empty!9291 tp!605966))))

(assert (=> b!2040946 (= tp!605719 e!1289007)))

(assert (= (and b!2040946 ((_ is Cons!22306) (innerList!7541 (xs!10387 (c!330711 input!986))))) b!2041606))

(declare-fun condSetEmpty!11770 () Bool)

(assert (=> setNonEmpty!11748 (= condSetEmpty!11770 (= setRest!11748 ((as const (Array Context!1998 Bool)) false)))))

(declare-fun setRes!11770 () Bool)

(assert (=> setNonEmpty!11748 (= tp!605773 setRes!11770)))

(declare-fun setIsEmpty!11770 () Bool)

(assert (=> setIsEmpty!11770 setRes!11770))

(declare-fun setNonEmpty!11770 () Bool)

(declare-fun e!1289008 () Bool)

(declare-fun setElem!11770 () Context!1998)

(declare-fun tp!605967 () Bool)

(assert (=> setNonEmpty!11770 (= setRes!11770 (and tp!605967 (inv!29648 setElem!11770) e!1289008))))

(declare-fun setRest!11770 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11770 (= setRest!11748 ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11770 true) setRest!11770))))

(declare-fun b!2041607 () Bool)

(declare-fun tp!605968 () Bool)

(assert (=> b!2041607 (= e!1289008 tp!605968)))

(assert (= (and setNonEmpty!11748 condSetEmpty!11770) setIsEmpty!11770))

(assert (= (and setNonEmpty!11748 (not condSetEmpty!11770)) setNonEmpty!11770))

(assert (= setNonEmpty!11770 b!2041607))

(declare-fun m!2485747 () Bool)

(assert (=> setNonEmpty!11770 m!2485747))

(declare-fun condSetEmpty!11771 () Bool)

(assert (=> setNonEmpty!11747 (= condSetEmpty!11771 (= setRest!11746 ((as const (Array Context!1998 Bool)) false)))))

(declare-fun setRes!11771 () Bool)

(assert (=> setNonEmpty!11747 (= tp!605762 setRes!11771)))

(declare-fun setIsEmpty!11771 () Bool)

(assert (=> setIsEmpty!11771 setRes!11771))

(declare-fun setElem!11771 () Context!1998)

(declare-fun tp!605969 () Bool)

(declare-fun setNonEmpty!11771 () Bool)

(declare-fun e!1289009 () Bool)

(assert (=> setNonEmpty!11771 (= setRes!11771 (and tp!605969 (inv!29648 setElem!11771) e!1289009))))

(declare-fun setRest!11771 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11771 (= setRest!11746 ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11771 true) setRest!11771))))

(declare-fun b!2041608 () Bool)

(declare-fun tp!605970 () Bool)

(assert (=> b!2041608 (= e!1289009 tp!605970)))

(assert (= (and setNonEmpty!11747 condSetEmpty!11771) setIsEmpty!11771))

(assert (= (and setNonEmpty!11747 (not condSetEmpty!11771)) setNonEmpty!11771))

(assert (= setNonEmpty!11771 b!2041608))

(declare-fun m!2485749 () Bool)

(assert (=> setNonEmpty!11771 m!2485749))

(declare-fun b!2041609 () Bool)

(declare-fun e!1289010 () Bool)

(declare-fun tp!605971 () Bool)

(declare-fun tp!605972 () Bool)

(assert (=> b!2041609 (= e!1289010 (and tp!605971 tp!605972))))

(assert (=> b!2040918 (= tp!605685 e!1289010)))

(assert (= (and b!2040918 ((_ is Cons!22303) (exprs!1499 (_1!11955 (_1!11956 (h!27710 (zeroValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562)))))))))))) b!2041609))

(declare-fun tp!605973 () Bool)

(declare-fun e!1289012 () Bool)

(declare-fun tp!605974 () Bool)

(declare-fun b!2041610 () Bool)

(assert (=> b!2041610 (= e!1289012 (and (inv!29638 (left!17758 (left!17758 (c!330711 input!986)))) tp!605973 (inv!29638 (right!18088 (left!17758 (c!330711 input!986)))) tp!605974))))

(declare-fun b!2041612 () Bool)

(declare-fun e!1289011 () Bool)

(declare-fun tp!605975 () Bool)

(assert (=> b!2041612 (= e!1289011 tp!605975)))

(declare-fun b!2041611 () Bool)

(assert (=> b!2041611 (= e!1289012 (and (inv!29649 (xs!10387 (left!17758 (c!330711 input!986)))) e!1289011))))

(assert (=> b!2040944 (= tp!605717 (and (inv!29638 (left!17758 (c!330711 input!986))) e!1289012))))

(assert (= (and b!2040944 ((_ is Node!7481) (left!17758 (c!330711 input!986)))) b!2041610))

(assert (= b!2041611 b!2041612))

(assert (= (and b!2040944 ((_ is Leaf!10963) (left!17758 (c!330711 input!986)))) b!2041611))

(declare-fun m!2485751 () Bool)

(assert (=> b!2041610 m!2485751))

(declare-fun m!2485753 () Bool)

(assert (=> b!2041610 m!2485753))

(declare-fun m!2485755 () Bool)

(assert (=> b!2041611 m!2485755))

(assert (=> b!2040944 m!2484963))

(declare-fun tp!605976 () Bool)

(declare-fun tp!605977 () Bool)

(declare-fun e!1289014 () Bool)

(declare-fun b!2041613 () Bool)

(assert (=> b!2041613 (= e!1289014 (and (inv!29638 (left!17758 (right!18088 (c!330711 input!986)))) tp!605976 (inv!29638 (right!18088 (right!18088 (c!330711 input!986)))) tp!605977))))

(declare-fun b!2041615 () Bool)

(declare-fun e!1289013 () Bool)

(declare-fun tp!605978 () Bool)

(assert (=> b!2041615 (= e!1289013 tp!605978)))

(declare-fun b!2041614 () Bool)

(assert (=> b!2041614 (= e!1289014 (and (inv!29649 (xs!10387 (right!18088 (c!330711 input!986)))) e!1289013))))

(assert (=> b!2040944 (= tp!605718 (and (inv!29638 (right!18088 (c!330711 input!986))) e!1289014))))

(assert (= (and b!2040944 ((_ is Node!7481) (right!18088 (c!330711 input!986)))) b!2041613))

(assert (= b!2041614 b!2041615))

(assert (= (and b!2040944 ((_ is Leaf!10963) (right!18088 (c!330711 input!986)))) b!2041614))

(declare-fun m!2485757 () Bool)

(assert (=> b!2041613 m!2485757))

(declare-fun m!2485759 () Bool)

(assert (=> b!2041613 m!2485759))

(declare-fun m!2485761 () Bool)

(assert (=> b!2041614 m!2485761))

(assert (=> b!2040944 m!2484965))

(declare-fun b!2041616 () Bool)

(declare-fun e!1289015 () Bool)

(declare-fun tp!605979 () Bool)

(assert (=> b!2041616 (= e!1289015 (and tp_is_empty!9291 tp!605979))))

(assert (=> b!2040943 (= tp!605716 e!1289015)))

(assert (= (and b!2040943 ((_ is Cons!22306) (innerList!7541 (xs!10387 (c!330711 totalInput!418))))) b!2041616))

(declare-fun e!1289017 () Bool)

(declare-fun b!2041617 () Bool)

(declare-fun tp!605981 () Bool)

(declare-fun tp!605980 () Bool)

(assert (=> b!2041617 (= e!1289017 (and (inv!29638 (left!17758 (left!17758 (c!330711 totalInput!418)))) tp!605980 (inv!29638 (right!18088 (left!17758 (c!330711 totalInput!418)))) tp!605981))))

(declare-fun b!2041619 () Bool)

(declare-fun e!1289016 () Bool)

(declare-fun tp!605982 () Bool)

(assert (=> b!2041619 (= e!1289016 tp!605982)))

(declare-fun b!2041618 () Bool)

(assert (=> b!2041618 (= e!1289017 (and (inv!29649 (xs!10387 (left!17758 (c!330711 totalInput!418)))) e!1289016))))

(assert (=> b!2040941 (= tp!605714 (and (inv!29638 (left!17758 (c!330711 totalInput!418))) e!1289017))))

(assert (= (and b!2040941 ((_ is Node!7481) (left!17758 (c!330711 totalInput!418)))) b!2041617))

(assert (= b!2041618 b!2041619))

(assert (= (and b!2040941 ((_ is Leaf!10963) (left!17758 (c!330711 totalInput!418)))) b!2041618))

(declare-fun m!2485763 () Bool)

(assert (=> b!2041617 m!2485763))

(declare-fun m!2485765 () Bool)

(assert (=> b!2041617 m!2485765))

(declare-fun m!2485767 () Bool)

(assert (=> b!2041618 m!2485767))

(assert (=> b!2040941 m!2484957))

(declare-fun tp!605983 () Bool)

(declare-fun tp!605984 () Bool)

(declare-fun e!1289019 () Bool)

(declare-fun b!2041620 () Bool)

(assert (=> b!2041620 (= e!1289019 (and (inv!29638 (left!17758 (right!18088 (c!330711 totalInput!418)))) tp!605983 (inv!29638 (right!18088 (right!18088 (c!330711 totalInput!418)))) tp!605984))))

(declare-fun b!2041622 () Bool)

(declare-fun e!1289018 () Bool)

(declare-fun tp!605985 () Bool)

(assert (=> b!2041622 (= e!1289018 tp!605985)))

(declare-fun b!2041621 () Bool)

(assert (=> b!2041621 (= e!1289019 (and (inv!29649 (xs!10387 (right!18088 (c!330711 totalInput!418)))) e!1289018))))

(assert (=> b!2040941 (= tp!605715 (and (inv!29638 (right!18088 (c!330711 totalInput!418))) e!1289019))))

(assert (= (and b!2040941 ((_ is Node!7481) (right!18088 (c!330711 totalInput!418)))) b!2041620))

(assert (= b!2041621 b!2041622))

(assert (= (and b!2040941 ((_ is Leaf!10963) (right!18088 (c!330711 totalInput!418)))) b!2041621))

(declare-fun m!2485769 () Bool)

(assert (=> b!2041620 m!2485769))

(declare-fun m!2485771 () Bool)

(assert (=> b!2041620 m!2485771))

(declare-fun m!2485773 () Bool)

(assert (=> b!2041621 m!2485773))

(assert (=> b!2040941 m!2484959))

(declare-fun b!2041623 () Bool)

(declare-fun e!1289020 () Bool)

(declare-fun tp!605986 () Bool)

(declare-fun tp!605987 () Bool)

(assert (=> b!2041623 (= e!1289020 (and tp!605986 tp!605987))))

(assert (=> b!2041034 (= tp!605834 e!1289020)))

(assert (= (and b!2041034 ((_ is Cons!22303) (exprs!1499 (_2!11952 (_1!11953 (h!27705 mapValue!9143)))))) b!2041623))

(declare-fun b!2041624 () Bool)

(declare-fun e!1289021 () Bool)

(declare-fun tp!605988 () Bool)

(declare-fun tp!605989 () Bool)

(assert (=> b!2041624 (= e!1289021 (and tp!605988 tp!605989))))

(assert (=> b!2041033 (= tp!605829 e!1289021)))

(assert (= (and b!2041033 ((_ is Cons!22303) (exprs!1499 setElem!11754))) b!2041624))

(declare-fun b!2041625 () Bool)

(declare-fun e!1289022 () Bool)

(declare-fun tp!605990 () Bool)

(declare-fun tp!605991 () Bool)

(assert (=> b!2041625 (= e!1289022 (and tp!605990 tp!605991))))

(assert (=> b!2040958 (= tp!605733 e!1289022)))

(assert (= (and b!2040958 ((_ is Cons!22303) (exprs!1499 setElem!11739))) b!2041625))

(declare-fun b!2041626 () Bool)

(declare-fun e!1289023 () Bool)

(declare-fun tp!605992 () Bool)

(declare-fun tp!605993 () Bool)

(assert (=> b!2041626 (= e!1289023 (and tp!605992 tp!605993))))

(assert (=> b!2040930 (= tp!605707 e!1289023)))

(assert (= (and b!2040930 ((_ is Cons!22303) (exprs!1499 setElem!11738))) b!2041626))

(declare-fun b!2041627 () Bool)

(declare-fun e!1289024 () Bool)

(declare-fun tp!605994 () Bool)

(declare-fun tp!605995 () Bool)

(assert (=> b!2041627 (= e!1289024 (and tp!605994 tp!605995))))

(assert (=> b!2040961 (= tp!605738 e!1289024)))

(assert (= (and b!2040961 ((_ is Cons!22303) (exprs!1499 setElem!11740))) b!2041627))

(declare-fun b!2041628 () Bool)

(declare-fun tp!605996 () Bool)

(declare-fun e!1289025 () Bool)

(declare-fun tp!605998 () Bool)

(assert (=> b!2041628 (= e!1289025 (and (inv!29639 (left!17759 (left!17759 (c!330712 acc!382)))) tp!605998 (inv!29639 (right!18089 (left!17759 (c!330712 acc!382)))) tp!605996))))

(declare-fun b!2041630 () Bool)

(declare-fun e!1289026 () Bool)

(declare-fun tp!605997 () Bool)

(assert (=> b!2041630 (= e!1289026 tp!605997)))

(declare-fun b!2041629 () Bool)

(assert (=> b!2041629 (= e!1289025 (and (inv!29650 (xs!10388 (left!17759 (c!330712 acc!382)))) e!1289026))))

(assert (=> b!2040955 (= tp!605728 (and (inv!29639 (left!17759 (c!330712 acc!382))) e!1289025))))

(assert (= (and b!2040955 ((_ is Node!7482) (left!17759 (c!330712 acc!382)))) b!2041628))

(assert (= b!2041629 b!2041630))

(assert (= (and b!2040955 ((_ is Leaf!10964) (left!17759 (c!330712 acc!382)))) b!2041629))

(declare-fun m!2485775 () Bool)

(assert (=> b!2041628 m!2485775))

(declare-fun m!2485777 () Bool)

(assert (=> b!2041628 m!2485777))

(declare-fun m!2485779 () Bool)

(assert (=> b!2041629 m!2485779))

(assert (=> b!2040955 m!2484969))

(declare-fun e!1289027 () Bool)

(declare-fun tp!606001 () Bool)

(declare-fun tp!605999 () Bool)

(declare-fun b!2041631 () Bool)

(assert (=> b!2041631 (= e!1289027 (and (inv!29639 (left!17759 (right!18089 (c!330712 acc!382)))) tp!606001 (inv!29639 (right!18089 (right!18089 (c!330712 acc!382)))) tp!605999))))

(declare-fun b!2041633 () Bool)

(declare-fun e!1289028 () Bool)

(declare-fun tp!606000 () Bool)

(assert (=> b!2041633 (= e!1289028 tp!606000)))

(declare-fun b!2041632 () Bool)

(assert (=> b!2041632 (= e!1289027 (and (inv!29650 (xs!10388 (right!18089 (c!330712 acc!382)))) e!1289028))))

(assert (=> b!2040955 (= tp!605726 (and (inv!29639 (right!18089 (c!330712 acc!382))) e!1289027))))

(assert (= (and b!2040955 ((_ is Node!7482) (right!18089 (c!330712 acc!382)))) b!2041631))

(assert (= b!2041632 b!2041633))

(assert (= (and b!2040955 ((_ is Leaf!10964) (right!18089 (c!330712 acc!382)))) b!2041632))

(declare-fun m!2485781 () Bool)

(assert (=> b!2041631 m!2485781))

(declare-fun m!2485783 () Bool)

(assert (=> b!2041631 m!2485783))

(declare-fun m!2485785 () Bool)

(assert (=> b!2041632 m!2485785))

(assert (=> b!2040955 m!2484971))

(declare-fun condSetEmpty!11772 () Bool)

(assert (=> setNonEmpty!11741 (= condSetEmpty!11772 (= setRest!11741 ((as const (Array Context!1998 Bool)) false)))))

(declare-fun setRes!11772 () Bool)

(assert (=> setNonEmpty!11741 (= tp!605742 setRes!11772)))

(declare-fun setIsEmpty!11772 () Bool)

(assert (=> setIsEmpty!11772 setRes!11772))

(declare-fun e!1289029 () Bool)

(declare-fun setElem!11772 () Context!1998)

(declare-fun tp!606002 () Bool)

(declare-fun setNonEmpty!11772 () Bool)

(assert (=> setNonEmpty!11772 (= setRes!11772 (and tp!606002 (inv!29648 setElem!11772) e!1289029))))

(declare-fun setRest!11772 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11772 (= setRest!11741 ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11772 true) setRest!11772))))

(declare-fun b!2041634 () Bool)

(declare-fun tp!606003 () Bool)

(assert (=> b!2041634 (= e!1289029 tp!606003)))

(assert (= (and setNonEmpty!11741 condSetEmpty!11772) setIsEmpty!11772))

(assert (= (and setNonEmpty!11741 (not condSetEmpty!11772)) setNonEmpty!11772))

(assert (= setNonEmpty!11772 b!2041634))

(declare-fun m!2485787 () Bool)

(assert (=> setNonEmpty!11772 m!2485787))

(declare-fun b!2041636 () Bool)

(declare-fun e!1289030 () Bool)

(declare-fun tp!606004 () Bool)

(declare-fun tp!606006 () Bool)

(assert (=> b!2041636 (= e!1289030 (and tp!606004 tp!606006))))

(declare-fun b!2041637 () Bool)

(declare-fun tp!606005 () Bool)

(assert (=> b!2041637 (= e!1289030 tp!606005)))

(declare-fun b!2041638 () Bool)

(declare-fun tp!606008 () Bool)

(declare-fun tp!606007 () Bool)

(assert (=> b!2041638 (= e!1289030 (and tp!606008 tp!606007))))

(assert (=> b!2041013 (= tp!605797 e!1289030)))

(declare-fun b!2041635 () Bool)

(assert (=> b!2041635 (= e!1289030 tp_is_empty!9291)))

(assert (= (and b!2041013 ((_ is ElementMatch!5429) (reg!5758 (regex!4003 (h!27708 rules!1563))))) b!2041635))

(assert (= (and b!2041013 ((_ is Concat!9568) (reg!5758 (regex!4003 (h!27708 rules!1563))))) b!2041636))

(assert (= (and b!2041013 ((_ is Star!5429) (reg!5758 (regex!4003 (h!27708 rules!1563))))) b!2041637))

(assert (= (and b!2041013 ((_ is Union!5429) (reg!5758 (regex!4003 (h!27708 rules!1563))))) b!2041638))

(declare-fun b!2041639 () Bool)

(declare-fun e!1289031 () Bool)

(declare-fun tp!606009 () Bool)

(declare-fun tp!606010 () Bool)

(assert (=> b!2041639 (= e!1289031 (and tp!606009 tp!606010))))

(assert (=> b!2040983 (= tp!605768 e!1289031)))

(assert (= (and b!2040983 ((_ is Cons!22303) (exprs!1499 setElem!11747))) b!2041639))

(declare-fun b!2041641 () Bool)

(declare-fun e!1289032 () Bool)

(declare-fun tp!606011 () Bool)

(declare-fun tp!606013 () Bool)

(assert (=> b!2041641 (= e!1289032 (and tp!606011 tp!606013))))

(declare-fun b!2041642 () Bool)

(declare-fun tp!606012 () Bool)

(assert (=> b!2041642 (= e!1289032 tp!606012)))

(declare-fun b!2041643 () Bool)

(declare-fun tp!606015 () Bool)

(declare-fun tp!606014 () Bool)

(assert (=> b!2041643 (= e!1289032 (and tp!606015 tp!606014))))

(assert (=> b!2041036 (= tp!605827 e!1289032)))

(declare-fun b!2041640 () Bool)

(assert (=> b!2041640 (= e!1289032 tp_is_empty!9291)))

(assert (= (and b!2041036 ((_ is ElementMatch!5429) (_1!11952 (_1!11953 (h!27705 mapDefault!9143))))) b!2041640))

(assert (= (and b!2041036 ((_ is Concat!9568) (_1!11952 (_1!11953 (h!27705 mapDefault!9143))))) b!2041641))

(assert (= (and b!2041036 ((_ is Star!5429) (_1!11952 (_1!11953 (h!27705 mapDefault!9143))))) b!2041642))

(assert (= (and b!2041036 ((_ is Union!5429) (_1!11952 (_1!11953 (h!27705 mapDefault!9143))))) b!2041643))

(declare-fun b!2041644 () Bool)

(declare-fun e!1289035 () Bool)

(declare-fun tp!606020 () Bool)

(assert (=> b!2041644 (= e!1289035 tp!606020)))

(declare-fun b!2041645 () Bool)

(declare-fun e!1289033 () Bool)

(declare-fun tp!606017 () Bool)

(assert (=> b!2041645 (= e!1289033 tp!606017)))

(declare-fun setIsEmpty!11773 () Bool)

(declare-fun setRes!11773 () Bool)

(assert (=> setIsEmpty!11773 setRes!11773))

(declare-fun tp!606019 () Bool)

(declare-fun tp!606016 () Bool)

(declare-fun b!2041646 () Bool)

(declare-fun e!1289034 () Bool)

(assert (=> b!2041646 (= e!1289034 (and tp!606019 (inv!29648 (_2!11952 (_1!11953 (h!27705 (t!191497 mapDefault!9143))))) e!1289033 tp_is_empty!9291 setRes!11773 tp!606016))))

(declare-fun condSetEmpty!11773 () Bool)

(assert (=> b!2041646 (= condSetEmpty!11773 (= (_2!11953 (h!27705 (t!191497 mapDefault!9143))) ((as const (Array Context!1998 Bool)) false)))))

(assert (=> b!2041036 (= tp!605836 e!1289034)))

(declare-fun setElem!11773 () Context!1998)

(declare-fun setNonEmpty!11773 () Bool)

(declare-fun tp!606018 () Bool)

(assert (=> setNonEmpty!11773 (= setRes!11773 (and tp!606018 (inv!29648 setElem!11773) e!1289035))))

(declare-fun setRest!11773 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11773 (= (_2!11953 (h!27705 (t!191497 mapDefault!9143))) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11773 true) setRest!11773))))

(assert (= b!2041646 b!2041645))

(assert (= (and b!2041646 condSetEmpty!11773) setIsEmpty!11773))

(assert (= (and b!2041646 (not condSetEmpty!11773)) setNonEmpty!11773))

(assert (= setNonEmpty!11773 b!2041644))

(assert (= (and b!2041036 ((_ is Cons!22304) (t!191497 mapDefault!9143))) b!2041646))

(declare-fun m!2485789 () Bool)

(assert (=> b!2041646 m!2485789))

(declare-fun m!2485791 () Bool)

(assert (=> setNonEmpty!11773 m!2485791))

(declare-fun b!2041647 () Bool)

(declare-fun e!1289037 () Bool)

(declare-fun tp!606022 () Bool)

(assert (=> b!2041647 (= e!1289037 tp!606022)))

(declare-fun e!1289038 () Bool)

(assert (=> b!2040981 (= tp!605765 e!1289038)))

(declare-fun setRes!11774 () Bool)

(declare-fun tp!606024 () Bool)

(declare-fun setNonEmpty!11774 () Bool)

(declare-fun setElem!11774 () Context!1998)

(assert (=> setNonEmpty!11774 (= setRes!11774 (and tp!606024 (inv!29648 setElem!11774) e!1289037))))

(declare-fun setRest!11774 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11774 (= (_2!11956 (h!27710 (t!191502 mapValue!9140))) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11774 true) setRest!11774))))

(declare-fun tp!606023 () Bool)

(declare-fun b!2041648 () Bool)

(declare-fun e!1289036 () Bool)

(assert (=> b!2041648 (= e!1289038 (and (inv!29648 (_1!11955 (_1!11956 (h!27710 (t!191502 mapValue!9140))))) e!1289036 tp_is_empty!9291 setRes!11774 tp!606023))))

(declare-fun condSetEmpty!11774 () Bool)

(assert (=> b!2041648 (= condSetEmpty!11774 (= (_2!11956 (h!27710 (t!191502 mapValue!9140))) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun b!2041649 () Bool)

(declare-fun tp!606021 () Bool)

(assert (=> b!2041649 (= e!1289036 tp!606021)))

(declare-fun setIsEmpty!11774 () Bool)

(assert (=> setIsEmpty!11774 setRes!11774))

(assert (= b!2041648 b!2041649))

(assert (= (and b!2041648 condSetEmpty!11774) setIsEmpty!11774))

(assert (= (and b!2041648 (not condSetEmpty!11774)) setNonEmpty!11774))

(assert (= setNonEmpty!11774 b!2041647))

(assert (= (and b!2040981 ((_ is Cons!22309) (t!191502 mapValue!9140))) b!2041648))

(declare-fun m!2485793 () Bool)

(assert (=> setNonEmpty!11774 m!2485793))

(declare-fun m!2485795 () Bool)

(assert (=> b!2041648 m!2485795))

(declare-fun condSetEmpty!11775 () Bool)

(assert (=> setNonEmpty!11754 (= condSetEmpty!11775 (= setRest!11754 ((as const (Array Context!1998 Bool)) false)))))

(declare-fun setRes!11775 () Bool)

(assert (=> setNonEmpty!11754 (= tp!605826 setRes!11775)))

(declare-fun setIsEmpty!11775 () Bool)

(assert (=> setIsEmpty!11775 setRes!11775))

(declare-fun setNonEmpty!11775 () Bool)

(declare-fun tp!606025 () Bool)

(declare-fun setElem!11775 () Context!1998)

(declare-fun e!1289039 () Bool)

(assert (=> setNonEmpty!11775 (= setRes!11775 (and tp!606025 (inv!29648 setElem!11775) e!1289039))))

(declare-fun setRest!11775 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11775 (= setRest!11754 ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11775 true) setRest!11775))))

(declare-fun b!2041650 () Bool)

(declare-fun tp!606026 () Bool)

(assert (=> b!2041650 (= e!1289039 tp!606026)))

(assert (= (and setNonEmpty!11754 condSetEmpty!11775) setIsEmpty!11775))

(assert (= (and setNonEmpty!11754 (not condSetEmpty!11775)) setNonEmpty!11775))

(assert (= setNonEmpty!11775 b!2041650))

(declare-fun m!2485797 () Bool)

(assert (=> setNonEmpty!11775 m!2485797))

(declare-fun b!2041651 () Bool)

(declare-fun e!1289041 () Bool)

(declare-fun tp!606028 () Bool)

(assert (=> b!2041651 (= e!1289041 tp!606028)))

(declare-fun e!1289042 () Bool)

(assert (=> b!2040917 (= tp!605687 e!1289042)))

(declare-fun setElem!11776 () Context!1998)

(declare-fun setRes!11776 () Bool)

(declare-fun tp!606030 () Bool)

(declare-fun setNonEmpty!11776 () Bool)

(assert (=> setNonEmpty!11776 (= setRes!11776 (and tp!606030 (inv!29648 setElem!11776) e!1289041))))

(declare-fun setRest!11776 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11776 (= (_2!11956 (h!27710 (t!191502 (zeroValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))))))) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11776 true) setRest!11776))))

(declare-fun b!2041652 () Bool)

(declare-fun e!1289040 () Bool)

(declare-fun tp!606029 () Bool)

(assert (=> b!2041652 (= e!1289042 (and (inv!29648 (_1!11955 (_1!11956 (h!27710 (t!191502 (zeroValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))))))))) e!1289040 tp_is_empty!9291 setRes!11776 tp!606029))))

(declare-fun condSetEmpty!11776 () Bool)

(assert (=> b!2041652 (= condSetEmpty!11776 (= (_2!11956 (h!27710 (t!191502 (zeroValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))))))) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun b!2041653 () Bool)

(declare-fun tp!606027 () Bool)

(assert (=> b!2041653 (= e!1289040 tp!606027)))

(declare-fun setIsEmpty!11776 () Bool)

(assert (=> setIsEmpty!11776 setRes!11776))

(assert (= b!2041652 b!2041653))

(assert (= (and b!2041652 condSetEmpty!11776) setIsEmpty!11776))

(assert (= (and b!2041652 (not condSetEmpty!11776)) setNonEmpty!11776))

(assert (= setNonEmpty!11776 b!2041651))

(assert (= (and b!2040917 ((_ is Cons!22309) (t!191502 (zeroValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562))))))))) b!2041652))

(declare-fun m!2485799 () Bool)

(assert (=> setNonEmpty!11776 m!2485799))

(declare-fun m!2485801 () Bool)

(assert (=> b!2041652 m!2485801))

(declare-fun b!2041654 () Bool)

(declare-fun e!1289043 () Bool)

(declare-fun tp!606031 () Bool)

(declare-fun tp!606032 () Bool)

(assert (=> b!2041654 (= e!1289043 (and tp!606031 tp!606032))))

(assert (=> b!2040921 (= tp!605689 e!1289043)))

(assert (= (and b!2040921 ((_ is Cons!22303) (exprs!1499 (_1!11955 (_1!11956 (h!27710 (minValue!2234 (v!27039 (underlying!4147 (v!27040 (underlying!4148 (cache!2271 cacheUp!562)))))))))))) b!2041654))

(declare-fun condSetEmpty!11777 () Bool)

(assert (=> setNonEmpty!11755 (= condSetEmpty!11777 (= setRest!11755 ((as const (Array Context!1998 Bool)) false)))))

(declare-fun setRes!11777 () Bool)

(assert (=> setNonEmpty!11755 (= tp!605839 setRes!11777)))

(declare-fun setIsEmpty!11777 () Bool)

(assert (=> setIsEmpty!11777 setRes!11777))

(declare-fun tp!606033 () Bool)

(declare-fun setElem!11777 () Context!1998)

(declare-fun e!1289044 () Bool)

(declare-fun setNonEmpty!11777 () Bool)

(assert (=> setNonEmpty!11777 (= setRes!11777 (and tp!606033 (inv!29648 setElem!11777) e!1289044))))

(declare-fun setRest!11777 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11777 (= setRest!11755 ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11777 true) setRest!11777))))

(declare-fun b!2041655 () Bool)

(declare-fun tp!606034 () Bool)

(assert (=> b!2041655 (= e!1289044 tp!606034)))

(assert (= (and setNonEmpty!11755 condSetEmpty!11777) setIsEmpty!11777))

(assert (= (and setNonEmpty!11755 (not condSetEmpty!11777)) setNonEmpty!11777))

(assert (= setNonEmpty!11777 b!2041655))

(declare-fun m!2485803 () Bool)

(assert (=> setNonEmpty!11777 m!2485803))

(declare-fun b!2041656 () Bool)

(declare-fun e!1289045 () Bool)

(declare-fun tp!606035 () Bool)

(declare-fun tp!606036 () Bool)

(assert (=> b!2041656 (= e!1289045 (and tp!606035 tp!606036))))

(assert (=> b!2040916 (= tp!605686 e!1289045)))

(assert (= (and b!2040916 ((_ is Cons!22303) (exprs!1499 setElem!11734))) b!2041656))

(declare-fun condSetEmpty!11778 () Bool)

(assert (=> setNonEmpty!11735 (= condSetEmpty!11778 (= setRest!11735 ((as const (Array Context!1998 Bool)) false)))))

(declare-fun setRes!11778 () Bool)

(assert (=> setNonEmpty!11735 (= tp!605692 setRes!11778)))

(declare-fun setIsEmpty!11778 () Bool)

(assert (=> setIsEmpty!11778 setRes!11778))

(declare-fun setElem!11778 () Context!1998)

(declare-fun setNonEmpty!11778 () Bool)

(declare-fun tp!606037 () Bool)

(declare-fun e!1289046 () Bool)

(assert (=> setNonEmpty!11778 (= setRes!11778 (and tp!606037 (inv!29648 setElem!11778) e!1289046))))

(declare-fun setRest!11778 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11778 (= setRest!11735 ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11778 true) setRest!11778))))

(declare-fun b!2041657 () Bool)

(declare-fun tp!606038 () Bool)

(assert (=> b!2041657 (= e!1289046 tp!606038)))

(assert (= (and setNonEmpty!11735 condSetEmpty!11778) setIsEmpty!11778))

(assert (= (and setNonEmpty!11735 (not condSetEmpty!11778)) setNonEmpty!11778))

(assert (= setNonEmpty!11778 b!2041657))

(declare-fun m!2485805 () Bool)

(assert (=> setNonEmpty!11778 m!2485805))

(declare-fun b!2041658 () Bool)

(declare-fun e!1289047 () Bool)

(declare-fun tp!606039 () Bool)

(declare-fun tp!606040 () Bool)

(assert (=> b!2041658 (= e!1289047 (and tp!606039 tp!606040))))

(assert (=> b!2040985 (= tp!605769 e!1289047)))

(assert (= (and b!2040985 ((_ is Cons!22303) (exprs!1499 (_1!11955 (_1!11956 (h!27710 mapDefault!9140)))))) b!2041658))

(declare-fun b!2041660 () Bool)

(declare-fun e!1289048 () Bool)

(declare-fun tp!606041 () Bool)

(declare-fun tp!606043 () Bool)

(assert (=> b!2041660 (= e!1289048 (and tp!606041 tp!606043))))

(declare-fun b!2041661 () Bool)

(declare-fun tp!606042 () Bool)

(assert (=> b!2041661 (= e!1289048 tp!606042)))

(declare-fun b!2041662 () Bool)

(declare-fun tp!606045 () Bool)

(declare-fun tp!606044 () Bool)

(assert (=> b!2041662 (= e!1289048 (and tp!606045 tp!606044))))

(assert (=> b!2040932 (= tp!605706 e!1289048)))

(declare-fun b!2041659 () Bool)

(assert (=> b!2041659 (= e!1289048 tp_is_empty!9291)))

(assert (= (and b!2040932 ((_ is ElementMatch!5429) (_1!11952 (_1!11953 (h!27705 mapDefault!9137))))) b!2041659))

(assert (= (and b!2040932 ((_ is Concat!9568) (_1!11952 (_1!11953 (h!27705 mapDefault!9137))))) b!2041660))

(assert (= (and b!2040932 ((_ is Star!5429) (_1!11952 (_1!11953 (h!27705 mapDefault!9137))))) b!2041661))

(assert (= (and b!2040932 ((_ is Union!5429) (_1!11952 (_1!11953 (h!27705 mapDefault!9137))))) b!2041662))

(declare-fun b!2041663 () Bool)

(declare-fun e!1289051 () Bool)

(declare-fun tp!606050 () Bool)

(assert (=> b!2041663 (= e!1289051 tp!606050)))

(declare-fun b!2041664 () Bool)

(declare-fun e!1289049 () Bool)

(declare-fun tp!606047 () Bool)

(assert (=> b!2041664 (= e!1289049 tp!606047)))

(declare-fun setIsEmpty!11779 () Bool)

(declare-fun setRes!11779 () Bool)

(assert (=> setIsEmpty!11779 setRes!11779))

(declare-fun b!2041665 () Bool)

(declare-fun e!1289050 () Bool)

(declare-fun tp!606049 () Bool)

(declare-fun tp!606046 () Bool)

(assert (=> b!2041665 (= e!1289050 (and tp!606049 (inv!29648 (_2!11952 (_1!11953 (h!27705 (t!191497 mapDefault!9137))))) e!1289049 tp_is_empty!9291 setRes!11779 tp!606046))))

(declare-fun condSetEmpty!11779 () Bool)

(assert (=> b!2041665 (= condSetEmpty!11779 (= (_2!11953 (h!27705 (t!191497 mapDefault!9137))) ((as const (Array Context!1998 Bool)) false)))))

(assert (=> b!2040932 (= tp!605703 e!1289050)))

(declare-fun tp!606048 () Bool)

(declare-fun setNonEmpty!11779 () Bool)

(declare-fun setElem!11779 () Context!1998)

(assert (=> setNonEmpty!11779 (= setRes!11779 (and tp!606048 (inv!29648 setElem!11779) e!1289051))))

(declare-fun setRest!11779 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11779 (= (_2!11953 (h!27705 (t!191497 mapDefault!9137))) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11779 true) setRest!11779))))

(assert (= b!2041665 b!2041664))

(assert (= (and b!2041665 condSetEmpty!11779) setIsEmpty!11779))

(assert (= (and b!2041665 (not condSetEmpty!11779)) setNonEmpty!11779))

(assert (= setNonEmpty!11779 b!2041663))

(assert (= (and b!2040932 ((_ is Cons!22304) (t!191497 mapDefault!9137))) b!2041665))

(declare-fun m!2485807 () Bool)

(assert (=> b!2041665 m!2485807))

(declare-fun m!2485809 () Bool)

(assert (=> setNonEmpty!11779 m!2485809))

(declare-fun b!2041667 () Bool)

(declare-fun e!1289052 () Bool)

(declare-fun tp!606051 () Bool)

(declare-fun tp!606053 () Bool)

(assert (=> b!2041667 (= e!1289052 (and tp!606051 tp!606053))))

(declare-fun b!2041668 () Bool)

(declare-fun tp!606052 () Bool)

(assert (=> b!2041668 (= e!1289052 tp!606052)))

(declare-fun b!2041669 () Bool)

(declare-fun tp!606055 () Bool)

(declare-fun tp!606054 () Bool)

(assert (=> b!2041669 (= e!1289052 (and tp!606055 tp!606054))))

(assert (=> b!2040963 (= tp!605737 e!1289052)))

(declare-fun b!2041666 () Bool)

(assert (=> b!2041666 (= e!1289052 tp_is_empty!9291)))

(assert (= (and b!2040963 ((_ is ElementMatch!5429) (_1!11952 (_1!11953 (h!27705 (minValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))))))) b!2041666))

(assert (= (and b!2040963 ((_ is Concat!9568) (_1!11952 (_1!11953 (h!27705 (minValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))))))) b!2041667))

(assert (= (and b!2040963 ((_ is Star!5429) (_1!11952 (_1!11953 (h!27705 (minValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))))))) b!2041668))

(assert (= (and b!2040963 ((_ is Union!5429) (_1!11952 (_1!11953 (h!27705 (minValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))))))) b!2041669))

(declare-fun b!2041670 () Bool)

(declare-fun e!1289055 () Bool)

(declare-fun tp!606060 () Bool)

(assert (=> b!2041670 (= e!1289055 tp!606060)))

(declare-fun b!2041671 () Bool)

(declare-fun e!1289053 () Bool)

(declare-fun tp!606057 () Bool)

(assert (=> b!2041671 (= e!1289053 tp!606057)))

(declare-fun setIsEmpty!11780 () Bool)

(declare-fun setRes!11780 () Bool)

(assert (=> setIsEmpty!11780 setRes!11780))

(declare-fun tp!606056 () Bool)

(declare-fun tp!606059 () Bool)

(declare-fun e!1289054 () Bool)

(declare-fun b!2041672 () Bool)

(assert (=> b!2041672 (= e!1289054 (and tp!606059 (inv!29648 (_2!11952 (_1!11953 (h!27705 (t!191497 (minValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))))))) e!1289053 tp_is_empty!9291 setRes!11780 tp!606056))))

(declare-fun condSetEmpty!11780 () Bool)

(assert (=> b!2041672 (= condSetEmpty!11780 (= (_2!11953 (h!27705 (t!191497 (minValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))))) ((as const (Array Context!1998 Bool)) false)))))

(assert (=> b!2040963 (= tp!605734 e!1289054)))

(declare-fun setElem!11780 () Context!1998)

(declare-fun tp!606058 () Bool)

(declare-fun setNonEmpty!11780 () Bool)

(assert (=> setNonEmpty!11780 (= setRes!11780 (and tp!606058 (inv!29648 setElem!11780) e!1289055))))

(declare-fun setRest!11780 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11780 (= (_2!11953 (h!27705 (t!191497 (minValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))))) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11780 true) setRest!11780))))

(assert (= b!2041672 b!2041671))

(assert (= (and b!2041672 condSetEmpty!11780) setIsEmpty!11780))

(assert (= (and b!2041672 (not condSetEmpty!11780)) setNonEmpty!11780))

(assert (= setNonEmpty!11780 b!2041670))

(assert (= (and b!2040963 ((_ is Cons!22304) (t!191497 (minValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))))) b!2041672))

(declare-fun m!2485811 () Bool)

(assert (=> b!2041672 m!2485811))

(declare-fun m!2485813 () Bool)

(assert (=> setNonEmpty!11780 m!2485813))

(declare-fun mapIsEmpty!9145 () Bool)

(declare-fun mapRes!9145 () Bool)

(assert (=> mapIsEmpty!9145 mapRes!9145))

(declare-fun mapValue!9145 () List!22393)

(declare-fun b!2041673 () Bool)

(declare-fun e!1289056 () Bool)

(declare-fun setRes!11782 () Bool)

(declare-fun e!1289059 () Bool)

(declare-fun tp!606065 () Bool)

(assert (=> b!2041673 (= e!1289056 (and (inv!29648 (_1!11955 (_1!11956 (h!27710 mapValue!9145)))) e!1289059 tp_is_empty!9291 setRes!11782 tp!606065))))

(declare-fun condSetEmpty!11781 () Bool)

(assert (=> b!2041673 (= condSetEmpty!11781 (= (_2!11956 (h!27710 mapValue!9145)) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun setRes!11781 () Bool)

(declare-fun mapDefault!9145 () List!22393)

(declare-fun tp!606064 () Bool)

(declare-fun e!1289060 () Bool)

(declare-fun e!1289058 () Bool)

(declare-fun b!2041674 () Bool)

(assert (=> b!2041674 (= e!1289058 (and (inv!29648 (_1!11955 (_1!11956 (h!27710 mapDefault!9145)))) e!1289060 tp_is_empty!9291 setRes!11781 tp!606064))))

(declare-fun condSetEmpty!11782 () Bool)

(assert (=> b!2041674 (= condSetEmpty!11782 (= (_2!11956 (h!27710 mapDefault!9145)) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun condMapEmpty!9145 () Bool)

(assert (=> mapNonEmpty!9140 (= condMapEmpty!9145 (= mapRest!9140 ((as const (Array (_ BitVec 32) List!22393)) mapDefault!9145)))))

(assert (=> mapNonEmpty!9140 (= tp!605763 (and e!1289058 mapRes!9145))))

(declare-fun b!2041675 () Bool)

(declare-fun e!1289061 () Bool)

(declare-fun tp!606068 () Bool)

(assert (=> b!2041675 (= e!1289061 tp!606068)))

(declare-fun b!2041676 () Bool)

(declare-fun tp!606066 () Bool)

(assert (=> b!2041676 (= e!1289059 tp!606066)))

(declare-fun setIsEmpty!11781 () Bool)

(assert (=> setIsEmpty!11781 setRes!11782))

(declare-fun mapNonEmpty!9145 () Bool)

(declare-fun tp!606063 () Bool)

(assert (=> mapNonEmpty!9145 (= mapRes!9145 (and tp!606063 e!1289056))))

(declare-fun mapRest!9145 () (Array (_ BitVec 32) List!22393))

(declare-fun mapKey!9145 () (_ BitVec 32))

(assert (=> mapNonEmpty!9145 (= mapRest!9140 (store mapRest!9145 mapKey!9145 mapValue!9145))))

(declare-fun setNonEmpty!11781 () Bool)

(declare-fun e!1289057 () Bool)

(declare-fun tp!606061 () Bool)

(declare-fun setElem!11781 () Context!1998)

(assert (=> setNonEmpty!11781 (= setRes!11782 (and tp!606061 (inv!29648 setElem!11781) e!1289057))))

(declare-fun setRest!11782 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11781 (= (_2!11956 (h!27710 mapValue!9145)) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11781 true) setRest!11782))))

(declare-fun b!2041677 () Bool)

(declare-fun tp!606069 () Bool)

(assert (=> b!2041677 (= e!1289060 tp!606069)))

(declare-fun b!2041678 () Bool)

(declare-fun tp!606067 () Bool)

(assert (=> b!2041678 (= e!1289057 tp!606067)))

(declare-fun setIsEmpty!11782 () Bool)

(assert (=> setIsEmpty!11782 setRes!11781))

(declare-fun setElem!11782 () Context!1998)

(declare-fun tp!606062 () Bool)

(declare-fun setNonEmpty!11782 () Bool)

(assert (=> setNonEmpty!11782 (= setRes!11781 (and tp!606062 (inv!29648 setElem!11782) e!1289061))))

(declare-fun setRest!11781 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11782 (= (_2!11956 (h!27710 mapDefault!9145)) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11782 true) setRest!11781))))

(assert (= (and mapNonEmpty!9140 condMapEmpty!9145) mapIsEmpty!9145))

(assert (= (and mapNonEmpty!9140 (not condMapEmpty!9145)) mapNonEmpty!9145))

(assert (= b!2041673 b!2041676))

(assert (= (and b!2041673 condSetEmpty!11781) setIsEmpty!11781))

(assert (= (and b!2041673 (not condSetEmpty!11781)) setNonEmpty!11781))

(assert (= setNonEmpty!11781 b!2041678))

(assert (= (and mapNonEmpty!9145 ((_ is Cons!22309) mapValue!9145)) b!2041673))

(assert (= b!2041674 b!2041677))

(assert (= (and b!2041674 condSetEmpty!11782) setIsEmpty!11782))

(assert (= (and b!2041674 (not condSetEmpty!11782)) setNonEmpty!11782))

(assert (= setNonEmpty!11782 b!2041675))

(assert (= (and mapNonEmpty!9140 ((_ is Cons!22309) mapDefault!9145)) b!2041674))

(declare-fun m!2485815 () Bool)

(assert (=> setNonEmpty!11781 m!2485815))

(declare-fun m!2485817 () Bool)

(assert (=> mapNonEmpty!9145 m!2485817))

(declare-fun m!2485819 () Bool)

(assert (=> setNonEmpty!11782 m!2485819))

(declare-fun m!2485821 () Bool)

(assert (=> b!2041673 m!2485821))

(declare-fun m!2485823 () Bool)

(assert (=> b!2041674 m!2485823))

(declare-fun b!2041680 () Bool)

(declare-fun e!1289062 () Bool)

(declare-fun tp!606070 () Bool)

(declare-fun tp!606072 () Bool)

(assert (=> b!2041680 (= e!1289062 (and tp!606070 tp!606072))))

(declare-fun b!2041681 () Bool)

(declare-fun tp!606071 () Bool)

(assert (=> b!2041681 (= e!1289062 tp!606071)))

(declare-fun b!2041682 () Bool)

(declare-fun tp!606074 () Bool)

(declare-fun tp!606073 () Bool)

(assert (=> b!2041682 (= e!1289062 (and tp!606074 tp!606073))))

(assert (=> b!2040960 (= tp!605732 e!1289062)))

(declare-fun b!2041679 () Bool)

(assert (=> b!2041679 (= e!1289062 tp_is_empty!9291)))

(assert (= (and b!2040960 ((_ is ElementMatch!5429) (_1!11952 (_1!11953 (h!27705 (zeroValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))))))) b!2041679))

(assert (= (and b!2040960 ((_ is Concat!9568) (_1!11952 (_1!11953 (h!27705 (zeroValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))))))) b!2041680))

(assert (= (and b!2040960 ((_ is Star!5429) (_1!11952 (_1!11953 (h!27705 (zeroValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))))))) b!2041681))

(assert (= (and b!2040960 ((_ is Union!5429) (_1!11952 (_1!11953 (h!27705 (zeroValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))))))) b!2041682))

(declare-fun b!2041683 () Bool)

(declare-fun e!1289065 () Bool)

(declare-fun tp!606079 () Bool)

(assert (=> b!2041683 (= e!1289065 tp!606079)))

(declare-fun b!2041684 () Bool)

(declare-fun e!1289063 () Bool)

(declare-fun tp!606076 () Bool)

(assert (=> b!2041684 (= e!1289063 tp!606076)))

(declare-fun setIsEmpty!11783 () Bool)

(declare-fun setRes!11783 () Bool)

(assert (=> setIsEmpty!11783 setRes!11783))

(declare-fun tp!606078 () Bool)

(declare-fun b!2041685 () Bool)

(declare-fun tp!606075 () Bool)

(declare-fun e!1289064 () Bool)

(assert (=> b!2041685 (= e!1289064 (and tp!606078 (inv!29648 (_2!11952 (_1!11953 (h!27705 (t!191497 (zeroValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))))))) e!1289063 tp_is_empty!9291 setRes!11783 tp!606075))))

(declare-fun condSetEmpty!11783 () Bool)

(assert (=> b!2041685 (= condSetEmpty!11783 (= (_2!11953 (h!27705 (t!191497 (zeroValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))))) ((as const (Array Context!1998 Bool)) false)))))

(assert (=> b!2040960 (= tp!605729 e!1289064)))

(declare-fun setElem!11783 () Context!1998)

(declare-fun setNonEmpty!11783 () Bool)

(declare-fun tp!606077 () Bool)

(assert (=> setNonEmpty!11783 (= setRes!11783 (and tp!606077 (inv!29648 setElem!11783) e!1289065))))

(declare-fun setRest!11783 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11783 (= (_2!11953 (h!27705 (t!191497 (zeroValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))))) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11783 true) setRest!11783))))

(assert (= b!2041685 b!2041684))

(assert (= (and b!2041685 condSetEmpty!11783) setIsEmpty!11783))

(assert (= (and b!2041685 (not condSetEmpty!11783)) setNonEmpty!11783))

(assert (= setNonEmpty!11783 b!2041683))

(assert (= (and b!2040960 ((_ is Cons!22304) (t!191497 (zeroValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575))))))))) b!2041685))

(declare-fun m!2485825 () Bool)

(assert (=> b!2041685 m!2485825))

(declare-fun m!2485827 () Bool)

(assert (=> setNonEmpty!11783 m!2485827))

(declare-fun b!2041686 () Bool)

(declare-fun e!1289066 () Bool)

(declare-fun tp!606080 () Bool)

(declare-fun tp!606081 () Bool)

(assert (=> b!2041686 (= e!1289066 (and tp!606080 tp!606081))))

(assert (=> b!2040959 (= tp!605730 e!1289066)))

(assert (= (and b!2040959 ((_ is Cons!22303) (exprs!1499 (_2!11952 (_1!11953 (h!27705 (zeroValue!2233 (v!27037 (underlying!4145 (v!27038 (underlying!4146 (cache!2270 cacheDown!575)))))))))))) b!2041686))

(declare-fun b!2041687 () Bool)

(declare-fun e!1289067 () Bool)

(declare-fun tp!606082 () Bool)

(declare-fun tp!606083 () Bool)

(assert (=> b!2041687 (= e!1289067 (and tp!606082 tp!606083))))

(assert (=> b!2041038 (= tp!605841 e!1289067)))

(assert (= (and b!2041038 ((_ is Cons!22303) (exprs!1499 setElem!11755))) b!2041687))

(declare-fun condSetEmpty!11784 () Bool)

(assert (=> setNonEmpty!11753 (= condSetEmpty!11784 (= setRest!11753 ((as const (Array Context!1998 Bool)) false)))))

(declare-fun setRes!11784 () Bool)

(assert (=> setNonEmpty!11753 (= tp!605835 setRes!11784)))

(declare-fun setIsEmpty!11784 () Bool)

(assert (=> setIsEmpty!11784 setRes!11784))

(declare-fun e!1289068 () Bool)

(declare-fun setNonEmpty!11784 () Bool)

(declare-fun tp!606084 () Bool)

(declare-fun setElem!11784 () Context!1998)

(assert (=> setNonEmpty!11784 (= setRes!11784 (and tp!606084 (inv!29648 setElem!11784) e!1289068))))

(declare-fun setRest!11784 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11784 (= setRest!11753 ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11784 true) setRest!11784))))

(declare-fun b!2041688 () Bool)

(declare-fun tp!606085 () Bool)

(assert (=> b!2041688 (= e!1289068 tp!606085)))

(assert (= (and setNonEmpty!11753 condSetEmpty!11784) setIsEmpty!11784))

(assert (= (and setNonEmpty!11753 (not condSetEmpty!11784)) setNonEmpty!11784))

(assert (= setNonEmpty!11784 b!2041688))

(declare-fun m!2485829 () Bool)

(assert (=> setNonEmpty!11784 m!2485829))

(declare-fun b!2041690 () Bool)

(declare-fun e!1289069 () Bool)

(declare-fun tp!606086 () Bool)

(declare-fun tp!606088 () Bool)

(assert (=> b!2041690 (= e!1289069 (and tp!606086 tp!606088))))

(declare-fun b!2041691 () Bool)

(declare-fun tp!606087 () Bool)

(assert (=> b!2041691 (= e!1289069 tp!606087)))

(declare-fun b!2041692 () Bool)

(declare-fun tp!606090 () Bool)

(declare-fun tp!606089 () Bool)

(assert (=> b!2041692 (= e!1289069 (and tp!606090 tp!606089))))

(assert (=> b!2040999 (= tp!605785 e!1289069)))

(declare-fun b!2041689 () Bool)

(assert (=> b!2041689 (= e!1289069 tp_is_empty!9291)))

(assert (= (and b!2040999 ((_ is ElementMatch!5429) (regex!4003 (h!27708 (t!191500 rules!1563))))) b!2041689))

(assert (= (and b!2040999 ((_ is Concat!9568) (regex!4003 (h!27708 (t!191500 rules!1563))))) b!2041690))

(assert (= (and b!2040999 ((_ is Star!5429) (regex!4003 (h!27708 (t!191500 rules!1563))))) b!2041691))

(assert (= (and b!2040999 ((_ is Union!5429) (regex!4003 (h!27708 (t!191500 rules!1563))))) b!2041692))

(declare-fun b!2041693 () Bool)

(declare-fun e!1289071 () Bool)

(declare-fun tp!606092 () Bool)

(assert (=> b!2041693 (= e!1289071 tp!606092)))

(declare-fun e!1289072 () Bool)

(assert (=> b!2040988 (= tp!605772 e!1289072)))

(declare-fun tp!606094 () Bool)

(declare-fun setRes!11785 () Bool)

(declare-fun setNonEmpty!11785 () Bool)

(declare-fun setElem!11785 () Context!1998)

(assert (=> setNonEmpty!11785 (= setRes!11785 (and tp!606094 (inv!29648 setElem!11785) e!1289071))))

(declare-fun setRest!11785 () (InoxSet Context!1998))

(assert (=> setNonEmpty!11785 (= (_2!11956 (h!27710 (t!191502 mapValue!9137))) ((_ map or) (store ((as const (Array Context!1998 Bool)) false) setElem!11785 true) setRest!11785))))

(declare-fun e!1289070 () Bool)

(declare-fun b!2041694 () Bool)

(declare-fun tp!606093 () Bool)

(assert (=> b!2041694 (= e!1289072 (and (inv!29648 (_1!11955 (_1!11956 (h!27710 (t!191502 mapValue!9137))))) e!1289070 tp_is_empty!9291 setRes!11785 tp!606093))))

(declare-fun condSetEmpty!11785 () Bool)

(assert (=> b!2041694 (= condSetEmpty!11785 (= (_2!11956 (h!27710 (t!191502 mapValue!9137))) ((as const (Array Context!1998 Bool)) false)))))

(declare-fun b!2041695 () Bool)

(declare-fun tp!606091 () Bool)

(assert (=> b!2041695 (= e!1289070 tp!606091)))

(declare-fun setIsEmpty!11785 () Bool)

(assert (=> setIsEmpty!11785 setRes!11785))

(assert (= b!2041694 b!2041695))

(assert (= (and b!2041694 condSetEmpty!11785) setIsEmpty!11785))

(assert (= (and b!2041694 (not condSetEmpty!11785)) setNonEmpty!11785))

(assert (= setNonEmpty!11785 b!2041693))

(assert (= (and b!2040988 ((_ is Cons!22309) (t!191502 mapValue!9137))) b!2041694))

(declare-fun m!2485831 () Bool)

(assert (=> setNonEmpty!11785 m!2485831))

(declare-fun m!2485833 () Bool)

(assert (=> b!2041694 m!2485833))

(declare-fun b!2041696 () Bool)

(declare-fun e!1289073 () Bool)

(declare-fun tp!606095 () Bool)

(declare-fun tp!606096 () Bool)

(assert (=> b!2041696 (= e!1289073 (and tp!606095 tp!606096))))

(assert (=> b!2040987 (= tp!605771 e!1289073)))

(assert (= (and b!2040987 ((_ is Cons!22303) (exprs!1499 setElem!11748))) b!2041696))

(declare-fun b!2041697 () Bool)

(declare-fun e!1289074 () Bool)

(declare-fun tp!606097 () Bool)

(assert (=> b!2041697 (= e!1289074 (and tp_is_empty!9291 tp!606097))))

(assert (=> b!2041017 (= tp!605803 e!1289074)))

(assert (= (and b!2041017 ((_ is Cons!22306) (innerList!7541 (xs!10387 (c!330711 treated!60))))) b!2041697))

(declare-fun tp!606098 () Bool)

(declare-fun b!2041698 () Bool)

(declare-fun tp!606099 () Bool)

(declare-fun e!1289076 () Bool)

(assert (=> b!2041698 (= e!1289076 (and (inv!29638 (left!17758 (left!17758 (c!330711 treated!60)))) tp!606098 (inv!29638 (right!18088 (left!17758 (c!330711 treated!60)))) tp!606099))))

(declare-fun b!2041700 () Bool)

(declare-fun e!1289075 () Bool)

(declare-fun tp!606100 () Bool)

(assert (=> b!2041700 (= e!1289075 tp!606100)))

(declare-fun b!2041699 () Bool)

(assert (=> b!2041699 (= e!1289076 (and (inv!29649 (xs!10387 (left!17758 (c!330711 treated!60)))) e!1289075))))

(assert (=> b!2041015 (= tp!605801 (and (inv!29638 (left!17758 (c!330711 treated!60))) e!1289076))))

(assert (= (and b!2041015 ((_ is Node!7481) (left!17758 (c!330711 treated!60)))) b!2041698))

(assert (= b!2041699 b!2041700))

(assert (= (and b!2041015 ((_ is Leaf!10963) (left!17758 (c!330711 treated!60)))) b!2041699))

(declare-fun m!2485835 () Bool)

(assert (=> b!2041698 m!2485835))

(declare-fun m!2485837 () Bool)

(assert (=> b!2041698 m!2485837))

(declare-fun m!2485839 () Bool)

(assert (=> b!2041699 m!2485839))

(assert (=> b!2041015 m!2485005))

(declare-fun tp!606102 () Bool)

(declare-fun tp!606101 () Bool)

(declare-fun b!2041701 () Bool)

(declare-fun e!1289078 () Bool)

(assert (=> b!2041701 (= e!1289078 (and (inv!29638 (left!17758 (right!18088 (c!330711 treated!60)))) tp!606101 (inv!29638 (right!18088 (right!18088 (c!330711 treated!60)))) tp!606102))))

(declare-fun b!2041703 () Bool)

(declare-fun e!1289077 () Bool)

(declare-fun tp!606103 () Bool)

(assert (=> b!2041703 (= e!1289077 tp!606103)))

(declare-fun b!2041702 () Bool)

(assert (=> b!2041702 (= e!1289078 (and (inv!29649 (xs!10387 (right!18088 (c!330711 treated!60)))) e!1289077))))

(assert (=> b!2041015 (= tp!605802 (and (inv!29638 (right!18088 (c!330711 treated!60))) e!1289078))))

(assert (= (and b!2041015 ((_ is Node!7481) (right!18088 (c!330711 treated!60)))) b!2041701))

(assert (= b!2041702 b!2041703))

(assert (= (and b!2041015 ((_ is Leaf!10963) (right!18088 (c!330711 treated!60)))) b!2041702))

(declare-fun m!2485841 () Bool)

(assert (=> b!2041701 m!2485841))

(declare-fun m!2485843 () Bool)

(assert (=> b!2041701 m!2485843))

(declare-fun m!2485845 () Bool)

(assert (=> b!2041702 m!2485845))

(assert (=> b!2041015 m!2485007))

(declare-fun b_lambda!69055 () Bool)

(assert (= b_lambda!69053 (or d!625020 b_lambda!69055)))

(declare-fun bs!421861 () Bool)

(declare-fun d!625302 () Bool)

(assert (= bs!421861 (and d!625302 d!625020)))

(assert (=> bs!421861 (= (dynLambda!11114 lambda!76644 (h!27708 rules!1563)) (ruleValid!1226 thiss!12889 (h!27708 rules!1563)))))

(assert (=> bs!421861 m!2484839))

(assert (=> b!2041236 d!625302))

(check-sat (not d!625258) (not bm!125278) (not b!2041129) (not b!2041336) (not d!625230) (not b!2041575) (not b!2041500) (not b!2041324) (not b!2041473) (not b!2041628) (not b!2041374) (not d!625158) (not b!2041545) (not b!2041392) (not d!625108) (not b!2041395) (not b!2041680) (not b!2041578) (not b!2041463) (not d!625190) (not b!2041393) (not b!2041657) (not d!625278) (not b!2041566) (not b!2041542) (not setNonEmpty!11784) (not b!2041550) (not b!2041269) (not d!625096) (not b!2041493) (not d!625100) (not b!2041688) (not b!2041464) (not b!2041703) (not d!625272) (not d!625206) (not b!2041554) (not setNonEmpty!11779) (not b!2041571) (not b!2041385) (not b!2041260) (not setNonEmpty!11782) (not setNonEmpty!11767) (not b!2041144) (not b_lambda!69055) (not bm!125266) (not b!2041630) (not b!2041508) (not b!2041520) (not d!625256) (not b!2041276) (not b!2041696) (not d!625248) (not b!2041626) (not b!2041681) (not setNonEmpty!11758) (not setNonEmpty!11771) (not b!2041638) (not d!625152) (not d!625078) (not b!2041702) (not b!2041417) (not b!2041653) (not d!625224) (not b!2041612) (not setNonEmpty!11764) (not b!2041693) (not b!2041446) (not bm!125274) (not b!2041648) (not d!625098) b_and!162829 b_and!162821 (not b!2041145) (not d!625222) (not d!625072) (not b!2041399) (not b!2041607) (not bm!125258) (not b!2041700) (not mapNonEmpty!9144) (not d!625216) (not b!2041488) (not b!2041287) (not b!2041322) (not b!2041677) (not b!2041551) (not d!625284) (not d!625086) (not b!2041262) b_and!162817 (not b!2041289) (not b!2041240) (not b!2041469) (not b!2041684) (not b!2041597) (not b!2041271) (not b!2041672) (not b!2041656) (not b!2041397) (not d!625102) (not b!2041573) (not b!2041485) (not b!2041524) (not b!2041319) (not b!2040955) (not b!2041413) (not bm!125265) (not d!625136) (not b!2041568) (not d!625088) (not b!2041569) (not b!2041517) (not b!2041472) (not b!2041259) (not bm!125280) (not b!2041695) (not b_next!57585) (not d!625214) (not b!2041373) (not d!625142) (not b!2041048) (not b!2041261) (not b!2041641) (not setNonEmpty!11759) (not b!2041341) (not b!2041365) (not b!2041600) (not b!2041649) (not b!2041620) (not setNonEmpty!11783) (not b!2041320) (not b!2041694) (not b!2041183) (not d!625264) (not b!2040941) (not d!625218) (not b_next!57591) (not d!625134) (not b!2041634) (not bm!125259) (not setNonEmpty!11768) (not b!2041621) (not b!2041290) (not b!2041642) (not b!2041631) (not b!2041379) (not b!2041629) (not b!2041525) (not b!2041652) (not b!2041264) (not b!2041257) (not d!625290) (not bs!421861) (not b!2041606) (not d!625270) (not setNonEmpty!11777) (not b!2041523) (not b!2041356) (not b!2041675) (not b!2041467) (not b!2041489) (not setNonEmpty!11774) (not b!2041072) (not b!2041499) (not b!2041480) b_and!162831 (not b!2041658) (not b!2041558) (not b_next!57579) (not d!625260) (not b!2041418) (not setNonEmpty!11785) (not d!625250) (not b!2041229) (not d!625242) (not b!2041303) (not d!625162) (not b!2041295) (not b!2041482) (not setNonEmpty!11756) (not d!625154) (not b!2041528) (not b!2041639) (not b!2041208) (not b!2041348) (not setNonEmpty!11772) (not b!2041231) (not b!2041507) (not b!2041697) (not b!2041292) (not b!2041243) (not b!2041386) (not b!2041610) (not b!2041613) (not b!2041354) (not b!2041544) (not b!2041506) (not b!2041169) (not b!2041213) (not b!2041491) (not b!2041616) (not b!2041425) (not b!2041598) (not b!2041553) (not d!625080) (not b!2041625) (not d!625170) (not b!2040944) (not b!2041664) (not b!2041400) (not b_next!57595) (not b!2041390) (not bm!125270) (not b!2041401) (not b!2041595) (not bm!125279) b_and!162819 (not b!2041643) (not b!2041135) (not b!2041321) (not d!625104) (not b!2041138) (not setNonEmpty!11775) (not b!2041549) (not setNonEmpty!11765) (not d!625194) (not b!2041212) (not b!2041471) (not b!2041073) (not b!2041398) (not b!2041665) (not b!2041527) (not b!2041690) (not b!2041576) (not b!2041622) (not b!2041119) (not b!2041619) b_and!162823 (not b!2041384) (not b!2041678) (not b!2041671) (not d!625262) (not b!2041265) (not d!625296) (not b!2041300) (not b!2041541) b_and!162813 (not b!2041358) (not d!625220) (not b!2041209) (not bm!125269) (not bm!125277) (not b!2041453) (not b!2041547) (not b!2041483) (not b!2041565) (not b!2041121) (not b!2041361) (not b_next!57599) (not d!625064) (not d!625202) (not b!2041326) (not b!2041673) (not d!625082) (not b!2041477) (not d!625294) (not d!625246) (not b!2041699) (not b!2041687) (not setNonEmpty!11763) (not setNonEmpty!11776) (not b!2041535) (not b!2041663) (not b!2041466) (not b!2041662) (not b!2041307) (not b!2041655) (not b!2041362) (not b!2041455) (not b!2041651) (not d!625176) (not b!2041676) (not b!2041481) (not b!2041344) (not b!2041230) (not b!2041327) (not b!2041207) (not b!2041580) (not b!2041060) (not setNonEmpty!11781) (not d!625274) (not b!2041633) (not b_next!57597) (not b_next!57583) (not b!2041512) (not setNonEmpty!11769) (not b!2041325) (not bm!125263) (not d!625148) (not b!2041147) (not d!625174) (not b!2041015) (not b!2041396) (not b!2041228) (not b!2041682) (not b!2041623) (not b!2041548) (not d!625254) (not b!2041614) (not b!2041601) (not b!2041685) (not d!625204) (not b!2041617) (not b!2041210) (not b!2041636) (not b!2041667) (not d!625208) (not d!625060) (not b!2041574) (not b!2041522) (not setNonEmpty!11757) (not b!2041513) (not b!2041546) (not b!2041332) (not b!2041521) b_and!162825 (not b!2041577) (not b!2041345) (not setNonEmpty!11760) (not b!2041484) (not b!2041519) (not d!625210) (not b!2041387) (not b_next!57587) (not b!2041615) (not b!2041533) (not b!2041452) (not b!2041509) (not b!2041238) b_and!162815 (not b!2041686) tp_is_empty!9291 (not b!2041412) (not b!2041698) (not b!2041258) (not b!2041174) (not b!2041241) (not b!2041347) (not b!2041267) (not b!2041646) (not b!2041560) (not b!2041570) (not d!625252) (not b!2041526) (not b!2041654) (not d!625234) (not b!2041670) (not d!625236) (not b!2041591) (not b_next!57593) (not b!2041593) (not b_next!57581) (not b!2041447) (not b!2041487) (not d!625116) (not b!2041450) (not b!2041624) (not b!2041557) b_and!162835 (not b!2041567) b_and!162833 (not b!2041383) (not d!625292) (not b!2041206) (not setNonEmpty!11780) (not b!2041650) (not b!2041660) (not b!2041486) (not b!2041370) (not d!625280) (not b!2041227) (not b!2041445) (not b!2041061) (not d!625106) (not d!625178) (not b!2041226) (not b!2041538) (not d!625238) (not b!2041389) (not b!2041335) (not b!2041465) (not b!2041559) (not d!625172) (not b!2041555) (not b!2041342) (not d!625146) (not d!625244) (not d!625150) (not b!2041181) (not b!2041683) (not d!625186) (not b!2041515) (not b_next!57577) (not b!2041674) (not b!2041479) (not b!2041475) (not b!2041380) (not b!2041474) (not b!2041426) (not b!2041188) (not b!2041627) (not setNonEmpty!11770) (not b!2041661) (not b!2041331) (not setNonEmpty!11766) (not b!2041669) b_and!162827 (not b!2041579) (not d!625110) (not d!625066) (not b!2041592) (not setNonEmpty!11773) (not b!2041645) (not b!2041461) (not d!625084) (not b!2041343) (not mapNonEmpty!9145) (not b!2041285) (not b!2041611) (not b!2041476) (not b!2041609) (not d!625266) (not b!2041701) (not b!2041369) (not b!2041644) (not b!2041668) (not b!2041470) (not b!2041237) (not d!625276) (not d!625200) (not b!2041518) (not b!2041691) (not d!625090) (not b!2041618) (not d!625128) (not b!2041536) (not b!2041692) (not b_next!57589) (not b!2041608) (not b!2041534) (not b!2041537) (not b!2041323) (not b!2041510) (not b!2041075) (not b!2041502) (not b!2041494) (not d!625168) (not b!2041596) (not b!2041304) (not d!625228) (not b!2041637) (not b!2041256) (not b!2041490) (not b!2041366) (not b!2041305) (not d!625226) (not b!2041540) (not setNonEmpty!11778) (not b!2041632) (not b!2041647) (not d!625058) (not b!2041130))
(check-sat b_and!162817 (not b_next!57585) (not b_next!57591) b_and!162823 b_and!162813 (not b_next!57599) b_and!162815 (not b_next!57577) b_and!162827 (not b_next!57589) b_and!162829 b_and!162821 b_and!162831 (not b_next!57579) (not b_next!57595) b_and!162819 (not b_next!57597) (not b_next!57583) b_and!162825 (not b_next!57587) (not b_next!57593) (not b_next!57581) b_and!162835 b_and!162833)
