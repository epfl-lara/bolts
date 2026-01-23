; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!144440 () Bool)

(assert start!144440)

(declare-fun b!1557160 () Bool)

(declare-fun b_free!41447 () Bool)

(declare-fun b_next!42151 () Bool)

(assert (=> b!1557160 (= b_free!41447 (not b_next!42151))))

(declare-fun tp!456919 () Bool)

(declare-fun b_and!108645 () Bool)

(assert (=> b!1557160 (= tp!456919 b_and!108645)))

(declare-fun b!1557156 () Bool)

(declare-fun b_free!41449 () Bool)

(declare-fun b_next!42153 () Bool)

(assert (=> b!1557156 (= b_free!41449 (not b_next!42153))))

(declare-fun tp!456915 () Bool)

(declare-fun b_and!108647 () Bool)

(assert (=> b!1557156 (= tp!456915 b_and!108647)))

(declare-fun b!1557163 () Bool)

(declare-fun b_free!41451 () Bool)

(declare-fun b_next!42155 () Bool)

(assert (=> b!1557163 (= b_free!41451 (not b_next!42155))))

(declare-fun tp!456911 () Bool)

(declare-fun b_and!108649 () Bool)

(assert (=> b!1557163 (= tp!456911 b_and!108649)))

(declare-fun b!1557130 () Bool)

(declare-fun b_free!41453 () Bool)

(declare-fun b_next!42157 () Bool)

(assert (=> b!1557130 (= b_free!41453 (not b_next!42157))))

(declare-fun tp!456912 () Bool)

(declare-fun b_and!108651 () Bool)

(assert (=> b!1557130 (= tp!456912 b_and!108651)))

(declare-fun b_free!41455 () Bool)

(declare-fun b_next!42159 () Bool)

(assert (=> b!1557130 (= b_free!41455 (not b_next!42159))))

(declare-fun tp!456921 () Bool)

(declare-fun b_and!108653 () Bool)

(assert (=> b!1557130 (= tp!456921 b_and!108653)))

(declare-fun b!1557140 () Bool)

(declare-fun b_free!41457 () Bool)

(declare-fun b_next!42161 () Bool)

(assert (=> b!1557140 (= b_free!41457 (not b_next!42161))))

(declare-fun tp!456922 () Bool)

(declare-fun b_and!108655 () Bool)

(assert (=> b!1557140 (= tp!456922 b_and!108655)))

(declare-fun b!1557157 () Bool)

(declare-fun b_free!41459 () Bool)

(declare-fun b_next!42163 () Bool)

(assert (=> b!1557157 (= b_free!41459 (not b_next!42163))))

(declare-fun tp!456901 () Bool)

(declare-fun b_and!108657 () Bool)

(assert (=> b!1557157 (= tp!456901 b_and!108657)))

(declare-fun b!1557137 () Bool)

(declare-fun b_free!41461 () Bool)

(declare-fun b_next!42165 () Bool)

(assert (=> b!1557137 (= b_free!41461 (not b_next!42165))))

(declare-fun tp!456903 () Bool)

(declare-fun b_and!108659 () Bool)

(assert (=> b!1557137 (= tp!456903 b_and!108659)))

(declare-fun b!1557178 () Bool)

(declare-fun e!999324 () Bool)

(assert (=> b!1557178 (= e!999324 true)))

(declare-fun b!1557177 () Bool)

(declare-fun e!999323 () Bool)

(assert (=> b!1557177 (= e!999323 e!999324)))

(declare-fun b!1557169 () Bool)

(assert (=> b!1557169 e!999323))

(assert (= b!1557177 b!1557178))

(assert (= b!1557169 b!1557177))

(declare-fun lambda!65921 () Int)

(declare-datatypes ((List!16917 0))(
  ( (Nil!16849) (Cons!16849 (h!22250 (_ BitVec 16)) (t!141404 List!16917)) )
))
(declare-datatypes ((TokenValue!3043 0))(
  ( (FloatLiteralValue!6086 (text!21746 List!16917)) (TokenValueExt!3042 (__x!11245 Int)) (Broken!15215 (value!93771 List!16917)) (Object!3110) (End!3043) (Def!3043) (Underscore!3043) (Match!3043) (Else!3043) (Error!3043) (Case!3043) (If!3043) (Extends!3043) (Abstract!3043) (Class!3043) (Val!3043) (DelimiterValue!6086 (del!3103 List!16917)) (KeywordValue!3049 (value!93772 List!16917)) (CommentValue!6086 (value!93773 List!16917)) (WhitespaceValue!6086 (value!93774 List!16917)) (IndentationValue!3043 (value!93775 List!16917)) (String!19502) (Int32!3043) (Broken!15216 (value!93776 List!16917)) (Boolean!3044) (Unit!26091) (OperatorValue!3046 (op!3103 List!16917)) (IdentifierValue!6086 (value!93777 List!16917)) (IdentifierValue!6087 (value!93778 List!16917)) (WhitespaceValue!6087 (value!93779 List!16917)) (True!6086) (False!6086) (Broken!15217 (value!93780 List!16917)) (Broken!15218 (value!93781 List!16917)) (True!6087) (RightBrace!3043) (RightBracket!3043) (Colon!3043) (Null!3043) (Comma!3043) (LeftBracket!3043) (False!6087) (LeftBrace!3043) (ImaginaryLiteralValue!3043 (text!21747 List!16917)) (StringLiteralValue!9129 (value!93782 List!16917)) (EOFValue!3043 (value!93783 List!16917)) (IdentValue!3043 (value!93784 List!16917)) (DelimiterValue!6087 (value!93785 List!16917)) (DedentValue!3043 (value!93786 List!16917)) (NewLineValue!3043 (value!93787 List!16917)) (IntegerValue!9129 (value!93788 (_ BitVec 32)) (text!21748 List!16917)) (IntegerValue!9130 (value!93789 Int) (text!21749 List!16917)) (Times!3043) (Or!3043) (Equal!3043) (Minus!3043) (Broken!15219 (value!93790 List!16917)) (And!3043) (Div!3043) (LessEqual!3043) (Mod!3043) (Concat!7324) (Not!3043) (Plus!3043) (SpaceValue!3043 (value!93791 List!16917)) (IntegerValue!9131 (value!93792 Int) (text!21750 List!16917)) (StringLiteralValue!9130 (text!21751 List!16917)) (FloatLiteralValue!6087 (text!21752 List!16917)) (BytesLiteralValue!3043 (value!93793 List!16917)) (CommentValue!6087 (value!93794 List!16917)) (StringLiteralValue!9131 (value!93795 List!16917)) (ErrorTokenValue!3043 (msg!3104 List!16917)) )
))
(declare-datatypes ((C!8740 0))(
  ( (C!8741 (val!4942 Int)) )
))
(declare-datatypes ((List!16918 0))(
  ( (Nil!16850) (Cons!16850 (h!22251 C!8740) (t!141405 List!16918)) )
))
(declare-datatypes ((IArray!11147 0))(
  ( (IArray!11148 (innerList!5631 List!16918)) )
))
(declare-datatypes ((Conc!5571 0))(
  ( (Node!5571 (left!13690 Conc!5571) (right!14020 Conc!5571) (csize!11372 Int) (cheight!5782 Int)) (Leaf!8257 (xs!8371 IArray!11147) (csize!11373 Int)) (Empty!5571) )
))
(declare-datatypes ((BalanceConc!11084 0))(
  ( (BalanceConc!11085 (c!252896 Conc!5571)) )
))
(declare-datatypes ((String!19503 0))(
  ( (String!19504 (value!93796 String)) )
))
(declare-datatypes ((Regex!4281 0))(
  ( (ElementMatch!4281 (c!252897 C!8740)) (Concat!7325 (regOne!9074 Regex!4281) (regTwo!9074 Regex!4281)) (EmptyExpr!4281) (Star!4281 (reg!4610 Regex!4281)) (EmptyLang!4281) (Union!4281 (regOne!9075 Regex!4281) (regTwo!9075 Regex!4281)) )
))
(declare-datatypes ((TokenValueInjection!5746 0))(
  ( (TokenValueInjection!5747 (toValue!4327 Int) (toChars!4186 Int)) )
))
(declare-datatypes ((Rule!5706 0))(
  ( (Rule!5707 (regex!2953 Regex!4281) (tag!3217 String!19503) (isSeparator!2953 Bool) (transformation!2953 TokenValueInjection!5746)) )
))
(declare-fun rule!240 () Rule!5706)

(declare-fun order!9937 () Int)

(declare-fun order!9939 () Int)

(declare-fun dynLambda!7481 (Int Int) Int)

(declare-fun dynLambda!7482 (Int Int) Int)

(assert (=> b!1557178 (< (dynLambda!7481 order!9937 (toValue!4327 (transformation!2953 rule!240))) (dynLambda!7482 order!9939 lambda!65921))))

(declare-fun order!9941 () Int)

(declare-fun dynLambda!7483 (Int Int) Int)

(assert (=> b!1557178 (< (dynLambda!7483 order!9941 (toChars!4186 (transformation!2953 rule!240))) (dynLambda!7482 order!9939 lambda!65921))))

(declare-fun e!999285 () Bool)

(assert (=> b!1557130 (= e!999285 (and tp!456912 tp!456921))))

(declare-fun b!1557131 () Bool)

(declare-fun e!999297 () Bool)

(declare-fun e!999282 () Bool)

(assert (=> b!1557131 (= e!999297 (not e!999282))))

(declare-fun res!694873 () Bool)

(assert (=> b!1557131 (=> res!694873 e!999282)))

(declare-fun semiInverseModEq!1116 (Int Int) Bool)

(assert (=> b!1557131 (= res!694873 (not (semiInverseModEq!1116 (toChars!4186 (transformation!2953 rule!240)) (toValue!4327 (transformation!2953 rule!240)))))))

(declare-datatypes ((Unit!26092 0))(
  ( (Unit!26093) )
))
(declare-fun lt!539257 () Unit!26092)

(declare-fun lemmaInv!430 (TokenValueInjection!5746) Unit!26092)

(assert (=> b!1557131 (= lt!539257 (lemmaInv!430 (transformation!2953 rule!240)))))

(declare-fun e!999302 () Bool)

(assert (=> b!1557131 e!999302))

(declare-fun res!694865 () Bool)

(assert (=> b!1557131 (=> res!694865 e!999302)))

(declare-datatypes ((tuple2!16358 0))(
  ( (tuple2!16359 (_1!9535 List!16918) (_2!9535 List!16918)) )
))
(declare-fun lt!539255 () tuple2!16358)

(declare-fun isEmpty!10129 (List!16918) Bool)

(assert (=> b!1557131 (= res!694865 (isEmpty!10129 (_1!9535 lt!539255)))))

(declare-fun lt!539249 () List!16918)

(declare-fun findLongestMatchInner!336 (Regex!4281 List!16918 Int List!16918 List!16918 Int) tuple2!16358)

(declare-fun size!13653 (List!16918) Int)

(assert (=> b!1557131 (= lt!539255 (findLongestMatchInner!336 (regex!2953 rule!240) Nil!16850 (size!13653 Nil!16850) lt!539249 lt!539249 (size!13653 lt!539249)))))

(declare-fun lt!539248 () Unit!26092)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!320 (Regex!4281 List!16918) Unit!26092)

(assert (=> b!1557131 (= lt!539248 (longestMatchIsAcceptedByMatchOrIsEmpty!320 (regex!2953 rule!240) lt!539249))))

(declare-fun mapIsEmpty!8442 () Bool)

(declare-fun mapRes!8442 () Bool)

(assert (=> mapIsEmpty!8442 mapRes!8442))

(declare-fun mapIsEmpty!8443 () Bool)

(declare-fun mapRes!8443 () Bool)

(assert (=> mapIsEmpty!8443 mapRes!8443))

(declare-fun b!1557132 () Bool)

(declare-fun e!999292 () Bool)

(declare-fun e!999300 () Bool)

