; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!271774 () Bool)

(assert start!271774)

(declare-fun b!2809186 () Bool)

(declare-fun b_free!80149 () Bool)

(declare-fun b_next!80853 () Bool)

(assert (=> b!2809186 (= b_free!80149 (not b_next!80853))))

(declare-fun tp!896875 () Bool)

(declare-fun b_and!205271 () Bool)

(assert (=> b!2809186 (= tp!896875 b_and!205271)))

(declare-fun b_free!80151 () Bool)

(declare-fun b_next!80855 () Bool)

(assert (=> b!2809186 (= b_free!80151 (not b_next!80855))))

(declare-fun tp!896879 () Bool)

(declare-fun b_and!205273 () Bool)

(assert (=> b!2809186 (= tp!896879 b_and!205273)))

(declare-fun b!2809190 () Bool)

(declare-fun b_free!80153 () Bool)

(declare-fun b_next!80857 () Bool)

(assert (=> b!2809190 (= b_free!80153 (not b_next!80857))))

(declare-fun tp!896876 () Bool)

(declare-fun b_and!205275 () Bool)

(assert (=> b!2809190 (= tp!896876 b_and!205275)))

(declare-fun b_free!80155 () Bool)

(declare-fun b_next!80859 () Bool)

(assert (=> b!2809190 (= b_free!80155 (not b_next!80859))))

(declare-fun tp!896874 () Bool)

(declare-fun b_and!205277 () Bool)

(assert (=> b!2809190 (= tp!896874 b_and!205277)))

(declare-fun e!1776453 () Bool)

(declare-fun e!1776458 () Bool)

(declare-fun b!2809181 () Bool)

(declare-fun tp!896878 () Bool)

(declare-datatypes ((List!32886 0))(
  ( (Nil!32786) (Cons!32786 (h!38206 (_ BitVec 16)) (t!229652 List!32886)) )
))
(declare-datatypes ((TokenValue!5132 0))(
  ( (FloatLiteralValue!10264 (text!36369 List!32886)) (TokenValueExt!5131 (__x!21921 Int)) (Broken!25660 (value!157820 List!32886)) (Object!5231) (End!5132) (Def!5132) (Underscore!5132) (Match!5132) (Else!5132) (Error!5132) (Case!5132) (If!5132) (Extends!5132) (Abstract!5132) (Class!5132) (Val!5132) (DelimiterValue!10264 (del!5192 List!32886)) (KeywordValue!5138 (value!157821 List!32886)) (CommentValue!10264 (value!157822 List!32886)) (WhitespaceValue!10264 (value!157823 List!32886)) (IndentationValue!5132 (value!157824 List!32886)) (String!35997) (Int32!5132) (Broken!25661 (value!157825 List!32886)) (Boolean!5133) (Unit!46814) (OperatorValue!5135 (op!5192 List!32886)) (IdentifierValue!10264 (value!157826 List!32886)) (IdentifierValue!10265 (value!157827 List!32886)) (WhitespaceValue!10265 (value!157828 List!32886)) (True!10264) (False!10264) (Broken!25662 (value!157829 List!32886)) (Broken!25663 (value!157830 List!32886)) (True!10265) (RightBrace!5132) (RightBracket!5132) (Colon!5132) (Null!5132) (Comma!5132) (LeftBracket!5132) (False!10265) (LeftBrace!5132) (ImaginaryLiteralValue!5132 (text!36370 List!32886)) (StringLiteralValue!15396 (value!157831 List!32886)) (EOFValue!5132 (value!157832 List!32886)) (IdentValue!5132 (value!157833 List!32886)) (DelimiterValue!10265 (value!157834 List!32886)) (DedentValue!5132 (value!157835 List!32886)) (NewLineValue!5132 (value!157836 List!32886)) (IntegerValue!15396 (value!157837 (_ BitVec 32)) (text!36371 List!32886)) (IntegerValue!15397 (value!157838 Int) (text!36372 List!32886)) (Times!5132) (Or!5132) (Equal!5132) (Minus!5132) (Broken!25664 (value!157839 List!32886)) (And!5132) (Div!5132) (LessEqual!5132) (Mod!5132) (Concat!13412) (Not!5132) (Plus!5132) (SpaceValue!5132 (value!157840 List!32886)) (IntegerValue!15398 (value!157841 Int) (text!36373 List!32886)) (StringLiteralValue!15397 (text!36374 List!32886)) (FloatLiteralValue!10265 (text!36375 List!32886)) (BytesLiteralValue!5132 (value!157842 List!32886)) (CommentValue!10265 (value!157843 List!32886)) (StringLiteralValue!15398 (value!157844 List!32886)) (ErrorTokenValue!5132 (msg!5193 List!32886)) )
))
(declare-datatypes ((String!35998 0))(
  ( (String!35999 (value!157845 String)) )
))
(declare-datatypes ((C!16718 0))(
  ( (C!16719 (val!10293 Int)) )
))
(declare-datatypes ((List!32887 0))(
  ( (Nil!32787) (Cons!32787 (h!38207 C!16718) (t!229653 List!32887)) )
))
(declare-datatypes ((IArray!20303 0))(
  ( (IArray!20304 (innerList!10209 List!32887)) )
))
(declare-datatypes ((Conc!10149 0))(
  ( (Node!10149 (left!24739 Conc!10149) (right!25069 Conc!10149) (csize!20528 Int) (cheight!10360 Int)) (Leaf!15458 (xs!13261 IArray!20303) (csize!20529 Int)) (Empty!10149) )
))
(declare-datatypes ((BalanceConc!19912 0))(
  ( (BalanceConc!19913 (c!455048 Conc!10149)) )
))
(declare-datatypes ((TokenValueInjection!9704 0))(
  ( (TokenValueInjection!9705 (toValue!6912 Int) (toChars!6771 Int)) )
))
(declare-datatypes ((Regex!8280 0))(
  ( (ElementMatch!8280 (c!455049 C!16718)) (Concat!13413 (regOne!17072 Regex!8280) (regTwo!17072 Regex!8280)) (EmptyExpr!8280) (Star!8280 (reg!8609 Regex!8280)) (EmptyLang!8280) (Union!8280 (regOne!17073 Regex!8280) (regTwo!17073 Regex!8280)) )
))
(declare-datatypes ((Rule!9620 0))(
  ( (Rule!9621 (regex!4910 Regex!8280) (tag!5414 String!35998) (isSeparator!4910 Bool) (transformation!4910 TokenValueInjection!9704)) )
))
(declare-datatypes ((Token!9222 0))(
  ( (Token!9223 (value!157846 TokenValue!5132) (rule!7338 Rule!9620) (size!25559 Int) (originalCharacters!5642 List!32887)) )
))
(declare-fun separatorToken!99 () Token!9222)

(declare-fun inv!44489 (String!35998) Bool)

(declare-fun inv!44492 (TokenValueInjection!9704) Bool)

(assert (=> b!2809181 (= e!1776458 (and tp!896878 (inv!44489 (tag!5414 (rule!7338 separatorToken!99))) (inv!44492 (transformation!4910 (rule!7338 separatorToken!99))) e!1776453))))

(declare-fun b!2809182 () Bool)

(declare-fun e!1776455 () Bool)

(declare-fun lt!1003663 () List!32887)

(assert (=> b!2809182 (= e!1776455 (= lt!1003663 Nil!32787))))

(declare-datatypes ((List!32888 0))(
  ( (Nil!32788) (Cons!32788 (h!38208 Token!9222) (t!229654 List!32888)) )
))
(declare-fun l!4240 () List!32888)

(declare-fun b!2809183 () Bool)

(declare-fun tp!896873 () Bool)

(declare-fun e!1776451 () Bool)

(declare-fun e!1776454 () Bool)

(declare-fun inv!44493 (Token!9222) Bool)

(assert (=> b!2809183 (= e!1776454 (and (inv!44493 (h!38208 l!4240)) e!1776451 tp!896873))))

(declare-fun b!2809184 () Bool)

(declare-fun e!1776450 () Bool)

(declare-fun lt!1003660 () List!32887)

(assert (=> b!2809184 (= e!1776450 (= lt!1003660 Nil!32787))))

(declare-fun res!1169886 () Bool)

(declare-fun e!1776456 () Bool)

(assert (=> start!271774 (=> (not res!1169886) (not e!1776456))))

(declare-datatypes ((LexerInterface!4501 0))(
  ( (LexerInterfaceExt!4498 (__x!21922 Int)) (Lexer!4499) )
))
(declare-fun thiss!13843 () LexerInterface!4501)

(assert (=> start!271774 (= res!1169886 (and (is-Lexer!4499 thiss!13843) (isSeparator!4910 (rule!7338 separatorToken!99)) (is-Cons!32788 l!4240)))))

(assert (=> start!271774 e!1776456))

(assert (=> start!271774 true))

(declare-fun e!1776452 () Bool)

(assert (=> start!271774 (and (inv!44493 separatorToken!99) e!1776452)))

(assert (=> start!271774 e!1776454))

(declare-fun e!1776457 () Bool)

(declare-fun tp!896877 () Bool)

(declare-fun b!2809185 () Bool)

(declare-fun inv!21 (TokenValue!5132) Bool)

(assert (=> b!2809185 (= e!1776451 (and (inv!21 (value!157846 (h!38208 l!4240))) e!1776457 tp!896877))))

(assert (=> b!2809186 (= e!1776453 (and tp!896875 tp!896879))))

(declare-fun b!2809187 () Bool)

(declare-fun lt!1003661 () List!32888)

(declare-fun ++!8050 (List!32887 List!32887) List!32887)

(declare-fun list!12276 (BalanceConc!19912) List!32887)

(declare-fun charsOf!3049 (Token!9222) BalanceConc!19912)

(declare-fun printList!1209 (LexerInterface!4501 List!32888) List!32887)

(assert (=> b!2809187 (= e!1776455 (= lt!1003663 (++!8050 (list!12276 (charsOf!3049 (h!38208 lt!1003661))) (printList!1209 thiss!13843 (t!229654 lt!1003661)))))))

