; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143630 () Bool)

(assert start!143630)

(declare-fun b!1550061 () Bool)

(declare-fun b_free!41091 () Bool)

(declare-fun b_next!41795 () Bool)

(assert (=> b!1550061 (= b_free!41091 (not b_next!41795))))

(declare-fun tp!452715 () Bool)

(declare-fun b_and!108181 () Bool)

(assert (=> b!1550061 (= tp!452715 b_and!108181)))

(declare-fun b!1550091 () Bool)

(declare-fun b_free!41093 () Bool)

(declare-fun b_next!41797 () Bool)

(assert (=> b!1550091 (= b_free!41093 (not b_next!41797))))

(declare-fun tp!452729 () Bool)

(declare-fun b_and!108183 () Bool)

(assert (=> b!1550091 (= tp!452729 b_and!108183)))

(declare-fun b!1550076 () Bool)

(declare-fun b_free!41095 () Bool)

(declare-fun b_next!41799 () Bool)

(assert (=> b!1550076 (= b_free!41095 (not b_next!41799))))

(declare-fun tp!452716 () Bool)

(declare-fun b_and!108185 () Bool)

(assert (=> b!1550076 (= tp!452716 b_and!108185)))

(declare-fun b!1550071 () Bool)

(declare-fun b_free!41097 () Bool)

(declare-fun b_next!41801 () Bool)

(assert (=> b!1550071 (= b_free!41097 (not b_next!41801))))

(declare-fun tp!452718 () Bool)

(declare-fun b_and!108187 () Bool)

(assert (=> b!1550071 (= tp!452718 b_and!108187)))

(declare-fun b!1550090 () Bool)

(declare-fun b_free!41099 () Bool)

(declare-fun b_next!41803 () Bool)

(assert (=> b!1550090 (= b_free!41099 (not b_next!41803))))

(declare-fun tp!452736 () Bool)

(declare-fun b_and!108189 () Bool)

(assert (=> b!1550090 (= tp!452736 b_and!108189)))

(declare-fun b!1550062 () Bool)

(declare-fun b_free!41101 () Bool)

(declare-fun b_next!41805 () Bool)

(assert (=> b!1550062 (= b_free!41101 (not b_next!41805))))

(declare-fun tp!452720 () Bool)

(declare-fun b_and!108191 () Bool)

(assert (=> b!1550062 (= tp!452720 b_and!108191)))

(declare-fun b_free!41103 () Bool)

(declare-fun b_next!41807 () Bool)

(assert (=> b!1550062 (= b_free!41103 (not b_next!41807))))

(declare-fun tp!452730 () Bool)

(declare-fun b_and!108193 () Bool)

(assert (=> b!1550062 (= tp!452730 b_and!108193)))

(declare-fun b!1550067 () Bool)

(declare-fun b_free!41105 () Bool)

(declare-fun b_next!41809 () Bool)

(assert (=> b!1550067 (= b_free!41105 (not b_next!41809))))

(declare-fun tp!452712 () Bool)

(declare-fun b_and!108195 () Bool)

(assert (=> b!1550067 (= tp!452712 b_and!108195)))

(declare-fun b!1550101 () Bool)

(declare-fun e!993973 () Bool)

(assert (=> b!1550101 (= e!993973 true)))

(declare-fun b!1550100 () Bool)

(declare-fun e!993972 () Bool)

(assert (=> b!1550100 (= e!993972 e!993973)))

(declare-fun b!1550086 () Bool)

(assert (=> b!1550086 e!993972))

(assert (= b!1550100 b!1550101))

(assert (= b!1550086 b!1550100))

(declare-fun order!9813 () Int)

