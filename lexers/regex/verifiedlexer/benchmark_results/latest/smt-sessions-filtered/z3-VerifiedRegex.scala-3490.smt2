; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201430 () Bool)

(assert start!201430)

(declare-fun b!2044249 () Bool)

(declare-fun b_free!57113 () Bool)

(declare-fun b_next!57817 () Bool)

(assert (=> b!2044249 (= b_free!57113 (not b_next!57817))))

(declare-fun tp!607770 () Bool)

(declare-fun b_and!163053 () Bool)

(assert (=> b!2044249 (= tp!607770 b_and!163053)))

(declare-fun b_free!57115 () Bool)

(declare-fun b_next!57819 () Bool)

(assert (=> b!2044249 (= b_free!57115 (not b_next!57819))))

(declare-fun tp!607775 () Bool)

(declare-fun b_and!163055 () Bool)

(assert (=> b!2044249 (= tp!607775 b_and!163055)))

(declare-fun b!2044234 () Bool)

(declare-fun b_free!57117 () Bool)

(declare-fun b_next!57821 () Bool)

(assert (=> b!2044234 (= b_free!57117 (not b_next!57821))))

(declare-fun tp!607783 () Bool)

(declare-fun b_and!163057 () Bool)

(assert (=> b!2044234 (= tp!607783 b_and!163057)))

(declare-fun b!2044263 () Bool)

(declare-fun b_free!57119 () Bool)

(declare-fun b_next!57823 () Bool)

(assert (=> b!2044263 (= b_free!57119 (not b_next!57823))))

(declare-fun tp!607766 () Bool)

(declare-fun b_and!163059 () Bool)

(assert (=> b!2044263 (= tp!607766 b_and!163059)))

(declare-fun b!2044257 () Bool)

(declare-fun b_free!57121 () Bool)

(declare-fun b_next!57825 () Bool)

(assert (=> b!2044257 (= b_free!57121 (not b_next!57825))))

(declare-fun tp!607773 () Bool)

(declare-fun b_and!163061 () Bool)

(assert (=> b!2044257 (= tp!607773 b_and!163061)))

(declare-fun b!2044244 () Bool)

(declare-fun b_free!57123 () Bool)

(declare-fun b_next!57827 () Bool)

(assert (=> b!2044244 (= b_free!57123 (not b_next!57827))))

(declare-fun tp!607782 () Bool)

(declare-fun b_and!163063 () Bool)

(assert (=> b!2044244 (= tp!607782 b_and!163063)))

