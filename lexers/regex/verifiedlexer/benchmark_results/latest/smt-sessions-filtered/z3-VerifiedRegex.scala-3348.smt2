; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!190064 () Bool)

(assert start!190064)

(declare-fun b!1895717 () Bool)

(declare-fun b_free!52921 () Bool)

(declare-fun b_next!53625 () Bool)

(assert (=> b!1895717 (= b_free!52921 (not b_next!53625))))

(declare-fun tp!541008 () Bool)

(declare-fun b_and!146219 () Bool)

(assert (=> b!1895717 (= tp!541008 b_and!146219)))

(declare-fun b_free!52923 () Bool)

(declare-fun b_next!53627 () Bool)

(assert (=> b!1895717 (= b_free!52923 (not b_next!53627))))

(declare-fun tp!541009 () Bool)

(declare-fun b_and!146221 () Bool)

(assert (=> b!1895717 (= tp!541009 b_and!146221)))

(declare-fun b!1895718 () Bool)

(declare-fun b_free!52925 () Bool)

(declare-fun b_next!53629 () Bool)

(assert (=> b!1895718 (= b_free!52925 (not b_next!53629))))

(declare-fun tp!541003 () Bool)

(declare-fun b_and!146223 () Bool)

(assert (=> b!1895718 (= tp!541003 b_and!146223)))

(declare-fun b_free!52927 () Bool)

(declare-fun b_next!53631 () Bool)

(assert (=> b!1895718 (= b_free!52927 (not b_next!53631))))

(declare-fun tp!541013 () Bool)

(declare-fun b_and!146225 () Bool)

(assert (=> b!1895718 (= tp!541013 b_and!146225)))

(declare-fun b!1895716 () Bool)

(declare-fun b_free!52929 () Bool)

(declare-fun b_next!53633 () Bool)

(assert (=> b!1895716 (= b_free!52929 (not b_next!53633))))

(declare-fun tp!541014 () Bool)

(declare-fun b_and!146227 () Bool)

(assert (=> b!1895716 (= tp!541014 b_and!146227)))

(declare-fun b_free!52931 () Bool)

(declare-fun b_next!53635 () Bool)

(assert (=> b!1895716 (= b_free!52931 (not b_next!53635))))

(declare-fun tp!541002 () Bool)

(declare-fun b_and!146229 () Bool)

(assert (=> b!1895716 (= tp!541002 b_and!146229)))

(declare-fun b!1895708 () Bool)

(declare-fun res!846051 () Bool)

(declare-fun e!1210224 () Bool)

(assert (=> b!1895708 (=> (not res!846051) (not e!1210224))))