(declare-datatypes ((List!16919 0))(
  ( (Nil!16851) (Cons!16851 (h!22252 Regex!4281) (t!141406 List!16919)) )
))
(declare-datatypes ((Context!1598 0))(
  ( (Context!1599 (exprs!1299 List!16919)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1810 0))(
  ( (tuple3!1811 (_1!9536 (InoxSet Context!1598)) (_2!9536 Int) (_3!1356 Int)) )
))
(declare-datatypes ((tuple2!16360 0))(
  ( (tuple2!16361 (_1!9537 tuple3!1810) (_2!9537 Int)) )
))
(declare-datatypes ((List!16920 0))(
  ( (Nil!16852) (Cons!16852 (h!22253 tuple2!16360) (t!141407 List!16920)) )
))
(declare-datatypes ((array!6218 0))(
  ( (array!6219 (arr!2770 (Array (_ BitVec 32) List!16920)) (size!13654 (_ BitVec 32))) )
))
(declare-datatypes ((array!6220 0))(
  ( (array!6221 (arr!2771 (Array (_ BitVec 32) (_ BitVec 64))) (size!13655 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3628 0))(
  ( (LongMapFixedSize!3629 (defaultEntry!2174 Int) (mask!5043 (_ BitVec 32)) (extraKeys!2061 (_ BitVec 32)) (zeroValue!2071 List!16920) (minValue!2071 List!16920) (_size!3709 (_ BitVec 32)) (_keys!2108 array!6220) (_values!2093 array!6218) (_vacant!1875 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7141 0))(
  ( (Cell!7142 (v!23702 LongMapFixedSize!3628)) )
))
(declare-datatypes ((MutLongMap!1814 0))(
  ( (LongMap!1814 (underlying!3837 Cell!7141)) (MutLongMapExt!1813 (__x!11246 Int)) )
))
(declare-fun lt!539254 () MutLongMap!1814)

(get-info :version)

(assert (=> b!1557132 (= e!999292 (and e!999300 ((_ is LongMap!1814) lt!539254)))))

(declare-datatypes ((Hashable!1758 0))(
  ( (HashableExt!1757 (__x!11247 Int)) )
))
(declare-datatypes ((Cell!7143 0))(
  ( (Cell!7144 (v!23703 MutLongMap!1814)) )
))
(declare-datatypes ((MutableMap!1758 0))(
  ( (MutableMapExt!1757 (__x!11248 Int)) (HashMap!1758 (underlying!3838 Cell!7143) (hashF!3677 Hashable!1758) (_size!3710 (_ BitVec 32)) (defaultValue!1918 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!498 0))(
  ( (CacheFurthestNullable!499 (cache!2139 MutableMap!1758) (totalInput!2474 BalanceConc!11084)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!498)

(assert (=> b!1557132 (= lt!539254 (v!23703 (underlying!3838 (cache!2139 cacheFurthestNullable!103))))))

(declare-fun b!1557133 () Bool)

(declare-fun e!999305 () Bool)

(assert (=> b!1557133 (= e!999282 e!999305)))

(declare-fun res!694871 () Bool)

(assert (=> b!1557133 (=> res!694871 e!999305)))

(declare-fun lt!539251 () Bool)

(declare-datatypes ((Token!5482 0))(
  ( (Token!5483 (value!93797 TokenValue!3043) (rule!4737 Rule!5706) (size!13656 Int) (originalCharacters!3772 List!16918)) )
))
(declare-datatypes ((tuple2!16362 0))(
  ( (tuple2!16363 (_1!9538 Token!5482) (_2!9538 List!16918)) )
))
(declare-datatypes ((Option!3044 0))(
  ( (None!3043) (Some!3043 (v!23704 tuple2!16362)) )
))
(declare-fun lt!539259 () Option!3044)

(declare-fun isDefined!2447 (Option!3044) Bool)

(assert (=> b!1557133 (= res!694871 (not (= lt!539251 (isDefined!2447 lt!539259))))))

(declare-datatypes ((tuple2!16364 0))(
  ( (tuple2!16365 (_1!9539 Context!1598) (_2!9539 C!8740)) )
))
(declare-datatypes ((tuple2!16366 0))(
  ( (tuple2!16367 (_1!9540 tuple2!16364) (_2!9540 (InoxSet Context!1598))) )
))
(declare-datatypes ((List!16921 0))(
  ( (Nil!16853) (Cons!16853 (h!22254 tuple2!16366) (t!141408 List!16921)) )
))
(declare-datatypes ((array!6222 0))(
  ( (array!6223 (arr!2772 (Array (_ BitVec 32) List!16921)) (size!13657 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3630 0))(
  ( (LongMapFixedSize!3631 (defaultEntry!2175 Int) (mask!5044 (_ BitVec 32)) (extraKeys!2062 (_ BitVec 32)) (zeroValue!2072 List!16921) (minValue!2072 List!16921) (_size!3711 (_ BitVec 32)) (_keys!2109 array!6220) (_values!2094 array!6222) (_vacant!1876 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7145 0))(
  ( (Cell!7146 (v!23705 LongMapFixedSize!3630)) )
))
(declare-datatypes ((MutLongMap!1815 0))(
  ( (LongMap!1815 (underlying!3839 Cell!7145)) (MutLongMapExt!1814 (__x!11249 Int)) )
))
(declare-datatypes ((Cell!7147 0))(
  ( (Cell!7148 (v!23706 MutLongMap!1815)) )
))
(declare-datatypes ((tuple3!1812 0))(
  ( (tuple3!1813 (_1!9541 Regex!4281) (_2!9541 Context!1598) (_3!1357 C!8740)) )
))
(declare-datatypes ((Hashable!1759 0))(
  ( (HashableExt!1758 (__x!11250 Int)) )
))
(declare-datatypes ((MutableMap!1759 0))(
  ( (MutableMapExt!1758 (__x!11251 Int)) (HashMap!1759 (underlying!3840 Cell!7147) (hashF!3678 Hashable!1759) (_size!3712 (_ BitVec 32)) (defaultValue!1919 Int)) )
))
(declare-datatypes ((CacheUp!1070 0))(
  ( (CacheUp!1071 (cache!2140 MutableMap!1759)) )
))
(declare-datatypes ((tuple2!16368 0))(
  ( (tuple2!16369 (_1!9542 tuple3!1812) (_2!9542 (InoxSet Context!1598))) )
))
(declare-datatypes ((List!16922 0))(
  ( (Nil!16854) (Cons!16854 (h!22255 tuple2!16368) (t!141409 List!16922)) )
))
(declare-datatypes ((array!6224 0))(
  ( (array!6225 (arr!2773 (Array (_ BitVec 32) List!16922)) (size!13658 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3632 0))(
  ( (LongMapFixedSize!3633 (defaultEntry!2176 Int) (mask!5045 (_ BitVec 32)) (extraKeys!2063 (_ BitVec 32)) (zeroValue!2073 List!16922) (minValue!2073 List!16922) (_size!3713 (_ BitVec 32)) (_keys!2110 array!6220) (_values!2095 array!6224) (_vacant!1877 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7149 0))(
  ( (Cell!7150 (v!23707 LongMapFixedSize!3632)) )
))
(declare-datatypes ((tuple2!16370 0))(
  ( (tuple2!16371 (_1!9543 BalanceConc!11084) (_2!9543 BalanceConc!11084)) )
))
(declare-datatypes ((MutLongMap!1816 0))(
  ( (LongMap!1816 (underlying!3841 Cell!7149)) (MutLongMapExt!1815 (__x!11252 Int)) )
))
(declare-datatypes ((Cell!7151 0))(
  ( (Cell!7152 (v!23708 MutLongMap!1816)) )
))
(declare-datatypes ((Hashable!1760 0))(
  ( (HashableExt!1759 (__x!11253 Int)) )
))
(declare-datatypes ((MutableMap!1760 0))(
  ( (MutableMapExt!1759 (__x!11254 Int)) (HashMap!1760 (underlying!3842 Cell!7151) (hashF!3679 Hashable!1760) (_size!3714 (_ BitVec 32)) (defaultValue!1920 Int)) )
))
(declare-datatypes ((CacheDown!1076 0))(
  ( (CacheDown!1077 (cache!2141 MutableMap!1760)) )
))
(declare-datatypes ((tuple4!902 0))(
  ( (tuple4!903 (_1!9544 tuple2!16370) (_2!9544 CacheUp!1070) (_3!1358 CacheDown!1076) (_4!451 CacheFurthestNullable!498)) )
))
(declare-fun lt!539247 () tuple4!902)

(declare-fun lt!539245 () List!16918)

(declare-fun lt!539252 () TokenValue!3043)

(declare-fun lt!539262 () Int)

(declare-datatypes ((tuple2!16372 0))(
  ( (tuple2!16373 (_1!9545 Token!5482) (_2!9545 BalanceConc!11084)) )
))
(declare-datatypes ((Option!3045 0))(
  ( (None!3044) (Some!3044 (v!23709 tuple2!16372)) )
))
(declare-fun isDefined!2448 (Option!3045) Bool)

(assert (=> b!1557133 (= lt!539251 (isDefined!2448 (Some!3044 (tuple2!16373 (Token!5483 lt!539252 rule!240 lt!539262 lt!539245) (_2!9543 (_1!9544 lt!539247))))))))

(declare-datatypes ((LexerInterface!2589 0))(
  ( (LexerInterfaceExt!2586 (__x!11255 Int)) (Lexer!2587) )
))
(declare-fun thiss!16438 () LexerInterface!2589)

(declare-fun maxPrefixOneRule!707 (LexerInterface!2589 Rule!5706 List!16918) Option!3044)

(assert (=> b!1557133 (= lt!539259 (maxPrefixOneRule!707 thiss!16438 rule!240 lt!539249))))

(declare-fun size!13659 (BalanceConc!11084) Int)

(assert (=> b!1557133 (= lt!539262 (size!13659 (_1!9543 (_1!9544 lt!539247))))))

(declare-fun apply!4114 (TokenValueInjection!5746 BalanceConc!11084) TokenValue!3043)

(assert (=> b!1557133 (= lt!539252 (apply!4114 (transformation!2953 rule!240) (_1!9543 (_1!9544 lt!539247))))))

(declare-fun lt!539250 () Unit!26092)

(declare-fun lt!539261 () BalanceConc!11084)

(declare-fun ForallOf!215 (Int BalanceConc!11084) Unit!26092)

(assert (=> b!1557133 (= lt!539250 (ForallOf!215 lambda!65921 lt!539261))))

(declare-fun seqFromList!1778 (List!16918) BalanceConc!11084)

(assert (=> b!1557133 (= lt!539261 (seqFromList!1778 lt!539245))))

(declare-fun list!6501 (BalanceConc!11084) List!16918)

(assert (=> b!1557133 (= lt!539245 (list!6501 (_1!9543 (_1!9544 lt!539247))))))

(declare-fun lt!539256 () Unit!26092)

(assert (=> b!1557133 (= lt!539256 (ForallOf!215 lambda!65921 (_1!9543 (_1!9544 lt!539247))))))

(declare-fun b!1557134 () Bool)

(declare-fun e!999303 () Bool)

(declare-fun e!999296 () Bool)

(assert (=> b!1557134 (= e!999303 e!999296)))

(declare-fun b!1557135 () Bool)

(declare-fun e!999294 () Bool)

(declare-fun input!1676 () BalanceConc!11084)

(declare-fun tp!456926 () Bool)

(declare-fun inv!22134 (Conc!5571) Bool)

(assert (=> b!1557135 (= e!999294 (and (inv!22134 (c!252896 input!1676)) tp!456926))))

(declare-fun b!1557136 () Bool)

(declare-fun e!999299 () Bool)

(assert (=> b!1557136 (= e!999300 e!999299)))

(declare-fun e!999291 () Bool)

(assert (=> b!1557137 (= e!999291 (and e!999292 tp!456903))))

(declare-fun b!1557138 () Bool)

(declare-fun e!999298 () Bool)

(declare-fun tp!456909 () Bool)

(declare-fun mapRes!8444 () Bool)

(assert (=> b!1557138 (= e!999298 (and tp!456909 mapRes!8444))))

(declare-fun condMapEmpty!8444 () Bool)

(declare-fun cacheDown!768 () CacheDown!1076)

(declare-fun mapDefault!8444 () List!16922)

(assert (=> b!1557138 (= condMapEmpty!8444 (= (arr!2773 (_values!2095 (v!23707 (underlying!3841 (v!23708 (underlying!3842 (cache!2141 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16922)) mapDefault!8444)))))

(declare-fun b!1557139 () Bool)

(declare-fun res!694866 () Bool)

(declare-fun e!999301 () Bool)

(assert (=> b!1557139 (=> (not res!694866) (not e!999301))))

(declare-fun ruleValid!688 (LexerInterface!2589 Rule!5706) Bool)

(assert (=> b!1557139 (= res!694866 (ruleValid!688 thiss!16438 rule!240))))

(declare-fun tp!456914 () Bool)

(declare-fun tp!456910 () Bool)

(declare-fun e!999313 () Bool)

(declare-fun array_inv!1993 (array!6220) Bool)

(declare-fun array_inv!1994 (array!6224) Bool)

(assert (=> b!1557140 (= e!999313 (and tp!456922 tp!456910 tp!456914 (array_inv!1993 (_keys!2110 (v!23707 (underlying!3841 (v!23708 (underlying!3842 (cache!2141 cacheDown!768))))))) (array_inv!1994 (_values!2095 (v!23707 (underlying!3841 (v!23708 (underlying!3842 (cache!2141 cacheDown!768))))))) e!999298))))

(declare-fun b!1557141 () Bool)

(declare-fun res!694869 () Bool)

(declare-fun e!999304 () Bool)

(assert (=> b!1557141 (=> (not res!694869) (not e!999304))))

(declare-fun totalInput!568 () BalanceConc!11084)

(assert (=> b!1557141 (= res!694869 (= (totalInput!2474 cacheFurthestNullable!103) totalInput!568))))

(declare-fun mapNonEmpty!8442 () Bool)

(declare-fun tp!456927 () Bool)

(declare-fun tp!456907 () Bool)

(assert (=> mapNonEmpty!8442 (= mapRes!8444 (and tp!456927 tp!456907))))

(declare-fun mapRest!8443 () (Array (_ BitVec 32) List!16922))

(declare-fun mapKey!8442 () (_ BitVec 32))

(declare-fun mapValue!8442 () List!16922)

(assert (=> mapNonEmpty!8442 (= (arr!2773 (_values!2095 (v!23707 (underlying!3841 (v!23708 (underlying!3842 (cache!2141 cacheDown!768))))))) (store mapRest!8443 mapKey!8442 mapValue!8442))))

(declare-fun res!694861 () Bool)

(assert (=> start!144440 (=> (not res!694861) (not e!999301))))

(assert (=> start!144440 (= res!694861 ((_ is Lexer!2587) thiss!16438))))

(assert (=> start!144440 e!999301))

(declare-fun e!999284 () Bool)

(declare-fun inv!22135 (BalanceConc!11084) Bool)

(assert (=> start!144440 (and (inv!22135 totalInput!568) e!999284)))

(declare-fun cacheUp!755 () CacheUp!1070)

(declare-fun e!999315 () Bool)

(declare-fun inv!22136 (CacheUp!1070) Bool)

(assert (=> start!144440 (and (inv!22136 cacheUp!755) e!999315)))

(declare-fun e!999290 () Bool)

(declare-fun inv!22137 (CacheFurthestNullable!498) Bool)

(assert (=> start!144440 (and (inv!22137 cacheFurthestNullable!103) e!999290)))

(assert (=> start!144440 (and (inv!22135 input!1676) e!999294)))

(declare-fun e!999283 () Bool)

(assert (=> start!144440 e!999283))

(declare-fun e!999310 () Bool)

(declare-fun inv!22138 (CacheDown!1076) Bool)

(assert (=> start!144440 (and (inv!22138 cacheDown!768) e!999310)))

(assert (=> start!144440 true))

(declare-fun b!1557142 () Bool)

(declare-fun res!694860 () Bool)

(assert (=> b!1557142 (=> (not res!694860) (not e!999301))))

(declare-fun valid!1460 (CacheFurthestNullable!498) Bool)

(assert (=> b!1557142 (= res!694860 (valid!1460 cacheFurthestNullable!103))))

(declare-fun b!1557143 () Bool)

(declare-fun e!999318 () Bool)

(declare-fun e!999316 () Bool)

(declare-fun lt!539253 () MutLongMap!1816)

(assert (=> b!1557143 (= e!999318 (and e!999316 ((_ is LongMap!1816) lt!539253)))))

(assert (=> b!1557143 (= lt!539253 (v!23708 (underlying!3842 (cache!2141 cacheDown!768))))))

(declare-fun b!1557144 () Bool)

(declare-fun e!999311 () Bool)

(assert (=> b!1557144 (= e!999305 e!999311)))

(declare-fun res!694862 () Bool)

(assert (=> b!1557144 (=> res!694862 e!999311)))

(assert (=> b!1557144 (= res!694862 (not (= (apply!4114 (transformation!2953 rule!240) lt!539261) lt!539252)))))

(declare-fun lt!539258 () Unit!26092)

(declare-fun lemmaEqSameImage!152 (TokenValueInjection!5746 BalanceConc!11084 BalanceConc!11084) Unit!26092)

(assert (=> b!1557144 (= lt!539258 (lemmaEqSameImage!152 (transformation!2953 rule!240) (_1!9543 (_1!9544 lt!539247)) lt!539261))))

(declare-fun lt!539260 () tuple2!16362)

(declare-fun b!1557145 () Bool)

(assert (=> b!1557145 (= e!999311 (or (not (= (value!93797 (_1!9538 lt!539260)) lt!539252)) (not (= (rule!4737 (_1!9538 lt!539260)) rule!240)) (= (size!13656 (_1!9538 lt!539260)) lt!539262)))))

(declare-fun get!4854 (Option!3044) tuple2!16362)

(assert (=> b!1557145 (= lt!539260 (get!4854 lt!539259))))

(declare-fun b!1557146 () Bool)

(declare-fun tp!456904 () Bool)

(declare-fun inv!22133 (String!19503) Bool)

(declare-fun inv!22139 (TokenValueInjection!5746) Bool)

(assert (=> b!1557146 (= e!999283 (and tp!456904 (inv!22133 (tag!3217 rule!240)) (inv!22139 (transformation!2953 rule!240)) e!999285))))

(declare-fun b!1557147 () Bool)

(declare-fun e!999309 () Bool)

(assert (=> b!1557147 (= e!999315 e!999309)))

(declare-fun b!1557148 () Bool)

(assert (=> b!1557148 (= e!999301 e!999304)))

(declare-fun res!694864 () Bool)

(assert (=> b!1557148 (=> (not res!694864) (not e!999304))))

(declare-fun isSuffix!379 (List!16918 List!16918) Bool)

(assert (=> b!1557148 (= res!694864 (isSuffix!379 lt!539249 (list!6501 totalInput!568)))))

(assert (=> b!1557148 (= lt!539249 (list!6501 input!1676))))

(declare-fun b!1557149 () Bool)

(declare-fun e!999306 () Bool)

(assert (=> b!1557149 (= e!999316 e!999306)))

(declare-fun b!1557150 () Bool)

(declare-fun e!999289 () Bool)

(declare-fun tp!456908 () Bool)

(assert (=> b!1557150 (= e!999289 (and (inv!22134 (c!252896 (totalInput!2474 cacheFurthestNullable!103))) tp!456908))))

(declare-fun b!1557151 () Bool)

(declare-fun e!999312 () Bool)

(declare-fun lt!539246 () MutLongMap!1815)

(assert (=> b!1557151 (= e!999312 (and e!999303 ((_ is LongMap!1815) lt!539246)))))

(assert (=> b!1557151 (= lt!539246 (v!23706 (underlying!3840 (cache!2140 cacheUp!755))))))

(declare-fun b!1557152 () Bool)

(declare-fun e!999317 () Bool)

(declare-fun tp!456913 () Bool)

(assert (=> b!1557152 (= e!999317 (and tp!456913 mapRes!8443))))

(declare-fun condMapEmpty!8443 () Bool)

(declare-fun mapDefault!8443 () List!16920)

(assert (=> b!1557152 (= condMapEmpty!8443 (= (arr!2770 (_values!2093 (v!23702 (underlying!3837 (v!23703 (underlying!3838 (cache!2139 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16920)) mapDefault!8443)))))

(declare-fun b!1557153 () Bool)

(declare-fun res!694872 () Bool)

(assert (=> b!1557153 (=> (not res!694872) (not e!999301))))

(declare-fun valid!1461 (CacheUp!1070) Bool)

(assert (=> b!1557153 (= res!694872 (valid!1461 cacheUp!755))))

(declare-fun b!1557154 () Bool)

(declare-fun tp!456923 () Bool)

(assert (=> b!1557154 (= e!999284 (and (inv!22134 (c!252896 totalInput!568)) tp!456923))))

(declare-fun b!1557155 () Bool)

(declare-fun e!999295 () Bool)

(assert (=> b!1557155 (= e!999296 e!999295)))

(declare-fun tp!456924 () Bool)

(declare-fun tp!456906 () Bool)

(declare-fun e!999288 () Bool)

(declare-fun array_inv!1995 (array!6222) Bool)

(assert (=> b!1557156 (= e!999295 (and tp!456915 tp!456906 tp!456924 (array_inv!1993 (_keys!2109 (v!23705 (underlying!3839 (v!23706 (underlying!3840 (cache!2140 cacheUp!755))))))) (array_inv!1995 (_values!2094 (v!23705 (underlying!3839 (v!23706 (underlying!3840 (cache!2140 cacheUp!755))))))) e!999288))))

(assert (=> b!1557157 (= e!999309 (and e!999312 tp!456901))))

(declare-fun b!1557158 () Bool)

(declare-fun e!999286 () Bool)

(assert (=> b!1557158 (= e!999310 e!999286)))

(declare-fun b!1557159 () Bool)

(declare-fun matchR!1882 (Regex!4281 List!16918) Bool)

(assert (=> b!1557159 (= e!999302 (matchR!1882 (regex!2953 rule!240) (_1!9535 lt!539255)))))

(declare-fun tp!456902 () Bool)

(declare-fun e!999307 () Bool)

(declare-fun tp!456905 () Bool)

(declare-fun array_inv!1996 (array!6218) Bool)

(assert (=> b!1557160 (= e!999307 (and tp!456919 tp!456902 tp!456905 (array_inv!1993 (_keys!2108 (v!23702 (underlying!3837 (v!23703 (underlying!3838 (cache!2139 cacheFurthestNullable!103))))))) (array_inv!1996 (_values!2093 (v!23702 (underlying!3837 (v!23703 (underlying!3838 (cache!2139 cacheFurthestNullable!103))))))) e!999317))))

(declare-fun b!1557161 () Bool)

(assert (=> b!1557161 (= e!999299 e!999307)))

(declare-fun b!1557162 () Bool)

(declare-fun res!694874 () Bool)

(assert (=> b!1557162 (=> res!694874 e!999305)))

(assert (=> b!1557162 (= res!694874 (not (= (list!6501 lt!539261) lt!539245)))))

(assert (=> b!1557163 (= e!999286 (and e!999318 tp!456911))))

(declare-fun mapNonEmpty!8443 () Bool)

(declare-fun tp!456920 () Bool)

(declare-fun tp!456917 () Bool)

(assert (=> mapNonEmpty!8443 (= mapRes!8442 (and tp!456920 tp!456917))))

(declare-fun mapValue!8443 () List!16921)

(declare-fun mapKey!8443 () (_ BitVec 32))

(declare-fun mapRest!8442 () (Array (_ BitVec 32) List!16921))

(assert (=> mapNonEmpty!8443 (= (arr!2772 (_values!2094 (v!23705 (underlying!3839 (v!23706 (underlying!3840 (cache!2140 cacheUp!755))))))) (store mapRest!8442 mapKey!8443 mapValue!8443))))

(declare-fun b!1557164 () Bool)

(declare-fun res!694870 () Bool)

(assert (=> b!1557164 (=> (not res!694870) (not e!999301))))

(declare-fun valid!1462 (CacheDown!1076) Bool)

(assert (=> b!1557164 (= res!694870 (valid!1462 cacheDown!768))))

(declare-fun b!1557165 () Bool)

(assert (=> b!1557165 (= e!999306 e!999313)))

(declare-fun b!1557166 () Bool)

(assert (=> b!1557166 (= e!999290 (and e!999291 (inv!22135 (totalInput!2474 cacheFurthestNullable!103)) e!999289))))

(declare-fun b!1557167 () Bool)

(assert (=> b!1557167 (= e!999304 e!999297)))

(declare-fun res!694867 () Bool)

(assert (=> b!1557167 (=> (not res!694867) (not e!999297))))

(declare-fun isEmpty!10130 (BalanceConc!11084) Bool)

(assert (=> b!1557167 (= res!694867 (not (isEmpty!10130 (_1!9543 (_1!9544 lt!539247)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!53 (Regex!4281 BalanceConc!11084 BalanceConc!11084 CacheUp!1070 CacheDown!1076 CacheFurthestNullable!498) tuple4!902)

(assert (=> b!1557167 (= lt!539247 (findLongestMatchWithZipperSequenceV3Mem!53 (regex!2953 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun mapIsEmpty!8444 () Bool)

(assert (=> mapIsEmpty!8444 mapRes!8444))

(declare-fun b!1557168 () Bool)

(declare-fun tp!456916 () Bool)

(assert (=> b!1557168 (= e!999288 (and tp!456916 mapRes!8442))))

(declare-fun condMapEmpty!8442 () Bool)

(declare-fun mapDefault!8442 () List!16921)

(assert (=> b!1557168 (= condMapEmpty!8442 (= (arr!2772 (_values!2094 (v!23705 (underlying!3839 (v!23706 (underlying!3840 (cache!2140 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16921)) mapDefault!8442)))))

(declare-fun mapNonEmpty!8444 () Bool)

(declare-fun tp!456925 () Bool)

(declare-fun tp!456918 () Bool)

(assert (=> mapNonEmpty!8444 (= mapRes!8443 (and tp!456925 tp!456918))))

(declare-fun mapValue!8444 () List!16920)

(declare-fun mapRest!8444 () (Array (_ BitVec 32) List!16920))

(declare-fun mapKey!8444 () (_ BitVec 32))

(assert (=> mapNonEmpty!8444 (= (arr!2770 (_values!2093 (v!23702 (underlying!3837 (v!23703 (underlying!3838 (cache!2139 cacheFurthestNullable!103))))))) (store mapRest!8444 mapKey!8444 mapValue!8444))))

(declare-fun res!694863 () Bool)

(assert (=> b!1557169 (=> res!694863 e!999282)))

(declare-fun Forall!612 (Int) Bool)

(assert (=> b!1557169 (= res!694863 (not (Forall!612 lambda!65921)))))

(declare-fun b!1557170 () Bool)

(declare-fun res!694868 () Bool)

(assert (=> b!1557170 (=> res!694868 e!999305)))

(assert (=> b!1557170 (= res!694868 (not lt!539251))))

(assert (= (and start!144440 res!694861) b!1557139))

(assert (= (and b!1557139 res!694866) b!1557153))

(assert (= (and b!1557153 res!694872) b!1557164))

(assert (= (and b!1557164 res!694870) b!1557142))

(assert (= (and b!1557142 res!694860) b!1557148))

(assert (= (and b!1557148 res!694864) b!1557141))

(assert (= (and b!1557141 res!694869) b!1557167))

(assert (= (and b!1557167 res!694867) b!1557131))

(assert (= (and b!1557131 (not res!694865)) b!1557159))

(assert (= (and b!1557131 (not res!694873)) b!1557169))

(assert (= (and b!1557169 (not res!694863)) b!1557133))

(assert (= (and b!1557133 (not res!694871)) b!1557170))

(assert (= (and b!1557170 (not res!694868)) b!1557162))

(assert (= (and b!1557162 (not res!694874)) b!1557144))

(assert (= (and b!1557144 (not res!694862)) b!1557145))

(assert (= start!144440 b!1557154))

(assert (= (and b!1557168 condMapEmpty!8442) mapIsEmpty!8442))

(assert (= (and b!1557168 (not condMapEmpty!8442)) mapNonEmpty!8443))

(assert (= b!1557156 b!1557168))

(assert (= b!1557155 b!1557156))

(assert (= b!1557134 b!1557155))

(assert (= (and b!1557151 ((_ is LongMap!1815) (v!23706 (underlying!3840 (cache!2140 cacheUp!755))))) b!1557134))

(assert (= b!1557157 b!1557151))

(assert (= (and b!1557147 ((_ is HashMap!1759) (cache!2140 cacheUp!755))) b!1557157))

(assert (= start!144440 b!1557147))

(assert (= (and b!1557152 condMapEmpty!8443) mapIsEmpty!8443))

(assert (= (and b!1557152 (not condMapEmpty!8443)) mapNonEmpty!8444))

(assert (= b!1557160 b!1557152))

(assert (= b!1557161 b!1557160))

(assert (= b!1557136 b!1557161))

(assert (= (and b!1557132 ((_ is LongMap!1814) (v!23703 (underlying!3838 (cache!2139 cacheFurthestNullable!103))))) b!1557136))

(assert (= b!1557137 b!1557132))

(assert (= (and b!1557166 ((_ is HashMap!1758) (cache!2139 cacheFurthestNullable!103))) b!1557137))

(assert (= b!1557166 b!1557150))

(assert (= start!144440 b!1557166))

(assert (= start!144440 b!1557135))

(assert (= b!1557146 b!1557130))

(assert (= start!144440 b!1557146))

(assert (= (and b!1557138 condMapEmpty!8444) mapIsEmpty!8444))

(assert (= (and b!1557138 (not condMapEmpty!8444)) mapNonEmpty!8442))

(assert (= b!1557140 b!1557138))

(assert (= b!1557165 b!1557140))

(assert (= b!1557149 b!1557165))

(assert (= (and b!1557143 ((_ is LongMap!1816) (v!23708 (underlying!3842 (cache!2141 cacheDown!768))))) b!1557149))

(assert (= b!1557163 b!1557143))

(assert (= (and b!1557158 ((_ is HashMap!1760) (cache!2141 cacheDown!768))) b!1557163))

(assert (= start!144440 b!1557158))

(declare-fun m!1829348 () Bool)

(assert (=> b!1557156 m!1829348))

(declare-fun m!1829350 () Bool)

(assert (=> b!1557156 m!1829350))

(declare-fun m!1829352 () Bool)

(assert (=> b!1557140 m!1829352))

(declare-fun m!1829354 () Bool)

(assert (=> b!1557140 m!1829354))

(declare-fun m!1829356 () Bool)

(assert (=> mapNonEmpty!8444 m!1829356))

(declare-fun m!1829358 () Bool)

(assert (=> b!1557164 m!1829358))

(declare-fun m!1829360 () Bool)

(assert (=> b!1557159 m!1829360))

(declare-fun m!1829362 () Bool)

(assert (=> b!1557166 m!1829362))

(declare-fun m!1829364 () Bool)

(assert (=> b!1557162 m!1829364))

(declare-fun m!1829366 () Bool)

(assert (=> b!1557142 m!1829366))

(declare-fun m!1829368 () Bool)

(assert (=> b!1557150 m!1829368))

(declare-fun m!1829370 () Bool)

(assert (=> b!1557154 m!1829370))

(declare-fun m!1829372 () Bool)

(assert (=> b!1557146 m!1829372))

(declare-fun m!1829374 () Bool)

(assert (=> b!1557146 m!1829374))

(declare-fun m!1829376 () Bool)

(assert (=> start!144440 m!1829376))

(declare-fun m!1829378 () Bool)

(assert (=> start!144440 m!1829378))

(declare-fun m!1829380 () Bool)

(assert (=> start!144440 m!1829380))

(declare-fun m!1829382 () Bool)

(assert (=> start!144440 m!1829382))

(declare-fun m!1829384 () Bool)

(assert (=> start!144440 m!1829384))

(declare-fun m!1829386 () Bool)

(assert (=> b!1557131 m!1829386))

(declare-fun m!1829388 () Bool)

(assert (=> b!1557131 m!1829388))

(declare-fun m!1829390 () Bool)

(assert (=> b!1557131 m!1829390))

(declare-fun m!1829392 () Bool)

(assert (=> b!1557131 m!1829392))

(declare-fun m!1829394 () Bool)

(assert (=> b!1557131 m!1829394))

(assert (=> b!1557131 m!1829390))

(declare-fun m!1829396 () Bool)

(assert (=> b!1557131 m!1829396))

(assert (=> b!1557131 m!1829392))

(declare-fun m!1829398 () Bool)

(assert (=> b!1557131 m!1829398))

(declare-fun m!1829400 () Bool)

(assert (=> mapNonEmpty!8442 m!1829400))

(declare-fun m!1829402 () Bool)

(assert (=> b!1557167 m!1829402))

(declare-fun m!1829404 () Bool)

(assert (=> b!1557167 m!1829404))

(declare-fun m!1829406 () Bool)

(assert (=> b!1557160 m!1829406))

(declare-fun m!1829408 () Bool)

(assert (=> b!1557160 m!1829408))

(declare-fun m!1829410 () Bool)

(assert (=> b!1557144 m!1829410))

(declare-fun m!1829412 () Bool)

(assert (=> b!1557144 m!1829412))

(declare-fun m!1829414 () Bool)

(assert (=> b!1557148 m!1829414))

(assert (=> b!1557148 m!1829414))

(declare-fun m!1829416 () Bool)

(assert (=> b!1557148 m!1829416))

(declare-fun m!1829418 () Bool)

(assert (=> b!1557148 m!1829418))

(declare-fun m!1829420 () Bool)

(assert (=> b!1557139 m!1829420))

(declare-fun m!1829422 () Bool)

(assert (=> b!1557169 m!1829422))

(declare-fun m!1829424 () Bool)

(assert (=> b!1557145 m!1829424))

(declare-fun m!1829426 () Bool)

(assert (=> mapNonEmpty!8443 m!1829426))

(declare-fun m!1829428 () Bool)

(assert (=> b!1557135 m!1829428))

(declare-fun m!1829430 () Bool)

(assert (=> b!1557153 m!1829430))

(declare-fun m!1829432 () Bool)

(assert (=> b!1557133 m!1829432))

(declare-fun m!1829434 () Bool)

(assert (=> b!1557133 m!1829434))

(declare-fun m!1829436 () Bool)

(assert (=> b!1557133 m!1829436))

(declare-fun m!1829438 () Bool)

(assert (=> b!1557133 m!1829438))

(declare-fun m!1829440 () Bool)

(assert (=> b!1557133 m!1829440))

(declare-fun m!1829442 () Bool)

(assert (=> b!1557133 m!1829442))

(declare-fun m!1829444 () Bool)

(assert (=> b!1557133 m!1829444))

(declare-fun m!1829446 () Bool)

(assert (=> b!1557133 m!1829446))

(declare-fun m!1829448 () Bool)

(assert (=> b!1557133 m!1829448))

(check-sat (not b!1557145) (not b!1557154) (not b!1557169) (not b!1557144) (not b!1557135) (not start!144440) (not b!1557131) b_and!108659 (not b!1557159) (not b_next!42159) (not b_next!42163) (not b_next!42153) (not b!1557133) b_and!108655 b_and!108647 (not mapNonEmpty!8442) (not b!1557148) (not b!1557150) (not b!1557162) (not b!1557168) (not b!1557164) (not b!1557138) (not mapNonEmpty!8443) (not b!1557140) (not b_next!42151) (not b!1557156) (not b_next!42161) (not b_next!42165) (not b!1557166) b_and!108653 (not b_next!42157) b_and!108649 (not b!1557153) (not mapNonEmpty!8444) (not b!1557142) (not b_next!42155) (not b!1557146) b_and!108645 b_and!108651 (not b!1557152) (not b!1557139) b_and!108657 (not b!1557167) (not b!1557160))
(check-sat (not b_next!42151) (not b_next!42161) b_and!108659 b_and!108649 b_and!108651 b_and!108657 (not b_next!42159) (not b_next!42163) (not b_next!42153) b_and!108655 b_and!108647 (not b_next!42165) b_and!108653 (not b_next!42157) (not b_next!42155) b_and!108645)
(get-model)

(declare-fun d!461724 () Bool)

(declare-fun res!694881 () Bool)

(declare-fun e!999327 () Bool)

(assert (=> d!461724 (=> (not res!694881) (not e!999327))))

(declare-fun validRegex!1714 (Regex!4281) Bool)

(assert (=> d!461724 (= res!694881 (validRegex!1714 (regex!2953 rule!240)))))

(assert (=> d!461724 (= (ruleValid!688 thiss!16438 rule!240) e!999327)))

(declare-fun b!1557183 () Bool)

(declare-fun res!694882 () Bool)

(assert (=> b!1557183 (=> (not res!694882) (not e!999327))))

(declare-fun nullable!1273 (Regex!4281) Bool)

(assert (=> b!1557183 (= res!694882 (not (nullable!1273 (regex!2953 rule!240))))))

(declare-fun b!1557184 () Bool)

(assert (=> b!1557184 (= e!999327 (not (= (tag!3217 rule!240) (String!19504 ""))))))

(assert (= (and d!461724 res!694881) b!1557183))

(assert (= (and b!1557183 res!694882) b!1557184))

(declare-fun m!1829450 () Bool)

(assert (=> d!461724 m!1829450))

(declare-fun m!1829452 () Bool)

(assert (=> b!1557183 m!1829452))

(assert (=> b!1557139 d!461724))

(declare-fun d!461726 () Bool)

(assert (=> d!461726 (= (array_inv!1993 (_keys!2110 (v!23707 (underlying!3841 (v!23708 (underlying!3842 (cache!2141 cacheDown!768))))))) (bvsge (size!13655 (_keys!2110 (v!23707 (underlying!3841 (v!23708 (underlying!3842 (cache!2141 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1557140 d!461726))

(declare-fun d!461728 () Bool)

(assert (=> d!461728 (= (array_inv!1994 (_values!2095 (v!23707 (underlying!3841 (v!23708 (underlying!3842 (cache!2141 cacheDown!768))))))) (bvsge (size!13658 (_values!2095 (v!23707 (underlying!3841 (v!23708 (underlying!3842 (cache!2141 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1557140 d!461728))

(declare-fun d!461730 () Bool)

(assert (=> d!461730 (= (isEmpty!10129 (_1!9535 lt!539255)) ((_ is Nil!16850) (_1!9535 lt!539255)))))

(assert (=> b!1557131 d!461730))

(declare-fun d!461732 () Bool)

(declare-fun lt!539265 () Int)

(assert (=> d!461732 (>= lt!539265 0)))

(declare-fun e!999330 () Int)

(assert (=> d!461732 (= lt!539265 e!999330)))

(declare-fun c!252900 () Bool)

(assert (=> d!461732 (= c!252900 ((_ is Nil!16850) Nil!16850))))

(assert (=> d!461732 (= (size!13653 Nil!16850) lt!539265)))

(declare-fun b!1557189 () Bool)

(assert (=> b!1557189 (= e!999330 0)))

(declare-fun b!1557190 () Bool)

(assert (=> b!1557190 (= e!999330 (+ 1 (size!13653 (t!141405 Nil!16850))))))

(assert (= (and d!461732 c!252900) b!1557189))

(assert (= (and d!461732 (not c!252900)) b!1557190))

(declare-fun m!1829454 () Bool)

(assert (=> b!1557190 m!1829454))

(assert (=> b!1557131 d!461732))

(declare-fun bs!388751 () Bool)

(declare-fun d!461734 () Bool)

(assert (= bs!388751 (and d!461734 b!1557169)))

(declare-fun lambda!65924 () Int)

(assert (=> bs!388751 (= lambda!65924 lambda!65921)))

(assert (=> d!461734 true))

(assert (=> d!461734 (< (dynLambda!7483 order!9941 (toChars!4186 (transformation!2953 rule!240))) (dynLambda!7482 order!9939 lambda!65924))))

(assert (=> d!461734 true))

(assert (=> d!461734 (< (dynLambda!7481 order!9937 (toValue!4327 (transformation!2953 rule!240))) (dynLambda!7482 order!9939 lambda!65924))))

(assert (=> d!461734 (= (semiInverseModEq!1116 (toChars!4186 (transformation!2953 rule!240)) (toValue!4327 (transformation!2953 rule!240))) (Forall!612 lambda!65924))))

(declare-fun bs!388752 () Bool)

(assert (= bs!388752 d!461734))

(declare-fun m!1829456 () Bool)

(assert (=> bs!388752 m!1829456))

(assert (=> b!1557131 d!461734))

(declare-fun d!461736 () Bool)

(declare-fun e!999333 () Bool)

(assert (=> d!461736 e!999333))

(declare-fun res!694885 () Bool)

(assert (=> d!461736 (=> res!694885 e!999333)))

(assert (=> d!461736 (= res!694885 (isEmpty!10129 (_1!9535 (findLongestMatchInner!336 (regex!2953 rule!240) Nil!16850 (size!13653 Nil!16850) lt!539249 lt!539249 (size!13653 lt!539249)))))))

(declare-fun lt!539268 () Unit!26092)

(declare-fun choose!9293 (Regex!4281 List!16918) Unit!26092)

(assert (=> d!461736 (= lt!539268 (choose!9293 (regex!2953 rule!240) lt!539249))))

(assert (=> d!461736 (validRegex!1714 (regex!2953 rule!240))))

(assert (=> d!461736 (= (longestMatchIsAcceptedByMatchOrIsEmpty!320 (regex!2953 rule!240) lt!539249) lt!539268)))

(declare-fun b!1557197 () Bool)

(assert (=> b!1557197 (= e!999333 (matchR!1882 (regex!2953 rule!240) (_1!9535 (findLongestMatchInner!336 (regex!2953 rule!240) Nil!16850 (size!13653 Nil!16850) lt!539249 lt!539249 (size!13653 lt!539249)))))))

(assert (= (and d!461736 (not res!694885)) b!1557197))

(declare-fun m!1829458 () Bool)

(assert (=> d!461736 m!1829458))

(assert (=> d!461736 m!1829390))

(assert (=> d!461736 m!1829392))

(assert (=> d!461736 m!1829394))

(assert (=> d!461736 m!1829450))

(assert (=> d!461736 m!1829390))

(declare-fun m!1829460 () Bool)

(assert (=> d!461736 m!1829460))

(assert (=> d!461736 m!1829392))

(assert (=> b!1557197 m!1829390))

(assert (=> b!1557197 m!1829392))

(assert (=> b!1557197 m!1829390))

(assert (=> b!1557197 m!1829392))

(assert (=> b!1557197 m!1829394))

(declare-fun m!1829462 () Bool)

(assert (=> b!1557197 m!1829462))

(assert (=> b!1557131 d!461736))

(declare-fun b!1557226 () Bool)

(declare-fun e!999355 () Unit!26092)

(declare-fun Unit!26094 () Unit!26092)

(assert (=> b!1557226 (= e!999355 Unit!26094)))

(declare-fun lt!539341 () Unit!26092)

(declare-fun call!102109 () Unit!26092)

(assert (=> b!1557226 (= lt!539341 call!102109)))

(declare-fun call!102107 () Bool)

(assert (=> b!1557226 call!102107))

(declare-fun lt!539352 () Unit!26092)

(assert (=> b!1557226 (= lt!539352 lt!539341)))

(declare-fun lt!539337 () Unit!26092)

(declare-fun call!102111 () Unit!26092)

(assert (=> b!1557226 (= lt!539337 call!102111)))

(assert (=> b!1557226 (= lt!539249 Nil!16850)))

(declare-fun lt!539340 () Unit!26092)

(assert (=> b!1557226 (= lt!539340 lt!539337)))

(assert (=> b!1557226 false))

(declare-fun b!1557227 () Bool)

(declare-fun e!999353 () tuple2!16358)

(declare-fun lt!539351 () tuple2!16358)

(assert (=> b!1557227 (= e!999353 lt!539351)))

(declare-fun bm!102102 () Bool)

(declare-fun call!102113 () C!8740)

(declare-fun head!3116 (List!16918) C!8740)

(assert (=> bm!102102 (= call!102113 (head!3116 lt!539249))))

(declare-fun bm!102103 () Bool)

(declare-fun call!102108 () Bool)

(assert (=> bm!102103 (= call!102108 (nullable!1273 (regex!2953 rule!240)))))

(declare-fun bm!102104 () Bool)

(declare-fun isPrefix!1263 (List!16918 List!16918) Bool)

(assert (=> bm!102104 (= call!102107 (isPrefix!1263 lt!539249 lt!539249))))

(declare-fun b!1557228 () Bool)

(assert (=> b!1557228 (= e!999353 (tuple2!16359 Nil!16850 lt!539249))))

(declare-fun b!1557229 () Bool)

(declare-fun e!999352 () Bool)

(declare-fun lt!539350 () tuple2!16358)

(assert (=> b!1557229 (= e!999352 (>= (size!13653 (_1!9535 lt!539350)) (size!13653 Nil!16850)))))

(declare-fun b!1557230 () Bool)

(declare-fun e!999350 () tuple2!16358)

(assert (=> b!1557230 (= e!999350 (tuple2!16359 Nil!16850 lt!539249))))

(declare-fun b!1557231 () Bool)

(declare-fun e!999356 () tuple2!16358)

(declare-fun call!102112 () tuple2!16358)

(assert (=> b!1557231 (= e!999356 call!102112)))

(declare-fun bm!102105 () Bool)

(declare-fun call!102110 () Regex!4281)

(declare-fun derivativeStep!1025 (Regex!4281 C!8740) Regex!4281)

(assert (=> bm!102105 (= call!102110 (derivativeStep!1025 (regex!2953 rule!240) call!102113))))

(declare-fun bm!102106 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!127 (List!16918 List!16918 List!16918) Unit!26092)

(assert (=> bm!102106 (= call!102111 (lemmaIsPrefixSameLengthThenSameList!127 lt!539249 Nil!16850 lt!539249))))

(declare-fun b!1557232 () Bool)

(declare-fun e!999351 () tuple2!16358)

(assert (=> b!1557232 (= e!999351 (tuple2!16359 Nil!16850 Nil!16850))))

(declare-fun b!1557233 () Bool)

(declare-fun c!252914 () Bool)

(assert (=> b!1557233 (= c!252914 call!102108)))

(declare-fun lt!539344 () Unit!26092)

(declare-fun lt!539338 () Unit!26092)

(assert (=> b!1557233 (= lt!539344 lt!539338)))

(assert (=> b!1557233 (= lt!539249 Nil!16850)))

(assert (=> b!1557233 (= lt!539338 call!102111)))

(declare-fun lt!539330 () Unit!26092)

(declare-fun lt!539346 () Unit!26092)

(assert (=> b!1557233 (= lt!539330 lt!539346)))

(assert (=> b!1557233 call!102107))

(assert (=> b!1557233 (= lt!539346 call!102109)))

(declare-fun e!999354 () tuple2!16358)

(assert (=> b!1557233 (= e!999354 e!999351)))

(declare-fun bm!102107 () Bool)

(declare-fun lemmaIsPrefixRefl!893 (List!16918 List!16918) Unit!26092)

(assert (=> bm!102107 (= call!102109 (lemmaIsPrefixRefl!893 lt!539249 lt!539249))))

(declare-fun bm!102108 () Bool)

(declare-fun call!102114 () List!16918)

(declare-fun tail!2211 (List!16918) List!16918)

(assert (=> bm!102108 (= call!102114 (tail!2211 lt!539249))))

(declare-fun b!1557235 () Bool)

(declare-fun c!252916 () Bool)

(assert (=> b!1557235 (= c!252916 call!102108)))

(declare-fun lt!539349 () Unit!26092)

(declare-fun lt!539332 () Unit!26092)

(assert (=> b!1557235 (= lt!539349 lt!539332)))

(declare-fun lt!539331 () C!8740)

(declare-fun lt!539345 () List!16918)

(declare-fun ++!4417 (List!16918 List!16918) List!16918)

(assert (=> b!1557235 (= (++!4417 (++!4417 Nil!16850 (Cons!16850 lt!539331 Nil!16850)) lt!539345) lt!539249)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!442 (List!16918 C!8740 List!16918 List!16918) Unit!26092)

(assert (=> b!1557235 (= lt!539332 (lemmaMoveElementToOtherListKeepsConcatEq!442 Nil!16850 lt!539331 lt!539345 lt!539249))))

(assert (=> b!1557235 (= lt!539345 (tail!2211 lt!539249))))

(assert (=> b!1557235 (= lt!539331 (head!3116 lt!539249))))

(declare-fun lt!539334 () Unit!26092)

(declare-fun lt!539329 () Unit!26092)

(assert (=> b!1557235 (= lt!539334 lt!539329)))

(declare-fun getSuffix!673 (List!16918 List!16918) List!16918)

(assert (=> b!1557235 (isPrefix!1263 (++!4417 Nil!16850 (Cons!16850 (head!3116 (getSuffix!673 lt!539249 Nil!16850)) Nil!16850)) lt!539249)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!116 (List!16918 List!16918) Unit!26092)

(assert (=> b!1557235 (= lt!539329 (lemmaAddHeadSuffixToPrefixStillPrefix!116 Nil!16850 lt!539249))))

(declare-fun lt!539347 () Unit!26092)

(declare-fun lt!539333 () Unit!26092)

(assert (=> b!1557235 (= lt!539347 lt!539333)))

(assert (=> b!1557235 (= lt!539333 (lemmaAddHeadSuffixToPrefixStillPrefix!116 Nil!16850 lt!539249))))

(declare-fun lt!539327 () List!16918)

(assert (=> b!1557235 (= lt!539327 (++!4417 Nil!16850 (Cons!16850 (head!3116 lt!539249) Nil!16850)))))

(declare-fun lt!539328 () Unit!26092)

(assert (=> b!1557235 (= lt!539328 e!999355)))

(declare-fun c!252915 () Bool)

(assert (=> b!1557235 (= c!252915 (= (size!13653 Nil!16850) (size!13653 lt!539249)))))

(declare-fun lt!539339 () Unit!26092)

(declare-fun lt!539336 () Unit!26092)

(assert (=> b!1557235 (= lt!539339 lt!539336)))

(assert (=> b!1557235 (<= (size!13653 Nil!16850) (size!13653 lt!539249))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!117 (List!16918 List!16918) Unit!26092)

(assert (=> b!1557235 (= lt!539336 (lemmaIsPrefixThenSmallerEqSize!117 Nil!16850 lt!539249))))

(assert (=> b!1557235 (= e!999354 e!999356)))

(declare-fun bm!102109 () Bool)

(assert (=> bm!102109 (= call!102112 (findLongestMatchInner!336 call!102110 lt!539327 (+ (size!13653 Nil!16850) 1) call!102114 lt!539249 (size!13653 lt!539249)))))

(declare-fun b!1557236 () Bool)

(assert (=> b!1557236 (= e!999351 (tuple2!16359 Nil!16850 lt!539249))))

(declare-fun b!1557237 () Bool)

(assert (=> b!1557237 (= e!999356 e!999353)))

(assert (=> b!1557237 (= lt!539351 call!102112)))

(declare-fun c!252917 () Bool)

(assert (=> b!1557237 (= c!252917 (isEmpty!10129 (_1!9535 lt!539351)))))

(declare-fun b!1557238 () Bool)

(declare-fun Unit!26095 () Unit!26092)

(assert (=> b!1557238 (= e!999355 Unit!26095)))

(declare-fun b!1557239 () Bool)

(declare-fun e!999357 () Bool)

(assert (=> b!1557239 (= e!999357 e!999352)))

(declare-fun res!694890 () Bool)

(assert (=> b!1557239 (=> res!694890 e!999352)))

(assert (=> b!1557239 (= res!694890 (isEmpty!10129 (_1!9535 lt!539350)))))

(declare-fun b!1557234 () Bool)

(assert (=> b!1557234 (= e!999350 e!999354)))

(declare-fun c!252913 () Bool)

(assert (=> b!1557234 (= c!252913 (= (size!13653 Nil!16850) (size!13653 lt!539249)))))

(declare-fun d!461738 () Bool)

(assert (=> d!461738 e!999357))

(declare-fun res!694891 () Bool)

(assert (=> d!461738 (=> (not res!694891) (not e!999357))))

(assert (=> d!461738 (= res!694891 (= (++!4417 (_1!9535 lt!539350) (_2!9535 lt!539350)) lt!539249))))

(assert (=> d!461738 (= lt!539350 e!999350)))

(declare-fun c!252918 () Bool)

(declare-fun lostCause!391 (Regex!4281) Bool)

(assert (=> d!461738 (= c!252918 (lostCause!391 (regex!2953 rule!240)))))

(declare-fun lt!539343 () Unit!26092)

(declare-fun Unit!26096 () Unit!26092)

(assert (=> d!461738 (= lt!539343 Unit!26096)))

(assert (=> d!461738 (= (getSuffix!673 lt!539249 Nil!16850) lt!539249)))

(declare-fun lt!539342 () Unit!26092)

(declare-fun lt!539325 () Unit!26092)

(assert (=> d!461738 (= lt!539342 lt!539325)))

(declare-fun lt!539335 () List!16918)

(assert (=> d!461738 (= lt!539249 lt!539335)))

(declare-fun lemmaSamePrefixThenSameSuffix!625 (List!16918 List!16918 List!16918 List!16918 List!16918) Unit!26092)

(assert (=> d!461738 (= lt!539325 (lemmaSamePrefixThenSameSuffix!625 Nil!16850 lt!539249 Nil!16850 lt!539335 lt!539249))))

(assert (=> d!461738 (= lt!539335 (getSuffix!673 lt!539249 Nil!16850))))

(declare-fun lt!539348 () Unit!26092)

(declare-fun lt!539326 () Unit!26092)

(assert (=> d!461738 (= lt!539348 lt!539326)))

(assert (=> d!461738 (isPrefix!1263 Nil!16850 (++!4417 Nil!16850 lt!539249))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!788 (List!16918 List!16918) Unit!26092)

(assert (=> d!461738 (= lt!539326 (lemmaConcatTwoListThenFirstIsPrefix!788 Nil!16850 lt!539249))))

(assert (=> d!461738 (validRegex!1714 (regex!2953 rule!240))))

(assert (=> d!461738 (= (findLongestMatchInner!336 (regex!2953 rule!240) Nil!16850 (size!13653 Nil!16850) lt!539249 lt!539249 (size!13653 lt!539249)) lt!539350)))

(assert (= (and d!461738 c!252918) b!1557230))

(assert (= (and d!461738 (not c!252918)) b!1557234))

(assert (= (and b!1557234 c!252913) b!1557233))

(assert (= (and b!1557234 (not c!252913)) b!1557235))

(assert (= (and b!1557233 c!252914) b!1557232))

(assert (= (and b!1557233 (not c!252914)) b!1557236))

(assert (= (and b!1557235 c!252915) b!1557226))

(assert (= (and b!1557235 (not c!252915)) b!1557238))

(assert (= (and b!1557235 c!252916) b!1557237))

(assert (= (and b!1557235 (not c!252916)) b!1557231))

(assert (= (and b!1557237 c!252917) b!1557228))

(assert (= (and b!1557237 (not c!252917)) b!1557227))

(assert (= (or b!1557237 b!1557231) bm!102108))

(assert (= (or b!1557237 b!1557231) bm!102102))

(assert (= (or b!1557237 b!1557231) bm!102105))

(assert (= (or b!1557237 b!1557231) bm!102109))

(assert (= (or b!1557233 b!1557226) bm!102106))

(assert (= (or b!1557233 b!1557226) bm!102107))

(assert (= (or b!1557233 b!1557235) bm!102103))

(assert (= (or b!1557233 b!1557226) bm!102104))

(assert (= (and d!461738 res!694891) b!1557239))

(assert (= (and b!1557239 (not res!694890)) b!1557229))

(declare-fun m!1829464 () Bool)

(assert (=> bm!102107 m!1829464))

(declare-fun m!1829466 () Bool)

(assert (=> b!1557237 m!1829466))

(declare-fun m!1829468 () Bool)

(assert (=> b!1557229 m!1829468))

(assert (=> b!1557229 m!1829390))

(declare-fun m!1829470 () Bool)

(assert (=> b!1557235 m!1829470))

(declare-fun m!1829472 () Bool)

(assert (=> b!1557235 m!1829472))

(declare-fun m!1829474 () Bool)

(assert (=> b!1557235 m!1829474))

(declare-fun m!1829476 () Bool)

(assert (=> b!1557235 m!1829476))

(declare-fun m!1829478 () Bool)

(assert (=> b!1557235 m!1829478))

(declare-fun m!1829480 () Bool)

(assert (=> b!1557235 m!1829480))

(assert (=> b!1557235 m!1829390))

(declare-fun m!1829482 () Bool)

(assert (=> b!1557235 m!1829482))

(assert (=> b!1557235 m!1829474))

(declare-fun m!1829484 () Bool)

(assert (=> b!1557235 m!1829484))

(declare-fun m!1829486 () Bool)

(assert (=> b!1557235 m!1829486))

(declare-fun m!1829488 () Bool)

(assert (=> b!1557235 m!1829488))

(assert (=> b!1557235 m!1829392))

(declare-fun m!1829490 () Bool)

(assert (=> b!1557235 m!1829490))

(declare-fun m!1829492 () Bool)

(assert (=> b!1557235 m!1829492))

(assert (=> b!1557235 m!1829478))

(assert (=> b!1557235 m!1829484))

(declare-fun m!1829494 () Bool)

(assert (=> bm!102105 m!1829494))

(declare-fun m!1829496 () Bool)

(assert (=> bm!102104 m!1829496))

(declare-fun m!1829498 () Bool)

(assert (=> bm!102106 m!1829498))

(assert (=> bm!102102 m!1829490))

(assert (=> bm!102103 m!1829452))

(declare-fun m!1829500 () Bool)

(assert (=> b!1557239 m!1829500))

(assert (=> bm!102109 m!1829392))

(declare-fun m!1829502 () Bool)

(assert (=> bm!102109 m!1829502))

(assert (=> bm!102108 m!1829470))

(assert (=> d!461738 m!1829474))

(assert (=> d!461738 m!1829450))

(declare-fun m!1829504 () Bool)

(assert (=> d!461738 m!1829504))

(declare-fun m!1829506 () Bool)

(assert (=> d!461738 m!1829506))

(declare-fun m!1829508 () Bool)

(assert (=> d!461738 m!1829508))

(assert (=> d!461738 m!1829508))

(declare-fun m!1829510 () Bool)

(assert (=> d!461738 m!1829510))

(declare-fun m!1829512 () Bool)

(assert (=> d!461738 m!1829512))

(declare-fun m!1829514 () Bool)

(assert (=> d!461738 m!1829514))

(assert (=> b!1557131 d!461738))

(declare-fun d!461740 () Bool)

(declare-fun e!999360 () Bool)

(assert (=> d!461740 e!999360))

(declare-fun res!694894 () Bool)

(assert (=> d!461740 (=> (not res!694894) (not e!999360))))

(assert (=> d!461740 (= res!694894 (semiInverseModEq!1116 (toChars!4186 (transformation!2953 rule!240)) (toValue!4327 (transformation!2953 rule!240))))))

(declare-fun Unit!26097 () Unit!26092)

(assert (=> d!461740 (= (lemmaInv!430 (transformation!2953 rule!240)) Unit!26097)))

(declare-fun b!1557242 () Bool)

(declare-fun equivClasses!1059 (Int Int) Bool)

(assert (=> b!1557242 (= e!999360 (equivClasses!1059 (toChars!4186 (transformation!2953 rule!240)) (toValue!4327 (transformation!2953 rule!240))))))

(assert (= (and d!461740 res!694894) b!1557242))

(assert (=> d!461740 m!1829386))

(declare-fun m!1829516 () Bool)

(assert (=> b!1557242 m!1829516))

(assert (=> b!1557131 d!461740))

(declare-fun d!461742 () Bool)

(declare-fun lt!539353 () Int)

(assert (=> d!461742 (>= lt!539353 0)))

(declare-fun e!999361 () Int)

(assert (=> d!461742 (= lt!539353 e!999361)))

(declare-fun c!252919 () Bool)

(assert (=> d!461742 (= c!252919 ((_ is Nil!16850) lt!539249))))

(assert (=> d!461742 (= (size!13653 lt!539249) lt!539353)))

(declare-fun b!1557243 () Bool)

(assert (=> b!1557243 (= e!999361 0)))

(declare-fun b!1557244 () Bool)

(assert (=> b!1557244 (= e!999361 (+ 1 (size!13653 (t!141405 lt!539249))))))

(assert (= (and d!461742 c!252919) b!1557243))

(assert (= (and d!461742 (not c!252919)) b!1557244))

(declare-fun m!1829518 () Bool)

(assert (=> b!1557244 m!1829518))

(assert (=> b!1557131 d!461742))

(declare-fun d!461744 () Bool)

(assert (=> d!461744 (= (array_inv!1993 (_keys!2108 (v!23702 (underlying!3837 (v!23703 (underlying!3838 (cache!2139 cacheFurthestNullable!103))))))) (bvsge (size!13655 (_keys!2108 (v!23702 (underlying!3837 (v!23703 (underlying!3838 (cache!2139 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1557160 d!461744))

(declare-fun d!461746 () Bool)

(assert (=> d!461746 (= (array_inv!1996 (_values!2093 (v!23702 (underlying!3837 (v!23703 (underlying!3838 (cache!2139 cacheFurthestNullable!103))))))) (bvsge (size!13654 (_values!2093 (v!23702 (underlying!3837 (v!23703 (underlying!3838 (cache!2139 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1557160 d!461746))

(declare-fun b!1557273 () Bool)

(declare-fun res!694917 () Bool)

(declare-fun e!999377 () Bool)

(assert (=> b!1557273 (=> res!694917 e!999377)))

(assert (=> b!1557273 (= res!694917 (not (isEmpty!10129 (tail!2211 (_1!9535 lt!539255)))))))

(declare-fun b!1557274 () Bool)

(declare-fun e!999381 () Bool)

(assert (=> b!1557274 (= e!999381 (nullable!1273 (regex!2953 rule!240)))))

(declare-fun b!1557275 () Bool)

(declare-fun res!694914 () Bool)

(declare-fun e!999382 () Bool)

(assert (=> b!1557275 (=> res!694914 e!999382)))

(declare-fun e!999376 () Bool)

(assert (=> b!1557275 (= res!694914 e!999376)))

(declare-fun res!694911 () Bool)

(assert (=> b!1557275 (=> (not res!694911) (not e!999376))))

(declare-fun lt!539356 () Bool)

(assert (=> b!1557275 (= res!694911 lt!539356)))

(declare-fun b!1557276 () Bool)

(declare-fun res!694916 () Bool)

(assert (=> b!1557276 (=> res!694916 e!999382)))

(assert (=> b!1557276 (= res!694916 (not ((_ is ElementMatch!4281) (regex!2953 rule!240))))))

(declare-fun e!999379 () Bool)

(assert (=> b!1557276 (= e!999379 e!999382)))

(declare-fun b!1557277 () Bool)

(declare-fun e!999378 () Bool)

(assert (=> b!1557277 (= e!999378 e!999379)))

(declare-fun c!252927 () Bool)

(assert (=> b!1557277 (= c!252927 ((_ is EmptyLang!4281) (regex!2953 rule!240)))))

(declare-fun b!1557278 () Bool)

(declare-fun e!999380 () Bool)

(assert (=> b!1557278 (= e!999380 e!999377)))

(declare-fun res!694913 () Bool)

(assert (=> b!1557278 (=> res!694913 e!999377)))

(declare-fun call!102117 () Bool)

(assert (=> b!1557278 (= res!694913 call!102117)))

(declare-fun b!1557279 () Bool)

(assert (=> b!1557279 (= e!999381 (matchR!1882 (derivativeStep!1025 (regex!2953 rule!240) (head!3116 (_1!9535 lt!539255))) (tail!2211 (_1!9535 lt!539255))))))

(declare-fun b!1557280 () Bool)

(declare-fun res!694915 () Bool)

(assert (=> b!1557280 (=> (not res!694915) (not e!999376))))

(assert (=> b!1557280 (= res!694915 (isEmpty!10129 (tail!2211 (_1!9535 lt!539255))))))

(declare-fun bm!102112 () Bool)

(assert (=> bm!102112 (= call!102117 (isEmpty!10129 (_1!9535 lt!539255)))))

(declare-fun b!1557281 () Bool)

(declare-fun res!694918 () Bool)

(assert (=> b!1557281 (=> (not res!694918) (not e!999376))))

(assert (=> b!1557281 (= res!694918 (not call!102117))))

(declare-fun d!461748 () Bool)

(assert (=> d!461748 e!999378))

(declare-fun c!252928 () Bool)

(assert (=> d!461748 (= c!252928 ((_ is EmptyExpr!4281) (regex!2953 rule!240)))))

(assert (=> d!461748 (= lt!539356 e!999381)))

(declare-fun c!252926 () Bool)

(assert (=> d!461748 (= c!252926 (isEmpty!10129 (_1!9535 lt!539255)))))

(assert (=> d!461748 (validRegex!1714 (regex!2953 rule!240))))

(assert (=> d!461748 (= (matchR!1882 (regex!2953 rule!240) (_1!9535 lt!539255)) lt!539356)))

(declare-fun b!1557282 () Bool)

(assert (=> b!1557282 (= e!999377 (not (= (head!3116 (_1!9535 lt!539255)) (c!252897 (regex!2953 rule!240)))))))

(declare-fun b!1557283 () Bool)

(assert (=> b!1557283 (= e!999382 e!999380)))

(declare-fun res!694912 () Bool)

(assert (=> b!1557283 (=> (not res!694912) (not e!999380))))

(assert (=> b!1557283 (= res!694912 (not lt!539356))))

(declare-fun b!1557284 () Bool)

(assert (=> b!1557284 (= e!999378 (= lt!539356 call!102117))))

(declare-fun b!1557285 () Bool)

(assert (=> b!1557285 (= e!999376 (= (head!3116 (_1!9535 lt!539255)) (c!252897 (regex!2953 rule!240))))))

(declare-fun b!1557286 () Bool)

(assert (=> b!1557286 (= e!999379 (not lt!539356))))

(assert (= (and d!461748 c!252926) b!1557274))

(assert (= (and d!461748 (not c!252926)) b!1557279))

(assert (= (and d!461748 c!252928) b!1557284))

(assert (= (and d!461748 (not c!252928)) b!1557277))

(assert (= (and b!1557277 c!252927) b!1557286))

(assert (= (and b!1557277 (not c!252927)) b!1557276))

(assert (= (and b!1557276 (not res!694916)) b!1557275))

(assert (= (and b!1557275 res!694911) b!1557281))

(assert (= (and b!1557281 res!694918) b!1557280))

(assert (= (and b!1557280 res!694915) b!1557285))

(assert (= (and b!1557275 (not res!694914)) b!1557283))

(assert (= (and b!1557283 res!694912) b!1557278))

(assert (= (and b!1557278 (not res!694913)) b!1557273))

(assert (= (and b!1557273 (not res!694917)) b!1557282))

(assert (= (or b!1557284 b!1557278 b!1557281) bm!102112))

(declare-fun m!1829520 () Bool)

(assert (=> b!1557280 m!1829520))

(assert (=> b!1557280 m!1829520))

(declare-fun m!1829522 () Bool)

(assert (=> b!1557280 m!1829522))

(declare-fun m!1829524 () Bool)

(assert (=> b!1557285 m!1829524))

(assert (=> b!1557273 m!1829520))

(assert (=> b!1557273 m!1829520))

(assert (=> b!1557273 m!1829522))

(assert (=> bm!102112 m!1829388))

(assert (=> b!1557279 m!1829524))

(assert (=> b!1557279 m!1829524))

(declare-fun m!1829526 () Bool)

(assert (=> b!1557279 m!1829526))

(assert (=> b!1557279 m!1829520))

(assert (=> b!1557279 m!1829526))

(assert (=> b!1557279 m!1829520))

(declare-fun m!1829528 () Bool)

(assert (=> b!1557279 m!1829528))

(assert (=> b!1557274 m!1829452))

(assert (=> d!461748 m!1829388))

(assert (=> d!461748 m!1829450))

(assert (=> b!1557282 m!1829524))

(assert (=> b!1557159 d!461748))

(declare-fun d!461750 () Bool)

(declare-fun e!999385 () Bool)

(assert (=> d!461750 e!999385))

(declare-fun res!694921 () Bool)

(assert (=> d!461750 (=> res!694921 e!999385)))

(declare-fun lt!539359 () Bool)

(assert (=> d!461750 (= res!694921 (not lt!539359))))

(declare-fun drop!788 (List!16918 Int) List!16918)

(assert (=> d!461750 (= lt!539359 (= lt!539249 (drop!788 (list!6501 totalInput!568) (- (size!13653 (list!6501 totalInput!568)) (size!13653 lt!539249)))))))

(assert (=> d!461750 (= (isSuffix!379 lt!539249 (list!6501 totalInput!568)) lt!539359)))

(declare-fun b!1557289 () Bool)

(assert (=> b!1557289 (= e!999385 (>= (size!13653 (list!6501 totalInput!568)) (size!13653 lt!539249)))))

(assert (= (and d!461750 (not res!694921)) b!1557289))

(assert (=> d!461750 m!1829414))

(declare-fun m!1829530 () Bool)

(assert (=> d!461750 m!1829530))

(assert (=> d!461750 m!1829392))

(assert (=> d!461750 m!1829414))

(declare-fun m!1829532 () Bool)

(assert (=> d!461750 m!1829532))

(assert (=> b!1557289 m!1829414))

(assert (=> b!1557289 m!1829530))

(assert (=> b!1557289 m!1829392))

(assert (=> b!1557148 d!461750))

(declare-fun d!461752 () Bool)

(declare-fun list!6502 (Conc!5571) List!16918)

(assert (=> d!461752 (= (list!6501 totalInput!568) (list!6502 (c!252896 totalInput!568)))))

(declare-fun bs!388753 () Bool)

(assert (= bs!388753 d!461752))

(declare-fun m!1829534 () Bool)

(assert (=> bs!388753 m!1829534))

(assert (=> b!1557148 d!461752))

(declare-fun d!461754 () Bool)

(assert (=> d!461754 (= (list!6501 input!1676) (list!6502 (c!252896 input!1676)))))

(declare-fun bs!388754 () Bool)

(assert (= bs!388754 d!461754))

(declare-fun m!1829536 () Bool)

(assert (=> bs!388754 m!1829536))

(assert (=> b!1557148 d!461754))

(declare-fun d!461756 () Bool)

(assert (=> d!461756 (= (inv!22133 (tag!3217 rule!240)) (= (mod (str.len (value!93796 (tag!3217 rule!240))) 2) 0))))

(assert (=> b!1557146 d!461756))

(declare-fun d!461758 () Bool)

(declare-fun res!694924 () Bool)

(declare-fun e!999388 () Bool)

(assert (=> d!461758 (=> (not res!694924) (not e!999388))))

(assert (=> d!461758 (= res!694924 (semiInverseModEq!1116 (toChars!4186 (transformation!2953 rule!240)) (toValue!4327 (transformation!2953 rule!240))))))

(assert (=> d!461758 (= (inv!22139 (transformation!2953 rule!240)) e!999388)))

(declare-fun b!1557292 () Bool)

(assert (=> b!1557292 (= e!999388 (equivClasses!1059 (toChars!4186 (transformation!2953 rule!240)) (toValue!4327 (transformation!2953 rule!240))))))

(assert (= (and d!461758 res!694924) b!1557292))

(assert (=> d!461758 m!1829386))

(assert (=> b!1557292 m!1829516))

(assert (=> b!1557146 d!461758))

(declare-fun d!461760 () Bool)

(declare-fun lt!539362 () Bool)

(assert (=> d!461760 (= lt!539362 (isEmpty!10129 (list!6501 (_1!9543 (_1!9544 lt!539247)))))))

(declare-fun isEmpty!10131 (Conc!5571) Bool)

(assert (=> d!461760 (= lt!539362 (isEmpty!10131 (c!252896 (_1!9543 (_1!9544 lt!539247)))))))

(assert (=> d!461760 (= (isEmpty!10130 (_1!9543 (_1!9544 lt!539247))) lt!539362)))

(declare-fun bs!388755 () Bool)

(assert (= bs!388755 d!461760))

(assert (=> bs!388755 m!1829440))

(assert (=> bs!388755 m!1829440))

(declare-fun m!1829538 () Bool)

(assert (=> bs!388755 m!1829538))

(declare-fun m!1829540 () Bool)

(assert (=> bs!388755 m!1829540))

(assert (=> b!1557167 d!461760))

(declare-fun d!461762 () Bool)

(declare-fun e!999391 () Bool)

(assert (=> d!461762 e!999391))

(declare-fun res!694933 () Bool)

(assert (=> d!461762 (=> (not res!694933) (not e!999391))))

(declare-fun lt!539365 () tuple4!902)

(declare-fun findLongestMatch!264 (Regex!4281 List!16918) tuple2!16358)

(assert (=> d!461762 (= res!694933 (= (tuple2!16359 (list!6501 (_1!9543 (_1!9544 lt!539365))) (list!6501 (_2!9543 (_1!9544 lt!539365)))) (findLongestMatch!264 (regex!2953 rule!240) (list!6501 input!1676))))))

(declare-fun choose!9294 (Regex!4281 BalanceConc!11084 BalanceConc!11084 CacheUp!1070 CacheDown!1076 CacheFurthestNullable!498) tuple4!902)

(assert (=> d!461762 (= lt!539365 (choose!9294 (regex!2953 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(assert (=> d!461762 (validRegex!1714 (regex!2953 rule!240))))

(assert (=> d!461762 (= (findLongestMatchWithZipperSequenceV3Mem!53 (regex!2953 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) lt!539365)))

(declare-fun b!1557303 () Bool)

(declare-fun res!694936 () Bool)

(assert (=> b!1557303 (=> (not res!694936) (not e!999391))))

(assert (=> b!1557303 (= res!694936 (valid!1460 (_4!451 lt!539365)))))

(declare-fun b!1557302 () Bool)

(declare-fun res!694935 () Bool)

(assert (=> b!1557302 (=> (not res!694935) (not e!999391))))

(assert (=> b!1557302 (= res!694935 (valid!1461 (_2!9544 lt!539365)))))

(declare-fun b!1557304 () Bool)

(assert (=> b!1557304 (= e!999391 (= (totalInput!2474 (_4!451 lt!539365)) totalInput!568))))

(declare-fun b!1557301 () Bool)

(declare-fun res!694934 () Bool)

(assert (=> b!1557301 (=> (not res!694934) (not e!999391))))

(assert (=> b!1557301 (= res!694934 (valid!1462 (_3!1358 lt!539365)))))

(assert (= (and d!461762 res!694933) b!1557301))

(assert (= (and b!1557301 res!694934) b!1557302))

(assert (= (and b!1557302 res!694935) b!1557303))

(assert (= (and b!1557303 res!694936) b!1557304))

(assert (=> d!461762 m!1829418))

(assert (=> d!461762 m!1829418))

(declare-fun m!1829542 () Bool)

(assert (=> d!461762 m!1829542))

(declare-fun m!1829544 () Bool)

(assert (=> d!461762 m!1829544))

(declare-fun m!1829546 () Bool)

(assert (=> d!461762 m!1829546))

(assert (=> d!461762 m!1829450))

(declare-fun m!1829548 () Bool)

(assert (=> d!461762 m!1829548))

(declare-fun m!1829550 () Bool)

(assert (=> b!1557303 m!1829550))

(declare-fun m!1829552 () Bool)

(assert (=> b!1557302 m!1829552))

(declare-fun m!1829554 () Bool)

(assert (=> b!1557301 m!1829554))

(assert (=> b!1557167 d!461762))

(declare-fun d!461764 () Bool)

(assert (=> d!461764 (= (get!4854 lt!539259) (v!23704 lt!539259))))

(assert (=> b!1557145 d!461764))

(declare-fun d!461766 () Bool)

(declare-fun c!252931 () Bool)

(assert (=> d!461766 (= c!252931 ((_ is Node!5571) (c!252896 input!1676)))))

(declare-fun e!999396 () Bool)

(assert (=> d!461766 (= (inv!22134 (c!252896 input!1676)) e!999396)))

(declare-fun b!1557311 () Bool)

(declare-fun inv!22140 (Conc!5571) Bool)

(assert (=> b!1557311 (= e!999396 (inv!22140 (c!252896 input!1676)))))

(declare-fun b!1557312 () Bool)

(declare-fun e!999397 () Bool)

(assert (=> b!1557312 (= e!999396 e!999397)))

(declare-fun res!694939 () Bool)

(assert (=> b!1557312 (= res!694939 (not ((_ is Leaf!8257) (c!252896 input!1676))))))

(assert (=> b!1557312 (=> res!694939 e!999397)))

(declare-fun b!1557313 () Bool)

(declare-fun inv!22141 (Conc!5571) Bool)

(assert (=> b!1557313 (= e!999397 (inv!22141 (c!252896 input!1676)))))

(assert (= (and d!461766 c!252931) b!1557311))

(assert (= (and d!461766 (not c!252931)) b!1557312))

(assert (= (and b!1557312 (not res!694939)) b!1557313))

(declare-fun m!1829556 () Bool)

(assert (=> b!1557311 m!1829556))

(declare-fun m!1829558 () Bool)

(assert (=> b!1557313 m!1829558))

(assert (=> b!1557135 d!461766))

(declare-fun d!461768 () Bool)

(declare-fun isBalanced!1646 (Conc!5571) Bool)

(assert (=> d!461768 (= (inv!22135 (totalInput!2474 cacheFurthestNullable!103)) (isBalanced!1646 (c!252896 (totalInput!2474 cacheFurthestNullable!103))))))

(declare-fun bs!388756 () Bool)

(assert (= bs!388756 d!461768))

(declare-fun m!1829560 () Bool)

(assert (=> bs!388756 m!1829560))

(assert (=> b!1557166 d!461768))

(declare-fun d!461770 () Bool)

(assert (=> d!461770 (= (array_inv!1993 (_keys!2109 (v!23705 (underlying!3839 (v!23706 (underlying!3840 (cache!2140 cacheUp!755))))))) (bvsge (size!13655 (_keys!2109 (v!23705 (underlying!3839 (v!23706 (underlying!3840 (cache!2140 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1557156 d!461770))

(declare-fun d!461772 () Bool)

(assert (=> d!461772 (= (array_inv!1995 (_values!2094 (v!23705 (underlying!3839 (v!23706 (underlying!3840 (cache!2140 cacheUp!755))))))) (bvsge (size!13657 (_values!2094 (v!23705 (underlying!3839 (v!23706 (underlying!3840 (cache!2140 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1557156 d!461772))

(declare-fun d!461774 () Bool)

(assert (=> d!461774 (= (inv!22135 totalInput!568) (isBalanced!1646 (c!252896 totalInput!568)))))

(declare-fun bs!388757 () Bool)

(assert (= bs!388757 d!461774))

(declare-fun m!1829562 () Bool)

(assert (=> bs!388757 m!1829562))

(assert (=> start!144440 d!461774))

(declare-fun d!461776 () Bool)

(declare-fun res!694942 () Bool)

(declare-fun e!999400 () Bool)

(assert (=> d!461776 (=> (not res!694942) (not e!999400))))

(assert (=> d!461776 (= res!694942 ((_ is HashMap!1760) (cache!2141 cacheDown!768)))))

(assert (=> d!461776 (= (inv!22138 cacheDown!768) e!999400)))

(declare-fun b!1557316 () Bool)

(declare-fun validCacheMapDown!164 (MutableMap!1760) Bool)

(assert (=> b!1557316 (= e!999400 (validCacheMapDown!164 (cache!2141 cacheDown!768)))))

(assert (= (and d!461776 res!694942) b!1557316))

(declare-fun m!1829564 () Bool)

(assert (=> b!1557316 m!1829564))

(assert (=> start!144440 d!461776))

(declare-fun d!461778 () Bool)

(declare-fun res!694945 () Bool)

(declare-fun e!999403 () Bool)

(assert (=> d!461778 (=> (not res!694945) (not e!999403))))

(assert (=> d!461778 (= res!694945 ((_ is HashMap!1759) (cache!2140 cacheUp!755)))))

(assert (=> d!461778 (= (inv!22136 cacheUp!755) e!999403)))

(declare-fun b!1557319 () Bool)

(declare-fun validCacheMapUp!164 (MutableMap!1759) Bool)

(assert (=> b!1557319 (= e!999403 (validCacheMapUp!164 (cache!2140 cacheUp!755)))))

(assert (= (and d!461778 res!694945) b!1557319))

(declare-fun m!1829566 () Bool)

(assert (=> b!1557319 m!1829566))

(assert (=> start!144440 d!461778))

(declare-fun d!461780 () Bool)

(assert (=> d!461780 (= (inv!22135 input!1676) (isBalanced!1646 (c!252896 input!1676)))))

(declare-fun bs!388758 () Bool)

(assert (= bs!388758 d!461780))

(declare-fun m!1829568 () Bool)

(assert (=> bs!388758 m!1829568))

(assert (=> start!144440 d!461780))

(declare-fun d!461782 () Bool)

(declare-fun res!694948 () Bool)

(declare-fun e!999406 () Bool)

(assert (=> d!461782 (=> (not res!694948) (not e!999406))))

(assert (=> d!461782 (= res!694948 ((_ is HashMap!1758) (cache!2139 cacheFurthestNullable!103)))))

(assert (=> d!461782 (= (inv!22137 cacheFurthestNullable!103) e!999406)))

(declare-fun b!1557322 () Bool)

(declare-fun validCacheMapFurthestNullable!77 (MutableMap!1758 BalanceConc!11084) Bool)

(assert (=> b!1557322 (= e!999406 (validCacheMapFurthestNullable!77 (cache!2139 cacheFurthestNullable!103) (totalInput!2474 cacheFurthestNullable!103)))))

(assert (= (and d!461782 res!694948) b!1557322))

(declare-fun m!1829570 () Bool)

(assert (=> b!1557322 m!1829570))

(assert (=> start!144440 d!461782))

(declare-fun d!461784 () Bool)

(assert (=> d!461784 (= (valid!1462 cacheDown!768) (validCacheMapDown!164 (cache!2141 cacheDown!768)))))

(declare-fun bs!388759 () Bool)

(assert (= bs!388759 d!461784))

(assert (=> bs!388759 m!1829564))

(assert (=> b!1557164 d!461784))

(declare-fun d!461786 () Bool)

(declare-fun c!252932 () Bool)

(assert (=> d!461786 (= c!252932 ((_ is Node!5571) (c!252896 totalInput!568)))))

(declare-fun e!999407 () Bool)

(assert (=> d!461786 (= (inv!22134 (c!252896 totalInput!568)) e!999407)))

(declare-fun b!1557323 () Bool)

(assert (=> b!1557323 (= e!999407 (inv!22140 (c!252896 totalInput!568)))))

(declare-fun b!1557324 () Bool)

(declare-fun e!999408 () Bool)

(assert (=> b!1557324 (= e!999407 e!999408)))

(declare-fun res!694949 () Bool)

(assert (=> b!1557324 (= res!694949 (not ((_ is Leaf!8257) (c!252896 totalInput!568))))))

(assert (=> b!1557324 (=> res!694949 e!999408)))

(declare-fun b!1557325 () Bool)

(assert (=> b!1557325 (= e!999408 (inv!22141 (c!252896 totalInput!568)))))

(assert (= (and d!461786 c!252932) b!1557323))

(assert (= (and d!461786 (not c!252932)) b!1557324))

(assert (= (and b!1557324 (not res!694949)) b!1557325))

(declare-fun m!1829572 () Bool)

(assert (=> b!1557323 m!1829572))

(declare-fun m!1829574 () Bool)

(assert (=> b!1557325 m!1829574))

(assert (=> b!1557154 d!461786))

(declare-fun d!461788 () Bool)

(declare-fun dynLambda!7484 (Int BalanceConc!11084) TokenValue!3043)

(assert (=> d!461788 (= (apply!4114 (transformation!2953 rule!240) lt!539261) (dynLambda!7484 (toValue!4327 (transformation!2953 rule!240)) lt!539261))))

(declare-fun b_lambda!48919 () Bool)

(assert (=> (not b_lambda!48919) (not d!461788)))

(declare-fun t!141411 () Bool)

(declare-fun tb!87337 () Bool)

(assert (=> (and b!1557130 (= (toValue!4327 (transformation!2953 rule!240)) (toValue!4327 (transformation!2953 rule!240))) t!141411) tb!87337))

(declare-fun result!105492 () Bool)

(declare-fun inv!21 (TokenValue!3043) Bool)

(assert (=> tb!87337 (= result!105492 (inv!21 (dynLambda!7484 (toValue!4327 (transformation!2953 rule!240)) lt!539261)))))

(declare-fun m!1829576 () Bool)

(assert (=> tb!87337 m!1829576))

(assert (=> d!461788 t!141411))

(declare-fun b_and!108661 () Bool)

(assert (= b_and!108651 (and (=> t!141411 result!105492) b_and!108661)))

(declare-fun m!1829578 () Bool)

(assert (=> d!461788 m!1829578))

(assert (=> b!1557144 d!461788))

(declare-fun b!1557334 () Bool)

(declare-fun e!999416 () Bool)

(assert (=> b!1557334 (= e!999416 true)))

(declare-fun d!461790 () Bool)

(assert (=> d!461790 e!999416))

(assert (= d!461790 b!1557334))

(declare-fun lambda!65927 () Int)

(declare-fun order!9943 () Int)

(declare-fun dynLambda!7485 (Int Int) Int)

(assert (=> b!1557334 (< (dynLambda!7481 order!9937 (toValue!4327 (transformation!2953 rule!240))) (dynLambda!7485 order!9943 lambda!65927))))

(assert (=> b!1557334 (< (dynLambda!7483 order!9941 (toChars!4186 (transformation!2953 rule!240))) (dynLambda!7485 order!9943 lambda!65927))))

(assert (=> d!461790 (= (dynLambda!7484 (toValue!4327 (transformation!2953 rule!240)) (_1!9543 (_1!9544 lt!539247))) (dynLambda!7484 (toValue!4327 (transformation!2953 rule!240)) lt!539261))))

(declare-fun lt!539368 () Unit!26092)

(declare-fun Forall2of!44 (Int BalanceConc!11084 BalanceConc!11084) Unit!26092)

(assert (=> d!461790 (= lt!539368 (Forall2of!44 lambda!65927 (_1!9543 (_1!9544 lt!539247)) lt!539261))))

(assert (=> d!461790 (= (list!6501 (_1!9543 (_1!9544 lt!539247))) (list!6501 lt!539261))))

(assert (=> d!461790 (= (lemmaEqSameImage!152 (transformation!2953 rule!240) (_1!9543 (_1!9544 lt!539247)) lt!539261) lt!539368)))

(declare-fun b_lambda!48921 () Bool)

(assert (=> (not b_lambda!48921) (not d!461790)))

(declare-fun t!141413 () Bool)

(declare-fun tb!87339 () Bool)

(assert (=> (and b!1557130 (= (toValue!4327 (transformation!2953 rule!240)) (toValue!4327 (transformation!2953 rule!240))) t!141413) tb!87339))

(declare-fun result!105496 () Bool)

(assert (=> tb!87339 (= result!105496 (inv!21 (dynLambda!7484 (toValue!4327 (transformation!2953 rule!240)) (_1!9543 (_1!9544 lt!539247)))))))

(declare-fun m!1829580 () Bool)

(assert (=> tb!87339 m!1829580))

(assert (=> d!461790 t!141413))

(declare-fun b_and!108663 () Bool)

(assert (= b_and!108661 (and (=> t!141413 result!105496) b_and!108663)))

(declare-fun b_lambda!48923 () Bool)

(assert (=> (not b_lambda!48923) (not d!461790)))

(assert (=> d!461790 t!141411))

(declare-fun b_and!108665 () Bool)

(assert (= b_and!108663 (and (=> t!141411 result!105492) b_and!108665)))

(assert (=> d!461790 m!1829440))

(assert (=> d!461790 m!1829364))

(declare-fun m!1829582 () Bool)

(assert (=> d!461790 m!1829582))

(declare-fun m!1829584 () Bool)

(assert (=> d!461790 m!1829584))

(assert (=> d!461790 m!1829578))

(assert (=> b!1557144 d!461790))

(declare-fun d!461792 () Bool)

(assert (=> d!461792 (= (valid!1461 cacheUp!755) (validCacheMapUp!164 (cache!2140 cacheUp!755)))))

(declare-fun bs!388760 () Bool)

(assert (= bs!388760 d!461792))

(assert (=> bs!388760 m!1829566))

(assert (=> b!1557153 d!461792))

(declare-fun d!461794 () Bool)

(assert (=> d!461794 (= (valid!1460 cacheFurthestNullable!103) (validCacheMapFurthestNullable!77 (cache!2139 cacheFurthestNullable!103) (totalInput!2474 cacheFurthestNullable!103)))))

(declare-fun bs!388761 () Bool)

(assert (= bs!388761 d!461794))

(assert (=> bs!388761 m!1829570))

(assert (=> b!1557142 d!461794))

(declare-fun d!461796 () Bool)

(declare-fun isEmpty!10132 (Option!3045) Bool)

(assert (=> d!461796 (= (isDefined!2448 (Some!3044 (tuple2!16373 (Token!5483 lt!539252 rule!240 lt!539262 lt!539245) (_2!9543 (_1!9544 lt!539247))))) (not (isEmpty!10132 (Some!3044 (tuple2!16373 (Token!5483 lt!539252 rule!240 lt!539262 lt!539245) (_2!9543 (_1!9544 lt!539247)))))))))

(declare-fun bs!388762 () Bool)

(assert (= bs!388762 d!461796))

(declare-fun m!1829586 () Bool)

(assert (=> bs!388762 m!1829586))

(assert (=> b!1557133 d!461796))

(declare-fun d!461798 () Bool)

(assert (=> d!461798 (= (list!6501 (_1!9543 (_1!9544 lt!539247))) (list!6502 (c!252896 (_1!9543 (_1!9544 lt!539247)))))))

(declare-fun bs!388763 () Bool)

(assert (= bs!388763 d!461798))

(declare-fun m!1829588 () Bool)

(assert (=> bs!388763 m!1829588))

(assert (=> b!1557133 d!461798))

(declare-fun d!461800 () Bool)

(declare-fun isEmpty!10133 (Option!3044) Bool)

(assert (=> d!461800 (= (isDefined!2447 lt!539259) (not (isEmpty!10133 lt!539259)))))

(declare-fun bs!388764 () Bool)

(assert (= bs!388764 d!461800))

(declare-fun m!1829590 () Bool)

(assert (=> bs!388764 m!1829590))

(assert (=> b!1557133 d!461800))

(declare-fun d!461802 () Bool)

(declare-fun dynLambda!7486 (Int BalanceConc!11084) Bool)

(assert (=> d!461802 (dynLambda!7486 lambda!65921 (_1!9543 (_1!9544 lt!539247)))))

(declare-fun lt!539371 () Unit!26092)

(declare-fun choose!9295 (Int BalanceConc!11084) Unit!26092)

(assert (=> d!461802 (= lt!539371 (choose!9295 lambda!65921 (_1!9543 (_1!9544 lt!539247))))))

(assert (=> d!461802 (Forall!612 lambda!65921)))

(assert (=> d!461802 (= (ForallOf!215 lambda!65921 (_1!9543 (_1!9544 lt!539247))) lt!539371)))

(declare-fun b_lambda!48925 () Bool)

(assert (=> (not b_lambda!48925) (not d!461802)))

(declare-fun bs!388765 () Bool)

(assert (= bs!388765 d!461802))

(declare-fun m!1829592 () Bool)

(assert (=> bs!388765 m!1829592))

(declare-fun m!1829594 () Bool)

(assert (=> bs!388765 m!1829594))

(assert (=> bs!388765 m!1829422))

(assert (=> b!1557133 d!461802))

(declare-fun d!461804 () Bool)

(declare-fun fromListB!764 (List!16918) BalanceConc!11084)

(assert (=> d!461804 (= (seqFromList!1778 lt!539245) (fromListB!764 lt!539245))))

(declare-fun bs!388766 () Bool)

(assert (= bs!388766 d!461804))

(declare-fun m!1829596 () Bool)

(assert (=> bs!388766 m!1829596))

(assert (=> b!1557133 d!461804))

(declare-fun d!461806 () Bool)

(assert (=> d!461806 (dynLambda!7486 lambda!65921 lt!539261)))

(declare-fun lt!539372 () Unit!26092)

(assert (=> d!461806 (= lt!539372 (choose!9295 lambda!65921 lt!539261))))

(assert (=> d!461806 (Forall!612 lambda!65921)))

(assert (=> d!461806 (= (ForallOf!215 lambda!65921 lt!539261) lt!539372)))

(declare-fun b_lambda!48927 () Bool)

(assert (=> (not b_lambda!48927) (not d!461806)))

(declare-fun bs!388767 () Bool)

(assert (= bs!388767 d!461806))

(declare-fun m!1829598 () Bool)

(assert (=> bs!388767 m!1829598))

(declare-fun m!1829600 () Bool)

(assert (=> bs!388767 m!1829600))

(assert (=> bs!388767 m!1829422))

(assert (=> b!1557133 d!461806))

(declare-fun d!461808 () Bool)

(assert (=> d!461808 (= (apply!4114 (transformation!2953 rule!240) (_1!9543 (_1!9544 lt!539247))) (dynLambda!7484 (toValue!4327 (transformation!2953 rule!240)) (_1!9543 (_1!9544 lt!539247))))))

(declare-fun b_lambda!48929 () Bool)

(assert (=> (not b_lambda!48929) (not d!461808)))

(assert (=> d!461808 t!141413))

(declare-fun b_and!108667 () Bool)

(assert (= b_and!108665 (and (=> t!141413 result!105496) b_and!108667)))

(assert (=> d!461808 m!1829582))

(assert (=> b!1557133 d!461808))

(declare-fun d!461810 () Bool)

(declare-fun lt!539375 () Int)

(assert (=> d!461810 (= lt!539375 (size!13653 (list!6501 (_1!9543 (_1!9544 lt!539247)))))))

(declare-fun size!13660 (Conc!5571) Int)

(assert (=> d!461810 (= lt!539375 (size!13660 (c!252896 (_1!9543 (_1!9544 lt!539247)))))))

(assert (=> d!461810 (= (size!13659 (_1!9543 (_1!9544 lt!539247))) lt!539375)))

(declare-fun bs!388768 () Bool)

(assert (= bs!388768 d!461810))

(assert (=> bs!388768 m!1829440))

(assert (=> bs!388768 m!1829440))

(declare-fun m!1829602 () Bool)

(assert (=> bs!388768 m!1829602))

(declare-fun m!1829604 () Bool)

(assert (=> bs!388768 m!1829604))

(assert (=> b!1557133 d!461810))

(declare-fun b!1557353 () Bool)

(declare-fun res!694968 () Bool)

(declare-fun e!999428 () Bool)

(assert (=> b!1557353 (=> (not res!694968) (not e!999428))))

(declare-fun lt!539387 () Option!3044)

(assert (=> b!1557353 (= res!694968 (= (rule!4737 (_1!9538 (get!4854 lt!539387))) rule!240))))

(declare-fun d!461812 () Bool)

(declare-fun e!999429 () Bool)

(assert (=> d!461812 e!999429))

(declare-fun res!694966 () Bool)

(assert (=> d!461812 (=> res!694966 e!999429)))

(assert (=> d!461812 (= res!694966 (isEmpty!10133 lt!539387))))

(declare-fun e!999426 () Option!3044)

(assert (=> d!461812 (= lt!539387 e!999426)))

(declare-fun c!252935 () Bool)

(declare-fun lt!539390 () tuple2!16358)

(assert (=> d!461812 (= c!252935 (isEmpty!10129 (_1!9535 lt!539390)))))

(assert (=> d!461812 (= lt!539390 (findLongestMatch!264 (regex!2953 rule!240) lt!539249))))

(assert (=> d!461812 (ruleValid!688 thiss!16438 rule!240)))

(assert (=> d!461812 (= (maxPrefixOneRule!707 thiss!16438 rule!240 lt!539249) lt!539387)))

(declare-fun b!1557354 () Bool)

(assert (=> b!1557354 (= e!999426 None!3043)))

(declare-fun b!1557355 () Bool)

(declare-fun e!999427 () Bool)

(assert (=> b!1557355 (= e!999427 (matchR!1882 (regex!2953 rule!240) (_1!9535 (findLongestMatchInner!336 (regex!2953 rule!240) Nil!16850 (size!13653 Nil!16850) lt!539249 lt!539249 (size!13653 lt!539249)))))))

(declare-fun b!1557356 () Bool)

(declare-fun res!694967 () Bool)

(assert (=> b!1557356 (=> (not res!694967) (not e!999428))))

(declare-fun charsOf!1649 (Token!5482) BalanceConc!11084)

(assert (=> b!1557356 (= res!694967 (= (++!4417 (list!6501 (charsOf!1649 (_1!9538 (get!4854 lt!539387)))) (_2!9538 (get!4854 lt!539387))) lt!539249))))

(declare-fun b!1557357 () Bool)

(declare-fun res!694970 () Bool)

(assert (=> b!1557357 (=> (not res!694970) (not e!999428))))

(assert (=> b!1557357 (= res!694970 (< (size!13653 (_2!9538 (get!4854 lt!539387))) (size!13653 lt!539249)))))

(declare-fun b!1557358 () Bool)

(assert (=> b!1557358 (= e!999429 e!999428)))

(declare-fun res!694969 () Bool)

(assert (=> b!1557358 (=> (not res!694969) (not e!999428))))

(assert (=> b!1557358 (= res!694969 (matchR!1882 (regex!2953 rule!240) (list!6501 (charsOf!1649 (_1!9538 (get!4854 lt!539387))))))))

(declare-fun b!1557359 () Bool)

(declare-fun res!694971 () Bool)

(assert (=> b!1557359 (=> (not res!694971) (not e!999428))))

(assert (=> b!1557359 (= res!694971 (= (value!93797 (_1!9538 (get!4854 lt!539387))) (apply!4114 (transformation!2953 (rule!4737 (_1!9538 (get!4854 lt!539387)))) (seqFromList!1778 (originalCharacters!3772 (_1!9538 (get!4854 lt!539387)))))))))

(declare-fun b!1557360 () Bool)

(assert (=> b!1557360 (= e!999428 (= (size!13656 (_1!9538 (get!4854 lt!539387))) (size!13653 (originalCharacters!3772 (_1!9538 (get!4854 lt!539387))))))))

(declare-fun b!1557361 () Bool)

(assert (=> b!1557361 (= e!999426 (Some!3043 (tuple2!16363 (Token!5483 (apply!4114 (transformation!2953 rule!240) (seqFromList!1778 (_1!9535 lt!539390))) rule!240 (size!13659 (seqFromList!1778 (_1!9535 lt!539390))) (_1!9535 lt!539390)) (_2!9535 lt!539390))))))

(declare-fun lt!539386 () Unit!26092)

(assert (=> b!1557361 (= lt!539386 (longestMatchIsAcceptedByMatchOrIsEmpty!320 (regex!2953 rule!240) lt!539249))))

(declare-fun res!694972 () Bool)

(assert (=> b!1557361 (= res!694972 (isEmpty!10129 (_1!9535 (findLongestMatchInner!336 (regex!2953 rule!240) Nil!16850 (size!13653 Nil!16850) lt!539249 lt!539249 (size!13653 lt!539249)))))))

(assert (=> b!1557361 (=> res!694972 e!999427)))

(assert (=> b!1557361 e!999427))

(declare-fun lt!539388 () Unit!26092)

(assert (=> b!1557361 (= lt!539388 lt!539386)))

(declare-fun lt!539389 () Unit!26092)

(declare-fun lemmaSemiInverse!368 (TokenValueInjection!5746 BalanceConc!11084) Unit!26092)

(assert (=> b!1557361 (= lt!539389 (lemmaSemiInverse!368 (transformation!2953 rule!240) (seqFromList!1778 (_1!9535 lt!539390))))))

(assert (= (and d!461812 c!252935) b!1557354))

(assert (= (and d!461812 (not c!252935)) b!1557361))

(assert (= (and b!1557361 (not res!694972)) b!1557355))

(assert (= (and d!461812 (not res!694966)) b!1557358))

(assert (= (and b!1557358 res!694969) b!1557356))

(assert (= (and b!1557356 res!694967) b!1557357))

(assert (= (and b!1557357 res!694970) b!1557353))

(assert (= (and b!1557353 res!694968) b!1557359))

(assert (= (and b!1557359 res!694971) b!1557360))

(declare-fun m!1829606 () Bool)

(assert (=> b!1557360 m!1829606))

(declare-fun m!1829608 () Bool)

(assert (=> b!1557360 m!1829608))

(assert (=> b!1557358 m!1829606))

(declare-fun m!1829610 () Bool)

(assert (=> b!1557358 m!1829610))

(assert (=> b!1557358 m!1829610))

(declare-fun m!1829612 () Bool)

(assert (=> b!1557358 m!1829612))

(assert (=> b!1557358 m!1829612))

(declare-fun m!1829614 () Bool)

(assert (=> b!1557358 m!1829614))

(declare-fun m!1829616 () Bool)

(assert (=> d!461812 m!1829616))

(declare-fun m!1829618 () Bool)

(assert (=> d!461812 m!1829618))

(declare-fun m!1829620 () Bool)

(assert (=> d!461812 m!1829620))

(assert (=> d!461812 m!1829420))

(assert (=> b!1557353 m!1829606))

(assert (=> b!1557355 m!1829390))

(assert (=> b!1557355 m!1829392))

(assert (=> b!1557355 m!1829390))

(assert (=> b!1557355 m!1829392))

(assert (=> b!1557355 m!1829394))

(assert (=> b!1557355 m!1829462))

(assert (=> b!1557356 m!1829606))

(assert (=> b!1557356 m!1829610))

(assert (=> b!1557356 m!1829610))

(assert (=> b!1557356 m!1829612))

(assert (=> b!1557356 m!1829612))

(declare-fun m!1829622 () Bool)

(assert (=> b!1557356 m!1829622))

(assert (=> b!1557361 m!1829390))

(assert (=> b!1557361 m!1829392))

(assert (=> b!1557361 m!1829394))

(assert (=> b!1557361 m!1829392))

(declare-fun m!1829624 () Bool)

(assert (=> b!1557361 m!1829624))

(assert (=> b!1557361 m!1829624))

(declare-fun m!1829626 () Bool)

(assert (=> b!1557361 m!1829626))

(assert (=> b!1557361 m!1829390))

(assert (=> b!1557361 m!1829396))

(assert (=> b!1557361 m!1829624))

(declare-fun m!1829628 () Bool)

(assert (=> b!1557361 m!1829628))

(assert (=> b!1557361 m!1829458))

(assert (=> b!1557361 m!1829624))

(declare-fun m!1829630 () Bool)

(assert (=> b!1557361 m!1829630))

(assert (=> b!1557357 m!1829606))

(declare-fun m!1829632 () Bool)

(assert (=> b!1557357 m!1829632))

(assert (=> b!1557357 m!1829392))

(assert (=> b!1557359 m!1829606))

(declare-fun m!1829634 () Bool)

(assert (=> b!1557359 m!1829634))

(assert (=> b!1557359 m!1829634))

(declare-fun m!1829636 () Bool)

(assert (=> b!1557359 m!1829636))

(assert (=> b!1557133 d!461812))

(declare-fun d!461814 () Bool)

(assert (=> d!461814 (= (list!6501 lt!539261) (list!6502 (c!252896 lt!539261)))))

(declare-fun bs!388769 () Bool)

(assert (= bs!388769 d!461814))

(declare-fun m!1829638 () Bool)

(assert (=> bs!388769 m!1829638))

(assert (=> b!1557162 d!461814))

(declare-fun d!461816 () Bool)

(declare-fun c!252936 () Bool)

(assert (=> d!461816 (= c!252936 ((_ is Node!5571) (c!252896 (totalInput!2474 cacheFurthestNullable!103))))))

(declare-fun e!999430 () Bool)

(assert (=> d!461816 (= (inv!22134 (c!252896 (totalInput!2474 cacheFurthestNullable!103))) e!999430)))

(declare-fun b!1557362 () Bool)

(assert (=> b!1557362 (= e!999430 (inv!22140 (c!252896 (totalInput!2474 cacheFurthestNullable!103))))))

(declare-fun b!1557363 () Bool)

(declare-fun e!999431 () Bool)

(assert (=> b!1557363 (= e!999430 e!999431)))

(declare-fun res!694973 () Bool)

(assert (=> b!1557363 (= res!694973 (not ((_ is Leaf!8257) (c!252896 (totalInput!2474 cacheFurthestNullable!103)))))))

(assert (=> b!1557363 (=> res!694973 e!999431)))

(declare-fun b!1557364 () Bool)

(assert (=> b!1557364 (= e!999431 (inv!22141 (c!252896 (totalInput!2474 cacheFurthestNullable!103))))))

(assert (= (and d!461816 c!252936) b!1557362))

(assert (= (and d!461816 (not c!252936)) b!1557363))

(assert (= (and b!1557363 (not res!694973)) b!1557364))

(declare-fun m!1829640 () Bool)

(assert (=> b!1557362 m!1829640))

(declare-fun m!1829642 () Bool)

(assert (=> b!1557364 m!1829642))

(assert (=> b!1557150 d!461816))

(declare-fun d!461818 () Bool)

(declare-fun choose!9296 (Int) Bool)

(assert (=> d!461818 (= (Forall!612 lambda!65921) (choose!9296 lambda!65921))))

(declare-fun bs!388770 () Bool)

(assert (= bs!388770 d!461818))

(declare-fun m!1829644 () Bool)

(assert (=> bs!388770 m!1829644))

(assert (=> b!1557169 d!461818))

(declare-fun setIsEmpty!10952 () Bool)

(declare-fun setRes!10952 () Bool)

(assert (=> setIsEmpty!10952 setRes!10952))

(declare-fun tp_is_empty!7073 () Bool)

(declare-fun e!999440 () Bool)

(declare-fun tp!456938 () Bool)

(declare-fun b!1557373 () Bool)

(declare-fun e!999438 () Bool)

(declare-fun inv!22142 (Context!1598) Bool)

(assert (=> b!1557373 (= e!999440 (and (inv!22142 (_1!9539 (_1!9540 (h!22254 mapDefault!8442)))) e!999438 tp_is_empty!7073 setRes!10952 tp!456938))))

(declare-fun condSetEmpty!10952 () Bool)

(assert (=> b!1557373 (= condSetEmpty!10952 (= (_2!9540 (h!22254 mapDefault!8442)) ((as const (Array Context!1598 Bool)) false)))))

(declare-fun b!1557374 () Bool)

(declare-fun e!999439 () Bool)

(declare-fun tp!456939 () Bool)

(assert (=> b!1557374 (= e!999439 tp!456939)))

(assert (=> b!1557168 (= tp!456916 e!999440)))

(declare-fun tp!456937 () Bool)

(declare-fun setNonEmpty!10952 () Bool)

(declare-fun setElem!10952 () Context!1598)

(assert (=> setNonEmpty!10952 (= setRes!10952 (and tp!456937 (inv!22142 setElem!10952) e!999439))))

(declare-fun setRest!10952 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10952 (= (_2!9540 (h!22254 mapDefault!8442)) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10952 true) setRest!10952))))

(declare-fun b!1557375 () Bool)

(declare-fun tp!456936 () Bool)

(assert (=> b!1557375 (= e!999438 tp!456936)))

(assert (= b!1557373 b!1557375))

(assert (= (and b!1557373 condSetEmpty!10952) setIsEmpty!10952))

(assert (= (and b!1557373 (not condSetEmpty!10952)) setNonEmpty!10952))

(assert (= setNonEmpty!10952 b!1557374))

(assert (= (and b!1557168 ((_ is Cons!16853) mapDefault!8442)) b!1557373))

(declare-fun m!1829646 () Bool)

(assert (=> b!1557373 m!1829646))

(declare-fun m!1829648 () Bool)

(assert (=> setNonEmpty!10952 m!1829648))

(declare-fun setIsEmpty!10955 () Bool)

(declare-fun setRes!10955 () Bool)

(assert (=> setIsEmpty!10955 setRes!10955))

(declare-fun e!999448 () Bool)

(assert (=> b!1557140 (= tp!456910 e!999448)))

(declare-fun b!1557384 () Bool)

(declare-fun e!999449 () Bool)

(declare-fun tp!456950 () Bool)

(assert (=> b!1557384 (= e!999449 tp!456950)))

(declare-fun tp!456953 () Bool)

(declare-fun setElem!10955 () Context!1598)

(declare-fun setNonEmpty!10955 () Bool)

(assert (=> setNonEmpty!10955 (= setRes!10955 (and tp!456953 (inv!22142 setElem!10955) e!999449))))

(declare-fun setRest!10955 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10955 (= (_2!9542 (h!22255 (zeroValue!2073 (v!23707 (underlying!3841 (v!23708 (underlying!3842 (cache!2141 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10955 true) setRest!10955))))

(declare-fun tp!456954 () Bool)

(declare-fun tp!456951 () Bool)

(declare-fun b!1557385 () Bool)

(declare-fun e!999447 () Bool)

(assert (=> b!1557385 (= e!999448 (and tp!456951 (inv!22142 (_2!9541 (_1!9542 (h!22255 (zeroValue!2073 (v!23707 (underlying!3841 (v!23708 (underlying!3842 (cache!2141 cacheDown!768)))))))))) e!999447 tp_is_empty!7073 setRes!10955 tp!456954))))

(declare-fun condSetEmpty!10955 () Bool)

(assert (=> b!1557385 (= condSetEmpty!10955 (= (_2!9542 (h!22255 (zeroValue!2073 (v!23707 (underlying!3841 (v!23708 (underlying!3842 (cache!2141 cacheDown!768)))))))) ((as const (Array Context!1598 Bool)) false)))))

(declare-fun b!1557386 () Bool)

(declare-fun tp!456952 () Bool)

(assert (=> b!1557386 (= e!999447 tp!456952)))

(assert (= b!1557385 b!1557386))

(assert (= (and b!1557385 condSetEmpty!10955) setIsEmpty!10955))

(assert (= (and b!1557385 (not condSetEmpty!10955)) setNonEmpty!10955))

(assert (= setNonEmpty!10955 b!1557384))

(assert (= (and b!1557140 ((_ is Cons!16854) (zeroValue!2073 (v!23707 (underlying!3841 (v!23708 (underlying!3842 (cache!2141 cacheDown!768)))))))) b!1557385))

(declare-fun m!1829650 () Bool)

(assert (=> setNonEmpty!10955 m!1829650))

(declare-fun m!1829652 () Bool)

(assert (=> b!1557385 m!1829652))

(declare-fun setIsEmpty!10956 () Bool)

(declare-fun setRes!10956 () Bool)

(assert (=> setIsEmpty!10956 setRes!10956))

(declare-fun e!999451 () Bool)

(assert (=> b!1557140 (= tp!456914 e!999451)))

(declare-fun b!1557387 () Bool)

(declare-fun e!999452 () Bool)

(declare-fun tp!456955 () Bool)

(assert (=> b!1557387 (= e!999452 tp!456955)))

(declare-fun tp!456958 () Bool)

(declare-fun setNonEmpty!10956 () Bool)

(declare-fun setElem!10956 () Context!1598)

(assert (=> setNonEmpty!10956 (= setRes!10956 (and tp!456958 (inv!22142 setElem!10956) e!999452))))

(declare-fun setRest!10956 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10956 (= (_2!9542 (h!22255 (minValue!2073 (v!23707 (underlying!3841 (v!23708 (underlying!3842 (cache!2141 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10956 true) setRest!10956))))

(declare-fun b!1557388 () Bool)

(declare-fun e!999450 () Bool)

(declare-fun tp!456956 () Bool)

(declare-fun tp!456959 () Bool)

(assert (=> b!1557388 (= e!999451 (and tp!456956 (inv!22142 (_2!9541 (_1!9542 (h!22255 (minValue!2073 (v!23707 (underlying!3841 (v!23708 (underlying!3842 (cache!2141 cacheDown!768)))))))))) e!999450 tp_is_empty!7073 setRes!10956 tp!456959))))

(declare-fun condSetEmpty!10956 () Bool)

(assert (=> b!1557388 (= condSetEmpty!10956 (= (_2!9542 (h!22255 (minValue!2073 (v!23707 (underlying!3841 (v!23708 (underlying!3842 (cache!2141 cacheDown!768)))))))) ((as const (Array Context!1598 Bool)) false)))))

(declare-fun b!1557389 () Bool)

(declare-fun tp!456957 () Bool)

(assert (=> b!1557389 (= e!999450 tp!456957)))

(assert (= b!1557388 b!1557389))

(assert (= (and b!1557388 condSetEmpty!10956) setIsEmpty!10956))

(assert (= (and b!1557388 (not condSetEmpty!10956)) setNonEmpty!10956))

(assert (= setNonEmpty!10956 b!1557387))

(assert (= (and b!1557140 ((_ is Cons!16854) (minValue!2073 (v!23707 (underlying!3841 (v!23708 (underlying!3842 (cache!2141 cacheDown!768)))))))) b!1557388))

(declare-fun m!1829654 () Bool)

(assert (=> setNonEmpty!10956 m!1829654))

(declare-fun m!1829656 () Bool)

(assert (=> b!1557388 m!1829656))

(declare-fun setIsEmpty!10961 () Bool)

(declare-fun setRes!10962 () Bool)

(assert (=> setIsEmpty!10961 setRes!10962))

(declare-fun b!1557400 () Bool)

(declare-fun e!999463 () Bool)

(declare-fun tp!456980 () Bool)

(assert (=> b!1557400 (= e!999463 tp!456980)))

(declare-fun setIsEmpty!10962 () Bool)

(declare-fun setRes!10961 () Bool)

(assert (=> setIsEmpty!10962 setRes!10961))

(declare-fun b!1557401 () Bool)

(declare-fun e!999464 () Bool)

(declare-fun tp!456977 () Bool)

(assert (=> b!1557401 (= e!999464 tp!456977)))

(declare-fun mapIsEmpty!8447 () Bool)

(declare-fun mapRes!8447 () Bool)

(assert (=> mapIsEmpty!8447 mapRes!8447))

(declare-fun b!1557402 () Bool)

(declare-fun e!999461 () Bool)

(declare-fun tp!456974 () Bool)

(assert (=> b!1557402 (= e!999461 (and setRes!10962 tp!456974))))

(declare-fun condSetEmpty!10962 () Bool)

(declare-fun mapValue!8447 () List!16920)

(assert (=> b!1557402 (= condSetEmpty!10962 (= (_1!9536 (_1!9537 (h!22253 mapValue!8447))) ((as const (Array Context!1598 Bool)) false)))))

(declare-fun condMapEmpty!8447 () Bool)

(declare-fun mapDefault!8447 () List!16920)

(assert (=> mapNonEmpty!8444 (= condMapEmpty!8447 (= mapRest!8444 ((as const (Array (_ BitVec 32) List!16920)) mapDefault!8447)))))

(declare-fun e!999462 () Bool)

(assert (=> mapNonEmpty!8444 (= tp!456925 (and e!999462 mapRes!8447))))

(declare-fun b!1557403 () Bool)

(declare-fun tp!456975 () Bool)

(assert (=> b!1557403 (= e!999462 (and setRes!10961 tp!456975))))

(declare-fun condSetEmpty!10961 () Bool)

(assert (=> b!1557403 (= condSetEmpty!10961 (= (_1!9536 (_1!9537 (h!22253 mapDefault!8447))) ((as const (Array Context!1598 Bool)) false)))))

(declare-fun setElem!10962 () Context!1598)

(declare-fun setNonEmpty!10961 () Bool)

(declare-fun tp!456976 () Bool)

(assert (=> setNonEmpty!10961 (= setRes!10962 (and tp!456976 (inv!22142 setElem!10962) e!999464))))

(declare-fun setRest!10961 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10961 (= (_1!9536 (_1!9537 (h!22253 mapValue!8447))) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10962 true) setRest!10961))))

(declare-fun setElem!10961 () Context!1598)

(declare-fun tp!456979 () Bool)

(declare-fun setNonEmpty!10962 () Bool)

(assert (=> setNonEmpty!10962 (= setRes!10961 (and tp!456979 (inv!22142 setElem!10961) e!999463))))

(declare-fun setRest!10962 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10962 (= (_1!9536 (_1!9537 (h!22253 mapDefault!8447))) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10961 true) setRest!10962))))

(declare-fun mapNonEmpty!8447 () Bool)

(declare-fun tp!456978 () Bool)

(assert (=> mapNonEmpty!8447 (= mapRes!8447 (and tp!456978 e!999461))))

(declare-fun mapRest!8447 () (Array (_ BitVec 32) List!16920))

(declare-fun mapKey!8447 () (_ BitVec 32))

(assert (=> mapNonEmpty!8447 (= mapRest!8444 (store mapRest!8447 mapKey!8447 mapValue!8447))))

(assert (= (and mapNonEmpty!8444 condMapEmpty!8447) mapIsEmpty!8447))

(assert (= (and mapNonEmpty!8444 (not condMapEmpty!8447)) mapNonEmpty!8447))

(assert (= (and b!1557402 condSetEmpty!10962) setIsEmpty!10961))

(assert (= (and b!1557402 (not condSetEmpty!10962)) setNonEmpty!10961))

(assert (= setNonEmpty!10961 b!1557401))

(assert (= (and mapNonEmpty!8447 ((_ is Cons!16852) mapValue!8447)) b!1557402))

(assert (= (and b!1557403 condSetEmpty!10961) setIsEmpty!10962))

(assert (= (and b!1557403 (not condSetEmpty!10961)) setNonEmpty!10962))

(assert (= setNonEmpty!10962 b!1557400))

(assert (= (and mapNonEmpty!8444 ((_ is Cons!16852) mapDefault!8447)) b!1557403))

(declare-fun m!1829658 () Bool)

(assert (=> setNonEmpty!10961 m!1829658))

(declare-fun m!1829660 () Bool)

(assert (=> setNonEmpty!10962 m!1829660))

(declare-fun m!1829662 () Bool)

(assert (=> mapNonEmpty!8447 m!1829662))

(declare-fun e!999469 () Bool)

(assert (=> mapNonEmpty!8444 (= tp!456918 e!999469)))

(declare-fun setIsEmpty!10965 () Bool)

(declare-fun setRes!10965 () Bool)

(assert (=> setIsEmpty!10965 setRes!10965))

(declare-fun setElem!10965 () Context!1598)

(declare-fun tp!456989 () Bool)

(declare-fun setNonEmpty!10965 () Bool)

(declare-fun e!999470 () Bool)

(assert (=> setNonEmpty!10965 (= setRes!10965 (and tp!456989 (inv!22142 setElem!10965) e!999470))))

(declare-fun setRest!10965 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10965 (= (_1!9536 (_1!9537 (h!22253 mapValue!8444))) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10965 true) setRest!10965))))

(declare-fun b!1557411 () Bool)

(declare-fun tp!456987 () Bool)

(assert (=> b!1557411 (= e!999470 tp!456987)))

(declare-fun b!1557410 () Bool)

(declare-fun tp!456988 () Bool)

(assert (=> b!1557410 (= e!999469 (and setRes!10965 tp!456988))))

(declare-fun condSetEmpty!10965 () Bool)

(assert (=> b!1557410 (= condSetEmpty!10965 (= (_1!9536 (_1!9537 (h!22253 mapValue!8444))) ((as const (Array Context!1598 Bool)) false)))))

(assert (= (and b!1557410 condSetEmpty!10965) setIsEmpty!10965))

(assert (= (and b!1557410 (not condSetEmpty!10965)) setNonEmpty!10965))

(assert (= setNonEmpty!10965 b!1557411))

(assert (= (and mapNonEmpty!8444 ((_ is Cons!16852) mapValue!8444)) b!1557410))

(declare-fun m!1829664 () Bool)

(assert (=> setNonEmpty!10965 m!1829664))

(declare-fun e!999471 () Bool)

(assert (=> b!1557160 (= tp!456902 e!999471)))

(declare-fun setIsEmpty!10966 () Bool)

(declare-fun setRes!10966 () Bool)

(assert (=> setIsEmpty!10966 setRes!10966))

(declare-fun setNonEmpty!10966 () Bool)

(declare-fun e!999472 () Bool)

(declare-fun setElem!10966 () Context!1598)

(declare-fun tp!456992 () Bool)

(assert (=> setNonEmpty!10966 (= setRes!10966 (and tp!456992 (inv!22142 setElem!10966) e!999472))))

(declare-fun setRest!10966 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10966 (= (_1!9536 (_1!9537 (h!22253 (zeroValue!2071 (v!23702 (underlying!3837 (v!23703 (underlying!3838 (cache!2139 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10966 true) setRest!10966))))

(declare-fun b!1557413 () Bool)

(declare-fun tp!456990 () Bool)

(assert (=> b!1557413 (= e!999472 tp!456990)))

(declare-fun b!1557412 () Bool)

(declare-fun tp!456991 () Bool)

(assert (=> b!1557412 (= e!999471 (and setRes!10966 tp!456991))))

(declare-fun condSetEmpty!10966 () Bool)

(assert (=> b!1557412 (= condSetEmpty!10966 (= (_1!9536 (_1!9537 (h!22253 (zeroValue!2071 (v!23702 (underlying!3837 (v!23703 (underlying!3838 (cache!2139 cacheFurthestNullable!103))))))))) ((as const (Array Context!1598 Bool)) false)))))

(assert (= (and b!1557412 condSetEmpty!10966) setIsEmpty!10966))

(assert (= (and b!1557412 (not condSetEmpty!10966)) setNonEmpty!10966))

(assert (= setNonEmpty!10966 b!1557413))

(assert (= (and b!1557160 ((_ is Cons!16852) (zeroValue!2071 (v!23702 (underlying!3837 (v!23703 (underlying!3838 (cache!2139 cacheFurthestNullable!103)))))))) b!1557412))

(declare-fun m!1829666 () Bool)

(assert (=> setNonEmpty!10966 m!1829666))

(declare-fun e!999473 () Bool)

(assert (=> b!1557160 (= tp!456905 e!999473)))

(declare-fun setIsEmpty!10967 () Bool)

(declare-fun setRes!10967 () Bool)

(assert (=> setIsEmpty!10967 setRes!10967))

(declare-fun setElem!10967 () Context!1598)

(declare-fun e!999474 () Bool)

(declare-fun tp!456995 () Bool)

(declare-fun setNonEmpty!10967 () Bool)

(assert (=> setNonEmpty!10967 (= setRes!10967 (and tp!456995 (inv!22142 setElem!10967) e!999474))))

(declare-fun setRest!10967 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10967 (= (_1!9536 (_1!9537 (h!22253 (minValue!2071 (v!23702 (underlying!3837 (v!23703 (underlying!3838 (cache!2139 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10967 true) setRest!10967))))

(declare-fun b!1557415 () Bool)

(declare-fun tp!456993 () Bool)

(assert (=> b!1557415 (= e!999474 tp!456993)))

(declare-fun b!1557414 () Bool)

(declare-fun tp!456994 () Bool)

(assert (=> b!1557414 (= e!999473 (and setRes!10967 tp!456994))))

(declare-fun condSetEmpty!10967 () Bool)

(assert (=> b!1557414 (= condSetEmpty!10967 (= (_1!9536 (_1!9537 (h!22253 (minValue!2071 (v!23702 (underlying!3837 (v!23703 (underlying!3838 (cache!2139 cacheFurthestNullable!103))))))))) ((as const (Array Context!1598 Bool)) false)))))

(assert (= (and b!1557414 condSetEmpty!10967) setIsEmpty!10967))

(assert (= (and b!1557414 (not condSetEmpty!10967)) setNonEmpty!10967))

(assert (= setNonEmpty!10967 b!1557415))

(assert (= (and b!1557160 ((_ is Cons!16852) (minValue!2071 (v!23702 (underlying!3837 (v!23703 (underlying!3838 (cache!2139 cacheFurthestNullable!103)))))))) b!1557414))

(declare-fun m!1829668 () Bool)

(assert (=> setNonEmpty!10967 m!1829668))

(declare-fun setIsEmpty!10968 () Bool)

(declare-fun setRes!10968 () Bool)

(assert (=> setIsEmpty!10968 setRes!10968))

(declare-fun e!999476 () Bool)

(assert (=> b!1557138 (= tp!456909 e!999476)))

(declare-fun b!1557416 () Bool)

(declare-fun e!999477 () Bool)

(declare-fun tp!456996 () Bool)

(assert (=> b!1557416 (= e!999477 tp!456996)))

(declare-fun setNonEmpty!10968 () Bool)

(declare-fun tp!456999 () Bool)

(declare-fun setElem!10968 () Context!1598)

(assert (=> setNonEmpty!10968 (= setRes!10968 (and tp!456999 (inv!22142 setElem!10968) e!999477))))

(declare-fun setRest!10968 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10968 (= (_2!9542 (h!22255 mapDefault!8444)) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10968 true) setRest!10968))))

(declare-fun tp!457000 () Bool)

(declare-fun tp!456997 () Bool)

(declare-fun b!1557417 () Bool)

(declare-fun e!999475 () Bool)

(assert (=> b!1557417 (= e!999476 (and tp!456997 (inv!22142 (_2!9541 (_1!9542 (h!22255 mapDefault!8444)))) e!999475 tp_is_empty!7073 setRes!10968 tp!457000))))

(declare-fun condSetEmpty!10968 () Bool)

(assert (=> b!1557417 (= condSetEmpty!10968 (= (_2!9542 (h!22255 mapDefault!8444)) ((as const (Array Context!1598 Bool)) false)))))

(declare-fun b!1557418 () Bool)

(declare-fun tp!456998 () Bool)

(assert (=> b!1557418 (= e!999475 tp!456998)))

(assert (= b!1557417 b!1557418))

(assert (= (and b!1557417 condSetEmpty!10968) setIsEmpty!10968))

(assert (= (and b!1557417 (not condSetEmpty!10968)) setNonEmpty!10968))

(assert (= setNonEmpty!10968 b!1557416))

(assert (= (and b!1557138 ((_ is Cons!16854) mapDefault!8444)) b!1557417))

(declare-fun m!1829670 () Bool)

(assert (=> setNonEmpty!10968 m!1829670))

(declare-fun m!1829672 () Bool)

(assert (=> b!1557417 m!1829672))

(declare-fun b!1557432 () Bool)

(declare-fun e!999480 () Bool)

(declare-fun tp!457013 () Bool)

(declare-fun tp!457011 () Bool)

(assert (=> b!1557432 (= e!999480 (and tp!457013 tp!457011))))

(declare-fun b!1557429 () Bool)

(assert (=> b!1557429 (= e!999480 tp_is_empty!7073)))

(assert (=> b!1557146 (= tp!456904 e!999480)))

(declare-fun b!1557430 () Bool)

(declare-fun tp!457015 () Bool)

(declare-fun tp!457014 () Bool)

(assert (=> b!1557430 (= e!999480 (and tp!457015 tp!457014))))

(declare-fun b!1557431 () Bool)

(declare-fun tp!457012 () Bool)

(assert (=> b!1557431 (= e!999480 tp!457012)))

(assert (= (and b!1557146 ((_ is ElementMatch!4281) (regex!2953 rule!240))) b!1557429))

(assert (= (and b!1557146 ((_ is Concat!7325) (regex!2953 rule!240))) b!1557430))

(assert (= (and b!1557146 ((_ is Star!4281) (regex!2953 rule!240))) b!1557431))

(assert (= (and b!1557146 ((_ is Union!4281) (regex!2953 rule!240))) b!1557432))

(declare-fun tp!457023 () Bool)

(declare-fun b!1557441 () Bool)

(declare-fun tp!457024 () Bool)

(declare-fun e!999486 () Bool)

(assert (=> b!1557441 (= e!999486 (and (inv!22134 (left!13690 (c!252896 input!1676))) tp!457024 (inv!22134 (right!14020 (c!252896 input!1676))) tp!457023))))

(declare-fun b!1557443 () Bool)

(declare-fun e!999485 () Bool)

(declare-fun tp!457022 () Bool)

(assert (=> b!1557443 (= e!999485 tp!457022)))

(declare-fun b!1557442 () Bool)

(declare-fun inv!22143 (IArray!11147) Bool)

(assert (=> b!1557442 (= e!999486 (and (inv!22143 (xs!8371 (c!252896 input!1676))) e!999485))))

(assert (=> b!1557135 (= tp!456926 (and (inv!22134 (c!252896 input!1676)) e!999486))))

(assert (= (and b!1557135 ((_ is Node!5571) (c!252896 input!1676))) b!1557441))

(assert (= b!1557442 b!1557443))

(assert (= (and b!1557135 ((_ is Leaf!8257) (c!252896 input!1676))) b!1557442))

(declare-fun m!1829674 () Bool)

(assert (=> b!1557441 m!1829674))

(declare-fun m!1829676 () Bool)

(assert (=> b!1557441 m!1829676))

(declare-fun m!1829678 () Bool)

(assert (=> b!1557442 m!1829678))

(assert (=> b!1557135 m!1829428))

(declare-fun setIsEmpty!10969 () Bool)

(declare-fun setRes!10969 () Bool)

(assert (=> setIsEmpty!10969 setRes!10969))

(declare-fun b!1557444 () Bool)

(declare-fun tp!457027 () Bool)

(declare-fun e!999489 () Bool)

(declare-fun e!999487 () Bool)

(assert (=> b!1557444 (= e!999489 (and (inv!22142 (_1!9539 (_1!9540 (h!22254 (zeroValue!2072 (v!23705 (underlying!3839 (v!23706 (underlying!3840 (cache!2140 cacheUp!755)))))))))) e!999487 tp_is_empty!7073 setRes!10969 tp!457027))))

(declare-fun condSetEmpty!10969 () Bool)

(assert (=> b!1557444 (= condSetEmpty!10969 (= (_2!9540 (h!22254 (zeroValue!2072 (v!23705 (underlying!3839 (v!23706 (underlying!3840 (cache!2140 cacheUp!755)))))))) ((as const (Array Context!1598 Bool)) false)))))

(declare-fun b!1557445 () Bool)

(declare-fun e!999488 () Bool)

(declare-fun tp!457028 () Bool)

(assert (=> b!1557445 (= e!999488 tp!457028)))

(assert (=> b!1557156 (= tp!456906 e!999489)))

(declare-fun tp!457026 () Bool)

(declare-fun setNonEmpty!10969 () Bool)

(declare-fun setElem!10969 () Context!1598)

(assert (=> setNonEmpty!10969 (= setRes!10969 (and tp!457026 (inv!22142 setElem!10969) e!999488))))

(declare-fun setRest!10969 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10969 (= (_2!9540 (h!22254 (zeroValue!2072 (v!23705 (underlying!3839 (v!23706 (underlying!3840 (cache!2140 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10969 true) setRest!10969))))

(declare-fun b!1557446 () Bool)

(declare-fun tp!457025 () Bool)

(assert (=> b!1557446 (= e!999487 tp!457025)))

(assert (= b!1557444 b!1557446))

(assert (= (and b!1557444 condSetEmpty!10969) setIsEmpty!10969))

(assert (= (and b!1557444 (not condSetEmpty!10969)) setNonEmpty!10969))

(assert (= setNonEmpty!10969 b!1557445))

(assert (= (and b!1557156 ((_ is Cons!16853) (zeroValue!2072 (v!23705 (underlying!3839 (v!23706 (underlying!3840 (cache!2140 cacheUp!755)))))))) b!1557444))

(declare-fun m!1829680 () Bool)

(assert (=> b!1557444 m!1829680))

(declare-fun m!1829682 () Bool)

(assert (=> setNonEmpty!10969 m!1829682))

(declare-fun setIsEmpty!10970 () Bool)

(declare-fun setRes!10970 () Bool)

(assert (=> setIsEmpty!10970 setRes!10970))

(declare-fun tp!457031 () Bool)

(declare-fun e!999492 () Bool)

(declare-fun e!999490 () Bool)

(declare-fun b!1557447 () Bool)

(assert (=> b!1557447 (= e!999492 (and (inv!22142 (_1!9539 (_1!9540 (h!22254 (minValue!2072 (v!23705 (underlying!3839 (v!23706 (underlying!3840 (cache!2140 cacheUp!755)))))))))) e!999490 tp_is_empty!7073 setRes!10970 tp!457031))))

(declare-fun condSetEmpty!10970 () Bool)

(assert (=> b!1557447 (= condSetEmpty!10970 (= (_2!9540 (h!22254 (minValue!2072 (v!23705 (underlying!3839 (v!23706 (underlying!3840 (cache!2140 cacheUp!755)))))))) ((as const (Array Context!1598 Bool)) false)))))

(declare-fun b!1557448 () Bool)

(declare-fun e!999491 () Bool)

(declare-fun tp!457032 () Bool)

(assert (=> b!1557448 (= e!999491 tp!457032)))

(assert (=> b!1557156 (= tp!456924 e!999492)))

(declare-fun setNonEmpty!10970 () Bool)

(declare-fun tp!457030 () Bool)

(declare-fun setElem!10970 () Context!1598)

(assert (=> setNonEmpty!10970 (= setRes!10970 (and tp!457030 (inv!22142 setElem!10970) e!999491))))

(declare-fun setRest!10970 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10970 (= (_2!9540 (h!22254 (minValue!2072 (v!23705 (underlying!3839 (v!23706 (underlying!3840 (cache!2140 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10970 true) setRest!10970))))

(declare-fun b!1557449 () Bool)

(declare-fun tp!457029 () Bool)

(assert (=> b!1557449 (= e!999490 tp!457029)))

(assert (= b!1557447 b!1557449))

(assert (= (and b!1557447 condSetEmpty!10970) setIsEmpty!10970))

(assert (= (and b!1557447 (not condSetEmpty!10970)) setNonEmpty!10970))

(assert (= setNonEmpty!10970 b!1557448))

(assert (= (and b!1557156 ((_ is Cons!16853) (minValue!2072 (v!23705 (underlying!3839 (v!23706 (underlying!3840 (cache!2140 cacheUp!755)))))))) b!1557447))

(declare-fun m!1829684 () Bool)

(assert (=> b!1557447 m!1829684))

(declare-fun m!1829686 () Bool)

(assert (=> setNonEmpty!10970 m!1829686))

(declare-fun b!1557450 () Bool)

(declare-fun tp!457034 () Bool)

(declare-fun tp!457035 () Bool)

(declare-fun e!999494 () Bool)

(assert (=> b!1557450 (= e!999494 (and (inv!22134 (left!13690 (c!252896 totalInput!568))) tp!457035 (inv!22134 (right!14020 (c!252896 totalInput!568))) tp!457034))))

(declare-fun b!1557452 () Bool)

(declare-fun e!999493 () Bool)

(declare-fun tp!457033 () Bool)

(assert (=> b!1557452 (= e!999493 tp!457033)))

(declare-fun b!1557451 () Bool)

(assert (=> b!1557451 (= e!999494 (and (inv!22143 (xs!8371 (c!252896 totalInput!568))) e!999493))))

(assert (=> b!1557154 (= tp!456923 (and (inv!22134 (c!252896 totalInput!568)) e!999494))))

(assert (= (and b!1557154 ((_ is Node!5571) (c!252896 totalInput!568))) b!1557450))

(assert (= b!1557451 b!1557452))

(assert (= (and b!1557154 ((_ is Leaf!8257) (c!252896 totalInput!568))) b!1557451))

(declare-fun m!1829688 () Bool)

(assert (=> b!1557450 m!1829688))

(declare-fun m!1829690 () Bool)

(assert (=> b!1557450 m!1829690))

(declare-fun m!1829692 () Bool)

(assert (=> b!1557451 m!1829692))

(assert (=> b!1557154 m!1829370))

(declare-fun b!1557467 () Bool)

(declare-fun e!999512 () Bool)

(declare-fun tp!457060 () Bool)

(assert (=> b!1557467 (= e!999512 tp!457060)))

(declare-fun e!999510 () Bool)

(declare-fun e!999507 () Bool)

(declare-fun setRes!10975 () Bool)

(declare-fun b!1557468 () Bool)

(declare-fun tp!457058 () Bool)

(declare-fun mapValue!8450 () List!16921)

(assert (=> b!1557468 (= e!999510 (and (inv!22142 (_1!9539 (_1!9540 (h!22254 mapValue!8450)))) e!999507 tp_is_empty!7073 setRes!10975 tp!457058))))

(declare-fun condSetEmpty!10975 () Bool)

(assert (=> b!1557468 (= condSetEmpty!10975 (= (_2!9540 (h!22254 mapValue!8450)) ((as const (Array Context!1598 Bool)) false)))))

(declare-fun mapNonEmpty!8450 () Bool)

(declare-fun mapRes!8450 () Bool)

(declare-fun tp!457062 () Bool)

(assert (=> mapNonEmpty!8450 (= mapRes!8450 (and tp!457062 e!999510))))

(declare-fun mapKey!8450 () (_ BitVec 32))

(declare-fun mapRest!8450 () (Array (_ BitVec 32) List!16921))

(assert (=> mapNonEmpty!8450 (= mapRest!8442 (store mapRest!8450 mapKey!8450 mapValue!8450))))

(declare-fun mapDefault!8450 () List!16921)

(declare-fun e!999509 () Bool)

(declare-fun setRes!10976 () Bool)

(declare-fun tp!457054 () Bool)

(declare-fun e!999508 () Bool)

(declare-fun b!1557469 () Bool)

(assert (=> b!1557469 (= e!999508 (and (inv!22142 (_1!9539 (_1!9540 (h!22254 mapDefault!8450)))) e!999509 tp_is_empty!7073 setRes!10976 tp!457054))))

(declare-fun condSetEmpty!10976 () Bool)

(assert (=> b!1557469 (= condSetEmpty!10976 (= (_2!9540 (h!22254 mapDefault!8450)) ((as const (Array Context!1598 Bool)) false)))))

(declare-fun tp!457056 () Bool)

(declare-fun setElem!10976 () Context!1598)

(declare-fun e!999511 () Bool)

(declare-fun setNonEmpty!10976 () Bool)

(assert (=> setNonEmpty!10976 (= setRes!10975 (and tp!457056 (inv!22142 setElem!10976) e!999511))))

(declare-fun setRest!10975 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10976 (= (_2!9540 (h!22254 mapValue!8450)) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10976 true) setRest!10975))))

(declare-fun b!1557470 () Bool)

(declare-fun tp!457055 () Bool)

(assert (=> b!1557470 (= e!999507 tp!457055)))

(declare-fun setIsEmpty!10975 () Bool)

(assert (=> setIsEmpty!10975 setRes!10976))

(declare-fun b!1557471 () Bool)

(declare-fun tp!457057 () Bool)

(assert (=> b!1557471 (= e!999511 tp!457057)))

(declare-fun mapIsEmpty!8450 () Bool)

(assert (=> mapIsEmpty!8450 mapRes!8450))

(declare-fun tp!457059 () Bool)

(declare-fun setNonEmpty!10975 () Bool)

(declare-fun setElem!10975 () Context!1598)

(assert (=> setNonEmpty!10975 (= setRes!10976 (and tp!457059 (inv!22142 setElem!10975) e!999512))))

(declare-fun setRest!10976 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10975 (= (_2!9540 (h!22254 mapDefault!8450)) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10975 true) setRest!10976))))

(declare-fun condMapEmpty!8450 () Bool)

(assert (=> mapNonEmpty!8443 (= condMapEmpty!8450 (= mapRest!8442 ((as const (Array (_ BitVec 32) List!16921)) mapDefault!8450)))))

(assert (=> mapNonEmpty!8443 (= tp!456920 (and e!999508 mapRes!8450))))

(declare-fun b!1557472 () Bool)

(declare-fun tp!457061 () Bool)

(assert (=> b!1557472 (= e!999509 tp!457061)))

(declare-fun setIsEmpty!10976 () Bool)

(assert (=> setIsEmpty!10976 setRes!10975))

(assert (= (and mapNonEmpty!8443 condMapEmpty!8450) mapIsEmpty!8450))

(assert (= (and mapNonEmpty!8443 (not condMapEmpty!8450)) mapNonEmpty!8450))

(assert (= b!1557468 b!1557470))

(assert (= (and b!1557468 condSetEmpty!10975) setIsEmpty!10976))

(assert (= (and b!1557468 (not condSetEmpty!10975)) setNonEmpty!10976))

(assert (= setNonEmpty!10976 b!1557471))

(assert (= (and mapNonEmpty!8450 ((_ is Cons!16853) mapValue!8450)) b!1557468))

(assert (= b!1557469 b!1557472))

(assert (= (and b!1557469 condSetEmpty!10976) setIsEmpty!10975))

(assert (= (and b!1557469 (not condSetEmpty!10976)) setNonEmpty!10975))

(assert (= setNonEmpty!10975 b!1557467))

(assert (= (and mapNonEmpty!8443 ((_ is Cons!16853) mapDefault!8450)) b!1557469))

(declare-fun m!1829694 () Bool)

(assert (=> mapNonEmpty!8450 m!1829694))

(declare-fun m!1829696 () Bool)

(assert (=> b!1557468 m!1829696))

(declare-fun m!1829698 () Bool)

(assert (=> b!1557469 m!1829698))

(declare-fun m!1829700 () Bool)

(assert (=> setNonEmpty!10976 m!1829700))

(declare-fun m!1829702 () Bool)

(assert (=> setNonEmpty!10975 m!1829702))

(declare-fun setIsEmpty!10977 () Bool)

(declare-fun setRes!10977 () Bool)

(assert (=> setIsEmpty!10977 setRes!10977))

(declare-fun e!999515 () Bool)

(declare-fun e!999513 () Bool)

(declare-fun tp!457065 () Bool)

(declare-fun b!1557473 () Bool)

(assert (=> b!1557473 (= e!999515 (and (inv!22142 (_1!9539 (_1!9540 (h!22254 mapValue!8443)))) e!999513 tp_is_empty!7073 setRes!10977 tp!457065))))

(declare-fun condSetEmpty!10977 () Bool)

(assert (=> b!1557473 (= condSetEmpty!10977 (= (_2!9540 (h!22254 mapValue!8443)) ((as const (Array Context!1598 Bool)) false)))))

(declare-fun b!1557474 () Bool)

(declare-fun e!999514 () Bool)

(declare-fun tp!457066 () Bool)

(assert (=> b!1557474 (= e!999514 tp!457066)))

(assert (=> mapNonEmpty!8443 (= tp!456917 e!999515)))

(declare-fun tp!457064 () Bool)

(declare-fun setNonEmpty!10977 () Bool)

(declare-fun setElem!10977 () Context!1598)

(assert (=> setNonEmpty!10977 (= setRes!10977 (and tp!457064 (inv!22142 setElem!10977) e!999514))))

(declare-fun setRest!10977 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10977 (= (_2!9540 (h!22254 mapValue!8443)) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10977 true) setRest!10977))))

(declare-fun b!1557475 () Bool)

(declare-fun tp!457063 () Bool)

(assert (=> b!1557475 (= e!999513 tp!457063)))

(assert (= b!1557473 b!1557475))

(assert (= (and b!1557473 condSetEmpty!10977) setIsEmpty!10977))

(assert (= (and b!1557473 (not condSetEmpty!10977)) setNonEmpty!10977))

(assert (= setNonEmpty!10977 b!1557474))

(assert (= (and mapNonEmpty!8443 ((_ is Cons!16853) mapValue!8443)) b!1557473))

(declare-fun m!1829704 () Bool)

(assert (=> b!1557473 m!1829704))

(declare-fun m!1829706 () Bool)

(assert (=> setNonEmpty!10977 m!1829706))

(declare-fun setIsEmpty!10982 () Bool)

(declare-fun setRes!10982 () Bool)

(assert (=> setIsEmpty!10982 setRes!10982))

(declare-fun e!999529 () Bool)

(declare-fun setRes!10983 () Bool)

(declare-fun setElem!10983 () Context!1598)

(declare-fun setNonEmpty!10982 () Bool)

(declare-fun tp!457090 () Bool)

(assert (=> setNonEmpty!10982 (= setRes!10983 (and tp!457090 (inv!22142 setElem!10983) e!999529))))

(declare-fun mapDefault!8453 () List!16922)

(declare-fun setRest!10982 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10982 (= (_2!9542 (h!22255 mapDefault!8453)) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10983 true) setRest!10982))))

(declare-fun condMapEmpty!8453 () Bool)

(assert (=> mapNonEmpty!8442 (= condMapEmpty!8453 (= mapRest!8443 ((as const (Array (_ BitVec 32) List!16922)) mapDefault!8453)))))

(declare-fun e!999531 () Bool)

(declare-fun mapRes!8453 () Bool)

(assert (=> mapNonEmpty!8442 (= tp!456927 (and e!999531 mapRes!8453))))

(declare-fun setIsEmpty!10983 () Bool)

(assert (=> setIsEmpty!10983 setRes!10983))

(declare-fun b!1557490 () Bool)

(declare-fun tp!457095 () Bool)

(assert (=> b!1557490 (= e!999529 tp!457095)))

(declare-fun b!1557491 () Bool)

(declare-fun e!999528 () Bool)

(declare-fun tp!457096 () Bool)

(assert (=> b!1557491 (= e!999528 tp!457096)))

(declare-fun mapValue!8453 () List!16922)

(declare-fun b!1557492 () Bool)

(declare-fun tp!457099 () Bool)

(declare-fun e!999530 () Bool)

(declare-fun tp!457094 () Bool)

(declare-fun e!999532 () Bool)

(assert (=> b!1557492 (= e!999532 (and tp!457099 (inv!22142 (_2!9541 (_1!9542 (h!22255 mapValue!8453)))) e!999530 tp_is_empty!7073 setRes!10982 tp!457094))))

(declare-fun condSetEmpty!10982 () Bool)

(assert (=> b!1557492 (= condSetEmpty!10982 (= (_2!9542 (h!22255 mapValue!8453)) ((as const (Array Context!1598 Bool)) false)))))

(declare-fun b!1557493 () Bool)

(declare-fun e!999533 () Bool)

(declare-fun tp!457089 () Bool)

(assert (=> b!1557493 (= e!999533 tp!457089)))

(declare-fun mapIsEmpty!8453 () Bool)

(assert (=> mapIsEmpty!8453 mapRes!8453))

(declare-fun setNonEmpty!10983 () Bool)

(declare-fun tp!457098 () Bool)

(declare-fun setElem!10982 () Context!1598)

(assert (=> setNonEmpty!10983 (= setRes!10982 (and tp!457098 (inv!22142 setElem!10982) e!999528))))

(declare-fun setRest!10983 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10983 (= (_2!9542 (h!22255 mapValue!8453)) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10982 true) setRest!10983))))

(declare-fun b!1557494 () Bool)

(declare-fun tp!457093 () Bool)

(assert (=> b!1557494 (= e!999530 tp!457093)))

(declare-fun mapNonEmpty!8453 () Bool)

(declare-fun tp!457097 () Bool)

(assert (=> mapNonEmpty!8453 (= mapRes!8453 (and tp!457097 e!999532))))

(declare-fun mapRest!8453 () (Array (_ BitVec 32) List!16922))

(declare-fun mapKey!8453 () (_ BitVec 32))

(assert (=> mapNonEmpty!8453 (= mapRest!8443 (store mapRest!8453 mapKey!8453 mapValue!8453))))

(declare-fun b!1557495 () Bool)

(declare-fun tp!457092 () Bool)

(declare-fun tp!457091 () Bool)

(assert (=> b!1557495 (= e!999531 (and tp!457092 (inv!22142 (_2!9541 (_1!9542 (h!22255 mapDefault!8453)))) e!999533 tp_is_empty!7073 setRes!10983 tp!457091))))

(declare-fun condSetEmpty!10983 () Bool)

(assert (=> b!1557495 (= condSetEmpty!10983 (= (_2!9542 (h!22255 mapDefault!8453)) ((as const (Array Context!1598 Bool)) false)))))

(assert (= (and mapNonEmpty!8442 condMapEmpty!8453) mapIsEmpty!8453))

(assert (= (and mapNonEmpty!8442 (not condMapEmpty!8453)) mapNonEmpty!8453))

(assert (= b!1557492 b!1557494))

(assert (= (and b!1557492 condSetEmpty!10982) setIsEmpty!10982))

(assert (= (and b!1557492 (not condSetEmpty!10982)) setNonEmpty!10983))

(assert (= setNonEmpty!10983 b!1557491))

(assert (= (and mapNonEmpty!8453 ((_ is Cons!16854) mapValue!8453)) b!1557492))

(assert (= b!1557495 b!1557493))

(assert (= (and b!1557495 condSetEmpty!10983) setIsEmpty!10983))

(assert (= (and b!1557495 (not condSetEmpty!10983)) setNonEmpty!10982))

(assert (= setNonEmpty!10982 b!1557490))

(assert (= (and mapNonEmpty!8442 ((_ is Cons!16854) mapDefault!8453)) b!1557495))

(declare-fun m!1829708 () Bool)

(assert (=> b!1557492 m!1829708))

(declare-fun m!1829710 () Bool)

(assert (=> setNonEmpty!10982 m!1829710))

(declare-fun m!1829712 () Bool)

(assert (=> setNonEmpty!10983 m!1829712))

(declare-fun m!1829714 () Bool)

(assert (=> b!1557495 m!1829714))

(declare-fun m!1829716 () Bool)

(assert (=> mapNonEmpty!8453 m!1829716))

(declare-fun setIsEmpty!10984 () Bool)

(declare-fun setRes!10984 () Bool)

(assert (=> setIsEmpty!10984 setRes!10984))

(declare-fun e!999535 () Bool)

(assert (=> mapNonEmpty!8442 (= tp!456907 e!999535)))

(declare-fun b!1557496 () Bool)

(declare-fun e!999536 () Bool)

(declare-fun tp!457100 () Bool)

(assert (=> b!1557496 (= e!999536 tp!457100)))

(declare-fun tp!457103 () Bool)

(declare-fun setElem!10984 () Context!1598)

(declare-fun setNonEmpty!10984 () Bool)

(assert (=> setNonEmpty!10984 (= setRes!10984 (and tp!457103 (inv!22142 setElem!10984) e!999536))))

(declare-fun setRest!10984 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10984 (= (_2!9542 (h!22255 mapValue!8442)) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10984 true) setRest!10984))))

(declare-fun e!999534 () Bool)

(declare-fun b!1557497 () Bool)

(declare-fun tp!457101 () Bool)

(declare-fun tp!457104 () Bool)

(assert (=> b!1557497 (= e!999535 (and tp!457101 (inv!22142 (_2!9541 (_1!9542 (h!22255 mapValue!8442)))) e!999534 tp_is_empty!7073 setRes!10984 tp!457104))))

(declare-fun condSetEmpty!10984 () Bool)

(assert (=> b!1557497 (= condSetEmpty!10984 (= (_2!9542 (h!22255 mapValue!8442)) ((as const (Array Context!1598 Bool)) false)))))

(declare-fun b!1557498 () Bool)

(declare-fun tp!457102 () Bool)

(assert (=> b!1557498 (= e!999534 tp!457102)))

(assert (= b!1557497 b!1557498))

(assert (= (and b!1557497 condSetEmpty!10984) setIsEmpty!10984))

(assert (= (and b!1557497 (not condSetEmpty!10984)) setNonEmpty!10984))

(assert (= setNonEmpty!10984 b!1557496))

(assert (= (and mapNonEmpty!8442 ((_ is Cons!16854) mapValue!8442)) b!1557497))

(declare-fun m!1829718 () Bool)

(assert (=> setNonEmpty!10984 m!1829718))

(declare-fun m!1829720 () Bool)

(assert (=> b!1557497 m!1829720))

(declare-fun e!999537 () Bool)

(assert (=> b!1557152 (= tp!456913 e!999537)))

(declare-fun setIsEmpty!10985 () Bool)

(declare-fun setRes!10985 () Bool)

(assert (=> setIsEmpty!10985 setRes!10985))

(declare-fun tp!457107 () Bool)

(declare-fun setNonEmpty!10985 () Bool)

(declare-fun e!999538 () Bool)

(declare-fun setElem!10985 () Context!1598)

(assert (=> setNonEmpty!10985 (= setRes!10985 (and tp!457107 (inv!22142 setElem!10985) e!999538))))

(declare-fun setRest!10985 () (InoxSet Context!1598))

(assert (=> setNonEmpty!10985 (= (_1!9536 (_1!9537 (h!22253 mapDefault!8443))) ((_ map or) (store ((as const (Array Context!1598 Bool)) false) setElem!10985 true) setRest!10985))))

(declare-fun b!1557500 () Bool)

(declare-fun tp!457105 () Bool)

(assert (=> b!1557500 (= e!999538 tp!457105)))

(declare-fun b!1557499 () Bool)

(declare-fun tp!457106 () Bool)

(assert (=> b!1557499 (= e!999537 (and setRes!10985 tp!457106))))

(declare-fun condSetEmpty!10985 () Bool)

(assert (=> b!1557499 (= condSetEmpty!10985 (= (_1!9536 (_1!9537 (h!22253 mapDefault!8443))) ((as const (Array Context!1598 Bool)) false)))))

(assert (= (and b!1557499 condSetEmpty!10985) setIsEmpty!10985))

(assert (= (and b!1557499 (not condSetEmpty!10985)) setNonEmpty!10985))

(assert (= setNonEmpty!10985 b!1557500))

(assert (= (and b!1557152 ((_ is Cons!16852) mapDefault!8443)) b!1557499))

(declare-fun m!1829722 () Bool)

(assert (=> setNonEmpty!10985 m!1829722))

(declare-fun e!999540 () Bool)

(declare-fun b!1557501 () Bool)

(declare-fun tp!457110 () Bool)

(declare-fun tp!457109 () Bool)

(assert (=> b!1557501 (= e!999540 (and (inv!22134 (left!13690 (c!252896 (totalInput!2474 cacheFurthestNullable!103)))) tp!457110 (inv!22134 (right!14020 (c!252896 (totalInput!2474 cacheFurthestNullable!103)))) tp!457109))))

(declare-fun b!1557503 () Bool)

(declare-fun e!999539 () Bool)

(declare-fun tp!457108 () Bool)

(assert (=> b!1557503 (= e!999539 tp!457108)))

(declare-fun b!1557502 () Bool)

(assert (=> b!1557502 (= e!999540 (and (inv!22143 (xs!8371 (c!252896 (totalInput!2474 cacheFurthestNullable!103)))) e!999539))))

(assert (=> b!1557150 (= tp!456908 (and (inv!22134 (c!252896 (totalInput!2474 cacheFurthestNullable!103))) e!999540))))

(assert (= (and b!1557150 ((_ is Node!5571) (c!252896 (totalInput!2474 cacheFurthestNullable!103)))) b!1557501))

(assert (= b!1557502 b!1557503))

(assert (= (and b!1557150 ((_ is Leaf!8257) (c!252896 (totalInput!2474 cacheFurthestNullable!103)))) b!1557502))

(declare-fun m!1829724 () Bool)

(assert (=> b!1557501 m!1829724))

(declare-fun m!1829726 () Bool)

(assert (=> b!1557501 m!1829726))

(declare-fun m!1829728 () Bool)

(assert (=> b!1557502 m!1829728))

(assert (=> b!1557150 m!1829368))

(declare-fun b_lambda!48931 () Bool)

(assert (= b_lambda!48921 (or (and b!1557130 b_free!41453) b_lambda!48931)))

(declare-fun b_lambda!48933 () Bool)

(assert (= b_lambda!48929 (or (and b!1557130 b_free!41453) b_lambda!48933)))

(declare-fun b_lambda!48935 () Bool)

(assert (= b_lambda!48919 (or (and b!1557130 b_free!41453) b_lambda!48935)))

(declare-fun b_lambda!48937 () Bool)

(assert (= b_lambda!48923 (or (and b!1557130 b_free!41453) b_lambda!48937)))

(declare-fun b_lambda!48939 () Bool)

(assert (= b_lambda!48927 (or b!1557169 b_lambda!48939)))

(declare-fun bs!388771 () Bool)

(declare-fun d!461820 () Bool)

(assert (= bs!388771 (and d!461820 b!1557169)))

(declare-fun dynLambda!7487 (Int TokenValue!3043) BalanceConc!11084)

(assert (=> bs!388771 (= (dynLambda!7486 lambda!65921 lt!539261) (= (list!6501 (dynLambda!7487 (toChars!4186 (transformation!2953 rule!240)) (dynLambda!7484 (toValue!4327 (transformation!2953 rule!240)) lt!539261))) (list!6501 lt!539261)))))

(declare-fun b_lambda!48943 () Bool)

(assert (=> (not b_lambda!48943) (not bs!388771)))

(declare-fun t!141415 () Bool)

(declare-fun tb!87341 () Bool)

(assert (=> (and b!1557130 (= (toChars!4186 (transformation!2953 rule!240)) (toChars!4186 (transformation!2953 rule!240))) t!141415) tb!87341))

(declare-fun e!999543 () Bool)

(declare-fun b!1557508 () Bool)

(declare-fun tp!457113 () Bool)

(assert (=> b!1557508 (= e!999543 (and (inv!22134 (c!252896 (dynLambda!7487 (toChars!4186 (transformation!2953 rule!240)) (dynLambda!7484 (toValue!4327 (transformation!2953 rule!240)) lt!539261)))) tp!457113))))

(declare-fun result!105514 () Bool)

(assert (=> tb!87341 (= result!105514 (and (inv!22135 (dynLambda!7487 (toChars!4186 (transformation!2953 rule!240)) (dynLambda!7484 (toValue!4327 (transformation!2953 rule!240)) lt!539261))) e!999543))))

(assert (= tb!87341 b!1557508))

(declare-fun m!1829730 () Bool)

(assert (=> b!1557508 m!1829730))

(declare-fun m!1829732 () Bool)

(assert (=> tb!87341 m!1829732))

(assert (=> bs!388771 t!141415))

(declare-fun b_and!108669 () Bool)

(assert (= b_and!108653 (and (=> t!141415 result!105514) b_and!108669)))

(declare-fun b_lambda!48945 () Bool)

(assert (=> (not b_lambda!48945) (not bs!388771)))

(assert (=> bs!388771 t!141411))

(declare-fun b_and!108671 () Bool)

(assert (= b_and!108667 (and (=> t!141411 result!105492) b_and!108671)))

(assert (=> bs!388771 m!1829364))

(assert (=> bs!388771 m!1829578))

(declare-fun m!1829734 () Bool)

(assert (=> bs!388771 m!1829734))

(assert (=> bs!388771 m!1829578))

(assert (=> bs!388771 m!1829734))

(declare-fun m!1829736 () Bool)

(assert (=> bs!388771 m!1829736))

(assert (=> d!461806 d!461820))

(declare-fun b_lambda!48941 () Bool)

(assert (= b_lambda!48925 (or b!1557169 b_lambda!48941)))

(declare-fun bs!388772 () Bool)

(declare-fun d!461822 () Bool)

(assert (= bs!388772 (and d!461822 b!1557169)))

(assert (=> bs!388772 (= (dynLambda!7486 lambda!65921 (_1!9543 (_1!9544 lt!539247))) (= (list!6501 (dynLambda!7487 (toChars!4186 (transformation!2953 rule!240)) (dynLambda!7484 (toValue!4327 (transformation!2953 rule!240)) (_1!9543 (_1!9544 lt!539247))))) (list!6501 (_1!9543 (_1!9544 lt!539247)))))))

(declare-fun b_lambda!48947 () Bool)

(assert (=> (not b_lambda!48947) (not bs!388772)))

(declare-fun t!141417 () Bool)

(declare-fun tb!87343 () Bool)

(assert (=> (and b!1557130 (= (toChars!4186 (transformation!2953 rule!240)) (toChars!4186 (transformation!2953 rule!240))) t!141417) tb!87343))

(declare-fun tp!457114 () Bool)

(declare-fun e!999544 () Bool)

(declare-fun b!1557509 () Bool)

(assert (=> b!1557509 (= e!999544 (and (inv!22134 (c!252896 (dynLambda!7487 (toChars!4186 (transformation!2953 rule!240)) (dynLambda!7484 (toValue!4327 (transformation!2953 rule!240)) (_1!9543 (_1!9544 lt!539247)))))) tp!457114))))

(declare-fun result!105518 () Bool)

(assert (=> tb!87343 (= result!105518 (and (inv!22135 (dynLambda!7487 (toChars!4186 (transformation!2953 rule!240)) (dynLambda!7484 (toValue!4327 (transformation!2953 rule!240)) (_1!9543 (_1!9544 lt!539247))))) e!999544))))

(assert (= tb!87343 b!1557509))

(declare-fun m!1829738 () Bool)

(assert (=> b!1557509 m!1829738))

(declare-fun m!1829740 () Bool)

(assert (=> tb!87343 m!1829740))

(assert (=> bs!388772 t!141417))

(declare-fun b_and!108673 () Bool)

(assert (= b_and!108669 (and (=> t!141417 result!105518) b_and!108673)))

(declare-fun b_lambda!48949 () Bool)

(assert (=> (not b_lambda!48949) (not bs!388772)))

(assert (=> bs!388772 t!141413))

(declare-fun b_and!108675 () Bool)

(assert (= b_and!108671 (and (=> t!141413 result!105496) b_and!108675)))

(assert (=> bs!388772 m!1829440))

(assert (=> bs!388772 m!1829582))

(declare-fun m!1829742 () Bool)

(assert (=> bs!388772 m!1829742))

(assert (=> bs!388772 m!1829582))

(assert (=> bs!388772 m!1829742))

(declare-fun m!1829744 () Bool)

(assert (=> bs!388772 m!1829744))

(assert (=> d!461802 d!461822))

(check-sat (not b!1557273) (not b!1557403) (not b!1557322) (not b!1557467) (not d!461790) (not b!1557362) (not d!461754) (not b!1557303) (not d!461798) (not b!1557384) (not d!461748) (not b!1557443) (not b!1557244) (not b!1557364) (not b!1557279) (not b_next!42163) (not b_next!42153) (not setNonEmpty!10966) (not b!1557323) (not setNonEmpty!10983) (not b!1557289) (not b!1557491) tp_is_empty!7073 b_and!108655 (not d!461738) b_and!108647 (not b!1557509) (not d!461752) (not d!461810) (not d!461812) (not d!461804) (not b!1557497) (not b!1557150) (not b!1557373) (not b!1557313) (not b!1557319) (not b!1557472) (not setNonEmpty!10965) (not b!1557356) (not bm!102102) (not b!1557417) (not b_lambda!48949) (not b!1557401) (not b!1557190) (not mapNonEmpty!8450) (not b_lambda!48931) (not d!461814) (not b!1557239) (not setNonEmpty!10977) (not b!1557469) (not b_next!42151) (not bm!102104) b_and!108675 (not b!1557498) (not bm!102109) (not b!1557416) (not b!1557361) (not b!1557237) (not setNonEmpty!10985) (not b!1557475) (not d!461768) (not b!1557374) (not tb!87341) (not d!461792) (not b!1557154) (not setNonEmpty!10968) (not b!1557415) (not b!1557431) (not b!1557353) (not b!1557492) (not setNonEmpty!10975) (not b!1557410) (not b!1557402) (not b!1557358) (not b!1557229) (not b!1557385) (not bm!102108) (not d!461774) (not d!461780) (not b_lambda!48937) (not d!461818) (not mapNonEmpty!8447) (not d!461784) (not b_lambda!48933) (not b!1557302) (not b!1557412) (not b!1557499) (not b!1557490) (not b!1557503) (not d!461734) (not setNonEmpty!10952) (not b!1557413) (not bs!388772) (not b!1557451) (not b!1557135) (not d!461750) (not b!1557274) (not b!1557325) (not setNonEmpty!10956) (not b!1557444) (not bm!102103) (not b!1557357) (not b!1557411) (not b!1557388) (not b!1557414) (not b!1557282) (not bm!102107) (not b_next!42161) (not setNonEmpty!10982) (not d!461806) (not b!1557468) (not setNonEmpty!10976) (not bm!102106) (not b!1557447) (not b!1557474) (not tb!87337) (not b!1557292) (not b!1557311) (not b_lambda!48941) b_and!108659 (not bm!102112) (not b!1557375) (not b!1557386) (not b!1557430) (not setNonEmpty!10955) (not b!1557494) (not b!1557449) (not b!1557448) (not b_next!42165) (not b!1557432) (not b_next!42157) (not b!1557197) (not d!461760) (not setNonEmpty!10962) (not d!461802) (not setNonEmpty!10967) (not b!1557387) (not d!461800) (not d!461758) (not b!1557452) (not b!1557183) (not b!1557442) (not b!1557496) (not b!1557446) b_and!108649 (not b!1557359) (not setNonEmpty!10961) (not b!1557471) (not bm!102105) (not tb!87339) (not b!1557360) (not b!1557501) (not b!1557400) (not d!461740) (not b_next!42155) (not bs!388771) (not d!461762) (not tb!87343) (not b!1557495) b_and!108645 (not b!1557355) (not d!461794) (not b_lambda!48943) (not b!1557418) (not b_lambda!48935) (not b_lambda!48947) (not b!1557235) (not d!461796) (not b!1557445) (not d!461724) b_and!108657 (not setNonEmpty!10984) (not setNonEmpty!10969) (not b!1557242) (not b!1557500) (not mapNonEmpty!8453) (not b_lambda!48945) (not b!1557389) (not b!1557502) (not b!1557441) b_and!108673 (not b!1557470) (not b_next!42159) (not b_lambda!48939) (not b!1557316) (not b!1557285) (not d!461736) (not b!1557450) (not b!1557280) (not b!1557301) (not b!1557508) (not b!1557493) (not setNonEmpty!10970) (not b!1557473))
(check-sat (not b_next!42151) b_and!108675 (not b_next!42161) b_and!108659 b_and!108649 b_and!108657 (not b_next!42163) (not b_next!42153) b_and!108655 b_and!108647 (not b_next!42165) (not b_next!42157) (not b_next!42155) b_and!108645 b_and!108673 (not b_next!42159))
