; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!397412 () Bool)

(assert start!397412)

(declare-fun b!4168392 () Bool)

(declare-fun b_free!120427 () Bool)

(declare-fun b_next!121131 () Bool)

(assert (=> b!4168392 (= b_free!120427 (not b_next!121131))))

(declare-fun tp!1273229 () Bool)

(declare-fun b_and!325297 () Bool)

(assert (=> b!4168392 (= tp!1273229 b_and!325297)))

(declare-fun b_free!120429 () Bool)

(declare-fun b_next!121133 () Bool)

(assert (=> b!4168392 (= b_free!120429 (not b_next!121133))))

(declare-fun tp!1273228 () Bool)

(declare-fun b_and!325299 () Bool)

(assert (=> b!4168392 (= tp!1273228 b_and!325299)))

(declare-fun b!4168377 () Bool)

(declare-fun b_free!120431 () Bool)

(declare-fun b_next!121135 () Bool)

(assert (=> b!4168377 (= b_free!120431 (not b_next!121135))))

(declare-fun tp!1273227 () Bool)

(declare-fun b_and!325301 () Bool)

(assert (=> b!4168377 (= tp!1273227 b_and!325301)))

(declare-fun b_free!120433 () Bool)

(declare-fun b_next!121137 () Bool)

(assert (=> b!4168377 (= b_free!120433 (not b_next!121137))))

(declare-fun tp!1273232 () Bool)

(declare-fun b_and!325303 () Bool)

(assert (=> b!4168377 (= tp!1273232 b_and!325303)))

(declare-fun b!4168386 () Bool)

(declare-fun b_free!120435 () Bool)

(declare-fun b_next!121139 () Bool)

(assert (=> b!4168386 (= b_free!120435 (not b_next!121139))))

(declare-fun tp!1273223 () Bool)

(declare-fun b_and!325305 () Bool)

(assert (=> b!4168386 (= tp!1273223 b_and!325305)))

(declare-fun b_free!120437 () Bool)

(declare-fun b_next!121141 () Bool)

(assert (=> b!4168386 (= b_free!120437 (not b_next!121141))))

(declare-fun tp!1273226 () Bool)

(declare-fun b_and!325307 () Bool)

(assert (=> b!4168386 (= tp!1273226 b_and!325307)))

(declare-fun b!4168378 () Bool)

(declare-fun e!2587707 () Bool)

(declare-datatypes ((LexerInterface!7150 0))(
  ( (LexerInterfaceExt!7147 (__x!27795 Int)) (Lexer!7148) )
))
(declare-fun thiss!25889 () LexerInterface!7150)

(declare-datatypes ((C!25114 0))(
  ( (C!25115 (val!14719 Int)) )
))
(declare-datatypes ((List!45760 0))(
  ( (Nil!45636) (Cons!45636 (h!51056 C!25114) (t!344207 List!45760)) )
))
(declare-datatypes ((IArray!27541 0))(
  ( (IArray!27542 (innerList!13828 List!45760)) )
))
(declare-datatypes ((Conc!13768 0))(
  ( (Node!13768 (left!34025 Conc!13768) (right!34355 Conc!13768) (csize!27766 Int) (cheight!13979 Int)) (Leaf!21290 (xs!17074 IArray!27541) (csize!27767 Int)) (Empty!13768) )
))
(declare-datatypes ((List!45761 0))(
  ( (Nil!45637) (Cons!45637 (h!51057 (_ BitVec 16)) (t!344208 List!45761)) )
))
(declare-datatypes ((String!52802 0))(
  ( (String!52803 (value!235894 String)) )
))
(declare-datatypes ((BalanceConc!27130 0))(
  ( (BalanceConc!27131 (c!712699 Conc!13768)) )
))
(declare-datatypes ((TokenValue!7787 0))(
  ( (FloatLiteralValue!15574 (text!54954 List!45761)) (TokenValueExt!7786 (__x!27796 Int)) (Broken!38935 (value!235895 List!45761)) (Object!7910) (End!7787) (Def!7787) (Underscore!7787) (Match!7787) (Else!7787) (Error!7787) (Case!7787) (If!7787) (Extends!7787) (Abstract!7787) (Class!7787) (Val!7787) (DelimiterValue!15574 (del!7847 List!45761)) (KeywordValue!7793 (value!235896 List!45761)) (CommentValue!15574 (value!235897 List!45761)) (WhitespaceValue!15574 (value!235898 List!45761)) (IndentationValue!7787 (value!235899 List!45761)) (String!52804) (Int32!7787) (Broken!38936 (value!235900 List!45761)) (Boolean!7788) (Unit!64717) (OperatorValue!7790 (op!7847 List!45761)) (IdentifierValue!15574 (value!235901 List!45761)) (IdentifierValue!15575 (value!235902 List!45761)) (WhitespaceValue!15575 (value!235903 List!45761)) (True!15574) (False!15574) (Broken!38937 (value!235904 List!45761)) (Broken!38938 (value!235905 List!45761)) (True!15575) (RightBrace!7787) (RightBracket!7787) (Colon!7787) (Null!7787) (Comma!7787) (LeftBracket!7787) (False!15575) (LeftBrace!7787) (ImaginaryLiteralValue!7787 (text!54955 List!45761)) (StringLiteralValue!23361 (value!235906 List!45761)) (EOFValue!7787 (value!235907 List!45761)) (IdentValue!7787 (value!235908 List!45761)) (DelimiterValue!15575 (value!235909 List!45761)) (DedentValue!7787 (value!235910 List!45761)) (NewLineValue!7787 (value!235911 List!45761)) (IntegerValue!23361 (value!235912 (_ BitVec 32)) (text!54956 List!45761)) (IntegerValue!23362 (value!235913 Int) (text!54957 List!45761)) (Times!7787) (Or!7787) (Equal!7787) (Minus!7787) (Broken!38939 (value!235914 List!45761)) (And!7787) (Div!7787) (LessEqual!7787) (Mod!7787) (Concat!20249) (Not!7787) (Plus!7787) (SpaceValue!7787 (value!235915 List!45761)) (IntegerValue!23363 (value!235916 Int) (text!54958 List!45761)) (StringLiteralValue!23362 (text!54959 List!45761)) (FloatLiteralValue!15575 (text!54960 List!45761)) (BytesLiteralValue!7787 (value!235917 List!45761)) (CommentValue!15575 (value!235918 List!45761)) (StringLiteralValue!23363 (value!235919 List!45761)) (ErrorTokenValue!7787 (msg!7848 List!45761)) )
))
(declare-datatypes ((TokenValueInjection!15002 0))(
  ( (TokenValueInjection!15003 (toValue!10237 Int) (toChars!10096 Int)) )
))
(declare-datatypes ((Regex!12462 0))(
  ( (ElementMatch!12462 (c!712700 C!25114)) (Concat!20250 (regOne!25436 Regex!12462) (regTwo!25436 Regex!12462)) (EmptyExpr!12462) (Star!12462 (reg!12791 Regex!12462)) (EmptyLang!12462) (Union!12462 (regOne!25437 Regex!12462) (regTwo!25437 Regex!12462)) )
))
(declare-datatypes ((Rule!14914 0))(
  ( (Rule!14915 (regex!7557 Regex!12462) (tag!8421 String!52802) (isSeparator!7557 Bool) (transformation!7557 TokenValueInjection!15002)) )
))
(declare-datatypes ((List!45762 0))(
  ( (Nil!45638) (Cons!45638 (h!51058 Rule!14914) (t!344209 List!45762)) )
))
(declare-fun rules!3820 () List!45762)

(declare-fun rulesValidInductive!2787 (LexerInterface!7150 List!45762) Bool)

(assert (=> b!4168378 (= e!2587707 (rulesValidInductive!2787 thiss!25889 rules!3820))))

(declare-fun b!4168379 () Bool)

(declare-fun res!1707733 () Bool)

(declare-fun e!2587714 () Bool)

(assert (=> b!4168379 (=> (not res!1707733) (not e!2587714))))

(declare-fun rBis!161 () Rule!14914)

(declare-fun contains!9358 (List!45762 Rule!14914) Bool)

(assert (=> b!4168379 (= res!1707733 (contains!9358 rules!3820 rBis!161))))

(declare-fun b!4168380 () Bool)

(declare-fun res!1707728 () Bool)

(assert (=> b!4168380 (=> (not res!1707728) (not e!2587714))))

(declare-fun r!4097 () Rule!14914)

(assert (=> b!4168380 (= res!1707728 (contains!9358 rules!3820 r!4097))))

(declare-fun b!4168381 () Bool)

(declare-fun res!1707731 () Bool)

(assert (=> b!4168381 (=> (not res!1707731) (not e!2587714))))

(declare-fun isEmpty!27008 (List!45762) Bool)

(assert (=> b!4168381 (= res!1707731 (not (isEmpty!27008 rules!3820)))))

(declare-fun b!4168382 () Bool)

(declare-fun res!1707729 () Bool)

(assert (=> b!4168382 (=> (not res!1707729) (not e!2587714))))

(declare-fun pBis!100 () List!45760)

(declare-fun input!3316 () List!45760)

(declare-fun isPrefix!4414 (List!45760 List!45760) Bool)

(assert (=> b!4168382 (= res!1707729 (isPrefix!4414 pBis!100 input!3316))))

(declare-fun b!4168383 () Bool)

(declare-fun e!2587713 () Bool)

(assert (=> b!4168383 (= e!2587713 e!2587707)))

(declare-fun res!1707730 () Bool)

(assert (=> b!4168383 (=> res!1707730 e!2587707)))

(declare-datatypes ((Token!13852 0))(
  ( (Token!13853 (value!235920 TokenValue!7787) (rule!10611 Rule!14914) (size!33523 Int) (originalCharacters!7957 List!45760)) )
))
(declare-datatypes ((tuple2!43540 0))(
  ( (tuple2!43541 (_1!24904 Token!13852) (_2!24904 List!45760)) )
))
(declare-datatypes ((Option!9765 0))(
  ( (None!9764) (Some!9764 (v!40550 tuple2!43540)) )
))
(declare-fun lt!1484737 () Option!9765)

(declare-fun maxPrefixOneRule!3173 (LexerInterface!7150 Rule!14914 List!45760) Option!9765)

(assert (=> b!4168383 (= res!1707730 (not (= (maxPrefixOneRule!3173 thiss!25889 r!4097 input!3316) lt!1484737)))))

(declare-fun lt!1484736 () TokenValue!7787)

(declare-fun p!2942 () List!45760)

(declare-fun lt!1484735 () Int)

(declare-fun getSuffix!2721 (List!45760 List!45760) List!45760)

(assert (=> b!4168383 (= lt!1484737 (Some!9764 (tuple2!43541 (Token!13853 lt!1484736 r!4097 lt!1484735 p!2942) (getSuffix!2721 input!3316 p!2942))))))

(declare-fun size!33524 (List!45760) Int)

(assert (=> b!4168383 (= lt!1484735 (size!33524 p!2942))))

(declare-fun lt!1484739 () BalanceConc!27130)

(declare-fun apply!10534 (TokenValueInjection!15002 BalanceConc!27130) TokenValue!7787)

(assert (=> b!4168383 (= lt!1484736 (apply!10534 (transformation!7557 r!4097) lt!1484739))))

(assert (=> b!4168383 (isPrefix!4414 input!3316 input!3316)))

(declare-datatypes ((Unit!64718 0))(
  ( (Unit!64719) )
))
(declare-fun lt!1484741 () Unit!64718)

(declare-fun lemmaIsPrefixRefl!2849 (List!45760 List!45760) Unit!64718)

(assert (=> b!4168383 (= lt!1484741 (lemmaIsPrefixRefl!2849 input!3316 input!3316))))

(declare-fun lt!1484740 () Unit!64718)

(declare-fun lemmaSemiInverse!2327 (TokenValueInjection!15002 BalanceConc!27130) Unit!64718)

