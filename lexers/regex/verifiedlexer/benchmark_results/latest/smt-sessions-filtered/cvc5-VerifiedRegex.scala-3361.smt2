; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!190494 () Bool)

(assert start!190494)

(declare-fun b!1899700 () Bool)

(declare-fun b_free!53285 () Bool)

(declare-fun b_next!53989 () Bool)

(assert (=> b!1899700 (= b_free!53285 (not b_next!53989))))

(declare-fun tp!542476 () Bool)

(declare-fun b_and!146967 () Bool)

(assert (=> b!1899700 (= tp!542476 b_and!146967)))

(declare-fun b_free!53287 () Bool)

(declare-fun b_next!53991 () Bool)

(assert (=> b!1899700 (= b_free!53287 (not b_next!53991))))

(declare-fun tp!542469 () Bool)

(declare-fun b_and!146969 () Bool)

(assert (=> b!1899700 (= tp!542469 b_and!146969)))

(declare-fun b!1899716 () Bool)

(declare-fun b_free!53289 () Bool)

(declare-fun b_next!53993 () Bool)

(assert (=> b!1899716 (= b_free!53289 (not b_next!53993))))

(declare-fun tp!542470 () Bool)

(declare-fun b_and!146971 () Bool)

(assert (=> b!1899716 (= tp!542470 b_and!146971)))

(declare-fun b_free!53291 () Bool)

(declare-fun b_next!53995 () Bool)

(assert (=> b!1899716 (= b_free!53291 (not b_next!53995))))

(declare-fun tp!542466 () Bool)

(declare-fun b_and!146973 () Bool)

(assert (=> b!1899716 (= tp!542466 b_and!146973)))

(declare-fun b!1899707 () Bool)

(declare-fun b_free!53293 () Bool)

(declare-fun b_next!53997 () Bool)

(assert (=> b!1899707 (= b_free!53293 (not b_next!53997))))

(declare-fun tp!542468 () Bool)

(declare-fun b_and!146975 () Bool)

(assert (=> b!1899707 (= tp!542468 b_and!146975)))

(declare-fun b_free!53295 () Bool)

(declare-fun b_next!53999 () Bool)

(assert (=> b!1899707 (= b_free!53295 (not b_next!53999))))

(declare-fun tp!542471 () Bool)

(declare-fun b_and!146977 () Bool)

(assert (=> b!1899707 (= tp!542471 b_and!146977)))

(declare-fun b!1899695 () Bool)

(declare-fun e!1213191 () Bool)

(declare-fun e!1213185 () Bool)

(assert (=> b!1899695 (= e!1213191 e!1213185)))

(declare-fun res!848088 () Bool)

(assert (=> b!1899695 (=> (not res!848088) (not e!1213185))))

