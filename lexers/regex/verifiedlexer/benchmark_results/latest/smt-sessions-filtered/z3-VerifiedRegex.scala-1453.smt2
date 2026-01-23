; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76878 () Bool)

(assert start!76878)

(declare-fun b!855473 () Bool)

(declare-fun b_free!25953 () Bool)

(declare-fun b_next!26017 () Bool)

(assert (=> b!855473 (= b_free!25953 (not b_next!26017))))

(declare-fun tp!269792 () Bool)

(declare-fun b_and!75545 () Bool)

(assert (=> b!855473 (= tp!269792 b_and!75545)))

(declare-fun b_free!25955 () Bool)

(declare-fun b_next!26019 () Bool)

(assert (=> b!855473 (= b_free!25955 (not b_next!26019))))

(declare-fun tp!269795 () Bool)

(declare-fun b_and!75547 () Bool)

(assert (=> b!855473 (= tp!269795 b_and!75547)))

(declare-fun b!855459 () Bool)

(declare-fun b_free!25957 () Bool)

(declare-fun b_next!26021 () Bool)

(assert (=> b!855459 (= b_free!25957 (not b_next!26021))))

(declare-fun tp!269789 () Bool)

(declare-fun b_and!75549 () Bool)

(assert (=> b!855459 (= tp!269789 b_and!75549)))

(declare-fun b_free!25959 () Bool)

(declare-fun b_next!26023 () Bool)

(assert (=> b!855459 (= b_free!25959 (not b_next!26023))))

(declare-fun tp!269790 () Bool)

(declare-fun b_and!75551 () Bool)

(assert (=> b!855459 (= tp!269790 b_and!75551)))

(declare-fun b!855462 () Bool)

(declare-fun b_free!25961 () Bool)

(declare-fun b_next!26025 () Bool)

(assert (=> b!855462 (= b_free!25961 (not b_next!26025))))

(declare-fun tp!269793 () Bool)

(declare-fun b_and!75553 () Bool)

(assert (=> b!855462 (= tp!269793 b_and!75553)))

(declare-fun b_free!25963 () Bool)

(declare-fun b_next!26027 () Bool)

(assert (=> b!855462 (= b_free!25963 (not b_next!26027))))

(declare-fun tp!269791 () Bool)

(declare-fun b_and!75555 () Bool)

(assert (=> b!855462 (= tp!269791 b_and!75555)))

(declare-fun e!563050 () Bool)

(assert (=> b!855459 (= e!563050 (and tp!269789 tp!269790))))

(declare-fun b!855460 () Bool)

(declare-fun e!563051 () Bool)

(declare-fun e!563043 () Bool)

(declare-fun tp!269797 () Bool)

(assert (=> b!855460 (= e!563051 (and e!563043 tp!269797))))

(declare-fun b!855461 () Bool)

(declare-fun res!390534 () Bool)

(declare-fun e!563045 () Bool)

(assert (=> b!855461 (=> res!390534 e!563045)))

(declare-datatypes ((List!9246 0))(
  ( (Nil!9230) (Cons!9230 (h!14631 (_ BitVec 16)) (t!96468 List!9246)) )
))
(declare-datatypes ((TokenValue!1798 0))(
  ( (FloatLiteralValue!3596 (text!13031 List!9246)) (TokenValueExt!1797 (__x!7327 Int)) (Broken!8990 (value!56035 List!9246)) (Object!1813) (End!1798) (Def!1798) (Underscore!1798) (Match!1798) (Else!1798) (Error!1798) (Case!1798) (If!1798) (Extends!1798) (Abstract!1798) (Class!1798) (Val!1798) (DelimiterValue!3596 (del!1858 List!9246)) (KeywordValue!1804 (value!56036 List!9246)) (CommentValue!3596 (value!56037 List!9246)) (WhitespaceValue!3596 (value!56038 List!9246)) (IndentationValue!1798 (value!56039 List!9246)) (String!10887) (Int32!1798) (Broken!8991 (value!56040 List!9246)) (Boolean!1799) (Unit!13730) (OperatorValue!1801 (op!1858 List!9246)) (IdentifierValue!3596 (value!56041 List!9246)) (IdentifierValue!3597 (value!56042 List!9246)) (WhitespaceValue!3597 (value!56043 List!9246)) (True!3596) (False!3596) (Broken!8992 (value!56044 List!9246)) (Broken!8993 (value!56045 List!9246)) (True!3597) (RightBrace!1798) (RightBracket!1798) (Colon!1798) (Null!1798) (Comma!1798) (LeftBracket!1798) (False!3597) (LeftBrace!1798) (ImaginaryLiteralValue!1798 (text!13032 List!9246)) (StringLiteralValue!5394 (value!56046 List!9246)) (EOFValue!1798 (value!56047 List!9246)) (IdentValue!1798 (value!56048 List!9246)) (DelimiterValue!3597 (value!56049 List!9246)) (DedentValue!1798 (value!56050 List!9246)) (NewLineValue!1798 (value!56051 List!9246)) (IntegerValue!5394 (value!56052 (_ BitVec 32)) (text!13033 List!9246)) (IntegerValue!5395 (value!56053 Int) (text!13034 List!9246)) (Times!1798) (Or!1798) (Equal!1798) (Minus!1798) (Broken!8994 (value!56054 List!9246)) (And!1798) (Div!1798) (LessEqual!1798) (Mod!1798) (Concat!3963) (Not!1798) (Plus!1798) (SpaceValue!1798 (value!56055 List!9246)) (IntegerValue!5396 (value!56056 Int) (text!13035 List!9246)) (StringLiteralValue!5395 (text!13036 List!9246)) (FloatLiteralValue!3597 (text!13037 List!9246)) (BytesLiteralValue!1798 (value!56057 List!9246)) (CommentValue!3597 (value!56058 List!9246)) (StringLiteralValue!5396 (value!56059 List!9246)) (ErrorTokenValue!1798 (msg!1859 List!9246)) )
))
(declare-datatypes ((C!4900 0))(
  ( (C!4901 (val!2698 Int)) )
))
(declare-datatypes ((Regex!2165 0))(
  ( (ElementMatch!2165 (c!138699 C!4900)) (Concat!3964 (regOne!4842 Regex!2165) (regTwo!4842 Regex!2165)) (EmptyExpr!2165) (Star!2165 (reg!2494 Regex!2165)) (EmptyLang!2165) (Union!2165 (regOne!4843 Regex!2165) (regTwo!4843 Regex!2165)) )
))
(declare-datatypes ((String!10888 0))(
  ( (String!10889 (value!56060 String)) )
))
(declare-datatypes ((List!9247 0))(
  ( (Nil!9231) (Cons!9231 (h!14632 C!4900) (t!96469 List!9247)) )
))
(declare-datatypes ((IArray!6123 0))(
  ( (IArray!6124 (innerList!3119 List!9247)) )
))
(declare-datatypes ((Conc!3059 0))(
  ( (Node!3059 (left!6830 Conc!3059) (right!7160 Conc!3059) (csize!6348 Int) (cheight!3270 Int)) (Leaf!4513 (xs!5748 IArray!6123) (csize!6349 Int)) (Empty!3059) )
))
(declare-datatypes ((BalanceConc!6132 0))(
  ( (BalanceConc!6133 (c!138700 Conc!3059)) )
))
(declare-datatypes ((TokenValueInjection!3296 0))(
  ( (TokenValueInjection!3297 (toValue!2785 Int) (toChars!2644 Int)) )
))
(declare-datatypes ((Rule!3264 0))(
  ( (Rule!3265 (regex!1732 Regex!2165) (tag!1994 String!10888) (isSeparator!1732 Bool) (transformation!1732 TokenValueInjection!3296)) )
))
(declare-datatypes ((Token!3130 0))(
  ( (Token!3131 (value!56061 TokenValue!1798) (rule!3155 Rule!3264) (size!7703 Int) (originalCharacters!2288 List!9247)) )
))
(declare-fun separatorToken!297 () Token!3130)

(declare-datatypes ((LexerInterface!1534 0))(
  ( (LexerInterfaceExt!1531 (__x!7328 Int)) (Lexer!1532) )
))
(declare-fun thiss!20117 () LexerInterface!1534)

(declare-datatypes ((List!9248 0))(
  ( (Nil!9232) (Cons!9232 (h!14633 Token!3130) (t!96470 List!9248)) )
))
(declare-fun l!5107 () List!9248)

(declare-fun lt!323596 () List!9248)

(declare-fun withSeparatorTokenList!64 (LexerInterface!1534 List!9248 Token!3130) List!9248)

(declare-fun tail!1044 (List!9248) List!9248)

(assert (=> b!855461 (= res!390534 (not (= (t!96470 (t!96470 lt!323596)) (withSeparatorTokenList!64 thiss!20117 (tail!1044 l!5107) separatorToken!297))))))

(declare-fun e!563044 () Bool)

(assert (=> b!855462 (= e!563044 (and tp!269793 tp!269791))))

(declare-fun e!563049 () Bool)

(declare-fun b!855463 () Bool)

(declare-fun tp!269794 () Bool)

(declare-fun inv!11739 (String!10888) Bool)

(declare-fun inv!11742 (TokenValueInjection!3296) Bool)

(assert (=> b!855463 (= e!563049 (and tp!269794 (inv!11739 (tag!1994 (rule!3155 separatorToken!297))) (inv!11742 (transformation!1732 (rule!3155 separatorToken!297))) e!563044))))

(declare-fun b!855464 () Bool)

(declare-fun res!390536 () Bool)

(declare-fun e!563053 () Bool)

(assert (=> b!855464 (=> (not res!390536) (not e!563053))))

(declare-datatypes ((List!9249 0))(
  ( (Nil!9233) (Cons!9233 (h!14634 Rule!3264) (t!96471 List!9249)) )
))
(declare-fun rules!2621 () List!9249)

(declare-fun rulesProduceIndividualToken!598 (LexerInterface!1534 List!9249 Token!3130) Bool)

(assert (=> b!855464 (= res!390536 (rulesProduceIndividualToken!598 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun res!390543 () Bool)

(assert (=> start!76878 (=> (not res!390543) (not e!563053))))

(get-info :version)

(assert (=> start!76878 (= res!390543 ((_ is Lexer!1532) thiss!20117))))

(assert (=> start!76878 e!563053))

(assert (=> start!76878 true))

(assert (=> start!76878 e!563051))

(declare-fun e!563042 () Bool)

(assert (=> start!76878 e!563042))

(declare-fun e!563040 () Bool)

(declare-fun inv!11743 (Token!3130) Bool)

(assert (=> start!76878 (and (inv!11743 separatorToken!297) e!563040)))

(declare-fun b!855465 () Bool)

(declare-fun tp!269788 () Bool)

(declare-fun e!563052 () Bool)

(declare-fun e!563041 () Bool)

(declare-fun inv!21 (TokenValue!1798) Bool)

(assert (=> b!855465 (= e!563041 (and (inv!21 (value!56061 (h!14633 l!5107))) e!563052 tp!269788))))

(declare-fun b!855466 () Bool)

(assert (=> b!855466 (= e!563053 (not e!563045))))

(declare-fun res!390541 () Bool)

(assert (=> b!855466 (=> res!390541 e!563045)))

(assert (=> b!855466 (= res!390541 (or (not ((_ is Cons!9232) lt!323596)) (not ((_ is Cons!9232) (t!96470 lt!323596)))))))

(declare-fun rulesProduceEachTokenIndividuallyList!422 (LexerInterface!1534 List!9249 List!9248) Bool)

(assert (=> b!855466 (rulesProduceEachTokenIndividuallyList!422 thiss!20117 rules!2621 lt!323596)))

(assert (=> b!855466 (= lt!323596 (withSeparatorTokenList!64 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13731 0))(
  ( (Unit!13732) )
))
(declare-fun lt!323597 () Unit!13731)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!64 (LexerInterface!1534 List!9249 List!9248 Token!3130) Unit!13731)

(assert (=> b!855466 (= lt!323597 (withSeparatorTokenListPreservesRulesProduceTokens!64 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!855467 () Bool)

(declare-fun res!390535 () Bool)

(assert (=> b!855467 (=> (not res!390535) (not e!563053))))

(declare-fun sepAndNonSepRulesDisjointChars!532 (List!9249 List!9249) Bool)

(assert (=> b!855467 (= res!390535 (sepAndNonSepRulesDisjointChars!532 rules!2621 rules!2621))))

(declare-fun b!855468 () Bool)

(declare-fun tp!269800 () Bool)

(assert (=> b!855468 (= e!563040 (and (inv!21 (value!56061 separatorToken!297)) e!563049 tp!269800))))

(declare-fun b!855469 () Bool)

(declare-fun res!390539 () Bool)

(assert (=> b!855469 (=> res!390539 e!563045)))

(declare-fun head!1484 (List!9248) Token!3130)

(assert (=> b!855469 (= res!390539 (not (= (head!1484 l!5107) (h!14633 lt!323596))))))

(declare-fun b!855470 () Bool)

(declare-fun res!390533 () Bool)

(assert (=> b!855470 (=> (not res!390533) (not e!563053))))

(declare-fun lambda!25644 () Int)

(declare-fun forall!2189 (List!9248 Int) Bool)

(assert (=> b!855470 (= res!390533 (forall!2189 l!5107 lambda!25644))))

(declare-fun tp!269796 () Bool)

(declare-fun b!855471 () Bool)

(assert (=> b!855471 (= e!563042 (and (inv!11743 (h!14633 l!5107)) e!563041 tp!269796))))

(declare-fun b!855472 () Bool)

(declare-fun res!390537 () Bool)

(assert (=> b!855472 (=> (not res!390537) (not e!563053))))

(declare-fun isEmpty!5469 (List!9249) Bool)

(assert (=> b!855472 (= res!390537 (not (isEmpty!5469 rules!2621)))))

(declare-fun e!563048 () Bool)

(assert (=> b!855473 (= e!563048 (and tp!269792 tp!269795))))

(declare-fun b!855474 () Bool)

(declare-fun res!390538 () Bool)

(assert (=> b!855474 (=> (not res!390538) (not e!563053))))

(assert (=> b!855474 (= res!390538 (isSeparator!1732 (rule!3155 separatorToken!297)))))

(declare-fun tp!269799 () Bool)

(declare-fun b!855475 () Bool)

(assert (=> b!855475 (= e!563043 (and tp!269799 (inv!11739 (tag!1994 (h!14634 rules!2621))) (inv!11742 (transformation!1732 (h!14634 rules!2621))) e!563048))))

(declare-fun b!855476 () Bool)

(declare-fun res!390542 () Bool)

(assert (=> b!855476 (=> (not res!390542) (not e!563053))))

(declare-fun rulesInvariant!1410 (LexerInterface!1534 List!9249) Bool)

(assert (=> b!855476 (= res!390542 (rulesInvariant!1410 thiss!20117 rules!2621))))

(declare-fun b!855477 () Bool)

(declare-fun res!390540 () Bool)

(assert (=> b!855477 (=> (not res!390540) (not e!563053))))

(assert (=> b!855477 (= res!390540 (rulesProduceEachTokenIndividuallyList!422 thiss!20117 rules!2621 l!5107))))

(declare-fun b!855478 () Bool)

(assert (=> b!855478 (= e!563045 (= (h!14633 (t!96470 lt!323596)) separatorToken!297))))

(declare-fun tp!269798 () Bool)

(declare-fun b!855479 () Bool)

(assert (=> b!855479 (= e!563052 (and tp!269798 (inv!11739 (tag!1994 (rule!3155 (h!14633 l!5107)))) (inv!11742 (transformation!1732 (rule!3155 (h!14633 l!5107)))) e!563050))))

(assert (= (and start!76878 res!390543) b!855472))

(assert (= (and b!855472 res!390537) b!855476))

(assert (= (and b!855476 res!390542) b!855477))

(assert (= (and b!855477 res!390540) b!855464))

(assert (= (and b!855464 res!390536) b!855474))

(assert (= (and b!855474 res!390538) b!855470))

(assert (= (and b!855470 res!390533) b!855467))

(assert (= (and b!855467 res!390535) b!855466))

(assert (= (and b!855466 (not res!390541)) b!855461))

(assert (= (and b!855461 (not res!390534)) b!855469))

(assert (= (and b!855469 (not res!390539)) b!855478))

(assert (= b!855475 b!855473))

(assert (= b!855460 b!855475))

(assert (= (and start!76878 ((_ is Cons!9233) rules!2621)) b!855460))

(assert (= b!855479 b!855459))

(assert (= b!855465 b!855479))

(assert (= b!855471 b!855465))

(assert (= (and start!76878 ((_ is Cons!9232) l!5107)) b!855471))

(assert (= b!855463 b!855462))

(assert (= b!855468 b!855463))

(assert (= start!76878 b!855468))

(declare-fun m!1096409 () Bool)

(assert (=> b!855466 m!1096409))

(declare-fun m!1096411 () Bool)

(assert (=> b!855466 m!1096411))

(declare-fun m!1096413 () Bool)

(assert (=> b!855466 m!1096413))

(declare-fun m!1096415 () Bool)

(assert (=> b!855463 m!1096415))

(declare-fun m!1096417 () Bool)

(assert (=> b!855463 m!1096417))

(declare-fun m!1096419 () Bool)

(assert (=> b!855468 m!1096419))

(declare-fun m!1096421 () Bool)

(assert (=> b!855479 m!1096421))

(declare-fun m!1096423 () Bool)

(assert (=> b!855479 m!1096423))

(declare-fun m!1096425 () Bool)

(assert (=> b!855467 m!1096425))

(declare-fun m!1096427 () Bool)

(assert (=> b!855472 m!1096427))

(declare-fun m!1096429 () Bool)

(assert (=> b!855469 m!1096429))

(declare-fun m!1096431 () Bool)

(assert (=> b!855476 m!1096431))

(declare-fun m!1096433 () Bool)

(assert (=> b!855470 m!1096433))

(declare-fun m!1096435 () Bool)

(assert (=> start!76878 m!1096435))

(declare-fun m!1096437 () Bool)

(assert (=> b!855475 m!1096437))

(declare-fun m!1096439 () Bool)

(assert (=> b!855475 m!1096439))

(declare-fun m!1096441 () Bool)

(assert (=> b!855461 m!1096441))

(assert (=> b!855461 m!1096441))

(declare-fun m!1096443 () Bool)

(assert (=> b!855461 m!1096443))

(declare-fun m!1096445 () Bool)

(assert (=> b!855477 m!1096445))

(declare-fun m!1096447 () Bool)

(assert (=> b!855464 m!1096447))

(declare-fun m!1096449 () Bool)

(assert (=> b!855465 m!1096449))

(declare-fun m!1096451 () Bool)

(assert (=> b!855471 m!1096451))

(check-sat (not start!76878) (not b!855460) (not b!855467) b_and!75545 (not b!855464) b_and!75547 (not b_next!26017) (not b!855472) b_and!75555 (not b!855476) (not b!855479) (not b!855475) (not b!855477) (not b!855466) (not b_next!26019) (not b_next!26025) (not b!855470) (not b!855471) (not b!855461) (not b!855468) b_and!75551 (not b_next!26023) (not b_next!26021) (not b!855465) b_and!75549 (not b_next!26027) b_and!75553 (not b!855463) (not b!855469))
(check-sat (not b_next!26019) (not b_next!26025) b_and!75545 b_and!75547 (not b_next!26017) b_and!75555 b_and!75551 (not b_next!26023) (not b_next!26021) b_and!75549 (not b_next!26027) b_and!75553)
(get-model)

(declare-fun d!267522 () Bool)

(assert (=> d!267522 (= (inv!11739 (tag!1994 (rule!3155 (h!14633 l!5107)))) (= (mod (str.len (value!56060 (tag!1994 (rule!3155 (h!14633 l!5107))))) 2) 0))))

(assert (=> b!855479 d!267522))

(declare-fun d!267524 () Bool)

(declare-fun res!390561 () Bool)

(declare-fun e!563064 () Bool)

(assert (=> d!267524 (=> (not res!390561) (not e!563064))))

(declare-fun semiInverseModEq!677 (Int Int) Bool)

(assert (=> d!267524 (= res!390561 (semiInverseModEq!677 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toValue!2785 (transformation!1732 (rule!3155 (h!14633 l!5107))))))))

(assert (=> d!267524 (= (inv!11742 (transformation!1732 (rule!3155 (h!14633 l!5107)))) e!563064)))

(declare-fun b!855493 () Bool)

(declare-fun equivClasses!644 (Int Int) Bool)

(assert (=> b!855493 (= e!563064 (equivClasses!644 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toValue!2785 (transformation!1732 (rule!3155 (h!14633 l!5107))))))))

(assert (= (and d!267524 res!390561) b!855493))

(declare-fun m!1096465 () Bool)

(assert (=> d!267524 m!1096465))

(declare-fun m!1096467 () Bool)

(assert (=> b!855493 m!1096467))

(assert (=> b!855479 d!267524))

(declare-fun b!855504 () Bool)

(declare-fun res!390564 () Bool)

(declare-fun e!563072 () Bool)

(assert (=> b!855504 (=> res!390564 e!563072)))

(assert (=> b!855504 (= res!390564 (not ((_ is IntegerValue!5396) (value!56061 separatorToken!297))))))

(declare-fun e!563073 () Bool)

(assert (=> b!855504 (= e!563073 e!563072)))

(declare-fun b!855505 () Bool)

(declare-fun e!563071 () Bool)

(declare-fun inv!16 (TokenValue!1798) Bool)

(assert (=> b!855505 (= e!563071 (inv!16 (value!56061 separatorToken!297)))))

(declare-fun b!855506 () Bool)

(declare-fun inv!15 (TokenValue!1798) Bool)

(assert (=> b!855506 (= e!563072 (inv!15 (value!56061 separatorToken!297)))))

(declare-fun b!855507 () Bool)

(assert (=> b!855507 (= e!563071 e!563073)))

(declare-fun c!138706 () Bool)

(assert (=> b!855507 (= c!138706 ((_ is IntegerValue!5395) (value!56061 separatorToken!297)))))

(declare-fun b!855508 () Bool)

(declare-fun inv!17 (TokenValue!1798) Bool)

(assert (=> b!855508 (= e!563073 (inv!17 (value!56061 separatorToken!297)))))

(declare-fun d!267526 () Bool)

(declare-fun c!138705 () Bool)

(assert (=> d!267526 (= c!138705 ((_ is IntegerValue!5394) (value!56061 separatorToken!297)))))

(assert (=> d!267526 (= (inv!21 (value!56061 separatorToken!297)) e!563071)))

(assert (= (and d!267526 c!138705) b!855505))

(assert (= (and d!267526 (not c!138705)) b!855507))

(assert (= (and b!855507 c!138706) b!855508))

(assert (= (and b!855507 (not c!138706)) b!855504))

(assert (= (and b!855504 (not res!390564)) b!855506))

(declare-fun m!1096469 () Bool)

(assert (=> b!855505 m!1096469))

(declare-fun m!1096471 () Bool)

(assert (=> b!855506 m!1096471))

(declare-fun m!1096473 () Bool)

(assert (=> b!855508 m!1096473))

(assert (=> b!855468 d!267526))

(declare-fun bs!231782 () Bool)

(declare-fun d!267528 () Bool)

(assert (= bs!231782 (and d!267528 b!855470)))

(declare-fun lambda!25651 () Int)

(assert (=> bs!231782 (not (= lambda!25651 lambda!25644))))

(declare-fun b!855616 () Bool)

(declare-fun e!563152 () Bool)

(assert (=> b!855616 (= e!563152 true)))

(declare-fun b!855615 () Bool)

(declare-fun e!563151 () Bool)

(assert (=> b!855615 (= e!563151 e!563152)))

(declare-fun b!855614 () Bool)

(declare-fun e!563150 () Bool)

(assert (=> b!855614 (= e!563150 e!563151)))

(assert (=> d!267528 e!563150))

(assert (= b!855615 b!855616))

(assert (= b!855614 b!855615))

(assert (= (and d!267528 ((_ is Cons!9233) rules!2621)) b!855614))

(declare-fun order!5963 () Int)

(declare-fun order!5965 () Int)

(declare-fun dynLambda!4333 (Int Int) Int)

(declare-fun dynLambda!4334 (Int Int) Int)

(assert (=> b!855616 (< (dynLambda!4333 order!5963 (toValue!2785 (transformation!1732 (h!14634 rules!2621)))) (dynLambda!4334 order!5965 lambda!25651))))

(declare-fun order!5967 () Int)

(declare-fun dynLambda!4335 (Int Int) Int)

(assert (=> b!855616 (< (dynLambda!4335 order!5967 (toChars!2644 (transformation!1732 (h!14634 rules!2621)))) (dynLambda!4334 order!5965 lambda!25651))))

(assert (=> d!267528 true))

(declare-fun lt!323637 () Bool)

(assert (=> d!267528 (= lt!323637 (forall!2189 l!5107 lambda!25651))))

(declare-fun e!563142 () Bool)

(assert (=> d!267528 (= lt!323637 e!563142)))

(declare-fun res!390607 () Bool)

(assert (=> d!267528 (=> res!390607 e!563142)))

(assert (=> d!267528 (= res!390607 (not ((_ is Cons!9232) l!5107)))))

(assert (=> d!267528 (not (isEmpty!5469 rules!2621))))

(assert (=> d!267528 (= (rulesProduceEachTokenIndividuallyList!422 thiss!20117 rules!2621 l!5107) lt!323637)))

(declare-fun b!855595 () Bool)

(declare-fun e!563143 () Bool)

(assert (=> b!855595 (= e!563142 e!563143)))

(declare-fun res!390608 () Bool)

(assert (=> b!855595 (=> (not res!390608) (not e!563143))))

(assert (=> b!855595 (= res!390608 (rulesProduceIndividualToken!598 thiss!20117 rules!2621 (h!14633 l!5107)))))

(declare-fun b!855596 () Bool)

(assert (=> b!855596 (= e!563143 (rulesProduceEachTokenIndividuallyList!422 thiss!20117 rules!2621 (t!96470 l!5107)))))

(assert (= (and d!267528 (not res!390607)) b!855595))

(assert (= (and b!855595 res!390608) b!855596))

(declare-fun m!1096613 () Bool)

(assert (=> d!267528 m!1096613))

(assert (=> d!267528 m!1096427))

(declare-fun m!1096615 () Bool)

(assert (=> b!855595 m!1096615))

(declare-fun m!1096617 () Bool)

(assert (=> b!855596 m!1096617))

(assert (=> b!855477 d!267528))

(declare-fun bs!231783 () Bool)

(declare-fun d!267550 () Bool)

(assert (= bs!231783 (and d!267550 b!855470)))

(declare-fun lambda!25652 () Int)

(assert (=> bs!231783 (not (= lambda!25652 lambda!25644))))

(declare-fun bs!231784 () Bool)

(assert (= bs!231784 (and d!267550 d!267528)))

(assert (=> bs!231784 (= lambda!25652 lambda!25651)))

(declare-fun b!855623 () Bool)

(declare-fun e!563157 () Bool)

(assert (=> b!855623 (= e!563157 true)))

(declare-fun b!855622 () Bool)

(declare-fun e!563156 () Bool)

(assert (=> b!855622 (= e!563156 e!563157)))

(declare-fun b!855621 () Bool)

(declare-fun e!563155 () Bool)

(assert (=> b!855621 (= e!563155 e!563156)))

(assert (=> d!267550 e!563155))

(assert (= b!855622 b!855623))

(assert (= b!855621 b!855622))

(assert (= (and d!267550 ((_ is Cons!9233) rules!2621)) b!855621))

(assert (=> b!855623 (< (dynLambda!4333 order!5963 (toValue!2785 (transformation!1732 (h!14634 rules!2621)))) (dynLambda!4334 order!5965 lambda!25652))))

(assert (=> b!855623 (< (dynLambda!4335 order!5967 (toChars!2644 (transformation!1732 (h!14634 rules!2621)))) (dynLambda!4334 order!5965 lambda!25652))))

(assert (=> d!267550 true))

(declare-fun lt!323640 () Bool)

(assert (=> d!267550 (= lt!323640 (forall!2189 lt!323596 lambda!25652))))

(declare-fun e!563153 () Bool)

(assert (=> d!267550 (= lt!323640 e!563153)))

(declare-fun res!390609 () Bool)

(assert (=> d!267550 (=> res!390609 e!563153)))

(assert (=> d!267550 (= res!390609 (not ((_ is Cons!9232) lt!323596)))))

(assert (=> d!267550 (not (isEmpty!5469 rules!2621))))

(assert (=> d!267550 (= (rulesProduceEachTokenIndividuallyList!422 thiss!20117 rules!2621 lt!323596) lt!323640)))

(declare-fun b!855619 () Bool)

(declare-fun e!563154 () Bool)

(assert (=> b!855619 (= e!563153 e!563154)))

(declare-fun res!390610 () Bool)

(assert (=> b!855619 (=> (not res!390610) (not e!563154))))

(assert (=> b!855619 (= res!390610 (rulesProduceIndividualToken!598 thiss!20117 rules!2621 (h!14633 lt!323596)))))

(declare-fun b!855620 () Bool)

(assert (=> b!855620 (= e!563154 (rulesProduceEachTokenIndividuallyList!422 thiss!20117 rules!2621 (t!96470 lt!323596)))))

(assert (= (and d!267550 (not res!390609)) b!855619))

(assert (= (and b!855619 res!390610) b!855620))

(declare-fun m!1096619 () Bool)

(assert (=> d!267550 m!1096619))

(assert (=> d!267550 m!1096427))

(declare-fun m!1096621 () Bool)

(assert (=> b!855619 m!1096621))

(declare-fun m!1096623 () Bool)

(assert (=> b!855620 m!1096623))

(assert (=> b!855466 d!267550))

(declare-fun b!855644 () Bool)

(declare-fun e!563175 () Bool)

(declare-fun e!563174 () Bool)

(assert (=> b!855644 (= e!563175 e!563174)))

(declare-fun res!390622 () Bool)

(assert (=> b!855644 (=> res!390622 e!563174)))

(assert (=> b!855644 (= res!390622 (not ((_ is Cons!9232) l!5107)))))

(declare-fun b!855645 () Bool)

(declare-fun e!563170 () List!9247)

(assert (=> b!855645 (= e!563170 Nil!9231)))

(declare-fun e!563172 () List!9247)

(declare-fun b!855646 () Bool)

(declare-fun printList!482 (LexerInterface!1534 List!9248) List!9247)

(declare-fun $colon$colon!95 (List!9248 Token!3130) List!9248)

(assert (=> b!855646 (= e!563174 (= (printList!482 thiss!20117 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297) separatorToken!297)) e!563172))))

(declare-fun c!138731 () Bool)

(declare-fun lt!323657 () List!9248)

(assert (=> b!855646 (= c!138731 ((_ is Cons!9232) lt!323657))))

(assert (=> b!855646 (= lt!323657 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!855647 () Bool)

(assert (=> b!855647 (= e!563172 Nil!9231)))

(declare-fun b!855648 () Bool)

(declare-fun e!563171 () List!9248)

(assert (=> b!855648 (= e!563171 Nil!9232)))

(declare-fun b!855649 () Bool)

(declare-fun res!390621 () Bool)

(assert (=> b!855649 (=> (not res!390621) (not e!563175))))

(declare-fun e!563173 () Bool)

(assert (=> b!855649 (= res!390621 e!563173)))

(declare-fun res!390619 () Bool)

(assert (=> b!855649 (=> res!390619 e!563173)))

(assert (=> b!855649 (= res!390619 (not ((_ is Cons!9232) l!5107)))))

(declare-fun b!855650 () Bool)

(declare-fun lt!323662 () List!9248)

(declare-fun ++!2390 (List!9247 List!9247) List!9247)

(declare-fun list!3637 (BalanceConc!6132) List!9247)

(declare-fun charsOf!999 (Token!3130) BalanceConc!6132)

(assert (=> b!855650 (= e!563170 (++!2390 (list!3637 (charsOf!999 (h!14633 lt!323662))) (printList!482 thiss!20117 (t!96470 lt!323662))))))

(declare-fun b!855651 () Bool)

(assert (=> b!855651 (= e!563171 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297) separatorToken!297) (h!14633 l!5107)))))

(declare-fun lt!323659 () List!9247)

(assert (=> b!855651 (= lt!323659 (list!3637 (charsOf!999 (h!14633 l!5107))))))

(declare-fun lt!323663 () List!9247)

(assert (=> b!855651 (= lt!323663 (list!3637 (charsOf!999 separatorToken!297)))))

(declare-fun lt!323661 () List!9247)

(assert (=> b!855651 (= lt!323661 (printList!482 thiss!20117 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297)))))

(declare-fun lt!323658 () Unit!13731)

(declare-fun lemmaConcatAssociativity!757 (List!9247 List!9247 List!9247) Unit!13731)

(assert (=> b!855651 (= lt!323658 (lemmaConcatAssociativity!757 lt!323659 lt!323663 lt!323661))))

(assert (=> b!855651 (= (++!2390 (++!2390 lt!323659 lt!323663) lt!323661) (++!2390 lt!323659 (++!2390 lt!323663 lt!323661)))))

(declare-fun lt!323660 () Unit!13731)

(assert (=> b!855651 (= lt!323660 lt!323658)))

(declare-fun d!267554 () Bool)

(declare-fun lt!323664 () List!9248)

(declare-fun printWithSeparatorTokenList!40 (LexerInterface!1534 List!9248 Token!3130) List!9247)

(assert (=> d!267554 (= (printList!482 thiss!20117 lt!323664) (printWithSeparatorTokenList!40 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!267554 (= lt!323664 e!563171)))

(declare-fun c!138733 () Bool)

(assert (=> d!267554 (= c!138733 ((_ is Cons!9232) l!5107))))

(assert (=> d!267554 e!563175))

(declare-fun res!390620 () Bool)

(assert (=> d!267554 (=> (not res!390620) (not e!563175))))

(assert (=> d!267554 (= res!390620 (isSeparator!1732 (rule!3155 separatorToken!297)))))

(assert (=> d!267554 (= (withSeparatorTokenList!64 thiss!20117 l!5107 separatorToken!297) lt!323664)))

(declare-fun b!855652 () Bool)

(assert (=> b!855652 (= e!563173 (= (printList!482 thiss!20117 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297) separatorToken!297) (h!14633 l!5107))) e!563170))))

(declare-fun c!138732 () Bool)

(assert (=> b!855652 (= c!138732 ((_ is Cons!9232) lt!323662))))

(assert (=> b!855652 (= lt!323662 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297) separatorToken!297) (h!14633 l!5107)))))

(declare-fun b!855653 () Bool)

(assert (=> b!855653 (= e!563172 (++!2390 (list!3637 (charsOf!999 (h!14633 lt!323657))) (printList!482 thiss!20117 (t!96470 lt!323657))))))

(assert (= (and d!267554 res!390620) b!855649))

(assert (= (and b!855649 (not res!390619)) b!855652))

(assert (= (and b!855652 c!138732) b!855650))

(assert (= (and b!855652 (not c!138732)) b!855645))

(assert (= (and b!855649 res!390621) b!855644))

(assert (= (and b!855644 (not res!390622)) b!855646))

(assert (= (and b!855646 c!138731) b!855653))

(assert (= (and b!855646 (not c!138731)) b!855647))

(assert (= (and d!267554 c!138733) b!855651))

(assert (= (and d!267554 (not c!138733)) b!855648))

(declare-fun m!1096625 () Bool)

(assert (=> b!855650 m!1096625))

(assert (=> b!855650 m!1096625))

(declare-fun m!1096627 () Bool)

(assert (=> b!855650 m!1096627))

(declare-fun m!1096629 () Bool)

(assert (=> b!855650 m!1096629))

(assert (=> b!855650 m!1096627))

(assert (=> b!855650 m!1096629))

(declare-fun m!1096631 () Bool)

(assert (=> b!855650 m!1096631))

(declare-fun m!1096633 () Bool)

(assert (=> b!855653 m!1096633))

(assert (=> b!855653 m!1096633))

(declare-fun m!1096635 () Bool)

(assert (=> b!855653 m!1096635))

(declare-fun m!1096637 () Bool)

(assert (=> b!855653 m!1096637))

(assert (=> b!855653 m!1096635))

(assert (=> b!855653 m!1096637))

(declare-fun m!1096639 () Bool)

(assert (=> b!855653 m!1096639))

(declare-fun m!1096641 () Bool)

(assert (=> b!855651 m!1096641))

(declare-fun m!1096643 () Bool)

(assert (=> b!855651 m!1096643))

(declare-fun m!1096645 () Bool)

(assert (=> b!855651 m!1096645))

(declare-fun m!1096647 () Bool)

(assert (=> b!855651 m!1096647))

(declare-fun m!1096649 () Bool)

(assert (=> b!855651 m!1096649))

(declare-fun m!1096651 () Bool)

(assert (=> b!855651 m!1096651))

(assert (=> b!855651 m!1096641))

(assert (=> b!855651 m!1096649))

(declare-fun m!1096653 () Bool)

(assert (=> b!855651 m!1096653))

(declare-fun m!1096655 () Bool)

(assert (=> b!855651 m!1096655))

(assert (=> b!855651 m!1096655))

(declare-fun m!1096657 () Bool)

