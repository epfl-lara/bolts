; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397578 () Bool)

(assert start!397578)

(declare-fun b!4169934 () Bool)

(declare-fun b_free!120575 () Bool)

(declare-fun b_next!121279 () Bool)

(assert (=> b!4169934 (= b_free!120575 (not b_next!121279))))

(declare-fun tp!1273841 () Bool)

(declare-fun b_and!325517 () Bool)

(assert (=> b!4169934 (= tp!1273841 b_and!325517)))

(declare-fun b_free!120577 () Bool)

(declare-fun b_next!121281 () Bool)

(assert (=> b!4169934 (= b_free!120577 (not b_next!121281))))

(declare-fun tp!1273832 () Bool)

(declare-fun b_and!325519 () Bool)

(assert (=> b!4169934 (= tp!1273832 b_and!325519)))

(declare-fun b!4169925 () Bool)

(declare-fun b_free!120579 () Bool)

(declare-fun b_next!121283 () Bool)

(assert (=> b!4169925 (= b_free!120579 (not b_next!121283))))

(declare-fun tp!1273839 () Bool)

(declare-fun b_and!325521 () Bool)

(assert (=> b!4169925 (= tp!1273839 b_and!325521)))

(declare-fun b_free!120581 () Bool)

(declare-fun b_next!121285 () Bool)

(assert (=> b!4169925 (= b_free!120581 (not b_next!121285))))

(declare-fun tp!1273831 () Bool)

(declare-fun b_and!325523 () Bool)

(assert (=> b!4169925 (= tp!1273831 b_and!325523)))

(declare-fun b!4169938 () Bool)

(declare-fun b_free!120583 () Bool)

(declare-fun b_next!121287 () Bool)

(assert (=> b!4169938 (= b_free!120583 (not b_next!121287))))

(declare-fun tp!1273836 () Bool)

(declare-fun b_and!325525 () Bool)

(assert (=> b!4169938 (= tp!1273836 b_and!325525)))

(declare-fun b_free!120585 () Bool)

(declare-fun b_next!121289 () Bool)

(assert (=> b!4169938 (= b_free!120585 (not b_next!121289))))

(declare-fun tp!1273835 () Bool)

(declare-fun b_and!325527 () Bool)

(assert (=> b!4169938 (= tp!1273835 b_and!325527)))

(declare-fun b!4169919 () Bool)

(declare-fun res!1708544 () Bool)

(declare-fun e!2588712 () Bool)

(assert (=> b!4169919 (=> (not res!1708544) (not e!2588712))))

