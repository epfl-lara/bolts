; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!190162 () Bool)

(assert start!190162)

(declare-fun b!1896414 () Bool)

(declare-fun b_free!52973 () Bool)

(declare-fun b_next!53677 () Bool)

(assert (=> b!1896414 (= b_free!52973 (not b_next!53677))))

(declare-fun tp!541251 () Bool)

(declare-fun b_and!146367 () Bool)

(assert (=> b!1896414 (= tp!541251 b_and!146367)))

(declare-fun b_free!52975 () Bool)

(declare-fun b_next!53679 () Bool)

(assert (=> b!1896414 (= b_free!52975 (not b_next!53679))))

(declare-fun tp!541252 () Bool)

(declare-fun b_and!146369 () Bool)

(assert (=> b!1896414 (= tp!541252 b_and!146369)))

(declare-fun b!1896420 () Bool)

(declare-fun b_free!52977 () Bool)

(declare-fun b_next!53681 () Bool)

(assert (=> b!1896420 (= b_free!52977 (not b_next!53681))))

(declare-fun tp!541243 () Bool)

(declare-fun b_and!146371 () Bool)

(assert (=> b!1896420 (= tp!541243 b_and!146371)))

(declare-fun b_free!52979 () Bool)

(declare-fun b_next!53683 () Bool)

(assert (=> b!1896420 (= b_free!52979 (not b_next!53683))))

(declare-fun tp!541248 () Bool)

(declare-fun b_and!146373 () Bool)

(assert (=> b!1896420 (= tp!541248 b_and!146373)))

(declare-fun b!1896409 () Bool)

(declare-fun b_free!52981 () Bool)

(declare-fun b_next!53685 () Bool)

(assert (=> b!1896409 (= b_free!52981 (not b_next!53685))))

(declare-fun tp!541245 () Bool)

(declare-fun b_and!146375 () Bool)

(assert (=> b!1896409 (= tp!541245 b_and!146375)))

(declare-fun b_free!52983 () Bool)

(declare-fun b_next!53687 () Bool)

(assert (=> b!1896409 (= b_free!52983 (not b_next!53687))))

(declare-fun tp!541246 () Bool)

(declare-fun b_and!146377 () Bool)

(assert (=> b!1896409 (= tp!541246 b_and!146377)))

(declare-fun b!1896407 () Bool)

(declare-fun res!846390 () Bool)

(declare-fun e!1210713 () Bool)

(assert (=> b!1896407 (=> (not res!846390) (not e!1210713))))