(declare-fun b!2809188 () Bool)

(declare-fun tp!896880 () Bool)

(assert (=> b!2809188 (= e!1776452 (and (inv!21 (value!157846 separatorToken!99)) e!1776458 tp!896880))))

(declare-fun b!2809189 () Bool)

(declare-fun ListPrimitiveSize!210 (List!32888) Int)

(assert (=> b!2809189 (= e!1776456 (not (< (ListPrimitiveSize!210 (t!229654 l!4240)) (ListPrimitiveSize!210 l!4240))))))

(declare-fun lt!1003662 () List!32887)

(assert (=> b!2809189 (= lt!1003662 (list!12276 (charsOf!3049 separatorToken!99)))))

(declare-fun lt!1003659 () List!32887)

(assert (=> b!2809189 (= lt!1003659 (list!12276 (charsOf!3049 (h!38208 l!4240))))))

(assert (=> b!2809189 e!1776450))

(declare-fun c!455047 () Bool)

(declare-fun lt!1003664 () List!32888)

(assert (=> b!2809189 (= c!455047 (is-Cons!32788 lt!1003664))))

(assert (=> b!2809189 (= lt!1003660 (printList!1209 thiss!13843 lt!1003664))))

(assert (=> b!2809189 e!1776455))

(declare-fun c!455046 () Bool)

(assert (=> b!2809189 (= c!455046 (is-Cons!32788 lt!1003661))))

(assert (=> b!2809189 (= lt!1003663 (printList!1209 thiss!13843 lt!1003661))))

(declare-fun $colon$colon!557 (List!32888 Token!9222) List!32888)

(assert (=> b!2809189 (= lt!1003661 ($colon$colon!557 lt!1003664 (h!38208 l!4240)))))

(declare-fun withSeparatorTokenList!145 (LexerInterface!4501 List!32888 Token!9222) List!32888)

(assert (=> b!2809189 (= lt!1003664 ($colon$colon!557 (withSeparatorTokenList!145 thiss!13843 (t!229654 l!4240) separatorToken!99) separatorToken!99))))

(declare-fun e!1776459 () Bool)

(assert (=> b!2809190 (= e!1776459 (and tp!896876 tp!896874))))

(declare-fun tp!896881 () Bool)

(declare-fun b!2809191 () Bool)

(assert (=> b!2809191 (= e!1776457 (and tp!896881 (inv!44489 (tag!5414 (rule!7338 (h!38208 l!4240)))) (inv!44492 (transformation!4910 (rule!7338 (h!38208 l!4240)))) e!1776459))))

(declare-fun b!2809192 () Bool)

(assert (=> b!2809192 (= e!1776450 (= lt!1003660 (++!8050 (list!12276 (charsOf!3049 (h!38208 lt!1003664))) (printList!1209 thiss!13843 (t!229654 lt!1003664)))))))

(assert (= (and start!271774 res!1169886) b!2809189))

(assert (= (and b!2809189 c!455046) b!2809187))

(assert (= (and b!2809189 (not c!455046)) b!2809182))

(assert (= (and b!2809189 c!455047) b!2809192))

(assert (= (and b!2809189 (not c!455047)) b!2809184))

(assert (= b!2809181 b!2809186))

(assert (= b!2809188 b!2809181))

(assert (= start!271774 b!2809188))

(assert (= b!2809191 b!2809190))

(assert (= b!2809185 b!2809191))

(assert (= b!2809183 b!2809185))

(assert (= (and start!271774 (is-Cons!32788 l!4240)) b!2809183))

(declare-fun m!3238633 () Bool)

(assert (=> start!271774 m!3238633))

(declare-fun m!3238635 () Bool)

(assert (=> b!2809185 m!3238635))

(declare-fun m!3238637 () Bool)

(assert (=> b!2809191 m!3238637))

(declare-fun m!3238639 () Bool)

(assert (=> b!2809191 m!3238639))

(declare-fun m!3238641 () Bool)

(assert (=> b!2809189 m!3238641))

(declare-fun m!3238643 () Bool)

(assert (=> b!2809189 m!3238643))

(declare-fun m!3238645 () Bool)

(assert (=> b!2809189 m!3238645))

(declare-fun m!3238647 () Bool)

(assert (=> b!2809189 m!3238647))

(declare-fun m!3238649 () Bool)

(assert (=> b!2809189 m!3238649))

(assert (=> b!2809189 m!3238647))

(declare-fun m!3238651 () Bool)

(assert (=> b!2809189 m!3238651))

(declare-fun m!3238653 () Bool)

(assert (=> b!2809189 m!3238653))

(assert (=> b!2809189 m!3238643))

(declare-fun m!3238655 () Bool)

(assert (=> b!2809189 m!3238655))

(declare-fun m!3238657 () Bool)

(assert (=> b!2809189 m!3238657))

(declare-fun m!3238659 () Bool)

(assert (=> b!2809189 m!3238659))

(assert (=> b!2809189 m!3238655))

(declare-fun m!3238661 () Bool)

(assert (=> b!2809189 m!3238661))

(declare-fun m!3238663 () Bool)

(assert (=> b!2809183 m!3238663))

(declare-fun m!3238665 () Bool)

(assert (=> b!2809187 m!3238665))

(assert (=> b!2809187 m!3238665))

(declare-fun m!3238667 () Bool)

(assert (=> b!2809187 m!3238667))

(declare-fun m!3238669 () Bool)

(assert (=> b!2809187 m!3238669))

(assert (=> b!2809187 m!3238667))

(assert (=> b!2809187 m!3238669))

(declare-fun m!3238671 () Bool)

(assert (=> b!2809187 m!3238671))

(declare-fun m!3238673 () Bool)

(assert (=> b!2809181 m!3238673))

(declare-fun m!3238675 () Bool)

(assert (=> b!2809181 m!3238675))

(declare-fun m!3238677 () Bool)

(assert (=> b!2809192 m!3238677))

(assert (=> b!2809192 m!3238677))

(declare-fun m!3238679 () Bool)

(assert (=> b!2809192 m!3238679))

(declare-fun m!3238681 () Bool)

(assert (=> b!2809192 m!3238681))

(assert (=> b!2809192 m!3238679))

(assert (=> b!2809192 m!3238681))

(declare-fun m!3238683 () Bool)

(assert (=> b!2809192 m!3238683))

(declare-fun m!3238685 () Bool)

(assert (=> b!2809188 m!3238685))

(push 1)

(assert b_and!205275)

(assert (not b!2809183))

(assert b_and!205271)

(assert (not b!2809185))

(assert (not b!2809191))

(assert (not b_next!80855))

(assert (not b!2809187))

(assert (not b!2809192))

(assert (not b_next!80853))

(assert (not b_next!80859))

(assert (not b_next!80857))

(assert (not b!2809188))

(assert (not b!2809189))

(assert b_and!205273)

(assert (not b!2809181))

(assert (not start!271774))

(assert b_and!205277)

(check-sat)

(pop 1)

(push 1)

(assert b_and!205275)

(assert b_and!205271)

(assert b_and!205273)

(assert (not b_next!80855))

(assert (not b_next!80853))

(assert (not b_next!80859))

(assert b_and!205277)

(assert (not b_next!80857))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2809239 () Bool)

(declare-fun e!1776511 () Bool)

(declare-fun inv!15 (TokenValue!5132) Bool)

(assert (=> b!2809239 (= e!1776511 (inv!15 (value!157846 (h!38208 l!4240))))))

(declare-fun b!2809240 () Bool)

(declare-fun e!1776510 () Bool)

(declare-fun e!1776509 () Bool)

(assert (=> b!2809240 (= e!1776510 e!1776509)))

(declare-fun c!455062 () Bool)

(assert (=> b!2809240 (= c!455062 (is-IntegerValue!15397 (value!157846 (h!38208 l!4240))))))

(declare-fun b!2809241 () Bool)

(declare-fun res!1169901 () Bool)

(assert (=> b!2809241 (=> res!1169901 e!1776511)))

(assert (=> b!2809241 (= res!1169901 (not (is-IntegerValue!15398 (value!157846 (h!38208 l!4240)))))))

(assert (=> b!2809241 (= e!1776509 e!1776511)))

(declare-fun b!2809242 () Bool)

(declare-fun inv!17 (TokenValue!5132) Bool)

(assert (=> b!2809242 (= e!1776509 (inv!17 (value!157846 (h!38208 l!4240))))))

(declare-fun d!815405 () Bool)

(declare-fun c!455063 () Bool)

(assert (=> d!815405 (= c!455063 (is-IntegerValue!15396 (value!157846 (h!38208 l!4240))))))

(assert (=> d!815405 (= (inv!21 (value!157846 (h!38208 l!4240))) e!1776510)))

(declare-fun b!2809243 () Bool)

(declare-fun inv!16 (TokenValue!5132) Bool)

(assert (=> b!2809243 (= e!1776510 (inv!16 (value!157846 (h!38208 l!4240))))))

(assert (= (and d!815405 c!455063) b!2809243))

(assert (= (and d!815405 (not c!455063)) b!2809240))

(assert (= (and b!2809240 c!455062) b!2809242))

(assert (= (and b!2809240 (not c!455062)) b!2809241))

(assert (= (and b!2809241 (not res!1169901)) b!2809239))

(declare-fun m!3238741 () Bool)

(assert (=> b!2809239 m!3238741))

(declare-fun m!3238743 () Bool)

(assert (=> b!2809242 m!3238743))

(declare-fun m!3238745 () Bool)

(assert (=> b!2809243 m!3238745))

(assert (=> b!2809185 d!815405))

(declare-fun d!815407 () Bool)

(assert (=> d!815407 (= (inv!44489 (tag!5414 (rule!7338 (h!38208 l!4240)))) (= (mod (str.len (value!157845 (tag!5414 (rule!7338 (h!38208 l!4240))))) 2) 0))))

