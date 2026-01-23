; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189832 () Bool)

(assert start!189832)

(declare-fun b!1894213 () Bool)

(declare-fun b_free!52817 () Bool)

(declare-fun b_next!53521 () Bool)

(assert (=> b!1894213 (= b_free!52817 (not b_next!53521))))

(declare-fun tp!540428 () Bool)

(declare-fun b_and!145887 () Bool)

(assert (=> b!1894213 (= tp!540428 b_and!145887)))

(declare-fun b_free!52819 () Bool)

(declare-fun b_next!53523 () Bool)

(assert (=> b!1894213 (= b_free!52819 (not b_next!53523))))

(declare-fun tp!540426 () Bool)

(declare-fun b_and!145889 () Bool)

(assert (=> b!1894213 (= tp!540426 b_and!145889)))

(declare-fun b!1894204 () Bool)

(declare-fun b_free!52821 () Bool)

(declare-fun b_next!53525 () Bool)

(assert (=> b!1894204 (= b_free!52821 (not b_next!53525))))

(declare-fun tp!540420 () Bool)

(declare-fun b_and!145891 () Bool)

(assert (=> b!1894204 (= tp!540420 b_and!145891)))

(declare-fun b_free!52823 () Bool)

(declare-fun b_next!53527 () Bool)

(assert (=> b!1894204 (= b_free!52823 (not b_next!53527))))

(declare-fun tp!540424 () Bool)

(declare-fun b_and!145893 () Bool)

(assert (=> b!1894204 (= tp!540424 b_and!145893)))

(declare-fun b!1894200 () Bool)

(declare-fun b_free!52825 () Bool)

(declare-fun b_next!53529 () Bool)

(assert (=> b!1894200 (= b_free!52825 (not b_next!53529))))

(declare-fun tp!540429 () Bool)

(declare-fun b_and!145895 () Bool)

(assert (=> b!1894200 (= tp!540429 b_and!145895)))

(declare-fun b_free!52827 () Bool)

(declare-fun b_next!53531 () Bool)

(assert (=> b!1894200 (= b_free!52827 (not b_next!53531))))

(declare-fun tp!540421 () Bool)

(declare-fun b_and!145897 () Bool)

(assert (=> b!1894200 (= tp!540421 b_and!145897)))

(declare-fun e!1209186 () Bool)

(declare-fun tp!540423 () Bool)

(declare-fun e!1209187 () Bool)

(declare-fun b!1894195 () Bool)

