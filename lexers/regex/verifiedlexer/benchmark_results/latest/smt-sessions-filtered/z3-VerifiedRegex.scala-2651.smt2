; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143106 () Bool)

(assert start!143106)

(declare-fun b!1540588 () Bool)

(declare-fun b_free!40283 () Bool)

(declare-fun b_next!40987 () Bool)

(assert (=> b!1540588 (= b_free!40283 (not b_next!40987))))

(declare-fun tp!446342 () Bool)

(declare-fun b_and!107161 () Bool)

(assert (=> b!1540588 (= tp!446342 b_and!107161)))

(declare-fun b_free!40285 () Bool)

(declare-fun b_next!40989 () Bool)

(assert (=> b!1540588 (= b_free!40285 (not b_next!40989))))

(declare-fun tp!446329 () Bool)

(declare-fun b_and!107163 () Bool)

(assert (=> b!1540588 (= tp!446329 b_and!107163)))

(declare-fun b!1540569 () Bool)

(declare-fun b_free!40287 () Bool)

(declare-fun b_next!40991 () Bool)

(assert (=> b!1540569 (= b_free!40287 (not b_next!40991))))

(declare-fun tp!446336 () Bool)

(declare-fun b_and!107165 () Bool)

(assert (=> b!1540569 (= tp!446336 b_and!107165)))

(declare-fun b!1540589 () Bool)

(declare-fun b_free!40289 () Bool)

(declare-fun b_next!40993 () Bool)

(assert (=> b!1540589 (= b_free!40289 (not b_next!40993))))

(declare-fun tp!446341 () Bool)

(declare-fun b_and!107167 () Bool)

(assert (=> b!1540589 (= tp!446341 b_and!107167)))

(declare-fun b!1540557 () Bool)

(declare-fun b_free!40291 () Bool)

(declare-fun b_next!40995 () Bool)

(assert (=> b!1540557 (= b_free!40291 (not b_next!40995))))

(declare-fun tp!446332 () Bool)

(declare-fun b_and!107169 () Bool)

(assert (=> b!1540557 (= tp!446332 b_and!107169)))

(declare-fun b!1540582 () Bool)

(declare-fun b_free!40293 () Bool)

(declare-fun b_next!40997 () Bool)

(assert (=> b!1540582 (= b_free!40293 (not b_next!40997))))

(declare-fun tp!446327 () Bool)

(declare-fun b_and!107171 () Bool)

(assert (=> b!1540582 (= tp!446327 b_and!107171)))

(declare-fun b!1540567 () Bool)

(declare-fun b_free!40295 () Bool)

(declare-fun b_next!40999 () Bool)

(assert (=> b!1540567 (= b_free!40295 (not b_next!40999))))

(declare-fun tp!446323 () Bool)

(declare-fun b_and!107173 () Bool)

(assert (=> b!1540567 (= tp!446323 b_and!107173)))

(declare-fun b!1540592 () Bool)

(declare-fun b_free!40297 () Bool)

(declare-fun b_next!41001 () Bool)

(assert (=> b!1540592 (= b_free!40297 (not b_next!41001))))

(declare-fun tp!446322 () Bool)

(declare-fun b_and!107175 () Bool)

(assert (=> b!1540592 (= tp!446322 b_and!107175)))

(declare-fun b!1540552 () Bool)

(declare-fun res!690006 () Bool)

(declare-fun e!986200 () Bool)

(assert (=> b!1540552 (=> (not res!690006) (not e!986200))))