(assert (=> b!2809191 d!815407))

(declare-fun d!815409 () Bool)

(declare-fun res!1169904 () Bool)

(declare-fun e!1776514 () Bool)

(assert (=> d!815409 (=> (not res!1169904) (not e!1776514))))

(declare-fun semiInverseModEq!2029 (Int Int) Bool)

(assert (=> d!815409 (= res!1169904 (semiInverseModEq!2029 (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240)))) (toValue!6912 (transformation!4910 (rule!7338 (h!38208 l!4240))))))))

(assert (=> d!815409 (= (inv!44492 (transformation!4910 (rule!7338 (h!38208 l!4240)))) e!1776514)))

(declare-fun b!2809246 () Bool)

(declare-fun equivClasses!1930 (Int Int) Bool)

(assert (=> b!2809246 (= e!1776514 (equivClasses!1930 (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240)))) (toValue!6912 (transformation!4910 (rule!7338 (h!38208 l!4240))))))))

(assert (= (and d!815409 res!1169904) b!2809246))

(declare-fun m!3238747 () Bool)

(assert (=> d!815409 m!3238747))

(declare-fun m!3238749 () Bool)

(assert (=> b!2809246 m!3238749))

(assert (=> b!2809191 d!815409))

(declare-fun d!815411 () Bool)

(assert (=> d!815411 (= ($colon$colon!557 (withSeparatorTokenList!145 thiss!13843 (t!229654 l!4240) separatorToken!99) separatorToken!99) (Cons!32788 separatorToken!99 (withSeparatorTokenList!145 thiss!13843 (t!229654 l!4240) separatorToken!99)))))

(assert (=> b!2809189 d!815411))

(declare-fun d!815413 () Bool)

(declare-fun list!12278 (Conc!10149) List!32887)

(assert (=> d!815413 (= (list!12276 (charsOf!3049 (h!38208 l!4240))) (list!12278 (c!455048 (charsOf!3049 (h!38208 l!4240)))))))

(declare-fun bs!516313 () Bool)

(assert (= bs!516313 d!815413))

(declare-fun m!3238751 () Bool)

(assert (=> bs!516313 m!3238751))

(assert (=> b!2809189 d!815413))

(declare-fun d!815417 () Bool)

(declare-fun lt!1003685 () Int)

(assert (=> d!815417 (>= lt!1003685 0)))

(declare-fun e!1776517 () Int)

(assert (=> d!815417 (= lt!1003685 e!1776517)))

(declare-fun c!455066 () Bool)

(assert (=> d!815417 (= c!455066 (is-Nil!32788 l!4240))))

(assert (=> d!815417 (= (ListPrimitiveSize!210 l!4240) lt!1003685)))

(declare-fun b!2809251 () Bool)

(assert (=> b!2809251 (= e!1776517 0)))

(declare-fun b!2809252 () Bool)

(assert (=> b!2809252 (= e!1776517 (+ 1 (ListPrimitiveSize!210 (t!229654 l!4240))))))

(assert (= (and d!815417 c!455066) b!2809251))

(assert (= (and d!815417 (not c!455066)) b!2809252))

(assert (=> b!2809252 m!3238659))

(assert (=> b!2809189 d!815417))

(declare-fun d!815421 () Bool)

(declare-fun lt!1003686 () Int)

(assert (=> d!815421 (>= lt!1003686 0)))

(declare-fun e!1776518 () Int)

(assert (=> d!815421 (= lt!1003686 e!1776518)))

(declare-fun c!455067 () Bool)

(assert (=> d!815421 (= c!455067 (is-Nil!32788 (t!229654 l!4240)))))

(assert (=> d!815421 (= (ListPrimitiveSize!210 (t!229654 l!4240)) lt!1003686)))

(declare-fun b!2809253 () Bool)

(assert (=> b!2809253 (= e!1776518 0)))

(declare-fun b!2809254 () Bool)

(assert (=> b!2809254 (= e!1776518 (+ 1 (ListPrimitiveSize!210 (t!229654 (t!229654 l!4240)))))))

(assert (= (and d!815421 c!455067) b!2809253))

(assert (= (and d!815421 (not c!455067)) b!2809254))

(declare-fun m!3238753 () Bool)

(assert (=> b!2809254 m!3238753))

(assert (=> b!2809189 d!815421))

(declare-fun d!815423 () Bool)

(declare-fun c!455070 () Bool)

(assert (=> d!815423 (= c!455070 (is-Cons!32788 lt!1003664))))

(declare-fun e!1776524 () List!32887)

(assert (=> d!815423 (= (printList!1209 thiss!13843 lt!1003664) e!1776524)))

(declare-fun b!2809262 () Bool)

(assert (=> b!2809262 (= e!1776524 (++!8050 (list!12276 (charsOf!3049 (h!38208 lt!1003664))) (printList!1209 thiss!13843 (t!229654 lt!1003664))))))

(declare-fun b!2809263 () Bool)

(assert (=> b!2809263 (= e!1776524 Nil!32787)))

(assert (= (and d!815423 c!455070) b!2809262))

(assert (= (and d!815423 (not c!455070)) b!2809263))

(assert (=> b!2809262 m!3238677))

(assert (=> b!2809262 m!3238677))

(assert (=> b!2809262 m!3238679))

(assert (=> b!2809262 m!3238681))

(assert (=> b!2809262 m!3238679))

(assert (=> b!2809262 m!3238681))

(assert (=> b!2809262 m!3238683))

(assert (=> b!2809189 d!815423))

(declare-fun b!2809314 () Bool)

(declare-fun e!1776555 () List!32887)

(assert (=> b!2809314 (= e!1776555 Nil!32787)))

(declare-fun b!2809315 () Bool)

(declare-fun res!1169930 () Bool)

(declare-fun e!1776554 () Bool)

(assert (=> b!2809315 (=> (not res!1169930) (not e!1776554))))

(declare-fun e!1776557 () Bool)

(assert (=> b!2809315 (= res!1169930 e!1776557)))

(declare-fun res!1169928 () Bool)

(assert (=> b!2809315 (=> res!1169928 e!1776557)))

(assert (=> b!2809315 (= res!1169928 (not (is-Cons!32788 (t!229654 l!4240))))))

(declare-fun e!1776558 () List!32888)

(declare-fun b!2809316 () Bool)

(assert (=> b!2809316 (= e!1776558 ($colon$colon!557 ($colon$colon!557 (withSeparatorTokenList!145 thiss!13843 (t!229654 (t!229654 l!4240)) separatorToken!99) separatorToken!99) (h!38208 (t!229654 l!4240))))))

(declare-fun lt!1003710 () List!32887)

(assert (=> b!2809316 (= lt!1003710 (list!12276 (charsOf!3049 (h!38208 (t!229654 l!4240)))))))

(declare-fun lt!1003709 () List!32887)

(assert (=> b!2809316 (= lt!1003709 (list!12276 (charsOf!3049 separatorToken!99)))))

(declare-fun lt!1003712 () List!32887)

(assert (=> b!2809316 (= lt!1003712 (printList!1209 thiss!13843 (withSeparatorTokenList!145 thiss!13843 (t!229654 (t!229654 l!4240)) separatorToken!99)))))

(declare-datatypes ((Unit!46816 0))(
  ( (Unit!46817) )
))
(declare-fun lt!1003711 () Unit!46816)

(declare-fun lemmaConcatAssociativity!1661 (List!32887 List!32887 List!32887) Unit!46816)

(assert (=> b!2809316 (= lt!1003711 (lemmaConcatAssociativity!1661 lt!1003710 lt!1003709 lt!1003712))))

(assert (=> b!2809316 (= (++!8050 (++!8050 lt!1003710 lt!1003709) lt!1003712) (++!8050 lt!1003710 (++!8050 lt!1003709 lt!1003712)))))

(declare-fun lt!1003716 () Unit!46816)

(assert (=> b!2809316 (= lt!1003716 lt!1003711)))

(declare-fun b!2809317 () Bool)

(declare-fun e!1776553 () Bool)

(assert (=> b!2809317 (= e!1776554 e!1776553)))

(declare-fun res!1169931 () Bool)

(assert (=> b!2809317 (=> res!1169931 e!1776553)))

(assert (=> b!2809317 (= res!1169931 (not (is-Cons!32788 (t!229654 l!4240))))))

(declare-fun lt!1003715 () List!32888)

(declare-fun d!815427 () Bool)

(declare-fun printWithSeparatorTokenList!79 (LexerInterface!4501 List!32888 Token!9222) List!32887)

(assert (=> d!815427 (= (printList!1209 thiss!13843 lt!1003715) (printWithSeparatorTokenList!79 thiss!13843 (t!229654 l!4240) separatorToken!99))))

(assert (=> d!815427 (= lt!1003715 e!1776558)))

(declare-fun c!455083 () Bool)

(assert (=> d!815427 (= c!455083 (is-Cons!32788 (t!229654 l!4240)))))

(assert (=> d!815427 e!1776554))

(declare-fun res!1169929 () Bool)

(assert (=> d!815427 (=> (not res!1169929) (not e!1776554))))

(assert (=> d!815427 (= res!1169929 (isSeparator!4910 (rule!7338 separatorToken!99)))))

(assert (=> d!815427 (= (withSeparatorTokenList!145 thiss!13843 (t!229654 l!4240) separatorToken!99) lt!1003715)))

(declare-fun b!2809318 () Bool)

(assert (=> b!2809318 (= e!1776553 (= (printList!1209 thiss!13843 ($colon$colon!557 (withSeparatorTokenList!145 thiss!13843 (t!229654 (t!229654 l!4240)) separatorToken!99) separatorToken!99)) e!1776555))))

(declare-fun c!455084 () Bool)

(declare-fun lt!1003714 () List!32888)

(assert (=> b!2809318 (= c!455084 (is-Cons!32788 lt!1003714))))

