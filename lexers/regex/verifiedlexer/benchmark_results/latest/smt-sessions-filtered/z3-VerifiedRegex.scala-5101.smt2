; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261112 () Bool)

(assert start!261112)

(declare-fun b!2680545 () Bool)

(declare-fun b_free!75681 () Bool)

(declare-fun b_next!76385 () Bool)

(assert (=> b!2680545 (= b_free!75681 (not b_next!76385))))

(declare-fun tp!847770 () Bool)

(declare-fun b_and!198477 () Bool)

(assert (=> b!2680545 (= tp!847770 b_and!198477)))

(declare-fun b!2680542 () Bool)

(declare-fun b_free!75683 () Bool)

(declare-fun b_next!76387 () Bool)

(assert (=> b!2680542 (= b_free!75683 (not b_next!76387))))

(declare-fun tp!847758 () Bool)

(declare-fun b_and!198479 () Bool)

(assert (=> b!2680542 (= tp!847758 b_and!198479)))

(declare-fun b_free!75685 () Bool)

(declare-fun b_next!76389 () Bool)

(assert (=> b!2680542 (= b_free!75685 (not b_next!76389))))

(declare-fun tp!847765 () Bool)

(declare-fun b_and!198481 () Bool)

(assert (=> b!2680542 (= tp!847765 b_and!198481)))

(declare-fun b!2680544 () Bool)

(declare-fun b_free!75687 () Bool)

(declare-fun b_next!76391 () Bool)

(assert (=> b!2680544 (= b_free!75687 (not b_next!76391))))

(declare-fun tp!847774 () Bool)

(declare-fun b_and!198483 () Bool)

(assert (=> b!2680544 (= tp!847774 b_and!198483)))

(declare-fun b!2680540 () Bool)

(declare-fun b_free!75689 () Bool)

(declare-fun b_next!76393 () Bool)

(assert (=> b!2680540 (= b_free!75689 (not b_next!76393))))

(declare-fun tp!847766 () Bool)

(declare-fun b_and!198485 () Bool)

(assert (=> b!2680540 (= tp!847766 b_and!198485)))

(declare-fun b!2680532 () Bool)

(declare-fun b_free!75691 () Bool)

(declare-fun b_next!76395 () Bool)

(assert (=> b!2680532 (= b_free!75691 (not b_next!76395))))

(declare-fun tp!847757 () Bool)

(declare-fun b_and!198487 () Bool)

(assert (=> b!2680532 (= tp!847757 b_and!198487)))

(declare-fun b!2680525 () Bool)

(declare-fun e!1689849 () Bool)

(declare-datatypes ((C!15892 0))(
  ( (C!15893 (val!9880 Int)) )
))
(declare-datatypes ((List!30977 0))(
  ( (Nil!30877) (Cons!30877 (h!36297 C!15892) (t!224478 List!30977)) )
))
(declare-datatypes ((IArray!19329 0))(
  ( (IArray!19330 (innerList!9722 List!30977)) )
))
(declare-datatypes ((Conc!9662 0))(
  ( (Node!9662 (left!23883 Conc!9662) (right!24213 Conc!9662) (csize!19554 Int) (cheight!9873 Int)) (Leaf!14764 (xs!12692 IArray!19329) (csize!19555 Int)) (Empty!9662) )
))
(declare-datatypes ((BalanceConc!18938 0))(
  ( (BalanceConc!18939 (c!431807 Conc!9662)) )
))
(declare-fun input!780 () BalanceConc!18938)

(declare-fun tp!847760 () Bool)

(declare-fun inv!41903 (Conc!9662) Bool)

(assert (=> b!2680525 (= e!1689849 (and (inv!41903 (c!431807 input!780)) tp!847760))))

(declare-fun b!2680526 () Bool)

(declare-fun e!1689839 () Bool)

(declare-fun tp!847771 () Bool)

(declare-fun mapRes!15881 () Bool)

(assert (=> b!2680526 (= e!1689839 (and tp!847771 mapRes!15881))))

(declare-fun condMapEmpty!15881 () Bool)

