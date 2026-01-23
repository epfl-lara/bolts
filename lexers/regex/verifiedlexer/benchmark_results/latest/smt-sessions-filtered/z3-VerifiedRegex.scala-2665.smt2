; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143590 () Bool)

(assert start!143590)

(declare-fun b!1547560 () Bool)

(declare-fun b_free!40771 () Bool)

(declare-fun b_next!41475 () Bool)

(assert (=> b!1547560 (= b_free!40771 (not b_next!41475))))

(declare-fun tp!451109 () Bool)

(declare-fun b_and!107861 () Bool)

(assert (=> b!1547560 (= tp!451109 b_and!107861)))

(declare-fun b_free!40773 () Bool)

(declare-fun b_next!41477 () Bool)

(assert (=> b!1547560 (= b_free!40773 (not b_next!41477))))

(declare-fun tp!451091 () Bool)

(declare-fun b_and!107863 () Bool)

(assert (=> b!1547560 (= tp!451091 b_and!107863)))

(declare-fun b!1547579 () Bool)

(declare-fun b_free!40775 () Bool)

(declare-fun b_next!41479 () Bool)

(assert (=> b!1547579 (= b_free!40775 (not b_next!41479))))

(declare-fun tp!451095 () Bool)

(declare-fun b_and!107865 () Bool)

(assert (=> b!1547579 (= tp!451095 b_and!107865)))

(declare-fun b!1547551 () Bool)

(declare-fun b_free!40777 () Bool)

(declare-fun b_next!41481 () Bool)

(assert (=> b!1547551 (= b_free!40777 (not b_next!41481))))

(declare-fun tp!451094 () Bool)

(declare-fun b_and!107867 () Bool)

(assert (=> b!1547551 (= tp!451094 b_and!107867)))

(declare-fun b!1547580 () Bool)

(declare-fun b_free!40779 () Bool)

(declare-fun b_next!41483 () Bool)

(assert (=> b!1547580 (= b_free!40779 (not b_next!41483))))

(declare-fun tp!451108 () Bool)

(declare-fun b_and!107869 () Bool)

(assert (=> b!1547580 (= tp!451108 b_and!107869)))

(declare-fun b!1547553 () Bool)

(declare-fun b_free!40781 () Bool)

(declare-fun b_next!41485 () Bool)

(assert (=> b!1547553 (= b_free!40781 (not b_next!41485))))

(declare-fun tp!451102 () Bool)

(declare-fun b_and!107871 () Bool)

(assert (=> b!1547553 (= tp!451102 b_and!107871)))

(declare-fun b!1547576 () Bool)

(declare-fun b_free!40783 () Bool)

(declare-fun b_next!41487 () Bool)

(assert (=> b!1547576 (= b_free!40783 (not b_next!41487))))

(declare-fun tp!451116 () Bool)

(declare-fun b_and!107873 () Bool)

(assert (=> b!1547576 (= tp!451116 b_and!107873)))

(declare-fun b!1547557 () Bool)

(declare-fun b_free!40785 () Bool)

(declare-fun b_next!41489 () Bool)

(assert (=> b!1547557 (= b_free!40785 (not b_next!41489))))

(declare-fun tp!451114 () Bool)

(declare-fun b_and!107875 () Bool)

(assert (=> b!1547557 (= tp!451114 b_and!107875)))

(declare-fun b!1547595 () Bool)

(declare-fun e!991681 () Bool)

(assert (=> b!1547595 (= e!991681 true)))

(declare-fun b!1547594 () Bool)

(declare-fun e!991680 () Bool)

(assert (=> b!1547594 (= e!991680 e!991681)))

(declare-fun b!1547548 () Bool)

(assert (=> b!1547548 e!991680))

(assert (= b!1547594 b!1547595))

(assert (= b!1547548 b!1547594))

(declare-fun lambda!65505 () Int)

