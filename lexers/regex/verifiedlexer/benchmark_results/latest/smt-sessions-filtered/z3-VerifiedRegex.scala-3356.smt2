; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!190372 () Bool)

(assert start!190372)

(declare-fun b!1898441 () Bool)

(declare-fun b_free!53161 () Bool)

(declare-fun b_next!53865 () Bool)

(assert (=> b!1898441 (= b_free!53161 (not b_next!53865))))

(declare-fun tp!541993 () Bool)

(declare-fun b_and!146747 () Bool)

(assert (=> b!1898441 (= tp!541993 b_and!146747)))

(declare-fun b_free!53163 () Bool)

(declare-fun b_next!53867 () Bool)

(assert (=> b!1898441 (= b_free!53163 (not b_next!53867))))

(declare-fun tp!542004 () Bool)

(declare-fun b_and!146749 () Bool)

(assert (=> b!1898441 (= tp!542004 b_and!146749)))

(declare-fun b!1898435 () Bool)

(declare-fun b_free!53165 () Bool)

(declare-fun b_next!53869 () Bool)

(assert (=> b!1898435 (= b_free!53165 (not b_next!53869))))

(declare-fun tp!541992 () Bool)

(declare-fun b_and!146751 () Bool)

(assert (=> b!1898435 (= tp!541992 b_and!146751)))

(declare-fun b_free!53167 () Bool)

(declare-fun b_next!53871 () Bool)

(assert (=> b!1898435 (= b_free!53167 (not b_next!53871))))

(declare-fun tp!541996 () Bool)

(declare-fun b_and!146753 () Bool)

(assert (=> b!1898435 (= tp!541996 b_and!146753)))

(declare-fun b!1898438 () Bool)

(declare-fun b_free!53169 () Bool)

(declare-fun b_next!53873 () Bool)

(assert (=> b!1898438 (= b_free!53169 (not b_next!53873))))

(declare-fun tp!542000 () Bool)

(declare-fun b_and!146755 () Bool)

(assert (=> b!1898438 (= tp!542000 b_and!146755)))

(declare-fun b_free!53171 () Bool)

(declare-fun b_next!53875 () Bool)

(assert (=> b!1898438 (= b_free!53171 (not b_next!53875))))

(declare-fun tp!541995 () Bool)

(declare-fun b_and!146757 () Bool)

(assert (=> b!1898438 (= tp!541995 b_and!146757)))

(declare-fun b!1898418 () Bool)

(declare-fun e!1212219 () Bool)

(declare-fun e!1212231 () Bool)

(assert (=> b!1898418 (= e!1212219 e!1212231)))

(declare-fun res!847426 () Bool)

(assert (=> b!1898418 (=> (not res!847426) (not e!1212231))))