(assert (=> b!4168383 (= lt!1484740 (lemmaSemiInverse!2327 (transformation!7557 r!4097) lt!1484739))))

(declare-fun seqFromList!5586 (List!45760) BalanceConc!27130)

(assert (=> b!4168383 (= lt!1484739 (seqFromList!5586 p!2942))))

(declare-fun b!4168384 () Bool)

(declare-fun e!2587711 () Bool)

(declare-fun e!2587710 () Bool)

(declare-fun tp!1273224 () Bool)

(assert (=> b!4168384 (= e!2587711 (and e!2587710 tp!1273224))))

(declare-fun b!4168385 () Bool)

(declare-fun e!2587701 () Bool)

(declare-fun tp!1273221 () Bool)

(declare-fun inv!60168 (String!52802) Bool)

(declare-fun inv!60171 (TokenValueInjection!15002) Bool)

(assert (=> b!4168385 (= e!2587710 (and tp!1273221 (inv!60168 (tag!8421 (h!51058 rules!3820))) (inv!60171 (transformation!7557 (h!51058 rules!3820))) e!2587701))))

(assert (=> b!4168386 (= e!2587701 (and tp!1273223 tp!1273226))))

(declare-fun b!4168387 () Bool)

(declare-fun e!2587704 () Bool)

(declare-fun tp_is_empty!21887 () Bool)

(declare-fun tp!1273225 () Bool)

(assert (=> b!4168387 (= e!2587704 (and tp_is_empty!21887 tp!1273225))))

(declare-fun b!4168388 () Bool)

(declare-fun e!2587709 () Bool)

(declare-fun tp!1273233 () Bool)

(assert (=> b!4168388 (= e!2587709 (and tp_is_empty!21887 tp!1273233))))

(declare-fun b!4168389 () Bool)

(declare-fun res!1707737 () Bool)

(assert (=> b!4168389 (=> (not res!1707737) (not e!2587714))))

(assert (=> b!4168389 (= res!1707737 (isPrefix!4414 p!2942 input!3316))))

(declare-fun e!2587705 () Bool)

(assert (=> b!4168377 (= e!2587705 (and tp!1273227 tp!1273232))))

(declare-fun res!1707732 () Bool)

(assert (=> start!397412 (=> (not res!1707732) (not e!2587714))))

(assert (=> start!397412 (= res!1707732 (is-Lexer!7148 thiss!25889))))

(assert (=> start!397412 e!2587714))

(assert (=> start!397412 e!2587709))

(assert (=> start!397412 e!2587711))

(assert (=> start!397412 e!2587704))

(declare-fun e!2587700 () Bool)

(assert (=> start!397412 e!2587700))

(assert (=> start!397412 true))

(declare-fun e!2587699 () Bool)

(assert (=> start!397412 e!2587699))

(declare-fun e!2587702 () Bool)

(assert (=> start!397412 e!2587702))

(declare-fun b!4168390 () Bool)

(assert (=> b!4168390 (= e!2587714 (not e!2587713))))

(declare-fun res!1707727 () Bool)

(assert (=> b!4168390 (=> res!1707727 e!2587713)))

(declare-fun matchR!6203 (Regex!12462 List!45760) Bool)

(assert (=> b!4168390 (= res!1707727 (not (matchR!6203 (regex!7557 r!4097) p!2942)))))

(declare-fun ruleValid!3279 (LexerInterface!7150 Rule!14914) Bool)

(assert (=> b!4168390 (ruleValid!3279 thiss!25889 r!4097)))

(declare-fun lt!1484738 () Unit!64718)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2317 (LexerInterface!7150 Rule!14914 List!45762) Unit!64718)

(assert (=> b!4168390 (= lt!1484738 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2317 thiss!25889 r!4097 rules!3820))))

(declare-fun b!4168391 () Bool)

(declare-fun e!2587703 () Bool)

(declare-fun tp!1273230 () Bool)

(assert (=> b!4168391 (= e!2587702 (and tp!1273230 (inv!60168 (tag!8421 r!4097)) (inv!60171 (transformation!7557 r!4097)) e!2587703))))

(assert (=> b!4168392 (= e!2587703 (and tp!1273229 tp!1273228))))

(declare-fun b!4168393 () Bool)

(declare-fun res!1707734 () Bool)

(assert (=> b!4168393 (=> res!1707734 e!2587707)))

(assert (=> b!4168393 (= res!1707734 (<= (size!33524 pBis!100) lt!1484735))))

(declare-fun b!4168394 () Bool)

(declare-fun res!1707735 () Bool)

(assert (=> b!4168394 (=> (not res!1707735) (not e!2587714))))

(declare-fun rulesInvariant!6363 (LexerInterface!7150 List!45762) Bool)

(assert (=> b!4168394 (= res!1707735 (rulesInvariant!6363 thiss!25889 rules!3820))))

(declare-fun b!4168395 () Bool)

(declare-fun res!1707736 () Bool)

(assert (=> b!4168395 (=> res!1707736 e!2587707)))

(declare-fun maxPrefix!4226 (LexerInterface!7150 List!45762 List!45760) Option!9765)

(assert (=> b!4168395 (= res!1707736 (not (= (maxPrefix!4226 thiss!25889 rules!3820 input!3316) lt!1484737)))))

(declare-fun tp!1273222 () Bool)

(declare-fun b!4168396 () Bool)

(assert (=> b!4168396 (= e!2587699 (and tp!1273222 (inv!60168 (tag!8421 rBis!161)) (inv!60171 (transformation!7557 rBis!161)) e!2587705))))

(declare-fun b!4168397 () Bool)

(declare-fun tp!1273231 () Bool)

(assert (=> b!4168397 (= e!2587700 (and tp_is_empty!21887 tp!1273231))))

(assert (= (and start!397412 res!1707732) b!4168389))

(assert (= (and b!4168389 res!1707737) b!4168382))

(assert (= (and b!4168382 res!1707729) b!4168381))

(assert (= (and b!4168381 res!1707731) b!4168394))

(assert (= (and b!4168394 res!1707735) b!4168380))

(assert (= (and b!4168380 res!1707728) b!4168379))

(assert (= (and b!4168379 res!1707733) b!4168390))

(assert (= (and b!4168390 (not res!1707727)) b!4168383))

(assert (= (and b!4168383 (not res!1707730)) b!4168393))

(assert (= (and b!4168393 (not res!1707734)) b!4168395))

(assert (= (and b!4168395 (not res!1707736)) b!4168378))

(assert (= (and start!397412 (is-Cons!45636 pBis!100)) b!4168388))

(assert (= b!4168385 b!4168386))

(assert (= b!4168384 b!4168385))

(assert (= (and start!397412 (is-Cons!45638 rules!3820)) b!4168384))

(assert (= (and start!397412 (is-Cons!45636 p!2942)) b!4168387))

(assert (= (and start!397412 (is-Cons!45636 input!3316)) b!4168397))

(assert (= b!4168396 b!4168377))

(assert (= start!397412 b!4168396))

(assert (= b!4168391 b!4168392))

(assert (= start!397412 b!4168391))

(declare-fun m!4759627 () Bool)

(assert (=> b!4168383 m!4759627))

(declare-fun m!4759629 () Bool)

(assert (=> b!4168383 m!4759629))

(declare-fun m!4759631 () Bool)

(assert (=> b!4168383 m!4759631))

(declare-fun m!4759633 () Bool)

(assert (=> b!4168383 m!4759633))

(declare-fun m!4759635 () Bool)

(assert (=> b!4168383 m!4759635))

(declare-fun m!4759637 () Bool)

(assert (=> b!4168383 m!4759637))

(declare-fun m!4759639 () Bool)

(assert (=> b!4168383 m!4759639))

(declare-fun m!4759641 () Bool)

(assert (=> b!4168383 m!4759641))

(declare-fun m!4759643 () Bool)

(assert (=> b!4168379 m!4759643))

(declare-fun m!4759645 () Bool)

(assert (=> b!4168380 m!4759645))

(declare-fun m!4759647 () Bool)

(assert (=> b!4168381 m!4759647))

(declare-fun m!4759649 () Bool)

(assert (=> b!4168395 m!4759649))

(declare-fun m!4759651 () Bool)

(assert (=> b!4168385 m!4759651))

(declare-fun m!4759653 () Bool)

(assert (=> b!4168385 m!4759653))

(declare-fun m!4759655 () Bool)

(assert (=> b!4168394 m!4759655))

(declare-fun m!4759657 () Bool)

(assert (=> b!4168396 m!4759657))

(declare-fun m!4759659 () Bool)

(assert (=> b!4168396 m!4759659))

(declare-fun m!4759661 () Bool)

(assert (=> b!4168389 m!4759661))

(declare-fun m!4759663 () Bool)

(assert (=> b!4168390 m!4759663))

(declare-fun m!4759665 () Bool)

(assert (=> b!4168390 m!4759665))

(declare-fun m!4759667 () Bool)

(assert (=> b!4168390 m!4759667))

(declare-fun m!4759669 () Bool)

(assert (=> b!4168382 m!4759669))

(declare-fun m!4759671 () Bool)

(assert (=> b!4168378 m!4759671))

(declare-fun m!4759673 () Bool)

(assert (=> b!4168391 m!4759673))

(declare-fun m!4759675 () Bool)

(assert (=> b!4168391 m!4759675))

(declare-fun m!4759677 () Bool)

(assert (=> b!4168393 m!4759677))

(push 1)

(assert (not b!4168396))

(assert b_and!325303)

(assert b_and!325301)

(assert (not b_next!121135))

(assert (not b!4168385))

(assert (not b!4168395))

(assert (not b!4168390))

(assert (not b_next!121137))

(assert b_and!325297)

(assert (not b!4168394))

(assert b_and!325307)

(assert (not b!4168380))

(assert (not b!4168378))

(assert (not b!4168381))

(assert (not b!4168391))

(assert b_and!325299)

(assert (not b!4168393))

(assert (not b_next!121141))

(assert (not b_next!121133))

(assert (not b_next!121131))

(assert b_and!325305)

(assert (not b!4168388))

(assert (not b!4168382))

(assert (not b_next!121139))

(assert (not b!4168387))

(assert (not b!4168397))

(assert (not b!4168379))

(assert (not b!4168389))

(assert (not b!4168383))

(assert (not b!4168384))

(assert tp_is_empty!21887)

(check-sat)

(pop 1)

(push 1)

(assert b_and!325303)

(assert b_and!325301)

(assert b_and!325307)

(assert (not b_next!121135))

(assert b_and!325299)

(assert (not b_next!121137))

(assert b_and!325297)

(assert (not b_next!121139))

(assert (not b_next!121141))

(assert (not b_next!121133))

(assert (not b_next!121131))

(assert b_and!325305)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1231818 () Bool)

(assert (=> d!1231818 (= (isEmpty!27008 rules!3820) (is-Nil!45638 rules!3820))))

(assert (=> b!4168381 d!1231818))

(declare-fun b!4168473 () Bool)

(declare-fun e!2587774 () Bool)

(declare-fun e!2587773 () Bool)

(assert (=> b!4168473 (= e!2587774 e!2587773)))

(declare-fun res!1707794 () Bool)

(assert (=> b!4168473 (=> (not res!1707794) (not e!2587773))))

(assert (=> b!4168473 (= res!1707794 (not (is-Nil!45636 input!3316)))))

(declare-fun b!4168476 () Bool)

(declare-fun e!2587775 () Bool)

(assert (=> b!4168476 (= e!2587775 (>= (size!33524 input!3316) (size!33524 pBis!100)))))

(declare-fun b!4168475 () Bool)

(declare-fun tail!6696 (List!45760) List!45760)

(assert (=> b!4168475 (= e!2587773 (isPrefix!4414 (tail!6696 pBis!100) (tail!6696 input!3316)))))

(declare-fun d!1231822 () Bool)

(assert (=> d!1231822 e!2587775))

(declare-fun res!1707791 () Bool)

