; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!265848 () Bool)

(assert start!265848)

(declare-fun b!2742476 () Bool)

(declare-fun b_free!76977 () Bool)

(declare-fun b_next!77681 () Bool)

(assert (=> b!2742476 (= b_free!76977 (not b_next!77681))))

(declare-fun tp!862009 () Bool)

(declare-fun b_and!201697 () Bool)

(assert (=> b!2742476 (= tp!862009 b_and!201697)))

(declare-fun b!2742474 () Bool)

(declare-fun b_free!76979 () Bool)

(declare-fun b_next!77683 () Bool)

(assert (=> b!2742474 (= b_free!76979 (not b_next!77683))))

(declare-fun tp!862012 () Bool)

(declare-fun b_and!201699 () Bool)

(assert (=> b!2742474 (= tp!862012 b_and!201699)))

(declare-fun b_free!76981 () Bool)

(declare-fun b_next!77685 () Bool)

(assert (=> b!2742474 (= b_free!76981 (not b_next!77685))))

(declare-fun tp!862002 () Bool)

(declare-fun b_and!201701 () Bool)

(assert (=> b!2742474 (= tp!862002 b_and!201701)))

(declare-fun b!2742459 () Bool)

(declare-fun b_free!76983 () Bool)

(declare-fun b_next!77687 () Bool)

(assert (=> b!2742459 (= b_free!76983 (not b_next!77687))))

(declare-fun tp!862003 () Bool)

(declare-fun b_and!201703 () Bool)

(assert (=> b!2742459 (= tp!862003 b_and!201703)))

(declare-fun b!2742465 () Bool)

(declare-fun b_free!76985 () Bool)

(declare-fun b_next!77689 () Bool)

(assert (=> b!2742465 (= b_free!76985 (not b_next!77689))))

(declare-fun tp!861995 () Bool)

(declare-fun b_and!201705 () Bool)

(assert (=> b!2742465 (= tp!861995 b_and!201705)))

(declare-fun b!2742478 () Bool)

(declare-fun b_free!76987 () Bool)

(declare-fun b_next!77691 () Bool)

(assert (=> b!2742478 (= b_free!76987 (not b_next!77691))))

(declare-fun tp!861996 () Bool)

(declare-fun b_and!201707 () Bool)

(assert (=> b!2742478 (= tp!861996 b_and!201707)))

(declare-fun mapNonEmpty!16265 () Bool)

(declare-fun mapRes!16265 () Bool)

(declare-fun tp!861997 () Bool)

(declare-fun tp!862006 () Bool)

(assert (=> mapNonEmpty!16265 (= mapRes!16265 (and tp!861997 tp!862006))))

(declare-fun mapKey!16266 () (_ BitVec 32))