(declare-datatypes ((List!45797 0))(
  ( (Nil!45673) (Cons!45673 (h!51093 (_ BitVec 16)) (t!344308 List!45797)) )
))
(declare-datatypes ((TokenValue!7798 0))(
  ( (FloatLiteralValue!15596 (text!55031 List!45797)) (TokenValueExt!7797 (__x!27817 Int)) (Broken!38990 (value!236201 List!45797)) (Object!7921) (End!7798) (Def!7798) (Underscore!7798) (Match!7798) (Else!7798) (Error!7798) (Case!7798) (If!7798) (Extends!7798) (Abstract!7798) (Class!7798) (Val!7798) (DelimiterValue!15596 (del!7858 List!45797)) (KeywordValue!7804 (value!236202 List!45797)) (CommentValue!15596 (value!236203 List!45797)) (WhitespaceValue!15596 (value!236204 List!45797)) (IndentationValue!7798 (value!236205 List!45797)) (String!52855) (Int32!7798) (Broken!38991 (value!236206 List!45797)) (Boolean!7799) (Unit!64742) (OperatorValue!7801 (op!7858 List!45797)) (IdentifierValue!15596 (value!236207 List!45797)) (IdentifierValue!15597 (value!236208 List!45797)) (WhitespaceValue!15597 (value!236209 List!45797)) (True!15596) (False!15596) (Broken!38992 (value!236210 List!45797)) (Broken!38993 (value!236211 List!45797)) (True!15597) (RightBrace!7798) (RightBracket!7798) (Colon!7798) (Null!7798) (Comma!7798) (LeftBracket!7798) (False!15597) (LeftBrace!7798) (ImaginaryLiteralValue!7798 (text!55032 List!45797)) (StringLiteralValue!23394 (value!236212 List!45797)) (EOFValue!7798 (value!236213 List!45797)) (IdentValue!7798 (value!236214 List!45797)) (DelimiterValue!15597 (value!236215 List!45797)) (DedentValue!7798 (value!236216 List!45797)) (NewLineValue!7798 (value!236217 List!45797)) (IntegerValue!23394 (value!236218 (_ BitVec 32)) (text!55033 List!45797)) (IntegerValue!23395 (value!236219 Int) (text!55034 List!45797)) (Times!7798) (Or!7798) (Equal!7798) (Minus!7798) (Broken!38994 (value!236220 List!45797)) (And!7798) (Div!7798) (LessEqual!7798) (Mod!7798) (Concat!20271) (Not!7798) (Plus!7798) (SpaceValue!7798 (value!236221 List!45797)) (IntegerValue!23396 (value!236222 Int) (text!55035 List!45797)) (StringLiteralValue!23395 (text!55036 List!45797)) (FloatLiteralValue!15597 (text!55037 List!45797)) (BytesLiteralValue!7798 (value!236223 List!45797)) (CommentValue!15597 (value!236224 List!45797)) (StringLiteralValue!23396 (value!236225 List!45797)) (ErrorTokenValue!7798 (msg!7859 List!45797)) )
))
(declare-datatypes ((C!25136 0))(
  ( (C!25137 (val!14730 Int)) )
))
(declare-datatypes ((List!45798 0))(
  ( (Nil!45674) (Cons!45674 (h!51094 C!25136) (t!344309 List!45798)) )
))
(declare-datatypes ((IArray!27563 0))(
  ( (IArray!27564 (innerList!13839 List!45798)) )
))
(declare-datatypes ((Conc!13779 0))(
  ( (Node!13779 (left!34049 Conc!13779) (right!34379 Conc!13779) (csize!27788 Int) (cheight!13990 Int)) (Leaf!21306 (xs!17085 IArray!27563) (csize!27789 Int)) (Empty!13779) )
))
(declare-datatypes ((BalanceConc!27152 0))(
  ( (BalanceConc!27153 (c!712832 Conc!13779)) )
))
(declare-datatypes ((Regex!12473 0))(
  ( (ElementMatch!12473 (c!712833 C!25136)) (Concat!20272 (regOne!25458 Regex!12473) (regTwo!25458 Regex!12473)) (EmptyExpr!12473) (Star!12473 (reg!12802 Regex!12473)) (EmptyLang!12473) (Union!12473 (regOne!25459 Regex!12473) (regTwo!25459 Regex!12473)) )
))
(declare-datatypes ((String!52856 0))(
  ( (String!52857 (value!236226 String)) )
))
(declare-datatypes ((TokenValueInjection!15024 0))(
  ( (TokenValueInjection!15025 (toValue!10248 Int) (toChars!10107 Int)) )
))
(declare-datatypes ((Rule!14936 0))(
  ( (Rule!14937 (regex!7568 Regex!12473) (tag!8432 String!52856) (isSeparator!7568 Bool) (transformation!7568 TokenValueInjection!15024)) )
))
(declare-datatypes ((List!45799 0))(
  ( (Nil!45675) (Cons!45675 (h!51095 Rule!14936) (t!344310 List!45799)) )
))
(declare-fun rules!3843 () List!45799)

(declare-fun isEmpty!27027 (List!45799) Bool)

(assert (=> b!4169919 (= res!1708544 (not (isEmpty!27027 rules!3843)))))

(declare-fun b!4169920 () Bool)

(declare-fun res!1708548 () Bool)

(assert (=> b!4169920 (=> (not res!1708548) (not e!2588712))))

(declare-datatypes ((LexerInterface!7161 0))(
  ( (LexerInterfaceExt!7158 (__x!27818 Int)) (Lexer!7159) )
))
(declare-fun thiss!25986 () LexerInterface!7161)

(declare-fun rulesInvariant!6374 (LexerInterface!7161 List!45799) Bool)

(assert (=> b!4169920 (= res!1708548 (rulesInvariant!6374 thiss!25986 rules!3843))))

(declare-fun e!2588713 () Bool)

(declare-fun tp!1273830 () Bool)

(declare-fun rBis!167 () Rule!14936)

(declare-fun e!2588717 () Bool)

(declare-fun b!4169921 () Bool)

(declare-fun inv!60203 (String!52856) Bool)

(declare-fun inv!60205 (TokenValueInjection!15024) Bool)

(assert (=> b!4169921 (= e!2588713 (and tp!1273830 (inv!60203 (tag!8432 rBis!167)) (inv!60205 (transformation!7568 rBis!167)) e!2588717))))

(declare-fun e!2588715 () Bool)

(declare-fun b!4169922 () Bool)

(declare-fun e!2588720 () Bool)

(declare-fun r!4142 () Rule!14936)

(declare-fun tp!1273834 () Bool)

(assert (=> b!4169922 (= e!2588715 (and tp!1273834 (inv!60203 (tag!8432 r!4142)) (inv!60205 (transformation!7568 r!4142)) e!2588720))))