(assert (=> b!2809318 (= lt!1003714 ($colon$colon!557 (withSeparatorTokenList!145 thiss!13843 (t!229654 (t!229654 l!4240)) separatorToken!99) separatorToken!99))))

(declare-fun b!2809319 () Bool)

(declare-fun e!1776556 () List!32887)

(assert (=> b!2809319 (= e!1776557 (= (printList!1209 thiss!13843 ($colon$colon!557 ($colon$colon!557 (withSeparatorTokenList!145 thiss!13843 (t!229654 (t!229654 l!4240)) separatorToken!99) separatorToken!99) (h!38208 (t!229654 l!4240)))) e!1776556))))

(declare-fun c!455085 () Bool)

(declare-fun lt!1003713 () List!32888)

(assert (=> b!2809319 (= c!455085 (is-Cons!32788 lt!1003713))))

(assert (=> b!2809319 (= lt!1003713 ($colon$colon!557 ($colon$colon!557 (withSeparatorTokenList!145 thiss!13843 (t!229654 (t!229654 l!4240)) separatorToken!99) separatorToken!99) (h!38208 (t!229654 l!4240))))))

(declare-fun b!2809320 () Bool)

(assert (=> b!2809320 (= e!1776556 Nil!32787)))

(declare-fun b!2809321 () Bool)

(assert (=> b!2809321 (= e!1776556 (++!8050 (list!12276 (charsOf!3049 (h!38208 lt!1003713))) (printList!1209 thiss!13843 (t!229654 lt!1003713))))))

(declare-fun b!2809322 () Bool)

(assert (=> b!2809322 (= e!1776558 Nil!32788)))

(declare-fun b!2809323 () Bool)

(assert (=> b!2809323 (= e!1776555 (++!8050 (list!12276 (charsOf!3049 (h!38208 lt!1003714))) (printList!1209 thiss!13843 (t!229654 lt!1003714))))))

(assert (= (and d!815427 res!1169929) b!2809315))

(assert (= (and b!2809315 (not res!1169928)) b!2809319))

(assert (= (and b!2809319 c!455085) b!2809321))

(assert (= (and b!2809319 (not c!455085)) b!2809320))

(assert (= (and b!2809315 res!1169930) b!2809317))

(assert (= (and b!2809317 (not res!1169931)) b!2809318))

(assert (= (and b!2809318 c!455084) b!2809323))

(assert (= (and b!2809318 (not c!455084)) b!2809314))

(assert (= (and d!815427 c!455083) b!2809316))

(assert (= (and d!815427 (not c!455083)) b!2809322))

(declare-fun m!3238803 () Bool)

(assert (=> b!2809321 m!3238803))

(assert (=> b!2809321 m!3238803))

(declare-fun m!3238805 () Bool)

(assert (=> b!2809321 m!3238805))

(declare-fun m!3238807 () Bool)

(assert (=> b!2809321 m!3238807))

(assert (=> b!2809321 m!3238805))

(assert (=> b!2809321 m!3238807))

(declare-fun m!3238809 () Bool)

(assert (=> b!2809321 m!3238809))

(declare-fun m!3238811 () Bool)

(assert (=> b!2809319 m!3238811))

(assert (=> b!2809319 m!3238811))

(declare-fun m!3238813 () Bool)

(assert (=> b!2809319 m!3238813))

(assert (=> b!2809319 m!3238813))

(declare-fun m!3238815 () Bool)

(assert (=> b!2809319 m!3238815))

(assert (=> b!2809319 m!3238815))

(declare-fun m!3238817 () Bool)

(assert (=> b!2809319 m!3238817))

(declare-fun m!3238819 () Bool)

(assert (=> b!2809316 m!3238819))

(declare-fun m!3238821 () Bool)

(assert (=> b!2809316 m!3238821))

(declare-fun m!3238823 () Bool)

(assert (=> b!2809316 m!3238823))

(assert (=> b!2809316 m!3238811))

(declare-fun m!3238825 () Bool)

(assert (=> b!2809316 m!3238825))

(declare-fun m!3238827 () Bool)

(assert (=> b!2809316 m!3238827))

(assert (=> b!2809316 m!3238643))

(assert (=> b!2809316 m!3238645))

(assert (=> b!2809316 m!3238813))

(assert (=> b!2809316 m!3238815))

(assert (=> b!2809316 m!3238811))

(assert (=> b!2809316 m!3238813))

(declare-fun m!3238829 () Bool)

(assert (=> b!2809316 m!3238829))

(assert (=> b!2809316 m!3238643))

(assert (=> b!2809316 m!3238811))

(assert (=> b!2809316 m!3238821))

(assert (=> b!2809316 m!3238819))

(declare-fun m!3238831 () Bool)

(assert (=> b!2809316 m!3238831))

(assert (=> b!2809316 m!3238827))

(declare-fun m!3238833 () Bool)

(assert (=> b!2809316 m!3238833))

(declare-fun m!3238835 () Bool)

(assert (=> d!815427 m!3238835))

(declare-fun m!3238837 () Bool)

(assert (=> d!815427 m!3238837))

(assert (=> b!2809318 m!3238811))

(assert (=> b!2809318 m!3238811))

(assert (=> b!2809318 m!3238813))

(assert (=> b!2809318 m!3238813))

(declare-fun m!3238839 () Bool)

(assert (=> b!2809318 m!3238839))

(declare-fun m!3238841 () Bool)

(assert (=> b!2809323 m!3238841))

(assert (=> b!2809323 m!3238841))

(declare-fun m!3238843 () Bool)

(assert (=> b!2809323 m!3238843))

(declare-fun m!3238845 () Bool)

(assert (=> b!2809323 m!3238845))

(assert (=> b!2809323 m!3238843))

(assert (=> b!2809323 m!3238845))

(declare-fun m!3238847 () Bool)

(assert (=> b!2809323 m!3238847))

(assert (=> b!2809189 d!815427))

(declare-fun d!815439 () Bool)

(declare-fun lt!1003719 () BalanceConc!19912)

(assert (=> d!815439 (= (list!12276 lt!1003719) (originalCharacters!5642 (h!38208 l!4240)))))

(declare-fun dynLambda!13726 (Int TokenValue!5132) BalanceConc!19912)

(assert (=> d!815439 (= lt!1003719 (dynLambda!13726 (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240)))) (value!157846 (h!38208 l!4240))))))

(assert (=> d!815439 (= (charsOf!3049 (h!38208 l!4240)) lt!1003719)))

(declare-fun b_lambda!84053 () Bool)

(assert (=> (not b_lambda!84053) (not d!815439)))

(declare-fun tb!153505 () Bool)

(declare-fun t!229672 () Bool)

(assert (=> (and b!2809186 (= (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99))) (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240))))) t!229672) tb!153505))

(declare-fun b!2809351 () Bool)

(declare-fun e!1776575 () Bool)

(declare-fun tp!896916 () Bool)

(declare-fun inv!44496 (Conc!10149) Bool)

(assert (=> b!2809351 (= e!1776575 (and (inv!44496 (c!455048 (dynLambda!13726 (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240)))) (value!157846 (h!38208 l!4240))))) tp!896916))))

(declare-fun result!190794 () Bool)

(declare-fun inv!44497 (BalanceConc!19912) Bool)

(assert (=> tb!153505 (= result!190794 (and (inv!44497 (dynLambda!13726 (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240)))) (value!157846 (h!38208 l!4240)))) e!1776575))))

(assert (= tb!153505 b!2809351))

(declare-fun m!3238877 () Bool)

(assert (=> b!2809351 m!3238877))

(declare-fun m!3238881 () Bool)

(assert (=> tb!153505 m!3238881))

(assert (=> d!815439 t!229672))

(declare-fun b_and!205299 () Bool)

(assert (= b_and!205273 (and (=> t!229672 result!190794) b_and!205299)))

(declare-fun t!229674 () Bool)

(declare-fun tb!153507 () Bool)

(assert (=> (and b!2809190 (= (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240)))) (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240))))) t!229674) tb!153507))

(declare-fun result!190798 () Bool)

(assert (= result!190798 result!190794))

(assert (=> d!815439 t!229674))

(declare-fun b_and!205301 () Bool)

(assert (= b_and!205277 (and (=> t!229674 result!190798) b_and!205301)))

(declare-fun m!3238889 () Bool)

(assert (=> d!815439 m!3238889))

(declare-fun m!3238891 () Bool)

(assert (=> d!815439 m!3238891))

(assert (=> b!2809189 d!815439))

(declare-fun d!815451 () Bool)

(assert (=> d!815451 (= (list!12276 (charsOf!3049 separatorToken!99)) (list!12278 (c!455048 (charsOf!3049 separatorToken!99))))))

(declare-fun bs!516316 () Bool)

(assert (= bs!516316 d!815451))

(declare-fun m!3238895 () Bool)

(assert (=> bs!516316 m!3238895))

(assert (=> b!2809189 d!815451))

(declare-fun d!815455 () Bool)

(declare-fun lt!1003722 () BalanceConc!19912)

(assert (=> d!815455 (= (list!12276 lt!1003722) (originalCharacters!5642 separatorToken!99))))

(assert (=> d!815455 (= lt!1003722 (dynLambda!13726 (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99))) (value!157846 separatorToken!99)))))

(assert (=> d!815455 (= (charsOf!3049 separatorToken!99) lt!1003722)))

(declare-fun b_lambda!84057 () Bool)

(assert (=> (not b_lambda!84057) (not d!815455)))

(declare-fun t!229676 () Bool)

(declare-fun tb!153509 () Bool)

(assert (=> (and b!2809186 (= (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99))) (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99)))) t!229676) tb!153509))

(declare-fun b!2809352 () Bool)

(declare-fun e!1776576 () Bool)

(declare-fun tp!896917 () Bool)

(assert (=> b!2809352 (= e!1776576 (and (inv!44496 (c!455048 (dynLambda!13726 (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99))) (value!157846 separatorToken!99)))) tp!896917))))

(declare-fun result!190800 () Bool)