(assert (=> d!1231822 (=> res!1707791 e!2587775)))

(declare-fun lt!1484767 () Bool)

(assert (=> d!1231822 (= res!1707791 (not lt!1484767))))

(assert (=> d!1231822 (= lt!1484767 e!2587774)))

(declare-fun res!1707793 () Bool)

(assert (=> d!1231822 (=> res!1707793 e!2587774)))

(assert (=> d!1231822 (= res!1707793 (is-Nil!45636 pBis!100))))

(assert (=> d!1231822 (= (isPrefix!4414 pBis!100 input!3316) lt!1484767)))

(declare-fun b!4168474 () Bool)

(declare-fun res!1707792 () Bool)

(assert (=> b!4168474 (=> (not res!1707792) (not e!2587773))))

(declare-fun head!8849 (List!45760) C!25114)

(assert (=> b!4168474 (= res!1707792 (= (head!8849 pBis!100) (head!8849 input!3316)))))

(assert (= (and d!1231822 (not res!1707793)) b!4168473))

(assert (= (and b!4168473 res!1707794) b!4168474))

(assert (= (and b!4168474 res!1707792) b!4168475))

(assert (= (and d!1231822 (not res!1707791)) b!4168476))

(declare-fun m!4759731 () Bool)

(assert (=> b!4168476 m!4759731))

(assert (=> b!4168476 m!4759677))

(declare-fun m!4759733 () Bool)

(assert (=> b!4168475 m!4759733))

(declare-fun m!4759735 () Bool)

(assert (=> b!4168475 m!4759735))

(assert (=> b!4168475 m!4759733))

(assert (=> b!4168475 m!4759735))

(declare-fun m!4759737 () Bool)

(assert (=> b!4168475 m!4759737))

(declare-fun m!4759739 () Bool)

(assert (=> b!4168474 m!4759739))

(declare-fun m!4759741 () Bool)

(assert (=> b!4168474 m!4759741))

(assert (=> b!4168382 d!1231822))

(declare-fun d!1231824 () Bool)

(declare-fun lt!1484770 () Int)

(assert (=> d!1231824 (>= lt!1484770 0)))

(declare-fun e!2587778 () Int)

(assert (=> d!1231824 (= lt!1484770 e!2587778)))

(declare-fun c!712706 () Bool)

(assert (=> d!1231824 (= c!712706 (is-Nil!45636 pBis!100))))

(assert (=> d!1231824 (= (size!33524 pBis!100) lt!1484770)))

(declare-fun b!4168481 () Bool)

(assert (=> b!4168481 (= e!2587778 0)))

(declare-fun b!4168482 () Bool)

(assert (=> b!4168482 (= e!2587778 (+ 1 (size!33524 (t!344207 pBis!100))))))

(assert (= (and d!1231824 c!712706) b!4168481))

(assert (= (and d!1231824 (not c!712706)) b!4168482))

(declare-fun m!4759743 () Bool)

(assert (=> b!4168482 m!4759743))

(assert (=> b!4168393 d!1231824))

(declare-fun d!1231826 () Bool)

(declare-fun res!1707797 () Bool)

(declare-fun e!2587781 () Bool)

(assert (=> d!1231826 (=> (not res!1707797) (not e!2587781))))

(declare-fun rulesValid!2949 (LexerInterface!7150 List!45762) Bool)

(assert (=> d!1231826 (= res!1707797 (rulesValid!2949 thiss!25889 rules!3820))))

(assert (=> d!1231826 (= (rulesInvariant!6363 thiss!25889 rules!3820) e!2587781)))

(declare-fun b!4168485 () Bool)

(declare-datatypes ((List!45766 0))(
  ( (Nil!45642) (Cons!45642 (h!51062 String!52802) (t!344241 List!45766)) )
))
(declare-fun noDuplicateTag!3110 (LexerInterface!7150 List!45762 List!45766) Bool)

(assert (=> b!4168485 (= e!2587781 (noDuplicateTag!3110 thiss!25889 rules!3820 Nil!45642))))

(assert (= (and d!1231826 res!1707797) b!4168485))

(declare-fun m!4759745 () Bool)

(assert (=> d!1231826 m!4759745))

(declare-fun m!4759747 () Bool)

(assert (=> b!4168485 m!4759747))

(assert (=> b!4168394 d!1231826))

(declare-fun b!4168504 () Bool)

(declare-fun res!1707812 () Bool)

(declare-fun e!2587793 () Bool)

(assert (=> b!4168504 (=> (not res!1707812) (not e!2587793))))

(declare-fun lt!1484783 () Option!9765)

(declare-fun get!14831 (Option!9765) tuple2!43540)

(assert (=> b!4168504 (= res!1707812 (< (size!33524 (_2!24904 (get!14831 lt!1484783))) (size!33524 input!3316)))))

(declare-fun b!4168505 () Bool)

(declare-fun res!1707818 () Bool)

(assert (=> b!4168505 (=> (not res!1707818) (not e!2587793))))

(assert (=> b!4168505 (= res!1707818 (= (rule!10611 (_1!24904 (get!14831 lt!1484783))) r!4097))))

(declare-fun b!4168506 () Bool)

(declare-fun e!2587790 () Bool)

(assert (=> b!4168506 (= e!2587790 e!2587793)))

(declare-fun res!1707815 () Bool)

(assert (=> b!4168506 (=> (not res!1707815) (not e!2587793))))

(declare-fun list!16518 (BalanceConc!27130) List!45760)

(declare-fun charsOf!5028 (Token!13852) BalanceConc!27130)

(assert (=> b!4168506 (= res!1707815 (matchR!6203 (regex!7557 r!4097) (list!16518 (charsOf!5028 (_1!24904 (get!14831 lt!1484783))))))))

(declare-fun b!4168507 () Bool)

(declare-fun res!1707817 () Bool)

(assert (=> b!4168507 (=> (not res!1707817) (not e!2587793))))

(declare-fun ++!11665 (List!45760 List!45760) List!45760)

(assert (=> b!4168507 (= res!1707817 (= (++!11665 (list!16518 (charsOf!5028 (_1!24904 (get!14831 lt!1484783)))) (_2!24904 (get!14831 lt!1484783))) input!3316))))

(declare-fun b!4168508 () Bool)

(declare-fun e!2587791 () Option!9765)

(assert (=> b!4168508 (= e!2587791 None!9764)))

(declare-fun b!4168510 () Bool)

(declare-fun res!1707813 () Bool)

(assert (=> b!4168510 (=> (not res!1707813) (not e!2587793))))

(assert (=> b!4168510 (= res!1707813 (= (value!235920 (_1!24904 (get!14831 lt!1484783))) (apply!10534 (transformation!7557 (rule!10611 (_1!24904 (get!14831 lt!1484783)))) (seqFromList!5586 (originalCharacters!7957 (_1!24904 (get!14831 lt!1484783)))))))))

(declare-fun b!4168511 () Bool)

(declare-fun e!2587792 () Bool)

(declare-datatypes ((tuple2!43544 0))(
  ( (tuple2!43545 (_1!24906 List!45760) (_2!24906 List!45760)) )
))
(declare-fun findLongestMatchInner!1566 (Regex!12462 List!45760 Int List!45760 List!45760 Int) tuple2!43544)

(assert (=> b!4168511 (= e!2587792 (matchR!6203 (regex!7557 r!4097) (_1!24906 (findLongestMatchInner!1566 (regex!7557 r!4097) Nil!45636 (size!33524 Nil!45636) input!3316 input!3316 (size!33524 input!3316)))))))

(declare-fun b!4168512 () Bool)

(declare-fun lt!1484782 () tuple2!43544)

(declare-fun size!33527 (BalanceConc!27130) Int)

(assert (=> b!4168512 (= e!2587791 (Some!9764 (tuple2!43541 (Token!13853 (apply!10534 (transformation!7557 r!4097) (seqFromList!5586 (_1!24906 lt!1484782))) r!4097 (size!33527 (seqFromList!5586 (_1!24906 lt!1484782))) (_1!24906 lt!1484782)) (_2!24906 lt!1484782))))))

(declare-fun lt!1484785 () Unit!64718)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1539 (Regex!12462 List!45760) Unit!64718)

(assert (=> b!4168512 (= lt!1484785 (longestMatchIsAcceptedByMatchOrIsEmpty!1539 (regex!7557 r!4097) input!3316))))

(declare-fun res!1707814 () Bool)

(declare-fun isEmpty!27010 (List!45760) Bool)

(assert (=> b!4168512 (= res!1707814 (isEmpty!27010 (_1!24906 (findLongestMatchInner!1566 (regex!7557 r!4097) Nil!45636 (size!33524 Nil!45636) input!3316 input!3316 (size!33524 input!3316)))))))

(assert (=> b!4168512 (=> res!1707814 e!2587792)))

(assert (=> b!4168512 e!2587792))

(declare-fun lt!1484781 () Unit!64718)

(assert (=> b!4168512 (= lt!1484781 lt!1484785)))

(declare-fun lt!1484784 () Unit!64718)

(assert (=> b!4168512 (= lt!1484784 (lemmaSemiInverse!2327 (transformation!7557 r!4097) (seqFromList!5586 (_1!24906 lt!1484782))))))

(declare-fun b!4168509 () Bool)

(assert (=> b!4168509 (= e!2587793 (= (size!33523 (_1!24904 (get!14831 lt!1484783))) (size!33524 (originalCharacters!7957 (_1!24904 (get!14831 lt!1484783))))))))

(declare-fun d!1231828 () Bool)

(assert (=> d!1231828 e!2587790))

(declare-fun res!1707816 () Bool)

(assert (=> d!1231828 (=> res!1707816 e!2587790)))

(declare-fun isEmpty!27011 (Option!9765) Bool)

(assert (=> d!1231828 (= res!1707816 (isEmpty!27011 lt!1484783))))

(assert (=> d!1231828 (= lt!1484783 e!2587791)))

(declare-fun c!712709 () Bool)

(assert (=> d!1231828 (= c!712709 (isEmpty!27010 (_1!24906 lt!1484782)))))

(declare-fun findLongestMatch!1479 (Regex!12462 List!45760) tuple2!43544)

(assert (=> d!1231828 (= lt!1484782 (findLongestMatch!1479 (regex!7557 r!4097) input!3316))))

(assert (=> d!1231828 (ruleValid!3279 thiss!25889 r!4097)))

(assert (=> d!1231828 (= (maxPrefixOneRule!3173 thiss!25889 r!4097 input!3316) lt!1484783)))

(assert (= (and d!1231828 c!712709) b!4168508))

(assert (= (and d!1231828 (not c!712709)) b!4168512))

(assert (= (and b!4168512 (not res!1707814)) b!4168511))

(assert (= (and d!1231828 (not res!1707816)) b!4168506))

(assert (= (and b!4168506 res!1707815) b!4168507))

(assert (= (and b!4168507 res!1707817) b!4168504))

(assert (= (and b!4168504 res!1707812) b!4168505))

(assert (= (and b!4168505 res!1707818) b!4168510))

(assert (= (and b!4168510 res!1707813) b!4168509))

(declare-fun m!4759749 () Bool)

(assert (=> b!4168510 m!4759749))

(declare-fun m!4759751 () Bool)

(assert (=> b!4168510 m!4759751))

(assert (=> b!4168510 m!4759751))

(declare-fun m!4759753 () Bool)

(assert (=> b!4168510 m!4759753))

(declare-fun m!4759755 () Bool)

(assert (=> b!4168511 m!4759755))

(assert (=> b!4168511 m!4759731))

(assert (=> b!4168511 m!4759755))

(assert (=> b!4168511 m!4759731))

(declare-fun m!4759757 () Bool)

(assert (=> b!4168511 m!4759757))

(declare-fun m!4759759 () Bool)

(assert (=> b!4168511 m!4759759))

(assert (=> b!4168506 m!4759749))

(declare-fun m!4759761 () Bool)