(assert (=> b!855651 m!1096657))

(declare-fun m!1096659 () Bool)

(assert (=> b!855651 m!1096659))

(assert (=> b!855651 m!1096653))

(assert (=> b!855651 m!1096653))

(declare-fun m!1096661 () Bool)

(assert (=> b!855651 m!1096661))

(assert (=> b!855651 m!1096659))

(declare-fun m!1096663 () Bool)

(assert (=> b!855651 m!1096663))

(assert (=> b!855651 m!1096645))

(declare-fun m!1096665 () Bool)

(assert (=> b!855651 m!1096665))

(assert (=> b!855652 m!1096653))

(assert (=> b!855652 m!1096653))

(assert (=> b!855652 m!1096655))

(assert (=> b!855652 m!1096655))

(assert (=> b!855652 m!1096657))

(assert (=> b!855652 m!1096657))

(declare-fun m!1096667 () Bool)

(assert (=> b!855652 m!1096667))

(assert (=> b!855646 m!1096653))

(assert (=> b!855646 m!1096653))

(assert (=> b!855646 m!1096655))

(assert (=> b!855646 m!1096655))

(declare-fun m!1096669 () Bool)

(assert (=> b!855646 m!1096669))

(declare-fun m!1096671 () Bool)

(assert (=> d!267554 m!1096671))

(declare-fun m!1096673 () Bool)

(assert (=> d!267554 m!1096673))

(assert (=> b!855466 d!267554))

(declare-fun d!267556 () Bool)

(assert (=> d!267556 (rulesProduceEachTokenIndividuallyList!422 thiss!20117 rules!2621 (withSeparatorTokenList!64 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!323673 () Unit!13731)

(declare-fun choose!5044 (LexerInterface!1534 List!9249 List!9248 Token!3130) Unit!13731)

(assert (=> d!267556 (= lt!323673 (choose!5044 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!267556 (not (isEmpty!5469 rules!2621))))

(assert (=> d!267556 (= (withSeparatorTokenListPreservesRulesProduceTokens!64 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!323673)))

(declare-fun bs!231786 () Bool)

(assert (= bs!231786 d!267556))

(assert (=> bs!231786 m!1096411))

(assert (=> bs!231786 m!1096411))

(declare-fun m!1096727 () Bool)

(assert (=> bs!231786 m!1096727))

(declare-fun m!1096729 () Bool)

(assert (=> bs!231786 m!1096729))

(assert (=> bs!231786 m!1096427))

(assert (=> b!855466 d!267556))

(declare-fun d!267578 () Bool)

(declare-fun res!390648 () Bool)

(declare-fun e!563239 () Bool)

(assert (=> d!267578 (=> res!390648 e!563239)))

(assert (=> d!267578 (= res!390648 (not ((_ is Cons!9233) rules!2621)))))

(assert (=> d!267578 (= (sepAndNonSepRulesDisjointChars!532 rules!2621 rules!2621) e!563239)))

(declare-fun b!855736 () Bool)

(declare-fun e!563240 () Bool)

(assert (=> b!855736 (= e!563239 e!563240)))

(declare-fun res!390649 () Bool)

(assert (=> b!855736 (=> (not res!390649) (not e!563240))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!245 (Rule!3264 List!9249) Bool)

(assert (=> b!855736 (= res!390649 (ruleDisjointCharsFromAllFromOtherType!245 (h!14634 rules!2621) rules!2621))))

(declare-fun b!855737 () Bool)

(assert (=> b!855737 (= e!563240 (sepAndNonSepRulesDisjointChars!532 rules!2621 (t!96471 rules!2621)))))

(assert (= (and d!267578 (not res!390648)) b!855736))

(assert (= (and b!855736 res!390649) b!855737))

(declare-fun m!1096731 () Bool)

(assert (=> b!855736 m!1096731))

(declare-fun m!1096733 () Bool)

(assert (=> b!855737 m!1096733))

(assert (=> b!855467 d!267578))

(declare-fun d!267580 () Bool)

(declare-fun res!390654 () Bool)

(declare-fun e!563245 () Bool)

(assert (=> d!267580 (=> res!390654 e!563245)))

(assert (=> d!267580 (= res!390654 ((_ is Nil!9232) l!5107))))

(assert (=> d!267580 (= (forall!2189 l!5107 lambda!25644) e!563245)))

(declare-fun b!855742 () Bool)

(declare-fun e!563246 () Bool)

(assert (=> b!855742 (= e!563245 e!563246)))

(declare-fun res!390655 () Bool)

(assert (=> b!855742 (=> (not res!390655) (not e!563246))))

(declare-fun dynLambda!4336 (Int Token!3130) Bool)

(assert (=> b!855742 (= res!390655 (dynLambda!4336 lambda!25644 (h!14633 l!5107)))))

(declare-fun b!855743 () Bool)

(assert (=> b!855743 (= e!563246 (forall!2189 (t!96470 l!5107) lambda!25644))))

(assert (= (and d!267580 (not res!390654)) b!855742))

(assert (= (and b!855742 res!390655) b!855743))

(declare-fun b_lambda!28735 () Bool)

(assert (=> (not b_lambda!28735) (not b!855742)))

(declare-fun m!1096735 () Bool)

(assert (=> b!855742 m!1096735))

(declare-fun m!1096737 () Bool)

(assert (=> b!855743 m!1096737))

(assert (=> b!855470 d!267580))

(declare-fun d!267582 () Bool)

(declare-fun res!390660 () Bool)

(declare-fun e!563249 () Bool)

(assert (=> d!267582 (=> (not res!390660) (not e!563249))))

(declare-fun isEmpty!5472 (List!9247) Bool)

(assert (=> d!267582 (= res!390660 (not (isEmpty!5472 (originalCharacters!2288 separatorToken!297))))))

(assert (=> d!267582 (= (inv!11743 separatorToken!297) e!563249)))

(declare-fun b!855748 () Bool)

(declare-fun res!390661 () Bool)

(assert (=> b!855748 (=> (not res!390661) (not e!563249))))

(declare-fun dynLambda!4337 (Int TokenValue!1798) BalanceConc!6132)

(assert (=> b!855748 (= res!390661 (= (originalCharacters!2288 separatorToken!297) (list!3637 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297)))))))

(declare-fun b!855749 () Bool)

(declare-fun size!7706 (List!9247) Int)

(assert (=> b!855749 (= e!563249 (= (size!7703 separatorToken!297) (size!7706 (originalCharacters!2288 separatorToken!297))))))

(assert (= (and d!267582 res!390660) b!855748))

(assert (= (and b!855748 res!390661) b!855749))

(declare-fun b_lambda!28737 () Bool)

(assert (=> (not b_lambda!28737) (not b!855748)))

(declare-fun tb!60553 () Bool)

(declare-fun t!96498 () Bool)

(assert (=> (and b!855473 (= (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297)))) t!96498) tb!60553))

(declare-fun b!855754 () Bool)

(declare-fun e!563252 () Bool)

(declare-fun tp!269863 () Bool)

(declare-fun inv!11746 (Conc!3059) Bool)

(assert (=> b!855754 (= e!563252 (and (inv!11746 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297)))) tp!269863))))

(declare-fun result!70120 () Bool)

(declare-fun inv!11747 (BalanceConc!6132) Bool)

(assert (=> tb!60553 (= result!70120 (and (inv!11747 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297))) e!563252))))

(assert (= tb!60553 b!855754))

(declare-fun m!1096739 () Bool)

(assert (=> b!855754 m!1096739))

(declare-fun m!1096741 () Bool)

(assert (=> tb!60553 m!1096741))

(assert (=> b!855748 t!96498))

(declare-fun b_and!75577 () Bool)

(assert (= b_and!75547 (and (=> t!96498 result!70120) b_and!75577)))

(declare-fun t!96500 () Bool)

(declare-fun tb!60555 () Bool)

(assert (=> (and b!855459 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297)))) t!96500) tb!60555))

(declare-fun result!70124 () Bool)

(assert (= result!70124 result!70120))

(assert (=> b!855748 t!96500))

(declare-fun b_and!75579 () Bool)

(assert (= b_and!75551 (and (=> t!96500 result!70124) b_and!75579)))

(declare-fun t!96502 () Bool)

(declare-fun tb!60557 () Bool)

(assert (=> (and b!855462 (= (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297)))) t!96502) tb!60557))

(declare-fun result!70126 () Bool)

(assert (= result!70126 result!70120))

(assert (=> b!855748 t!96502))

(declare-fun b_and!75581 () Bool)

(assert (= b_and!75555 (and (=> t!96502 result!70126) b_and!75581)))

(declare-fun m!1096743 () Bool)

(assert (=> d!267582 m!1096743))

(declare-fun m!1096745 () Bool)

(assert (=> b!855748 m!1096745))

(assert (=> b!855748 m!1096745))

(declare-fun m!1096747 () Bool)

(assert (=> b!855748 m!1096747))

(declare-fun m!1096749 () Bool)

(assert (=> b!855749 m!1096749))

(assert (=> start!76878 d!267582))

(declare-fun d!267584 () Bool)

(declare-fun res!390662 () Bool)

(declare-fun e!563253 () Bool)

(assert (=> d!267584 (=> (not res!390662) (not e!563253))))

(assert (=> d!267584 (= res!390662 (not (isEmpty!5472 (originalCharacters!2288 (h!14633 l!5107)))))))

(assert (=> d!267584 (= (inv!11743 (h!14633 l!5107)) e!563253)))

(declare-fun b!855755 () Bool)

(declare-fun res!390663 () Bool)

(assert (=> b!855755 (=> (not res!390663) (not e!563253))))

(assert (=> b!855755 (= res!390663 (= (originalCharacters!2288 (h!14633 l!5107)) (list!3637 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107))))))))

(declare-fun b!855756 () Bool)

(assert (=> b!855756 (= e!563253 (= (size!7703 (h!14633 l!5107)) (size!7706 (originalCharacters!2288 (h!14633 l!5107)))))))

(assert (= (and d!267584 res!390662) b!855755))

(assert (= (and b!855755 res!390663) b!855756))

(declare-fun b_lambda!28739 () Bool)

(assert (=> (not b_lambda!28739) (not b!855755)))

(declare-fun t!96504 () Bool)

(declare-fun tb!60559 () Bool)

(assert (=> (and b!855473 (= (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107))))) t!96504) tb!60559))

(declare-fun b!855757 () Bool)

(declare-fun e!563254 () Bool)

(declare-fun tp!269864 () Bool)

(assert (=> b!855757 (= e!563254 (and (inv!11746 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107))))) tp!269864))))

(declare-fun result!70128 () Bool)

(assert (=> tb!60559 (= result!70128 (and (inv!11747 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107)))) e!563254))))

(assert (= tb!60559 b!855757))

(declare-fun m!1096751 () Bool)

(assert (=> b!855757 m!1096751))

(declare-fun m!1096753 () Bool)

(assert (=> tb!60559 m!1096753))

(assert (=> b!855755 t!96504))

(declare-fun b_and!75583 () Bool)

(assert (= b_and!75577 (and (=> t!96504 result!70128) b_and!75583)))

(declare-fun t!96506 () Bool)

(declare-fun tb!60561 () Bool)

(assert (=> (and b!855459 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107))))) t!96506) tb!60561))

(declare-fun result!70130 () Bool)

(assert (= result!70130 result!70128))

(assert (=> b!855755 t!96506))

(declare-fun b_and!75585 () Bool)

(assert (= b_and!75579 (and (=> t!96506 result!70130) b_and!75585)))

(declare-fun t!96508 () Bool)

(declare-fun tb!60563 () Bool)

(assert (=> (and b!855462 (= (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107))))) t!96508) tb!60563))

(declare-fun result!70132 () Bool)

(assert (= result!70132 result!70128))

(assert (=> b!855755 t!96508))

(declare-fun b_and!75587 () Bool)

(assert (= b_and!75581 (and (=> t!96508 result!70132) b_and!75587)))

(declare-fun m!1096755 () Bool)

(assert (=> d!267584 m!1096755))

(declare-fun m!1096757 () Bool)

(assert (=> b!855755 m!1096757))

(assert (=> b!855755 m!1096757))

(declare-fun m!1096759 () Bool)

(assert (=> b!855755 m!1096759))

(declare-fun m!1096761 () Bool)

(assert (=> b!855756 m!1096761))

(assert (=> b!855471 d!267584))

(declare-fun d!267586 () Bool)

(assert (=> d!267586 (= (head!1484 l!5107) (h!14633 l!5107))))

(assert (=> b!855469 d!267586))

(declare-fun d!267588 () Bool)

(assert (=> d!267588 (= (inv!11739 (tag!1994 (rule!3155 separatorToken!297))) (= (mod (str.len (value!56060 (tag!1994 (rule!3155 separatorToken!297)))) 2) 0))))

(assert (=> b!855463 d!267588))

(declare-fun d!267590 () Bool)

(declare-fun res!390664 () Bool)

(declare-fun e!563255 () Bool)

(assert (=> d!267590 (=> (not res!390664) (not e!563255))))

(assert (=> d!267590 (= res!390664 (semiInverseModEq!677 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (toValue!2785 (transformation!1732 (rule!3155 separatorToken!297)))))))

(assert (=> d!267590 (= (inv!11742 (transformation!1732 (rule!3155 separatorToken!297))) e!563255)))

(declare-fun b!855758 () Bool)

(assert (=> b!855758 (= e!563255 (equivClasses!644 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (toValue!2785 (transformation!1732 (rule!3155 separatorToken!297)))))))

(assert (= (and d!267590 res!390664) b!855758))

(declare-fun m!1096763 () Bool)

(assert (=> d!267590 m!1096763))

(declare-fun m!1096765 () Bool)

(assert (=> b!855758 m!1096765))

(assert (=> b!855463 d!267590))

(declare-fun b!855759 () Bool)

(declare-fun e!563261 () Bool)

(declare-fun e!563260 () Bool)

(assert (=> b!855759 (= e!563261 e!563260)))

(declare-fun res!390668 () Bool)

(assert (=> b!855759 (=> res!390668 e!563260)))

(assert (=> b!855759 (= res!390668 (not ((_ is Cons!9232) (tail!1044 l!5107))))))

(declare-fun b!855760 () Bool)

(declare-fun e!563256 () List!9247)

(assert (=> b!855760 (= e!563256 Nil!9231)))

(declare-fun b!855761 () Bool)

(declare-fun e!563258 () List!9247)

(assert (=> b!855761 (= e!563260 (= (printList!482 thiss!20117 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297) separatorToken!297)) e!563258))))

(declare-fun c!138736 () Bool)

(declare-fun lt!323674 () List!9248)

(assert (=> b!855761 (= c!138736 ((_ is Cons!9232) lt!323674))))

(assert (=> b!855761 (= lt!323674 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!855762 () Bool)

(assert (=> b!855762 (= e!563258 Nil!9231)))

(declare-fun b!855763 () Bool)

(declare-fun e!563257 () List!9248)

(assert (=> b!855763 (= e!563257 Nil!9232)))

(declare-fun b!855764 () Bool)

(declare-fun res!390667 () Bool)

(assert (=> b!855764 (=> (not res!390667) (not e!563261))))

(declare-fun e!563259 () Bool)

(assert (=> b!855764 (= res!390667 e!563259)))

(declare-fun res!390665 () Bool)

(assert (=> b!855764 (=> res!390665 e!563259)))

(assert (=> b!855764 (= res!390665 (not ((_ is Cons!9232) (tail!1044 l!5107))))))

(declare-fun b!855765 () Bool)

(declare-fun lt!323679 () List!9248)

(assert (=> b!855765 (= e!563256 (++!2390 (list!3637 (charsOf!999 (h!14633 lt!323679))) (printList!482 thiss!20117 (t!96470 lt!323679))))))

(declare-fun b!855766 () Bool)

(assert (=> b!855766 (= e!563257 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297) separatorToken!297) (h!14633 (tail!1044 l!5107))))))

(declare-fun lt!323676 () List!9247)

(assert (=> b!855766 (= lt!323676 (list!3637 (charsOf!999 (h!14633 (tail!1044 l!5107)))))))

(declare-fun lt!323680 () List!9247)

(assert (=> b!855766 (= lt!323680 (list!3637 (charsOf!999 separatorToken!297)))))

(declare-fun lt!323678 () List!9247)

(assert (=> b!855766 (= lt!323678 (printList!482 thiss!20117 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297)))))

(declare-fun lt!323675 () Unit!13731)

(assert (=> b!855766 (= lt!323675 (lemmaConcatAssociativity!757 lt!323676 lt!323680 lt!323678))))

(assert (=> b!855766 (= (++!2390 (++!2390 lt!323676 lt!323680) lt!323678) (++!2390 lt!323676 (++!2390 lt!323680 lt!323678)))))

(declare-fun lt!323677 () Unit!13731)

(assert (=> b!855766 (= lt!323677 lt!323675)))

(declare-fun d!267592 () Bool)

(declare-fun lt!323681 () List!9248)

(assert (=> d!267592 (= (printList!482 thiss!20117 lt!323681) (printWithSeparatorTokenList!40 thiss!20117 (tail!1044 l!5107) separatorToken!297))))

(assert (=> d!267592 (= lt!323681 e!563257)))

(declare-fun c!138738 () Bool)

(assert (=> d!267592 (= c!138738 ((_ is Cons!9232) (tail!1044 l!5107)))))

(assert (=> d!267592 e!563261))

(declare-fun res!390666 () Bool)

(assert (=> d!267592 (=> (not res!390666) (not e!563261))))

(assert (=> d!267592 (= res!390666 (isSeparator!1732 (rule!3155 separatorToken!297)))))

(assert (=> d!267592 (= (withSeparatorTokenList!64 thiss!20117 (tail!1044 l!5107) separatorToken!297) lt!323681)))

(declare-fun b!855767 () Bool)

(assert (=> b!855767 (= e!563259 (= (printList!482 thiss!20117 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297) separatorToken!297) (h!14633 (tail!1044 l!5107)))) e!563256))))

(declare-fun c!138737 () Bool)

(assert (=> b!855767 (= c!138737 ((_ is Cons!9232) lt!323679))))

(assert (=> b!855767 (= lt!323679 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297) separatorToken!297) (h!14633 (tail!1044 l!5107))))))

(declare-fun b!855768 () Bool)

(assert (=> b!855768 (= e!563258 (++!2390 (list!3637 (charsOf!999 (h!14633 lt!323674))) (printList!482 thiss!20117 (t!96470 lt!323674))))))

(assert (= (and d!267592 res!390666) b!855764))

(assert (= (and b!855764 (not res!390665)) b!855767))

(assert (= (and b!855767 c!138737) b!855765))

(assert (= (and b!855767 (not c!138737)) b!855760))

(assert (= (and b!855764 res!390667) b!855759))

(assert (= (and b!855759 (not res!390668)) b!855761))

(assert (= (and b!855761 c!138736) b!855768))

(assert (= (and b!855761 (not c!138736)) b!855762))

(assert (= (and d!267592 c!138738) b!855766))

(assert (= (and d!267592 (not c!138738)) b!855763))

(declare-fun m!1096767 () Bool)

(assert (=> b!855765 m!1096767))

(assert (=> b!855765 m!1096767))

(declare-fun m!1096769 () Bool)

(assert (=> b!855765 m!1096769))

(declare-fun m!1096771 () Bool)

(assert (=> b!855765 m!1096771))

(assert (=> b!855765 m!1096769))

(assert (=> b!855765 m!1096771))

(declare-fun m!1096773 () Bool)

(assert (=> b!855765 m!1096773))

(declare-fun m!1096775 () Bool)

(assert (=> b!855768 m!1096775))

(assert (=> b!855768 m!1096775))

(declare-fun m!1096777 () Bool)

(assert (=> b!855768 m!1096777))

(declare-fun m!1096779 () Bool)

(assert (=> b!855768 m!1096779))

(assert (=> b!855768 m!1096777))

(assert (=> b!855768 m!1096779))

(declare-fun m!1096781 () Bool)

(assert (=> b!855768 m!1096781))

(declare-fun m!1096783 () Bool)

(assert (=> b!855766 m!1096783))

(declare-fun m!1096785 () Bool)

(assert (=> b!855766 m!1096785))

(declare-fun m!1096787 () Bool)

(assert (=> b!855766 m!1096787))

(declare-fun m!1096789 () Bool)

(assert (=> b!855766 m!1096789))

(assert (=> b!855766 m!1096649))

(assert (=> b!855766 m!1096651))

(assert (=> b!855766 m!1096783))

(assert (=> b!855766 m!1096649))

(declare-fun m!1096791 () Bool)

(assert (=> b!855766 m!1096791))

(declare-fun m!1096793 () Bool)

(assert (=> b!855766 m!1096793))

(assert (=> b!855766 m!1096793))

(declare-fun m!1096795 () Bool)

(assert (=> b!855766 m!1096795))

(declare-fun m!1096797 () Bool)

(assert (=> b!855766 m!1096797))

(assert (=> b!855766 m!1096791))

(assert (=> b!855766 m!1096791))

(declare-fun m!1096799 () Bool)

(assert (=> b!855766 m!1096799))

(assert (=> b!855766 m!1096797))

(declare-fun m!1096801 () Bool)

(assert (=> b!855766 m!1096801))

(assert (=> b!855766 m!1096787))

(declare-fun m!1096803 () Bool)

(assert (=> b!855766 m!1096803))

(assert (=> b!855767 m!1096791))

(assert (=> b!855767 m!1096791))

(assert (=> b!855767 m!1096793))

(assert (=> b!855767 m!1096793))

(assert (=> b!855767 m!1096795))

(assert (=> b!855767 m!1096795))

(declare-fun m!1096805 () Bool)

(assert (=> b!855767 m!1096805))

(assert (=> b!855761 m!1096791))

(assert (=> b!855761 m!1096791))

(assert (=> b!855761 m!1096793))

(assert (=> b!855761 m!1096793))

(declare-fun m!1096807 () Bool)

(assert (=> b!855761 m!1096807))

(declare-fun m!1096809 () Bool)

(assert (=> d!267592 m!1096809))

(assert (=> d!267592 m!1096441))

(declare-fun m!1096811 () Bool)

(assert (=> d!267592 m!1096811))

(assert (=> b!855461 d!267592))

(declare-fun d!267594 () Bool)

(assert (=> d!267594 (= (tail!1044 l!5107) (t!96470 l!5107))))

(assert (=> b!855461 d!267594))

(declare-fun d!267596 () Bool)

(assert (=> d!267596 (= (isEmpty!5469 rules!2621) ((_ is Nil!9233) rules!2621))))

(assert (=> b!855472 d!267596))

(declare-fun b!855769 () Bool)

(declare-fun res!390669 () Bool)

(declare-fun e!563263 () Bool)

(assert (=> b!855769 (=> res!390669 e!563263)))

(assert (=> b!855769 (= res!390669 (not ((_ is IntegerValue!5396) (value!56061 (h!14633 l!5107)))))))

(declare-fun e!563264 () Bool)

(assert (=> b!855769 (= e!563264 e!563263)))

(declare-fun b!855770 () Bool)

(declare-fun e!563262 () Bool)

(assert (=> b!855770 (= e!563262 (inv!16 (value!56061 (h!14633 l!5107))))))

(declare-fun b!855771 () Bool)

(assert (=> b!855771 (= e!563263 (inv!15 (value!56061 (h!14633 l!5107))))))

(declare-fun b!855772 () Bool)

(assert (=> b!855772 (= e!563262 e!563264)))

(declare-fun c!138740 () Bool)

(assert (=> b!855772 (= c!138740 ((_ is IntegerValue!5395) (value!56061 (h!14633 l!5107))))))

(declare-fun b!855773 () Bool)

(assert (=> b!855773 (= e!563264 (inv!17 (value!56061 (h!14633 l!5107))))))

(declare-fun d!267598 () Bool)

(declare-fun c!138739 () Bool)

(assert (=> d!267598 (= c!138739 ((_ is IntegerValue!5394) (value!56061 (h!14633 l!5107))))))

(assert (=> d!267598 (= (inv!21 (value!56061 (h!14633 l!5107))) e!563262)))

(assert (= (and d!267598 c!138739) b!855770))

(assert (= (and d!267598 (not c!138739)) b!855772))

(assert (= (and b!855772 c!138740) b!855773))

(assert (= (and b!855772 (not c!138740)) b!855769))

(assert (= (and b!855769 (not res!390669)) b!855771))

(declare-fun m!1096813 () Bool)

(assert (=> b!855770 m!1096813))

(declare-fun m!1096815 () Bool)

(assert (=> b!855771 m!1096815))

(declare-fun m!1096817 () Bool)

(assert (=> b!855773 m!1096817))

(assert (=> b!855465 d!267598))

(declare-fun d!267600 () Bool)

(declare-fun res!390672 () Bool)

(declare-fun e!563267 () Bool)

(assert (=> d!267600 (=> (not res!390672) (not e!563267))))

(declare-fun rulesValid!609 (LexerInterface!1534 List!9249) Bool)

(assert (=> d!267600 (= res!390672 (rulesValid!609 thiss!20117 rules!2621))))

(assert (=> d!267600 (= (rulesInvariant!1410 thiss!20117 rules!2621) e!563267)))

(declare-fun b!855776 () Bool)

(declare-datatypes ((List!9251 0))(
  ( (Nil!9235) (Cons!9235 (h!14636 String!10888) (t!96519 List!9251)) )
))
(declare-fun noDuplicateTag!609 (LexerInterface!1534 List!9249 List!9251) Bool)

(assert (=> b!855776 (= e!563267 (noDuplicateTag!609 thiss!20117 rules!2621 Nil!9235))))

(assert (= (and d!267600 res!390672) b!855776))

(declare-fun m!1096819 () Bool)

(assert (=> d!267600 m!1096819))

(declare-fun m!1096821 () Bool)

(assert (=> b!855776 m!1096821))

(assert (=> b!855476 d!267600))

(declare-fun d!267602 () Bool)

(assert (=> d!267602 (= (inv!11739 (tag!1994 (h!14634 rules!2621))) (= (mod (str.len (value!56060 (tag!1994 (h!14634 rules!2621)))) 2) 0))))

(assert (=> b!855475 d!267602))

(declare-fun d!267604 () Bool)

(declare-fun res!390673 () Bool)

(declare-fun e!563268 () Bool)

(assert (=> d!267604 (=> (not res!390673) (not e!563268))))

(assert (=> d!267604 (= res!390673 (semiInverseModEq!677 (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toValue!2785 (transformation!1732 (h!14634 rules!2621)))))))

(assert (=> d!267604 (= (inv!11742 (transformation!1732 (h!14634 rules!2621))) e!563268)))

(declare-fun b!855777 () Bool)

(assert (=> b!855777 (= e!563268 (equivClasses!644 (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toValue!2785 (transformation!1732 (h!14634 rules!2621)))))))

(assert (= (and d!267604 res!390673) b!855777))

(declare-fun m!1096823 () Bool)

(assert (=> d!267604 m!1096823))

(declare-fun m!1096825 () Bool)

(assert (=> b!855777 m!1096825))

(assert (=> b!855475 d!267604))

(declare-fun d!267606 () Bool)

(declare-fun lt!323687 () Bool)

(declare-fun e!563274 () Bool)

(assert (=> d!267606 (= lt!323687 e!563274)))

(declare-fun res!390682 () Bool)

(assert (=> d!267606 (=> (not res!390682) (not e!563274))))

(declare-datatypes ((IArray!6127 0))(
  ( (IArray!6128 (innerList!3121 List!9248)) )
))
(declare-datatypes ((Conc!3061 0))(
  ( (Node!3061 (left!6836 Conc!3061) (right!7166 Conc!3061) (csize!6352 Int) (cheight!3272 Int)) (Leaf!4515 (xs!5750 IArray!6127) (csize!6353 Int)) (Empty!3061) )
))
(declare-datatypes ((BalanceConc!6136 0))(
  ( (BalanceConc!6137 (c!138742 Conc!3061)) )
))
(declare-fun list!3638 (BalanceConc!6136) List!9248)

(declare-datatypes ((tuple2!10412 0))(
  ( (tuple2!10413 (_1!6032 BalanceConc!6136) (_2!6032 BalanceConc!6132)) )
))
(declare-fun lex!626 (LexerInterface!1534 List!9249 BalanceConc!6132) tuple2!10412)

(declare-fun print!563 (LexerInterface!1534 BalanceConc!6136) BalanceConc!6132)

(declare-fun singletonSeq!549 (Token!3130) BalanceConc!6136)

(assert (=> d!267606 (= res!390682 (= (list!3638 (_1!6032 (lex!626 thiss!20117 rules!2621 (print!563 thiss!20117 (singletonSeq!549 separatorToken!297))))) (list!3638 (singletonSeq!549 separatorToken!297))))))

(declare-fun e!563273 () Bool)

(assert (=> d!267606 (= lt!323687 e!563273)))

(declare-fun res!390680 () Bool)

(assert (=> d!267606 (=> (not res!390680) (not e!563273))))

(declare-fun lt!323686 () tuple2!10412)

(declare-fun size!7707 (BalanceConc!6136) Int)

(assert (=> d!267606 (= res!390680 (= (size!7707 (_1!6032 lt!323686)) 1))))

(assert (=> d!267606 (= lt!323686 (lex!626 thiss!20117 rules!2621 (print!563 thiss!20117 (singletonSeq!549 separatorToken!297))))))

(assert (=> d!267606 (not (isEmpty!5469 rules!2621))))

(assert (=> d!267606 (= (rulesProduceIndividualToken!598 thiss!20117 rules!2621 separatorToken!297) lt!323687)))

(declare-fun b!855784 () Bool)

(declare-fun res!390681 () Bool)

(assert (=> b!855784 (=> (not res!390681) (not e!563273))))

(declare-fun apply!1915 (BalanceConc!6136 Int) Token!3130)

(assert (=> b!855784 (= res!390681 (= (apply!1915 (_1!6032 lt!323686) 0) separatorToken!297))))

(declare-fun b!855785 () Bool)

(declare-fun isEmpty!5473 (BalanceConc!6132) Bool)

(assert (=> b!855785 (= e!563273 (isEmpty!5473 (_2!6032 lt!323686)))))

(declare-fun b!855786 () Bool)

(assert (=> b!855786 (= e!563274 (isEmpty!5473 (_2!6032 (lex!626 thiss!20117 rules!2621 (print!563 thiss!20117 (singletonSeq!549 separatorToken!297))))))))

(assert (= (and d!267606 res!390680) b!855784))

(assert (= (and b!855784 res!390681) b!855785))

(assert (= (and d!267606 res!390682) b!855786))

(assert (=> d!267606 m!1096427))

(declare-fun m!1096827 () Bool)

(assert (=> d!267606 m!1096827))

(declare-fun m!1096829 () Bool)

(assert (=> d!267606 m!1096829))

(assert (=> d!267606 m!1096827))

(declare-fun m!1096831 () Bool)

(assert (=> d!267606 m!1096831))

(assert (=> d!267606 m!1096827))

(declare-fun m!1096833 () Bool)

(assert (=> d!267606 m!1096833))

(declare-fun m!1096835 () Bool)

(assert (=> d!267606 m!1096835))

(assert (=> d!267606 m!1096829))

(declare-fun m!1096837 () Bool)

(assert (=> d!267606 m!1096837))

(declare-fun m!1096839 () Bool)

(assert (=> b!855784 m!1096839))

(declare-fun m!1096841 () Bool)

(assert (=> b!855785 m!1096841))

(assert (=> b!855786 m!1096827))

(assert (=> b!855786 m!1096827))

(assert (=> b!855786 m!1096829))

(assert (=> b!855786 m!1096829))

(assert (=> b!855786 m!1096837))

(declare-fun m!1096843 () Bool)

(assert (=> b!855786 m!1096843))

(assert (=> b!855464 d!267606))

(declare-fun b!855798 () Bool)

(declare-fun e!563277 () Bool)

(declare-fun tp!269877 () Bool)

(declare-fun tp!269879 () Bool)

(assert (=> b!855798 (= e!563277 (and tp!269877 tp!269879))))

(declare-fun b!855799 () Bool)

(declare-fun tp!269875 () Bool)

(assert (=> b!855799 (= e!563277 tp!269875)))

(declare-fun b!855800 () Bool)

(declare-fun tp!269878 () Bool)

(declare-fun tp!269876 () Bool)

(assert (=> b!855800 (= e!563277 (and tp!269878 tp!269876))))

(declare-fun b!855797 () Bool)

(declare-fun tp_is_empty!3989 () Bool)

(assert (=> b!855797 (= e!563277 tp_is_empty!3989)))

(assert (=> b!855463 (= tp!269794 e!563277)))

(assert (= (and b!855463 ((_ is ElementMatch!2165) (regex!1732 (rule!3155 separatorToken!297)))) b!855797))

(assert (= (and b!855463 ((_ is Concat!3964) (regex!1732 (rule!3155 separatorToken!297)))) b!855798))

(assert (= (and b!855463 ((_ is Star!2165) (regex!1732 (rule!3155 separatorToken!297)))) b!855799))

(assert (= (and b!855463 ((_ is Union!2165) (regex!1732 (rule!3155 separatorToken!297)))) b!855800))

(declare-fun b!855802 () Bool)

(declare-fun e!563278 () Bool)

(declare-fun tp!269882 () Bool)

(declare-fun tp!269884 () Bool)

(assert (=> b!855802 (= e!563278 (and tp!269882 tp!269884))))

(declare-fun b!855803 () Bool)

(declare-fun tp!269880 () Bool)

(assert (=> b!855803 (= e!563278 tp!269880)))

(declare-fun b!855804 () Bool)

(declare-fun tp!269883 () Bool)

(declare-fun tp!269881 () Bool)

(assert (=> b!855804 (= e!563278 (and tp!269883 tp!269881))))

(declare-fun b!855801 () Bool)

(assert (=> b!855801 (= e!563278 tp_is_empty!3989)))

(assert (=> b!855479 (= tp!269798 e!563278)))

(assert (= (and b!855479 ((_ is ElementMatch!2165) (regex!1732 (rule!3155 (h!14633 l!5107))))) b!855801))

(assert (= (and b!855479 ((_ is Concat!3964) (regex!1732 (rule!3155 (h!14633 l!5107))))) b!855802))

(assert (= (and b!855479 ((_ is Star!2165) (regex!1732 (rule!3155 (h!14633 l!5107))))) b!855803))

(assert (= (and b!855479 ((_ is Union!2165) (regex!1732 (rule!3155 (h!14633 l!5107))))) b!855804))

(declare-fun b!855809 () Bool)

(declare-fun e!563281 () Bool)

(declare-fun tp!269887 () Bool)

(assert (=> b!855809 (= e!563281 (and tp_is_empty!3989 tp!269887))))

(assert (=> b!855468 (= tp!269800 e!563281)))

(assert (= (and b!855468 ((_ is Cons!9231) (originalCharacters!2288 separatorToken!297))) b!855809))

(declare-fun b!855810 () Bool)

(declare-fun e!563282 () Bool)

(declare-fun tp!269888 () Bool)

(assert (=> b!855810 (= e!563282 (and tp_is_empty!3989 tp!269888))))

(assert (=> b!855465 (= tp!269788 e!563282)))

(assert (= (and b!855465 ((_ is Cons!9231) (originalCharacters!2288 (h!14633 l!5107)))) b!855810))

(declare-fun b!855824 () Bool)

(declare-fun b_free!25973 () Bool)

(declare-fun b_next!26037 () Bool)

(assert (=> b!855824 (= b_free!25973 (not b_next!26037))))

(declare-fun tp!269903 () Bool)

(declare-fun b_and!75589 () Bool)

(assert (=> b!855824 (= tp!269903 b_and!75589)))

(declare-fun b_free!25975 () Bool)

(declare-fun b_next!26039 () Bool)

(assert (=> b!855824 (= b_free!25975 (not b_next!26039))))

(declare-fun tb!60565 () Bool)

(declare-fun t!96512 () Bool)

(assert (=> (and b!855824 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297)))) t!96512) tb!60565))

(declare-fun result!70140 () Bool)

(assert (= result!70140 result!70120))

(assert (=> b!855748 t!96512))

(declare-fun t!96514 () Bool)

(declare-fun tb!60567 () Bool)

(assert (=> (and b!855824 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107))))) t!96514) tb!60567))

(declare-fun result!70142 () Bool)

(assert (= result!70142 result!70128))

(assert (=> b!855755 t!96514))

(declare-fun b_and!75591 () Bool)

(declare-fun tp!269902 () Bool)

(assert (=> b!855824 (= tp!269902 (and (=> t!96512 result!70140) (=> t!96514 result!70142) b_and!75591))))

(declare-fun tp!269901 () Bool)

(declare-fun e!563296 () Bool)

(declare-fun b!855823 () Bool)

(declare-fun e!563295 () Bool)

(assert (=> b!855823 (= e!563296 (and tp!269901 (inv!11739 (tag!1994 (rule!3155 (h!14633 (t!96470 l!5107))))) (inv!11742 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) e!563295))))

(assert (=> b!855824 (= e!563295 (and tp!269903 tp!269902))))

(declare-fun e!563299 () Bool)

(declare-fun tp!269899 () Bool)

(declare-fun b!855821 () Bool)

(declare-fun e!563297 () Bool)