(declare-datatypes ((C!16104 0))(
  ( (C!16105 (val!9986 Int)) )
))
(declare-datatypes ((Regex!7973 0))(
  ( (ElementMatch!7973 (c!444748 C!16104)) (Concat!13016 (regOne!16458 Regex!7973) (regTwo!16458 Regex!7973)) (EmptyExpr!7973) (Star!7973 (reg!8302 Regex!7973)) (EmptyLang!7973) (Union!7973 (regOne!16459 Regex!7973) (regTwo!16459 Regex!7973)) )
))
(declare-datatypes ((List!31575 0))(
  ( (Nil!31475) (Cons!31475 (h!36895 Regex!7973) (t!227663 List!31575)) )
))
(declare-datatypes ((Context!4382 0))(
  ( (Context!4383 (exprs!2691 List!31575)) )
))
(declare-datatypes ((tuple2!31250 0))(
  ( (tuple2!31251 (_1!18262 Context!4382) (_2!18262 C!16104)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31252 0))(
  ( (tuple2!31253 (_1!18263 tuple2!31250) (_2!18263 (InoxSet Context!4382))) )
))
(declare-datatypes ((List!31576 0))(
  ( (Nil!31476) (Cons!31476 (h!36896 tuple2!31252) (t!227664 List!31576)) )
))
(declare-fun mapRest!16266 () (Array (_ BitVec 32) List!31576))

(declare-fun mapValue!16266 () List!31576)

(declare-datatypes ((array!12689 0))(
  ( (array!12690 (arr!5668 (Array (_ BitVec 32) (_ BitVec 64))) (size!24312 (_ BitVec 32))) )
))
(declare-datatypes ((array!12691 0))(
  ( (array!12692 (arr!5669 (Array (_ BitVec 32) List!31576)) (size!24313 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7124 0))(
  ( (LongMapFixedSize!7125 (defaultEntry!3947 Int) (mask!9285 (_ BitVec 32)) (extraKeys!3811 (_ BitVec 32)) (zeroValue!3821 List!31576) (minValue!3821 List!31576) (_size!7167 (_ BitVec 32)) (_keys!3862 array!12689) (_values!3843 array!12691) (_vacant!3623 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14057 0))(
  ( (Cell!14058 (v!33141 LongMapFixedSize!7124)) )
))
(declare-datatypes ((MutLongMap!3562 0))(
  ( (LongMap!3562 (underlying!7327 Cell!14057)) (MutLongMapExt!3561 (__x!20250 Int)) )
))
(declare-datatypes ((Cell!14059 0))(
  ( (Cell!14060 (v!33142 MutLongMap!3562)) )
))
(declare-datatypes ((Hashable!3478 0))(
  ( (HashableExt!3477 (__x!20251 Int)) )
))
(declare-datatypes ((MutableMap!3468 0))(
  ( (MutableMapExt!3467 (__x!20252 Int)) (HashMap!3468 (underlying!7328 Cell!14059) (hashF!5510 Hashable!3478) (_size!7168 (_ BitVec 32)) (defaultValue!3639 Int)) )
))
(declare-datatypes ((CacheUp!2178 0))(
  ( (CacheUp!2179 (cache!3611 MutableMap!3468)) )
))
(declare-fun cacheUp!633 () CacheUp!2178)

(assert (=> mapNonEmpty!16265 (= (arr!5669 (_values!3843 (v!33141 (underlying!7327 (v!33142 (underlying!7328 (cache!3611 cacheUp!633))))))) (store mapRest!16266 mapKey!16266 mapValue!16266))))

(declare-fun b!2742458 () Bool)

(declare-fun e!1726883 () Bool)

(declare-fun e!1726887 () Bool)

(declare-fun tp!861998 () Bool)

(assert (=> b!2742458 (= e!1726883 (and e!1726887 tp!861998))))

(declare-fun e!1726881 () Bool)

(declare-fun e!1726880 () Bool)

(assert (=> b!2742459 (= e!1726881 (and e!1726880 tp!862003))))

(declare-fun b!2742460 () Bool)

(declare-fun res!1151420 () Bool)

(declare-fun e!1726878 () Bool)

(assert (=> b!2742460 (=> (not res!1151420) (not e!1726878))))

(declare-datatypes ((List!31577 0))(
  ( (Nil!31477) (Cons!31477 (h!36897 (_ BitVec 16)) (t!227665 List!31577)) )
))
(declare-datatypes ((TokenValue!5043 0))(
  ( (FloatLiteralValue!10086 (text!35746 List!31577)) (TokenValueExt!5042 (__x!20253 Int)) (Broken!25215 (value!154980 List!31577)) (Object!5142) (End!5043) (Def!5043) (Underscore!5043) (Match!5043) (Else!5043) (Error!5043) (Case!5043) (If!5043) (Extends!5043) (Abstract!5043) (Class!5043) (Val!5043) (DelimiterValue!10086 (del!5103 List!31577)) (KeywordValue!5049 (value!154981 List!31577)) (CommentValue!10086 (value!154982 List!31577)) (WhitespaceValue!10086 (value!154983 List!31577)) (IndentationValue!5043 (value!154984 List!31577)) (String!35114) (Int32!5043) (Broken!25216 (value!154985 List!31577)) (Boolean!5044) (Unit!45473) (OperatorValue!5046 (op!5103 List!31577)) (IdentifierValue!10086 (value!154986 List!31577)) (IdentifierValue!10087 (value!154987 List!31577)) (WhitespaceValue!10087 (value!154988 List!31577)) (True!10086) (False!10086) (Broken!25217 (value!154989 List!31577)) (Broken!25218 (value!154990 List!31577)) (True!10087) (RightBrace!5043) (RightBracket!5043) (Colon!5043) (Null!5043) (Comma!5043) (LeftBracket!5043) (False!10087) (LeftBrace!5043) (ImaginaryLiteralValue!5043 (text!35747 List!31577)) (StringLiteralValue!15129 (value!154991 List!31577)) (EOFValue!5043 (value!154992 List!31577)) (IdentValue!5043 (value!154993 List!31577)) (DelimiterValue!10087 (value!154994 List!31577)) (DedentValue!5043 (value!154995 List!31577)) (NewLineValue!5043 (value!154996 List!31577)) (IntegerValue!15129 (value!154997 (_ BitVec 32)) (text!35748 List!31577)) (IntegerValue!15130 (value!154998 Int) (text!35749 List!31577)) (Times!5043) (Or!5043) (Equal!5043) (Minus!5043) (Broken!25219 (value!154999 List!31577)) (And!5043) (Div!5043) (LessEqual!5043) (Mod!5043) (Concat!13017) (Not!5043) (Plus!5043) (SpaceValue!5043 (value!155000 List!31577)) (IntegerValue!15131 (value!155001 Int) (text!35750 List!31577)) (StringLiteralValue!15130 (text!35751 List!31577)) (FloatLiteralValue!10087 (text!35752 List!31577)) (BytesLiteralValue!5043 (value!155002 List!31577)) (CommentValue!10087 (value!155003 List!31577)) (StringLiteralValue!15131 (value!155004 List!31577)) (ErrorTokenValue!5043 (msg!5104 List!31577)) )
))
(declare-datatypes ((List!31578 0))(
  ( (Nil!31478) (Cons!31478 (h!36898 C!16104) (t!227666 List!31578)) )
))
(declare-datatypes ((IArray!19733 0))(
  ( (IArray!19734 (innerList!9924 List!31578)) )
))
(declare-datatypes ((Conc!9864 0))(
  ( (Node!9864 (left!24184 Conc!9864) (right!24514 Conc!9864) (csize!19958 Int) (cheight!10075 Int)) (Leaf!15019 (xs!12971 IArray!19733) (csize!19959 Int)) (Empty!9864) )
))
(declare-datatypes ((BalanceConc!19342 0))(
  ( (BalanceConc!19343 (c!444749 Conc!9864)) )
))
(declare-datatypes ((TokenValueInjection!9526 0))(
  ( (TokenValueInjection!9527 (toValue!6819 Int) (toChars!6678 Int)) )
))
(declare-datatypes ((String!35115 0))(
  ( (String!35116 (value!155005 String)) )
))
(declare-datatypes ((Rule!9442 0))(
  ( (Rule!9443 (regex!4821 Regex!7973) (tag!5325 String!35115) (isSeparator!4821 Bool) (transformation!4821 TokenValueInjection!9526)) )
))
(declare-datatypes ((List!31579 0))(
  ( (Nil!31479) (Cons!31479 (h!36899 Rule!9442) (t!227667 List!31579)) )
))
(declare-fun rulesArg!249 () List!31579)

(declare-fun isEmpty!18011 (List!31579) Bool)

(assert (=> b!2742460 (= res!1151420 (not (isEmpty!18011 rulesArg!249)))))

(declare-fun mapIsEmpty!16265 () Bool)

(declare-fun mapRes!16266 () Bool)

(assert (=> mapIsEmpty!16265 mapRes!16266))

(declare-fun b!2742461 () Bool)

(declare-fun tp!862007 () Bool)

(declare-fun e!1726888 () Bool)

(declare-fun inv!42816 (String!35115) Bool)

(declare-fun inv!42817 (TokenValueInjection!9526) Bool)

(assert (=> b!2742461 (= e!1726887 (and tp!862007 (inv!42816 (tag!5325 (h!36899 rulesArg!249))) (inv!42817 (transformation!4821 (h!36899 rulesArg!249))) e!1726888))))

(declare-fun b!2742462 () Bool)

(declare-fun e!1726886 () Bool)

(declare-fun e!1726879 () Bool)

(assert (=> b!2742462 (= e!1726886 e!1726879)))

(declare-fun b!2742463 () Bool)

(declare-fun e!1726871 () Bool)

(declare-fun e!1726890 () Bool)

(assert (=> b!2742463 (= e!1726871 e!1726890)))

(declare-fun b!2742464 () Bool)

(declare-fun res!1151423 () Bool)

(assert (=> b!2742464 (=> (not res!1151423) (not e!1726878))))

(declare-fun valid!2766 (CacheUp!2178) Bool)

(assert (=> b!2742464 (= res!1151423 (valid!2766 cacheUp!633))))

(declare-fun tp!862001 () Bool)

(declare-fun e!1726875 () Bool)

(declare-fun tp!862008 () Bool)

(declare-fun e!1726872 () Bool)

(declare-datatypes ((tuple3!4334 0))(
  ( (tuple3!4335 (_1!18264 Regex!7973) (_2!18264 Context!4382) (_3!2637 C!16104)) )
))
(declare-datatypes ((tuple2!31254 0))(
  ( (tuple2!31255 (_1!18265 tuple3!4334) (_2!18265 (InoxSet Context!4382))) )
))
(declare-datatypes ((List!31580 0))(
  ( (Nil!31480) (Cons!31480 (h!36900 tuple2!31254) (t!227668 List!31580)) )
))
(declare-datatypes ((array!12693 0))(
  ( (array!12694 (arr!5670 (Array (_ BitVec 32) List!31580)) (size!24314 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7126 0))(
  ( (LongMapFixedSize!7127 (defaultEntry!3948 Int) (mask!9286 (_ BitVec 32)) (extraKeys!3812 (_ BitVec 32)) (zeroValue!3822 List!31580) (minValue!3822 List!31580) (_size!7169 (_ BitVec 32)) (_keys!3863 array!12689) (_values!3844 array!12693) (_vacant!3624 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14061 0))(
  ( (Cell!14062 (v!33143 LongMapFixedSize!7126)) )
))
(declare-datatypes ((MutLongMap!3563 0))(
  ( (LongMap!3563 (underlying!7329 Cell!14061)) (MutLongMapExt!3562 (__x!20254 Int)) )
))
(declare-datatypes ((Cell!14063 0))(
  ( (Cell!14064 (v!33144 MutLongMap!3563)) )
))
(declare-datatypes ((Hashable!3479 0))(
  ( (HashableExt!3478 (__x!20255 Int)) )
))
(declare-datatypes ((MutableMap!3469 0))(
  ( (MutableMapExt!3468 (__x!20256 Int)) (HashMap!3469 (underlying!7330 Cell!14063) (hashF!5511 Hashable!3479) (_size!7170 (_ BitVec 32)) (defaultValue!3640 Int)) )
))
(declare-datatypes ((CacheDown!2290 0))(
  ( (CacheDown!2291 (cache!3612 MutableMap!3469)) )
))
(declare-fun cacheDown!646 () CacheDown!2290)

(declare-fun array_inv!4051 (array!12689) Bool)

(declare-fun array_inv!4052 (array!12693) Bool)

(assert (=> b!2742465 (= e!1726872 (and tp!861995 tp!862001 tp!862008 (array_inv!4051 (_keys!3863 (v!33143 (underlying!7329 (v!33144 (underlying!7330 (cache!3612 cacheDown!646))))))) (array_inv!4052 (_values!3844 (v!33143 (underlying!7329 (v!33144 (underlying!7330 (cache!3612 cacheDown!646))))))) e!1726875))))

(declare-fun mapIsEmpty!16266 () Bool)

(assert (=> mapIsEmpty!16266 mapRes!16265))

(declare-fun b!2742466 () Bool)

(assert (=> b!2742466 (= e!1726890 e!1726872)))

(declare-fun b!2742467 () Bool)

(declare-fun res!1151419 () Bool)

(assert (=> b!2742467 (=> (not res!1151419) (not e!1726878))))

(declare-fun valid!2767 (CacheDown!2290) Bool)

(assert (=> b!2742467 (= res!1151419 (valid!2767 cacheDown!646))))

(declare-fun b!2742468 () Bool)

(declare-fun e!1726873 () Bool)

(declare-fun tp!861999 () Bool)

(assert (=> b!2742468 (= e!1726873 (and tp!861999 mapRes!16265))))

(declare-fun condMapEmpty!16266 () Bool)

(declare-fun mapDefault!16265 () List!31576)

(assert (=> b!2742468 (= condMapEmpty!16266 (= (arr!5669 (_values!3843 (v!33141 (underlying!7327 (v!33142 (underlying!7328 (cache!3611 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31576)) mapDefault!16265)))))

(declare-fun b!2742469 () Bool)

(declare-fun e!1726884 () Bool)

(declare-fun lt!971052 () MutLongMap!3562)

(get-info :version)

(assert (=> b!2742469 (= e!1726884 (and e!1726886 ((_ is LongMap!3562) lt!971052)))))

(assert (=> b!2742469 (= lt!971052 (v!33142 (underlying!7328 (cache!3611 cacheUp!633))))))

(declare-fun b!2742470 () Bool)

(declare-fun e!1726889 () Bool)

(assert (=> b!2742470 (= e!1726878 (not e!1726889))))

(declare-fun res!1151418 () Bool)

(assert (=> b!2742470 (=> res!1151418 e!1726889)))

(assert (=> b!2742470 (= res!1151418 (or (not ((_ is Cons!31479) rulesArg!249)) (not ((_ is Nil!31479) (t!227667 rulesArg!249)))))))

(declare-fun lt!971051 () List!31578)

(declare-fun isPrefix!2502 (List!31578 List!31578) Bool)

(assert (=> b!2742470 (isPrefix!2502 lt!971051 lt!971051)))

(declare-datatypes ((Unit!45474 0))(
  ( (Unit!45475) )
))
(declare-fun lt!971054 () Unit!45474)

(declare-fun lemmaIsPrefixRefl!1628 (List!31578 List!31578) Unit!45474)

(assert (=> b!2742470 (= lt!971054 (lemmaIsPrefixRefl!1628 lt!971051 lt!971051))))

(declare-fun input!1326 () BalanceConc!19342)

(declare-fun list!11973 (BalanceConc!19342) List!31578)

(assert (=> b!2742470 (= lt!971051 (list!11973 input!1326))))

(declare-fun b!2742471 () Bool)

(declare-fun lt!971053 () MutLongMap!3563)

(assert (=> b!2742471 (= e!1726880 (and e!1726871 ((_ is LongMap!3563) lt!971053)))))

(assert (=> b!2742471 (= lt!971053 (v!33144 (underlying!7330 (cache!3612 cacheDown!646))))))

(declare-fun b!2742472 () Bool)

(declare-datatypes ((LexerInterface!4416 0))(
  ( (LexerInterfaceExt!4413 (__x!20257 Int)) (Lexer!4414) )
))
(declare-fun thiss!15207 () LexerInterface!4416)

(declare-fun ruleValid!1578 (LexerInterface!4416 Rule!9442) Bool)

(assert (=> b!2742472 (= e!1726889 (ruleValid!1578 thiss!15207 (h!36899 rulesArg!249)))))

(declare-fun b!2742473 () Bool)

(declare-fun res!1151421 () Bool)

(assert (=> b!2742473 (=> (not res!1151421) (not e!1726878))))

(declare-fun rulesValidInductive!1688 (LexerInterface!4416 List!31579) Bool)

(assert (=> b!2742473 (= res!1151421 (rulesValidInductive!1688 thiss!15207 rulesArg!249))))

(assert (=> b!2742474 (= e!1726888 (and tp!862012 tp!862002))))

(declare-fun b!2742475 () Bool)

(declare-fun e!1726892 () Bool)

(declare-fun tp!862005 () Bool)

(declare-fun inv!42818 (Conc!9864) Bool)

(assert (=> b!2742475 (= e!1726892 (and (inv!42818 (c!444749 input!1326)) tp!862005))))

(declare-fun e!1726882 () Bool)

(assert (=> b!2742476 (= e!1726882 (and e!1726884 tp!862009))))

(declare-fun b!2742477 () Bool)

(declare-fun e!1726891 () Bool)

(assert (=> b!2742477 (= e!1726879 e!1726891)))

(declare-fun mapNonEmpty!16266 () Bool)

(declare-fun tp!862000 () Bool)

(declare-fun tp!862010 () Bool)

(assert (=> mapNonEmpty!16266 (= mapRes!16266 (and tp!862000 tp!862010))))

(declare-fun mapKey!16265 () (_ BitVec 32))

(declare-fun mapValue!16265 () List!31580)

(declare-fun mapRest!16265 () (Array (_ BitVec 32) List!31580))

(assert (=> mapNonEmpty!16266 (= (arr!5670 (_values!3844 (v!33143 (underlying!7329 (v!33144 (underlying!7330 (cache!3612 cacheDown!646))))))) (store mapRest!16265 mapKey!16265 mapValue!16265))))

(declare-fun res!1151422 () Bool)

(assert (=> start!265848 (=> (not res!1151422) (not e!1726878))))

(assert (=> start!265848 (= res!1151422 ((_ is Lexer!4414) thiss!15207))))

(assert (=> start!265848 e!1726878))

(declare-fun e!1726877 () Bool)

(declare-fun inv!42819 (CacheDown!2290) Bool)

(assert (=> start!265848 (and (inv!42819 cacheDown!646) e!1726877)))

(declare-fun inv!42820 (BalanceConc!19342) Bool)

(assert (=> start!265848 (and (inv!42820 input!1326) e!1726892)))

(assert (=> start!265848 e!1726883))

(declare-fun e!1726876 () Bool)

(declare-fun inv!42821 (CacheUp!2178) Bool)

(assert (=> start!265848 (and (inv!42821 cacheUp!633) e!1726876)))

(assert (=> start!265848 true))

(declare-fun tp!862013 () Bool)

(declare-fun tp!862004 () Bool)

(declare-fun array_inv!4053 (array!12691) Bool)

(assert (=> b!2742478 (= e!1726891 (and tp!861996 tp!862004 tp!862013 (array_inv!4051 (_keys!3862 (v!33141 (underlying!7327 (v!33142 (underlying!7328 (cache!3611 cacheUp!633))))))) (array_inv!4053 (_values!3843 (v!33141 (underlying!7327 (v!33142 (underlying!7328 (cache!3611 cacheUp!633))))))) e!1726873))))

(declare-fun b!2742479 () Bool)

(assert (=> b!2742479 (= e!1726876 e!1726882)))

(declare-fun b!2742480 () Bool)

(assert (=> b!2742480 (= e!1726877 e!1726881)))

(declare-fun b!2742481 () Bool)

(declare-fun tp!862011 () Bool)

(assert (=> b!2742481 (= e!1726875 (and tp!862011 mapRes!16266))))

(declare-fun condMapEmpty!16265 () Bool)

(declare-fun mapDefault!16266 () List!31580)

(assert (=> b!2742481 (= condMapEmpty!16265 (= (arr!5670 (_values!3844 (v!33143 (underlying!7329 (v!33144 (underlying!7330 (cache!3612 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31580)) mapDefault!16266)))))

(assert (= (and start!265848 res!1151422) b!2742473))

(assert (= (and b!2742473 res!1151421) b!2742460))

(assert (= (and b!2742460 res!1151420) b!2742464))

(assert (= (and b!2742464 res!1151423) b!2742467))

(assert (= (and b!2742467 res!1151419) b!2742470))

(assert (= (and b!2742470 (not res!1151418)) b!2742472))

(assert (= (and b!2742481 condMapEmpty!16265) mapIsEmpty!16265))

(assert (= (and b!2742481 (not condMapEmpty!16265)) mapNonEmpty!16266))

(assert (= b!2742465 b!2742481))

(assert (= b!2742466 b!2742465))

(assert (= b!2742463 b!2742466))

(assert (= (and b!2742471 ((_ is LongMap!3563) (v!33144 (underlying!7330 (cache!3612 cacheDown!646))))) b!2742463))

(assert (= b!2742459 b!2742471))

(assert (= (and b!2742480 ((_ is HashMap!3469) (cache!3612 cacheDown!646))) b!2742459))

(assert (= start!265848 b!2742480))

(assert (= start!265848 b!2742475))

(assert (= b!2742461 b!2742474))

(assert (= b!2742458 b!2742461))

(assert (= (and start!265848 ((_ is Cons!31479) rulesArg!249)) b!2742458))

(assert (= (and b!2742468 condMapEmpty!16266) mapIsEmpty!16266))

(assert (= (and b!2742468 (not condMapEmpty!16266)) mapNonEmpty!16265))

(assert (= b!2742478 b!2742468))

(assert (= b!2742477 b!2742478))

(assert (= b!2742462 b!2742477))

(assert (= (and b!2742469 ((_ is LongMap!3562) (v!33142 (underlying!7328 (cache!3611 cacheUp!633))))) b!2742462))

(assert (= b!2742476 b!2742469))

(assert (= (and b!2742479 ((_ is HashMap!3468) (cache!3611 cacheUp!633))) b!2742476))

(assert (= start!265848 b!2742479))

(declare-fun m!3160391 () Bool)

(assert (=> mapNonEmpty!16265 m!3160391))

(declare-fun m!3160393 () Bool)

(assert (=> mapNonEmpty!16266 m!3160393))

(declare-fun m!3160395 () Bool)

(assert (=> b!2742475 m!3160395))

(declare-fun m!3160397 () Bool)

(assert (=> b!2742478 m!3160397))

(declare-fun m!3160399 () Bool)

(assert (=> b!2742478 m!3160399))

(declare-fun m!3160401 () Bool)

(assert (=> b!2742473 m!3160401))

(declare-fun m!3160403 () Bool)

(assert (=> b!2742460 m!3160403))

(declare-fun m!3160405 () Bool)

(assert (=> b!2742467 m!3160405))

(declare-fun m!3160407 () Bool)

(assert (=> b!2742464 m!3160407))

(declare-fun m!3160409 () Bool)

(assert (=> b!2742470 m!3160409))

(declare-fun m!3160411 () Bool)

(assert (=> b!2742470 m!3160411))

(declare-fun m!3160413 () Bool)

(assert (=> b!2742470 m!3160413))

(declare-fun m!3160415 () Bool)

(assert (=> start!265848 m!3160415))

(declare-fun m!3160417 () Bool)

(assert (=> start!265848 m!3160417))

(declare-fun m!3160419 () Bool)

(assert (=> start!265848 m!3160419))

(declare-fun m!3160421 () Bool)

(assert (=> b!2742461 m!3160421))

(declare-fun m!3160423 () Bool)

(assert (=> b!2742461 m!3160423))

(declare-fun m!3160425 () Bool)

(assert (=> b!2742472 m!3160425))

(declare-fun m!3160427 () Bool)

(assert (=> b!2742465 m!3160427))

(declare-fun m!3160429 () Bool)

(assert (=> b!2742465 m!3160429))

(check-sat b_and!201697 (not b!2742473) (not b!2742475) (not b!2742472) b_and!201707 b_and!201703 (not mapNonEmpty!16265) (not b_next!77691) b_and!201701 (not b!2742458) b_and!201699 b_and!201705 (not b!2742478) (not b!2742461) (not b!2742468) (not b_next!77685) (not b_next!77681) (not b!2742467) (not b_next!77687) (not b!2742460) (not b!2742481) (not b_next!77683) (not start!265848) (not mapNonEmpty!16266) (not b!2742464) (not b_next!77689) (not b!2742465) (not b!2742470))
(check-sat (not b_next!77685) b_and!201697 b_and!201707 (not b_next!77683) b_and!201703 (not b_next!77691) b_and!201701 (not b_next!77689) b_and!201699 b_and!201705 (not b_next!77681) (not b_next!77687))
(get-model)

(declare-fun d!795669 () Bool)

(declare-fun validCacheMapDown!361 (MutableMap!3469) Bool)

(assert (=> d!795669 (= (valid!2767 cacheDown!646) (validCacheMapDown!361 (cache!3612 cacheDown!646)))))

(declare-fun bs!490202 () Bool)

(assert (= bs!490202 d!795669))

(declare-fun m!3160431 () Bool)

(assert (=> bs!490202 m!3160431))

(assert (=> b!2742467 d!795669))

(declare-fun d!795671 () Bool)

(assert (=> d!795671 (= (array_inv!4051 (_keys!3863 (v!33143 (underlying!7329 (v!33144 (underlying!7330 (cache!3612 cacheDown!646))))))) (bvsge (size!24312 (_keys!3863 (v!33143 (underlying!7329 (v!33144 (underlying!7330 (cache!3612 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2742465 d!795671))

(declare-fun d!795673 () Bool)

(assert (=> d!795673 (= (array_inv!4052 (_values!3844 (v!33143 (underlying!7329 (v!33144 (underlying!7330 (cache!3612 cacheDown!646))))))) (bvsge (size!24314 (_values!3844 (v!33143 (underlying!7329 (v!33144 (underlying!7330 (cache!3612 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2742465 d!795673))

(declare-fun d!795675 () Bool)

(declare-fun c!444752 () Bool)

(assert (=> d!795675 (= c!444752 ((_ is Node!9864) (c!444749 input!1326)))))

(declare-fun e!1726898 () Bool)

(assert (=> d!795675 (= (inv!42818 (c!444749 input!1326)) e!1726898)))

(declare-fun b!2742488 () Bool)

(declare-fun inv!42822 (Conc!9864) Bool)

(assert (=> b!2742488 (= e!1726898 (inv!42822 (c!444749 input!1326)))))

(declare-fun b!2742489 () Bool)

(declare-fun e!1726899 () Bool)

(assert (=> b!2742489 (= e!1726898 e!1726899)))

(declare-fun res!1151428 () Bool)

(assert (=> b!2742489 (= res!1151428 (not ((_ is Leaf!15019) (c!444749 input!1326))))))

(assert (=> b!2742489 (=> res!1151428 e!1726899)))

(declare-fun b!2742490 () Bool)

(declare-fun inv!42823 (Conc!9864) Bool)

(assert (=> b!2742490 (= e!1726899 (inv!42823 (c!444749 input!1326)))))

(assert (= (and d!795675 c!444752) b!2742488))

(assert (= (and d!795675 (not c!444752)) b!2742489))

(assert (= (and b!2742489 (not res!1151428)) b!2742490))

(declare-fun m!3160433 () Bool)

(assert (=> b!2742488 m!3160433))

(declare-fun m!3160435 () Bool)

(assert (=> b!2742490 m!3160435))

(assert (=> b!2742475 d!795675))

(declare-fun d!795677 () Bool)

(declare-fun validCacheMapUp!330 (MutableMap!3468) Bool)

(assert (=> d!795677 (= (valid!2766 cacheUp!633) (validCacheMapUp!330 (cache!3611 cacheUp!633)))))

(declare-fun bs!490203 () Bool)

(assert (= bs!490203 d!795677))

(declare-fun m!3160437 () Bool)

(assert (=> bs!490203 m!3160437))

(assert (=> b!2742464 d!795677))

(declare-fun d!795679 () Bool)

(declare-fun res!1151431 () Bool)

(declare-fun e!1726902 () Bool)

(assert (=> d!795679 (=> (not res!1151431) (not e!1726902))))

(assert (=> d!795679 (= res!1151431 ((_ is HashMap!3469) (cache!3612 cacheDown!646)))))

(assert (=> d!795679 (= (inv!42819 cacheDown!646) e!1726902)))

(declare-fun b!2742493 () Bool)

(assert (=> b!2742493 (= e!1726902 (validCacheMapDown!361 (cache!3612 cacheDown!646)))))

(assert (= (and d!795679 res!1151431) b!2742493))

(assert (=> b!2742493 m!3160431))

(assert (=> start!265848 d!795679))

(declare-fun d!795681 () Bool)

(declare-fun isBalanced!3005 (Conc!9864) Bool)

(assert (=> d!795681 (= (inv!42820 input!1326) (isBalanced!3005 (c!444749 input!1326)))))

(declare-fun bs!490204 () Bool)

(assert (= bs!490204 d!795681))

(declare-fun m!3160439 () Bool)

(assert (=> bs!490204 m!3160439))

(assert (=> start!265848 d!795681))

(declare-fun d!795683 () Bool)

(declare-fun res!1151434 () Bool)

(declare-fun e!1726905 () Bool)

(assert (=> d!795683 (=> (not res!1151434) (not e!1726905))))

(assert (=> d!795683 (= res!1151434 ((_ is HashMap!3468) (cache!3611 cacheUp!633)))))

(assert (=> d!795683 (= (inv!42821 cacheUp!633) e!1726905)))

(declare-fun b!2742496 () Bool)

(assert (=> b!2742496 (= e!1726905 (validCacheMapUp!330 (cache!3611 cacheUp!633)))))

(assert (= (and d!795683 res!1151434) b!2742496))

(assert (=> b!2742496 m!3160437))

(assert (=> start!265848 d!795683))

(declare-fun d!795685 () Bool)

(assert (=> d!795685 true))

(declare-fun lt!971057 () Bool)

(declare-fun lambda!100830 () Int)

(declare-fun forall!6572 (List!31579 Int) Bool)

(assert (=> d!795685 (= lt!971057 (forall!6572 rulesArg!249 lambda!100830))))

(declare-fun e!1726911 () Bool)

(assert (=> d!795685 (= lt!971057 e!1726911)))

(declare-fun res!1151440 () Bool)

(assert (=> d!795685 (=> res!1151440 e!1726911)))

(assert (=> d!795685 (= res!1151440 (not ((_ is Cons!31479) rulesArg!249)))))

(assert (=> d!795685 (= (rulesValidInductive!1688 thiss!15207 rulesArg!249) lt!971057)))

(declare-fun b!2742501 () Bool)

(declare-fun e!1726910 () Bool)

(assert (=> b!2742501 (= e!1726911 e!1726910)))

(declare-fun res!1151439 () Bool)

(assert (=> b!2742501 (=> (not res!1151439) (not e!1726910))))

(assert (=> b!2742501 (= res!1151439 (ruleValid!1578 thiss!15207 (h!36899 rulesArg!249)))))

(declare-fun b!2742502 () Bool)

(assert (=> b!2742502 (= e!1726910 (rulesValidInductive!1688 thiss!15207 (t!227667 rulesArg!249)))))

(assert (= (and d!795685 (not res!1151440)) b!2742501))

(assert (= (and b!2742501 res!1151439) b!2742502))

(declare-fun m!3160441 () Bool)

(assert (=> d!795685 m!3160441))

(assert (=> b!2742501 m!3160425))

(declare-fun m!3160443 () Bool)

(assert (=> b!2742502 m!3160443))

(assert (=> b!2742473 d!795685))

(declare-fun d!795687 () Bool)

(declare-fun res!1151445 () Bool)

(declare-fun e!1726914 () Bool)

(assert (=> d!795687 (=> (not res!1151445) (not e!1726914))))

(declare-fun validRegex!3315 (Regex!7973) Bool)

(assert (=> d!795687 (= res!1151445 (validRegex!3315 (regex!4821 (h!36899 rulesArg!249))))))

(assert (=> d!795687 (= (ruleValid!1578 thiss!15207 (h!36899 rulesArg!249)) e!1726914)))

(declare-fun b!2742509 () Bool)

(declare-fun res!1151446 () Bool)

(assert (=> b!2742509 (=> (not res!1151446) (not e!1726914))))

(declare-fun nullable!2606 (Regex!7973) Bool)

(assert (=> b!2742509 (= res!1151446 (not (nullable!2606 (regex!4821 (h!36899 rulesArg!249)))))))

(declare-fun b!2742510 () Bool)

(assert (=> b!2742510 (= e!1726914 (not (= (tag!5325 (h!36899 rulesArg!249)) (String!35116 ""))))))

(assert (= (and d!795687 res!1151445) b!2742509))

(assert (= (and b!2742509 res!1151446) b!2742510))

(declare-fun m!3160445 () Bool)

(assert (=> d!795687 m!3160445))

(declare-fun m!3160447 () Bool)

(assert (=> b!2742509 m!3160447))

(assert (=> b!2742472 d!795687))

(declare-fun d!795689 () Bool)

(assert (=> d!795689 (= (inv!42816 (tag!5325 (h!36899 rulesArg!249))) (= (mod (str.len (value!155005 (tag!5325 (h!36899 rulesArg!249)))) 2) 0))))

(assert (=> b!2742461 d!795689))

(declare-fun d!795691 () Bool)

(declare-fun res!1151449 () Bool)

(declare-fun e!1726917 () Bool)

(assert (=> d!795691 (=> (not res!1151449) (not e!1726917))))

(declare-fun semiInverseModEq!1992 (Int Int) Bool)

(assert (=> d!795691 (= res!1151449 (semiInverseModEq!1992 (toChars!6678 (transformation!4821 (h!36899 rulesArg!249))) (toValue!6819 (transformation!4821 (h!36899 rulesArg!249)))))))

(assert (=> d!795691 (= (inv!42817 (transformation!4821 (h!36899 rulesArg!249))) e!1726917)))

(declare-fun b!2742513 () Bool)

(declare-fun equivClasses!1893 (Int Int) Bool)

(assert (=> b!2742513 (= e!1726917 (equivClasses!1893 (toChars!6678 (transformation!4821 (h!36899 rulesArg!249))) (toValue!6819 (transformation!4821 (h!36899 rulesArg!249)))))))

(assert (= (and d!795691 res!1151449) b!2742513))

(declare-fun m!3160449 () Bool)

(assert (=> d!795691 m!3160449))

(declare-fun m!3160451 () Bool)

(assert (=> b!2742513 m!3160451))

(assert (=> b!2742461 d!795691))

(declare-fun b!2742525 () Bool)

(declare-fun e!1726924 () Bool)

(declare-fun size!24315 (List!31578) Int)

(assert (=> b!2742525 (= e!1726924 (>= (size!24315 lt!971051) (size!24315 lt!971051)))))

(declare-fun b!2742524 () Bool)

(declare-fun e!1726925 () Bool)

(declare-fun tail!4345 (List!31578) List!31578)

(assert (=> b!2742524 (= e!1726925 (isPrefix!2502 (tail!4345 lt!971051) (tail!4345 lt!971051)))))

(declare-fun b!2742523 () Bool)

(declare-fun res!1151458 () Bool)

(assert (=> b!2742523 (=> (not res!1151458) (not e!1726925))))

(declare-fun head!6107 (List!31578) C!16104)

(assert (=> b!2742523 (= res!1151458 (= (head!6107 lt!971051) (head!6107 lt!971051)))))

(declare-fun b!2742522 () Bool)

(declare-fun e!1726926 () Bool)

(assert (=> b!2742522 (= e!1726926 e!1726925)))

(declare-fun res!1151461 () Bool)

(assert (=> b!2742522 (=> (not res!1151461) (not e!1726925))))

(assert (=> b!2742522 (= res!1151461 (not ((_ is Nil!31478) lt!971051)))))

(declare-fun d!795693 () Bool)

(assert (=> d!795693 e!1726924))

(declare-fun res!1151460 () Bool)

(assert (=> d!795693 (=> res!1151460 e!1726924)))

(declare-fun lt!971060 () Bool)

(assert (=> d!795693 (= res!1151460 (not lt!971060))))

(assert (=> d!795693 (= lt!971060 e!1726926)))

(declare-fun res!1151459 () Bool)

(assert (=> d!795693 (=> res!1151459 e!1726926)))

(assert (=> d!795693 (= res!1151459 ((_ is Nil!31478) lt!971051))))

(assert (=> d!795693 (= (isPrefix!2502 lt!971051 lt!971051) lt!971060)))

(assert (= (and d!795693 (not res!1151459)) b!2742522))

(assert (= (and b!2742522 res!1151461) b!2742523))

(assert (= (and b!2742523 res!1151458) b!2742524))

(assert (= (and d!795693 (not res!1151460)) b!2742525))

(declare-fun m!3160453 () Bool)

(assert (=> b!2742525 m!3160453))

(assert (=> b!2742525 m!3160453))

(declare-fun m!3160455 () Bool)

(assert (=> b!2742524 m!3160455))

(assert (=> b!2742524 m!3160455))

(assert (=> b!2742524 m!3160455))

(assert (=> b!2742524 m!3160455))

(declare-fun m!3160457 () Bool)

(assert (=> b!2742524 m!3160457))

(declare-fun m!3160459 () Bool)

(assert (=> b!2742523 m!3160459))

(assert (=> b!2742523 m!3160459))

(assert (=> b!2742470 d!795693))

(declare-fun d!795695 () Bool)

(assert (=> d!795695 (isPrefix!2502 lt!971051 lt!971051)))

(declare-fun lt!971063 () Unit!45474)

(declare-fun choose!16060 (List!31578 List!31578) Unit!45474)

(assert (=> d!795695 (= lt!971063 (choose!16060 lt!971051 lt!971051))))

(assert (=> d!795695 (= (lemmaIsPrefixRefl!1628 lt!971051 lt!971051) lt!971063)))

(declare-fun bs!490205 () Bool)

(assert (= bs!490205 d!795695))

(assert (=> bs!490205 m!3160409))

(declare-fun m!3160461 () Bool)

(assert (=> bs!490205 m!3160461))

(assert (=> b!2742470 d!795695))

(declare-fun d!795697 () Bool)

(declare-fun list!11974 (Conc!9864) List!31578)

(assert (=> d!795697 (= (list!11973 input!1326) (list!11974 (c!444749 input!1326)))))

(declare-fun bs!490206 () Bool)

(assert (= bs!490206 d!795697))

(declare-fun m!3160463 () Bool)

(assert (=> bs!490206 m!3160463))

(assert (=> b!2742470 d!795697))

(declare-fun d!795699 () Bool)

(assert (=> d!795699 (= (isEmpty!18011 rulesArg!249) ((_ is Nil!31479) rulesArg!249))))

(assert (=> b!2742460 d!795699))

(declare-fun d!795701 () Bool)

(assert (=> d!795701 (= (array_inv!4051 (_keys!3862 (v!33141 (underlying!7327 (v!33142 (underlying!7328 (cache!3611 cacheUp!633))))))) (bvsge (size!24312 (_keys!3862 (v!33141 (underlying!7327 (v!33142 (underlying!7328 (cache!3611 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2742478 d!795701))

(declare-fun d!795703 () Bool)

(assert (=> d!795703 (= (array_inv!4053 (_values!3843 (v!33141 (underlying!7327 (v!33142 (underlying!7328 (cache!3611 cacheUp!633))))))) (bvsge (size!24313 (_values!3843 (v!33141 (underlying!7327 (v!33142 (underlying!7328 (cache!3611 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2742478 d!795703))

(declare-fun setElem!21456 () Context!4382)

(declare-fun setNonEmpty!21455 () Bool)

(declare-fun e!1726939 () Bool)

(declare-fun setRes!21455 () Bool)

(declare-fun tp!862046 () Bool)

(declare-fun inv!42824 (Context!4382) Bool)

(assert (=> setNonEmpty!21455 (= setRes!21455 (and tp!862046 (inv!42824 setElem!21456) e!1726939))))

(declare-fun mapValue!16269 () List!31580)

(declare-fun setRest!21455 () (InoxSet Context!4382))

(assert (=> setNonEmpty!21455 (= (_2!18265 (h!36900 mapValue!16269)) ((_ map or) (store ((as const (Array Context!4382 Bool)) false) setElem!21456 true) setRest!21455))))

(declare-fun b!2742540 () Bool)

(declare-fun e!1726944 () Bool)

(declare-fun tp!862042 () Bool)

(assert (=> b!2742540 (= e!1726944 tp!862042)))

(declare-fun condMapEmpty!16269 () Bool)

(declare-fun mapDefault!16269 () List!31580)

(assert (=> mapNonEmpty!16266 (= condMapEmpty!16269 (= mapRest!16265 ((as const (Array (_ BitVec 32) List!31580)) mapDefault!16269)))))

(declare-fun e!1726941 () Bool)

(declare-fun mapRes!16269 () Bool)

(assert (=> mapNonEmpty!16266 (= tp!862000 (and e!1726941 mapRes!16269))))

(declare-fun b!2742541 () Bool)

(declare-fun e!1726943 () Bool)

(declare-fun tp!862040 () Bool)

(assert (=> b!2742541 (= e!1726943 tp!862040)))

(declare-fun mapIsEmpty!16269 () Bool)

(assert (=> mapIsEmpty!16269 mapRes!16269))

(declare-fun mapNonEmpty!16269 () Bool)

(declare-fun tp!862045 () Bool)

(declare-fun e!1726942 () Bool)

(assert (=> mapNonEmpty!16269 (= mapRes!16269 (and tp!862045 e!1726942))))

(declare-fun mapKey!16269 () (_ BitVec 32))

(declare-fun mapRest!16269 () (Array (_ BitVec 32) List!31580))

(assert (=> mapNonEmpty!16269 (= mapRest!16265 (store mapRest!16269 mapKey!16269 mapValue!16269))))

(declare-fun b!2742542 () Bool)

(declare-fun tp!862041 () Bool)

(assert (=> b!2742542 (= e!1726939 tp!862041)))

(declare-fun tp!862037 () Bool)

(declare-fun setElem!21455 () Context!4382)

(declare-fun setNonEmpty!21456 () Bool)

(declare-fun setRes!21456 () Bool)

(assert (=> setNonEmpty!21456 (= setRes!21456 (and tp!862037 (inv!42824 setElem!21455) e!1726944))))

(declare-fun setRest!21456 () (InoxSet Context!4382))

(assert (=> setNonEmpty!21456 (= (_2!18265 (h!36900 mapDefault!16269)) ((_ map or) (store ((as const (Array Context!4382 Bool)) false) setElem!21455 true) setRest!21456))))

(declare-fun tp!862044 () Bool)

(declare-fun tp_is_empty!13915 () Bool)

(declare-fun b!2742543 () Bool)

(declare-fun e!1726940 () Bool)

(declare-fun tp!862039 () Bool)

(assert (=> b!2742543 (= e!1726942 (and tp!862039 (inv!42824 (_2!18264 (_1!18265 (h!36900 mapValue!16269)))) e!1726940 tp_is_empty!13915 setRes!21455 tp!862044))))

(declare-fun condSetEmpty!21456 () Bool)

(assert (=> b!2742543 (= condSetEmpty!21456 (= (_2!18265 (h!36900 mapValue!16269)) ((as const (Array Context!4382 Bool)) false)))))

(declare-fun setIsEmpty!21455 () Bool)

(assert (=> setIsEmpty!21455 setRes!21455))

(declare-fun b!2742544 () Bool)

(declare-fun tp!862036 () Bool)

(declare-fun tp!862038 () Bool)

(assert (=> b!2742544 (= e!1726941 (and tp!862036 (inv!42824 (_2!18264 (_1!18265 (h!36900 mapDefault!16269)))) e!1726943 tp_is_empty!13915 setRes!21456 tp!862038))))

(declare-fun condSetEmpty!21455 () Bool)

(assert (=> b!2742544 (= condSetEmpty!21455 (= (_2!18265 (h!36900 mapDefault!16269)) ((as const (Array Context!4382 Bool)) false)))))

(declare-fun b!2742545 () Bool)

(declare-fun tp!862043 () Bool)

(assert (=> b!2742545 (= e!1726940 tp!862043)))

(declare-fun setIsEmpty!21456 () Bool)

(assert (=> setIsEmpty!21456 setRes!21456))

(assert (= (and mapNonEmpty!16266 condMapEmpty!16269) mapIsEmpty!16269))

(assert (= (and mapNonEmpty!16266 (not condMapEmpty!16269)) mapNonEmpty!16269))

(assert (= b!2742543 b!2742545))

(assert (= (and b!2742543 condSetEmpty!21456) setIsEmpty!21455))

(assert (= (and b!2742543 (not condSetEmpty!21456)) setNonEmpty!21455))

(assert (= setNonEmpty!21455 b!2742542))

(assert (= (and mapNonEmpty!16269 ((_ is Cons!31480) mapValue!16269)) b!2742543))

(assert (= b!2742544 b!2742541))

(assert (= (and b!2742544 condSetEmpty!21455) setIsEmpty!21456))

(assert (= (and b!2742544 (not condSetEmpty!21455)) setNonEmpty!21456))

(assert (= setNonEmpty!21456 b!2742540))

(assert (= (and mapNonEmpty!16266 ((_ is Cons!31480) mapDefault!16269)) b!2742544))

(declare-fun m!3160465 () Bool)

(assert (=> setNonEmpty!21455 m!3160465))

(declare-fun m!3160467 () Bool)

(assert (=> mapNonEmpty!16269 m!3160467))

(declare-fun m!3160469 () Bool)

(assert (=> b!2742543 m!3160469))

(declare-fun m!3160471 () Bool)

(assert (=> b!2742544 m!3160471))

(declare-fun m!3160473 () Bool)

(assert (=> setNonEmpty!21456 m!3160473))

(declare-fun b!2742554 () Bool)

(declare-fun e!1726952 () Bool)

(declare-fun tp!862061 () Bool)

(assert (=> b!2742554 (= e!1726952 tp!862061)))

(declare-fun b!2742555 () Bool)

(declare-fun e!1726951 () Bool)

(declare-fun tp!862057 () Bool)

(assert (=> b!2742555 (= e!1726951 tp!862057)))

(declare-fun setRes!21459 () Bool)

(declare-fun e!1726953 () Bool)

(declare-fun b!2742556 () Bool)

(declare-fun tp!862058 () Bool)

(declare-fun tp!862060 () Bool)

(assert (=> b!2742556 (= e!1726953 (and tp!862060 (inv!42824 (_2!18264 (_1!18265 (h!36900 mapValue!16265)))) e!1726952 tp_is_empty!13915 setRes!21459 tp!862058))))

(declare-fun condSetEmpty!21459 () Bool)

(assert (=> b!2742556 (= condSetEmpty!21459 (= (_2!18265 (h!36900 mapValue!16265)) ((as const (Array Context!4382 Bool)) false)))))

(declare-fun setIsEmpty!21459 () Bool)

(assert (=> setIsEmpty!21459 setRes!21459))

(assert (=> mapNonEmpty!16266 (= tp!862010 e!1726953)))

(declare-fun tp!862059 () Bool)

(declare-fun setElem!21459 () Context!4382)

(declare-fun setNonEmpty!21459 () Bool)

(assert (=> setNonEmpty!21459 (= setRes!21459 (and tp!862059 (inv!42824 setElem!21459) e!1726951))))

(declare-fun setRest!21459 () (InoxSet Context!4382))

(assert (=> setNonEmpty!21459 (= (_2!18265 (h!36900 mapValue!16265)) ((_ map or) (store ((as const (Array Context!4382 Bool)) false) setElem!21459 true) setRest!21459))))

(assert (= b!2742556 b!2742554))

(assert (= (and b!2742556 condSetEmpty!21459) setIsEmpty!21459))

(assert (= (and b!2742556 (not condSetEmpty!21459)) setNonEmpty!21459))

(assert (= setNonEmpty!21459 b!2742555))

(assert (= (and mapNonEmpty!16266 ((_ is Cons!31480) mapValue!16265)) b!2742556))

(declare-fun m!3160475 () Bool)

(assert (=> b!2742556 m!3160475))

(declare-fun m!3160477 () Bool)

(assert (=> setNonEmpty!21459 m!3160477))

(declare-fun b!2742567 () Bool)

(declare-fun b_free!76989 () Bool)

(declare-fun b_next!77693 () Bool)

(assert (=> b!2742567 (= b_free!76989 (not b_next!77693))))

(declare-fun tp!862070 () Bool)

(declare-fun b_and!201709 () Bool)

(assert (=> b!2742567 (= tp!862070 b_and!201709)))

(declare-fun b_free!76991 () Bool)

(declare-fun b_next!77695 () Bool)

(assert (=> b!2742567 (= b_free!76991 (not b_next!77695))))

(declare-fun tp!862073 () Bool)

(declare-fun b_and!201711 () Bool)

(assert (=> b!2742567 (= tp!862073 b_and!201711)))

(declare-fun e!1726963 () Bool)

(assert (=> b!2742567 (= e!1726963 (and tp!862070 tp!862073))))

(declare-fun e!1726965 () Bool)

(declare-fun b!2742566 () Bool)

(declare-fun tp!862071 () Bool)

(assert (=> b!2742566 (= e!1726965 (and tp!862071 (inv!42816 (tag!5325 (h!36899 (t!227667 rulesArg!249)))) (inv!42817 (transformation!4821 (h!36899 (t!227667 rulesArg!249)))) e!1726963))))

(declare-fun b!2742565 () Bool)

(declare-fun e!1726964 () Bool)

(declare-fun tp!862072 () Bool)

(assert (=> b!2742565 (= e!1726964 (and e!1726965 tp!862072))))

(assert (=> b!2742458 (= tp!861998 e!1726964)))

(assert (= b!2742566 b!2742567))

(assert (= b!2742565 b!2742566))

(assert (= (and b!2742458 ((_ is Cons!31479) (t!227667 rulesArg!249))) b!2742565))

(declare-fun m!3160479 () Bool)

(assert (=> b!2742566 m!3160479))

(declare-fun m!3160481 () Bool)

(assert (=> b!2742566 m!3160481))

(declare-fun b!2742568 () Bool)

(declare-fun e!1726967 () Bool)

(declare-fun tp!862078 () Bool)

(assert (=> b!2742568 (= e!1726967 tp!862078)))

(declare-fun b!2742569 () Bool)

(declare-fun e!1726966 () Bool)

(declare-fun tp!862074 () Bool)

(assert (=> b!2742569 (= e!1726966 tp!862074)))

(declare-fun tp!862077 () Bool)

(declare-fun b!2742570 () Bool)

(declare-fun tp!862075 () Bool)

(declare-fun setRes!21460 () Bool)

(declare-fun e!1726968 () Bool)

(assert (=> b!2742570 (= e!1726968 (and tp!862077 (inv!42824 (_2!18264 (_1!18265 (h!36900 mapDefault!16266)))) e!1726967 tp_is_empty!13915 setRes!21460 tp!862075))))

(declare-fun condSetEmpty!21460 () Bool)

(assert (=> b!2742570 (= condSetEmpty!21460 (= (_2!18265 (h!36900 mapDefault!16266)) ((as const (Array Context!4382 Bool)) false)))))

(declare-fun setIsEmpty!21460 () Bool)

(assert (=> setIsEmpty!21460 setRes!21460))

(assert (=> b!2742481 (= tp!862011 e!1726968)))

(declare-fun tp!862076 () Bool)

(declare-fun setNonEmpty!21460 () Bool)

(declare-fun setElem!21460 () Context!4382)

(assert (=> setNonEmpty!21460 (= setRes!21460 (and tp!862076 (inv!42824 setElem!21460) e!1726966))))

(declare-fun setRest!21460 () (InoxSet Context!4382))

(assert (=> setNonEmpty!21460 (= (_2!18265 (h!36900 mapDefault!16266)) ((_ map or) (store ((as const (Array Context!4382 Bool)) false) setElem!21460 true) setRest!21460))))

(assert (= b!2742570 b!2742568))

(assert (= (and b!2742570 condSetEmpty!21460) setIsEmpty!21460))

(assert (= (and b!2742570 (not condSetEmpty!21460)) setNonEmpty!21460))

(assert (= setNonEmpty!21460 b!2742569))

(assert (= (and b!2742481 ((_ is Cons!31480) mapDefault!16266)) b!2742570))

(declare-fun m!3160483 () Bool)

(assert (=> b!2742570 m!3160483))

(declare-fun m!3160485 () Bool)

(assert (=> setNonEmpty!21460 m!3160485))

(declare-fun e!1726971 () Bool)

(assert (=> b!2742461 (= tp!862007 e!1726971)))

(declare-fun b!2742583 () Bool)

(declare-fun tp!862089 () Bool)

(assert (=> b!2742583 (= e!1726971 tp!862089)))

(declare-fun b!2742581 () Bool)

(assert (=> b!2742581 (= e!1726971 tp_is_empty!13915)))

(declare-fun b!2742584 () Bool)

(declare-fun tp!862091 () Bool)

(declare-fun tp!862093 () Bool)

(assert (=> b!2742584 (= e!1726971 (and tp!862091 tp!862093))))

(declare-fun b!2742582 () Bool)

(declare-fun tp!862090 () Bool)

(declare-fun tp!862092 () Bool)

(assert (=> b!2742582 (= e!1726971 (and tp!862090 tp!862092))))

(assert (= (and b!2742461 ((_ is ElementMatch!7973) (regex!4821 (h!36899 rulesArg!249)))) b!2742581))

(assert (= (and b!2742461 ((_ is Concat!13016) (regex!4821 (h!36899 rulesArg!249)))) b!2742582))

(assert (= (and b!2742461 ((_ is Star!7973) (regex!4821 (h!36899 rulesArg!249)))) b!2742583))

(assert (= (and b!2742461 ((_ is Union!7973) (regex!4821 (h!36899 rulesArg!249)))) b!2742584))

(declare-fun e!1726986 () Bool)

(declare-fun e!1726988 () Bool)

(declare-fun setRes!21466 () Bool)

(declare-fun mapValue!16272 () List!31576)

(declare-fun tp!862112 () Bool)

(declare-fun b!2742599 () Bool)

(assert (=> b!2742599 (= e!1726986 (and (inv!42824 (_1!18262 (_1!18263 (h!36896 mapValue!16272)))) e!1726988 tp_is_empty!13915 setRes!21466 tp!862112))))

(declare-fun condSetEmpty!21465 () Bool)

(assert (=> b!2742599 (= condSetEmpty!21465 (= (_2!18263 (h!36896 mapValue!16272)) ((as const (Array Context!4382 Bool)) false)))))

(declare-fun e!1726989 () Bool)

(declare-fun tp!862118 () Bool)

(declare-fun setElem!21465 () Context!4382)

(declare-fun setNonEmpty!21465 () Bool)

(assert (=> setNonEmpty!21465 (= setRes!21466 (and tp!862118 (inv!42824 setElem!21465) e!1726989))))

(declare-fun setRest!21466 () (InoxSet Context!4382))

(assert (=> setNonEmpty!21465 (= (_2!18263 (h!36896 mapValue!16272)) ((_ map or) (store ((as const (Array Context!4382 Bool)) false) setElem!21465 true) setRest!21466))))

(declare-fun setIsEmpty!21465 () Bool)

(declare-fun setRes!21465 () Bool)

(assert (=> setIsEmpty!21465 setRes!21465))

(declare-fun mapIsEmpty!16272 () Bool)

(declare-fun mapRes!16272 () Bool)

(assert (=> mapIsEmpty!16272 mapRes!16272))

(declare-fun b!2742600 () Bool)

(declare-fun e!1726984 () Bool)

(declare-fun tp!862115 () Bool)

(assert (=> b!2742600 (= e!1726984 tp!862115)))

(declare-fun mapNonEmpty!16272 () Bool)

(declare-fun tp!862120 () Bool)

(assert (=> mapNonEmpty!16272 (= mapRes!16272 (and tp!862120 e!1726986))))

(declare-fun mapRest!16272 () (Array (_ BitVec 32) List!31576))

(declare-fun mapKey!16272 () (_ BitVec 32))

(assert (=> mapNonEmpty!16272 (= mapRest!16266 (store mapRest!16272 mapKey!16272 mapValue!16272))))

(declare-fun setIsEmpty!21466 () Bool)

(assert (=> setIsEmpty!21466 setRes!21466))

(declare-fun b!2742602 () Bool)

(declare-fun mapDefault!16272 () List!31576)

(declare-fun e!1726987 () Bool)

(declare-fun tp!862114 () Bool)

(assert (=> b!2742602 (= e!1726987 (and (inv!42824 (_1!18262 (_1!18263 (h!36896 mapDefault!16272)))) e!1726984 tp_is_empty!13915 setRes!21465 tp!862114))))

(declare-fun condSetEmpty!21466 () Bool)

(assert (=> b!2742602 (= condSetEmpty!21466 (= (_2!18263 (h!36896 mapDefault!16272)) ((as const (Array Context!4382 Bool)) false)))))

(declare-fun setElem!21466 () Context!4382)

(declare-fun setNonEmpty!21466 () Bool)

(declare-fun e!1726985 () Bool)

(declare-fun tp!862117 () Bool)

(assert (=> setNonEmpty!21466 (= setRes!21465 (and tp!862117 (inv!42824 setElem!21466) e!1726985))))

(declare-fun setRest!21465 () (InoxSet Context!4382))

(assert (=> setNonEmpty!21466 (= (_2!18263 (h!36896 mapDefault!16272)) ((_ map or) (store ((as const (Array Context!4382 Bool)) false) setElem!21466 true) setRest!21465))))

(declare-fun b!2742603 () Bool)

(declare-fun tp!862119 () Bool)

(assert (=> b!2742603 (= e!1726989 tp!862119)))

(declare-fun b!2742604 () Bool)

(declare-fun tp!862116 () Bool)

(assert (=> b!2742604 (= e!1726985 tp!862116)))

(declare-fun b!2742601 () Bool)

(declare-fun tp!862113 () Bool)

(assert (=> b!2742601 (= e!1726988 tp!862113)))

(declare-fun condMapEmpty!16272 () Bool)

(assert (=> mapNonEmpty!16265 (= condMapEmpty!16272 (= mapRest!16266 ((as const (Array (_ BitVec 32) List!31576)) mapDefault!16272)))))

(assert (=> mapNonEmpty!16265 (= tp!861997 (and e!1726987 mapRes!16272))))

(assert (= (and mapNonEmpty!16265 condMapEmpty!16272) mapIsEmpty!16272))

(assert (= (and mapNonEmpty!16265 (not condMapEmpty!16272)) mapNonEmpty!16272))

(assert (= b!2742599 b!2742601))

(assert (= (and b!2742599 condSetEmpty!21465) setIsEmpty!21466))

(assert (= (and b!2742599 (not condSetEmpty!21465)) setNonEmpty!21465))

(assert (= setNonEmpty!21465 b!2742603))

(assert (= (and mapNonEmpty!16272 ((_ is Cons!31476) mapValue!16272)) b!2742599))

(assert (= b!2742602 b!2742600))

(assert (= (and b!2742602 condSetEmpty!21466) setIsEmpty!21465))

(assert (= (and b!2742602 (not condSetEmpty!21466)) setNonEmpty!21466))

(assert (= setNonEmpty!21466 b!2742604))

(assert (= (and mapNonEmpty!16265 ((_ is Cons!31476) mapDefault!16272)) b!2742602))

(declare-fun m!3160487 () Bool)

(assert (=> b!2742599 m!3160487))

(declare-fun m!3160489 () Bool)

(assert (=> b!2742602 m!3160489))

(declare-fun m!3160491 () Bool)

(assert (=> setNonEmpty!21466 m!3160491))

(declare-fun m!3160493 () Bool)

(assert (=> mapNonEmpty!16272 m!3160493))

(declare-fun m!3160495 () Bool)

(assert (=> setNonEmpty!21465 m!3160495))

(declare-fun setRes!21469 () Bool)

(declare-fun setElem!21469 () Context!4382)

(declare-fun setNonEmpty!21469 () Bool)

(declare-fun e!1726998 () Bool)

(declare-fun tp!862131 () Bool)

(assert (=> setNonEmpty!21469 (= setRes!21469 (and tp!862131 (inv!42824 setElem!21469) e!1726998))))

(declare-fun setRest!21469 () (InoxSet Context!4382))

(assert (=> setNonEmpty!21469 (= (_2!18263 (h!36896 mapValue!16266)) ((_ map or) (store ((as const (Array Context!4382 Bool)) false) setElem!21469 true) setRest!21469))))

(declare-fun e!1726997 () Bool)

(assert (=> mapNonEmpty!16265 (= tp!862006 e!1726997)))

(declare-fun setIsEmpty!21469 () Bool)

(assert (=> setIsEmpty!21469 setRes!21469))

(declare-fun b!2742613 () Bool)

(declare-fun tp!862130 () Bool)

(assert (=> b!2742613 (= e!1726998 tp!862130)))

(declare-fun e!1726996 () Bool)

(declare-fun b!2742614 () Bool)

(declare-fun tp!862129 () Bool)

(assert (=> b!2742614 (= e!1726997 (and (inv!42824 (_1!18262 (_1!18263 (h!36896 mapValue!16266)))) e!1726996 tp_is_empty!13915 setRes!21469 tp!862129))))

(declare-fun condSetEmpty!21469 () Bool)

(assert (=> b!2742614 (= condSetEmpty!21469 (= (_2!18263 (h!36896 mapValue!16266)) ((as const (Array Context!4382 Bool)) false)))))

(declare-fun b!2742615 () Bool)

(declare-fun tp!862132 () Bool)

(assert (=> b!2742615 (= e!1726996 tp!862132)))

(assert (= b!2742614 b!2742615))

(assert (= (and b!2742614 condSetEmpty!21469) setIsEmpty!21469))

(assert (= (and b!2742614 (not condSetEmpty!21469)) setNonEmpty!21469))

(assert (= setNonEmpty!21469 b!2742613))

(assert (= (and mapNonEmpty!16265 ((_ is Cons!31476) mapValue!16266)) b!2742614))

(declare-fun m!3160497 () Bool)

(assert (=> setNonEmpty!21469 m!3160497))

(declare-fun m!3160499 () Bool)

(assert (=> b!2742614 m!3160499))

(declare-fun b!2742616 () Bool)

(declare-fun e!1727000 () Bool)

(declare-fun tp!862137 () Bool)

(assert (=> b!2742616 (= e!1727000 tp!862137)))

(declare-fun b!2742617 () Bool)

(declare-fun e!1726999 () Bool)

(declare-fun tp!862133 () Bool)

(assert (=> b!2742617 (= e!1726999 tp!862133)))

(declare-fun tp!862134 () Bool)

(declare-fun b!2742618 () Bool)

(declare-fun tp!862136 () Bool)

(declare-fun e!1727001 () Bool)

(declare-fun setRes!21470 () Bool)

(assert (=> b!2742618 (= e!1727001 (and tp!862136 (inv!42824 (_2!18264 (_1!18265 (h!36900 (zeroValue!3822 (v!33143 (underlying!7329 (v!33144 (underlying!7330 (cache!3612 cacheDown!646)))))))))) e!1727000 tp_is_empty!13915 setRes!21470 tp!862134))))

(declare-fun condSetEmpty!21470 () Bool)

(assert (=> b!2742618 (= condSetEmpty!21470 (= (_2!18265 (h!36900 (zeroValue!3822 (v!33143 (underlying!7329 (v!33144 (underlying!7330 (cache!3612 cacheDown!646)))))))) ((as const (Array Context!4382 Bool)) false)))))

(declare-fun setIsEmpty!21470 () Bool)

(assert (=> setIsEmpty!21470 setRes!21470))

(assert (=> b!2742465 (= tp!862001 e!1727001)))

(declare-fun setElem!21470 () Context!4382)

(declare-fun setNonEmpty!21470 () Bool)

(declare-fun tp!862135 () Bool)

(assert (=> setNonEmpty!21470 (= setRes!21470 (and tp!862135 (inv!42824 setElem!21470) e!1726999))))

(declare-fun setRest!21470 () (InoxSet Context!4382))

(assert (=> setNonEmpty!21470 (= (_2!18265 (h!36900 (zeroValue!3822 (v!33143 (underlying!7329 (v!33144 (underlying!7330 (cache!3612 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4382 Bool)) false) setElem!21470 true) setRest!21470))))

(assert (= b!2742618 b!2742616))

(assert (= (and b!2742618 condSetEmpty!21470) setIsEmpty!21470))

(assert (= (and b!2742618 (not condSetEmpty!21470)) setNonEmpty!21470))

(assert (= setNonEmpty!21470 b!2742617))

(assert (= (and b!2742465 ((_ is Cons!31480) (zeroValue!3822 (v!33143 (underlying!7329 (v!33144 (underlying!7330 (cache!3612 cacheDown!646)))))))) b!2742618))

(declare-fun m!3160501 () Bool)

(assert (=> b!2742618 m!3160501))

(declare-fun m!3160503 () Bool)

(assert (=> setNonEmpty!21470 m!3160503))

(declare-fun b!2742619 () Bool)

(declare-fun e!1727003 () Bool)

(declare-fun tp!862142 () Bool)

(assert (=> b!2742619 (= e!1727003 tp!862142)))

(declare-fun b!2742620 () Bool)

(declare-fun e!1727002 () Bool)

(declare-fun tp!862138 () Bool)

(assert (=> b!2742620 (= e!1727002 tp!862138)))

(declare-fun tp!862141 () Bool)

(declare-fun tp!862139 () Bool)

(declare-fun b!2742621 () Bool)

(declare-fun setRes!21471 () Bool)

(declare-fun e!1727004 () Bool)

(assert (=> b!2742621 (= e!1727004 (and tp!862141 (inv!42824 (_2!18264 (_1!18265 (h!36900 (minValue!3822 (v!33143 (underlying!7329 (v!33144 (underlying!7330 (cache!3612 cacheDown!646)))))))))) e!1727003 tp_is_empty!13915 setRes!21471 tp!862139))))

(declare-fun condSetEmpty!21471 () Bool)

(assert (=> b!2742621 (= condSetEmpty!21471 (= (_2!18265 (h!36900 (minValue!3822 (v!33143 (underlying!7329 (v!33144 (underlying!7330 (cache!3612 cacheDown!646)))))))) ((as const (Array Context!4382 Bool)) false)))))

(declare-fun setIsEmpty!21471 () Bool)

(assert (=> setIsEmpty!21471 setRes!21471))

(assert (=> b!2742465 (= tp!862008 e!1727004)))

(declare-fun setElem!21471 () Context!4382)

(declare-fun setNonEmpty!21471 () Bool)

(declare-fun tp!862140 () Bool)

(assert (=> setNonEmpty!21471 (= setRes!21471 (and tp!862140 (inv!42824 setElem!21471) e!1727002))))

(declare-fun setRest!21471 () (InoxSet Context!4382))

(assert (=> setNonEmpty!21471 (= (_2!18265 (h!36900 (minValue!3822 (v!33143 (underlying!7329 (v!33144 (underlying!7330 (cache!3612 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4382 Bool)) false) setElem!21471 true) setRest!21471))))

(assert (= b!2742621 b!2742619))

(assert (= (and b!2742621 condSetEmpty!21471) setIsEmpty!21471))

(assert (= (and b!2742621 (not condSetEmpty!21471)) setNonEmpty!21471))

(assert (= setNonEmpty!21471 b!2742620))

(assert (= (and b!2742465 ((_ is Cons!31480) (minValue!3822 (v!33143 (underlying!7329 (v!33144 (underlying!7330 (cache!3612 cacheDown!646)))))))) b!2742621))

(declare-fun m!3160505 () Bool)

(assert (=> b!2742621 m!3160505))

(declare-fun m!3160507 () Bool)

(assert (=> setNonEmpty!21471 m!3160507))

(declare-fun tp!862149 () Bool)

(declare-fun e!1727010 () Bool)

(declare-fun b!2742630 () Bool)

(declare-fun tp!862150 () Bool)

(assert (=> b!2742630 (= e!1727010 (and (inv!42818 (left!24184 (c!444749 input!1326))) tp!862150 (inv!42818 (right!24514 (c!444749 input!1326))) tp!862149))))

(declare-fun b!2742632 () Bool)

(declare-fun e!1727009 () Bool)

(declare-fun tp!862151 () Bool)

(assert (=> b!2742632 (= e!1727009 tp!862151)))

(declare-fun b!2742631 () Bool)

(declare-fun inv!42825 (IArray!19733) Bool)

(assert (=> b!2742631 (= e!1727010 (and (inv!42825 (xs!12971 (c!444749 input!1326))) e!1727009))))

(assert (=> b!2742475 (= tp!862005 (and (inv!42818 (c!444749 input!1326)) e!1727010))))

(assert (= (and b!2742475 ((_ is Node!9864) (c!444749 input!1326))) b!2742630))

(assert (= b!2742631 b!2742632))

(assert (= (and b!2742475 ((_ is Leaf!15019) (c!444749 input!1326))) b!2742631))

(declare-fun m!3160509 () Bool)

(assert (=> b!2742630 m!3160509))

(declare-fun m!3160511 () Bool)

(assert (=> b!2742630 m!3160511))

(declare-fun m!3160513 () Bool)

(assert (=> b!2742631 m!3160513))

(assert (=> b!2742475 m!3160395))

(declare-fun setRes!21472 () Bool)

(declare-fun setElem!21472 () Context!4382)

(declare-fun tp!862154 () Bool)

(declare-fun setNonEmpty!21472 () Bool)

(declare-fun e!1727013 () Bool)

(assert (=> setNonEmpty!21472 (= setRes!21472 (and tp!862154 (inv!42824 setElem!21472) e!1727013))))

(declare-fun setRest!21472 () (InoxSet Context!4382))

(assert (=> setNonEmpty!21472 (= (_2!18263 (h!36896 mapDefault!16265)) ((_ map or) (store ((as const (Array Context!4382 Bool)) false) setElem!21472 true) setRest!21472))))

(declare-fun e!1727012 () Bool)

(assert (=> b!2742468 (= tp!861999 e!1727012)))

(declare-fun setIsEmpty!21472 () Bool)

(assert (=> setIsEmpty!21472 setRes!21472))

(declare-fun b!2742633 () Bool)

(declare-fun tp!862153 () Bool)

(assert (=> b!2742633 (= e!1727013 tp!862153)))

(declare-fun e!1727011 () Bool)

(declare-fun tp!862152 () Bool)

(declare-fun b!2742634 () Bool)

(assert (=> b!2742634 (= e!1727012 (and (inv!42824 (_1!18262 (_1!18263 (h!36896 mapDefault!16265)))) e!1727011 tp_is_empty!13915 setRes!21472 tp!862152))))

(declare-fun condSetEmpty!21472 () Bool)

(assert (=> b!2742634 (= condSetEmpty!21472 (= (_2!18263 (h!36896 mapDefault!16265)) ((as const (Array Context!4382 Bool)) false)))))

(declare-fun b!2742635 () Bool)

(declare-fun tp!862155 () Bool)

(assert (=> b!2742635 (= e!1727011 tp!862155)))

(assert (= b!2742634 b!2742635))

(assert (= (and b!2742634 condSetEmpty!21472) setIsEmpty!21472))

(assert (= (and b!2742634 (not condSetEmpty!21472)) setNonEmpty!21472))

(assert (= setNonEmpty!21472 b!2742633))

(assert (= (and b!2742468 ((_ is Cons!31476) mapDefault!16265)) b!2742634))

(declare-fun m!3160515 () Bool)

(assert (=> setNonEmpty!21472 m!3160515))

(declare-fun m!3160517 () Bool)

(assert (=> b!2742634 m!3160517))

(declare-fun e!1727016 () Bool)

(declare-fun tp!862158 () Bool)

(declare-fun setElem!21473 () Context!4382)

(declare-fun setNonEmpty!21473 () Bool)

(declare-fun setRes!21473 () Bool)

(assert (=> setNonEmpty!21473 (= setRes!21473 (and tp!862158 (inv!42824 setElem!21473) e!1727016))))

(declare-fun setRest!21473 () (InoxSet Context!4382))

(assert (=> setNonEmpty!21473 (= (_2!18263 (h!36896 (zeroValue!3821 (v!33141 (underlying!7327 (v!33142 (underlying!7328 (cache!3611 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4382 Bool)) false) setElem!21473 true) setRest!21473))))

(declare-fun e!1727015 () Bool)

(assert (=> b!2742478 (= tp!862004 e!1727015)))

(declare-fun setIsEmpty!21473 () Bool)

(assert (=> setIsEmpty!21473 setRes!21473))

(declare-fun b!2742636 () Bool)

(declare-fun tp!862157 () Bool)

(assert (=> b!2742636 (= e!1727016 tp!862157)))

(declare-fun b!2742637 () Bool)

(declare-fun e!1727014 () Bool)

(declare-fun tp!862156 () Bool)

(assert (=> b!2742637 (= e!1727015 (and (inv!42824 (_1!18262 (_1!18263 (h!36896 (zeroValue!3821 (v!33141 (underlying!7327 (v!33142 (underlying!7328 (cache!3611 cacheUp!633)))))))))) e!1727014 tp_is_empty!13915 setRes!21473 tp!862156))))

(declare-fun condSetEmpty!21473 () Bool)

(assert (=> b!2742637 (= condSetEmpty!21473 (= (_2!18263 (h!36896 (zeroValue!3821 (v!33141 (underlying!7327 (v!33142 (underlying!7328 (cache!3611 cacheUp!633)))))))) ((as const (Array Context!4382 Bool)) false)))))

(declare-fun b!2742638 () Bool)

(declare-fun tp!862159 () Bool)

(assert (=> b!2742638 (= e!1727014 tp!862159)))

(assert (= b!2742637 b!2742638))

(assert (= (and b!2742637 condSetEmpty!21473) setIsEmpty!21473))

(assert (= (and b!2742637 (not condSetEmpty!21473)) setNonEmpty!21473))

(assert (= setNonEmpty!21473 b!2742636))

(assert (= (and b!2742478 ((_ is Cons!31476) (zeroValue!3821 (v!33141 (underlying!7327 (v!33142 (underlying!7328 (cache!3611 cacheUp!633)))))))) b!2742637))

(declare-fun m!3160519 () Bool)

(assert (=> setNonEmpty!21473 m!3160519))

(declare-fun m!3160521 () Bool)

(assert (=> b!2742637 m!3160521))

(declare-fun setRes!21474 () Bool)

(declare-fun e!1727019 () Bool)

(declare-fun setNonEmpty!21474 () Bool)

(declare-fun tp!862162 () Bool)

(declare-fun setElem!21474 () Context!4382)

(assert (=> setNonEmpty!21474 (= setRes!21474 (and tp!862162 (inv!42824 setElem!21474) e!1727019))))

(declare-fun setRest!21474 () (InoxSet Context!4382))

(assert (=> setNonEmpty!21474 (= (_2!18263 (h!36896 (minValue!3821 (v!33141 (underlying!7327 (v!33142 (underlying!7328 (cache!3611 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4382 Bool)) false) setElem!21474 true) setRest!21474))))

(declare-fun e!1727018 () Bool)

(assert (=> b!2742478 (= tp!862013 e!1727018)))

(declare-fun setIsEmpty!21474 () Bool)

(assert (=> setIsEmpty!21474 setRes!21474))

(declare-fun b!2742639 () Bool)

(declare-fun tp!862161 () Bool)

(assert (=> b!2742639 (= e!1727019 tp!862161)))

(declare-fun tp!862160 () Bool)

(declare-fun e!1727017 () Bool)

(declare-fun b!2742640 () Bool)

(assert (=> b!2742640 (= e!1727018 (and (inv!42824 (_1!18262 (_1!18263 (h!36896 (minValue!3821 (v!33141 (underlying!7327 (v!33142 (underlying!7328 (cache!3611 cacheUp!633)))))))))) e!1727017 tp_is_empty!13915 setRes!21474 tp!862160))))

(declare-fun condSetEmpty!21474 () Bool)

(assert (=> b!2742640 (= condSetEmpty!21474 (= (_2!18263 (h!36896 (minValue!3821 (v!33141 (underlying!7327 (v!33142 (underlying!7328 (cache!3611 cacheUp!633)))))))) ((as const (Array Context!4382 Bool)) false)))))

(declare-fun b!2742641 () Bool)

(declare-fun tp!862163 () Bool)

(assert (=> b!2742641 (= e!1727017 tp!862163)))

(assert (= b!2742640 b!2742641))

(assert (= (and b!2742640 condSetEmpty!21474) setIsEmpty!21474))

(assert (= (and b!2742640 (not condSetEmpty!21474)) setNonEmpty!21474))

(assert (= setNonEmpty!21474 b!2742639))

(assert (= (and b!2742478 ((_ is Cons!31476) (minValue!3821 (v!33141 (underlying!7327 (v!33142 (underlying!7328 (cache!3611 cacheUp!633)))))))) b!2742640))

(declare-fun m!3160523 () Bool)

(assert (=> setNonEmpty!21474 m!3160523))

(declare-fun m!3160525 () Bool)

(assert (=> b!2742640 m!3160525))

(check-sat (not b!2742501) (not b!2742488) (not d!795687) (not b!2742523) (not b!2742621) (not b!2742640) (not b_next!77685) (not d!795685) (not b!2742641) (not b!2742603) (not setNonEmpty!21473) (not b!2742565) (not b!2742513) (not b!2742601) (not b!2742490) b_and!201697 (not b!2742545) (not mapNonEmpty!16269) (not b!2742541) (not b!2742637) (not b!2742617) (not setNonEmpty!21470) (not b!2742475) (not b!2742556) (not b!2742509) (not b_next!77681) (not setNonEmpty!21471) (not d!795691) (not b_next!77687) (not b!2742635) (not b!2742502) (not b!2742632) b_and!201707 (not b!2742569) (not b!2742620) (not b!2742631) (not setNonEmpty!21469) tp_is_empty!13915 (not b!2742496) b_and!201711 (not b!2742582) (not b!2742493) b_and!201709 (not b!2742633) (not d!795695) (not b_next!77683) (not b!2742613) (not b!2742583) (not setNonEmpty!21456) (not b!2742639) (not setNonEmpty!21466) b_and!201703 (not b!2742614) (not b_next!77695) (not setNonEmpty!21472) (not b_next!77691) (not b!2742638) (not setNonEmpty!21459) (not d!795677) (not b!2742636) (not d!795669) (not b!2742566) (not b!2742525) (not b!2742584) b_and!201701 (not mapNonEmpty!16272) (not b!2742604) (not b_next!77689) (not b!2742619) (not b!2742542) (not d!795681) (not b!2742568) (not b!2742570) (not b!2742524) (not setNonEmpty!21465) (not d!795697) (not b!2742600) (not b!2742630) (not setNonEmpty!21455) (not b_next!77693) (not b!2742602) (not b!2742540) (not b!2742554) (not b!2742615) (not b!2742544) b_and!201699 (not b!2742634) (not b!2742599) (not b!2742555) (not b!2742618) (not b!2742543) b_and!201705 (not setNonEmpty!21460) (not setNonEmpty!21474) (not b!2742616))
(check-sat (not b_next!77685) b_and!201697 b_and!201707 b_and!201711 b_and!201709 (not b_next!77683) b_and!201703 (not b_next!77695) (not b_next!77691) b_and!201701 (not b_next!77689) (not b_next!77693) b_and!201699 b_and!201705 (not b_next!77681) (not b_next!77687))