(declare-datatypes ((List!21402 0))(
  ( (Nil!21320) (Cons!21320 (h!26721 (_ BitVec 16)) (t!176563 List!21402)) )
))
(declare-datatypes ((TokenValue!3924 0))(
  ( (FloatLiteralValue!7848 (text!27913 List!21402)) (TokenValueExt!3923 (__x!13346 Int)) (Broken!19620 (value!119523 List!21402)) (Object!4005) (End!3924) (Def!3924) (Underscore!3924) (Match!3924) (Else!3924) (Error!3924) (Case!3924) (If!3924) (Extends!3924) (Abstract!3924) (Class!3924) (Val!3924) (DelimiterValue!7848 (del!3984 List!21402)) (KeywordValue!3930 (value!119524 List!21402)) (CommentValue!7848 (value!119525 List!21402)) (WhitespaceValue!7848 (value!119526 List!21402)) (IndentationValue!3924 (value!119527 List!21402)) (String!24737) (Int32!3924) (Broken!19621 (value!119528 List!21402)) (Boolean!3925) (Unit!35659) (OperatorValue!3927 (op!3984 List!21402)) (IdentifierValue!7848 (value!119529 List!21402)) (IdentifierValue!7849 (value!119530 List!21402)) (WhitespaceValue!7849 (value!119531 List!21402)) (True!7848) (False!7848) (Broken!19622 (value!119532 List!21402)) (Broken!19623 (value!119533 List!21402)) (True!7849) (RightBrace!3924) (RightBracket!3924) (Colon!3924) (Null!3924) (Comma!3924) (LeftBracket!3924) (False!7849) (LeftBrace!3924) (ImaginaryLiteralValue!3924 (text!27914 List!21402)) (StringLiteralValue!11772 (value!119534 List!21402)) (EOFValue!3924 (value!119535 List!21402)) (IdentValue!3924 (value!119536 List!21402)) (DelimiterValue!7849 (value!119537 List!21402)) (DedentValue!3924 (value!119538 List!21402)) (NewLineValue!3924 (value!119539 List!21402)) (IntegerValue!11772 (value!119540 (_ BitVec 32)) (text!27915 List!21402)) (IntegerValue!11773 (value!119541 Int) (text!27916 List!21402)) (Times!3924) (Or!3924) (Equal!3924) (Minus!3924) (Broken!19624 (value!119542 List!21402)) (And!3924) (Div!3924) (LessEqual!3924) (Mod!3924) (Concat!9137) (Not!3924) (Plus!3924) (SpaceValue!3924 (value!119543 List!21402)) (IntegerValue!11774 (value!119544 Int) (text!27917 List!21402)) (StringLiteralValue!11773 (text!27918 List!21402)) (FloatLiteralValue!7849 (text!27919 List!21402)) (BytesLiteralValue!3924 (value!119545 List!21402)) (CommentValue!7849 (value!119546 List!21402)) (StringLiteralValue!11774 (value!119547 List!21402)) (ErrorTokenValue!3924 (msg!3985 List!21402)) )
))
(declare-datatypes ((String!24738 0))(
  ( (String!24739 (value!119548 String)) )
))
(declare-datatypes ((C!10572 0))(
  ( (C!10573 (val!6238 Int)) )
))
(declare-datatypes ((List!21403 0))(
  ( (Nil!21321) (Cons!21321 (h!26722 C!10572) (t!176564 List!21403)) )
))
(declare-datatypes ((IArray!14199 0))(
  ( (IArray!14200 (innerList!7157 List!21403)) )
))
(declare-datatypes ((Conc!7097 0))(
  ( (Node!7097 (left!17089 Conc!7097) (right!17419 Conc!7097) (csize!14424 Int) (cheight!7308 Int)) (Leaf!10454 (xs!9991 IArray!14199) (csize!14425 Int)) (Empty!7097) )
))
(declare-datatypes ((BalanceConc!14010 0))(
  ( (BalanceConc!14011 (c!309499 Conc!7097)) )
))
(declare-datatypes ((TokenValueInjection!7432 0))(
  ( (TokenValueInjection!7433 (toValue!5405 Int) (toChars!5264 Int)) )
))
(declare-datatypes ((Regex!5213 0))(
  ( (ElementMatch!5213 (c!309500 C!10572)) (Concat!9138 (regOne!10938 Regex!5213) (regTwo!10938 Regex!5213)) (EmptyExpr!5213) (Star!5213 (reg!5542 Regex!5213)) (EmptyLang!5213) (Union!5213 (regOne!10939 Regex!5213) (regTwo!10939 Regex!5213)) )
))
(declare-datatypes ((Rule!7376 0))(
  ( (Rule!7377 (regex!3788 Regex!5213) (tag!4210 String!24738) (isSeparator!3788 Bool) (transformation!3788 TokenValueInjection!7432)) )
))
(declare-fun lt!725935 () Rule!7376)

(declare-fun lt!725933 () List!21403)

(declare-fun matchR!2499 (Regex!5213 List!21403) Bool)