(declare-datatypes ((List!21346 0))(
  ( (Nil!21264) (Cons!21264 (h!26665 (_ BitVec 16)) (t!176295 List!21346)) )
))
(declare-datatypes ((TokenValue!3911 0))(
  ( (FloatLiteralValue!7822 (text!27822 List!21346)) (TokenValueExt!3910 (__x!13320 Int)) (Broken!19555 (value!119154 List!21346)) (Object!3992) (End!3911) (Def!3911) (Underscore!3911) (Match!3911) (Else!3911) (Error!3911) (Case!3911) (If!3911) (Extends!3911) (Abstract!3911) (Class!3911) (Val!3911) (DelimiterValue!7822 (del!3971 List!21346)) (KeywordValue!3917 (value!119155 List!21346)) (CommentValue!7822 (value!119156 List!21346)) (WhitespaceValue!7822 (value!119157 List!21346)) (IndentationValue!3911 (value!119158 List!21346)) (String!24674) (Int32!3911) (Broken!19556 (value!119159 List!21346)) (Boolean!3912) (Unit!35620) (OperatorValue!3914 (op!3971 List!21346)) (IdentifierValue!7822 (value!119160 List!21346)) (IdentifierValue!7823 (value!119161 List!21346)) (WhitespaceValue!7823 (value!119162 List!21346)) (True!7822) (False!7822) (Broken!19557 (value!119163 List!21346)) (Broken!19558 (value!119164 List!21346)) (True!7823) (RightBrace!3911) (RightBracket!3911) (Colon!3911) (Null!3911) (Comma!3911) (LeftBracket!3911) (False!7823) (LeftBrace!3911) (ImaginaryLiteralValue!3911 (text!27823 List!21346)) (StringLiteralValue!11733 (value!119165 List!21346)) (EOFValue!3911 (value!119166 List!21346)) (IdentValue!3911 (value!119167 List!21346)) (DelimiterValue!7823 (value!119168 List!21346)) (DedentValue!3911 (value!119169 List!21346)) (NewLineValue!3911 (value!119170 List!21346)) (IntegerValue!11733 (value!119171 (_ BitVec 32)) (text!27824 List!21346)) (IntegerValue!11734 (value!119172 Int) (text!27825 List!21346)) (Times!3911) (Or!3911) (Equal!3911) (Minus!3911) (Broken!19559 (value!119173 List!21346)) (And!3911) (Div!3911) (LessEqual!3911) (Mod!3911) (Concat!9111) (Not!3911) (Plus!3911) (SpaceValue!3911 (value!119174 List!21346)) (IntegerValue!11735 (value!119175 Int) (text!27826 List!21346)) (StringLiteralValue!11734 (text!27827 List!21346)) (FloatLiteralValue!7823 (text!27828 List!21346)) (BytesLiteralValue!3911 (value!119176 List!21346)) (CommentValue!7823 (value!119177 List!21346)) (StringLiteralValue!11735 (value!119178 List!21346)) (ErrorTokenValue!3911 (msg!3972 List!21346)) )
))
(declare-datatypes ((C!10546 0))(
  ( (C!10547 (val!6225 Int)) )
))
(declare-datatypes ((List!21347 0))(
  ( (Nil!21265) (Cons!21265 (h!26666 C!10546) (t!176296 List!21347)) )
))
(declare-datatypes ((IArray!14165 0))(
  ( (IArray!14166 (innerList!7140 List!21347)) )
))
(declare-datatypes ((Conc!7080 0))(
  ( (Node!7080 (left!17058 Conc!7080) (right!17388 Conc!7080) (csize!14390 Int) (cheight!7291 Int)) (Leaf!10431 (xs!9974 IArray!14165) (csize!14391 Int)) (Empty!7080) )
))
(declare-datatypes ((BalanceConc!13976 0))(
  ( (BalanceConc!13977 (c!309328 Conc!7080)) )
))
(declare-datatypes ((TokenValueInjection!7406 0))(
  ( (TokenValueInjection!7407 (toValue!5392 Int) (toChars!5251 Int)) )
))
(declare-datatypes ((String!24675 0))(
  ( (String!24676 (value!119179 String)) )
))
(declare-datatypes ((Regex!5200 0))(
  ( (ElementMatch!5200 (c!309329 C!10546)) (Concat!9112 (regOne!10912 Regex!5200) (regTwo!10912 Regex!5200)) (EmptyExpr!5200) (Star!5200 (reg!5529 Regex!5200)) (EmptyLang!5200) (Union!5200 (regOne!10913 Regex!5200) (regTwo!10913 Regex!5200)) )
))
(declare-datatypes ((Rule!7350 0))(
  ( (Rule!7351 (regex!3775 Regex!5200) (tag!4193 String!24675) (isSeparator!3775 Bool) (transformation!3775 TokenValueInjection!7406)) )
))
(declare-datatypes ((List!21348 0))(
  ( (Nil!21266) (Cons!21266 (h!26667 Rule!7350) (t!176297 List!21348)) )
))
(declare-fun rules!3198 () List!21348)

(declare-fun isEmpty!13057 (List!21348) Bool)

(assert (=> b!1896407 (= res!846390 (not (isEmpty!13057 rules!3198)))))

(declare-fun b!1896408 () Bool)

(declare-fun res!846380 () Bool)

(assert (=> b!1896408 (=> (not res!846380) (not e!1210713))))

(declare-datatypes ((Token!7102 0))(
  ( (Token!7103 (value!119180 TokenValue!3911) (rule!5968 Rule!7350) (size!16853 Int) (originalCharacters!4582 List!21347)) )
))
(declare-fun separatorToken!354 () Token!7102)

