; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!259702 () Bool)

(assert start!259702)

(declare-fun b!2670118 () Bool)

(declare-fun b_free!75009 () Bool)

(declare-fun b_next!75713 () Bool)

(assert (=> b!2670118 (= b_free!75009 (not b_next!75713))))

(declare-fun tp!844085 () Bool)

(declare-fun b_and!197041 () Bool)

(assert (=> b!2670118 (= tp!844085 b_and!197041)))

(declare-fun b_free!75011 () Bool)

(declare-fun b_next!75715 () Bool)

(assert (=> b!2670118 (= b_free!75011 (not b_next!75715))))

(declare-fun tp!844079 () Bool)

(declare-fun b_and!197043 () Bool)

(assert (=> b!2670118 (= tp!844079 b_and!197043)))

(declare-fun b!2670129 () Bool)

(declare-fun b_free!75013 () Bool)

(declare-fun b_next!75717 () Bool)

(assert (=> b!2670129 (= b_free!75013 (not b_next!75717))))

(declare-fun tp!844090 () Bool)

(declare-fun b_and!197045 () Bool)

(assert (=> b!2670129 (= tp!844090 b_and!197045)))

(declare-fun b_free!75015 () Bool)

(declare-fun b_next!75719 () Bool)

(assert (=> b!2670129 (= b_free!75015 (not b_next!75719))))

(declare-fun tp!844088 () Bool)

(declare-fun b_and!197047 () Bool)

(assert (=> b!2670129 (= tp!844088 b_and!197047)))

(declare-fun b!2670130 () Bool)

(declare-fun b_free!75017 () Bool)

(declare-fun b_next!75721 () Bool)

(assert (=> b!2670130 (= b_free!75017 (not b_next!75721))))

(declare-fun tp!844087 () Bool)

(declare-fun b_and!197049 () Bool)

(assert (=> b!2670130 (= tp!844087 b_and!197049)))

(declare-fun b_free!75019 () Bool)

(declare-fun b_next!75723 () Bool)

(assert (=> b!2670130 (= b_free!75019 (not b_next!75723))))

(declare-fun tp!844081 () Bool)

(declare-fun b_and!197051 () Bool)

(assert (=> b!2670130 (= tp!844081 b_and!197051)))

(declare-fun bs!479416 () Bool)

(declare-fun b!2670127 () Bool)

(declare-fun b!2670126 () Bool)

(assert (= bs!479416 (and b!2670127 b!2670126)))

(declare-fun lambda!99684 () Int)

(declare-fun lambda!99683 () Int)

(assert (=> bs!479416 (not (= lambda!99684 lambda!99683))))

(declare-fun b!2670147 () Bool)

(declare-fun e!1682806 () Bool)

(assert (=> b!2670147 (= e!1682806 true)))

(declare-fun b!2670146 () Bool)

(declare-fun e!1682805 () Bool)

(assert (=> b!2670146 (= e!1682805 e!1682806)))

(declare-fun b!2670145 () Bool)

(declare-fun e!1682804 () Bool)

(assert (=> b!2670145 (= e!1682804 e!1682805)))

(assert (=> b!2670127 e!1682804))

(assert (= b!2670146 b!2670147))

(assert (= b!2670145 b!2670146))