(assert (=> b!855821 (= e!563299 (and (inv!11743 (h!14633 (t!96470 l!5107))) e!563297 tp!269899))))

(assert (=> b!855471 (= tp!269796 e!563299)))

(declare-fun tp!269900 () Bool)

(declare-fun b!855822 () Bool)

(assert (=> b!855822 (= e!563297 (and (inv!21 (value!56061 (h!14633 (t!96470 l!5107)))) e!563296 tp!269900))))

(assert (= b!855823 b!855824))

(assert (= b!855822 b!855823))

(assert (= b!855821 b!855822))

(assert (= (and b!855471 ((_ is Cons!9232) (t!96470 l!5107))) b!855821))

(declare-fun m!1096845 () Bool)

(assert (=> b!855823 m!1096845))

(declare-fun m!1096847 () Bool)

(assert (=> b!855823 m!1096847))

(declare-fun m!1096849 () Bool)

(assert (=> b!855821 m!1096849))

(declare-fun m!1096851 () Bool)

(assert (=> b!855822 m!1096851))

(declare-fun b!855835 () Bool)

(declare-fun b_free!25977 () Bool)

(declare-fun b_next!26041 () Bool)

(assert (=> b!855835 (= b_free!25977 (not b_next!26041))))

(declare-fun tp!269914 () Bool)

(declare-fun b_and!75593 () Bool)

(assert (=> b!855835 (= tp!269914 b_and!75593)))

(declare-fun b_free!25979 () Bool)

(declare-fun b_next!26043 () Bool)

(assert (=> b!855835 (= b_free!25979 (not b_next!26043))))

(declare-fun tb!60569 () Bool)

(declare-fun t!96516 () Bool)

(assert (=> (and b!855835 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 rules!2621)))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297)))) t!96516) tb!60569))

(declare-fun result!70146 () Bool)

(assert (= result!70146 result!70120))

(assert (=> b!855748 t!96516))

(declare-fun t!96518 () Bool)

(declare-fun tb!60571 () Bool)

(assert (=> (and b!855835 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 rules!2621)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107))))) t!96518) tb!60571))

(declare-fun result!70148 () Bool)

(assert (= result!70148 result!70128))

(assert (=> b!855755 t!96518))

(declare-fun b_and!75595 () Bool)

(declare-fun tp!269915 () Bool)

(assert (=> b!855835 (= tp!269915 (and (=> t!96516 result!70146) (=> t!96518 result!70148) b_and!75595))))

(declare-fun e!563310 () Bool)

(assert (=> b!855835 (= e!563310 (and tp!269914 tp!269915))))

(declare-fun b!855834 () Bool)

(declare-fun tp!269912 () Bool)

(declare-fun e!563309 () Bool)

(assert (=> b!855834 (= e!563309 (and tp!269912 (inv!11739 (tag!1994 (h!14634 (t!96471 rules!2621)))) (inv!11742 (transformation!1732 (h!14634 (t!96471 rules!2621)))) e!563310))))

(declare-fun b!855833 () Bool)

(declare-fun e!563312 () Bool)

(declare-fun tp!269913 () Bool)

(assert (=> b!855833 (= e!563312 (and e!563309 tp!269913))))

(assert (=> b!855460 (= tp!269797 e!563312)))

(assert (= b!855834 b!855835))

(assert (= b!855833 b!855834))

(assert (= (and b!855460 ((_ is Cons!9233) (t!96471 rules!2621))) b!855833))

(declare-fun m!1096853 () Bool)

(assert (=> b!855834 m!1096853))

(declare-fun m!1096855 () Bool)

(assert (=> b!855834 m!1096855))

(declare-fun b!855837 () Bool)

(declare-fun e!563313 () Bool)

(declare-fun tp!269918 () Bool)

(declare-fun tp!269920 () Bool)

(assert (=> b!855837 (= e!563313 (and tp!269918 tp!269920))))

(declare-fun b!855838 () Bool)

(declare-fun tp!269916 () Bool)

(assert (=> b!855838 (= e!563313 tp!269916)))

(declare-fun b!855839 () Bool)

(declare-fun tp!269919 () Bool)

(declare-fun tp!269917 () Bool)

(assert (=> b!855839 (= e!563313 (and tp!269919 tp!269917))))

(declare-fun b!855836 () Bool)

(assert (=> b!855836 (= e!563313 tp_is_empty!3989)))

(assert (=> b!855475 (= tp!269799 e!563313)))

(assert (= (and b!855475 ((_ is ElementMatch!2165) (regex!1732 (h!14634 rules!2621)))) b!855836))

(assert (= (and b!855475 ((_ is Concat!3964) (regex!1732 (h!14634 rules!2621)))) b!855837))

(assert (= (and b!855475 ((_ is Star!2165) (regex!1732 (h!14634 rules!2621)))) b!855838))

(assert (= (and b!855475 ((_ is Union!2165) (regex!1732 (h!14634 rules!2621)))) b!855839))

(declare-fun b_lambda!28741 () Bool)

(assert (= b_lambda!28739 (or (and b!855462 b_free!25963 (= (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))))) (and b!855824 b_free!25975 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))))) (and b!855835 b_free!25979 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 rules!2621)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))))) (and b!855473 b_free!25955 (= (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))))) (and b!855459 b_free!25959) b_lambda!28741)))

(declare-fun b_lambda!28743 () Bool)

(assert (= b_lambda!28737 (or (and b!855462 b_free!25963) (and b!855473 b_free!25955 (= (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))))) (and b!855459 b_free!25959 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))))) (and b!855835 b_free!25979 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 rules!2621)))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))))) (and b!855824 b_free!25975 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))))) b_lambda!28743)))

(declare-fun b_lambda!28745 () Bool)

(assert (= b_lambda!28735 (or b!855470 b_lambda!28745)))

(declare-fun bs!231787 () Bool)

(declare-fun d!267608 () Bool)

(assert (= bs!231787 (and d!267608 b!855470)))

(assert (=> bs!231787 (= (dynLambda!4336 lambda!25644 (h!14633 l!5107)) (not (isSeparator!1732 (rule!3155 (h!14633 l!5107)))))))

(assert (=> b!855742 d!267608))

(check-sat (not d!267590) (not b!855766) (not b_next!26039) (not b!855614) (not d!267604) (not d!267600) (not b!855506) (not b_next!26019) (not b_next!26037) (not b_next!26025) (not d!267550) b_and!75595 (not d!267524) b_and!75583 (not b!855802) (not b!855799) (not b!855652) (not b!855810) (not b!855768) (not b!855838) (not b!855621) b_and!75587 b_and!75585 (not b!855736) (not b!855758) (not b!855737) (not b_next!26023) (not tb!60553) b_and!75591 (not b!855493) (not b_next!26021) (not b!855798) (not b!855786) (not d!267606) (not b!855650) b_and!75589 (not b_next!26043) (not b!855777) (not b!855823) (not b!855755) (not b!855595) (not b!855653) (not b!855596) b_and!75545 (not b!855756) (not b_lambda!28745) (not d!267556) (not b!855776) (not b!855765) (not b!855809) (not b_lambda!28741) (not b!855771) (not b!855773) (not b!855839) (not d!267584) (not b_next!26041) (not b_lambda!28743) b_and!75593 (not b!855651) (not b_next!26017) (not b!855800) (not b!855770) (not b!855505) (not b!855748) (not d!267554) (not b!855804) (not d!267592) tp_is_empty!3989 (not b!855754) (not b!855749) (not d!267528) (not b!855837) (not b!855508) (not b!855833) (not b!855767) (not b!855803) b_and!75549 (not b_next!26027) b_and!75553 (not b!855620) (not b!855619) (not b!855834) (not b!855743) (not tb!60559) (not b!855821) (not b!855757) (not d!267582) (not b!855785) (not b!855646) (not b!855761) (not b!855784) (not b!855822))
(check-sat (not b_next!26025) b_and!75587 b_and!75585 b_and!75589 (not b_next!26043) b_and!75545 (not b_next!26039) (not b_next!26017) (not b_next!26019) (not b_next!26037) b_and!75583 b_and!75595 b_and!75591 (not b_next!26023) (not b_next!26021) (not b_next!26041) b_and!75593 b_and!75549 (not b_next!26027) b_and!75553)
(get-model)

(declare-fun d!267626 () Bool)

(declare-fun c!138745 () Bool)

(assert (=> d!267626 (= c!138745 ((_ is Cons!9232) (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297)))))

(declare-fun e!563325 () List!9247)

(assert (=> d!267626 (= (printList!482 thiss!20117 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297)) e!563325)))

(declare-fun b!855855 () Bool)

(assert (=> b!855855 (= e!563325 (++!2390 (list!3637 (charsOf!999 (h!14633 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297)))) (printList!482 thiss!20117 (t!96470 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297)))))))

(declare-fun b!855856 () Bool)

(assert (=> b!855856 (= e!563325 Nil!9231)))

(assert (= (and d!267626 c!138745) b!855855))

(assert (= (and d!267626 (not c!138745)) b!855856))

(declare-fun m!1096909 () Bool)

(assert (=> b!855855 m!1096909))

(assert (=> b!855855 m!1096909))

(declare-fun m!1096911 () Bool)

(assert (=> b!855855 m!1096911))

(declare-fun m!1096913 () Bool)

(assert (=> b!855855 m!1096913))

(assert (=> b!855855 m!1096911))

(assert (=> b!855855 m!1096913))

(declare-fun m!1096915 () Bool)

(assert (=> b!855855 m!1096915))

(assert (=> b!855651 d!267626))

(declare-fun d!267628 () Bool)

(declare-fun lt!323698 () BalanceConc!6132)

(assert (=> d!267628 (= (list!3637 lt!323698) (originalCharacters!2288 separatorToken!297))))

(assert (=> d!267628 (= lt!323698 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297)))))

(assert (=> d!267628 (= (charsOf!999 separatorToken!297) lt!323698)))

(declare-fun b_lambda!28747 () Bool)

(assert (=> (not b_lambda!28747) (not d!267628)))

(assert (=> d!267628 t!96516))

(declare-fun b_and!75597 () Bool)

(assert (= b_and!75595 (and (=> t!96516 result!70146) b_and!75597)))

(assert (=> d!267628 t!96512))

(declare-fun b_and!75599 () Bool)

(assert (= b_and!75591 (and (=> t!96512 result!70140) b_and!75599)))

(assert (=> d!267628 t!96502))

(declare-fun b_and!75601 () Bool)

(assert (= b_and!75587 (and (=> t!96502 result!70126) b_and!75601)))

(assert (=> d!267628 t!96500))

(declare-fun b_and!75603 () Bool)

(assert (= b_and!75585 (and (=> t!96500 result!70124) b_and!75603)))

(assert (=> d!267628 t!96498))

(declare-fun b_and!75605 () Bool)

(assert (= b_and!75583 (and (=> t!96498 result!70120) b_and!75605)))

(declare-fun m!1096917 () Bool)

(assert (=> d!267628 m!1096917))

(assert (=> d!267628 m!1096745))

(assert (=> b!855651 d!267628))

(declare-fun b!855865 () Bool)

(declare-fun e!563331 () List!9247)

(assert (=> b!855865 (= e!563331 (++!2390 lt!323663 lt!323661))))

(declare-fun b!855867 () Bool)

(declare-fun res!390704 () Bool)

(declare-fun e!563330 () Bool)

(assert (=> b!855867 (=> (not res!390704) (not e!563330))))

(declare-fun lt!323701 () List!9247)

(assert (=> b!855867 (= res!390704 (= (size!7706 lt!323701) (+ (size!7706 lt!323659) (size!7706 (++!2390 lt!323663 lt!323661)))))))

(declare-fun b!855868 () Bool)

(assert (=> b!855868 (= e!563330 (or (not (= (++!2390 lt!323663 lt!323661) Nil!9231)) (= lt!323701 lt!323659)))))

(declare-fun d!267630 () Bool)

(assert (=> d!267630 e!563330))

(declare-fun res!390703 () Bool)

(assert (=> d!267630 (=> (not res!390703) (not e!563330))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1351 (List!9247) (InoxSet C!4900))

(assert (=> d!267630 (= res!390703 (= (content!1351 lt!323701) ((_ map or) (content!1351 lt!323659) (content!1351 (++!2390 lt!323663 lt!323661)))))))

(assert (=> d!267630 (= lt!323701 e!563331)))

(declare-fun c!138748 () Bool)

(assert (=> d!267630 (= c!138748 ((_ is Nil!9231) lt!323659))))

(assert (=> d!267630 (= (++!2390 lt!323659 (++!2390 lt!323663 lt!323661)) lt!323701)))

(declare-fun b!855866 () Bool)

(assert (=> b!855866 (= e!563331 (Cons!9231 (h!14632 lt!323659) (++!2390 (t!96469 lt!323659) (++!2390 lt!323663 lt!323661))))))

(assert (= (and d!267630 c!138748) b!855865))

(assert (= (and d!267630 (not c!138748)) b!855866))

(assert (= (and d!267630 res!390703) b!855867))

(assert (= (and b!855867 res!390704) b!855868))

(declare-fun m!1096919 () Bool)

(assert (=> b!855867 m!1096919))

(declare-fun m!1096921 () Bool)

(assert (=> b!855867 m!1096921))

(assert (=> b!855867 m!1096645))

(declare-fun m!1096923 () Bool)

(assert (=> b!855867 m!1096923))

(declare-fun m!1096925 () Bool)

(assert (=> d!267630 m!1096925))

(declare-fun m!1096927 () Bool)

(assert (=> d!267630 m!1096927))

(assert (=> d!267630 m!1096645))

(declare-fun m!1096929 () Bool)

(assert (=> d!267630 m!1096929))

(assert (=> b!855866 m!1096645))

(declare-fun m!1096931 () Bool)

(assert (=> b!855866 m!1096931))

(assert (=> b!855651 d!267630))

(declare-fun d!267632 () Bool)

(declare-fun list!3640 (Conc!3059) List!9247)

(assert (=> d!267632 (= (list!3637 (charsOf!999 separatorToken!297)) (list!3640 (c!138700 (charsOf!999 separatorToken!297))))))

(declare-fun bs!231794 () Bool)

(assert (= bs!231794 d!267632))

(declare-fun m!1096933 () Bool)

(assert (=> bs!231794 m!1096933))

(assert (=> b!855651 d!267632))

(declare-fun d!267634 () Bool)

(assert (=> d!267634 (= (list!3637 (charsOf!999 (h!14633 l!5107))) (list!3640 (c!138700 (charsOf!999 (h!14633 l!5107)))))))

(declare-fun bs!231795 () Bool)

(assert (= bs!231795 d!267634))

(declare-fun m!1096935 () Bool)

(assert (=> bs!231795 m!1096935))

(assert (=> b!855651 d!267634))

(declare-fun b!855869 () Bool)

(declare-fun e!563333 () List!9247)

(assert (=> b!855869 (= e!563333 lt!323663)))

(declare-fun b!855871 () Bool)

(declare-fun res!390706 () Bool)

(declare-fun e!563332 () Bool)

(assert (=> b!855871 (=> (not res!390706) (not e!563332))))

(declare-fun lt!323702 () List!9247)

(assert (=> b!855871 (= res!390706 (= (size!7706 lt!323702) (+ (size!7706 lt!323659) (size!7706 lt!323663))))))

(declare-fun b!855872 () Bool)

(assert (=> b!855872 (= e!563332 (or (not (= lt!323663 Nil!9231)) (= lt!323702 lt!323659)))))

(declare-fun d!267636 () Bool)

(assert (=> d!267636 e!563332))

(declare-fun res!390705 () Bool)

(assert (=> d!267636 (=> (not res!390705) (not e!563332))))

(assert (=> d!267636 (= res!390705 (= (content!1351 lt!323702) ((_ map or) (content!1351 lt!323659) (content!1351 lt!323663))))))

(assert (=> d!267636 (= lt!323702 e!563333)))

(declare-fun c!138749 () Bool)

(assert (=> d!267636 (= c!138749 ((_ is Nil!9231) lt!323659))))

(assert (=> d!267636 (= (++!2390 lt!323659 lt!323663) lt!323702)))

(declare-fun b!855870 () Bool)

(assert (=> b!855870 (= e!563333 (Cons!9231 (h!14632 lt!323659) (++!2390 (t!96469 lt!323659) lt!323663)))))

(assert (= (and d!267636 c!138749) b!855869))

(assert (= (and d!267636 (not c!138749)) b!855870))

(assert (= (and d!267636 res!390705) b!855871))

(assert (= (and b!855871 res!390706) b!855872))

(declare-fun m!1096937 () Bool)

(assert (=> b!855871 m!1096937))

(assert (=> b!855871 m!1096921))

(declare-fun m!1096939 () Bool)

(assert (=> b!855871 m!1096939))

(declare-fun m!1096941 () Bool)

(assert (=> d!267636 m!1096941))

(assert (=> d!267636 m!1096927))

(declare-fun m!1096943 () Bool)

(assert (=> d!267636 m!1096943))

(declare-fun m!1096945 () Bool)

(assert (=> b!855870 m!1096945))

(assert (=> b!855651 d!267636))

(declare-fun d!267638 () Bool)

(assert (=> d!267638 (= (++!2390 (++!2390 lt!323659 lt!323663) lt!323661) (++!2390 lt!323659 (++!2390 lt!323663 lt!323661)))))

(declare-fun lt!323705 () Unit!13731)

(declare-fun choose!5045 (List!9247 List!9247 List!9247) Unit!13731)

(assert (=> d!267638 (= lt!323705 (choose!5045 lt!323659 lt!323663 lt!323661))))

(assert (=> d!267638 (= (lemmaConcatAssociativity!757 lt!323659 lt!323663 lt!323661) lt!323705)))

(declare-fun bs!231796 () Bool)

(assert (= bs!231796 d!267638))

(declare-fun m!1096947 () Bool)

(assert (=> bs!231796 m!1096947))

(assert (=> bs!231796 m!1096645))

(assert (=> bs!231796 m!1096647))

(assert (=> bs!231796 m!1096659))

(assert (=> bs!231796 m!1096645))

(assert (=> bs!231796 m!1096659))

(assert (=> bs!231796 m!1096663))

(assert (=> b!855651 d!267638))

(declare-fun d!267640 () Bool)

(assert (=> d!267640 (= ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297) separatorToken!297) (h!14633 l!5107)) (Cons!9232 (h!14633 l!5107) ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297) separatorToken!297)))))

(assert (=> b!855651 d!267640))

(declare-fun d!267642 () Bool)

(declare-fun lt!323706 () BalanceConc!6132)

(assert (=> d!267642 (= (list!3637 lt!323706) (originalCharacters!2288 (h!14633 l!5107)))))

(assert (=> d!267642 (= lt!323706 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107))))))

(assert (=> d!267642 (= (charsOf!999 (h!14633 l!5107)) lt!323706)))

(declare-fun b_lambda!28749 () Bool)

(assert (=> (not b_lambda!28749) (not d!267642)))

(assert (=> d!267642 t!96504))

(declare-fun b_and!75607 () Bool)

(assert (= b_and!75605 (and (=> t!96504 result!70128) b_and!75607)))

(assert (=> d!267642 t!96508))

(declare-fun b_and!75609 () Bool)

(assert (= b_and!75601 (and (=> t!96508 result!70132) b_and!75609)))

(assert (=> d!267642 t!96506))

(declare-fun b_and!75611 () Bool)

(assert (= b_and!75603 (and (=> t!96506 result!70130) b_and!75611)))

(assert (=> d!267642 t!96514))

(declare-fun b_and!75613 () Bool)

(assert (= b_and!75599 (and (=> t!96514 result!70142) b_and!75613)))

(assert (=> d!267642 t!96518))

(declare-fun b_and!75615 () Bool)

(assert (= b_and!75597 (and (=> t!96518 result!70148) b_and!75615)))

(declare-fun m!1096949 () Bool)

(assert (=> d!267642 m!1096949))

(assert (=> d!267642 m!1096757))

(assert (=> b!855651 d!267642))

(declare-fun d!267644 () Bool)

(assert (=> d!267644 (= ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297) separatorToken!297) (Cons!9232 separatorToken!297 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297)))))

(assert (=> b!855651 d!267644))

(declare-fun b!855873 () Bool)

(declare-fun e!563339 () Bool)

(declare-fun e!563338 () Bool)

(assert (=> b!855873 (= e!563339 e!563338)))

(declare-fun res!390710 () Bool)

(assert (=> b!855873 (=> res!390710 e!563338)))

(assert (=> b!855873 (= res!390710 (not ((_ is Cons!9232) (t!96470 l!5107))))))

(declare-fun b!855874 () Bool)

(declare-fun e!563334 () List!9247)

(assert (=> b!855874 (= e!563334 Nil!9231)))

(declare-fun e!563336 () List!9247)

(declare-fun b!855875 () Bool)

(assert (=> b!855875 (= e!563338 (= (printList!482 thiss!20117 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (t!96470 l!5107)) separatorToken!297) separatorToken!297)) e!563336))))

(declare-fun c!138750 () Bool)

(declare-fun lt!323707 () List!9248)

(assert (=> b!855875 (= c!138750 ((_ is Cons!9232) lt!323707))))

(assert (=> b!855875 (= lt!323707 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (t!96470 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!855876 () Bool)

(assert (=> b!855876 (= e!563336 Nil!9231)))

(declare-fun b!855877 () Bool)

(declare-fun e!563335 () List!9248)

(assert (=> b!855877 (= e!563335 Nil!9232)))

(declare-fun b!855878 () Bool)

(declare-fun res!390709 () Bool)

(assert (=> b!855878 (=> (not res!390709) (not e!563339))))

(declare-fun e!563337 () Bool)

(assert (=> b!855878 (= res!390709 e!563337)))

(declare-fun res!390707 () Bool)

(assert (=> b!855878 (=> res!390707 e!563337)))

(assert (=> b!855878 (= res!390707 (not ((_ is Cons!9232) (t!96470 l!5107))))))

(declare-fun b!855879 () Bool)

(declare-fun lt!323712 () List!9248)

(assert (=> b!855879 (= e!563334 (++!2390 (list!3637 (charsOf!999 (h!14633 lt!323712))) (printList!482 thiss!20117 (t!96470 lt!323712))))))

(declare-fun b!855880 () Bool)

(assert (=> b!855880 (= e!563335 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (t!96470 l!5107)) separatorToken!297) separatorToken!297) (h!14633 (t!96470 l!5107))))))

(declare-fun lt!323709 () List!9247)

(assert (=> b!855880 (= lt!323709 (list!3637 (charsOf!999 (h!14633 (t!96470 l!5107)))))))

(declare-fun lt!323713 () List!9247)

(assert (=> b!855880 (= lt!323713 (list!3637 (charsOf!999 separatorToken!297)))))

(declare-fun lt!323711 () List!9247)

(assert (=> b!855880 (= lt!323711 (printList!482 thiss!20117 (withSeparatorTokenList!64 thiss!20117 (t!96470 (t!96470 l!5107)) separatorToken!297)))))

(declare-fun lt!323708 () Unit!13731)

(assert (=> b!855880 (= lt!323708 (lemmaConcatAssociativity!757 lt!323709 lt!323713 lt!323711))))

(assert (=> b!855880 (= (++!2390 (++!2390 lt!323709 lt!323713) lt!323711) (++!2390 lt!323709 (++!2390 lt!323713 lt!323711)))))

(declare-fun lt!323710 () Unit!13731)

(assert (=> b!855880 (= lt!323710 lt!323708)))

(declare-fun lt!323714 () List!9248)

(declare-fun d!267646 () Bool)

(assert (=> d!267646 (= (printList!482 thiss!20117 lt!323714) (printWithSeparatorTokenList!40 thiss!20117 (t!96470 l!5107) separatorToken!297))))

(assert (=> d!267646 (= lt!323714 e!563335)))

(declare-fun c!138752 () Bool)

(assert (=> d!267646 (= c!138752 ((_ is Cons!9232) (t!96470 l!5107)))))

(assert (=> d!267646 e!563339))

(declare-fun res!390708 () Bool)

(assert (=> d!267646 (=> (not res!390708) (not e!563339))))

(assert (=> d!267646 (= res!390708 (isSeparator!1732 (rule!3155 separatorToken!297)))))

(assert (=> d!267646 (= (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297) lt!323714)))

(declare-fun b!855881 () Bool)

(assert (=> b!855881 (= e!563337 (= (printList!482 thiss!20117 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (t!96470 l!5107)) separatorToken!297) separatorToken!297) (h!14633 (t!96470 l!5107)))) e!563334))))

(declare-fun c!138751 () Bool)

(assert (=> b!855881 (= c!138751 ((_ is Cons!9232) lt!323712))))

(assert (=> b!855881 (= lt!323712 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (t!96470 l!5107)) separatorToken!297) separatorToken!297) (h!14633 (t!96470 l!5107))))))

(declare-fun b!855882 () Bool)

(assert (=> b!855882 (= e!563336 (++!2390 (list!3637 (charsOf!999 (h!14633 lt!323707))) (printList!482 thiss!20117 (t!96470 lt!323707))))))

(assert (= (and d!267646 res!390708) b!855878))

(assert (= (and b!855878 (not res!390707)) b!855881))

(assert (= (and b!855881 c!138751) b!855879))

(assert (= (and b!855881 (not c!138751)) b!855874))

(assert (= (and b!855878 res!390709) b!855873))

(assert (= (and b!855873 (not res!390710)) b!855875))

(assert (= (and b!855875 c!138750) b!855882))

(assert (= (and b!855875 (not c!138750)) b!855876))

(assert (= (and d!267646 c!138752) b!855880))

(assert (= (and d!267646 (not c!138752)) b!855877))

(declare-fun m!1096951 () Bool)

(assert (=> b!855879 m!1096951))

(assert (=> b!855879 m!1096951))

(declare-fun m!1096953 () Bool)

(assert (=> b!855879 m!1096953))

(declare-fun m!1096955 () Bool)

(assert (=> b!855879 m!1096955))

(assert (=> b!855879 m!1096953))

(assert (=> b!855879 m!1096955))

(declare-fun m!1096957 () Bool)

(assert (=> b!855879 m!1096957))

(declare-fun m!1096959 () Bool)

(assert (=> b!855882 m!1096959))

(assert (=> b!855882 m!1096959))

(declare-fun m!1096961 () Bool)

(assert (=> b!855882 m!1096961))

(declare-fun m!1096963 () Bool)

(assert (=> b!855882 m!1096963))

(assert (=> b!855882 m!1096961))

(assert (=> b!855882 m!1096963))

(declare-fun m!1096965 () Bool)

(assert (=> b!855882 m!1096965))

(declare-fun m!1096967 () Bool)

(assert (=> b!855880 m!1096967))

(declare-fun m!1096969 () Bool)

(assert (=> b!855880 m!1096969))

(declare-fun m!1096971 () Bool)

(assert (=> b!855880 m!1096971))

(declare-fun m!1096973 () Bool)

(assert (=> b!855880 m!1096973))

(assert (=> b!855880 m!1096649))

(assert (=> b!855880 m!1096651))

(assert (=> b!855880 m!1096967))

(assert (=> b!855880 m!1096649))

(declare-fun m!1096975 () Bool)

(assert (=> b!855880 m!1096975))

(declare-fun m!1096977 () Bool)

(assert (=> b!855880 m!1096977))

(assert (=> b!855880 m!1096977))

(declare-fun m!1096979 () Bool)

(assert (=> b!855880 m!1096979))

(declare-fun m!1096981 () Bool)

(assert (=> b!855880 m!1096981))

(assert (=> b!855880 m!1096975))

(assert (=> b!855880 m!1096975))

(declare-fun m!1096983 () Bool)

(assert (=> b!855880 m!1096983))

(assert (=> b!855880 m!1096981))

(declare-fun m!1096985 () Bool)

(assert (=> b!855880 m!1096985))

(assert (=> b!855880 m!1096971))

(declare-fun m!1096987 () Bool)

(assert (=> b!855880 m!1096987))

(assert (=> b!855881 m!1096975))

(assert (=> b!855881 m!1096975))

(assert (=> b!855881 m!1096977))

(assert (=> b!855881 m!1096977))

(assert (=> b!855881 m!1096979))

(assert (=> b!855881 m!1096979))

(declare-fun m!1096989 () Bool)

(assert (=> b!855881 m!1096989))

(assert (=> b!855875 m!1096975))

(assert (=> b!855875 m!1096975))

(assert (=> b!855875 m!1096977))

(assert (=> b!855875 m!1096977))

(declare-fun m!1096991 () Bool)

(assert (=> b!855875 m!1096991))

(declare-fun m!1096993 () Bool)

(assert (=> d!267646 m!1096993))

(declare-fun m!1096995 () Bool)

(assert (=> d!267646 m!1096995))

(assert (=> b!855651 d!267646))

(declare-fun b!855883 () Bool)

(declare-fun e!563341 () List!9247)

(assert (=> b!855883 (= e!563341 lt!323661)))

(declare-fun b!855885 () Bool)

(declare-fun res!390712 () Bool)

(declare-fun e!563340 () Bool)

(assert (=> b!855885 (=> (not res!390712) (not e!563340))))

(declare-fun lt!323715 () List!9247)

(assert (=> b!855885 (= res!390712 (= (size!7706 lt!323715) (+ (size!7706 lt!323663) (size!7706 lt!323661))))))

(declare-fun b!855886 () Bool)

(assert (=> b!855886 (= e!563340 (or (not (= lt!323661 Nil!9231)) (= lt!323715 lt!323663)))))

(declare-fun d!267648 () Bool)

(assert (=> d!267648 e!563340))

(declare-fun res!390711 () Bool)

(assert (=> d!267648 (=> (not res!390711) (not e!563340))))

(assert (=> d!267648 (= res!390711 (= (content!1351 lt!323715) ((_ map or) (content!1351 lt!323663) (content!1351 lt!323661))))))

(assert (=> d!267648 (= lt!323715 e!563341)))

(declare-fun c!138753 () Bool)

(assert (=> d!267648 (= c!138753 ((_ is Nil!9231) lt!323663))))

(assert (=> d!267648 (= (++!2390 lt!323663 lt!323661) lt!323715)))

(declare-fun b!855884 () Bool)

(assert (=> b!855884 (= e!563341 (Cons!9231 (h!14632 lt!323663) (++!2390 (t!96469 lt!323663) lt!323661)))))

(assert (= (and d!267648 c!138753) b!855883))

(assert (= (and d!267648 (not c!138753)) b!855884))

(assert (= (and d!267648 res!390711) b!855885))

(assert (= (and b!855885 res!390712) b!855886))

(declare-fun m!1096997 () Bool)

(assert (=> b!855885 m!1096997))

(assert (=> b!855885 m!1096939))

(declare-fun m!1096999 () Bool)

(assert (=> b!855885 m!1096999))

(declare-fun m!1097001 () Bool)

(assert (=> d!267648 m!1097001))

(assert (=> d!267648 m!1096943))

(declare-fun m!1097003 () Bool)

(assert (=> d!267648 m!1097003))

(declare-fun m!1097005 () Bool)

(assert (=> b!855884 m!1097005))

(assert (=> b!855651 d!267648))

(declare-fun b!855887 () Bool)

(declare-fun e!563343 () List!9247)

(assert (=> b!855887 (= e!563343 lt!323661)))

(declare-fun b!855889 () Bool)

(declare-fun res!390714 () Bool)

(declare-fun e!563342 () Bool)

(assert (=> b!855889 (=> (not res!390714) (not e!563342))))

(declare-fun lt!323716 () List!9247)

(assert (=> b!855889 (= res!390714 (= (size!7706 lt!323716) (+ (size!7706 (++!2390 lt!323659 lt!323663)) (size!7706 lt!323661))))))

(declare-fun b!855890 () Bool)

(assert (=> b!855890 (= e!563342 (or (not (= lt!323661 Nil!9231)) (= lt!323716 (++!2390 lt!323659 lt!323663))))))

(declare-fun d!267650 () Bool)

(assert (=> d!267650 e!563342))

(declare-fun res!390713 () Bool)

(assert (=> d!267650 (=> (not res!390713) (not e!563342))))

(assert (=> d!267650 (= res!390713 (= (content!1351 lt!323716) ((_ map or) (content!1351 (++!2390 lt!323659 lt!323663)) (content!1351 lt!323661))))))

(assert (=> d!267650 (= lt!323716 e!563343)))

(declare-fun c!138754 () Bool)

(assert (=> d!267650 (= c!138754 ((_ is Nil!9231) (++!2390 lt!323659 lt!323663)))))

(assert (=> d!267650 (= (++!2390 (++!2390 lt!323659 lt!323663) lt!323661) lt!323716)))

(declare-fun b!855888 () Bool)

(assert (=> b!855888 (= e!563343 (Cons!9231 (h!14632 (++!2390 lt!323659 lt!323663)) (++!2390 (t!96469 (++!2390 lt!323659 lt!323663)) lt!323661)))))

(assert (= (and d!267650 c!138754) b!855887))

(assert (= (and d!267650 (not c!138754)) b!855888))

(assert (= (and d!267650 res!390713) b!855889))

(assert (= (and b!855889 res!390714) b!855890))

(declare-fun m!1097007 () Bool)

(assert (=> b!855889 m!1097007))

(assert (=> b!855889 m!1096659))

(declare-fun m!1097009 () Bool)

(assert (=> b!855889 m!1097009))

(assert (=> b!855889 m!1096999))

(declare-fun m!1097011 () Bool)

(assert (=> d!267650 m!1097011))

(assert (=> d!267650 m!1096659))

(declare-fun m!1097013 () Bool)

(assert (=> d!267650 m!1097013))

(assert (=> d!267650 m!1097003))

(declare-fun m!1097015 () Bool)

(assert (=> b!855888 m!1097015))

(assert (=> b!855651 d!267650))

(declare-fun d!267652 () Bool)

(declare-fun c!138755 () Bool)

(assert (=> d!267652 (= c!138755 ((_ is Cons!9232) lt!323681))))

(declare-fun e!563344 () List!9247)

(assert (=> d!267652 (= (printList!482 thiss!20117 lt!323681) e!563344)))

(declare-fun b!855891 () Bool)

(assert (=> b!855891 (= e!563344 (++!2390 (list!3637 (charsOf!999 (h!14633 lt!323681))) (printList!482 thiss!20117 (t!96470 lt!323681))))))

(declare-fun b!855892 () Bool)

(assert (=> b!855892 (= e!563344 Nil!9231)))

(assert (= (and d!267652 c!138755) b!855891))

(assert (= (and d!267652 (not c!138755)) b!855892))

(declare-fun m!1097017 () Bool)

(assert (=> b!855891 m!1097017))

(assert (=> b!855891 m!1097017))

(declare-fun m!1097019 () Bool)

(assert (=> b!855891 m!1097019))

(declare-fun m!1097021 () Bool)

(assert (=> b!855891 m!1097021))

(assert (=> b!855891 m!1097019))

(assert (=> b!855891 m!1097021))

(declare-fun m!1097023 () Bool)

(assert (=> b!855891 m!1097023))

(assert (=> d!267592 d!267652))

(declare-fun d!267654 () Bool)

(declare-fun c!138758 () Bool)

(assert (=> d!267654 (= c!138758 ((_ is Cons!9232) (tail!1044 l!5107)))))

(declare-fun e!563347 () List!9247)

(assert (=> d!267654 (= (printWithSeparatorTokenList!40 thiss!20117 (tail!1044 l!5107) separatorToken!297) e!563347)))

(declare-fun b!855897 () Bool)

(assert (=> b!855897 (= e!563347 (++!2390 (++!2390 (list!3637 (charsOf!999 (h!14633 (tail!1044 l!5107)))) (list!3637 (charsOf!999 separatorToken!297))) (printWithSeparatorTokenList!40 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297)))))

(declare-fun b!855898 () Bool)

(assert (=> b!855898 (= e!563347 Nil!9231)))

(assert (= (and d!267654 c!138758) b!855897))

(assert (= (and d!267654 (not c!138758)) b!855898))

(assert (=> b!855897 m!1096783))

(assert (=> b!855897 m!1096785))

(assert (=> b!855897 m!1096649))

(assert (=> b!855897 m!1096651))

(declare-fun m!1097025 () Bool)

(assert (=> b!855897 m!1097025))

(declare-fun m!1097027 () Bool)

(assert (=> b!855897 m!1097027))

(declare-fun m!1097029 () Bool)

(assert (=> b!855897 m!1097029))

(assert (=> b!855897 m!1096649))

(assert (=> b!855897 m!1097027))

(assert (=> b!855897 m!1096783))

(assert (=> b!855897 m!1096785))

(assert (=> b!855897 m!1096651))

(assert (=> b!855897 m!1097025))

(assert (=> d!267592 d!267654))

(declare-fun d!267656 () Bool)

(declare-fun res!390715 () Bool)

(declare-fun e!563348 () Bool)

(assert (=> d!267656 (=> res!390715 e!563348)))

(assert (=> d!267656 (= res!390715 ((_ is Nil!9232) (t!96470 l!5107)))))

(assert (=> d!267656 (= (forall!2189 (t!96470 l!5107) lambda!25644) e!563348)))

(declare-fun b!855899 () Bool)

(declare-fun e!563349 () Bool)

