; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261116 () Bool)

(assert start!261116)

(declare-fun b!2680709 () Bool)

(declare-fun b_free!75705 () Bool)

(declare-fun b_next!76409 () Bool)

(assert (=> b!2680709 (= b_free!75705 (not b_next!76409))))

(declare-fun tp!847896 () Bool)

(declare-fun b_and!198501 () Bool)

(assert (=> b!2680709 (= tp!847896 b_and!198501)))

(declare-fun b!2680714 () Bool)

(declare-fun b_free!75707 () Bool)

(declare-fun b_next!76411 () Bool)

(assert (=> b!2680714 (= b_free!75707 (not b_next!76411))))

(declare-fun tp!847908 () Bool)

(declare-fun b_and!198503 () Bool)

(assert (=> b!2680714 (= tp!847908 b_and!198503)))

(declare-fun b!2680712 () Bool)

(declare-fun b_free!75709 () Bool)

(declare-fun b_next!76413 () Bool)

(assert (=> b!2680712 (= b_free!75709 (not b_next!76413))))

(declare-fun tp!847904 () Bool)

(declare-fun b_and!198505 () Bool)

(assert (=> b!2680712 (= tp!847904 b_and!198505)))

(declare-fun b_free!75711 () Bool)

(declare-fun b_next!76415 () Bool)

(assert (=> b!2680712 (= b_free!75711 (not b_next!76415))))

(declare-fun tp!847891 () Bool)

(declare-fun b_and!198507 () Bool)

(assert (=> b!2680712 (= tp!847891 b_and!198507)))

(declare-fun b!2680708 () Bool)

(declare-fun b_free!75713 () Bool)

(declare-fun b_next!76417 () Bool)

(assert (=> b!2680708 (= b_free!75713 (not b_next!76417))))

(declare-fun tp!847903 () Bool)

(declare-fun b_and!198509 () Bool)

(assert (=> b!2680708 (= tp!847903 b_and!198509)))

(declare-fun b!2680698 () Bool)

(declare-fun b_free!75715 () Bool)

(declare-fun b_next!76419 () Bool)

(assert (=> b!2680698 (= b_free!75715 (not b_next!76419))))

(declare-fun tp!847893 () Bool)

(declare-fun b_and!198511 () Bool)

(assert (=> b!2680698 (= tp!847893 b_and!198511)))

(declare-fun tp!847888 () Bool)

