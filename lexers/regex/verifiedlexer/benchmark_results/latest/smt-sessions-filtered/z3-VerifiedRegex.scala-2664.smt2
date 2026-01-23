; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143586 () Bool)

(assert start!143586)

(declare-fun b!1547305 () Bool)

(declare-fun b_free!40739 () Bool)

(declare-fun b_next!41443 () Bool)

(assert (=> b!1547305 (= b_free!40739 (not b_next!41443))))

(declare-fun tp!450942 () Bool)

(declare-fun b_and!107829 () Bool)

(assert (=> b!1547305 (= tp!450942 b_and!107829)))

(declare-fun b!1547302 () Bool)

(declare-fun b_free!40741 () Bool)

(declare-fun b_next!41445 () Bool)

(assert (=> b!1547302 (= b_free!40741 (not b_next!41445))))

(declare-fun tp!450934 () Bool)

(declare-fun b_and!107831 () Bool)

(assert (=> b!1547302 (= tp!450934 b_and!107831)))

(declare-fun b!1547299 () Bool)

(declare-fun b_free!40743 () Bool)

(declare-fun b_next!41447 () Bool)

(assert (=> b!1547299 (= b_free!40743 (not b_next!41447))))

(declare-fun tp!450950 () Bool)

(declare-fun b_and!107833 () Bool)

(assert (=> b!1547299 (= tp!450950 b_and!107833)))

(declare-fun b!1547301 () Bool)

(declare-fun b_free!40745 () Bool)

(declare-fun b_next!41449 () Bool)

(assert (=> b!1547301 (= b_free!40745 (not b_next!41449))))

(declare-fun tp!450929 () Bool)

(declare-fun b_and!107835 () Bool)

(assert (=> b!1547301 (= tp!450929 b_and!107835)))

(declare-fun b_free!40747 () Bool)

(declare-fun b_next!41451 () Bool)

(assert (=> b!1547301 (= b_free!40747 (not b_next!41451))))

(declare-fun tp!450937 () Bool)

(declare-fun b_and!107837 () Bool)

(assert (=> b!1547301 (= tp!450937 b_and!107837)))

(declare-fun b!1547331 () Bool)

(declare-fun b_free!40749 () Bool)

(declare-fun b_next!41453 () Bool)

(assert (=> b!1547331 (= b_free!40749 (not b_next!41453))))

(declare-fun tp!450928 () Bool)

(declare-fun b_and!107839 () Bool)

(assert (=> b!1547331 (= tp!450928 b_and!107839)))

(declare-fun b!1547300 () Bool)

(declare-fun b_free!40751 () Bool)

(declare-fun b_next!41455 () Bool)

(assert (=> b!1547300 (= b_free!40751 (not b_next!41455))))

(declare-fun tp!450954 () Bool)

(declare-fun b_and!107841 () Bool)

(assert (=> b!1547300 (= tp!450954 b_and!107841)))

(declare-fun b!1547313 () Bool)

(declare-fun b_free!40753 () Bool)

(declare-fun b_next!41457 () Bool)

(assert (=> b!1547313 (= b_free!40753 (not b_next!41457))))

(declare-fun tp!450953 () Bool)

(declare-fun b_and!107843 () Bool)

(assert (=> b!1547313 (= tp!450953 b_and!107843)))

(declare-fun b!1547339 () Bool)

(declare-fun e!991453 () Bool)

(assert (=> b!1547339 (= e!991453 true)))

(declare-fun b!1547338 () Bool)

(declare-fun e!991452 () Bool)

(assert (=> b!1547338 (= e!991452 e!991453)))

(declare-fun b!1547297 () Bool)

(assert (=> b!1547297 e!991452))

(assert (= b!1547338 b!1547339))

(assert (= b!1547297 b!1547338))

(declare-fun order!9681 () Int)