(assert (=> b!855899 (= e!563348 e!563349)))

(declare-fun res!390716 () Bool)

(assert (=> b!855899 (=> (not res!390716) (not e!563349))))

(assert (=> b!855899 (= res!390716 (dynLambda!4336 lambda!25644 (h!14633 (t!96470 l!5107))))))

(declare-fun b!855900 () Bool)

(assert (=> b!855900 (= e!563349 (forall!2189 (t!96470 (t!96470 l!5107)) lambda!25644))))

(assert (= (and d!267656 (not res!390715)) b!855899))

(assert (= (and b!855899 res!390716) b!855900))

(declare-fun b_lambda!28751 () Bool)

(assert (=> (not b_lambda!28751) (not b!855899)))

(declare-fun m!1097031 () Bool)

(assert (=> b!855899 m!1097031))

(declare-fun m!1097033 () Bool)

(assert (=> b!855900 m!1097033))

(assert (=> b!855743 d!267656))

(declare-fun d!267658 () Bool)

(declare-fun charsToInt!0 (List!9246) (_ BitVec 32))

(assert (=> d!267658 (= (inv!16 (value!56061 separatorToken!297)) (= (charsToInt!0 (text!13033 (value!56061 separatorToken!297))) (value!56052 (value!56061 separatorToken!297))))))

(declare-fun bs!231797 () Bool)

(assert (= bs!231797 d!267658))

(declare-fun m!1097035 () Bool)

(assert (=> bs!231797 m!1097035))

(assert (=> b!855505 d!267658))

(declare-fun d!267660 () Bool)

(declare-fun c!138759 () Bool)

(assert (=> d!267660 (= c!138759 ((_ is Cons!9232) lt!323664))))

(declare-fun e!563350 () List!9247)

(assert (=> d!267660 (= (printList!482 thiss!20117 lt!323664) e!563350)))

(declare-fun b!855901 () Bool)

(assert (=> b!855901 (= e!563350 (++!2390 (list!3637 (charsOf!999 (h!14633 lt!323664))) (printList!482 thiss!20117 (t!96470 lt!323664))))))

(declare-fun b!855902 () Bool)

(assert (=> b!855902 (= e!563350 Nil!9231)))

(assert (= (and d!267660 c!138759) b!855901))

(assert (= (and d!267660 (not c!138759)) b!855902))

(declare-fun m!1097037 () Bool)

(assert (=> b!855901 m!1097037))

(assert (=> b!855901 m!1097037))

(declare-fun m!1097039 () Bool)

(assert (=> b!855901 m!1097039))

(declare-fun m!1097041 () Bool)

(assert (=> b!855901 m!1097041))

(assert (=> b!855901 m!1097039))

(assert (=> b!855901 m!1097041))

(declare-fun m!1097043 () Bool)

(assert (=> b!855901 m!1097043))

(assert (=> d!267554 d!267660))

(declare-fun d!267662 () Bool)

(declare-fun c!138760 () Bool)

(assert (=> d!267662 (= c!138760 ((_ is Cons!9232) l!5107))))

(declare-fun e!563351 () List!9247)

(assert (=> d!267662 (= (printWithSeparatorTokenList!40 thiss!20117 l!5107 separatorToken!297) e!563351)))

(declare-fun b!855903 () Bool)

(assert (=> b!855903 (= e!563351 (++!2390 (++!2390 (list!3637 (charsOf!999 (h!14633 l!5107))) (list!3637 (charsOf!999 separatorToken!297))) (printWithSeparatorTokenList!40 thiss!20117 (t!96470 l!5107) separatorToken!297)))))

(declare-fun b!855904 () Bool)

(assert (=> b!855904 (= e!563351 Nil!9231)))

(assert (= (and d!267662 c!138760) b!855903))

(assert (= (and d!267662 (not c!138760)) b!855904))

(assert (=> b!855903 m!1096641))

(assert (=> b!855903 m!1096643))

(assert (=> b!855903 m!1096649))

(assert (=> b!855903 m!1096651))

(declare-fun m!1097045 () Bool)

(assert (=> b!855903 m!1097045))

(assert (=> b!855903 m!1096995))

(declare-fun m!1097047 () Bool)

(assert (=> b!855903 m!1097047))

(assert (=> b!855903 m!1096649))

(assert (=> b!855903 m!1096995))

(assert (=> b!855903 m!1096641))

(assert (=> b!855903 m!1096643))

(assert (=> b!855903 m!1096651))

(assert (=> b!855903 m!1097045))

(assert (=> d!267554 d!267662))

(declare-fun d!267664 () Bool)

(declare-fun lt!323718 () Bool)

(declare-fun e!563353 () Bool)

(assert (=> d!267664 (= lt!323718 e!563353)))

(declare-fun res!390719 () Bool)

(assert (=> d!267664 (=> (not res!390719) (not e!563353))))

(assert (=> d!267664 (= res!390719 (= (list!3638 (_1!6032 (lex!626 thiss!20117 rules!2621 (print!563 thiss!20117 (singletonSeq!549 (h!14633 lt!323596)))))) (list!3638 (singletonSeq!549 (h!14633 lt!323596)))))))

(declare-fun e!563352 () Bool)

(assert (=> d!267664 (= lt!323718 e!563352)))

(declare-fun res!390717 () Bool)

(assert (=> d!267664 (=> (not res!390717) (not e!563352))))

(declare-fun lt!323717 () tuple2!10412)

(assert (=> d!267664 (= res!390717 (= (size!7707 (_1!6032 lt!323717)) 1))))

(assert (=> d!267664 (= lt!323717 (lex!626 thiss!20117 rules!2621 (print!563 thiss!20117 (singletonSeq!549 (h!14633 lt!323596)))))))

(assert (=> d!267664 (not (isEmpty!5469 rules!2621))))

(assert (=> d!267664 (= (rulesProduceIndividualToken!598 thiss!20117 rules!2621 (h!14633 lt!323596)) lt!323718)))

(declare-fun b!855905 () Bool)

(declare-fun res!390718 () Bool)

(assert (=> b!855905 (=> (not res!390718) (not e!563352))))

(assert (=> b!855905 (= res!390718 (= (apply!1915 (_1!6032 lt!323717) 0) (h!14633 lt!323596)))))

(declare-fun b!855906 () Bool)

(assert (=> b!855906 (= e!563352 (isEmpty!5473 (_2!6032 lt!323717)))))

(declare-fun b!855907 () Bool)

(assert (=> b!855907 (= e!563353 (isEmpty!5473 (_2!6032 (lex!626 thiss!20117 rules!2621 (print!563 thiss!20117 (singletonSeq!549 (h!14633 lt!323596)))))))))

(assert (= (and d!267664 res!390717) b!855905))

(assert (= (and b!855905 res!390718) b!855906))

(assert (= (and d!267664 res!390719) b!855907))

(assert (=> d!267664 m!1096427))

(declare-fun m!1097049 () Bool)

(assert (=> d!267664 m!1097049))

(declare-fun m!1097051 () Bool)

(assert (=> d!267664 m!1097051))

(assert (=> d!267664 m!1097049))

(declare-fun m!1097053 () Bool)

(assert (=> d!267664 m!1097053))

(assert (=> d!267664 m!1097049))

(declare-fun m!1097055 () Bool)

(assert (=> d!267664 m!1097055))

(declare-fun m!1097057 () Bool)

(assert (=> d!267664 m!1097057))

(assert (=> d!267664 m!1097051))

(declare-fun m!1097059 () Bool)

(assert (=> d!267664 m!1097059))

(declare-fun m!1097061 () Bool)

(assert (=> b!855905 m!1097061))

(declare-fun m!1097063 () Bool)

(assert (=> b!855906 m!1097063))

(assert (=> b!855907 m!1097049))

(assert (=> b!855907 m!1097049))

(assert (=> b!855907 m!1097051))

(assert (=> b!855907 m!1097051))

(assert (=> b!855907 m!1097059))

(declare-fun m!1097065 () Bool)

(assert (=> b!855907 m!1097065))

(assert (=> b!855619 d!267664))

(declare-fun b!855908 () Bool)

(declare-fun e!563355 () List!9247)

(assert (=> b!855908 (= e!563355 (printList!482 thiss!20117 (t!96470 lt!323657)))))

(declare-fun b!855910 () Bool)

(declare-fun res!390721 () Bool)

(declare-fun e!563354 () Bool)

(assert (=> b!855910 (=> (not res!390721) (not e!563354))))

(declare-fun lt!323719 () List!9247)

(assert (=> b!855910 (= res!390721 (= (size!7706 lt!323719) (+ (size!7706 (list!3637 (charsOf!999 (h!14633 lt!323657)))) (size!7706 (printList!482 thiss!20117 (t!96470 lt!323657))))))))

(declare-fun b!855911 () Bool)

(assert (=> b!855911 (= e!563354 (or (not (= (printList!482 thiss!20117 (t!96470 lt!323657)) Nil!9231)) (= lt!323719 (list!3637 (charsOf!999 (h!14633 lt!323657))))))))

(declare-fun d!267666 () Bool)

(assert (=> d!267666 e!563354))

(declare-fun res!390720 () Bool)

(assert (=> d!267666 (=> (not res!390720) (not e!563354))))

(assert (=> d!267666 (= res!390720 (= (content!1351 lt!323719) ((_ map or) (content!1351 (list!3637 (charsOf!999 (h!14633 lt!323657)))) (content!1351 (printList!482 thiss!20117 (t!96470 lt!323657))))))))

(assert (=> d!267666 (= lt!323719 e!563355)))

(declare-fun c!138761 () Bool)

(assert (=> d!267666 (= c!138761 ((_ is Nil!9231) (list!3637 (charsOf!999 (h!14633 lt!323657)))))))

(assert (=> d!267666 (= (++!2390 (list!3637 (charsOf!999 (h!14633 lt!323657))) (printList!482 thiss!20117 (t!96470 lt!323657))) lt!323719)))

(declare-fun b!855909 () Bool)

(assert (=> b!855909 (= e!563355 (Cons!9231 (h!14632 (list!3637 (charsOf!999 (h!14633 lt!323657)))) (++!2390 (t!96469 (list!3637 (charsOf!999 (h!14633 lt!323657)))) (printList!482 thiss!20117 (t!96470 lt!323657)))))))

(assert (= (and d!267666 c!138761) b!855908))

(assert (= (and d!267666 (not c!138761)) b!855909))

(assert (= (and d!267666 res!390720) b!855910))

(assert (= (and b!855910 res!390721) b!855911))

(declare-fun m!1097067 () Bool)

(assert (=> b!855910 m!1097067))

(assert (=> b!855910 m!1096635))

(declare-fun m!1097069 () Bool)

(assert (=> b!855910 m!1097069))

(assert (=> b!855910 m!1096637))

(declare-fun m!1097071 () Bool)

(assert (=> b!855910 m!1097071))

(declare-fun m!1097073 () Bool)

(assert (=> d!267666 m!1097073))

(assert (=> d!267666 m!1096635))

(declare-fun m!1097075 () Bool)

(assert (=> d!267666 m!1097075))

(assert (=> d!267666 m!1096637))

(declare-fun m!1097077 () Bool)

(assert (=> d!267666 m!1097077))

(assert (=> b!855909 m!1096637))

(declare-fun m!1097079 () Bool)

(assert (=> b!855909 m!1097079))

(assert (=> b!855653 d!267666))

(declare-fun d!267668 () Bool)

(assert (=> d!267668 (= (list!3637 (charsOf!999 (h!14633 lt!323657))) (list!3640 (c!138700 (charsOf!999 (h!14633 lt!323657)))))))

(declare-fun bs!231798 () Bool)

(assert (= bs!231798 d!267668))

(declare-fun m!1097081 () Bool)

(assert (=> bs!231798 m!1097081))

(assert (=> b!855653 d!267668))

(declare-fun d!267670 () Bool)

(declare-fun lt!323720 () BalanceConc!6132)

(assert (=> d!267670 (= (list!3637 lt!323720) (originalCharacters!2288 (h!14633 lt!323657)))))

(assert (=> d!267670 (= lt!323720 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323657)))) (value!56061 (h!14633 lt!323657))))))

(assert (=> d!267670 (= (charsOf!999 (h!14633 lt!323657)) lt!323720)))

(declare-fun b_lambda!28753 () Bool)

(assert (=> (not b_lambda!28753) (not d!267670)))

(declare-fun t!96522 () Bool)

(declare-fun tb!60573 () Bool)

(assert (=> (and b!855473 (= (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323657))))) t!96522) tb!60573))

(declare-fun b!855912 () Bool)

(declare-fun e!563356 () Bool)

(declare-fun tp!269921 () Bool)

(assert (=> b!855912 (= e!563356 (and (inv!11746 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323657)))) (value!56061 (h!14633 lt!323657))))) tp!269921))))

(declare-fun result!70150 () Bool)

(assert (=> tb!60573 (= result!70150 (and (inv!11747 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323657)))) (value!56061 (h!14633 lt!323657)))) e!563356))))

(assert (= tb!60573 b!855912))

(declare-fun m!1097083 () Bool)

(assert (=> b!855912 m!1097083))

(declare-fun m!1097085 () Bool)

(assert (=> tb!60573 m!1097085))

(assert (=> d!267670 t!96522))

(declare-fun b_and!75617 () Bool)

(assert (= b_and!75607 (and (=> t!96522 result!70150) b_and!75617)))

(declare-fun tb!60575 () Bool)

(declare-fun t!96524 () Bool)

(assert (=> (and b!855459 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323657))))) t!96524) tb!60575))

(declare-fun result!70152 () Bool)

(assert (= result!70152 result!70150))

(assert (=> d!267670 t!96524))

(declare-fun b_and!75619 () Bool)

(assert (= b_and!75611 (and (=> t!96524 result!70152) b_and!75619)))

(declare-fun t!96526 () Bool)

(declare-fun tb!60577 () Bool)

(assert (=> (and b!855462 (= (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323657))))) t!96526) tb!60577))

(declare-fun result!70154 () Bool)

(assert (= result!70154 result!70150))

(assert (=> d!267670 t!96526))

(declare-fun b_and!75621 () Bool)

(assert (= b_and!75609 (and (=> t!96526 result!70154) b_and!75621)))

(declare-fun t!96528 () Bool)

(declare-fun tb!60579 () Bool)

(assert (=> (and b!855824 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323657))))) t!96528) tb!60579))

(declare-fun result!70156 () Bool)

(assert (= result!70156 result!70150))

(assert (=> d!267670 t!96528))

(declare-fun b_and!75623 () Bool)

(assert (= b_and!75613 (and (=> t!96528 result!70156) b_and!75623)))

(declare-fun tb!60581 () Bool)

(declare-fun t!96530 () Bool)

(assert (=> (and b!855835 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 rules!2621)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323657))))) t!96530) tb!60581))

(declare-fun result!70158 () Bool)

(assert (= result!70158 result!70150))

(assert (=> d!267670 t!96530))

(declare-fun b_and!75625 () Bool)

(assert (= b_and!75615 (and (=> t!96530 result!70158) b_and!75625)))

(declare-fun m!1097087 () Bool)

(assert (=> d!267670 m!1097087))

(declare-fun m!1097089 () Bool)

(assert (=> d!267670 m!1097089))

(assert (=> b!855653 d!267670))

(declare-fun d!267672 () Bool)

(declare-fun c!138762 () Bool)

(assert (=> d!267672 (= c!138762 ((_ is Cons!9232) (t!96470 lt!323657)))))

(declare-fun e!563357 () List!9247)

(assert (=> d!267672 (= (printList!482 thiss!20117 (t!96470 lt!323657)) e!563357)))

(declare-fun b!855913 () Bool)

(assert (=> b!855913 (= e!563357 (++!2390 (list!3637 (charsOf!999 (h!14633 (t!96470 lt!323657)))) (printList!482 thiss!20117 (t!96470 (t!96470 lt!323657)))))))

(declare-fun b!855914 () Bool)

(assert (=> b!855914 (= e!563357 Nil!9231)))

(assert (= (and d!267672 c!138762) b!855913))

(assert (= (and d!267672 (not c!138762)) b!855914))

(declare-fun m!1097091 () Bool)

(assert (=> b!855913 m!1097091))

(assert (=> b!855913 m!1097091))

(declare-fun m!1097093 () Bool)

(assert (=> b!855913 m!1097093))

(declare-fun m!1097095 () Bool)

(assert (=> b!855913 m!1097095))

(assert (=> b!855913 m!1097093))

(assert (=> b!855913 m!1097095))

(declare-fun m!1097097 () Bool)

(assert (=> b!855913 m!1097097))

(assert (=> b!855653 d!267672))

(declare-fun d!267674 () Bool)

(declare-fun c!138765 () Bool)

(assert (=> d!267674 (= c!138765 ((_ is Node!3059) (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107))))))))

(declare-fun e!563362 () Bool)

(assert (=> d!267674 (= (inv!11746 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107))))) e!563362)))

(declare-fun b!855921 () Bool)

(declare-fun inv!11748 (Conc!3059) Bool)

(assert (=> b!855921 (= e!563362 (inv!11748 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107))))))))

(declare-fun b!855922 () Bool)

(declare-fun e!563363 () Bool)

(assert (=> b!855922 (= e!563362 e!563363)))

(declare-fun res!390724 () Bool)

(assert (=> b!855922 (= res!390724 (not ((_ is Leaf!4513) (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107)))))))))

(assert (=> b!855922 (=> res!390724 e!563363)))

(declare-fun b!855923 () Bool)

(declare-fun inv!11749 (Conc!3059) Bool)

(assert (=> b!855923 (= e!563363 (inv!11749 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107))))))))

(assert (= (and d!267674 c!138765) b!855921))

(assert (= (and d!267674 (not c!138765)) b!855922))

(assert (= (and b!855922 (not res!390724)) b!855923))

(declare-fun m!1097099 () Bool)

(assert (=> b!855921 m!1097099))

(declare-fun m!1097101 () Bool)

(assert (=> b!855923 m!1097101))

(assert (=> b!855757 d!267674))

(declare-fun d!267676 () Bool)

(assert (=> d!267676 (= (inv!16 (value!56061 (h!14633 l!5107))) (= (charsToInt!0 (text!13033 (value!56061 (h!14633 l!5107)))) (value!56052 (value!56061 (h!14633 l!5107)))))))

(declare-fun bs!231799 () Bool)

(assert (= bs!231799 d!267676))

(declare-fun m!1097103 () Bool)

(assert (=> bs!231799 m!1097103))

(assert (=> b!855770 d!267676))

(declare-fun d!267678 () Bool)

(assert (=> d!267678 true))

(declare-fun order!5969 () Int)

(declare-fun lambda!25656 () Int)

(declare-fun dynLambda!4340 (Int Int) Int)

(assert (=> d!267678 (< (dynLambda!4333 order!5963 (toValue!2785 (transformation!1732 (rule!3155 separatorToken!297)))) (dynLambda!4340 order!5969 lambda!25656))))

(declare-fun Forall2!329 (Int) Bool)

(assert (=> d!267678 (= (equivClasses!644 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (toValue!2785 (transformation!1732 (rule!3155 separatorToken!297)))) (Forall2!329 lambda!25656))))

(declare-fun bs!231800 () Bool)

(assert (= bs!231800 d!267678))

(declare-fun m!1097105 () Bool)

(assert (=> bs!231800 m!1097105))

(assert (=> b!855758 d!267678))

(declare-fun d!267680 () Bool)

(declare-fun res!390727 () Bool)

(declare-fun e!563366 () Bool)

(assert (=> d!267680 (=> res!390727 e!563366)))

(assert (=> d!267680 (= res!390727 ((_ is Nil!9232) lt!323596))))

(assert (=> d!267680 (= (forall!2189 lt!323596 lambda!25652) e!563366)))

(declare-fun b!855928 () Bool)

(declare-fun e!563367 () Bool)

(assert (=> b!855928 (= e!563366 e!563367)))

(declare-fun res!390728 () Bool)

(assert (=> b!855928 (=> (not res!390728) (not e!563367))))

(assert (=> b!855928 (= res!390728 (dynLambda!4336 lambda!25652 (h!14633 lt!323596)))))

(declare-fun b!855929 () Bool)

(assert (=> b!855929 (= e!563367 (forall!2189 (t!96470 lt!323596) lambda!25652))))

(assert (= (and d!267680 (not res!390727)) b!855928))

(assert (= (and b!855928 res!390728) b!855929))

(declare-fun b_lambda!28755 () Bool)

(assert (=> (not b_lambda!28755) (not b!855928)))

(declare-fun m!1097107 () Bool)

(assert (=> b!855928 m!1097107))

(declare-fun m!1097109 () Bool)

(assert (=> b!855929 m!1097109))

(assert (=> d!267550 d!267680))

(assert (=> d!267550 d!267596))

(declare-fun d!267682 () Bool)

(assert (=> d!267682 (= (isEmpty!5472 (originalCharacters!2288 separatorToken!297)) ((_ is Nil!9231) (originalCharacters!2288 separatorToken!297)))))

(assert (=> d!267582 d!267682))

(declare-fun bs!231801 () Bool)

(declare-fun d!267684 () Bool)

(assert (= bs!231801 (and d!267684 b!855470)))

(declare-fun lambda!25657 () Int)

(assert (=> bs!231801 (not (= lambda!25657 lambda!25644))))

(declare-fun bs!231802 () Bool)

(assert (= bs!231802 (and d!267684 d!267528)))

(assert (=> bs!231802 (= lambda!25657 lambda!25651)))

(declare-fun bs!231803 () Bool)

(assert (= bs!231803 (and d!267684 d!267550)))

(assert (=> bs!231803 (= lambda!25657 lambda!25652)))

(declare-fun b!855934 () Bool)

(declare-fun e!563372 () Bool)

(assert (=> b!855934 (= e!563372 true)))

(declare-fun b!855933 () Bool)

(declare-fun e!563371 () Bool)

(assert (=> b!855933 (= e!563371 e!563372)))

(declare-fun b!855932 () Bool)

(declare-fun e!563370 () Bool)

(assert (=> b!855932 (= e!563370 e!563371)))

(assert (=> d!267684 e!563370))

(assert (= b!855933 b!855934))

(assert (= b!855932 b!855933))

(assert (= (and d!267684 ((_ is Cons!9233) rules!2621)) b!855932))

(assert (=> b!855934 (< (dynLambda!4333 order!5963 (toValue!2785 (transformation!1732 (h!14634 rules!2621)))) (dynLambda!4334 order!5965 lambda!25657))))

(assert (=> b!855934 (< (dynLambda!4335 order!5967 (toChars!2644 (transformation!1732 (h!14634 rules!2621)))) (dynLambda!4334 order!5965 lambda!25657))))

(assert (=> d!267684 true))

(declare-fun lt!323721 () Bool)

(assert (=> d!267684 (= lt!323721 (forall!2189 (withSeparatorTokenList!64 thiss!20117 l!5107 separatorToken!297) lambda!25657))))

(declare-fun e!563368 () Bool)

(assert (=> d!267684 (= lt!323721 e!563368)))

(declare-fun res!390729 () Bool)

(assert (=> d!267684 (=> res!390729 e!563368)))

(assert (=> d!267684 (= res!390729 (not ((_ is Cons!9232) (withSeparatorTokenList!64 thiss!20117 l!5107 separatorToken!297))))))

(assert (=> d!267684 (not (isEmpty!5469 rules!2621))))

(assert (=> d!267684 (= (rulesProduceEachTokenIndividuallyList!422 thiss!20117 rules!2621 (withSeparatorTokenList!64 thiss!20117 l!5107 separatorToken!297)) lt!323721)))

(declare-fun b!855930 () Bool)

(declare-fun e!563369 () Bool)

(assert (=> b!855930 (= e!563368 e!563369)))

(declare-fun res!390730 () Bool)

(assert (=> b!855930 (=> (not res!390730) (not e!563369))))

(assert (=> b!855930 (= res!390730 (rulesProduceIndividualToken!598 thiss!20117 rules!2621 (h!14633 (withSeparatorTokenList!64 thiss!20117 l!5107 separatorToken!297))))))

(declare-fun b!855931 () Bool)

(assert (=> b!855931 (= e!563369 (rulesProduceEachTokenIndividuallyList!422 thiss!20117 rules!2621 (t!96470 (withSeparatorTokenList!64 thiss!20117 l!5107 separatorToken!297))))))

(assert (= (and d!267684 (not res!390729)) b!855930))

(assert (= (and b!855930 res!390730) b!855931))

(assert (=> d!267684 m!1096411))

(declare-fun m!1097111 () Bool)

(assert (=> d!267684 m!1097111))

(assert (=> d!267684 m!1096427))

(declare-fun m!1097113 () Bool)

(assert (=> b!855930 m!1097113))

(declare-fun m!1097115 () Bool)

(assert (=> b!855931 m!1097115))

(assert (=> d!267556 d!267684))

(assert (=> d!267556 d!267554))

(declare-fun d!267686 () Bool)

(assert (=> d!267686 (rulesProduceEachTokenIndividuallyList!422 thiss!20117 rules!2621 (withSeparatorTokenList!64 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!267686 true))

(declare-fun _$32!354 () Unit!13731)

(assert (=> d!267686 (= (choose!5044 thiss!20117 rules!2621 l!5107 separatorToken!297) _$32!354)))

(declare-fun bs!231819 () Bool)

(assert (= bs!231819 d!267686))

(assert (=> bs!231819 m!1096411))

(assert (=> bs!231819 m!1096411))

(assert (=> bs!231819 m!1096727))

(assert (=> d!267556 d!267686))

(assert (=> d!267556 d!267596))

(declare-fun d!267760 () Bool)

(declare-fun c!138790 () Bool)

(assert (=> d!267760 (= c!138790 ((_ is Node!3059) (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297)))))))

(declare-fun e!563423 () Bool)

(assert (=> d!267760 (= (inv!11746 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297)))) e!563423)))

(declare-fun b!856024 () Bool)

(assert (=> b!856024 (= e!563423 (inv!11748 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297)))))))

(declare-fun b!856025 () Bool)

(declare-fun e!563424 () Bool)

(assert (=> b!856025 (= e!563423 e!563424)))

(declare-fun res!390764 () Bool)

(assert (=> b!856025 (= res!390764 (not ((_ is Leaf!4513) (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297))))))))

(assert (=> b!856025 (=> res!390764 e!563424)))

(declare-fun b!856026 () Bool)

(assert (=> b!856026 (= e!563424 (inv!11749 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297)))))))

(assert (= (and d!267760 c!138790) b!856024))

(assert (= (and d!267760 (not c!138790)) b!856025))

(assert (= (and b!856025 (not res!390764)) b!856026))

(declare-fun m!1097357 () Bool)

(assert (=> b!856024 m!1097357))

(declare-fun m!1097359 () Bool)

(assert (=> b!856026 m!1097359))

(assert (=> b!855754 d!267760))

(declare-fun b!856027 () Bool)

(declare-fun e!563426 () List!9247)

(assert (=> b!856027 (= e!563426 (printList!482 thiss!20117 (t!96470 lt!323674)))))

(declare-fun b!856029 () Bool)

(declare-fun res!390766 () Bool)

(declare-fun e!563425 () Bool)

(assert (=> b!856029 (=> (not res!390766) (not e!563425))))

(declare-fun lt!323757 () List!9247)

(assert (=> b!856029 (= res!390766 (= (size!7706 lt!323757) (+ (size!7706 (list!3637 (charsOf!999 (h!14633 lt!323674)))) (size!7706 (printList!482 thiss!20117 (t!96470 lt!323674))))))))

(declare-fun b!856030 () Bool)

(assert (=> b!856030 (= e!563425 (or (not (= (printList!482 thiss!20117 (t!96470 lt!323674)) Nil!9231)) (= lt!323757 (list!3637 (charsOf!999 (h!14633 lt!323674))))))))

(declare-fun d!267762 () Bool)

(assert (=> d!267762 e!563425))

(declare-fun res!390765 () Bool)

(assert (=> d!267762 (=> (not res!390765) (not e!563425))))

(assert (=> d!267762 (= res!390765 (= (content!1351 lt!323757) ((_ map or) (content!1351 (list!3637 (charsOf!999 (h!14633 lt!323674)))) (content!1351 (printList!482 thiss!20117 (t!96470 lt!323674))))))))

(assert (=> d!267762 (= lt!323757 e!563426)))

(declare-fun c!138791 () Bool)

(assert (=> d!267762 (= c!138791 ((_ is Nil!9231) (list!3637 (charsOf!999 (h!14633 lt!323674)))))))

(assert (=> d!267762 (= (++!2390 (list!3637 (charsOf!999 (h!14633 lt!323674))) (printList!482 thiss!20117 (t!96470 lt!323674))) lt!323757)))

(declare-fun b!856028 () Bool)

(assert (=> b!856028 (= e!563426 (Cons!9231 (h!14632 (list!3637 (charsOf!999 (h!14633 lt!323674)))) (++!2390 (t!96469 (list!3637 (charsOf!999 (h!14633 lt!323674)))) (printList!482 thiss!20117 (t!96470 lt!323674)))))))

(assert (= (and d!267762 c!138791) b!856027))

(assert (= (and d!267762 (not c!138791)) b!856028))

(assert (= (and d!267762 res!390765) b!856029))

(assert (= (and b!856029 res!390766) b!856030))

(declare-fun m!1097361 () Bool)

(assert (=> b!856029 m!1097361))

(assert (=> b!856029 m!1096777))

(declare-fun m!1097363 () Bool)

(assert (=> b!856029 m!1097363))

(assert (=> b!856029 m!1096779))

(declare-fun m!1097365 () Bool)

(assert (=> b!856029 m!1097365))

(declare-fun m!1097367 () Bool)

(assert (=> d!267762 m!1097367))

(assert (=> d!267762 m!1096777))

(declare-fun m!1097369 () Bool)

(assert (=> d!267762 m!1097369))

(assert (=> d!267762 m!1096779))

(declare-fun m!1097371 () Bool)

(assert (=> d!267762 m!1097371))

(assert (=> b!856028 m!1096779))

(declare-fun m!1097373 () Bool)

(assert (=> b!856028 m!1097373))

(assert (=> b!855768 d!267762))

(declare-fun d!267764 () Bool)

(assert (=> d!267764 (= (list!3637 (charsOf!999 (h!14633 lt!323674))) (list!3640 (c!138700 (charsOf!999 (h!14633 lt!323674)))))))

(declare-fun bs!231820 () Bool)

(assert (= bs!231820 d!267764))

(declare-fun m!1097375 () Bool)

(assert (=> bs!231820 m!1097375))

(assert (=> b!855768 d!267764))

(declare-fun d!267766 () Bool)

(declare-fun lt!323758 () BalanceConc!6132)

(assert (=> d!267766 (= (list!3637 lt!323758) (originalCharacters!2288 (h!14633 lt!323674)))))

(assert (=> d!267766 (= lt!323758 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323674)))) (value!56061 (h!14633 lt!323674))))))

(assert (=> d!267766 (= (charsOf!999 (h!14633 lt!323674)) lt!323758)))

(declare-fun b_lambda!28765 () Bool)

(assert (=> (not b_lambda!28765) (not d!267766)))

(declare-fun t!96553 () Bool)

(declare-fun tb!60603 () Bool)

(assert (=> (and b!855462 (= (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323674))))) t!96553) tb!60603))

(declare-fun b!856031 () Bool)

(declare-fun e!563427 () Bool)

(declare-fun tp!269924 () Bool)

(assert (=> b!856031 (= e!563427 (and (inv!11746 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323674)))) (value!56061 (h!14633 lt!323674))))) tp!269924))))

(declare-fun result!70180 () Bool)

(assert (=> tb!60603 (= result!70180 (and (inv!11747 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323674)))) (value!56061 (h!14633 lt!323674)))) e!563427))))

(assert (= tb!60603 b!856031))

(declare-fun m!1097377 () Bool)

(assert (=> b!856031 m!1097377))

(declare-fun m!1097379 () Bool)

(assert (=> tb!60603 m!1097379))

(assert (=> d!267766 t!96553))

(declare-fun b_and!75657 () Bool)

(assert (= b_and!75621 (and (=> t!96553 result!70180) b_and!75657)))

(declare-fun tb!60605 () Bool)

(declare-fun t!96555 () Bool)

(assert (=> (and b!855459 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323674))))) t!96555) tb!60605))

(declare-fun result!70182 () Bool)

(assert (= result!70182 result!70180))

(assert (=> d!267766 t!96555))

(declare-fun b_and!75659 () Bool)

(assert (= b_and!75619 (and (=> t!96555 result!70182) b_and!75659)))

(declare-fun tb!60607 () Bool)

(declare-fun t!96557 () Bool)

(assert (=> (and b!855835 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 rules!2621)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323674))))) t!96557) tb!60607))

(declare-fun result!70184 () Bool)

(assert (= result!70184 result!70180))

(assert (=> d!267766 t!96557))

(declare-fun b_and!75661 () Bool)

(assert (= b_and!75625 (and (=> t!96557 result!70184) b_and!75661)))

(declare-fun tb!60609 () Bool)

(declare-fun t!96559 () Bool)

(assert (=> (and b!855473 (= (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323674))))) t!96559) tb!60609))

(declare-fun result!70186 () Bool)

(assert (= result!70186 result!70180))

(assert (=> d!267766 t!96559))

(declare-fun b_and!75663 () Bool)

(assert (= b_and!75617 (and (=> t!96559 result!70186) b_and!75663)))

(declare-fun t!96561 () Bool)

(declare-fun tb!60611 () Bool)

(assert (=> (and b!855824 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323674))))) t!96561) tb!60611))

(declare-fun result!70188 () Bool)

(assert (= result!70188 result!70180))

(assert (=> d!267766 t!96561))

(declare-fun b_and!75665 () Bool)

(assert (= b_and!75623 (and (=> t!96561 result!70188) b_and!75665)))

(declare-fun m!1097381 () Bool)

(assert (=> d!267766 m!1097381))

(declare-fun m!1097383 () Bool)

(assert (=> d!267766 m!1097383))

(assert (=> b!855768 d!267766))

(declare-fun d!267768 () Bool)

(declare-fun c!138792 () Bool)

(assert (=> d!267768 (= c!138792 ((_ is Cons!9232) (t!96470 lt!323674)))))

(declare-fun e!563428 () List!9247)

(assert (=> d!267768 (= (printList!482 thiss!20117 (t!96470 lt!323674)) e!563428)))

(declare-fun b!856032 () Bool)

(assert (=> b!856032 (= e!563428 (++!2390 (list!3637 (charsOf!999 (h!14633 (t!96470 lt!323674)))) (printList!482 thiss!20117 (t!96470 (t!96470 lt!323674)))))))

(declare-fun b!856033 () Bool)

(assert (=> b!856033 (= e!563428 Nil!9231)))

(assert (= (and d!267768 c!138792) b!856032))

(assert (= (and d!267768 (not c!138792)) b!856033))

(declare-fun m!1097385 () Bool)

(assert (=> b!856032 m!1097385))

(assert (=> b!856032 m!1097385))

(declare-fun m!1097387 () Bool)

(assert (=> b!856032 m!1097387))

(declare-fun m!1097389 () Bool)

(assert (=> b!856032 m!1097389))

(assert (=> b!856032 m!1097387))

(assert (=> b!856032 m!1097389))

(declare-fun m!1097391 () Bool)

(assert (=> b!856032 m!1097391))

(assert (=> b!855768 d!267768))

(declare-fun d!267770 () Bool)

(declare-fun isBalanced!847 (Conc!3059) Bool)

(assert (=> d!267770 (= (inv!11747 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107)))) (isBalanced!847 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107))))))))

(declare-fun bs!231821 () Bool)

(assert (= bs!231821 d!267770))

(declare-fun m!1097393 () Bool)

(assert (=> bs!231821 m!1097393))

(assert (=> tb!60559 d!267770))

(declare-fun d!267772 () Bool)

(declare-fun lt!323761 () Bool)

(assert (=> d!267772 (= lt!323761 (isEmpty!5472 (list!3637 (_2!6032 (lex!626 thiss!20117 rules!2621 (print!563 thiss!20117 (singletonSeq!549 separatorToken!297)))))))))

(declare-fun isEmpty!5476 (Conc!3059) Bool)

(assert (=> d!267772 (= lt!323761 (isEmpty!5476 (c!138700 (_2!6032 (lex!626 thiss!20117 rules!2621 (print!563 thiss!20117 (singletonSeq!549 separatorToken!297)))))))))

(assert (=> d!267772 (= (isEmpty!5473 (_2!6032 (lex!626 thiss!20117 rules!2621 (print!563 thiss!20117 (singletonSeq!549 separatorToken!297))))) lt!323761)))

(declare-fun bs!231822 () Bool)

(assert (= bs!231822 d!267772))

(declare-fun m!1097395 () Bool)

(assert (=> bs!231822 m!1097395))

(assert (=> bs!231822 m!1097395))

(declare-fun m!1097397 () Bool)

(assert (=> bs!231822 m!1097397))

(declare-fun m!1097399 () Bool)

(assert (=> bs!231822 m!1097399))

(assert (=> b!855786 d!267772))

(declare-fun d!267774 () Bool)

(declare-fun e!563460 () Bool)

(assert (=> d!267774 e!563460))

(declare-fun res!390791 () Bool)