(declare-datatypes ((C!15896 0))(
  ( (C!15897 (val!9882 Int)) )
))
(declare-datatypes ((Regex!7869 0))(
  ( (ElementMatch!7869 (c!431812 C!15896)) (Concat!12809 (regOne!16250 Regex!7869) (regTwo!16250 Regex!7869)) (EmptyExpr!7869) (Star!7869 (reg!8198 Regex!7869)) (EmptyLang!7869) (Union!7869 (regOne!16251 Regex!7869) (regTwo!16251 Regex!7869)) )
))
(declare-datatypes ((List!30987 0))(
  ( (Nil!30887) (Cons!30887 (h!36307 Regex!7869) (t!224488 List!30987)) )
))
(declare-datatypes ((Context!4286 0))(
  ( (Context!4287 (exprs!2643 List!30987)) )
))
(declare-datatypes ((tuple2!30348 0))(
  ( (tuple2!30349 (_1!17729 Context!4286) (_2!17729 C!15896)) )
))
(declare-datatypes ((array!12371 0))(
  ( (array!12372 (arr!5527 (Array (_ BitVec 32) (_ BitVec 64))) (size!23869 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30350 0))(
  ( (tuple2!30351 (_1!17730 tuple2!30348) (_2!17730 (InoxSet Context!4286))) )
))
(declare-datatypes ((List!30988 0))(
  ( (Nil!30888) (Cons!30888 (h!36308 tuple2!30350) (t!224489 List!30988)) )
))
(declare-datatypes ((array!12373 0))(
  ( (array!12374 (arr!5528 (Array (_ BitVec 32) List!30988)) (size!23870 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3385 0))(
  ( (HashableExt!3384 (__x!19766 Int)) )
))
(declare-datatypes ((LongMapFixedSize!6938 0))(
  ( (LongMapFixedSize!6939 (defaultEntry!3854 Int) (mask!9140 (_ BitVec 32)) (extraKeys!3718 (_ BitVec 32)) (zeroValue!3728 List!30988) (minValue!3728 List!30988) (_size!6981 (_ BitVec 32)) (_keys!3769 array!12371) (_values!3750 array!12373) (_vacant!3530 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13685 0))(
  ( (Cell!13686 (v!32719 LongMapFixedSize!6938)) )
))
(declare-datatypes ((MutLongMap!3469 0))(
  ( (LongMap!3469 (underlying!7141 Cell!13685)) (MutLongMapExt!3468 (__x!19767 Int)) )
))
(declare-datatypes ((Cell!13687 0))(
  ( (Cell!13688 (v!32720 MutLongMap!3469)) )
))
(declare-datatypes ((MutableMap!3375 0))(
  ( (MutableMapExt!3374 (__x!19768 Int)) (HashMap!3375 (underlying!7142 Cell!13687) (hashF!5417 Hashable!3385) (_size!6982 (_ BitVec 32)) (defaultValue!3546 Int)) )
))
(declare-datatypes ((CacheUp!2088 0))(
  ( (CacheUp!2089 (cache!3518 MutableMap!3375)) )
))
(declare-fun cacheUp!486 () CacheUp!2088)

(declare-fun e!1689986 () Bool)

(declare-fun e!1689985 () Bool)

(declare-fun tp!847902 () Bool)

(declare-fun array_inv!3947 (array!12371) Bool)

(declare-fun array_inv!3948 (array!12373) Bool)

(assert (=> b!2680698 (= e!1689985 (and tp!847893 tp!847888 tp!847902 (array_inv!3947 (_keys!3769 (v!32719 (underlying!7141 (v!32720 (underlying!7142 (cache!3518 cacheUp!486))))))) (array_inv!3948 (_values!3750 (v!32719 (underlying!7141 (v!32720 (underlying!7142 (cache!3518 cacheUp!486))))))) e!1689986))))

(declare-fun b!2680699 () Bool)

(declare-fun e!1689999 () Bool)

(declare-fun e!1690000 () Bool)

(assert (=> b!2680699 (= e!1689999 e!1690000)))

(declare-fun b!2680700 () Bool)

(declare-fun e!1689997 () Bool)

(declare-datatypes ((List!30989 0))(
  ( (Nil!30889) (Cons!30889 (h!36309 C!15896) (t!224490 List!30989)) )
))
(declare-datatypes ((IArray!19335 0))(
  ( (IArray!19336 (innerList!9725 List!30989)) )
))
(declare-datatypes ((Conc!9665 0))(
  ( (Node!9665 (left!23887 Conc!9665) (right!24217 Conc!9665) (csize!19560 Int) (cheight!9876 Int)) (Leaf!14768 (xs!12695 IArray!19335) (csize!19561 Int)) (Empty!9665) )
))
(declare-datatypes ((BalanceConc!18944 0))(
  ( (BalanceConc!18945 (c!431813 Conc!9665)) )
))
(declare-fun input!780 () BalanceConc!18944)

(declare-fun tp!847898 () Bool)

(declare-fun inv!41914 (Conc!9665) Bool)

(assert (=> b!2680700 (= e!1689997 (and (inv!41914 (c!431813 input!780)) tp!847898))))

(declare-fun b!2680701 () Bool)

(declare-fun e!1690001 () Bool)

(declare-fun tp!847897 () Bool)

(declare-fun mapRes!15893 () Bool)

(assert (=> b!2680701 (= e!1690001 (and tp!847897 mapRes!15893))))

(declare-fun condMapEmpty!15893 () Bool)

(declare-datatypes ((tuple3!4170 0))(
  ( (tuple3!4171 (_1!17731 Regex!7869) (_2!17731 Context!4286) (_3!2555 C!15896)) )
))
(declare-datatypes ((tuple2!30352 0))(
  ( (tuple2!30353 (_1!17732 tuple3!4170) (_2!17732 (InoxSet Context!4286))) )
))
(declare-datatypes ((List!30990 0))(
  ( (Nil!30890) (Cons!30890 (h!36310 tuple2!30352) (t!224491 List!30990)) )
))
(declare-datatypes ((array!12375 0))(
  ( (array!12376 (arr!5529 (Array (_ BitVec 32) List!30990)) (size!23871 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6940 0))(
  ( (LongMapFixedSize!6941 (defaultEntry!3855 Int) (mask!9141 (_ BitVec 32)) (extraKeys!3719 (_ BitVec 32)) (zeroValue!3729 List!30990) (minValue!3729 List!30990) (_size!6983 (_ BitVec 32)) (_keys!3770 array!12371) (_values!3751 array!12375) (_vacant!3531 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13689 0))(
  ( (Cell!13690 (v!32721 LongMapFixedSize!6940)) )
))
(declare-datatypes ((MutLongMap!3470 0))(
  ( (LongMap!3470 (underlying!7143 Cell!13689)) (MutLongMapExt!3469 (__x!19769 Int)) )
))
(declare-datatypes ((Cell!13691 0))(
  ( (Cell!13692 (v!32722 MutLongMap!3470)) )
))
(declare-datatypes ((Hashable!3386 0))(
  ( (HashableExt!3385 (__x!19770 Int)) )
))
(declare-datatypes ((MutableMap!3376 0))(
  ( (MutableMapExt!3375 (__x!19771 Int)) (HashMap!3376 (underlying!7144 Cell!13691) (hashF!5418 Hashable!3386) (_size!6984 (_ BitVec 32)) (defaultValue!3547 Int)) )
))
(declare-datatypes ((CacheDown!2194 0))(
  ( (CacheDown!2195 (cache!3519 MutableMap!3376)) )
))
(declare-fun cacheDown!499 () CacheDown!2194)

(declare-fun mapDefault!15894 () List!30990)

(assert (=> b!2680701 (= condMapEmpty!15893 (= (arr!5529 (_values!3751 (v!32721 (underlying!7143 (v!32722 (underlying!7144 (cache!3519 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!30990)) mapDefault!15894)))))

(declare-fun b!2680702 () Bool)

(declare-fun res!1126836 () Bool)

(declare-fun e!1690004 () Bool)

(assert (=> b!2680702 (=> (not res!1126836) (not e!1690004))))

(declare-fun valid!2687 (CacheDown!2194) Bool)

(assert (=> b!2680702 (= res!1126836 (valid!2687 cacheDown!499))))

(declare-fun b!2680703 () Bool)

(declare-fun res!1126840 () Bool)

(assert (=> b!2680703 (=> (not res!1126840) (not e!1690004))))

(declare-datatypes ((LexerInterface!4314 0))(
  ( (LexerInterfaceExt!4311 (__x!19772 Int)) (Lexer!4312) )
))
(declare-fun thiss!12257 () LexerInterface!4314)

(declare-datatypes ((List!30991 0))(
  ( (Nil!30891) (Cons!30891 (h!36311 (_ BitVec 16)) (t!224492 List!30991)) )
))
(declare-datatypes ((TokenValue!4940 0))(
  ( (FloatLiteralValue!9880 (text!35025 List!30991)) (TokenValueExt!4939 (__x!19773 Int)) (Broken!24700 (value!152050 List!30991)) (Object!5039) (End!4940) (Def!4940) (Underscore!4940) (Match!4940) (Else!4940) (Error!4940) (Case!4940) (If!4940) (Extends!4940) (Abstract!4940) (Class!4940) (Val!4940) (DelimiterValue!9880 (del!5000 List!30991)) (KeywordValue!4946 (value!152051 List!30991)) (CommentValue!9880 (value!152052 List!30991)) (WhitespaceValue!9880 (value!152053 List!30991)) (IndentationValue!4940 (value!152054 List!30991)) (String!34597) (Int32!4940) (Broken!24701 (value!152055 List!30991)) (Boolean!4941) (Unit!45073) (OperatorValue!4943 (op!5000 List!30991)) (IdentifierValue!9880 (value!152056 List!30991)) (IdentifierValue!9881 (value!152057 List!30991)) (WhitespaceValue!9881 (value!152058 List!30991)) (True!9880) (False!9880) (Broken!24702 (value!152059 List!30991)) (Broken!24703 (value!152060 List!30991)) (True!9881) (RightBrace!4940) (RightBracket!4940) (Colon!4940) (Null!4940) (Comma!4940) (LeftBracket!4940) (False!9881) (LeftBrace!4940) (ImaginaryLiteralValue!4940 (text!35026 List!30991)) (StringLiteralValue!14820 (value!152061 List!30991)) (EOFValue!4940 (value!152062 List!30991)) (IdentValue!4940 (value!152063 List!30991)) (DelimiterValue!9881 (value!152064 List!30991)) (DedentValue!4940 (value!152065 List!30991)) (NewLineValue!4940 (value!152066 List!30991)) (IntegerValue!14820 (value!152067 (_ BitVec 32)) (text!35027 List!30991)) (IntegerValue!14821 (value!152068 Int) (text!35028 List!30991)) (Times!4940) (Or!4940) (Equal!4940) (Minus!4940) (Broken!24704 (value!152069 List!30991)) (And!4940) (Div!4940) (LessEqual!4940) (Mod!4940) (Concat!12810) (Not!4940) (Plus!4940) (SpaceValue!4940 (value!152070 List!30991)) (IntegerValue!14822 (value!152071 Int) (text!35029 List!30991)) (StringLiteralValue!14821 (text!35030 List!30991)) (FloatLiteralValue!9881 (text!35031 List!30991)) (BytesLiteralValue!4940 (value!152072 List!30991)) (CommentValue!9881 (value!152073 List!30991)) (StringLiteralValue!14822 (value!152074 List!30991)) (ErrorTokenValue!4940 (msg!5001 List!30991)) )
))
(declare-datatypes ((TokenValueInjection!9320 0))(
  ( (TokenValueInjection!9321 (toValue!6672 Int) (toChars!6531 Int)) )
))
(declare-datatypes ((String!34598 0))(
  ( (String!34599 (value!152075 String)) )
))
(declare-datatypes ((Rule!9236 0))(
  ( (Rule!9237 (regex!4718 Regex!7869) (tag!5222 String!34598) (isSeparator!4718 Bool) (transformation!4718 TokenValueInjection!9320)) )
))
(declare-datatypes ((List!30992 0))(
  ( (Nil!30892) (Cons!30892 (h!36312 Rule!9236) (t!224493 List!30992)) )
))
(declare-fun rules!1381 () List!30992)

(declare-fun rulesInvariant!3813 (LexerInterface!4314 List!30992) Bool)

(assert (=> b!2680703 (= res!1126840 (rulesInvariant!3813 thiss!12257 rules!1381))))

(declare-fun b!2680704 () Bool)

(declare-fun e!1689989 () Bool)

(declare-fun lt!944181 () MutLongMap!3469)

(get-info :version)

(assert (=> b!2680704 (= e!1689989 (and e!1689999 ((_ is LongMap!3469) lt!944181)))))

(assert (=> b!2680704 (= lt!944181 (v!32720 (underlying!7142 (cache!3518 cacheUp!486))))))

(declare-fun b!2680705 () Bool)

(declare-fun e!1690007 () Bool)

(declare-fun e!1690006 () Bool)

(assert (=> b!2680705 (= e!1690007 e!1690006)))

(declare-fun res!1126837 () Bool)

(assert (=> start!261116 (=> (not res!1126837) (not e!1690004))))

(assert (=> start!261116 (= res!1126837 ((_ is Lexer!4312) thiss!12257))))

(assert (=> start!261116 e!1690004))

(declare-fun totalInput!354 () BalanceConc!18944)

(declare-fun e!1689995 () Bool)

(declare-fun inv!41915 (BalanceConc!18944) Bool)

(assert (=> start!261116 (and (inv!41915 totalInput!354) e!1689995)))

(declare-fun e!1689987 () Bool)

(declare-fun inv!41916 (CacheUp!2088) Bool)

(assert (=> start!261116 (and (inv!41916 cacheUp!486) e!1689987)))

(declare-datatypes ((Token!8902 0))(
  ( (Token!8903 (value!152076 TokenValue!4940) (rule!7128 Rule!9236) (size!23872 Int) (originalCharacters!5482 List!30989)) )
))
(declare-datatypes ((List!30993 0))(
  ( (Nil!30893) (Cons!30893 (h!36313 Token!8902) (t!224494 List!30993)) )
))
(declare-datatypes ((IArray!19337 0))(
  ( (IArray!19338 (innerList!9726 List!30993)) )
))
(declare-datatypes ((Conc!9666 0))(
  ( (Node!9666 (left!23888 Conc!9666) (right!24218 Conc!9666) (csize!19562 Int) (cheight!9877 Int)) (Leaf!14769 (xs!12696 IArray!19337) (csize!19563 Int)) (Empty!9666) )
))
(declare-datatypes ((BalanceConc!18946 0))(
  ( (BalanceConc!18947 (c!431814 Conc!9666)) )
))
(declare-fun acc!348 () BalanceConc!18946)

(declare-fun e!1689993 () Bool)

(declare-fun inv!41917 (BalanceConc!18946) Bool)

(assert (=> start!261116 (and (inv!41917 acc!348) e!1689993)))

(assert (=> start!261116 (and (inv!41915 input!780) e!1689997)))

(declare-fun treated!26 () BalanceConc!18944)

(declare-fun e!1689990 () Bool)

(assert (=> start!261116 (and (inv!41915 treated!26) e!1689990)))

(declare-fun e!1689984 () Bool)

(assert (=> start!261116 e!1689984))

(assert (=> start!261116 true))

(declare-fun e!1689991 () Bool)

(declare-fun inv!41918 (CacheDown!2194) Bool)

(assert (=> start!261116 (and (inv!41918 cacheDown!499) e!1689991)))

(declare-fun mapIsEmpty!15893 () Bool)

(declare-fun mapRes!15894 () Bool)

(assert (=> mapIsEmpty!15893 mapRes!15894))

(declare-fun b!2680706 () Bool)

(declare-fun e!1690002 () Bool)

(declare-fun tp!847905 () Bool)

(assert (=> b!2680706 (= e!1689984 (and e!1690002 tp!847905))))

(declare-fun b!2680707 () Bool)

(declare-fun res!1126839 () Bool)

(declare-fun e!1689998 () Bool)

(assert (=> b!2680707 (=> (not res!1126839) (not e!1689998))))

(declare-datatypes ((tuple2!30354 0))(
  ( (tuple2!30355 (_1!17733 BalanceConc!18946) (_2!17733 BalanceConc!18944)) )
))
(declare-fun lt!944186 () tuple2!30354)

(declare-fun isEmpty!17668 (List!30989) Bool)

(declare-fun list!11667 (BalanceConc!18944) List!30989)

(assert (=> b!2680707 (= res!1126839 (isEmpty!17668 (list!11667 (_2!17733 lt!944186))))))

(declare-fun tp!847894 () Bool)

(declare-fun tp!847892 () Bool)

(declare-fun array_inv!3949 (array!12375) Bool)

(assert (=> b!2680708 (= e!1690006 (and tp!847903 tp!847892 tp!847894 (array_inv!3947 (_keys!3770 (v!32721 (underlying!7143 (v!32722 (underlying!7144 (cache!3519 cacheDown!499))))))) (array_inv!3949 (_values!3751 (v!32721 (underlying!7143 (v!32722 (underlying!7144 (cache!3519 cacheDown!499))))))) e!1690001))))

(declare-fun e!1689992 () Bool)

(assert (=> b!2680709 (= e!1689992 (and e!1689989 tp!847896))))

(declare-fun b!2680710 () Bool)

(declare-fun tp!847901 () Bool)

(assert (=> b!2680710 (= e!1689995 (and (inv!41914 (c!431813 totalInput!354)) tp!847901))))

(declare-fun b!2680711 () Bool)

(declare-fun e!1690009 () Bool)

(declare-fun e!1690005 () Bool)

(declare-fun lt!944180 () MutLongMap!3470)

(assert (=> b!2680711 (= e!1690009 (and e!1690005 ((_ is LongMap!3470) lt!944180)))))

(assert (=> b!2680711 (= lt!944180 (v!32722 (underlying!7144 (cache!3519 cacheDown!499))))))

(declare-fun mapNonEmpty!15893 () Bool)

(declare-fun tp!847890 () Bool)

(declare-fun tp!847906 () Bool)

(assert (=> mapNonEmpty!15893 (= mapRes!15893 (and tp!847890 tp!847906))))

(declare-fun mapKey!15893 () (_ BitVec 32))

(declare-fun mapValue!15894 () List!30990)

(declare-fun mapRest!15894 () (Array (_ BitVec 32) List!30990))

(assert (=> mapNonEmpty!15893 (= (arr!5529 (_values!3751 (v!32721 (underlying!7143 (v!32722 (underlying!7144 (cache!3519 cacheDown!499))))))) (store mapRest!15894 mapKey!15893 mapValue!15894))))

(declare-fun e!1689996 () Bool)

(assert (=> b!2680712 (= e!1689996 (and tp!847904 tp!847891))))

(declare-fun b!2680713 () Bool)

(assert (=> b!2680713 (= e!1689998 false)))

(declare-fun lt!944185 () List!30993)

(declare-fun lt!944182 () BalanceConc!18946)

(declare-fun list!11668 (BalanceConc!18946) List!30993)

(assert (=> b!2680713 (= lt!944185 (list!11668 lt!944182))))

(declare-fun lt!944183 () List!30993)

(declare-fun lt!944184 () tuple2!30354)

(assert (=> b!2680713 (= lt!944183 (list!11668 (_1!17733 lt!944184)))))

(declare-fun ++!7538 (BalanceConc!18946 BalanceConc!18946) BalanceConc!18946)

(declare-fun lexRec!581 (LexerInterface!4314 List!30992 BalanceConc!18944) tuple2!30354)

(assert (=> b!2680713 (= lt!944182 (++!7538 acc!348 (_1!17733 (lexRec!581 thiss!12257 rules!1381 input!780))))))

(assert (=> b!2680713 (= lt!944184 (lexRec!581 thiss!12257 rules!1381 totalInput!354))))

(declare-fun mapNonEmpty!15894 () Bool)

(declare-fun tp!847889 () Bool)

(declare-fun tp!847887 () Bool)

(assert (=> mapNonEmpty!15894 (= mapRes!15894 (and tp!847889 tp!847887))))

(declare-fun mapValue!15893 () List!30988)

(declare-fun mapKey!15894 () (_ BitVec 32))

(declare-fun mapRest!15893 () (Array (_ BitVec 32) List!30988))

(assert (=> mapNonEmpty!15894 (= (arr!5528 (_values!3750 (v!32719 (underlying!7141 (v!32720 (underlying!7142 (cache!3518 cacheUp!486))))))) (store mapRest!15893 mapKey!15894 mapValue!15893))))

(declare-fun e!1689994 () Bool)

(assert (=> b!2680714 (= e!1689994 (and e!1690009 tp!847908))))

(declare-fun mapIsEmpty!15894 () Bool)

(assert (=> mapIsEmpty!15894 mapRes!15893))

(declare-fun b!2680715 () Bool)

(declare-fun res!1126841 () Bool)

(assert (=> b!2680715 (=> (not res!1126841) (not e!1690004))))

(declare-fun ++!7539 (List!30989 List!30989) List!30989)

(assert (=> b!2680715 (= res!1126841 (= (list!11667 totalInput!354) (++!7539 (list!11667 treated!26) (list!11667 input!780))))))

(declare-fun b!2680716 () Bool)

(declare-fun tp!847900 () Bool)

(assert (=> b!2680716 (= e!1689990 (and (inv!41914 (c!431813 treated!26)) tp!847900))))

(declare-fun b!2680717 () Bool)

(assert (=> b!2680717 (= e!1690005 e!1690007)))

(declare-fun b!2680718 () Bool)

(assert (=> b!2680718 (= e!1690004 e!1689998)))

(declare-fun res!1126843 () Bool)

(assert (=> b!2680718 (=> (not res!1126843) (not e!1689998))))

(assert (=> b!2680718 (= res!1126843 (= (list!11668 (_1!17733 lt!944186)) (list!11668 acc!348)))))

(assert (=> b!2680718 (= lt!944186 (lexRec!581 thiss!12257 rules!1381 treated!26))))

(declare-fun tp!847907 () Bool)

(declare-fun b!2680719 () Bool)

(declare-fun inv!41912 (String!34598) Bool)

(declare-fun inv!41919 (TokenValueInjection!9320) Bool)

(assert (=> b!2680719 (= e!1690002 (and tp!847907 (inv!41912 (tag!5222 (h!36312 rules!1381))) (inv!41919 (transformation!4718 (h!36312 rules!1381))) e!1689996))))

(declare-fun b!2680720 () Bool)

(assert (=> b!2680720 (= e!1689987 e!1689992)))

(declare-fun b!2680721 () Bool)

(declare-fun res!1126838 () Bool)

(assert (=> b!2680721 (=> (not res!1126838) (not e!1690004))))

(declare-fun valid!2688 (CacheUp!2088) Bool)

(assert (=> b!2680721 (= res!1126838 (valid!2688 cacheUp!486))))

(declare-fun b!2680722 () Bool)

(declare-fun tp!847895 () Bool)

(assert (=> b!2680722 (= e!1689986 (and tp!847895 mapRes!15894))))

(declare-fun condMapEmpty!15894 () Bool)

(declare-fun mapDefault!15893 () List!30988)

(assert (=> b!2680722 (= condMapEmpty!15894 (= (arr!5528 (_values!3750 (v!32719 (underlying!7141 (v!32720 (underlying!7142 (cache!3518 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!30988)) mapDefault!15893)))))

(declare-fun b!2680723 () Bool)

(assert (=> b!2680723 (= e!1690000 e!1689985)))

(declare-fun b!2680724 () Bool)

(assert (=> b!2680724 (= e!1689991 e!1689994)))

(declare-fun b!2680725 () Bool)

(declare-fun tp!847899 () Bool)

(declare-fun inv!41920 (Conc!9666) Bool)

(assert (=> b!2680725 (= e!1689993 (and (inv!41920 (c!431814 acc!348)) tp!847899))))

(declare-fun b!2680726 () Bool)

(declare-fun res!1126842 () Bool)

(assert (=> b!2680726 (=> (not res!1126842) (not e!1690004))))

(declare-fun isEmpty!17669 (List!30992) Bool)

(assert (=> b!2680726 (= res!1126842 (not (isEmpty!17669 rules!1381)))))

(assert (= (and start!261116 res!1126837) b!2680726))

(assert (= (and b!2680726 res!1126842) b!2680703))

(assert (= (and b!2680703 res!1126840) b!2680721))

(assert (= (and b!2680721 res!1126838) b!2680702))

(assert (= (and b!2680702 res!1126836) b!2680715))

(assert (= (and b!2680715 res!1126841) b!2680718))

(assert (= (and b!2680718 res!1126843) b!2680707))

(assert (= (and b!2680707 res!1126839) b!2680713))

(assert (= start!261116 b!2680710))

(assert (= (and b!2680722 condMapEmpty!15894) mapIsEmpty!15893))

(assert (= (and b!2680722 (not condMapEmpty!15894)) mapNonEmpty!15894))

(assert (= b!2680698 b!2680722))

(assert (= b!2680723 b!2680698))

(assert (= b!2680699 b!2680723))

(assert (= (and b!2680704 ((_ is LongMap!3469) (v!32720 (underlying!7142 (cache!3518 cacheUp!486))))) b!2680699))

(assert (= b!2680709 b!2680704))

(assert (= (and b!2680720 ((_ is HashMap!3375) (cache!3518 cacheUp!486))) b!2680709))

(assert (= start!261116 b!2680720))

(assert (= start!261116 b!2680725))

(assert (= start!261116 b!2680700))

(assert (= start!261116 b!2680716))

(assert (= b!2680719 b!2680712))

(assert (= b!2680706 b!2680719))

(assert (= (and start!261116 ((_ is Cons!30892) rules!1381)) b!2680706))

(assert (= (and b!2680701 condMapEmpty!15893) mapIsEmpty!15894))

(assert (= (and b!2680701 (not condMapEmpty!15893)) mapNonEmpty!15893))

(assert (= b!2680708 b!2680701))

(assert (= b!2680705 b!2680708))

(assert (= b!2680717 b!2680705))

(assert (= (and b!2680711 ((_ is LongMap!3470) (v!32722 (underlying!7144 (cache!3519 cacheDown!499))))) b!2680717))

(assert (= b!2680714 b!2680711))

(assert (= (and b!2680724 ((_ is HashMap!3376) (cache!3519 cacheDown!499))) b!2680714))

(assert (= start!261116 b!2680724))

(declare-fun m!3048823 () Bool)

(assert (=> b!2680707 m!3048823))

(assert (=> b!2680707 m!3048823))

(declare-fun m!3048825 () Bool)

(assert (=> b!2680707 m!3048825))

(declare-fun m!3048827 () Bool)

(assert (=> b!2680718 m!3048827))

(declare-fun m!3048829 () Bool)

(assert (=> b!2680718 m!3048829))

(declare-fun m!3048831 () Bool)

(assert (=> b!2680718 m!3048831))

(declare-fun m!3048833 () Bool)

(assert (=> b!2680703 m!3048833))

(declare-fun m!3048835 () Bool)

(assert (=> b!2680726 m!3048835))

(declare-fun m!3048837 () Bool)

(assert (=> b!2680702 m!3048837))

(declare-fun m!3048839 () Bool)

(assert (=> b!2680725 m!3048839))

(declare-fun m!3048841 () Bool)

(assert (=> b!2680716 m!3048841))

(declare-fun m!3048843 () Bool)

(assert (=> b!2680721 m!3048843))

(declare-fun m!3048845 () Bool)

(assert (=> b!2680708 m!3048845))

(declare-fun m!3048847 () Bool)

(assert (=> b!2680708 m!3048847))

(declare-fun m!3048849 () Bool)

(assert (=> mapNonEmpty!15894 m!3048849))

(declare-fun m!3048851 () Bool)

(assert (=> b!2680700 m!3048851))

(declare-fun m!3048853 () Bool)

(assert (=> start!261116 m!3048853))

(declare-fun m!3048855 () Bool)

(assert (=> start!261116 m!3048855))

(declare-fun m!3048857 () Bool)

(assert (=> start!261116 m!3048857))

(declare-fun m!3048859 () Bool)

(assert (=> start!261116 m!3048859))

(declare-fun m!3048861 () Bool)

(assert (=> start!261116 m!3048861))

(declare-fun m!3048863 () Bool)

(assert (=> start!261116 m!3048863))

(declare-fun m!3048865 () Bool)

(assert (=> b!2680719 m!3048865))

(declare-fun m!3048867 () Bool)

(assert (=> b!2680719 m!3048867))

(declare-fun m!3048869 () Bool)

(assert (=> b!2680698 m!3048869))

(declare-fun m!3048871 () Bool)

(assert (=> b!2680698 m!3048871))

(declare-fun m!3048873 () Bool)

(assert (=> b!2680713 m!3048873))

(declare-fun m!3048875 () Bool)

(assert (=> b!2680713 m!3048875))

(declare-fun m!3048877 () Bool)

(assert (=> b!2680713 m!3048877))

(declare-fun m!3048879 () Bool)

(assert (=> b!2680713 m!3048879))

(declare-fun m!3048881 () Bool)

(assert (=> b!2680713 m!3048881))

(declare-fun m!3048883 () Bool)

(assert (=> b!2680710 m!3048883))

(declare-fun m!3048885 () Bool)

(assert (=> b!2680715 m!3048885))

(declare-fun m!3048887 () Bool)

(assert (=> b!2680715 m!3048887))

(declare-fun m!3048889 () Bool)

(assert (=> b!2680715 m!3048889))

(assert (=> b!2680715 m!3048887))

(assert (=> b!2680715 m!3048889))

(declare-fun m!3048891 () Bool)

(assert (=> b!2680715 m!3048891))

(declare-fun m!3048893 () Bool)

(assert (=> mapNonEmpty!15893 m!3048893))

(check-sat b_and!198501 (not b!2680708) (not b!2680716) b_and!198509 (not b!2680713) (not b!2680703) (not b!2680715) (not b!2680718) (not b_next!76409) (not start!261116) (not b!2680722) (not mapNonEmpty!15894) b_and!198507 (not b!2680710) (not b!2680700) (not b!2680726) (not b!2680721) b_and!198505 (not b_next!76417) (not b!2680702) (not b_next!76415) (not b!2680701) (not b!2680706) b_and!198503 (not b_next!76419) (not b!2680725) (not b_next!76411) (not b!2680707) (not b!2680719) (not mapNonEmpty!15893) (not b!2680698) b_and!198511 (not b_next!76413))
(check-sat b_and!198507 b_and!198501 b_and!198509 (not b_next!76415) (not b_next!76409) b_and!198505 (not b_next!76417) b_and!198503 (not b_next!76419) (not b_next!76411) b_and!198511 (not b_next!76413))