(declare-datatypes ((C!8604 0))(
  ( (C!8605 (val!4874 Int)) )
))
(declare-datatypes ((Regex!4213 0))(
  ( (ElementMatch!4213 (c!251716 C!8604)) (Concat!7192 (regOne!8938 Regex!4213) (regTwo!8938 Regex!4213)) (EmptyExpr!4213) (Star!4213 (reg!4542 Regex!4213)) (EmptyLang!4213) (Union!4213 (regOne!8939 Regex!4213) (regTwo!8939 Regex!4213)) )
))
(declare-datatypes ((List!16520 0))(
  ( (Nil!16452) (Cons!16452 (h!21853 Regex!4213) (t!140726 List!16520)) )
))
(declare-datatypes ((Context!1462 0))(
  ( (Context!1463 (exprs!1231 List!16520)) )
))
(declare-datatypes ((tuple2!15568 0))(
  ( (tuple2!15569 (_1!8964 Context!1462) (_2!8964 C!8604)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15570 0))(
  ( (tuple2!15571 (_1!8965 tuple2!15568) (_2!8965 (InoxSet Context!1462))) )
))
(declare-datatypes ((List!16521 0))(
  ( (Nil!16453) (Cons!16453 (h!21854 tuple2!15570) (t!140727 List!16521)) )
))
(declare-datatypes ((array!5654 0))(
  ( (array!5655 (arr!2516 (Array (_ BitVec 32) List!16521)) (size!13290 (_ BitVec 32))) )
))
(declare-datatypes ((array!5656 0))(
  ( (array!5657 (arr!2517 (Array (_ BitVec 32) (_ BitVec 64))) (size!13291 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3256 0))(
  ( (LongMapFixedSize!3257 (defaultEntry!1988 Int) (mask!4823 (_ BitVec 32)) (extraKeys!1875 (_ BitVec 32)) (zeroValue!1885 List!16521) (minValue!1885 List!16521) (_size!3337 (_ BitVec 32)) (_keys!1922 array!5656) (_values!1907 array!5654) (_vacant!1689 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6397 0))(
  ( (Cell!6398 (v!23266 LongMapFixedSize!3256)) )
))
(declare-datatypes ((MutLongMap!1628 0))(
  ( (LongMap!1628 (underlying!3465 Cell!6397)) (MutLongMapExt!1627 (__x!10573 Int)) )
))
(declare-datatypes ((Cell!6399 0))(
  ( (Cell!6400 (v!23267 MutLongMap!1628)) )
))
(declare-datatypes ((Hashable!1572 0))(
  ( (HashableExt!1571 (__x!10574 Int)) )
))
(declare-datatypes ((MutableMap!1572 0))(
  ( (MutableMapExt!1571 (__x!10575 Int)) (HashMap!1572 (underlying!3466 Cell!6399) (hashF!3491 Hashable!1572) (_size!3338 (_ BitVec 32)) (defaultValue!1732 Int)) )
))
(declare-datatypes ((CacheUp!946 0))(
  ( (CacheUp!947 (cache!1953 MutableMap!1572)) )
))
(declare-fun cacheUp!695 () CacheUp!946)

(declare-fun valid!1315 (CacheUp!946) Bool)

(assert (=> b!1540552 (= res!690006 (valid!1315 cacheUp!695))))

(declare-fun mapIsEmpty!7653 () Bool)

(declare-fun mapRes!7653 () Bool)

(assert (=> mapIsEmpty!7653 mapRes!7653))

(declare-fun b!1540553 () Bool)

(declare-fun e!986209 () Bool)

(declare-fun e!986194 () Bool)

(assert (=> b!1540553 (= e!986209 e!986194)))

(declare-fun res!690000 () Bool)

(assert (=> b!1540553 (=> res!690000 e!986194)))

(declare-datatypes ((List!16522 0))(
  ( (Nil!16454) (Cons!16454 (h!21855 (_ BitVec 16)) (t!140728 List!16522)) )
))
(declare-datatypes ((TokenValue!2979 0))(
  ( (FloatLiteralValue!5958 (text!21298 List!16522)) (TokenValueExt!2978 (__x!10576 Int)) (Broken!14895 (value!91972 List!16522)) (Object!3046) (End!2979) (Def!2979) (Underscore!2979) (Match!2979) (Else!2979) (Error!2979) (Case!2979) (If!2979) (Extends!2979) (Abstract!2979) (Class!2979) (Val!2979) (DelimiterValue!5958 (del!3039 List!16522)) (KeywordValue!2985 (value!91973 List!16522)) (CommentValue!5958 (value!91974 List!16522)) (WhitespaceValue!5958 (value!91975 List!16522)) (IndentationValue!2979 (value!91976 List!16522)) (String!19174) (Int32!2979) (Broken!14896 (value!91977 List!16522)) (Boolean!2980) (Unit!25885) (OperatorValue!2982 (op!3039 List!16522)) (IdentifierValue!5958 (value!91978 List!16522)) (IdentifierValue!5959 (value!91979 List!16522)) (WhitespaceValue!5959 (value!91980 List!16522)) (True!5958) (False!5958) (Broken!14897 (value!91981 List!16522)) (Broken!14898 (value!91982 List!16522)) (True!5959) (RightBrace!2979) (RightBracket!2979) (Colon!2979) (Null!2979) (Comma!2979) (LeftBracket!2979) (False!5959) (LeftBrace!2979) (ImaginaryLiteralValue!2979 (text!21299 List!16522)) (StringLiteralValue!8937 (value!91983 List!16522)) (EOFValue!2979 (value!91984 List!16522)) (IdentValue!2979 (value!91985 List!16522)) (DelimiterValue!5959 (value!91986 List!16522)) (DedentValue!2979 (value!91987 List!16522)) (NewLineValue!2979 (value!91988 List!16522)) (IntegerValue!8937 (value!91989 (_ BitVec 32)) (text!21300 List!16522)) (IntegerValue!8938 (value!91990 Int) (text!21301 List!16522)) (Times!2979) (Or!2979) (Equal!2979) (Minus!2979) (Broken!14899 (value!91991 List!16522)) (And!2979) (Div!2979) (LessEqual!2979) (Mod!2979) (Concat!7193) (Not!2979) (Plus!2979) (SpaceValue!2979 (value!91992 List!16522)) (IntegerValue!8939 (value!91993 Int) (text!21302 List!16522)) (StringLiteralValue!8938 (text!21303 List!16522)) (FloatLiteralValue!5959 (text!21304 List!16522)) (BytesLiteralValue!2979 (value!91994 List!16522)) (CommentValue!5959 (value!91995 List!16522)) (StringLiteralValue!8939 (value!91996 List!16522)) (ErrorTokenValue!2979 (msg!3040 List!16522)) )
))
(declare-datatypes ((List!16523 0))(
  ( (Nil!16455) (Cons!16455 (h!21856 C!8604) (t!140729 List!16523)) )
))
(declare-datatypes ((IArray!11017 0))(
  ( (IArray!11018 (innerList!5566 List!16523)) )
))
(declare-datatypes ((Conc!5506 0))(
  ( (Node!5506 (left!13483 Conc!5506) (right!13813 Conc!5506) (csize!11242 Int) (cheight!5717 Int)) (Leaf!8158 (xs!8306 IArray!11017) (csize!11243 Int)) (Empty!5506) )
))
(declare-datatypes ((BalanceConc!10954 0))(
  ( (BalanceConc!10955 (c!251717 Conc!5506)) )
))
(declare-datatypes ((String!19175 0))(
  ( (String!19176 (value!91997 String)) )
))
(declare-datatypes ((TokenValueInjection!5618 0))(
  ( (TokenValueInjection!5619 (toValue!4250 Int) (toChars!4109 Int)) )
))
(declare-datatypes ((Rule!5578 0))(
  ( (Rule!5579 (regex!2889 Regex!4213) (tag!3153 String!19175) (isSeparator!2889 Bool) (transformation!2889 TokenValueInjection!5618)) )
))
(declare-datatypes ((Token!5416 0))(
  ( (Token!5417 (value!91998 TokenValue!2979) (rule!4693 Rule!5578) (size!13292 Int) (originalCharacters!3739 List!16523)) )
))
(declare-datatypes ((tuple2!15572 0))(
  ( (tuple2!15573 (_1!8966 Token!5416) (_2!8966 BalanceConc!10954)) )
))
(declare-fun lt!534318 () tuple2!15572)

(declare-datatypes ((tuple2!15574 0))(
  ( (tuple2!15575 (_1!8967 Token!5416) (_2!8967 List!16523)) )
))
(declare-fun lt!534326 () tuple2!15574)

(assert (=> b!1540553 (= res!690000 (not (= (_1!8966 lt!534318) (_1!8967 lt!534326))))))

(declare-datatypes ((Option!2981 0))(
  ( (None!2980) (Some!2980 (v!23268 tuple2!15574)) )
))
(declare-fun lt!534322 () Option!2981)

(declare-fun get!4795 (Option!2981) tuple2!15574)

(assert (=> b!1540553 (= lt!534326 (get!4795 lt!534322))))

(declare-datatypes ((Option!2982 0))(
  ( (None!2981) (Some!2981 (v!23269 tuple2!15572)) )
))
(declare-datatypes ((tuple3!1562 0))(
  ( (tuple3!1563 (_1!8968 (InoxSet Context!1462)) (_2!8968 Int) (_3!1180 Int)) )
))
(declare-datatypes ((Hashable!1573 0))(
  ( (HashableExt!1572 (__x!10577 Int)) )
))
(declare-datatypes ((tuple2!15576 0))(
  ( (tuple2!15577 (_1!8969 tuple3!1562) (_2!8969 Int)) )
))
(declare-datatypes ((List!16524 0))(
  ( (Nil!16456) (Cons!16456 (h!21857 tuple2!15576) (t!140730 List!16524)) )
))
(declare-datatypes ((array!5658 0))(
  ( (array!5659 (arr!2518 (Array (_ BitVec 32) List!16524)) (size!13293 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3258 0))(
  ( (LongMapFixedSize!3259 (defaultEntry!1989 Int) (mask!4824 (_ BitVec 32)) (extraKeys!1876 (_ BitVec 32)) (zeroValue!1886 List!16524) (minValue!1886 List!16524) (_size!3339 (_ BitVec 32)) (_keys!1923 array!5656) (_values!1908 array!5658) (_vacant!1690 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6401 0))(
  ( (Cell!6402 (v!23270 LongMapFixedSize!3258)) )
))
(declare-datatypes ((MutLongMap!1629 0))(
  ( (LongMap!1629 (underlying!3467 Cell!6401)) (MutLongMapExt!1628 (__x!10578 Int)) )
))
(declare-datatypes ((Cell!6403 0))(
  ( (Cell!6404 (v!23271 MutLongMap!1629)) )
))
(declare-datatypes ((MutableMap!1573 0))(
  ( (MutableMapExt!1572 (__x!10579 Int)) (HashMap!1573 (underlying!3468 Cell!6403) (hashF!3492 Hashable!1573) (_size!3340 (_ BitVec 32)) (defaultValue!1733 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!374 0))(
  ( (CacheFurthestNullable!375 (cache!1954 MutableMap!1573) (totalInput!2381 BalanceConc!10954)) )
))
(declare-datatypes ((tuple3!1564 0))(
  ( (tuple3!1565 (_1!8970 Regex!4213) (_2!8970 Context!1462) (_3!1181 C!8604)) )
))
(declare-datatypes ((tuple2!15578 0))(
  ( (tuple2!15579 (_1!8971 tuple3!1564) (_2!8971 (InoxSet Context!1462))) )
))
(declare-datatypes ((List!16525 0))(
  ( (Nil!16457) (Cons!16457 (h!21858 tuple2!15578) (t!140731 List!16525)) )
))
(declare-datatypes ((array!5660 0))(
  ( (array!5661 (arr!2519 (Array (_ BitVec 32) List!16525)) (size!13294 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3260 0))(
  ( (LongMapFixedSize!3261 (defaultEntry!1990 Int) (mask!4825 (_ BitVec 32)) (extraKeys!1877 (_ BitVec 32)) (zeroValue!1887 List!16525) (minValue!1887 List!16525) (_size!3341 (_ BitVec 32)) (_keys!1924 array!5656) (_values!1909 array!5660) (_vacant!1691 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6405 0))(
  ( (Cell!6406 (v!23272 LongMapFixedSize!3260)) )
))
(declare-datatypes ((MutLongMap!1630 0))(
  ( (LongMap!1630 (underlying!3469 Cell!6405)) (MutLongMapExt!1629 (__x!10580 Int)) )
))
(declare-datatypes ((Cell!6407 0))(
  ( (Cell!6408 (v!23273 MutLongMap!1630)) )
))
(declare-datatypes ((Hashable!1574 0))(
  ( (HashableExt!1573 (__x!10581 Int)) )
))
(declare-datatypes ((MutableMap!1574 0))(
  ( (MutableMapExt!1573 (__x!10582 Int)) (HashMap!1574 (underlying!3470 Cell!6407) (hashF!3493 Hashable!1574) (_size!3342 (_ BitVec 32)) (defaultValue!1734 Int)) )
))
(declare-datatypes ((CacheDown!952 0))(
  ( (CacheDown!953 (cache!1955 MutableMap!1574)) )
))
(declare-datatypes ((tuple4!798 0))(
  ( (tuple4!799 (_1!8972 Option!2982) (_2!8972 CacheUp!946) (_3!1182 CacheFurthestNullable!374) (_4!399 CacheDown!952)) )
))
(declare-fun lt!534320 () tuple4!798)

(declare-fun get!4796 (Option!2982) tuple2!15572)

(assert (=> b!1540553 (= lt!534318 (get!4796 (_1!8972 lt!534320)))))

(declare-fun b!1540554 () Bool)

(declare-fun e!986205 () Bool)

(declare-fun tp!446318 () Bool)

(assert (=> b!1540554 (= e!986205 (and tp!446318 mapRes!7653))))

(declare-fun condMapEmpty!7655 () Bool)

(declare-fun cacheDown!708 () CacheDown!952)

(declare-fun mapDefault!7653 () List!16525)

(assert (=> b!1540554 (= condMapEmpty!7655 (= (arr!2519 (_values!1909 (v!23272 (underlying!3469 (v!23273 (underlying!3470 (cache!1955 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16525)) mapDefault!7653)))))

(declare-fun b!1540555 () Bool)

(declare-fun e!986189 () Bool)

(declare-fun e!986215 () Bool)

(assert (=> b!1540555 (= e!986189 e!986215)))

(declare-fun b!1540556 () Bool)

(declare-fun e!986193 () Bool)

(declare-fun e!986212 () Bool)

(declare-fun tp!446333 () Bool)

(assert (=> b!1540556 (= e!986193 (and e!986212 tp!446333))))

(declare-fun e!986210 () Bool)

(declare-fun e!986213 () Bool)

(assert (=> b!1540557 (= e!986210 (and e!986213 tp!446332))))

(declare-fun b!1540558 () Bool)

(declare-fun e!986207 () Bool)

(declare-fun lt!534315 () MutLongMap!1629)

(get-info :version)

(assert (=> b!1540558 (= e!986213 (and e!986207 ((_ is LongMap!1629) lt!534315)))))

(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!374)

(assert (=> b!1540558 (= lt!534315 (v!23271 (underlying!3468 (cache!1954 cacheFurthestNullable!81))))))

(declare-fun b!1540559 () Bool)

(declare-fun e!986204 () Bool)

(declare-fun e!986195 () Bool)

(assert (=> b!1540559 (= e!986204 e!986195)))

(declare-fun b!1540560 () Bool)

(declare-fun res!690003 () Bool)

(assert (=> b!1540560 (=> (not res!690003) (not e!986200))))

(declare-fun totalInput!496 () BalanceConc!10954)

(assert (=> b!1540560 (= res!690003 (= (totalInput!2381 cacheFurthestNullable!81) totalInput!496))))

(declare-fun e!986218 () Bool)

(declare-fun b!1540561 () Bool)

(declare-datatypes ((List!16526 0))(
  ( (Nil!16458) (Cons!16458 (h!21859 Rule!5578) (t!140732 List!16526)) )
))
(declare-fun rulesArg!359 () List!16526)

(declare-fun tp!446325 () Bool)

(declare-fun inv!21706 (String!19175) Bool)

(declare-fun inv!21708 (TokenValueInjection!5618) Bool)

(assert (=> b!1540561 (= e!986212 (and tp!446325 (inv!21706 (tag!3153 (h!21859 rulesArg!359))) (inv!21708 (transformation!2889 (h!21859 rulesArg!359))) e!986218))))

(declare-fun b!1540562 () Bool)

(declare-fun res!690010 () Bool)

(declare-fun e!986216 () Bool)

(assert (=> b!1540562 (=> (not res!690010) (not e!986216))))

(declare-datatypes ((LexerInterface!2539 0))(
  ( (LexerInterfaceExt!2536 (__x!10583 Int)) (Lexer!2537) )
))
(declare-fun thiss!15733 () LexerInterface!2539)

(declare-fun rulesValidInductive!888 (LexerInterface!2539 List!16526) Bool)

(assert (=> b!1540562 (= res!690010 (rulesValidInductive!888 thiss!15733 rulesArg!359))))

(declare-fun b!1540563 () Bool)

(declare-fun res!690005 () Bool)

(assert (=> b!1540563 (=> (not res!690005) (not e!986200))))

(declare-fun valid!1316 (CacheFurthestNullable!374) Bool)

(assert (=> b!1540563 (= res!690005 (valid!1316 cacheFurthestNullable!81))))

(declare-fun b!1540564 () Bool)

(declare-fun res!690008 () Bool)

(declare-fun e!986203 () Bool)

(assert (=> b!1540564 (=> res!690008 e!986203)))

(declare-fun lt!534316 () Bool)

(assert (=> b!1540564 (= res!690008 lt!534316)))

(declare-fun b!1540565 () Bool)

(declare-fun res!689999 () Bool)

(assert (=> b!1540565 (=> (not res!689999) (not e!986200))))

(declare-fun valid!1317 (CacheDown!952) Bool)

(assert (=> b!1540565 (= res!689999 (valid!1317 cacheDown!708))))

(declare-fun b!1540566 () Bool)

(declare-fun e!986211 () Bool)

(declare-fun e!986225 () Bool)

(assert (=> b!1540566 (= e!986211 e!986225)))

(declare-fun tp!446315 () Bool)

(declare-fun tp!446317 () Bool)

(declare-fun e!986219 () Bool)

(declare-fun e!986221 () Bool)

(declare-fun array_inv!1807 (array!5656) Bool)

(declare-fun array_inv!1808 (array!5654) Bool)

(assert (=> b!1540567 (= e!986219 (and tp!446323 tp!446317 tp!446315 (array_inv!1807 (_keys!1922 (v!23266 (underlying!3465 (v!23267 (underlying!3466 (cache!1953 cacheUp!695))))))) (array_inv!1808 (_values!1907 (v!23266 (underlying!3465 (v!23267 (underlying!3466 (cache!1953 cacheUp!695))))))) e!986221))))

(declare-fun b!1540568 () Bool)

(declare-fun e!986191 () Bool)

(declare-fun tp!446326 () Bool)

(declare-fun inv!21709 (Conc!5506) Bool)

(assert (=> b!1540568 (= e!986191 (and (inv!21709 (c!251717 totalInput!496)) tp!446326))))

(declare-fun e!986217 () Bool)

(assert (=> b!1540569 (= e!986195 (and e!986217 tp!446336))))

(declare-fun b!1540570 () Bool)

(declare-fun e!986202 () Bool)

(assert (=> b!1540570 (= e!986207 e!986202)))

(declare-fun b!1540571 () Bool)

(declare-fun e!986198 () Bool)

(declare-fun lt!534314 () MutLongMap!1630)

(assert (=> b!1540571 (= e!986217 (and e!986198 ((_ is LongMap!1630) lt!534314)))))

(assert (=> b!1540571 (= lt!534314 (v!23273 (underlying!3470 (cache!1955 cacheDown!708))))))

(declare-fun b!1540572 () Bool)

(declare-fun tp!446319 () Bool)

(declare-fun mapRes!7654 () Bool)

(assert (=> b!1540572 (= e!986221 (and tp!446319 mapRes!7654))))

(declare-fun condMapEmpty!7654 () Bool)

(declare-fun mapDefault!7654 () List!16521)

(assert (=> b!1540572 (= condMapEmpty!7654 (= (arr!2516 (_values!1907 (v!23266 (underlying!3465 (v!23267 (underlying!3466 (cache!1953 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16521)) mapDefault!7654)))))

(declare-fun e!986224 () Bool)

(declare-fun e!986223 () Bool)

(declare-fun b!1540573 () Bool)

(declare-fun inv!21710 (BalanceConc!10954) Bool)

(assert (=> b!1540573 (= e!986224 (and e!986210 (inv!21710 (totalInput!2381 cacheFurthestNullable!81)) e!986223))))

(declare-fun b!1540574 () Bool)

(assert (=> b!1540574 (= e!986216 e!986200)))

(declare-fun res!690004 () Bool)

(assert (=> b!1540574 (=> (not res!690004) (not e!986200))))

(declare-fun lt!534313 () List!16523)

(declare-fun isSuffix!334 (List!16523 List!16523) Bool)

(declare-fun list!6431 (BalanceConc!10954) List!16523)

(assert (=> b!1540574 (= res!690004 (isSuffix!334 lt!534313 (list!6431 totalInput!496)))))

(declare-fun input!1460 () BalanceConc!10954)

(assert (=> b!1540574 (= lt!534313 (list!6431 input!1460))))

(declare-fun b!1540575 () Bool)

(declare-fun e!986214 () tuple4!798)

(declare-datatypes ((tuple4!800 0))(
  ( (tuple4!801 (_1!8973 Option!2982) (_2!8973 CacheUp!946) (_3!1183 CacheDown!952) (_4!400 CacheFurthestNullable!374)) )
))
(declare-fun lt!534325 () tuple4!800)

(assert (=> b!1540575 (= e!986214 (tuple4!799 (_1!8973 lt!534325) (_2!8973 lt!534325) (_4!400 lt!534325) (_3!1183 lt!534325)))))

(declare-fun call!101603 () tuple4!800)

(assert (=> b!1540575 (= lt!534325 call!101603)))

(declare-fun b!1540576 () Bool)

(assert (=> b!1540576 (= e!986215 e!986219)))

(declare-fun b!1540577 () Bool)

(declare-fun res!690001 () Bool)

(assert (=> b!1540577 (=> (not res!690001) (not e!986216))))

(declare-fun isEmpty!10027 (List!16526) Bool)

(assert (=> b!1540577 (= res!690001 (not (isEmpty!10027 rulesArg!359)))))

(declare-fun mapIsEmpty!7654 () Bool)

(assert (=> mapIsEmpty!7654 mapRes!7654))

(declare-fun b!1540578 () Bool)

(declare-fun e!986190 () Bool)

(declare-fun tp!446339 () Bool)

(assert (=> b!1540578 (= e!986190 (and (inv!21709 (c!251717 input!1460)) tp!446339))))

(declare-fun b!1540579 () Bool)

(declare-fun e!986201 () Bool)

(declare-fun e!986197 () Bool)

(assert (=> b!1540579 (= e!986201 e!986197)))

(declare-fun b!1540580 () Bool)

(assert (=> b!1540580 (= e!986198 e!986211)))

(declare-fun b!1540581 () Bool)

(declare-fun e!986208 () Bool)

(assert (=> b!1540581 (= e!986208 e!986203)))

(declare-fun res!690002 () Bool)

(assert (=> b!1540581 (=> res!690002 e!986203)))

(assert (=> b!1540581 (= res!690002 e!986209)))

(declare-fun res!690009 () Bool)

(assert (=> b!1540581 (=> (not res!690009) (not e!986209))))

(assert (=> b!1540581 (= res!690009 (not lt!534316))))

(declare-fun lt!534321 () Bool)

(assert (=> b!1540581 (= lt!534316 (not lt!534321))))

(declare-fun e!986220 () Bool)

(declare-fun e!986196 () Bool)

(declare-fun tp!446340 () Bool)

(declare-fun tp!446338 () Bool)

(declare-fun array_inv!1809 (array!5658) Bool)

(assert (=> b!1540582 (= e!986196 (and tp!446327 tp!446340 tp!446338 (array_inv!1807 (_keys!1923 (v!23270 (underlying!3467 (v!23271 (underlying!3468 (cache!1954 cacheFurthestNullable!81))))))) (array_inv!1809 (_values!1908 (v!23270 (underlying!3467 (v!23271 (underlying!3468 (cache!1954 cacheFurthestNullable!81))))))) e!986220))))

(declare-fun b!1540584 () Bool)

(assert (=> b!1540584 (= e!986194 (not (= (list!6431 (_2!8966 lt!534318)) (_2!8967 lt!534326))))))

(declare-fun b!1540585 () Bool)

(assert (=> b!1540585 (= e!986202 e!986196)))

(declare-fun b!1540586 () Bool)

(declare-fun tp!446321 () Bool)

(declare-fun mapRes!7655 () Bool)

(assert (=> b!1540586 (= e!986220 (and tp!446321 mapRes!7655))))

(declare-fun condMapEmpty!7653 () Bool)

(declare-fun mapDefault!7655 () List!16524)

(assert (=> b!1540586 (= condMapEmpty!7653 (= (arr!2518 (_values!1908 (v!23270 (underlying!3467 (v!23271 (underlying!3468 (cache!1954 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16524)) mapDefault!7655)))))

(declare-fun res!690007 () Bool)

(assert (=> start!143106 (=> (not res!690007) (not e!986216))))

(assert (=> start!143106 (= res!690007 ((_ is Lexer!2537) thiss!15733))))

(assert (=> start!143106 e!986216))

(declare-fun inv!21711 (CacheUp!946) Bool)

(assert (=> start!143106 (and (inv!21711 cacheUp!695) e!986201)))

(assert (=> start!143106 (and (inv!21710 input!1460) e!986190)))

(declare-fun inv!21712 (CacheDown!952) Bool)

(assert (=> start!143106 (and (inv!21712 cacheDown!708) e!986204)))

(assert (=> start!143106 true))

(assert (=> start!143106 (and (inv!21710 totalInput!496) e!986191)))

(assert (=> start!143106 e!986193))

(declare-fun inv!21713 (CacheFurthestNullable!374) Bool)

(assert (=> start!143106 (and (inv!21713 cacheFurthestNullable!81) e!986224)))

(declare-fun b!1540583 () Bool)

(assert (=> b!1540583 (= e!986200 (not e!986208))))

(declare-fun res!690011 () Bool)

(assert (=> b!1540583 (=> res!690011 e!986208)))

(declare-fun isDefined!2389 (Option!2981) Bool)

(assert (=> b!1540583 (= res!690011 (not (= lt!534321 (isDefined!2389 lt!534322))))))

(declare-fun isDefined!2390 (Option!2982) Bool)

(assert (=> b!1540583 (= lt!534321 (isDefined!2390 (_1!8972 lt!534320)))))

(declare-fun maxPrefixZipper!274 (LexerInterface!2539 List!16526 List!16523) Option!2981)

(assert (=> b!1540583 (= lt!534322 (maxPrefixZipper!274 thiss!15733 rulesArg!359 lt!534313))))

(assert (=> b!1540583 (= lt!534320 e!986214)))

(declare-fun c!251715 () Bool)

(assert (=> b!1540583 (= c!251715 (and ((_ is Cons!16458) rulesArg!359) ((_ is Nil!16458) (t!140732 rulesArg!359))))))

(declare-fun isPrefix!1248 (List!16523 List!16523) Bool)

(assert (=> b!1540583 (isPrefix!1248 lt!534313 lt!534313)))

(declare-datatypes ((Unit!25886 0))(
  ( (Unit!25887) )
))
(declare-fun lt!534312 () Unit!25886)

(declare-fun lemmaIsPrefixRefl!878 (List!16523 List!16523) Unit!25886)

(assert (=> b!1540583 (= lt!534312 (lemmaIsPrefixRefl!878 lt!534313 lt!534313))))

(declare-fun b!1540587 () Bool)

(declare-datatypes ((tuple2!15580 0))(
  ( (tuple2!15581 (_1!8974 Option!2982) (_2!8974 Option!2982)) )
))
(declare-fun lt!534327 () tuple2!15580)

(declare-fun lt!534319 () tuple4!800)

(assert (=> b!1540587 (= e!986214 (tuple4!799 (ite (and ((_ is None!2981) (_1!8974 lt!534327)) ((_ is None!2981) (_2!8974 lt!534327))) None!2981 (ite ((_ is None!2981) (_2!8974 lt!534327)) (_1!8974 lt!534327) (ite ((_ is None!2981) (_1!8974 lt!534327)) (_2!8974 lt!534327) (ite (>= (size!13292 (_1!8966 (v!23269 (_1!8974 lt!534327)))) (size!13292 (_1!8966 (v!23269 (_2!8974 lt!534327))))) (_1!8974 lt!534327) (_2!8974 lt!534327))))) (_2!8973 lt!534319) (_4!400 lt!534319) (_3!1183 lt!534319)))))

(declare-fun lt!534323 () tuple4!800)

(assert (=> b!1540587 (= lt!534323 call!101603)))

(declare-fun maxPrefixZipperSequenceV3Mem!44 (LexerInterface!2539 List!16526 BalanceConc!10954 BalanceConc!10954 CacheUp!946 CacheDown!952 CacheFurthestNullable!374) tuple4!800)

(assert (=> b!1540587 (= lt!534319 (maxPrefixZipperSequenceV3Mem!44 thiss!15733 (t!140732 rulesArg!359) input!1460 totalInput!496 (_2!8973 lt!534323) (_3!1183 lt!534323) (_4!400 lt!534323)))))

(assert (=> b!1540587 (= lt!534327 (tuple2!15581 (_1!8973 lt!534323) (_1!8973 lt!534319)))))

(assert (=> b!1540588 (= e!986218 (and tp!446342 tp!446329))))

(declare-fun e!986206 () Bool)

(assert (=> b!1540589 (= e!986197 (and e!986206 tp!446341))))

(declare-fun b!1540590 () Bool)

(declare-fun tp!446330 () Bool)

(assert (=> b!1540590 (= e!986223 (and (inv!21709 (c!251717 (totalInput!2381 cacheFurthestNullable!81))) tp!446330))))

(declare-fun b!1540591 () Bool)

(assert (=> b!1540591 (= e!986203 true)))

(declare-fun lt!534324 () Option!2981)

(declare-fun maxPrefix!1219 (LexerInterface!2539 List!16526 List!16523) Option!2981)

(assert (=> b!1540591 (= lt!534324 (maxPrefix!1219 thiss!15733 rulesArg!359 lt!534313))))

(declare-fun bm!101598 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!34 (LexerInterface!2539 Rule!5578 BalanceConc!10954 BalanceConc!10954 CacheUp!946 CacheDown!952 CacheFurthestNullable!374) tuple4!800)

(assert (=> bm!101598 (= call!101603 (maxPrefixOneRuleZipperSequenceV3Mem!34 thiss!15733 (h!21859 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(declare-fun mapIsEmpty!7655 () Bool)

(assert (=> mapIsEmpty!7655 mapRes!7655))

(declare-fun mapNonEmpty!7653 () Bool)

(declare-fun tp!446320 () Bool)

(declare-fun tp!446337 () Bool)

(assert (=> mapNonEmpty!7653 (= mapRes!7655 (and tp!446320 tp!446337))))

(declare-fun mapValue!7655 () List!16524)

(declare-fun mapKey!7654 () (_ BitVec 32))

(declare-fun mapRest!7655 () (Array (_ BitVec 32) List!16524))

(assert (=> mapNonEmpty!7653 (= (arr!2518 (_values!1908 (v!23270 (underlying!3467 (v!23271 (underlying!3468 (cache!1954 cacheFurthestNullable!81))))))) (store mapRest!7655 mapKey!7654 mapValue!7655))))

(declare-fun mapNonEmpty!7654 () Bool)

(declare-fun tp!446324 () Bool)

(declare-fun tp!446334 () Bool)

(assert (=> mapNonEmpty!7654 (= mapRes!7653 (and tp!446324 tp!446334))))

(declare-fun mapKey!7653 () (_ BitVec 32))

(declare-fun mapValue!7653 () List!16525)

(declare-fun mapRest!7654 () (Array (_ BitVec 32) List!16525))

(assert (=> mapNonEmpty!7654 (= (arr!2519 (_values!1909 (v!23272 (underlying!3469 (v!23273 (underlying!3470 (cache!1955 cacheDown!708))))))) (store mapRest!7654 mapKey!7653 mapValue!7653))))

(declare-fun mapNonEmpty!7655 () Bool)

(declare-fun tp!446335 () Bool)

(declare-fun tp!446316 () Bool)

(assert (=> mapNonEmpty!7655 (= mapRes!7654 (and tp!446335 tp!446316))))

(declare-fun mapValue!7654 () List!16521)

(declare-fun mapKey!7655 () (_ BitVec 32))

(declare-fun mapRest!7653 () (Array (_ BitVec 32) List!16521))

(assert (=> mapNonEmpty!7655 (= (arr!2516 (_values!1907 (v!23266 (underlying!3465 (v!23267 (underlying!3466 (cache!1953 cacheUp!695))))))) (store mapRest!7653 mapKey!7655 mapValue!7654))))

(declare-fun tp!446328 () Bool)

(declare-fun tp!446331 () Bool)

(declare-fun array_inv!1810 (array!5660) Bool)

(assert (=> b!1540592 (= e!986225 (and tp!446322 tp!446328 tp!446331 (array_inv!1807 (_keys!1924 (v!23272 (underlying!3469 (v!23273 (underlying!3470 (cache!1955 cacheDown!708))))))) (array_inv!1810 (_values!1909 (v!23272 (underlying!3469 (v!23273 (underlying!3470 (cache!1955 cacheDown!708))))))) e!986205))))

(declare-fun b!1540593 () Bool)

(declare-fun lt!534317 () MutLongMap!1628)

(assert (=> b!1540593 (= e!986206 (and e!986189 ((_ is LongMap!1628) lt!534317)))))

(assert (=> b!1540593 (= lt!534317 (v!23267 (underlying!3466 (cache!1953 cacheUp!695))))))

(assert (= (and start!143106 res!690007) b!1540562))

(assert (= (and b!1540562 res!690010) b!1540577))

(assert (= (and b!1540577 res!690001) b!1540574))

(assert (= (and b!1540574 res!690004) b!1540552))

(assert (= (and b!1540552 res!690006) b!1540565))

(assert (= (and b!1540565 res!689999) b!1540563))

(assert (= (and b!1540563 res!690005) b!1540560))

(assert (= (and b!1540560 res!690003) b!1540583))

(assert (= (and b!1540583 c!251715) b!1540575))

(assert (= (and b!1540583 (not c!251715)) b!1540587))

(assert (= (or b!1540575 b!1540587) bm!101598))

(assert (= (and b!1540583 (not res!690011)) b!1540581))

(assert (= (and b!1540581 res!690009) b!1540553))

(assert (= (and b!1540553 (not res!690000)) b!1540584))

(assert (= (and b!1540581 (not res!690002)) b!1540564))

(assert (= (and b!1540564 (not res!690008)) b!1540591))

(assert (= (and b!1540572 condMapEmpty!7654) mapIsEmpty!7654))

(assert (= (and b!1540572 (not condMapEmpty!7654)) mapNonEmpty!7655))

(assert (= b!1540567 b!1540572))

(assert (= b!1540576 b!1540567))

(assert (= b!1540555 b!1540576))

(assert (= (and b!1540593 ((_ is LongMap!1628) (v!23267 (underlying!3466 (cache!1953 cacheUp!695))))) b!1540555))

(assert (= b!1540589 b!1540593))

(assert (= (and b!1540579 ((_ is HashMap!1572) (cache!1953 cacheUp!695))) b!1540589))

(assert (= start!143106 b!1540579))

(assert (= start!143106 b!1540578))

(assert (= (and b!1540554 condMapEmpty!7655) mapIsEmpty!7653))

(assert (= (and b!1540554 (not condMapEmpty!7655)) mapNonEmpty!7654))

(assert (= b!1540592 b!1540554))

(assert (= b!1540566 b!1540592))

(assert (= b!1540580 b!1540566))

(assert (= (and b!1540571 ((_ is LongMap!1630) (v!23273 (underlying!3470 (cache!1955 cacheDown!708))))) b!1540580))

(assert (= b!1540569 b!1540571))

(assert (= (and b!1540559 ((_ is HashMap!1574) (cache!1955 cacheDown!708))) b!1540569))

(assert (= start!143106 b!1540559))

(assert (= start!143106 b!1540568))

(assert (= b!1540561 b!1540588))

(assert (= b!1540556 b!1540561))

(assert (= (and start!143106 ((_ is Cons!16458) rulesArg!359)) b!1540556))

(assert (= (and b!1540586 condMapEmpty!7653) mapIsEmpty!7655))

(assert (= (and b!1540586 (not condMapEmpty!7653)) mapNonEmpty!7653))

(assert (= b!1540582 b!1540586))

(assert (= b!1540585 b!1540582))

(assert (= b!1540570 b!1540585))

(assert (= (and b!1540558 ((_ is LongMap!1629) (v!23271 (underlying!3468 (cache!1954 cacheFurthestNullable!81))))) b!1540570))

(assert (= b!1540557 b!1540558))

(assert (= (and b!1540573 ((_ is HashMap!1573) (cache!1954 cacheFurthestNullable!81))) b!1540557))

(assert (= b!1540573 b!1540590))

(assert (= start!143106 b!1540573))

(declare-fun m!1814454 () Bool)

(assert (=> b!1540583 m!1814454))

(declare-fun m!1814456 () Bool)

(assert (=> b!1540583 m!1814456))

(declare-fun m!1814458 () Bool)

(assert (=> b!1540583 m!1814458))

(declare-fun m!1814460 () Bool)

(assert (=> b!1540583 m!1814460))

(declare-fun m!1814462 () Bool)

(assert (=> b!1540583 m!1814462))

(declare-fun m!1814464 () Bool)

(assert (=> b!1540553 m!1814464))

(declare-fun m!1814466 () Bool)

(assert (=> b!1540553 m!1814466))

(declare-fun m!1814468 () Bool)

(assert (=> b!1540552 m!1814468))

(declare-fun m!1814470 () Bool)

(assert (=> bm!101598 m!1814470))

(declare-fun m!1814472 () Bool)

(assert (=> mapNonEmpty!7653 m!1814472))

(declare-fun m!1814474 () Bool)

(assert (=> b!1540573 m!1814474))

(declare-fun m!1814476 () Bool)

(assert (=> b!1540574 m!1814476))

(assert (=> b!1540574 m!1814476))

(declare-fun m!1814478 () Bool)

(assert (=> b!1540574 m!1814478))

(declare-fun m!1814480 () Bool)

(assert (=> b!1540574 m!1814480))

(declare-fun m!1814482 () Bool)

(assert (=> b!1540563 m!1814482))

(declare-fun m!1814484 () Bool)

(assert (=> b!1540577 m!1814484))

(declare-fun m!1814486 () Bool)

(assert (=> b!1540587 m!1814486))

(declare-fun m!1814488 () Bool)

(assert (=> b!1540568 m!1814488))

(declare-fun m!1814490 () Bool)

(assert (=> b!1540591 m!1814490))

(declare-fun m!1814492 () Bool)

(assert (=> b!1540561 m!1814492))

(declare-fun m!1814494 () Bool)

(assert (=> b!1540561 m!1814494))

(declare-fun m!1814496 () Bool)

(assert (=> b!1540582 m!1814496))

(declare-fun m!1814498 () Bool)

(assert (=> b!1540582 m!1814498))

(declare-fun m!1814500 () Bool)

(assert (=> b!1540567 m!1814500))

(declare-fun m!1814502 () Bool)

(assert (=> b!1540567 m!1814502))

(declare-fun m!1814504 () Bool)

(assert (=> b!1540592 m!1814504))

(declare-fun m!1814506 () Bool)

(assert (=> b!1540592 m!1814506))

(declare-fun m!1814508 () Bool)

(assert (=> b!1540578 m!1814508))

(declare-fun m!1814510 () Bool)

(assert (=> b!1540584 m!1814510))

(declare-fun m!1814512 () Bool)

(assert (=> b!1540565 m!1814512))

(declare-fun m!1814514 () Bool)

(assert (=> mapNonEmpty!7655 m!1814514))

(declare-fun m!1814516 () Bool)

(assert (=> b!1540590 m!1814516))

(declare-fun m!1814518 () Bool)

(assert (=> start!143106 m!1814518))

(declare-fun m!1814520 () Bool)

(assert (=> start!143106 m!1814520))

(declare-fun m!1814522 () Bool)

(assert (=> start!143106 m!1814522))

(declare-fun m!1814524 () Bool)

(assert (=> start!143106 m!1814524))

(declare-fun m!1814526 () Bool)

(assert (=> start!143106 m!1814526))

(declare-fun m!1814528 () Bool)

(assert (=> b!1540562 m!1814528))

(declare-fun m!1814530 () Bool)

(assert (=> mapNonEmpty!7654 m!1814530))

(check-sat (not b_next!40997) (not b!1540583) (not b!1540587) (not b!1540552) (not b_next!40989) (not b!1540554) (not b!1540590) (not b!1540567) (not b!1540563) b_and!107167 (not b!1540582) (not b!1540591) (not b!1540568) (not b!1540592) (not b!1540586) (not b_next!40995) (not b!1540584) (not b!1540577) (not b_next!40991) (not mapNonEmpty!7653) b_and!107161 (not b!1540565) (not b_next!40987) (not b!1540562) (not b_next!40999) (not bm!101598) (not mapNonEmpty!7654) (not b!1540561) (not b!1540573) (not b_next!40993) b_and!107169 b_and!107165 (not mapNonEmpty!7655) b_and!107175 (not b!1540553) (not b!1540556) b_and!107173 (not b!1540578) b_and!107163 b_and!107171 (not b_next!41001) (not start!143106) (not b!1540572) (not b!1540574))
(check-sat (not b_next!40997) b_and!107167 (not b_next!40995) (not b_next!40991) b_and!107161 b_and!107165 (not b_next!40989) b_and!107175 b_and!107173 (not b_next!40987) (not b_next!40999) (not b_next!40993) b_and!107169 b_and!107163 b_and!107171 (not b_next!41001))