(declare-datatypes ((C!11040 0))(
  ( (C!11041 (val!6506 Int)) )
))
(declare-datatypes ((Regex!5447 0))(
  ( (ElementMatch!5447 (c!330991 C!11040)) (Concat!9602 (regOne!11406 Regex!5447) (regTwo!11406 Regex!5447)) (EmptyExpr!5447) (Star!5447 (reg!5776 Regex!5447)) (EmptyLang!5447) (Union!5447 (regOne!11407 Regex!5447) (regTwo!11407 Regex!5447)) )
))
(declare-datatypes ((List!22508 0))(
  ( (Nil!22424) (Cons!22424 (h!27825 Regex!5447) (t!191622 List!22508)) )
))
(declare-datatypes ((Context!2034 0))(
  ( (Context!2035 (exprs!1517 List!22508)) )
))
(declare-datatypes ((Hashable!1923 0))(
  ( (HashableExt!1922 (__x!13925 Int)) )
))
(declare-datatypes ((tuple3!2074 0))(
  ( (tuple3!2075 (_1!12064 Regex!5447) (_2!12064 Context!2034) (_3!1501 C!11040)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!21126 0))(
  ( (tuple2!21127 (_1!12065 tuple3!2074) (_2!12065 (InoxSet Context!2034))) )
))
(declare-datatypes ((List!22509 0))(
  ( (Nil!22425) (Cons!22425 (h!27826 tuple2!21126) (t!191623 List!22509)) )
))
(declare-datatypes ((array!6927 0))(
  ( (array!6928 (arr!3077 (Array (_ BitVec 32) (_ BitVec 64))) (size!17534 (_ BitVec 32))) )
))
(declare-datatypes ((array!6929 0))(
  ( (array!6930 (arr!3078 (Array (_ BitVec 32) List!22509)) (size!17535 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4018 0))(
  ( (LongMapFixedSize!4019 (defaultEntry!2374 Int) (mask!6048 (_ BitVec 32)) (extraKeys!2257 (_ BitVec 32)) (zeroValue!2267 List!22509) (minValue!2267 List!22509) (_size!4069 (_ BitVec 32)) (_keys!2306 array!6927) (_values!2289 array!6929) (_vacant!2070 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7861 0))(
  ( (Cell!7862 (v!27119 LongMapFixedSize!4018)) )
))
(declare-datatypes ((MutLongMap!2009 0))(
  ( (LongMap!2009 (underlying!4213 Cell!7861)) (MutLongMapExt!2008 (__x!13926 Int)) )
))
(declare-datatypes ((Cell!7863 0))(
  ( (Cell!7864 (v!27120 MutLongMap!2009)) )
))
(declare-datatypes ((MutableMap!1923 0))(
  ( (MutableMapExt!1922 (__x!13927 Int)) (HashMap!1923 (underlying!4214 Cell!7863) (hashF!3846 Hashable!1923) (_size!4070 (_ BitVec 32)) (defaultValue!2085 Int)) )
))
(declare-datatypes ((CacheDown!1222 0))(
  ( (CacheDown!1223 (cache!2304 MutableMap!1923)) )
))
(declare-fun cacheDown!575 () CacheDown!1222)

(declare-fun e!1291219 () Bool)

(declare-fun tp!607784 () Bool)

(declare-fun tp!607777 () Bool)

(declare-fun e!1291214 () Bool)

(declare-fun array_inv!2209 (array!6927) Bool)

(declare-fun array_inv!2210 (array!6929) Bool)

(assert (=> b!2044234 (= e!1291219 (and tp!607783 tp!607784 tp!607777 (array_inv!2209 (_keys!2306 (v!27119 (underlying!4213 (v!27120 (underlying!4214 (cache!2304 cacheDown!575))))))) (array_inv!2210 (_values!2289 (v!27119 (underlying!4213 (v!27120 (underlying!4214 (cache!2304 cacheDown!575))))))) e!1291214))))

(declare-fun b!2044235 () Bool)

(declare-fun res!895686 () Bool)

(declare-fun e!1291215 () Bool)

(assert (=> b!2044235 (=> (not res!895686) (not e!1291215))))

(declare-datatypes ((List!22510 0))(
  ( (Nil!22426) (Cons!22426 (h!27827 (_ BitVec 16)) (t!191624 List!22510)) )
))
(declare-datatypes ((TokenValue!4155 0))(
  ( (FloatLiteralValue!8310 (text!29530 List!22510)) (TokenValueExt!4154 (__x!13928 Int)) (Broken!20775 (value!126169 List!22510)) (Object!4238) (End!4155) (Def!4155) (Underscore!4155) (Match!4155) (Else!4155) (Error!4155) (Case!4155) (If!4155) (Extends!4155) (Abstract!4155) (Class!4155) (Val!4155) (DelimiterValue!8310 (del!4215 List!22510)) (KeywordValue!4161 (value!126170 List!22510)) (CommentValue!8310 (value!126171 List!22510)) (WhitespaceValue!8310 (value!126172 List!22510)) (IndentationValue!4155 (value!126173 List!22510)) (String!25966) (Int32!4155) (Broken!20776 (value!126174 List!22510)) (Boolean!4156) (Unit!37030) (OperatorValue!4158 (op!4215 List!22510)) (IdentifierValue!8310 (value!126175 List!22510)) (IdentifierValue!8311 (value!126176 List!22510)) (WhitespaceValue!8311 (value!126177 List!22510)) (True!8310) (False!8310) (Broken!20777 (value!126178 List!22510)) (Broken!20778 (value!126179 List!22510)) (True!8311) (RightBrace!4155) (RightBracket!4155) (Colon!4155) (Null!4155) (Comma!4155) (LeftBracket!4155) (False!8311) (LeftBrace!4155) (ImaginaryLiteralValue!4155 (text!29531 List!22510)) (StringLiteralValue!12465 (value!126180 List!22510)) (EOFValue!4155 (value!126181 List!22510)) (IdentValue!4155 (value!126182 List!22510)) (DelimiterValue!8311 (value!126183 List!22510)) (DedentValue!4155 (value!126184 List!22510)) (NewLineValue!4155 (value!126185 List!22510)) (IntegerValue!12465 (value!126186 (_ BitVec 32)) (text!29532 List!22510)) (IntegerValue!12466 (value!126187 Int) (text!29533 List!22510)) (Times!4155) (Or!4155) (Equal!4155) (Minus!4155) (Broken!20779 (value!126188 List!22510)) (And!4155) (Div!4155) (LessEqual!4155) (Mod!4155) (Concat!9603) (Not!4155) (Plus!4155) (SpaceValue!4155 (value!126189 List!22510)) (IntegerValue!12467 (value!126190 Int) (text!29534 List!22510)) (StringLiteralValue!12466 (text!29535 List!22510)) (FloatLiteralValue!8311 (text!29536 List!22510)) (BytesLiteralValue!4155 (value!126191 List!22510)) (CommentValue!8311 (value!126192 List!22510)) (StringLiteralValue!12467 (value!126193 List!22510)) (ErrorTokenValue!4155 (msg!4216 List!22510)) )
))
(declare-datatypes ((List!22511 0))(
  ( (Nil!22427) (Cons!22427 (h!27828 C!11040) (t!191625 List!22511)) )
))
(declare-datatypes ((IArray!15033 0))(
  ( (IArray!15034 (innerList!7574 List!22511)) )
))
(declare-datatypes ((String!25967 0))(
  ( (String!25968 (value!126194 String)) )
))
(declare-datatypes ((Conc!7514 0))(
  ( (Node!7514 (left!17808 Conc!7514) (right!18138 Conc!7514) (csize!15258 Int) (cheight!7725 Int)) (Leaf!11005 (xs!10422 IArray!15033) (csize!15259 Int)) (Empty!7514) )
))
(declare-datatypes ((BalanceConc!14790 0))(
  ( (BalanceConc!14791 (c!330992 Conc!7514)) )
))
(declare-datatypes ((TokenValueInjection!7894 0))(
  ( (TokenValueInjection!7895 (toValue!5702 Int) (toChars!5561 Int)) )
))
(declare-datatypes ((Rule!7838 0))(
  ( (Rule!7839 (regex!4019 Regex!5447) (tag!4509 String!25967) (isSeparator!4019 Bool) (transformation!4019 TokenValueInjection!7894)) )
))
(declare-datatypes ((Token!7588 0))(
  ( (Token!7589 (value!126195 TokenValue!4155) (rule!6255 Rule!7838) (size!17536 Int) (originalCharacters!4825 List!22511)) )
))
(declare-datatypes ((List!22512 0))(
  ( (Nil!22428) (Cons!22428 (h!27829 Token!7588) (t!191626 List!22512)) )
))
(declare-datatypes ((IArray!15035 0))(
  ( (IArray!15036 (innerList!7575 List!22512)) )
))
(declare-datatypes ((Conc!7515 0))(
  ( (Node!7515 (left!17809 Conc!7515) (right!18139 Conc!7515) (csize!15260 Int) (cheight!7726 Int)) (Leaf!11006 (xs!10423 IArray!15035) (csize!15261 Int)) (Empty!7515) )
))
(declare-datatypes ((BalanceConc!14792 0))(
  ( (BalanceConc!14793 (c!330993 Conc!7515)) )
))
(declare-datatypes ((tuple2!21128 0))(
  ( (tuple2!21129 (_1!12066 BalanceConc!14792) (_2!12066 BalanceConc!14790)) )
))
(declare-fun lt!766579 () tuple2!21128)

(declare-fun isEmpty!13974 (List!22511) Bool)

(declare-fun list!9189 (BalanceConc!14790) List!22511)

(assert (=> b!2044235 (= res!895686 (isEmpty!13974 (list!9189 (_2!12066 lt!766579))))))

(declare-fun mapIsEmpty!9270 () Bool)

(declare-fun mapRes!9270 () Bool)

(assert (=> mapIsEmpty!9270 mapRes!9270))

(declare-fun b!2044236 () Bool)

(declare-fun e!1291235 () Bool)

(declare-fun e!1291213 () Bool)

(assert (=> b!2044236 (= e!1291235 e!1291213)))

(declare-fun res!895683 () Bool)

(assert (=> b!2044236 (=> res!895683 e!1291213)))

(declare-datatypes ((tuple2!21130 0))(
  ( (tuple2!21131 (_1!12067 Context!2034) (_2!12067 C!11040)) )
))
(declare-datatypes ((tuple2!21132 0))(
  ( (tuple2!21133 (_1!12068 tuple2!21130) (_2!12068 (InoxSet Context!2034))) )
))
(declare-datatypes ((List!22513 0))(
  ( (Nil!22429) (Cons!22429 (h!27830 tuple2!21132) (t!191627 List!22513)) )
))
(declare-datatypes ((array!6931 0))(
  ( (array!6932 (arr!3079 (Array (_ BitVec 32) List!22513)) (size!17537 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4020 0))(
  ( (LongMapFixedSize!4021 (defaultEntry!2375 Int) (mask!6049 (_ BitVec 32)) (extraKeys!2258 (_ BitVec 32)) (zeroValue!2268 List!22513) (minValue!2268 List!22513) (_size!4071 (_ BitVec 32)) (_keys!2307 array!6927) (_values!2290 array!6931) (_vacant!2071 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7865 0))(
  ( (Cell!7866 (v!27121 LongMapFixedSize!4020)) )
))
(declare-datatypes ((MutLongMap!2010 0))(
  ( (LongMap!2010 (underlying!4215 Cell!7865)) (MutLongMapExt!2009 (__x!13929 Int)) )
))
(declare-datatypes ((Hashable!1924 0))(
  ( (HashableExt!1923 (__x!13930 Int)) )
))
(declare-datatypes ((Cell!7867 0))(
  ( (Cell!7868 (v!27122 MutLongMap!2010)) )
))
(declare-datatypes ((MutableMap!1924 0))(
  ( (MutableMapExt!1923 (__x!13931 Int)) (HashMap!1924 (underlying!4216 Cell!7867) (hashF!3847 Hashable!1924) (_size!4072 (_ BitVec 32)) (defaultValue!2086 Int)) )
))
(declare-datatypes ((CacheUp!1218 0))(
  ( (CacheUp!1219 (cache!2305 MutableMap!1924)) )
))
(declare-datatypes ((tuple2!21134 0))(
  ( (tuple2!21135 (_1!12069 Token!7588) (_2!12069 BalanceConc!14790)) )
))
(declare-datatypes ((Option!4700 0))(
  ( (None!4699) (Some!4699 (v!27123 tuple2!21134)) )
))
(declare-datatypes ((tuple3!2076 0))(
  ( (tuple3!2077 (_1!12070 Option!4700) (_2!12070 CacheUp!1218) (_3!1502 CacheDown!1222)) )
))
(declare-fun lt!766585 () tuple3!2076)

(get-info :version)

(assert (=> b!2044236 (= res!895683 (not ((_ is Some!4699) (_1!12070 lt!766585))))))

(declare-datatypes ((LexerInterface!3632 0))(
  ( (LexerInterfaceExt!3629 (__x!13932 Int)) (Lexer!3630) )
))
(declare-fun thiss!12889 () LexerInterface!3632)

(declare-fun cacheUp!562 () CacheUp!1218)

(declare-datatypes ((List!22514 0))(
  ( (Nil!22430) (Cons!22430 (h!27831 Rule!7838) (t!191628 List!22514)) )
))
(declare-fun rules!1563 () List!22514)

(declare-fun totalInput!418 () BalanceConc!14790)

(declare-fun input!986 () BalanceConc!14790)

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!11 (LexerInterface!3632 List!22514 BalanceConc!14790 BalanceConc!14790 CacheUp!1218 CacheDown!1222) tuple3!2076)

(assert (=> b!2044236 (= lt!766585 (maxPrefixZipperSequenceV2MemOnlyDeriv!11 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun e!1291224 () Bool)

(declare-fun e!1291236 () Bool)

(declare-fun b!2044237 () Bool)

(declare-fun tp!607771 () Bool)

(declare-fun inv!29774 (String!25967) Bool)

(declare-fun inv!29775 (TokenValueInjection!7894) Bool)

(assert (=> b!2044237 (= e!1291224 (and tp!607771 (inv!29774 (tag!4509 (h!27831 rules!1563))) (inv!29775 (transformation!4019 (h!27831 rules!1563))) e!1291236))))

(declare-fun b!2044238 () Bool)

(declare-fun e!1291237 () Bool)

(declare-fun e!1291230 () Bool)

(declare-fun lt!766584 () MutLongMap!2010)

(assert (=> b!2044238 (= e!1291237 (and e!1291230 ((_ is LongMap!2010) lt!766584)))))

(assert (=> b!2044238 (= lt!766584 (v!27122 (underlying!4216 (cache!2305 cacheUp!562))))))

(declare-fun b!2044239 () Bool)

(declare-fun e!1291218 () Bool)

(assert (=> b!2044239 (= e!1291215 e!1291218)))

(declare-fun res!895680 () Bool)

(assert (=> b!2044239 (=> (not res!895680) (not e!1291218))))

(declare-fun lt!766581 () tuple2!21128)

(declare-fun lt!766576 () tuple2!21128)

(declare-fun acc!382 () BalanceConc!14792)

(declare-fun list!9190 (BalanceConc!14792) List!22512)

(declare-fun ++!6091 (BalanceConc!14792 BalanceConc!14792) BalanceConc!14792)

(assert (=> b!2044239 (= res!895680 (= (list!9190 (_1!12066 lt!766576)) (list!9190 (++!6091 acc!382 (_1!12066 lt!766581)))))))

(declare-fun lexRec!437 (LexerInterface!3632 List!22514 BalanceConc!14790) tuple2!21128)

(assert (=> b!2044239 (= lt!766581 (lexRec!437 thiss!12889 rules!1563 input!986))))

(assert (=> b!2044239 (= lt!766576 (lexRec!437 thiss!12889 rules!1563 totalInput!418))))

(declare-fun b!2044240 () Bool)

(declare-fun e!1291217 () Bool)

(declare-fun e!1291225 () Bool)

(assert (=> b!2044240 (= e!1291217 e!1291225)))

(declare-fun b!2044241 () Bool)

(declare-fun e!1291227 () Bool)

(assert (=> b!2044241 (= e!1291227 e!1291215)))

(declare-fun res!895688 () Bool)

(assert (=> b!2044241 (=> (not res!895688) (not e!1291215))))

(assert (=> b!2044241 (= res!895688 (= (list!9190 (_1!12066 lt!766579)) (list!9190 acc!382)))))

(declare-fun treated!60 () BalanceConc!14790)

(assert (=> b!2044241 (= lt!766579 (lexRec!437 thiss!12889 rules!1563 treated!60))))

(declare-fun b!2044242 () Bool)

(declare-fun e!1291223 () Bool)

(assert (=> b!2044242 (= e!1291230 e!1291223)))

(declare-fun b!2044243 () Bool)

(declare-fun e!1291216 () Bool)

(declare-fun e!1291211 () Bool)

(assert (=> b!2044243 (= e!1291216 e!1291211)))

(declare-fun b!2044245 () Bool)

(declare-fun e!1291228 () Bool)

(assert (=> b!2044245 (= e!1291223 e!1291228)))

(declare-fun b!2044246 () Bool)

(declare-fun res!895689 () Bool)

(declare-fun e!1291233 () Bool)

(assert (=> b!2044246 (=> (not res!895689) (not e!1291233))))

(declare-fun isEmpty!13975 (List!22514) Bool)

(assert (=> b!2044246 (= res!895689 (not (isEmpty!13975 rules!1563)))))

(declare-fun b!2044247 () Bool)

(declare-fun res!895685 () Bool)

(assert (=> b!2044247 (=> (not res!895685) (not e!1291218))))

(assert (=> b!2044247 (= res!895685 (= (list!9189 (_2!12066 lt!766576)) (list!9189 (_2!12066 lt!766581))))))

(declare-fun b!2044248 () Bool)

(declare-fun e!1291234 () Bool)

(declare-fun tp!607765 () Bool)

(assert (=> b!2044248 (= e!1291234 (and e!1291224 tp!607765))))

(assert (=> b!2044249 (= e!1291236 (and tp!607770 tp!607775))))

(declare-fun b!2044250 () Bool)

(declare-fun e!1291240 () Bool)

(declare-fun tp!607786 () Bool)

(declare-fun inv!29776 (Conc!7514) Bool)

(assert (=> b!2044250 (= e!1291240 (and (inv!29776 (c!330992 totalInput!418)) tp!607786))))

(declare-fun b!2044251 () Bool)

(declare-fun e!1291229 () Bool)

(declare-fun lt!766580 () MutLongMap!2009)

(assert (=> b!2044251 (= e!1291229 (and e!1291217 ((_ is LongMap!2009) lt!766580)))))

(assert (=> b!2044251 (= lt!766580 (v!27120 (underlying!4214 (cache!2304 cacheDown!575))))))

(declare-fun b!2044252 () Bool)

(assert (=> b!2044252 (= e!1291233 e!1291227)))

(declare-fun res!895684 () Bool)

(assert (=> b!2044252 (=> (not res!895684) (not e!1291227))))

(declare-fun lt!766587 () List!22511)

(declare-fun lt!766582 () List!22511)

(assert (=> b!2044252 (= res!895684 (= lt!766587 lt!766582))))

(declare-fun lt!766577 () List!22511)

(declare-fun lt!766586 () List!22511)

(declare-fun ++!6092 (List!22511 List!22511) List!22511)

(assert (=> b!2044252 (= lt!766582 (++!6092 lt!766577 lt!766586))))

(assert (=> b!2044252 (= lt!766587 (list!9189 totalInput!418))))

(assert (=> b!2044252 (= lt!766586 (list!9189 input!986))))

(assert (=> b!2044252 (= lt!766577 (list!9189 treated!60))))

(declare-fun b!2044253 () Bool)

(declare-fun e!1291226 () Bool)

(declare-fun tp!607769 () Bool)

(declare-fun inv!29777 (Conc!7515) Bool)

(assert (=> b!2044253 (= e!1291226 (and (inv!29777 (c!330993 acc!382)) tp!607769))))

(declare-fun b!2044254 () Bool)

(declare-fun e!1291221 () Bool)

(declare-fun tp!607767 () Bool)

(assert (=> b!2044254 (= e!1291221 (and (inv!29776 (c!330992 treated!60)) tp!607767))))

(declare-fun b!2044255 () Bool)

(assert (=> b!2044255 (= e!1291213 true)))

(declare-fun lt!766588 () Bool)

(declare-fun rulesValidInductive!1398 (LexerInterface!3632 List!22514) Bool)

(assert (=> b!2044255 (= lt!766588 (rulesValidInductive!1398 thiss!12889 rules!1563))))

(declare-fun lt!766589 () tuple3!2076)

(assert (=> b!2044255 (= lt!766589 (maxPrefixZipperSequenceV2MemOnlyDeriv!11 thiss!12889 rules!1563 input!986 totalInput!418 (_2!12070 lt!766585) (_3!1502 lt!766585)))))

(declare-fun lt!766578 () tuple2!21128)

(assert (=> b!2044255 (= lt!766578 (lexRec!437 thiss!12889 rules!1563 (_2!12069 (v!27123 (_1!12070 lt!766585)))))))

(declare-fun b!2044256 () Bool)

(declare-fun res!895687 () Bool)

(assert (=> b!2044256 (=> (not res!895687) (not e!1291218))))

(declare-fun valid!1601 (CacheDown!1222) Bool)

(assert (=> b!2044256 (= res!895687 (valid!1601 cacheDown!575))))

(declare-fun e!1291231 () Bool)

(assert (=> b!2044257 (= e!1291231 (and e!1291229 tp!607773))))

(declare-fun b!2044258 () Bool)

(declare-fun res!895679 () Bool)

(assert (=> b!2044258 (=> (not res!895679) (not e!1291233))))

(declare-fun rulesInvariant!3232 (LexerInterface!3632 List!22514) Bool)

(assert (=> b!2044258 (= res!895679 (rulesInvariant!3232 thiss!12889 rules!1563))))

(declare-fun mapNonEmpty!9270 () Bool)

(declare-fun tp!607774 () Bool)

(declare-fun tp!607780 () Bool)

(assert (=> mapNonEmpty!9270 (= mapRes!9270 (and tp!607774 tp!607780))))

(declare-fun mapValue!9271 () List!22509)

(declare-fun mapKey!9271 () (_ BitVec 32))

(declare-fun mapRest!9270 () (Array (_ BitVec 32) List!22509))

(assert (=> mapNonEmpty!9270 (= (arr!3078 (_values!2289 (v!27119 (underlying!4213 (v!27120 (underlying!4214 (cache!2304 cacheDown!575))))))) (store mapRest!9270 mapKey!9271 mapValue!9271))))

(declare-fun b!2044259 () Bool)

(assert (=> b!2044259 (= e!1291218 (not e!1291235))))

(declare-fun res!895682 () Bool)

(assert (=> b!2044259 (=> res!895682 e!1291235)))

(declare-fun isSuffix!478 (List!22511 List!22511) Bool)

(assert (=> b!2044259 (= res!895682 (not (isSuffix!478 lt!766586 lt!766587)))))

(assert (=> b!2044259 (isSuffix!478 lt!766586 lt!766582)))

(declare-datatypes ((Unit!37031 0))(
  ( (Unit!37032) )
))
(declare-fun lt!766583 () Unit!37031)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!379 (List!22511 List!22511) Unit!37031)

(assert (=> b!2044259 (= lt!766583 (lemmaConcatTwoListThenFSndIsSuffix!379 lt!766577 lt!766586))))

(declare-fun b!2044260 () Bool)

(declare-fun e!1291238 () Bool)

(assert (=> b!2044260 (= e!1291238 e!1291231)))

(declare-fun mapNonEmpty!9271 () Bool)

(declare-fun mapRes!9271 () Bool)

(declare-fun tp!607779 () Bool)

(declare-fun tp!607781 () Bool)

(assert (=> mapNonEmpty!9271 (= mapRes!9271 (and tp!607779 tp!607781))))

(declare-fun mapRest!9271 () (Array (_ BitVec 32) List!22513))

(declare-fun mapValue!9270 () List!22513)

(declare-fun mapKey!9270 () (_ BitVec 32))

(assert (=> mapNonEmpty!9271 (= (arr!3079 (_values!2290 (v!27121 (underlying!4215 (v!27122 (underlying!4216 (cache!2305 cacheUp!562))))))) (store mapRest!9271 mapKey!9270 mapValue!9270))))

(declare-fun b!2044261 () Bool)

(declare-fun tp!607768 () Bool)

(assert (=> b!2044261 (= e!1291214 (and tp!607768 mapRes!9270))))

(declare-fun condMapEmpty!9270 () Bool)

(declare-fun mapDefault!9271 () List!22509)

(assert (=> b!2044261 (= condMapEmpty!9270 (= (arr!3078 (_values!2289 (v!27119 (underlying!4213 (v!27120 (underlying!4214 (cache!2304 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22509)) mapDefault!9271)))))

(declare-fun b!2044262 () Bool)

(declare-fun e!1291212 () Bool)

(declare-fun tp!607772 () Bool)

(assert (=> b!2044262 (= e!1291212 (and tp!607772 mapRes!9271))))

(declare-fun condMapEmpty!9271 () Bool)

(declare-fun mapDefault!9270 () List!22513)

(assert (=> b!2044262 (= condMapEmpty!9271 (= (arr!3079 (_values!2290 (v!27121 (underlying!4215 (v!27122 (underlying!4216 (cache!2305 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22513)) mapDefault!9270)))))

(declare-fun tp!607776 () Bool)

(declare-fun tp!607785 () Bool)

(declare-fun array_inv!2211 (array!6931) Bool)

(assert (=> b!2044263 (= e!1291228 (and tp!607766 tp!607785 tp!607776 (array_inv!2209 (_keys!2307 (v!27121 (underlying!4215 (v!27122 (underlying!4216 (cache!2305 cacheUp!562))))))) (array_inv!2211 (_values!2290 (v!27121 (underlying!4215 (v!27122 (underlying!4216 (cache!2305 cacheUp!562))))))) e!1291212))))

(declare-fun b!2044264 () Bool)

(declare-fun e!1291232 () Bool)

(declare-fun tp!607778 () Bool)

(assert (=> b!2044264 (= e!1291232 (and (inv!29776 (c!330992 input!986)) tp!607778))))

(declare-fun b!2044265 () Bool)

(declare-fun res!895681 () Bool)

(assert (=> b!2044265 (=> (not res!895681) (not e!1291218))))

(declare-fun valid!1602 (CacheUp!1218) Bool)

(assert (=> b!2044265 (= res!895681 (valid!1602 cacheUp!562))))

(declare-fun mapIsEmpty!9271 () Bool)

(assert (=> mapIsEmpty!9271 mapRes!9271))

(declare-fun b!2044266 () Bool)

(assert (=> b!2044266 (= e!1291225 e!1291219)))

(assert (=> b!2044244 (= e!1291211 (and e!1291237 tp!607782))))

(declare-fun res!895678 () Bool)

(assert (=> start!201430 (=> (not res!895678) (not e!1291233))))

(assert (=> start!201430 (= res!895678 ((_ is Lexer!3630) thiss!12889))))

(assert (=> start!201430 e!1291233))

(declare-fun inv!29778 (CacheDown!1222) Bool)

(assert (=> start!201430 (and (inv!29778 cacheDown!575) e!1291238)))

(assert (=> start!201430 true))

(declare-fun inv!29779 (CacheUp!1218) Bool)

(assert (=> start!201430 (and (inv!29779 cacheUp!562) e!1291216)))

(assert (=> start!201430 e!1291234))

(declare-fun inv!29780 (BalanceConc!14790) Bool)

(assert (=> start!201430 (and (inv!29780 totalInput!418) e!1291240)))

(assert (=> start!201430 (and (inv!29780 treated!60) e!1291221)))

(assert (=> start!201430 (and (inv!29780 input!986) e!1291232)))

(declare-fun inv!29781 (BalanceConc!14792) Bool)

(assert (=> start!201430 (and (inv!29781 acc!382) e!1291226)))

(assert (= (and start!201430 res!895678) b!2044246))

(assert (= (and b!2044246 res!895689) b!2044258))

(assert (= (and b!2044258 res!895679) b!2044252))

(assert (= (and b!2044252 res!895684) b!2044241))

(assert (= (and b!2044241 res!895688) b!2044235))

(assert (= (and b!2044235 res!895686) b!2044239))

(assert (= (and b!2044239 res!895680) b!2044247))

(assert (= (and b!2044247 res!895685) b!2044265))

(assert (= (and b!2044265 res!895681) b!2044256))

(assert (= (and b!2044256 res!895687) b!2044259))

(assert (= (and b!2044259 (not res!895682)) b!2044236))

(assert (= (and b!2044236 (not res!895683)) b!2044255))

(assert (= (and b!2044261 condMapEmpty!9270) mapIsEmpty!9270))

(assert (= (and b!2044261 (not condMapEmpty!9270)) mapNonEmpty!9270))

(assert (= b!2044234 b!2044261))

(assert (= b!2044266 b!2044234))

(assert (= b!2044240 b!2044266))

(assert (= (and b!2044251 ((_ is LongMap!2009) (v!27120 (underlying!4214 (cache!2304 cacheDown!575))))) b!2044240))

(assert (= b!2044257 b!2044251))

(assert (= (and b!2044260 ((_ is HashMap!1923) (cache!2304 cacheDown!575))) b!2044257))

(assert (= start!201430 b!2044260))

(assert (= (and b!2044262 condMapEmpty!9271) mapIsEmpty!9271))

(assert (= (and b!2044262 (not condMapEmpty!9271)) mapNonEmpty!9271))

(assert (= b!2044263 b!2044262))

(assert (= b!2044245 b!2044263))

(assert (= b!2044242 b!2044245))

(assert (= (and b!2044238 ((_ is LongMap!2010) (v!27122 (underlying!4216 (cache!2305 cacheUp!562))))) b!2044242))

(assert (= b!2044244 b!2044238))

(assert (= (and b!2044243 ((_ is HashMap!1924) (cache!2305 cacheUp!562))) b!2044244))

(assert (= start!201430 b!2044243))

(assert (= b!2044237 b!2044249))

(assert (= b!2044248 b!2044237))

(assert (= (and start!201430 ((_ is Cons!22430) rules!1563)) b!2044248))

(assert (= start!201430 b!2044250))

(assert (= start!201430 b!2044254))

(assert (= start!201430 b!2044264))

(assert (= start!201430 b!2044253))

(declare-fun m!2488205 () Bool)

(assert (=> mapNonEmpty!9270 m!2488205))

(declare-fun m!2488207 () Bool)

(assert (=> mapNonEmpty!9271 m!2488207))

(declare-fun m!2488209 () Bool)

(assert (=> b!2044241 m!2488209))

(declare-fun m!2488211 () Bool)

(assert (=> b!2044241 m!2488211))

(declare-fun m!2488213 () Bool)

(assert (=> b!2044241 m!2488213))

(declare-fun m!2488215 () Bool)

(assert (=> b!2044263 m!2488215))

(declare-fun m!2488217 () Bool)

(assert (=> b!2044263 m!2488217))

(declare-fun m!2488219 () Bool)

(assert (=> b!2044255 m!2488219))

(declare-fun m!2488221 () Bool)

(assert (=> b!2044255 m!2488221))

(declare-fun m!2488223 () Bool)

(assert (=> b!2044255 m!2488223))

(declare-fun m!2488225 () Bool)

(assert (=> b!2044256 m!2488225))

(declare-fun m!2488227 () Bool)

(assert (=> start!201430 m!2488227))

(declare-fun m!2488229 () Bool)

(assert (=> start!201430 m!2488229))

(declare-fun m!2488231 () Bool)

(assert (=> start!201430 m!2488231))

(declare-fun m!2488233 () Bool)

(assert (=> start!201430 m!2488233))

(declare-fun m!2488235 () Bool)

(assert (=> start!201430 m!2488235))

(declare-fun m!2488237 () Bool)

(assert (=> start!201430 m!2488237))

(declare-fun m!2488239 () Bool)

(assert (=> b!2044254 m!2488239))

(declare-fun m!2488241 () Bool)

(assert (=> b!2044259 m!2488241))

(declare-fun m!2488243 () Bool)

(assert (=> b!2044259 m!2488243))

(declare-fun m!2488245 () Bool)

(assert (=> b!2044259 m!2488245))

(declare-fun m!2488247 () Bool)

(assert (=> b!2044258 m!2488247))

(declare-fun m!2488249 () Bool)

(assert (=> b!2044247 m!2488249))

(declare-fun m!2488251 () Bool)

(assert (=> b!2044247 m!2488251))

(declare-fun m!2488253 () Bool)

(assert (=> b!2044235 m!2488253))

(assert (=> b!2044235 m!2488253))

(declare-fun m!2488255 () Bool)

(assert (=> b!2044235 m!2488255))

(declare-fun m!2488257 () Bool)

(assert (=> b!2044234 m!2488257))

(declare-fun m!2488259 () Bool)

(assert (=> b!2044234 m!2488259))

(declare-fun m!2488261 () Bool)

(assert (=> b!2044250 m!2488261))

(declare-fun m!2488263 () Bool)

(assert (=> b!2044246 m!2488263))

(declare-fun m!2488265 () Bool)

(assert (=> b!2044236 m!2488265))

(declare-fun m!2488267 () Bool)

(assert (=> b!2044237 m!2488267))

(declare-fun m!2488269 () Bool)

(assert (=> b!2044237 m!2488269))

(declare-fun m!2488271 () Bool)

(assert (=> b!2044253 m!2488271))

(declare-fun m!2488273 () Bool)

(assert (=> b!2044265 m!2488273))

(declare-fun m!2488275 () Bool)

(assert (=> b!2044239 m!2488275))

(declare-fun m!2488277 () Bool)

(assert (=> b!2044239 m!2488277))

(declare-fun m!2488279 () Bool)

(assert (=> b!2044239 m!2488279))

(assert (=> b!2044239 m!2488279))

(declare-fun m!2488281 () Bool)

(assert (=> b!2044239 m!2488281))

(declare-fun m!2488283 () Bool)

(assert (=> b!2044239 m!2488283))

(declare-fun m!2488285 () Bool)

(assert (=> b!2044264 m!2488285))

(declare-fun m!2488287 () Bool)

(assert (=> b!2044252 m!2488287))

(declare-fun m!2488289 () Bool)

(assert (=> b!2044252 m!2488289))

(declare-fun m!2488291 () Bool)

(assert (=> b!2044252 m!2488291))

(declare-fun m!2488293 () Bool)

(assert (=> b!2044252 m!2488293))

(check-sat (not b!2044254) b_and!163059 (not b!2044255) (not b!2044234) b_and!163061 (not b!2044263) (not b!2044250) (not start!201430) (not b!2044258) (not b!2044262) b_and!163057 (not b!2044235) (not b_next!57821) (not b!2044256) (not b!2044265) (not mapNonEmpty!9271) (not mapNonEmpty!9270) (not b!2044237) (not b!2044264) (not b_next!57825) (not b!2044261) (not b!2044236) (not b!2044252) b_and!163053 (not b_next!57819) (not b!2044253) (not b!2044259) (not b!2044239) b_and!163063 (not b!2044241) (not b!2044248) b_and!163055 (not b_next!57817) (not b_next!57823) (not b!2044246) (not b!2044247) (not b_next!57827))
(check-sat b_and!163059 (not b_next!57821) b_and!163061 (not b_next!57825) b_and!163053 (not b_next!57819) b_and!163063 b_and!163057 (not b_next!57827) b_and!163055 (not b_next!57817) (not b_next!57823))