(assert (=> b!1898418 (= res!847426 (matchR!2499 (regex!3788 lt!725935) lt!725933))))

(declare-datatypes ((Option!4281 0))(
  ( (None!4280) (Some!4280 (v!26309 Rule!7376)) )
))
(declare-fun lt!725941 () Option!4281)

(declare-fun get!6582 (Option!4281) Rule!7376)

(assert (=> b!1898418 (= lt!725935 (get!6582 lt!725941))))

(declare-fun e!1212227 () Bool)

(declare-fun tp!542002 () Bool)

(declare-fun e!1212220 () Bool)

(declare-fun b!1898419 () Bool)

(declare-datatypes ((Token!7128 0))(
  ( (Token!7129 (value!119549 TokenValue!3924) (rule!5981 Rule!7376) (size!16874 Int) (originalCharacters!4595 List!21403)) )
))
(declare-datatypes ((List!21404 0))(
  ( (Nil!21322) (Cons!21322 (h!26723 Token!7128) (t!176565 List!21404)) )
))
(declare-fun tokens!598 () List!21404)

(declare-fun inv!28419 (String!24738) Bool)

(declare-fun inv!28422 (TokenValueInjection!7432) Bool)

(assert (=> b!1898419 (= e!1212220 (and tp!542002 (inv!28419 (tag!4210 (rule!5981 (h!26723 tokens!598)))) (inv!28422 (transformation!3788 (rule!5981 (h!26723 tokens!598)))) e!1212227))))

(declare-fun tp!542001 () Bool)

(declare-fun b!1898420 () Bool)

(declare-fun e!1212230 () Bool)

(declare-fun inv!21 (TokenValue!3924) Bool)

(assert (=> b!1898420 (= e!1212230 (and (inv!21 (value!119549 (h!26723 tokens!598))) e!1212220 tp!542001))))

(declare-fun b!1898421 () Bool)

(declare-fun res!847420 () Bool)

(declare-fun e!1212218 () Bool)

(assert (=> b!1898421 (=> (not res!847420) (not e!1212218))))

(declare-fun lambda!74179 () Int)

(declare-fun forall!4466 (List!21404 Int) Bool)

(assert (=> b!1898421 (= res!847420 (forall!4466 tokens!598 lambda!74179))))

(declare-fun b!1898422 () Bool)

(declare-fun e!1212229 () Bool)

(assert (=> b!1898422 (= e!1212218 (not e!1212229))))

(declare-fun res!847427 () Bool)

(assert (=> b!1898422 (=> res!847427 e!1212229)))

(declare-datatypes ((LexerInterface!3401 0))(
  ( (LexerInterfaceExt!3398 (__x!13347 Int)) (Lexer!3399) )
))
(declare-fun thiss!23328 () LexerInterface!3401)

(declare-datatypes ((List!21405 0))(
  ( (Nil!21323) (Cons!21323 (h!26724 Rule!7376) (t!176566 List!21405)) )
))
(declare-fun rules!3198 () List!21405)

(declare-fun rulesProduceEachTokenIndividuallyList!1132 (LexerInterface!3401 List!21405 List!21404) Bool)

(assert (=> b!1898422 (= res!847427 (not (rulesProduceEachTokenIndividuallyList!1132 thiss!23328 rules!3198 (t!176565 tokens!598))))))

(assert (=> b!1898422 e!1212219))

(declare-fun res!847421 () Bool)

(assert (=> b!1898422 (=> (not res!847421) (not e!1212219))))

(declare-fun isDefined!3579 (Option!4281) Bool)

(assert (=> b!1898422 (= res!847421 (isDefined!3579 lt!725941))))

(declare-fun getRuleFromTag!631 (LexerInterface!3401 List!21405 String!24738) Option!4281)

(assert (=> b!1898422 (= lt!725941 (getRuleFromTag!631 thiss!23328 rules!3198 (tag!4210 (rule!5981 (h!26723 tokens!598)))))))