(assert (=> b!4168506 m!4759761))

(assert (=> b!4168506 m!4759761))

(declare-fun m!4759763 () Bool)

(assert (=> b!4168506 m!4759763))

(assert (=> b!4168506 m!4759763))

(declare-fun m!4759765 () Bool)

(assert (=> b!4168506 m!4759765))

(assert (=> b!4168505 m!4759749))

(assert (=> b!4168504 m!4759749))

(declare-fun m!4759767 () Bool)

(assert (=> b!4168504 m!4759767))

(assert (=> b!4168504 m!4759731))

(declare-fun m!4759769 () Bool)

(assert (=> d!1231828 m!4759769))

(declare-fun m!4759771 () Bool)

(assert (=> d!1231828 m!4759771))

(declare-fun m!4759773 () Bool)

(assert (=> d!1231828 m!4759773))

(assert (=> d!1231828 m!4759665))

(declare-fun m!4759775 () Bool)

(assert (=> b!4168512 m!4759775))

(assert (=> b!4168512 m!4759775))

(declare-fun m!4759777 () Bool)

(assert (=> b!4168512 m!4759777))

(declare-fun m!4759779 () Bool)

(assert (=> b!4168512 m!4759779))

(declare-fun m!4759781 () Bool)

(assert (=> b!4168512 m!4759781))

(assert (=> b!4168512 m!4759731))

(assert (=> b!4168512 m!4759755))

(assert (=> b!4168512 m!4759731))

(assert (=> b!4168512 m!4759757))

(assert (=> b!4168512 m!4759755))

(assert (=> b!4168512 m!4759775))

(declare-fun m!4759783 () Bool)

(assert (=> b!4168512 m!4759783))

(assert (=> b!4168512 m!4759775))

(declare-fun m!4759785 () Bool)

(assert (=> b!4168512 m!4759785))

(assert (=> b!4168507 m!4759749))

(assert (=> b!4168507 m!4759761))

(assert (=> b!4168507 m!4759761))

(assert (=> b!4168507 m!4759763))

(assert (=> b!4168507 m!4759763))

(declare-fun m!4759787 () Bool)

(assert (=> b!4168507 m!4759787))

(assert (=> b!4168509 m!4759749))

(declare-fun m!4759789 () Bool)

(assert (=> b!4168509 m!4759789))

(assert (=> b!4168383 d!1231828))

(declare-fun d!1231830 () Bool)

(declare-fun lt!1484786 () Int)

(assert (=> d!1231830 (>= lt!1484786 0)))

(declare-fun e!2587794 () Int)

(assert (=> d!1231830 (= lt!1484786 e!2587794)))

(declare-fun c!712710 () Bool)

(assert (=> d!1231830 (= c!712710 (is-Nil!45636 p!2942))))

(assert (=> d!1231830 (= (size!33524 p!2942) lt!1484786)))

(declare-fun b!4168513 () Bool)

(assert (=> b!4168513 (= e!2587794 0)))

(declare-fun b!4168514 () Bool)

(assert (=> b!4168514 (= e!2587794 (+ 1 (size!33524 (t!344207 p!2942))))))

(assert (= (and d!1231830 c!712710) b!4168513))

(assert (= (and d!1231830 (not c!712710)) b!4168514))

(declare-fun m!4759791 () Bool)

(assert (=> b!4168514 m!4759791))

(assert (=> b!4168383 d!1231830))

(declare-fun d!1231832 () Bool)

(declare-fun dynLambda!19562 (Int BalanceConc!27130) TokenValue!7787)

(assert (=> d!1231832 (= (apply!10534 (transformation!7557 r!4097) lt!1484739) (dynLambda!19562 (toValue!10237 (transformation!7557 r!4097)) lt!1484739))))

(declare-fun b_lambda!122439 () Bool)

(assert (=> (not b_lambda!122439) (not d!1231832)))

(declare-fun t!344214 () Bool)

(declare-fun tb!249667 () Bool)

(assert (=> (and b!4168392 (= (toValue!10237 (transformation!7557 r!4097)) (toValue!10237 (transformation!7557 r!4097))) t!344214) tb!249667))

(declare-fun result!304116 () Bool)

(declare-fun inv!21 (TokenValue!7787) Bool)

(assert (=> tb!249667 (= result!304116 (inv!21 (dynLambda!19562 (toValue!10237 (transformation!7557 r!4097)) lt!1484739)))))

(declare-fun m!4759793 () Bool)

(assert (=> tb!249667 m!4759793))

(assert (=> d!1231832 t!344214))

(declare-fun b_and!325321 () Bool)

(assert (= b_and!325297 (and (=> t!344214 result!304116) b_and!325321)))

(declare-fun tb!249669 () Bool)

(declare-fun t!344216 () Bool)

(assert (=> (and b!4168377 (= (toValue!10237 (transformation!7557 rBis!161)) (toValue!10237 (transformation!7557 r!4097))) t!344216) tb!249669))

(declare-fun result!304120 () Bool)

(assert (= result!304120 result!304116))

(assert (=> d!1231832 t!344216))

(declare-fun b_and!325323 () Bool)

(assert (= b_and!325301 (and (=> t!344216 result!304120) b_and!325323)))

(declare-fun tb!249671 () Bool)

(declare-fun t!344218 () Bool)

(assert (=> (and b!4168386 (= (toValue!10237 (transformation!7557 (h!51058 rules!3820))) (toValue!10237 (transformation!7557 r!4097))) t!344218) tb!249671))

(declare-fun result!304122 () Bool)

(assert (= result!304122 result!304116))

(assert (=> d!1231832 t!344218))

(declare-fun b_and!325325 () Bool)

(assert (= b_and!325305 (and (=> t!344218 result!304122) b_and!325325)))

(declare-fun m!4759795 () Bool)

(assert (=> d!1231832 m!4759795))

(assert (=> b!4168383 d!1231832))

(declare-fun d!1231834 () Bool)

(assert (=> d!1231834 (isPrefix!4414 input!3316 input!3316)))

(declare-fun lt!1484789 () Unit!64718)

(declare-fun choose!25522 (List!45760 List!45760) Unit!64718)

(assert (=> d!1231834 (= lt!1484789 (choose!25522 input!3316 input!3316))))

(assert (=> d!1231834 (= (lemmaIsPrefixRefl!2849 input!3316 input!3316) lt!1484789)))

(declare-fun bs!595974 () Bool)

(assert (= bs!595974 d!1231834))

(assert (=> bs!595974 m!4759629))

(declare-fun m!4759797 () Bool)

(assert (=> bs!595974 m!4759797))

(assert (=> b!4168383 d!1231834))

(declare-fun d!1231836 () Bool)

(declare-fun fromListB!2564 (List!45760) BalanceConc!27130)

(assert (=> d!1231836 (= (seqFromList!5586 p!2942) (fromListB!2564 p!2942))))

(declare-fun bs!595975 () Bool)

(assert (= bs!595975 d!1231836))

(declare-fun m!4759799 () Bool)

(assert (=> bs!595975 m!4759799))

(assert (=> b!4168383 d!1231836))

(declare-fun b!4168525 () Bool)

(declare-fun e!2587802 () Bool)

(assert (=> b!4168525 (= e!2587802 true)))

(declare-fun d!1231838 () Bool)

(assert (=> d!1231838 e!2587802))

(assert (= d!1231838 b!4168525))

(declare-fun order!24063 () Int)

(declare-fun lambda!129210 () Int)

(declare-fun order!24065 () Int)

(declare-fun dynLambda!19563 (Int Int) Int)

(declare-fun dynLambda!19564 (Int Int) Int)

(assert (=> b!4168525 (< (dynLambda!19563 order!24063 (toValue!10237 (transformation!7557 r!4097))) (dynLambda!19564 order!24065 lambda!129210))))

(declare-fun order!24067 () Int)

(declare-fun dynLambda!19565 (Int Int) Int)

(assert (=> b!4168525 (< (dynLambda!19565 order!24067 (toChars!10096 (transformation!7557 r!4097))) (dynLambda!19564 order!24065 lambda!129210))))

(declare-fun dynLambda!19566 (Int TokenValue!7787) BalanceConc!27130)

(assert (=> d!1231838 (= (list!16518 (dynLambda!19566 (toChars!10096 (transformation!7557 r!4097)) (dynLambda!19562 (toValue!10237 (transformation!7557 r!4097)) lt!1484739))) (list!16518 lt!1484739))))

(declare-fun lt!1484792 () Unit!64718)

(declare-fun ForallOf!1015 (Int BalanceConc!27130) Unit!64718)

(assert (=> d!1231838 (= lt!1484792 (ForallOf!1015 lambda!129210 lt!1484739))))

(assert (=> d!1231838 (= (lemmaSemiInverse!2327 (transformation!7557 r!4097) lt!1484739) lt!1484792)))

(declare-fun b_lambda!122441 () Bool)

(assert (=> (not b_lambda!122441) (not d!1231838)))

(declare-fun t!344220 () Bool)

(declare-fun tb!249673 () Bool)

(assert (=> (and b!4168392 (= (toChars!10096 (transformation!7557 r!4097)) (toChars!10096 (transformation!7557 r!4097))) t!344220) tb!249673))

(declare-fun b!4168530 () Bool)

(declare-fun tp!1273275 () Bool)

(declare-fun e!2587805 () Bool)

(declare-fun inv!60173 (Conc!13768) Bool)

(assert (=> b!4168530 (= e!2587805 (and (inv!60173 (c!712699 (dynLambda!19566 (toChars!10096 (transformation!7557 r!4097)) (dynLambda!19562 (toValue!10237 (transformation!7557 r!4097)) lt!1484739)))) tp!1273275))))

(declare-fun result!304124 () Bool)

(declare-fun inv!60174 (BalanceConc!27130) Bool)

(assert (=> tb!249673 (= result!304124 (and (inv!60174 (dynLambda!19566 (toChars!10096 (transformation!7557 r!4097)) (dynLambda!19562 (toValue!10237 (transformation!7557 r!4097)) lt!1484739))) e!2587805))))

(assert (= tb!249673 b!4168530))

(declare-fun m!4759807 () Bool)

(assert (=> b!4168530 m!4759807))

(declare-fun m!4759809 () Bool)

(assert (=> tb!249673 m!4759809))

(assert (=> d!1231838 t!344220))

(declare-fun b_and!325327 () Bool)

(assert (= b_and!325299 (and (=> t!344220 result!304124) b_and!325327)))

(declare-fun t!344222 () Bool)

(declare-fun tb!249675 () Bool)

(assert (=> (and b!4168377 (= (toChars!10096 (transformation!7557 rBis!161)) (toChars!10096 (transformation!7557 r!4097))) t!344222) tb!249675))

(declare-fun result!304128 () Bool)

(assert (= result!304128 result!304124))

(assert (=> d!1231838 t!344222))

(declare-fun b_and!325329 () Bool)

(assert (= b_and!325303 (and (=> t!344222 result!304128) b_and!325329)))

(declare-fun t!344224 () Bool)

(declare-fun tb!249677 () Bool)

(assert (=> (and b!4168386 (= (toChars!10096 (transformation!7557 (h!51058 rules!3820))) (toChars!10096 (transformation!7557 r!4097))) t!344224) tb!249677))

(declare-fun result!304130 () Bool)

(assert (= result!304130 result!304124))

(assert (=> d!1231838 t!344224))

(declare-fun b_and!325331 () Bool)

(assert (= b_and!325307 (and (=> t!344224 result!304130) b_and!325331)))

(declare-fun b_lambda!122443 () Bool)

(assert (=> (not b_lambda!122443) (not d!1231838)))

(assert (=> d!1231838 t!344214))

(declare-fun b_and!325333 () Bool)

(assert (= b_and!325321 (and (=> t!344214 result!304116) b_and!325333)))

(assert (=> d!1231838 t!344216))

(declare-fun b_and!325335 () Bool)

(assert (= b_and!325323 (and (=> t!344216 result!304120) b_and!325335)))