(assert (=> tb!153509 (= result!190800 (and (inv!44497 (dynLambda!13726 (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99))) (value!157846 separatorToken!99))) e!1776576))))

(assert (= tb!153509 b!2809352))

(declare-fun m!3238897 () Bool)

(assert (=> b!2809352 m!3238897))

(declare-fun m!3238899 () Bool)

(assert (=> tb!153509 m!3238899))

(assert (=> d!815455 t!229676))

(declare-fun b_and!205303 () Bool)

(assert (= b_and!205299 (and (=> t!229676 result!190800) b_and!205303)))

(declare-fun t!229680 () Bool)

(declare-fun tb!153513 () Bool)

(assert (=> (and b!2809190 (= (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240)))) (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99)))) t!229680) tb!153513))

(declare-fun result!190804 () Bool)

(assert (= result!190804 result!190800))

(assert (=> d!815455 t!229680))

(declare-fun b_and!205305 () Bool)

(assert (= b_and!205301 (and (=> t!229680 result!190804) b_and!205305)))

(declare-fun m!3238901 () Bool)

(assert (=> d!815455 m!3238901))

(declare-fun m!3238905 () Bool)

(assert (=> d!815455 m!3238905))

(assert (=> b!2809189 d!815455))

(declare-fun d!815457 () Bool)

(declare-fun c!455093 () Bool)

(assert (=> d!815457 (= c!455093 (is-Cons!32788 lt!1003661))))

(declare-fun e!1776578 () List!32887)

(assert (=> d!815457 (= (printList!1209 thiss!13843 lt!1003661) e!1776578)))

(declare-fun b!2809354 () Bool)

(assert (=> b!2809354 (= e!1776578 (++!8050 (list!12276 (charsOf!3049 (h!38208 lt!1003661))) (printList!1209 thiss!13843 (t!229654 lt!1003661))))))

(declare-fun b!2809355 () Bool)

(assert (=> b!2809355 (= e!1776578 Nil!32787)))

(assert (= (and d!815457 c!455093) b!2809354))

(assert (= (and d!815457 (not c!455093)) b!2809355))

(assert (=> b!2809354 m!3238665))

(assert (=> b!2809354 m!3238665))

(assert (=> b!2809354 m!3238667))

(assert (=> b!2809354 m!3238669))

(assert (=> b!2809354 m!3238667))

(assert (=> b!2809354 m!3238669))

(assert (=> b!2809354 m!3238671))

(assert (=> b!2809189 d!815457))

(declare-fun d!815461 () Bool)

(assert (=> d!815461 (= ($colon$colon!557 lt!1003664 (h!38208 l!4240)) (Cons!32788 (h!38208 l!4240) lt!1003664))))

(assert (=> b!2809189 d!815461))

(declare-fun b!2809358 () Bool)

(declare-fun e!1776582 () Bool)

(assert (=> b!2809358 (= e!1776582 (inv!15 (value!157846 separatorToken!99)))))

(declare-fun b!2809359 () Bool)

(declare-fun e!1776581 () Bool)

(declare-fun e!1776580 () Bool)

(assert (=> b!2809359 (= e!1776581 e!1776580)))

(declare-fun c!455095 () Bool)

(assert (=> b!2809359 (= c!455095 (is-IntegerValue!15397 (value!157846 separatorToken!99)))))

(declare-fun b!2809360 () Bool)

(declare-fun res!1169940 () Bool)

(assert (=> b!2809360 (=> res!1169940 e!1776582)))

(assert (=> b!2809360 (= res!1169940 (not (is-IntegerValue!15398 (value!157846 separatorToken!99))))))

(assert (=> b!2809360 (= e!1776580 e!1776582)))

(declare-fun b!2809361 () Bool)

(assert (=> b!2809361 (= e!1776580 (inv!17 (value!157846 separatorToken!99)))))

(declare-fun d!815463 () Bool)

(declare-fun c!455096 () Bool)

(assert (=> d!815463 (= c!455096 (is-IntegerValue!15396 (value!157846 separatorToken!99)))))

(assert (=> d!815463 (= (inv!21 (value!157846 separatorToken!99)) e!1776581)))

(declare-fun b!2809362 () Bool)

(assert (=> b!2809362 (= e!1776581 (inv!16 (value!157846 separatorToken!99)))))

(assert (= (and d!815463 c!455096) b!2809362))

(assert (= (and d!815463 (not c!455096)) b!2809359))

(assert (= (and b!2809359 c!455095) b!2809361))

(assert (= (and b!2809359 (not c!455095)) b!2809360))

(assert (= (and b!2809360 (not res!1169940)) b!2809358))

(declare-fun m!3238921 () Bool)

(assert (=> b!2809358 m!3238921))

(declare-fun m!3238923 () Bool)

(assert (=> b!2809361 m!3238923))

(declare-fun m!3238925 () Bool)

(assert (=> b!2809362 m!3238925))

(assert (=> b!2809188 d!815463))

(declare-fun d!815467 () Bool)

(declare-fun res!1169946 () Bool)

(declare-fun e!1776590 () Bool)

(assert (=> d!815467 (=> (not res!1169946) (not e!1776590))))

(declare-fun isEmpty!18209 (List!32887) Bool)

(assert (=> d!815467 (= res!1169946 (not (isEmpty!18209 (originalCharacters!5642 separatorToken!99))))))

(assert (=> d!815467 (= (inv!44493 separatorToken!99) e!1776590)))

(declare-fun b!2809376 () Bool)

(declare-fun res!1169947 () Bool)

(assert (=> b!2809376 (=> (not res!1169947) (not e!1776590))))

(assert (=> b!2809376 (= res!1169947 (= (originalCharacters!5642 separatorToken!99) (list!12276 (dynLambda!13726 (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99))) (value!157846 separatorToken!99)))))))

(declare-fun b!2809377 () Bool)

(declare-fun size!25562 (List!32887) Int)

(assert (=> b!2809377 (= e!1776590 (= (size!25559 separatorToken!99) (size!25562 (originalCharacters!5642 separatorToken!99))))))

(assert (= (and d!815467 res!1169946) b!2809376))

(assert (= (and b!2809376 res!1169947) b!2809377))

(declare-fun b_lambda!84059 () Bool)

(assert (=> (not b_lambda!84059) (not b!2809376)))

(assert (=> b!2809376 t!229676))

(declare-fun b_and!205311 () Bool)

(assert (= b_and!205303 (and (=> t!229676 result!190800) b_and!205311)))

(assert (=> b!2809376 t!229680))

(declare-fun b_and!205313 () Bool)

(assert (= b_and!205305 (and (=> t!229680 result!190804) b_and!205313)))

(declare-fun m!3238935 () Bool)

(assert (=> d!815467 m!3238935))

(assert (=> b!2809376 m!3238905))

(assert (=> b!2809376 m!3238905))

(declare-fun m!3238937 () Bool)

(assert (=> b!2809376 m!3238937))

(declare-fun m!3238939 () Bool)

(assert (=> b!2809377 m!3238939))

(assert (=> start!271774 d!815467))

(declare-fun d!815475 () Bool)

(declare-fun res!1169948 () Bool)

(declare-fun e!1776591 () Bool)

(assert (=> d!815475 (=> (not res!1169948) (not e!1776591))))

(assert (=> d!815475 (= res!1169948 (not (isEmpty!18209 (originalCharacters!5642 (h!38208 l!4240)))))))

(assert (=> d!815475 (= (inv!44493 (h!38208 l!4240)) e!1776591)))

(declare-fun b!2809378 () Bool)

(declare-fun res!1169949 () Bool)

(assert (=> b!2809378 (=> (not res!1169949) (not e!1776591))))

(assert (=> b!2809378 (= res!1169949 (= (originalCharacters!5642 (h!38208 l!4240)) (list!12276 (dynLambda!13726 (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240)))) (value!157846 (h!38208 l!4240))))))))

(declare-fun b!2809379 () Bool)

(assert (=> b!2809379 (= e!1776591 (= (size!25559 (h!38208 l!4240)) (size!25562 (originalCharacters!5642 (h!38208 l!4240)))))))

(assert (= (and d!815475 res!1169948) b!2809378))

(assert (= (and b!2809378 res!1169949) b!2809379))

(declare-fun b_lambda!84061 () Bool)

(assert (=> (not b_lambda!84061) (not b!2809378)))

(assert (=> b!2809378 t!229672))

(declare-fun b_and!205315 () Bool)

(assert (= b_and!205311 (and (=> t!229672 result!190794) b_and!205315)))

(assert (=> b!2809378 t!229674))

(declare-fun b_and!205317 () Bool)

(assert (= b_and!205313 (and (=> t!229674 result!190798) b_and!205317)))

(declare-fun m!3238941 () Bool)

(assert (=> d!815475 m!3238941))

(assert (=> b!2809378 m!3238891))

(assert (=> b!2809378 m!3238891))

(declare-fun m!3238943 () Bool)

(assert (=> b!2809378 m!3238943))

(declare-fun m!3238945 () Bool)

(assert (=> b!2809379 m!3238945))

(assert (=> b!2809183 d!815475))

(declare-fun d!815477 () Bool)

(assert (=> d!815477 (= (inv!44489 (tag!5414 (rule!7338 separatorToken!99))) (= (mod (str.len (value!157845 (tag!5414 (rule!7338 separatorToken!99)))) 2) 0))))

(assert (=> b!2809181 d!815477))

(declare-fun d!815479 () Bool)

(declare-fun res!1169950 () Bool)

(declare-fun e!1776593 () Bool)

(assert (=> d!815479 (=> (not res!1169950) (not e!1776593))))

(assert (=> d!815479 (= res!1169950 (semiInverseModEq!2029 (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99))) (toValue!6912 (transformation!4910 (rule!7338 separatorToken!99)))))))

(assert (=> d!815479 (= (inv!44492 (transformation!4910 (rule!7338 separatorToken!99))) e!1776593)))

(declare-fun b!2809382 () Bool)

