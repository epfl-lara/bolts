; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111846 () Bool)

(assert start!111846)

(declare-fun b!1282339 () Bool)

(declare-fun b_free!29915 () Bool)

(declare-fun b_next!30619 () Bool)

(assert (=> b!1282339 (= b_free!29915 (not b_next!30619))))

(declare-fun tp!372229 () Bool)

(declare-fun b_and!85059 () Bool)

(assert (=> b!1282339 (= tp!372229 b_and!85059)))

(declare-fun b!1282337 () Bool)

(declare-fun b_free!29917 () Bool)

(declare-fun b_next!30621 () Bool)

(assert (=> b!1282337 (= b_free!29917 (not b_next!30621))))

(declare-fun tp!372230 () Bool)

(declare-fun b_and!85061 () Bool)

(assert (=> b!1282337 (= tp!372230 b_and!85061)))

(declare-fun b!1282332 () Bool)

(declare-fun b_free!29919 () Bool)

(declare-fun b_next!30623 () Bool)

(assert (=> b!1282332 (= b_free!29919 (not b_next!30623))))

(declare-fun tp!372240 () Bool)

(declare-fun b_and!85063 () Bool)

(assert (=> b!1282332 (= tp!372240 b_and!85063)))

(declare-fun b_free!29921 () Bool)

(declare-fun b_next!30625 () Bool)

(assert (=> b!1282332 (= b_free!29921 (not b_next!30625))))

(declare-fun tp!372227 () Bool)

(declare-fun b_and!85065 () Bool)

(assert (=> b!1282332 (= tp!372227 b_and!85065)))

(declare-fun b!1282333 () Bool)

(declare-fun b_free!29923 () Bool)

(declare-fun b_next!30627 () Bool)

(assert (=> b!1282333 (= b_free!29923 (not b_next!30627))))

(declare-fun tp!372235 () Bool)

(declare-fun b_and!85067 () Bool)

(assert (=> b!1282333 (= tp!372235 b_and!85067)))

(declare-fun b!1282347 () Bool)

(declare-fun b_free!29925 () Bool)

(declare-fun b_next!30629 () Bool)

(assert (=> b!1282347 (= b_free!29925 (not b_next!30629))))

(declare-fun tp!372232 () Bool)

(declare-fun b_and!85069 () Bool)

(assert (=> b!1282347 (= tp!372232 b_and!85069)))

(declare-fun b!1282331 () Bool)

(declare-fun e!822090 () Bool)

(assert (=> b!1282331 (= e!822090 false)))