(assert (=> d!1231838 t!344218))

(declare-fun b_and!325337 () Bool)

(assert (= b_and!325325 (and (=> t!344218 result!304122) b_and!325337)))

(assert (=> d!1231838 m!4759795))

(declare-fun m!4759811 () Bool)

(assert (=> d!1231838 m!4759811))

(declare-fun m!4759813 () Bool)

(assert (=> d!1231838 m!4759813))

(assert (=> d!1231838 m!4759811))

(declare-fun m!4759815 () Bool)

(assert (=> d!1231838 m!4759815))

(assert (=> d!1231838 m!4759795))

(declare-fun m!4759817 () Bool)

(assert (=> d!1231838 m!4759817))

(assert (=> b!4168383 d!1231838))

(declare-fun d!1231842 () Bool)

(declare-fun lt!1484796 () List!45760)

(assert (=> d!1231842 (= (++!11665 p!2942 lt!1484796) input!3316)))

(declare-fun e!2587808 () List!45760)

(assert (=> d!1231842 (= lt!1484796 e!2587808)))

(declare-fun c!712714 () Bool)

(assert (=> d!1231842 (= c!712714 (is-Cons!45636 p!2942))))

(assert (=> d!1231842 (>= (size!33524 input!3316) (size!33524 p!2942))))

(assert (=> d!1231842 (= (getSuffix!2721 input!3316 p!2942) lt!1484796)))

(declare-fun b!4168535 () Bool)

(assert (=> b!4168535 (= e!2587808 (getSuffix!2721 (tail!6696 input!3316) (t!344207 p!2942)))))

(declare-fun b!4168536 () Bool)

(assert (=> b!4168536 (= e!2587808 input!3316)))

(assert (= (and d!1231842 c!712714) b!4168535))

(assert (= (and d!1231842 (not c!712714)) b!4168536))

(declare-fun m!4759819 () Bool)

(assert (=> d!1231842 m!4759819))

(assert (=> d!1231842 m!4759731))

(assert (=> d!1231842 m!4759641))

(assert (=> b!4168535 m!4759735))

(assert (=> b!4168535 m!4759735))

(declare-fun m!4759821 () Bool)

(assert (=> b!4168535 m!4759821))

(assert (=> b!4168383 d!1231842))

(declare-fun b!4168537 () Bool)

(declare-fun e!2587810 () Bool)

(declare-fun e!2587809 () Bool)

(assert (=> b!4168537 (= e!2587810 e!2587809)))

(declare-fun res!1707824 () Bool)

(assert (=> b!4168537 (=> (not res!1707824) (not e!2587809))))

(assert (=> b!4168537 (= res!1707824 (not (is-Nil!45636 input!3316)))))

(declare-fun b!4168540 () Bool)

(declare-fun e!2587811 () Bool)

(assert (=> b!4168540 (= e!2587811 (>= (size!33524 input!3316) (size!33524 input!3316)))))

(declare-fun b!4168539 () Bool)

(assert (=> b!4168539 (= e!2587809 (isPrefix!4414 (tail!6696 input!3316) (tail!6696 input!3316)))))

(declare-fun d!1231844 () Bool)

(assert (=> d!1231844 e!2587811))

(declare-fun res!1707821 () Bool)

(assert (=> d!1231844 (=> res!1707821 e!2587811)))

(declare-fun lt!1484797 () Bool)

(assert (=> d!1231844 (= res!1707821 (not lt!1484797))))

(assert (=> d!1231844 (= lt!1484797 e!2587810)))

(declare-fun res!1707823 () Bool)

(assert (=> d!1231844 (=> res!1707823 e!2587810)))

(assert (=> d!1231844 (= res!1707823 (is-Nil!45636 input!3316))))

(assert (=> d!1231844 (= (isPrefix!4414 input!3316 input!3316) lt!1484797)))

(declare-fun b!4168538 () Bool)

(declare-fun res!1707822 () Bool)

(assert (=> b!4168538 (=> (not res!1707822) (not e!2587809))))

(assert (=> b!4168538 (= res!1707822 (= (head!8849 input!3316) (head!8849 input!3316)))))

(assert (= (and d!1231844 (not res!1707823)) b!4168537))

(assert (= (and b!4168537 res!1707824) b!4168538))

(assert (= (and b!4168538 res!1707822) b!4168539))

(assert (= (and d!1231844 (not res!1707821)) b!4168540))

(assert (=> b!4168540 m!4759731))

(assert (=> b!4168540 m!4759731))

(assert (=> b!4168539 m!4759735))

(assert (=> b!4168539 m!4759735))

(assert (=> b!4168539 m!4759735))

(assert (=> b!4168539 m!4759735))

(declare-fun m!4759823 () Bool)

(assert (=> b!4168539 m!4759823))

(assert (=> b!4168538 m!4759741))

(assert (=> b!4168538 m!4759741))

(assert (=> b!4168383 d!1231844))

(declare-fun b!4168559 () Bool)

(declare-fun e!2587819 () Option!9765)

(declare-fun lt!1484810 () Option!9765)

(declare-fun lt!1484808 () Option!9765)

(assert (=> b!4168559 (= e!2587819 (ite (and (is-None!9764 lt!1484810) (is-None!9764 lt!1484808)) None!9764 (ite (is-None!9764 lt!1484808) lt!1484810 (ite (is-None!9764 lt!1484810) lt!1484808 (ite (>= (size!33523 (_1!24904 (v!40550 lt!1484810))) (size!33523 (_1!24904 (v!40550 lt!1484808)))) lt!1484810 lt!1484808)))))))

(declare-fun call!291151 () Option!9765)

(assert (=> b!4168559 (= lt!1484810 call!291151)))

(assert (=> b!4168559 (= lt!1484808 (maxPrefix!4226 thiss!25889 (t!344209 rules!3820) input!3316))))

(declare-fun d!1231846 () Bool)

(declare-fun e!2587818 () Bool)

(assert (=> d!1231846 e!2587818))

(declare-fun res!1707844 () Bool)

(assert (=> d!1231846 (=> res!1707844 e!2587818)))

(declare-fun lt!1484812 () Option!9765)

(assert (=> d!1231846 (= res!1707844 (isEmpty!27011 lt!1484812))))

(assert (=> d!1231846 (= lt!1484812 e!2587819)))

(declare-fun c!712717 () Bool)

(assert (=> d!1231846 (= c!712717 (and (is-Cons!45638 rules!3820) (is-Nil!45638 (t!344209 rules!3820))))))

(declare-fun lt!1484809 () Unit!64718)

(declare-fun lt!1484811 () Unit!64718)

(assert (=> d!1231846 (= lt!1484809 lt!1484811)))

(assert (=> d!1231846 (isPrefix!4414 input!3316 input!3316)))

(assert (=> d!1231846 (= lt!1484811 (lemmaIsPrefixRefl!2849 input!3316 input!3316))))

(assert (=> d!1231846 (rulesValidInductive!2787 thiss!25889 rules!3820)))

(assert (=> d!1231846 (= (maxPrefix!4226 thiss!25889 rules!3820 input!3316) lt!1484812)))

(declare-fun b!4168560 () Bool)

(assert (=> b!4168560 (= e!2587819 call!291151)))

(declare-fun b!4168561 () Bool)

(declare-fun res!1707842 () Bool)

(declare-fun e!2587820 () Bool)

(assert (=> b!4168561 (=> (not res!1707842) (not e!2587820))))

(assert (=> b!4168561 (= res!1707842 (= (value!235920 (_1!24904 (get!14831 lt!1484812))) (apply!10534 (transformation!7557 (rule!10611 (_1!24904 (get!14831 lt!1484812)))) (seqFromList!5586 (originalCharacters!7957 (_1!24904 (get!14831 lt!1484812)))))))))

(declare-fun b!4168562 () Bool)

(declare-fun res!1707839 () Bool)

(assert (=> b!4168562 (=> (not res!1707839) (not e!2587820))))

(assert (=> b!4168562 (= res!1707839 (matchR!6203 (regex!7557 (rule!10611 (_1!24904 (get!14831 lt!1484812)))) (list!16518 (charsOf!5028 (_1!24904 (get!14831 lt!1484812))))))))

(declare-fun b!4168563 () Bool)

(assert (=> b!4168563 (= e!2587818 e!2587820)))

(declare-fun res!1707841 () Bool)

(assert (=> b!4168563 (=> (not res!1707841) (not e!2587820))))

(declare-fun isDefined!7313 (Option!9765) Bool)

(assert (=> b!4168563 (= res!1707841 (isDefined!7313 lt!1484812))))

(declare-fun b!4168564 () Bool)

(declare-fun res!1707840 () Bool)

(assert (=> b!4168564 (=> (not res!1707840) (not e!2587820))))

(assert (=> b!4168564 (= res!1707840 (= (list!16518 (charsOf!5028 (_1!24904 (get!14831 lt!1484812)))) (originalCharacters!7957 (_1!24904 (get!14831 lt!1484812)))))))

(declare-fun b!4168565 () Bool)

(assert (=> b!4168565 (= e!2587820 (contains!9358 rules!3820 (rule!10611 (_1!24904 (get!14831 lt!1484812)))))))

(declare-fun b!4168566 () Bool)

(declare-fun res!1707843 () Bool)

(assert (=> b!4168566 (=> (not res!1707843) (not e!2587820))))

(assert (=> b!4168566 (= res!1707843 (< (size!33524 (_2!24904 (get!14831 lt!1484812))) (size!33524 input!3316)))))

(declare-fun b!4168567 () Bool)

(declare-fun res!1707845 () Bool)

(assert (=> b!4168567 (=> (not res!1707845) (not e!2587820))))

(assert (=> b!4168567 (= res!1707845 (= (++!11665 (list!16518 (charsOf!5028 (_1!24904 (get!14831 lt!1484812)))) (_2!24904 (get!14831 lt!1484812))) input!3316))))

(declare-fun bm!291146 () Bool)

(assert (=> bm!291146 (= call!291151 (maxPrefixOneRule!3173 thiss!25889 (h!51058 rules!3820) input!3316))))

(assert (= (and d!1231846 c!712717) b!4168560))

(assert (= (and d!1231846 (not c!712717)) b!4168559))

(assert (= (or b!4168560 b!4168559) bm!291146))

(assert (= (and d!1231846 (not res!1707844)) b!4168563))

(assert (= (and b!4168563 res!1707841) b!4168564))

(assert (= (and b!4168564 res!1707840) b!4168566))

(assert (= (and b!4168566 res!1707843) b!4168567))

(assert (= (and b!4168567 res!1707845) b!4168561))

(assert (= (and b!4168561 res!1707842) b!4168562))

(assert (= (and b!4168562 res!1707839) b!4168565))

(declare-fun m!4759825 () Bool)

(assert (=> bm!291146 m!4759825))

(declare-fun m!4759827 () Bool)

(assert (=> b!4168562 m!4759827))

(declare-fun m!4759829 () Bool)

(assert (=> b!4168562 m!4759829))

(assert (=> b!4168562 m!4759829))

(declare-fun m!4759831 () Bool)

(assert (=> b!4168562 m!4759831))

(assert (=> b!4168562 m!4759831))

(declare-fun m!4759833 () Bool)

(assert (=> b!4168562 m!4759833))

(assert (=> b!4168561 m!4759827))

(declare-fun m!4759835 () Bool)

(assert (=> b!4168561 m!4759835))

(assert (=> b!4168561 m!4759835))

(declare-fun m!4759837 () Bool)

(assert (=> b!4168561 m!4759837))

(declare-fun m!4759839 () Bool)

(assert (=> d!1231846 m!4759839))

(assert (=> d!1231846 m!4759629))

(assert (=> d!1231846 m!4759637))

(assert (=> d!1231846 m!4759671))

(declare-fun m!4759841 () Bool)

(assert (=> b!4168563 m!4759841))

(assert (=> b!4168567 m!4759827))