(declare-datatypes ((Unit!35660 0))(
  ( (Unit!35661) )
))
(declare-fun lt!725940 () Unit!35660)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!631 (LexerInterface!3401 List!21405 List!21403 Token!7128) Unit!35660)

(assert (=> b!1898422 (= lt!725940 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!631 thiss!23328 rules!3198 lt!725933 (h!26723 tokens!598)))))

(declare-fun e!1212232 () Bool)

(assert (=> b!1898422 e!1212232))

(declare-fun res!847431 () Bool)

(assert (=> b!1898422 (=> (not res!847431) (not e!1212232))))

(declare-datatypes ((tuple2!20108 0))(
  ( (tuple2!20109 (_1!11523 Token!7128) (_2!11523 List!21403)) )
))
(declare-datatypes ((Option!4282 0))(
  ( (None!4281) (Some!4281 (v!26310 tuple2!20108)) )
))
(declare-fun lt!725936 () Option!4282)

(declare-fun isDefined!3580 (Option!4282) Bool)

(assert (=> b!1898422 (= res!847431 (isDefined!3580 lt!725936))))

(declare-fun maxPrefix!1847 (LexerInterface!3401 List!21405 List!21403) Option!4282)

(assert (=> b!1898422 (= lt!725936 (maxPrefix!1847 thiss!23328 rules!3198 lt!725933))))

(declare-fun lt!725939 () BalanceConc!14010)

(declare-fun list!8672 (BalanceConc!14010) List!21403)

(assert (=> b!1898422 (= lt!725933 (list!8672 lt!725939))))

(declare-fun e!1212224 () Bool)

(assert (=> b!1898422 e!1212224))

(declare-fun res!847422 () Bool)

(assert (=> b!1898422 (=> (not res!847422) (not e!1212224))))

(declare-fun lt!725943 () Option!4281)

(assert (=> b!1898422 (= res!847422 (isDefined!3579 lt!725943))))

(declare-fun separatorToken!354 () Token!7128)

(assert (=> b!1898422 (= lt!725943 (getRuleFromTag!631 thiss!23328 rules!3198 (tag!4210 (rule!5981 separatorToken!354))))))

(declare-fun lt!725934 () Unit!35660)

(declare-fun lt!725944 () List!21403)

(assert (=> b!1898422 (= lt!725934 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!631 thiss!23328 rules!3198 lt!725944 separatorToken!354))))

(declare-fun charsOf!2344 (Token!7128) BalanceConc!14010)

(assert (=> b!1898422 (= lt!725944 (list!8672 (charsOf!2344 separatorToken!354)))))

(declare-fun lt!725942 () Unit!35660)

(declare-fun lemmaEqSameImage!496 (TokenValueInjection!7432 BalanceConc!14010 BalanceConc!14010) Unit!35660)

(declare-fun seqFromList!2660 (List!21403) BalanceConc!14010)

(assert (=> b!1898422 (= lt!725942 (lemmaEqSameImage!496 (transformation!3788 (rule!5981 (h!26723 tokens!598))) lt!725939 (seqFromList!2660 (originalCharacters!4595 (h!26723 tokens!598)))))))

(declare-fun lt!725937 () Unit!35660)

(declare-fun lemmaSemiInverse!767 (TokenValueInjection!7432 BalanceConc!14010) Unit!35660)

(assert (=> b!1898422 (= lt!725937 (lemmaSemiInverse!767 (transformation!3788 (rule!5981 (h!26723 tokens!598))) lt!725939))))

(assert (=> b!1898422 (= lt!725939 (charsOf!2344 (h!26723 tokens!598)))))

(declare-fun b!1898423 () Bool)

(declare-fun res!847428 () Bool)

(assert (=> b!1898423 (=> (not res!847428) (not e!1212218))))

(assert (=> b!1898423 (= res!847428 (isSeparator!3788 (rule!5981 separatorToken!354)))))

