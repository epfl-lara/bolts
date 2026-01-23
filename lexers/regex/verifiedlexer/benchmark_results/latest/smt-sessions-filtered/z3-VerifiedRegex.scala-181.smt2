; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2204 () Bool)

(assert start!2204)

(declare-fun b!39955 () Bool)

(declare-fun b_free!813 () Bool)

(declare-fun b_next!813 () Bool)

(assert (=> b!39955 (= b_free!813 (not b_next!813))))

(declare-fun tp!27783 () Bool)

(declare-fun b_and!847 () Bool)

(assert (=> b!39955 (= tp!27783 b_and!847)))

(declare-fun b!39982 () Bool)

(declare-fun b_free!815 () Bool)

(declare-fun b_next!815 () Bool)

(assert (=> b!39982 (= b_free!815 (not b_next!815))))

(declare-fun tp!27790 () Bool)

(declare-fun b_and!849 () Bool)

(assert (=> b!39982 (= tp!27790 b_and!849)))

(declare-fun b!39976 () Bool)

(declare-fun b_free!817 () Bool)

(declare-fun b_next!817 () Bool)

(assert (=> b!39976 (= b_free!817 (not b_next!817))))

(declare-fun tp!27776 () Bool)

(declare-fun b_and!851 () Bool)

(assert (=> b!39976 (= tp!27776 b_and!851)))

(declare-fun b!39974 () Bool)

(declare-fun b_free!819 () Bool)

(declare-fun b_next!819 () Bool)

(assert (=> b!39974 (= b_free!819 (not b_next!819))))

(declare-fun tp!27779 () Bool)

(declare-fun b_and!853 () Bool)

(assert (=> b!39974 (= tp!27779 b_and!853)))

(declare-fun b!39959 () Bool)

(declare-fun b_free!821 () Bool)

(declare-fun b_next!821 () Bool)

(assert (=> b!39959 (= b_free!821 (not b_next!821))))

(declare-fun tp!27794 () Bool)

(declare-fun b_and!855 () Bool)

(assert (=> b!39959 (= tp!27794 b_and!855)))

(declare-fun b!39967 () Bool)

(declare-fun b_free!823 () Bool)

(declare-fun b_next!823 () Bool)

(assert (=> b!39967 (= b_free!823 (not b_next!823))))

(declare-fun tp!27777 () Bool)

(declare-fun b_and!857 () Bool)

(assert (=> b!39967 (= tp!27777 b_and!857)))

(declare-fun b!39993 () Bool)

(declare-fun e!20525 () Bool)

(assert (=> b!39993 (= e!20525 true)))

(declare-fun b!39992 () Bool)

(declare-fun e!20524 () Bool)

(assert (=> b!39992 (= e!20524 e!20525)))

(declare-fun b!39991 () Bool)

(declare-fun e!20523 () Bool)

(assert (=> b!39991 (= e!20523 e!20524)))

(declare-fun b!39973 () Bool)

(assert (=> b!39973 e!20523))

(assert (= b!39992 b!39993))

(assert (= b!39991 b!39992))