(assert (=> b!4168567 m!4759829))

(assert (=> b!4168567 m!4759829))

(assert (=> b!4168567 m!4759831))

(assert (=> b!4168567 m!4759831))

(declare-fun m!4759843 () Bool)

(assert (=> b!4168567 m!4759843))

(assert (=> b!4168565 m!4759827))

(declare-fun m!4759845 () Bool)

(assert (=> b!4168565 m!4759845))

(assert (=> b!4168564 m!4759827))

(assert (=> b!4168564 m!4759829))

(assert (=> b!4168564 m!4759829))

(assert (=> b!4168564 m!4759831))

(declare-fun m!4759847 () Bool)

(assert (=> b!4168559 m!4759847))

(assert (=> b!4168566 m!4759827))

(declare-fun m!4759849 () Bool)

(assert (=> b!4168566 m!4759849))

(assert (=> b!4168566 m!4759731))

(assert (=> b!4168395 d!1231846))

(declare-fun d!1231848 () Bool)

(assert (=> d!1231848 (= (inv!60168 (tag!8421 rBis!161)) (= (mod (str.len (value!235894 (tag!8421 rBis!161))) 2) 0))))

(assert (=> b!4168396 d!1231848))

(declare-fun d!1231850 () Bool)

(declare-fun res!1707848 () Bool)

(declare-fun e!2587823 () Bool)

(assert (=> d!1231850 (=> (not res!1707848) (not e!2587823))))

(declare-fun semiInverseModEq!3281 (Int Int) Bool)

(assert (=> d!1231850 (= res!1707848 (semiInverseModEq!3281 (toChars!10096 (transformation!7557 rBis!161)) (toValue!10237 (transformation!7557 rBis!161))))))

(assert (=> d!1231850 (= (inv!60171 (transformation!7557 rBis!161)) e!2587823)))

(declare-fun b!4168570 () Bool)

(declare-fun equivClasses!3180 (Int Int) Bool)

(assert (=> b!4168570 (= e!2587823 (equivClasses!3180 (toChars!10096 (transformation!7557 rBis!161)) (toValue!10237 (transformation!7557 rBis!161))))))

(assert (= (and d!1231850 res!1707848) b!4168570))

(declare-fun m!4759851 () Bool)

(assert (=> d!1231850 m!4759851))

(declare-fun m!4759853 () Bool)

(assert (=> b!4168570 m!4759853))

(assert (=> b!4168396 d!1231850))

(declare-fun d!1231852 () Bool)

(assert (=> d!1231852 (= (inv!60168 (tag!8421 (h!51058 rules!3820))) (= (mod (str.len (value!235894 (tag!8421 (h!51058 rules!3820)))) 2) 0))))

(assert (=> b!4168385 d!1231852))

(declare-fun d!1231854 () Bool)

(declare-fun res!1707849 () Bool)

(declare-fun e!2587824 () Bool)

(assert (=> d!1231854 (=> (not res!1707849) (not e!2587824))))

(assert (=> d!1231854 (= res!1707849 (semiInverseModEq!3281 (toChars!10096 (transformation!7557 (h!51058 rules!3820))) (toValue!10237 (transformation!7557 (h!51058 rules!3820)))))))

(assert (=> d!1231854 (= (inv!60171 (transformation!7557 (h!51058 rules!3820))) e!2587824)))

(declare-fun b!4168571 () Bool)

(assert (=> b!4168571 (= e!2587824 (equivClasses!3180 (toChars!10096 (transformation!7557 (h!51058 rules!3820))) (toValue!10237 (transformation!7557 (h!51058 rules!3820)))))))

(assert (= (and d!1231854 res!1707849) b!4168571))

(declare-fun m!4759855 () Bool)

(assert (=> d!1231854 m!4759855))

(declare-fun m!4759857 () Bool)

(assert (=> b!4168571 m!4759857))

(assert (=> b!4168385 d!1231854))

(declare-fun d!1231856 () Bool)

(assert (=> d!1231856 true))

(declare-fun lt!1484825 () Bool)

(declare-fun lambda!129214 () Int)

(declare-fun forall!8468 (List!45762 Int) Bool)

(assert (=> d!1231856 (= lt!1484825 (forall!8468 rules!3820 lambda!129214))))

(declare-fun e!2587838 () Bool)

(assert (=> d!1231856 (= lt!1484825 e!2587838)))

(declare-fun res!1707868 () Bool)

(assert (=> d!1231856 (=> res!1707868 e!2587838)))

(assert (=> d!1231856 (= res!1707868 (not (is-Cons!45638 rules!3820)))))

(assert (=> d!1231856 (= (rulesValidInductive!2787 thiss!25889 rules!3820) lt!1484825)))

(declare-fun b!4168594 () Bool)

(declare-fun e!2587837 () Bool)

(assert (=> b!4168594 (= e!2587838 e!2587837)))

(declare-fun res!1707869 () Bool)

(assert (=> b!4168594 (=> (not res!1707869) (not e!2587837))))

(assert (=> b!4168594 (= res!1707869 (ruleValid!3279 thiss!25889 (h!51058 rules!3820)))))

(declare-fun b!4168595 () Bool)

(assert (=> b!4168595 (= e!2587837 (rulesValidInductive!2787 thiss!25889 (t!344209 rules!3820)))))

(assert (= (and d!1231856 (not res!1707868)) b!4168594))

(assert (= (and b!4168594 res!1707869) b!4168595))

(declare-fun m!4759859 () Bool)

(assert (=> d!1231856 m!4759859))

(declare-fun m!4759861 () Bool)

(assert (=> b!4168594 m!4759861))

(declare-fun m!4759863 () Bool)

(assert (=> b!4168595 m!4759863))

(assert (=> b!4168378 d!1231856))

(declare-fun b!4168598 () Bool)

(declare-fun e!2587840 () Bool)

(declare-fun e!2587839 () Bool)

(assert (=> b!4168598 (= e!2587840 e!2587839)))

(declare-fun res!1707873 () Bool)

(assert (=> b!4168598 (=> (not res!1707873) (not e!2587839))))

(assert (=> b!4168598 (= res!1707873 (not (is-Nil!45636 input!3316)))))

(declare-fun b!4168601 () Bool)

(declare-fun e!2587841 () Bool)

(assert (=> b!4168601 (= e!2587841 (>= (size!33524 input!3316) (size!33524 p!2942)))))

(declare-fun b!4168600 () Bool)

(assert (=> b!4168600 (= e!2587839 (isPrefix!4414 (tail!6696 p!2942) (tail!6696 input!3316)))))

(declare-fun d!1231858 () Bool)

(assert (=> d!1231858 e!2587841))

(declare-fun res!1707870 () Bool)

(assert (=> d!1231858 (=> res!1707870 e!2587841)))

(declare-fun lt!1484826 () Bool)

(assert (=> d!1231858 (= res!1707870 (not lt!1484826))))

(assert (=> d!1231858 (= lt!1484826 e!2587840)))

(declare-fun res!1707872 () Bool)

(assert (=> d!1231858 (=> res!1707872 e!2587840)))

(assert (=> d!1231858 (= res!1707872 (is-Nil!45636 p!2942))))

(assert (=> d!1231858 (= (isPrefix!4414 p!2942 input!3316) lt!1484826)))

(declare-fun b!4168599 () Bool)

(declare-fun res!1707871 () Bool)

(assert (=> b!4168599 (=> (not res!1707871) (not e!2587839))))

(assert (=> b!4168599 (= res!1707871 (= (head!8849 p!2942) (head!8849 input!3316)))))

(assert (= (and d!1231858 (not res!1707872)) b!4168598))

(assert (= (and b!4168598 res!1707873) b!4168599))

(assert (= (and b!4168599 res!1707871) b!4168600))

(assert (= (and d!1231858 (not res!1707870)) b!4168601))

(assert (=> b!4168601 m!4759731))

(assert (=> b!4168601 m!4759641))

(declare-fun m!4759865 () Bool)

(assert (=> b!4168600 m!4759865))

(assert (=> b!4168600 m!4759735))

(assert (=> b!4168600 m!4759865))

(assert (=> b!4168600 m!4759735))

(declare-fun m!4759867 () Bool)

(assert (=> b!4168600 m!4759867))

(declare-fun m!4759869 () Bool)

(assert (=> b!4168599 m!4759869))

(assert (=> b!4168599 m!4759741))

(assert (=> b!4168389 d!1231858))

(declare-fun b!4168645 () Bool)

(declare-fun e!2587868 () Bool)

(assert (=> b!4168645 (= e!2587868 (not (= (head!8849 p!2942) (c!712700 (regex!7557 r!4097)))))))

(declare-fun b!4168646 () Bool)

(declare-fun e!2587865 () Bool)

(declare-fun lt!1484837 () Bool)

(assert (=> b!4168646 (= e!2587865 (not lt!1484837))))

(declare-fun b!4168647 () Bool)

(declare-fun res!1707904 () Bool)

(declare-fun e!2587864 () Bool)

(assert (=> b!4168647 (=> res!1707904 e!2587864)))

(assert (=> b!4168647 (= res!1707904 (not (is-ElementMatch!12462 (regex!7557 r!4097))))))

(assert (=> b!4168647 (= e!2587865 e!2587864)))

(declare-fun b!4168648 () Bool)

(declare-fun e!2587866 () Bool)

(declare-fun call!291154 () Bool)

(assert (=> b!4168648 (= e!2587866 (= lt!1484837 call!291154))))

(declare-fun b!4168649 () Bool)

(declare-fun e!2587863 () Bool)

(declare-fun derivativeStep!3762 (Regex!12462 C!25114) Regex!12462)

(assert (=> b!4168649 (= e!2587863 (matchR!6203 (derivativeStep!3762 (regex!7557 r!4097) (head!8849 p!2942)) (tail!6696 p!2942)))))

(declare-fun b!4168650 () Bool)

(declare-fun res!1707897 () Bool)

(declare-fun e!2587869 () Bool)

(assert (=> b!4168650 (=> (not res!1707897) (not e!2587869))))

(assert (=> b!4168650 (= res!1707897 (not call!291154))))

(declare-fun b!4168651 () Bool)

(declare-fun res!1707898 () Bool)

(assert (=> b!4168651 (=> (not res!1707898) (not e!2587869))))

(assert (=> b!4168651 (= res!1707898 (isEmpty!27010 (tail!6696 p!2942)))))

(declare-fun b!4168652 () Bool)

(declare-fun e!2587867 () Bool)

(assert (=> b!4168652 (= e!2587867 e!2587868)))

(declare-fun res!1707900 () Bool)

(assert (=> b!4168652 (=> res!1707900 e!2587868)))

(assert (=> b!4168652 (= res!1707900 call!291154)))

(declare-fun b!4168654 () Bool)

(declare-fun res!1707899 () Bool)

(assert (=> b!4168654 (=> res!1707899 e!2587868)))

(assert (=> b!4168654 (= res!1707899 (not (isEmpty!27010 (tail!6696 p!2942))))))

(declare-fun b!4168655 () Bool)

(assert (=> b!4168655 (= e!2587869 (= (head!8849 p!2942) (c!712700 (regex!7557 r!4097))))))

(declare-fun b!4168656 () Bool)

(declare-fun res!1707901 () Bool)

(assert (=> b!4168656 (=> res!1707901 e!2587864)))

(assert (=> b!4168656 (= res!1707901 e!2587869)))

(declare-fun res!1707902 () Bool)

(assert (=> b!4168656 (=> (not res!1707902) (not e!2587869))))

(assert (=> b!4168656 (= res!1707902 lt!1484837)))

(declare-fun b!4168657 () Bool)

(assert (=> b!4168657 (= e!2587866 e!2587865)))

(declare-fun c!712731 () Bool)

(assert (=> b!4168657 (= c!712731 (is-EmptyLang!12462 (regex!7557 r!4097)))))

(declare-fun bm!291149 () Bool)