(declare-datatypes ((List!12770 0))(
  ( (Nil!12704) (Cons!12704 (h!18105 (_ BitVec 16)) (t!116594 List!12770)) )
))
(declare-datatypes ((TokenValue!2273 0))(
  ( (FloatLiteralValue!4546 (text!16356 List!12770)) (TokenValueExt!2272 (__x!8345 Int)) (Broken!11365 (value!71822 List!12770)) (Object!2338) (End!2273) (Def!2273) (Underscore!2273) (Match!2273) (Else!2273) (Error!2273) (Case!2273) (If!2273) (Extends!2273) (Abstract!2273) (Class!2273) (Val!2273) (DelimiterValue!4546 (del!2333 List!12770)) (KeywordValue!2279 (value!71823 List!12770)) (CommentValue!4546 (value!71824 List!12770)) (WhitespaceValue!4546 (value!71825 List!12770)) (IndentationValue!2273 (value!71826 List!12770)) (String!15600) (Int32!2273) (Broken!11366 (value!71827 List!12770)) (Boolean!2274) (Unit!18965) (OperatorValue!2276 (op!2333 List!12770)) (IdentifierValue!4546 (value!71828 List!12770)) (IdentifierValue!4547 (value!71829 List!12770)) (WhitespaceValue!4547 (value!71830 List!12770)) (True!4546) (False!4546) (Broken!11367 (value!71831 List!12770)) (Broken!11368 (value!71832 List!12770)) (True!4547) (RightBrace!2273) (RightBracket!2273) (Colon!2273) (Null!2273) (Comma!2273) (LeftBracket!2273) (False!4547) (LeftBrace!2273) (ImaginaryLiteralValue!2273 (text!16357 List!12770)) (StringLiteralValue!6819 (value!71833 List!12770)) (EOFValue!2273 (value!71834 List!12770)) (IdentValue!2273 (value!71835 List!12770)) (DelimiterValue!4547 (value!71836 List!12770)) (DedentValue!2273 (value!71837 List!12770)) (NewLineValue!2273 (value!71838 List!12770)) (IntegerValue!6819 (value!71839 (_ BitVec 32)) (text!16358 List!12770)) (IntegerValue!6820 (value!71840 Int) (text!16359 List!12770)) (Times!2273) (Or!2273) (Equal!2273) (Minus!2273) (Broken!11369 (value!71841 List!12770)) (And!2273) (Div!2273) (LessEqual!2273) (Mod!2273) (Concat!5770) (Not!2273) (Plus!2273) (SpaceValue!2273 (value!71842 List!12770)) (IntegerValue!6821 (value!71843 Int) (text!16360 List!12770)) (StringLiteralValue!6820 (text!16361 List!12770)) (FloatLiteralValue!4547 (text!16362 List!12770)) (BytesLiteralValue!2273 (value!71844 List!12770)) (CommentValue!4547 (value!71845 List!12770)) (StringLiteralValue!6821 (value!71846 List!12770)) (ErrorTokenValue!2273 (msg!2334 List!12770)) )
))
(declare-datatypes ((C!7284 0))(
  ( (C!7285 (val!4202 Int)) )
))
(declare-datatypes ((List!12771 0))(
  ( (Nil!12705) (Cons!12705 (h!18106 C!7284) (t!116595 List!12771)) )
))
(declare-datatypes ((IArray!8357 0))(
  ( (IArray!8358 (innerList!4236 List!12771)) )
))
(declare-datatypes ((Conc!4176 0))(
  ( (Node!4176 (left!10971 Conc!4176) (right!11301 Conc!4176) (csize!8582 Int) (cheight!4387 Int)) (Leaf!6464 (xs!6887 IArray!8357) (csize!8583 Int)) (Empty!4176) )
))
(declare-datatypes ((BalanceConc!8292 0))(
  ( (BalanceConc!8293 (c!211399 Conc!4176)) )
))
(declare-datatypes ((Regex!3497 0))(
  ( (ElementMatch!3497 (c!211400 C!7284)) (Concat!5771 (regOne!7506 Regex!3497) (regTwo!7506 Regex!3497)) (EmptyExpr!3497) (Star!3497 (reg!3826 Regex!3497)) (EmptyLang!3497) (Union!3497 (regOne!7507 Regex!3497) (regTwo!7507 Regex!3497)) )
))
(declare-datatypes ((String!15601 0))(
  ( (String!15602 (value!71847 String)) )
))
(declare-datatypes ((TokenValueInjection!4206 0))(
  ( (TokenValueInjection!4207 (toValue!3350 Int) (toChars!3209 Int)) )
))
(declare-datatypes ((Rule!4166 0))(
  ( (Rule!4167 (regex!2183 Regex!3497) (tag!2445 String!15601) (isSeparator!2183 Bool) (transformation!2183 TokenValueInjection!4206)) )
))
(declare-datatypes ((List!12772 0))(
  ( (Nil!12706) (Cons!12706 (h!18107 Rule!4166) (t!116596 List!12772)) )
))
(declare-fun rs!174 () List!12772)

(declare-datatypes ((LexerInterface!1878 0))(
  ( (LexerInterfaceExt!1875 (__x!8346 Int)) (Lexer!1876) )
))
(declare-fun thiss!10944 () LexerInterface!1878)