(assert (=> d!267774 (=> (not res!390791) (not e!563460))))

(declare-fun e!563459 () Bool)

(assert (=> d!267774 (= res!390791 e!563459)))

(declare-fun c!138807 () Bool)

(declare-fun lt!323774 () tuple2!10412)

(assert (=> d!267774 (= c!138807 (> (size!7707 (_1!6032 lt!323774)) 0))))

(declare-fun lexTailRecV2!303 (LexerInterface!1534 List!9249 BalanceConc!6132 BalanceConc!6132 BalanceConc!6132 BalanceConc!6136) tuple2!10412)

(assert (=> d!267774 (= lt!323774 (lexTailRecV2!303 thiss!20117 rules!2621 (print!563 thiss!20117 (singletonSeq!549 separatorToken!297)) (BalanceConc!6133 Empty!3059) (print!563 thiss!20117 (singletonSeq!549 separatorToken!297)) (BalanceConc!6137 Empty!3061)))))

(assert (=> d!267774 (= (lex!626 thiss!20117 rules!2621 (print!563 thiss!20117 (singletonSeq!549 separatorToken!297))) lt!323774)))

(declare-fun b!856082 () Bool)

(declare-datatypes ((tuple2!10416 0))(
  ( (tuple2!10417 (_1!6034 List!9248) (_2!6034 List!9247)) )
))
(declare-fun lexList!396 (LexerInterface!1534 List!9249 List!9247) tuple2!10416)

(assert (=> b!856082 (= e!563460 (= (list!3637 (_2!6032 lt!323774)) (_2!6034 (lexList!396 thiss!20117 rules!2621 (list!3637 (print!563 thiss!20117 (singletonSeq!549 separatorToken!297)))))))))

(declare-fun b!856083 () Bool)

(declare-fun res!390790 () Bool)

(assert (=> b!856083 (=> (not res!390790) (not e!563460))))

(assert (=> b!856083 (= res!390790 (= (list!3638 (_1!6032 lt!323774)) (_1!6034 (lexList!396 thiss!20117 rules!2621 (list!3637 (print!563 thiss!20117 (singletonSeq!549 separatorToken!297)))))))))

(declare-fun b!856084 () Bool)

(assert (=> b!856084 (= e!563459 (= (_2!6032 lt!323774) (print!563 thiss!20117 (singletonSeq!549 separatorToken!297))))))

(declare-fun b!856085 () Bool)

(declare-fun e!563461 () Bool)

(assert (=> b!856085 (= e!563459 e!563461)))

(declare-fun res!390792 () Bool)

(declare-fun size!7711 (BalanceConc!6132) Int)

(assert (=> b!856085 (= res!390792 (< (size!7711 (_2!6032 lt!323774)) (size!7711 (print!563 thiss!20117 (singletonSeq!549 separatorToken!297)))))))

(assert (=> b!856085 (=> (not res!390792) (not e!563461))))

(declare-fun b!856086 () Bool)

(declare-fun isEmpty!5477 (BalanceConc!6136) Bool)

(assert (=> b!856086 (= e!563461 (not (isEmpty!5477 (_1!6032 lt!323774))))))

(assert (= (and d!267774 c!138807) b!856085))

(assert (= (and d!267774 (not c!138807)) b!856084))

(assert (= (and b!856085 res!390792) b!856086))

(assert (= (and d!267774 res!390791) b!856083))

(assert (= (and b!856083 res!390790) b!856082))

(declare-fun m!1097469 () Bool)

(assert (=> b!856086 m!1097469))

(declare-fun m!1097471 () Bool)

(assert (=> b!856083 m!1097471))

(assert (=> b!856083 m!1096829))

(declare-fun m!1097473 () Bool)

(assert (=> b!856083 m!1097473))

(assert (=> b!856083 m!1097473))

(declare-fun m!1097475 () Bool)

(assert (=> b!856083 m!1097475))

(declare-fun m!1097477 () Bool)

(assert (=> b!856082 m!1097477))

(assert (=> b!856082 m!1096829))

(assert (=> b!856082 m!1097473))

(assert (=> b!856082 m!1097473))

(assert (=> b!856082 m!1097475))

(declare-fun m!1097479 () Bool)

(assert (=> b!856085 m!1097479))

(assert (=> b!856085 m!1096829))

(declare-fun m!1097481 () Bool)

(assert (=> b!856085 m!1097481))

(declare-fun m!1097483 () Bool)

(assert (=> d!267774 m!1097483))

(assert (=> d!267774 m!1096829))

(assert (=> d!267774 m!1096829))

(declare-fun m!1097485 () Bool)

(assert (=> d!267774 m!1097485))

(assert (=> b!855786 d!267774))

(declare-fun d!267798 () Bool)

(declare-fun lt!323783 () BalanceConc!6132)

(assert (=> d!267798 (= (list!3637 lt!323783) (printList!482 thiss!20117 (list!3638 (singletonSeq!549 separatorToken!297))))))

(declare-fun printTailRec!478 (LexerInterface!1534 BalanceConc!6136 Int BalanceConc!6132) BalanceConc!6132)

(assert (=> d!267798 (= lt!323783 (printTailRec!478 thiss!20117 (singletonSeq!549 separatorToken!297) 0 (BalanceConc!6133 Empty!3059)))))

(assert (=> d!267798 (= (print!563 thiss!20117 (singletonSeq!549 separatorToken!297)) lt!323783)))

(declare-fun bs!231835 () Bool)

(assert (= bs!231835 d!267798))

(declare-fun m!1097521 () Bool)

(assert (=> bs!231835 m!1097521))

(assert (=> bs!231835 m!1096827))

(assert (=> bs!231835 m!1096831))

(assert (=> bs!231835 m!1096831))

(declare-fun m!1097523 () Bool)

(assert (=> bs!231835 m!1097523))

(assert (=> bs!231835 m!1096827))

(declare-fun m!1097525 () Bool)

(assert (=> bs!231835 m!1097525))

(assert (=> b!855786 d!267798))

(declare-fun d!267814 () Bool)

(declare-fun e!563479 () Bool)

(assert (=> d!267814 e!563479))

(declare-fun res!390804 () Bool)

(assert (=> d!267814 (=> (not res!390804) (not e!563479))))

(declare-fun lt!323790 () BalanceConc!6136)

(assert (=> d!267814 (= res!390804 (= (list!3638 lt!323790) (Cons!9232 separatorToken!297 Nil!9232)))))

(declare-fun singleton!268 (Token!3130) BalanceConc!6136)

(assert (=> d!267814 (= lt!323790 (singleton!268 separatorToken!297))))

(assert (=> d!267814 (= (singletonSeq!549 separatorToken!297) lt!323790)))

(declare-fun b!856111 () Bool)

(declare-fun isBalanced!848 (Conc!3061) Bool)

(assert (=> b!856111 (= e!563479 (isBalanced!848 (c!138742 lt!323790)))))

(assert (= (and d!267814 res!390804) b!856111))

(declare-fun m!1097533 () Bool)

(assert (=> d!267814 m!1097533))

(declare-fun m!1097537 () Bool)

(assert (=> d!267814 m!1097537))

(declare-fun m!1097539 () Bool)

(assert (=> b!856111 m!1097539))

(assert (=> b!855786 d!267814))

(declare-fun b!856127 () Bool)

(declare-fun e!563494 () Bool)

(declare-fun call!50531 () Bool)

(assert (=> b!856127 (= e!563494 call!50531)))

(declare-fun b!856128 () Bool)

(declare-fun e!563493 () Bool)

(assert (=> b!856128 (= e!563493 e!563494)))

(declare-fun res!390813 () Bool)

(assert (=> b!856128 (= res!390813 (not ((_ is Cons!9233) rules!2621)))))

(assert (=> b!856128 (=> res!390813 e!563494)))

(declare-fun b!856129 () Bool)

(declare-fun e!563492 () Bool)

(assert (=> b!856129 (= e!563493 e!563492)))

(declare-fun res!390814 () Bool)

(declare-fun rulesUseDisjointChars!126 (Rule!3264 Rule!3264) Bool)

(assert (=> b!856129 (= res!390814 (rulesUseDisjointChars!126 (h!14634 rules!2621) (h!14634 rules!2621)))))

(assert (=> b!856129 (=> (not res!390814) (not e!563492))))

(declare-fun b!856130 () Bool)

(assert (=> b!856130 (= e!563492 call!50531)))

(declare-fun d!267818 () Bool)

(declare-fun c!138815 () Bool)

(assert (=> d!267818 (= c!138815 (and ((_ is Cons!9233) rules!2621) (not (= (isSeparator!1732 (h!14634 rules!2621)) (isSeparator!1732 (h!14634 rules!2621))))))))

(assert (=> d!267818 (= (ruleDisjointCharsFromAllFromOtherType!245 (h!14634 rules!2621) rules!2621) e!563493)))

(declare-fun bm!50526 () Bool)

(assert (=> bm!50526 (= call!50531 (ruleDisjointCharsFromAllFromOtherType!245 (h!14634 rules!2621) (t!96471 rules!2621)))))

(assert (= (and d!267818 c!138815) b!856129))

(assert (= (and d!267818 (not c!138815)) b!856128))

(assert (= (and b!856129 res!390814) b!856130))

(assert (= (and b!856128 (not res!390813)) b!856127))

(assert (= (or b!856130 b!856127) bm!50526))

(declare-fun m!1097571 () Bool)

(assert (=> b!856129 m!1097571))

(declare-fun m!1097573 () Bool)

(assert (=> bm!50526 m!1097573))

(assert (=> b!855736 d!267818))

(declare-fun d!267830 () Bool)

(assert (=> d!267830 true))

(declare-fun lambda!25673 () Int)

(declare-fun order!5975 () Int)

(declare-fun dynLambda!4341 (Int Int) Int)

(assert (=> d!267830 (< (dynLambda!4335 order!5967 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297)))) (dynLambda!4341 order!5975 lambda!25673))))

(assert (=> d!267830 true))

(assert (=> d!267830 (< (dynLambda!4333 order!5963 (toValue!2785 (transformation!1732 (rule!3155 separatorToken!297)))) (dynLambda!4341 order!5975 lambda!25673))))

(declare-fun Forall!419 (Int) Bool)

(assert (=> d!267830 (= (semiInverseModEq!677 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (toValue!2785 (transformation!1732 (rule!3155 separatorToken!297)))) (Forall!419 lambda!25673))))

(declare-fun bs!231841 () Bool)

(assert (= bs!231841 d!267830))

(declare-fun m!1097615 () Bool)

(assert (=> bs!231841 m!1097615))

(assert (=> d!267590 d!267830))

(assert (=> d!267606 d!267798))

(assert (=> d!267606 d!267774))

(declare-fun d!267846 () Bool)

(declare-fun list!3642 (Conc!3061) List!9248)

(assert (=> d!267846 (= (list!3638 (_1!6032 (lex!626 thiss!20117 rules!2621 (print!563 thiss!20117 (singletonSeq!549 separatorToken!297))))) (list!3642 (c!138742 (_1!6032 (lex!626 thiss!20117 rules!2621 (print!563 thiss!20117 (singletonSeq!549 separatorToken!297)))))))))

(declare-fun bs!231842 () Bool)

(assert (= bs!231842 d!267846))

(declare-fun m!1097633 () Bool)

(assert (=> bs!231842 m!1097633))

(assert (=> d!267606 d!267846))

(declare-fun d!267852 () Bool)

(assert (=> d!267852 (= (list!3638 (singletonSeq!549 separatorToken!297)) (list!3642 (c!138742 (singletonSeq!549 separatorToken!297))))))

(declare-fun bs!231843 () Bool)

(assert (= bs!231843 d!267852))

(declare-fun m!1097635 () Bool)

(assert (=> bs!231843 m!1097635))

(assert (=> d!267606 d!267852))

(assert (=> d!267606 d!267814))

(declare-fun d!267854 () Bool)

(declare-fun lt!323800 () Int)

(declare-fun size!7712 (List!9248) Int)

(assert (=> d!267854 (= lt!323800 (size!7712 (list!3638 (_1!6032 lt!323686))))))

(declare-fun size!7713 (Conc!3061) Int)

(assert (=> d!267854 (= lt!323800 (size!7713 (c!138742 (_1!6032 lt!323686))))))

(assert (=> d!267854 (= (size!7707 (_1!6032 lt!323686)) lt!323800)))

(declare-fun bs!231845 () Bool)

(assert (= bs!231845 d!267854))

(declare-fun m!1097671 () Bool)

(assert (=> bs!231845 m!1097671))

(assert (=> bs!231845 m!1097671))

(declare-fun m!1097673 () Bool)

(assert (=> bs!231845 m!1097673))

(declare-fun m!1097675 () Bool)

(assert (=> bs!231845 m!1097675))

(assert (=> d!267606 d!267854))

(assert (=> d!267606 d!267596))

(declare-fun d!267864 () Bool)

(declare-fun lt!323807 () Int)

(assert (=> d!267864 (>= lt!323807 0)))

(declare-fun e!563521 () Int)

(assert (=> d!267864 (= lt!323807 e!563521)))

(declare-fun c!138830 () Bool)

(assert (=> d!267864 (= c!138830 ((_ is Nil!9231) (originalCharacters!2288 (h!14633 l!5107))))))

(assert (=> d!267864 (= (size!7706 (originalCharacters!2288 (h!14633 l!5107))) lt!323807)))

(declare-fun b!856181 () Bool)

(assert (=> b!856181 (= e!563521 0)))

(declare-fun b!856182 () Bool)

(assert (=> b!856182 (= e!563521 (+ 1 (size!7706 (t!96469 (originalCharacters!2288 (h!14633 l!5107))))))))

(assert (= (and d!267864 c!138830) b!856181))

(assert (= (and d!267864 (not c!138830)) b!856182))

(declare-fun m!1097709 () Bool)

(assert (=> b!856182 m!1097709))

(assert (=> b!855756 d!267864))

(declare-fun b!856183 () Bool)

(declare-fun res!390832 () Bool)

(declare-fun e!563523 () Bool)

(assert (=> b!856183 (=> res!390832 e!563523)))

(assert (=> b!856183 (= res!390832 (not ((_ is IntegerValue!5396) (value!56061 (h!14633 (t!96470 l!5107))))))))

(declare-fun e!563524 () Bool)

(assert (=> b!856183 (= e!563524 e!563523)))

(declare-fun b!856184 () Bool)

(declare-fun e!563522 () Bool)

(assert (=> b!856184 (= e!563522 (inv!16 (value!56061 (h!14633 (t!96470 l!5107)))))))

(declare-fun b!856185 () Bool)

(assert (=> b!856185 (= e!563523 (inv!15 (value!56061 (h!14633 (t!96470 l!5107)))))))

(declare-fun b!856186 () Bool)

(assert (=> b!856186 (= e!563522 e!563524)))

(declare-fun c!138832 () Bool)

(assert (=> b!856186 (= c!138832 ((_ is IntegerValue!5395) (value!56061 (h!14633 (t!96470 l!5107)))))))

(declare-fun b!856187 () Bool)

(assert (=> b!856187 (= e!563524 (inv!17 (value!56061 (h!14633 (t!96470 l!5107)))))))

(declare-fun d!267874 () Bool)

(declare-fun c!138831 () Bool)

(assert (=> d!267874 (= c!138831 ((_ is IntegerValue!5394) (value!56061 (h!14633 (t!96470 l!5107)))))))

(assert (=> d!267874 (= (inv!21 (value!56061 (h!14633 (t!96470 l!5107)))) e!563522)))

(assert (= (and d!267874 c!138831) b!856184))

(assert (= (and d!267874 (not c!138831)) b!856186))

(assert (= (and b!856186 c!138832) b!856187))

(assert (= (and b!856186 (not c!138832)) b!856183))

(assert (= (and b!856183 (not res!390832)) b!856185))

(declare-fun m!1097719 () Bool)

(assert (=> b!856184 m!1097719))

(declare-fun m!1097721 () Bool)

(assert (=> b!856185 m!1097721))

(declare-fun m!1097723 () Bool)

(assert (=> b!856187 m!1097723))

(assert (=> b!855822 d!267874))

(declare-fun bs!231848 () Bool)

(declare-fun d!267880 () Bool)

(assert (= bs!231848 (and d!267880 b!855470)))

(declare-fun lambda!25674 () Int)

(assert (=> bs!231848 (not (= lambda!25674 lambda!25644))))

(declare-fun bs!231849 () Bool)

(assert (= bs!231849 (and d!267880 d!267528)))

(assert (=> bs!231849 (= lambda!25674 lambda!25651)))

(declare-fun bs!231850 () Bool)

(assert (= bs!231850 (and d!267880 d!267550)))

(assert (=> bs!231850 (= lambda!25674 lambda!25652)))

(declare-fun bs!231851 () Bool)

(assert (= bs!231851 (and d!267880 d!267684)))

(assert (=> bs!231851 (= lambda!25674 lambda!25657)))

(declare-fun b!856193 () Bool)

(declare-fun e!563530 () Bool)

(assert (=> b!856193 (= e!563530 true)))

(declare-fun b!856192 () Bool)

(declare-fun e!563529 () Bool)

(assert (=> b!856192 (= e!563529 e!563530)))

(declare-fun b!856191 () Bool)

(declare-fun e!563528 () Bool)

(assert (=> b!856191 (= e!563528 e!563529)))

(assert (=> d!267880 e!563528))

(assert (= b!856192 b!856193))

(assert (= b!856191 b!856192))

(assert (= (and d!267880 ((_ is Cons!9233) rules!2621)) b!856191))

(assert (=> b!856193 (< (dynLambda!4333 order!5963 (toValue!2785 (transformation!1732 (h!14634 rules!2621)))) (dynLambda!4334 order!5965 lambda!25674))))

(assert (=> b!856193 (< (dynLambda!4335 order!5967 (toChars!2644 (transformation!1732 (h!14634 rules!2621)))) (dynLambda!4334 order!5965 lambda!25674))))

(assert (=> d!267880 true))

(declare-fun lt!323809 () Bool)

(assert (=> d!267880 (= lt!323809 (forall!2189 (t!96470 lt!323596) lambda!25674))))

(declare-fun e!563526 () Bool)

(assert (=> d!267880 (= lt!323809 e!563526)))

(declare-fun res!390833 () Bool)

(assert (=> d!267880 (=> res!390833 e!563526)))

(assert (=> d!267880 (= res!390833 (not ((_ is Cons!9232) (t!96470 lt!323596))))))

(assert (=> d!267880 (not (isEmpty!5469 rules!2621))))

(assert (=> d!267880 (= (rulesProduceEachTokenIndividuallyList!422 thiss!20117 rules!2621 (t!96470 lt!323596)) lt!323809)))

(declare-fun b!856189 () Bool)

(declare-fun e!563527 () Bool)

(assert (=> b!856189 (= e!563526 e!563527)))

(declare-fun res!390834 () Bool)

(assert (=> b!856189 (=> (not res!390834) (not e!563527))))

(assert (=> b!856189 (= res!390834 (rulesProduceIndividualToken!598 thiss!20117 rules!2621 (h!14633 (t!96470 lt!323596))))))

(declare-fun b!856190 () Bool)

(assert (=> b!856190 (= e!563527 (rulesProduceEachTokenIndividuallyList!422 thiss!20117 rules!2621 (t!96470 (t!96470 lt!323596))))))

(assert (= (and d!267880 (not res!390833)) b!856189))

(assert (= (and b!856189 res!390834) b!856190))

(declare-fun m!1097743 () Bool)

(assert (=> d!267880 m!1097743))

(assert (=> d!267880 m!1096427))

(declare-fun m!1097745 () Bool)

(assert (=> b!856189 m!1097745))

(declare-fun m!1097747 () Bool)

(assert (=> b!856190 m!1097747))

(assert (=> b!855620 d!267880))

(declare-fun d!267890 () Bool)

(assert (=> d!267890 (= (list!3637 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297))) (list!3640 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297)))))))

(declare-fun bs!231853 () Bool)

(assert (= bs!231853 d!267890))

(declare-fun m!1097749 () Bool)

(assert (=> bs!231853 m!1097749))

(assert (=> b!855748 d!267890))

(declare-fun d!267892 () Bool)

(declare-fun lt!323811 () Bool)

(declare-fun e!563534 () Bool)

(assert (=> d!267892 (= lt!323811 e!563534)))

(declare-fun res!390837 () Bool)

(assert (=> d!267892 (=> (not res!390837) (not e!563534))))

(assert (=> d!267892 (= res!390837 (= (list!3638 (_1!6032 (lex!626 thiss!20117 rules!2621 (print!563 thiss!20117 (singletonSeq!549 (h!14633 l!5107)))))) (list!3638 (singletonSeq!549 (h!14633 l!5107)))))))

(declare-fun e!563533 () Bool)

(assert (=> d!267892 (= lt!323811 e!563533)))

(declare-fun res!390835 () Bool)

(assert (=> d!267892 (=> (not res!390835) (not e!563533))))

(declare-fun lt!323810 () tuple2!10412)

(assert (=> d!267892 (= res!390835 (= (size!7707 (_1!6032 lt!323810)) 1))))

(assert (=> d!267892 (= lt!323810 (lex!626 thiss!20117 rules!2621 (print!563 thiss!20117 (singletonSeq!549 (h!14633 l!5107)))))))

(assert (=> d!267892 (not (isEmpty!5469 rules!2621))))

(assert (=> d!267892 (= (rulesProduceIndividualToken!598 thiss!20117 rules!2621 (h!14633 l!5107)) lt!323811)))

(declare-fun b!856198 () Bool)

(declare-fun res!390836 () Bool)

(assert (=> b!856198 (=> (not res!390836) (not e!563533))))

(assert (=> b!856198 (= res!390836 (= (apply!1915 (_1!6032 lt!323810) 0) (h!14633 l!5107)))))

(declare-fun b!856199 () Bool)

(assert (=> b!856199 (= e!563533 (isEmpty!5473 (_2!6032 lt!323810)))))

(declare-fun b!856200 () Bool)

(assert (=> b!856200 (= e!563534 (isEmpty!5473 (_2!6032 (lex!626 thiss!20117 rules!2621 (print!563 thiss!20117 (singletonSeq!549 (h!14633 l!5107)))))))))

(assert (= (and d!267892 res!390835) b!856198))

(assert (= (and b!856198 res!390836) b!856199))

(assert (= (and d!267892 res!390837) b!856200))

(assert (=> d!267892 m!1096427))

(declare-fun m!1097759 () Bool)

(assert (=> d!267892 m!1097759))

(declare-fun m!1097761 () Bool)

(assert (=> d!267892 m!1097761))

(assert (=> d!267892 m!1097759))

(declare-fun m!1097763 () Bool)

(assert (=> d!267892 m!1097763))

(assert (=> d!267892 m!1097759))

(declare-fun m!1097765 () Bool)

(assert (=> d!267892 m!1097765))

(declare-fun m!1097767 () Bool)

(assert (=> d!267892 m!1097767))

(assert (=> d!267892 m!1097761))

(declare-fun m!1097769 () Bool)

(assert (=> d!267892 m!1097769))

(declare-fun m!1097771 () Bool)

(assert (=> b!856198 m!1097771))

(declare-fun m!1097773 () Bool)

(assert (=> b!856199 m!1097773))

(assert (=> b!856200 m!1097759))

(assert (=> b!856200 m!1097759))

(assert (=> b!856200 m!1097761))

(assert (=> b!856200 m!1097761))

(assert (=> b!856200 m!1097769))

(declare-fun m!1097775 () Bool)

(assert (=> b!856200 m!1097775))

(assert (=> b!855595 d!267892))

(declare-fun bs!231859 () Bool)

(declare-fun d!267896 () Bool)

(assert (= bs!231859 (and d!267896 d!267678)))

(declare-fun lambda!25676 () Int)

(assert (=> bs!231859 (= (= (toValue!2785 (transformation!1732 (h!14634 rules!2621))) (toValue!2785 (transformation!1732 (rule!3155 separatorToken!297)))) (= lambda!25676 lambda!25656))))

(assert (=> d!267896 true))

(assert (=> d!267896 (< (dynLambda!4333 order!5963 (toValue!2785 (transformation!1732 (h!14634 rules!2621)))) (dynLambda!4340 order!5969 lambda!25676))))

(assert (=> d!267896 (= (equivClasses!644 (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toValue!2785 (transformation!1732 (h!14634 rules!2621)))) (Forall2!329 lambda!25676))))

(declare-fun bs!231860 () Bool)

(assert (= bs!231860 d!267896))

(declare-fun m!1097783 () Bool)

(assert (=> bs!231860 m!1097783))

(assert (=> b!855777 d!267896))

(declare-fun d!267900 () Bool)

(assert (=> d!267900 (= ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297) separatorToken!297) (Cons!9232 separatorToken!297 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297)))))

(assert (=> b!855766 d!267900))

(declare-fun d!267904 () Bool)

(declare-fun lt!323813 () BalanceConc!6132)

(assert (=> d!267904 (= (list!3637 lt!323813) (originalCharacters!2288 (h!14633 (tail!1044 l!5107))))))

(assert (=> d!267904 (= lt!323813 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (tail!1044 l!5107))))) (value!56061 (h!14633 (tail!1044 l!5107)))))))

(assert (=> d!267904 (= (charsOf!999 (h!14633 (tail!1044 l!5107))) lt!323813)))

(declare-fun b_lambda!28781 () Bool)

(assert (=> (not b_lambda!28781) (not d!267904)))

(declare-fun t!96605 () Bool)

(declare-fun tb!60653 () Bool)

(assert (=> (and b!855824 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (tail!1044 l!5107)))))) t!96605) tb!60653))

(declare-fun b!856212 () Bool)

(declare-fun e!563545 () Bool)

(declare-fun tp!269929 () Bool)

(assert (=> b!856212 (= e!563545 (and (inv!11746 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (tail!1044 l!5107))))) (value!56061 (h!14633 (tail!1044 l!5107)))))) tp!269929))))

(declare-fun result!70230 () Bool)

(assert (=> tb!60653 (= result!70230 (and (inv!11747 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (tail!1044 l!5107))))) (value!56061 (h!14633 (tail!1044 l!5107))))) e!563545))))

(assert (= tb!60653 b!856212))

(declare-fun m!1097797 () Bool)

(assert (=> b!856212 m!1097797))

(declare-fun m!1097799 () Bool)

(assert (=> tb!60653 m!1097799))

(assert (=> d!267904 t!96605))

(declare-fun b_and!75717 () Bool)

(assert (= b_and!75665 (and (=> t!96605 result!70230) b_and!75717)))

(declare-fun t!96607 () Bool)

(declare-fun tb!60655 () Bool)

(assert (=> (and b!855462 (= (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (tail!1044 l!5107)))))) t!96607) tb!60655))

(declare-fun result!70232 () Bool)

(assert (= result!70232 result!70230))

(assert (=> d!267904 t!96607))

(declare-fun b_and!75719 () Bool)

(assert (= b_and!75657 (and (=> t!96607 result!70232) b_and!75719)))

(declare-fun t!96609 () Bool)

(declare-fun tb!60657 () Bool)

(assert (=> (and b!855459 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (tail!1044 l!5107)))))) t!96609) tb!60657))

(declare-fun result!70234 () Bool)

(assert (= result!70234 result!70230))

(assert (=> d!267904 t!96609))

(declare-fun b_and!75721 () Bool)

(assert (= b_and!75659 (and (=> t!96609 result!70234) b_and!75721)))

(declare-fun tb!60659 () Bool)

(declare-fun t!96611 () Bool)

(assert (=> (and b!855473 (= (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (tail!1044 l!5107)))))) t!96611) tb!60659))

(declare-fun result!70236 () Bool)

(assert (= result!70236 result!70230))

(assert (=> d!267904 t!96611))

(declare-fun b_and!75723 () Bool)

(assert (= b_and!75663 (and (=> t!96611 result!70236) b_and!75723)))

(declare-fun t!96613 () Bool)

(declare-fun tb!60661 () Bool)

(assert (=> (and b!855835 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 rules!2621)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (tail!1044 l!5107)))))) t!96613) tb!60661))

(declare-fun result!70238 () Bool)

(assert (= result!70238 result!70230))

(assert (=> d!267904 t!96613))

(declare-fun b_and!75725 () Bool)

(assert (= b_and!75661 (and (=> t!96613 result!70238) b_and!75725)))

(declare-fun m!1097803 () Bool)

(assert (=> d!267904 m!1097803))

(declare-fun m!1097805 () Bool)

(assert (=> d!267904 m!1097805))

(assert (=> b!855766 d!267904))

(declare-fun b!856213 () Bool)

(declare-fun e!563551 () Bool)

(declare-fun e!563550 () Bool)

(assert (=> b!856213 (= e!563551 e!563550)))

(declare-fun res!390847 () Bool)

(assert (=> b!856213 (=> res!390847 e!563550)))

(assert (=> b!856213 (= res!390847 (not ((_ is Cons!9232) (t!96470 (tail!1044 l!5107)))))))

(declare-fun b!856214 () Bool)

(declare-fun e!563546 () List!9247)

(assert (=> b!856214 (= e!563546 Nil!9231)))

(declare-fun e!563548 () List!9247)

(declare-fun b!856215 () Bool)

(assert (=> b!856215 (= e!563550 (= (printList!482 thiss!20117 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (t!96470 (tail!1044 l!5107))) separatorToken!297) separatorToken!297)) e!563548))))

(declare-fun c!138836 () Bool)

(declare-fun lt!323814 () List!9248)

(assert (=> b!856215 (= c!138836 ((_ is Cons!9232) lt!323814))))

(assert (=> b!856215 (= lt!323814 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (t!96470 (tail!1044 l!5107))) separatorToken!297) separatorToken!297))))

(declare-fun b!856216 () Bool)

(assert (=> b!856216 (= e!563548 Nil!9231)))

(declare-fun b!856217 () Bool)

(declare-fun e!563547 () List!9248)

(assert (=> b!856217 (= e!563547 Nil!9232)))

(declare-fun b!856218 () Bool)

(declare-fun res!390846 () Bool)

(assert (=> b!856218 (=> (not res!390846) (not e!563551))))

(declare-fun e!563549 () Bool)

(assert (=> b!856218 (= res!390846 e!563549)))

(declare-fun res!390844 () Bool)

(assert (=> b!856218 (=> res!390844 e!563549)))

(assert (=> b!856218 (= res!390844 (not ((_ is Cons!9232) (t!96470 (tail!1044 l!5107)))))))

(declare-fun b!856219 () Bool)

(declare-fun lt!323819 () List!9248)

(assert (=> b!856219 (= e!563546 (++!2390 (list!3637 (charsOf!999 (h!14633 lt!323819))) (printList!482 thiss!20117 (t!96470 lt!323819))))))

(declare-fun b!856220 () Bool)

(assert (=> b!856220 (= e!563547 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (t!96470 (tail!1044 l!5107))) separatorToken!297) separatorToken!297) (h!14633 (t!96470 (tail!1044 l!5107)))))))

(declare-fun lt!323816 () List!9247)

(assert (=> b!856220 (= lt!323816 (list!3637 (charsOf!999 (h!14633 (t!96470 (tail!1044 l!5107))))))))

(declare-fun lt!323820 () List!9247)

(assert (=> b!856220 (= lt!323820 (list!3637 (charsOf!999 separatorToken!297)))))

(declare-fun lt!323818 () List!9247)

(assert (=> b!856220 (= lt!323818 (printList!482 thiss!20117 (withSeparatorTokenList!64 thiss!20117 (t!96470 (t!96470 (tail!1044 l!5107))) separatorToken!297)))))

(declare-fun lt!323815 () Unit!13731)

(assert (=> b!856220 (= lt!323815 (lemmaConcatAssociativity!757 lt!323816 lt!323820 lt!323818))))

(assert (=> b!856220 (= (++!2390 (++!2390 lt!323816 lt!323820) lt!323818) (++!2390 lt!323816 (++!2390 lt!323820 lt!323818)))))

(declare-fun lt!323817 () Unit!13731)

(assert (=> b!856220 (= lt!323817 lt!323815)))

(declare-fun lt!323821 () List!9248)

(declare-fun d!267914 () Bool)

(assert (=> d!267914 (= (printList!482 thiss!20117 lt!323821) (printWithSeparatorTokenList!40 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297))))

(assert (=> d!267914 (= lt!323821 e!563547)))

(declare-fun c!138838 () Bool)

(assert (=> d!267914 (= c!138838 ((_ is Cons!9232) (t!96470 (tail!1044 l!5107))))))

(assert (=> d!267914 e!563551))

(declare-fun res!390845 () Bool)

(assert (=> d!267914 (=> (not res!390845) (not e!563551))))

(assert (=> d!267914 (= res!390845 (isSeparator!1732 (rule!3155 separatorToken!297)))))

(assert (=> d!267914 (= (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297) lt!323821)))

(declare-fun b!856221 () Bool)

(assert (=> b!856221 (= e!563549 (= (printList!482 thiss!20117 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (t!96470 (tail!1044 l!5107))) separatorToken!297) separatorToken!297) (h!14633 (t!96470 (tail!1044 l!5107))))) e!563546))))

(declare-fun c!138837 () Bool)

(assert (=> b!856221 (= c!138837 ((_ is Cons!9232) lt!323819))))

(assert (=> b!856221 (= lt!323819 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (t!96470 (tail!1044 l!5107))) separatorToken!297) separatorToken!297) (h!14633 (t!96470 (tail!1044 l!5107)))))))

(declare-fun b!856222 () Bool)

(assert (=> b!856222 (= e!563548 (++!2390 (list!3637 (charsOf!999 (h!14633 lt!323814))) (printList!482 thiss!20117 (t!96470 lt!323814))))))

(assert (= (and d!267914 res!390845) b!856218))

(assert (= (and b!856218 (not res!390844)) b!856221))

(assert (= (and b!856221 c!138837) b!856219))

(assert (= (and b!856221 (not c!138837)) b!856214))

(assert (= (and b!856218 res!390846) b!856213))

(assert (= (and b!856213 (not res!390847)) b!856215))

(assert (= (and b!856215 c!138836) b!856222))

(assert (= (and b!856215 (not c!138836)) b!856216))

(assert (= (and d!267914 c!138838) b!856220))

(assert (= (and d!267914 (not c!138838)) b!856217))

(declare-fun m!1097809 () Bool)

(assert (=> b!856219 m!1097809))

(assert (=> b!856219 m!1097809))

(declare-fun m!1097811 () Bool)

(assert (=> b!856219 m!1097811))

(declare-fun m!1097813 () Bool)

(assert (=> b!856219 m!1097813))

(assert (=> b!856219 m!1097811))

(assert (=> b!856219 m!1097813))

(declare-fun m!1097815 () Bool)

(assert (=> b!856219 m!1097815))

(declare-fun m!1097817 () Bool)

(assert (=> b!856222 m!1097817))

(assert (=> b!856222 m!1097817))

(declare-fun m!1097819 () Bool)

(assert (=> b!856222 m!1097819))

(declare-fun m!1097821 () Bool)

(assert (=> b!856222 m!1097821))

(assert (=> b!856222 m!1097819))

(assert (=> b!856222 m!1097821))

(declare-fun m!1097823 () Bool)

(assert (=> b!856222 m!1097823))

(declare-fun m!1097825 () Bool)

(assert (=> b!856220 m!1097825))

(declare-fun m!1097827 () Bool)

(assert (=> b!856220 m!1097827))

(declare-fun m!1097829 () Bool)

(assert (=> b!856220 m!1097829))

(declare-fun m!1097831 () Bool)

(assert (=> b!856220 m!1097831))

(assert (=> b!856220 m!1096649))

(assert (=> b!856220 m!1096651))

(assert (=> b!856220 m!1097825))

(assert (=> b!856220 m!1096649))

(declare-fun m!1097833 () Bool)

(assert (=> b!856220 m!1097833))

(declare-fun m!1097835 () Bool)

(assert (=> b!856220 m!1097835))

(assert (=> b!856220 m!1097835))

(declare-fun m!1097837 () Bool)

(assert (=> b!856220 m!1097837))

(declare-fun m!1097839 () Bool)

(assert (=> b!856220 m!1097839))

(assert (=> b!856220 m!1097833))

(assert (=> b!856220 m!1097833))

(declare-fun m!1097841 () Bool)

(assert (=> b!856220 m!1097841))

(assert (=> b!856220 m!1097839))

(declare-fun m!1097843 () Bool)

(assert (=> b!856220 m!1097843))

(assert (=> b!856220 m!1097829))

(declare-fun m!1097845 () Bool)

(assert (=> b!856220 m!1097845))

(assert (=> b!856221 m!1097833))

(assert (=> b!856221 m!1097833))

(assert (=> b!856221 m!1097835))

(assert (=> b!856221 m!1097835))

(assert (=> b!856221 m!1097837))

(assert (=> b!856221 m!1097837))

(declare-fun m!1097847 () Bool)

(assert (=> b!856221 m!1097847))

(assert (=> b!856215 m!1097833))

(assert (=> b!856215 m!1097833))

(assert (=> b!856215 m!1097835))

(assert (=> b!856215 m!1097835))

(declare-fun m!1097849 () Bool)

(assert (=> b!856215 m!1097849))

(declare-fun m!1097851 () Bool)