(assert (=> bm!291149 (= call!291154 (isEmpty!27010 p!2942))))

(declare-fun b!4168658 () Bool)

(assert (=> b!4168658 (= e!2587864 e!2587867)))

(declare-fun res!1707903 () Bool)

(assert (=> b!4168658 (=> (not res!1707903) (not e!2587867))))

(assert (=> b!4168658 (= res!1707903 (not lt!1484837))))

(declare-fun b!4168653 () Bool)

(declare-fun nullable!4372 (Regex!12462) Bool)

(assert (=> b!4168653 (= e!2587863 (nullable!4372 (regex!7557 r!4097)))))

(declare-fun d!1231860 () Bool)

(assert (=> d!1231860 e!2587866))

(declare-fun c!712730 () Bool)

(assert (=> d!1231860 (= c!712730 (is-EmptyExpr!12462 (regex!7557 r!4097)))))

(assert (=> d!1231860 (= lt!1484837 e!2587863)))

(declare-fun c!712732 () Bool)

(assert (=> d!1231860 (= c!712732 (isEmpty!27010 p!2942))))

(declare-fun validRegex!5582 (Regex!12462) Bool)

(assert (=> d!1231860 (validRegex!5582 (regex!7557 r!4097))))

(assert (=> d!1231860 (= (matchR!6203 (regex!7557 r!4097) p!2942) lt!1484837)))

(assert (= (and d!1231860 c!712732) b!4168653))

(assert (= (and d!1231860 (not c!712732)) b!4168649))

(assert (= (and d!1231860 c!712730) b!4168648))

(assert (= (and d!1231860 (not c!712730)) b!4168657))

(assert (= (and b!4168657 c!712731) b!4168646))

(assert (= (and b!4168657 (not c!712731)) b!4168647))

(assert (= (and b!4168647 (not res!1707904)) b!4168656))

(assert (= (and b!4168656 res!1707902) b!4168650))

(assert (= (and b!4168650 res!1707897) b!4168651))

(assert (= (and b!4168651 res!1707898) b!4168655))

(assert (= (and b!4168656 (not res!1707901)) b!4168658))

(assert (= (and b!4168658 res!1707903) b!4168652))

(assert (= (and b!4168652 (not res!1707900)) b!4168654))

(assert (= (and b!4168654 (not res!1707899)) b!4168645))

(assert (= (or b!4168648 b!4168650 b!4168652) bm!291149))

(assert (=> b!4168649 m!4759869))

(assert (=> b!4168649 m!4759869))

(declare-fun m!4759917 () Bool)

(assert (=> b!4168649 m!4759917))

(assert (=> b!4168649 m!4759865))

(assert (=> b!4168649 m!4759917))

(assert (=> b!4168649 m!4759865))

(declare-fun m!4759919 () Bool)

(assert (=> b!4168649 m!4759919))

(assert (=> b!4168654 m!4759865))

(assert (=> b!4168654 m!4759865))

(declare-fun m!4759921 () Bool)

(assert (=> b!4168654 m!4759921))

(declare-fun m!4759923 () Bool)

(assert (=> d!1231860 m!4759923))

(declare-fun m!4759925 () Bool)

(assert (=> d!1231860 m!4759925))

(declare-fun m!4759927 () Bool)

(assert (=> b!4168653 m!4759927))

(assert (=> bm!291149 m!4759923))

(assert (=> b!4168645 m!4759869))

(assert (=> b!4168655 m!4759869))

(assert (=> b!4168651 m!4759865))

(assert (=> b!4168651 m!4759865))

(assert (=> b!4168651 m!4759921))

(assert (=> b!4168390 d!1231860))

(declare-fun d!1231866 () Bool)

(declare-fun res!1707909 () Bool)

(declare-fun e!2587872 () Bool)

(assert (=> d!1231866 (=> (not res!1707909) (not e!2587872))))

(assert (=> d!1231866 (= res!1707909 (validRegex!5582 (regex!7557 r!4097)))))

(assert (=> d!1231866 (= (ruleValid!3279 thiss!25889 r!4097) e!2587872)))

(declare-fun b!4168663 () Bool)

(declare-fun res!1707910 () Bool)

(assert (=> b!4168663 (=> (not res!1707910) (not e!2587872))))

(assert (=> b!4168663 (= res!1707910 (not (nullable!4372 (regex!7557 r!4097))))))

(declare-fun b!4168664 () Bool)

(assert (=> b!4168664 (= e!2587872 (not (= (tag!8421 r!4097) (String!52803 ""))))))

(assert (= (and d!1231866 res!1707909) b!4168663))

(assert (= (and b!4168663 res!1707910) b!4168664))

(assert (=> d!1231866 m!4759925))

(assert (=> b!4168663 m!4759927))

(assert (=> b!4168390 d!1231866))

(declare-fun d!1231868 () Bool)

(assert (=> d!1231868 (ruleValid!3279 thiss!25889 r!4097)))

(declare-fun lt!1484843 () Unit!64718)

(declare-fun choose!25523 (LexerInterface!7150 Rule!14914 List!45762) Unit!64718)

(assert (=> d!1231868 (= lt!1484843 (choose!25523 thiss!25889 r!4097 rules!3820))))

(assert (=> d!1231868 (contains!9358 rules!3820 r!4097)))

(assert (=> d!1231868 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2317 thiss!25889 r!4097 rules!3820) lt!1484843)))

(declare-fun bs!595976 () Bool)

(assert (= bs!595976 d!1231868))

(assert (=> bs!595976 m!4759665))

(declare-fun m!4759929 () Bool)

(assert (=> bs!595976 m!4759929))

(assert (=> bs!595976 m!4759645))

(assert (=> b!4168390 d!1231868))

(declare-fun d!1231870 () Bool)

(declare-fun lt!1484846 () Bool)

(declare-fun content!7097 (List!45762) (Set Rule!14914))

(assert (=> d!1231870 (= lt!1484846 (set.member rBis!161 (content!7097 rules!3820)))))

(declare-fun e!2587887 () Bool)

(assert (=> d!1231870 (= lt!1484846 e!2587887)))

(declare-fun res!1707916 () Bool)

(assert (=> d!1231870 (=> (not res!1707916) (not e!2587887))))

(assert (=> d!1231870 (= res!1707916 (is-Cons!45638 rules!3820))))

(assert (=> d!1231870 (= (contains!9358 rules!3820 rBis!161) lt!1484846)))

(declare-fun b!4168681 () Bool)

(declare-fun e!2587886 () Bool)

(assert (=> b!4168681 (= e!2587887 e!2587886)))

(declare-fun res!1707915 () Bool)

(assert (=> b!4168681 (=> res!1707915 e!2587886)))

(assert (=> b!4168681 (= res!1707915 (= (h!51058 rules!3820) rBis!161))))

(declare-fun b!4168682 () Bool)

(assert (=> b!4168682 (= e!2587886 (contains!9358 (t!344209 rules!3820) rBis!161))))

(assert (= (and d!1231870 res!1707916) b!4168681))

(assert (= (and b!4168681 (not res!1707915)) b!4168682))

(declare-fun m!4759947 () Bool)

(assert (=> d!1231870 m!4759947))

(declare-fun m!4759949 () Bool)

(assert (=> d!1231870 m!4759949))

(declare-fun m!4759951 () Bool)

(assert (=> b!4168682 m!4759951))

(assert (=> b!4168379 d!1231870))

(declare-fun d!1231874 () Bool)

(declare-fun lt!1484847 () Bool)

(assert (=> d!1231874 (= lt!1484847 (set.member r!4097 (content!7097 rules!3820)))))

(declare-fun e!2587889 () Bool)

(assert (=> d!1231874 (= lt!1484847 e!2587889)))

(declare-fun res!1707918 () Bool)

(assert (=> d!1231874 (=> (not res!1707918) (not e!2587889))))

(assert (=> d!1231874 (= res!1707918 (is-Cons!45638 rules!3820))))

(assert (=> d!1231874 (= (contains!9358 rules!3820 r!4097) lt!1484847)))

(declare-fun b!4168683 () Bool)

(declare-fun e!2587888 () Bool)

(assert (=> b!4168683 (= e!2587889 e!2587888)))

(declare-fun res!1707917 () Bool)

(assert (=> b!4168683 (=> res!1707917 e!2587888)))

(assert (=> b!4168683 (= res!1707917 (= (h!51058 rules!3820) r!4097))))

(declare-fun b!4168684 () Bool)

(assert (=> b!4168684 (= e!2587888 (contains!9358 (t!344209 rules!3820) r!4097))))

(assert (= (and d!1231874 res!1707918) b!4168683))

(assert (= (and b!4168683 (not res!1707917)) b!4168684))

(assert (=> d!1231874 m!4759947))

(declare-fun m!4759953 () Bool)

(assert (=> d!1231874 m!4759953))

(declare-fun m!4759955 () Bool)

(assert (=> b!4168684 m!4759955))

(assert (=> b!4168380 d!1231874))

(declare-fun d!1231876 () Bool)

(assert (=> d!1231876 (= (inv!60168 (tag!8421 r!4097)) (= (mod (str.len (value!235894 (tag!8421 r!4097))) 2) 0))))

(assert (=> b!4168391 d!1231876))

(declare-fun d!1231878 () Bool)

(declare-fun res!1707919 () Bool)

(declare-fun e!2587890 () Bool)

(assert (=> d!1231878 (=> (not res!1707919) (not e!2587890))))

(assert (=> d!1231878 (= res!1707919 (semiInverseModEq!3281 (toChars!10096 (transformation!7557 r!4097)) (toValue!10237 (transformation!7557 r!4097))))))

(assert (=> d!1231878 (= (inv!60171 (transformation!7557 r!4097)) e!2587890)))

(declare-fun b!4168685 () Bool)

(assert (=> b!4168685 (= e!2587890 (equivClasses!3180 (toChars!10096 (transformation!7557 r!4097)) (toValue!10237 (transformation!7557 r!4097))))))

(assert (= (and d!1231878 res!1707919) b!4168685))

(declare-fun m!4759957 () Bool)

(assert (=> d!1231878 m!4759957))

(declare-fun m!4759959 () Bool)

(assert (=> b!4168685 m!4759959))

(assert (=> b!4168391 d!1231878))

(declare-fun b!4168690 () Bool)

(declare-fun e!2587893 () Bool)

(declare-fun tp!1273281 () Bool)

(assert (=> b!4168690 (= e!2587893 (and tp_is_empty!21887 tp!1273281))))

(assert (=> b!4168397 (= tp!1273231 e!2587893)))

(assert (= (and b!4168397 (is-Cons!45636 (t!344207 input!3316))) b!4168690))

(declare-fun b!4168691 () Bool)

(declare-fun e!2587894 () Bool)

(declare-fun tp!1273282 () Bool)

(assert (=> b!4168691 (= e!2587894 (and tp_is_empty!21887 tp!1273282))))

(assert (=> b!4168387 (= tp!1273225 e!2587894)))

(assert (= (and b!4168387 (is-Cons!45636 (t!344207 p!2942))) b!4168691))

(declare-fun b!4168692 () Bool)

(declare-fun e!2587895 () Bool)

(declare-fun tp!1273283 () Bool)

(assert (=> b!4168692 (= e!2587895 (and tp_is_empty!21887 tp!1273283))))

(assert (=> b!4168388 (= tp!1273233 e!2587895)))

(assert (= (and b!4168388 (is-Cons!45636 (t!344207 pBis!100))) b!4168692))

(declare-fun b!4168703 () Bool)

(declare-fun b_free!120451 () Bool)

(declare-fun b_next!121155 () Bool)

(assert (=> b!4168703 (= b_free!120451 (not b_next!121155))))

(declare-fun t!344238 () Bool)

(declare-fun tb!249691 () Bool)

(assert (=> (and b!4168703 (= (toValue!10237 (transformation!7557 (h!51058 (t!344209 rules!3820)))) (toValue!10237 (transformation!7557 r!4097))) t!344238) tb!249691))