(declare-fun b!4169923 () Bool)

(declare-fun res!1708551 () Bool)

(assert (=> b!4169923 (=> (not res!1708551) (not e!2588712))))

(declare-fun p!2959 () List!45798)

(declare-fun matchR!6212 (Regex!12473 List!45798) Bool)

(assert (=> b!4169923 (= res!1708551 (matchR!6212 (regex!7568 r!4142) p!2959))))

(declare-fun b!4169924 () Bool)

(declare-fun e!2588718 () Bool)

(declare-fun tp_is_empty!21909 () Bool)

(declare-fun tp!1273837 () Bool)

(assert (=> b!4169924 (= e!2588718 (and tp_is_empty!21909 tp!1273837))))

(assert (=> b!4169925 (= e!2588717 (and tp!1273839 tp!1273831))))

(declare-fun tp!1273842 () Bool)

(declare-fun e!2588722 () Bool)

(declare-fun b!4169927 () Bool)

(declare-fun e!2588711 () Bool)

(assert (=> b!4169927 (= e!2588711 (and tp!1273842 (inv!60203 (tag!8432 (h!51095 rules!3843))) (inv!60205 (transformation!7568 (h!51095 rules!3843))) e!2588722))))

(declare-fun b!4169928 () Bool)

(declare-fun res!1708546 () Bool)

(assert (=> b!4169928 (=> (not res!1708546) (not e!2588712))))

(declare-fun validRegex!5590 (Regex!12473) Bool)

(assert (=> b!4169928 (= res!1708546 (validRegex!5590 (regex!7568 r!4142)))))

(declare-fun b!4169929 () Bool)

(declare-fun res!1708550 () Bool)

(assert (=> b!4169929 (=> (not res!1708550) (not e!2588712))))

(declare-fun pBis!107 () List!45798)

(declare-fun input!3342 () List!45798)

(declare-fun isPrefix!4425 (List!45798 List!45798) Bool)

(assert (=> b!4169929 (= res!1708550 (isPrefix!4425 pBis!107 input!3342))))

(declare-fun b!4169930 () Bool)

(assert (=> b!4169930 (= e!2588712 false)))

(declare-datatypes ((Unit!64743 0))(
  ( (Unit!64744) )
))
(declare-fun lt!1485116 () Unit!64743)

(declare-fun lemmaSemiInverse!2334 (TokenValueInjection!15024 BalanceConc!27152) Unit!64743)

(declare-fun seqFromList!5593 (List!45798) BalanceConc!27152)

(assert (=> b!4169930 (= lt!1485116 (lemmaSemiInverse!2334 (transformation!7568 r!4142) (seqFromList!5593 p!2959)))))

(declare-fun b!4169931 () Bool)

(declare-fun res!1708543 () Bool)

(assert (=> b!4169931 (=> (not res!1708543) (not e!2588712))))

(declare-fun contains!9369 (List!45799 Rule!14936) Bool)

(assert (=> b!4169931 (= res!1708543 (contains!9369 rules!3843 rBis!167))))

(declare-fun b!4169932 () Bool)

(declare-fun e!2588723 () Bool)

(declare-fun tp!1273840 () Bool)

(assert (=> b!4169932 (= e!2588723 (and tp_is_empty!21909 tp!1273840))))

(declare-fun b!4169933 () Bool)

(declare-fun res!1708547 () Bool)

(assert (=> b!4169933 (=> (not res!1708547) (not e!2588712))))

(assert (=> b!4169933 (= res!1708547 (isPrefix!4425 p!2959 input!3342))))

(assert (=> b!4169934 (= e!2588720 (and tp!1273841 tp!1273832))))

(declare-fun res!1708549 () Bool)

(assert (=> start!397578 (=> (not res!1708549) (not e!2588712))))

(get-info :version)

(assert (=> start!397578 (= res!1708549 ((_ is Lexer!7159) thiss!25986))))

(assert (=> start!397578 e!2588712))

(assert (=> start!397578 true))

(assert (=> start!397578 e!2588713))

(assert (=> start!397578 e!2588715))

(declare-fun e!2588714 () Bool)

(assert (=> start!397578 e!2588714))

(assert (=> start!397578 e!2588723))

(assert (=> start!397578 e!2588718))

(declare-fun e!2588721 () Bool)

(assert (=> start!397578 e!2588721))

(declare-fun b!4169926 () Bool)

(declare-fun tp!1273833 () Bool)

(assert (=> b!4169926 (= e!2588714 (and e!2588711 tp!1273833))))

(declare-fun b!4169935 () Bool)

(declare-fun res!1708545 () Bool)