(declare-datatypes ((List!30783 0))(
  ( (Nil!30683) (Cons!30683 (h!36103 (_ BitVec 16)) (t!223144 List!30783)) )
))
(declare-datatypes ((TokenValue!4901 0))(
  ( (FloatLiteralValue!9802 (text!34752 List!30783)) (TokenValueExt!4900 (__x!19635 Int)) (Broken!24505 (value!150930 List!30783)) (Object!5000) (End!4901) (Def!4901) (Underscore!4901) (Match!4901) (Else!4901) (Error!4901) (Case!4901) (If!4901) (Extends!4901) (Abstract!4901) (Class!4901) (Val!4901) (DelimiterValue!9802 (del!4961 List!30783)) (KeywordValue!4907 (value!150931 List!30783)) (CommentValue!9802 (value!150932 List!30783)) (WhitespaceValue!9802 (value!150933 List!30783)) (IndentationValue!4901 (value!150934 List!30783)) (String!34388) (Int32!4901) (Broken!24506 (value!150935 List!30783)) (Boolean!4902) (Unit!44904) (OperatorValue!4904 (op!4961 List!30783)) (IdentifierValue!9802 (value!150936 List!30783)) (IdentifierValue!9803 (value!150937 List!30783)) (WhitespaceValue!9803 (value!150938 List!30783)) (True!9802) (False!9802) (Broken!24507 (value!150939 List!30783)) (Broken!24508 (value!150940 List!30783)) (True!9803) (RightBrace!4901) (RightBracket!4901) (Colon!4901) (Null!4901) (Comma!4901) (LeftBracket!4901) (False!9803) (LeftBrace!4901) (ImaginaryLiteralValue!4901 (text!34753 List!30783)) (StringLiteralValue!14703 (value!150941 List!30783)) (EOFValue!4901 (value!150942 List!30783)) (IdentValue!4901 (value!150943 List!30783)) (DelimiterValue!9803 (value!150944 List!30783)) (DedentValue!4901 (value!150945 List!30783)) (NewLineValue!4901 (value!150946 List!30783)) (IntegerValue!14703 (value!150947 (_ BitVec 32)) (text!34754 List!30783)) (IntegerValue!14704 (value!150948 Int) (text!34755 List!30783)) (Times!4901) (Or!4901) (Equal!4901) (Minus!4901) (Broken!24509 (value!150949 List!30783)) (And!4901) (Div!4901) (LessEqual!4901) (Mod!4901) (Concat!12724) (Not!4901) (Plus!4901) (SpaceValue!4901 (value!150950 List!30783)) (IntegerValue!14705 (value!150951 Int) (text!34756 List!30783)) (StringLiteralValue!14704 (text!34757 List!30783)) (FloatLiteralValue!9803 (text!34758 List!30783)) (BytesLiteralValue!4901 (value!150952 List!30783)) (CommentValue!9803 (value!150953 List!30783)) (StringLiteralValue!14705 (value!150954 List!30783)) (ErrorTokenValue!4901 (msg!4962 List!30783)) )
))
(declare-datatypes ((C!15804 0))(
  ( (C!15805 (val!9836 Int)) )
))
(declare-datatypes ((List!30784 0))(
  ( (Nil!30684) (Cons!30684 (h!36104 C!15804) (t!223145 List!30784)) )
))
(declare-datatypes ((IArray!19191 0))(
  ( (IArray!19192 (innerList!9653 List!30784)) )
))
(declare-datatypes ((Conc!9593 0))(
  ( (Node!9593 (left!23728 Conc!9593) (right!24058 Conc!9593) (csize!19416 Int) (cheight!9804 Int)) (Leaf!14673 (xs!12623 IArray!19191) (csize!19417 Int)) (Empty!9593) )
))
(declare-datatypes ((BalanceConc!18800 0))(
  ( (BalanceConc!18801 (c!430449 Conc!9593)) )
))
(declare-datatypes ((Regex!7823 0))(
  ( (ElementMatch!7823 (c!430450 C!15804)) (Concat!12725 (regOne!16158 Regex!7823) (regTwo!16158 Regex!7823)) (EmptyExpr!7823) (Star!7823 (reg!8152 Regex!7823)) (EmptyLang!7823) (Union!7823 (regOne!16159 Regex!7823) (regTwo!16159 Regex!7823)) )
))
(declare-datatypes ((TokenValueInjection!9242 0))(
  ( (TokenValueInjection!9243 (toValue!6617 Int) (toChars!6476 Int)) )
))
(declare-datatypes ((String!34389 0))(
  ( (String!34390 (value!150955 String)) )
))
(declare-datatypes ((Rule!9158 0))(
  ( (Rule!9159 (regex!4679 Regex!7823) (tag!5181 String!34389) (isSeparator!4679 Bool) (transformation!4679 TokenValueInjection!9242)) )
))
(declare-datatypes ((List!30785 0))(
  ( (Nil!30685) (Cons!30685 (h!36105 Rule!9158) (t!223146 List!30785)) )
))
(declare-fun rules!1712 () List!30785)

(get-info :version)

(assert (= (and b!2670127 ((_ is Cons!30685) rules!1712)) b!2670145))

(declare-fun order!16817 () Int)

(declare-fun order!16815 () Int)

(declare-fun dynLambda!13272 (Int Int) Int)