(declare-datatypes ((List!534 0))(
  ( (Nil!532) (Cons!532 (h!5928 (_ BitVec 16)) (t!15708 List!534)) )
))
(declare-datatypes ((TokenValue!133 0))(
  ( (FloatLiteralValue!266 (text!1376 List!534)) (TokenValueExt!132 (__x!949 Int)) (Broken!665 (value!6858 List!534)) (Object!134) (End!133) (Def!133) (Underscore!133) (Match!133) (Else!133) (Error!133) (Case!133) (If!133) (Extends!133) (Abstract!133) (Class!133) (Val!133) (DelimiterValue!266 (del!193 List!534)) (KeywordValue!139 (value!6859 List!534)) (CommentValue!266 (value!6860 List!534)) (WhitespaceValue!266 (value!6861 List!534)) (IndentationValue!133 (value!6862 List!534)) (String!956) (Int32!133) (Broken!666 (value!6863 List!534)) (Boolean!134) (Unit!243) (OperatorValue!136 (op!193 List!534)) (IdentifierValue!266 (value!6864 List!534)) (IdentifierValue!267 (value!6865 List!534)) (WhitespaceValue!267 (value!6866 List!534)) (True!266) (False!266) (Broken!667 (value!6867 List!534)) (Broken!668 (value!6868 List!534)) (True!267) (RightBrace!133) (RightBracket!133) (Colon!133) (Null!133) (Comma!133) (LeftBracket!133) (False!267) (LeftBrace!133) (ImaginaryLiteralValue!133 (text!1377 List!534)) (StringLiteralValue!399 (value!6869 List!534)) (EOFValue!133 (value!6870 List!534)) (IdentValue!133 (value!6871 List!534)) (DelimiterValue!267 (value!6872 List!534)) (DedentValue!133 (value!6873 List!534)) (NewLineValue!133 (value!6874 List!534)) (IntegerValue!399 (value!6875 (_ BitVec 32)) (text!1378 List!534)) (IntegerValue!400 (value!6876 Int) (text!1379 List!534)) (Times!133) (Or!133) (Equal!133) (Minus!133) (Broken!669 (value!6877 List!534)) (And!133) (Div!133) (LessEqual!133) (Mod!133) (Concat!340) (Not!133) (Plus!133) (SpaceValue!133 (value!6878 List!534)) (IntegerValue!401 (value!6879 Int) (text!1380 List!534)) (StringLiteralValue!400 (text!1381 List!534)) (FloatLiteralValue!267 (text!1382 List!534)) (BytesLiteralValue!133 (value!6880 List!534)) (CommentValue!267 (value!6881 List!534)) (StringLiteralValue!401 (value!6882 List!534)) (ErrorTokenValue!133 (msg!194 List!534)) )
))
(declare-datatypes ((Regex!207 0))(
  ( (ElementMatch!207 (c!15791 (_ BitVec 16))) (Concat!341 (regOne!926 Regex!207) (regTwo!926 Regex!207)) (EmptyExpr!207) (Star!207 (reg!536 Regex!207)) (EmptyLang!207) (Union!207 (regOne!927 Regex!207) (regTwo!927 Regex!207)) )
))
(declare-datatypes ((String!957 0))(
  ( (String!958 (value!6883 String)) )
))
(declare-datatypes ((IArray!181 0))(
  ( (IArray!182 (innerList!148 List!534)) )
))
(declare-datatypes ((Conc!90 0))(
  ( (Node!90 (left!479 Conc!90) (right!809 Conc!90) (csize!410 Int) (cheight!301 Int)) (Leaf!272 (xs!2669 IArray!181) (csize!411 Int)) (Empty!90) )
))
(declare-datatypes ((BalanceConc!180 0))(
  ( (BalanceConc!181 (c!15792 Conc!90)) )
))
(declare-datatypes ((TokenValueInjection!90 0))(
  ( (TokenValueInjection!91 (toValue!622 Int) (toChars!481 Int)) )
))
(declare-datatypes ((Rule!86 0))(
  ( (Rule!87 (regex!143 Regex!207) (tag!321 String!957) (isSeparator!143 Bool) (transformation!143 TokenValueInjection!90)) )
))
(declare-datatypes ((List!535 0))(
  ( (Nil!533) (Cons!533 (h!5929 Rule!86) (t!15709 List!535)) )
))
(declare-fun lt!3935 () List!535)

(get-info :version)

(assert (= (and b!39973 ((_ is Cons!533) lt!3935)) b!39991))

(declare-fun order!69 () Int)

(declare-fun order!67 () Int)

(declare-fun lambda!645 () Int)

(declare-fun dynLambda!50 (Int Int) Int)

(declare-fun dynLambda!51 (Int Int) Int)

(assert (=> b!39993 (< (dynLambda!50 order!67 (toValue!622 (transformation!143 (h!5929 lt!3935)))) (dynLambda!51 order!69 lambda!645))))

(declare-fun order!71 () Int)

(declare-fun dynLambda!52 (Int Int) Int)

(assert (=> b!39993 (< (dynLambda!52 order!71 (toChars!481 (transformation!143 (h!5929 lt!3935)))) (dynLambda!51 order!69 lambda!645))))

(declare-fun b!39947 () Bool)

(declare-fun res!29000 () Bool)

(declare-fun e!20502 () Bool)

(assert (=> b!39947 (=> (not res!29000) (not e!20502))))