(declare-datatypes ((List!21306 0))(
  ( (Nil!21224) (Cons!21224 (h!26625 (_ BitVec 16)) (t!175971 List!21306)) )
))
(declare-datatypes ((TokenValue!3902 0))(
  ( (FloatLiteralValue!7804 (text!27759 List!21306)) (TokenValueExt!3901 (__x!13302 Int)) (Broken!19510 (value!118896 List!21306)) (Object!3983) (End!3902) (Def!3902) (Underscore!3902) (Match!3902) (Else!3902) (Error!3902) (Case!3902) (If!3902) (Extends!3902) (Abstract!3902) (Class!3902) (Val!3902) (DelimiterValue!7804 (del!3962 List!21306)) (KeywordValue!3908 (value!118897 List!21306)) (CommentValue!7804 (value!118898 List!21306)) (WhitespaceValue!7804 (value!118899 List!21306)) (IndentationValue!3902 (value!118900 List!21306)) (String!24627) (Int32!3902) (Broken!19511 (value!118901 List!21306)) (Boolean!3903) (Unit!35593) (OperatorValue!3905 (op!3962 List!21306)) (IdentifierValue!7804 (value!118902 List!21306)) (IdentifierValue!7805 (value!118903 List!21306)) (WhitespaceValue!7805 (value!118904 List!21306)) (True!7804) (False!7804) (Broken!19512 (value!118905 List!21306)) (Broken!19513 (value!118906 List!21306)) (True!7805) (RightBrace!3902) (RightBracket!3902) (Colon!3902) (Null!3902) (Comma!3902) (LeftBracket!3902) (False!7805) (LeftBrace!3902) (ImaginaryLiteralValue!3902 (text!27760 List!21306)) (StringLiteralValue!11706 (value!118907 List!21306)) (EOFValue!3902 (value!118908 List!21306)) (IdentValue!3902 (value!118909 List!21306)) (DelimiterValue!7805 (value!118910 List!21306)) (DedentValue!3902 (value!118911 List!21306)) (NewLineValue!3902 (value!118912 List!21306)) (IntegerValue!11706 (value!118913 (_ BitVec 32)) (text!27761 List!21306)) (IntegerValue!11707 (value!118914 Int) (text!27762 List!21306)) (Times!3902) (Or!3902) (Equal!3902) (Minus!3902) (Broken!19514 (value!118915 List!21306)) (And!3902) (Div!3902) (LessEqual!3902) (Mod!3902) (Concat!9093) (Not!3902) (Plus!3902) (SpaceValue!3902 (value!118916 List!21306)) (IntegerValue!11708 (value!118917 Int) (text!27763 List!21306)) (StringLiteralValue!11707 (text!27764 List!21306)) (FloatLiteralValue!7805 (text!27765 List!21306)) (BytesLiteralValue!3902 (value!118918 List!21306)) (CommentValue!7805 (value!118919 List!21306)) (StringLiteralValue!11708 (value!118920 List!21306)) (ErrorTokenValue!3902 (msg!3963 List!21306)) )
))
(declare-datatypes ((C!10528 0))(
  ( (C!10529 (val!6216 Int)) )
))
(declare-datatypes ((List!21307 0))(
  ( (Nil!21225) (Cons!21225 (h!26626 C!10528) (t!175972 List!21307)) )
))
(declare-datatypes ((String!24628 0))(
  ( (String!24629 (value!118921 String)) )
))
(declare-datatypes ((Regex!5191 0))(
  ( (ElementMatch!5191 (c!309077 C!10528)) (Concat!9094 (regOne!10894 Regex!5191) (regTwo!10894 Regex!5191)) (EmptyExpr!5191) (Star!5191 (reg!5520 Regex!5191)) (EmptyLang!5191) (Union!5191 (regOne!10895 Regex!5191) (regTwo!10895 Regex!5191)) )
))
(declare-datatypes ((IArray!14139 0))(
  ( (IArray!14140 (innerList!7127 List!21307)) )
))
(declare-datatypes ((Conc!7067 0))(
  ( (Node!7067 (left!17032 Conc!7067) (right!17362 Conc!7067) (csize!14364 Int) (cheight!7278 Int)) (Leaf!10413 (xs!9961 IArray!14139) (csize!14365 Int)) (Empty!7067) )
))
(declare-datatypes ((BalanceConc!13950 0))(
  ( (BalanceConc!13951 (c!309078 Conc!7067)) )
))
(declare-datatypes ((TokenValueInjection!7388 0))(
  ( (TokenValueInjection!7389 (toValue!5379 Int) (toChars!5238 Int)) )
))
(declare-datatypes ((Rule!7332 0))(
  ( (Rule!7333 (regex!3766 Regex!5191) (tag!4180 String!24628) (isSeparator!3766 Bool) (transformation!3766 TokenValueInjection!7388)) )
))
(declare-datatypes ((Token!7084 0))(
  ( (Token!7085 (value!118922 TokenValue!3902) (rule!5959 Rule!7332) (size!16830 Int) (originalCharacters!4573 List!21307)) )
))
(declare-datatypes ((List!21308 0))(
  ( (Nil!21226) (Cons!21226 (h!26627 Token!7084) (t!175973 List!21308)) )
))
(declare-fun tokens!598 () List!21308)

(declare-fun inv!28323 (Token!7084) Bool)

(assert (=> b!1894195 (= e!1209187 (and (inv!28323 (h!26627 tokens!598)) e!1209186 tp!540423))))

(declare-fun b!1894196 () Bool)

(declare-fun res!845425 () Bool)

(declare-fun e!1209188 () Bool)

(assert (=> b!1894196 (=> (not res!845425) (not e!1209188))))

(declare-datatypes ((List!21309 0))(
  ( (Nil!21227) (Cons!21227 (h!26628 Rule!7332) (t!175974 List!21309)) )
))
(declare-fun rules!3198 () List!21309)

(declare-fun sepAndNonSepRulesDisjointChars!864 (List!21309 List!21309) Bool)

(assert (=> b!1894196 (= res!845425 (sepAndNonSepRulesDisjointChars!864 rules!3198 rules!3198))))

(declare-fun b!1894197 () Bool)

(declare-fun e!1209181 () Bool)

(declare-fun separatorToken!354 () Token!7084)

(declare-fun lt!724790 () Rule!7332)

(assert (=> b!1894197 (= e!1209181 (= (rule!5959 separatorToken!354) lt!724790))))

(declare-fun b!1894198 () Bool)

(declare-fun e!1209184 () Bool)

(declare-fun e!1209185 () Bool)

(declare-fun tp!540432 () Bool)

(assert (=> b!1894198 (= e!1209184 (and e!1209185 tp!540432))))