(declare-fun dynLambda!13273 (Int Int) Int)

(assert (=> b!2670147 (< (dynLambda!13272 order!16815 (toValue!6617 (transformation!4679 (h!36105 rules!1712)))) (dynLambda!13273 order!16817 lambda!99684))))

(declare-fun order!16819 () Int)

(declare-fun dynLambda!13274 (Int Int) Int)

(assert (=> b!2670147 (< (dynLambda!13274 order!16819 (toChars!6476 (transformation!4679 (h!36105 rules!1712)))) (dynLambda!13273 order!16817 lambda!99684))))

(assert (=> b!2670127 true))

(declare-fun b!2670116 () Bool)

(declare-fun e!1682791 () Bool)

(declare-datatypes ((Token!8828 0))(
  ( (Token!8829 (value!150956 TokenValue!4901) (rule!7085 Rule!9158) (size!23741 Int) (originalCharacters!5445 List!30784)) )
))
(declare-datatypes ((List!30786 0))(
  ( (Nil!30686) (Cons!30686 (h!36106 Token!8828) (t!223147 List!30786)) )
))
(declare-fun l!4335 () List!30786)

(declare-fun e!1682785 () Bool)

(declare-fun tp!844078 () Bool)

(declare-fun inv!41690 (Token!8828) Bool)

(assert (=> b!2670116 (= e!1682785 (and (inv!41690 (h!36106 l!4335)) e!1682791 tp!844078))))

(declare-fun b!2670117 () Bool)

(declare-fun res!1122634 () Bool)

(declare-fun e!1682795 () Bool)

(assert (=> b!2670117 (=> (not res!1122634) (not e!1682795))))

(declare-fun separatorToken!152 () Token!8828)

(assert (=> b!2670117 (= res!1122634 (isSeparator!4679 (rule!7085 separatorToken!152)))))

(declare-fun e!1682784 () Bool)

(assert (=> b!2670118 (= e!1682784 (and tp!844085 tp!844079))))

(declare-fun b!2670119 () Bool)

(declare-fun e!1682788 () Bool)

(declare-fun e!1682793 () Bool)

(declare-fun tp!844084 () Bool)

(assert (=> b!2670119 (= e!1682788 (and e!1682793 tp!844084))))

(declare-fun res!1122629 () Bool)

(assert (=> start!259702 (=> (not res!1122629) (not e!1682795))))

(declare-datatypes ((LexerInterface!4276 0))(
  ( (LexerInterfaceExt!4273 (__x!19636 Int)) (Lexer!4274) )
))
(declare-fun thiss!14116 () LexerInterface!4276)

(assert (=> start!259702 (= res!1122629 ((_ is Lexer!4274) thiss!14116))))

(assert (=> start!259702 e!1682795))

(assert (=> start!259702 true))

(assert (=> start!259702 e!1682788))

(assert (=> start!259702 e!1682785))

(declare-fun e!1682781 () Bool)

(assert (=> start!259702 (and (inv!41690 separatorToken!152) e!1682781)))

(declare-fun b!2670120 () Bool)

(declare-fun res!1122633 () Bool)

(assert (=> b!2670120 (=> (not res!1122633) (not e!1682795))))

(declare-fun rulesProduceEachTokenIndividuallyList!1498 (LexerInterface!4276 List!30785 List!30786) Bool)

(assert (=> b!2670120 (= res!1122633 (rulesProduceEachTokenIndividuallyList!1498 thiss!14116 rules!1712 l!4335))))

(declare-fun e!1682790 () Bool)

(declare-fun tp!844089 () Bool)

(declare-fun e!1682796 () Bool)

(declare-fun b!2670121 () Bool)

(declare-fun inv!41687 (String!34389) Bool)

(declare-fun inv!41691 (TokenValueInjection!9242) Bool)

(assert (=> b!2670121 (= e!1682796 (and tp!844089 (inv!41687 (tag!5181 (rule!7085 (h!36106 l!4335)))) (inv!41691 (transformation!4679 (rule!7085 (h!36106 l!4335)))) e!1682790))))

(declare-fun b!2670122 () Bool)

(declare-fun res!1122625 () Bool)

(assert (=> b!2670122 (=> (not res!1122625) (not e!1682795))))

(declare-fun rulesInvariant!3776 (LexerInterface!4276 List!30785) Bool)