(declare-datatypes ((array!4762 0))(
  ( (array!4763 (arr!2125 (Array (_ BitVec 32) (_ BitVec 64))) (size!10355 (_ BitVec 32))) )
))
(declare-datatypes ((List!12773 0))(
  ( (Nil!12707) (Cons!12707 (h!18108 Regex!3497) (t!116597 List!12773)) )
))
(declare-datatypes ((Context!1106 0))(
  ( (Context!1107 (exprs!1053 List!12773)) )
))
(declare-datatypes ((tuple2!12582 0))(
  ( (tuple2!12583 (_1!7167 Context!1106) (_2!7167 C!7284)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!12584 0))(
  ( (tuple2!12585 (_1!7168 tuple2!12582) (_2!7168 (InoxSet Context!1106))) )
))
(declare-datatypes ((List!12774 0))(
  ( (Nil!12708) (Cons!12708 (h!18109 tuple2!12584) (t!116598 List!12774)) )
))
(declare-datatypes ((array!4764 0))(
  ( (array!4765 (arr!2126 (Array (_ BitVec 32) List!12774)) (size!10356 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2682 0))(
  ( (LongMapFixedSize!2683 (defaultEntry!1701 Int) (mask!4172 (_ BitVec 32)) (extraKeys!1588 (_ BitVec 32)) (zeroValue!1598 List!12774) (minValue!1598 List!12774) (_size!2763 (_ BitVec 32)) (_keys!1635 array!4762) (_values!1620 array!4764) (_vacant!1402 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5249 0))(
  ( (Cell!5250 (v!20967 LongMapFixedSize!2682)) )
))
(declare-datatypes ((MutLongMap!1341 0))(
  ( (LongMap!1341 (underlying!2889 Cell!5249)) (MutLongMapExt!1340 (__x!8347 Int)) )
))
(declare-datatypes ((tuple3!1170 0))(
  ( (tuple3!1171 (_1!7169 Regex!3497) (_2!7169 Context!1106) (_3!876 C!7284)) )
))
(declare-datatypes ((Hashable!1285 0))(
  ( (HashableExt!1284 (__x!8348 Int)) )
))
(declare-datatypes ((tuple2!12586 0))(
  ( (tuple2!12587 (_1!7170 tuple3!1170) (_2!7170 (InoxSet Context!1106))) )
))
(declare-datatypes ((List!12775 0))(
  ( (Nil!12709) (Cons!12709 (h!18110 tuple2!12586) (t!116599 List!12775)) )
))
(declare-datatypes ((array!4766 0))(
  ( (array!4767 (arr!2127 (Array (_ BitVec 32) List!12775)) (size!10357 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2684 0))(
  ( (LongMapFixedSize!2685 (defaultEntry!1702 Int) (mask!4173 (_ BitVec 32)) (extraKeys!1589 (_ BitVec 32)) (zeroValue!1599 List!12775) (minValue!1599 List!12775) (_size!2764 (_ BitVec 32)) (_keys!1636 array!4762) (_values!1621 array!4766) (_vacant!1403 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5251 0))(
  ( (Cell!5252 (v!20968 LongMapFixedSize!2684)) )
))
(declare-datatypes ((MutLongMap!1342 0))(
  ( (LongMap!1342 (underlying!2890 Cell!5251)) (MutLongMapExt!1341 (__x!8349 Int)) )
))
(declare-datatypes ((Cell!5253 0))(
  ( (Cell!5254 (v!20969 MutLongMap!1342)) )
))
(declare-datatypes ((MutableMap!1285 0))(
  ( (MutableMapExt!1284 (__x!8350 Int)) (HashMap!1285 (underlying!2891 Cell!5253) (hashF!3204 Hashable!1285) (_size!2765 (_ BitVec 32)) (defaultValue!1445 Int)) )
))
(declare-datatypes ((Cell!5255 0))(
  ( (Cell!5256 (v!20970 MutLongMap!1341)) )
))
(declare-datatypes ((Hashable!1286 0))(
  ( (HashableExt!1285 (__x!8351 Int)) )
))
(declare-datatypes ((MutableMap!1286 0))(
  ( (MutableMapExt!1285 (__x!8352 Int)) (HashMap!1286 (underlying!2892 Cell!5255) (hashF!3205 Hashable!1286) (_size!2766 (_ BitVec 32)) (defaultValue!1446 Int)) )
))
(declare-datatypes ((CacheUp!754 0))(
  ( (CacheUp!755 (cache!1666 MutableMap!1286)) )
))
(declare-datatypes ((CacheDown!758 0))(
  ( (CacheDown!759 (cache!1667 MutableMap!1285)) )
))
(declare-datatypes ((tuple3!1172 0))(
  ( (tuple3!1173 (_1!7171 Bool) (_2!7171 CacheUp!754) (_3!877 CacheDown!758)) )
))
(declare-fun lt!423179 () tuple3!1172)

(declare-fun lt!423177 () tuple3!1172)

(declare-datatypes ((Token!4028 0))(
  ( (Token!4029 (value!71848 TokenValue!2273) (rule!3922 Rule!4166) (size!10358 Int) (originalCharacters!3045 List!12771)) )
))
(declare-datatypes ((List!12776 0))(
  ( (Nil!12710) (Cons!12710 (h!18111 Token!4028) (t!116600 List!12776)) )
))
(declare-datatypes ((IArray!8359 0))(
  ( (IArray!8360 (innerList!4237 List!12776)) )
))
(declare-datatypes ((Conc!4177 0))(
  ( (Node!4177 (left!10972 Conc!4177) (right!11302 Conc!4177) (csize!8584 Int) (cheight!4388 Int)) (Leaf!6465 (xs!6888 IArray!8359) (csize!8585 Int)) (Empty!4177) )
))
(declare-datatypes ((BalanceConc!8294 0))(
  ( (BalanceConc!8295 (c!211401 Conc!4177)) )
))
(declare-fun lt!423178 () BalanceConc!8294)

(declare-fun rulesProduceEachTokenIndividuallyMem!37 (LexerInterface!1878 List!12772 BalanceConc!8294 CacheUp!754 CacheDown!758) tuple3!1172)

(assert (=> b!1282331 (= lt!423177 (rulesProduceEachTokenIndividuallyMem!37 thiss!10944 rs!174 lt!423178 (_2!7171 lt!423179) (_3!877 lt!423179)))))

(declare-fun e!822092 () Bool)

(assert (=> b!1282332 (= e!822092 (and tp!372240 tp!372227))))

(declare-fun tp!372225 () Bool)

(declare-fun e!822098 () Bool)

(declare-fun e!822087 () Bool)

(declare-fun cacheDown!411 () CacheDown!758)

(declare-fun tp!372237 () Bool)

(declare-fun array_inv!1546 (array!4762) Bool)

(declare-fun array_inv!1547 (array!4766) Bool)

(assert (=> b!1282333 (= e!822098 (and tp!372235 tp!372225 tp!372237 (array_inv!1546 (_keys!1636 (v!20968 (underlying!2890 (v!20969 (underlying!2891 (cache!1667 cacheDown!411))))))) (array_inv!1547 (_values!1621 (v!20968 (underlying!2890 (v!20969 (underlying!2891 (cache!1667 cacheDown!411))))))) e!822087))))

(declare-fun b!1282334 () Bool)

(declare-fun e!822102 () Bool)

(declare-fun tp!372238 () Bool)

(declare-fun mapRes!6424 () Bool)

(assert (=> b!1282334 (= e!822102 (and tp!372238 mapRes!6424))))

(declare-fun condMapEmpty!6424 () Bool)

(declare-fun cacheUp!398 () CacheUp!754)

(declare-fun mapDefault!6424 () List!12774)

(assert (=> b!1282334 (= condMapEmpty!6424 (= (arr!2126 (_values!1620 (v!20967 (underlying!2889 (v!20970 (underlying!2892 (cache!1666 cacheUp!398))))))) ((as const (Array (_ BitVec 32) List!12774)) mapDefault!6424)))))

(declare-fun b!1282335 () Bool)

(declare-fun e!822094 () Bool)

(declare-fun e!822089 () Bool)

(assert (=> b!1282335 (= e!822094 e!822089)))

(declare-fun b!1282336 () Bool)

(declare-fun tp!372236 () Bool)

(declare-fun mapRes!6423 () Bool)

(assert (=> b!1282336 (= e!822087 (and tp!372236 mapRes!6423))))

(declare-fun condMapEmpty!6423 () Bool)

(declare-fun mapDefault!6423 () List!12775)

(assert (=> b!1282336 (= condMapEmpty!6423 (= (arr!2127 (_values!1621 (v!20968 (underlying!2890 (v!20969 (underlying!2891 (cache!1667 cacheDown!411))))))) ((as const (Array (_ BitVec 32) List!12775)) mapDefault!6423)))))

(declare-fun e!822091 () Bool)

(assert (=> b!1282337 (= e!822089 (and e!822091 tp!372230))))

(declare-fun mapNonEmpty!6423 () Bool)

(declare-fun tp!372234 () Bool)

(declare-fun tp!372233 () Bool)

(assert (=> mapNonEmpty!6423 (= mapRes!6424 (and tp!372234 tp!372233))))

(declare-fun mapKey!6423 () (_ BitVec 32))

(declare-fun mapRest!6423 () (Array (_ BitVec 32) List!12774))

(declare-fun mapValue!6424 () List!12774)

(assert (=> mapNonEmpty!6423 (= (arr!2126 (_values!1620 (v!20967 (underlying!2889 (v!20970 (underlying!2892 (cache!1666 cacheUp!398))))))) (store mapRest!6423 mapKey!6423 mapValue!6424))))

(declare-fun b!1282338 () Bool)

(declare-fun res!575400 () Bool)

(declare-fun e!822103 () Bool)

(assert (=> b!1282338 (=> (not res!575400) (not e!822103))))

(declare-fun ts!110 () BalanceConc!8294)

(declare-fun isEmpty!7541 (BalanceConc!8294) Bool)

(assert (=> b!1282338 (= res!575400 (not (isEmpty!7541 ts!110)))))

(declare-fun e!822088 () Bool)

(declare-fun tp!372226 () Bool)

(declare-fun tp!372241 () Bool)

(declare-fun array_inv!1548 (array!4764) Bool)

(assert (=> b!1282339 (= e!822088 (and tp!372229 tp!372241 tp!372226 (array_inv!1546 (_keys!1635 (v!20967 (underlying!2889 (v!20970 (underlying!2892 (cache!1666 cacheUp!398))))))) (array_inv!1548 (_values!1620 (v!20967 (underlying!2889 (v!20970 (underlying!2892 (cache!1666 cacheUp!398))))))) e!822102))))

(declare-fun b!1282340 () Bool)

(declare-fun res!575402 () Bool)

(assert (=> b!1282340 (=> (not res!575402) (not e!822103))))

(declare-fun isEmpty!7542 (List!12772) Bool)

(assert (=> b!1282340 (= res!575402 (not (isEmpty!7542 rs!174)))))

(declare-fun e!822108 () Bool)

(declare-fun b!1282341 () Bool)

(declare-fun tp!372224 () Bool)

(declare-fun inv!17086 (String!15601) Bool)

(declare-fun inv!17089 (TokenValueInjection!4206) Bool)

(assert (=> b!1282341 (= e!822108 (and tp!372224 (inv!17086 (tag!2445 (h!18107 rs!174))) (inv!17089 (transformation!2183 (h!18107 rs!174))) e!822092))))

(declare-fun mapIsEmpty!6423 () Bool)

(assert (=> mapIsEmpty!6423 mapRes!6423))

(declare-fun b!1282343 () Bool)

(declare-fun e!822101 () Bool)

(declare-fun e!822100 () Bool)

(declare-fun lt!423180 () MutLongMap!1342)

(get-info :version)

(assert (=> b!1282343 (= e!822101 (and e!822100 ((_ is LongMap!1342) lt!423180)))))

(assert (=> b!1282343 (= lt!423180 (v!20969 (underlying!2891 (cache!1667 cacheDown!411))))))

(declare-fun b!1282344 () Bool)

(declare-fun e!822105 () Bool)

(declare-fun lt!423181 () MutLongMap!1341)

(assert (=> b!1282344 (= e!822091 (and e!822105 ((_ is LongMap!1341) lt!423181)))))

(assert (=> b!1282344 (= lt!423181 (v!20970 (underlying!2892 (cache!1666 cacheUp!398))))))

(declare-fun b!1282345 () Bool)

(declare-fun e!822097 () Bool)

(assert (=> b!1282345 (= e!822097 e!822098)))

(declare-fun b!1282346 () Bool)

(declare-fun e!822104 () Bool)

(declare-fun e!822093 () Bool)

(assert (=> b!1282346 (= e!822104 e!822093)))

(declare-fun mapIsEmpty!6424 () Bool)

(assert (=> mapIsEmpty!6424 mapRes!6424))

(declare-fun mapNonEmpty!6424 () Bool)

(declare-fun tp!372228 () Bool)

(declare-fun tp!372239 () Bool)

(assert (=> mapNonEmpty!6424 (= mapRes!6423 (and tp!372228 tp!372239))))

(declare-fun mapRest!6424 () (Array (_ BitVec 32) List!12775))

(declare-fun mapKey!6424 () (_ BitVec 32))

(declare-fun mapValue!6423 () List!12775)

(assert (=> mapNonEmpty!6424 (= (arr!2127 (_values!1621 (v!20968 (underlying!2890 (v!20969 (underlying!2891 (cache!1667 cacheDown!411))))))) (store mapRest!6424 mapKey!6424 mapValue!6423))))

(assert (=> b!1282347 (= e!822093 (and e!822101 tp!372232))))

(declare-fun b!1282348 () Bool)

(assert (=> b!1282348 (= e!822100 e!822097)))

(declare-fun b!1282349 () Bool)

(declare-fun res!575401 () Bool)

(assert (=> b!1282349 (=> (not res!575401) (not e!822103))))

(declare-fun rulesInvariant!1750 (LexerInterface!1878 List!12772) Bool)

(assert (=> b!1282349 (= res!575401 (rulesInvariant!1750 thiss!10944 rs!174))))

(declare-fun b!1282350 () Bool)

(declare-fun e!822109 () Bool)

(declare-fun tp!372231 () Bool)

(declare-fun inv!17090 (Conc!4177) Bool)

(assert (=> b!1282350 (= e!822109 (and (inv!17090 (c!211401 ts!110)) tp!372231))))

(declare-fun b!1282351 () Bool)

(declare-fun e!822106 () Bool)

(declare-fun tp!372242 () Bool)

(assert (=> b!1282351 (= e!822106 (and e!822108 tp!372242))))

(declare-fun b!1282352 () Bool)

(declare-fun e!822096 () Bool)

(assert (=> b!1282352 (= e!822105 e!822096)))

(declare-fun b!1282353 () Bool)

(assert (=> b!1282353 (= e!822103 e!822090)))

(declare-fun res!575404 () Bool)

(assert (=> b!1282353 (=> (not res!575404) (not e!822090))))

(declare-fun size!10359 (BalanceConc!8294) Int)

(assert (=> b!1282353 (= res!575404 (< (size!10359 lt!423178) (size!10359 ts!110)))))

(declare-fun tail!1813 (BalanceConc!8294) BalanceConc!8294)

(assert (=> b!1282353 (= lt!423178 (tail!1813 ts!110))))

(declare-fun rulesProduceIndividualTokenMem!23 (LexerInterface!1878 List!12772 Token!4028 CacheUp!754 CacheDown!758) tuple3!1172)

(declare-fun head!2185 (BalanceConc!8294) Token!4028)

(assert (=> b!1282353 (= lt!423179 (rulesProduceIndividualTokenMem!23 thiss!10944 rs!174 (head!2185 ts!110) cacheUp!398 cacheDown!411))))

(declare-fun res!575403 () Bool)

(assert (=> start!111846 (=> (not res!575403) (not e!822103))))

(assert (=> start!111846 (= res!575403 ((_ is Lexer!1876) thiss!10944))))

(assert (=> start!111846 e!822103))

(assert (=> start!111846 e!822106))

(declare-fun inv!17091 (CacheUp!754) Bool)

(assert (=> start!111846 (and (inv!17091 cacheUp!398) e!822094)))

(declare-fun inv!17092 (CacheDown!758) Bool)

(assert (=> start!111846 (and (inv!17092 cacheDown!411) e!822104)))

(declare-fun inv!17093 (BalanceConc!8294) Bool)

(assert (=> start!111846 (and (inv!17093 ts!110) e!822109)))

(assert (=> start!111846 true))

(declare-fun b!1282342 () Bool)

(assert (=> b!1282342 (= e!822096 e!822088)))

(assert (= (and start!111846 res!575403) b!1282340))

(assert (= (and b!1282340 res!575402) b!1282349))

(assert (= (and b!1282349 res!575401) b!1282338))

(assert (= (and b!1282338 res!575400) b!1282353))

(assert (= (and b!1282353 res!575404) b!1282331))

(assert (= b!1282341 b!1282332))

(assert (= b!1282351 b!1282341))

(assert (= (and start!111846 ((_ is Cons!12706) rs!174)) b!1282351))

(assert (= (and b!1282334 condMapEmpty!6424) mapIsEmpty!6424))

(assert (= (and b!1282334 (not condMapEmpty!6424)) mapNonEmpty!6423))

(assert (= b!1282339 b!1282334))

(assert (= b!1282342 b!1282339))

(assert (= b!1282352 b!1282342))

(assert (= (and b!1282344 ((_ is LongMap!1341) (v!20970 (underlying!2892 (cache!1666 cacheUp!398))))) b!1282352))

(assert (= b!1282337 b!1282344))

(assert (= (and b!1282335 ((_ is HashMap!1286) (cache!1666 cacheUp!398))) b!1282337))

(assert (= start!111846 b!1282335))

(assert (= (and b!1282336 condMapEmpty!6423) mapIsEmpty!6423))

(assert (= (and b!1282336 (not condMapEmpty!6423)) mapNonEmpty!6424))

(assert (= b!1282333 b!1282336))

(assert (= b!1282345 b!1282333))

(assert (= b!1282348 b!1282345))

(assert (= (and b!1282343 ((_ is LongMap!1342) (v!20969 (underlying!2891 (cache!1667 cacheDown!411))))) b!1282348))

(assert (= b!1282347 b!1282343))

(assert (= (and b!1282346 ((_ is HashMap!1285) (cache!1667 cacheDown!411))) b!1282347))

(assert (= start!111846 b!1282346))

(assert (= start!111846 b!1282350))

(declare-fun m!1432883 () Bool)

(assert (=> mapNonEmpty!6423 m!1432883))

(declare-fun m!1432885 () Bool)

(assert (=> b!1282350 m!1432885))

(declare-fun m!1432887 () Bool)

(assert (=> b!1282340 m!1432887))

(declare-fun m!1432889 () Bool)

(assert (=> b!1282353 m!1432889))

(declare-fun m!1432891 () Bool)

(assert (=> b!1282353 m!1432891))

(declare-fun m!1432893 () Bool)

(assert (=> b!1282353 m!1432893))

(assert (=> b!1282353 m!1432893))

(declare-fun m!1432895 () Bool)

(assert (=> b!1282353 m!1432895))

(declare-fun m!1432897 () Bool)

(assert (=> b!1282353 m!1432897))

(declare-fun m!1432899 () Bool)

(assert (=> b!1282331 m!1432899))

(declare-fun m!1432901 () Bool)

(assert (=> b!1282349 m!1432901))

(declare-fun m!1432903 () Bool)

(assert (=> b!1282339 m!1432903))

(declare-fun m!1432905 () Bool)

(assert (=> b!1282339 m!1432905))

(declare-fun m!1432907 () Bool)

(assert (=> start!111846 m!1432907))

(declare-fun m!1432909 () Bool)

(assert (=> start!111846 m!1432909))

(declare-fun m!1432911 () Bool)

(assert (=> start!111846 m!1432911))

(declare-fun m!1432913 () Bool)

(assert (=> b!1282338 m!1432913))

(declare-fun m!1432915 () Bool)

(assert (=> mapNonEmpty!6424 m!1432915))

(declare-fun m!1432917 () Bool)

(assert (=> b!1282341 m!1432917))

(declare-fun m!1432919 () Bool)

(assert (=> b!1282341 m!1432919))

(declare-fun m!1432921 () Bool)

(assert (=> b!1282333 m!1432921))

(declare-fun m!1432923 () Bool)

(assert (=> b!1282333 m!1432923))

(check-sat (not b!1282340) (not start!111846) (not mapNonEmpty!6423) (not mapNonEmpty!6424) (not b_next!30627) (not b!1282339) (not b!1282349) b_and!85067 b_and!85063 b_and!85059 (not b!1282333) (not b!1282353) (not b_next!30625) b_and!85065 (not b!1282338) (not b_next!30621) (not b!1282334) (not b_next!30619) (not b!1282331) (not b!1282350) (not b_next!30629) b_and!85061 (not b_next!30623) (not b!1282351) b_and!85069 (not b!1282336) (not b!1282341))
(check-sat (not b_next!30629) (not b_next!30627) b_and!85067 b_and!85063 b_and!85059 b_and!85069 (not b_next!30625) b_and!85065 (not b_next!30619) (not b_next!30621) b_and!85061 (not b_next!30623))