(assert (=> d!267914 m!1097851))

(assert (=> d!267914 m!1097027))

(assert (=> b!855766 d!267914))

(assert (=> b!855766 d!267632))

(declare-fun b!856271 () Bool)

(declare-fun e!563573 () List!9247)

(assert (=> b!856271 (= e!563573 lt!323678)))

(declare-fun b!856273 () Bool)

(declare-fun res!390849 () Bool)

(declare-fun e!563572 () Bool)

(assert (=> b!856273 (=> (not res!390849) (not e!563572))))

(declare-fun lt!323822 () List!9247)

(assert (=> b!856273 (= res!390849 (= (size!7706 lt!323822) (+ (size!7706 (++!2390 lt!323676 lt!323680)) (size!7706 lt!323678))))))

(declare-fun b!856274 () Bool)

(assert (=> b!856274 (= e!563572 (or (not (= lt!323678 Nil!9231)) (= lt!323822 (++!2390 lt!323676 lt!323680))))))

(declare-fun d!267916 () Bool)

(assert (=> d!267916 e!563572))

(declare-fun res!390848 () Bool)

(assert (=> d!267916 (=> (not res!390848) (not e!563572))))

(assert (=> d!267916 (= res!390848 (= (content!1351 lt!323822) ((_ map or) (content!1351 (++!2390 lt!323676 lt!323680)) (content!1351 lt!323678))))))

(assert (=> d!267916 (= lt!323822 e!563573)))

(declare-fun c!138839 () Bool)

(assert (=> d!267916 (= c!138839 ((_ is Nil!9231) (++!2390 lt!323676 lt!323680)))))

(assert (=> d!267916 (= (++!2390 (++!2390 lt!323676 lt!323680) lt!323678) lt!323822)))

(declare-fun b!856272 () Bool)

(assert (=> b!856272 (= e!563573 (Cons!9231 (h!14632 (++!2390 lt!323676 lt!323680)) (++!2390 (t!96469 (++!2390 lt!323676 lt!323680)) lt!323678)))))

(assert (= (and d!267916 c!138839) b!856271))

(assert (= (and d!267916 (not c!138839)) b!856272))

(assert (= (and d!267916 res!390848) b!856273))

(assert (= (and b!856273 res!390849) b!856274))

(declare-fun m!1097853 () Bool)

(assert (=> b!856273 m!1097853))

(assert (=> b!856273 m!1096797))

(declare-fun m!1097855 () Bool)

(assert (=> b!856273 m!1097855))

(declare-fun m!1097857 () Bool)

(assert (=> b!856273 m!1097857))

(declare-fun m!1097859 () Bool)

(assert (=> d!267916 m!1097859))

(assert (=> d!267916 m!1096797))

(declare-fun m!1097861 () Bool)

(assert (=> d!267916 m!1097861))

(declare-fun m!1097863 () Bool)

(assert (=> d!267916 m!1097863))

(declare-fun m!1097865 () Bool)

(assert (=> b!856272 m!1097865))

(assert (=> b!855766 d!267916))

(declare-fun b!856275 () Bool)

(declare-fun e!563575 () List!9247)

(assert (=> b!856275 (= e!563575 (++!2390 lt!323680 lt!323678))))

(declare-fun b!856277 () Bool)

(declare-fun res!390851 () Bool)

(declare-fun e!563574 () Bool)

(assert (=> b!856277 (=> (not res!390851) (not e!563574))))

(declare-fun lt!323823 () List!9247)

(assert (=> b!856277 (= res!390851 (= (size!7706 lt!323823) (+ (size!7706 lt!323676) (size!7706 (++!2390 lt!323680 lt!323678)))))))

(declare-fun b!856278 () Bool)

(assert (=> b!856278 (= e!563574 (or (not (= (++!2390 lt!323680 lt!323678) Nil!9231)) (= lt!323823 lt!323676)))))

(declare-fun d!267918 () Bool)

(assert (=> d!267918 e!563574))

(declare-fun res!390850 () Bool)

(assert (=> d!267918 (=> (not res!390850) (not e!563574))))

(assert (=> d!267918 (= res!390850 (= (content!1351 lt!323823) ((_ map or) (content!1351 lt!323676) (content!1351 (++!2390 lt!323680 lt!323678)))))))

(assert (=> d!267918 (= lt!323823 e!563575)))

(declare-fun c!138840 () Bool)

(assert (=> d!267918 (= c!138840 ((_ is Nil!9231) lt!323676))))

(assert (=> d!267918 (= (++!2390 lt!323676 (++!2390 lt!323680 lt!323678)) lt!323823)))

(declare-fun b!856276 () Bool)

(assert (=> b!856276 (= e!563575 (Cons!9231 (h!14632 lt!323676) (++!2390 (t!96469 lt!323676) (++!2390 lt!323680 lt!323678))))))

(assert (= (and d!267918 c!138840) b!856275))

(assert (= (and d!267918 (not c!138840)) b!856276))

(assert (= (and d!267918 res!390850) b!856277))

(assert (= (and b!856277 res!390851) b!856278))

(declare-fun m!1097875 () Bool)

(assert (=> b!856277 m!1097875))

(declare-fun m!1097877 () Bool)

(assert (=> b!856277 m!1097877))

(assert (=> b!856277 m!1096787))

(declare-fun m!1097879 () Bool)

(assert (=> b!856277 m!1097879))

(declare-fun m!1097881 () Bool)

(assert (=> d!267918 m!1097881))

(declare-fun m!1097883 () Bool)

(assert (=> d!267918 m!1097883))

(assert (=> d!267918 m!1096787))

(declare-fun m!1097885 () Bool)

(assert (=> d!267918 m!1097885))

(assert (=> b!856276 m!1096787))

(declare-fun m!1097887 () Bool)

(assert (=> b!856276 m!1097887))

(assert (=> b!855766 d!267918))

(declare-fun b!856287 () Bool)

(declare-fun e!563579 () List!9247)

(assert (=> b!856287 (= e!563579 lt!323680)))

(declare-fun b!856289 () Bool)

(declare-fun res!390853 () Bool)

(declare-fun e!563577 () Bool)

(assert (=> b!856289 (=> (not res!390853) (not e!563577))))

(declare-fun lt!323824 () List!9247)

(assert (=> b!856289 (= res!390853 (= (size!7706 lt!323824) (+ (size!7706 lt!323676) (size!7706 lt!323680))))))

(declare-fun b!856290 () Bool)

(assert (=> b!856290 (= e!563577 (or (not (= lt!323680 Nil!9231)) (= lt!323824 lt!323676)))))

(declare-fun d!267920 () Bool)

(assert (=> d!267920 e!563577))

(declare-fun res!390852 () Bool)

(assert (=> d!267920 (=> (not res!390852) (not e!563577))))

(assert (=> d!267920 (= res!390852 (= (content!1351 lt!323824) ((_ map or) (content!1351 lt!323676) (content!1351 lt!323680))))))

(assert (=> d!267920 (= lt!323824 e!563579)))

(declare-fun c!138841 () Bool)

(assert (=> d!267920 (= c!138841 ((_ is Nil!9231) lt!323676))))

(assert (=> d!267920 (= (++!2390 lt!323676 lt!323680) lt!323824)))

(declare-fun b!856288 () Bool)

(assert (=> b!856288 (= e!563579 (Cons!9231 (h!14632 lt!323676) (++!2390 (t!96469 lt!323676) lt!323680)))))

(assert (= (and d!267920 c!138841) b!856287))

(assert (= (and d!267920 (not c!138841)) b!856288))

(assert (= (and d!267920 res!390852) b!856289))

(assert (= (and b!856289 res!390853) b!856290))

(declare-fun m!1097889 () Bool)

(assert (=> b!856289 m!1097889))

(assert (=> b!856289 m!1097877))

(declare-fun m!1097891 () Bool)

(assert (=> b!856289 m!1097891))

(declare-fun m!1097893 () Bool)

(assert (=> d!267920 m!1097893))

(assert (=> d!267920 m!1097883))

(declare-fun m!1097895 () Bool)

(assert (=> d!267920 m!1097895))

(declare-fun m!1097897 () Bool)

(assert (=> b!856288 m!1097897))

(assert (=> b!855766 d!267920))

(declare-fun b!856299 () Bool)

(declare-fun e!563583 () List!9247)

(assert (=> b!856299 (= e!563583 lt!323678)))

(declare-fun b!856301 () Bool)

(declare-fun res!390855 () Bool)

(declare-fun e!563582 () Bool)

(assert (=> b!856301 (=> (not res!390855) (not e!563582))))

(declare-fun lt!323825 () List!9247)

(assert (=> b!856301 (= res!390855 (= (size!7706 lt!323825) (+ (size!7706 lt!323680) (size!7706 lt!323678))))))

(declare-fun b!856302 () Bool)

(assert (=> b!856302 (= e!563582 (or (not (= lt!323678 Nil!9231)) (= lt!323825 lt!323680)))))

(declare-fun d!267922 () Bool)

(assert (=> d!267922 e!563582))

(declare-fun res!390854 () Bool)

(assert (=> d!267922 (=> (not res!390854) (not e!563582))))

(assert (=> d!267922 (= res!390854 (= (content!1351 lt!323825) ((_ map or) (content!1351 lt!323680) (content!1351 lt!323678))))))

(assert (=> d!267922 (= lt!323825 e!563583)))

(declare-fun c!138842 () Bool)

(assert (=> d!267922 (= c!138842 ((_ is Nil!9231) lt!323680))))

(assert (=> d!267922 (= (++!2390 lt!323680 lt!323678) lt!323825)))

(declare-fun b!856300 () Bool)

(assert (=> b!856300 (= e!563583 (Cons!9231 (h!14632 lt!323680) (++!2390 (t!96469 lt!323680) lt!323678)))))

(assert (= (and d!267922 c!138842) b!856299))

(assert (= (and d!267922 (not c!138842)) b!856300))

(assert (= (and d!267922 res!390854) b!856301))

(assert (= (and b!856301 res!390855) b!856302))

(declare-fun m!1097899 () Bool)

(assert (=> b!856301 m!1097899))

(assert (=> b!856301 m!1097891))

(assert (=> b!856301 m!1097857))

(declare-fun m!1097901 () Bool)

(assert (=> d!267922 m!1097901))

(assert (=> d!267922 m!1097895))

(assert (=> d!267922 m!1097863))

(declare-fun m!1097903 () Bool)

(assert (=> b!856300 m!1097903))

(assert (=> b!855766 d!267922))

(assert (=> b!855766 d!267628))

(declare-fun d!267924 () Bool)

(assert (=> d!267924 (= ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297) separatorToken!297) (h!14633 (tail!1044 l!5107))) (Cons!9232 (h!14633 (tail!1044 l!5107)) ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297) separatorToken!297)))))

(assert (=> b!855766 d!267924))

(declare-fun d!267926 () Bool)

(assert (=> d!267926 (= (list!3637 (charsOf!999 (h!14633 (tail!1044 l!5107)))) (list!3640 (c!138700 (charsOf!999 (h!14633 (tail!1044 l!5107))))))))

(declare-fun bs!231865 () Bool)

(assert (= bs!231865 d!267926))

(declare-fun m!1097905 () Bool)

(assert (=> bs!231865 m!1097905))

(assert (=> b!855766 d!267926))

(declare-fun d!267928 () Bool)

(declare-fun c!138843 () Bool)

(assert (=> d!267928 (= c!138843 ((_ is Cons!9232) (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297)))))

(declare-fun e!563588 () List!9247)

(assert (=> d!267928 (= (printList!482 thiss!20117 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297)) e!563588)))

(declare-fun b!856315 () Bool)

(assert (=> b!856315 (= e!563588 (++!2390 (list!3637 (charsOf!999 (h!14633 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297)))) (printList!482 thiss!20117 (t!96470 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297)))))))

(declare-fun b!856316 () Bool)

(assert (=> b!856316 (= e!563588 Nil!9231)))

(assert (= (and d!267928 c!138843) b!856315))

(assert (= (and d!267928 (not c!138843)) b!856316))

(declare-fun m!1097907 () Bool)

(assert (=> b!856315 m!1097907))

(assert (=> b!856315 m!1097907))

(declare-fun m!1097909 () Bool)

(assert (=> b!856315 m!1097909))

(declare-fun m!1097911 () Bool)

(assert (=> b!856315 m!1097911))

(assert (=> b!856315 m!1097909))

(assert (=> b!856315 m!1097911))

(declare-fun m!1097913 () Bool)

(assert (=> b!856315 m!1097913))

(assert (=> b!855766 d!267928))

(declare-fun d!267930 () Bool)

(assert (=> d!267930 (= (++!2390 (++!2390 lt!323676 lt!323680) lt!323678) (++!2390 lt!323676 (++!2390 lt!323680 lt!323678)))))

(declare-fun lt!323826 () Unit!13731)

(assert (=> d!267930 (= lt!323826 (choose!5045 lt!323676 lt!323680 lt!323678))))

(assert (=> d!267930 (= (lemmaConcatAssociativity!757 lt!323676 lt!323680 lt!323678) lt!323826)))

(declare-fun bs!231866 () Bool)

(assert (= bs!231866 d!267930))

(declare-fun m!1097915 () Bool)

(assert (=> bs!231866 m!1097915))

(assert (=> bs!231866 m!1096787))

(assert (=> bs!231866 m!1096789))

(assert (=> bs!231866 m!1096797))

(assert (=> bs!231866 m!1096787))

(assert (=> bs!231866 m!1096797))

(assert (=> bs!231866 m!1096801))

(assert (=> b!855766 d!267930))

(declare-fun d!267932 () Bool)

(declare-fun lt!323829 () Token!3130)

(declare-fun apply!1918 (List!9248 Int) Token!3130)

(assert (=> d!267932 (= lt!323829 (apply!1918 (list!3638 (_1!6032 lt!323686)) 0))))

(declare-fun apply!1919 (Conc!3061 Int) Token!3130)

(assert (=> d!267932 (= lt!323829 (apply!1919 (c!138742 (_1!6032 lt!323686)) 0))))

(declare-fun e!563607 () Bool)

(assert (=> d!267932 e!563607))

(declare-fun res!390858 () Bool)

(assert (=> d!267932 (=> (not res!390858) (not e!563607))))

(assert (=> d!267932 (= res!390858 (<= 0 0))))

(assert (=> d!267932 (= (apply!1915 (_1!6032 lt!323686) 0) lt!323829)))

(declare-fun b!856341 () Bool)

(assert (=> b!856341 (= e!563607 (< 0 (size!7707 (_1!6032 lt!323686))))))

(assert (= (and d!267932 res!390858) b!856341))

(assert (=> d!267932 m!1097671))

(assert (=> d!267932 m!1097671))

(declare-fun m!1097933 () Bool)

(assert (=> d!267932 m!1097933))

(declare-fun m!1097935 () Bool)

(assert (=> d!267932 m!1097935))

(assert (=> b!856341 m!1096835))

(assert (=> b!855784 d!267932))

(declare-fun d!267940 () Bool)

(assert (=> d!267940 (= (isEmpty!5472 (originalCharacters!2288 (h!14633 l!5107))) ((_ is Nil!9231) (originalCharacters!2288 (h!14633 l!5107))))))

(assert (=> d!267584 d!267940))

(declare-fun c!138844 () Bool)

(declare-fun d!267942 () Bool)

(assert (=> d!267942 (= c!138844 ((_ is Cons!9232) ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297) separatorToken!297) (h!14633 l!5107))))))

(declare-fun e!563608 () List!9247)

(assert (=> d!267942 (= (printList!482 thiss!20117 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297) separatorToken!297) (h!14633 l!5107))) e!563608)))

(declare-fun b!856342 () Bool)

(assert (=> b!856342 (= e!563608 (++!2390 (list!3637 (charsOf!999 (h!14633 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297) separatorToken!297) (h!14633 l!5107))))) (printList!482 thiss!20117 (t!96470 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297) separatorToken!297) (h!14633 l!5107))))))))

(declare-fun b!856343 () Bool)

(assert (=> b!856343 (= e!563608 Nil!9231)))

(assert (= (and d!267942 c!138844) b!856342))

(assert (= (and d!267942 (not c!138844)) b!856343))

(declare-fun m!1097937 () Bool)

(assert (=> b!856342 m!1097937))

(assert (=> b!856342 m!1097937))

(declare-fun m!1097939 () Bool)

(assert (=> b!856342 m!1097939))

(declare-fun m!1097941 () Bool)

(assert (=> b!856342 m!1097941))

(assert (=> b!856342 m!1097939))

(assert (=> b!856342 m!1097941))

(declare-fun m!1097943 () Bool)

(assert (=> b!856342 m!1097943))

(assert (=> b!855652 d!267942))

(assert (=> b!855652 d!267640))

(assert (=> b!855652 d!267644))

(assert (=> b!855652 d!267646))

(declare-fun b!856344 () Bool)

(declare-fun e!563610 () List!9247)

(assert (=> b!856344 (= e!563610 (printList!482 thiss!20117 (t!96470 lt!323662)))))

(declare-fun b!856346 () Bool)

(declare-fun res!390860 () Bool)

(declare-fun e!563609 () Bool)

(assert (=> b!856346 (=> (not res!390860) (not e!563609))))

(declare-fun lt!323830 () List!9247)

(assert (=> b!856346 (= res!390860 (= (size!7706 lt!323830) (+ (size!7706 (list!3637 (charsOf!999 (h!14633 lt!323662)))) (size!7706 (printList!482 thiss!20117 (t!96470 lt!323662))))))))

(declare-fun b!856347 () Bool)

(assert (=> b!856347 (= e!563609 (or (not (= (printList!482 thiss!20117 (t!96470 lt!323662)) Nil!9231)) (= lt!323830 (list!3637 (charsOf!999 (h!14633 lt!323662))))))))

(declare-fun d!267944 () Bool)

(assert (=> d!267944 e!563609))

(declare-fun res!390859 () Bool)

(assert (=> d!267944 (=> (not res!390859) (not e!563609))))

(assert (=> d!267944 (= res!390859 (= (content!1351 lt!323830) ((_ map or) (content!1351 (list!3637 (charsOf!999 (h!14633 lt!323662)))) (content!1351 (printList!482 thiss!20117 (t!96470 lt!323662))))))))

(assert (=> d!267944 (= lt!323830 e!563610)))

(declare-fun c!138845 () Bool)

(assert (=> d!267944 (= c!138845 ((_ is Nil!9231) (list!3637 (charsOf!999 (h!14633 lt!323662)))))))

(assert (=> d!267944 (= (++!2390 (list!3637 (charsOf!999 (h!14633 lt!323662))) (printList!482 thiss!20117 (t!96470 lt!323662))) lt!323830)))

(declare-fun b!856345 () Bool)

(assert (=> b!856345 (= e!563610 (Cons!9231 (h!14632 (list!3637 (charsOf!999 (h!14633 lt!323662)))) (++!2390 (t!96469 (list!3637 (charsOf!999 (h!14633 lt!323662)))) (printList!482 thiss!20117 (t!96470 lt!323662)))))))

(assert (= (and d!267944 c!138845) b!856344))

(assert (= (and d!267944 (not c!138845)) b!856345))

(assert (= (and d!267944 res!390859) b!856346))

(assert (= (and b!856346 res!390860) b!856347))

(declare-fun m!1097945 () Bool)

(assert (=> b!856346 m!1097945))

(assert (=> b!856346 m!1096627))

(declare-fun m!1097947 () Bool)

(assert (=> b!856346 m!1097947))

(assert (=> b!856346 m!1096629))

(declare-fun m!1097949 () Bool)

(assert (=> b!856346 m!1097949))

(declare-fun m!1097951 () Bool)

(assert (=> d!267944 m!1097951))

(assert (=> d!267944 m!1096627))

(declare-fun m!1097953 () Bool)

(assert (=> d!267944 m!1097953))

(assert (=> d!267944 m!1096629))

(declare-fun m!1097955 () Bool)

(assert (=> d!267944 m!1097955))

(assert (=> b!856345 m!1096629))

(declare-fun m!1097957 () Bool)

(assert (=> b!856345 m!1097957))

(assert (=> b!855650 d!267944))

(declare-fun d!267946 () Bool)

(assert (=> d!267946 (= (list!3637 (charsOf!999 (h!14633 lt!323662))) (list!3640 (c!138700 (charsOf!999 (h!14633 lt!323662)))))))

(declare-fun bs!231870 () Bool)

(assert (= bs!231870 d!267946))

(declare-fun m!1097959 () Bool)

(assert (=> bs!231870 m!1097959))

(assert (=> b!855650 d!267946))

(declare-fun d!267948 () Bool)

(declare-fun lt!323831 () BalanceConc!6132)

(assert (=> d!267948 (= (list!3637 lt!323831) (originalCharacters!2288 (h!14633 lt!323662)))))

(assert (=> d!267948 (= lt!323831 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323662)))) (value!56061 (h!14633 lt!323662))))))

(assert (=> d!267948 (= (charsOf!999 (h!14633 lt!323662)) lt!323831)))

(declare-fun b_lambda!28795 () Bool)

(assert (=> (not b_lambda!28795) (not d!267948)))

(declare-fun tb!60695 () Bool)

(declare-fun t!96647 () Bool)

(assert (=> (and b!855824 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323662))))) t!96647) tb!60695))

(declare-fun b!856348 () Bool)

(declare-fun e!563611 () Bool)

(declare-fun tp!270039 () Bool)

(assert (=> b!856348 (= e!563611 (and (inv!11746 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323662)))) (value!56061 (h!14633 lt!323662))))) tp!270039))))

(declare-fun result!70274 () Bool)

(assert (=> tb!60695 (= result!70274 (and (inv!11747 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323662)))) (value!56061 (h!14633 lt!323662)))) e!563611))))

(assert (= tb!60695 b!856348))

(declare-fun m!1097961 () Bool)

(assert (=> b!856348 m!1097961))

(declare-fun m!1097963 () Bool)

(assert (=> tb!60695 m!1097963))

(assert (=> d!267948 t!96647))

(declare-fun b_and!75735 () Bool)

(assert (= b_and!75717 (and (=> t!96647 result!70274) b_and!75735)))

(declare-fun tb!60697 () Bool)

(declare-fun t!96649 () Bool)

(assert (=> (and b!855473 (= (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323662))))) t!96649) tb!60697))

(declare-fun result!70276 () Bool)

(assert (= result!70276 result!70274))

(assert (=> d!267948 t!96649))

(declare-fun b_and!75737 () Bool)

(assert (= b_and!75723 (and (=> t!96649 result!70276) b_and!75737)))

(declare-fun t!96651 () Bool)

(declare-fun tb!60699 () Bool)

(assert (=> (and b!855462 (= (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323662))))) t!96651) tb!60699))

(declare-fun result!70278 () Bool)

(assert (= result!70278 result!70274))

(assert (=> d!267948 t!96651))

(declare-fun b_and!75739 () Bool)

(assert (= b_and!75719 (and (=> t!96651 result!70278) b_and!75739)))

(declare-fun t!96653 () Bool)

(declare-fun tb!60701 () Bool)

(assert (=> (and b!855835 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 rules!2621)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323662))))) t!96653) tb!60701))

(declare-fun result!70280 () Bool)

(assert (= result!70280 result!70274))

(assert (=> d!267948 t!96653))

(declare-fun b_and!75741 () Bool)

(assert (= b_and!75725 (and (=> t!96653 result!70280) b_and!75741)))

(declare-fun t!96655 () Bool)

(declare-fun tb!60703 () Bool)

(assert (=> (and b!855459 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323662))))) t!96655) tb!60703))

(declare-fun result!70282 () Bool)

(assert (= result!70282 result!70274))

(assert (=> d!267948 t!96655))

(declare-fun b_and!75743 () Bool)

(assert (= b_and!75721 (and (=> t!96655 result!70282) b_and!75743)))

(declare-fun m!1097965 () Bool)

(assert (=> d!267948 m!1097965))

(declare-fun m!1097967 () Bool)

(assert (=> d!267948 m!1097967))

(assert (=> b!855650 d!267948))

(declare-fun d!267950 () Bool)

(declare-fun c!138846 () Bool)

(assert (=> d!267950 (= c!138846 ((_ is Cons!9232) (t!96470 lt!323662)))))

(declare-fun e!563612 () List!9247)

(assert (=> d!267950 (= (printList!482 thiss!20117 (t!96470 lt!323662)) e!563612)))

(declare-fun b!856349 () Bool)

(assert (=> b!856349 (= e!563612 (++!2390 (list!3637 (charsOf!999 (h!14633 (t!96470 lt!323662)))) (printList!482 thiss!20117 (t!96470 (t!96470 lt!323662)))))))

(declare-fun b!856350 () Bool)

(assert (=> b!856350 (= e!563612 Nil!9231)))

(assert (= (and d!267950 c!138846) b!856349))

(assert (= (and d!267950 (not c!138846)) b!856350))

(declare-fun m!1097969 () Bool)

(assert (=> b!856349 m!1097969))

(assert (=> b!856349 m!1097969))

(declare-fun m!1097971 () Bool)

(assert (=> b!856349 m!1097971))

(declare-fun m!1097973 () Bool)

(assert (=> b!856349 m!1097973))

(assert (=> b!856349 m!1097971))

(assert (=> b!856349 m!1097973))

(declare-fun m!1097975 () Bool)

(assert (=> b!856349 m!1097975))

(assert (=> b!855650 d!267950))

(declare-fun d!267952 () Bool)

(declare-fun charsToBigInt!0 (List!9246 Int) Int)

(assert (=> d!267952 (= (inv!15 (value!56061 separatorToken!297)) (= (charsToBigInt!0 (text!13035 (value!56061 separatorToken!297)) 0) (value!56056 (value!56061 separatorToken!297))))))

(declare-fun bs!231871 () Bool)

(assert (= bs!231871 d!267952))

(declare-fun m!1097977 () Bool)

(assert (=> bs!231871 m!1097977))

(assert (=> b!855506 d!267952))

(declare-fun c!138847 () Bool)

(declare-fun d!267954 () Bool)

(assert (=> d!267954 (= c!138847 ((_ is Cons!9232) ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297) separatorToken!297)))))

(declare-fun e!563613 () List!9247)

(assert (=> d!267954 (= (printList!482 thiss!20117 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297) separatorToken!297)) e!563613)))

(declare-fun b!856351 () Bool)

(assert (=> b!856351 (= e!563613 (++!2390 (list!3637 (charsOf!999 (h!14633 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297) separatorToken!297)))) (printList!482 thiss!20117 (t!96470 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297) separatorToken!297)))))))

(declare-fun b!856352 () Bool)

(assert (=> b!856352 (= e!563613 Nil!9231)))

(assert (= (and d!267954 c!138847) b!856351))

(assert (= (and d!267954 (not c!138847)) b!856352))

(declare-fun m!1097979 () Bool)

(assert (=> b!856351 m!1097979))

(assert (=> b!856351 m!1097979))

(declare-fun m!1097981 () Bool)

(assert (=> b!856351 m!1097981))

(declare-fun m!1097983 () Bool)

(assert (=> b!856351 m!1097983))

(assert (=> b!856351 m!1097981))

(assert (=> b!856351 m!1097983))

(declare-fun m!1097985 () Bool)

(assert (=> b!856351 m!1097985))

(assert (=> b!855761 d!267954))

(assert (=> b!855761 d!267900))

(assert (=> b!855761 d!267914))

(declare-fun d!267956 () Bool)

(assert (=> d!267956 (= (list!3637 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107)))) (list!3640 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107))))))))

(declare-fun bs!231872 () Bool)

(assert (= bs!231872 d!267956))

(declare-fun m!1097987 () Bool)

(assert (=> bs!231872 m!1097987))

(assert (=> b!855755 d!267956))

(declare-fun d!267958 () Bool)

(declare-fun res!390861 () Bool)

(declare-fun e!563614 () Bool)

(assert (=> d!267958 (=> (not res!390861) (not e!563614))))

(assert (=> d!267958 (= res!390861 (not (isEmpty!5472 (originalCharacters!2288 (h!14633 (t!96470 l!5107))))))))

(assert (=> d!267958 (= (inv!11743 (h!14633 (t!96470 l!5107))) e!563614)))

(declare-fun b!856353 () Bool)

(declare-fun res!390862 () Bool)

(assert (=> b!856353 (=> (not res!390862) (not e!563614))))

(assert (=> b!856353 (= res!390862 (= (originalCharacters!2288 (h!14633 (t!96470 l!5107))) (list!3637 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) (value!56061 (h!14633 (t!96470 l!5107)))))))))

(declare-fun b!856354 () Bool)

(assert (=> b!856354 (= e!563614 (= (size!7703 (h!14633 (t!96470 l!5107))) (size!7706 (originalCharacters!2288 (h!14633 (t!96470 l!5107))))))))

(assert (= (and d!267958 res!390861) b!856353))

(assert (= (and b!856353 res!390862) b!856354))

(declare-fun b_lambda!28797 () Bool)

(assert (=> (not b_lambda!28797) (not b!856353)))

(declare-fun t!96657 () Bool)

(declare-fun tb!60705 () Bool)

(assert (=> (and b!855473 (= (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107)))))) t!96657) tb!60705))

(declare-fun b!856355 () Bool)

(declare-fun e!563615 () Bool)

(declare-fun tp!270040 () Bool)

(assert (=> b!856355 (= e!563615 (and (inv!11746 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) (value!56061 (h!14633 (t!96470 l!5107)))))) tp!270040))))

(declare-fun result!70284 () Bool)

(assert (=> tb!60705 (= result!70284 (and (inv!11747 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) (value!56061 (h!14633 (t!96470 l!5107))))) e!563615))))

(assert (= tb!60705 b!856355))

(declare-fun m!1097989 () Bool)

(assert (=> b!856355 m!1097989))

(declare-fun m!1097991 () Bool)

(assert (=> tb!60705 m!1097991))

(assert (=> b!856353 t!96657))

(declare-fun b_and!75745 () Bool)

(assert (= b_and!75737 (and (=> t!96657 result!70284) b_and!75745)))

(declare-fun tb!60707 () Bool)

(declare-fun t!96659 () Bool)

(assert (=> (and b!855462 (= (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107)))))) t!96659) tb!60707))

(declare-fun result!70286 () Bool)

(assert (= result!70286 result!70284))

(assert (=> b!856353 t!96659))

(declare-fun b_and!75747 () Bool)

(assert (= b_and!75739 (and (=> t!96659 result!70286) b_and!75747)))

(declare-fun t!96661 () Bool)

(declare-fun tb!60709 () Bool)

(assert (=> (and b!855824 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107)))))) t!96661) tb!60709))

(declare-fun result!70288 () Bool)

(assert (= result!70288 result!70284))

(assert (=> b!856353 t!96661))

(declare-fun b_and!75749 () Bool)

(assert (= b_and!75735 (and (=> t!96661 result!70288) b_and!75749)))

(declare-fun t!96663 () Bool)

(declare-fun tb!60711 () Bool)

(assert (=> (and b!855459 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107)))))) t!96663) tb!60711))

(declare-fun result!70290 () Bool)

(assert (= result!70290 result!70284))

(assert (=> b!856353 t!96663))

(declare-fun b_and!75751 () Bool)

(assert (= b_and!75743 (and (=> t!96663 result!70290) b_and!75751)))

(declare-fun tb!60713 () Bool)

(declare-fun t!96665 () Bool)

(assert (=> (and b!855835 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 rules!2621)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107)))))) t!96665) tb!60713))

(declare-fun result!70292 () Bool)

(assert (= result!70292 result!70284))

(assert (=> b!856353 t!96665))

(declare-fun b_and!75753 () Bool)

(assert (= b_and!75741 (and (=> t!96665 result!70292) b_and!75753)))

(declare-fun m!1097993 () Bool)

(assert (=> d!267958 m!1097993))

(declare-fun m!1097995 () Bool)

(assert (=> b!856353 m!1097995))

(assert (=> b!856353 m!1097995))

(declare-fun m!1097997 () Bool)

(assert (=> b!856353 m!1097997))

(declare-fun m!1097999 () Bool)

(assert (=> b!856354 m!1097999))

(assert (=> b!855821 d!267958))

(declare-fun c!138848 () Bool)

(declare-fun d!267960 () Bool)

(assert (=> d!267960 (= c!138848 ((_ is Cons!9232) ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297) separatorToken!297)))))

(declare-fun e!563616 () List!9247)

(assert (=> d!267960 (= (printList!482 thiss!20117 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297) separatorToken!297)) e!563616)))

(declare-fun b!856356 () Bool)

(assert (=> b!856356 (= e!563616 (++!2390 (list!3637 (charsOf!999 (h!14633 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297) separatorToken!297)))) (printList!482 thiss!20117 (t!96470 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 l!5107) separatorToken!297) separatorToken!297)))))))

(declare-fun b!856357 () Bool)

(assert (=> b!856357 (= e!563616 Nil!9231)))

(assert (= (and d!267960 c!138848) b!856356))

(assert (= (and d!267960 (not c!138848)) b!856357))

(declare-fun m!1098001 () Bool)

(assert (=> b!856356 m!1098001))

(assert (=> b!856356 m!1098001))

(declare-fun m!1098003 () Bool)

(assert (=> b!856356 m!1098003))

(declare-fun m!1098005 () Bool)

(assert (=> b!856356 m!1098005))

(assert (=> b!856356 m!1098003))

(assert (=> b!856356 m!1098005))

(declare-fun m!1098007 () Bool)

(assert (=> b!856356 m!1098007))

(assert (=> b!855646 d!267960))

(assert (=> b!855646 d!267644))

(assert (=> b!855646 d!267646))

(declare-fun bs!231873 () Bool)

(declare-fun d!267962 () Bool)

(assert (= bs!231873 (and d!267962 d!267830)))

(declare-fun lambda!25678 () Int)

(assert (=> bs!231873 (= (and (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297)))) (= (toValue!2785 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toValue!2785 (transformation!1732 (rule!3155 separatorToken!297))))) (= lambda!25678 lambda!25673))))

(assert (=> d!267962 true))

(assert (=> d!267962 (< (dynLambda!4335 order!5967 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107))))) (dynLambda!4341 order!5975 lambda!25678))))

(assert (=> d!267962 true))

(assert (=> d!267962 (< (dynLambda!4333 order!5963 (toValue!2785 (transformation!1732 (rule!3155 (h!14633 l!5107))))) (dynLambda!4341 order!5975 lambda!25678))))

(assert (=> d!267962 (= (semiInverseModEq!677 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toValue!2785 (transformation!1732 (rule!3155 (h!14633 l!5107))))) (Forall!419 lambda!25678))))

(declare-fun bs!231874 () Bool)

(assert (= bs!231874 d!267962))

(declare-fun m!1098009 () Bool)

(assert (=> bs!231874 m!1098009))

(assert (=> d!267524 d!267962))

(declare-fun d!267964 () Bool)

(assert (=> d!267964 (= (inv!15 (value!56061 (h!14633 l!5107))) (= (charsToBigInt!0 (text!13035 (value!56061 (h!14633 l!5107))) 0) (value!56056 (value!56061 (h!14633 l!5107)))))))

(declare-fun bs!231875 () Bool)

(assert (= bs!231875 d!267964))

(declare-fun m!1098011 () Bool)

(assert (=> bs!231875 m!1098011))

(assert (=> b!855771 d!267964))

(declare-fun d!267966 () Bool)

(declare-fun charsToBigInt!1 (List!9246) Int)

(assert (=> d!267966 (= (inv!17 (value!56061 (h!14633 l!5107))) (= (charsToBigInt!1 (text!13034 (value!56061 (h!14633 l!5107)))) (value!56053 (value!56061 (h!14633 l!5107)))))))

(declare-fun bs!231876 () Bool)

(assert (= bs!231876 d!267966))

(declare-fun m!1098013 () Bool)

(assert (=> bs!231876 m!1098013))

(assert (=> b!855773 d!267966))

(declare-fun d!267968 () Bool)

(declare-fun res!390867 () Bool)

(declare-fun e!563621 () Bool)

(assert (=> d!267968 (=> res!390867 e!563621)))

(assert (=> d!267968 (= res!390867 ((_ is Nil!9233) rules!2621))))

(assert (=> d!267968 (= (noDuplicateTag!609 thiss!20117 rules!2621 Nil!9235) e!563621)))

(declare-fun b!856362 () Bool)

(declare-fun e!563622 () Bool)

(assert (=> b!856362 (= e!563621 e!563622)))

(declare-fun res!390868 () Bool)

(assert (=> b!856362 (=> (not res!390868) (not e!563622))))

(declare-fun contains!1706 (List!9251 String!10888) Bool)

(assert (=> b!856362 (= res!390868 (not (contains!1706 Nil!9235 (tag!1994 (h!14634 rules!2621)))))))

(declare-fun b!856363 () Bool)

(assert (=> b!856363 (= e!563622 (noDuplicateTag!609 thiss!20117 (t!96471 rules!2621) (Cons!9235 (tag!1994 (h!14634 rules!2621)) Nil!9235)))))

(assert (= (and d!267968 (not res!390867)) b!856362))

(assert (= (and b!856362 res!390868) b!856363))

(declare-fun m!1098015 () Bool)

(assert (=> b!856362 m!1098015))

(declare-fun m!1098017 () Bool)