(declare-datatypes ((List!16675 0))(
  ( (Nil!16607) (Cons!16607 (h!22008 (_ BitVec 16)) (t!141078 List!16675)) )
))
(declare-datatypes ((TokenValue!3001 0))(
  ( (FloatLiteralValue!6002 (text!21452 List!16675)) (TokenValueExt!3000 (__x!10823 Int)) (Broken!15005 (value!92589 List!16675)) (Object!3068) (End!3001) (Def!3001) (Underscore!3001) (Match!3001) (Else!3001) (Error!3001) (Case!3001) (If!3001) (Extends!3001) (Abstract!3001) (Class!3001) (Val!3001) (DelimiterValue!6002 (del!3061 List!16675)) (KeywordValue!3007 (value!92590 List!16675)) (CommentValue!6002 (value!92591 List!16675)) (WhitespaceValue!6002 (value!92592 List!16675)) (IndentationValue!3001 (value!92593 List!16675)) (String!19292) (Int32!3001) (Broken!15006 (value!92594 List!16675)) (Boolean!3002) (Unit!25948) (OperatorValue!3004 (op!3061 List!16675)) (IdentifierValue!6002 (value!92595 List!16675)) (IdentifierValue!6003 (value!92596 List!16675)) (WhitespaceValue!6003 (value!92597 List!16675)) (True!6002) (False!6002) (Broken!15007 (value!92598 List!16675)) (Broken!15008 (value!92599 List!16675)) (True!6003) (RightBrace!3001) (RightBracket!3001) (Colon!3001) (Null!3001) (Comma!3001) (LeftBracket!3001) (False!6003) (LeftBrace!3001) (ImaginaryLiteralValue!3001 (text!21453 List!16675)) (StringLiteralValue!9003 (value!92600 List!16675)) (EOFValue!3001 (value!92601 List!16675)) (IdentValue!3001 (value!92602 List!16675)) (DelimiterValue!6003 (value!92603 List!16675)) (DedentValue!3001 (value!92604 List!16675)) (NewLineValue!3001 (value!92605 List!16675)) (IntegerValue!9003 (value!92606 (_ BitVec 32)) (text!21454 List!16675)) (IntegerValue!9004 (value!92607 Int) (text!21455 List!16675)) (Times!3001) (Or!3001) (Equal!3001) (Minus!3001) (Broken!15009 (value!92608 List!16675)) (And!3001) (Div!3001) (LessEqual!3001) (Mod!3001) (Concat!7240) (Not!3001) (Plus!3001) (SpaceValue!3001 (value!92609 List!16675)) (IntegerValue!9005 (value!92610 Int) (text!21456 List!16675)) (StringLiteralValue!9004 (text!21457 List!16675)) (FloatLiteralValue!6003 (text!21458 List!16675)) (BytesLiteralValue!3001 (value!92611 List!16675)) (CommentValue!6003 (value!92612 List!16675)) (StringLiteralValue!9005 (value!92613 List!16675)) (ErrorTokenValue!3001 (msg!3062 List!16675)) )
))
(declare-datatypes ((C!8656 0))(
  ( (C!8657 (val!4900 Int)) )
))
(declare-datatypes ((List!16676 0))(
  ( (Nil!16608) (Cons!16608 (h!22009 C!8656) (t!141079 List!16676)) )
))
(declare-datatypes ((IArray!11063 0))(
  ( (IArray!11064 (innerList!5589 List!16676)) )
))
(declare-datatypes ((Conc!5529 0))(
  ( (Node!5529 (left!13545 Conc!5529) (right!13875 Conc!5529) (csize!11288 Int) (cheight!5740 Int)) (Leaf!8194 (xs!8329 IArray!11063) (csize!11289 Int)) (Empty!5529) )
))
(declare-datatypes ((BalanceConc!11000 0))(
  ( (BalanceConc!11001 (c!252145 Conc!5529)) )
))
(declare-datatypes ((Regex!4239 0))(
  ( (ElementMatch!4239 (c!252146 C!8656)) (Concat!7241 (regOne!8990 Regex!4239) (regTwo!8990 Regex!4239)) (EmptyExpr!4239) (Star!4239 (reg!4568 Regex!4239)) (EmptyLang!4239) (Union!4239 (regOne!8991 Regex!4239) (regTwo!8991 Regex!4239)) )
))
(declare-datatypes ((String!19293 0))(
  ( (String!19294 (value!92614 String)) )
))
(declare-datatypes ((TokenValueInjection!5662 0))(
  ( (TokenValueInjection!5663 (toValue!4274 Int) (toChars!4133 Int)) )
))
(declare-datatypes ((Rule!5622 0))(
  ( (Rule!5623 (regex!2911 Regex!4239) (tag!3175 String!19293) (isSeparator!2911 Bool) (transformation!2911 TokenValueInjection!5662)) )
))
(declare-fun rule!240 () Rule!5622)

(declare-fun lambda!65491 () Int)

(declare-fun order!9679 () Int)

(declare-fun dynLambda!7334 (Int Int) Int)

(declare-fun dynLambda!7335 (Int Int) Int)

(assert (=> b!1547339 (< (dynLambda!7334 order!9679 (toValue!4274 (transformation!2911 rule!240))) (dynLambda!7335 order!9681 lambda!65491))))

(declare-fun order!9683 () Int)

(declare-fun dynLambda!7336 (Int Int) Int)

(assert (=> b!1547339 (< (dynLambda!7336 order!9683 (toChars!4133 (transformation!2911 rule!240))) (dynLambda!7335 order!9681 lambda!65491))))

(declare-fun b!1547293 () Bool)

(declare-fun e!991428 () Bool)

(declare-datatypes ((tuple2!15820 0))(
  ( (tuple2!15821 (_1!9156 List!16676) (_2!9156 List!16676)) )
))
(declare-fun lt!535838 () tuple2!15820)

(declare-fun matchR!1855 (Regex!4239 List!16676) Bool)

(assert (=> b!1547293 (= e!991428 (matchR!1855 (regex!2911 rule!240) (_1!9156 lt!535838)))))

(declare-fun b!1547294 () Bool)

(declare-fun e!991433 () Bool)

(declare-fun e!991438 () Bool)

(assert (=> b!1547294 (= e!991433 e!991438)))

(declare-fun b!1547295 () Bool)

(declare-fun e!991426 () Bool)

(declare-fun e!991447 () Bool)

(assert (=> b!1547295 (= e!991426 e!991447)))

(declare-fun b!1547296 () Bool)

(declare-fun e!991435 () Bool)

(assert (=> b!1547296 (= e!991447 e!991435)))

(declare-fun res!691962 () Bool)

(declare-fun e!991441 () Bool)

(assert (=> b!1547297 (=> res!691962 e!991441)))

(declare-fun Forall!590 (Int) Bool)

(assert (=> b!1547297 (= res!691962 (not (Forall!590 lambda!65491)))))

(declare-fun b!1547298 () Bool)

(declare-fun e!991419 () Bool)

(declare-fun e!991413 () Bool)

(assert (=> b!1547298 (= e!991419 e!991413)))

(declare-fun res!691965 () Bool)

(assert (=> b!1547298 (=> (not res!691965) (not e!991413))))

(declare-fun lt!535840 () List!16676)

(declare-fun totalInput!568 () BalanceConc!11000)

(declare-fun isSuffix!352 (List!16676 List!16676) Bool)

(declare-fun list!6457 (BalanceConc!11000) List!16676)

(assert (=> b!1547298 (= res!691965 (isSuffix!352 lt!535840 (list!6457 totalInput!568)))))

(declare-fun input!1676 () BalanceConc!11000)

(assert (=> b!1547298 (= lt!535840 (list!6457 input!1676))))

(declare-fun e!991418 () Bool)

(declare-fun tp!450945 () Bool)

(declare-fun e!991420 () Bool)