(declare-datatypes ((List!16798 0))(
  ( (Nil!16730) (Cons!16730 (h!22131 (_ BitVec 16)) (t!141201 List!16798)) )
))
(declare-datatypes ((TokenValue!3023 0))(
  ( (FloatLiteralValue!6046 (text!21606 List!16798)) (TokenValueExt!3022 (__x!11031 Int)) (Broken!15115 (value!93208 List!16798)) (Object!3090) (End!3023) (Def!3023) (Underscore!3023) (Match!3023) (Else!3023) (Error!3023) (Case!3023) (If!3023) (Extends!3023) (Abstract!3023) (Class!3023) (Val!3023) (DelimiterValue!6046 (del!3083 List!16798)) (KeywordValue!3029 (value!93209 List!16798)) (CommentValue!6046 (value!93210 List!16798)) (WhitespaceValue!6046 (value!93211 List!16798)) (IndentationValue!3023 (value!93212 List!16798)) (String!19402) (Int32!3023) (Broken!15116 (value!93213 List!16798)) (Boolean!3024) (Unit!25998) (OperatorValue!3026 (op!3083 List!16798)) (IdentifierValue!6046 (value!93214 List!16798)) (IdentifierValue!6047 (value!93215 List!16798)) (WhitespaceValue!6047 (value!93216 List!16798)) (True!6046) (False!6046) (Broken!15117 (value!93217 List!16798)) (Broken!15118 (value!93218 List!16798)) (True!6047) (RightBrace!3023) (RightBracket!3023) (Colon!3023) (Null!3023) (Comma!3023) (LeftBracket!3023) (False!6047) (LeftBrace!3023) (ImaginaryLiteralValue!3023 (text!21607 List!16798)) (StringLiteralValue!9069 (value!93219 List!16798)) (EOFValue!3023 (value!93220 List!16798)) (IdentValue!3023 (value!93221 List!16798)) (DelimiterValue!6047 (value!93222 List!16798)) (DedentValue!3023 (value!93223 List!16798)) (NewLineValue!3023 (value!93224 List!16798)) (IntegerValue!9069 (value!93225 (_ BitVec 32)) (text!21608 List!16798)) (IntegerValue!9070 (value!93226 Int) (text!21609 List!16798)) (Times!3023) (Or!3023) (Equal!3023) (Minus!3023) (Broken!15119 (value!93227 List!16798)) (And!3023) (Div!3023) (LessEqual!3023) (Mod!3023) (Concat!7284) (Not!3023) (Plus!3023) (SpaceValue!3023 (value!93228 List!16798)) (IntegerValue!9071 (value!93229 Int) (text!21610 List!16798)) (StringLiteralValue!9070 (text!21611 List!16798)) (FloatLiteralValue!6047 (text!21612 List!16798)) (BytesLiteralValue!3023 (value!93230 List!16798)) (CommentValue!6047 (value!93231 List!16798)) (StringLiteralValue!9071 (value!93232 List!16798)) (ErrorTokenValue!3023 (msg!3084 List!16798)) )
))
(declare-datatypes ((C!8700 0))(
  ( (C!8701 (val!4922 Int)) )
))
(declare-datatypes ((List!16799 0))(
  ( (Nil!16731) (Cons!16731 (h!22132 C!8700) (t!141202 List!16799)) )
))
(declare-datatypes ((IArray!11107 0))(
  ( (IArray!11108 (innerList!5611 List!16799)) )
))
(declare-datatypes ((Conc!5551 0))(
  ( (Node!5551 (left!13622 Conc!5551) (right!13952 Conc!5551) (csize!11332 Int) (cheight!5762 Int)) (Leaf!8227 (xs!8351 IArray!11107) (csize!11333 Int)) (Empty!5551) )
))
(declare-datatypes ((BalanceConc!11044 0))(
  ( (BalanceConc!11045 (c!252229 Conc!5551)) )
))
(declare-datatypes ((Regex!4261 0))(
  ( (ElementMatch!4261 (c!252230 C!8700)) (Concat!7285 (regOne!9034 Regex!4261) (regTwo!9034 Regex!4261)) (EmptyExpr!4261) (Star!4261 (reg!4590 Regex!4261)) (EmptyLang!4261) (Union!4261 (regOne!9035 Regex!4261) (regTwo!9035 Regex!4261)) )
))
(declare-datatypes ((String!19403 0))(
  ( (String!19404 (value!93233 String)) )
))
(declare-datatypes ((TokenValueInjection!5706 0))(
  ( (TokenValueInjection!5707 (toValue!4296 Int) (toChars!4155 Int)) )
))
(declare-datatypes ((Rule!5666 0))(
  ( (Rule!5667 (regex!2933 Regex!4261) (tag!3197 String!19403) (isSeparator!2933 Bool) (transformation!2933 TokenValueInjection!5706)) )
))
(declare-fun rule!240 () Rule!5666)

(declare-fun order!9811 () Int)

(declare-fun lambda!65633 () Int)

(declare-fun dynLambda!7400 (Int Int) Int)

(declare-fun dynLambda!7401 (Int Int) Int)

(assert (=> b!1550101 (< (dynLambda!7400 order!9811 (toValue!4296 (transformation!2933 rule!240))) (dynLambda!7401 order!9813 lambda!65633))))

(declare-fun order!9815 () Int)

(declare-fun dynLambda!7402 (Int Int) Int)

(assert (=> b!1550101 (< (dynLambda!7402 order!9815 (toChars!4155 (transformation!2933 rule!240))) (dynLambda!7401 order!9813 lambda!65633))))

(declare-fun b!1550058 () Bool)

(declare-fun e!993935 () Bool)

(declare-fun e!993966 () Bool)