(declare-datatypes ((Hashable!163 0))(
  ( (HashableExt!162 (__x!950 Int)) )
))
(declare-datatypes ((List!536 0))(
  ( (Nil!534) (Cons!534 (h!5930 Regex!207) (t!15710 List!536)) )
))
(declare-datatypes ((Context!130 0))(
  ( (Context!131 (exprs!565 List!536)) )
))
(declare-datatypes ((tuple2!594 0))(
  ( (tuple2!595 (_1!402 Context!130) (_2!402 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!596 0))(
  ( (tuple2!597 (_1!403 tuple2!594) (_2!403 (InoxSet Context!130))) )
))
(declare-datatypes ((List!537 0))(
  ( (Nil!535) (Cons!535 (h!5931 tuple2!596) (t!15711 List!537)) )
))
(declare-datatypes ((array!558 0))(
  ( (array!559 (arr!286 (Array (_ BitVec 32) List!537)) (size!555 (_ BitVec 32))) )
))
(declare-datatypes ((array!560 0))(
  ( (array!561 (arr!287 (Array (_ BitVec 32) (_ BitVec 64))) (size!556 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!334 0))(
  ( (LongMapFixedSize!335 (defaultEntry!505 Int) (mask!872 (_ BitVec 32)) (extraKeys!413 (_ BitVec 32)) (zeroValue!423 List!537) (minValue!423 List!537) (_size!466 (_ BitVec 32)) (_keys!458 array!560) (_values!445 array!558) (_vacant!227 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!657 0))(
  ( (Cell!658 (v!12307 LongMapFixedSize!334)) )
))
(declare-datatypes ((MutLongMap!167 0))(
  ( (LongMap!167 (underlying!529 Cell!657)) (MutLongMapExt!166 (__x!951 Int)) )
))
(declare-datatypes ((Cell!659 0))(
  ( (Cell!660 (v!12308 MutLongMap!167)) )
))
(declare-datatypes ((MutableMap!163 0))(
  ( (MutableMapExt!162 (__x!952 Int)) (HashMap!163 (underlying!530 Cell!659) (hashF!2031 Hashable!163) (_size!467 (_ BitVec 32)) (defaultValue!312 Int)) )
))
(declare-datatypes ((CacheUp!110 0))(
  ( (CacheUp!111 (cache!648 MutableMap!163)) )
))
(declare-fun cacheUp!320 () CacheUp!110)

(declare-fun valid!162 (CacheUp!110) Bool)

(assert (=> b!39947 (= res!29000 (valid!162 cacheUp!320))))

(declare-fun b!39948 () Bool)

(declare-fun res!28995 () Bool)

(assert (=> b!39948 (=> (not res!28995) (not e!20502))))

(declare-datatypes ((LexerInterface!40 0))(
  ( (LexerInterfaceExt!37 (__x!953 Int)) (Lexer!38) )
))
(declare-fun rulesInvariant!32 (LexerInterface!40 List!535) Bool)

(assert (=> b!39948 (= res!28995 (rulesInvariant!32 Lexer!38 lt!3935))))

(declare-fun b!39949 () Bool)

(declare-fun e!20504 () Bool)

(declare-fun input!525 () BalanceConc!180)

(declare-fun tp!27789 () Bool)

(declare-fun inv!822 (Conc!90) Bool)

(assert (=> b!39949 (= e!20504 (and (inv!822 (c!15792 input!525)) tp!27789))))

(declare-fun b!39950 () Bool)

(declare-fun e!20493 () Bool)

(declare-fun e!20500 () Bool)

(declare-datatypes ((tuple3!178 0))(
  ( (tuple3!179 (_1!404 Regex!207) (_2!404 Context!130) (_3!105 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!598 0))(
  ( (tuple2!599 (_1!405 tuple3!178) (_2!405 (InoxSet Context!130))) )
))
(declare-datatypes ((List!538 0))(
  ( (Nil!536) (Cons!536 (h!5932 tuple2!598) (t!15712 List!538)) )
))
(declare-datatypes ((array!562 0))(
  ( (array!563 (arr!288 (Array (_ BitVec 32) List!538)) (size!557 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!336 0))(
  ( (LongMapFixedSize!337 (defaultEntry!506 Int) (mask!873 (_ BitVec 32)) (extraKeys!414 (_ BitVec 32)) (zeroValue!424 List!538) (minValue!424 List!538) (_size!468 (_ BitVec 32)) (_keys!459 array!560) (_values!446 array!562) (_vacant!228 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!661 0))(
  ( (Cell!662 (v!12309 LongMapFixedSize!336)) )
))
(declare-datatypes ((MutLongMap!168 0))(
  ( (LongMap!168 (underlying!531 Cell!661)) (MutLongMapExt!167 (__x!954 Int)) )
))
(declare-fun lt!3942 () MutLongMap!168)

(assert (=> b!39950 (= e!20493 (and e!20500 ((_ is LongMap!168) lt!3942)))))

(declare-datatypes ((Cell!663 0))(
  ( (Cell!664 (v!12310 MutLongMap!168)) )
))
(declare-datatypes ((Hashable!164 0))(
  ( (HashableExt!163 (__x!955 Int)) )
))
(declare-datatypes ((MutableMap!164 0))(
  ( (MutableMapExt!163 (__x!956 Int)) (HashMap!164 (underlying!532 Cell!663) (hashF!2032 Hashable!164) (_size!469 (_ BitVec 32)) (defaultValue!313 Int)) )
))
(declare-datatypes ((CacheDown!112 0))(
  ( (CacheDown!113 (cache!649 MutableMap!164)) )
))
(declare-fun cacheDown!333 () CacheDown!112)

(assert (=> b!39950 (= lt!3942 (v!12310 (underlying!532 (cache!649 cacheDown!333))))))

(declare-fun b!39951 () Bool)

(declare-fun e!20503 () Bool)

(declare-fun tp!27775 () Bool)

(declare-fun mapRes!590 () Bool)

(assert (=> b!39951 (= e!20503 (and tp!27775 mapRes!590))))

(declare-fun condMapEmpty!591 () Bool)

(declare-datatypes ((tuple3!180 0))(
  ( (tuple3!181 (_1!406 (InoxSet Context!130)) (_2!406 Int) (_3!106 Int)) )
))
(declare-datatypes ((tuple2!600 0))(
  ( (tuple2!601 (_1!407 tuple3!180) (_2!407 Int)) )
))
(declare-datatypes ((List!539 0))(
  ( (Nil!537) (Cons!537 (h!5933 tuple2!600) (t!15713 List!539)) )
))
(declare-datatypes ((array!564 0))(
  ( (array!565 (arr!289 (Array (_ BitVec 32) List!539)) (size!558 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!338 0))(
  ( (LongMapFixedSize!339 (defaultEntry!507 Int) (mask!874 (_ BitVec 32)) (extraKeys!415 (_ BitVec 32)) (zeroValue!425 List!539) (minValue!425 List!539) (_size!470 (_ BitVec 32)) (_keys!460 array!560) (_values!447 array!564) (_vacant!229 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!165 0))(
  ( (HashableExt!164 (__x!957 Int)) )
))
(declare-datatypes ((Cell!665 0))(
  ( (Cell!666 (v!12311 LongMapFixedSize!338)) )
))
(declare-datatypes ((MutLongMap!169 0))(
  ( (LongMap!169 (underlying!533 Cell!665)) (MutLongMapExt!168 (__x!958 Int)) )
))
(declare-datatypes ((Cell!667 0))(
  ( (Cell!668 (v!12312 MutLongMap!169)) )
))
(declare-datatypes ((MutableMap!165 0))(
  ( (MutableMapExt!164 (__x!959 Int)) (HashMap!165 (underlying!534 Cell!667) (hashF!2033 Hashable!165) (_size!471 (_ BitVec 32)) (defaultValue!314 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!60 0))(
  ( (CacheFurthestNullable!61 (cache!650 MutableMap!165) (totalInput!1507 BalanceConc!180)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!60)

(declare-fun mapDefault!591 () List!539)

(assert (=> b!39951 (= condMapEmpty!591 (= (arr!289 (_values!447 (v!12311 (underlying!533 (v!12312 (underlying!534 (cache!650 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!539)) mapDefault!591)))))

(declare-fun b!39952 () Bool)

(declare-fun e!20511 () Bool)

(declare-fun e!20509 () Bool)

(declare-fun lt!3949 () MutLongMap!167)

(assert (=> b!39952 (= e!20511 (and e!20509 ((_ is LongMap!167) lt!3949)))))

(assert (=> b!39952 (= lt!3949 (v!12308 (underlying!530 (cache!648 cacheUp!320))))))

(declare-fun b!39953 () Bool)

(declare-fun e!20494 () Bool)

(declare-fun e!20497 () Bool)

(assert (=> b!39953 (= e!20494 e!20497)))

(declare-fun b!39954 () Bool)

(declare-fun res!28999 () Bool)

(assert (=> b!39954 (=> (not res!28999) (not e!20502))))

(declare-fun valid!163 (CacheFurthestNullable!60) Bool)

(assert (=> b!39954 (= res!28999 (valid!163 cacheFurthestNullable!45))))

(declare-fun e!20516 () Bool)

(declare-fun tp!27786 () Bool)

(declare-fun tp!27781 () Bool)

(declare-fun e!20490 () Bool)

(declare-fun array_inv!183 (array!560) Bool)

(declare-fun array_inv!184 (array!562) Bool)

(assert (=> b!39955 (= e!20490 (and tp!27783 tp!27781 tp!27786 (array_inv!183 (_keys!459 (v!12309 (underlying!531 (v!12310 (underlying!532 (cache!649 cacheDown!333))))))) (array_inv!184 (_values!446 (v!12309 (underlying!531 (v!12310 (underlying!532 (cache!649 cacheDown!333))))))) e!20516))))

(declare-fun b!39957 () Bool)

(declare-fun res!28998 () Bool)

(declare-fun e!20501 () Bool)

(assert (=> b!39957 (=> (not res!28998) (not e!20501))))

(declare-fun lt!3938 () List!534)

(declare-datatypes ((Token!56 0))(
  ( (Token!57 (value!6884 TokenValue!133) (rule!621 Rule!86) (size!559 Int) (originalCharacters!199 List!534)) )
))
(declare-datatypes ((List!540 0))(
  ( (Nil!538) (Cons!538 (h!5934 Token!56) (t!15714 List!540)) )
))
(declare-datatypes ((IArray!183 0))(
  ( (IArray!184 (innerList!149 List!540)) )
))
(declare-datatypes ((Conc!91 0))(
  ( (Node!91 (left!480 Conc!91) (right!810 Conc!91) (csize!412 Int) (cheight!302 Int)) (Leaf!273 (xs!2670 IArray!183) (csize!413 Int)) (Empty!91) )
))
(declare-datatypes ((BalanceConc!182 0))(
  ( (BalanceConc!183 (c!15793 Conc!91)) )
))
(declare-datatypes ((tuple2!602 0))(
  ( (tuple2!603 (_1!408 BalanceConc!182) (_2!408 BalanceConc!180)) )
))
(declare-fun lt!3936 () tuple2!602)

(declare-fun list!133 (BalanceConc!180) List!534)

(assert (=> b!39957 (= res!28998 (= lt!3938 (list!133 (_2!408 lt!3936))))))

(declare-fun b!39958 () Bool)

(declare-fun e!20505 () Bool)

(declare-fun e!20489 () Bool)

(assert (=> b!39958 (= e!20505 e!20489)))

(declare-fun res!28992 () Bool)

(assert (=> b!39958 (=> (not res!28992) (not e!20489))))

(declare-fun lt!3943 () BalanceConc!180)

(declare-fun lt!3948 () List!534)

(assert (=> b!39958 (= res!28992 (= (list!133 lt!3943) lt!3948))))

(declare-fun seqFromList!13 (List!534) BalanceConc!180)

(assert (=> b!39958 (= lt!3943 (seqFromList!13 lt!3948))))

(assert (=> b!39958 (= lt!3948 (list!133 input!525))))

(declare-fun tp!27778 () Bool)

(declare-fun e!20487 () Bool)

(declare-fun e!20507 () Bool)

(declare-fun tp!27788 () Bool)

(declare-fun array_inv!185 (array!558) Bool)

(assert (=> b!39959 (= e!20507 (and tp!27794 tp!27788 tp!27778 (array_inv!183 (_keys!458 (v!12307 (underlying!529 (v!12308 (underlying!530 (cache!648 cacheUp!320))))))) (array_inv!185 (_values!445 (v!12307 (underlying!529 (v!12308 (underlying!530 (cache!648 cacheUp!320))))))) e!20487))))

(declare-fun b!39960 () Bool)

(declare-fun res!29002 () Bool)

(assert (=> b!39960 (=> (not res!29002) (not e!20501))))

(declare-fun lexThenRulesProduceEachTokenIndividually!7 (LexerInterface!40 List!535 List!534) Bool)

(assert (=> b!39960 (= res!29002 (lexThenRulesProduceEachTokenIndividually!7 Lexer!38 lt!3935 lt!3948))))

(declare-fun b!39961 () Bool)

(declare-fun e!20515 () Bool)

(assert (=> b!39961 (= e!20515 e!20490)))

(declare-fun b!39962 () Bool)

(declare-fun e!20513 () Bool)

(declare-fun tp!27785 () Bool)

(assert (=> b!39962 (= e!20513 (and (inv!822 (c!15792 (totalInput!1507 cacheFurthestNullable!45))) tp!27785))))

(declare-fun b!39963 () Bool)

(declare-fun res!28997 () Bool)

(assert (=> b!39963 (=> (not res!28997) (not e!20502))))

(declare-fun valid!164 (CacheDown!112) Bool)

(assert (=> b!39963 (= res!28997 (valid!164 cacheDown!333))))

(declare-fun b!39964 () Bool)

(declare-fun res!28991 () Bool)

(assert (=> b!39964 (=> (not res!28991) (not e!20502))))

(assert (=> b!39964 (= res!28991 (= (totalInput!1507 cacheFurthestNullable!45) input!525))))

(declare-fun mapIsEmpty!589 () Bool)

(assert (=> mapIsEmpty!589 mapRes!590))

(declare-fun mapNonEmpty!589 () Bool)

(declare-fun mapRes!591 () Bool)

(declare-fun tp!27792 () Bool)

(declare-fun tp!27787 () Bool)

(assert (=> mapNonEmpty!589 (= mapRes!591 (and tp!27792 tp!27787))))

(declare-fun mapKey!591 () (_ BitVec 32))

(declare-fun mapRest!589 () (Array (_ BitVec 32) List!537))

(declare-fun mapValue!591 () List!537)

(assert (=> mapNonEmpty!589 (= (arr!286 (_values!445 (v!12307 (underlying!529 (v!12308 (underlying!530 (cache!648 cacheUp!320))))))) (store mapRest!589 mapKey!591 mapValue!591))))

(declare-fun b!39965 () Bool)

(assert (=> b!39965 (= e!20489 e!20501)))

(declare-fun res!28993 () Bool)

(assert (=> b!39965 (=> (not res!28993) (not e!20501))))

(declare-fun lt!3946 () List!540)

(declare-fun list!134 (BalanceConc!182) List!540)

(assert (=> b!39965 (= res!28993 (= lt!3946 (list!134 (_1!408 lt!3936))))))

(declare-fun lex!15 (LexerInterface!40 List!535 BalanceConc!180) tuple2!602)

(assert (=> b!39965 (= lt!3936 (lex!15 Lexer!38 lt!3935 lt!3943))))

(declare-fun b!39966 () Bool)

(assert (=> b!39966 (= e!20501 false)))

(declare-fun lt!3939 () Bool)

(declare-datatypes ((tuple4!32 0))(
  ( (tuple4!33 (_1!409 tuple2!602) (_2!409 CacheUp!110) (_3!107 CacheDown!112) (_4!16 CacheFurthestNullable!60)) )
))
(declare-fun lt!3937 () tuple4!32)

(declare-fun forall!52 (BalanceConc!182 Int) Bool)

(assert (=> b!39966 (= lt!3939 (forall!52 (_1!408 (_1!409 lt!3937)) lambda!645))))

(declare-fun mapNonEmpty!590 () Bool)

(declare-fun mapRes!589 () Bool)

(declare-fun tp!27784 () Bool)

(declare-fun tp!27780 () Bool)

(assert (=> mapNonEmpty!590 (= mapRes!589 (and tp!27784 tp!27780))))

(declare-fun mapKey!590 () (_ BitVec 32))

(declare-fun mapRest!590 () (Array (_ BitVec 32) List!538))

(declare-fun mapValue!590 () List!538)

(assert (=> mapNonEmpty!590 (= (arr!288 (_values!446 (v!12309 (underlying!531 (v!12310 (underlying!532 (cache!649 cacheDown!333))))))) (store mapRest!590 mapKey!590 mapValue!590))))

(declare-fun e!20492 () Bool)

(assert (=> b!39967 (= e!20492 (and e!20493 tp!27777))))

(declare-fun mapNonEmpty!591 () Bool)

(declare-fun tp!27795 () Bool)

(declare-fun tp!27797 () Bool)

(assert (=> mapNonEmpty!591 (= mapRes!590 (and tp!27795 tp!27797))))

(declare-fun mapKey!589 () (_ BitVec 32))

(declare-fun mapValue!589 () List!539)

(declare-fun mapRest!591 () (Array (_ BitVec 32) List!539))

(assert (=> mapNonEmpty!591 (= (arr!289 (_values!447 (v!12311 (underlying!533 (v!12312 (underlying!534 (cache!650 cacheFurthestNullable!45))))))) (store mapRest!591 mapKey!589 mapValue!589))))

(declare-fun mapIsEmpty!590 () Bool)

(assert (=> mapIsEmpty!590 mapRes!589))

(declare-fun e!20488 () Bool)

(declare-fun b!39968 () Bool)

(declare-fun e!20491 () Bool)

(declare-fun inv!823 (BalanceConc!180) Bool)

(assert (=> b!39968 (= e!20488 (and e!20491 (inv!823 (totalInput!1507 cacheFurthestNullable!45)) e!20513))))

(declare-fun b!39969 () Bool)

(declare-fun e!20495 () Bool)

(assert (=> b!39969 (= e!20495 e!20507)))

(declare-fun b!39970 () Bool)

(assert (=> b!39970 (= e!20500 e!20515)))

(declare-fun b!39971 () Bool)

(declare-fun e!20512 () Bool)

(assert (=> b!39971 (= e!20512 e!20492)))

(declare-fun b!39972 () Bool)

(declare-fun tp!27791 () Bool)

(assert (=> b!39972 (= e!20487 (and tp!27791 mapRes!591))))

(declare-fun condMapEmpty!590 () Bool)

(declare-fun mapDefault!589 () List!537)

(assert (=> b!39972 (= condMapEmpty!590 (= (arr!286 (_values!445 (v!12307 (underlying!529 (v!12308 (underlying!530 (cache!648 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!537)) mapDefault!589)))))

(declare-fun res!28996 () Bool)

(assert (=> b!39973 (=> (not res!28996) (not e!20501))))

(declare-fun lt!3941 () List!540)

(declare-fun forall!53 (List!540 Int) Bool)

(assert (=> b!39973 (= res!28996 (forall!53 lt!3941 lambda!645))))

(declare-fun e!20510 () Bool)

(assert (=> b!39974 (= e!20491 (and e!20510 tp!27779))))

(declare-fun b!39975 () Bool)

(declare-fun e!20508 () Bool)

(assert (=> b!39975 (= e!20508 e!20505)))

(declare-fun res!29003 () Bool)

(assert (=> b!39975 (=> (not res!29003) (not e!20505))))

(declare-fun lt!3934 () List!534)

(assert (=> b!39975 (= res!29003 (= lt!3934 lt!3938))))

(declare-fun lt!3940 () tuple2!602)

(assert (=> b!39975 (= lt!3938 (list!133 (_2!408 lt!3940)))))

(assert (=> b!39975 (= lt!3934 (list!133 (_2!408 (_1!409 lt!3937))))))

(declare-fun e!20498 () Bool)

(assert (=> b!39976 (= e!20498 (and e!20511 tp!27776))))

(declare-fun b!39977 () Bool)

(declare-fun tp!27796 () Bool)

(assert (=> b!39977 (= e!20516 (and tp!27796 mapRes!589))))

(declare-fun condMapEmpty!589 () Bool)

(declare-fun mapDefault!590 () List!538)

(assert (=> b!39977 (= condMapEmpty!589 (= (arr!288 (_values!446 (v!12309 (underlying!531 (v!12310 (underlying!532 (cache!649 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!538)) mapDefault!590)))))

(declare-fun mapIsEmpty!591 () Bool)

(assert (=> mapIsEmpty!591 mapRes!591))

(declare-fun b!39978 () Bool)

(assert (=> b!39978 (= e!20502 e!20508)))

(declare-fun res!28994 () Bool)

(assert (=> b!39978 (=> (not res!28994) (not e!20508))))

(assert (=> b!39978 (= res!28994 (= lt!3941 lt!3946))))

(assert (=> b!39978 (= lt!3946 (list!134 (_1!408 lt!3940)))))

(assert (=> b!39978 (= lt!3941 (list!134 (_1!408 (_1!409 lt!3937))))))

(assert (=> b!39978 (= lt!3940 (lex!15 Lexer!38 lt!3935 input!525))))

(declare-datatypes ((Unit!244 0))(
  ( (Unit!245) )
))
(declare-fun lt!3945 () Unit!244)

(declare-fun lemmaInvariant!25 (CacheDown!112) Unit!244)

(assert (=> b!39978 (= lt!3945 (lemmaInvariant!25 (_3!107 lt!3937)))))

(declare-fun lt!3944 () Unit!244)

(declare-fun lemmaInvariant!26 (CacheUp!110) Unit!244)

(assert (=> b!39978 (= lt!3944 (lemmaInvariant!26 (_2!409 lt!3937)))))

(declare-fun lexMem!11 (LexerInterface!40 List!535 BalanceConc!180 CacheUp!110 CacheDown!112 CacheFurthestNullable!60) tuple4!32)

(assert (=> b!39978 (= lt!3937 (lexMem!11 Lexer!38 lt!3935 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun b!39979 () Bool)

(declare-fun e!20496 () Bool)

(assert (=> b!39979 (= e!20496 e!20498)))

(declare-fun b!39980 () Bool)

(declare-fun e!20514 () Bool)

(assert (=> b!39980 (= e!20497 e!20514)))

(declare-fun b!39981 () Bool)

(assert (=> b!39981 (= e!20509 e!20495)))

(declare-fun tp!27793 () Bool)

(declare-fun tp!27782 () Bool)

(declare-fun array_inv!186 (array!564) Bool)

(assert (=> b!39982 (= e!20514 (and tp!27790 tp!27782 tp!27793 (array_inv!183 (_keys!460 (v!12311 (underlying!533 (v!12312 (underlying!534 (cache!650 cacheFurthestNullable!45))))))) (array_inv!186 (_values!447 (v!12311 (underlying!533 (v!12312 (underlying!534 (cache!650 cacheFurthestNullable!45))))))) e!20503))))

(declare-fun b!39956 () Bool)

(declare-fun lt!3947 () MutLongMap!169)

(assert (=> b!39956 (= e!20510 (and e!20494 ((_ is LongMap!169) lt!3947)))))

(assert (=> b!39956 (= lt!3947 (v!12312 (underlying!534 (cache!650 cacheFurthestNullable!45))))))

(declare-fun res!29001 () Bool)

(assert (=> start!2204 (=> (not res!29001) (not e!20502))))

(declare-fun isEmpty!109 (List!535) Bool)

(assert (=> start!2204 (= res!29001 (not (isEmpty!109 lt!3935)))))

(declare-datatypes ((JsonLexer!42 0))(
  ( (JsonLexer!43) )
))
(declare-fun rules!109 (JsonLexer!42) List!535)

(assert (=> start!2204 (= lt!3935 (rules!109 JsonLexer!43))))

(assert (=> start!2204 e!20502))

(declare-fun inv!824 (CacheDown!112) Bool)

(assert (=> start!2204 (and (inv!824 cacheDown!333) e!20512)))

(assert (=> start!2204 (and (inv!823 input!525) e!20504)))

(declare-fun inv!825 (CacheFurthestNullable!60) Bool)

(assert (=> start!2204 (and (inv!825 cacheFurthestNullable!45) e!20488)))

(declare-fun inv!826 (CacheUp!110) Bool)

(assert (=> start!2204 (and (inv!826 cacheUp!320) e!20496)))

(assert (= (and start!2204 res!29001) b!39948))

(assert (= (and b!39948 res!28995) b!39947))

(assert (= (and b!39947 res!29000) b!39963))

(assert (= (and b!39963 res!28997) b!39954))

(assert (= (and b!39954 res!28999) b!39964))

(assert (= (and b!39964 res!28991) b!39978))

(assert (= (and b!39978 res!28994) b!39975))

(assert (= (and b!39975 res!29003) b!39958))

(assert (= (and b!39958 res!28992) b!39965))

(assert (= (and b!39965 res!28993) b!39957))

(assert (= (and b!39957 res!28998) b!39960))

(assert (= (and b!39960 res!29002) b!39973))

(assert (= (and b!39973 res!28996) b!39966))

(assert (= (and b!39977 condMapEmpty!589) mapIsEmpty!590))

(assert (= (and b!39977 (not condMapEmpty!589)) mapNonEmpty!590))

(assert (= b!39955 b!39977))

(assert (= b!39961 b!39955))

(assert (= b!39970 b!39961))

(assert (= (and b!39950 ((_ is LongMap!168) (v!12310 (underlying!532 (cache!649 cacheDown!333))))) b!39970))

(assert (= b!39967 b!39950))

(assert (= (and b!39971 ((_ is HashMap!164) (cache!649 cacheDown!333))) b!39967))

(assert (= start!2204 b!39971))

(assert (= start!2204 b!39949))

(assert (= (and b!39951 condMapEmpty!591) mapIsEmpty!589))

(assert (= (and b!39951 (not condMapEmpty!591)) mapNonEmpty!591))

(assert (= b!39982 b!39951))

(assert (= b!39980 b!39982))

(assert (= b!39953 b!39980))

(assert (= (and b!39956 ((_ is LongMap!169) (v!12312 (underlying!534 (cache!650 cacheFurthestNullable!45))))) b!39953))

(assert (= b!39974 b!39956))

(assert (= (and b!39968 ((_ is HashMap!165) (cache!650 cacheFurthestNullable!45))) b!39974))

(assert (= b!39968 b!39962))

(assert (= start!2204 b!39968))

(assert (= (and b!39972 condMapEmpty!590) mapIsEmpty!591))

(assert (= (and b!39972 (not condMapEmpty!590)) mapNonEmpty!589))

(assert (= b!39959 b!39972))

(assert (= b!39969 b!39959))

(assert (= b!39981 b!39969))

(assert (= (and b!39952 ((_ is LongMap!167) (v!12308 (underlying!530 (cache!648 cacheUp!320))))) b!39981))

(assert (= b!39976 b!39952))

(assert (= (and b!39979 ((_ is HashMap!163) (cache!648 cacheUp!320))) b!39976))

(assert (= start!2204 b!39979))

(declare-fun m!13544 () Bool)

(assert (=> b!39963 m!13544))

(declare-fun m!13546 () Bool)

(assert (=> b!39975 m!13546))

(declare-fun m!13548 () Bool)

(assert (=> b!39975 m!13548))

(declare-fun m!13550 () Bool)

(assert (=> b!39955 m!13550))

(declare-fun m!13552 () Bool)

(assert (=> b!39955 m!13552))

(declare-fun m!13554 () Bool)

(assert (=> b!39957 m!13554))

(declare-fun m!13556 () Bool)

(assert (=> mapNonEmpty!590 m!13556))

(declare-fun m!13558 () Bool)

(assert (=> b!39978 m!13558))

(declare-fun m!13560 () Bool)

(assert (=> b!39978 m!13560))

(declare-fun m!13562 () Bool)

(assert (=> b!39978 m!13562))

(declare-fun m!13564 () Bool)

(assert (=> b!39978 m!13564))

(declare-fun m!13566 () Bool)

(assert (=> b!39978 m!13566))

(declare-fun m!13568 () Bool)

(assert (=> b!39978 m!13568))

(declare-fun m!13570 () Bool)

(assert (=> b!39959 m!13570))

(declare-fun m!13572 () Bool)

(assert (=> b!39959 m!13572))

(declare-fun m!13574 () Bool)

(assert (=> mapNonEmpty!589 m!13574))

(declare-fun m!13576 () Bool)

(assert (=> b!39948 m!13576))

(declare-fun m!13578 () Bool)

(assert (=> b!39949 m!13578))

(declare-fun m!13580 () Bool)

(assert (=> b!39982 m!13580))

(declare-fun m!13582 () Bool)

(assert (=> b!39982 m!13582))

(declare-fun m!13584 () Bool)

(assert (=> b!39965 m!13584))

(declare-fun m!13586 () Bool)

(assert (=> b!39965 m!13586))

(declare-fun m!13588 () Bool)

(assert (=> start!2204 m!13588))

(declare-fun m!13590 () Bool)

(assert (=> start!2204 m!13590))

(declare-fun m!13592 () Bool)

(assert (=> start!2204 m!13592))

(declare-fun m!13594 () Bool)

(assert (=> start!2204 m!13594))

(declare-fun m!13596 () Bool)

(assert (=> start!2204 m!13596))

(declare-fun m!13598 () Bool)

(assert (=> start!2204 m!13598))

(declare-fun m!13600 () Bool)

(assert (=> b!39966 m!13600))

(declare-fun m!13602 () Bool)

(assert (=> b!39960 m!13602))

(declare-fun m!13604 () Bool)

(assert (=> b!39968 m!13604))

(declare-fun m!13606 () Bool)

(assert (=> b!39947 m!13606))

(declare-fun m!13608 () Bool)

(assert (=> b!39973 m!13608))

(declare-fun m!13610 () Bool)

(assert (=> b!39962 m!13610))

(declare-fun m!13612 () Bool)

(assert (=> b!39954 m!13612))

(declare-fun m!13614 () Bool)

(assert (=> mapNonEmpty!591 m!13614))

(declare-fun m!13616 () Bool)

(assert (=> b!39958 m!13616))

(declare-fun m!13618 () Bool)

(assert (=> b!39958 m!13618))

(declare-fun m!13620 () Bool)

(assert (=> b!39958 m!13620))

(check-sat (not mapNonEmpty!590) (not b!39991) (not b!39954) (not b_next!819) b_and!857 (not b!39963) (not b!39975) (not b!39957) (not b!39948) b_and!855 (not b!39951) (not b_next!813) (not b_next!823) (not b!39973) (not start!2204) (not b!39978) (not b_next!815) (not b!39977) (not b!39960) (not b!39959) b_and!847 (not b_next!817) (not b!39958) (not b!39949) b_and!853 (not b_next!821) (not b!39965) (not b!39982) (not b!39962) (not b!39966) (not b!39968) (not b!39947) b_and!849 (not mapNonEmpty!589) (not mapNonEmpty!591) (not b!39955) (not b!39972) b_and!851)
(check-sat (not b_next!815) (not b_next!819) b_and!857 b_and!855 b_and!853 (not b_next!821) (not b_next!813) (not b_next!823) b_and!849 b_and!851 b_and!847 (not b_next!817))