(assert (=> b!2670122 (= res!1122625 (rulesInvariant!3776 thiss!14116 rules!1712))))

(declare-fun b!2670123 () Bool)

(declare-fun res!1122624 () Bool)

(assert (=> b!2670123 (=> (not res!1122624) (not e!1682795))))

(declare-fun sepAndNonSepRulesDisjointChars!1252 (List!30785 List!30785) Bool)

(assert (=> b!2670123 (= res!1122624 (sepAndNonSepRulesDisjointChars!1252 rules!1712 rules!1712))))

(declare-fun b!2670124 () Bool)

(declare-fun res!1122627 () Bool)

(assert (=> b!2670124 (=> (not res!1122627) (not e!1682795))))

(assert (=> b!2670124 (= res!1122627 ((_ is Cons!30686) l!4335))))

(declare-fun b!2670125 () Bool)

(declare-fun e!1682797 () Bool)

(assert (=> b!2670125 (= e!1682797 false)))

(declare-fun res!1122631 () Bool)

(assert (=> b!2670126 (=> (not res!1122631) (not e!1682795))))

(declare-fun forall!6492 (List!30786 Int) Bool)

(assert (=> b!2670126 (= res!1122631 (forall!6492 l!4335 lambda!99683))))

(assert (=> b!2670127 (= e!1682795 e!1682797)))

(declare-fun res!1122628 () Bool)

(assert (=> b!2670127 (=> (not res!1122628) (not e!1682797))))

(assert (=> b!2670127 (= res!1122628 (rulesProduceEachTokenIndividuallyList!1498 thiss!14116 rules!1712 (t!223147 l!4335)))))

(declare-datatypes ((Unit!44905 0))(
  ( (Unit!44906) )
))
(declare-fun lt!940466 () Unit!44905)

(declare-fun forallContained!1021 (List!30786 Int Token!8828) Unit!44905)

(assert (=> b!2670127 (= lt!940466 (forallContained!1021 l!4335 lambda!99684 (h!36106 l!4335)))))

(declare-fun b!2670128 () Bool)

(declare-fun res!1122626 () Bool)

(assert (=> b!2670128 (=> (not res!1122626) (not e!1682795))))

(declare-fun rulesProduceIndividualToken!1988 (LexerInterface!4276 List!30785 Token!8828) Bool)

(assert (=> b!2670128 (= res!1122626 (rulesProduceIndividualToken!1988 thiss!14116 rules!1712 separatorToken!152))))

(assert (=> b!2670129 (= e!1682790 (and tp!844090 tp!844088))))

(declare-fun e!1682789 () Bool)

(assert (=> b!2670130 (= e!1682789 (and tp!844087 tp!844081))))

(declare-fun tp!844083 () Bool)

(declare-fun b!2670131 () Bool)

(declare-fun e!1682792 () Bool)

(assert (=> b!2670131 (= e!1682792 (and tp!844083 (inv!41687 (tag!5181 (rule!7085 separatorToken!152))) (inv!41691 (transformation!4679 (rule!7085 separatorToken!152))) e!1682784))))

(declare-fun b!2670132 () Bool)

(declare-fun res!1122632 () Bool)

(assert (=> b!2670132 (=> (not res!1122632) (not e!1682795))))

(declare-fun isEmpty!17555 (List!30785) Bool)

(assert (=> b!2670132 (= res!1122632 (not (isEmpty!17555 rules!1712)))))

(declare-fun b!2670133 () Bool)

(declare-fun tp!844082 () Bool)

(assert (=> b!2670133 (= e!1682793 (and tp!844082 (inv!41687 (tag!5181 (h!36105 rules!1712))) (inv!41691 (transformation!4679 (h!36105 rules!1712))) e!1682789))))

(declare-fun b!2670134 () Bool)

(declare-fun tp!844080 () Bool)

(declare-fun inv!21 (TokenValue!4901) Bool)

(assert (=> b!2670134 (= e!1682791 (and (inv!21 (value!150956 (h!36106 l!4335))) e!1682796 tp!844080))))

(declare-fun b!2670135 () Bool)

(declare-fun tp!844086 () Bool)

(assert (=> b!2670135 (= e!1682781 (and (inv!21 (value!150956 separatorToken!152)) e!1682792 tp!844086))))