(declare-datatypes ((Regex!7867 0))(
  ( (ElementMatch!7867 (c!431808 C!15892)) (Concat!12806 (regOne!16246 Regex!7867) (regTwo!16246 Regex!7867)) (EmptyExpr!7867) (Star!7867 (reg!8196 Regex!7867)) (EmptyLang!7867) (Union!7867 (regOne!16247 Regex!7867) (regTwo!16247 Regex!7867)) )
))
(declare-datatypes ((List!30978 0))(
  ( (Nil!30878) (Cons!30878 (h!36298 Regex!7867) (t!224479 List!30978)) )
))
(declare-datatypes ((Context!4282 0))(
  ( (Context!4283 (exprs!2641 List!30978)) )
))
(declare-datatypes ((tuple2!30338 0))(
  ( (tuple2!30339 (_1!17722 Context!4282) (_2!17722 C!15892)) )
))
(declare-datatypes ((array!12361 0))(
  ( (array!12362 (arr!5522 (Array (_ BitVec 32) (_ BitVec 64))) (size!23863 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30340 0))(
  ( (tuple2!30341 (_1!17723 tuple2!30338) (_2!17723 (InoxSet Context!4282))) )
))
(declare-datatypes ((List!30979 0))(
  ( (Nil!30879) (Cons!30879 (h!36299 tuple2!30340) (t!224480 List!30979)) )
))
(declare-datatypes ((array!12363 0))(
  ( (array!12364 (arr!5523 (Array (_ BitVec 32) List!30979)) (size!23864 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3382 0))(
  ( (HashableExt!3381 (__x!19755 Int)) )
))
(declare-datatypes ((LongMapFixedSize!6932 0))(
  ( (LongMapFixedSize!6933 (defaultEntry!3851 Int) (mask!9136 (_ BitVec 32)) (extraKeys!3715 (_ BitVec 32)) (zeroValue!3725 List!30979) (minValue!3725 List!30979) (_size!6975 (_ BitVec 32)) (_keys!3766 array!12361) (_values!3747 array!12363) (_vacant!3527 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13673 0))(
  ( (Cell!13674 (v!32713 LongMapFixedSize!6932)) )
))
(declare-datatypes ((MutLongMap!3466 0))(
  ( (LongMap!3466 (underlying!7135 Cell!13673)) (MutLongMapExt!3465 (__x!19756 Int)) )
))
(declare-datatypes ((Cell!13675 0))(
  ( (Cell!13676 (v!32714 MutLongMap!3466)) )
))
(declare-datatypes ((MutableMap!3372 0))(
  ( (MutableMapExt!3371 (__x!19757 Int)) (HashMap!3372 (underlying!7136 Cell!13675) (hashF!5414 Hashable!3382) (_size!6976 (_ BitVec 32)) (defaultValue!3543 Int)) )
))
(declare-datatypes ((CacheUp!2086 0))(
  ( (CacheUp!2087 (cache!3515 MutableMap!3372)) )
))
(declare-fun cacheUp!486 () CacheUp!2086)

(declare-fun mapDefault!15882 () List!30979)

(assert (=> b!2680526 (= condMapEmpty!15881 (= (arr!5523 (_values!3747 (v!32713 (underlying!7135 (v!32714 (underlying!7136 (cache!3515 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!30979)) mapDefault!15882)))))

(declare-fun tp!847773 () Bool)

(declare-fun e!1689828 () Bool)

(declare-fun e!1689848 () Bool)

(declare-fun b!2680527 () Bool)

(declare-datatypes ((List!30980 0))(
  ( (Nil!30880) (Cons!30880 (h!36300 (_ BitVec 16)) (t!224481 List!30980)) )
))
(declare-datatypes ((TokenValue!4939 0))(
  ( (FloatLiteralValue!9878 (text!35018 List!30980)) (TokenValueExt!4938 (__x!19758 Int)) (Broken!24695 (value!152020 List!30980)) (Object!5038) (End!4939) (Def!4939) (Underscore!4939) (Match!4939) (Else!4939) (Error!4939) (Case!4939) (If!4939) (Extends!4939) (Abstract!4939) (Class!4939) (Val!4939) (DelimiterValue!9878 (del!4999 List!30980)) (KeywordValue!4945 (value!152021 List!30980)) (CommentValue!9878 (value!152022 List!30980)) (WhitespaceValue!9878 (value!152023 List!30980)) (IndentationValue!4939 (value!152024 List!30980)) (String!34590) (Int32!4939) (Broken!24696 (value!152025 List!30980)) (Boolean!4940) (Unit!45072) (OperatorValue!4942 (op!4999 List!30980)) (IdentifierValue!9878 (value!152026 List!30980)) (IdentifierValue!9879 (value!152027 List!30980)) (WhitespaceValue!9879 (value!152028 List!30980)) (True!9878) (False!9878) (Broken!24697 (value!152029 List!30980)) (Broken!24698 (value!152030 List!30980)) (True!9879) (RightBrace!4939) (RightBracket!4939) (Colon!4939) (Null!4939) (Comma!4939) (LeftBracket!4939) (False!9879) (LeftBrace!4939) (ImaginaryLiteralValue!4939 (text!35019 List!30980)) (StringLiteralValue!14817 (value!152031 List!30980)) (EOFValue!4939 (value!152032 List!30980)) (IdentValue!4939 (value!152033 List!30980)) (DelimiterValue!9879 (value!152034 List!30980)) (DedentValue!4939 (value!152035 List!30980)) (NewLineValue!4939 (value!152036 List!30980)) (IntegerValue!14817 (value!152037 (_ BitVec 32)) (text!35020 List!30980)) (IntegerValue!14818 (value!152038 Int) (text!35021 List!30980)) (Times!4939) (Or!4939) (Equal!4939) (Minus!4939) (Broken!24699 (value!152039 List!30980)) (And!4939) (Div!4939) (LessEqual!4939) (Mod!4939) (Concat!12807) (Not!4939) (Plus!4939) (SpaceValue!4939 (value!152040 List!30980)) (IntegerValue!14819 (value!152041 Int) (text!35022 List!30980)) (StringLiteralValue!14818 (text!35023 List!30980)) (FloatLiteralValue!9879 (text!35024 List!30980)) (BytesLiteralValue!4939 (value!152042 List!30980)) (CommentValue!9879 (value!152043 List!30980)) (StringLiteralValue!14819 (value!152044 List!30980)) (ErrorTokenValue!4939 (msg!5000 List!30980)) )
))
(declare-datatypes ((TokenValueInjection!9318 0))(
  ( (TokenValueInjection!9319 (toValue!6671 Int) (toChars!6530 Int)) )
))
(declare-datatypes ((String!34591 0))(
  ( (String!34592 (value!152045 String)) )
))
(declare-datatypes ((Rule!9234 0))(
  ( (Rule!9235 (regex!4717 Regex!7867) (tag!5221 String!34591) (isSeparator!4717 Bool) (transformation!4717 TokenValueInjection!9318)) )
))
(declare-datatypes ((List!30981 0))(
  ( (Nil!30881) (Cons!30881 (h!36301 Rule!9234) (t!224482 List!30981)) )
))
(declare-fun rules!1381 () List!30981)

(declare-fun inv!41902 (String!34591) Bool)

(declare-fun inv!41904 (TokenValueInjection!9318) Bool)

(assert (=> b!2680527 (= e!1689848 (and tp!847773 (inv!41902 (tag!5221 (h!36301 rules!1381))) (inv!41904 (transformation!4717 (h!36301 rules!1381))) e!1689828))))

(declare-fun mapIsEmpty!15881 () Bool)

(declare-fun mapRes!15882 () Bool)

(assert (=> mapIsEmpty!15881 mapRes!15882))

(declare-fun b!2680528 () Bool)

(declare-fun res!1126789 () Bool)

(declare-fun e!1689847 () Bool)

(assert (=> b!2680528 (=> (not res!1126789) (not e!1689847))))

(declare-datatypes ((LexerInterface!4313 0))(
  ( (LexerInterfaceExt!4310 (__x!19759 Int)) (Lexer!4311) )
))
(declare-fun thiss!12257 () LexerInterface!4313)

(declare-fun rulesInvariant!3812 (LexerInterface!4313 List!30981) Bool)

(assert (=> b!2680528 (= res!1126789 (rulesInvariant!3812 thiss!12257 rules!1381))))

(declare-fun b!2680529 () Bool)

(declare-fun e!1689845 () Bool)

(assert (=> b!2680529 (= e!1689845 false)))

(declare-fun lt!944141 () List!30977)

(declare-datatypes ((Token!8900 0))(
  ( (Token!8901 (value!152046 TokenValue!4939) (rule!7127 Rule!9234) (size!23865 Int) (originalCharacters!5481 List!30977)) )
))
(declare-datatypes ((List!30982 0))(
  ( (Nil!30882) (Cons!30882 (h!36302 Token!8900) (t!224483 List!30982)) )
))
(declare-datatypes ((IArray!19331 0))(
  ( (IArray!19332 (innerList!9723 List!30982)) )
))
(declare-datatypes ((Conc!9663 0))(
  ( (Node!9663 (left!23884 Conc!9663) (right!24214 Conc!9663) (csize!19556 Int) (cheight!9874 Int)) (Leaf!14765 (xs!12693 IArray!19331) (csize!19557 Int)) (Empty!9663) )
))
(declare-datatypes ((BalanceConc!18940 0))(
  ( (BalanceConc!18941 (c!431809 Conc!9663)) )
))
(declare-datatypes ((tuple2!30342 0))(
  ( (tuple2!30343 (_1!17724 BalanceConc!18940) (_2!17724 BalanceConc!18938)) )
))
(declare-fun lt!944142 () tuple2!30342)

(declare-fun list!11665 (BalanceConc!18938) List!30977)

(assert (=> b!2680529 (= lt!944141 (list!11665 (_2!17724 lt!944142)))))

(declare-fun mapNonEmpty!15881 () Bool)

(declare-fun tp!847762 () Bool)

(declare-fun tp!847772 () Bool)

(assert (=> mapNonEmpty!15881 (= mapRes!15882 (and tp!847762 tp!847772))))

(declare-datatypes ((tuple3!4166 0))(
  ( (tuple3!4167 (_1!17725 Regex!7867) (_2!17725 Context!4282) (_3!2553 C!15892)) )
))
(declare-datatypes ((tuple2!30344 0))(
  ( (tuple2!30345 (_1!17726 tuple3!4166) (_2!17726 (InoxSet Context!4282))) )
))
(declare-datatypes ((List!30983 0))(
  ( (Nil!30883) (Cons!30883 (h!36303 tuple2!30344) (t!224484 List!30983)) )
))
(declare-fun mapRest!15882 () (Array (_ BitVec 32) List!30983))

(declare-datatypes ((array!12365 0))(
  ( (array!12366 (arr!5524 (Array (_ BitVec 32) List!30983)) (size!23866 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6934 0))(
  ( (LongMapFixedSize!6935 (defaultEntry!3852 Int) (mask!9137 (_ BitVec 32)) (extraKeys!3716 (_ BitVec 32)) (zeroValue!3726 List!30983) (minValue!3726 List!30983) (_size!6977 (_ BitVec 32)) (_keys!3767 array!12361) (_values!3748 array!12365) (_vacant!3528 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13677 0))(
  ( (Cell!13678 (v!32715 LongMapFixedSize!6934)) )
))
(declare-datatypes ((MutLongMap!3467 0))(
  ( (LongMap!3467 (underlying!7137 Cell!13677)) (MutLongMapExt!3466 (__x!19760 Int)) )
))
(declare-datatypes ((Cell!13679 0))(
  ( (Cell!13680 (v!32716 MutLongMap!3467)) )
))
(declare-datatypes ((Hashable!3383 0))(
  ( (HashableExt!3382 (__x!19761 Int)) )
))
(declare-datatypes ((MutableMap!3373 0))(
  ( (MutableMapExt!3372 (__x!19762 Int)) (HashMap!3373 (underlying!7138 Cell!13679) (hashF!5415 Hashable!3383) (_size!6978 (_ BitVec 32)) (defaultValue!3544 Int)) )
))
(declare-datatypes ((CacheDown!2190 0))(
  ( (CacheDown!2191 (cache!3516 MutableMap!3373)) )
))
(declare-fun cacheDown!499 () CacheDown!2190)

(declare-fun mapValue!15881 () List!30983)

(declare-fun mapKey!15881 () (_ BitVec 32))

(assert (=> mapNonEmpty!15881 (= (arr!5524 (_values!3748 (v!32715 (underlying!7137 (v!32716 (underlying!7138 (cache!3516 cacheDown!499))))))) (store mapRest!15882 mapKey!15881 mapValue!15881))))

(declare-fun res!1126792 () Bool)

(assert (=> start!261112 (=> (not res!1126792) (not e!1689847))))

(get-info :version)

(assert (=> start!261112 (= res!1126792 ((_ is Lexer!4311) thiss!12257))))

(assert (=> start!261112 e!1689847))

(declare-fun totalInput!354 () BalanceConc!18938)

(declare-fun e!1689853 () Bool)

(declare-fun inv!41905 (BalanceConc!18938) Bool)

(assert (=> start!261112 (and (inv!41905 totalInput!354) e!1689853)))

(declare-fun e!1689852 () Bool)

(declare-fun inv!41906 (CacheUp!2086) Bool)

(assert (=> start!261112 (and (inv!41906 cacheUp!486) e!1689852)))

(declare-fun acc!348 () BalanceConc!18940)

(declare-fun e!1689850 () Bool)

(declare-fun inv!41907 (BalanceConc!18940) Bool)

(assert (=> start!261112 (and (inv!41907 acc!348) e!1689850)))

(assert (=> start!261112 (and (inv!41905 input!780) e!1689849)))

(declare-fun treated!26 () BalanceConc!18938)

(declare-fun e!1689841 () Bool)

(assert (=> start!261112 (and (inv!41905 treated!26) e!1689841)))

(declare-fun e!1689851 () Bool)

(assert (=> start!261112 e!1689851))

(assert (=> start!261112 true))

(declare-fun e!1689835 () Bool)

(declare-fun inv!41908 (CacheDown!2190) Bool)

(assert (=> start!261112 (and (inv!41908 cacheDown!499) e!1689835)))

(declare-fun b!2680530 () Bool)

(assert (=> b!2680530 (= e!1689847 e!1689845)))

(declare-fun res!1126795 () Bool)

(assert (=> b!2680530 (=> (not res!1126795) (not e!1689845))))

(declare-fun list!11666 (BalanceConc!18940) List!30982)

(assert (=> b!2680530 (= res!1126795 (= (list!11666 (_1!17724 lt!944142)) (list!11666 acc!348)))))

(declare-fun lexRec!580 (LexerInterface!4313 List!30981 BalanceConc!18938) tuple2!30342)

(assert (=> b!2680530 (= lt!944142 (lexRec!580 thiss!12257 rules!1381 treated!26))))

(declare-fun b!2680531 () Bool)

(declare-fun e!1689836 () Bool)

(declare-fun e!1689829 () Bool)

(assert (=> b!2680531 (= e!1689836 e!1689829)))

(declare-fun e!1689843 () Bool)

(declare-fun e!1689831 () Bool)

(assert (=> b!2680532 (= e!1689843 (and e!1689831 tp!847757))))

(declare-fun b!2680533 () Bool)

(declare-fun res!1126791 () Bool)

(assert (=> b!2680533 (=> (not res!1126791) (not e!1689847))))

(declare-fun ++!7537 (List!30977 List!30977) List!30977)

(assert (=> b!2680533 (= res!1126791 (= (list!11665 totalInput!354) (++!7537 (list!11665 treated!26) (list!11665 input!780))))))

(declare-fun b!2680534 () Bool)

(declare-fun tp!847768 () Bool)

(assert (=> b!2680534 (= e!1689853 (and (inv!41903 (c!431807 totalInput!354)) tp!847768))))

(declare-fun b!2680535 () Bool)

(declare-fun e!1689842 () Bool)

(declare-fun e!1689844 () Bool)

(declare-fun lt!944144 () MutLongMap!3466)

(assert (=> b!2680535 (= e!1689842 (and e!1689844 ((_ is LongMap!3466) lt!944144)))))

(assert (=> b!2680535 (= lt!944144 (v!32714 (underlying!7136 (cache!3515 cacheUp!486))))))

(declare-fun b!2680536 () Bool)

(declare-fun tp!847775 () Bool)

(assert (=> b!2680536 (= e!1689841 (and (inv!41903 (c!431807 treated!26)) tp!847775))))

(declare-fun b!2680537 () Bool)

(declare-fun e!1689830 () Bool)

(declare-fun tp!847755 () Bool)

(assert (=> b!2680537 (= e!1689830 (and tp!847755 mapRes!15882))))

(declare-fun condMapEmpty!15882 () Bool)

(declare-fun mapDefault!15881 () List!30983)

(assert (=> b!2680537 (= condMapEmpty!15882 (= (arr!5524 (_values!3748 (v!32715 (underlying!7137 (v!32716 (underlying!7138 (cache!3516 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!30983)) mapDefault!15881)))))

(declare-fun b!2680538 () Bool)

(declare-fun tp!847769 () Bool)

(assert (=> b!2680538 (= e!1689851 (and e!1689848 tp!847769))))

(declare-fun b!2680539 () Bool)

(assert (=> b!2680539 (= e!1689835 e!1689843)))

(declare-fun e!1689840 () Bool)

(assert (=> b!2680540 (= e!1689840 (and e!1689842 tp!847766))))

(declare-fun b!2680541 () Bool)

(declare-fun e!1689838 () Bool)

(declare-fun e!1689832 () Bool)

(assert (=> b!2680541 (= e!1689838 e!1689832)))

(assert (=> b!2680542 (= e!1689828 (and tp!847758 tp!847765))))

(declare-fun b!2680543 () Bool)

(declare-fun res!1126793 () Bool)

(assert (=> b!2680543 (=> (not res!1126793) (not e!1689847))))

(declare-fun valid!2685 (CacheDown!2190) Bool)

(assert (=> b!2680543 (= res!1126793 (valid!2685 cacheDown!499))))

(declare-fun tp!847763 () Bool)

(declare-fun tp!847776 () Bool)

(declare-fun array_inv!3944 (array!12361) Bool)

(declare-fun array_inv!3945 (array!12363) Bool)

(assert (=> b!2680544 (= e!1689832 (and tp!847774 tp!847763 tp!847776 (array_inv!3944 (_keys!3766 (v!32713 (underlying!7135 (v!32714 (underlying!7136 (cache!3515 cacheUp!486))))))) (array_inv!3945 (_values!3747 (v!32713 (underlying!7135 (v!32714 (underlying!7136 (cache!3515 cacheUp!486))))))) e!1689839))))

(declare-fun tp!847764 () Bool)

(declare-fun tp!847767 () Bool)

(declare-fun array_inv!3946 (array!12365) Bool)

(assert (=> b!2680545 (= e!1689829 (and tp!847770 tp!847764 tp!847767 (array_inv!3944 (_keys!3767 (v!32715 (underlying!7137 (v!32716 (underlying!7138 (cache!3516 cacheDown!499))))))) (array_inv!3946 (_values!3748 (v!32715 (underlying!7137 (v!32716 (underlying!7138 (cache!3516 cacheDown!499))))))) e!1689830))))

(declare-fun b!2680546 () Bool)

(declare-fun e!1689834 () Bool)

(declare-fun lt!944143 () MutLongMap!3467)

(assert (=> b!2680546 (= e!1689831 (and e!1689834 ((_ is LongMap!3467) lt!944143)))))

(assert (=> b!2680546 (= lt!944143 (v!32716 (underlying!7138 (cache!3516 cacheDown!499))))))

(declare-fun b!2680547 () Bool)

(declare-fun res!1126790 () Bool)

(assert (=> b!2680547 (=> (not res!1126790) (not e!1689847))))

(declare-fun isEmpty!17667 (List!30981) Bool)

(assert (=> b!2680547 (= res!1126790 (not (isEmpty!17667 rules!1381)))))

(declare-fun b!2680548 () Bool)

(assert (=> b!2680548 (= e!1689834 e!1689836)))

(declare-fun mapNonEmpty!15882 () Bool)

(declare-fun tp!847761 () Bool)

(declare-fun tp!847756 () Bool)

(assert (=> mapNonEmpty!15882 (= mapRes!15881 (and tp!847761 tp!847756))))

(declare-fun mapValue!15882 () List!30979)

(declare-fun mapRest!15881 () (Array (_ BitVec 32) List!30979))

(declare-fun mapKey!15882 () (_ BitVec 32))

(assert (=> mapNonEmpty!15882 (= (arr!5523 (_values!3747 (v!32713 (underlying!7135 (v!32714 (underlying!7136 (cache!3515 cacheUp!486))))))) (store mapRest!15881 mapKey!15882 mapValue!15882))))

(declare-fun b!2680549 () Bool)

(declare-fun tp!847759 () Bool)

(declare-fun inv!41909 (Conc!9663) Bool)

(assert (=> b!2680549 (= e!1689850 (and (inv!41909 (c!431809 acc!348)) tp!847759))))

(declare-fun mapIsEmpty!15882 () Bool)

(assert (=> mapIsEmpty!15882 mapRes!15881))

(declare-fun b!2680550 () Bool)

(assert (=> b!2680550 (= e!1689852 e!1689840)))

(declare-fun b!2680551 () Bool)

(assert (=> b!2680551 (= e!1689844 e!1689838)))

(declare-fun b!2680552 () Bool)

(declare-fun res!1126794 () Bool)

(assert (=> b!2680552 (=> (not res!1126794) (not e!1689847))))

(declare-fun valid!2686 (CacheUp!2086) Bool)

(assert (=> b!2680552 (= res!1126794 (valid!2686 cacheUp!486))))

(assert (= (and start!261112 res!1126792) b!2680547))

(assert (= (and b!2680547 res!1126790) b!2680528))

(assert (= (and b!2680528 res!1126789) b!2680552))

(assert (= (and b!2680552 res!1126794) b!2680543))

(assert (= (and b!2680543 res!1126793) b!2680533))

(assert (= (and b!2680533 res!1126791) b!2680530))

(assert (= (and b!2680530 res!1126795) b!2680529))

(assert (= start!261112 b!2680534))

(assert (= (and b!2680526 condMapEmpty!15881) mapIsEmpty!15882))

(assert (= (and b!2680526 (not condMapEmpty!15881)) mapNonEmpty!15882))

(assert (= b!2680544 b!2680526))

(assert (= b!2680541 b!2680544))

(assert (= b!2680551 b!2680541))

(assert (= (and b!2680535 ((_ is LongMap!3466) (v!32714 (underlying!7136 (cache!3515 cacheUp!486))))) b!2680551))

(assert (= b!2680540 b!2680535))

(assert (= (and b!2680550 ((_ is HashMap!3372) (cache!3515 cacheUp!486))) b!2680540))

(assert (= start!261112 b!2680550))

(assert (= start!261112 b!2680549))

(assert (= start!261112 b!2680525))

(assert (= start!261112 b!2680536))

(assert (= b!2680527 b!2680542))

(assert (= b!2680538 b!2680527))

(assert (= (and start!261112 ((_ is Cons!30881) rules!1381)) b!2680538))

(assert (= (and b!2680537 condMapEmpty!15882) mapIsEmpty!15881))

(assert (= (and b!2680537 (not condMapEmpty!15882)) mapNonEmpty!15881))

(assert (= b!2680545 b!2680537))

(assert (= b!2680531 b!2680545))

(assert (= b!2680548 b!2680531))

(assert (= (and b!2680546 ((_ is LongMap!3467) (v!32716 (underlying!7138 (cache!3516 cacheDown!499))))) b!2680548))

(assert (= b!2680532 b!2680546))

(assert (= (and b!2680539 ((_ is HashMap!3373) (cache!3516 cacheDown!499))) b!2680532))

(assert (= start!261112 b!2680539))

(declare-fun m!3048691 () Bool)

(assert (=> b!2680552 m!3048691))

(declare-fun m!3048693 () Bool)

(assert (=> b!2680536 m!3048693))

(declare-fun m!3048695 () Bool)

(assert (=> b!2680534 m!3048695))

(declare-fun m!3048697 () Bool)

(assert (=> b!2680530 m!3048697))

(declare-fun m!3048699 () Bool)

(assert (=> b!2680530 m!3048699))

(declare-fun m!3048701 () Bool)

(assert (=> b!2680530 m!3048701))

(declare-fun m!3048703 () Bool)

(assert (=> b!2680547 m!3048703))

(declare-fun m!3048705 () Bool)

(assert (=> b!2680533 m!3048705))

(declare-fun m!3048707 () Bool)

(assert (=> b!2680533 m!3048707))

(declare-fun m!3048709 () Bool)

(assert (=> b!2680533 m!3048709))

(assert (=> b!2680533 m!3048707))

(assert (=> b!2680533 m!3048709))

(declare-fun m!3048711 () Bool)

(assert (=> b!2680533 m!3048711))

(declare-fun m!3048713 () Bool)

(assert (=> b!2680549 m!3048713))

(declare-fun m!3048715 () Bool)

(assert (=> start!261112 m!3048715))

(declare-fun m!3048717 () Bool)

(assert (=> start!261112 m!3048717))

(declare-fun m!3048719 () Bool)

(assert (=> start!261112 m!3048719))

(declare-fun m!3048721 () Bool)

(assert (=> start!261112 m!3048721))

(declare-fun m!3048723 () Bool)

(assert (=> start!261112 m!3048723))

(declare-fun m!3048725 () Bool)

(assert (=> start!261112 m!3048725))

(declare-fun m!3048727 () Bool)

(assert (=> mapNonEmpty!15882 m!3048727))

(declare-fun m!3048729 () Bool)

(assert (=> b!2680527 m!3048729))

(declare-fun m!3048731 () Bool)

(assert (=> b!2680527 m!3048731))

(declare-fun m!3048733 () Bool)

(assert (=> b!2680543 m!3048733))

(declare-fun m!3048735 () Bool)

(assert (=> mapNonEmpty!15881 m!3048735))

(declare-fun m!3048737 () Bool)

(assert (=> b!2680528 m!3048737))

(declare-fun m!3048739 () Bool)

(assert (=> b!2680529 m!3048739))

(declare-fun m!3048741 () Bool)

(assert (=> b!2680525 m!3048741))

(declare-fun m!3048743 () Bool)

(assert (=> b!2680545 m!3048743))

(declare-fun m!3048745 () Bool)

(assert (=> b!2680545 m!3048745))

(declare-fun m!3048747 () Bool)

(assert (=> b!2680544 m!3048747))

(declare-fun m!3048749 () Bool)

(assert (=> b!2680544 m!3048749))

(check-sat (not b!2680528) (not b!2680543) (not b!2680549) (not b!2680529) b_and!198477 (not b!2680534) (not b!2680527) (not b_next!76387) b_and!198479 (not b!2680526) (not b_next!76395) b_and!198487 (not b!2680537) b_and!198483 (not b!2680552) (not b_next!76385) (not b!2680530) b_and!198481 (not b!2680533) (not b!2680545) (not b_next!76393) (not b_next!76391) (not mapNonEmpty!15881) (not b!2680525) (not b!2680538) (not b!2680544) (not b!2680547) (not b_next!76389) (not mapNonEmpty!15882) b_and!198485 (not b!2680536) (not start!261112))
(check-sat (not b_next!76385) b_and!198477 b_and!198481 (not b_next!76387) b_and!198479 (not b_next!76395) b_and!198487 b_and!198483 (not b_next!76393) (not b_next!76391) (not b_next!76389) b_and!198485)