(declare-datatypes ((List!21440 0))(
  ( (Nil!21358) (Cons!21358 (h!26759 (_ BitVec 16)) (t!176711 List!21440)) )
))
(declare-datatypes ((TokenValue!3933 0))(
  ( (FloatLiteralValue!7866 (text!27976 List!21440)) (TokenValueExt!3932 (__x!13364 Int)) (Broken!19665 (value!119781 List!21440)) (Object!4014) (End!3933) (Def!3933) (Underscore!3933) (Match!3933) (Else!3933) (Error!3933) (Case!3933) (If!3933) (Extends!3933) (Abstract!3933) (Class!3933) (Val!3933) (DelimiterValue!7866 (del!3993 List!21440)) (KeywordValue!3939 (value!119782 List!21440)) (CommentValue!7866 (value!119783 List!21440)) (WhitespaceValue!7866 (value!119784 List!21440)) (IndentationValue!3933 (value!119785 List!21440)) (String!24784) (Int32!3933) (Broken!19666 (value!119786 List!21440)) (Boolean!3934) (Unit!35690) (OperatorValue!3936 (op!3993 List!21440)) (IdentifierValue!7866 (value!119787 List!21440)) (IdentifierValue!7867 (value!119788 List!21440)) (WhitespaceValue!7867 (value!119789 List!21440)) (True!7866) (False!7866) (Broken!19667 (value!119790 List!21440)) (Broken!19668 (value!119791 List!21440)) (True!7867) (RightBrace!3933) (RightBracket!3933) (Colon!3933) (Null!3933) (Comma!3933) (LeftBracket!3933) (False!7867) (LeftBrace!3933) (ImaginaryLiteralValue!3933 (text!27977 List!21440)) (StringLiteralValue!11799 (value!119792 List!21440)) (EOFValue!3933 (value!119793 List!21440)) (IdentValue!3933 (value!119794 List!21440)) (DelimiterValue!7867 (value!119795 List!21440)) (DedentValue!3933 (value!119796 List!21440)) (NewLineValue!3933 (value!119797 List!21440)) (IntegerValue!11799 (value!119798 (_ BitVec 32)) (text!27978 List!21440)) (IntegerValue!11800 (value!119799 Int) (text!27979 List!21440)) (Times!3933) (Or!3933) (Equal!3933) (Minus!3933) (Broken!19669 (value!119800 List!21440)) (And!3933) (Div!3933) (LessEqual!3933) (Mod!3933) (Concat!9155) (Not!3933) (Plus!3933) (SpaceValue!3933 (value!119801 List!21440)) (IntegerValue!11801 (value!119802 Int) (text!27980 List!21440)) (StringLiteralValue!11800 (text!27981 List!21440)) (FloatLiteralValue!7867 (text!27982 List!21440)) (BytesLiteralValue!3933 (value!119803 List!21440)) (CommentValue!7867 (value!119804 List!21440)) (StringLiteralValue!11801 (value!119805 List!21440)) (ErrorTokenValue!3933 (msg!3994 List!21440)) )
))
(declare-datatypes ((C!10590 0))(
  ( (C!10591 (val!6247 Int)) )
))
(declare-datatypes ((List!21441 0))(
  ( (Nil!21359) (Cons!21359 (h!26760 C!10590) (t!176712 List!21441)) )
))
(declare-datatypes ((IArray!14221 0))(
  ( (IArray!14222 (innerList!7168 List!21441)) )
))
(declare-datatypes ((Conc!7108 0))(
  ( (Node!7108 (left!17109 Conc!7108) (right!17439 Conc!7108) (csize!14446 Int) (cheight!7319 Int)) (Leaf!10470 (xs!10002 IArray!14221) (csize!14447 Int)) (Empty!7108) )
))
(declare-datatypes ((BalanceConc!14032 0))(
  ( (BalanceConc!14033 (c!309622 Conc!7108)) )
))
(declare-datatypes ((TokenValueInjection!7450 0))(
  ( (TokenValueInjection!7451 (toValue!5414 Int) (toChars!5273 Int)) )
))
(declare-datatypes ((String!24785 0))(
  ( (String!24786 (value!119806 String)) )
))
(declare-datatypes ((Regex!5222 0))(
  ( (ElementMatch!5222 (c!309623 C!10590)) (Concat!9156 (regOne!10956 Regex!5222) (regTwo!10956 Regex!5222)) (EmptyExpr!5222) (Star!5222 (reg!5551 Regex!5222)) (EmptyLang!5222) (Union!5222 (regOne!10957 Regex!5222) (regTwo!10957 Regex!5222)) )
))
(declare-datatypes ((Rule!7394 0))(
  ( (Rule!7395 (regex!3797 Regex!5222) (tag!4221 String!24785) (isSeparator!3797 Bool) (transformation!3797 TokenValueInjection!7450)) )
))
(declare-fun lt!726455 () Rule!7394)

(declare-fun lt!726449 () List!21441)

(declare-fun matchR!2508 (Regex!5222 List!21441) Bool)

(assert (=> b!1899695 (= res!848088 (matchR!2508 (regex!3797 lt!726455) lt!726449))))

(declare-datatypes ((Option!4299 0))(
  ( (None!4298) (Some!4298 (v!26327 Rule!7394)) )
))
(declare-fun lt!726446 () Option!4299)

(declare-fun get!6605 (Option!4299) Rule!7394)

(assert (=> b!1899695 (= lt!726455 (get!6605 lt!726446))))

(declare-fun b!1899696 () Bool)

(declare-fun res!848079 () Bool)