(declare-fun b!2670136 () Bool)

(declare-fun res!1122630 () Bool)

(assert (=> b!2670136 (=> (not res!1122630) (not e!1682795))))

(declare-fun contains!5887 (List!30786 Token!8828) Bool)

(assert (=> b!2670136 (= res!1122630 (contains!5887 l!4335 (h!36106 l!4335)))))

(assert (= (and start!259702 res!1122629) b!2670132))

(assert (= (and b!2670132 res!1122632) b!2670122))

(assert (= (and b!2670122 res!1122625) b!2670120))

(assert (= (and b!2670120 res!1122633) b!2670128))

(assert (= (and b!2670128 res!1122626) b!2670117))

(assert (= (and b!2670117 res!1122634) b!2670126))

(assert (= (and b!2670126 res!1122631) b!2670123))

(assert (= (and b!2670123 res!1122624) b!2670124))

(assert (= (and b!2670124 res!1122627) b!2670136))

(assert (= (and b!2670136 res!1122630) b!2670127))

(assert (= (and b!2670127 res!1122628) b!2670125))

(assert (= b!2670133 b!2670130))

(assert (= b!2670119 b!2670133))

(assert (= (and start!259702 ((_ is Cons!30685) rules!1712)) b!2670119))

(assert (= b!2670121 b!2670129))

(assert (= b!2670134 b!2670121))

(assert (= b!2670116 b!2670134))

(assert (= (and start!259702 ((_ is Cons!30686) l!4335)) b!2670116))

(assert (= b!2670131 b!2670118))

(assert (= b!2670135 b!2670131))

(assert (= start!259702 b!2670135))

(declare-fun m!3036333 () Bool)

(assert (=> b!2670123 m!3036333))

(declare-fun m!3036335 () Bool)

(assert (=> b!2670131 m!3036335))

(declare-fun m!3036337 () Bool)

(assert (=> b!2670131 m!3036337))

(declare-fun m!3036339 () Bool)

(assert (=> b!2670134 m!3036339))

(declare-fun m!3036341 () Bool)

(assert (=> b!2670135 m!3036341))

(declare-fun m!3036343 () Bool)

(assert (=> b!2670116 m!3036343))

(declare-fun m!3036345 () Bool)

(assert (=> b!2670132 m!3036345))

(declare-fun m!3036347 () Bool)

(assert (=> b!2670136 m!3036347))

(declare-fun m!3036349 () Bool)

(assert (=> b!2670122 m!3036349))

(declare-fun m!3036351 () Bool)

(assert (=> b!2670128 m!3036351))

(declare-fun m!3036353 () Bool)

(assert (=> b!2670133 m!3036353))

(declare-fun m!3036355 () Bool)

(assert (=> b!2670133 m!3036355))

(declare-fun m!3036357 () Bool)

(assert (=> b!2670127 m!3036357))

(declare-fun m!3036359 () Bool)

(assert (=> b!2670127 m!3036359))

(declare-fun m!3036361 () Bool)

(assert (=> b!2670126 m!3036361))

(declare-fun m!3036363 () Bool)

(assert (=> b!2670120 m!3036363))

(declare-fun m!3036365 () Bool)

(assert (=> b!2670121 m!3036365))

(declare-fun m!3036367 () Bool)

(assert (=> b!2670121 m!3036367))

(declare-fun m!3036369 () Bool)

(assert (=> start!259702 m!3036369))

(check-sat (not b!2670121) (not b!2670132) b_and!197045 (not b!2670126) (not b_next!75723) b_and!197051 (not b!2670123) (not b!2670134) (not b!2670122) (not b_next!75721) (not b_next!75713) (not b!2670145) (not b!2670135) (not b!2670120) b_and!197047 (not b_next!75719) (not b!2670127) (not b!2670128) (not start!259702) (not b_next!75717) b_and!197049 (not b!2670116) (not b_next!75715) b_and!197043 b_and!197041 (not b!2670119) (not b!2670131) (not b!2670136) (not b!2670133))
(check-sat b_and!197045 b_and!197047 (not b_next!75723) (not b_next!75719) b_and!197051 (not b_next!75717) (not b_next!75721) (not b_next!75713) b_and!197049 (not b_next!75715) b_and!197043 b_and!197041)