(declare-datatypes ((List!16687 0))(
  ( (Nil!16619) (Cons!16619 (h!22020 (_ BitVec 16)) (t!141090 List!16687)) )
))
(declare-datatypes ((TokenValue!3003 0))(
  ( (FloatLiteralValue!6006 (text!21466 List!16687)) (TokenValueExt!3002 (__x!10844 Int)) (Broken!15015 (value!92645 List!16687)) (Object!3070) (End!3003) (Def!3003) (Underscore!3003) (Match!3003) (Else!3003) (Error!3003) (Case!3003) (If!3003) (Extends!3003) (Abstract!3003) (Class!3003) (Val!3003) (DelimiterValue!6006 (del!3063 List!16687)) (KeywordValue!3009 (value!92646 List!16687)) (CommentValue!6006 (value!92647 List!16687)) (WhitespaceValue!6006 (value!92648 List!16687)) (IndentationValue!3003 (value!92649 List!16687)) (String!19302) (Int32!3003) (Broken!15016 (value!92650 List!16687)) (Boolean!3004) (Unit!25952) (OperatorValue!3006 (op!3063 List!16687)) (IdentifierValue!6006 (value!92651 List!16687)) (IdentifierValue!6007 (value!92652 List!16687)) (WhitespaceValue!6007 (value!92653 List!16687)) (True!6006) (False!6006) (Broken!15017 (value!92654 List!16687)) (Broken!15018 (value!92655 List!16687)) (True!6007) (RightBrace!3003) (RightBracket!3003) (Colon!3003) (Null!3003) (Comma!3003) (LeftBracket!3003) (False!6007) (LeftBrace!3003) (ImaginaryLiteralValue!3003 (text!21467 List!16687)) (StringLiteralValue!9009 (value!92656 List!16687)) (EOFValue!3003 (value!92657 List!16687)) (IdentValue!3003 (value!92658 List!16687)) (DelimiterValue!6007 (value!92659 List!16687)) (DedentValue!3003 (value!92660 List!16687)) (NewLineValue!3003 (value!92661 List!16687)) (IntegerValue!9009 (value!92662 (_ BitVec 32)) (text!21468 List!16687)) (IntegerValue!9010 (value!92663 Int) (text!21469 List!16687)) (Times!3003) (Or!3003) (Equal!3003) (Minus!3003) (Broken!15019 (value!92664 List!16687)) (And!3003) (Div!3003) (LessEqual!3003) (Mod!3003) (Concat!7244) (Not!3003) (Plus!3003) (SpaceValue!3003 (value!92665 List!16687)) (IntegerValue!9011 (value!92666 Int) (text!21470 List!16687)) (StringLiteralValue!9010 (text!21471 List!16687)) (FloatLiteralValue!6007 (text!21472 List!16687)) (BytesLiteralValue!3003 (value!92667 List!16687)) (CommentValue!6007 (value!92668 List!16687)) (StringLiteralValue!9011 (value!92669 List!16687)) (ErrorTokenValue!3003 (msg!3064 List!16687)) )
))
(declare-datatypes ((String!19303 0))(
  ( (String!19304 (value!92670 String)) )
))
(declare-datatypes ((C!8660 0))(
  ( (C!8661 (val!4902 Int)) )
))
(declare-datatypes ((List!16688 0))(
  ( (Nil!16620) (Cons!16620 (h!22021 C!8660) (t!141091 List!16688)) )
))
(declare-datatypes ((IArray!11067 0))(
  ( (IArray!11068 (innerList!5591 List!16688)) )
))
(declare-datatypes ((Conc!5531 0))(
  ( (Node!5531 (left!13552 Conc!5531) (right!13882 Conc!5531) (csize!11292 Int) (cheight!5742 Int)) (Leaf!8197 (xs!8331 IArray!11067) (csize!11293 Int)) (Empty!5531) )
))
(declare-datatypes ((BalanceConc!11004 0))(
  ( (BalanceConc!11005 (c!252151 Conc!5531)) )
))
(declare-datatypes ((Regex!4241 0))(
  ( (ElementMatch!4241 (c!252152 C!8660)) (Concat!7245 (regOne!8994 Regex!4241) (regTwo!8994 Regex!4241)) (EmptyExpr!4241) (Star!4241 (reg!4570 Regex!4241)) (EmptyLang!4241) (Union!4241 (regOne!8995 Regex!4241) (regTwo!8995 Regex!4241)) )
))
(declare-datatypes ((TokenValueInjection!5666 0))(
  ( (TokenValueInjection!5667 (toValue!4276 Int) (toChars!4135 Int)) )
))
(declare-datatypes ((Rule!5626 0))(
  ( (Rule!5627 (regex!2913 Regex!4241) (tag!3177 String!19303) (isSeparator!2913 Bool) (transformation!2913 TokenValueInjection!5666)) )
))
(declare-fun rule!240 () Rule!5626)

(declare-fun order!9691 () Int)

(declare-fun order!9693 () Int)

(declare-fun dynLambda!7340 (Int Int) Int)

(declare-fun dynLambda!7341 (Int Int) Int)

(assert (=> b!1547595 (< (dynLambda!7340 order!9691 (toValue!4276 (transformation!2913 rule!240))) (dynLambda!7341 order!9693 lambda!65505))))

(declare-fun order!9695 () Int)

(declare-fun dynLambda!7342 (Int Int) Int)

(assert (=> b!1547595 (< (dynLambda!7342 order!9695 (toChars!4135 (transformation!2913 rule!240))) (dynLambda!7341 order!9693 lambda!65505))))

(declare-fun res!692052 () Bool)

(declare-fun e!991672 () Bool)

(assert (=> b!1547548 (=> res!692052 e!991672)))

(declare-fun Forall!592 (Int) Bool)

(assert (=> b!1547548 (= res!692052 (not (Forall!592 lambda!65505)))))

(declare-fun mapIsEmpty!7974 () Bool)

(declare-fun mapRes!7975 () Bool)

(assert (=> mapIsEmpty!7974 mapRes!7975))

(declare-fun b!1547549 () Bool)

(declare-fun e!991645 () Bool)