(assert (=> b!4169935 (=> (not res!1708545) (not e!2588712))))

(assert (=> b!4169935 (= res!1708545 (contains!9369 rules!3843 r!4142))))

(declare-fun b!4169936 () Bool)

(declare-fun res!1708552 () Bool)

(assert (=> b!4169936 (=> (not res!1708552) (not e!2588712))))

(declare-fun ruleValid!3286 (LexerInterface!7161 Rule!14936) Bool)

(assert (=> b!4169936 (= res!1708552 (ruleValid!3286 thiss!25986 r!4142))))

(declare-fun b!4169937 () Bool)

(declare-fun tp!1273838 () Bool)

(assert (=> b!4169937 (= e!2588721 (and tp_is_empty!21909 tp!1273838))))

(assert (=> b!4169938 (= e!2588722 (and tp!1273836 tp!1273835))))

(assert (= (and start!397578 res!1708549) b!4169933))

(assert (= (and b!4169933 res!1708547) b!4169929))

(assert (= (and b!4169929 res!1708550) b!4169919))

(assert (= (and b!4169919 res!1708544) b!4169920))

(assert (= (and b!4169920 res!1708548) b!4169935))

(assert (= (and b!4169935 res!1708545) b!4169931))

(assert (= (and b!4169931 res!1708543) b!4169928))

(assert (= (and b!4169928 res!1708546) b!4169923))

(assert (= (and b!4169923 res!1708551) b!4169936))

(assert (= (and b!4169936 res!1708552) b!4169930))

(assert (= b!4169921 b!4169925))

(assert (= start!397578 b!4169921))

(assert (= b!4169922 b!4169934))

(assert (= start!397578 b!4169922))

(assert (= b!4169927 b!4169938))

(assert (= b!4169926 b!4169927))

(assert (= (and start!397578 ((_ is Cons!45675) rules!3843)) b!4169926))

(assert (= (and start!397578 ((_ is Cons!45674) input!3342)) b!4169932))

(assert (= (and start!397578 ((_ is Cons!45674) pBis!107)) b!4169924))

(assert (= (and start!397578 ((_ is Cons!45674) p!2959)) b!4169937))

(declare-fun m!4760777 () Bool)

(assert (=> b!4169927 m!4760777))

(declare-fun m!4760779 () Bool)

(assert (=> b!4169927 m!4760779))

(declare-fun m!4760781 () Bool)

(assert (=> b!4169930 m!4760781))

(assert (=> b!4169930 m!4760781))

(declare-fun m!4760783 () Bool)

(assert (=> b!4169930 m!4760783))

(declare-fun m!4760785 () Bool)

(assert (=> b!4169922 m!4760785))

(declare-fun m!4760787 () Bool)

(assert (=> b!4169922 m!4760787))

(declare-fun m!4760789 () Bool)

(assert (=> b!4169935 m!4760789))

(declare-fun m!4760791 () Bool)

(assert (=> b!4169928 m!4760791))

(declare-fun m!4760793 () Bool)

(assert (=> b!4169936 m!4760793))

(declare-fun m!4760795 () Bool)

(assert (=> b!4169929 m!4760795))

(declare-fun m!4760797 () Bool)

(assert (=> b!4169931 m!4760797))

(declare-fun m!4760799 () Bool)

(assert (=> b!4169923 m!4760799))

(declare-fun m!4760801 () Bool)

(assert (=> b!4169933 m!4760801))

(declare-fun m!4760803 () Bool)

(assert (=> b!4169920 m!4760803))

(declare-fun m!4760805 () Bool)

(assert (=> b!4169921 m!4760805))

(declare-fun m!4760807 () Bool)

(assert (=> b!4169921 m!4760807))

(declare-fun m!4760809 () Bool)

(assert (=> b!4169919 m!4760809))

(check-sat b_and!325519 (not b_next!121283) (not b!4169919) (not b_next!121287) (not b!4169920) (not b_next!121279) tp_is_empty!21909 (not b!4169931) (not b!4169927) (not b!4169937) (not b!4169928) (not b!4169929) (not b!4169933) (not b_next!121285) (not b!4169923) b_and!325523 b_and!325517 (not b!4169921) (not b!4169930) (not b_next!121281) (not b!4169924) b_and!325521 (not b!4169935) (not b!4169936) b_and!325525 b_and!325527 (not b_next!121289) (not b!4169926) (not b!4169922) (not b!4169932))
(check-sat b_and!325519 (not b_next!121283) (not b_next!121285) b_and!325523 (not b_next!121287) (not b_next!121279) b_and!325517 (not b_next!121281) b_and!325521 b_and!325525 b_and!325527 (not b_next!121289))