(declare-fun tp!541997 () Bool)

(declare-fun e!1212222 () Bool)

(declare-fun b!1898424 () Bool)

(declare-fun inv!28423 (Token!7128) Bool)

(assert (=> b!1898424 (= e!1212222 (and (inv!28423 (h!26723 tokens!598)) e!1212230 tp!541997))))

(declare-fun b!1898426 () Bool)

(declare-fun res!847423 () Bool)

(assert (=> b!1898426 (=> (not res!847423) (not e!1212218))))

(assert (=> b!1898426 (= res!847423 (rulesProduceEachTokenIndividuallyList!1132 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1898427 () Bool)

(declare-fun res!847424 () Bool)

(assert (=> b!1898427 (=> (not res!847424) (not e!1212218))))

(declare-fun isEmpty!13086 (List!21405) Bool)

(assert (=> b!1898427 (= res!847424 (not (isEmpty!13086 rules!3198)))))

(declare-fun b!1898428 () Bool)

(declare-fun res!847425 () Bool)

(assert (=> b!1898428 (=> (not res!847425) (not e!1212218))))

(declare-fun sepAndNonSepRulesDisjointChars!886 (List!21405 List!21405) Bool)

(assert (=> b!1898428 (= res!847425 (sepAndNonSepRulesDisjointChars!886 rules!3198 rules!3198))))

(declare-fun e!1212228 () Bool)

(declare-fun b!1898429 () Bool)

(declare-fun tp!541999 () Bool)

(declare-fun e!1212223 () Bool)

(assert (=> b!1898429 (= e!1212228 (and (inv!21 (value!119549 separatorToken!354)) e!1212223 tp!541999))))

(declare-fun b!1898430 () Bool)

(assert (=> b!1898430 (= e!1212229 true)))

(declare-fun b!1898431 () Bool)

(declare-fun get!6583 (Option!4282) tuple2!20108)

(assert (=> b!1898431 (= e!1212232 (= (_1!11523 (get!6583 lt!725936)) (h!26723 tokens!598)))))

(declare-fun b!1898432 () Bool)

(declare-fun e!1212216 () Bool)

(declare-fun lt!725938 () Rule!7376)

(assert (=> b!1898432 (= e!1212216 (= (rule!5981 separatorToken!354) lt!725938))))

(declare-fun b!1898433 () Bool)

(assert (=> b!1898433 (= e!1212224 e!1212216)))

(declare-fun res!847430 () Bool)

(assert (=> b!1898433 (=> (not res!847430) (not e!1212216))))

(assert (=> b!1898433 (= res!847430 (matchR!2499 (regex!3788 lt!725938) lt!725944))))

(assert (=> b!1898433 (= lt!725938 (get!6582 lt!725943))))

(declare-fun b!1898434 () Bool)

(declare-fun res!847429 () Bool)

(assert (=> b!1898434 (=> (not res!847429) (not e!1212218))))

(declare-fun rulesProduceIndividualToken!1573 (LexerInterface!3401 List!21405 Token!7128) Bool)

(assert (=> b!1898434 (= res!847429 (rulesProduceIndividualToken!1573 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun e!1212226 () Bool)

(assert (=> b!1898435 (= e!1212226 (and tp!541992 tp!541996))))

(declare-fun b!1898436 () Bool)

(declare-fun e!1212213 () Bool)

(declare-fun tp!542003 () Bool)

(assert (=> b!1898436 (= e!1212223 (and tp!542003 (inv!28419 (tag!4210 (rule!5981 separatorToken!354))) (inv!28422 (transformation!3788 (rule!5981 separatorToken!354))) e!1212213))))

(declare-fun e!1212215 () Bool)

(declare-fun b!1898437 () Bool)

(declare-fun tp!541994 () Bool)

(assert (=> b!1898437 (= e!1212215 (and tp!541994 (inv!28419 (tag!4210 (h!26724 rules!3198))) (inv!28422 (transformation!3788 (h!26724 rules!3198))) e!1212226))))

(assert (=> b!1898438 (= e!1212227 (and tp!542000 tp!541995))))

(declare-fun b!1898439 () Bool)

(declare-fun e!1212221 () Bool)

(declare-fun tp!541998 () Bool)

(assert (=> b!1898439 (= e!1212221 (and e!1212215 tp!541998))))

(declare-fun b!1898440 () Bool)

(declare-fun res!847433 () Bool)

(assert (=> b!1898440 (=> (not res!847433) (not e!1212218))))

(declare-fun rulesInvariant!3008 (LexerInterface!3401 List!21405) Bool)

(assert (=> b!1898440 (= res!847433 (rulesInvariant!3008 thiss!23328 rules!3198))))

(assert (=> b!1898441 (= e!1212213 (and tp!541993 tp!542004))))

(declare-fun b!1898442 () Bool)

(assert (=> b!1898442 (= e!1212231 (= (rule!5981 (h!26723 tokens!598)) lt!725935))))

(declare-fun b!1898425 () Bool)

(declare-fun res!847432 () Bool)

(assert (=> b!1898425 (=> (not res!847432) (not e!1212218))))

(get-info :version)

(assert (=> b!1898425 (= res!847432 ((_ is Cons!21322) tokens!598))))

(declare-fun res!847434 () Bool)

(assert (=> start!190372 (=> (not res!847434) (not e!1212218))))

(assert (=> start!190372 (= res!847434 ((_ is Lexer!3399) thiss!23328))))

(assert (=> start!190372 e!1212218))

(assert (=> start!190372 true))

(assert (=> start!190372 e!1212221))

(assert (=> start!190372 e!1212222))

(assert (=> start!190372 (and (inv!28423 separatorToken!354) e!1212228)))

(assert (= (and start!190372 res!847434) b!1898427))

(assert (= (and b!1898427 res!847424) b!1898440))

(assert (= (and b!1898440 res!847433) b!1898426))

(assert (= (and b!1898426 res!847423) b!1898434))

(assert (= (and b!1898434 res!847429) b!1898423))

(assert (= (and b!1898423 res!847428) b!1898421))

(assert (= (and b!1898421 res!847420) b!1898428))

(assert (= (and b!1898428 res!847425) b!1898425))

(assert (= (and b!1898425 res!847432) b!1898422))

(assert (= (and b!1898422 res!847422) b!1898433))

(assert (= (and b!1898433 res!847430) b!1898432))

(assert (= (and b!1898422 res!847431) b!1898431))

(assert (= (and b!1898422 res!847421) b!1898418))

(assert (= (and b!1898418 res!847426) b!1898442))

(assert (= (and b!1898422 (not res!847427)) b!1898430))

(assert (= b!1898437 b!1898435))

(assert (= b!1898439 b!1898437))

(assert (= (and start!190372 ((_ is Cons!21323) rules!3198)) b!1898439))

(assert (= b!1898419 b!1898438))

(assert (= b!1898420 b!1898419))

(assert (= b!1898424 b!1898420))

(assert (= (and start!190372 ((_ is Cons!21322) tokens!598)) b!1898424))

(assert (= b!1898436 b!1898441))

(assert (= b!1898429 b!1898436))

(assert (= start!190372 b!1898429))

(declare-fun m!2329521 () Bool)

(assert (=> b!1898419 m!2329521))

(declare-fun m!2329523 () Bool)

(assert (=> b!1898419 m!2329523))

(declare-fun m!2329525 () Bool)

(assert (=> b!1898418 m!2329525))

(declare-fun m!2329527 () Bool)

(assert (=> b!1898418 m!2329527))

(declare-fun m!2329529 () Bool)

(assert (=> b!1898427 m!2329529))

(declare-fun m!2329531 () Bool)

(assert (=> start!190372 m!2329531))

(declare-fun m!2329533 () Bool)

(assert (=> b!1898426 m!2329533))

(declare-fun m!2329535 () Bool)

(assert (=> b!1898420 m!2329535))

(declare-fun m!2329537 () Bool)

(assert (=> b!1898429 m!2329537))

(declare-fun m!2329539 () Bool)

(assert (=> b!1898422 m!2329539))

(declare-fun m!2329541 () Bool)

(assert (=> b!1898422 m!2329541))

(assert (=> b!1898422 m!2329539))

(declare-fun m!2329543 () Bool)

(assert (=> b!1898422 m!2329543))

(declare-fun m!2329545 () Bool)

(assert (=> b!1898422 m!2329545))

(declare-fun m!2329547 () Bool)

(assert (=> b!1898422 m!2329547))

(declare-fun m!2329549 () Bool)

(assert (=> b!1898422 m!2329549))

(declare-fun m!2329551 () Bool)

(assert (=> b!1898422 m!2329551))

(declare-fun m!2329553 () Bool)

(assert (=> b!1898422 m!2329553))

(declare-fun m!2329555 () Bool)

(assert (=> b!1898422 m!2329555))

(assert (=> b!1898422 m!2329553))

(declare-fun m!2329557 () Bool)

(assert (=> b!1898422 m!2329557))

(declare-fun m!2329559 () Bool)

(assert (=> b!1898422 m!2329559))

(declare-fun m!2329561 () Bool)

(assert (=> b!1898422 m!2329561))

(declare-fun m!2329563 () Bool)

(assert (=> b!1898422 m!2329563))

(declare-fun m!2329565 () Bool)

(assert (=> b!1898422 m!2329565))

(declare-fun m!2329567 () Bool)

(assert (=> b!1898422 m!2329567))

(declare-fun m!2329569 () Bool)

(assert (=> b!1898422 m!2329569))

(declare-fun m!2329571 () Bool)

(assert (=> b!1898440 m!2329571))

(declare-fun m!2329573 () Bool)

(assert (=> b!1898436 m!2329573))

(declare-fun m!2329575 () Bool)

(assert (=> b!1898436 m!2329575))

(declare-fun m!2329577 () Bool)

(assert (=> b!1898437 m!2329577))

(declare-fun m!2329579 () Bool)

(assert (=> b!1898437 m!2329579))

(declare-fun m!2329581 () Bool)

(assert (=> b!1898428 m!2329581))

(declare-fun m!2329583 () Bool)

(assert (=> b!1898434 m!2329583))

(declare-fun m!2329585 () Bool)

(assert (=> b!1898433 m!2329585))

(declare-fun m!2329587 () Bool)

(assert (=> b!1898433 m!2329587))

(declare-fun m!2329589 () Bool)

(assert (=> b!1898421 m!2329589))

(declare-fun m!2329591 () Bool)

(assert (=> b!1898431 m!2329591))

(declare-fun m!2329593 () Bool)

(assert (=> b!1898424 m!2329593))

(check-sat (not b!1898418) (not b!1898428) (not b!1898427) (not b!1898422) (not b_next!53867) (not b!1898419) (not b_next!53873) (not b!1898420) (not b!1898437) (not b!1898433) (not b!1898424) (not b_next!53869) b_and!146747 (not b!1898429) (not b_next!53871) (not b!1898431) (not start!190372) (not b!1898421) (not b!1898434) (not b!1898440) (not b!1898426) b_and!146749 b_and!146757 b_and!146755 b_and!146751 (not b!1898436) b_and!146753 (not b!1898439) (not b_next!53875) (not b_next!53865))
(check-sat (not b_next!53867) (not b_next!53873) (not b_next!53871) (not b_next!53869) b_and!146747 b_and!146749 b_and!146757 b_and!146755 b_and!146751 b_and!146753 (not b_next!53875) (not b_next!53865))