(declare-datatypes ((List!16800 0))(
  ( (Nil!16732) (Cons!16732 (h!22133 Regex!4261) (t!141203 List!16800)) )
))
(declare-datatypes ((Context!1558 0))(
  ( (Context!1559 (exprs!1279 List!16800)) )
))
(declare-datatypes ((tuple3!1730 0))(
  ( (tuple3!1731 (_1!9341 Regex!4261) (_2!9341 Context!1558) (_3!1298 C!8700)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!16086 0))(
  ( (tuple2!16087 (_1!9342 tuple3!1730) (_2!9342 (InoxSet Context!1558))) )
))
(declare-datatypes ((List!16801 0))(
  ( (Nil!16733) (Cons!16733 (h!22134 tuple2!16086) (t!141204 List!16801)) )
))
(declare-datatypes ((array!6028 0))(
  ( (array!6029 (arr!2691 (Array (_ BitVec 32) (_ BitVec 64))) (size!13529 (_ BitVec 32))) )
))
(declare-datatypes ((array!6030 0))(
  ( (array!6031 (arr!2692 (Array (_ BitVec 32) List!16801)) (size!13530 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3510 0))(
  ( (LongMapFixedSize!3511 (defaultEntry!2115 Int) (mask!4974 (_ BitVec 32)) (extraKeys!2002 (_ BitVec 32)) (zeroValue!2012 List!16801) (minValue!2012 List!16801) (_size!3591 (_ BitVec 32)) (_keys!2049 array!6028) (_values!2034 array!6030) (_vacant!1816 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6905 0))(
  ( (Cell!6906 (v!23558 LongMapFixedSize!3510)) )
))
(declare-datatypes ((MutLongMap!1755 0))(
  ( (LongMap!1755 (underlying!3719 Cell!6905)) (MutLongMapExt!1754 (__x!11032 Int)) )
))
(declare-fun lt!537017 () MutLongMap!1755)

(get-info :version)

(assert (=> b!1550058 (= e!993935 (and e!993966 ((_ is LongMap!1755) lt!537017)))))

(declare-datatypes ((Cell!6907 0))(
  ( (Cell!6908 (v!23559 MutLongMap!1755)) )
))
(declare-datatypes ((Hashable!1699 0))(
  ( (HashableExt!1698 (__x!11033 Int)) )
))
(declare-datatypes ((MutableMap!1699 0))(
  ( (MutableMapExt!1698 (__x!11034 Int)) (HashMap!1699 (underlying!3720 Cell!6907) (hashF!3618 Hashable!1699) (_size!3592 (_ BitVec 32)) (defaultValue!1859 Int)) )
))
(declare-datatypes ((CacheDown!1036 0))(
  ( (CacheDown!1037 (cache!2080 MutableMap!1699)) )
))
(declare-fun cacheDown!768 () CacheDown!1036)

(assert (=> b!1550058 (= lt!537017 (v!23559 (underlying!3720 (cache!2080 cacheDown!768))))))

(declare-fun mapNonEmpty!8154 () Bool)

(declare-fun mapRes!8154 () Bool)

(declare-fun tp!452726 () Bool)

(declare-fun tp!452725 () Bool)

(assert (=> mapNonEmpty!8154 (= mapRes!8154 (and tp!452726 tp!452725))))

(declare-datatypes ((tuple2!16088 0))(
  ( (tuple2!16089 (_1!9343 Context!1558) (_2!9343 C!8700)) )
))
(declare-datatypes ((tuple2!16090 0))(
  ( (tuple2!16091 (_1!9344 tuple2!16088) (_2!9344 (InoxSet Context!1558))) )
))
(declare-datatypes ((List!16802 0))(
  ( (Nil!16734) (Cons!16734 (h!22135 tuple2!16090) (t!141205 List!16802)) )
))
(declare-datatypes ((array!6032 0))(
  ( (array!6033 (arr!2693 (Array (_ BitVec 32) List!16802)) (size!13531 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1700 0))(
  ( (HashableExt!1699 (__x!11035 Int)) )
))
(declare-datatypes ((LongMapFixedSize!3512 0))(
  ( (LongMapFixedSize!3513 (defaultEntry!2116 Int) (mask!4975 (_ BitVec 32)) (extraKeys!2003 (_ BitVec 32)) (zeroValue!2013 List!16802) (minValue!2013 List!16802) (_size!3593 (_ BitVec 32)) (_keys!2050 array!6028) (_values!2035 array!6032) (_vacant!1817 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6909 0))(
  ( (Cell!6910 (v!23560 LongMapFixedSize!3512)) )
))
(declare-datatypes ((MutLongMap!1756 0))(
  ( (LongMap!1756 (underlying!3721 Cell!6909)) (MutLongMapExt!1755 (__x!11036 Int)) )
))
(declare-datatypes ((Cell!6911 0))(
  ( (Cell!6912 (v!23561 MutLongMap!1756)) )
))
(declare-datatypes ((MutableMap!1700 0))(
  ( (MutableMapExt!1699 (__x!11037 Int)) (HashMap!1700 (underlying!3722 Cell!6911) (hashF!3619 Hashable!1700) (_size!3594 (_ BitVec 32)) (defaultValue!1860 Int)) )
))
(declare-datatypes ((CacheUp!1032 0))(
  ( (CacheUp!1033 (cache!2081 MutableMap!1700)) )
))
(declare-fun cacheUp!755 () CacheUp!1032)

(declare-fun mapRest!8154 () (Array (_ BitVec 32) List!16802))

(declare-fun mapKey!8156 () (_ BitVec 32))

(declare-fun mapValue!8154 () List!16802)

(assert (=> mapNonEmpty!8154 (= (arr!2693 (_values!2035 (v!23560 (underlying!3721 (v!23561 (underlying!3722 (cache!2081 cacheUp!755))))))) (store mapRest!8154 mapKey!8156 mapValue!8154))))

(declare-fun b!1550059 () Bool)

(declare-fun e!993954 () Bool)

(declare-datatypes ((tuple2!16092 0))(
  ( (tuple2!16093 (_1!9345 List!16799) (_2!9345 List!16799)) )
))
(declare-fun lt!537029 () tuple2!16092)

(declare-fun matchR!1869 (Regex!4261 List!16799) Bool)

(assert (=> b!1550059 (= e!993954 (matchR!1869 (regex!2933 rule!240) (_1!9345 lt!537029)))))

(declare-fun b!1550060 () Bool)

(declare-fun e!993943 () Bool)

(declare-fun e!993936 () Bool)

(assert (=> b!1550060 (= e!993943 e!993936)))

(declare-fun res!692801 () Bool)

(declare-fun e!993945 () Bool)

(assert (=> start!143630 (=> (not res!692801) (not e!993945))))

(declare-datatypes ((LexerInterface!2572 0))(
  ( (LexerInterfaceExt!2569 (__x!11038 Int)) (Lexer!2570) )
))
(declare-fun thiss!16438 () LexerInterface!2572)

(assert (=> start!143630 (= res!692801 ((_ is Lexer!2570) thiss!16438))))

(assert (=> start!143630 e!993945))

(declare-fun totalInput!568 () BalanceConc!11044)

(declare-fun e!993942 () Bool)

(declare-fun inv!21988 (BalanceConc!11044) Bool)

(assert (=> start!143630 (and (inv!21988 totalInput!568) e!993942)))

(declare-fun e!993963 () Bool)

(declare-fun inv!21989 (CacheUp!1032) Bool)

(assert (=> start!143630 (and (inv!21989 cacheUp!755) e!993963)))

(declare-datatypes ((tuple3!1732 0))(
  ( (tuple3!1733 (_1!9346 (InoxSet Context!1558)) (_2!9346 Int) (_3!1299 Int)) )
))
(declare-datatypes ((tuple2!16094 0))(
  ( (tuple2!16095 (_1!9347 tuple3!1732) (_2!9347 Int)) )
))
(declare-datatypes ((List!16803 0))(
  ( (Nil!16735) (Cons!16735 (h!22136 tuple2!16094) (t!141206 List!16803)) )
))
(declare-datatypes ((array!6034 0))(
  ( (array!6035 (arr!2694 (Array (_ BitVec 32) List!16803)) (size!13532 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3514 0))(
  ( (LongMapFixedSize!3515 (defaultEntry!2117 Int) (mask!4976 (_ BitVec 32)) (extraKeys!2004 (_ BitVec 32)) (zeroValue!2014 List!16803) (minValue!2014 List!16803) (_size!3595 (_ BitVec 32)) (_keys!2051 array!6028) (_values!2036 array!6034) (_vacant!1818 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6913 0))(
  ( (Cell!6914 (v!23562 LongMapFixedSize!3514)) )
))
(declare-datatypes ((Hashable!1701 0))(
  ( (HashableExt!1700 (__x!11039 Int)) )
))
(declare-datatypes ((MutLongMap!1757 0))(
  ( (LongMap!1757 (underlying!3723 Cell!6913)) (MutLongMapExt!1756 (__x!11040 Int)) )
))
(declare-datatypes ((Cell!6915 0))(
  ( (Cell!6916 (v!23563 MutLongMap!1757)) )
))
(declare-datatypes ((MutableMap!1701 0))(
  ( (MutableMapExt!1700 (__x!11041 Int)) (HashMap!1701 (underlying!3724 Cell!6915) (hashF!3620 Hashable!1701) (_size!3596 (_ BitVec 32)) (defaultValue!1861 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!458 0))(
  ( (CacheFurthestNullable!459 (cache!2082 MutableMap!1701) (totalInput!2432 BalanceConc!11044)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!458)

(declare-fun e!993952 () Bool)

(declare-fun inv!21990 (CacheFurthestNullable!458) Bool)

(assert (=> start!143630 (and (inv!21990 cacheFurthestNullable!103) e!993952)))

(declare-fun input!1676 () BalanceConc!11044)

(declare-fun e!993962 () Bool)

(assert (=> start!143630 (and (inv!21988 input!1676) e!993962)))

(declare-fun e!993949 () Bool)

(assert (=> start!143630 e!993949))

(declare-fun e!993953 () Bool)

(declare-fun inv!21991 (CacheDown!1036) Bool)

(assert (=> start!143630 (and (inv!21991 cacheDown!768) e!993953)))

(assert (=> start!143630 true))

(declare-fun e!993965 () Bool)

(declare-fun e!993958 () Bool)

(assert (=> b!1550061 (= e!993965 (and e!993958 tp!452715))))

(declare-fun e!993938 () Bool)

(assert (=> b!1550062 (= e!993938 (and tp!452720 tp!452730))))

(declare-fun mapIsEmpty!8154 () Bool)

(declare-fun mapRes!8155 () Bool)

(assert (=> mapIsEmpty!8154 mapRes!8155))

(declare-fun b!1550063 () Bool)

(assert (=> b!1550063 (= e!993963 e!993965)))

(declare-fun b!1550064 () Bool)

(declare-fun e!993934 () Bool)

(declare-fun e!993957 () Bool)

(assert (=> b!1550064 (= e!993934 e!993957)))

(declare-fun b!1550065 () Bool)

(declare-fun e!993937 () Bool)

(declare-fun e!993950 () Bool)

(assert (=> b!1550065 (= e!993937 e!993950)))

(declare-fun b!1550066 () Bool)

(declare-fun res!692802 () Bool)

(declare-fun e!993960 () Bool)

(assert (=> b!1550066 (=> (not res!692802) (not e!993960))))

(assert (=> b!1550066 (= res!692802 (= (totalInput!2432 cacheFurthestNullable!103) totalInput!568))))

(declare-fun tp!452727 () Bool)

(declare-fun e!993967 () Bool)

(declare-fun tp!452723 () Bool)

(declare-fun array_inv!1936 (array!6028) Bool)

(declare-fun array_inv!1937 (array!6030) Bool)

(assert (=> b!1550067 (= e!993957 (and tp!452712 tp!452723 tp!452727 (array_inv!1936 (_keys!2049 (v!23558 (underlying!3719 (v!23559 (underlying!3720 (cache!2080 cacheDown!768))))))) (array_inv!1937 (_values!2034 (v!23558 (underlying!3719 (v!23559 (underlying!3720 (cache!2080 cacheDown!768))))))) e!993967))))

(declare-fun b!1550068 () Bool)

(declare-fun tp!452713 () Bool)

(declare-fun mapRes!8156 () Bool)

(assert (=> b!1550068 (= e!993967 (and tp!452713 mapRes!8156))))

(declare-fun condMapEmpty!8155 () Bool)

(declare-fun mapDefault!8155 () List!16801)

(assert (=> b!1550068 (= condMapEmpty!8155 (= (arr!2692 (_values!2034 (v!23558 (underlying!3719 (v!23559 (underlying!3720 (cache!2080 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16801)) mapDefault!8155)))))

(declare-fun b!1550069 () Bool)

(declare-fun tp!452724 () Bool)

(declare-fun inv!21983 (String!19403) Bool)

(declare-fun inv!21992 (TokenValueInjection!5706) Bool)

(assert (=> b!1550069 (= e!993949 (and tp!452724 (inv!21983 (tag!3197 rule!240)) (inv!21992 (transformation!2933 rule!240)) e!993938))))

(declare-fun b!1550070 () Bool)

(declare-fun res!692803 () Bool)

(assert (=> b!1550070 (=> (not res!692803) (not e!993945))))

(declare-fun ruleValid!674 (LexerInterface!2572 Rule!5666) Bool)

(assert (=> b!1550070 (= res!692803 (ruleValid!674 thiss!16438 rule!240))))

(declare-fun mapNonEmpty!8155 () Bool)

(declare-fun tp!452728 () Bool)

(declare-fun tp!452711 () Bool)

(assert (=> mapNonEmpty!8155 (= mapRes!8156 (and tp!452728 tp!452711))))

(declare-fun mapValue!8156 () List!16801)

(declare-fun mapRest!8156 () (Array (_ BitVec 32) List!16801))

(declare-fun mapKey!8154 () (_ BitVec 32))

(assert (=> mapNonEmpty!8155 (= (arr!2692 (_values!2034 (v!23558 (underlying!3719 (v!23559 (underlying!3720 (cache!2080 cacheDown!768))))))) (store mapRest!8156 mapKey!8154 mapValue!8156))))

(declare-fun e!993956 () Bool)

(assert (=> b!1550071 (= e!993956 (and e!993935 tp!452718))))

(declare-fun b!1550072 () Bool)

(declare-fun res!692799 () Bool)

(assert (=> b!1550072 (=> (not res!692799) (not e!993945))))

(declare-fun valid!1410 (CacheDown!1036) Bool)

(assert (=> b!1550072 (= res!692799 (valid!1410 cacheDown!768))))

(declare-fun b!1550073 () Bool)

(declare-datatypes ((Token!5456 0))(
  ( (Token!5457 (value!93234 TokenValue!3023) (rule!4718 Rule!5666) (size!13533 Int) (originalCharacters!3759 List!16799)) )
))
(declare-datatypes ((tuple2!16096 0))(
  ( (tuple2!16097 (_1!9348 Token!5456) (_2!9348 BalanceConc!11044)) )
))
(declare-datatypes ((Option!3018 0))(
  ( (None!3017) (Some!3017 (v!23564 tuple2!16096)) )
))
(declare-fun e!993948 () Option!3018)

(assert (=> b!1550073 (= e!993948 None!3017)))

(declare-fun b!1550074 () Bool)

(declare-fun e!993959 () Bool)

(declare-fun tp!452732 () Bool)

(assert (=> b!1550074 (= e!993959 (and tp!452732 mapRes!8154))))

(declare-fun condMapEmpty!8154 () Bool)

(declare-fun mapDefault!8154 () List!16802)

(assert (=> b!1550074 (= condMapEmpty!8154 (= (arr!2693 (_values!2035 (v!23560 (underlying!3721 (v!23561 (underlying!3722 (cache!2081 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16802)) mapDefault!8154)))))

(declare-fun b!1550075 () Bool)

(declare-fun lt!537019 () Bool)

(declare-fun lt!537030 () Bool)

(assert (=> b!1550075 (= e!993960 (and (= lt!537019 lt!537030) lt!537019 (not lt!537030)))))

(declare-fun lt!537026 () List!16799)

(declare-datatypes ((tuple2!16098 0))(
  ( (tuple2!16099 (_1!9349 Token!5456) (_2!9349 List!16799)) )
))
(declare-datatypes ((Option!3019 0))(
  ( (None!3018) (Some!3018 (v!23565 tuple2!16098)) )
))
(declare-fun isDefined!2421 (Option!3019) Bool)

(declare-fun maxPrefixOneRule!694 (LexerInterface!2572 Rule!5666 List!16799) Option!3019)

(assert (=> b!1550075 (= lt!537030 (isDefined!2421 (maxPrefixOneRule!694 thiss!16438 rule!240 lt!537026)))))

(declare-fun isDefined!2422 (Option!3018) Bool)

(assert (=> b!1550075 (= lt!537019 (isDefined!2422 e!993948))))

(declare-fun c!252228 () Bool)

(declare-datatypes ((tuple2!16100 0))(
  ( (tuple2!16101 (_1!9350 BalanceConc!11044) (_2!9350 BalanceConc!11044)) )
))
(declare-datatypes ((tuple4!866 0))(
  ( (tuple4!867 (_1!9351 tuple2!16100) (_2!9351 CacheUp!1032) (_3!1300 CacheDown!1036) (_4!433 CacheFurthestNullable!458)) )
))
(declare-fun lt!537024 () tuple4!866)

(declare-fun isEmpty!10080 (BalanceConc!11044) Bool)

(assert (=> b!1550075 (= c!252228 (isEmpty!10080 (_1!9350 (_1!9351 lt!537024))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!38 (Regex!4261 BalanceConc!11044 BalanceConc!11044 CacheUp!1032 CacheDown!1036 CacheFurthestNullable!458) tuple4!866)

(assert (=> b!1550075 (= lt!537024 (findLongestMatchWithZipperSequenceV3Mem!38 (regex!2933 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun e!993964 () Bool)

(declare-fun tp!452721 () Bool)

(declare-fun tp!452735 () Bool)

(declare-fun e!993951 () Bool)

(declare-fun array_inv!1938 (array!6034) Bool)

(assert (=> b!1550076 (= e!993964 (and tp!452716 tp!452735 tp!452721 (array_inv!1936 (_keys!2051 (v!23562 (underlying!3723 (v!23563 (underlying!3724 (cache!2082 cacheFurthestNullable!103))))))) (array_inv!1938 (_values!2036 (v!23562 (underlying!3723 (v!23563 (underlying!3724 (cache!2082 cacheFurthestNullable!103))))))) e!993951))))

(declare-fun mapIsEmpty!8155 () Bool)

(assert (=> mapIsEmpty!8155 mapRes!8156))

(declare-fun mapIsEmpty!8156 () Bool)

(assert (=> mapIsEmpty!8156 mapRes!8154))

(declare-fun b!1550077 () Bool)

(declare-fun res!692800 () Bool)

(assert (=> b!1550077 (=> (not res!692800) (not e!993945))))

(declare-fun valid!1411 (CacheUp!1032) Bool)

(assert (=> b!1550077 (= res!692800 (valid!1411 cacheUp!755))))

(declare-fun b!1550078 () Bool)

(declare-fun e!993941 () Bool)

(assert (=> b!1550078 (= e!993950 e!993941)))

(declare-fun mapNonEmpty!8156 () Bool)

(declare-fun tp!452719 () Bool)

(declare-fun tp!452722 () Bool)

(assert (=> mapNonEmpty!8156 (= mapRes!8155 (and tp!452719 tp!452722))))

(declare-fun mapRest!8155 () (Array (_ BitVec 32) List!16803))

(declare-fun mapKey!8155 () (_ BitVec 32))

(declare-fun mapValue!8155 () List!16803)

(assert (=> mapNonEmpty!8156 (= (arr!2694 (_values!2036 (v!23562 (underlying!3723 (v!23563 (underlying!3724 (cache!2082 cacheFurthestNullable!103))))))) (store mapRest!8155 mapKey!8155 mapValue!8155))))

(declare-fun e!993940 () Bool)

(declare-fun e!993946 () Bool)

(declare-fun b!1550079 () Bool)

(assert (=> b!1550079 (= e!993952 (and e!993946 (inv!21988 (totalInput!2432 cacheFurthestNullable!103)) e!993940))))

(declare-fun b!1550080 () Bool)

(assert (=> b!1550080 (= e!993945 e!993960)))

(declare-fun res!692798 () Bool)

(assert (=> b!1550080 (=> (not res!692798) (not e!993960))))

(declare-fun isSuffix!365 (List!16799 List!16799) Bool)

(declare-fun list!6473 (BalanceConc!11044) List!16799)

(assert (=> b!1550080 (= res!692798 (isSuffix!365 lt!537026 (list!6473 totalInput!568)))))

(assert (=> b!1550080 (= lt!537026 (list!6473 input!1676))))

(declare-fun b!1550081 () Bool)

(assert (=> b!1550081 (= e!993936 e!993964)))

(declare-fun b!1550082 () Bool)

(declare-fun tp!452734 () Bool)

(declare-fun inv!21993 (Conc!5551) Bool)

(assert (=> b!1550082 (= e!993962 (and (inv!21993 (c!252229 input!1676)) tp!452734))))

(declare-fun b!1550083 () Bool)

(declare-fun tp!452710 () Bool)

(assert (=> b!1550083 (= e!993940 (and (inv!21993 (c!252229 (totalInput!2432 cacheFurthestNullable!103))) tp!452710))))

(declare-fun b!1550084 () Bool)

(declare-fun res!692796 () Bool)

(assert (=> b!1550084 (=> (not res!692796) (not e!993945))))

(declare-fun valid!1412 (CacheFurthestNullable!458) Bool)

(assert (=> b!1550084 (= res!692796 (valid!1412 cacheFurthestNullable!103))))

(declare-fun b!1550085 () Bool)

(assert (=> b!1550085 (= e!993953 e!993956)))

(declare-fun lt!537015 () List!16799)

(declare-fun lt!537022 () Int)

(declare-fun lt!537020 () TokenValue!3023)

(assert (=> b!1550086 (= e!993948 (Some!3017 (tuple2!16097 (Token!5457 lt!537020 rule!240 lt!537022 lt!537015) (_2!9350 (_1!9351 lt!537024)))))))

(declare-datatypes ((Unit!25999 0))(
  ( (Unit!26000) )
))
(declare-fun lt!537021 () Unit!25999)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!306 (Regex!4261 List!16799) Unit!25999)

(assert (=> b!1550086 (= lt!537021 (longestMatchIsAcceptedByMatchOrIsEmpty!306 (regex!2933 rule!240) lt!537026))))

(declare-fun findLongestMatchInner!322 (Regex!4261 List!16799 Int List!16799 List!16799 Int) tuple2!16092)

(declare-fun size!13534 (List!16799) Int)

(assert (=> b!1550086 (= lt!537029 (findLongestMatchInner!322 (regex!2933 rule!240) Nil!16731 (size!13534 Nil!16731) lt!537026 lt!537026 (size!13534 lt!537026)))))

(declare-fun res!692797 () Bool)

(declare-fun isEmpty!10081 (List!16799) Bool)

(assert (=> b!1550086 (= res!692797 (isEmpty!10081 (_1!9345 lt!537029)))))

(assert (=> b!1550086 (=> res!692797 e!993954)))

(assert (=> b!1550086 e!993954))

(declare-fun lt!537023 () Unit!25999)

(declare-fun lemmaInv!416 (TokenValueInjection!5706) Unit!25999)

(assert (=> b!1550086 (= lt!537023 (lemmaInv!416 (transformation!2933 rule!240)))))

(declare-fun lt!537025 () Unit!25999)

(declare-fun ForallOf!203 (Int BalanceConc!11044) Unit!25999)

(assert (=> b!1550086 (= lt!537025 (ForallOf!203 lambda!65633 (_1!9350 (_1!9351 lt!537024))))))

(assert (=> b!1550086 (= lt!537015 (list!6473 (_1!9350 (_1!9351 lt!537024))))))

(declare-fun lt!537031 () BalanceConc!11044)

(declare-fun seqFromList!1766 (List!16799) BalanceConc!11044)

(assert (=> b!1550086 (= lt!537031 (seqFromList!1766 lt!537015))))

(declare-fun lt!537028 () Unit!25999)

(assert (=> b!1550086 (= lt!537028 (ForallOf!203 lambda!65633 lt!537031))))

(declare-fun apply!4102 (TokenValueInjection!5706 BalanceConc!11044) TokenValue!3023)

(assert (=> b!1550086 (= lt!537020 (apply!4102 (transformation!2933 rule!240) (_1!9350 (_1!9351 lt!537024))))))

(declare-fun size!13535 (BalanceConc!11044) Int)

(assert (=> b!1550086 (= lt!537022 (size!13535 (_1!9350 (_1!9351 lt!537024))))))

(declare-fun lt!537027 () Unit!25999)

(declare-fun lemmaEqSameImage!146 (TokenValueInjection!5706 BalanceConc!11044 BalanceConc!11044) Unit!25999)

(assert (=> b!1550086 (= lt!537027 (lemmaEqSameImage!146 (transformation!2933 rule!240) (_1!9350 (_1!9351 lt!537024)) lt!537031))))

(declare-fun b!1550087 () Bool)

(declare-fun tp!452733 () Bool)

(assert (=> b!1550087 (= e!993951 (and tp!452733 mapRes!8155))))

(declare-fun condMapEmpty!8156 () Bool)

(declare-fun mapDefault!8156 () List!16803)

(assert (=> b!1550087 (= condMapEmpty!8156 (= (arr!2694 (_values!2036 (v!23562 (underlying!3723 (v!23563 (underlying!3724 (cache!2082 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16803)) mapDefault!8156)))))

(declare-fun b!1550088 () Bool)

(declare-fun e!993939 () Bool)

(declare-fun lt!537018 () MutLongMap!1757)

(assert (=> b!1550088 (= e!993939 (and e!993943 ((_ is LongMap!1757) lt!537018)))))

(assert (=> b!1550088 (= lt!537018 (v!23563 (underlying!3724 (cache!2082 cacheFurthestNullable!103))))))

(declare-fun b!1550089 () Bool)

(declare-fun tp!452714 () Bool)

(assert (=> b!1550089 (= e!993942 (and (inv!21993 (c!252229 totalInput!568)) tp!452714))))

(assert (=> b!1550090 (= e!993946 (and e!993939 tp!452736))))

(declare-fun tp!452717 () Bool)

(declare-fun tp!452731 () Bool)

(declare-fun array_inv!1939 (array!6032) Bool)

(assert (=> b!1550091 (= e!993941 (and tp!452729 tp!452717 tp!452731 (array_inv!1936 (_keys!2050 (v!23560 (underlying!3721 (v!23561 (underlying!3722 (cache!2081 cacheUp!755))))))) (array_inv!1939 (_values!2035 (v!23560 (underlying!3721 (v!23561 (underlying!3722 (cache!2081 cacheUp!755))))))) e!993959))))

(declare-fun b!1550092 () Bool)

(declare-fun lt!537016 () MutLongMap!1756)

(assert (=> b!1550092 (= e!993958 (and e!993937 ((_ is LongMap!1756) lt!537016)))))

(assert (=> b!1550092 (= lt!537016 (v!23561 (underlying!3722 (cache!2081 cacheUp!755))))))

(declare-fun b!1550093 () Bool)

(assert (=> b!1550093 (= e!993966 e!993934)))

(assert (= (and start!143630 res!692801) b!1550070))

(assert (= (and b!1550070 res!692803) b!1550077))

(assert (= (and b!1550077 res!692800) b!1550072))

(assert (= (and b!1550072 res!692799) b!1550084))

(assert (= (and b!1550084 res!692796) b!1550080))

(assert (= (and b!1550080 res!692798) b!1550066))

(assert (= (and b!1550066 res!692802) b!1550075))

(assert (= (and b!1550075 c!252228) b!1550073))

(assert (= (and b!1550075 (not c!252228)) b!1550086))

(assert (= (and b!1550086 (not res!692797)) b!1550059))

(assert (= start!143630 b!1550089))

(assert (= (and b!1550074 condMapEmpty!8154) mapIsEmpty!8156))

(assert (= (and b!1550074 (not condMapEmpty!8154)) mapNonEmpty!8154))

(assert (= b!1550091 b!1550074))

(assert (= b!1550078 b!1550091))

(assert (= b!1550065 b!1550078))

(assert (= (and b!1550092 ((_ is LongMap!1756) (v!23561 (underlying!3722 (cache!2081 cacheUp!755))))) b!1550065))

(assert (= b!1550061 b!1550092))

(assert (= (and b!1550063 ((_ is HashMap!1700) (cache!2081 cacheUp!755))) b!1550061))

(assert (= start!143630 b!1550063))

(assert (= (and b!1550087 condMapEmpty!8156) mapIsEmpty!8154))

(assert (= (and b!1550087 (not condMapEmpty!8156)) mapNonEmpty!8156))

(assert (= b!1550076 b!1550087))

(assert (= b!1550081 b!1550076))

(assert (= b!1550060 b!1550081))

(assert (= (and b!1550088 ((_ is LongMap!1757) (v!23563 (underlying!3724 (cache!2082 cacheFurthestNullable!103))))) b!1550060))

(assert (= b!1550090 b!1550088))

(assert (= (and b!1550079 ((_ is HashMap!1701) (cache!2082 cacheFurthestNullable!103))) b!1550090))

(assert (= b!1550079 b!1550083))

(assert (= start!143630 b!1550079))

(assert (= start!143630 b!1550082))

(assert (= b!1550069 b!1550062))

(assert (= start!143630 b!1550069))

(assert (= (and b!1550068 condMapEmpty!8155) mapIsEmpty!8155))

(assert (= (and b!1550068 (not condMapEmpty!8155)) mapNonEmpty!8155))

(assert (= b!1550067 b!1550068))

(assert (= b!1550064 b!1550067))

(assert (= b!1550093 b!1550064))

(assert (= (and b!1550058 ((_ is LongMap!1755) (v!23559 (underlying!3720 (cache!2080 cacheDown!768))))) b!1550093))

(assert (= b!1550071 b!1550058))

(assert (= (and b!1550085 ((_ is HashMap!1699) (cache!2080 cacheDown!768))) b!1550071))

(assert (= start!143630 b!1550085))

(declare-fun m!1822873 () Bool)

(assert (=> mapNonEmpty!8154 m!1822873))

(declare-fun m!1822875 () Bool)

(assert (=> mapNonEmpty!8156 m!1822875))

(declare-fun m!1822877 () Bool)

(assert (=> b!1550079 m!1822877))

(declare-fun m!1822879 () Bool)

(assert (=> mapNonEmpty!8155 m!1822879))

(declare-fun m!1822881 () Bool)

(assert (=> b!1550084 m!1822881))

(declare-fun m!1822883 () Bool)

(assert (=> b!1550070 m!1822883))

(declare-fun m!1822885 () Bool)

(assert (=> b!1550082 m!1822885))

(declare-fun m!1822887 () Bool)

(assert (=> b!1550091 m!1822887))

(declare-fun m!1822889 () Bool)

(assert (=> b!1550091 m!1822889))

(declare-fun m!1822891 () Bool)

(assert (=> b!1550089 m!1822891))

(declare-fun m!1822893 () Bool)

(assert (=> b!1550080 m!1822893))

(assert (=> b!1550080 m!1822893))

(declare-fun m!1822895 () Bool)

(assert (=> b!1550080 m!1822895))

(declare-fun m!1822897 () Bool)

(assert (=> b!1550080 m!1822897))

(declare-fun m!1822899 () Bool)

(assert (=> start!143630 m!1822899))

(declare-fun m!1822901 () Bool)

(assert (=> start!143630 m!1822901))

(declare-fun m!1822903 () Bool)

(assert (=> start!143630 m!1822903))

(declare-fun m!1822905 () Bool)

(assert (=> start!143630 m!1822905))

(declare-fun m!1822907 () Bool)

(assert (=> start!143630 m!1822907))

(declare-fun m!1822909 () Bool)

(assert (=> b!1550086 m!1822909))

(declare-fun m!1822911 () Bool)

(assert (=> b!1550086 m!1822911))

(declare-fun m!1822913 () Bool)

(assert (=> b!1550086 m!1822913))

(declare-fun m!1822915 () Bool)

(assert (=> b!1550086 m!1822915))

(declare-fun m!1822917 () Bool)

(assert (=> b!1550086 m!1822917))

(declare-fun m!1822919 () Bool)

(assert (=> b!1550086 m!1822919))

(declare-fun m!1822921 () Bool)

(assert (=> b!1550086 m!1822921))

(declare-fun m!1822923 () Bool)

(assert (=> b!1550086 m!1822923))

(declare-fun m!1822925 () Bool)

(assert (=> b!1550086 m!1822925))

(declare-fun m!1822927 () Bool)

(assert (=> b!1550086 m!1822927))

(declare-fun m!1822929 () Bool)

(assert (=> b!1550086 m!1822929))

(assert (=> b!1550086 m!1822919))

(assert (=> b!1550086 m!1822915))

(declare-fun m!1822931 () Bool)

(assert (=> b!1550086 m!1822931))

(declare-fun m!1822933 () Bool)

(assert (=> b!1550086 m!1822933))

(declare-fun m!1822935 () Bool)

(assert (=> b!1550067 m!1822935))

(declare-fun m!1822937 () Bool)

(assert (=> b!1550067 m!1822937))

(declare-fun m!1822939 () Bool)

(assert (=> b!1550059 m!1822939))

(declare-fun m!1822941 () Bool)

(assert (=> b!1550069 m!1822941))

(declare-fun m!1822943 () Bool)

(assert (=> b!1550069 m!1822943))

(declare-fun m!1822945 () Bool)

(assert (=> b!1550083 m!1822945))

(declare-fun m!1822947 () Bool)

(assert (=> b!1550075 m!1822947))

(declare-fun m!1822949 () Bool)

(assert (=> b!1550075 m!1822949))

(assert (=> b!1550075 m!1822947))

(declare-fun m!1822951 () Bool)

(assert (=> b!1550075 m!1822951))

(declare-fun m!1822953 () Bool)

(assert (=> b!1550075 m!1822953))

(declare-fun m!1822955 () Bool)

(assert (=> b!1550075 m!1822955))

(declare-fun m!1822957 () Bool)

(assert (=> b!1550076 m!1822957))

(declare-fun m!1822959 () Bool)

(assert (=> b!1550076 m!1822959))

(declare-fun m!1822961 () Bool)

(assert (=> b!1550072 m!1822961))

(declare-fun m!1822963 () Bool)

(assert (=> b!1550077 m!1822963))

(check-sat (not b_next!41807) (not b_next!41799) (not b_next!41805) (not b!1550069) (not b!1550074) (not b!1550082) b_and!108183 b_and!108189 b_and!108185 (not b!1550086) (not b_next!41801) (not b!1550059) (not b_next!41809) (not b!1550075) (not b!1550079) b_and!108181 (not mapNonEmpty!8154) b_and!108193 (not mapNonEmpty!8156) b_and!108191 (not b!1550067) b_and!108187 (not b!1550087) (not b!1550084) (not b!1550080) (not b!1550077) (not b!1550072) (not b_next!41803) (not b_next!41795) (not start!143630) (not b!1550089) (not mapNonEmpty!8155) (not b!1550076) (not b!1550091) (not b!1550083) (not b!1550070) (not b!1550068) (not b_next!41797) b_and!108195)
(check-sat (not b_next!41807) (not b_next!41809) b_and!108181 (not b_next!41799) (not b_next!41805) b_and!108187 (not b_next!41803) (not b_next!41795) b_and!108183 b_and!108189 b_and!108185 (not b_next!41801) b_and!108193 b_and!108191 (not b_next!41797) b_and!108195)