(declare-fun b!1894199 () Bool)

(declare-fun res!845415 () Bool)

(assert (=> b!1894199 (=> (not res!845415) (not e!1209188))))

(assert (=> b!1894199 (= res!845415 (isSeparator!3766 (rule!5959 separatorToken!354)))))

(declare-fun e!1209191 () Bool)

(assert (=> b!1894200 (= e!1209191 (and tp!540429 tp!540421))))

(declare-fun b!1894201 () Bool)

(declare-fun tp!540431 () Bool)

(declare-fun e!1209192 () Bool)

(declare-fun inv!28320 (String!24628) Bool)

(declare-fun inv!28324 (TokenValueInjection!7388) Bool)

(assert (=> b!1894201 (= e!1209185 (and tp!540431 (inv!28320 (tag!4180 (h!26628 rules!3198))) (inv!28324 (transformation!3766 (h!26628 rules!3198))) e!1209192))))

(declare-fun e!1209180 () Bool)

(declare-fun tp!540422 () Bool)

(declare-fun b!1894202 () Bool)

(assert (=> b!1894202 (= e!1209180 (and tp!540422 (inv!28320 (tag!4180 (rule!5959 (h!26627 tokens!598)))) (inv!28324 (transformation!3766 (rule!5959 (h!26627 tokens!598)))) e!1209191))))

(declare-fun b!1894203 () Bool)

(declare-fun res!845422 () Bool)

(assert (=> b!1894203 (=> (not res!845422) (not e!1209188))))

(declare-datatypes ((LexerInterface!3379 0))(
  ( (LexerInterfaceExt!3376 (__x!13303 Int)) (Lexer!3377) )
))
(declare-fun thiss!23328 () LexerInterface!3379)

(declare-fun rulesProduceEachTokenIndividuallyList!1110 (LexerInterface!3379 List!21309 List!21308) Bool)

(assert (=> b!1894203 (= res!845422 (rulesProduceEachTokenIndividuallyList!1110 thiss!23328 rules!3198 tokens!598))))

(assert (=> b!1894204 (= e!1209192 (and tp!540420 tp!540424))))

(declare-fun b!1894205 () Bool)

(declare-fun res!845419 () Bool)

(assert (=> b!1894205 (=> (not res!845419) (not e!1209188))))

(declare-fun lambda!73991 () Int)

(declare-fun forall!4440 (List!21308 Int) Bool)

(assert (=> b!1894205 (= res!845419 (forall!4440 tokens!598 lambda!73991))))

(declare-fun e!1209182 () Bool)

(declare-fun b!1894194 () Bool)

(declare-fun tp!540427 () Bool)

(declare-fun e!1209178 () Bool)

(declare-fun inv!21 (TokenValue!3902) Bool)

(assert (=> b!1894194 (= e!1209178 (and (inv!21 (value!118922 separatorToken!354)) e!1209182 tp!540427))))

(declare-fun res!845417 () Bool)

(assert (=> start!189832 (=> (not res!845417) (not e!1209188))))

(get-info :version)

(assert (=> start!189832 (= res!845417 ((_ is Lexer!3377) thiss!23328))))

(assert (=> start!189832 e!1209188))

(assert (=> start!189832 true))

(assert (=> start!189832 e!1209184))

(assert (=> start!189832 e!1209187))

(assert (=> start!189832 (and (inv!28323 separatorToken!354) e!1209178)))

(declare-fun b!1894206 () Bool)

(declare-fun res!845423 () Bool)

(assert (=> b!1894206 (=> (not res!845423) (not e!1209188))))

(declare-fun rulesInvariant!2986 (LexerInterface!3379 List!21309) Bool)

(assert (=> b!1894206 (= res!845423 (rulesInvariant!2986 thiss!23328 rules!3198))))

(declare-fun b!1894207 () Bool)

(declare-fun res!845421 () Bool)

(assert (=> b!1894207 (=> (not res!845421) (not e!1209188))))

(declare-fun isEmpty!13030 (List!21309) Bool)

(assert (=> b!1894207 (= res!845421 (not (isEmpty!13030 rules!3198)))))

(declare-fun b!1894208 () Bool)

(declare-fun e!1209177 () Bool)

(assert (=> b!1894208 (= e!1209177 e!1209181)))

(declare-fun res!845416 () Bool)

(assert (=> b!1894208 (=> (not res!845416) (not e!1209181))))

(declare-fun lt!724787 () List!21307)

(declare-fun matchR!2477 (Regex!5191 List!21307) Bool)