(assert (=> b!2809382 (= e!1776593 (equivClasses!1930 (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99))) (toValue!6912 (transformation!4910 (rule!7338 separatorToken!99)))))))

(assert (= (and d!815479 res!1169950) b!2809382))

(declare-fun m!3238947 () Bool)

(assert (=> d!815479 m!3238947))

(declare-fun m!3238949 () Bool)

(assert (=> b!2809382 m!3238949))

(assert (=> b!2809181 d!815479))

(declare-fun b!2809398 () Bool)

(declare-fun e!1776601 () List!32887)

(assert (=> b!2809398 (= e!1776601 (Cons!32787 (h!38207 (list!12276 (charsOf!3049 (h!38208 lt!1003664)))) (++!8050 (t!229653 (list!12276 (charsOf!3049 (h!38208 lt!1003664)))) (printList!1209 thiss!13843 (t!229654 lt!1003664)))))))

(declare-fun d!815483 () Bool)

(declare-fun e!1776602 () Bool)

(assert (=> d!815483 e!1776602))

(declare-fun res!1169956 () Bool)

(assert (=> d!815483 (=> (not res!1169956) (not e!1776602))))

(declare-fun lt!1003729 () List!32887)

(declare-fun content!4563 (List!32887) (Set C!16718))

(assert (=> d!815483 (= res!1169956 (= (content!4563 lt!1003729) (set.union (content!4563 (list!12276 (charsOf!3049 (h!38208 lt!1003664)))) (content!4563 (printList!1209 thiss!13843 (t!229654 lt!1003664))))))))

(assert (=> d!815483 (= lt!1003729 e!1776601)))

(declare-fun c!455107 () Bool)

(assert (=> d!815483 (= c!455107 (is-Nil!32787 (list!12276 (charsOf!3049 (h!38208 lt!1003664)))))))

(assert (=> d!815483 (= (++!8050 (list!12276 (charsOf!3049 (h!38208 lt!1003664))) (printList!1209 thiss!13843 (t!229654 lt!1003664))) lt!1003729)))

(declare-fun b!2809400 () Bool)

(assert (=> b!2809400 (= e!1776602 (or (not (= (printList!1209 thiss!13843 (t!229654 lt!1003664)) Nil!32787)) (= lt!1003729 (list!12276 (charsOf!3049 (h!38208 lt!1003664))))))))

(declare-fun b!2809397 () Bool)

(assert (=> b!2809397 (= e!1776601 (printList!1209 thiss!13843 (t!229654 lt!1003664)))))

(declare-fun b!2809399 () Bool)

(declare-fun res!1169955 () Bool)

(assert (=> b!2809399 (=> (not res!1169955) (not e!1776602))))

(assert (=> b!2809399 (= res!1169955 (= (size!25562 lt!1003729) (+ (size!25562 (list!12276 (charsOf!3049 (h!38208 lt!1003664)))) (size!25562 (printList!1209 thiss!13843 (t!229654 lt!1003664))))))))

(assert (= (and d!815483 c!455107) b!2809397))

(assert (= (and d!815483 (not c!455107)) b!2809398))

(assert (= (and d!815483 res!1169956) b!2809399))

(assert (= (and b!2809399 res!1169955) b!2809400))

(assert (=> b!2809398 m!3238681))

(declare-fun m!3238953 () Bool)

(assert (=> b!2809398 m!3238953))

(declare-fun m!3238955 () Bool)

(assert (=> d!815483 m!3238955))

(assert (=> d!815483 m!3238679))

(declare-fun m!3238957 () Bool)

(assert (=> d!815483 m!3238957))

(assert (=> d!815483 m!3238681))

(declare-fun m!3238959 () Bool)

(assert (=> d!815483 m!3238959))

(declare-fun m!3238961 () Bool)

(assert (=> b!2809399 m!3238961))

(assert (=> b!2809399 m!3238679))

(declare-fun m!3238963 () Bool)

(assert (=> b!2809399 m!3238963))

(assert (=> b!2809399 m!3238681))

(declare-fun m!3238965 () Bool)

(assert (=> b!2809399 m!3238965))

(assert (=> b!2809192 d!815483))

(declare-fun d!815491 () Bool)

(assert (=> d!815491 (= (list!12276 (charsOf!3049 (h!38208 lt!1003664))) (list!12278 (c!455048 (charsOf!3049 (h!38208 lt!1003664)))))))

(declare-fun bs!516318 () Bool)

(assert (= bs!516318 d!815491))

(declare-fun m!3238967 () Bool)

(assert (=> bs!516318 m!3238967))

(assert (=> b!2809192 d!815491))

(declare-fun d!815493 () Bool)

(declare-fun lt!1003730 () BalanceConc!19912)

(assert (=> d!815493 (= (list!12276 lt!1003730) (originalCharacters!5642 (h!38208 lt!1003664)))))

(assert (=> d!815493 (= lt!1003730 (dynLambda!13726 (toChars!6771 (transformation!4910 (rule!7338 (h!38208 lt!1003664)))) (value!157846 (h!38208 lt!1003664))))))

(assert (=> d!815493 (= (charsOf!3049 (h!38208 lt!1003664)) lt!1003730)))

(declare-fun b_lambda!84063 () Bool)

(assert (=> (not b_lambda!84063) (not d!815493)))

(declare-fun tb!153517 () Bool)

(declare-fun t!229685 () Bool)

(assert (=> (and b!2809186 (= (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99))) (toChars!6771 (transformation!4910 (rule!7338 (h!38208 lt!1003664))))) t!229685) tb!153517))

(declare-fun b!2809401 () Bool)

(declare-fun e!1776603 () Bool)

(declare-fun tp!896919 () Bool)

(assert (=> b!2809401 (= e!1776603 (and (inv!44496 (c!455048 (dynLambda!13726 (toChars!6771 (transformation!4910 (rule!7338 (h!38208 lt!1003664)))) (value!157846 (h!38208 lt!1003664))))) tp!896919))))

(declare-fun result!190808 () Bool)

(assert (=> tb!153517 (= result!190808 (and (inv!44497 (dynLambda!13726 (toChars!6771 (transformation!4910 (rule!7338 (h!38208 lt!1003664)))) (value!157846 (h!38208 lt!1003664)))) e!1776603))))

(assert (= tb!153517 b!2809401))

(declare-fun m!3238969 () Bool)

(assert (=> b!2809401 m!3238969))

(declare-fun m!3238971 () Bool)

(assert (=> tb!153517 m!3238971))

(assert (=> d!815493 t!229685))

(declare-fun b_and!205319 () Bool)

(assert (= b_and!205315 (and (=> t!229685 result!190808) b_and!205319)))

(declare-fun t!229687 () Bool)

(declare-fun tb!153519 () Bool)

(assert (=> (and b!2809190 (= (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240)))) (toChars!6771 (transformation!4910 (rule!7338 (h!38208 lt!1003664))))) t!229687) tb!153519))

(declare-fun result!190810 () Bool)

(assert (= result!190810 result!190808))

(assert (=> d!815493 t!229687))

(declare-fun b_and!205321 () Bool)

(assert (= b_and!205317 (and (=> t!229687 result!190810) b_and!205321)))

(declare-fun m!3238973 () Bool)

(assert (=> d!815493 m!3238973))

(declare-fun m!3238975 () Bool)

(assert (=> d!815493 m!3238975))

(assert (=> b!2809192 d!815493))

(declare-fun d!815495 () Bool)

(declare-fun c!455108 () Bool)

(assert (=> d!815495 (= c!455108 (is-Cons!32788 (t!229654 lt!1003664)))))

(declare-fun e!1776604 () List!32887)

(assert (=> d!815495 (= (printList!1209 thiss!13843 (t!229654 lt!1003664)) e!1776604)))

(declare-fun b!2809402 () Bool)

(assert (=> b!2809402 (= e!1776604 (++!8050 (list!12276 (charsOf!3049 (h!38208 (t!229654 lt!1003664)))) (printList!1209 thiss!13843 (t!229654 (t!229654 lt!1003664)))))))

(declare-fun b!2809403 () Bool)

(assert (=> b!2809403 (= e!1776604 Nil!32787)))

(assert (= (and d!815495 c!455108) b!2809402))

(assert (= (and d!815495 (not c!455108)) b!2809403))

(declare-fun m!3238977 () Bool)

(assert (=> b!2809402 m!3238977))

(assert (=> b!2809402 m!3238977))

(declare-fun m!3238979 () Bool)

(assert (=> b!2809402 m!3238979))

(declare-fun m!3238981 () Bool)

(assert (=> b!2809402 m!3238981))

(assert (=> b!2809402 m!3238979))

(assert (=> b!2809402 m!3238981))

(declare-fun m!3238983 () Bool)

(assert (=> b!2809402 m!3238983))

(assert (=> b!2809192 d!815495))

(declare-fun b!2809405 () Bool)

(declare-fun e!1776605 () List!32887)

(assert (=> b!2809405 (= e!1776605 (Cons!32787 (h!38207 (list!12276 (charsOf!3049 (h!38208 lt!1003661)))) (++!8050 (t!229653 (list!12276 (charsOf!3049 (h!38208 lt!1003661)))) (printList!1209 thiss!13843 (t!229654 lt!1003661)))))))

(declare-fun d!815497 () Bool)

(declare-fun e!1776606 () Bool)

(assert (=> d!815497 e!1776606))

(declare-fun res!1169958 () Bool)

(assert (=> d!815497 (=> (not res!1169958) (not e!1776606))))

(declare-fun lt!1003731 () List!32887)

(assert (=> d!815497 (= res!1169958 (= (content!4563 lt!1003731) (set.union (content!4563 (list!12276 (charsOf!3049 (h!38208 lt!1003661)))) (content!4563 (printList!1209 thiss!13843 (t!229654 lt!1003661))))))))

(assert (=> d!815497 (= lt!1003731 e!1776605)))

(declare-fun c!455109 () Bool)