(declare-datatypes ((List!16677 0))(
  ( (Nil!16609) (Cons!16609 (h!22010 Regex!4239) (t!141080 List!16677)) )
))
(declare-datatypes ((Context!1514 0))(
  ( (Context!1515 (exprs!1257 List!16677)) )
))
(declare-datatypes ((tuple3!1656 0))(
  ( (tuple3!1657 (_1!9157 Regex!4239) (_2!9157 Context!1514) (_3!1246 C!8656)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15822 0))(
  ( (tuple2!15823 (_1!9158 tuple3!1656) (_2!9158 (InoxSet Context!1514))) )
))
(declare-datatypes ((List!16678 0))(
  ( (Nil!16610) (Cons!16610 (h!22011 tuple2!15822) (t!141081 List!16678)) )
))
(declare-datatypes ((array!5870 0))(
  ( (array!5871 (arr!2612 (Array (_ BitVec 32) (_ BitVec 64))) (size!13411 (_ BitVec 32))) )
))
(declare-datatypes ((array!5872 0))(
  ( (array!5873 (arr!2613 (Array (_ BitVec 32) List!16678)) (size!13412 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3396 0))(
  ( (LongMapFixedSize!3397 (defaultEntry!2058 Int) (mask!4906 (_ BitVec 32)) (extraKeys!1945 (_ BitVec 32)) (zeroValue!1955 List!16678) (minValue!1955 List!16678) (_size!3477 (_ BitVec 32)) (_keys!1992 array!5870) (_values!1977 array!5872) (_vacant!1759 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6677 0))(
  ( (Cell!6678 (v!23417 LongMapFixedSize!3396)) )
))
(declare-datatypes ((MutLongMap!1698 0))(
  ( (LongMap!1698 (underlying!3605 Cell!6677)) (MutLongMapExt!1697 (__x!10824 Int)) )
))
(declare-datatypes ((Cell!6679 0))(
  ( (Cell!6680 (v!23418 MutLongMap!1698)) )
))
(declare-datatypes ((Hashable!1642 0))(
  ( (HashableExt!1641 (__x!10825 Int)) )
))
(declare-datatypes ((MutableMap!1642 0))(
  ( (MutableMapExt!1641 (__x!10826 Int)) (HashMap!1642 (underlying!3606 Cell!6679) (hashF!3561 Hashable!1642) (_size!3478 (_ BitVec 32)) (defaultValue!1802 Int)) )
))
(declare-datatypes ((CacheDown!1000 0))(
  ( (CacheDown!1001 (cache!2023 MutableMap!1642)) )
))
(declare-fun cacheDown!768 () CacheDown!1000)

(declare-fun tp!450936 () Bool)

(declare-fun array_inv!1880 (array!5870) Bool)

(declare-fun array_inv!1881 (array!5872) Bool)

(assert (=> b!1547299 (= e!991418 (and tp!450950 tp!450936 tp!450945 (array_inv!1880 (_keys!1992 (v!23417 (underlying!3605 (v!23418 (underlying!3606 (cache!2023 cacheDown!768))))))) (array_inv!1881 (_values!1977 (v!23417 (underlying!3605 (v!23418 (underlying!3606 (cache!2023 cacheDown!768))))))) e!991420))))

(declare-fun e!991440 () Bool)

(assert (=> b!1547301 (= e!991440 (and tp!450929 tp!450937))))

(declare-fun mapIsEmpty!7956 () Bool)

(declare-fun mapRes!7957 () Bool)

(assert (=> mapIsEmpty!7956 mapRes!7957))

(declare-fun e!991431 () Bool)

(declare-fun e!991414 () Bool)

(assert (=> b!1547302 (= e!991431 (and e!991414 tp!450934))))

(declare-fun b!1547303 () Bool)

(declare-fun res!691957 () Bool)

(assert (=> b!1547303 (=> (not res!691957) (not e!991419))))

(declare-datatypes ((LexerInterface!2557 0))(
  ( (LexerInterfaceExt!2554 (__x!10827 Int)) (Lexer!2555) )
))
(declare-fun thiss!16438 () LexerInterface!2557)

(declare-fun ruleValid!662 (LexerInterface!2557 Rule!5622) Bool)

(assert (=> b!1547303 (= res!691957 (ruleValid!662 thiss!16438 rule!240))))

(declare-fun b!1547304 () Bool)

(declare-fun e!991421 () Bool)

(declare-fun tp!450946 () Bool)

(declare-fun inv!21873 (Conc!5529) Bool)

(assert (=> b!1547304 (= e!991421 (and (inv!21873 (c!252145 totalInput!568)) tp!450946))))

(declare-fun e!991424 () Bool)

(declare-fun e!991417 () Bool)

(assert (=> b!1547305 (= e!991424 (and e!991417 tp!450942))))

(declare-fun b!1547306 () Bool)

(declare-fun e!991415 () Bool)

(declare-fun tp!450944 () Bool)

(declare-fun mapRes!7958 () Bool)

(assert (=> b!1547306 (= e!991415 (and tp!450944 mapRes!7958))))

(declare-fun condMapEmpty!7956 () Bool)

(declare-datatypes ((tuple3!1658 0))(
  ( (tuple3!1659 (_1!9159 (InoxSet Context!1514)) (_2!9159 Int) (_3!1247 Int)) )
))
(declare-datatypes ((tuple2!15824 0))(
  ( (tuple2!15825 (_1!9160 tuple3!1658) (_2!9160 Int)) )
))
(declare-datatypes ((List!16679 0))(
  ( (Nil!16611) (Cons!16611 (h!22012 tuple2!15824) (t!141082 List!16679)) )
))
(declare-datatypes ((array!5874 0))(
  ( (array!5875 (arr!2614 (Array (_ BitVec 32) List!16679)) (size!13413 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3398 0))(
  ( (LongMapFixedSize!3399 (defaultEntry!2059 Int) (mask!4907 (_ BitVec 32)) (extraKeys!1946 (_ BitVec 32)) (zeroValue!1956 List!16679) (minValue!1956 List!16679) (_size!3479 (_ BitVec 32)) (_keys!1993 array!5870) (_values!1978 array!5874) (_vacant!1760 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6681 0))(
  ( (Cell!6682 (v!23419 LongMapFixedSize!3398)) )
))
(declare-datatypes ((Hashable!1643 0))(
  ( (HashableExt!1642 (__x!10828 Int)) )
))
(declare-datatypes ((MutLongMap!1699 0))(
  ( (LongMap!1699 (underlying!3607 Cell!6681)) (MutLongMapExt!1698 (__x!10829 Int)) )
))
(declare-datatypes ((Cell!6683 0))(
  ( (Cell!6684 (v!23420 MutLongMap!1699)) )
))
(declare-datatypes ((MutableMap!1643 0))(
  ( (MutableMapExt!1642 (__x!10830 Int)) (HashMap!1643 (underlying!3608 Cell!6683) (hashF!3562 Hashable!1643) (_size!3480 (_ BitVec 32)) (defaultValue!1803 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!420 0))(
  ( (CacheFurthestNullable!421 (cache!2024 MutableMap!1643) (totalInput!2413 BalanceConc!11000)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!420)

(declare-fun mapDefault!7958 () List!16679)

(assert (=> b!1547306 (= condMapEmpty!7956 (= (arr!2614 (_values!1978 (v!23419 (underlying!3607 (v!23420 (underlying!3608 (cache!2024 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16679)) mapDefault!7958)))))

(declare-fun b!1547307 () Bool)

(declare-fun e!991430 () Bool)

(declare-fun e!991429 () Bool)

(assert (=> b!1547307 (= e!991430 e!991429)))

(declare-fun mapNonEmpty!7956 () Bool)

(declare-fun mapRes!7956 () Bool)

(declare-fun tp!450935 () Bool)

(declare-fun tp!450940 () Bool)

(assert (=> mapNonEmpty!7956 (= mapRes!7956 (and tp!450935 tp!450940))))

(declare-fun mapValue!7957 () List!16678)

(declare-fun mapKey!7956 () (_ BitVec 32))

(declare-fun mapRest!7956 () (Array (_ BitVec 32) List!16678))

(assert (=> mapNonEmpty!7956 (= (arr!2613 (_values!1977 (v!23417 (underlying!3605 (v!23418 (underlying!3606 (cache!2023 cacheDown!768))))))) (store mapRest!7956 mapKey!7956 mapValue!7957))))

(declare-fun b!1547308 () Bool)

(declare-fun e!991434 () Bool)

(declare-fun tp!450941 () Bool)

(assert (=> b!1547308 (= e!991434 (and (inv!21873 (c!252145 (totalInput!2413 cacheFurthestNullable!103))) tp!450941))))

(declare-fun tp!450943 () Bool)

(declare-fun tp!450949 () Bool)

(declare-fun array_inv!1882 (array!5874) Bool)

(assert (=> b!1547300 (= e!991435 (and tp!450954 tp!450943 tp!450949 (array_inv!1880 (_keys!1993 (v!23419 (underlying!3607 (v!23420 (underlying!3608 (cache!2024 cacheFurthestNullable!103))))))) (array_inv!1882 (_values!1978 (v!23419 (underlying!3607 (v!23420 (underlying!3608 (cache!2024 cacheFurthestNullable!103))))))) e!991415))))

(declare-fun res!691969 () Bool)

(assert (=> start!143586 (=> (not res!691969) (not e!991419))))

(get-info :version)

(assert (=> start!143586 (= res!691969 ((_ is Lexer!2555) thiss!16438))))

(assert (=> start!143586 e!991419))

(declare-fun inv!21874 (BalanceConc!11000) Bool)

(assert (=> start!143586 (and (inv!21874 totalInput!568) e!991421)))

(declare-datatypes ((tuple2!15826 0))(
  ( (tuple2!15827 (_1!9161 Context!1514) (_2!9161 C!8656)) )
))
(declare-datatypes ((tuple2!15828 0))(
  ( (tuple2!15829 (_1!9162 tuple2!15826) (_2!9162 (InoxSet Context!1514))) )
))
(declare-datatypes ((List!16680 0))(
  ( (Nil!16612) (Cons!16612 (h!22013 tuple2!15828) (t!141083 List!16680)) )
))
(declare-datatypes ((array!5876 0))(
  ( (array!5877 (arr!2615 (Array (_ BitVec 32) List!16680)) (size!13414 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1644 0))(
  ( (HashableExt!1643 (__x!10831 Int)) )
))
(declare-datatypes ((LongMapFixedSize!3400 0))(
  ( (LongMapFixedSize!3401 (defaultEntry!2060 Int) (mask!4908 (_ BitVec 32)) (extraKeys!1947 (_ BitVec 32)) (zeroValue!1957 List!16680) (minValue!1957 List!16680) (_size!3481 (_ BitVec 32)) (_keys!1994 array!5870) (_values!1979 array!5876) (_vacant!1761 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6685 0))(
  ( (Cell!6686 (v!23421 LongMapFixedSize!3400)) )
))
(declare-datatypes ((MutLongMap!1700 0))(
  ( (LongMap!1700 (underlying!3609 Cell!6685)) (MutLongMapExt!1699 (__x!10832 Int)) )
))
(declare-datatypes ((Cell!6687 0))(
  ( (Cell!6688 (v!23422 MutLongMap!1700)) )
))
(declare-datatypes ((MutableMap!1644 0))(
  ( (MutableMapExt!1643 (__x!10833 Int)) (HashMap!1644 (underlying!3610 Cell!6687) (hashF!3563 Hashable!1644) (_size!3482 (_ BitVec 32)) (defaultValue!1804 Int)) )
))
(declare-datatypes ((CacheUp!992 0))(
  ( (CacheUp!993 (cache!2025 MutableMap!1644)) )
))
(declare-fun cacheUp!755 () CacheUp!992)

(declare-fun e!991422 () Bool)

(declare-fun inv!21875 (CacheUp!992) Bool)

(assert (=> start!143586 (and (inv!21875 cacheUp!755) e!991422)))

(declare-fun e!991416 () Bool)

(declare-fun inv!21876 (CacheFurthestNullable!420) Bool)

(assert (=> start!143586 (and (inv!21876 cacheFurthestNullable!103) e!991416)))

(declare-fun e!991423 () Bool)

(assert (=> start!143586 (and (inv!21874 input!1676) e!991423)))

(declare-fun e!991412 () Bool)

(assert (=> start!143586 e!991412))

(declare-fun inv!21877 (CacheDown!1000) Bool)

(assert (=> start!143586 (and (inv!21877 cacheDown!768) e!991430)))

(assert (=> start!143586 true))

(declare-fun b!1547309 () Bool)

(declare-fun e!991439 () Bool)

(declare-fun lt!535839 () MutLongMap!1700)

(assert (=> b!1547309 (= e!991414 (and e!991439 ((_ is LongMap!1700) lt!535839)))))

(assert (=> b!1547309 (= lt!535839 (v!23422 (underlying!3610 (cache!2025 cacheUp!755))))))

(declare-fun b!1547310 () Bool)

(declare-fun res!691963 () Bool)

(assert (=> b!1547310 (=> (not res!691963) (not e!991419))))

(declare-fun valid!1371 (CacheFurthestNullable!420) Bool)

(assert (=> b!1547310 (= res!691963 (valid!1371 cacheFurthestNullable!103))))

(declare-fun b!1547311 () Bool)

(declare-fun tp!450948 () Bool)

(assert (=> b!1547311 (= e!991420 (and tp!450948 mapRes!7956))))

(declare-fun condMapEmpty!7957 () Bool)

(declare-fun mapDefault!7956 () List!16678)

(assert (=> b!1547311 (= condMapEmpty!7957 (= (arr!2613 (_values!1977 (v!23417 (underlying!3605 (v!23418 (underlying!3606 (cache!2023 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16678)) mapDefault!7956)))))

(declare-fun mapIsEmpty!7957 () Bool)

(assert (=> mapIsEmpty!7957 mapRes!7958))

(declare-fun b!1547312 () Bool)

(declare-fun res!691958 () Bool)

(assert (=> b!1547312 (=> (not res!691958) (not e!991413))))

(assert (=> b!1547312 (= res!691958 (= (totalInput!2413 cacheFurthestNullable!103) totalInput!568))))

(declare-fun mapNonEmpty!7957 () Bool)

(declare-fun tp!450951 () Bool)

(declare-fun tp!450931 () Bool)

(assert (=> mapNonEmpty!7957 (= mapRes!7957 (and tp!450951 tp!450931))))

(declare-fun mapRest!7958 () (Array (_ BitVec 32) List!16680))

(declare-fun mapValue!7958 () List!16680)

(declare-fun mapKey!7958 () (_ BitVec 32))

(assert (=> mapNonEmpty!7957 (= (arr!2615 (_values!1979 (v!23421 (underlying!3609 (v!23422 (underlying!3610 (cache!2025 cacheUp!755))))))) (store mapRest!7958 mapKey!7958 mapValue!7958))))

(declare-fun e!991437 () Bool)

(assert (=> b!1547313 (= e!991429 (and e!991437 tp!450953))))

(declare-fun b!1547314 () Bool)

(declare-fun e!991432 () Bool)

(assert (=> b!1547314 (= e!991441 e!991432)))

(declare-fun res!691966 () Bool)

(assert (=> b!1547314 (=> res!691966 e!991432)))

(declare-fun lt!535837 () Bool)

(declare-datatypes ((Token!5428 0))(
  ( (Token!5429 (value!92615 TokenValue!3001) (rule!4704 Rule!5622) (size!13415 Int) (originalCharacters!3745 List!16676)) )
))
(declare-datatypes ((tuple2!15830 0))(
  ( (tuple2!15831 (_1!9163 Token!5428) (_2!9163 List!16676)) )
))
(declare-datatypes ((Option!2991 0))(
  ( (None!2990) (Some!2990 (v!23423 tuple2!15830)) )
))
(declare-fun isDefined!2397 (Option!2991) Bool)

(declare-fun maxPrefixOneRule!681 (LexerInterface!2557 Rule!5622 List!16676) Option!2991)

(assert (=> b!1547314 (= res!691966 (not (= lt!535837 (isDefined!2397 (maxPrefixOneRule!681 thiss!16438 rule!240 lt!535840)))))))

(declare-fun lt!535842 () List!16676)

(declare-datatypes ((tuple2!15832 0))(
  ( (tuple2!15833 (_1!9164 BalanceConc!11000) (_2!9164 BalanceConc!11000)) )
))
(declare-datatypes ((tuple4!836 0))(
  ( (tuple4!837 (_1!9165 tuple2!15832) (_2!9165 CacheUp!992) (_3!1248 CacheDown!1000) (_4!418 CacheFurthestNullable!420)) )
))
(declare-fun lt!535836 () tuple4!836)

(declare-datatypes ((tuple2!15834 0))(
  ( (tuple2!15835 (_1!9166 Token!5428) (_2!9166 BalanceConc!11000)) )
))
(declare-datatypes ((Option!2992 0))(
  ( (None!2991) (Some!2991 (v!23424 tuple2!15834)) )
))
(declare-fun isDefined!2398 (Option!2992) Bool)

(declare-fun apply!4088 (TokenValueInjection!5662 BalanceConc!11000) TokenValue!3001)

(declare-fun size!13416 (BalanceConc!11000) Int)

(assert (=> b!1547314 (= lt!535837 (isDefined!2398 (Some!2991 (tuple2!15835 (Token!5429 (apply!4088 (transformation!2911 rule!240) (_1!9164 (_1!9165 lt!535836))) rule!240 (size!13416 (_1!9164 (_1!9165 lt!535836))) lt!535842) (_2!9164 (_1!9165 lt!535836))))))))

(declare-datatypes ((Unit!25949 0))(
  ( (Unit!25950) )
))
(declare-fun lt!535843 () Unit!25949)

(declare-fun lt!535845 () BalanceConc!11000)

(declare-fun ForallOf!189 (Int BalanceConc!11000) Unit!25949)

(assert (=> b!1547314 (= lt!535843 (ForallOf!189 lambda!65491 lt!535845))))

(declare-fun seqFromList!1752 (List!16676) BalanceConc!11000)

(assert (=> b!1547314 (= lt!535845 (seqFromList!1752 lt!535842))))

(assert (=> b!1547314 (= lt!535842 (list!6457 (_1!9164 (_1!9165 lt!535836))))))

(declare-fun lt!535848 () Unit!25949)

(assert (=> b!1547314 (= lt!535848 (ForallOf!189 lambda!65491 (_1!9164 (_1!9165 lt!535836))))))

(declare-fun b!1547315 () Bool)

(assert (=> b!1547315 (= e!991422 e!991431)))

(declare-fun b!1547316 () Bool)

(declare-fun tp!450939 () Bool)

(assert (=> b!1547316 (= e!991423 (and (inv!21873 (c!252145 input!1676)) tp!450939))))

(declare-fun b!1547317 () Bool)

(declare-fun e!991427 () Bool)

(declare-fun e!991446 () Bool)

(assert (=> b!1547317 (= e!991427 e!991446)))

(declare-fun b!1547318 () Bool)

(assert (=> b!1547318 (= e!991438 e!991418)))

(declare-fun mapIsEmpty!7958 () Bool)

(assert (=> mapIsEmpty!7958 mapRes!7956))

(declare-fun b!1547319 () Bool)

(declare-fun e!991442 () Bool)

(assert (=> b!1547319 (= e!991413 e!991442)))

(declare-fun res!691967 () Bool)

(assert (=> b!1547319 (=> (not res!691967) (not e!991442))))

(declare-fun isEmpty!10055 (BalanceConc!11000) Bool)

(assert (=> b!1547319 (= res!691967 (not (isEmpty!10055 (_1!9164 (_1!9165 lt!535836)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!24 (Regex!4239 BalanceConc!11000 BalanceConc!11000 CacheUp!992 CacheDown!1000 CacheFurthestNullable!420) tuple4!836)

(assert (=> b!1547319 (= lt!535836 (findLongestMatchWithZipperSequenceV3Mem!24 (regex!2911 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun b!1547320 () Bool)

(declare-fun lt!535847 () MutLongMap!1698)

(assert (=> b!1547320 (= e!991437 (and e!991433 ((_ is LongMap!1698) lt!535847)))))

(assert (=> b!1547320 (= lt!535847 (v!23418 (underlying!3606 (cache!2023 cacheDown!768))))))

(declare-fun b!1547321 () Bool)

(declare-fun lt!535841 () List!16676)

(assert (=> b!1547321 (= e!991432 (or (not (= lt!535841 lt!535842)) (= lt!535842 lt!535841)))))

(assert (=> b!1547321 (= lt!535841 (list!6457 lt!535845))))

(declare-fun b!1547322 () Bool)

(assert (=> b!1547322 (= e!991416 (and e!991424 (inv!21874 (totalInput!2413 cacheFurthestNullable!103)) e!991434))))

(declare-fun b!1547323 () Bool)

(assert (=> b!1547323 (= e!991442 (not e!991441))))

(declare-fun res!691968 () Bool)

(assert (=> b!1547323 (=> res!691968 e!991441)))

(declare-fun semiInverseModEq!1095 (Int Int) Bool)

(assert (=> b!1547323 (= res!691968 (not (semiInverseModEq!1095 (toChars!4133 (transformation!2911 rule!240)) (toValue!4274 (transformation!2911 rule!240)))))))

(declare-fun lt!535846 () Unit!25949)

(declare-fun lemmaInv!405 (TokenValueInjection!5662) Unit!25949)

(assert (=> b!1547323 (= lt!535846 (lemmaInv!405 (transformation!2911 rule!240)))))

(assert (=> b!1547323 e!991428))

(declare-fun res!691960 () Bool)

(assert (=> b!1547323 (=> res!691960 e!991428)))

(declare-fun isEmpty!10056 (List!16676) Bool)

(assert (=> b!1547323 (= res!691960 (isEmpty!10056 (_1!9156 lt!535838)))))

(declare-fun findLongestMatchInner!311 (Regex!4239 List!16676 Int List!16676 List!16676 Int) tuple2!15820)

(declare-fun size!13417 (List!16676) Int)

(assert (=> b!1547323 (= lt!535838 (findLongestMatchInner!311 (regex!2911 rule!240) Nil!16608 (size!13417 Nil!16608) lt!535840 lt!535840 (size!13417 lt!535840)))))

(declare-fun lt!535849 () Unit!25949)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!295 (Regex!4239 List!16676) Unit!25949)

(assert (=> b!1547323 (= lt!535849 (longestMatchIsAcceptedByMatchOrIsEmpty!295 (regex!2911 rule!240) lt!535840))))

(declare-fun tp!450932 () Bool)

(declare-fun b!1547324 () Bool)

(declare-fun inv!21871 (String!19293) Bool)

(declare-fun inv!21878 (TokenValueInjection!5662) Bool)

(assert (=> b!1547324 (= e!991412 (and tp!450932 (inv!21871 (tag!3175 rule!240)) (inv!21878 (transformation!2911 rule!240)) e!991440))))

(declare-fun b!1547325 () Bool)

(declare-fun res!691959 () Bool)

(assert (=> b!1547325 (=> res!691959 e!991432)))

(assert (=> b!1547325 (= res!691959 (not lt!535837))))

(declare-fun b!1547326 () Bool)

(declare-fun res!691961 () Bool)

(assert (=> b!1547326 (=> (not res!691961) (not e!991419))))

(declare-fun valid!1372 (CacheDown!1000) Bool)

(assert (=> b!1547326 (= res!691961 (valid!1372 cacheDown!768))))

(declare-fun b!1547327 () Bool)

(declare-fun res!691964 () Bool)

(assert (=> b!1547327 (=> (not res!691964) (not e!991419))))

(declare-fun valid!1373 (CacheUp!992) Bool)

(assert (=> b!1547327 (= res!691964 (valid!1373 cacheUp!755))))

(declare-fun b!1547328 () Bool)

(declare-fun lt!535844 () MutLongMap!1699)

(assert (=> b!1547328 (= e!991417 (and e!991426 ((_ is LongMap!1699) lt!535844)))))

(assert (=> b!1547328 (= lt!535844 (v!23420 (underlying!3608 (cache!2024 cacheFurthestNullable!103))))))

(declare-fun b!1547329 () Bool)

(assert (=> b!1547329 (= e!991439 e!991427)))

(declare-fun mapNonEmpty!7958 () Bool)

(declare-fun tp!450938 () Bool)

(declare-fun tp!450933 () Bool)

(assert (=> mapNonEmpty!7958 (= mapRes!7958 (and tp!450938 tp!450933))))

(declare-fun mapKey!7957 () (_ BitVec 32))

(declare-fun mapRest!7957 () (Array (_ BitVec 32) List!16679))

(declare-fun mapValue!7956 () List!16679)

(assert (=> mapNonEmpty!7958 (= (arr!2614 (_values!1978 (v!23419 (underlying!3607 (v!23420 (underlying!3608 (cache!2024 cacheFurthestNullable!103))))))) (store mapRest!7957 mapKey!7957 mapValue!7956))))

(declare-fun b!1547330 () Bool)

(declare-fun e!991436 () Bool)

(declare-fun tp!450930 () Bool)

(assert (=> b!1547330 (= e!991436 (and tp!450930 mapRes!7957))))

(declare-fun condMapEmpty!7958 () Bool)

(declare-fun mapDefault!7957 () List!16680)

(assert (=> b!1547330 (= condMapEmpty!7958 (= (arr!2615 (_values!1979 (v!23421 (underlying!3609 (v!23422 (underlying!3610 (cache!2025 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16680)) mapDefault!7957)))))

(declare-fun tp!450947 () Bool)

(declare-fun tp!450952 () Bool)

(declare-fun array_inv!1883 (array!5876) Bool)

(assert (=> b!1547331 (= e!991446 (and tp!450928 tp!450952 tp!450947 (array_inv!1880 (_keys!1994 (v!23421 (underlying!3609 (v!23422 (underlying!3610 (cache!2025 cacheUp!755))))))) (array_inv!1883 (_values!1979 (v!23421 (underlying!3609 (v!23422 (underlying!3610 (cache!2025 cacheUp!755))))))) e!991436))))

(assert (= (and start!143586 res!691969) b!1547303))

(assert (= (and b!1547303 res!691957) b!1547327))

(assert (= (and b!1547327 res!691964) b!1547326))

(assert (= (and b!1547326 res!691961) b!1547310))

(assert (= (and b!1547310 res!691963) b!1547298))

(assert (= (and b!1547298 res!691965) b!1547312))

(assert (= (and b!1547312 res!691958) b!1547319))

(assert (= (and b!1547319 res!691967) b!1547323))

(assert (= (and b!1547323 (not res!691960)) b!1547293))

(assert (= (and b!1547323 (not res!691968)) b!1547297))

(assert (= (and b!1547297 (not res!691962)) b!1547314))

(assert (= (and b!1547314 (not res!691966)) b!1547325))

(assert (= (and b!1547325 (not res!691959)) b!1547321))

(assert (= start!143586 b!1547304))

(assert (= (and b!1547330 condMapEmpty!7958) mapIsEmpty!7956))

(assert (= (and b!1547330 (not condMapEmpty!7958)) mapNonEmpty!7957))

(assert (= b!1547331 b!1547330))

(assert (= b!1547317 b!1547331))

(assert (= b!1547329 b!1547317))

(assert (= (and b!1547309 ((_ is LongMap!1700) (v!23422 (underlying!3610 (cache!2025 cacheUp!755))))) b!1547329))

(assert (= b!1547302 b!1547309))

(assert (= (and b!1547315 ((_ is HashMap!1644) (cache!2025 cacheUp!755))) b!1547302))

(assert (= start!143586 b!1547315))

(assert (= (and b!1547306 condMapEmpty!7956) mapIsEmpty!7957))

(assert (= (and b!1547306 (not condMapEmpty!7956)) mapNonEmpty!7958))

(assert (= b!1547300 b!1547306))

(assert (= b!1547296 b!1547300))

(assert (= b!1547295 b!1547296))

(assert (= (and b!1547328 ((_ is LongMap!1699) (v!23420 (underlying!3608 (cache!2024 cacheFurthestNullable!103))))) b!1547295))

(assert (= b!1547305 b!1547328))

(assert (= (and b!1547322 ((_ is HashMap!1643) (cache!2024 cacheFurthestNullable!103))) b!1547305))

(assert (= b!1547322 b!1547308))

(assert (= start!143586 b!1547322))

(assert (= start!143586 b!1547316))

(assert (= b!1547324 b!1547301))

(assert (= start!143586 b!1547324))

(assert (= (and b!1547311 condMapEmpty!7957) mapIsEmpty!7958))

(assert (= (and b!1547311 (not condMapEmpty!7957)) mapNonEmpty!7956))

(assert (= b!1547299 b!1547311))

(assert (= b!1547318 b!1547299))

(assert (= b!1547294 b!1547318))

(assert (= (and b!1547320 ((_ is LongMap!1698) (v!23418 (underlying!3606 (cache!2023 cacheDown!768))))) b!1547294))

(assert (= b!1547313 b!1547320))

(assert (= (and b!1547307 ((_ is HashMap!1642) (cache!2023 cacheDown!768))) b!1547313))

(assert (= start!143586 b!1547307))

(declare-fun m!1820709 () Bool)

(assert (=> b!1547304 m!1820709))

(declare-fun m!1820711 () Bool)

(assert (=> b!1547298 m!1820711))

(assert (=> b!1547298 m!1820711))

(declare-fun m!1820713 () Bool)

(assert (=> b!1547298 m!1820713))

(declare-fun m!1820715 () Bool)

(assert (=> b!1547298 m!1820715))

(declare-fun m!1820717 () Bool)

(assert (=> b!1547308 m!1820717))

(declare-fun m!1820719 () Bool)

(assert (=> b!1547303 m!1820719))

(declare-fun m!1820721 () Bool)

(assert (=> b!1547326 m!1820721))

(declare-fun m!1820723 () Bool)

(assert (=> b!1547321 m!1820723))

(declare-fun m!1820725 () Bool)

(assert (=> b!1547310 m!1820725))

(declare-fun m!1820727 () Bool)

(assert (=> b!1547331 m!1820727))

(declare-fun m!1820729 () Bool)

(assert (=> b!1547331 m!1820729))

(declare-fun m!1820731 () Bool)

(assert (=> b!1547323 m!1820731))

(declare-fun m!1820733 () Bool)

(assert (=> b!1547323 m!1820733))

(declare-fun m!1820735 () Bool)

(assert (=> b!1547323 m!1820735))

(declare-fun m!1820737 () Bool)

(assert (=> b!1547323 m!1820737))

(declare-fun m!1820739 () Bool)

(assert (=> b!1547323 m!1820739))

(assert (=> b!1547323 m!1820739))

(declare-fun m!1820741 () Bool)

(assert (=> b!1547323 m!1820741))

(declare-fun m!1820743 () Bool)

(assert (=> b!1547323 m!1820743))

(assert (=> b!1547323 m!1820741))

(declare-fun m!1820745 () Bool)

(assert (=> b!1547316 m!1820745))

(declare-fun m!1820747 () Bool)

(assert (=> mapNonEmpty!7957 m!1820747))

(declare-fun m!1820749 () Bool)

(assert (=> b!1547324 m!1820749))

(declare-fun m!1820751 () Bool)

(assert (=> b!1547324 m!1820751))

(declare-fun m!1820753 () Bool)

(assert (=> b!1547322 m!1820753))

(declare-fun m!1820755 () Bool)

(assert (=> b!1547319 m!1820755))

(declare-fun m!1820757 () Bool)

(assert (=> b!1547319 m!1820757))

(declare-fun m!1820759 () Bool)

(assert (=> b!1547293 m!1820759))

(declare-fun m!1820761 () Bool)

(assert (=> mapNonEmpty!7956 m!1820761))

(declare-fun m!1820763 () Bool)

(assert (=> b!1547314 m!1820763))

(declare-fun m!1820765 () Bool)

(assert (=> b!1547314 m!1820765))

(declare-fun m!1820767 () Bool)

(assert (=> b!1547314 m!1820767))

(declare-fun m!1820769 () Bool)

(assert (=> b!1547314 m!1820769))

(assert (=> b!1547314 m!1820769))

(declare-fun m!1820771 () Bool)

(assert (=> b!1547314 m!1820771))

(declare-fun m!1820773 () Bool)

(assert (=> b!1547314 m!1820773))

(declare-fun m!1820775 () Bool)

(assert (=> b!1547314 m!1820775))

(declare-fun m!1820777 () Bool)

(assert (=> b!1547314 m!1820777))

(declare-fun m!1820779 () Bool)

(assert (=> b!1547314 m!1820779))

(declare-fun m!1820781 () Bool)

(assert (=> b!1547300 m!1820781))

(declare-fun m!1820783 () Bool)

(assert (=> b!1547300 m!1820783))

(declare-fun m!1820785 () Bool)

(assert (=> mapNonEmpty!7958 m!1820785))

(declare-fun m!1820787 () Bool)

(assert (=> b!1547299 m!1820787))

(declare-fun m!1820789 () Bool)

(assert (=> b!1547299 m!1820789))

(declare-fun m!1820791 () Bool)

(assert (=> b!1547297 m!1820791))

(declare-fun m!1820793 () Bool)

(assert (=> start!143586 m!1820793))

(declare-fun m!1820795 () Bool)

(assert (=> start!143586 m!1820795))

(declare-fun m!1820797 () Bool)

(assert (=> start!143586 m!1820797))

(declare-fun m!1820799 () Bool)

(assert (=> start!143586 m!1820799))

(declare-fun m!1820801 () Bool)

(assert (=> start!143586 m!1820801))

(declare-fun m!1820803 () Bool)

(assert (=> b!1547327 m!1820803))

(check-sat b_and!107841 (not b!1547331) b_and!107829 (not b!1547298) b_and!107833 (not mapNonEmpty!7956) (not b!1547311) b_and!107835 (not b!1547300) (not b!1547330) (not b!1547326) (not mapNonEmpty!7957) (not b!1547322) (not b_next!41453) (not b!1547299) (not b!1547324) b_and!107839 (not b_next!41457) (not b_next!41447) (not b_next!41445) (not b!1547303) (not b!1547316) (not b!1547319) (not b_next!41455) (not b!1547314) (not b_next!41451) (not b_next!41449) b_and!107843 (not b!1547327) (not mapNonEmpty!7958) (not b!1547297) (not b_next!41443) (not b!1547310) (not b!1547293) (not b!1547306) b_and!107831 (not b!1547321) b_and!107837 (not b!1547304) (not start!143586) (not b!1547323) (not b!1547308))
(check-sat (not b_next!41453) b_and!107839 b_and!107841 b_and!107829 b_and!107833 (not b_next!41451) (not b_next!41443) b_and!107835 (not b_next!41457) (not b_next!41447) (not b_next!41445) (not b_next!41455) (not b_next!41449) b_and!107843 b_and!107831 b_and!107837)
