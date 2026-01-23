; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2188 () Bool)

(assert start!2188)

(declare-fun b!39139 () Bool)

(declare-fun b_free!717 () Bool)

(declare-fun b_next!717 () Bool)

(assert (=> b!39139 (= b_free!717 (not b_next!717))))

(declare-fun tp!27228 () Bool)

(declare-fun b_and!751 () Bool)

(assert (=> b!39139 (= tp!27228 b_and!751)))

(declare-fun b!39121 () Bool)

(declare-fun b_free!719 () Bool)

(declare-fun b_next!719 () Bool)

(assert (=> b!39121 (= b_free!719 (not b_next!719))))

(declare-fun tp!27239 () Bool)

(declare-fun b_and!753 () Bool)

(assert (=> b!39121 (= tp!27239 b_and!753)))

(declare-fun b!39114 () Bool)

(declare-fun b_free!721 () Bool)

(declare-fun b_next!721 () Bool)

(assert (=> b!39114 (= b_free!721 (not b_next!721))))

(declare-fun tp!27240 () Bool)

(declare-fun b_and!755 () Bool)

(assert (=> b!39114 (= tp!27240 b_and!755)))

(declare-fun b!39118 () Bool)

(declare-fun b_free!723 () Bool)

(declare-fun b_next!723 () Bool)

(assert (=> b!39118 (= b_free!723 (not b_next!723))))

(declare-fun tp!27244 () Bool)

(declare-fun b_and!757 () Bool)

(assert (=> b!39118 (= tp!27244 b_and!757)))

(declare-fun b!39129 () Bool)

(declare-fun b_free!725 () Bool)

(declare-fun b_next!725 () Bool)

(assert (=> b!39129 (= b_free!725 (not b_next!725))))

(declare-fun tp!27225 () Bool)

(declare-fun b_and!759 () Bool)

(assert (=> b!39129 (= tp!27225 b_and!759)))

(declare-fun b!39122 () Bool)

(declare-fun b_free!727 () Bool)

(declare-fun b_next!727 () Bool)

(assert (=> b!39122 (= b_free!727 (not b_next!727))))

(declare-fun tp!27245 () Bool)

(declare-fun b_and!761 () Bool)

(assert (=> b!39122 (= tp!27245 b_and!761)))

(declare-fun b!39112 () Bool)

(declare-fun e!19769 () Bool)

(declare-fun e!19751 () Bool)

(assert (=> b!39112 (= e!19769 e!19751)))

(declare-fun mapIsEmpty!517 () Bool)

(declare-fun mapRes!517 () Bool)

(assert (=> mapIsEmpty!517 mapRes!517))

(declare-fun res!28722 () Bool)

(declare-fun e!19742 () Bool)

(assert (=> start!2188 (=> (not res!28722) (not e!19742))))