(declare-fun e!1213177 () Bool)

(assert (=> b!1899696 (=> (not res!848079) (not e!1213177))))

(declare-datatypes ((LexerInterface!3410 0))(
  ( (LexerInterfaceExt!3407 (__x!13365 Int)) (Lexer!3408) )
))
(declare-fun thiss!23328 () LexerInterface!3410)

(declare-datatypes ((List!21442 0))(
  ( (Nil!21360) (Cons!21360 (h!26761 Rule!7394) (t!176713 List!21442)) )
))
(declare-fun rules!3198 () List!21442)

(declare-datatypes ((Token!7146 0))(
  ( (Token!7147 (value!119807 TokenValue!3933) (rule!5990 Rule!7394) (size!16887 Int) (originalCharacters!4604 List!21441)) )
))
(declare-datatypes ((List!21443 0))(
  ( (Nil!21361) (Cons!21361 (h!26762 Token!7146) (t!176714 List!21443)) )
))
(declare-fun tokens!598 () List!21443)

(declare-fun rulesProduceEachTokenIndividuallyList!1141 (LexerInterface!3410 List!21442 List!21443) Bool)

(assert (=> b!1899696 (= res!848079 (rulesProduceEachTokenIndividuallyList!1141 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1899697 () Bool)

(declare-fun res!848086 () Bool)

(assert (=> b!1899697 (=> (not res!848086) (not e!1213177))))

(declare-fun lambda!74238 () Int)

(declare-fun forall!4477 (List!21443 Int) Bool)

(assert (=> b!1899697 (= res!848086 (forall!4477 tokens!598 lambda!74238))))

(declare-fun b!1899698 () Bool)

(declare-fun res!848081 () Bool)

(assert (=> b!1899698 (=> (not res!848081) (not e!1213177))))

(declare-fun rulesInvariant!3017 (LexerInterface!3410 List!21442) Bool)

(assert (=> b!1899698 (= res!848081 (rulesInvariant!3017 thiss!23328 rules!3198))))

(declare-fun b!1899699 () Bool)

(declare-fun res!848085 () Bool)

(assert (=> b!1899699 (=> (not res!848085) (not e!1213177))))

(declare-fun sepAndNonSepRulesDisjointChars!895 (List!21442 List!21442) Bool)

(assert (=> b!1899699 (= res!848085 (sepAndNonSepRulesDisjointChars!895 rules!3198 rules!3198))))

(declare-fun e!1213196 () Bool)

(assert (=> b!1899700 (= e!1213196 (and tp!542476 tp!542469))))

(declare-fun res!848078 () Bool)

(assert (=> start!190494 (=> (not res!848078) (not e!1213177))))

(assert (=> start!190494 (= res!848078 (is-Lexer!3408 thiss!23328))))

(assert (=> start!190494 e!1213177))

(assert (=> start!190494 true))

(declare-fun e!1213187 () Bool)

(assert (=> start!190494 e!1213187))

(declare-fun e!1213178 () Bool)

(assert (=> start!190494 e!1213178))

(declare-fun separatorToken!354 () Token!7146)

(declare-fun e!1213195 () Bool)

(declare-fun inv!28459 (Token!7146) Bool)

(assert (=> start!190494 (and (inv!28459 separatorToken!354) e!1213195)))

(declare-fun b!1899701 () Bool)

(declare-fun e!1213198 () Bool)

(declare-fun tp!542477 () Bool)

(assert (=> b!1899701 (= e!1213187 (and e!1213198 tp!542477))))

(declare-fun b!1899702 () Bool)

(declare-fun e!1213192 () Bool)

(declare-fun lt!726445 () Rule!7394)

(assert (=> b!1899702 (= e!1213192 (= (rule!5990 (h!26762 tokens!598)) lt!726445))))

(declare-fun b!1899703 () Bool)

(declare-fun res!848084 () Bool)

(assert (=> b!1899703 (=> (not res!848084) (not e!1213177))))

(declare-fun isEmpty!13103 (List!21442) Bool)

(assert (=> b!1899703 (= res!848084 (not (isEmpty!13103 rules!3198)))))

(declare-fun b!1899704 () Bool)

(declare-fun res!848082 () Bool)

(assert (=> b!1899704 (=> (not res!848082) (not e!1213177))))

(assert (=> b!1899704 (= res!848082 (is-Cons!21361 tokens!598))))

(declare-fun b!1899705 () Bool)

(declare-fun e!1213183 () Bool)

(assert (=> b!1899705 (= e!1213183 e!1213192)))

(declare-fun res!848076 () Bool)

(assert (=> b!1899705 (=> (not res!848076) (not e!1213192))))

(declare-fun lt!726457 () List!21441)

(assert (=> b!1899705 (= res!848076 (matchR!2508 (regex!3797 lt!726445) lt!726457))))

(declare-fun lt!726450 () Option!4299)

(assert (=> b!1899705 (= lt!726445 (get!6605 lt!726450))))

(declare-fun b!1899706 () Bool)

(declare-fun e!1213194 () Bool)

(assert (=> b!1899706 (= e!1213194 (forall!4477 tokens!598 lambda!74238))))

(declare-fun e!1213179 () Bool)

(assert (=> b!1899707 (= e!1213179 (and tp!542468 tp!542471))))

(declare-fun b!1899708 () Bool)

(declare-fun e!1213189 () Bool)

(declare-datatypes ((tuple2!20130 0))(
  ( (tuple2!20131 (_1!11534 Token!7146) (_2!11534 List!21441)) )
))
(declare-datatypes ((Option!4300 0))(
  ( (None!4299) (Some!4299 (v!26328 tuple2!20130)) )
))
(declare-fun lt!726447 () Option!4300)

(declare-fun get!6606 (Option!4300) tuple2!20130)

(assert (=> b!1899708 (= e!1213189 (= (_1!11534 (get!6606 lt!726447)) (h!26762 tokens!598)))))

(declare-fun b!1899709 () Bool)

(declare-fun tp!542474 () Bool)

(declare-fun inv!28456 (String!24785) Bool)

(declare-fun inv!28460 (TokenValueInjection!7450) Bool)

(assert (=> b!1899709 (= e!1213198 (and tp!542474 (inv!28456 (tag!4221 (h!26761 rules!3198))) (inv!28460 (transformation!3797 (h!26761 rules!3198))) e!1213196))))

(declare-fun tp!542467 () Bool)

(declare-fun e!1213188 () Bool)

(declare-fun b!1899710 () Bool)

(declare-fun inv!21 (TokenValue!3933) Bool)

(assert (=> b!1899710 (= e!1213195 (and (inv!21 (value!119807 separatorToken!354)) e!1213188 tp!542467))))

(declare-fun b!1899711 () Bool)

(declare-fun res!848077 () Bool)

(assert (=> b!1899711 (=> (not res!848077) (not e!1213177))))

(declare-fun rulesProduceIndividualToken!1582 (LexerInterface!3410 List!21442 Token!7146) Bool)

(assert (=> b!1899711 (= res!848077 (rulesProduceIndividualToken!1582 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1899712 () Bool)

(declare-fun e!1213190 () Bool)

(declare-fun tp!542465 () Bool)

(assert (=> b!1899712 (= e!1213190 (and tp!542465 (inv!28456 (tag!4221 (rule!5990 (h!26762 tokens!598)))) (inv!28460 (transformation!3797 (rule!5990 (h!26762 tokens!598)))) e!1213179))))

(declare-fun b!1899713 () Bool)

(declare-fun res!848075 () Bool)

(assert (=> b!1899713 (=> (not res!848075) (not e!1213177))))

(assert (=> b!1899713 (= res!848075 (isSeparator!3797 (rule!5990 separatorToken!354)))))

(declare-fun e!1213180 () Bool)

(declare-fun b!1899714 () Bool)

(declare-fun tp!542475 () Bool)

(assert (=> b!1899714 (= e!1213180 (and (inv!21 (value!119807 (h!26762 tokens!598))) e!1213190 tp!542475))))

(declare-fun b!1899715 () Bool)

(assert (=> b!1899715 (= e!1213185 (= (rule!5990 separatorToken!354) lt!726455))))

(declare-fun e!1213193 () Bool)

(assert (=> b!1899716 (= e!1213193 (and tp!542470 tp!542466))))

(declare-fun tp!542473 () Bool)

(declare-fun b!1899717 () Bool)

(assert (=> b!1899717 (= e!1213178 (and (inv!28459 (h!26762 tokens!598)) e!1213180 tp!542473))))

(declare-fun b!1899718 () Bool)

(declare-fun res!848083 () Bool)

(assert (=> b!1899718 (=> res!848083 e!1213194)))

(declare-fun isEmpty!13104 (List!21443) Bool)

(assert (=> b!1899718 (= res!848083 (isEmpty!13104 tokens!598))))

(declare-fun b!1899719 () Bool)

(assert (=> b!1899719 (= e!1213177 (not e!1213194))))

(declare-fun res!848074 () Bool)

(assert (=> b!1899719 (=> res!848074 e!1213194)))

(declare-fun lt!726453 () Option!4300)

(assert (=> b!1899719 (= res!848074 (or (not (is-Some!4299 lt!726453)) (not (= (_1!11534 (v!26328 lt!726453)) (h!26762 tokens!598)))))))

(declare-fun maxPrefix!1856 (LexerInterface!3410 List!21442 List!21441) Option!4300)

(declare-fun ++!5740 (List!21441 List!21441) List!21441)

(declare-fun printWithSeparatorTokenWhenNeededList!453 (LexerInterface!3410 List!21442 List!21443 Token!7146) List!21441)

(assert (=> b!1899719 (= lt!726453 (maxPrefix!1856 thiss!23328 rules!3198 (++!5740 lt!726457 (printWithSeparatorTokenWhenNeededList!453 thiss!23328 rules!3198 (t!176714 tokens!598) separatorToken!354))))))

(assert (=> b!1899719 e!1213183))

(declare-fun res!848073 () Bool)

(assert (=> b!1899719 (=> (not res!848073) (not e!1213183))))

(declare-fun isDefined!3597 (Option!4299) Bool)

(assert (=> b!1899719 (= res!848073 (isDefined!3597 lt!726450))))

(declare-fun getRuleFromTag!640 (LexerInterface!3410 List!21442 String!24785) Option!4299)

(assert (=> b!1899719 (= lt!726450 (getRuleFromTag!640 thiss!23328 rules!3198 (tag!4221 (rule!5990 (h!26762 tokens!598)))))))

(declare-datatypes ((Unit!35691 0))(
  ( (Unit!35692) )
))
(declare-fun lt!726448 () Unit!35691)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!640 (LexerInterface!3410 List!21442 List!21441 Token!7146) Unit!35691)

(assert (=> b!1899719 (= lt!726448 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!640 thiss!23328 rules!3198 lt!726457 (h!26762 tokens!598)))))

(assert (=> b!1899719 e!1213189))

(declare-fun res!848080 () Bool)

(assert (=> b!1899719 (=> (not res!848080) (not e!1213189))))

(declare-fun isDefined!3598 (Option!4300) Bool)

(assert (=> b!1899719 (= res!848080 (isDefined!3598 lt!726447))))

(assert (=> b!1899719 (= lt!726447 (maxPrefix!1856 thiss!23328 rules!3198 lt!726457))))

(declare-fun lt!726451 () BalanceConc!14032)

(declare-fun list!8685 (BalanceConc!14032) List!21441)

(assert (=> b!1899719 (= lt!726457 (list!8685 lt!726451))))

(assert (=> b!1899719 e!1213191))

(declare-fun res!848087 () Bool)

(assert (=> b!1899719 (=> (not res!848087) (not e!1213191))))

(assert (=> b!1899719 (= res!848087 (isDefined!3597 lt!726446))))

(assert (=> b!1899719 (= lt!726446 (getRuleFromTag!640 thiss!23328 rules!3198 (tag!4221 (rule!5990 separatorToken!354))))))

(declare-fun lt!726456 () Unit!35691)

(assert (=> b!1899719 (= lt!726456 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!640 thiss!23328 rules!3198 lt!726449 separatorToken!354))))

(declare-fun charsOf!2353 (Token!7146) BalanceConc!14032)

(assert (=> b!1899719 (= lt!726449 (list!8685 (charsOf!2353 separatorToken!354)))))

(declare-fun lt!726454 () Unit!35691)

(declare-fun lemmaEqSameImage!505 (TokenValueInjection!7450 BalanceConc!14032 BalanceConc!14032) Unit!35691)

(declare-fun seqFromList!2669 (List!21441) BalanceConc!14032)

(assert (=> b!1899719 (= lt!726454 (lemmaEqSameImage!505 (transformation!3797 (rule!5990 (h!26762 tokens!598))) lt!726451 (seqFromList!2669 (originalCharacters!4604 (h!26762 tokens!598)))))))

(declare-fun lt!726452 () Unit!35691)

(declare-fun lemmaSemiInverse!776 (TokenValueInjection!7450 BalanceConc!14032) Unit!35691)

(assert (=> b!1899719 (= lt!726452 (lemmaSemiInverse!776 (transformation!3797 (rule!5990 (h!26762 tokens!598))) lt!726451))))

(assert (=> b!1899719 (= lt!726451 (charsOf!2353 (h!26762 tokens!598)))))

(declare-fun b!1899720 () Bool)

(declare-fun tp!542472 () Bool)

(assert (=> b!1899720 (= e!1213188 (and tp!542472 (inv!28456 (tag!4221 (rule!5990 separatorToken!354))) (inv!28460 (transformation!3797 (rule!5990 separatorToken!354))) e!1213193))))

(assert (= (and start!190494 res!848078) b!1899703))

(assert (= (and b!1899703 res!848084) b!1899698))

(assert (= (and b!1899698 res!848081) b!1899696))

(assert (= (and b!1899696 res!848079) b!1899711))

(assert (= (and b!1899711 res!848077) b!1899713))

(assert (= (and b!1899713 res!848075) b!1899697))

(assert (= (and b!1899697 res!848086) b!1899699))

(assert (= (and b!1899699 res!848085) b!1899704))

(assert (= (and b!1899704 res!848082) b!1899719))

(assert (= (and b!1899719 res!848087) b!1899695))

(assert (= (and b!1899695 res!848088) b!1899715))

(assert (= (and b!1899719 res!848080) b!1899708))

(assert (= (and b!1899719 res!848073) b!1899705))

(assert (= (and b!1899705 res!848076) b!1899702))

(assert (= (and b!1899719 (not res!848074)) b!1899718))

(assert (= (and b!1899718 (not res!848083)) b!1899706))

(assert (= b!1899709 b!1899700))

(assert (= b!1899701 b!1899709))

(assert (= (and start!190494 (is-Cons!21360 rules!3198)) b!1899701))

(assert (= b!1899712 b!1899707))

(assert (= b!1899714 b!1899712))

(assert (= b!1899717 b!1899714))

(assert (= (and start!190494 (is-Cons!21361 tokens!598)) b!1899717))

(assert (= b!1899720 b!1899716))

(assert (= b!1899710 b!1899720))

(assert (= start!190494 b!1899710))

(declare-fun m!2330779 () Bool)

(assert (=> b!1899699 m!2330779))

(declare-fun m!2330781 () Bool)

(assert (=> b!1899717 m!2330781))

(declare-fun m!2330783 () Bool)

(assert (=> b!1899705 m!2330783))

(declare-fun m!2330785 () Bool)

(assert (=> b!1899705 m!2330785))

(declare-fun m!2330787 () Bool)

(assert (=> b!1899706 m!2330787))

(declare-fun m!2330789 () Bool)

(assert (=> b!1899718 m!2330789))

(declare-fun m!2330791 () Bool)

(assert (=> b!1899696 m!2330791))

(declare-fun m!2330793 () Bool)

(assert (=> b!1899703 m!2330793))

(assert (=> b!1899697 m!2330787))

(declare-fun m!2330795 () Bool)

(assert (=> b!1899712 m!2330795))

(declare-fun m!2330797 () Bool)

(assert (=> b!1899712 m!2330797))

(declare-fun m!2330799 () Bool)

(assert (=> b!1899695 m!2330799))

(declare-fun m!2330801 () Bool)

(assert (=> b!1899695 m!2330801))

(declare-fun m!2330803 () Bool)

(assert (=> start!190494 m!2330803))

(declare-fun m!2330805 () Bool)

(assert (=> b!1899709 m!2330805))

(declare-fun m!2330807 () Bool)

(assert (=> b!1899709 m!2330807))

(declare-fun m!2330809 () Bool)

(assert (=> b!1899698 m!2330809))

(declare-fun m!2330811 () Bool)

(assert (=> b!1899708 m!2330811))

(declare-fun m!2330813 () Bool)

(assert (=> b!1899720 m!2330813))

(declare-fun m!2330815 () Bool)

(assert (=> b!1899720 m!2330815))

(declare-fun m!2330817 () Bool)

(assert (=> b!1899711 m!2330817))

(declare-fun m!2330819 () Bool)

(assert (=> b!1899714 m!2330819))

(declare-fun m!2330821 () Bool)

(assert (=> b!1899710 m!2330821))

(declare-fun m!2330823 () Bool)

(assert (=> b!1899719 m!2330823))

(declare-fun m!2330825 () Bool)

(assert (=> b!1899719 m!2330825))

(assert (=> b!1899719 m!2330823))

(declare-fun m!2330827 () Bool)

(assert (=> b!1899719 m!2330827))

(declare-fun m!2330829 () Bool)

(assert (=> b!1899719 m!2330829))

(declare-fun m!2330831 () Bool)

(assert (=> b!1899719 m!2330831))

(declare-fun m!2330833 () Bool)

(assert (=> b!1899719 m!2330833))

(declare-fun m!2330835 () Bool)

(assert (=> b!1899719 m!2330835))

(declare-fun m!2330837 () Bool)

(assert (=> b!1899719 m!2330837))

(declare-fun m!2330839 () Bool)

(assert (=> b!1899719 m!2330839))

(declare-fun m!2330841 () Bool)

(assert (=> b!1899719 m!2330841))

(declare-fun m!2330843 () Bool)

(assert (=> b!1899719 m!2330843))

(declare-fun m!2330845 () Bool)

(assert (=> b!1899719 m!2330845))

(assert (=> b!1899719 m!2330841))

(declare-fun m!2330847 () Bool)

(assert (=> b!1899719 m!2330847))

(declare-fun m!2330849 () Bool)

(assert (=> b!1899719 m!2330849))

(declare-fun m!2330851 () Bool)

(assert (=> b!1899719 m!2330851))

(declare-fun m!2330853 () Bool)

(assert (=> b!1899719 m!2330853))

(assert (=> b!1899719 m!2330835))

(declare-fun m!2330855 () Bool)

(assert (=> b!1899719 m!2330855))

(assert (=> b!1899719 m!2330833))

(declare-fun m!2330857 () Bool)

(assert (=> b!1899719 m!2330857))

(push 1)

(assert (not b!1899714))

(assert (not b_next!53993))

(assert (not b!1899720))

(assert (not b_next!53997))

(assert (not b!1899718))

(assert (not b!1899710))

(assert (not b_next!53999))

(assert (not b_next!53995))

(assert b_and!146973)

(assert (not b!1899706))

(assert (not b!1899703))

(assert (not b!1899719))

(assert (not b!1899701))

(assert (not b!1899697))

(assert (not b!1899698))

(assert (not start!190494))

(assert (not b!1899696))

(assert b_and!146977)

(assert (not b_next!53989))

(assert (not b!1899705))

(assert (not b!1899699))

(assert b_and!146971)

(assert b_and!146969)

(assert b_and!146975)

(assert (not b!1899711))

(assert (not b!1899717))

(assert (not b!1899712))

(assert (not b_next!53991))

(assert b_and!146967)

(assert (not b!1899708))

(assert (not b!1899709))

(assert (not b!1899695))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!53993))

(assert b_and!146971)

(assert (not b_next!53997))

(assert (not b_next!53999))

(assert (not b_next!53991))

(assert b_and!146967)

(assert (not b_next!53995))

(assert b_and!146973)

(assert b_and!146977)

(assert (not b_next!53989))

(assert b_and!146969)

(assert b_and!146975)

(check-sat)

(pop 1)