(assert (=> b!1894208 (= res!845416 (matchR!2477 (regex!3766 lt!724790) lt!724787))))

(declare-datatypes ((Option!4242 0))(
  ( (None!4241) (Some!4241 (v!26266 Rule!7332)) )
))
(declare-fun lt!724788 () Option!4242)

(declare-fun get!6536 (Option!4242) Rule!7332)

(assert (=> b!1894208 (= lt!724790 (get!6536 lt!724788))))

(declare-fun b!1894209 () Bool)

(declare-fun e!1209179 () Bool)

(declare-fun tp!540430 () Bool)

(assert (=> b!1894209 (= e!1209182 (and tp!540430 (inv!28320 (tag!4180 (rule!5959 separatorToken!354))) (inv!28324 (transformation!3766 (rule!5959 separatorToken!354))) e!1209179))))

(declare-fun tp!540425 () Bool)

(declare-fun b!1894210 () Bool)

(assert (=> b!1894210 (= e!1209186 (and (inv!21 (value!118922 (h!26627 tokens!598))) e!1209180 tp!540425))))

(declare-fun b!1894211 () Bool)

(declare-fun res!845424 () Bool)

(assert (=> b!1894211 (=> (not res!845424) (not e!1209188))))

(assert (=> b!1894211 (= res!845424 ((_ is Cons!21226) tokens!598))))

(declare-fun b!1894212 () Bool)

(assert (=> b!1894212 (= e!1209188 (not true))))

(declare-fun lt!724786 () List!21307)

(declare-fun lt!724789 () BalanceConc!13950)

(declare-fun list!8630 (BalanceConc!13950) List!21307)

(assert (=> b!1894212 (= lt!724786 (list!8630 lt!724789))))

(assert (=> b!1894212 e!1209177))

(declare-fun res!845420 () Bool)

(assert (=> b!1894212 (=> (not res!845420) (not e!1209177))))

(declare-fun isDefined!3540 (Option!4242) Bool)

(assert (=> b!1894212 (= res!845420 (isDefined!3540 lt!724788))))

(declare-fun getRuleFromTag!609 (LexerInterface!3379 List!21309 String!24628) Option!4242)

(assert (=> b!1894212 (= lt!724788 (getRuleFromTag!609 thiss!23328 rules!3198 (tag!4180 (rule!5959 separatorToken!354))))))

(declare-datatypes ((Unit!35594 0))(
  ( (Unit!35595) )
))
(declare-fun lt!724785 () Unit!35594)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!609 (LexerInterface!3379 List!21309 List!21307 Token!7084) Unit!35594)

(assert (=> b!1894212 (= lt!724785 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!609 thiss!23328 rules!3198 lt!724787 separatorToken!354))))

(declare-fun charsOf!2322 (Token!7084) BalanceConc!13950)

(assert (=> b!1894212 (= lt!724787 (list!8630 (charsOf!2322 separatorToken!354)))))

(declare-fun lt!724791 () Unit!35594)

(declare-fun lemmaEqSameImage!474 (TokenValueInjection!7388 BalanceConc!13950 BalanceConc!13950) Unit!35594)

(declare-fun seqFromList!2638 (List!21307) BalanceConc!13950)

(assert (=> b!1894212 (= lt!724791 (lemmaEqSameImage!474 (transformation!3766 (rule!5959 (h!26627 tokens!598))) lt!724789 (seqFromList!2638 (originalCharacters!4573 (h!26627 tokens!598)))))))

(declare-fun lt!724792 () Unit!35594)

(declare-fun lemmaSemiInverse!745 (TokenValueInjection!7388 BalanceConc!13950) Unit!35594)

(assert (=> b!1894212 (= lt!724792 (lemmaSemiInverse!745 (transformation!3766 (rule!5959 (h!26627 tokens!598))) lt!724789))))

(assert (=> b!1894212 (= lt!724789 (charsOf!2322 (h!26627 tokens!598)))))

(assert (=> b!1894213 (= e!1209179 (and tp!540428 tp!540426))))

(declare-fun b!1894214 () Bool)

(declare-fun res!845418 () Bool)

(assert (=> b!1894214 (=> (not res!845418) (not e!1209188))))

(declare-fun rulesProduceIndividualToken!1551 (LexerInterface!3379 List!21309 Token!7084) Bool)

(assert (=> b!1894214 (= res!845418 (rulesProduceIndividualToken!1551 thiss!23328 rules!3198 separatorToken!354))))

(assert (= (and start!189832 res!845417) b!1894207))

(assert (= (and b!1894207 res!845421) b!1894206))

(assert (= (and b!1894206 res!845423) b!1894203))