(declare-datatypes ((LexerInterface!3388 0))(
  ( (LexerInterfaceExt!3385 (__x!13321 Int)) (Lexer!3386) )
))
(declare-fun thiss!23328 () LexerInterface!3388)

(declare-fun rulesProduceIndividualToken!1560 (LexerInterface!3388 List!21348 Token!7102) Bool)

(assert (=> b!1896408 (= res!846380 (rulesProduceIndividualToken!1560 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun res!846391 () Bool)

(assert (=> start!190162 (=> (not res!846391) (not e!1210713))))

(assert (=> start!190162 (= res!846391 (is-Lexer!3386 thiss!23328))))

(assert (=> start!190162 e!1210713))

(assert (=> start!190162 true))

(declare-fun e!1210719 () Bool)

(assert (=> start!190162 e!1210719))

(declare-fun e!1210704 () Bool)

(assert (=> start!190162 e!1210704))

(declare-fun e!1210718 () Bool)

(declare-fun inv!28370 (Token!7102) Bool)

(assert (=> start!190162 (and (inv!28370 separatorToken!354) e!1210718)))

(declare-fun e!1210703 () Bool)

(assert (=> b!1896409 (= e!1210703 (and tp!541245 tp!541246))))

(declare-fun e!1210717 () Bool)

(declare-fun tp!541244 () Bool)

(declare-fun b!1896410 () Bool)

(declare-fun inv!21 (TokenValue!3911) Bool)

(assert (=> b!1896410 (= e!1210718 (and (inv!21 (value!119180 separatorToken!354)) e!1210717 tp!541244))))

(declare-fun b!1896411 () Bool)

(declare-fun res!846382 () Bool)

(assert (=> b!1896411 (=> (not res!846382) (not e!1210713))))

(declare-datatypes ((List!21349 0))(
  ( (Nil!21267) (Cons!21267 (h!26668 Token!7102) (t!176298 List!21349)) )
))
(declare-fun tokens!598 () List!21349)

(assert (=> b!1896411 (= res!846382 (is-Cons!21267 tokens!598))))

(declare-fun b!1896412 () Bool)

(assert (=> b!1896412 (= e!1210713 (not true))))

(declare-fun lt!725279 () Bool)

(declare-fun rulesValidInductive!1279 (LexerInterface!3388 List!21348) Bool)

(assert (=> b!1896412 (= lt!725279 (rulesValidInductive!1279 thiss!23328 rules!3198))))

(declare-fun e!1210705 () Bool)

(assert (=> b!1896412 e!1210705))

(declare-fun res!846383 () Bool)

(assert (=> b!1896412 (=> (not res!846383) (not e!1210705))))

(declare-datatypes ((Option!4255 0))(
  ( (None!4254) (Some!4254 (v!26283 Rule!7350)) )
))
(declare-fun lt!725280 () Option!4255)

(declare-fun isDefined!3553 (Option!4255) Bool)

(assert (=> b!1896412 (= res!846383 (isDefined!3553 lt!725280))))

(declare-fun getRuleFromTag!618 (LexerInterface!3388 List!21348 String!24675) Option!4255)

(assert (=> b!1896412 (= lt!725280 (getRuleFromTag!618 thiss!23328 rules!3198 (tag!4193 (rule!5968 separatorToken!354))))))

(declare-datatypes ((Unit!35621 0))(
  ( (Unit!35622) )
))
(declare-fun lt!725285 () Unit!35621)

(declare-fun lt!725281 () List!21347)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!618 (LexerInterface!3388 List!21348 List!21347 Token!7102) Unit!35621)

(assert (=> b!1896412 (= lt!725285 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!618 thiss!23328 rules!3198 lt!725281 separatorToken!354))))

(declare-fun list!8651 (BalanceConc!13976) List!21347)

(declare-fun charsOf!2331 (Token!7102) BalanceConc!13976)

(assert (=> b!1896412 (= lt!725281 (list!8651 (charsOf!2331 separatorToken!354)))))

(declare-fun lt!725284 () Unit!35621)

(declare-fun lt!725286 () BalanceConc!13976)

(declare-fun lemmaEqSameImage!483 (TokenValueInjection!7406 BalanceConc!13976 BalanceConc!13976) Unit!35621)

(declare-fun seqFromList!2647 (List!21347) BalanceConc!13976)

(assert (=> b!1896412 (= lt!725284 (lemmaEqSameImage!483 (transformation!3775 (rule!5968 (h!26668 tokens!598))) lt!725286 (seqFromList!2647 (originalCharacters!4582 (h!26668 tokens!598)))))))

(declare-fun lt!725283 () Unit!35621)

(declare-fun lemmaSemiInverse!754 (TokenValueInjection!7406 BalanceConc!13976) Unit!35621)

(assert (=> b!1896412 (= lt!725283 (lemmaSemiInverse!754 (transformation!3775 (rule!5968 (h!26668 tokens!598))) lt!725286))))

(assert (=> b!1896412 (= lt!725286 (charsOf!2331 (h!26668 tokens!598)))))

(declare-fun b!1896413 () Bool)

(declare-fun res!846389 () Bool)

(assert (=> b!1896413 (=> (not res!846389) (not e!1210713))))

(declare-fun rulesInvariant!2995 (LexerInterface!3388 List!21348) Bool)

(assert (=> b!1896413 (= res!846389 (rulesInvariant!2995 thiss!23328 rules!3198))))

(declare-fun e!1210708 () Bool)

(assert (=> b!1896414 (= e!1210708 (and tp!541251 tp!541252))))

(declare-fun b!1896415 () Bool)

(declare-datatypes ((tuple2!20074 0))(
  ( (tuple2!20075 (_1!11506 Token!7102) (_2!11506 List!21347)) )
))
(declare-datatypes ((Option!4256 0))(
  ( (None!4255) (Some!4255 (v!26284 tuple2!20074)) )
))
(declare-fun isDefined!3554 (Option!4256) Bool)

(declare-fun maxPrefix!1834 (LexerInterface!3388 List!21348 List!21347) Option!4256)

(assert (=> b!1896415 (= e!1210705 (isDefined!3554 (maxPrefix!1834 thiss!23328 rules!3198 (list!8651 lt!725286))))))

(declare-fun b!1896416 () Bool)

(declare-fun res!846386 () Bool)

(assert (=> b!1896416 (=> (not res!846386) (not e!1210713))))

(declare-fun sepAndNonSepRulesDisjointChars!873 (List!21348 List!21348) Bool)

(assert (=> b!1896416 (= res!846386 (sepAndNonSepRulesDisjointChars!873 rules!3198 rules!3198))))

(declare-fun b!1896417 () Bool)

(declare-fun res!846384 () Bool)

(assert (=> b!1896417 (=> (not res!846384) (not e!1210705))))

(declare-fun e!1210712 () Bool)

(assert (=> b!1896417 (= res!846384 e!1210712)))

(declare-fun res!846388 () Bool)

(assert (=> b!1896417 (=> (not res!846388) (not e!1210712))))

(declare-fun lt!725282 () Rule!7350)

(declare-fun matchR!2486 (Regex!5200 List!21347) Bool)

(assert (=> b!1896417 (= res!846388 (matchR!2486 (regex!3775 lt!725282) lt!725281))))

(declare-fun get!6552 (Option!4255) Rule!7350)

(assert (=> b!1896417 (= lt!725282 (get!6552 lt!725280))))

(declare-fun b!1896418 () Bool)

(declare-fun res!846385 () Bool)

(assert (=> b!1896418 (=> (not res!846385) (not e!1210713))))

(declare-fun lambda!74096 () Int)

(declare-fun forall!4453 (List!21349 Int) Bool)

(assert (=> b!1896418 (= res!846385 (forall!4453 tokens!598 lambda!74096))))

(declare-fun b!1896419 () Bool)

(declare-fun res!846387 () Bool)

(assert (=> b!1896419 (=> (not res!846387) (not e!1210713))))

(assert (=> b!1896419 (= res!846387 (isSeparator!3775 (rule!5968 separatorToken!354)))))

(declare-fun e!1210710 () Bool)

(assert (=> b!1896420 (= e!1210710 (and tp!541243 tp!541248))))

(declare-fun e!1210706 () Bool)

(declare-fun tp!541241 () Bool)

(declare-fun b!1896421 () Bool)

(assert (=> b!1896421 (= e!1210704 (and (inv!28370 (h!26668 tokens!598)) e!1210706 tp!541241))))

(declare-fun e!1210715 () Bool)

(declare-fun b!1896422 () Bool)

(declare-fun tp!541247 () Bool)

(assert (=> b!1896422 (= e!1210706 (and (inv!21 (value!119180 (h!26668 tokens!598))) e!1210715 tp!541247))))

(declare-fun tp!541250 () Bool)

(declare-fun b!1896423 () Bool)

(declare-fun inv!28367 (String!24675) Bool)

(declare-fun inv!28371 (TokenValueInjection!7406) Bool)

(assert (=> b!1896423 (= e!1210715 (and tp!541250 (inv!28367 (tag!4193 (rule!5968 (h!26668 tokens!598)))) (inv!28371 (transformation!3775 (rule!5968 (h!26668 tokens!598)))) e!1210710))))

(declare-fun b!1896424 () Bool)

(declare-fun e!1210720 () Bool)

(declare-fun tp!541253 () Bool)

(assert (=> b!1896424 (= e!1210719 (and e!1210720 tp!541253))))

(declare-fun b!1896425 () Bool)

(declare-fun tp!541249 () Bool)

(assert (=> b!1896425 (= e!1210717 (and tp!541249 (inv!28367 (tag!4193 (rule!5968 separatorToken!354))) (inv!28371 (transformation!3775 (rule!5968 separatorToken!354))) e!1210703))))

(declare-fun b!1896426 () Bool)

(assert (=> b!1896426 (= e!1210712 (= (rule!5968 separatorToken!354) lt!725282))))

(declare-fun tp!541242 () Bool)

(declare-fun b!1896427 () Bool)

(assert (=> b!1896427 (= e!1210720 (and tp!541242 (inv!28367 (tag!4193 (h!26667 rules!3198))) (inv!28371 (transformation!3775 (h!26667 rules!3198))) e!1210708))))

(declare-fun b!1896428 () Bool)

(declare-fun res!846381 () Bool)

(assert (=> b!1896428 (=> (not res!846381) (not e!1210713))))

(declare-fun rulesProduceEachTokenIndividuallyList!1119 (LexerInterface!3388 List!21348 List!21349) Bool)

(assert (=> b!1896428 (= res!846381 (rulesProduceEachTokenIndividuallyList!1119 thiss!23328 rules!3198 tokens!598))))

(assert (= (and start!190162 res!846391) b!1896407))

(assert (= (and b!1896407 res!846390) b!1896413))

(assert (= (and b!1896413 res!846389) b!1896428))

(assert (= (and b!1896428 res!846381) b!1896408))

(assert (= (and b!1896408 res!846380) b!1896419))

(assert (= (and b!1896419 res!846387) b!1896418))

(assert (= (and b!1896418 res!846385) b!1896416))

(assert (= (and b!1896416 res!846386) b!1896411))

(assert (= (and b!1896411 res!846382) b!1896412))

(assert (= (and b!1896412 res!846383) b!1896417))

(assert (= (and b!1896417 res!846388) b!1896426))

(assert (= (and b!1896417 res!846384) b!1896415))

(assert (= b!1896427 b!1896414))

(assert (= b!1896424 b!1896427))

(assert (= (and start!190162 (is-Cons!21266 rules!3198)) b!1896424))

(assert (= b!1896423 b!1896420))

(assert (= b!1896422 b!1896423))

(assert (= b!1896421 b!1896422))

(assert (= (and start!190162 (is-Cons!21267 tokens!598)) b!1896421))

(assert (= b!1896425 b!1896409))

(assert (= b!1896410 b!1896425))

(assert (= start!190162 b!1896410))

(declare-fun m!2327635 () Bool)

(assert (=> start!190162 m!2327635))

(declare-fun m!2327637 () Bool)

(assert (=> b!1896408 m!2327637))

(declare-fun m!2327639 () Bool)

(assert (=> b!1896410 m!2327639))

(declare-fun m!2327641 () Bool)

(assert (=> b!1896417 m!2327641))

(declare-fun m!2327643 () Bool)

(assert (=> b!1896417 m!2327643))

(declare-fun m!2327645 () Bool)

(assert (=> b!1896421 m!2327645))

(declare-fun m!2327647 () Bool)

(assert (=> b!1896412 m!2327647))

(declare-fun m!2327649 () Bool)

(assert (=> b!1896412 m!2327649))

(declare-fun m!2327651 () Bool)

(assert (=> b!1896412 m!2327651))

(declare-fun m!2327653 () Bool)

(assert (=> b!1896412 m!2327653))

(assert (=> b!1896412 m!2327653))

(declare-fun m!2327655 () Bool)

(assert (=> b!1896412 m!2327655))

(declare-fun m!2327657 () Bool)

(assert (=> b!1896412 m!2327657))

(declare-fun m!2327659 () Bool)

(assert (=> b!1896412 m!2327659))

(declare-fun m!2327661 () Bool)

(assert (=> b!1896412 m!2327661))

(assert (=> b!1896412 m!2327661))

(declare-fun m!2327663 () Bool)

(assert (=> b!1896412 m!2327663))

(declare-fun m!2327665 () Bool)

(assert (=> b!1896412 m!2327665))

(declare-fun m!2327667 () Bool)

(assert (=> b!1896416 m!2327667))

(declare-fun m!2327669 () Bool)

(assert (=> b!1896428 m!2327669))

(declare-fun m!2327671 () Bool)

(assert (=> b!1896415 m!2327671))

(assert (=> b!1896415 m!2327671))

(declare-fun m!2327673 () Bool)

(assert (=> b!1896415 m!2327673))

(assert (=> b!1896415 m!2327673))

(declare-fun m!2327675 () Bool)

(assert (=> b!1896415 m!2327675))

(declare-fun m!2327677 () Bool)

(assert (=> b!1896422 m!2327677))

(declare-fun m!2327679 () Bool)

(assert (=> b!1896425 m!2327679))

(declare-fun m!2327681 () Bool)

(assert (=> b!1896425 m!2327681))

(declare-fun m!2327683 () Bool)

(assert (=> b!1896427 m!2327683))

(declare-fun m!2327685 () Bool)

(assert (=> b!1896427 m!2327685))

(declare-fun m!2327687 () Bool)

(assert (=> b!1896407 m!2327687))

(declare-fun m!2327689 () Bool)

(assert (=> b!1896423 m!2327689))

(declare-fun m!2327691 () Bool)

(assert (=> b!1896423 m!2327691))

(declare-fun m!2327693 () Bool)

(assert (=> b!1896418 m!2327693))

(declare-fun m!2327695 () Bool)

(assert (=> b!1896413 m!2327695))

(push 1)

(assert b_and!146367)

(assert (not b!1896408))

(assert (not b!1896412))

(assert (not b_next!53685))

(assert (not b!1896423))

(assert (not b!1896427))

(assert (not b_next!53683))

(assert (not b!1896418))

(assert (not start!190162))

(assert (not b!1896413))

(assert (not b!1896428))

(assert (not b!1896415))

(assert b_and!146373)

(assert (not b!1896416))

(assert (not b_next!53687))

(assert (not b!1896407))

(assert b_and!146369)

(assert b_and!146371)

(assert (not b!1896421))

(assert (not b_next!53679))

(assert (not b!1896422))

(assert (not b!1896425))

(assert (not b_next!53681))

(assert b_and!146375)

(assert (not b!1896417))

(assert (not b_next!53677))

(assert (not b!1896410))

(assert (not b!1896424))

(assert b_and!146377)

(check-sat)

(pop 1)

(push 1)

(assert b_and!146367)

(assert (not b_next!53687))

(assert b_and!146369)

(assert (not b_next!53685))

(assert b_and!146371)

(assert (not b_next!53679))

(assert (not b_next!53683))

(assert b_and!146373)

(assert (not b_next!53681))

(assert b_and!146375)

(assert (not b_next!53677))

(assert b_and!146377)

(check-sat)

(pop 1)