(declare-datatypes ((List!479 0))(
  ( (Nil!477) (Cons!477 (h!5873 (_ BitVec 16)) (t!15495 List!479)) )
))
(declare-datatypes ((TokenValue!125 0))(
  ( (FloatLiteralValue!250 (text!1320 List!479)) (TokenValueExt!124 (__x!861 Int)) (Broken!625 (value!6631 List!479)) (Object!126) (End!125) (Def!125) (Underscore!125) (Match!125) (Else!125) (Error!125) (Case!125) (If!125) (Extends!125) (Abstract!125) (Class!125) (Val!125) (DelimiterValue!250 (del!185 List!479)) (KeywordValue!131 (value!6632 List!479)) (CommentValue!250 (value!6633 List!479)) (WhitespaceValue!250 (value!6634 List!479)) (IndentationValue!125 (value!6635 List!479)) (String!916) (Int32!125) (Broken!626 (value!6636 List!479)) (Boolean!126) (Unit!223) (OperatorValue!128 (op!185 List!479)) (IdentifierValue!250 (value!6637 List!479)) (IdentifierValue!251 (value!6638 List!479)) (WhitespaceValue!251 (value!6639 List!479)) (True!250) (False!250) (Broken!627 (value!6640 List!479)) (Broken!628 (value!6641 List!479)) (True!251) (RightBrace!125) (RightBracket!125) (Colon!125) (Null!125) (Comma!125) (LeftBracket!125) (False!251) (LeftBrace!125) (ImaginaryLiteralValue!125 (text!1321 List!479)) (StringLiteralValue!375 (value!6642 List!479)) (EOFValue!125 (value!6643 List!479)) (IdentValue!125 (value!6644 List!479)) (DelimiterValue!251 (value!6645 List!479)) (DedentValue!125 (value!6646 List!479)) (NewLineValue!125 (value!6647 List!479)) (IntegerValue!375 (value!6648 (_ BitVec 32)) (text!1322 List!479)) (IntegerValue!376 (value!6649 Int) (text!1323 List!479)) (Times!125) (Or!125) (Equal!125) (Minus!125) (Broken!629 (value!6650 List!479)) (And!125) (Div!125) (LessEqual!125) (Mod!125) (Concat!324) (Not!125) (Plus!125) (SpaceValue!125 (value!6651 List!479)) (IntegerValue!377 (value!6652 Int) (text!1324 List!479)) (StringLiteralValue!376 (text!1325 List!479)) (FloatLiteralValue!251 (text!1326 List!479)) (BytesLiteralValue!125 (value!6653 List!479)) (CommentValue!251 (value!6654 List!479)) (StringLiteralValue!377 (value!6655 List!479)) (ErrorTokenValue!125 (msg!186 List!479)) )
))
(declare-datatypes ((Regex!199 0))(
  ( (ElementMatch!199 (c!15760 (_ BitVec 16))) (Concat!325 (regOne!910 Regex!199) (regTwo!910 Regex!199)) (EmptyExpr!199) (Star!199 (reg!528 Regex!199)) (EmptyLang!199) (Union!199 (regOne!911 Regex!199) (regTwo!911 Regex!199)) )
))
(declare-datatypes ((String!917 0))(
  ( (String!918 (value!6656 String)) )
))
(declare-datatypes ((IArray!151 0))(
  ( (IArray!152 (innerList!133 List!479)) )
))
(declare-datatypes ((Conc!75 0))(
  ( (Node!75 (left!456 Conc!75) (right!786 Conc!75) (csize!380 Int) (cheight!286 Int)) (Leaf!253 (xs!2654 IArray!151) (csize!381 Int)) (Empty!75) )
))
(declare-datatypes ((BalanceConc!150 0))(
  ( (BalanceConc!151 (c!15761 Conc!75)) )
))
(declare-datatypes ((TokenValueInjection!74 0))(
  ( (TokenValueInjection!75 (toValue!614 Int) (toChars!473 Int)) )
))
(declare-datatypes ((Rule!70 0))(
  ( (Rule!71 (regex!135 Regex!199) (tag!313 String!917) (isSeparator!135 Bool) (transformation!135 TokenValueInjection!74)) )
))
(declare-datatypes ((List!480 0))(
  ( (Nil!478) (Cons!478 (h!5874 Rule!70) (t!15496 List!480)) )
))
(declare-fun lt!3578 () List!480)

(declare-fun isEmpty!104 (List!480) Bool)

(assert (=> start!2188 (= res!28722 (not (isEmpty!104 lt!3578)))))

(declare-datatypes ((JsonLexer!32 0))(
  ( (JsonLexer!33) )
))
(declare-fun rules!109 (JsonLexer!32) List!480)

(assert (=> start!2188 (= lt!3578 (rules!109 JsonLexer!33))))

(assert (=> start!2188 e!19742))