(declare-fun result!304152 () Bool)

(assert (= result!304152 result!304116))

(assert (=> d!1231832 t!344238))

(assert (=> d!1231838 t!344238))

(declare-fun b_and!325351 () Bool)

(declare-fun tp!1273294 () Bool)

(assert (=> b!4168703 (= tp!1273294 (and (=> t!344238 result!304152) b_and!325351))))

(declare-fun b_free!120453 () Bool)

(declare-fun b_next!121157 () Bool)

(assert (=> b!4168703 (= b_free!120453 (not b_next!121157))))

(declare-fun t!344240 () Bool)

(declare-fun tb!249693 () Bool)

(assert (=> (and b!4168703 (= (toChars!10096 (transformation!7557 (h!51058 (t!344209 rules!3820)))) (toChars!10096 (transformation!7557 r!4097))) t!344240) tb!249693))

(declare-fun result!304154 () Bool)

(assert (= result!304154 result!304124))

(assert (=> d!1231838 t!344240))

(declare-fun b_and!325353 () Bool)

(declare-fun tp!1273295 () Bool)

(assert (=> b!4168703 (= tp!1273295 (and (=> t!344240 result!304154) b_and!325353))))

(declare-fun e!2587906 () Bool)

(assert (=> b!4168703 (= e!2587906 (and tp!1273294 tp!1273295))))

(declare-fun tp!1273292 () Bool)

(declare-fun e!2587904 () Bool)

(declare-fun b!4168702 () Bool)

(assert (=> b!4168702 (= e!2587904 (and tp!1273292 (inv!60168 (tag!8421 (h!51058 (t!344209 rules!3820)))) (inv!60171 (transformation!7557 (h!51058 (t!344209 rules!3820)))) e!2587906))))

(declare-fun b!4168701 () Bool)

(declare-fun e!2587905 () Bool)

(declare-fun tp!1273293 () Bool)

(assert (=> b!4168701 (= e!2587905 (and e!2587904 tp!1273293))))

(assert (=> b!4168384 (= tp!1273224 e!2587905)))

(assert (= b!4168702 b!4168703))

(assert (= b!4168701 b!4168702))

(assert (= (and b!4168384 (is-Cons!45638 (t!344209 rules!3820))) b!4168701))

(declare-fun m!4759963 () Bool)

(assert (=> b!4168702 m!4759963))

(declare-fun m!4759965 () Bool)

(assert (=> b!4168702 m!4759965))

(declare-fun e!2587913 () Bool)

(assert (=> b!4168396 (= tp!1273222 e!2587913)))

(declare-fun b!4168722 () Bool)

(declare-fun tp!1273306 () Bool)

(assert (=> b!4168722 (= e!2587913 tp!1273306)))

(declare-fun b!4168721 () Bool)

(declare-fun tp!1273307 () Bool)

(declare-fun tp!1273310 () Bool)

(assert (=> b!4168721 (= e!2587913 (and tp!1273307 tp!1273310))))

(declare-fun b!4168723 () Bool)

(declare-fun tp!1273309 () Bool)

(declare-fun tp!1273308 () Bool)

(assert (=> b!4168723 (= e!2587913 (and tp!1273309 tp!1273308))))

(declare-fun b!4168720 () Bool)

(assert (=> b!4168720 (= e!2587913 tp_is_empty!21887)))

(assert (= (and b!4168396 (is-ElementMatch!12462 (regex!7557 rBis!161))) b!4168720))

(assert (= (and b!4168396 (is-Concat!20250 (regex!7557 rBis!161))) b!4168721))

(assert (= (and b!4168396 (is-Star!12462 (regex!7557 rBis!161))) b!4168722))

(assert (= (and b!4168396 (is-Union!12462 (regex!7557 rBis!161))) b!4168723))

(declare-fun e!2587914 () Bool)

(assert (=> b!4168385 (= tp!1273221 e!2587914)))

(declare-fun b!4168726 () Bool)

(declare-fun tp!1273311 () Bool)

(assert (=> b!4168726 (= e!2587914 tp!1273311)))

(declare-fun b!4168725 () Bool)

(declare-fun tp!1273312 () Bool)

(declare-fun tp!1273315 () Bool)

(assert (=> b!4168725 (= e!2587914 (and tp!1273312 tp!1273315))))

(declare-fun b!4168727 () Bool)

(declare-fun tp!1273314 () Bool)

(declare-fun tp!1273313 () Bool)

(assert (=> b!4168727 (= e!2587914 (and tp!1273314 tp!1273313))))

(declare-fun b!4168724 () Bool)

(assert (=> b!4168724 (= e!2587914 tp_is_empty!21887)))

(assert (= (and b!4168385 (is-ElementMatch!12462 (regex!7557 (h!51058 rules!3820)))) b!4168724))

(assert (= (and b!4168385 (is-Concat!20250 (regex!7557 (h!51058 rules!3820)))) b!4168725))

(assert (= (and b!4168385 (is-Star!12462 (regex!7557 (h!51058 rules!3820)))) b!4168726))

(assert (= (and b!4168385 (is-Union!12462 (regex!7557 (h!51058 rules!3820)))) b!4168727))

(declare-fun e!2587915 () Bool)

(assert (=> b!4168391 (= tp!1273230 e!2587915)))

(declare-fun b!4168730 () Bool)

(declare-fun tp!1273316 () Bool)

(assert (=> b!4168730 (= e!2587915 tp!1273316)))

(declare-fun b!4168729 () Bool)

(declare-fun tp!1273317 () Bool)

(declare-fun tp!1273320 () Bool)

(assert (=> b!4168729 (= e!2587915 (and tp!1273317 tp!1273320))))

(declare-fun b!4168731 () Bool)

(declare-fun tp!1273319 () Bool)

(declare-fun tp!1273318 () Bool)

(assert (=> b!4168731 (= e!2587915 (and tp!1273319 tp!1273318))))

(declare-fun b!4168728 () Bool)

(assert (=> b!4168728 (= e!2587915 tp_is_empty!21887)))

(assert (= (and b!4168391 (is-ElementMatch!12462 (regex!7557 r!4097))) b!4168728))

(assert (= (and b!4168391 (is-Concat!20250 (regex!7557 r!4097))) b!4168729))

(assert (= (and b!4168391 (is-Star!12462 (regex!7557 r!4097))) b!4168730))

(assert (= (and b!4168391 (is-Union!12462 (regex!7557 r!4097))) b!4168731))

(declare-fun b_lambda!122449 () Bool)

(assert (= b_lambda!122439 (or (and b!4168392 b_free!120427) (and b!4168377 b_free!120431 (= (toValue!10237 (transformation!7557 rBis!161)) (toValue!10237 (transformation!7557 r!4097)))) (and b!4168386 b_free!120435 (= (toValue!10237 (transformation!7557 (h!51058 rules!3820))) (toValue!10237 (transformation!7557 r!4097)))) (and b!4168703 b_free!120451 (= (toValue!10237 (transformation!7557 (h!51058 (t!344209 rules!3820)))) (toValue!10237 (transformation!7557 r!4097)))) b_lambda!122449)))

(declare-fun b_lambda!122451 () Bool)

(assert (= b_lambda!122441 (or (and b!4168392 b_free!120429) (and b!4168377 b_free!120433 (= (toChars!10096 (transformation!7557 rBis!161)) (toChars!10096 (transformation!7557 r!4097)))) (and b!4168386 b_free!120437 (= (toChars!10096 (transformation!7557 (h!51058 rules!3820))) (toChars!10096 (transformation!7557 r!4097)))) (and b!4168703 b_free!120453 (= (toChars!10096 (transformation!7557 (h!51058 (t!344209 rules!3820)))) (toChars!10096 (transformation!7557 r!4097)))) b_lambda!122451)))

(declare-fun b_lambda!122453 () Bool)

(assert (= b_lambda!122443 (or (and b!4168392 b_free!120427) (and b!4168377 b_free!120431 (= (toValue!10237 (transformation!7557 rBis!161)) (toValue!10237 (transformation!7557 r!4097)))) (and b!4168386 b_free!120435 (= (toValue!10237 (transformation!7557 (h!51058 rules!3820))) (toValue!10237 (transformation!7557 r!4097)))) (and b!4168703 b_free!120451 (= (toValue!10237 (transformation!7557 (h!51058 (t!344209 rules!3820)))) (toValue!10237 (transformation!7557 r!4097)))) b_lambda!122453)))

(push 1)

(assert (not d!1231850))

(assert (not b!4168504))

(assert (not b!4168599))

(assert (not b!4168566))

(assert (not b!4168692))

(assert (not b!4168512))

(assert (not b!4168655))

(assert (not b!4168727))

(assert (not b!4168535))

(assert (not d!1231828))

(assert b_and!325335)

(assert b_and!325329)

(assert (not b!4168563))

(assert (not tb!249673))

(assert (not b!4168505))

(assert (not b!4168564))

(assert (not tb!249667))

(assert (not b!4168567))

(assert (not d!1231836))

(assert (not b_next!121135))

(assert b_and!325351)

(assert b_and!325331)

(assert (not b!4168690))

(assert (not b!4168726))

(assert (not bm!291149))

(assert (not d!1231874))

(assert (not b!4168691))

(assert (not b!4168540))

(assert (not b!4168600))

(assert (not b!4168570))

(assert (not b!4168507))

(assert (not d!1231866))

(assert (not b!4168730))

(assert (not b!4168514))

(assert (not b!4168653))

(assert (not b!4168682))

(assert b_and!325337)

(assert (not b!4168731))

(assert (not b!4168485))

(assert (not b!4168701))

(assert (not d!1231870))

(assert (not b!4168729))

(assert (not b!4168685))

(assert (not d!1231878))

(assert (not d!1231834))

(assert (not b!4168475))

(assert (not d!1231846))

(assert (not b!4168663))

(assert (not b_lambda!122449))

(assert (not d!1231854))

(assert (not b!4168721))

(assert (not d!1231860))

(assert (not b!4168506))

(assert (not b!4168594))

(assert (not b!4168476))

(assert (not b!4168539))

(assert b_and!325353)

(assert b_and!325327)

(assert (not b!4168651))

(assert (not b_next!121137))

(assert (not b_next!121157))

(assert (not b_next!121141))

(assert (not b_next!121133))

(assert (not b!4168571))

(assert (not b!4168474))

(assert (not b_lambda!122453))

(assert (not b!4168530))

(assert (not b_next!121155))

(assert (not b!4168595))

(assert (not b!4168482))

(assert (not d!1231842))

(assert (not b!4168601))

(assert (not b!4168511))

(assert (not b_next!121131))

(assert (not b!4168649))

(assert (not b!4168684))

(assert (not d!1231826))

(assert (not b!4168538))

(assert (not d!1231838))

(assert (not b!4168559))

(assert (not b!4168722))

(assert (not b_next!121139))

(assert (not b!4168654))

(assert (not b!4168562))

(assert (not b!4168510))

(assert (not d!1231868))

(assert (not b_lambda!122451))

(assert (not b!4168509))

(assert (not b!4168645))

(assert (not b!4168565))

(assert (not d!1231856))

(assert (not bm!291146))

(assert b_and!325333)

(assert (not b!4168561))

(assert (not b!4168725))

(assert tp_is_empty!21887)

(assert (not b!4168723))

(assert (not b!4168702))

(check-sat)

(pop 1)

(push 1)

(assert b_and!325331)

(assert b_and!325337)

(assert (not b_next!121155))

(assert (not b_next!121131))

(assert (not b_next!121139))

(assert b_and!325333)

(assert b_and!325335)

(assert b_and!325329)

(assert (not b_next!121135))

(assert b_and!325351)

(assert b_and!325353)

(assert b_and!325327)

(assert (not b_next!121137))

(assert (not b_next!121157))

(assert (not b_next!121141))

(assert (not b_next!121133))

(check-sat)

(pop 1)