(assert (=> d!815497 (= c!455109 (is-Nil!32787 (list!12276 (charsOf!3049 (h!38208 lt!1003661)))))))

(assert (=> d!815497 (= (++!8050 (list!12276 (charsOf!3049 (h!38208 lt!1003661))) (printList!1209 thiss!13843 (t!229654 lt!1003661))) lt!1003731)))

(declare-fun b!2809407 () Bool)

(assert (=> b!2809407 (= e!1776606 (or (not (= (printList!1209 thiss!13843 (t!229654 lt!1003661)) Nil!32787)) (= lt!1003731 (list!12276 (charsOf!3049 (h!38208 lt!1003661))))))))

(declare-fun b!2809404 () Bool)

(assert (=> b!2809404 (= e!1776605 (printList!1209 thiss!13843 (t!229654 lt!1003661)))))

(declare-fun b!2809406 () Bool)

(declare-fun res!1169957 () Bool)

(assert (=> b!2809406 (=> (not res!1169957) (not e!1776606))))

(assert (=> b!2809406 (= res!1169957 (= (size!25562 lt!1003731) (+ (size!25562 (list!12276 (charsOf!3049 (h!38208 lt!1003661)))) (size!25562 (printList!1209 thiss!13843 (t!229654 lt!1003661))))))))

(assert (= (and d!815497 c!455109) b!2809404))

(assert (= (and d!815497 (not c!455109)) b!2809405))

(assert (= (and d!815497 res!1169958) b!2809406))

(assert (= (and b!2809406 res!1169957) b!2809407))

(assert (=> b!2809405 m!3238669))

(declare-fun m!3238985 () Bool)

(assert (=> b!2809405 m!3238985))

(declare-fun m!3238987 () Bool)

(assert (=> d!815497 m!3238987))

(assert (=> d!815497 m!3238667))

(declare-fun m!3238989 () Bool)

(assert (=> d!815497 m!3238989))

(assert (=> d!815497 m!3238669))

(declare-fun m!3238991 () Bool)

(assert (=> d!815497 m!3238991))

(declare-fun m!3238993 () Bool)

(assert (=> b!2809406 m!3238993))

(assert (=> b!2809406 m!3238667))

(declare-fun m!3238995 () Bool)

(assert (=> b!2809406 m!3238995))

(assert (=> b!2809406 m!3238669))

(declare-fun m!3238997 () Bool)

(assert (=> b!2809406 m!3238997))

(assert (=> b!2809187 d!815497))

(declare-fun d!815499 () Bool)

(assert (=> d!815499 (= (list!12276 (charsOf!3049 (h!38208 lt!1003661))) (list!12278 (c!455048 (charsOf!3049 (h!38208 lt!1003661)))))))

(declare-fun bs!516319 () Bool)

(assert (= bs!516319 d!815499))

(declare-fun m!3238999 () Bool)

(assert (=> bs!516319 m!3238999))

(assert (=> b!2809187 d!815499))

(declare-fun d!815501 () Bool)

(declare-fun lt!1003732 () BalanceConc!19912)

(assert (=> d!815501 (= (list!12276 lt!1003732) (originalCharacters!5642 (h!38208 lt!1003661)))))

(assert (=> d!815501 (= lt!1003732 (dynLambda!13726 (toChars!6771 (transformation!4910 (rule!7338 (h!38208 lt!1003661)))) (value!157846 (h!38208 lt!1003661))))))

(assert (=> d!815501 (= (charsOf!3049 (h!38208 lt!1003661)) lt!1003732)))

(declare-fun b_lambda!84065 () Bool)

(assert (=> (not b_lambda!84065) (not d!815501)))

(declare-fun tb!153521 () Bool)

(declare-fun t!229689 () Bool)

(assert (=> (and b!2809186 (= (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99))) (toChars!6771 (transformation!4910 (rule!7338 (h!38208 lt!1003661))))) t!229689) tb!153521))

(declare-fun b!2809408 () Bool)

(declare-fun e!1776607 () Bool)

(declare-fun tp!896920 () Bool)

(assert (=> b!2809408 (= e!1776607 (and (inv!44496 (c!455048 (dynLambda!13726 (toChars!6771 (transformation!4910 (rule!7338 (h!38208 lt!1003661)))) (value!157846 (h!38208 lt!1003661))))) tp!896920))))

(declare-fun result!190812 () Bool)

(assert (=> tb!153521 (= result!190812 (and (inv!44497 (dynLambda!13726 (toChars!6771 (transformation!4910 (rule!7338 (h!38208 lt!1003661)))) (value!157846 (h!38208 lt!1003661)))) e!1776607))))

(assert (= tb!153521 b!2809408))

(declare-fun m!3239001 () Bool)

(assert (=> b!2809408 m!3239001))

(declare-fun m!3239003 () Bool)

(assert (=> tb!153521 m!3239003))

(assert (=> d!815501 t!229689))

(declare-fun b_and!205323 () Bool)

(assert (= b_and!205319 (and (=> t!229689 result!190812) b_and!205323)))

(declare-fun tb!153523 () Bool)

(declare-fun t!229691 () Bool)

(assert (=> (and b!2809190 (= (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240)))) (toChars!6771 (transformation!4910 (rule!7338 (h!38208 lt!1003661))))) t!229691) tb!153523))

(declare-fun result!190814 () Bool)

(assert (= result!190814 result!190812))

(assert (=> d!815501 t!229691))

(declare-fun b_and!205325 () Bool)

(assert (= b_and!205321 (and (=> t!229691 result!190814) b_and!205325)))

(declare-fun m!3239005 () Bool)

(assert (=> d!815501 m!3239005))

(declare-fun m!3239007 () Bool)

(assert (=> d!815501 m!3239007))

(assert (=> b!2809187 d!815501))

(declare-fun d!815503 () Bool)

(declare-fun c!455110 () Bool)

(assert (=> d!815503 (= c!455110 (is-Cons!32788 (t!229654 lt!1003661)))))

(declare-fun e!1776608 () List!32887)

(assert (=> d!815503 (= (printList!1209 thiss!13843 (t!229654 lt!1003661)) e!1776608)))

(declare-fun b!2809409 () Bool)

(assert (=> b!2809409 (= e!1776608 (++!8050 (list!12276 (charsOf!3049 (h!38208 (t!229654 lt!1003661)))) (printList!1209 thiss!13843 (t!229654 (t!229654 lt!1003661)))))))

(declare-fun b!2809410 () Bool)

(assert (=> b!2809410 (= e!1776608 Nil!32787)))

(assert (= (and d!815503 c!455110) b!2809409))

(assert (= (and d!815503 (not c!455110)) b!2809410))

(declare-fun m!3239009 () Bool)

(assert (=> b!2809409 m!3239009))

(assert (=> b!2809409 m!3239009))

(declare-fun m!3239011 () Bool)

(assert (=> b!2809409 m!3239011))

(declare-fun m!3239013 () Bool)

(assert (=> b!2809409 m!3239013))

(assert (=> b!2809409 m!3239011))

(assert (=> b!2809409 m!3239013))

(declare-fun m!3239015 () Bool)

(assert (=> b!2809409 m!3239015))

(assert (=> b!2809187 d!815503))

(declare-fun b!2809415 () Bool)

(declare-fun e!1776611 () Bool)

(declare-fun tp_is_empty!14325 () Bool)

(declare-fun tp!896923 () Bool)

(assert (=> b!2809415 (= e!1776611 (and tp_is_empty!14325 tp!896923))))

(assert (=> b!2809185 (= tp!896877 e!1776611)))

(assert (= (and b!2809185 (is-Cons!32787 (originalCharacters!5642 (h!38208 l!4240)))) b!2809415))

(declare-fun b!2809427 () Bool)

(declare-fun e!1776614 () Bool)

(declare-fun tp!896937 () Bool)

(declare-fun tp!896934 () Bool)

(assert (=> b!2809427 (= e!1776614 (and tp!896937 tp!896934))))

(assert (=> b!2809191 (= tp!896881 e!1776614)))

(declare-fun b!2809429 () Bool)

(declare-fun tp!896935 () Bool)

(declare-fun tp!896936 () Bool)

(assert (=> b!2809429 (= e!1776614 (and tp!896935 tp!896936))))

(declare-fun b!2809426 () Bool)

(assert (=> b!2809426 (= e!1776614 tp_is_empty!14325)))

(declare-fun b!2809428 () Bool)

(declare-fun tp!896938 () Bool)

(assert (=> b!2809428 (= e!1776614 tp!896938)))

(assert (= (and b!2809191 (is-ElementMatch!8280 (regex!4910 (rule!7338 (h!38208 l!4240))))) b!2809426))

(assert (= (and b!2809191 (is-Concat!13413 (regex!4910 (rule!7338 (h!38208 l!4240))))) b!2809427))

(assert (= (and b!2809191 (is-Star!8280 (regex!4910 (rule!7338 (h!38208 l!4240))))) b!2809428))

(assert (= (and b!2809191 (is-Union!8280 (regex!4910 (rule!7338 (h!38208 l!4240))))) b!2809429))

(declare-fun b!2809430 () Bool)

(declare-fun e!1776615 () Bool)

(declare-fun tp!896939 () Bool)

(assert (=> b!2809430 (= e!1776615 (and tp_is_empty!14325 tp!896939))))

(assert (=> b!2809188 (= tp!896880 e!1776615)))

(assert (= (and b!2809188 (is-Cons!32787 (originalCharacters!5642 separatorToken!99))) b!2809430))

(declare-fun b!2809444 () Bool)

(declare-fun b_free!80165 () Bool)

(declare-fun b_next!80869 () Bool)

(assert (=> b!2809444 (= b_free!80165 (not b_next!80869))))

(declare-fun tp!896954 () Bool)

(declare-fun b_and!205327 () Bool)

(assert (=> b!2809444 (= tp!896954 b_and!205327)))

(declare-fun b_free!80167 () Bool)

(declare-fun b_next!80871 () Bool)