(declare-datatypes ((List!481 0))(
  ( (Nil!479) (Cons!479 (h!5875 Regex!199) (t!15497 List!481)) )
))
(declare-datatypes ((Context!114 0))(
  ( (Context!115 (exprs!557 List!481)) )
))
(declare-datatypes ((tuple3!146 0))(
  ( (tuple3!147 (_1!340 Regex!199) (_2!340 Context!114) (_3!82 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!516 0))(
  ( (tuple2!517 (_1!341 tuple3!146) (_2!341 (InoxSet Context!114))) )
))
(declare-datatypes ((List!482 0))(
  ( (Nil!480) (Cons!480 (h!5876 tuple2!516) (t!15498 List!482)) )
))
(declare-datatypes ((array!494 0))(
  ( (array!495 (arr!254 (Array (_ BitVec 32) List!482)) (size!516 (_ BitVec 32))) )
))
(declare-datatypes ((array!496 0))(
  ( (array!497 (arr!255 (Array (_ BitVec 32) (_ BitVec 64))) (size!517 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!286 0))(
  ( (LongMapFixedSize!287 (defaultEntry!481 Int) (mask!844 (_ BitVec 32)) (extraKeys!389 (_ BitVec 32)) (zeroValue!399 List!482) (minValue!399 List!482) (_size!418 (_ BitVec 32)) (_keys!434 array!496) (_values!421 array!494) (_vacant!203 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!561 0))(
  ( (Cell!562 (v!12259 LongMapFixedSize!286)) )
))
(declare-datatypes ((MutLongMap!143 0))(
  ( (LongMap!143 (underlying!481 Cell!561)) (MutLongMapExt!142 (__x!862 Int)) )
))
(declare-datatypes ((Cell!563 0))(
  ( (Cell!564 (v!12260 MutLongMap!143)) )
))
(declare-datatypes ((Hashable!139 0))(
  ( (HashableExt!138 (__x!863 Int)) )
))
(declare-datatypes ((MutableMap!139 0))(
  ( (MutableMapExt!138 (__x!864 Int)) (HashMap!139 (underlying!482 Cell!563) (hashF!2007 Hashable!139) (_size!419 (_ BitVec 32)) (defaultValue!288 Int)) )
))
(declare-datatypes ((CacheDown!96 0))(
  ( (CacheDown!97 (cache!624 MutableMap!139)) )
))
(declare-fun cacheDown!333 () CacheDown!96)

(declare-fun e!19743 () Bool)

(declare-fun inv!781 (CacheDown!96) Bool)

(assert (=> start!2188 (and (inv!781 cacheDown!333) e!19743)))

(declare-fun input!525 () BalanceConc!150)

(declare-fun e!19741 () Bool)

(declare-fun inv!782 (BalanceConc!150) Bool)

(assert (=> start!2188 (and (inv!782 input!525) e!19741)))

(declare-datatypes ((tuple3!148 0))(
  ( (tuple3!149 (_1!342 (InoxSet Context!114)) (_2!342 Int) (_3!83 Int)) )
))
(declare-datatypes ((tuple2!518 0))(
  ( (tuple2!519 (_1!343 tuple3!148) (_2!343 Int)) )
))
(declare-datatypes ((List!483 0))(
  ( (Nil!481) (Cons!481 (h!5877 tuple2!518) (t!15499 List!483)) )
))
(declare-datatypes ((array!498 0))(
  ( (array!499 (arr!256 (Array (_ BitVec 32) List!483)) (size!518 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!288 0))(
  ( (LongMapFixedSize!289 (defaultEntry!482 Int) (mask!845 (_ BitVec 32)) (extraKeys!390 (_ BitVec 32)) (zeroValue!400 List!483) (minValue!400 List!483) (_size!420 (_ BitVec 32)) (_keys!435 array!496) (_values!422 array!498) (_vacant!204 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!140 0))(
  ( (HashableExt!139 (__x!865 Int)) )
))
(declare-datatypes ((Cell!565 0))(
  ( (Cell!566 (v!12261 LongMapFixedSize!288)) )
))
(declare-datatypes ((MutLongMap!144 0))(
  ( (LongMap!144 (underlying!483 Cell!565)) (MutLongMapExt!143 (__x!866 Int)) )
))
(declare-datatypes ((Cell!567 0))(
  ( (Cell!568 (v!12262 MutLongMap!144)) )
))
(declare-datatypes ((MutableMap!140 0))(
  ( (MutableMapExt!139 (__x!867 Int)) (HashMap!140 (underlying!484 Cell!567) (hashF!2008 Hashable!140) (_size!421 (_ BitVec 32)) (defaultValue!289 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!44 0))(
  ( (CacheFurthestNullable!45 (cache!625 MutableMap!140) (totalInput!1499 BalanceConc!150)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!44)

(declare-fun e!19754 () Bool)

(declare-fun inv!783 (CacheFurthestNullable!44) Bool)

(assert (=> start!2188 (and (inv!783 cacheFurthestNullable!45) e!19754)))

(declare-datatypes ((Hashable!141 0))(
  ( (HashableExt!140 (__x!868 Int)) )
))
(declare-datatypes ((tuple2!520 0))(
  ( (tuple2!521 (_1!344 Context!114) (_2!344 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!522 0))(
  ( (tuple2!523 (_1!345 tuple2!520) (_2!345 (InoxSet Context!114))) )
))
(declare-datatypes ((List!484 0))(
  ( (Nil!482) (Cons!482 (h!5878 tuple2!522) (t!15500 List!484)) )
))
(declare-datatypes ((array!500 0))(
  ( (array!501 (arr!257 (Array (_ BitVec 32) List!484)) (size!519 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!290 0))(
  ( (LongMapFixedSize!291 (defaultEntry!483 Int) (mask!846 (_ BitVec 32)) (extraKeys!391 (_ BitVec 32)) (zeroValue!401 List!484) (minValue!401 List!484) (_size!422 (_ BitVec 32)) (_keys!436 array!496) (_values!423 array!500) (_vacant!205 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!569 0))(
  ( (Cell!570 (v!12263 LongMapFixedSize!290)) )
))
(declare-datatypes ((MutLongMap!145 0))(
  ( (LongMap!145 (underlying!485 Cell!569)) (MutLongMapExt!144 (__x!869 Int)) )
))
(declare-datatypes ((Cell!571 0))(
  ( (Cell!572 (v!12264 MutLongMap!145)) )
))
(declare-datatypes ((MutableMap!141 0))(
  ( (MutableMapExt!140 (__x!870 Int)) (HashMap!141 (underlying!486 Cell!571) (hashF!2009 Hashable!141) (_size!423 (_ BitVec 32)) (defaultValue!290 Int)) )
))
(declare-datatypes ((CacheUp!94 0))(
  ( (CacheUp!95 (cache!626 MutableMap!141)) )
))
(declare-fun cacheUp!320 () CacheUp!94)

(declare-fun e!19763 () Bool)

(declare-fun inv!784 (CacheUp!94) Bool)

(assert (=> start!2188 (and (inv!784 cacheUp!320) e!19763)))

(declare-fun b!39113 () Bool)

(declare-fun res!28721 () Bool)

(assert (=> b!39113 (=> (not res!28721) (not e!19742))))

(declare-fun valid!147 (CacheFurthestNullable!44) Bool)

(assert (=> b!39113 (= res!28721 (valid!147 cacheFurthestNullable!45))))

(declare-fun e!19748 () Bool)

(declare-fun e!19764 () Bool)

(assert (=> b!39114 (= e!19748 (and e!19764 tp!27240))))

(declare-fun b!39115 () Bool)

(declare-fun e!19759 () Bool)

(declare-fun tp!27235 () Bool)

(assert (=> b!39115 (= e!19759 (and tp!27235 mapRes!517))))

(declare-fun condMapEmpty!517 () Bool)

(declare-fun mapDefault!517 () List!484)

(assert (=> b!39115 (= condMapEmpty!517 (= (arr!257 (_values!423 (v!12263 (underlying!485 (v!12264 (underlying!486 (cache!626 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!484)) mapDefault!517)))))

(declare-fun b!39116 () Bool)

(declare-fun res!28727 () Bool)

(declare-fun e!19766 () Bool)

(assert (=> b!39116 (=> (not res!28727) (not e!19766))))

(declare-datatypes ((Token!42 0))(
  ( (Token!43 (value!6657 TokenValue!125) (rule!614 Rule!70) (size!520 Int) (originalCharacters!192 List!479)) )
))
(declare-datatypes ((List!485 0))(
  ( (Nil!483) (Cons!483 (h!5879 Token!42) (t!15501 List!485)) )
))
(declare-datatypes ((IArray!153 0))(
  ( (IArray!154 (innerList!134 List!485)) )
))
(declare-datatypes ((Conc!76 0))(
  ( (Node!76 (left!457 Conc!76) (right!787 Conc!76) (csize!382 Int) (cheight!287 Int)) (Leaf!254 (xs!2655 IArray!153) (csize!383 Int)) (Empty!76) )
))
(declare-datatypes ((BalanceConc!152 0))(
  ( (BalanceConc!153 (c!15762 Conc!76)) )
))
(declare-datatypes ((tuple2!524 0))(
  ( (tuple2!525 (_1!346 BalanceConc!152) (_2!346 BalanceConc!150)) )
))
(declare-datatypes ((tuple4!18 0))(
  ( (tuple4!19 (_1!347 tuple2!524) (_2!347 CacheUp!94) (_3!84 CacheDown!96) (_4!9 CacheFurthestNullable!44)) )
))
(declare-fun lt!3579 () tuple4!18)

(declare-fun lt!3583 () tuple2!524)

(declare-fun list!120 (BalanceConc!150) List!479)

(assert (=> b!39116 (= res!28727 (= (list!120 (_2!346 (_1!347 lt!3579))) (list!120 (_2!346 lt!3583))))))

(declare-fun b!39117 () Bool)

(declare-fun e!19752 () Bool)

(declare-fun e!19768 () Bool)

(assert (=> b!39117 (= e!19752 e!19768)))

(declare-fun e!19744 () Bool)

(declare-fun e!19749 () Bool)

(declare-fun tp!27232 () Bool)

(declare-fun tp!27242 () Bool)

(declare-fun array_inv!160 (array!496) Bool)

(declare-fun array_inv!161 (array!498) Bool)

(assert (=> b!39118 (= e!19744 (and tp!27244 tp!27242 tp!27232 (array_inv!160 (_keys!435 (v!12261 (underlying!483 (v!12262 (underlying!484 (cache!625 cacheFurthestNullable!45))))))) (array_inv!161 (_values!422 (v!12261 (underlying!483 (v!12262 (underlying!484 (cache!625 cacheFurthestNullable!45))))))) e!19749))))

(declare-fun b!39119 () Bool)

(declare-fun e!19747 () Bool)

(assert (=> b!39119 (= e!19747 e!19744)))

(declare-fun b!39120 () Bool)

(declare-fun e!19761 () Bool)

(declare-fun tp!27233 () Bool)

(declare-fun inv!785 (Conc!75) Bool)

(assert (=> b!39120 (= e!19761 (and (inv!785 (c!15761 (totalInput!1499 cacheFurthestNullable!45))) tp!27233))))

(declare-fun tp!27238 () Bool)

(declare-fun e!19745 () Bool)

(declare-fun tp!27236 () Bool)

(declare-fun array_inv!162 (array!494) Bool)

(assert (=> b!39121 (= e!19768 (and tp!27239 tp!27238 tp!27236 (array_inv!160 (_keys!434 (v!12259 (underlying!481 (v!12260 (underlying!482 (cache!624 cacheDown!333))))))) (array_inv!162 (_values!421 (v!12259 (underlying!481 (v!12260 (underlying!482 (cache!624 cacheDown!333))))))) e!19745))))

(declare-fun tp!27226 () Bool)

(declare-fun tp!27229 () Bool)

(declare-fun e!19750 () Bool)

(declare-fun array_inv!163 (array!500) Bool)

(assert (=> b!39122 (= e!19750 (and tp!27245 tp!27226 tp!27229 (array_inv!160 (_keys!436 (v!12263 (underlying!485 (v!12264 (underlying!486 (cache!626 cacheUp!320))))))) (array_inv!163 (_values!423 (v!12263 (underlying!485 (v!12264 (underlying!486 (cache!626 cacheUp!320))))))) e!19759))))

(declare-fun b!39123 () Bool)

(declare-fun res!28726 () Bool)

(assert (=> b!39123 (=> (not res!28726) (not e!19742))))

(assert (=> b!39123 (= res!28726 (= (totalInput!1499 cacheFurthestNullable!45) input!525))))

(declare-fun b!39124 () Bool)

(declare-fun e!19755 () Bool)

(declare-fun lt!3580 () MutLongMap!145)

(get-info :version)

(assert (=> b!39124 (= e!19755 (and e!19769 ((_ is LongMap!145) lt!3580)))))

(assert (=> b!39124 (= lt!3580 (v!12264 (underlying!486 (cache!626 cacheUp!320))))))

(declare-fun mapNonEmpty!517 () Bool)

(declare-fun tp!27243 () Bool)

(declare-fun tp!27223 () Bool)

(assert (=> mapNonEmpty!517 (= mapRes!517 (and tp!27243 tp!27223))))

(declare-fun mapKey!519 () (_ BitVec 32))

(declare-fun mapValue!517 () List!484)

(declare-fun mapRest!517 () (Array (_ BitVec 32) List!484))

(assert (=> mapNonEmpty!517 (= (arr!257 (_values!423 (v!12263 (underlying!485 (v!12264 (underlying!486 (cache!626 cacheUp!320))))))) (store mapRest!517 mapKey!519 mapValue!517))))

(declare-fun mapNonEmpty!518 () Bool)

(declare-fun mapRes!518 () Bool)

(declare-fun tp!27241 () Bool)

(declare-fun tp!27227 () Bool)

(assert (=> mapNonEmpty!518 (= mapRes!518 (and tp!27241 tp!27227))))

(declare-fun mapKey!518 () (_ BitVec 32))

(declare-fun mapRest!519 () (Array (_ BitVec 32) List!482))

(declare-fun mapValue!519 () List!482)

(assert (=> mapNonEmpty!518 (= (arr!254 (_values!421 (v!12259 (underlying!481 (v!12260 (underlying!482 (cache!624 cacheDown!333))))))) (store mapRest!519 mapKey!518 mapValue!519))))

(declare-fun b!39125 () Bool)

(declare-fun e!19760 () Bool)

(declare-fun e!19753 () Bool)

(declare-fun lt!3574 () MutLongMap!143)

(assert (=> b!39125 (= e!19760 (and e!19753 ((_ is LongMap!143) lt!3574)))))

(assert (=> b!39125 (= lt!3574 (v!12260 (underlying!482 (cache!624 cacheDown!333))))))

(declare-fun mapIsEmpty!518 () Bool)

(assert (=> mapIsEmpty!518 mapRes!518))

(declare-fun b!39126 () Bool)

(declare-fun tp!27230 () Bool)

(assert (=> b!39126 (= e!19741 (and (inv!785 (c!15761 input!525)) tp!27230))))

(declare-fun b!39127 () Bool)

(declare-fun tp!27231 () Bool)

(declare-fun mapRes!519 () Bool)

(assert (=> b!39127 (= e!19749 (and tp!27231 mapRes!519))))

(declare-fun condMapEmpty!518 () Bool)

(declare-fun mapDefault!519 () List!483)

(assert (=> b!39127 (= condMapEmpty!518 (= (arr!256 (_values!422 (v!12261 (underlying!483 (v!12262 (underlying!484 (cache!625 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!483)) mapDefault!519)))))

(declare-fun b!39128 () Bool)

(declare-fun e!19757 () Bool)

(assert (=> b!39128 (= e!19743 e!19757)))

(assert (=> b!39129 (= e!19757 (and e!19760 tp!27225))))

(declare-fun b!39130 () Bool)

(declare-fun res!28723 () Bool)

(assert (=> b!39130 (=> (not res!28723) (not e!19742))))

(declare-fun valid!148 (CacheDown!96) Bool)

(assert (=> b!39130 (= res!28723 (valid!148 cacheDown!333))))

(declare-fun b!39131 () Bool)

(declare-fun e!19746 () Bool)

(assert (=> b!39131 (= e!19763 e!19746)))

(declare-fun b!39132 () Bool)

(declare-fun e!19758 () Bool)

(declare-fun lt!3573 () MutLongMap!144)

(assert (=> b!39132 (= e!19764 (and e!19758 ((_ is LongMap!144) lt!3573)))))

(assert (=> b!39132 (= lt!3573 (v!12262 (underlying!484 (cache!625 cacheFurthestNullable!45))))))

(declare-fun b!39133 () Bool)

(assert (=> b!39133 (= e!19742 e!19766)))

(declare-fun res!28724 () Bool)

(assert (=> b!39133 (=> (not res!28724) (not e!19766))))

(declare-fun list!121 (BalanceConc!152) List!485)

(assert (=> b!39133 (= res!28724 (= (list!121 (_1!346 (_1!347 lt!3579))) (list!121 (_1!346 lt!3583))))))

(declare-datatypes ((LexerInterface!32 0))(
  ( (LexerInterfaceExt!29 (__x!871 Int)) (Lexer!30) )
))
(declare-fun lex!9 (LexerInterface!32 List!480 BalanceConc!150) tuple2!524)

(assert (=> b!39133 (= lt!3583 (lex!9 Lexer!30 lt!3578 input!525))))

(declare-datatypes ((Unit!224 0))(
  ( (Unit!225) )
))
(declare-fun lt!3577 () Unit!224)

(declare-fun lemmaInvariant!13 (CacheDown!96) Unit!224)

(assert (=> b!39133 (= lt!3577 (lemmaInvariant!13 (_3!84 lt!3579)))))

(declare-fun lt!3581 () Unit!224)

(declare-fun lemmaInvariant!14 (CacheUp!94) Unit!224)

(assert (=> b!39133 (= lt!3581 (lemmaInvariant!14 (_2!347 lt!3579)))))

(declare-fun lexMem!5 (LexerInterface!32 List!480 BalanceConc!150 CacheUp!94 CacheDown!96 CacheFurthestNullable!44) tuple4!18)

(assert (=> b!39133 (= lt!3579 (lexMem!5 Lexer!30 lt!3578 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun b!39134 () Bool)

(assert (=> b!39134 (= e!19754 (and e!19748 (inv!782 (totalInput!1499 cacheFurthestNullable!45)) e!19761))))

(declare-fun mapNonEmpty!519 () Bool)

(declare-fun tp!27234 () Bool)

(declare-fun tp!27224 () Bool)

(assert (=> mapNonEmpty!519 (= mapRes!519 (and tp!27234 tp!27224))))

(declare-fun mapKey!517 () (_ BitVec 32))

(declare-fun mapRest!518 () (Array (_ BitVec 32) List!483))

(declare-fun mapValue!518 () List!483)

(assert (=> mapNonEmpty!519 (= (arr!256 (_values!422 (v!12261 (underlying!483 (v!12262 (underlying!484 (cache!625 cacheFurthestNullable!45))))))) (store mapRest!518 mapKey!517 mapValue!518))))

(declare-fun b!39135 () Bool)

(assert (=> b!39135 (= e!19751 e!19750)))

(declare-fun b!39136 () Bool)

(declare-fun e!19767 () Bool)

(assert (=> b!39136 (= e!19767 false)))

(declare-fun lt!3576 () List!485)

(declare-fun lt!3575 () BalanceConc!150)

(assert (=> b!39136 (= lt!3576 (list!121 (_1!346 (lex!9 Lexer!30 lt!3578 lt!3575))))))

(declare-fun b!39137 () Bool)

(assert (=> b!39137 (= e!19758 e!19747)))

(declare-fun b!39138 () Bool)

(declare-fun tp!27237 () Bool)

(assert (=> b!39138 (= e!19745 (and tp!27237 mapRes!518))))

(declare-fun condMapEmpty!519 () Bool)

(declare-fun mapDefault!518 () List!482)

(assert (=> b!39138 (= condMapEmpty!519 (= (arr!254 (_values!421 (v!12259 (underlying!481 (v!12260 (underlying!482 (cache!624 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!482)) mapDefault!518)))))

(declare-fun mapIsEmpty!519 () Bool)

(assert (=> mapIsEmpty!519 mapRes!519))

(assert (=> b!39139 (= e!19746 (and e!19755 tp!27228))))

(declare-fun b!39140 () Bool)

(declare-fun res!28725 () Bool)

(assert (=> b!39140 (=> (not res!28725) (not e!19742))))

(declare-fun valid!149 (CacheUp!94) Bool)

(assert (=> b!39140 (= res!28725 (valid!149 cacheUp!320))))

(declare-fun b!39141 () Bool)

(assert (=> b!39141 (= e!19766 e!19767)))

(declare-fun res!28720 () Bool)

(assert (=> b!39141 (=> (not res!28720) (not e!19767))))

(declare-fun lt!3582 () List!479)

(assert (=> b!39141 (= res!28720 (= (list!120 lt!3575) lt!3582))))

(declare-fun seqFromList!7 (List!479) BalanceConc!150)

(assert (=> b!39141 (= lt!3575 (seqFromList!7 lt!3582))))

(assert (=> b!39141 (= lt!3582 (list!120 input!525))))

(declare-fun b!39142 () Bool)

(assert (=> b!39142 (= e!19753 e!19752)))

(declare-fun b!39143 () Bool)

(declare-fun res!28719 () Bool)

(assert (=> b!39143 (=> (not res!28719) (not e!19742))))

(declare-fun rulesInvariant!25 (LexerInterface!32 List!480) Bool)

(assert (=> b!39143 (= res!28719 (rulesInvariant!25 Lexer!30 lt!3578))))

(assert (= (and start!2188 res!28722) b!39143))

(assert (= (and b!39143 res!28719) b!39140))

(assert (= (and b!39140 res!28725) b!39130))

(assert (= (and b!39130 res!28723) b!39113))

(assert (= (and b!39113 res!28721) b!39123))

(assert (= (and b!39123 res!28726) b!39133))

(assert (= (and b!39133 res!28724) b!39116))

(assert (= (and b!39116 res!28727) b!39141))

(assert (= (and b!39141 res!28720) b!39136))

(assert (= (and b!39138 condMapEmpty!519) mapIsEmpty!518))

(assert (= (and b!39138 (not condMapEmpty!519)) mapNonEmpty!518))

(assert (= b!39121 b!39138))

(assert (= b!39117 b!39121))

(assert (= b!39142 b!39117))

(assert (= (and b!39125 ((_ is LongMap!143) (v!12260 (underlying!482 (cache!624 cacheDown!333))))) b!39142))

(assert (= b!39129 b!39125))

(assert (= (and b!39128 ((_ is HashMap!139) (cache!624 cacheDown!333))) b!39129))

(assert (= start!2188 b!39128))

(assert (= start!2188 b!39126))

(assert (= (and b!39127 condMapEmpty!518) mapIsEmpty!519))

(assert (= (and b!39127 (not condMapEmpty!518)) mapNonEmpty!519))

(assert (= b!39118 b!39127))

(assert (= b!39119 b!39118))

(assert (= b!39137 b!39119))

(assert (= (and b!39132 ((_ is LongMap!144) (v!12262 (underlying!484 (cache!625 cacheFurthestNullable!45))))) b!39137))

(assert (= b!39114 b!39132))

(assert (= (and b!39134 ((_ is HashMap!140) (cache!625 cacheFurthestNullable!45))) b!39114))

(assert (= b!39134 b!39120))

(assert (= start!2188 b!39134))

(assert (= (and b!39115 condMapEmpty!517) mapIsEmpty!517))

(assert (= (and b!39115 (not condMapEmpty!517)) mapNonEmpty!517))

(assert (= b!39122 b!39115))

(assert (= b!39135 b!39122))

(assert (= b!39112 b!39135))

(assert (= (and b!39124 ((_ is LongMap!145) (v!12264 (underlying!486 (cache!626 cacheUp!320))))) b!39112))

(assert (= b!39139 b!39124))

(assert (= (and b!39131 ((_ is HashMap!141) (cache!626 cacheUp!320))) b!39139))

(assert (= start!2188 b!39131))

(declare-fun m!12956 () Bool)

(assert (=> mapNonEmpty!519 m!12956))

(declare-fun m!12958 () Bool)

(assert (=> b!39141 m!12958))

(declare-fun m!12960 () Bool)

(assert (=> b!39141 m!12960))

(declare-fun m!12962 () Bool)

(assert (=> b!39141 m!12962))

(declare-fun m!12964 () Bool)

(assert (=> mapNonEmpty!518 m!12964))

(declare-fun m!12966 () Bool)

(assert (=> b!39130 m!12966))

(declare-fun m!12968 () Bool)

(assert (=> b!39118 m!12968))

(declare-fun m!12970 () Bool)

(assert (=> b!39118 m!12970))

(declare-fun m!12972 () Bool)

(assert (=> b!39143 m!12972))

(declare-fun m!12974 () Bool)

(assert (=> b!39134 m!12974))

(declare-fun m!12976 () Bool)

(assert (=> b!39113 m!12976))

(declare-fun m!12978 () Bool)

(assert (=> mapNonEmpty!517 m!12978))

(declare-fun m!12980 () Bool)

(assert (=> b!39116 m!12980))

(declare-fun m!12982 () Bool)

(assert (=> b!39116 m!12982))

(declare-fun m!12984 () Bool)

(assert (=> b!39122 m!12984))

(declare-fun m!12986 () Bool)

(assert (=> b!39122 m!12986))

(declare-fun m!12988 () Bool)

(assert (=> b!39126 m!12988))

(declare-fun m!12990 () Bool)

(assert (=> b!39120 m!12990))

(declare-fun m!12992 () Bool)

(assert (=> b!39133 m!12992))

(declare-fun m!12994 () Bool)

(assert (=> b!39133 m!12994))

(declare-fun m!12996 () Bool)

(assert (=> b!39133 m!12996))

(declare-fun m!12998 () Bool)

(assert (=> b!39133 m!12998))

(declare-fun m!13000 () Bool)

(assert (=> b!39133 m!13000))

(declare-fun m!13002 () Bool)

(assert (=> b!39133 m!13002))

(declare-fun m!13004 () Bool)

(assert (=> start!2188 m!13004))

(declare-fun m!13006 () Bool)

(assert (=> start!2188 m!13006))

(declare-fun m!13008 () Bool)

(assert (=> start!2188 m!13008))

(declare-fun m!13010 () Bool)

(assert (=> start!2188 m!13010))

(declare-fun m!13012 () Bool)

(assert (=> start!2188 m!13012))

(declare-fun m!13014 () Bool)

(assert (=> start!2188 m!13014))

(declare-fun m!13016 () Bool)

(assert (=> b!39121 m!13016))

(declare-fun m!13018 () Bool)

(assert (=> b!39121 m!13018))

(declare-fun m!13020 () Bool)

(assert (=> b!39136 m!13020))

(declare-fun m!13022 () Bool)

(assert (=> b!39136 m!13022))

(declare-fun m!13024 () Bool)

(assert (=> b!39140 m!13024))

(check-sat (not b!39130) (not b!39118) (not b!39113) (not b_next!717) (not b!39115) (not mapNonEmpty!518) (not b!39126) (not b_next!727) (not b!39127) b_and!751 b_and!753 (not b!39120) (not b_next!719) b_and!761 (not b!39143) (not b!39140) (not b!39136) b_and!755 (not b_next!723) (not b!39116) (not b!39122) (not b!39121) (not b!39138) (not b!39134) (not mapNonEmpty!517) (not b_next!725) (not b!39133) (not b_next!721) (not b!39141) b_and!757 (not start!2188) b_and!759 (not mapNonEmpty!519))
(check-sat (not b_next!727) b_and!751 b_and!761 (not b_next!717) b_and!755 (not b_next!723) (not b_next!725) (not b_next!721) b_and!757 b_and!759 b_and!753 (not b_next!719))