(declare-datatypes ((List!21332 0))(
  ( (Nil!21250) (Cons!21250 (h!26651 (_ BitVec 16)) (t!176175 List!21332)) )
))
(declare-datatypes ((TokenValue!3908 0))(
  ( (FloatLiteralValue!7816 (text!27801 List!21332)) (TokenValueExt!3907 (__x!13314 Int)) (Broken!19540 (value!119067 List!21332)) (Object!3989) (End!3908) (Def!3908) (Underscore!3908) (Match!3908) (Else!3908) (Error!3908) (Case!3908) (If!3908) (Extends!3908) (Abstract!3908) (Class!3908) (Val!3908) (DelimiterValue!7816 (del!3968 List!21332)) (KeywordValue!3914 (value!119068 List!21332)) (CommentValue!7816 (value!119069 List!21332)) (WhitespaceValue!7816 (value!119070 List!21332)) (IndentationValue!3908 (value!119071 List!21332)) (String!24657) (Int32!3908) (Broken!19541 (value!119072 List!21332)) (Boolean!3909) (Unit!35611) (OperatorValue!3911 (op!3968 List!21332)) (IdentifierValue!7816 (value!119073 List!21332)) (IdentifierValue!7817 (value!119074 List!21332)) (WhitespaceValue!7817 (value!119075 List!21332)) (True!7816) (False!7816) (Broken!19542 (value!119076 List!21332)) (Broken!19543 (value!119077 List!21332)) (True!7817) (RightBrace!3908) (RightBracket!3908) (Colon!3908) (Null!3908) (Comma!3908) (LeftBracket!3908) (False!7817) (LeftBrace!3908) (ImaginaryLiteralValue!3908 (text!27802 List!21332)) (StringLiteralValue!11724 (value!119078 List!21332)) (EOFValue!3908 (value!119079 List!21332)) (IdentValue!3908 (value!119080 List!21332)) (DelimiterValue!7817 (value!119081 List!21332)) (DedentValue!3908 (value!119082 List!21332)) (NewLineValue!3908 (value!119083 List!21332)) (IntegerValue!11724 (value!119084 (_ BitVec 32)) (text!27803 List!21332)) (IntegerValue!11725 (value!119085 Int) (text!27804 List!21332)) (Times!3908) (Or!3908) (Equal!3908) (Minus!3908) (Broken!19544 (value!119086 List!21332)) (And!3908) (Div!3908) (LessEqual!3908) (Mod!3908) (Concat!9105) (Not!3908) (Plus!3908) (SpaceValue!3908 (value!119087 List!21332)) (IntegerValue!11726 (value!119088 Int) (text!27805 List!21332)) (StringLiteralValue!11725 (text!27806 List!21332)) (FloatLiteralValue!7817 (text!27807 List!21332)) (BytesLiteralValue!3908 (value!119089 List!21332)) (CommentValue!7817 (value!119090 List!21332)) (StringLiteralValue!11726 (value!119091 List!21332)) (ErrorTokenValue!3908 (msg!3969 List!21332)) )
))
(declare-datatypes ((C!10540 0))(
  ( (C!10541 (val!6222 Int)) )
))
(declare-datatypes ((List!21333 0))(
  ( (Nil!21251) (Cons!21251 (h!26652 C!10540) (t!176176 List!21333)) )
))
(declare-datatypes ((Regex!5197 0))(
  ( (ElementMatch!5197 (c!309263 C!10540)) (Concat!9106 (regOne!10906 Regex!5197) (regTwo!10906 Regex!5197)) (EmptyExpr!5197) (Star!5197 (reg!5526 Regex!5197)) (EmptyLang!5197) (Union!5197 (regOne!10907 Regex!5197) (regTwo!10907 Regex!5197)) )
))
(declare-datatypes ((String!24658 0))(
  ( (String!24659 (value!119092 String)) )
))
(declare-datatypes ((IArray!14155 0))(
  ( (IArray!14156 (innerList!7135 List!21333)) )
))
(declare-datatypes ((Conc!7075 0))(
  ( (Node!7075 (left!17047 Conc!7075) (right!17377 Conc!7075) (csize!14380 Int) (cheight!7286 Int)) (Leaf!10424 (xs!9969 IArray!14155) (csize!14381 Int)) (Empty!7075) )
))
(declare-datatypes ((BalanceConc!13966 0))(
  ( (BalanceConc!13967 (c!309264 Conc!7075)) )
))
(declare-datatypes ((TokenValueInjection!7400 0))(
  ( (TokenValueInjection!7401 (toValue!5389 Int) (toChars!5248 Int)) )
))
(declare-datatypes ((Rule!7344 0))(
  ( (Rule!7345 (regex!3772 Regex!5197) (tag!4188 String!24658) (isSeparator!3772 Bool) (transformation!3772 TokenValueInjection!7400)) )
))
(declare-datatypes ((Token!7096 0))(
  ( (Token!7097 (value!119093 TokenValue!3908) (rule!5965 Rule!7344) (size!16846 Int) (originalCharacters!4579 List!21333)) )
))
(declare-datatypes ((List!21334 0))(
  ( (Nil!21252) (Cons!21252 (h!26653 Token!7096) (t!176177 List!21334)) )
))
(declare-fun tokens!598 () List!21334)

(get-info :version)

(assert (=> b!1895708 (= res!846051 ((_ is Cons!21252) tokens!598))))