(assert (=> b!2809444 (= b_free!80167 (not b_next!80871))))

(declare-fun tb!153525 () Bool)

(declare-fun t!229693 () Bool)

(assert (=> (and b!2809444 (= (toChars!6771 (transformation!4910 (rule!7338 (h!38208 (t!229654 l!4240))))) (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99)))) t!229693) tb!153525))

(declare-fun result!190822 () Bool)

(assert (= result!190822 result!190800))

(assert (=> d!815455 t!229693))

(declare-fun t!229695 () Bool)

(declare-fun tb!153527 () Bool)

(assert (=> (and b!2809444 (= (toChars!6771 (transformation!4910 (rule!7338 (h!38208 (t!229654 l!4240))))) (toChars!6771 (transformation!4910 (rule!7338 (h!38208 lt!1003664))))) t!229695) tb!153527))

(declare-fun result!190824 () Bool)

(assert (= result!190824 result!190808))

(assert (=> d!815493 t!229695))

(declare-fun t!229697 () Bool)

(declare-fun tb!153529 () Bool)

(assert (=> (and b!2809444 (= (toChars!6771 (transformation!4910 (rule!7338 (h!38208 (t!229654 l!4240))))) (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240))))) t!229697) tb!153529))

(declare-fun result!190826 () Bool)

(assert (= result!190826 result!190794))

(assert (=> b!2809378 t!229697))

(assert (=> d!815439 t!229697))

(assert (=> b!2809376 t!229693))

(declare-fun tb!153531 () Bool)

(declare-fun t!229699 () Bool)

(assert (=> (and b!2809444 (= (toChars!6771 (transformation!4910 (rule!7338 (h!38208 (t!229654 l!4240))))) (toChars!6771 (transformation!4910 (rule!7338 (h!38208 lt!1003661))))) t!229699) tb!153531))

(declare-fun result!190828 () Bool)

(assert (= result!190828 result!190812))

(assert (=> d!815501 t!229699))

(declare-fun b_and!205329 () Bool)

(declare-fun tp!896953 () Bool)

(assert (=> b!2809444 (= tp!896953 (and (=> t!229695 result!190824) (=> t!229693 result!190822) (=> t!229699 result!190828) (=> t!229697 result!190826) b_and!205329))))

(declare-fun e!1776632 () Bool)

(assert (=> b!2809183 (= tp!896873 e!1776632)))

(declare-fun e!1776628 () Bool)

(assert (=> b!2809444 (= e!1776628 (and tp!896954 tp!896953))))

(declare-fun e!1776630 () Bool)

(declare-fun tp!896952 () Bool)

(declare-fun b!2809443 () Bool)

(assert (=> b!2809443 (= e!1776630 (and tp!896952 (inv!44489 (tag!5414 (rule!7338 (h!38208 (t!229654 l!4240))))) (inv!44492 (transformation!4910 (rule!7338 (h!38208 (t!229654 l!4240))))) e!1776628))))

(declare-fun e!1776629 () Bool)

(declare-fun b!2809442 () Bool)

(declare-fun tp!896951 () Bool)

(assert (=> b!2809442 (= e!1776629 (and (inv!21 (value!157846 (h!38208 (t!229654 l!4240)))) e!1776630 tp!896951))))

(declare-fun tp!896950 () Bool)

(declare-fun b!2809441 () Bool)

(assert (=> b!2809441 (= e!1776632 (and (inv!44493 (h!38208 (t!229654 l!4240))) e!1776629 tp!896950))))

(assert (= b!2809443 b!2809444))

(assert (= b!2809442 b!2809443))

(assert (= b!2809441 b!2809442))

(assert (= (and b!2809183 (is-Cons!32788 (t!229654 l!4240))) b!2809441))

(declare-fun m!3239017 () Bool)

(assert (=> b!2809443 m!3239017))

(declare-fun m!3239019 () Bool)

(assert (=> b!2809443 m!3239019))

(declare-fun m!3239021 () Bool)

(assert (=> b!2809442 m!3239021))

(declare-fun m!3239023 () Bool)

(assert (=> b!2809441 m!3239023))

(declare-fun b!2809446 () Bool)

(declare-fun e!1776634 () Bool)

(declare-fun tp!896958 () Bool)

(declare-fun tp!896955 () Bool)

(assert (=> b!2809446 (= e!1776634 (and tp!896958 tp!896955))))

(assert (=> b!2809181 (= tp!896878 e!1776634)))

(declare-fun b!2809448 () Bool)

(declare-fun tp!896956 () Bool)

(declare-fun tp!896957 () Bool)

(assert (=> b!2809448 (= e!1776634 (and tp!896956 tp!896957))))

(declare-fun b!2809445 () Bool)

(assert (=> b!2809445 (= e!1776634 tp_is_empty!14325)))

(declare-fun b!2809447 () Bool)

(declare-fun tp!896959 () Bool)

(assert (=> b!2809447 (= e!1776634 tp!896959)))

(assert (= (and b!2809181 (is-ElementMatch!8280 (regex!4910 (rule!7338 separatorToken!99)))) b!2809445))

(assert (= (and b!2809181 (is-Concat!13413 (regex!4910 (rule!7338 separatorToken!99)))) b!2809446))

(assert (= (and b!2809181 (is-Star!8280 (regex!4910 (rule!7338 separatorToken!99)))) b!2809447))

(assert (= (and b!2809181 (is-Union!8280 (regex!4910 (rule!7338 separatorToken!99)))) b!2809448))

(declare-fun b_lambda!84067 () Bool)

(assert (= b_lambda!84057 (or (and b!2809186 b_free!80151) (and b!2809190 b_free!80155 (= (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240)))) (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99))))) (and b!2809444 b_free!80167 (= (toChars!6771 (transformation!4910 (rule!7338 (h!38208 (t!229654 l!4240))))) (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99))))) b_lambda!84067)))

(declare-fun b_lambda!84069 () Bool)

(assert (= b_lambda!84053 (or (and b!2809186 b_free!80151 (= (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99))) (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240)))))) (and b!2809190 b_free!80155) (and b!2809444 b_free!80167 (= (toChars!6771 (transformation!4910 (rule!7338 (h!38208 (t!229654 l!4240))))) (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240)))))) b_lambda!84069)))

(declare-fun b_lambda!84071 () Bool)

(assert (= b_lambda!84061 (or (and b!2809186 b_free!80151 (= (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99))) (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240)))))) (and b!2809190 b_free!80155) (and b!2809444 b_free!80167 (= (toChars!6771 (transformation!4910 (rule!7338 (h!38208 (t!229654 l!4240))))) (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240)))))) b_lambda!84071)))

(declare-fun b_lambda!84073 () Bool)

(assert (= b_lambda!84059 (or (and b!2809186 b_free!80151) (and b!2809190 b_free!80155 (= (toChars!6771 (transformation!4910 (rule!7338 (h!38208 l!4240)))) (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99))))) (and b!2809444 b_free!80167 (= (toChars!6771 (transformation!4910 (rule!7338 (h!38208 (t!229654 l!4240))))) (toChars!6771 (transformation!4910 (rule!7338 separatorToken!99))))) b_lambda!84073)))

(push 1)

(assert (not b!2809254))

(assert b_and!205271)

(assert (not b!2809448))

(assert (not b!2809443))

(assert (not b!2809354))

(assert (not d!815439))

(assert b_and!205275)

(assert (not b!2809382))

(assert (not d!815497))

(assert (not b!2809378))

(assert (not b!2809318))

(assert b_and!205325)

(assert (not b!2809242))

(assert (not b!2809408))

(assert (not b!2809415))

(assert (not b_lambda!84067))

(assert (not b!2809409))

(assert (not b_lambda!84065))

(assert (not b!2809243))

(assert (not tb!153505))

(assert (not b!2809316))

(assert (not d!815409))

(assert (not d!815479))

(assert (not b_next!80871))

(assert (not b_lambda!84069))

(assert (not b!2809319))

(assert (not d!815413))

(assert (not b!2809441))

(assert (not b!2809442))

(assert (not b!2809377))

(assert (not b!2809239))

(assert (not b!2809406))

(assert (not b!2809398))

(assert (not b!2809430))

(assert (not b_lambda!84063))

(assert (not d!815491))

(assert (not d!815427))

(assert (not b!2809361))

(assert (not b_next!80855))

(assert (not d!815483))

(assert tp_is_empty!14325)

(assert (not d!815499))

(assert (not d!815451))

(assert (not b!2809428))

(assert (not b_lambda!84071))

(assert (not b!2809399))

(assert (not b!2809352))

(assert (not d!815493))

(assert (not b_lambda!84073))

(assert (not b!2809405))

(assert (not d!815501))

(assert (not b_next!80853))

(assert (not b!2809252))

(assert (not b!2809323))

(assert (not b!2809262))

(assert b_and!205329)

(assert (not tb!153521))

(assert (not b!2809446))

(assert (not b_next!80859))

(assert (not b!2809351))

(assert (not tb!153517))

(assert (not b_next!80869))

(assert (not b!2809379))

(assert (not b!2809358))

(assert (not b!2809362))

(assert b_and!205327)

(assert (not b!2809246))

(assert b_and!205323)

(assert (not d!815475))

(assert (not tb!153509))

(assert (not b_next!80857))

(assert (not b!2809376))

(assert (not b!2809427))

(assert (not d!815467))

(assert (not b!2809447))

(assert (not b!2809402))

(assert (not b!2809321))

(assert (not b!2809401))

(assert (not d!815455))

(assert (not b!2809429))

(check-sat)

(pop 1)

(push 1)

(assert b_and!205275)

(assert b_and!205325)

(assert b_and!205271)

(assert (not b_next!80871))

(assert (not b_next!80855))

(assert (not b_next!80853))

(assert (not b_next!80869))

(assert (not b_next!80857))

(assert b_and!205329)

(assert (not b_next!80859))

(assert b_and!205323)

(assert b_and!205327)

(check-sat)

(pop 1)