(declare-datatypes ((List!16689 0))(
  ( (Nil!16621) (Cons!16621 (h!22022 Regex!4241) (t!141092 List!16689)) )
))
(declare-datatypes ((Context!1518 0))(
  ( (Context!1519 (exprs!1259 List!16689)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1664 0))(
  ( (tuple3!1665 (_1!9173 (InoxSet Context!1518)) (_2!9173 Int) (_3!1251 Int)) )
))
(declare-datatypes ((tuple2!15844 0))(
  ( (tuple2!15845 (_1!9174 tuple3!1664) (_2!9174 Int)) )
))
(declare-datatypes ((List!16690 0))(
  ( (Nil!16622) (Cons!16622 (h!22023 tuple2!15844) (t!141093 List!16690)) )
))
(declare-datatypes ((array!5886 0))(
  ( (array!5887 (arr!2620 (Array (_ BitVec 32) List!16690)) (size!13422 (_ BitVec 32))) )
))
(declare-datatypes ((array!5888 0))(
  ( (array!5889 (arr!2621 (Array (_ BitVec 32) (_ BitVec 64))) (size!13423 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3408 0))(
  ( (LongMapFixedSize!3409 (defaultEntry!2064 Int) (mask!4913 (_ BitVec 32)) (extraKeys!1951 (_ BitVec 32)) (zeroValue!1961 List!16690) (minValue!1961 List!16690) (_size!3489 (_ BitVec 32)) (_keys!1998 array!5888) (_values!1983 array!5886) (_vacant!1765 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6701 0))(
  ( (Cell!6702 (v!23431 LongMapFixedSize!3408)) )
))
(declare-datatypes ((Hashable!1648 0))(
  ( (HashableExt!1647 (__x!10845 Int)) )
))
(declare-datatypes ((MutLongMap!1704 0))(
  ( (LongMap!1704 (underlying!3617 Cell!6701)) (MutLongMapExt!1703 (__x!10846 Int)) )
))
(declare-datatypes ((Cell!6703 0))(
  ( (Cell!6704 (v!23432 MutLongMap!1704)) )
))
(declare-datatypes ((MutableMap!1648 0))(
  ( (MutableMapExt!1647 (__x!10847 Int)) (HashMap!1648 (underlying!3618 Cell!6703) (hashF!3567 Hashable!1648) (_size!3490 (_ BitVec 32)) (defaultValue!1808 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!424 0))(
  ( (CacheFurthestNullable!425 (cache!2029 MutableMap!1648) (totalInput!2415 BalanceConc!11004)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!424)

(declare-fun tp!451093 () Bool)

(declare-fun inv!21884 (Conc!5531) Bool)

(assert (=> b!1547549 (= e!991645 (and (inv!21884 (c!252151 (totalInput!2415 cacheFurthestNullable!103))) tp!451093))))

(declare-fun b!1547550 () Bool)

(declare-fun e!991659 () Bool)

(declare-fun e!991652 () Bool)

(assert (=> b!1547550 (= e!991659 e!991652)))

(declare-fun res!692044 () Bool)

(assert (=> b!1547550 (=> (not res!692044) (not e!991652))))

(declare-datatypes ((tuple2!15846 0))(
  ( (tuple2!15847 (_1!9175 Context!1518) (_2!9175 C!8660)) )
))
(declare-datatypes ((tuple2!15848 0))(
  ( (tuple2!15849 (_1!9176 tuple2!15846) (_2!9176 (InoxSet Context!1518))) )
))
(declare-datatypes ((List!16691 0))(
  ( (Nil!16623) (Cons!16623 (h!22024 tuple2!15848) (t!141094 List!16691)) )
))
(declare-datatypes ((array!5890 0))(
  ( (array!5891 (arr!2622 (Array (_ BitVec 32) List!16691)) (size!13424 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3410 0))(
  ( (LongMapFixedSize!3411 (defaultEntry!2065 Int) (mask!4914 (_ BitVec 32)) (extraKeys!1952 (_ BitVec 32)) (zeroValue!1962 List!16691) (minValue!1962 List!16691) (_size!3491 (_ BitVec 32)) (_keys!1999 array!5888) (_values!1984 array!5890) (_vacant!1766 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6705 0))(
  ( (Cell!6706 (v!23433 LongMapFixedSize!3410)) )
))
(declare-datatypes ((MutLongMap!1705 0))(
  ( (LongMap!1705 (underlying!3619 Cell!6705)) (MutLongMapExt!1704 (__x!10848 Int)) )
))
(declare-datatypes ((Cell!6707 0))(
  ( (Cell!6708 (v!23434 MutLongMap!1705)) )
))
(declare-datatypes ((tuple3!1666 0))(
  ( (tuple3!1667 (_1!9177 Regex!4241) (_2!9177 Context!1518) (_3!1252 C!8660)) )
))
(declare-datatypes ((Hashable!1649 0))(
  ( (HashableExt!1648 (__x!10849 Int)) )
))
(declare-datatypes ((MutableMap!1649 0))(
  ( (MutableMapExt!1648 (__x!10850 Int)) (HashMap!1649 (underlying!3620 Cell!6707) (hashF!3568 Hashable!1649) (_size!3492 (_ BitVec 32)) (defaultValue!1809 Int)) )
))
(declare-datatypes ((CacheUp!996 0))(
  ( (CacheUp!997 (cache!2030 MutableMap!1649)) )
))
(declare-datatypes ((tuple2!15850 0))(
  ( (tuple2!15851 (_1!9178 tuple3!1666) (_2!9178 (InoxSet Context!1518))) )
))
(declare-datatypes ((List!16692 0))(
  ( (Nil!16624) (Cons!16624 (h!22025 tuple2!15850) (t!141095 List!16692)) )
))
(declare-datatypes ((array!5892 0))(
  ( (array!5893 (arr!2623 (Array (_ BitVec 32) List!16692)) (size!13425 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3412 0))(
  ( (LongMapFixedSize!3413 (defaultEntry!2066 Int) (mask!4915 (_ BitVec 32)) (extraKeys!1953 (_ BitVec 32)) (zeroValue!1963 List!16692) (minValue!1963 List!16692) (_size!3493 (_ BitVec 32)) (_keys!2000 array!5888) (_values!1985 array!5892) (_vacant!1767 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6709 0))(
  ( (Cell!6710 (v!23435 LongMapFixedSize!3412)) )
))
(declare-datatypes ((tuple2!15852 0))(
  ( (tuple2!15853 (_1!9179 BalanceConc!11004) (_2!9179 BalanceConc!11004)) )
))
(declare-datatypes ((MutLongMap!1706 0))(
  ( (LongMap!1706 (underlying!3621 Cell!6709)) (MutLongMapExt!1705 (__x!10851 Int)) )
))
(declare-datatypes ((Cell!6711 0))(
  ( (Cell!6712 (v!23436 MutLongMap!1706)) )
))
(declare-datatypes ((Hashable!1650 0))(
  ( (HashableExt!1649 (__x!10852 Int)) )
))
(declare-datatypes ((MutableMap!1650 0))(
  ( (MutableMapExt!1649 (__x!10853 Int)) (HashMap!1650 (underlying!3622 Cell!6711) (hashF!3569 Hashable!1650) (_size!3494 (_ BitVec 32)) (defaultValue!1810 Int)) )
))
(declare-datatypes ((CacheDown!1004 0))(
  ( (CacheDown!1005 (cache!2031 MutableMap!1650)) )
))
(declare-datatypes ((tuple4!838 0))(
  ( (tuple4!839 (_1!9180 tuple2!15852) (_2!9180 CacheUp!996) (_3!1253 CacheDown!1004) (_4!419 CacheFurthestNullable!424)) )
))
(declare-fun lt!535934 () tuple4!838)

(declare-fun isEmpty!10057 (BalanceConc!11004) Bool)

(assert (=> b!1547550 (= res!692044 (not (isEmpty!10057 (_1!9179 (_1!9180 lt!535934)))))))

(declare-fun totalInput!568 () BalanceConc!11004)

(declare-fun cacheUp!755 () CacheUp!996)

(declare-fun input!1676 () BalanceConc!11004)

(declare-fun cacheDown!768 () CacheDown!1004)

(declare-fun findLongestMatchWithZipperSequenceV3Mem!25 (Regex!4241 BalanceConc!11004 BalanceConc!11004 CacheUp!996 CacheDown!1004 CacheFurthestNullable!424) tuple4!838)

(assert (=> b!1547550 (= lt!535934 (findLongestMatchWithZipperSequenceV3Mem!25 (regex!2913 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun tp!451090 () Bool)

(declare-fun e!991654 () Bool)

(declare-fun e!991641 () Bool)

(declare-fun tp!451099 () Bool)

(declare-fun array_inv!1884 (array!5888) Bool)

(declare-fun array_inv!1885 (array!5892) Bool)

(assert (=> b!1547551 (= e!991654 (and tp!451094 tp!451090 tp!451099 (array_inv!1884 (_keys!2000 (v!23435 (underlying!3621 (v!23436 (underlying!3622 (cache!2031 cacheDown!768))))))) (array_inv!1885 (_values!1985 (v!23435 (underlying!3621 (v!23436 (underlying!3622 (cache!2031 cacheDown!768))))))) e!991641))))

(declare-fun b!1547552 () Bool)

(declare-fun res!692046 () Bool)

(declare-fun e!991647 () Bool)

(assert (=> b!1547552 (=> (not res!692046) (not e!991647))))

(declare-fun valid!1374 (CacheDown!1004) Bool)

(assert (=> b!1547552 (= res!692046 (valid!1374 cacheDown!768))))

(declare-fun e!991675 () Bool)

(declare-fun e!991649 () Bool)

(assert (=> b!1547553 (= e!991675 (and e!991649 tp!451102))))

(declare-fun b!1547554 () Bool)

(declare-fun e!991661 () Bool)

(declare-fun e!991671 () Bool)

(declare-fun lt!535936 () MutLongMap!1706)

(get-info :version)

(assert (=> b!1547554 (= e!991661 (and e!991671 ((_ is LongMap!1706) lt!535936)))))

(assert (=> b!1547554 (= lt!535936 (v!23436 (underlying!3622 (cache!2031 cacheDown!768))))))

(declare-fun b!1547555 () Bool)

(declare-fun e!991653 () Bool)

(declare-fun tp!451112 () Bool)

(assert (=> b!1547555 (= e!991653 (and tp!451112 mapRes!7975))))

(declare-fun condMapEmpty!7975 () Bool)

(declare-fun mapDefault!7975 () List!16691)

(assert (=> b!1547555 (= condMapEmpty!7975 (= (arr!2622 (_values!1984 (v!23433 (underlying!3619 (v!23434 (underlying!3620 (cache!2030 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16691)) mapDefault!7975)))))

(declare-fun b!1547556 () Bool)

(declare-fun res!692049 () Bool)

(assert (=> b!1547556 (=> (not res!692049) (not e!991647))))

(declare-datatypes ((LexerInterface!2558 0))(
  ( (LexerInterfaceExt!2555 (__x!10854 Int)) (Lexer!2556) )
))
(declare-fun thiss!16438 () LexerInterface!2558)

(declare-fun ruleValid!663 (LexerInterface!2558 Rule!5626) Bool)

(assert (=> b!1547556 (= res!692049 (ruleValid!663 thiss!16438 rule!240))))

(declare-fun e!991674 () Bool)

(declare-fun e!991662 () Bool)

(assert (=> b!1547557 (= e!991674 (and e!991662 tp!451114))))

(declare-fun b!1547558 () Bool)

(declare-fun e!991643 () Bool)

(declare-fun tp!451110 () Bool)

(assert (=> b!1547558 (= e!991643 (and (inv!21884 (c!252151 input!1676)) tp!451110))))

(declare-fun b!1547559 () Bool)

(declare-fun e!991667 () Bool)

(declare-fun e!991665 () Bool)

(assert (=> b!1547559 (= e!991667 e!991665)))

(declare-fun e!991644 () Bool)

(assert (=> b!1547560 (= e!991644 (and tp!451109 tp!451091))))

(declare-fun b!1547561 () Bool)

(declare-fun e!991640 () Bool)

(declare-fun e!991658 () Bool)

(assert (=> b!1547561 (= e!991640 e!991658)))

(declare-fun b!1547562 () Bool)

(declare-fun tp!451100 () Bool)

(declare-fun mapRes!7976 () Bool)

(assert (=> b!1547562 (= e!991641 (and tp!451100 mapRes!7976))))

(declare-fun condMapEmpty!7976 () Bool)

(declare-fun mapDefault!7976 () List!16692)

(assert (=> b!1547562 (= condMapEmpty!7976 (= (arr!2623 (_values!1985 (v!23435 (underlying!3621 (v!23436 (underlying!3622 (cache!2031 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16692)) mapDefault!7976)))))

(declare-fun b!1547563 () Bool)

(declare-fun e!991650 () Bool)

(assert (=> b!1547563 (= e!991650 e!991654)))

(declare-fun b!1547564 () Bool)

(declare-fun e!991642 () Bool)

(assert (=> b!1547564 (= e!991665 e!991642)))

(declare-fun b!1547565 () Bool)

(assert (=> b!1547565 (= e!991671 e!991650)))

(declare-fun res!692042 () Bool)

(assert (=> start!143590 (=> (not res!692042) (not e!991647))))

(assert (=> start!143590 (= res!692042 ((_ is Lexer!2556) thiss!16438))))

(assert (=> start!143590 e!991647))

(declare-fun e!991660 () Bool)

(declare-fun inv!21885 (BalanceConc!11004) Bool)

(assert (=> start!143590 (and (inv!21885 totalInput!568) e!991660)))

(declare-fun e!991673 () Bool)

(declare-fun inv!21886 (CacheUp!996) Bool)

(assert (=> start!143590 (and (inv!21886 cacheUp!755) e!991673)))

(declare-fun e!991668 () Bool)

(declare-fun inv!21887 (CacheFurthestNullable!424) Bool)

(assert (=> start!143590 (and (inv!21887 cacheFurthestNullable!103) e!991668)))

(assert (=> start!143590 (and (inv!21885 input!1676) e!991643)))

(declare-fun e!991648 () Bool)

(assert (=> start!143590 e!991648))

(declare-fun e!991664 () Bool)

(declare-fun inv!21888 (CacheDown!1004) Bool)

(assert (=> start!143590 (and (inv!21888 cacheDown!768) e!991664)))

(assert (=> start!143590 true))

(declare-fun mapIsEmpty!7975 () Bool)

(declare-fun mapRes!7974 () Bool)

(assert (=> mapIsEmpty!7975 mapRes!7974))

(declare-fun b!1547566 () Bool)

(declare-fun res!692053 () Bool)

(assert (=> b!1547566 (=> (not res!692053) (not e!991659))))

(assert (=> b!1547566 (= res!692053 (= (totalInput!2415 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1547567 () Bool)

(declare-fun res!692050 () Bool)

(declare-fun e!991663 () Bool)

(assert (=> b!1547567 (=> res!692050 e!991663)))

(declare-fun lt!535939 () BalanceConc!11004)

(declare-fun lt!535925 () List!16688)

(declare-fun list!6459 (BalanceConc!11004) List!16688)

(assert (=> b!1547567 (= res!692050 (not (= (list!6459 lt!535939) lt!535925)))))

(declare-fun mapIsEmpty!7976 () Bool)

(assert (=> mapIsEmpty!7976 mapRes!7976))

(declare-fun b!1547568 () Bool)

(declare-fun tp!451115 () Bool)

(assert (=> b!1547568 (= e!991660 (and (inv!21884 (c!252151 totalInput!568)) tp!451115))))

(declare-fun b!1547569 () Bool)

(declare-fun lt!535928 () MutLongMap!1705)

(assert (=> b!1547569 (= e!991649 (and e!991640 ((_ is LongMap!1705) lt!535928)))))

(assert (=> b!1547569 (= lt!535928 (v!23434 (underlying!3620 (cache!2030 cacheUp!755))))))

(declare-fun b!1547570 () Bool)

(assert (=> b!1547570 (= e!991672 e!991663)))

(declare-fun res!692040 () Bool)

(assert (=> b!1547570 (=> res!692040 e!991663)))

(declare-fun lt!535932 () List!16688)

(declare-fun lt!535937 () Bool)

(declare-datatypes ((Token!5430 0))(
  ( (Token!5431 (value!92671 TokenValue!3003) (rule!4705 Rule!5626) (size!13426 Int) (originalCharacters!3746 List!16688)) )
))
(declare-datatypes ((tuple2!15854 0))(
  ( (tuple2!15855 (_1!9181 Token!5430) (_2!9181 List!16688)) )
))
(declare-datatypes ((Option!2993 0))(
  ( (None!2992) (Some!2992 (v!23437 tuple2!15854)) )
))
(declare-fun isDefined!2399 (Option!2993) Bool)

(declare-fun maxPrefixOneRule!682 (LexerInterface!2558 Rule!5626 List!16688) Option!2993)

(assert (=> b!1547570 (= res!692040 (not (= lt!535937 (isDefined!2399 (maxPrefixOneRule!682 thiss!16438 rule!240 lt!535932)))))))

(declare-datatypes ((tuple2!15856 0))(
  ( (tuple2!15857 (_1!9182 Token!5430) (_2!9182 BalanceConc!11004)) )
))
(declare-datatypes ((Option!2994 0))(
  ( (None!2993) (Some!2993 (v!23438 tuple2!15856)) )
))
(declare-fun isDefined!2400 (Option!2994) Bool)

(declare-fun apply!4089 (TokenValueInjection!5666 BalanceConc!11004) TokenValue!3003)

(declare-fun size!13427 (BalanceConc!11004) Int)

(assert (=> b!1547570 (= lt!535937 (isDefined!2400 (Some!2993 (tuple2!15857 (Token!5431 (apply!4089 (transformation!2913 rule!240) (_1!9179 (_1!9180 lt!535934))) rule!240 (size!13427 (_1!9179 (_1!9180 lt!535934))) lt!535925) (_2!9179 (_1!9180 lt!535934))))))))

(declare-datatypes ((Unit!25953 0))(
  ( (Unit!25954) )
))
(declare-fun lt!535926 () Unit!25953)

(declare-fun ForallOf!190 (Int BalanceConc!11004) Unit!25953)

(assert (=> b!1547570 (= lt!535926 (ForallOf!190 lambda!65505 lt!535939))))

(declare-fun seqFromList!1753 (List!16688) BalanceConc!11004)

(assert (=> b!1547570 (= lt!535939 (seqFromList!1753 lt!535925))))

(assert (=> b!1547570 (= lt!535925 (list!6459 (_1!9179 (_1!9180 lt!535934))))))

(declare-fun lt!535927 () Unit!25953)

(assert (=> b!1547570 (= lt!535927 (ForallOf!190 lambda!65505 (_1!9179 (_1!9180 lt!535934))))))

(declare-fun b!1547571 () Bool)

(assert (=> b!1547571 (= e!991668 (and e!991674 (inv!21885 (totalInput!2415 cacheFurthestNullable!103)) e!991645))))

(declare-fun b!1547572 () Bool)

(assert (=> b!1547572 (= e!991663 true)))

(declare-fun lt!535929 () TokenValue!3003)

(assert (=> b!1547572 (= lt!535929 (apply!4089 (transformation!2913 rule!240) lt!535939))))

(declare-fun lt!535931 () Unit!25953)

(declare-fun lemmaEqSameImage!135 (TokenValueInjection!5666 BalanceConc!11004 BalanceConc!11004) Unit!25953)

(assert (=> b!1547572 (= lt!535931 (lemmaEqSameImage!135 (transformation!2913 rule!240) (_1!9179 (_1!9180 lt!535934)) lt!535939))))

(declare-fun b!1547573 () Bool)

(declare-fun res!692041 () Bool)

(assert (=> b!1547573 (=> (not res!692041) (not e!991647))))

(declare-fun valid!1375 (CacheUp!996) Bool)

(assert (=> b!1547573 (= res!692041 (valid!1375 cacheUp!755))))

(declare-fun b!1547574 () Bool)

(declare-fun lt!535933 () MutLongMap!1704)

(assert (=> b!1547574 (= e!991662 (and e!991667 ((_ is LongMap!1704) lt!535933)))))

(assert (=> b!1547574 (= lt!535933 (v!23432 (underlying!3618 (cache!2029 cacheFurthestNullable!103))))))

(declare-fun mapNonEmpty!7974 () Bool)

(declare-fun tp!451106 () Bool)

(declare-fun tp!451104 () Bool)

(assert (=> mapNonEmpty!7974 (= mapRes!7974 (and tp!451106 tp!451104))))

(declare-fun mapRest!7975 () (Array (_ BitVec 32) List!16690))

(declare-fun mapKey!7975 () (_ BitVec 32))

(declare-fun mapValue!7976 () List!16690)

(assert (=> mapNonEmpty!7974 (= (arr!2620 (_values!1983 (v!23431 (underlying!3617 (v!23432 (underlying!3618 (cache!2029 cacheFurthestNullable!103))))))) (store mapRest!7975 mapKey!7975 mapValue!7976))))

(declare-fun b!1547575 () Bool)

(assert (=> b!1547575 (= e!991652 (not e!991672))))

(declare-fun res!692047 () Bool)

(assert (=> b!1547575 (=> res!692047 e!991672)))

(declare-fun semiInverseModEq!1096 (Int Int) Bool)

(assert (=> b!1547575 (= res!692047 (not (semiInverseModEq!1096 (toChars!4135 (transformation!2913 rule!240)) (toValue!4276 (transformation!2913 rule!240)))))))

(declare-fun lt!535930 () Unit!25953)

(declare-fun lemmaInv!406 (TokenValueInjection!5666) Unit!25953)

(assert (=> b!1547575 (= lt!535930 (lemmaInv!406 (transformation!2913 rule!240)))))

(declare-fun e!991670 () Bool)

(assert (=> b!1547575 e!991670))

(declare-fun res!692051 () Bool)

(assert (=> b!1547575 (=> res!692051 e!991670)))

(declare-datatypes ((tuple2!15858 0))(
  ( (tuple2!15859 (_1!9183 List!16688) (_2!9183 List!16688)) )
))
(declare-fun lt!535935 () tuple2!15858)

(declare-fun isEmpty!10058 (List!16688) Bool)

(assert (=> b!1547575 (= res!692051 (isEmpty!10058 (_1!9183 lt!535935)))))

(declare-fun findLongestMatchInner!312 (Regex!4241 List!16688 Int List!16688 List!16688 Int) tuple2!15858)

(declare-fun size!13428 (List!16688) Int)

(assert (=> b!1547575 (= lt!535935 (findLongestMatchInner!312 (regex!2913 rule!240) Nil!16620 (size!13428 Nil!16620) lt!535932 lt!535932 (size!13428 lt!535932)))))

(declare-fun lt!535938 () Unit!25953)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!296 (Regex!4241 List!16688) Unit!25953)

(assert (=> b!1547575 (= lt!535938 (longestMatchIsAcceptedByMatchOrIsEmpty!296 (regex!2913 rule!240) lt!535932))))

(declare-fun tp!451113 () Bool)

(declare-fun tp!451107 () Bool)

(declare-fun e!991656 () Bool)

(declare-fun array_inv!1886 (array!5886) Bool)

(assert (=> b!1547576 (= e!991642 (and tp!451116 tp!451107 tp!451113 (array_inv!1884 (_keys!1998 (v!23431 (underlying!3617 (v!23432 (underlying!3618 (cache!2029 cacheFurthestNullable!103))))))) (array_inv!1886 (_values!1983 (v!23431 (underlying!3617 (v!23432 (underlying!3618 (cache!2029 cacheFurthestNullable!103))))))) e!991656))))

(declare-fun b!1547577 () Bool)

(declare-fun matchR!1856 (Regex!4241 List!16688) Bool)

(assert (=> b!1547577 (= e!991670 (matchR!1856 (regex!2913 rule!240) (_1!9183 lt!535935)))))

(declare-fun mapNonEmpty!7975 () Bool)

(declare-fun tp!451097 () Bool)

(declare-fun tp!451103 () Bool)

(assert (=> mapNonEmpty!7975 (= mapRes!7975 (and tp!451097 tp!451103))))

(declare-fun mapKey!7974 () (_ BitVec 32))

(declare-fun mapRest!7974 () (Array (_ BitVec 32) List!16691))

(declare-fun mapValue!7975 () List!16691)

(assert (=> mapNonEmpty!7975 (= (arr!2622 (_values!1984 (v!23433 (underlying!3619 (v!23434 (underlying!3620 (cache!2030 cacheUp!755))))))) (store mapRest!7974 mapKey!7974 mapValue!7975))))

(declare-fun b!1547578 () Bool)

(assert (=> b!1547578 (= e!991673 e!991675)))

(declare-fun tp!451101 () Bool)

(declare-fun tp!451105 () Bool)

(declare-fun e!991655 () Bool)

(declare-fun array_inv!1887 (array!5890) Bool)

(assert (=> b!1547579 (= e!991655 (and tp!451095 tp!451105 tp!451101 (array_inv!1884 (_keys!1999 (v!23433 (underlying!3619 (v!23434 (underlying!3620 (cache!2030 cacheUp!755))))))) (array_inv!1887 (_values!1984 (v!23433 (underlying!3619 (v!23434 (underlying!3620 (cache!2030 cacheUp!755))))))) e!991653))))

(declare-fun e!991657 () Bool)

(assert (=> b!1547580 (= e!991657 (and e!991661 tp!451108))))

(declare-fun mapNonEmpty!7976 () Bool)

(declare-fun tp!451098 () Bool)

(declare-fun tp!451111 () Bool)

(assert (=> mapNonEmpty!7976 (= mapRes!7976 (and tp!451098 tp!451111))))

(declare-fun mapKey!7976 () (_ BitVec 32))

(declare-fun mapValue!7974 () List!16692)

(declare-fun mapRest!7976 () (Array (_ BitVec 32) List!16692))

(assert (=> mapNonEmpty!7976 (= (arr!2623 (_values!1985 (v!23435 (underlying!3621 (v!23436 (underlying!3622 (cache!2031 cacheDown!768))))))) (store mapRest!7976 mapKey!7976 mapValue!7974))))

(declare-fun b!1547581 () Bool)

(declare-fun tp!451096 () Bool)

(assert (=> b!1547581 (= e!991656 (and tp!451096 mapRes!7974))))

(declare-fun condMapEmpty!7974 () Bool)

(declare-fun mapDefault!7974 () List!16690)

(assert (=> b!1547581 (= condMapEmpty!7974 (= (arr!2620 (_values!1983 (v!23431 (underlying!3617 (v!23432 (underlying!3618 (cache!2029 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16690)) mapDefault!7974)))))

(declare-fun b!1547582 () Bool)

(assert (=> b!1547582 (= e!991664 e!991657)))

(declare-fun b!1547583 () Bool)

(assert (=> b!1547583 (= e!991647 e!991659)))

(declare-fun res!692045 () Bool)

(assert (=> b!1547583 (=> (not res!692045) (not e!991659))))

(declare-fun isSuffix!354 (List!16688 List!16688) Bool)

(assert (=> b!1547583 (= res!692045 (isSuffix!354 lt!535932 (list!6459 totalInput!568)))))

(assert (=> b!1547583 (= lt!535932 (list!6459 input!1676))))

(declare-fun b!1547584 () Bool)

(declare-fun res!692048 () Bool)

(assert (=> b!1547584 (=> res!692048 e!991663)))

(assert (=> b!1547584 (= res!692048 (not lt!535937))))

(declare-fun b!1547585 () Bool)

(declare-fun tp!451092 () Bool)

(declare-fun inv!21881 (String!19303) Bool)

(declare-fun inv!21889 (TokenValueInjection!5666) Bool)

(assert (=> b!1547585 (= e!991648 (and tp!451092 (inv!21881 (tag!3177 rule!240)) (inv!21889 (transformation!2913 rule!240)) e!991644))))

(declare-fun b!1547586 () Bool)

(declare-fun res!692043 () Bool)

(assert (=> b!1547586 (=> (not res!692043) (not e!991647))))

(declare-fun valid!1376 (CacheFurthestNullable!424) Bool)

(assert (=> b!1547586 (= res!692043 (valid!1376 cacheFurthestNullable!103))))

(declare-fun b!1547587 () Bool)

(assert (=> b!1547587 (= e!991658 e!991655)))

(assert (= (and start!143590 res!692042) b!1547556))

(assert (= (and b!1547556 res!692049) b!1547573))

(assert (= (and b!1547573 res!692041) b!1547552))

(assert (= (and b!1547552 res!692046) b!1547586))

(assert (= (and b!1547586 res!692043) b!1547583))

(assert (= (and b!1547583 res!692045) b!1547566))

(assert (= (and b!1547566 res!692053) b!1547550))

(assert (= (and b!1547550 res!692044) b!1547575))

(assert (= (and b!1547575 (not res!692051)) b!1547577))

(assert (= (and b!1547575 (not res!692047)) b!1547548))

(assert (= (and b!1547548 (not res!692052)) b!1547570))

(assert (= (and b!1547570 (not res!692040)) b!1547584))

(assert (= (and b!1547584 (not res!692048)) b!1547567))

(assert (= (and b!1547567 (not res!692050)) b!1547572))

(assert (= start!143590 b!1547568))

(assert (= (and b!1547555 condMapEmpty!7975) mapIsEmpty!7974))

(assert (= (and b!1547555 (not condMapEmpty!7975)) mapNonEmpty!7975))

(assert (= b!1547579 b!1547555))

(assert (= b!1547587 b!1547579))

(assert (= b!1547561 b!1547587))

(assert (= (and b!1547569 ((_ is LongMap!1705) (v!23434 (underlying!3620 (cache!2030 cacheUp!755))))) b!1547561))

(assert (= b!1547553 b!1547569))

(assert (= (and b!1547578 ((_ is HashMap!1649) (cache!2030 cacheUp!755))) b!1547553))

(assert (= start!143590 b!1547578))

(assert (= (and b!1547581 condMapEmpty!7974) mapIsEmpty!7975))

(assert (= (and b!1547581 (not condMapEmpty!7974)) mapNonEmpty!7974))

(assert (= b!1547576 b!1547581))

(assert (= b!1547564 b!1547576))

(assert (= b!1547559 b!1547564))

(assert (= (and b!1547574 ((_ is LongMap!1704) (v!23432 (underlying!3618 (cache!2029 cacheFurthestNullable!103))))) b!1547559))

(assert (= b!1547557 b!1547574))

(assert (= (and b!1547571 ((_ is HashMap!1648) (cache!2029 cacheFurthestNullable!103))) b!1547557))

(assert (= b!1547571 b!1547549))

(assert (= start!143590 b!1547571))

(assert (= start!143590 b!1547558))

(assert (= b!1547585 b!1547560))

(assert (= start!143590 b!1547585))

(assert (= (and b!1547562 condMapEmpty!7976) mapIsEmpty!7976))

(assert (= (and b!1547562 (not condMapEmpty!7976)) mapNonEmpty!7976))

(assert (= b!1547551 b!1547562))

(assert (= b!1547563 b!1547551))

(assert (= b!1547565 b!1547563))

(assert (= (and b!1547554 ((_ is LongMap!1706) (v!23436 (underlying!3622 (cache!2031 cacheDown!768))))) b!1547565))

(assert (= b!1547580 b!1547554))

(assert (= (and b!1547582 ((_ is HashMap!1650) (cache!2031 cacheDown!768))) b!1547580))

(assert (= start!143590 b!1547582))

(declare-fun m!1820905 () Bool)

(assert (=> b!1547577 m!1820905))

(declare-fun m!1820907 () Bool)

(assert (=> mapNonEmpty!7974 m!1820907))

(declare-fun m!1820909 () Bool)

(assert (=> b!1547549 m!1820909))

(declare-fun m!1820911 () Bool)

(assert (=> mapNonEmpty!7975 m!1820911))

(declare-fun m!1820913 () Bool)

(assert (=> b!1547570 m!1820913))

(declare-fun m!1820915 () Bool)

(assert (=> b!1547570 m!1820915))

(declare-fun m!1820917 () Bool)

(assert (=> b!1547570 m!1820917))

(declare-fun m!1820919 () Bool)

(assert (=> b!1547570 m!1820919))

(declare-fun m!1820921 () Bool)

(assert (=> b!1547570 m!1820921))

(declare-fun m!1820923 () Bool)

(assert (=> b!1547570 m!1820923))

(declare-fun m!1820925 () Bool)

(assert (=> b!1547570 m!1820925))

(declare-fun m!1820927 () Bool)

(assert (=> b!1547570 m!1820927))

(assert (=> b!1547570 m!1820913))

(declare-fun m!1820929 () Bool)

(assert (=> b!1547570 m!1820929))

(declare-fun m!1820931 () Bool)

(assert (=> b!1547575 m!1820931))

(declare-fun m!1820933 () Bool)

(assert (=> b!1547575 m!1820933))

(declare-fun m!1820935 () Bool)

(assert (=> b!1547575 m!1820935))

(declare-fun m!1820937 () Bool)

(assert (=> b!1547575 m!1820937))

(assert (=> b!1547575 m!1820935))

(assert (=> b!1547575 m!1820931))

(declare-fun m!1820939 () Bool)

(assert (=> b!1547575 m!1820939))

(declare-fun m!1820941 () Bool)

(assert (=> b!1547575 m!1820941))

(declare-fun m!1820943 () Bool)

(assert (=> b!1547575 m!1820943))

(declare-fun m!1820945 () Bool)

(assert (=> b!1547548 m!1820945))

(declare-fun m!1820947 () Bool)

(assert (=> b!1547571 m!1820947))

(declare-fun m!1820949 () Bool)

(assert (=> b!1547585 m!1820949))

(declare-fun m!1820951 () Bool)

(assert (=> b!1547585 m!1820951))

(declare-fun m!1820953 () Bool)

(assert (=> b!1547579 m!1820953))

(declare-fun m!1820955 () Bool)

(assert (=> b!1547579 m!1820955))

(declare-fun m!1820957 () Bool)

(assert (=> b!1547576 m!1820957))

(declare-fun m!1820959 () Bool)

(assert (=> b!1547576 m!1820959))

(declare-fun m!1820961 () Bool)

(assert (=> b!1547572 m!1820961))

(declare-fun m!1820963 () Bool)

(assert (=> b!1547572 m!1820963))

(declare-fun m!1820965 () Bool)

(assert (=> b!1547567 m!1820965))

(declare-fun m!1820967 () Bool)

(assert (=> b!1547573 m!1820967))

(declare-fun m!1820969 () Bool)

(assert (=> b!1547586 m!1820969))

(declare-fun m!1820971 () Bool)

(assert (=> b!1547568 m!1820971))

(declare-fun m!1820973 () Bool)

(assert (=> start!143590 m!1820973))

(declare-fun m!1820975 () Bool)

(assert (=> start!143590 m!1820975))

(declare-fun m!1820977 () Bool)

(assert (=> start!143590 m!1820977))

(declare-fun m!1820979 () Bool)

(assert (=> start!143590 m!1820979))

(declare-fun m!1820981 () Bool)

(assert (=> start!143590 m!1820981))

(declare-fun m!1820983 () Bool)

(assert (=> b!1547551 m!1820983))

(declare-fun m!1820985 () Bool)

(assert (=> b!1547551 m!1820985))

(declare-fun m!1820987 () Bool)

(assert (=> b!1547550 m!1820987))

(declare-fun m!1820989 () Bool)

(assert (=> b!1547550 m!1820989))

(declare-fun m!1820991 () Bool)

(assert (=> b!1547556 m!1820991))

(declare-fun m!1820993 () Bool)

(assert (=> b!1547552 m!1820993))

(declare-fun m!1820995 () Bool)

(assert (=> b!1547558 m!1820995))

(declare-fun m!1820997 () Bool)

(assert (=> mapNonEmpty!7976 m!1820997))

(declare-fun m!1820999 () Bool)

(assert (=> b!1547583 m!1820999))

(assert (=> b!1547583 m!1820999))

(declare-fun m!1821001 () Bool)

(assert (=> b!1547583 m!1821001))

(declare-fun m!1821003 () Bool)

(assert (=> b!1547583 m!1821003))

(check-sat (not b_next!41477) (not b!1547573) (not b!1547575) b_and!107865 b_and!107873 (not b!1547562) b_and!107875 (not b!1547572) (not b_next!41479) (not b_next!41483) (not mapNonEmpty!7976) (not b!1547548) b_and!107871 (not b!1547577) (not b!1547583) (not mapNonEmpty!7975) (not b_next!41481) (not b!1547576) (not b!1547567) (not b!1547551) (not start!143590) (not b!1547568) (not b_next!41475) b_and!107861 (not b!1547549) (not b_next!41487) (not b!1547552) (not b_next!41485) (not b!1547555) (not b!1547586) (not b!1547579) b_and!107863 (not b!1547550) b_and!107869 (not b!1547581) (not b!1547558) (not b!1547571) (not b_next!41489) (not b!1547556) b_and!107867 (not b!1547570) (not b!1547585) (not mapNonEmpty!7974))
(check-sat (not b_next!41477) (not b_next!41483) b_and!107871 (not b_next!41481) (not b_next!41487) b_and!107865 (not b_next!41485) b_and!107873 b_and!107863 b_and!107869 (not b_next!41489) b_and!107875 (not b_next!41479) b_and!107867 (not b_next!41475) b_and!107861)