(assert (= (and b!1894203 res!845422) b!1894214))

(assert (= (and b!1894214 res!845418) b!1894199))

(assert (= (and b!1894199 res!845415) b!1894205))

(assert (= (and b!1894205 res!845419) b!1894196))

(assert (= (and b!1894196 res!845425) b!1894211))

(assert (= (and b!1894211 res!845424) b!1894212))

(assert (= (and b!1894212 res!845420) b!1894208))

(assert (= (and b!1894208 res!845416) b!1894197))

(assert (= b!1894201 b!1894204))

(assert (= b!1894198 b!1894201))

(assert (= (and start!189832 ((_ is Cons!21227) rules!3198)) b!1894198))

(assert (= b!1894202 b!1894200))

(assert (= b!1894210 b!1894202))

(assert (= b!1894195 b!1894210))

(assert (= (and start!189832 ((_ is Cons!21226) tokens!598)) b!1894195))

(assert (= b!1894209 b!1894213))

(assert (= b!1894194 b!1894209))

(assert (= start!189832 b!1894194))

(declare-fun m!2325647 () Bool)

(assert (=> start!189832 m!2325647))

(declare-fun m!2325649 () Bool)

(assert (=> b!1894214 m!2325649))

(declare-fun m!2325651 () Bool)

(assert (=> b!1894201 m!2325651))

(declare-fun m!2325653 () Bool)

(assert (=> b!1894201 m!2325653))

(declare-fun m!2325655 () Bool)

(assert (=> b!1894205 m!2325655))

(declare-fun m!2325657 () Bool)

(assert (=> b!1894208 m!2325657))

(declare-fun m!2325659 () Bool)

(assert (=> b!1894208 m!2325659))

(declare-fun m!2325661 () Bool)

(assert (=> b!1894207 m!2325661))

(declare-fun m!2325663 () Bool)

(assert (=> b!1894195 m!2325663))

(declare-fun m!2325665 () Bool)

(assert (=> b!1894206 m!2325665))

(declare-fun m!2325667 () Bool)

(assert (=> b!1894202 m!2325667))

(declare-fun m!2325669 () Bool)

(assert (=> b!1894202 m!2325669))

(declare-fun m!2325671 () Bool)

(assert (=> b!1894209 m!2325671))

(declare-fun m!2325673 () Bool)

(assert (=> b!1894209 m!2325673))

(declare-fun m!2325675 () Bool)

(assert (=> b!1894196 m!2325675))

(declare-fun m!2325677 () Bool)

(assert (=> b!1894194 m!2325677))

(declare-fun m!2325679 () Bool)

(assert (=> b!1894210 m!2325679))

(declare-fun m!2325681 () Bool)

(assert (=> b!1894212 m!2325681))

(declare-fun m!2325683 () Bool)

(assert (=> b!1894212 m!2325683))

(assert (=> b!1894212 m!2325683))

(declare-fun m!2325685 () Bool)

(assert (=> b!1894212 m!2325685))

(declare-fun m!2325687 () Bool)

(assert (=> b!1894212 m!2325687))

(declare-fun m!2325689 () Bool)

(assert (=> b!1894212 m!2325689))

(declare-fun m!2325691 () Bool)

(assert (=> b!1894212 m!2325691))

(declare-fun m!2325693 () Bool)

(assert (=> b!1894212 m!2325693))

(declare-fun m!2325695 () Bool)

(assert (=> b!1894212 m!2325695))

(assert (=> b!1894212 m!2325693))

(declare-fun m!2325697 () Bool)

(assert (=> b!1894212 m!2325697))

(declare-fun m!2325699 () Bool)

(assert (=> b!1894212 m!2325699))

(declare-fun m!2325701 () Bool)

(assert (=> b!1894203 m!2325701))

(check-sat (not b!1894206) (not b_next!53521) (not b!1894209) (not b!1894205) b_and!145895 (not b!1894194) (not b_next!53525) (not b!1894208) (not b_next!53531) (not b!1894212) (not b_next!53523) (not b!1894203) (not b_next!53527) (not start!189832) b_and!145887 b_and!145889 b_and!145893 (not b!1894207) (not b!1894195) (not b!1894201) (not b!1894210) b_and!145897 (not b!1894196) b_and!145891 (not b!1894202) (not b!1894214) (not b!1894198) (not b_next!53529))
(check-sat (not b_next!53521) b_and!145893 b_and!145895 (not b_next!53525) (not b_next!53531) (not b_next!53523) b_and!145897 b_and!145891 (not b_next!53527) b_and!145887 b_and!145889 (not b_next!53529))