(assert (=> b!856363 m!1098017))

(assert (=> b!855776 d!267968))

(declare-fun d!267970 () Bool)

(declare-fun lt!323832 () Bool)

(assert (=> d!267970 (= lt!323832 (isEmpty!5472 (list!3637 (_2!6032 lt!323686))))))

(assert (=> d!267970 (= lt!323832 (isEmpty!5476 (c!138700 (_2!6032 lt!323686))))))

(assert (=> d!267970 (= (isEmpty!5473 (_2!6032 lt!323686)) lt!323832)))

(declare-fun bs!231877 () Bool)

(assert (= bs!231877 d!267970))

(declare-fun m!1098019 () Bool)

(assert (=> bs!231877 m!1098019))

(assert (=> bs!231877 m!1098019))

(declare-fun m!1098021 () Bool)

(assert (=> bs!231877 m!1098021))

(declare-fun m!1098023 () Bool)

(assert (=> bs!231877 m!1098023))

(assert (=> b!855785 d!267970))

(declare-fun d!267972 () Bool)

(assert (=> d!267972 (= (inv!11747 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297))) (isBalanced!847 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297)))))))

(declare-fun bs!231878 () Bool)

(assert (= bs!231878 d!267972))

(declare-fun m!1098025 () Bool)

(assert (=> bs!231878 m!1098025))

(assert (=> tb!60553 d!267972))

(declare-fun d!267974 () Bool)

(assert (=> d!267974 (= (inv!11739 (tag!1994 (h!14634 (t!96471 rules!2621)))) (= (mod (str.len (value!56060 (tag!1994 (h!14634 (t!96471 rules!2621))))) 2) 0))))

(assert (=> b!855834 d!267974))

(declare-fun d!267976 () Bool)

(declare-fun res!390869 () Bool)

(declare-fun e!563623 () Bool)

(assert (=> d!267976 (=> (not res!390869) (not e!563623))))

(assert (=> d!267976 (= res!390869 (semiInverseModEq!677 (toChars!2644 (transformation!1732 (h!14634 (t!96471 rules!2621)))) (toValue!2785 (transformation!1732 (h!14634 (t!96471 rules!2621))))))))

(assert (=> d!267976 (= (inv!11742 (transformation!1732 (h!14634 (t!96471 rules!2621)))) e!563623)))

(declare-fun b!856364 () Bool)

(assert (=> b!856364 (= e!563623 (equivClasses!644 (toChars!2644 (transformation!1732 (h!14634 (t!96471 rules!2621)))) (toValue!2785 (transformation!1732 (h!14634 (t!96471 rules!2621))))))))

(assert (= (and d!267976 res!390869) b!856364))

(declare-fun m!1098027 () Bool)

(assert (=> d!267976 m!1098027))

(declare-fun m!1098029 () Bool)

(assert (=> b!856364 m!1098029))

(assert (=> b!855834 d!267976))

(declare-fun d!267978 () Bool)

(declare-fun res!390870 () Bool)

(declare-fun e!563624 () Bool)

(assert (=> d!267978 (=> res!390870 e!563624)))

(assert (=> d!267978 (= res!390870 ((_ is Nil!9232) l!5107))))

(assert (=> d!267978 (= (forall!2189 l!5107 lambda!25651) e!563624)))

(declare-fun b!856365 () Bool)

(declare-fun e!563625 () Bool)

(assert (=> b!856365 (= e!563624 e!563625)))

(declare-fun res!390871 () Bool)

(assert (=> b!856365 (=> (not res!390871) (not e!563625))))

(assert (=> b!856365 (= res!390871 (dynLambda!4336 lambda!25651 (h!14633 l!5107)))))

(declare-fun b!856366 () Bool)

(assert (=> b!856366 (= e!563625 (forall!2189 (t!96470 l!5107) lambda!25651))))

(assert (= (and d!267978 (not res!390870)) b!856365))

(assert (= (and b!856365 res!390871) b!856366))

(declare-fun b_lambda!28799 () Bool)

(assert (=> (not b_lambda!28799) (not b!856365)))

(declare-fun m!1098031 () Bool)

(assert (=> b!856365 m!1098031))

(declare-fun m!1098033 () Bool)

(assert (=> b!856366 m!1098033))

(assert (=> d!267528 d!267978))

(assert (=> d!267528 d!267596))

(declare-fun d!267980 () Bool)

(declare-fun res!390872 () Bool)

(declare-fun e!563626 () Bool)

(assert (=> d!267980 (=> res!390872 e!563626)))

(assert (=> d!267980 (= res!390872 (not ((_ is Cons!9233) (t!96471 rules!2621))))))

(assert (=> d!267980 (= (sepAndNonSepRulesDisjointChars!532 rules!2621 (t!96471 rules!2621)) e!563626)))

(declare-fun b!856367 () Bool)

(declare-fun e!563627 () Bool)

(assert (=> b!856367 (= e!563626 e!563627)))

(declare-fun res!390873 () Bool)

(assert (=> b!856367 (=> (not res!390873) (not e!563627))))

(assert (=> b!856367 (= res!390873 (ruleDisjointCharsFromAllFromOtherType!245 (h!14634 (t!96471 rules!2621)) rules!2621))))

(declare-fun b!856368 () Bool)

(assert (=> b!856368 (= e!563627 (sepAndNonSepRulesDisjointChars!532 rules!2621 (t!96471 (t!96471 rules!2621))))))

(assert (= (and d!267980 (not res!390872)) b!856367))

(assert (= (and b!856367 res!390873) b!856368))

(declare-fun m!1098035 () Bool)

(assert (=> b!856367 m!1098035))

(declare-fun m!1098037 () Bool)

(assert (=> b!856368 m!1098037))

(assert (=> b!855737 d!267980))

(declare-fun bs!231879 () Bool)

(declare-fun d!267982 () Bool)

(assert (= bs!231879 (and d!267982 d!267678)))

(declare-fun lambda!25679 () Int)

(assert (=> bs!231879 (= (= (toValue!2785 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toValue!2785 (transformation!1732 (rule!3155 separatorToken!297)))) (= lambda!25679 lambda!25656))))

(declare-fun bs!231880 () Bool)

(assert (= bs!231880 (and d!267982 d!267896)))

(assert (=> bs!231880 (= (= (toValue!2785 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toValue!2785 (transformation!1732 (h!14634 rules!2621)))) (= lambda!25679 lambda!25676))))

(assert (=> d!267982 true))

(assert (=> d!267982 (< (dynLambda!4333 order!5963 (toValue!2785 (transformation!1732 (rule!3155 (h!14633 l!5107))))) (dynLambda!4340 order!5969 lambda!25679))))

(assert (=> d!267982 (= (equivClasses!644 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toValue!2785 (transformation!1732 (rule!3155 (h!14633 l!5107))))) (Forall2!329 lambda!25679))))

(declare-fun bs!231881 () Bool)

(assert (= bs!231881 d!267982))

(declare-fun m!1098039 () Bool)

(assert (=> bs!231881 m!1098039))

(assert (=> b!855493 d!267982))

(declare-fun d!267984 () Bool)

(assert (=> d!267984 true))

(declare-fun lt!323835 () Bool)

(declare-fun rulesValidInductive!617 (LexerInterface!1534 List!9249) Bool)

(assert (=> d!267984 (= lt!323835 (rulesValidInductive!617 thiss!20117 rules!2621))))

(declare-fun lambda!25682 () Int)

(declare-fun forall!2191 (List!9249 Int) Bool)

(assert (=> d!267984 (= lt!323835 (forall!2191 rules!2621 lambda!25682))))

(assert (=> d!267984 (= (rulesValid!609 thiss!20117 rules!2621) lt!323835)))

(declare-fun bs!231882 () Bool)

(assert (= bs!231882 d!267984))

(declare-fun m!1098041 () Bool)

(assert (=> bs!231882 m!1098041))

(declare-fun m!1098043 () Bool)

(assert (=> bs!231882 m!1098043))

(assert (=> d!267600 d!267984))

(declare-fun bs!231883 () Bool)

(declare-fun d!267986 () Bool)

(assert (= bs!231883 (and d!267986 d!267830)))

(declare-fun lambda!25683 () Int)

(assert (=> bs!231883 (= (and (= (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297)))) (= (toValue!2785 (transformation!1732 (h!14634 rules!2621))) (toValue!2785 (transformation!1732 (rule!3155 separatorToken!297))))) (= lambda!25683 lambda!25673))))

(declare-fun bs!231884 () Bool)

(assert (= bs!231884 (and d!267986 d!267962)))

(assert (=> bs!231884 (= (and (= (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107))))) (= (toValue!2785 (transformation!1732 (h!14634 rules!2621))) (toValue!2785 (transformation!1732 (rule!3155 (h!14633 l!5107)))))) (= lambda!25683 lambda!25678))))

(assert (=> d!267986 true))

(assert (=> d!267986 (< (dynLambda!4335 order!5967 (toChars!2644 (transformation!1732 (h!14634 rules!2621)))) (dynLambda!4341 order!5975 lambda!25683))))

(assert (=> d!267986 true))

(assert (=> d!267986 (< (dynLambda!4333 order!5963 (toValue!2785 (transformation!1732 (h!14634 rules!2621)))) (dynLambda!4341 order!5975 lambda!25683))))

(assert (=> d!267986 (= (semiInverseModEq!677 (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toValue!2785 (transformation!1732 (h!14634 rules!2621)))) (Forall!419 lambda!25683))))

(declare-fun bs!231885 () Bool)

(assert (= bs!231885 d!267986))

(declare-fun m!1098045 () Bool)

(assert (=> bs!231885 m!1098045))

(assert (=> d!267604 d!267986))

(declare-fun b!856371 () Bool)

(declare-fun e!563629 () List!9247)

(assert (=> b!856371 (= e!563629 (printList!482 thiss!20117 (t!96470 lt!323679)))))

(declare-fun b!856373 () Bool)

(declare-fun res!390875 () Bool)

(declare-fun e!563628 () Bool)

(assert (=> b!856373 (=> (not res!390875) (not e!563628))))

(declare-fun lt!323836 () List!9247)

(assert (=> b!856373 (= res!390875 (= (size!7706 lt!323836) (+ (size!7706 (list!3637 (charsOf!999 (h!14633 lt!323679)))) (size!7706 (printList!482 thiss!20117 (t!96470 lt!323679))))))))

(declare-fun b!856374 () Bool)

(assert (=> b!856374 (= e!563628 (or (not (= (printList!482 thiss!20117 (t!96470 lt!323679)) Nil!9231)) (= lt!323836 (list!3637 (charsOf!999 (h!14633 lt!323679))))))))

(declare-fun d!267988 () Bool)

(assert (=> d!267988 e!563628))

(declare-fun res!390874 () Bool)

(assert (=> d!267988 (=> (not res!390874) (not e!563628))))

(assert (=> d!267988 (= res!390874 (= (content!1351 lt!323836) ((_ map or) (content!1351 (list!3637 (charsOf!999 (h!14633 lt!323679)))) (content!1351 (printList!482 thiss!20117 (t!96470 lt!323679))))))))

(assert (=> d!267988 (= lt!323836 e!563629)))

(declare-fun c!138849 () Bool)

(assert (=> d!267988 (= c!138849 ((_ is Nil!9231) (list!3637 (charsOf!999 (h!14633 lt!323679)))))))

(assert (=> d!267988 (= (++!2390 (list!3637 (charsOf!999 (h!14633 lt!323679))) (printList!482 thiss!20117 (t!96470 lt!323679))) lt!323836)))

(declare-fun b!856372 () Bool)

(assert (=> b!856372 (= e!563629 (Cons!9231 (h!14632 (list!3637 (charsOf!999 (h!14633 lt!323679)))) (++!2390 (t!96469 (list!3637 (charsOf!999 (h!14633 lt!323679)))) (printList!482 thiss!20117 (t!96470 lt!323679)))))))

(assert (= (and d!267988 c!138849) b!856371))

(assert (= (and d!267988 (not c!138849)) b!856372))

(assert (= (and d!267988 res!390874) b!856373))

(assert (= (and b!856373 res!390875) b!856374))

(declare-fun m!1098047 () Bool)

(assert (=> b!856373 m!1098047))

(assert (=> b!856373 m!1096769))

(declare-fun m!1098049 () Bool)

(assert (=> b!856373 m!1098049))

(assert (=> b!856373 m!1096771))

(declare-fun m!1098051 () Bool)

(assert (=> b!856373 m!1098051))

(declare-fun m!1098053 () Bool)

(assert (=> d!267988 m!1098053))

(assert (=> d!267988 m!1096769))

(declare-fun m!1098055 () Bool)

(assert (=> d!267988 m!1098055))

(assert (=> d!267988 m!1096771))

(declare-fun m!1098057 () Bool)

(assert (=> d!267988 m!1098057))

(assert (=> b!856372 m!1096771))

(declare-fun m!1098059 () Bool)

(assert (=> b!856372 m!1098059))

(assert (=> b!855765 d!267988))

(declare-fun d!267990 () Bool)

(assert (=> d!267990 (= (list!3637 (charsOf!999 (h!14633 lt!323679))) (list!3640 (c!138700 (charsOf!999 (h!14633 lt!323679)))))))

(declare-fun bs!231886 () Bool)

(assert (= bs!231886 d!267990))

(declare-fun m!1098061 () Bool)

(assert (=> bs!231886 m!1098061))

(assert (=> b!855765 d!267990))

(declare-fun d!267992 () Bool)

(declare-fun lt!323837 () BalanceConc!6132)

(assert (=> d!267992 (= (list!3637 lt!323837) (originalCharacters!2288 (h!14633 lt!323679)))))

(assert (=> d!267992 (= lt!323837 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323679)))) (value!56061 (h!14633 lt!323679))))))

(assert (=> d!267992 (= (charsOf!999 (h!14633 lt!323679)) lt!323837)))

(declare-fun b_lambda!28801 () Bool)

(assert (=> (not b_lambda!28801) (not d!267992)))

(declare-fun tb!60715 () Bool)

(declare-fun t!96667 () Bool)

(assert (=> (and b!855473 (= (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323679))))) t!96667) tb!60715))

(declare-fun b!856375 () Bool)

(declare-fun e!563630 () Bool)

(declare-fun tp!270041 () Bool)

(assert (=> b!856375 (= e!563630 (and (inv!11746 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323679)))) (value!56061 (h!14633 lt!323679))))) tp!270041))))

(declare-fun result!70294 () Bool)

(assert (=> tb!60715 (= result!70294 (and (inv!11747 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323679)))) (value!56061 (h!14633 lt!323679)))) e!563630))))

(assert (= tb!60715 b!856375))

(declare-fun m!1098063 () Bool)

(assert (=> b!856375 m!1098063))

(declare-fun m!1098065 () Bool)

(assert (=> tb!60715 m!1098065))

(assert (=> d!267992 t!96667))

(declare-fun b_and!75755 () Bool)

(assert (= b_and!75745 (and (=> t!96667 result!70294) b_and!75755)))

(declare-fun tb!60717 () Bool)

(declare-fun t!96669 () Bool)

(assert (=> (and b!855462 (= (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323679))))) t!96669) tb!60717))

(declare-fun result!70296 () Bool)

(assert (= result!70296 result!70294))

(assert (=> d!267992 t!96669))

(declare-fun b_and!75757 () Bool)

(assert (= b_and!75747 (and (=> t!96669 result!70296) b_and!75757)))

(declare-fun t!96671 () Bool)

(declare-fun tb!60719 () Bool)

(assert (=> (and b!855835 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 rules!2621)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323679))))) t!96671) tb!60719))

(declare-fun result!70298 () Bool)

(assert (= result!70298 result!70294))

(assert (=> d!267992 t!96671))

(declare-fun b_and!75759 () Bool)

(assert (= b_and!75753 (and (=> t!96671 result!70298) b_and!75759)))

(declare-fun t!96673 () Bool)

(declare-fun tb!60721 () Bool)

(assert (=> (and b!855824 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323679))))) t!96673) tb!60721))

(declare-fun result!70300 () Bool)

(assert (= result!70300 result!70294))

(assert (=> d!267992 t!96673))

(declare-fun b_and!75761 () Bool)

(assert (= b_and!75749 (and (=> t!96673 result!70300) b_and!75761)))

(declare-fun tb!60723 () Bool)

(declare-fun t!96675 () Bool)

(assert (=> (and b!855459 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323679))))) t!96675) tb!60723))

(declare-fun result!70302 () Bool)

(assert (= result!70302 result!70294))

(assert (=> d!267992 t!96675))

(declare-fun b_and!75763 () Bool)

(assert (= b_and!75751 (and (=> t!96675 result!70302) b_and!75763)))

(declare-fun m!1098067 () Bool)

(assert (=> d!267992 m!1098067))

(declare-fun m!1098069 () Bool)

(assert (=> d!267992 m!1098069))

(assert (=> b!855765 d!267992))

(declare-fun d!267994 () Bool)

(declare-fun c!138850 () Bool)

(assert (=> d!267994 (= c!138850 ((_ is Cons!9232) (t!96470 lt!323679)))))

(declare-fun e!563631 () List!9247)

(assert (=> d!267994 (= (printList!482 thiss!20117 (t!96470 lt!323679)) e!563631)))

(declare-fun b!856376 () Bool)

(assert (=> b!856376 (= e!563631 (++!2390 (list!3637 (charsOf!999 (h!14633 (t!96470 lt!323679)))) (printList!482 thiss!20117 (t!96470 (t!96470 lt!323679)))))))

(declare-fun b!856377 () Bool)

(assert (=> b!856377 (= e!563631 Nil!9231)))

(assert (= (and d!267994 c!138850) b!856376))

(assert (= (and d!267994 (not c!138850)) b!856377))

(declare-fun m!1098071 () Bool)

(assert (=> b!856376 m!1098071))

(assert (=> b!856376 m!1098071))

(declare-fun m!1098073 () Bool)

(assert (=> b!856376 m!1098073))

(declare-fun m!1098075 () Bool)

(assert (=> b!856376 m!1098075))

(assert (=> b!856376 m!1098073))

(assert (=> b!856376 m!1098075))

(declare-fun m!1098077 () Bool)

(assert (=> b!856376 m!1098077))

(assert (=> b!855765 d!267994))

(declare-fun d!267996 () Bool)

(assert (=> d!267996 (= (inv!17 (value!56061 separatorToken!297)) (= (charsToBigInt!1 (text!13034 (value!56061 separatorToken!297))) (value!56053 (value!56061 separatorToken!297))))))

(declare-fun bs!231887 () Bool)

(assert (= bs!231887 d!267996))

(declare-fun m!1098079 () Bool)

(assert (=> bs!231887 m!1098079))

(assert (=> b!855508 d!267996))

(declare-fun d!267998 () Bool)

(assert (=> d!267998 (= (inv!11739 (tag!1994 (rule!3155 (h!14633 (t!96470 l!5107))))) (= (mod (str.len (value!56060 (tag!1994 (rule!3155 (h!14633 (t!96470 l!5107)))))) 2) 0))))

(assert (=> b!855823 d!267998))

(declare-fun d!268000 () Bool)

(declare-fun res!390876 () Bool)

(declare-fun e!563632 () Bool)

(assert (=> d!268000 (=> (not res!390876) (not e!563632))))

(assert (=> d!268000 (= res!390876 (semiInverseModEq!677 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) (toValue!2785 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107)))))))))

(assert (=> d!268000 (= (inv!11742 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) e!563632)))

(declare-fun b!856378 () Bool)

(assert (=> b!856378 (= e!563632 (equivClasses!644 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) (toValue!2785 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107)))))))))

(assert (= (and d!268000 res!390876) b!856378))

(declare-fun m!1098081 () Bool)

(assert (=> d!268000 m!1098081))

(declare-fun m!1098083 () Bool)

(assert (=> b!856378 m!1098083))

(assert (=> b!855823 d!268000))

(declare-fun bs!231888 () Bool)

(declare-fun d!268002 () Bool)

(assert (= bs!231888 (and d!268002 d!267550)))

(declare-fun lambda!25684 () Int)

(assert (=> bs!231888 (= lambda!25684 lambda!25652)))

(declare-fun bs!231889 () Bool)

(assert (= bs!231889 (and d!268002 d!267880)))

(assert (=> bs!231889 (= lambda!25684 lambda!25674)))

(declare-fun bs!231890 () Bool)

(assert (= bs!231890 (and d!268002 b!855470)))

(assert (=> bs!231890 (not (= lambda!25684 lambda!25644))))

(declare-fun bs!231891 () Bool)

(assert (= bs!231891 (and d!268002 d!267684)))

(assert (=> bs!231891 (= lambda!25684 lambda!25657)))

(declare-fun bs!231892 () Bool)

(assert (= bs!231892 (and d!268002 d!267528)))

(assert (=> bs!231892 (= lambda!25684 lambda!25651)))

(declare-fun b!856383 () Bool)

(declare-fun e!563637 () Bool)

(assert (=> b!856383 (= e!563637 true)))

(declare-fun b!856382 () Bool)

(declare-fun e!563636 () Bool)

(assert (=> b!856382 (= e!563636 e!563637)))

(declare-fun b!856381 () Bool)

(declare-fun e!563635 () Bool)

(assert (=> b!856381 (= e!563635 e!563636)))

(assert (=> d!268002 e!563635))

(assert (= b!856382 b!856383))

(assert (= b!856381 b!856382))

(assert (= (and d!268002 ((_ is Cons!9233) rules!2621)) b!856381))

(assert (=> b!856383 (< (dynLambda!4333 order!5963 (toValue!2785 (transformation!1732 (h!14634 rules!2621)))) (dynLambda!4334 order!5965 lambda!25684))))

(assert (=> b!856383 (< (dynLambda!4335 order!5967 (toChars!2644 (transformation!1732 (h!14634 rules!2621)))) (dynLambda!4334 order!5965 lambda!25684))))

(assert (=> d!268002 true))

(declare-fun lt!323838 () Bool)

(assert (=> d!268002 (= lt!323838 (forall!2189 (t!96470 l!5107) lambda!25684))))

(declare-fun e!563633 () Bool)

(assert (=> d!268002 (= lt!323838 e!563633)))

(declare-fun res!390877 () Bool)

(assert (=> d!268002 (=> res!390877 e!563633)))

(assert (=> d!268002 (= res!390877 (not ((_ is Cons!9232) (t!96470 l!5107))))))

(assert (=> d!268002 (not (isEmpty!5469 rules!2621))))

(assert (=> d!268002 (= (rulesProduceEachTokenIndividuallyList!422 thiss!20117 rules!2621 (t!96470 l!5107)) lt!323838)))

(declare-fun b!856379 () Bool)

(declare-fun e!563634 () Bool)

(assert (=> b!856379 (= e!563633 e!563634)))

(declare-fun res!390878 () Bool)

(assert (=> b!856379 (=> (not res!390878) (not e!563634))))

(assert (=> b!856379 (= res!390878 (rulesProduceIndividualToken!598 thiss!20117 rules!2621 (h!14633 (t!96470 l!5107))))))

(declare-fun b!856380 () Bool)

(assert (=> b!856380 (= e!563634 (rulesProduceEachTokenIndividuallyList!422 thiss!20117 rules!2621 (t!96470 (t!96470 l!5107))))))

(assert (= (and d!268002 (not res!390877)) b!856379))

(assert (= (and b!856379 res!390878) b!856380))

(declare-fun m!1098085 () Bool)

(assert (=> d!268002 m!1098085))

(assert (=> d!268002 m!1096427))

(declare-fun m!1098087 () Bool)

(assert (=> b!856379 m!1098087))

(declare-fun m!1098089 () Bool)

(assert (=> b!856380 m!1098089))

(assert (=> b!855596 d!268002))

(declare-fun d!268004 () Bool)

(declare-fun lt!323839 () Int)

(assert (=> d!268004 (>= lt!323839 0)))

(declare-fun e!563638 () Int)

(assert (=> d!268004 (= lt!323839 e!563638)))

(declare-fun c!138851 () Bool)

(assert (=> d!268004 (= c!138851 ((_ is Nil!9231) (originalCharacters!2288 separatorToken!297)))))

(assert (=> d!268004 (= (size!7706 (originalCharacters!2288 separatorToken!297)) lt!323839)))

(declare-fun b!856384 () Bool)

(assert (=> b!856384 (= e!563638 0)))

(declare-fun b!856385 () Bool)

(assert (=> b!856385 (= e!563638 (+ 1 (size!7706 (t!96469 (originalCharacters!2288 separatorToken!297)))))))

(assert (= (and d!268004 c!138851) b!856384))

(assert (= (and d!268004 (not c!138851)) b!856385))

(declare-fun m!1098091 () Bool)

(assert (=> b!856385 m!1098091))

(assert (=> b!855749 d!268004))

(declare-fun c!138852 () Bool)

(declare-fun d!268006 () Bool)

(assert (=> d!268006 (= c!138852 ((_ is Cons!9232) ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297) separatorToken!297) (h!14633 (tail!1044 l!5107)))))))

(declare-fun e!563639 () List!9247)

(assert (=> d!268006 (= (printList!482 thiss!20117 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297) separatorToken!297) (h!14633 (tail!1044 l!5107)))) e!563639)))

(declare-fun b!856386 () Bool)

(assert (=> b!856386 (= e!563639 (++!2390 (list!3637 (charsOf!999 (h!14633 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297) separatorToken!297) (h!14633 (tail!1044 l!5107)))))) (printList!482 thiss!20117 (t!96470 ($colon$colon!95 ($colon$colon!95 (withSeparatorTokenList!64 thiss!20117 (t!96470 (tail!1044 l!5107)) separatorToken!297) separatorToken!297) (h!14633 (tail!1044 l!5107)))))))))

(declare-fun b!856387 () Bool)

(assert (=> b!856387 (= e!563639 Nil!9231)))

(assert (= (and d!268006 c!138852) b!856386))

(assert (= (and d!268006 (not c!138852)) b!856387))

(declare-fun m!1098093 () Bool)

(assert (=> b!856386 m!1098093))

(assert (=> b!856386 m!1098093))

(declare-fun m!1098095 () Bool)

(assert (=> b!856386 m!1098095))

(declare-fun m!1098097 () Bool)

(assert (=> b!856386 m!1098097))

(assert (=> b!856386 m!1098095))

(assert (=> b!856386 m!1098097))

(declare-fun m!1098099 () Bool)

(assert (=> b!856386 m!1098099))

(assert (=> b!855767 d!268006))

(assert (=> b!855767 d!267924))

(assert (=> b!855767 d!267900))

(assert (=> b!855767 d!267914))

(declare-fun b!856391 () Bool)

(declare-fun b_free!25989 () Bool)

(declare-fun b_next!26053 () Bool)

(assert (=> b!856391 (= b_free!25989 (not b_next!26053))))

(declare-fun tp!270046 () Bool)

(declare-fun b_and!75765 () Bool)

(assert (=> b!856391 (= tp!270046 b_and!75765)))

(declare-fun b_free!25991 () Bool)

(declare-fun b_next!26055 () Bool)

(assert (=> b!856391 (= b_free!25991 (not b_next!26055))))

(declare-fun t!96677 () Bool)

(declare-fun tb!60725 () Bool)

(assert (=> (and b!856391 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 (t!96470 l!5107)))))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297)))) t!96677) tb!60725))

(declare-fun result!70304 () Bool)

(assert (= result!70304 result!70120))

(assert (=> d!267628 t!96677))

(declare-fun t!96679 () Bool)

(declare-fun tb!60727 () Bool)

(assert (=> (and b!856391 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 (t!96470 l!5107)))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107)))))) t!96679) tb!60727))

(declare-fun result!70306 () Bool)

(assert (= result!70306 result!70284))

(assert (=> b!856353 t!96679))

(declare-fun t!96681 () Bool)

(declare-fun tb!60729 () Bool)

(assert (=> (and b!856391 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 (t!96470 l!5107)))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323657))))) t!96681) tb!60729))

(declare-fun result!70308 () Bool)

(assert (= result!70308 result!70150))

(assert (=> d!267670 t!96681))

(declare-fun tb!60731 () Bool)

(declare-fun t!96683 () Bool)

(assert (=> (and b!856391 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 (t!96470 l!5107)))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323674))))) t!96683) tb!60731))

(declare-fun result!70310 () Bool)

(assert (= result!70310 result!70180))

(assert (=> d!267766 t!96683))

(declare-fun t!96685 () Bool)

(declare-fun tb!60733 () Bool)

(assert (=> (and b!856391 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 (t!96470 l!5107)))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107))))) t!96685) tb!60733))

(declare-fun result!70312 () Bool)

(assert (= result!70312 result!70128))

(assert (=> d!267642 t!96685))

(declare-fun t!96687 () Bool)

(declare-fun tb!60735 () Bool)

(assert (=> (and b!856391 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 (t!96470 l!5107)))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (tail!1044 l!5107)))))) t!96687) tb!60735))

(declare-fun result!70314 () Bool)

(assert (= result!70314 result!70230))

(assert (=> d!267904 t!96687))

(declare-fun tb!60737 () Bool)

(declare-fun t!96689 () Bool)

(assert (=> (and b!856391 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 (t!96470 l!5107)))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323662))))) t!96689) tb!60737))

(declare-fun result!70316 () Bool)

(assert (= result!70316 result!70274))

(assert (=> d!267948 t!96689))

(assert (=> b!855748 t!96677))

(assert (=> b!855755 t!96685))

(declare-fun t!96691 () Bool)

(declare-fun tb!60739 () Bool)

(assert (=> (and b!856391 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 (t!96470 l!5107)))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323679))))) t!96691) tb!60739))

(declare-fun result!70318 () Bool)

(assert (= result!70318 result!70294))

(assert (=> d!267992 t!96691))

(declare-fun b_and!75767 () Bool)

(declare-fun tp!270045 () Bool)

(assert (=> b!856391 (= tp!270045 (and (=> t!96685 result!70312) (=> t!96681 result!70308) (=> t!96687 result!70314) (=> t!96691 result!70318) (=> t!96689 result!70316) (=> t!96679 result!70306) (=> t!96677 result!70304) (=> t!96683 result!70310) b_and!75767))))

(declare-fun e!563641 () Bool)

(declare-fun e!563640 () Bool)

(declare-fun tp!270044 () Bool)

(declare-fun b!856390 () Bool)

(assert (=> b!856390 (= e!563641 (and tp!270044 (inv!11739 (tag!1994 (rule!3155 (h!14633 (t!96470 (t!96470 l!5107)))))) (inv!11742 (transformation!1732 (rule!3155 (h!14633 (t!96470 (t!96470 l!5107)))))) e!563640))))

(assert (=> b!856391 (= e!563640 (and tp!270046 tp!270045))))

(declare-fun tp!270042 () Bool)

(declare-fun e!563644 () Bool)

(declare-fun b!856388 () Bool)

(declare-fun e!563642 () Bool)

(assert (=> b!856388 (= e!563644 (and (inv!11743 (h!14633 (t!96470 (t!96470 l!5107)))) e!563642 tp!270042))))

(assert (=> b!855821 (= tp!269899 e!563644)))

(declare-fun b!856389 () Bool)

(declare-fun tp!270043 () Bool)

(assert (=> b!856389 (= e!563642 (and (inv!21 (value!56061 (h!14633 (t!96470 (t!96470 l!5107))))) e!563641 tp!270043))))

(assert (= b!856390 b!856391))

(assert (= b!856389 b!856390))

(assert (= b!856388 b!856389))

(assert (= (and b!855821 ((_ is Cons!9232) (t!96470 (t!96470 l!5107)))) b!856388))

(declare-fun m!1098101 () Bool)

(assert (=> b!856390 m!1098101))

(declare-fun m!1098103 () Bool)

(assert (=> b!856390 m!1098103))

(declare-fun m!1098105 () Bool)

(assert (=> b!856388 m!1098105))

(declare-fun m!1098107 () Bool)

(assert (=> b!856389 m!1098107))

(declare-fun tp!270053 () Bool)

(declare-fun e!563650 () Bool)

(declare-fun b!856400 () Bool)

(declare-fun tp!270055 () Bool)

(assert (=> b!856400 (= e!563650 (and (inv!11746 (left!6830 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107)))))) tp!270053 (inv!11746 (right!7160 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107)))))) tp!270055))))

(declare-fun b!856402 () Bool)

(declare-fun e!563651 () Bool)

(declare-fun tp!270054 () Bool)

(assert (=> b!856402 (= e!563651 tp!270054)))

(declare-fun b!856401 () Bool)

(declare-fun inv!11752 (IArray!6123) Bool)

(assert (=> b!856401 (= e!563650 (and (inv!11752 (xs!5748 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107)))))) e!563651))))

(assert (=> b!855757 (= tp!269864 (and (inv!11746 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107))))) e!563650))))

(assert (= (and b!855757 ((_ is Node!3059) (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107)))))) b!856400))

(assert (= b!856401 b!856402))

(assert (= (and b!855757 ((_ is Leaf!4513) (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (value!56061 (h!14633 l!5107)))))) b!856401))

(declare-fun m!1098109 () Bool)

(assert (=> b!856400 m!1098109))

(declare-fun m!1098111 () Bool)

(assert (=> b!856400 m!1098111))

(declare-fun m!1098113 () Bool)

(assert (=> b!856401 m!1098113))

(assert (=> b!855757 m!1096751))

(declare-fun b!856405 () Bool)

(declare-fun e!563654 () Bool)

(assert (=> b!856405 (= e!563654 true)))

(declare-fun b!856404 () Bool)

(declare-fun e!563653 () Bool)

(assert (=> b!856404 (= e!563653 e!563654)))

(declare-fun b!856403 () Bool)

(declare-fun e!563652 () Bool)

(assert (=> b!856403 (= e!563652 e!563653)))

(assert (=> b!855614 e!563652))

(assert (= b!856404 b!856405))

(assert (= b!856403 b!856404))

(assert (= (and b!855614 ((_ is Cons!9233) (t!96471 rules!2621))) b!856403))

(assert (=> b!856405 (< (dynLambda!4333 order!5963 (toValue!2785 (transformation!1732 (h!14634 (t!96471 rules!2621))))) (dynLambda!4334 order!5965 lambda!25651))))

(assert (=> b!856405 (< (dynLambda!4335 order!5967 (toChars!2644 (transformation!1732 (h!14634 (t!96471 rules!2621))))) (dynLambda!4334 order!5965 lambda!25651))))

(declare-fun b!856406 () Bool)

(declare-fun e!563655 () Bool)

(declare-fun tp!270056 () Bool)

(assert (=> b!856406 (= e!563655 (and tp_is_empty!3989 tp!270056))))

(assert (=> b!855810 (= tp!269888 e!563655)))

(assert (= (and b!855810 ((_ is Cons!9231) (t!96469 (originalCharacters!2288 (h!14633 l!5107))))) b!856406))

(declare-fun b!856408 () Bool)

(declare-fun e!563656 () Bool)

(declare-fun tp!270059 () Bool)

(declare-fun tp!270061 () Bool)

(assert (=> b!856408 (= e!563656 (and tp!270059 tp!270061))))

(declare-fun b!856409 () Bool)

(declare-fun tp!270057 () Bool)

(assert (=> b!856409 (= e!563656 tp!270057)))

(declare-fun b!856410 () Bool)

(declare-fun tp!270060 () Bool)

(declare-fun tp!270058 () Bool)

(assert (=> b!856410 (= e!563656 (and tp!270060 tp!270058))))

(declare-fun b!856407 () Bool)

(assert (=> b!856407 (= e!563656 tp_is_empty!3989)))

(assert (=> b!855802 (= tp!269882 e!563656)))