(declare-fun b!1895709 () Bool)

(declare-fun e!1210219 () Bool)

(declare-fun e!1210230 () Bool)

(declare-fun tp!541011 () Bool)

(assert (=> b!1895709 (= e!1210219 (and e!1210230 tp!541011))))

(declare-fun b!1895710 () Bool)

(declare-fun res!846042 () Bool)

(assert (=> b!1895710 (=> (not res!846042) (not e!1210224))))

(declare-datatypes ((LexerInterface!3385 0))(
  ( (LexerInterfaceExt!3382 (__x!13315 Int)) (Lexer!3383) )
))
(declare-fun thiss!23328 () LexerInterface!3385)

(declare-datatypes ((List!21335 0))(
  ( (Nil!21253) (Cons!21253 (h!26654 Rule!7344) (t!176178 List!21335)) )
))
(declare-fun rules!3198 () List!21335)

(declare-fun rulesProduceEachTokenIndividuallyList!1116 (LexerInterface!3385 List!21335 List!21334) Bool)

(assert (=> b!1895710 (= res!846042 (rulesProduceEachTokenIndividuallyList!1116 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1895711 () Bool)

(assert (=> b!1895711 (= e!1210224 (not true))))

(declare-fun e!1210215 () Bool)

(assert (=> b!1895711 e!1210215))

(declare-fun res!846040 () Bool)

(assert (=> b!1895711 (=> (not res!846040) (not e!1210215))))

(declare-datatypes ((Option!4249 0))(
  ( (None!4248) (Some!4248 (v!26277 Rule!7344)) )
))
(declare-fun lt!725116 () Option!4249)

(declare-fun isDefined!3547 (Option!4249) Bool)

(assert (=> b!1895711 (= res!846040 (isDefined!3547 lt!725116))))

(declare-fun separatorToken!354 () Token!7096)

(declare-fun getRuleFromTag!615 (LexerInterface!3385 List!21335 String!24658) Option!4249)

(assert (=> b!1895711 (= lt!725116 (getRuleFromTag!615 thiss!23328 rules!3198 (tag!4188 (rule!5965 separatorToken!354))))))

(declare-fun lt!725110 () List!21333)

(declare-datatypes ((Unit!35612 0))(
  ( (Unit!35613) )
))
(declare-fun lt!725113 () Unit!35612)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!615 (LexerInterface!3385 List!21335 List!21333 Token!7096) Unit!35612)

(assert (=> b!1895711 (= lt!725113 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!615 thiss!23328 rules!3198 lt!725110 separatorToken!354))))

(declare-fun list!8644 (BalanceConc!13966) List!21333)

(declare-fun charsOf!2328 (Token!7096) BalanceConc!13966)

(assert (=> b!1895711 (= lt!725110 (list!8644 (charsOf!2328 separatorToken!354)))))

(declare-fun lt!725111 () Unit!35612)

(declare-fun lt!725115 () BalanceConc!13966)

(declare-fun lemmaEqSameImage!480 (TokenValueInjection!7400 BalanceConc!13966 BalanceConc!13966) Unit!35612)

(declare-fun seqFromList!2644 (List!21333) BalanceConc!13966)

(assert (=> b!1895711 (= lt!725111 (lemmaEqSameImage!480 (transformation!3772 (rule!5965 (h!26653 tokens!598))) lt!725115 (seqFromList!2644 (originalCharacters!4579 (h!26653 tokens!598)))))))

(declare-fun lt!725112 () Unit!35612)

(declare-fun lemmaSemiInverse!751 (TokenValueInjection!7400 BalanceConc!13966) Unit!35612)

(assert (=> b!1895711 (= lt!725112 (lemmaSemiInverse!751 (transformation!3772 (rule!5965 (h!26653 tokens!598))) lt!725115))))

(assert (=> b!1895711 (= lt!725115 (charsOf!2328 (h!26653 tokens!598)))))

(declare-fun b!1895712 () Bool)

(declare-fun tp!541012 () Bool)

(declare-fun e!1210226 () Bool)

(declare-fun e!1210223 () Bool)

(declare-fun inv!21 (TokenValue!3908) Bool)

(assert (=> b!1895712 (= e!1210226 (and (inv!21 (value!119093 (h!26653 tokens!598))) e!1210223 tp!541012))))

(declare-fun b!1895713 () Bool)

(declare-fun res!846043 () Bool)

(assert (=> b!1895713 (=> (not res!846043) (not e!1210224))))

(declare-fun rulesInvariant!2992 (LexerInterface!3385 List!21335) Bool)

(assert (=> b!1895713 (= res!846043 (rulesInvariant!2992 thiss!23328 rules!3198))))

(declare-fun tp!541005 () Bool)

(declare-fun b!1895714 () Bool)

(declare-fun e!1210222 () Bool)

(declare-fun inv!28351 (String!24658) Bool)

(declare-fun inv!28354 (TokenValueInjection!7400) Bool)

(assert (=> b!1895714 (= e!1210223 (and tp!541005 (inv!28351 (tag!4188 (rule!5965 (h!26653 tokens!598)))) (inv!28354 (transformation!3772 (rule!5965 (h!26653 tokens!598)))) e!1210222))))

(declare-fun b!1895715 () Bool)

(declare-fun tp!541007 () Bool)

(declare-fun e!1210213 () Bool)

(declare-fun e!1210227 () Bool)

(assert (=> b!1895715 (= e!1210227 (and (inv!21 (value!119093 separatorToken!354)) e!1210213 tp!541007))))

(assert (=> b!1895716 (= e!1210222 (and tp!541014 tp!541002))))

(declare-fun e!1210225 () Bool)

(assert (=> b!1895717 (= e!1210225 (and tp!541008 tp!541009))))

(declare-fun b!1895707 () Bool)

(declare-datatypes ((tuple2!20064 0))(
  ( (tuple2!20065 (_1!11501 Token!7096) (_2!11501 List!21333)) )
))
(declare-datatypes ((Option!4250 0))(
  ( (None!4249) (Some!4249 (v!26278 tuple2!20064)) )
))
(declare-fun isDefined!3548 (Option!4250) Bool)

(declare-fun maxPrefix!1831 (LexerInterface!3385 List!21335 List!21333) Option!4250)

(assert (=> b!1895707 (= e!1210215 (isDefined!3548 (maxPrefix!1831 thiss!23328 rules!3198 (list!8644 lt!725115))))))

(declare-fun res!846047 () Bool)

(assert (=> start!190064 (=> (not res!846047) (not e!1210224))))

(assert (=> start!190064 (= res!846047 ((_ is Lexer!3383) thiss!23328))))

(assert (=> start!190064 e!1210224))

(assert (=> start!190064 true))

(assert (=> start!190064 e!1210219))

(declare-fun e!1210217 () Bool)

(assert (=> start!190064 e!1210217))

(declare-fun inv!28355 (Token!7096) Bool)

(assert (=> start!190064 (and (inv!28355 separatorToken!354) e!1210227)))

(declare-fun e!1210229 () Bool)

(assert (=> b!1895718 (= e!1210229 (and tp!541003 tp!541013))))

(declare-fun b!1895719 () Bool)

(declare-fun e!1210214 () Bool)

(declare-fun lt!725114 () Rule!7344)

(assert (=> b!1895719 (= e!1210214 (= (rule!5965 separatorToken!354) lt!725114))))

(declare-fun b!1895720 () Bool)

(declare-fun tp!541010 () Bool)

(assert (=> b!1895720 (= e!1210230 (and tp!541010 (inv!28351 (tag!4188 (h!26654 rules!3198))) (inv!28354 (transformation!3772 (h!26654 rules!3198))) e!1210229))))

(declare-fun b!1895721 () Bool)

(declare-fun res!846048 () Bool)

(assert (=> b!1895721 (=> (not res!846048) (not e!1210224))))

(declare-fun isEmpty!13046 (List!21335) Bool)

(assert (=> b!1895721 (= res!846048 (not (isEmpty!13046 rules!3198)))))

(declare-fun b!1895722 () Bool)

(declare-fun res!846050 () Bool)

(assert (=> b!1895722 (=> (not res!846050) (not e!1210215))))

(assert (=> b!1895722 (= res!846050 e!1210214)))

(declare-fun res!846046 () Bool)

(assert (=> b!1895722 (=> (not res!846046) (not e!1210214))))

(declare-fun matchR!2483 (Regex!5197 List!21333) Bool)

(assert (=> b!1895722 (= res!846046 (matchR!2483 (regex!3772 lt!725114) lt!725110))))

(declare-fun get!6545 (Option!4249) Rule!7344)

(assert (=> b!1895722 (= lt!725114 (get!6545 lt!725116))))

(declare-fun b!1895723 () Bool)

(declare-fun res!846041 () Bool)

(assert (=> b!1895723 (=> (not res!846041) (not e!1210224))))

(declare-fun sepAndNonSepRulesDisjointChars!870 (List!21335 List!21335) Bool)

(assert (=> b!1895723 (= res!846041 (sepAndNonSepRulesDisjointChars!870 rules!3198 rules!3198))))

(declare-fun b!1895724 () Bool)

(declare-fun tp!541006 () Bool)

(assert (=> b!1895724 (= e!1210213 (and tp!541006 (inv!28351 (tag!4188 (rule!5965 separatorToken!354))) (inv!28354 (transformation!3772 (rule!5965 separatorToken!354))) e!1210225))))

(declare-fun tp!541004 () Bool)

(declare-fun b!1895725 () Bool)

(assert (=> b!1895725 (= e!1210217 (and (inv!28355 (h!26653 tokens!598)) e!1210226 tp!541004))))

(declare-fun b!1895726 () Bool)

(declare-fun res!846045 () Bool)

(assert (=> b!1895726 (=> (not res!846045) (not e!1210224))))

(assert (=> b!1895726 (= res!846045 (isSeparator!3772 (rule!5965 separatorToken!354)))))

(declare-fun b!1895727 () Bool)

(declare-fun res!846044 () Bool)

(assert (=> b!1895727 (=> (not res!846044) (not e!1210224))))

(declare-fun lambda!74063 () Int)

(declare-fun forall!4448 (List!21334 Int) Bool)

(assert (=> b!1895727 (= res!846044 (forall!4448 tokens!598 lambda!74063))))

(declare-fun b!1895728 () Bool)

(declare-fun res!846049 () Bool)

(assert (=> b!1895728 (=> (not res!846049) (not e!1210224))))

(declare-fun rulesProduceIndividualToken!1557 (LexerInterface!3385 List!21335 Token!7096) Bool)

(assert (=> b!1895728 (= res!846049 (rulesProduceIndividualToken!1557 thiss!23328 rules!3198 separatorToken!354))))

(assert (= (and start!190064 res!846047) b!1895721))

(assert (= (and b!1895721 res!846048) b!1895713))

(assert (= (and b!1895713 res!846043) b!1895710))

(assert (= (and b!1895710 res!846042) b!1895728))

(assert (= (and b!1895728 res!846049) b!1895726))

(assert (= (and b!1895726 res!846045) b!1895727))

(assert (= (and b!1895727 res!846044) b!1895723))

(assert (= (and b!1895723 res!846041) b!1895708))

(assert (= (and b!1895708 res!846051) b!1895711))

(assert (= (and b!1895711 res!846040) b!1895722))

(assert (= (and b!1895722 res!846046) b!1895719))

(assert (= (and b!1895722 res!846050) b!1895707))

(assert (= b!1895720 b!1895718))

(assert (= b!1895709 b!1895720))

(assert (= (and start!190064 ((_ is Cons!21253) rules!3198)) b!1895709))

(assert (= b!1895714 b!1895716))

(assert (= b!1895712 b!1895714))

(assert (= b!1895725 b!1895712))

(assert (= (and start!190064 ((_ is Cons!21252) tokens!598)) b!1895725))

(assert (= b!1895724 b!1895717))

(assert (= b!1895715 b!1895724))

(assert (= start!190064 b!1895715))

(declare-fun m!2327039 () Bool)

(assert (=> b!1895724 m!2327039))

(declare-fun m!2327041 () Bool)

(assert (=> b!1895724 m!2327041))

(declare-fun m!2327043 () Bool)

(assert (=> b!1895707 m!2327043))

(assert (=> b!1895707 m!2327043))

(declare-fun m!2327045 () Bool)

(assert (=> b!1895707 m!2327045))

(assert (=> b!1895707 m!2327045))

(declare-fun m!2327047 () Bool)

(assert (=> b!1895707 m!2327047))

(declare-fun m!2327049 () Bool)

(assert (=> b!1895711 m!2327049))

(assert (=> b!1895711 m!2327049))

(declare-fun m!2327051 () Bool)

(assert (=> b!1895711 m!2327051))

(declare-fun m!2327053 () Bool)

(assert (=> b!1895711 m!2327053))

(declare-fun m!2327055 () Bool)

(assert (=> b!1895711 m!2327055))

(declare-fun m!2327057 () Bool)

(assert (=> b!1895711 m!2327057))

(declare-fun m!2327059 () Bool)

(assert (=> b!1895711 m!2327059))

(declare-fun m!2327061 () Bool)

(assert (=> b!1895711 m!2327061))

(declare-fun m!2327063 () Bool)

(assert (=> b!1895711 m!2327063))

(assert (=> b!1895711 m!2327061))

(declare-fun m!2327065 () Bool)

(assert (=> b!1895711 m!2327065))

(declare-fun m!2327067 () Bool)

(assert (=> b!1895715 m!2327067))

(declare-fun m!2327069 () Bool)

(assert (=> b!1895720 m!2327069))

(declare-fun m!2327071 () Bool)

(assert (=> b!1895720 m!2327071))

(declare-fun m!2327073 () Bool)

(assert (=> b!1895710 m!2327073))

(declare-fun m!2327075 () Bool)

(assert (=> b!1895727 m!2327075))

(declare-fun m!2327077 () Bool)

(assert (=> b!1895725 m!2327077))

(declare-fun m!2327079 () Bool)

(assert (=> b!1895723 m!2327079))

(declare-fun m!2327081 () Bool)

(assert (=> b!1895722 m!2327081))

(declare-fun m!2327083 () Bool)

(assert (=> b!1895722 m!2327083))

(declare-fun m!2327085 () Bool)

(assert (=> b!1895713 m!2327085))

(declare-fun m!2327087 () Bool)

(assert (=> b!1895728 m!2327087))

(declare-fun m!2327089 () Bool)

(assert (=> b!1895714 m!2327089))

(declare-fun m!2327091 () Bool)

(assert (=> b!1895714 m!2327091))

(declare-fun m!2327093 () Bool)

(assert (=> start!190064 m!2327093))

(declare-fun m!2327095 () Bool)

(assert (=> b!1895721 m!2327095))

(declare-fun m!2327097 () Bool)

(assert (=> b!1895712 m!2327097))

(check-sat b_and!146221 (not b_next!53633) (not b!1895709) (not b!1895711) (not b!1895714) (not b_next!53635) (not b!1895710) b_and!146229 (not start!190064) (not b!1895722) (not b!1895713) (not b!1895720) (not b!1895721) (not b_next!53631) (not b!1895707) b_and!146223 (not b_next!53627) b_and!146227 (not b!1895724) (not b!1895715) (not b!1895728) (not b_next!53629) b_and!146219 (not b!1895723) (not b_next!53625) (not b!1895727) b_and!146225 (not b!1895725) (not b!1895712))
(check-sat b_and!146221 (not b_next!53633) b_and!146229 (not b_next!53631) (not b_next!53625) b_and!146225 (not b_next!53635) b_and!146223 (not b_next!53627) b_and!146227 (not b_next!53629) b_and!146219)