(assert (= (and b!855802 ((_ is ElementMatch!2165) (regOne!4842 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856407))

(assert (= (and b!855802 ((_ is Concat!3964) (regOne!4842 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856408))

(assert (= (and b!855802 ((_ is Star!2165) (regOne!4842 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856409))

(assert (= (and b!855802 ((_ is Union!2165) (regOne!4842 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856410))

(declare-fun b!856412 () Bool)

(declare-fun e!563657 () Bool)

(declare-fun tp!270064 () Bool)

(declare-fun tp!270066 () Bool)

(assert (=> b!856412 (= e!563657 (and tp!270064 tp!270066))))

(declare-fun b!856413 () Bool)

(declare-fun tp!270062 () Bool)

(assert (=> b!856413 (= e!563657 tp!270062)))

(declare-fun b!856414 () Bool)

(declare-fun tp!270065 () Bool)

(declare-fun tp!270063 () Bool)

(assert (=> b!856414 (= e!563657 (and tp!270065 tp!270063))))

(declare-fun b!856411 () Bool)

(assert (=> b!856411 (= e!563657 tp_is_empty!3989)))

(assert (=> b!855802 (= tp!269884 e!563657)))

(assert (= (and b!855802 ((_ is ElementMatch!2165) (regTwo!4842 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856411))

(assert (= (and b!855802 ((_ is Concat!3964) (regTwo!4842 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856412))

(assert (= (and b!855802 ((_ is Star!2165) (regTwo!4842 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856413))

(assert (= (and b!855802 ((_ is Union!2165) (regTwo!4842 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856414))

(declare-fun b!856416 () Bool)

(declare-fun e!563658 () Bool)

(declare-fun tp!270069 () Bool)

(declare-fun tp!270071 () Bool)

(assert (=> b!856416 (= e!563658 (and tp!270069 tp!270071))))

(declare-fun b!856417 () Bool)

(declare-fun tp!270067 () Bool)

(assert (=> b!856417 (= e!563658 tp!270067)))

(declare-fun b!856418 () Bool)

(declare-fun tp!270070 () Bool)

(declare-fun tp!270068 () Bool)

(assert (=> b!856418 (= e!563658 (and tp!270070 tp!270068))))

(declare-fun b!856415 () Bool)

(assert (=> b!856415 (= e!563658 tp_is_empty!3989)))

(assert (=> b!855804 (= tp!269883 e!563658)))

(assert (= (and b!855804 ((_ is ElementMatch!2165) (regOne!4843 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856415))

(assert (= (and b!855804 ((_ is Concat!3964) (regOne!4843 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856416))

(assert (= (and b!855804 ((_ is Star!2165) (regOne!4843 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856417))

(assert (= (and b!855804 ((_ is Union!2165) (regOne!4843 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856418))

(declare-fun b!856420 () Bool)

(declare-fun e!563659 () Bool)

(declare-fun tp!270074 () Bool)

(declare-fun tp!270076 () Bool)

(assert (=> b!856420 (= e!563659 (and tp!270074 tp!270076))))

(declare-fun b!856421 () Bool)

(declare-fun tp!270072 () Bool)

(assert (=> b!856421 (= e!563659 tp!270072)))

(declare-fun b!856422 () Bool)

(declare-fun tp!270075 () Bool)

(declare-fun tp!270073 () Bool)

(assert (=> b!856422 (= e!563659 (and tp!270075 tp!270073))))

(declare-fun b!856419 () Bool)

(assert (=> b!856419 (= e!563659 tp_is_empty!3989)))

(assert (=> b!855804 (= tp!269881 e!563659)))

(assert (= (and b!855804 ((_ is ElementMatch!2165) (regTwo!4843 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856419))

(assert (= (and b!855804 ((_ is Concat!3964) (regTwo!4843 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856420))

(assert (= (and b!855804 ((_ is Star!2165) (regTwo!4843 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856421))

(assert (= (and b!855804 ((_ is Union!2165) (regTwo!4843 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856422))

(declare-fun b!856424 () Bool)

(declare-fun e!563660 () Bool)

(declare-fun tp!270079 () Bool)

(declare-fun tp!270081 () Bool)

(assert (=> b!856424 (= e!563660 (and tp!270079 tp!270081))))

(declare-fun b!856425 () Bool)

(declare-fun tp!270077 () Bool)

(assert (=> b!856425 (= e!563660 tp!270077)))

(declare-fun b!856426 () Bool)

(declare-fun tp!270080 () Bool)

(declare-fun tp!270078 () Bool)

(assert (=> b!856426 (= e!563660 (and tp!270080 tp!270078))))

(declare-fun b!856423 () Bool)

(assert (=> b!856423 (= e!563660 tp_is_empty!3989)))

(assert (=> b!855803 (= tp!269880 e!563660)))

(assert (= (and b!855803 ((_ is ElementMatch!2165) (reg!2494 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856423))

(assert (= (and b!855803 ((_ is Concat!3964) (reg!2494 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856424))

(assert (= (and b!855803 ((_ is Star!2165) (reg!2494 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856425))

(assert (= (and b!855803 ((_ is Union!2165) (reg!2494 (regex!1732 (rule!3155 (h!14633 l!5107)))))) b!856426))

(declare-fun b!856429 () Bool)

(declare-fun e!563663 () Bool)

(assert (=> b!856429 (= e!563663 true)))

(declare-fun b!856428 () Bool)

(declare-fun e!563662 () Bool)

(assert (=> b!856428 (= e!563662 e!563663)))

(declare-fun b!856427 () Bool)

(declare-fun e!563661 () Bool)

(assert (=> b!856427 (= e!563661 e!563662)))

(assert (=> b!855621 e!563661))

(assert (= b!856428 b!856429))

(assert (= b!856427 b!856428))

(assert (= (and b!855621 ((_ is Cons!9233) (t!96471 rules!2621))) b!856427))

(assert (=> b!856429 (< (dynLambda!4333 order!5963 (toValue!2785 (transformation!1732 (h!14634 (t!96471 rules!2621))))) (dynLambda!4334 order!5965 lambda!25652))))

(assert (=> b!856429 (< (dynLambda!4335 order!5967 (toChars!2644 (transformation!1732 (h!14634 (t!96471 rules!2621))))) (dynLambda!4334 order!5965 lambda!25652))))

(declare-fun b!856431 () Bool)

(declare-fun e!563664 () Bool)

(declare-fun tp!270084 () Bool)

(declare-fun tp!270086 () Bool)

(assert (=> b!856431 (= e!563664 (and tp!270084 tp!270086))))

(declare-fun b!856432 () Bool)

(declare-fun tp!270082 () Bool)

(assert (=> b!856432 (= e!563664 tp!270082)))

(declare-fun b!856433 () Bool)

(declare-fun tp!270085 () Bool)

(declare-fun tp!270083 () Bool)

(assert (=> b!856433 (= e!563664 (and tp!270085 tp!270083))))

(declare-fun b!856430 () Bool)

(assert (=> b!856430 (= e!563664 tp_is_empty!3989)))

(assert (=> b!855800 (= tp!269878 e!563664)))

(assert (= (and b!855800 ((_ is ElementMatch!2165) (regOne!4843 (regex!1732 (rule!3155 separatorToken!297))))) b!856430))

(assert (= (and b!855800 ((_ is Concat!3964) (regOne!4843 (regex!1732 (rule!3155 separatorToken!297))))) b!856431))

(assert (= (and b!855800 ((_ is Star!2165) (regOne!4843 (regex!1732 (rule!3155 separatorToken!297))))) b!856432))

(assert (= (and b!855800 ((_ is Union!2165) (regOne!4843 (regex!1732 (rule!3155 separatorToken!297))))) b!856433))

(declare-fun b!856435 () Bool)

(declare-fun e!563665 () Bool)

(declare-fun tp!270089 () Bool)

(declare-fun tp!270091 () Bool)

(assert (=> b!856435 (= e!563665 (and tp!270089 tp!270091))))

(declare-fun b!856436 () Bool)

(declare-fun tp!270087 () Bool)

(assert (=> b!856436 (= e!563665 tp!270087)))

(declare-fun b!856437 () Bool)

(declare-fun tp!270090 () Bool)

(declare-fun tp!270088 () Bool)

(assert (=> b!856437 (= e!563665 (and tp!270090 tp!270088))))

(declare-fun b!856434 () Bool)

(assert (=> b!856434 (= e!563665 tp_is_empty!3989)))

(assert (=> b!855800 (= tp!269876 e!563665)))

(assert (= (and b!855800 ((_ is ElementMatch!2165) (regTwo!4843 (regex!1732 (rule!3155 separatorToken!297))))) b!856434))

(assert (= (and b!855800 ((_ is Concat!3964) (regTwo!4843 (regex!1732 (rule!3155 separatorToken!297))))) b!856435))

(assert (= (and b!855800 ((_ is Star!2165) (regTwo!4843 (regex!1732 (rule!3155 separatorToken!297))))) b!856436))

(assert (= (and b!855800 ((_ is Union!2165) (regTwo!4843 (regex!1732 (rule!3155 separatorToken!297))))) b!856437))

(declare-fun tp!270092 () Bool)

(declare-fun b!856438 () Bool)

(declare-fun tp!270094 () Bool)

(declare-fun e!563666 () Bool)

(assert (=> b!856438 (= e!563666 (and (inv!11746 (left!6830 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297))))) tp!270092 (inv!11746 (right!7160 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297))))) tp!270094))))

(declare-fun b!856440 () Bool)

(declare-fun e!563667 () Bool)

(declare-fun tp!270093 () Bool)

(assert (=> b!856440 (= e!563667 tp!270093)))

(declare-fun b!856439 () Bool)

(assert (=> b!856439 (= e!563666 (and (inv!11752 (xs!5748 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297))))) e!563667))))

(assert (=> b!855754 (= tp!269863 (and (inv!11746 (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297)))) e!563666))))

(assert (= (and b!855754 ((_ is Node!3059) (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297))))) b!856438))

(assert (= b!856439 b!856440))

(assert (= (and b!855754 ((_ is Leaf!4513) (c!138700 (dynLambda!4337 (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (value!56061 separatorToken!297))))) b!856439))

(declare-fun m!1098115 () Bool)

(assert (=> b!856438 m!1098115))

(declare-fun m!1098117 () Bool)

(assert (=> b!856438 m!1098117))

(declare-fun m!1098119 () Bool)

(assert (=> b!856439 m!1098119))

(assert (=> b!855754 m!1096739))

(declare-fun b!856443 () Bool)

(declare-fun b_free!25993 () Bool)

(declare-fun b_next!26057 () Bool)

(assert (=> b!856443 (= b_free!25993 (not b_next!26057))))

(declare-fun tp!270097 () Bool)

(declare-fun b_and!75769 () Bool)

(assert (=> b!856443 (= tp!270097 b_and!75769)))

(declare-fun b_free!25995 () Bool)

(declare-fun b_next!26059 () Bool)

(assert (=> b!856443 (= b_free!25995 (not b_next!26059))))

(declare-fun t!96693 () Bool)

(declare-fun tb!60741 () Bool)

(assert (=> (and b!856443 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 (t!96471 rules!2621))))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297)))) t!96693) tb!60741))

(declare-fun result!70322 () Bool)

(assert (= result!70322 result!70120))

(assert (=> d!267628 t!96693))

(declare-fun t!96695 () Bool)

(declare-fun tb!60743 () Bool)

(assert (=> (and b!856443 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 (t!96471 rules!2621))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107)))))) t!96695) tb!60743))

(declare-fun result!70324 () Bool)

(assert (= result!70324 result!70284))

(assert (=> b!856353 t!96695))

(declare-fun tb!60745 () Bool)

(declare-fun t!96697 () Bool)

(assert (=> (and b!856443 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 (t!96471 rules!2621))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323657))))) t!96697) tb!60745))

(declare-fun result!70326 () Bool)

(assert (= result!70326 result!70150))

(assert (=> d!267670 t!96697))

(declare-fun tb!60747 () Bool)

(declare-fun t!96699 () Bool)

(assert (=> (and b!856443 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 (t!96471 rules!2621))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323674))))) t!96699) tb!60747))

(declare-fun result!70328 () Bool)

(assert (= result!70328 result!70180))

(assert (=> d!267766 t!96699))

(declare-fun tb!60749 () Bool)

(declare-fun t!96701 () Bool)

(assert (=> (and b!856443 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 (t!96471 rules!2621))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107))))) t!96701) tb!60749))

(declare-fun result!70330 () Bool)

(assert (= result!70330 result!70128))

(assert (=> d!267642 t!96701))

(declare-fun t!96703 () Bool)

(declare-fun tb!60751 () Bool)

(assert (=> (and b!856443 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 (t!96471 rules!2621))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (tail!1044 l!5107)))))) t!96703) tb!60751))

(declare-fun result!70332 () Bool)

(assert (= result!70332 result!70230))

(assert (=> d!267904 t!96703))

(declare-fun tb!60753 () Bool)

(declare-fun t!96705 () Bool)

(assert (=> (and b!856443 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 (t!96471 rules!2621))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323662))))) t!96705) tb!60753))

(declare-fun result!70334 () Bool)

(assert (= result!70334 result!70274))

(assert (=> d!267948 t!96705))

(assert (=> b!855748 t!96693))

(assert (=> b!855755 t!96701))

(declare-fun t!96707 () Bool)

(declare-fun tb!60755 () Bool)

(assert (=> (and b!856443 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 (t!96471 rules!2621))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 lt!323679))))) t!96707) tb!60755))

(declare-fun result!70336 () Bool)

(assert (= result!70336 result!70294))

(assert (=> d!267992 t!96707))

(declare-fun b_and!75771 () Bool)

(declare-fun tp!270098 () Bool)

(assert (=> b!856443 (= tp!270098 (and (=> t!96703 result!70332) (=> t!96701 result!70330) (=> t!96693 result!70322) (=> t!96697 result!70326) (=> t!96695 result!70324) (=> t!96699 result!70328) (=> t!96705 result!70334) (=> t!96707 result!70336) b_and!75771))))

(declare-fun e!563669 () Bool)

(assert (=> b!856443 (= e!563669 (and tp!270097 tp!270098))))

(declare-fun e!563668 () Bool)

(declare-fun tp!270095 () Bool)

(declare-fun b!856442 () Bool)

(assert (=> b!856442 (= e!563668 (and tp!270095 (inv!11739 (tag!1994 (h!14634 (t!96471 (t!96471 rules!2621))))) (inv!11742 (transformation!1732 (h!14634 (t!96471 (t!96471 rules!2621))))) e!563669))))

(declare-fun b!856441 () Bool)

(declare-fun e!563671 () Bool)

(declare-fun tp!270096 () Bool)

(assert (=> b!856441 (= e!563671 (and e!563668 tp!270096))))

(assert (=> b!855833 (= tp!269913 e!563671)))

(assert (= b!856442 b!856443))

(assert (= b!856441 b!856442))

(assert (= (and b!855833 ((_ is Cons!9233) (t!96471 (t!96471 rules!2621)))) b!856441))

(declare-fun m!1098121 () Bool)

(assert (=> b!856442 m!1098121))

(declare-fun m!1098123 () Bool)

(assert (=> b!856442 m!1098123))

(declare-fun b!856445 () Bool)

(declare-fun e!563672 () Bool)

(declare-fun tp!270101 () Bool)

(declare-fun tp!270103 () Bool)

(assert (=> b!856445 (= e!563672 (and tp!270101 tp!270103))))

(declare-fun b!856446 () Bool)

(declare-fun tp!270099 () Bool)

(assert (=> b!856446 (= e!563672 tp!270099)))

(declare-fun b!856447 () Bool)

(declare-fun tp!270102 () Bool)

(declare-fun tp!270100 () Bool)

(assert (=> b!856447 (= e!563672 (and tp!270102 tp!270100))))

(declare-fun b!856444 () Bool)

(assert (=> b!856444 (= e!563672 tp_is_empty!3989)))

(assert (=> b!855834 (= tp!269912 e!563672)))

(assert (= (and b!855834 ((_ is ElementMatch!2165) (regex!1732 (h!14634 (t!96471 rules!2621))))) b!856444))

(assert (= (and b!855834 ((_ is Concat!3964) (regex!1732 (h!14634 (t!96471 rules!2621))))) b!856445))

(assert (= (and b!855834 ((_ is Star!2165) (regex!1732 (h!14634 (t!96471 rules!2621))))) b!856446))

(assert (= (and b!855834 ((_ is Union!2165) (regex!1732 (h!14634 (t!96471 rules!2621))))) b!856447))

(declare-fun b!856448 () Bool)

(declare-fun e!563673 () Bool)

(declare-fun tp!270104 () Bool)

(assert (=> b!856448 (= e!563673 (and tp_is_empty!3989 tp!270104))))

(assert (=> b!855809 (= tp!269887 e!563673)))

(assert (= (and b!855809 ((_ is Cons!9231) (t!96469 (originalCharacters!2288 separatorToken!297)))) b!856448))

(declare-fun b!856449 () Bool)

(declare-fun e!563674 () Bool)

(declare-fun tp!270105 () Bool)

(assert (=> b!856449 (= e!563674 (and tp_is_empty!3989 tp!270105))))

(assert (=> b!855822 (= tp!269900 e!563674)))

(assert (= (and b!855822 ((_ is Cons!9231) (originalCharacters!2288 (h!14633 (t!96470 l!5107))))) b!856449))

(declare-fun b!856451 () Bool)

(declare-fun e!563675 () Bool)

(declare-fun tp!270108 () Bool)

(declare-fun tp!270110 () Bool)

(assert (=> b!856451 (= e!563675 (and tp!270108 tp!270110))))

(declare-fun b!856452 () Bool)

(declare-fun tp!270106 () Bool)

(assert (=> b!856452 (= e!563675 tp!270106)))

(declare-fun b!856453 () Bool)

(declare-fun tp!270109 () Bool)

(declare-fun tp!270107 () Bool)

(assert (=> b!856453 (= e!563675 (and tp!270109 tp!270107))))

(declare-fun b!856450 () Bool)

(assert (=> b!856450 (= e!563675 tp_is_empty!3989)))

(assert (=> b!855823 (= tp!269901 e!563675)))

(assert (= (and b!855823 ((_ is ElementMatch!2165) (regex!1732 (rule!3155 (h!14633 (t!96470 l!5107)))))) b!856450))

(assert (= (and b!855823 ((_ is Concat!3964) (regex!1732 (rule!3155 (h!14633 (t!96470 l!5107)))))) b!856451))

(assert (= (and b!855823 ((_ is Star!2165) (regex!1732 (rule!3155 (h!14633 (t!96470 l!5107)))))) b!856452))

(assert (= (and b!855823 ((_ is Union!2165) (regex!1732 (rule!3155 (h!14633 (t!96470 l!5107)))))) b!856453))

(declare-fun b!856455 () Bool)

(declare-fun e!563676 () Bool)

(declare-fun tp!270113 () Bool)

(declare-fun tp!270115 () Bool)

(assert (=> b!856455 (= e!563676 (and tp!270113 tp!270115))))

(declare-fun b!856456 () Bool)

(declare-fun tp!270111 () Bool)

(assert (=> b!856456 (= e!563676 tp!270111)))

(declare-fun b!856457 () Bool)

(declare-fun tp!270114 () Bool)

(declare-fun tp!270112 () Bool)

(assert (=> b!856457 (= e!563676 (and tp!270114 tp!270112))))

(declare-fun b!856454 () Bool)

(assert (=> b!856454 (= e!563676 tp_is_empty!3989)))

(assert (=> b!855798 (= tp!269877 e!563676)))

(assert (= (and b!855798 ((_ is ElementMatch!2165) (regOne!4842 (regex!1732 (rule!3155 separatorToken!297))))) b!856454))

(assert (= (and b!855798 ((_ is Concat!3964) (regOne!4842 (regex!1732 (rule!3155 separatorToken!297))))) b!856455))

(assert (= (and b!855798 ((_ is Star!2165) (regOne!4842 (regex!1732 (rule!3155 separatorToken!297))))) b!856456))

(assert (= (and b!855798 ((_ is Union!2165) (regOne!4842 (regex!1732 (rule!3155 separatorToken!297))))) b!856457))

(declare-fun b!856459 () Bool)

(declare-fun e!563677 () Bool)

(declare-fun tp!270118 () Bool)

(declare-fun tp!270120 () Bool)

(assert (=> b!856459 (= e!563677 (and tp!270118 tp!270120))))

(declare-fun b!856460 () Bool)

(declare-fun tp!270116 () Bool)

(assert (=> b!856460 (= e!563677 tp!270116)))

(declare-fun b!856461 () Bool)

(declare-fun tp!270119 () Bool)

(declare-fun tp!270117 () Bool)

(assert (=> b!856461 (= e!563677 (and tp!270119 tp!270117))))

(declare-fun b!856458 () Bool)

(assert (=> b!856458 (= e!563677 tp_is_empty!3989)))

(assert (=> b!855798 (= tp!269879 e!563677)))

(assert (= (and b!855798 ((_ is ElementMatch!2165) (regTwo!4842 (regex!1732 (rule!3155 separatorToken!297))))) b!856458))

(assert (= (and b!855798 ((_ is Concat!3964) (regTwo!4842 (regex!1732 (rule!3155 separatorToken!297))))) b!856459))

(assert (= (and b!855798 ((_ is Star!2165) (regTwo!4842 (regex!1732 (rule!3155 separatorToken!297))))) b!856460))

(assert (= (and b!855798 ((_ is Union!2165) (regTwo!4842 (regex!1732 (rule!3155 separatorToken!297))))) b!856461))

(declare-fun b!856463 () Bool)

(declare-fun e!563678 () Bool)

(declare-fun tp!270123 () Bool)

(declare-fun tp!270125 () Bool)

(assert (=> b!856463 (= e!563678 (and tp!270123 tp!270125))))

(declare-fun b!856464 () Bool)

(declare-fun tp!270121 () Bool)

(assert (=> b!856464 (= e!563678 tp!270121)))

(declare-fun b!856465 () Bool)

(declare-fun tp!270124 () Bool)

(declare-fun tp!270122 () Bool)

(assert (=> b!856465 (= e!563678 (and tp!270124 tp!270122))))

(declare-fun b!856462 () Bool)

(assert (=> b!856462 (= e!563678 tp_is_empty!3989)))

(assert (=> b!855838 (= tp!269916 e!563678)))

(assert (= (and b!855838 ((_ is ElementMatch!2165) (reg!2494 (regex!1732 (h!14634 rules!2621))))) b!856462))

(assert (= (and b!855838 ((_ is Concat!3964) (reg!2494 (regex!1732 (h!14634 rules!2621))))) b!856463))

(assert (= (and b!855838 ((_ is Star!2165) (reg!2494 (regex!1732 (h!14634 rules!2621))))) b!856464))

(assert (= (and b!855838 ((_ is Union!2165) (reg!2494 (regex!1732 (h!14634 rules!2621))))) b!856465))

(declare-fun b!856467 () Bool)

(declare-fun e!563679 () Bool)

(declare-fun tp!270128 () Bool)

(declare-fun tp!270130 () Bool)

(assert (=> b!856467 (= e!563679 (and tp!270128 tp!270130))))

(declare-fun b!856468 () Bool)

(declare-fun tp!270126 () Bool)

(assert (=> b!856468 (= e!563679 tp!270126)))

(declare-fun b!856469 () Bool)

(declare-fun tp!270129 () Bool)

(declare-fun tp!270127 () Bool)

(assert (=> b!856469 (= e!563679 (and tp!270129 tp!270127))))

(declare-fun b!856466 () Bool)

(assert (=> b!856466 (= e!563679 tp_is_empty!3989)))

(assert (=> b!855837 (= tp!269918 e!563679)))

(assert (= (and b!855837 ((_ is ElementMatch!2165) (regOne!4842 (regex!1732 (h!14634 rules!2621))))) b!856466))

(assert (= (and b!855837 ((_ is Concat!3964) (regOne!4842 (regex!1732 (h!14634 rules!2621))))) b!856467))

(assert (= (and b!855837 ((_ is Star!2165) (regOne!4842 (regex!1732 (h!14634 rules!2621))))) b!856468))

(assert (= (and b!855837 ((_ is Union!2165) (regOne!4842 (regex!1732 (h!14634 rules!2621))))) b!856469))

(declare-fun b!856471 () Bool)

(declare-fun e!563680 () Bool)

(declare-fun tp!270133 () Bool)

(declare-fun tp!270135 () Bool)

(assert (=> b!856471 (= e!563680 (and tp!270133 tp!270135))))

(declare-fun b!856472 () Bool)

(declare-fun tp!270131 () Bool)

(assert (=> b!856472 (= e!563680 tp!270131)))

(declare-fun b!856473 () Bool)

(declare-fun tp!270134 () Bool)

(declare-fun tp!270132 () Bool)

(assert (=> b!856473 (= e!563680 (and tp!270134 tp!270132))))

(declare-fun b!856470 () Bool)

(assert (=> b!856470 (= e!563680 tp_is_empty!3989)))

(assert (=> b!855837 (= tp!269920 e!563680)))

(assert (= (and b!855837 ((_ is ElementMatch!2165) (regTwo!4842 (regex!1732 (h!14634 rules!2621))))) b!856470))

(assert (= (and b!855837 ((_ is Concat!3964) (regTwo!4842 (regex!1732 (h!14634 rules!2621))))) b!856471))

(assert (= (and b!855837 ((_ is Star!2165) (regTwo!4842 (regex!1732 (h!14634 rules!2621))))) b!856472))

(assert (= (and b!855837 ((_ is Union!2165) (regTwo!4842 (regex!1732 (h!14634 rules!2621))))) b!856473))

(declare-fun b!856475 () Bool)

(declare-fun e!563681 () Bool)

(declare-fun tp!270138 () Bool)

(declare-fun tp!270140 () Bool)

(assert (=> b!856475 (= e!563681 (and tp!270138 tp!270140))))

(declare-fun b!856476 () Bool)

(declare-fun tp!270136 () Bool)

(assert (=> b!856476 (= e!563681 tp!270136)))

(declare-fun b!856477 () Bool)

(declare-fun tp!270139 () Bool)

(declare-fun tp!270137 () Bool)

(assert (=> b!856477 (= e!563681 (and tp!270139 tp!270137))))

(declare-fun b!856474 () Bool)

(assert (=> b!856474 (= e!563681 tp_is_empty!3989)))

(assert (=> b!855799 (= tp!269875 e!563681)))

(assert (= (and b!855799 ((_ is ElementMatch!2165) (reg!2494 (regex!1732 (rule!3155 separatorToken!297))))) b!856474))

(assert (= (and b!855799 ((_ is Concat!3964) (reg!2494 (regex!1732 (rule!3155 separatorToken!297))))) b!856475))

(assert (= (and b!855799 ((_ is Star!2165) (reg!2494 (regex!1732 (rule!3155 separatorToken!297))))) b!856476))

(assert (= (and b!855799 ((_ is Union!2165) (reg!2494 (regex!1732 (rule!3155 separatorToken!297))))) b!856477))

(declare-fun b!856479 () Bool)

(declare-fun e!563682 () Bool)

(declare-fun tp!270143 () Bool)

(declare-fun tp!270145 () Bool)

(assert (=> b!856479 (= e!563682 (and tp!270143 tp!270145))))

(declare-fun b!856480 () Bool)

(declare-fun tp!270141 () Bool)

(assert (=> b!856480 (= e!563682 tp!270141)))

(declare-fun b!856481 () Bool)

(declare-fun tp!270144 () Bool)

(declare-fun tp!270142 () Bool)

(assert (=> b!856481 (= e!563682 (and tp!270144 tp!270142))))

(declare-fun b!856478 () Bool)

(assert (=> b!856478 (= e!563682 tp_is_empty!3989)))

(assert (=> b!855839 (= tp!269919 e!563682)))

(assert (= (and b!855839 ((_ is ElementMatch!2165) (regOne!4843 (regex!1732 (h!14634 rules!2621))))) b!856478))

(assert (= (and b!855839 ((_ is Concat!3964) (regOne!4843 (regex!1732 (h!14634 rules!2621))))) b!856479))

(assert (= (and b!855839 ((_ is Star!2165) (regOne!4843 (regex!1732 (h!14634 rules!2621))))) b!856480))

(assert (= (and b!855839 ((_ is Union!2165) (regOne!4843 (regex!1732 (h!14634 rules!2621))))) b!856481))

(declare-fun b!856483 () Bool)

(declare-fun e!563683 () Bool)

(declare-fun tp!270148 () Bool)

(declare-fun tp!270150 () Bool)

(assert (=> b!856483 (= e!563683 (and tp!270148 tp!270150))))

(declare-fun b!856484 () Bool)

(declare-fun tp!270146 () Bool)

(assert (=> b!856484 (= e!563683 tp!270146)))

(declare-fun b!856485 () Bool)

(declare-fun tp!270149 () Bool)

(declare-fun tp!270147 () Bool)

(assert (=> b!856485 (= e!563683 (and tp!270149 tp!270147))))

(declare-fun b!856482 () Bool)

(assert (=> b!856482 (= e!563683 tp_is_empty!3989)))

(assert (=> b!855839 (= tp!269917 e!563683)))

(assert (= (and b!855839 ((_ is ElementMatch!2165) (regTwo!4843 (regex!1732 (h!14634 rules!2621))))) b!856482))

(assert (= (and b!855839 ((_ is Concat!3964) (regTwo!4843 (regex!1732 (h!14634 rules!2621))))) b!856483))

(assert (= (and b!855839 ((_ is Star!2165) (regTwo!4843 (regex!1732 (h!14634 rules!2621))))) b!856484))

(assert (= (and b!855839 ((_ is Union!2165) (regTwo!4843 (regex!1732 (h!14634 rules!2621))))) b!856485))

(declare-fun b_lambda!28803 () Bool)

(assert (= b_lambda!28799 (or d!267528 b_lambda!28803)))

(declare-fun bs!231893 () Bool)

(declare-fun d!268008 () Bool)

(assert (= bs!231893 (and d!268008 d!267528)))

(assert (=> bs!231893 (= (dynLambda!4336 lambda!25651 (h!14633 l!5107)) (rulesProduceIndividualToken!598 thiss!20117 rules!2621 (h!14633 l!5107)))))

(assert (=> bs!231893 m!1096615))

(assert (=> b!856365 d!268008))

(declare-fun b_lambda!28805 () Bool)

(assert (= b_lambda!28749 (or (and b!855462 b_free!25963 (= (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))))) (and b!855824 b_free!25975 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))))) (and b!855835 b_free!25979 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 rules!2621)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))))) (and b!856391 b_free!25991 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 (t!96470 l!5107)))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))))) (and b!855473 b_free!25955 (= (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))))) (and b!855459 b_free!25959) (and b!856443 b_free!25995 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 (t!96471 rules!2621))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))))) b_lambda!28805)))

(declare-fun b_lambda!28807 () Bool)

(assert (= b_lambda!28747 (or (and b!855462 b_free!25963) (and b!855473 b_free!25955 (= (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))))) (and b!855459 b_free!25959 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))))) (and b!856443 b_free!25995 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 (t!96471 rules!2621))))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))))) (and b!856391 b_free!25991 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 (t!96470 l!5107)))))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))))) (and b!855835 b_free!25979 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 rules!2621)))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))))) (and b!855824 b_free!25975 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))) (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))))) b_lambda!28807)))

(declare-fun b_lambda!28809 () Bool)

(assert (= b_lambda!28797 (or (and b!855462 b_free!25963 (= (toChars!2644 (transformation!1732 (rule!3155 separatorToken!297))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))))) (and b!856443 b_free!25995 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 (t!96471 rules!2621))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))))) (and b!855473 b_free!25955 (= (toChars!2644 (transformation!1732 (h!14634 rules!2621))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))))) (and b!855835 b_free!25979 (= (toChars!2644 (transformation!1732 (h!14634 (t!96471 rules!2621)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))))) (and b!855459 b_free!25959 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 l!5107)))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))))) (and b!855824 b_free!25975) (and b!856391 b_free!25991 (= (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 (t!96470 l!5107)))))) (toChars!2644 (transformation!1732 (rule!3155 (h!14633 (t!96470 l!5107))))))) b_lambda!28809)))

(declare-fun b_lambda!28811 () Bool)

(assert (= b_lambda!28755 (or d!267550 b_lambda!28811)))

(declare-fun bs!231894 () Bool)

(declare-fun d!268010 () Bool)

(assert (= bs!231894 (and d!268010 d!267550)))

(assert (=> bs!231894 (= (dynLambda!4336 lambda!25652 (h!14633 lt!323596)) (rulesProduceIndividualToken!598 thiss!20117 rules!2621 (h!14633 lt!323596)))))

(assert (=> bs!231894 m!1096621))

(assert (=> b!855928 d!268010))

(declare-fun b_lambda!28813 () Bool)

(assert (= b_lambda!28751 (or b!855470 b_lambda!28813)))

(declare-fun bs!231895 () Bool)

(declare-fun d!268012 () Bool)

(assert (= bs!231895 (and d!268012 b!855470)))

(assert (=> bs!231895 (= (dynLambda!4336 lambda!25644 (h!14633 (t!96470 l!5107))) (not (isSeparator!1732 (rule!3155 (h!14633 (t!96470 l!5107))))))))

(assert (=> b!855899 d!268012))

(check-sat (not b_next!26037) (not b!856440) (not tb!60705) (not d!267632) (not b_next!26019) (not d!267990) (not b!855855) (not b_next!26025) (not b!856187) (not d!267636) (not b!856363) (not b!856026) (not b!856476) (not b!856375) (not b!855897) (not b!856453) (not d!267892) (not d!267854) (not b!856452) (not b!856416) (not d!267646) (not d!267992) (not b_lambda!28805) (not d!267814) (not d!267930) (not d!267648) (not d!267986) (not b!856475) (not b!856028) (not b!856472) (not b!856356) (not b!856390) (not b!856426) (not b!856481) (not d!267914) (not b!856435) (not b!856362) (not b!856468) (not b!855888) b_and!75757 (not b!856422) (not tb!60653) (not b!856381) (not d!267890) (not b!856412) (not b_next!26059) (not b!856029) (not d!267958) (not d!267658) (not d!267664) (not b!856389) (not b!855882) (not d!267772) (not b!856366) (not b!856433) (not b!856473) (not b!856460) (not d!267962) (not d!267982) (not b!856413) (not d!267952) (not b_next!26023) (not b_next!26021) (not d!267684) (not b!856445) (not b!856300) (not b!856471) (not b!856182) (not b!855909) (not b_lambda!28781) (not d!267830) b_and!75769 b_and!75589 (not b!856464) (not b!856219) (not b!856409) b_and!75767 (not b!856200) (not b!856273) (not d!267920) (not b!856438) (not b!856191) (not b!856421) (not b!856345) (not b!855884) (not b!856427) (not b!856024) (not b_next!26043) (not b!856373) (not b!855906) (not b!856425) (not b!856477) (not b!855912) (not b!856085) (not b!855900) (not d!267634) (not b!856449) (not d!267650) (not d!267984) (not d!267764) (not d!267642) (not b!856451) (not d!267686) (not d!267670) (not b!855880) (not b!856220) (not b!856189) (not d!267966) b_and!75771 (not b!856086) (not b!855923) (not b!856276) (not b!855931) (not d!267676) (not b!856459) b_and!75545 (not d!268000) (not b!856465) (not b!856341) (not b!856184) (not b!856408) (not b!856480) (not b!856346) (not b_next!26039) (not b!856447) (not b!856455) (not b!855870) (not b_next!26053) (not b!856467) (not d!267988) (not b!856215) (not b!856082) (not d!267762) (not b!856461) (not bs!231893) (not b!855879) (not b!856212) (not b_lambda!28813) (not b!855929) (not d!267666) (not b!856406) (not b!855907) (not b!856424) (not b!855867) (not b!855891) (not b!856355) (not b!856436) (not b!856376) (not d!267918) (not b!855921) (not b!856185) (not b!856456) (not b!855871) (not b!856431) b_and!75755 (not b!856448) (not b_lambda!28745) (not b!856469) (not b!856129) (not b!856378) (not b!856414) (not b_lambda!28741) (not b!856410) (not b!855903) (not b!855930) (not b!856349) (not b!855901) (not b_next!26041) (not b_lambda!28743) (not d!267798) (not b!856379) b_and!75593 (not b!855885) (not b!856484) (not d!267970) (not b_lambda!28795) (not b_next!26017) (not b_lambda!28765) (not d!267630) (not b!856348) b_and!75763 (not d!267904) (not b!856437) (not b!856301) (not d!267948) (not b!856385) (not d!267774) (not b!856402) (not d!267932) (not b_lambda!28753) (not b!856190) (not b!856418) (not b!855866) (not b!855881) (not b_lambda!28807) tp_is_empty!3989 (not b!855754) (not d!267946) (not d!267956) (not b!856479) (not b!856388) (not b!856403) (not b_next!26057) (not b!856417) (not b_lambda!28803) (not d!267852) (not b!856368) (not b!856315) (not d!267976) (not b!856420) (not b!856463) (not b_lambda!28801) (not b!856442) (not b!856401) (not d!268002) (not d!267880) (not d!267668) (not b_next!26055) (not b!856354) (not b_next!26027) (not b!856439) (not b!856222) (not b!856485) (not b!856221) b_and!75549 (not b!856272) b_and!75553 (not b_lambda!28811) (not d!267770) (not b!855913) (not b!856289) (not tb!60603) (not b!855875) (not b!856400) (not b!856083) (not b!856277) (not b!856441) (not d!267766) b_and!75765 (not b!856367) (not b_lambda!28809) (not b!856380) (not d!267996) (not tb!60695) (not b!856432) (not bs!231894) (not b!856457) (not b!856199) (not b!856364) (not tb!60715) (not d!267678) (not d!267972) (not b!855757) (not tb!60573) (not b!855932) (not b!856111) (not b!855905) (not d!267628) (not b!856483) (not b!856386) (not b!856288) (not d!267916) (not d!267926) (not b!855889) (not d!267944) (not b!856198) (not b!856353) b_and!75759 (not b!856351) (not b!856446) (not d!267964) (not b!855910) (not b!856372) (not d!267638) b_and!75761 (not b!856032) (not b!856031) (not d!267922) (not d!267846) (not b!856342) (not d!267896) (not bm!50526))
(check-sat (not b_next!26025) (not b_next!26043) b_and!75755 (not b_next!26017) b_and!75763 (not b_next!26057) b_and!75765 b_and!75759 b_and!75761 (not b_next!26019) (not b_next!26037) b_and!75757 (not b_next!26059) (not b_next!26023) (not b_next!26021) b_and!75769 b_and!75589 b_and!75767 b_and!75771 b_and!75545 (not b_next!26039) (not b_next!26053) (not b_next!26041) b_and!75593 (not b_next!26055) b_and!75549 (not b_next!26027) b_and!75553)
