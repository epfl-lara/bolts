; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!317950 () Bool)

(assert start!317950)

(declare-fun b!3402610 () Bool)

(declare-fun b_free!89129 () Bool)

(declare-fun b_next!89833 () Bool)

(assert (=> b!3402610 (= b_free!89129 (not b_next!89833))))

(declare-fun tp!1061733 () Bool)

(declare-fun b_and!237555 () Bool)

(assert (=> b!3402610 (= tp!1061733 b_and!237555)))

(declare-fun b_free!89131 () Bool)

(declare-fun b_next!89835 () Bool)

(assert (=> b!3402610 (= b_free!89131 (not b_next!89835))))

(declare-fun tp!1061731 () Bool)

(declare-fun b_and!237557 () Bool)

(assert (=> b!3402610 (= tp!1061731 b_and!237557)))

(declare-fun b!3402603 () Bool)

(declare-fun b_free!89133 () Bool)

(declare-fun b_next!89837 () Bool)

(assert (=> b!3402603 (= b_free!89133 (not b_next!89837))))

(declare-fun tp!1061723 () Bool)

(declare-fun b_and!237559 () Bool)

(assert (=> b!3402603 (= tp!1061723 b_and!237559)))

(declare-fun b_free!89135 () Bool)

(declare-fun b_next!89839 () Bool)

(assert (=> b!3402603 (= b_free!89135 (not b_next!89839))))

(declare-fun tp!1061725 () Bool)

(declare-fun b_and!237561 () Bool)

(assert (=> b!3402603 (= tp!1061725 b_and!237561)))

(declare-fun b!3402586 () Bool)

(declare-fun b_free!89137 () Bool)

(declare-fun b_next!89841 () Bool)

(assert (=> b!3402586 (= b_free!89137 (not b_next!89841))))

(declare-fun tp!1061734 () Bool)

(declare-fun b_and!237563 () Bool)

(assert (=> b!3402586 (= tp!1061734 b_and!237563)))

(declare-fun b_free!89139 () Bool)

(declare-fun b_next!89843 () Bool)

(assert (=> b!3402586 (= b_free!89139 (not b_next!89843))))

(declare-fun tp!1061730 () Bool)

(declare-fun b_and!237565 () Bool)

(assert (=> b!3402586 (= tp!1061730 b_and!237565)))

(declare-fun b!3402581 () Bool)

(declare-fun e!2112182 () Bool)

(declare-datatypes ((C!20512 0))(
  ( (C!20513 (val!12304 Int)) )
))
(declare-datatypes ((Regex!10163 0))(
  ( (ElementMatch!10163 (c!580000 C!20512)) (Concat!15797 (regOne!20838 Regex!10163) (regTwo!20838 Regex!10163)) (EmptyExpr!10163) (Star!10163 (reg!10492 Regex!10163)) (EmptyLang!10163) (Union!10163 (regOne!20839 Regex!10163) (regTwo!20839 Regex!10163)) )
))
(declare-datatypes ((List!37126 0))(
  ( (Nil!37002) (Cons!37002 (h!42422 (_ BitVec 16)) (t!266145 List!37126)) )
))
(declare-datatypes ((TokenValue!5634 0))(
  ( (FloatLiteralValue!11268 (text!39883 List!37126)) (TokenValueExt!5633 (__x!23485 Int)) (Broken!28170 (value!174448 List!37126)) (Object!5757) (End!5634) (Def!5634) (Underscore!5634) (Match!5634) (Else!5634) (Error!5634) (Case!5634) (If!5634) (Extends!5634) (Abstract!5634) (Class!5634) (Val!5634) (DelimiterValue!11268 (del!5694 List!37126)) (KeywordValue!5640 (value!174449 List!37126)) (CommentValue!11268 (value!174450 List!37126)) (WhitespaceValue!11268 (value!174451 List!37126)) (IndentationValue!5634 (value!174452 List!37126)) (String!41503) (Int32!5634) (Broken!28171 (value!174453 List!37126)) (Boolean!5635) (Unit!52163) (OperatorValue!5637 (op!5694 List!37126)) (IdentifierValue!11268 (value!174454 List!37126)) (IdentifierValue!11269 (value!174455 List!37126)) (WhitespaceValue!11269 (value!174456 List!37126)) (True!11268) (False!11268) (Broken!28172 (value!174457 List!37126)) (Broken!28173 (value!174458 List!37126)) (True!11269) (RightBrace!5634) (RightBracket!5634) (Colon!5634) (Null!5634) (Comma!5634) (LeftBracket!5634) (False!11269) (LeftBrace!5634) (ImaginaryLiteralValue!5634 (text!39884 List!37126)) (StringLiteralValue!16902 (value!174459 List!37126)) (EOFValue!5634 (value!174460 List!37126)) (IdentValue!5634 (value!174461 List!37126)) (DelimiterValue!11269 (value!174462 List!37126)) (DedentValue!5634 (value!174463 List!37126)) (NewLineValue!5634 (value!174464 List!37126)) (IntegerValue!16902 (value!174465 (_ BitVec 32)) (text!39885 List!37126)) (IntegerValue!16903 (value!174466 Int) (text!39886 List!37126)) (Times!5634) (Or!5634) (Equal!5634) (Minus!5634) (Broken!28174 (value!174467 List!37126)) (And!5634) (Div!5634) (LessEqual!5634) (Mod!5634) (Concat!15798) (Not!5634) (Plus!5634) (SpaceValue!5634 (value!174468 List!37126)) (IntegerValue!16904 (value!174469 Int) (text!39887 List!37126)) (StringLiteralValue!16903 (text!39888 List!37126)) (FloatLiteralValue!11269 (text!39889 List!37126)) (BytesLiteralValue!5634 (value!174470 List!37126)) (CommentValue!11269 (value!174471 List!37126)) (StringLiteralValue!16904 (value!174472 List!37126)) (ErrorTokenValue!5634 (msg!5695 List!37126)) )
))
(declare-datatypes ((List!37127 0))(
  ( (Nil!37003) (Cons!37003 (h!42423 C!20512) (t!266146 List!37127)) )
))
(declare-datatypes ((IArray!22371 0))(
  ( (IArray!22372 (innerList!11243 List!37127)) )
))
(declare-datatypes ((Conc!11183 0))(
  ( (Node!11183 (left!28851 Conc!11183) (right!29181 Conc!11183) (csize!22596 Int) (cheight!11394 Int)) (Leaf!17496 (xs!14341 IArray!22371) (csize!22597 Int)) (Empty!11183) )
))
(declare-datatypes ((BalanceConc!21980 0))(
  ( (BalanceConc!21981 (c!580001 Conc!11183)) )
))
(declare-datatypes ((String!41504 0))(
  ( (String!41505 (value!174473 String)) )
))
(declare-datatypes ((TokenValueInjection!10696 0))(
  ( (TokenValueInjection!10697 (toValue!7612 Int) (toChars!7471 Int)) )
))
(declare-datatypes ((Rule!10608 0))(
  ( (Rule!10609 (regex!5404 Regex!10163) (tag!5990 String!41504) (isSeparator!5404 Bool) (transformation!5404 TokenValueInjection!10696)) )
))
(declare-datatypes ((Token!10174 0))(
  ( (Token!10175 (value!174474 TokenValue!5634) (rule!7968 Rule!10608) (size!28021 Int) (originalCharacters!6118 List!37127)) )
))
(declare-datatypes ((List!37128 0))(
  ( (Nil!37004) (Cons!37004 (h!42424 Token!10174) (t!266147 List!37128)) )
))
(declare-fun tokens!494 () List!37128)

(declare-fun lt!1157235 () Rule!10608)

(assert (=> b!3402581 (= e!2112182 (= (rule!7968 (h!42424 tokens!494)) lt!1157235))))

(declare-fun b!3402582 () Bool)

(declare-fun e!2112204 () Bool)

(assert (=> b!3402582 (= e!2112204 e!2112182)))

(declare-fun res!1376850 () Bool)

(assert (=> b!3402582 (=> (not res!1376850) (not e!2112182))))

(declare-fun lt!1157244 () List!37127)

(declare-fun matchR!4747 (Regex!10163 List!37127) Bool)

(assert (=> b!3402582 (= res!1376850 (matchR!4747 (regex!5404 lt!1157235) lt!1157244))))

(declare-datatypes ((Option!7446 0))(
  ( (None!7445) (Some!7445 (v!36631 Rule!10608)) )
))
(declare-fun lt!1157240 () Option!7446)

(declare-fun get!11817 (Option!7446) Rule!10608)

(assert (=> b!3402582 (= lt!1157235 (get!11817 lt!1157240))))

(declare-fun b!3402583 () Bool)

(declare-fun e!2112198 () Bool)

(declare-fun e!2112194 () Bool)

(assert (=> b!3402583 (= e!2112198 e!2112194)))

(declare-fun res!1376845 () Bool)

(assert (=> b!3402583 (=> res!1376845 e!2112194)))

(declare-fun lt!1157242 () List!37127)

(declare-fun separatorToken!241 () Token!10174)

(declare-datatypes ((LexerInterface!4993 0))(
  ( (LexerInterfaceExt!4990 (__x!23486 Int)) (Lexer!4991) )
))
(declare-fun thiss!18206 () LexerInterface!4993)

(declare-fun lt!1157248 () List!37127)

(declare-fun ++!9081 (List!37127 List!37127) List!37127)

(declare-fun list!13425 (BalanceConc!21980) List!37127)

(declare-fun charsOf!3418 (Token!10174) BalanceConc!21980)

(declare-fun printWithSeparatorTokenList!280 (LexerInterface!4993 List!37128 Token!10174) List!37127)

(assert (=> b!3402583 (= res!1376845 (not (= lt!1157248 (++!9081 (++!9081 (list!13425 (charsOf!3418 (h!42424 (t!266147 tokens!494)))) lt!1157242) (printWithSeparatorTokenList!280 thiss!18206 (t!266147 (t!266147 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1157243 () List!37127)

(assert (=> b!3402583 (= lt!1157243 (++!9081 lt!1157242 lt!1157248))))

(assert (=> b!3402583 (= lt!1157242 (list!13425 (charsOf!3418 separatorToken!241)))))

(assert (=> b!3402583 (= lt!1157248 (printWithSeparatorTokenList!280 thiss!18206 (t!266147 tokens!494) separatorToken!241))))

(declare-fun lt!1157246 () List!37127)

(assert (=> b!3402583 (= lt!1157246 (printWithSeparatorTokenList!280 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3402584 () Bool)

(declare-fun res!1376840 () Bool)

(declare-fun e!2112200 () Bool)

(assert (=> b!3402584 (=> res!1376840 e!2112200)))

(declare-datatypes ((List!37129 0))(
  ( (Nil!37005) (Cons!37005 (h!42425 Rule!10608) (t!266148 List!37129)) )
))
(declare-fun rules!2135 () List!37129)

(declare-fun rulesProduceIndividualToken!2485 (LexerInterface!4993 List!37129 Token!10174) Bool)

(assert (=> b!3402584 (= res!1376840 (not (rulesProduceIndividualToken!2485 thiss!18206 rules!2135 (h!42424 tokens!494))))))

(declare-fun e!2112203 () Bool)

(declare-fun e!2112197 () Bool)

(declare-fun b!3402585 () Bool)

(declare-fun tp!1061732 () Bool)

(declare-fun inv!50113 (String!41504) Bool)

(declare-fun inv!50116 (TokenValueInjection!10696) Bool)

(assert (=> b!3402585 (= e!2112203 (and tp!1061732 (inv!50113 (tag!5990 (h!42425 rules!2135))) (inv!50116 (transformation!5404 (h!42425 rules!2135))) e!2112197))))

(declare-fun e!2112186 () Bool)

(assert (=> b!3402586 (= e!2112186 (and tp!1061734 tp!1061730))))

(declare-fun tp!1061722 () Bool)

(declare-fun e!2112195 () Bool)

(declare-fun b!3402587 () Bool)

(declare-fun e!2112191 () Bool)

(assert (=> b!3402587 (= e!2112191 (and tp!1061722 (inv!50113 (tag!5990 (rule!7968 separatorToken!241))) (inv!50116 (transformation!5404 (rule!7968 separatorToken!241))) e!2112195))))

(declare-fun e!2112205 () Bool)

(declare-fun tp!1061724 () Bool)

(declare-fun e!2112190 () Bool)

(declare-fun b!3402588 () Bool)

(declare-fun inv!21 (TokenValue!5634) Bool)

(assert (=> b!3402588 (= e!2112205 (and (inv!21 (value!174474 (h!42424 tokens!494))) e!2112190 tp!1061724))))

(declare-fun tp!1061727 () Bool)

(declare-fun b!3402589 () Bool)

(assert (=> b!3402589 (= e!2112190 (and tp!1061727 (inv!50113 (tag!5990 (rule!7968 (h!42424 tokens!494)))) (inv!50116 (transformation!5404 (rule!7968 (h!42424 tokens!494)))) e!2112186))))

(declare-fun b!3402590 () Bool)

(declare-fun e!2112183 () Bool)

(declare-fun tp!1061726 () Bool)

(assert (=> b!3402590 (= e!2112183 (and e!2112203 tp!1061726))))

(declare-fun b!3402591 () Bool)

(declare-fun e!2112188 () Bool)

(assert (=> b!3402591 (= e!2112188 e!2112200)))

(declare-fun res!1376847 () Bool)

(assert (=> b!3402591 (=> res!1376847 e!2112200)))

(declare-fun lt!1157234 () List!37127)

(declare-fun lt!1157241 () List!37127)

(assert (=> b!3402591 (= res!1376847 (or (not (= lt!1157234 lt!1157244)) (not (= lt!1157241 lt!1157244))))))

(assert (=> b!3402591 (= lt!1157244 (list!13425 (charsOf!3418 (h!42424 tokens!494))))))

(declare-fun b!3402592 () Bool)

(declare-fun e!2112202 () Bool)

(declare-fun e!2112187 () Bool)

(assert (=> b!3402592 (= e!2112202 e!2112187)))

(declare-fun res!1376856 () Bool)

(assert (=> b!3402592 (=> res!1376856 e!2112187)))

(declare-fun contains!6805 (List!37129 Rule!10608) Bool)

(assert (=> b!3402592 (= res!1376856 (not (contains!6805 rules!2135 (rule!7968 (h!42424 tokens!494)))))))

(assert (=> b!3402592 e!2112204))

(declare-fun res!1376844 () Bool)

(assert (=> b!3402592 (=> (not res!1376844) (not e!2112204))))

(declare-fun isDefined!5746 (Option!7446) Bool)

(assert (=> b!3402592 (= res!1376844 (isDefined!5746 lt!1157240))))

(declare-fun getRuleFromTag!1047 (LexerInterface!4993 List!37129 String!41504) Option!7446)

(assert (=> b!3402592 (= lt!1157240 (getRuleFromTag!1047 thiss!18206 rules!2135 (tag!5990 (rule!7968 (h!42424 tokens!494)))))))

(declare-datatypes ((Unit!52164 0))(
  ( (Unit!52165) )
))
(declare-fun lt!1157249 () Unit!52164)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1047 (LexerInterface!4993 List!37129 List!37127 Token!10174) Unit!52164)

(assert (=> b!3402592 (= lt!1157249 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1047 thiss!18206 rules!2135 lt!1157244 (h!42424 tokens!494)))))

(declare-fun lt!1157237 () Unit!52164)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!982 (LexerInterface!4993 List!37129 List!37128 Token!10174) Unit!52164)

(assert (=> b!3402592 (= lt!1157237 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!982 thiss!18206 rules!2135 tokens!494 (h!42424 tokens!494)))))

(declare-fun b!3402593 () Bool)

(declare-fun res!1376841 () Bool)

(declare-fun e!2112199 () Bool)

(assert (=> b!3402593 (=> (not res!1376841) (not e!2112199))))

(assert (=> b!3402593 (= res!1376841 (rulesProduceIndividualToken!2485 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3402594 () Bool)

(assert (=> b!3402594 (= e!2112199 (not e!2112188))))

(declare-fun res!1376838 () Bool)

(assert (=> b!3402594 (=> res!1376838 e!2112188)))

(assert (=> b!3402594 (= res!1376838 (not (= lt!1157241 lt!1157234)))))

(declare-fun printList!1541 (LexerInterface!4993 List!37128) List!37127)

(assert (=> b!3402594 (= lt!1157234 (printList!1541 thiss!18206 (Cons!37004 (h!42424 tokens!494) Nil!37004)))))

(declare-fun lt!1157236 () BalanceConc!21980)

(assert (=> b!3402594 (= lt!1157241 (list!13425 lt!1157236))))

(declare-datatypes ((IArray!22373 0))(
  ( (IArray!22374 (innerList!11244 List!37128)) )
))
(declare-datatypes ((Conc!11184 0))(
  ( (Node!11184 (left!28852 Conc!11184) (right!29182 Conc!11184) (csize!22598 Int) (cheight!11395 Int)) (Leaf!17497 (xs!14342 IArray!22373) (csize!22599 Int)) (Empty!11184) )
))
(declare-datatypes ((BalanceConc!21982 0))(
  ( (BalanceConc!21983 (c!580002 Conc!11184)) )
))
(declare-fun lt!1157233 () BalanceConc!21982)

(declare-fun printTailRec!1488 (LexerInterface!4993 BalanceConc!21982 Int BalanceConc!21980) BalanceConc!21980)

(assert (=> b!3402594 (= lt!1157236 (printTailRec!1488 thiss!18206 lt!1157233 0 (BalanceConc!21981 Empty!11183)))))

(declare-fun print!2058 (LexerInterface!4993 BalanceConc!21982) BalanceConc!21980)

(assert (=> b!3402594 (= lt!1157236 (print!2058 thiss!18206 lt!1157233))))

(declare-fun singletonSeq!2500 (Token!10174) BalanceConc!21982)

(assert (=> b!3402594 (= lt!1157233 (singletonSeq!2500 (h!42424 tokens!494)))))

(declare-fun b!3402595 () Bool)

(declare-fun res!1376851 () Bool)

(assert (=> b!3402595 (=> (not res!1376851) (not e!2112199))))

(declare-fun lambda!121047 () Int)

(declare-fun forall!7833 (List!37128 Int) Bool)

(assert (=> b!3402595 (= res!1376851 (forall!7833 tokens!494 lambda!121047))))

(declare-fun b!3402596 () Bool)

(assert (=> b!3402596 (= e!2112187 (= lt!1157244 (++!9081 lt!1157244 Nil!37003)))))

(declare-fun b!3402597 () Bool)

(declare-fun res!1376837 () Bool)

(assert (=> b!3402597 (=> (not res!1376837) (not e!2112199))))

(assert (=> b!3402597 (= res!1376837 (isSeparator!5404 (rule!7968 separatorToken!241)))))

(declare-fun b!3402598 () Bool)

(declare-fun e!2112189 () Bool)

(assert (=> b!3402598 (= e!2112189 e!2112202)))

(declare-fun res!1376846 () Bool)

(assert (=> b!3402598 (=> res!1376846 e!2112202)))

(declare-fun lt!1157245 () List!37127)

(assert (=> b!3402598 (= res!1376846 (not (= lt!1157246 lt!1157245)))))

(declare-fun lt!1157250 () List!37127)

(assert (=> b!3402598 (= lt!1157250 lt!1157245)))

(assert (=> b!3402598 (= lt!1157245 (++!9081 lt!1157244 lt!1157243))))

(declare-fun lt!1157239 () Unit!52164)

(declare-fun lemmaConcatAssociativity!1910 (List!37127 List!37127 List!37127) Unit!52164)

(assert (=> b!3402598 (= lt!1157239 (lemmaConcatAssociativity!1910 lt!1157244 lt!1157242 lt!1157248))))

(declare-fun e!2112193 () Bool)

(declare-fun b!3402599 () Bool)

(declare-fun tp!1061729 () Bool)

(declare-fun inv!50117 (Token!10174) Bool)

(assert (=> b!3402599 (= e!2112193 (and (inv!50117 (h!42424 tokens!494)) e!2112205 tp!1061729))))

(declare-fun e!2112184 () Bool)

(declare-fun tp!1061728 () Bool)

(declare-fun b!3402600 () Bool)

(assert (=> b!3402600 (= e!2112184 (and (inv!21 (value!174474 separatorToken!241)) e!2112191 tp!1061728))))

(declare-fun b!3402601 () Bool)

(declare-fun res!1376855 () Bool)

(assert (=> b!3402601 (=> (not res!1376855) (not e!2112199))))

(declare-fun rulesProduceEachTokenIndividually!1444 (LexerInterface!4993 List!37129 BalanceConc!21982) Bool)

(declare-fun seqFromList!3861 (List!37128) BalanceConc!21982)

(assert (=> b!3402601 (= res!1376855 (rulesProduceEachTokenIndividually!1444 thiss!18206 rules!2135 (seqFromList!3861 tokens!494)))))

(declare-fun b!3402602 () Bool)

(declare-fun res!1376849 () Bool)

(assert (=> b!3402602 (=> (not res!1376849) (not e!2112199))))

(get-info :version)

(assert (=> b!3402602 (= res!1376849 (and (not ((_ is Nil!37004) tokens!494)) (not ((_ is Nil!37004) (t!266147 tokens!494)))))))

(declare-fun res!1376853 () Bool)

(assert (=> start!317950 (=> (not res!1376853) (not e!2112199))))

(assert (=> start!317950 (= res!1376853 ((_ is Lexer!4991) thiss!18206))))

(assert (=> start!317950 e!2112199))

(assert (=> start!317950 true))

(assert (=> start!317950 e!2112183))

(assert (=> start!317950 e!2112193))

(assert (=> start!317950 (and (inv!50117 separatorToken!241) e!2112184)))

(assert (=> b!3402603 (= e!2112197 (and tp!1061723 tp!1061725))))

(declare-fun b!3402604 () Bool)

(declare-fun res!1376843 () Bool)

(assert (=> b!3402604 (=> (not res!1376843) (not e!2112199))))

(declare-fun rulesInvariant!4390 (LexerInterface!4993 List!37129) Bool)

(assert (=> b!3402604 (= res!1376843 (rulesInvariant!4390 thiss!18206 rules!2135))))

(declare-fun b!3402605 () Bool)

(declare-fun res!1376854 () Bool)

(assert (=> b!3402605 (=> (not res!1376854) (not e!2112199))))

(declare-fun isEmpty!21278 (List!37129) Bool)

(assert (=> b!3402605 (= res!1376854 (not (isEmpty!21278 rules!2135)))))

(declare-fun b!3402606 () Bool)

(declare-fun res!1376852 () Bool)

(assert (=> b!3402606 (=> res!1376852 e!2112200)))

(declare-fun isEmpty!21279 (BalanceConc!21982) Bool)

(declare-datatypes ((tuple2!36642 0))(
  ( (tuple2!36643 (_1!21455 BalanceConc!21982) (_2!21455 BalanceConc!21980)) )
))
(declare-fun lex!2319 (LexerInterface!4993 List!37129 BalanceConc!21980) tuple2!36642)

(declare-fun seqFromList!3862 (List!37127) BalanceConc!21980)

(assert (=> b!3402606 (= res!1376852 (isEmpty!21279 (_1!21455 (lex!2319 thiss!18206 rules!2135 (seqFromList!3862 lt!1157244)))))))

(declare-fun b!3402607 () Bool)

(assert (=> b!3402607 (= e!2112200 e!2112198)))

(declare-fun res!1376839 () Bool)

(assert (=> b!3402607 (=> res!1376839 e!2112198)))

(assert (=> b!3402607 (= res!1376839 (or (isSeparator!5404 (rule!7968 (h!42424 tokens!494))) (isSeparator!5404 (rule!7968 (h!42424 (t!266147 tokens!494))))))))

(declare-fun lt!1157238 () Unit!52164)

(declare-fun forallContained!1351 (List!37128 Int Token!10174) Unit!52164)

(assert (=> b!3402607 (= lt!1157238 (forallContained!1351 tokens!494 lambda!121047 (h!42424 (t!266147 tokens!494))))))

(declare-fun lt!1157247 () Unit!52164)

(assert (=> b!3402607 (= lt!1157247 (forallContained!1351 tokens!494 lambda!121047 (h!42424 tokens!494)))))

(declare-fun b!3402608 () Bool)

(assert (=> b!3402608 (= e!2112194 e!2112189)))

(declare-fun res!1376842 () Bool)

(assert (=> b!3402608 (=> res!1376842 e!2112189)))

(assert (=> b!3402608 (= res!1376842 (not (= lt!1157246 lt!1157250)))))

(assert (=> b!3402608 (= lt!1157250 (++!9081 (++!9081 lt!1157244 lt!1157242) lt!1157248))))

(declare-fun b!3402609 () Bool)

(declare-fun res!1376848 () Bool)

(assert (=> b!3402609 (=> (not res!1376848) (not e!2112199))))

(declare-fun sepAndNonSepRulesDisjointChars!1598 (List!37129 List!37129) Bool)

(assert (=> b!3402609 (= res!1376848 (sepAndNonSepRulesDisjointChars!1598 rules!2135 rules!2135))))

(assert (=> b!3402610 (= e!2112195 (and tp!1061733 tp!1061731))))

(assert (= (and start!317950 res!1376853) b!3402605))

(assert (= (and b!3402605 res!1376854) b!3402604))

(assert (= (and b!3402604 res!1376843) b!3402601))

(assert (= (and b!3402601 res!1376855) b!3402593))

(assert (= (and b!3402593 res!1376841) b!3402597))

(assert (= (and b!3402597 res!1376837) b!3402595))

(assert (= (and b!3402595 res!1376851) b!3402609))

(assert (= (and b!3402609 res!1376848) b!3402602))

(assert (= (and b!3402602 res!1376849) b!3402594))

(assert (= (and b!3402594 (not res!1376838)) b!3402591))

(assert (= (and b!3402591 (not res!1376847)) b!3402584))

(assert (= (and b!3402584 (not res!1376840)) b!3402606))

(assert (= (and b!3402606 (not res!1376852)) b!3402607))

(assert (= (and b!3402607 (not res!1376839)) b!3402583))

(assert (= (and b!3402583 (not res!1376845)) b!3402608))

(assert (= (and b!3402608 (not res!1376842)) b!3402598))

(assert (= (and b!3402598 (not res!1376846)) b!3402592))

(assert (= (and b!3402592 res!1376844) b!3402582))

(assert (= (and b!3402582 res!1376850) b!3402581))

(assert (= (and b!3402592 (not res!1376856)) b!3402596))

(assert (= b!3402585 b!3402603))

(assert (= b!3402590 b!3402585))

(assert (= (and start!317950 ((_ is Cons!37005) rules!2135)) b!3402590))

(assert (= b!3402589 b!3402586))

(assert (= b!3402588 b!3402589))

(assert (= b!3402599 b!3402588))

(assert (= (and start!317950 ((_ is Cons!37004) tokens!494)) b!3402599))

(assert (= b!3402587 b!3402610))

(assert (= b!3402600 b!3402587))

(assert (= start!317950 b!3402600))

(declare-fun m!3775837 () Bool)

(assert (=> b!3402601 m!3775837))

(assert (=> b!3402601 m!3775837))

(declare-fun m!3775839 () Bool)

(assert (=> b!3402601 m!3775839))

(declare-fun m!3775841 () Bool)

(assert (=> b!3402582 m!3775841))

(declare-fun m!3775843 () Bool)

(assert (=> b!3402582 m!3775843))

(declare-fun m!3775845 () Bool)

(assert (=> b!3402596 m!3775845))

(declare-fun m!3775847 () Bool)

(assert (=> b!3402598 m!3775847))

(declare-fun m!3775849 () Bool)

(assert (=> b!3402598 m!3775849))

(declare-fun m!3775851 () Bool)

(assert (=> b!3402607 m!3775851))

(declare-fun m!3775853 () Bool)

(assert (=> b!3402607 m!3775853))

(declare-fun m!3775855 () Bool)

(assert (=> b!3402594 m!3775855))

(declare-fun m!3775857 () Bool)

(assert (=> b!3402594 m!3775857))

(declare-fun m!3775859 () Bool)

(assert (=> b!3402594 m!3775859))

(declare-fun m!3775861 () Bool)

(assert (=> b!3402594 m!3775861))

(declare-fun m!3775863 () Bool)

(assert (=> b!3402594 m!3775863))

(declare-fun m!3775865 () Bool)

(assert (=> b!3402595 m!3775865))

(declare-fun m!3775867 () Bool)

(assert (=> b!3402608 m!3775867))

(assert (=> b!3402608 m!3775867))

(declare-fun m!3775869 () Bool)

(assert (=> b!3402608 m!3775869))

(declare-fun m!3775871 () Bool)

(assert (=> b!3402583 m!3775871))

(declare-fun m!3775873 () Bool)

(assert (=> b!3402583 m!3775873))

(declare-fun m!3775875 () Bool)

(assert (=> b!3402583 m!3775875))

(declare-fun m!3775877 () Bool)

(assert (=> b!3402583 m!3775877))

(declare-fun m!3775879 () Bool)

(assert (=> b!3402583 m!3775879))

(declare-fun m!3775881 () Bool)

(assert (=> b!3402583 m!3775881))

(declare-fun m!3775883 () Bool)

(assert (=> b!3402583 m!3775883))

(assert (=> b!3402583 m!3775871))

(declare-fun m!3775885 () Bool)

(assert (=> b!3402583 m!3775885))

(declare-fun m!3775887 () Bool)

(assert (=> b!3402583 m!3775887))

(assert (=> b!3402583 m!3775881))

(assert (=> b!3402583 m!3775885))

(assert (=> b!3402583 m!3775879))

(assert (=> b!3402583 m!3775873))

(declare-fun m!3775889 () Bool)

(assert (=> b!3402583 m!3775889))

(declare-fun m!3775891 () Bool)

(assert (=> b!3402609 m!3775891))

(declare-fun m!3775893 () Bool)

(assert (=> b!3402587 m!3775893))

(declare-fun m!3775895 () Bool)

(assert (=> b!3402587 m!3775895))

(declare-fun m!3775897 () Bool)

(assert (=> b!3402588 m!3775897))

(declare-fun m!3775899 () Bool)

(assert (=> b!3402605 m!3775899))

(declare-fun m!3775901 () Bool)

(assert (=> b!3402589 m!3775901))

(declare-fun m!3775903 () Bool)

(assert (=> b!3402589 m!3775903))

(declare-fun m!3775905 () Bool)

(assert (=> b!3402593 m!3775905))

(declare-fun m!3775907 () Bool)

(assert (=> b!3402591 m!3775907))

(assert (=> b!3402591 m!3775907))

(declare-fun m!3775909 () Bool)

(assert (=> b!3402591 m!3775909))

(declare-fun m!3775911 () Bool)

(assert (=> b!3402585 m!3775911))

(declare-fun m!3775913 () Bool)

(assert (=> b!3402585 m!3775913))

(declare-fun m!3775915 () Bool)

(assert (=> b!3402606 m!3775915))

(assert (=> b!3402606 m!3775915))

(declare-fun m!3775917 () Bool)

(assert (=> b!3402606 m!3775917))

(declare-fun m!3775919 () Bool)

(assert (=> b!3402606 m!3775919))

(declare-fun m!3775921 () Bool)

(assert (=> b!3402600 m!3775921))

(declare-fun m!3775923 () Bool)

(assert (=> b!3402584 m!3775923))

(declare-fun m!3775925 () Bool)

(assert (=> b!3402599 m!3775925))

(declare-fun m!3775927 () Bool)

(assert (=> start!317950 m!3775927))

(declare-fun m!3775929 () Bool)

(assert (=> b!3402592 m!3775929))

(declare-fun m!3775931 () Bool)

(assert (=> b!3402592 m!3775931))

(declare-fun m!3775933 () Bool)

(assert (=> b!3402592 m!3775933))

(declare-fun m!3775935 () Bool)

(assert (=> b!3402592 m!3775935))

(declare-fun m!3775937 () Bool)

(assert (=> b!3402592 m!3775937))

(declare-fun m!3775939 () Bool)

(assert (=> b!3402604 m!3775939))

(check-sat (not b_next!89837) (not b!3402587) b_and!237561 (not b!3402599) (not b!3402598) b_and!237555 (not b!3402601) (not b_next!89833) (not b!3402592) (not b!3402596) (not b_next!89839) (not b!3402582) (not b_next!89841) (not b!3402588) (not b!3402590) b_and!237563 b_and!237565 (not b_next!89843) (not b!3402609) (not b!3402583) (not b!3402595) (not b!3402606) (not b!3402605) (not b!3402584) (not b!3402600) (not b!3402594) (not b!3402591) (not b!3402585) (not b!3402604) b_and!237557 b_and!237559 (not b!3402607) (not b!3402608) (not b!3402589) (not start!317950) (not b!3402593) (not b_next!89835))
(check-sat (not b_next!89841) b_and!237563 (not b_next!89837) b_and!237561 b_and!237555 b_and!237557 (not b_next!89833) b_and!237559 (not b_next!89835) (not b_next!89839) b_and!237565 (not b_next!89843))
(get-model)

(declare-fun b!3402619 () Bool)

(declare-fun e!2112212 () List!37127)

(assert (=> b!3402619 (= e!2112212 Nil!37003)))

(declare-fun d!968157 () Bool)

(declare-fun e!2112211 () Bool)

(assert (=> d!968157 e!2112211))

(declare-fun res!1376873 () Bool)

(assert (=> d!968157 (=> (not res!1376873) (not e!2112211))))

(declare-fun lt!1157253 () List!37127)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5127 (List!37127) (InoxSet C!20512))

(assert (=> d!968157 (= res!1376873 (= (content!5127 lt!1157253) ((_ map or) (content!5127 lt!1157244) (content!5127 Nil!37003))))))

(assert (=> d!968157 (= lt!1157253 e!2112212)))

(declare-fun c!580005 () Bool)

(assert (=> d!968157 (= c!580005 ((_ is Nil!37003) lt!1157244))))

(assert (=> d!968157 (= (++!9081 lt!1157244 Nil!37003) lt!1157253)))

(declare-fun b!3402621 () Bool)

(declare-fun res!1376872 () Bool)

(assert (=> b!3402621 (=> (not res!1376872) (not e!2112211))))

(declare-fun size!28024 (List!37127) Int)

(assert (=> b!3402621 (= res!1376872 (= (size!28024 lt!1157253) (+ (size!28024 lt!1157244) (size!28024 Nil!37003))))))

(declare-fun b!3402622 () Bool)

(assert (=> b!3402622 (= e!2112211 (or (not (= Nil!37003 Nil!37003)) (= lt!1157253 lt!1157244)))))

(declare-fun b!3402620 () Bool)

(assert (=> b!3402620 (= e!2112212 (Cons!37003 (h!42423 lt!1157244) (++!9081 (t!266146 lt!1157244) Nil!37003)))))

(assert (= (and d!968157 c!580005) b!3402619))

(assert (= (and d!968157 (not c!580005)) b!3402620))

(assert (= (and d!968157 res!1376873) b!3402621))

(assert (= (and b!3402621 res!1376872) b!3402622))

(declare-fun m!3775941 () Bool)

(assert (=> d!968157 m!3775941))

(declare-fun m!3775943 () Bool)

(assert (=> d!968157 m!3775943))

(declare-fun m!3775945 () Bool)

(assert (=> d!968157 m!3775945))

(declare-fun m!3775947 () Bool)

(assert (=> b!3402621 m!3775947))

(declare-fun m!3775949 () Bool)

(assert (=> b!3402621 m!3775949))

(declare-fun m!3775951 () Bool)

(assert (=> b!3402621 m!3775951))

(declare-fun m!3775953 () Bool)

(assert (=> b!3402620 m!3775953))

(assert (=> b!3402596 d!968157))

(declare-fun d!968159 () Bool)

(declare-fun res!1376878 () Bool)

(declare-fun e!2112217 () Bool)

(assert (=> d!968159 (=> res!1376878 e!2112217)))

(assert (=> d!968159 (= res!1376878 ((_ is Nil!37004) tokens!494))))

(assert (=> d!968159 (= (forall!7833 tokens!494 lambda!121047) e!2112217)))

(declare-fun b!3402627 () Bool)

(declare-fun e!2112218 () Bool)

(assert (=> b!3402627 (= e!2112217 e!2112218)))

(declare-fun res!1376879 () Bool)

(assert (=> b!3402627 (=> (not res!1376879) (not e!2112218))))

(declare-fun dynLambda!15462 (Int Token!10174) Bool)

(assert (=> b!3402627 (= res!1376879 (dynLambda!15462 lambda!121047 (h!42424 tokens!494)))))

(declare-fun b!3402628 () Bool)

(assert (=> b!3402628 (= e!2112218 (forall!7833 (t!266147 tokens!494) lambda!121047))))

(assert (= (and d!968159 (not res!1376878)) b!3402627))

(assert (= (and b!3402627 res!1376879) b!3402628))

(declare-fun b_lambda!97155 () Bool)

(assert (=> (not b_lambda!97155) (not b!3402627)))

(declare-fun m!3775955 () Bool)

(assert (=> b!3402627 m!3775955))

(declare-fun m!3775957 () Bool)

(assert (=> b!3402628 m!3775957))

(assert (=> b!3402595 d!968159))

(declare-fun d!968161 () Bool)

(declare-fun lt!1157306 () Bool)

(declare-fun e!2112284 () Bool)

(assert (=> d!968161 (= lt!1157306 e!2112284)))

(declare-fun res!1376929 () Bool)

(assert (=> d!968161 (=> (not res!1376929) (not e!2112284))))

(declare-fun list!13428 (BalanceConc!21982) List!37128)

(assert (=> d!968161 (= res!1376929 (= (list!13428 (_1!21455 (lex!2319 thiss!18206 rules!2135 (print!2058 thiss!18206 (singletonSeq!2500 separatorToken!241))))) (list!13428 (singletonSeq!2500 separatorToken!241))))))

(declare-fun e!2112283 () Bool)

(assert (=> d!968161 (= lt!1157306 e!2112283)))

(declare-fun res!1376930 () Bool)

(assert (=> d!968161 (=> (not res!1376930) (not e!2112283))))

(declare-fun lt!1157307 () tuple2!36642)

(declare-fun size!28025 (BalanceConc!21982) Int)

(assert (=> d!968161 (= res!1376930 (= (size!28025 (_1!21455 lt!1157307)) 1))))

(assert (=> d!968161 (= lt!1157307 (lex!2319 thiss!18206 rules!2135 (print!2058 thiss!18206 (singletonSeq!2500 separatorToken!241))))))

(assert (=> d!968161 (not (isEmpty!21278 rules!2135))))

(assert (=> d!968161 (= (rulesProduceIndividualToken!2485 thiss!18206 rules!2135 separatorToken!241) lt!1157306)))

(declare-fun b!3402731 () Bool)

(declare-fun res!1376928 () Bool)

(assert (=> b!3402731 (=> (not res!1376928) (not e!2112283))))

(declare-fun apply!8644 (BalanceConc!21982 Int) Token!10174)

(assert (=> b!3402731 (= res!1376928 (= (apply!8644 (_1!21455 lt!1157307) 0) separatorToken!241))))

(declare-fun b!3402732 () Bool)

(declare-fun isEmpty!21281 (BalanceConc!21980) Bool)

(assert (=> b!3402732 (= e!2112283 (isEmpty!21281 (_2!21455 lt!1157307)))))

(declare-fun b!3402733 () Bool)

(assert (=> b!3402733 (= e!2112284 (isEmpty!21281 (_2!21455 (lex!2319 thiss!18206 rules!2135 (print!2058 thiss!18206 (singletonSeq!2500 separatorToken!241))))))))

(assert (= (and d!968161 res!1376930) b!3402731))

(assert (= (and b!3402731 res!1376928) b!3402732))

(assert (= (and d!968161 res!1376929) b!3402733))

(declare-fun m!3776155 () Bool)

(assert (=> d!968161 m!3776155))

(declare-fun m!3776157 () Bool)

(assert (=> d!968161 m!3776157))

(declare-fun m!3776159 () Bool)

(assert (=> d!968161 m!3776159))

(declare-fun m!3776161 () Bool)

(assert (=> d!968161 m!3776161))

(assert (=> d!968161 m!3776161))

(declare-fun m!3776163 () Bool)

(assert (=> d!968161 m!3776163))

(assert (=> d!968161 m!3775899))

(assert (=> d!968161 m!3776159))

(assert (=> d!968161 m!3776159))

(declare-fun m!3776165 () Bool)

(assert (=> d!968161 m!3776165))

(declare-fun m!3776167 () Bool)

(assert (=> b!3402731 m!3776167))

(declare-fun m!3776169 () Bool)

(assert (=> b!3402732 m!3776169))

(assert (=> b!3402733 m!3776159))

(assert (=> b!3402733 m!3776159))

(assert (=> b!3402733 m!3776161))

(assert (=> b!3402733 m!3776161))

(assert (=> b!3402733 m!3776163))

(declare-fun m!3776171 () Bool)

(assert (=> b!3402733 m!3776171))

(assert (=> b!3402593 d!968161))

(declare-fun d!968211 () Bool)

(declare-fun res!1376935 () Bool)

(declare-fun e!2112287 () Bool)

(assert (=> d!968211 (=> (not res!1376935) (not e!2112287))))

(declare-fun isEmpty!21282 (List!37127) Bool)

(assert (=> d!968211 (= res!1376935 (not (isEmpty!21282 (originalCharacters!6118 separatorToken!241))))))

(assert (=> d!968211 (= (inv!50117 separatorToken!241) e!2112287)))

(declare-fun b!3402738 () Bool)

(declare-fun res!1376936 () Bool)

(assert (=> b!3402738 (=> (not res!1376936) (not e!2112287))))

(declare-fun dynLambda!15463 (Int TokenValue!5634) BalanceConc!21980)

(assert (=> b!3402738 (= res!1376936 (= (originalCharacters!6118 separatorToken!241) (list!13425 (dynLambda!15463 (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))) (value!174474 separatorToken!241)))))))

(declare-fun b!3402739 () Bool)

(assert (=> b!3402739 (= e!2112287 (= (size!28021 separatorToken!241) (size!28024 (originalCharacters!6118 separatorToken!241))))))

(assert (= (and d!968211 res!1376935) b!3402738))

(assert (= (and b!3402738 res!1376936) b!3402739))

(declare-fun b_lambda!97165 () Bool)

(assert (=> (not b_lambda!97165) (not b!3402738)))

(declare-fun t!266165 () Bool)

(declare-fun tb!182507 () Bool)

(assert (=> (and b!3402610 (= (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))) (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241)))) t!266165) tb!182507))

(declare-fun b!3402744 () Bool)

(declare-fun e!2112290 () Bool)

(declare-fun tp!1061741 () Bool)

(declare-fun inv!50120 (Conc!11183) Bool)

(assert (=> b!3402744 (= e!2112290 (and (inv!50120 (c!580001 (dynLambda!15463 (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))) (value!174474 separatorToken!241)))) tp!1061741))))

(declare-fun result!226190 () Bool)

(declare-fun inv!50121 (BalanceConc!21980) Bool)

(assert (=> tb!182507 (= result!226190 (and (inv!50121 (dynLambda!15463 (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))) (value!174474 separatorToken!241))) e!2112290))))

(assert (= tb!182507 b!3402744))

(declare-fun m!3776173 () Bool)

(assert (=> b!3402744 m!3776173))

(declare-fun m!3776175 () Bool)

(assert (=> tb!182507 m!3776175))

(assert (=> b!3402738 t!266165))

(declare-fun b_and!237579 () Bool)

(assert (= b_and!237557 (and (=> t!266165 result!226190) b_and!237579)))

(declare-fun t!266167 () Bool)

(declare-fun tb!182509 () Bool)

(assert (=> (and b!3402603 (= (toChars!7471 (transformation!5404 (h!42425 rules!2135))) (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241)))) t!266167) tb!182509))

(declare-fun result!226194 () Bool)

(assert (= result!226194 result!226190))

(assert (=> b!3402738 t!266167))

(declare-fun b_and!237581 () Bool)

(assert (= b_and!237561 (and (=> t!266167 result!226194) b_and!237581)))

(declare-fun t!266169 () Bool)

(declare-fun tb!182511 () Bool)

(assert (=> (and b!3402586 (= (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))) (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241)))) t!266169) tb!182511))

(declare-fun result!226196 () Bool)

(assert (= result!226196 result!226190))

(assert (=> b!3402738 t!266169))

(declare-fun b_and!237583 () Bool)

(assert (= b_and!237565 (and (=> t!266169 result!226196) b_and!237583)))

(declare-fun m!3776177 () Bool)

(assert (=> d!968211 m!3776177))

(declare-fun m!3776179 () Bool)

(assert (=> b!3402738 m!3776179))

(assert (=> b!3402738 m!3776179))

(declare-fun m!3776181 () Bool)

(assert (=> b!3402738 m!3776181))

(declare-fun m!3776183 () Bool)

(assert (=> b!3402739 m!3776183))

(assert (=> start!317950 d!968211))

(declare-fun d!968213 () Bool)

(declare-fun lt!1157323 () BalanceConc!21980)

(declare-fun printListTailRec!666 (LexerInterface!4993 List!37128 List!37127) List!37127)

(declare-fun dropList!1183 (BalanceConc!21982 Int) List!37128)

(assert (=> d!968213 (= (list!13425 lt!1157323) (printListTailRec!666 thiss!18206 (dropList!1183 lt!1157233 0) (list!13425 (BalanceConc!21981 Empty!11183))))))

(declare-fun e!2112296 () BalanceConc!21980)

(assert (=> d!968213 (= lt!1157323 e!2112296)))

(declare-fun c!580032 () Bool)

(assert (=> d!968213 (= c!580032 (>= 0 (size!28025 lt!1157233)))))

(declare-fun e!2112295 () Bool)

(assert (=> d!968213 e!2112295))

(declare-fun res!1376939 () Bool)

(assert (=> d!968213 (=> (not res!1376939) (not e!2112295))))

(assert (=> d!968213 (= res!1376939 (>= 0 0))))

(assert (=> d!968213 (= (printTailRec!1488 thiss!18206 lt!1157233 0 (BalanceConc!21981 Empty!11183)) lt!1157323)))

(declare-fun b!3402751 () Bool)

(assert (=> b!3402751 (= e!2112295 (<= 0 (size!28025 lt!1157233)))))

(declare-fun b!3402752 () Bool)

(assert (=> b!3402752 (= e!2112296 (BalanceConc!21981 Empty!11183))))

(declare-fun b!3402753 () Bool)

(declare-fun ++!9083 (BalanceConc!21980 BalanceConc!21980) BalanceConc!21980)

(assert (=> b!3402753 (= e!2112296 (printTailRec!1488 thiss!18206 lt!1157233 (+ 0 1) (++!9083 (BalanceConc!21981 Empty!11183) (charsOf!3418 (apply!8644 lt!1157233 0)))))))

(declare-fun lt!1157322 () List!37128)

(assert (=> b!3402753 (= lt!1157322 (list!13428 lt!1157233))))

(declare-fun lt!1157327 () Unit!52164)

(declare-fun lemmaDropApply!1141 (List!37128 Int) Unit!52164)

(assert (=> b!3402753 (= lt!1157327 (lemmaDropApply!1141 lt!1157322 0))))

(declare-fun head!7265 (List!37128) Token!10174)

(declare-fun drop!1983 (List!37128 Int) List!37128)

(declare-fun apply!8645 (List!37128 Int) Token!10174)

(assert (=> b!3402753 (= (head!7265 (drop!1983 lt!1157322 0)) (apply!8645 lt!1157322 0))))

(declare-fun lt!1157324 () Unit!52164)

(assert (=> b!3402753 (= lt!1157324 lt!1157327)))

(declare-fun lt!1157326 () List!37128)

(assert (=> b!3402753 (= lt!1157326 (list!13428 lt!1157233))))

(declare-fun lt!1157325 () Unit!52164)

(declare-fun lemmaDropTail!1025 (List!37128 Int) Unit!52164)

(assert (=> b!3402753 (= lt!1157325 (lemmaDropTail!1025 lt!1157326 0))))

(declare-fun tail!5387 (List!37128) List!37128)

(assert (=> b!3402753 (= (tail!5387 (drop!1983 lt!1157326 0)) (drop!1983 lt!1157326 (+ 0 1)))))

(declare-fun lt!1157328 () Unit!52164)

(assert (=> b!3402753 (= lt!1157328 lt!1157325)))

(assert (= (and d!968213 res!1376939) b!3402751))

(assert (= (and d!968213 c!580032) b!3402752))

(assert (= (and d!968213 (not c!580032)) b!3402753))

(declare-fun m!3776185 () Bool)

(assert (=> d!968213 m!3776185))

(declare-fun m!3776187 () Bool)

(assert (=> d!968213 m!3776187))

(declare-fun m!3776189 () Bool)

(assert (=> d!968213 m!3776189))

(declare-fun m!3776191 () Bool)

(assert (=> d!968213 m!3776191))

(assert (=> d!968213 m!3776189))

(assert (=> d!968213 m!3776187))

(declare-fun m!3776193 () Bool)

(assert (=> d!968213 m!3776193))

(assert (=> b!3402751 m!3776193))

(declare-fun m!3776195 () Bool)

(assert (=> b!3402753 m!3776195))

(declare-fun m!3776197 () Bool)

(assert (=> b!3402753 m!3776197))

(declare-fun m!3776199 () Bool)

(assert (=> b!3402753 m!3776199))

(declare-fun m!3776201 () Bool)

(assert (=> b!3402753 m!3776201))

(declare-fun m!3776203 () Bool)

(assert (=> b!3402753 m!3776203))

(declare-fun m!3776205 () Bool)

(assert (=> b!3402753 m!3776205))

(declare-fun m!3776207 () Bool)

(assert (=> b!3402753 m!3776207))

(assert (=> b!3402753 m!3776207))

(declare-fun m!3776209 () Bool)

(assert (=> b!3402753 m!3776209))

(declare-fun m!3776211 () Bool)

(assert (=> b!3402753 m!3776211))

(declare-fun m!3776213 () Bool)

(assert (=> b!3402753 m!3776213))

(assert (=> b!3402753 m!3776195))

(assert (=> b!3402753 m!3776205))

(assert (=> b!3402753 m!3776199))

(declare-fun m!3776215 () Bool)

(assert (=> b!3402753 m!3776215))

(declare-fun m!3776217 () Bool)

(assert (=> b!3402753 m!3776217))

(assert (=> b!3402753 m!3776213))

(declare-fun m!3776219 () Bool)

(assert (=> b!3402753 m!3776219))

(assert (=> b!3402594 d!968213))

(declare-fun d!968215 () Bool)

(declare-fun list!13429 (Conc!11183) List!37127)

(assert (=> d!968215 (= (list!13425 lt!1157236) (list!13429 (c!580001 lt!1157236)))))

(declare-fun bs!556386 () Bool)

(assert (= bs!556386 d!968215))

(declare-fun m!3776221 () Bool)

(assert (=> bs!556386 m!3776221))

(assert (=> b!3402594 d!968215))

(declare-fun d!968217 () Bool)

(declare-fun lt!1157333 () BalanceConc!21980)

(assert (=> d!968217 (= (list!13425 lt!1157333) (printList!1541 thiss!18206 (list!13428 lt!1157233)))))

(assert (=> d!968217 (= lt!1157333 (printTailRec!1488 thiss!18206 lt!1157233 0 (BalanceConc!21981 Empty!11183)))))

(assert (=> d!968217 (= (print!2058 thiss!18206 lt!1157233) lt!1157333)))

(declare-fun bs!556387 () Bool)

(assert (= bs!556387 d!968217))

(declare-fun m!3776223 () Bool)

(assert (=> bs!556387 m!3776223))

(assert (=> bs!556387 m!3776197))

(assert (=> bs!556387 m!3776197))

(declare-fun m!3776225 () Bool)

(assert (=> bs!556387 m!3776225))

(assert (=> bs!556387 m!3775861))

(assert (=> b!3402594 d!968217))

(declare-fun d!968219 () Bool)

(declare-fun e!2112299 () Bool)

(assert (=> d!968219 e!2112299))

(declare-fun res!1376942 () Bool)

(assert (=> d!968219 (=> (not res!1376942) (not e!2112299))))

(declare-fun lt!1157336 () BalanceConc!21982)

(assert (=> d!968219 (= res!1376942 (= (list!13428 lt!1157336) (Cons!37004 (h!42424 tokens!494) Nil!37004)))))

(declare-fun singleton!1098 (Token!10174) BalanceConc!21982)

(assert (=> d!968219 (= lt!1157336 (singleton!1098 (h!42424 tokens!494)))))

(assert (=> d!968219 (= (singletonSeq!2500 (h!42424 tokens!494)) lt!1157336)))

(declare-fun b!3402756 () Bool)

(declare-fun isBalanced!3383 (Conc!11184) Bool)

(assert (=> b!3402756 (= e!2112299 (isBalanced!3383 (c!580002 lt!1157336)))))

(assert (= (and d!968219 res!1376942) b!3402756))

(declare-fun m!3776227 () Bool)

(assert (=> d!968219 m!3776227))

(declare-fun m!3776229 () Bool)

(assert (=> d!968219 m!3776229))

(declare-fun m!3776231 () Bool)

(assert (=> b!3402756 m!3776231))

(assert (=> b!3402594 d!968219))

(declare-fun d!968221 () Bool)

(declare-fun c!580035 () Bool)

(assert (=> d!968221 (= c!580035 ((_ is Cons!37004) (Cons!37004 (h!42424 tokens!494) Nil!37004)))))

(declare-fun e!2112302 () List!37127)

(assert (=> d!968221 (= (printList!1541 thiss!18206 (Cons!37004 (h!42424 tokens!494) Nil!37004)) e!2112302)))

(declare-fun b!3402761 () Bool)

(assert (=> b!3402761 (= e!2112302 (++!9081 (list!13425 (charsOf!3418 (h!42424 (Cons!37004 (h!42424 tokens!494) Nil!37004)))) (printList!1541 thiss!18206 (t!266147 (Cons!37004 (h!42424 tokens!494) Nil!37004)))))))

(declare-fun b!3402762 () Bool)

(assert (=> b!3402762 (= e!2112302 Nil!37003)))

(assert (= (and d!968221 c!580035) b!3402761))

(assert (= (and d!968221 (not c!580035)) b!3402762))

(declare-fun m!3776233 () Bool)

(assert (=> b!3402761 m!3776233))

(assert (=> b!3402761 m!3776233))

(declare-fun m!3776235 () Bool)

(assert (=> b!3402761 m!3776235))

(declare-fun m!3776237 () Bool)

(assert (=> b!3402761 m!3776237))

(assert (=> b!3402761 m!3776235))

(assert (=> b!3402761 m!3776237))

(declare-fun m!3776239 () Bool)

(assert (=> b!3402761 m!3776239))

(assert (=> b!3402594 d!968221))

(declare-fun d!968223 () Bool)

(declare-fun e!2112314 () Bool)

(assert (=> d!968223 e!2112314))

(declare-fun res!1376947 () Bool)

(assert (=> d!968223 (=> res!1376947 e!2112314)))

(declare-fun lt!1157345 () Option!7446)

(declare-fun isEmpty!21283 (Option!7446) Bool)

(assert (=> d!968223 (= res!1376947 (isEmpty!21283 lt!1157345))))

(declare-fun e!2112311 () Option!7446)

(assert (=> d!968223 (= lt!1157345 e!2112311)))

(declare-fun c!580041 () Bool)

(assert (=> d!968223 (= c!580041 (and ((_ is Cons!37005) rules!2135) (= (tag!5990 (h!42425 rules!2135)) (tag!5990 (rule!7968 (h!42424 tokens!494))))))))

(assert (=> d!968223 (rulesInvariant!4390 thiss!18206 rules!2135)))

(assert (=> d!968223 (= (getRuleFromTag!1047 thiss!18206 rules!2135 (tag!5990 (rule!7968 (h!42424 tokens!494)))) lt!1157345)))

(declare-fun b!3402775 () Bool)

(assert (=> b!3402775 (= e!2112311 (Some!7445 (h!42425 rules!2135)))))

(declare-fun b!3402776 () Bool)

(declare-fun e!2112312 () Bool)

(assert (=> b!3402776 (= e!2112314 e!2112312)))

(declare-fun res!1376948 () Bool)

(assert (=> b!3402776 (=> (not res!1376948) (not e!2112312))))

(assert (=> b!3402776 (= res!1376948 (contains!6805 rules!2135 (get!11817 lt!1157345)))))

(declare-fun b!3402777 () Bool)

(declare-fun e!2112313 () Option!7446)

(assert (=> b!3402777 (= e!2112313 None!7445)))

(declare-fun b!3402778 () Bool)

(assert (=> b!3402778 (= e!2112311 e!2112313)))

(declare-fun c!580040 () Bool)

(assert (=> b!3402778 (= c!580040 (and ((_ is Cons!37005) rules!2135) (not (= (tag!5990 (h!42425 rules!2135)) (tag!5990 (rule!7968 (h!42424 tokens!494)))))))))

(declare-fun b!3402779 () Bool)

(declare-fun lt!1157344 () Unit!52164)

(declare-fun lt!1157343 () Unit!52164)

(assert (=> b!3402779 (= lt!1157344 lt!1157343)))

(assert (=> b!3402779 (rulesInvariant!4390 thiss!18206 (t!266148 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!409 (LexerInterface!4993 Rule!10608 List!37129) Unit!52164)

(assert (=> b!3402779 (= lt!1157343 (lemmaInvariantOnRulesThenOnTail!409 thiss!18206 (h!42425 rules!2135) (t!266148 rules!2135)))))

(assert (=> b!3402779 (= e!2112313 (getRuleFromTag!1047 thiss!18206 (t!266148 rules!2135) (tag!5990 (rule!7968 (h!42424 tokens!494)))))))

(declare-fun b!3402780 () Bool)

(assert (=> b!3402780 (= e!2112312 (= (tag!5990 (get!11817 lt!1157345)) (tag!5990 (rule!7968 (h!42424 tokens!494)))))))

(assert (= (and d!968223 c!580041) b!3402775))

(assert (= (and d!968223 (not c!580041)) b!3402778))

(assert (= (and b!3402778 c!580040) b!3402779))

(assert (= (and b!3402778 (not c!580040)) b!3402777))

(assert (= (and d!968223 (not res!1376947)) b!3402776))

(assert (= (and b!3402776 res!1376948) b!3402780))

(declare-fun m!3776241 () Bool)

(assert (=> d!968223 m!3776241))

(assert (=> d!968223 m!3775939))

(declare-fun m!3776243 () Bool)

(assert (=> b!3402776 m!3776243))

(assert (=> b!3402776 m!3776243))

(declare-fun m!3776245 () Bool)

(assert (=> b!3402776 m!3776245))

(declare-fun m!3776247 () Bool)

(assert (=> b!3402779 m!3776247))

(declare-fun m!3776249 () Bool)

(assert (=> b!3402779 m!3776249))

(declare-fun m!3776251 () Bool)

(assert (=> b!3402779 m!3776251))

(assert (=> b!3402780 m!3776243))

(assert (=> b!3402592 d!968223))

(declare-fun d!968225 () Bool)

(declare-fun e!2112317 () Bool)

(assert (=> d!968225 e!2112317))

(declare-fun res!1376953 () Bool)

(assert (=> d!968225 (=> (not res!1376953) (not e!2112317))))

(assert (=> d!968225 (= res!1376953 (isDefined!5746 (getRuleFromTag!1047 thiss!18206 rules!2135 (tag!5990 (rule!7968 (h!42424 tokens!494))))))))

(declare-fun lt!1157348 () Unit!52164)

(declare-fun choose!19740 (LexerInterface!4993 List!37129 List!37127 Token!10174) Unit!52164)

(assert (=> d!968225 (= lt!1157348 (choose!19740 thiss!18206 rules!2135 lt!1157244 (h!42424 tokens!494)))))

(assert (=> d!968225 (rulesInvariant!4390 thiss!18206 rules!2135)))

(assert (=> d!968225 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1047 thiss!18206 rules!2135 lt!1157244 (h!42424 tokens!494)) lt!1157348)))

(declare-fun b!3402785 () Bool)

(declare-fun res!1376954 () Bool)

(assert (=> b!3402785 (=> (not res!1376954) (not e!2112317))))

(assert (=> b!3402785 (= res!1376954 (matchR!4747 (regex!5404 (get!11817 (getRuleFromTag!1047 thiss!18206 rules!2135 (tag!5990 (rule!7968 (h!42424 tokens!494)))))) (list!13425 (charsOf!3418 (h!42424 tokens!494)))))))

(declare-fun b!3402786 () Bool)

(assert (=> b!3402786 (= e!2112317 (= (rule!7968 (h!42424 tokens!494)) (get!11817 (getRuleFromTag!1047 thiss!18206 rules!2135 (tag!5990 (rule!7968 (h!42424 tokens!494)))))))))

(assert (= (and d!968225 res!1376953) b!3402785))

(assert (= (and b!3402785 res!1376954) b!3402786))

(assert (=> d!968225 m!3775931))

(assert (=> d!968225 m!3775931))

(declare-fun m!3776253 () Bool)

(assert (=> d!968225 m!3776253))

(declare-fun m!3776255 () Bool)

(assert (=> d!968225 m!3776255))

(assert (=> d!968225 m!3775939))

(assert (=> b!3402785 m!3775907))

(assert (=> b!3402785 m!3775909))

(assert (=> b!3402785 m!3775931))

(assert (=> b!3402785 m!3775907))

(assert (=> b!3402785 m!3775909))

(declare-fun m!3776257 () Bool)

(assert (=> b!3402785 m!3776257))

(assert (=> b!3402785 m!3775931))

(declare-fun m!3776259 () Bool)

(assert (=> b!3402785 m!3776259))

(assert (=> b!3402786 m!3775931))

(assert (=> b!3402786 m!3775931))

(assert (=> b!3402786 m!3776259))

(assert (=> b!3402592 d!968225))

(declare-fun d!968227 () Bool)

(declare-fun lt!1157351 () Bool)

(declare-fun content!5128 (List!37129) (InoxSet Rule!10608))

(assert (=> d!968227 (= lt!1157351 (select (content!5128 rules!2135) (rule!7968 (h!42424 tokens!494))))))

(declare-fun e!2112323 () Bool)

(assert (=> d!968227 (= lt!1157351 e!2112323)))

(declare-fun res!1376959 () Bool)

(assert (=> d!968227 (=> (not res!1376959) (not e!2112323))))

(assert (=> d!968227 (= res!1376959 ((_ is Cons!37005) rules!2135))))

(assert (=> d!968227 (= (contains!6805 rules!2135 (rule!7968 (h!42424 tokens!494))) lt!1157351)))

(declare-fun b!3402791 () Bool)

(declare-fun e!2112322 () Bool)

(assert (=> b!3402791 (= e!2112323 e!2112322)))

(declare-fun res!1376960 () Bool)

(assert (=> b!3402791 (=> res!1376960 e!2112322)))

(assert (=> b!3402791 (= res!1376960 (= (h!42425 rules!2135) (rule!7968 (h!42424 tokens!494))))))

(declare-fun b!3402792 () Bool)

(assert (=> b!3402792 (= e!2112322 (contains!6805 (t!266148 rules!2135) (rule!7968 (h!42424 tokens!494))))))

(assert (= (and d!968227 res!1376959) b!3402791))

(assert (= (and b!3402791 (not res!1376960)) b!3402792))

(declare-fun m!3776261 () Bool)

(assert (=> d!968227 m!3776261))

(declare-fun m!3776263 () Bool)

(assert (=> d!968227 m!3776263))

(declare-fun m!3776265 () Bool)

(assert (=> b!3402792 m!3776265))

(assert (=> b!3402592 d!968227))

(declare-fun d!968229 () Bool)

(assert (=> d!968229 (= (isDefined!5746 lt!1157240) (not (isEmpty!21283 lt!1157240)))))

(declare-fun bs!556388 () Bool)

(assert (= bs!556388 d!968229))

(declare-fun m!3776267 () Bool)

(assert (=> bs!556388 m!3776267))

(assert (=> b!3402592 d!968229))

(declare-fun d!968231 () Bool)

(assert (=> d!968231 (rulesProduceIndividualToken!2485 thiss!18206 rules!2135 (h!42424 tokens!494))))

(declare-fun lt!1157354 () Unit!52164)

(declare-fun choose!19741 (LexerInterface!4993 List!37129 List!37128 Token!10174) Unit!52164)

(assert (=> d!968231 (= lt!1157354 (choose!19741 thiss!18206 rules!2135 tokens!494 (h!42424 tokens!494)))))

(assert (=> d!968231 (not (isEmpty!21278 rules!2135))))

(assert (=> d!968231 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!982 thiss!18206 rules!2135 tokens!494 (h!42424 tokens!494)) lt!1157354)))

(declare-fun bs!556389 () Bool)

(assert (= bs!556389 d!968231))

(assert (=> bs!556389 m!3775923))

(declare-fun m!3776269 () Bool)

(assert (=> bs!556389 m!3776269))

(assert (=> bs!556389 m!3775899))

(assert (=> b!3402592 d!968231))

(declare-fun d!968233 () Bool)

(assert (=> d!968233 (= (list!13425 (charsOf!3418 (h!42424 tokens!494))) (list!13429 (c!580001 (charsOf!3418 (h!42424 tokens!494)))))))

(declare-fun bs!556390 () Bool)

(assert (= bs!556390 d!968233))

(declare-fun m!3776271 () Bool)

(assert (=> bs!556390 m!3776271))

(assert (=> b!3402591 d!968233))

(declare-fun d!968235 () Bool)

(declare-fun lt!1157357 () BalanceConc!21980)

(assert (=> d!968235 (= (list!13425 lt!1157357) (originalCharacters!6118 (h!42424 tokens!494)))))

(assert (=> d!968235 (= lt!1157357 (dynLambda!15463 (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))) (value!174474 (h!42424 tokens!494))))))

(assert (=> d!968235 (= (charsOf!3418 (h!42424 tokens!494)) lt!1157357)))

(declare-fun b_lambda!97167 () Bool)

(assert (=> (not b_lambda!97167) (not d!968235)))

(declare-fun tb!182513 () Bool)

(declare-fun t!266175 () Bool)

(assert (=> (and b!3402610 (= (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494))))) t!266175) tb!182513))

(declare-fun b!3402793 () Bool)

(declare-fun e!2112324 () Bool)

(declare-fun tp!1061742 () Bool)

(assert (=> b!3402793 (= e!2112324 (and (inv!50120 (c!580001 (dynLambda!15463 (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))) (value!174474 (h!42424 tokens!494))))) tp!1061742))))

(declare-fun result!226198 () Bool)

(assert (=> tb!182513 (= result!226198 (and (inv!50121 (dynLambda!15463 (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))) (value!174474 (h!42424 tokens!494)))) e!2112324))))

(assert (= tb!182513 b!3402793))

(declare-fun m!3776273 () Bool)

(assert (=> b!3402793 m!3776273))

(declare-fun m!3776275 () Bool)

(assert (=> tb!182513 m!3776275))

(assert (=> d!968235 t!266175))

(declare-fun b_and!237585 () Bool)

(assert (= b_and!237579 (and (=> t!266175 result!226198) b_and!237585)))

(declare-fun tb!182515 () Bool)

(declare-fun t!266177 () Bool)

(assert (=> (and b!3402603 (= (toChars!7471 (transformation!5404 (h!42425 rules!2135))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494))))) t!266177) tb!182515))

(declare-fun result!226200 () Bool)

(assert (= result!226200 result!226198))

(assert (=> d!968235 t!266177))

(declare-fun b_and!237587 () Bool)

(assert (= b_and!237581 (and (=> t!266177 result!226200) b_and!237587)))

(declare-fun t!266179 () Bool)

(declare-fun tb!182517 () Bool)

(assert (=> (and b!3402586 (= (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494))))) t!266179) tb!182517))

(declare-fun result!226202 () Bool)

(assert (= result!226202 result!226198))

(assert (=> d!968235 t!266179))

(declare-fun b_and!237589 () Bool)

(assert (= b_and!237583 (and (=> t!266179 result!226202) b_and!237589)))

(declare-fun m!3776277 () Bool)

(assert (=> d!968235 m!3776277))

(declare-fun m!3776279 () Bool)

(assert (=> d!968235 m!3776279))

(assert (=> b!3402591 d!968235))

(declare-fun d!968237 () Bool)

(assert (=> d!968237 (= (inv!50113 (tag!5990 (rule!7968 (h!42424 tokens!494)))) (= (mod (str.len (value!174473 (tag!5990 (rule!7968 (h!42424 tokens!494))))) 2) 0))))

(assert (=> b!3402589 d!968237))

(declare-fun d!968239 () Bool)

(declare-fun res!1376963 () Bool)

(declare-fun e!2112327 () Bool)

(assert (=> d!968239 (=> (not res!1376963) (not e!2112327))))

(declare-fun semiInverseModEq!2261 (Int Int) Bool)

(assert (=> d!968239 (= res!1376963 (semiInverseModEq!2261 (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))) (toValue!7612 (transformation!5404 (rule!7968 (h!42424 tokens!494))))))))

(assert (=> d!968239 (= (inv!50116 (transformation!5404 (rule!7968 (h!42424 tokens!494)))) e!2112327)))

(declare-fun b!3402796 () Bool)

(declare-fun equivClasses!2160 (Int Int) Bool)

(assert (=> b!3402796 (= e!2112327 (equivClasses!2160 (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))) (toValue!7612 (transformation!5404 (rule!7968 (h!42424 tokens!494))))))))

(assert (= (and d!968239 res!1376963) b!3402796))

(declare-fun m!3776281 () Bool)

(assert (=> d!968239 m!3776281))

(declare-fun m!3776283 () Bool)

(assert (=> b!3402796 m!3776283))

(assert (=> b!3402589 d!968239))

(declare-fun d!968241 () Bool)

(declare-fun c!580047 () Bool)

(assert (=> d!968241 (= c!580047 ((_ is IntegerValue!16902) (value!174474 (h!42424 tokens!494))))))

(declare-fun e!2112335 () Bool)

(assert (=> d!968241 (= (inv!21 (value!174474 (h!42424 tokens!494))) e!2112335)))

(declare-fun b!3402807 () Bool)

(declare-fun e!2112334 () Bool)

(declare-fun inv!15 (TokenValue!5634) Bool)

(assert (=> b!3402807 (= e!2112334 (inv!15 (value!174474 (h!42424 tokens!494))))))

(declare-fun b!3402808 () Bool)

(declare-fun e!2112336 () Bool)

(declare-fun inv!17 (TokenValue!5634) Bool)

(assert (=> b!3402808 (= e!2112336 (inv!17 (value!174474 (h!42424 tokens!494))))))

(declare-fun b!3402809 () Bool)

(declare-fun res!1376966 () Bool)

(assert (=> b!3402809 (=> res!1376966 e!2112334)))

(assert (=> b!3402809 (= res!1376966 (not ((_ is IntegerValue!16904) (value!174474 (h!42424 tokens!494)))))))

(assert (=> b!3402809 (= e!2112336 e!2112334)))

(declare-fun b!3402810 () Bool)

(declare-fun inv!16 (TokenValue!5634) Bool)

(assert (=> b!3402810 (= e!2112335 (inv!16 (value!174474 (h!42424 tokens!494))))))

(declare-fun b!3402811 () Bool)

(assert (=> b!3402811 (= e!2112335 e!2112336)))

(declare-fun c!580046 () Bool)

(assert (=> b!3402811 (= c!580046 ((_ is IntegerValue!16903) (value!174474 (h!42424 tokens!494))))))

(assert (= (and d!968241 c!580047) b!3402810))

(assert (= (and d!968241 (not c!580047)) b!3402811))

(assert (= (and b!3402811 c!580046) b!3402808))

(assert (= (and b!3402811 (not c!580046)) b!3402809))

(assert (= (and b!3402809 (not res!1376966)) b!3402807))

(declare-fun m!3776285 () Bool)

(assert (=> b!3402807 m!3776285))

(declare-fun m!3776287 () Bool)

(assert (=> b!3402808 m!3776287))

(declare-fun m!3776289 () Bool)

(assert (=> b!3402810 m!3776289))

(assert (=> b!3402588 d!968241))

(declare-fun d!968243 () Bool)

(declare-fun res!1376971 () Bool)

(declare-fun e!2112341 () Bool)

(assert (=> d!968243 (=> res!1376971 e!2112341)))

(assert (=> d!968243 (= res!1376971 (not ((_ is Cons!37005) rules!2135)))))

(assert (=> d!968243 (= (sepAndNonSepRulesDisjointChars!1598 rules!2135 rules!2135) e!2112341)))

(declare-fun b!3402816 () Bool)

(declare-fun e!2112342 () Bool)

(assert (=> b!3402816 (= e!2112341 e!2112342)))

(declare-fun res!1376972 () Bool)

(assert (=> b!3402816 (=> (not res!1376972) (not e!2112342))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!696 (Rule!10608 List!37129) Bool)

(assert (=> b!3402816 (= res!1376972 (ruleDisjointCharsFromAllFromOtherType!696 (h!42425 rules!2135) rules!2135))))

(declare-fun b!3402817 () Bool)

(assert (=> b!3402817 (= e!2112342 (sepAndNonSepRulesDisjointChars!1598 rules!2135 (t!266148 rules!2135)))))

(assert (= (and d!968243 (not res!1376971)) b!3402816))

(assert (= (and b!3402816 res!1376972) b!3402817))

(declare-fun m!3776291 () Bool)

(assert (=> b!3402816 m!3776291))

(declare-fun m!3776293 () Bool)

(assert (=> b!3402817 m!3776293))

(assert (=> b!3402609 d!968243))

(declare-fun b!3402818 () Bool)

(declare-fun e!2112344 () List!37127)

(assert (=> b!3402818 (= e!2112344 lt!1157248)))

(declare-fun d!968245 () Bool)

(declare-fun e!2112343 () Bool)

(assert (=> d!968245 e!2112343))

(declare-fun res!1376974 () Bool)

(assert (=> d!968245 (=> (not res!1376974) (not e!2112343))))

(declare-fun lt!1157358 () List!37127)

(assert (=> d!968245 (= res!1376974 (= (content!5127 lt!1157358) ((_ map or) (content!5127 (++!9081 lt!1157244 lt!1157242)) (content!5127 lt!1157248))))))

(assert (=> d!968245 (= lt!1157358 e!2112344)))

(declare-fun c!580048 () Bool)

(assert (=> d!968245 (= c!580048 ((_ is Nil!37003) (++!9081 lt!1157244 lt!1157242)))))

(assert (=> d!968245 (= (++!9081 (++!9081 lt!1157244 lt!1157242) lt!1157248) lt!1157358)))

(declare-fun b!3402820 () Bool)

(declare-fun res!1376973 () Bool)

(assert (=> b!3402820 (=> (not res!1376973) (not e!2112343))))

(assert (=> b!3402820 (= res!1376973 (= (size!28024 lt!1157358) (+ (size!28024 (++!9081 lt!1157244 lt!1157242)) (size!28024 lt!1157248))))))

(declare-fun b!3402821 () Bool)

(assert (=> b!3402821 (= e!2112343 (or (not (= lt!1157248 Nil!37003)) (= lt!1157358 (++!9081 lt!1157244 lt!1157242))))))

(declare-fun b!3402819 () Bool)

(assert (=> b!3402819 (= e!2112344 (Cons!37003 (h!42423 (++!9081 lt!1157244 lt!1157242)) (++!9081 (t!266146 (++!9081 lt!1157244 lt!1157242)) lt!1157248)))))

(assert (= (and d!968245 c!580048) b!3402818))

(assert (= (and d!968245 (not c!580048)) b!3402819))

(assert (= (and d!968245 res!1376974) b!3402820))

(assert (= (and b!3402820 res!1376973) b!3402821))

(declare-fun m!3776295 () Bool)

(assert (=> d!968245 m!3776295))

(assert (=> d!968245 m!3775867))

(declare-fun m!3776297 () Bool)

(assert (=> d!968245 m!3776297))

(declare-fun m!3776299 () Bool)

(assert (=> d!968245 m!3776299))

(declare-fun m!3776301 () Bool)

(assert (=> b!3402820 m!3776301))

(assert (=> b!3402820 m!3775867))

(declare-fun m!3776303 () Bool)

(assert (=> b!3402820 m!3776303))

(declare-fun m!3776305 () Bool)

(assert (=> b!3402820 m!3776305))

(declare-fun m!3776307 () Bool)

(assert (=> b!3402819 m!3776307))

(assert (=> b!3402608 d!968245))

(declare-fun b!3402822 () Bool)

(declare-fun e!2112346 () List!37127)

(assert (=> b!3402822 (= e!2112346 lt!1157242)))

(declare-fun d!968247 () Bool)

(declare-fun e!2112345 () Bool)

(assert (=> d!968247 e!2112345))

(declare-fun res!1376976 () Bool)

(assert (=> d!968247 (=> (not res!1376976) (not e!2112345))))

(declare-fun lt!1157359 () List!37127)

(assert (=> d!968247 (= res!1376976 (= (content!5127 lt!1157359) ((_ map or) (content!5127 lt!1157244) (content!5127 lt!1157242))))))

(assert (=> d!968247 (= lt!1157359 e!2112346)))

(declare-fun c!580049 () Bool)

(assert (=> d!968247 (= c!580049 ((_ is Nil!37003) lt!1157244))))

(assert (=> d!968247 (= (++!9081 lt!1157244 lt!1157242) lt!1157359)))

(declare-fun b!3402824 () Bool)

(declare-fun res!1376975 () Bool)

(assert (=> b!3402824 (=> (not res!1376975) (not e!2112345))))

(assert (=> b!3402824 (= res!1376975 (= (size!28024 lt!1157359) (+ (size!28024 lt!1157244) (size!28024 lt!1157242))))))

(declare-fun b!3402825 () Bool)

(assert (=> b!3402825 (= e!2112345 (or (not (= lt!1157242 Nil!37003)) (= lt!1157359 lt!1157244)))))

(declare-fun b!3402823 () Bool)

(assert (=> b!3402823 (= e!2112346 (Cons!37003 (h!42423 lt!1157244) (++!9081 (t!266146 lt!1157244) lt!1157242)))))

(assert (= (and d!968247 c!580049) b!3402822))

(assert (= (and d!968247 (not c!580049)) b!3402823))

(assert (= (and d!968247 res!1376976) b!3402824))

(assert (= (and b!3402824 res!1376975) b!3402825))

(declare-fun m!3776309 () Bool)

(assert (=> d!968247 m!3776309))

(assert (=> d!968247 m!3775943))

(declare-fun m!3776311 () Bool)

(assert (=> d!968247 m!3776311))

(declare-fun m!3776313 () Bool)

(assert (=> b!3402824 m!3776313))

(assert (=> b!3402824 m!3775949))

(declare-fun m!3776315 () Bool)

(assert (=> b!3402824 m!3776315))

(declare-fun m!3776317 () Bool)

(assert (=> b!3402823 m!3776317))

(assert (=> b!3402608 d!968247))

(declare-fun d!968249 () Bool)

(assert (=> d!968249 (= (inv!50113 (tag!5990 (rule!7968 separatorToken!241))) (= (mod (str.len (value!174473 (tag!5990 (rule!7968 separatorToken!241)))) 2) 0))))

(assert (=> b!3402587 d!968249))

(declare-fun d!968251 () Bool)

(declare-fun res!1376977 () Bool)

(declare-fun e!2112347 () Bool)

(assert (=> d!968251 (=> (not res!1376977) (not e!2112347))))

(assert (=> d!968251 (= res!1376977 (semiInverseModEq!2261 (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))) (toValue!7612 (transformation!5404 (rule!7968 separatorToken!241)))))))

(assert (=> d!968251 (= (inv!50116 (transformation!5404 (rule!7968 separatorToken!241))) e!2112347)))

(declare-fun b!3402826 () Bool)

(assert (=> b!3402826 (= e!2112347 (equivClasses!2160 (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))) (toValue!7612 (transformation!5404 (rule!7968 separatorToken!241)))))))

(assert (= (and d!968251 res!1376977) b!3402826))

(declare-fun m!3776319 () Bool)

(assert (=> d!968251 m!3776319))

(declare-fun m!3776321 () Bool)

(assert (=> b!3402826 m!3776321))

(assert (=> b!3402587 d!968251))

(declare-fun d!968253 () Bool)

(assert (=> d!968253 (= (inv!50113 (tag!5990 (h!42425 rules!2135))) (= (mod (str.len (value!174473 (tag!5990 (h!42425 rules!2135)))) 2) 0))))

(assert (=> b!3402585 d!968253))

(declare-fun d!968255 () Bool)

(declare-fun res!1376978 () Bool)

(declare-fun e!2112348 () Bool)

(assert (=> d!968255 (=> (not res!1376978) (not e!2112348))))

(assert (=> d!968255 (= res!1376978 (semiInverseModEq!2261 (toChars!7471 (transformation!5404 (h!42425 rules!2135))) (toValue!7612 (transformation!5404 (h!42425 rules!2135)))))))

(assert (=> d!968255 (= (inv!50116 (transformation!5404 (h!42425 rules!2135))) e!2112348)))

(declare-fun b!3402827 () Bool)

(assert (=> b!3402827 (= e!2112348 (equivClasses!2160 (toChars!7471 (transformation!5404 (h!42425 rules!2135))) (toValue!7612 (transformation!5404 (h!42425 rules!2135)))))))

(assert (= (and d!968255 res!1376978) b!3402827))

(declare-fun m!3776323 () Bool)

(assert (=> d!968255 m!3776323))

(declare-fun m!3776325 () Bool)

(assert (=> b!3402827 m!3776325))

(assert (=> b!3402585 d!968255))

(declare-fun d!968257 () Bool)

(assert (=> d!968257 (dynLambda!15462 lambda!121047 (h!42424 (t!266147 tokens!494)))))

(declare-fun lt!1157362 () Unit!52164)

(declare-fun choose!19742 (List!37128 Int Token!10174) Unit!52164)

(assert (=> d!968257 (= lt!1157362 (choose!19742 tokens!494 lambda!121047 (h!42424 (t!266147 tokens!494))))))

(declare-fun e!2112351 () Bool)

(assert (=> d!968257 e!2112351))

(declare-fun res!1376981 () Bool)

(assert (=> d!968257 (=> (not res!1376981) (not e!2112351))))

(assert (=> d!968257 (= res!1376981 (forall!7833 tokens!494 lambda!121047))))

(assert (=> d!968257 (= (forallContained!1351 tokens!494 lambda!121047 (h!42424 (t!266147 tokens!494))) lt!1157362)))

(declare-fun b!3402830 () Bool)

(declare-fun contains!6807 (List!37128 Token!10174) Bool)

(assert (=> b!3402830 (= e!2112351 (contains!6807 tokens!494 (h!42424 (t!266147 tokens!494))))))

(assert (= (and d!968257 res!1376981) b!3402830))

(declare-fun b_lambda!97169 () Bool)

(assert (=> (not b_lambda!97169) (not d!968257)))

(declare-fun m!3776327 () Bool)

(assert (=> d!968257 m!3776327))

(declare-fun m!3776329 () Bool)

(assert (=> d!968257 m!3776329))

(assert (=> d!968257 m!3775865))

(declare-fun m!3776331 () Bool)

(assert (=> b!3402830 m!3776331))

(assert (=> b!3402607 d!968257))

(declare-fun d!968259 () Bool)

(assert (=> d!968259 (dynLambda!15462 lambda!121047 (h!42424 tokens!494))))

(declare-fun lt!1157363 () Unit!52164)

(assert (=> d!968259 (= lt!1157363 (choose!19742 tokens!494 lambda!121047 (h!42424 tokens!494)))))

(declare-fun e!2112352 () Bool)

(assert (=> d!968259 e!2112352))

(declare-fun res!1376982 () Bool)

(assert (=> d!968259 (=> (not res!1376982) (not e!2112352))))

(assert (=> d!968259 (= res!1376982 (forall!7833 tokens!494 lambda!121047))))

(assert (=> d!968259 (= (forallContained!1351 tokens!494 lambda!121047 (h!42424 tokens!494)) lt!1157363)))

(declare-fun b!3402831 () Bool)

(assert (=> b!3402831 (= e!2112352 (contains!6807 tokens!494 (h!42424 tokens!494)))))

(assert (= (and d!968259 res!1376982) b!3402831))

(declare-fun b_lambda!97171 () Bool)

(assert (=> (not b_lambda!97171) (not d!968259)))

(assert (=> d!968259 m!3775955))

(declare-fun m!3776333 () Bool)

(assert (=> d!968259 m!3776333))

(assert (=> d!968259 m!3775865))

(declare-fun m!3776335 () Bool)

(assert (=> b!3402831 m!3776335))

(assert (=> b!3402607 d!968259))

(declare-fun d!968261 () Bool)

(declare-fun lt!1157364 () Bool)

(declare-fun e!2112354 () Bool)

(assert (=> d!968261 (= lt!1157364 e!2112354)))

(declare-fun res!1376984 () Bool)

(assert (=> d!968261 (=> (not res!1376984) (not e!2112354))))

(assert (=> d!968261 (= res!1376984 (= (list!13428 (_1!21455 (lex!2319 thiss!18206 rules!2135 (print!2058 thiss!18206 (singletonSeq!2500 (h!42424 tokens!494)))))) (list!13428 (singletonSeq!2500 (h!42424 tokens!494)))))))

(declare-fun e!2112353 () Bool)

(assert (=> d!968261 (= lt!1157364 e!2112353)))

(declare-fun res!1376985 () Bool)

(assert (=> d!968261 (=> (not res!1376985) (not e!2112353))))

(declare-fun lt!1157365 () tuple2!36642)

(assert (=> d!968261 (= res!1376985 (= (size!28025 (_1!21455 lt!1157365)) 1))))

(assert (=> d!968261 (= lt!1157365 (lex!2319 thiss!18206 rules!2135 (print!2058 thiss!18206 (singletonSeq!2500 (h!42424 tokens!494)))))))

(assert (=> d!968261 (not (isEmpty!21278 rules!2135))))

(assert (=> d!968261 (= (rulesProduceIndividualToken!2485 thiss!18206 rules!2135 (h!42424 tokens!494)) lt!1157364)))

(declare-fun b!3402832 () Bool)

(declare-fun res!1376983 () Bool)

(assert (=> b!3402832 (=> (not res!1376983) (not e!2112353))))

(assert (=> b!3402832 (= res!1376983 (= (apply!8644 (_1!21455 lt!1157365) 0) (h!42424 tokens!494)))))

(declare-fun b!3402833 () Bool)

(assert (=> b!3402833 (= e!2112353 (isEmpty!21281 (_2!21455 lt!1157365)))))

(declare-fun b!3402834 () Bool)

(assert (=> b!3402834 (= e!2112354 (isEmpty!21281 (_2!21455 (lex!2319 thiss!18206 rules!2135 (print!2058 thiss!18206 (singletonSeq!2500 (h!42424 tokens!494)))))))))

(assert (= (and d!968261 res!1376985) b!3402832))

(assert (= (and b!3402832 res!1376983) b!3402833))

(assert (= (and d!968261 res!1376984) b!3402834))

(declare-fun m!3776337 () Bool)

(assert (=> d!968261 m!3776337))

(declare-fun m!3776339 () Bool)

(assert (=> d!968261 m!3776339))

(assert (=> d!968261 m!3775859))

(declare-fun m!3776341 () Bool)

(assert (=> d!968261 m!3776341))

(assert (=> d!968261 m!3776341))

(declare-fun m!3776343 () Bool)

(assert (=> d!968261 m!3776343))

(assert (=> d!968261 m!3775899))

(assert (=> d!968261 m!3775859))

(assert (=> d!968261 m!3775859))

(declare-fun m!3776345 () Bool)

(assert (=> d!968261 m!3776345))

(declare-fun m!3776347 () Bool)

(assert (=> b!3402832 m!3776347))

(declare-fun m!3776349 () Bool)

(assert (=> b!3402833 m!3776349))

(assert (=> b!3402834 m!3775859))

(assert (=> b!3402834 m!3775859))

(assert (=> b!3402834 m!3776341))

(assert (=> b!3402834 m!3776341))

(assert (=> b!3402834 m!3776343))

(declare-fun m!3776351 () Bool)

(assert (=> b!3402834 m!3776351))

(assert (=> b!3402584 d!968261))

(declare-fun d!968263 () Bool)

(assert (=> d!968263 (= (isEmpty!21278 rules!2135) ((_ is Nil!37005) rules!2135))))

(assert (=> b!3402605 d!968263))

(declare-fun lt!1157368 () Bool)

(declare-fun d!968265 () Bool)

(declare-fun isEmpty!21287 (List!37128) Bool)

(assert (=> d!968265 (= lt!1157368 (isEmpty!21287 (list!13428 (_1!21455 (lex!2319 thiss!18206 rules!2135 (seqFromList!3862 lt!1157244))))))))

(declare-fun isEmpty!21288 (Conc!11184) Bool)

(assert (=> d!968265 (= lt!1157368 (isEmpty!21288 (c!580002 (_1!21455 (lex!2319 thiss!18206 rules!2135 (seqFromList!3862 lt!1157244))))))))

(assert (=> d!968265 (= (isEmpty!21279 (_1!21455 (lex!2319 thiss!18206 rules!2135 (seqFromList!3862 lt!1157244)))) lt!1157368)))

(declare-fun bs!556391 () Bool)

(assert (= bs!556391 d!968265))

(declare-fun m!3776353 () Bool)

(assert (=> bs!556391 m!3776353))

(assert (=> bs!556391 m!3776353))

(declare-fun m!3776355 () Bool)

(assert (=> bs!556391 m!3776355))

(declare-fun m!3776357 () Bool)

(assert (=> bs!556391 m!3776357))

(assert (=> b!3402606 d!968265))

(declare-fun d!968267 () Bool)

(declare-fun e!2112373 () Bool)

(assert (=> d!968267 e!2112373))

(declare-fun res!1376997 () Bool)

(assert (=> d!968267 (=> (not res!1376997) (not e!2112373))))

(declare-fun e!2112375 () Bool)

(assert (=> d!968267 (= res!1376997 e!2112375)))

(declare-fun c!580052 () Bool)

(declare-fun lt!1157372 () tuple2!36642)

(assert (=> d!968267 (= c!580052 (> (size!28025 (_1!21455 lt!1157372)) 0))))

(declare-fun lexTailRecV2!1034 (LexerInterface!4993 List!37129 BalanceConc!21980 BalanceConc!21980 BalanceConc!21980 BalanceConc!21982) tuple2!36642)

(assert (=> d!968267 (= lt!1157372 (lexTailRecV2!1034 thiss!18206 rules!2135 (seqFromList!3862 lt!1157244) (BalanceConc!21981 Empty!11183) (seqFromList!3862 lt!1157244) (BalanceConc!21983 Empty!11184)))))

(assert (=> d!968267 (= (lex!2319 thiss!18206 rules!2135 (seqFromList!3862 lt!1157244)) lt!1157372)))

(declare-fun b!3402861 () Bool)

(declare-datatypes ((tuple2!36646 0))(
  ( (tuple2!36647 (_1!21457 List!37128) (_2!21457 List!37127)) )
))
(declare-fun lexList!1426 (LexerInterface!4993 List!37129 List!37127) tuple2!36646)

(assert (=> b!3402861 (= e!2112373 (= (list!13425 (_2!21455 lt!1157372)) (_2!21457 (lexList!1426 thiss!18206 rules!2135 (list!13425 (seqFromList!3862 lt!1157244))))))))

(declare-fun b!3402862 () Bool)

(declare-fun res!1376995 () Bool)

(assert (=> b!3402862 (=> (not res!1376995) (not e!2112373))))

(assert (=> b!3402862 (= res!1376995 (= (list!13428 (_1!21455 lt!1157372)) (_1!21457 (lexList!1426 thiss!18206 rules!2135 (list!13425 (seqFromList!3862 lt!1157244))))))))

(declare-fun b!3402863 () Bool)

(assert (=> b!3402863 (= e!2112375 (= (_2!21455 lt!1157372) (seqFromList!3862 lt!1157244)))))

(declare-fun b!3402864 () Bool)

(declare-fun e!2112374 () Bool)

(assert (=> b!3402864 (= e!2112375 e!2112374)))

(declare-fun res!1376996 () Bool)

(declare-fun size!28027 (BalanceConc!21980) Int)

(assert (=> b!3402864 (= res!1376996 (< (size!28027 (_2!21455 lt!1157372)) (size!28027 (seqFromList!3862 lt!1157244))))))

(assert (=> b!3402864 (=> (not res!1376996) (not e!2112374))))

(declare-fun b!3402865 () Bool)

(assert (=> b!3402865 (= e!2112374 (not (isEmpty!21279 (_1!21455 lt!1157372))))))

(assert (= (and d!968267 c!580052) b!3402864))

(assert (= (and d!968267 (not c!580052)) b!3402863))

(assert (= (and b!3402864 res!1376996) b!3402865))

(assert (= (and d!968267 res!1376997) b!3402862))

(assert (= (and b!3402862 res!1376995) b!3402861))

(declare-fun m!3776367 () Bool)

(assert (=> b!3402864 m!3776367))

(assert (=> b!3402864 m!3775915))

(declare-fun m!3776369 () Bool)

(assert (=> b!3402864 m!3776369))

(declare-fun m!3776371 () Bool)

(assert (=> d!968267 m!3776371))

(assert (=> d!968267 m!3775915))

(assert (=> d!968267 m!3775915))

(declare-fun m!3776373 () Bool)

(assert (=> d!968267 m!3776373))

(declare-fun m!3776375 () Bool)

(assert (=> b!3402861 m!3776375))

(assert (=> b!3402861 m!3775915))

(declare-fun m!3776377 () Bool)

(assert (=> b!3402861 m!3776377))

(assert (=> b!3402861 m!3776377))

(declare-fun m!3776379 () Bool)

(assert (=> b!3402861 m!3776379))

(declare-fun m!3776381 () Bool)

(assert (=> b!3402862 m!3776381))

(assert (=> b!3402862 m!3775915))

(assert (=> b!3402862 m!3776377))

(assert (=> b!3402862 m!3776377))

(assert (=> b!3402862 m!3776379))

(declare-fun m!3776383 () Bool)

(assert (=> b!3402865 m!3776383))

(assert (=> b!3402606 d!968267))

(declare-fun d!968271 () Bool)

(declare-fun fromListB!1738 (List!37127) BalanceConc!21980)

(assert (=> d!968271 (= (seqFromList!3862 lt!1157244) (fromListB!1738 lt!1157244))))

(declare-fun bs!556394 () Bool)

(assert (= bs!556394 d!968271))

(declare-fun m!3776387 () Bool)

(assert (=> bs!556394 m!3776387))

(assert (=> b!3402606 d!968271))

(declare-fun d!968275 () Bool)

(declare-fun res!1377002 () Bool)

(declare-fun e!2112382 () Bool)

(assert (=> d!968275 (=> (not res!1377002) (not e!2112382))))

(declare-fun rulesValid!2021 (LexerInterface!4993 List!37129) Bool)

(assert (=> d!968275 (= res!1377002 (rulesValid!2021 thiss!18206 rules!2135))))

(assert (=> d!968275 (= (rulesInvariant!4390 thiss!18206 rules!2135) e!2112382)))

(declare-fun b!3402874 () Bool)

(declare-datatypes ((List!37131 0))(
  ( (Nil!37007) (Cons!37007 (h!42427 String!41504) (t!266224 List!37131)) )
))
(declare-fun noDuplicateTag!2017 (LexerInterface!4993 List!37129 List!37131) Bool)

(assert (=> b!3402874 (= e!2112382 (noDuplicateTag!2017 thiss!18206 rules!2135 Nil!37007))))

(assert (= (and d!968275 res!1377002) b!3402874))

(declare-fun m!3776399 () Bool)

(assert (=> d!968275 m!3776399))

(declare-fun m!3776401 () Bool)

(assert (=> b!3402874 m!3776401))

(assert (=> b!3402604 d!968275))

(declare-fun d!968283 () Bool)

(declare-fun c!580057 () Bool)

(assert (=> d!968283 (= c!580057 ((_ is Cons!37004) tokens!494))))

(declare-fun e!2112385 () List!37127)

(assert (=> d!968283 (= (printWithSeparatorTokenList!280 thiss!18206 tokens!494 separatorToken!241) e!2112385)))

(declare-fun b!3402879 () Bool)

(assert (=> b!3402879 (= e!2112385 (++!9081 (++!9081 (list!13425 (charsOf!3418 (h!42424 tokens!494))) (list!13425 (charsOf!3418 separatorToken!241))) (printWithSeparatorTokenList!280 thiss!18206 (t!266147 tokens!494) separatorToken!241)))))

(declare-fun b!3402880 () Bool)

(assert (=> b!3402880 (= e!2112385 Nil!37003)))

(assert (= (and d!968283 c!580057) b!3402879))

(assert (= (and d!968283 (not c!580057)) b!3402880))

(assert (=> b!3402879 m!3775907))

(assert (=> b!3402879 m!3775909))

(assert (=> b!3402879 m!3775907))

(assert (=> b!3402879 m!3775873))

(assert (=> b!3402879 m!3775889))

(declare-fun m!3776409 () Bool)

(assert (=> b!3402879 m!3776409))

(assert (=> b!3402879 m!3775877))

(declare-fun m!3776411 () Bool)

(assert (=> b!3402879 m!3776411))

(assert (=> b!3402879 m!3775909))

(assert (=> b!3402879 m!3775889))

(assert (=> b!3402879 m!3776409))

(assert (=> b!3402879 m!3775877))

(assert (=> b!3402879 m!3775873))

(assert (=> b!3402583 d!968283))

(declare-fun b!3402881 () Bool)

(declare-fun e!2112387 () List!37127)

(assert (=> b!3402881 (= e!2112387 lt!1157242)))

(declare-fun d!968287 () Bool)

(declare-fun e!2112386 () Bool)

(assert (=> d!968287 e!2112386))

(declare-fun res!1377004 () Bool)

(assert (=> d!968287 (=> (not res!1377004) (not e!2112386))))

(declare-fun lt!1157376 () List!37127)

(assert (=> d!968287 (= res!1377004 (= (content!5127 lt!1157376) ((_ map or) (content!5127 (list!13425 (charsOf!3418 (h!42424 (t!266147 tokens!494))))) (content!5127 lt!1157242))))))

(assert (=> d!968287 (= lt!1157376 e!2112387)))

(declare-fun c!580058 () Bool)

(assert (=> d!968287 (= c!580058 ((_ is Nil!37003) (list!13425 (charsOf!3418 (h!42424 (t!266147 tokens!494))))))))

(assert (=> d!968287 (= (++!9081 (list!13425 (charsOf!3418 (h!42424 (t!266147 tokens!494)))) lt!1157242) lt!1157376)))

(declare-fun b!3402883 () Bool)

(declare-fun res!1377003 () Bool)

(assert (=> b!3402883 (=> (not res!1377003) (not e!2112386))))

(assert (=> b!3402883 (= res!1377003 (= (size!28024 lt!1157376) (+ (size!28024 (list!13425 (charsOf!3418 (h!42424 (t!266147 tokens!494))))) (size!28024 lt!1157242))))))

(declare-fun b!3402884 () Bool)

(assert (=> b!3402884 (= e!2112386 (or (not (= lt!1157242 Nil!37003)) (= lt!1157376 (list!13425 (charsOf!3418 (h!42424 (t!266147 tokens!494)))))))))

(declare-fun b!3402882 () Bool)

(assert (=> b!3402882 (= e!2112387 (Cons!37003 (h!42423 (list!13425 (charsOf!3418 (h!42424 (t!266147 tokens!494))))) (++!9081 (t!266146 (list!13425 (charsOf!3418 (h!42424 (t!266147 tokens!494))))) lt!1157242)))))

(assert (= (and d!968287 c!580058) b!3402881))

(assert (= (and d!968287 (not c!580058)) b!3402882))

(assert (= (and d!968287 res!1377004) b!3402883))

(assert (= (and b!3402883 res!1377003) b!3402884))

(declare-fun m!3776413 () Bool)

(assert (=> d!968287 m!3776413))

(assert (=> d!968287 m!3775885))

(declare-fun m!3776415 () Bool)

(assert (=> d!968287 m!3776415))

(assert (=> d!968287 m!3776311))

(declare-fun m!3776417 () Bool)

(assert (=> b!3402883 m!3776417))

(assert (=> b!3402883 m!3775885))

(declare-fun m!3776419 () Bool)

(assert (=> b!3402883 m!3776419))

(assert (=> b!3402883 m!3776315))

(declare-fun m!3776421 () Bool)

(assert (=> b!3402882 m!3776421))

(assert (=> b!3402583 d!968287))

(declare-fun b!3402885 () Bool)

(declare-fun e!2112389 () List!37127)

(assert (=> b!3402885 (= e!2112389 lt!1157248)))

(declare-fun d!968289 () Bool)

(declare-fun e!2112388 () Bool)

(assert (=> d!968289 e!2112388))

(declare-fun res!1377006 () Bool)

(assert (=> d!968289 (=> (not res!1377006) (not e!2112388))))

(declare-fun lt!1157377 () List!37127)

(assert (=> d!968289 (= res!1377006 (= (content!5127 lt!1157377) ((_ map or) (content!5127 lt!1157242) (content!5127 lt!1157248))))))

(assert (=> d!968289 (= lt!1157377 e!2112389)))

(declare-fun c!580059 () Bool)

(assert (=> d!968289 (= c!580059 ((_ is Nil!37003) lt!1157242))))

(assert (=> d!968289 (= (++!9081 lt!1157242 lt!1157248) lt!1157377)))

(declare-fun b!3402887 () Bool)

(declare-fun res!1377005 () Bool)

(assert (=> b!3402887 (=> (not res!1377005) (not e!2112388))))

(assert (=> b!3402887 (= res!1377005 (= (size!28024 lt!1157377) (+ (size!28024 lt!1157242) (size!28024 lt!1157248))))))

(declare-fun b!3402888 () Bool)

(assert (=> b!3402888 (= e!2112388 (or (not (= lt!1157248 Nil!37003)) (= lt!1157377 lt!1157242)))))

(declare-fun b!3402886 () Bool)

(assert (=> b!3402886 (= e!2112389 (Cons!37003 (h!42423 lt!1157242) (++!9081 (t!266146 lt!1157242) lt!1157248)))))

(assert (= (and d!968289 c!580059) b!3402885))

(assert (= (and d!968289 (not c!580059)) b!3402886))

(assert (= (and d!968289 res!1377006) b!3402887))

(assert (= (and b!3402887 res!1377005) b!3402888))

(declare-fun m!3776423 () Bool)

(assert (=> d!968289 m!3776423))

(assert (=> d!968289 m!3776311))

(assert (=> d!968289 m!3776299))

(declare-fun m!3776425 () Bool)

(assert (=> b!3402887 m!3776425))

(assert (=> b!3402887 m!3776315))

(assert (=> b!3402887 m!3776305))

(declare-fun m!3776427 () Bool)

(assert (=> b!3402886 m!3776427))

(assert (=> b!3402583 d!968289))

(declare-fun d!968291 () Bool)

(declare-fun lt!1157378 () BalanceConc!21980)

(assert (=> d!968291 (= (list!13425 lt!1157378) (originalCharacters!6118 separatorToken!241))))

(assert (=> d!968291 (= lt!1157378 (dynLambda!15463 (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))) (value!174474 separatorToken!241)))))

(assert (=> d!968291 (= (charsOf!3418 separatorToken!241) lt!1157378)))

(declare-fun b_lambda!97173 () Bool)

(assert (=> (not b_lambda!97173) (not d!968291)))

(assert (=> d!968291 t!266165))

(declare-fun b_and!237591 () Bool)

(assert (= b_and!237585 (and (=> t!266165 result!226190) b_and!237591)))

(assert (=> d!968291 t!266167))

(declare-fun b_and!237593 () Bool)

(assert (= b_and!237587 (and (=> t!266167 result!226194) b_and!237593)))

(assert (=> d!968291 t!266169))

(declare-fun b_and!237595 () Bool)

(assert (= b_and!237589 (and (=> t!266169 result!226196) b_and!237595)))

(declare-fun m!3776429 () Bool)

(assert (=> d!968291 m!3776429))

(assert (=> d!968291 m!3776179))

(assert (=> b!3402583 d!968291))

(declare-fun d!968293 () Bool)

(assert (=> d!968293 (= (list!13425 (charsOf!3418 (h!42424 (t!266147 tokens!494)))) (list!13429 (c!580001 (charsOf!3418 (h!42424 (t!266147 tokens!494))))))))

(declare-fun bs!556396 () Bool)

(assert (= bs!556396 d!968293))

(declare-fun m!3776431 () Bool)

(assert (=> bs!556396 m!3776431))

(assert (=> b!3402583 d!968293))

(declare-fun e!2112391 () List!37127)

(declare-fun b!3402889 () Bool)

(assert (=> b!3402889 (= e!2112391 (printWithSeparatorTokenList!280 thiss!18206 (t!266147 (t!266147 tokens!494)) separatorToken!241))))

(declare-fun d!968295 () Bool)

(declare-fun e!2112390 () Bool)

(assert (=> d!968295 e!2112390))

(declare-fun res!1377008 () Bool)

(assert (=> d!968295 (=> (not res!1377008) (not e!2112390))))

(declare-fun lt!1157379 () List!37127)

(assert (=> d!968295 (= res!1377008 (= (content!5127 lt!1157379) ((_ map or) (content!5127 (++!9081 (list!13425 (charsOf!3418 (h!42424 (t!266147 tokens!494)))) lt!1157242)) (content!5127 (printWithSeparatorTokenList!280 thiss!18206 (t!266147 (t!266147 tokens!494)) separatorToken!241)))))))

(assert (=> d!968295 (= lt!1157379 e!2112391)))

(declare-fun c!580060 () Bool)

(assert (=> d!968295 (= c!580060 ((_ is Nil!37003) (++!9081 (list!13425 (charsOf!3418 (h!42424 (t!266147 tokens!494)))) lt!1157242)))))

(assert (=> d!968295 (= (++!9081 (++!9081 (list!13425 (charsOf!3418 (h!42424 (t!266147 tokens!494)))) lt!1157242) (printWithSeparatorTokenList!280 thiss!18206 (t!266147 (t!266147 tokens!494)) separatorToken!241)) lt!1157379)))

(declare-fun b!3402891 () Bool)

(declare-fun res!1377007 () Bool)

(assert (=> b!3402891 (=> (not res!1377007) (not e!2112390))))

(assert (=> b!3402891 (= res!1377007 (= (size!28024 lt!1157379) (+ (size!28024 (++!9081 (list!13425 (charsOf!3418 (h!42424 (t!266147 tokens!494)))) lt!1157242)) (size!28024 (printWithSeparatorTokenList!280 thiss!18206 (t!266147 (t!266147 tokens!494)) separatorToken!241)))))))

(declare-fun b!3402892 () Bool)

(assert (=> b!3402892 (= e!2112390 (or (not (= (printWithSeparatorTokenList!280 thiss!18206 (t!266147 (t!266147 tokens!494)) separatorToken!241) Nil!37003)) (= lt!1157379 (++!9081 (list!13425 (charsOf!3418 (h!42424 (t!266147 tokens!494)))) lt!1157242))))))

(declare-fun b!3402890 () Bool)

(assert (=> b!3402890 (= e!2112391 (Cons!37003 (h!42423 (++!9081 (list!13425 (charsOf!3418 (h!42424 (t!266147 tokens!494)))) lt!1157242)) (++!9081 (t!266146 (++!9081 (list!13425 (charsOf!3418 (h!42424 (t!266147 tokens!494)))) lt!1157242)) (printWithSeparatorTokenList!280 thiss!18206 (t!266147 (t!266147 tokens!494)) separatorToken!241))))))

(assert (= (and d!968295 c!580060) b!3402889))

(assert (= (and d!968295 (not c!580060)) b!3402890))

(assert (= (and d!968295 res!1377008) b!3402891))

(assert (= (and b!3402891 res!1377007) b!3402892))

(declare-fun m!3776433 () Bool)

(assert (=> d!968295 m!3776433))

(assert (=> d!968295 m!3775879))

(declare-fun m!3776435 () Bool)

(assert (=> d!968295 m!3776435))

(assert (=> d!968295 m!3775881))

(declare-fun m!3776437 () Bool)

(assert (=> d!968295 m!3776437))

(declare-fun m!3776439 () Bool)

(assert (=> b!3402891 m!3776439))

(assert (=> b!3402891 m!3775879))

(declare-fun m!3776441 () Bool)

(assert (=> b!3402891 m!3776441))

(assert (=> b!3402891 m!3775881))

(declare-fun m!3776443 () Bool)

(assert (=> b!3402891 m!3776443))

(assert (=> b!3402890 m!3775881))

(declare-fun m!3776445 () Bool)

(assert (=> b!3402890 m!3776445))

(assert (=> b!3402583 d!968295))

(declare-fun d!968297 () Bool)

(declare-fun c!580061 () Bool)

(assert (=> d!968297 (= c!580061 ((_ is Cons!37004) (t!266147 (t!266147 tokens!494))))))

(declare-fun e!2112392 () List!37127)

(assert (=> d!968297 (= (printWithSeparatorTokenList!280 thiss!18206 (t!266147 (t!266147 tokens!494)) separatorToken!241) e!2112392)))

(declare-fun b!3402893 () Bool)

(assert (=> b!3402893 (= e!2112392 (++!9081 (++!9081 (list!13425 (charsOf!3418 (h!42424 (t!266147 (t!266147 tokens!494))))) (list!13425 (charsOf!3418 separatorToken!241))) (printWithSeparatorTokenList!280 thiss!18206 (t!266147 (t!266147 (t!266147 tokens!494))) separatorToken!241)))))

(declare-fun b!3402894 () Bool)

(assert (=> b!3402894 (= e!2112392 Nil!37003)))

(assert (= (and d!968297 c!580061) b!3402893))

(assert (= (and d!968297 (not c!580061)) b!3402894))

(declare-fun m!3776447 () Bool)

(assert (=> b!3402893 m!3776447))

(declare-fun m!3776449 () Bool)

(assert (=> b!3402893 m!3776449))

(assert (=> b!3402893 m!3776447))

(assert (=> b!3402893 m!3775873))

(assert (=> b!3402893 m!3775889))

(declare-fun m!3776451 () Bool)

(assert (=> b!3402893 m!3776451))

(declare-fun m!3776453 () Bool)

(assert (=> b!3402893 m!3776453))

(declare-fun m!3776455 () Bool)

(assert (=> b!3402893 m!3776455))

(assert (=> b!3402893 m!3776449))

(assert (=> b!3402893 m!3775889))

(assert (=> b!3402893 m!3776451))

(assert (=> b!3402893 m!3776453))

(assert (=> b!3402893 m!3775873))

(assert (=> b!3402583 d!968297))

(declare-fun d!968299 () Bool)

(declare-fun c!580062 () Bool)

(assert (=> d!968299 (= c!580062 ((_ is Cons!37004) (t!266147 tokens!494)))))

(declare-fun e!2112393 () List!37127)

(assert (=> d!968299 (= (printWithSeparatorTokenList!280 thiss!18206 (t!266147 tokens!494) separatorToken!241) e!2112393)))

(declare-fun b!3402895 () Bool)

(assert (=> b!3402895 (= e!2112393 (++!9081 (++!9081 (list!13425 (charsOf!3418 (h!42424 (t!266147 tokens!494)))) (list!13425 (charsOf!3418 separatorToken!241))) (printWithSeparatorTokenList!280 thiss!18206 (t!266147 (t!266147 tokens!494)) separatorToken!241)))))

(declare-fun b!3402896 () Bool)

(assert (=> b!3402896 (= e!2112393 Nil!37003)))

(assert (= (and d!968299 c!580062) b!3402895))

(assert (= (and d!968299 (not c!580062)) b!3402896))

(assert (=> b!3402895 m!3775871))

(assert (=> b!3402895 m!3775885))

(assert (=> b!3402895 m!3775871))

(assert (=> b!3402895 m!3775873))

(assert (=> b!3402895 m!3775889))

(declare-fun m!3776457 () Bool)

(assert (=> b!3402895 m!3776457))

(assert (=> b!3402895 m!3775881))

(declare-fun m!3776459 () Bool)

(assert (=> b!3402895 m!3776459))

(assert (=> b!3402895 m!3775885))

(assert (=> b!3402895 m!3775889))

(assert (=> b!3402895 m!3776457))

(assert (=> b!3402895 m!3775881))

(assert (=> b!3402895 m!3775873))

(assert (=> b!3402583 d!968299))

(declare-fun d!968301 () Bool)

(assert (=> d!968301 (= (list!13425 (charsOf!3418 separatorToken!241)) (list!13429 (c!580001 (charsOf!3418 separatorToken!241))))))

(declare-fun bs!556397 () Bool)

(assert (= bs!556397 d!968301))

(declare-fun m!3776461 () Bool)

(assert (=> bs!556397 m!3776461))

(assert (=> b!3402583 d!968301))

(declare-fun d!968303 () Bool)

(declare-fun lt!1157380 () BalanceConc!21980)

(assert (=> d!968303 (= (list!13425 lt!1157380) (originalCharacters!6118 (h!42424 (t!266147 tokens!494))))))

(assert (=> d!968303 (= lt!1157380 (dynLambda!15463 (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494))))) (value!174474 (h!42424 (t!266147 tokens!494)))))))

(assert (=> d!968303 (= (charsOf!3418 (h!42424 (t!266147 tokens!494))) lt!1157380)))

(declare-fun b_lambda!97175 () Bool)

(assert (=> (not b_lambda!97175) (not d!968303)))

(declare-fun t!266183 () Bool)

(declare-fun tb!182519 () Bool)

(assert (=> (and b!3402610 (= (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494)))))) t!266183) tb!182519))

(declare-fun b!3402897 () Bool)

(declare-fun e!2112394 () Bool)

(declare-fun tp!1061743 () Bool)

(assert (=> b!3402897 (= e!2112394 (and (inv!50120 (c!580001 (dynLambda!15463 (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494))))) (value!174474 (h!42424 (t!266147 tokens!494)))))) tp!1061743))))

(declare-fun result!226204 () Bool)

(assert (=> tb!182519 (= result!226204 (and (inv!50121 (dynLambda!15463 (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494))))) (value!174474 (h!42424 (t!266147 tokens!494))))) e!2112394))))

(assert (= tb!182519 b!3402897))

(declare-fun m!3776463 () Bool)

(assert (=> b!3402897 m!3776463))

(declare-fun m!3776465 () Bool)

(assert (=> tb!182519 m!3776465))

(assert (=> d!968303 t!266183))

(declare-fun b_and!237597 () Bool)

(assert (= b_and!237591 (and (=> t!266183 result!226204) b_and!237597)))

(declare-fun tb!182521 () Bool)

(declare-fun t!266185 () Bool)

(assert (=> (and b!3402603 (= (toChars!7471 (transformation!5404 (h!42425 rules!2135))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494)))))) t!266185) tb!182521))

(declare-fun result!226206 () Bool)

(assert (= result!226206 result!226204))

(assert (=> d!968303 t!266185))

(declare-fun b_and!237599 () Bool)

(assert (= b_and!237593 (and (=> t!266185 result!226206) b_and!237599)))

(declare-fun t!266187 () Bool)

(declare-fun tb!182523 () Bool)

(assert (=> (and b!3402586 (= (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494)))))) t!266187) tb!182523))

(declare-fun result!226208 () Bool)

(assert (= result!226208 result!226204))

(assert (=> d!968303 t!266187))

(declare-fun b_and!237601 () Bool)

(assert (= b_and!237595 (and (=> t!266187 result!226208) b_and!237601)))

(declare-fun m!3776467 () Bool)

(assert (=> d!968303 m!3776467))

(declare-fun m!3776469 () Bool)

(assert (=> d!968303 m!3776469))

(assert (=> b!3402583 d!968303))

(declare-fun b!3402926 () Bool)

(declare-fun e!2112409 () Bool)

(declare-fun derivativeStep!3019 (Regex!10163 C!20512) Regex!10163)

(declare-fun head!7267 (List!37127) C!20512)

(declare-fun tail!5389 (List!37127) List!37127)

(assert (=> b!3402926 (= e!2112409 (matchR!4747 (derivativeStep!3019 (regex!5404 lt!1157235) (head!7267 lt!1157244)) (tail!5389 lt!1157244)))))

(declare-fun bm!245864 () Bool)

(declare-fun call!245869 () Bool)

(assert (=> bm!245864 (= call!245869 (isEmpty!21282 lt!1157244))))

(declare-fun b!3402928 () Bool)

(declare-fun e!2112410 () Bool)

(declare-fun e!2112412 () Bool)

(assert (=> b!3402928 (= e!2112410 e!2112412)))

(declare-fun res!1377026 () Bool)

(assert (=> b!3402928 (=> res!1377026 e!2112412)))

(assert (=> b!3402928 (= res!1377026 call!245869)))

(declare-fun b!3402929 () Bool)

(declare-fun e!2112415 () Bool)

(declare-fun lt!1157383 () Bool)

(assert (=> b!3402929 (= e!2112415 (not lt!1157383))))

(declare-fun b!3402930 () Bool)

(declare-fun res!1377025 () Bool)

(declare-fun e!2112414 () Bool)

(assert (=> b!3402930 (=> res!1377025 e!2112414)))

(assert (=> b!3402930 (= res!1377025 (not ((_ is ElementMatch!10163) (regex!5404 lt!1157235))))))

(assert (=> b!3402930 (= e!2112415 e!2112414)))

(declare-fun b!3402931 () Bool)

(declare-fun e!2112413 () Bool)

(assert (=> b!3402931 (= e!2112413 (= lt!1157383 call!245869))))

(declare-fun b!3402932 () Bool)

(assert (=> b!3402932 (= e!2112414 e!2112410)))

(declare-fun res!1377030 () Bool)

(assert (=> b!3402932 (=> (not res!1377030) (not e!2112410))))

(assert (=> b!3402932 (= res!1377030 (not lt!1157383))))

(declare-fun b!3402933 () Bool)

(assert (=> b!3402933 (= e!2112413 e!2112415)))

(declare-fun c!580071 () Bool)

(assert (=> b!3402933 (= c!580071 ((_ is EmptyLang!10163) (regex!5404 lt!1157235)))))

(declare-fun b!3402934 () Bool)

(declare-fun res!1377029 () Bool)

(declare-fun e!2112411 () Bool)

(assert (=> b!3402934 (=> (not res!1377029) (not e!2112411))))

(assert (=> b!3402934 (= res!1377029 (isEmpty!21282 (tail!5389 lt!1157244)))))

(declare-fun b!3402935 () Bool)

(assert (=> b!3402935 (= e!2112412 (not (= (head!7267 lt!1157244) (c!580000 (regex!5404 lt!1157235)))))))

(declare-fun b!3402936 () Bool)

(declare-fun res!1377031 () Bool)

(assert (=> b!3402936 (=> res!1377031 e!2112412)))

(assert (=> b!3402936 (= res!1377031 (not (isEmpty!21282 (tail!5389 lt!1157244))))))

(declare-fun b!3402927 () Bool)

(declare-fun res!1377032 () Bool)

(assert (=> b!3402927 (=> (not res!1377032) (not e!2112411))))

(assert (=> b!3402927 (= res!1377032 (not call!245869))))

(declare-fun d!968305 () Bool)

(assert (=> d!968305 e!2112413))

(declare-fun c!580070 () Bool)

(assert (=> d!968305 (= c!580070 ((_ is EmptyExpr!10163) (regex!5404 lt!1157235)))))

(assert (=> d!968305 (= lt!1157383 e!2112409)))

(declare-fun c!580069 () Bool)

(assert (=> d!968305 (= c!580069 (isEmpty!21282 lt!1157244))))

(declare-fun validRegex!4622 (Regex!10163) Bool)

(assert (=> d!968305 (validRegex!4622 (regex!5404 lt!1157235))))

(assert (=> d!968305 (= (matchR!4747 (regex!5404 lt!1157235) lt!1157244) lt!1157383)))

(declare-fun b!3402937 () Bool)

(assert (=> b!3402937 (= e!2112411 (= (head!7267 lt!1157244) (c!580000 (regex!5404 lt!1157235))))))

(declare-fun b!3402938 () Bool)

(declare-fun res!1377027 () Bool)

(assert (=> b!3402938 (=> res!1377027 e!2112414)))

(assert (=> b!3402938 (= res!1377027 e!2112411)))

(declare-fun res!1377028 () Bool)

(assert (=> b!3402938 (=> (not res!1377028) (not e!2112411))))

(assert (=> b!3402938 (= res!1377028 lt!1157383)))

(declare-fun b!3402939 () Bool)

(declare-fun nullable!3466 (Regex!10163) Bool)

(assert (=> b!3402939 (= e!2112409 (nullable!3466 (regex!5404 lt!1157235)))))

(assert (= (and d!968305 c!580069) b!3402939))

(assert (= (and d!968305 (not c!580069)) b!3402926))

(assert (= (and d!968305 c!580070) b!3402931))

(assert (= (and d!968305 (not c!580070)) b!3402933))

(assert (= (and b!3402933 c!580071) b!3402929))

(assert (= (and b!3402933 (not c!580071)) b!3402930))

(assert (= (and b!3402930 (not res!1377025)) b!3402938))

(assert (= (and b!3402938 res!1377028) b!3402927))

(assert (= (and b!3402927 res!1377032) b!3402934))

(assert (= (and b!3402934 res!1377029) b!3402937))

(assert (= (and b!3402938 (not res!1377027)) b!3402932))

(assert (= (and b!3402932 res!1377030) b!3402928))

(assert (= (and b!3402928 (not res!1377026)) b!3402936))

(assert (= (and b!3402936 (not res!1377031)) b!3402935))

(assert (= (or b!3402931 b!3402927 b!3402928) bm!245864))

(declare-fun m!3776471 () Bool)

(assert (=> d!968305 m!3776471))

(declare-fun m!3776473 () Bool)

(assert (=> d!968305 m!3776473))

(declare-fun m!3776475 () Bool)

(assert (=> b!3402936 m!3776475))

(assert (=> b!3402936 m!3776475))

(declare-fun m!3776477 () Bool)

(assert (=> b!3402936 m!3776477))

(declare-fun m!3776479 () Bool)

(assert (=> b!3402926 m!3776479))

(assert (=> b!3402926 m!3776479))

(declare-fun m!3776481 () Bool)

(assert (=> b!3402926 m!3776481))

(assert (=> b!3402926 m!3776475))

(assert (=> b!3402926 m!3776481))

(assert (=> b!3402926 m!3776475))

(declare-fun m!3776483 () Bool)

(assert (=> b!3402926 m!3776483))

(assert (=> bm!245864 m!3776471))

(assert (=> b!3402935 m!3776479))

(declare-fun m!3776485 () Bool)

(assert (=> b!3402939 m!3776485))

(assert (=> b!3402934 m!3776475))

(assert (=> b!3402934 m!3776475))

(assert (=> b!3402934 m!3776477))

(assert (=> b!3402937 m!3776479))

(assert (=> b!3402582 d!968305))

(declare-fun d!968307 () Bool)

(assert (=> d!968307 (= (get!11817 lt!1157240) (v!36631 lt!1157240))))

(assert (=> b!3402582 d!968307))

(declare-fun bs!556405 () Bool)

(declare-fun d!968309 () Bool)

(assert (= bs!556405 (and d!968309 b!3402595)))

(declare-fun lambda!121057 () Int)

(assert (=> bs!556405 (not (= lambda!121057 lambda!121047))))

(declare-fun b!3403126 () Bool)

(declare-fun e!2112541 () Bool)

(assert (=> b!3403126 (= e!2112541 true)))

(declare-fun b!3403125 () Bool)

(declare-fun e!2112540 () Bool)

(assert (=> b!3403125 (= e!2112540 e!2112541)))

(declare-fun b!3403124 () Bool)

(declare-fun e!2112539 () Bool)

(assert (=> b!3403124 (= e!2112539 e!2112540)))

(assert (=> d!968309 e!2112539))

(assert (= b!3403125 b!3403126))

(assert (= b!3403124 b!3403125))

(assert (= (and d!968309 ((_ is Cons!37005) rules!2135)) b!3403124))

(declare-fun order!19575 () Int)

(declare-fun order!19573 () Int)

(declare-fun dynLambda!15468 (Int Int) Int)

(declare-fun dynLambda!15469 (Int Int) Int)

(assert (=> b!3403126 (< (dynLambda!15468 order!19573 (toValue!7612 (transformation!5404 (h!42425 rules!2135)))) (dynLambda!15469 order!19575 lambda!121057))))

(declare-fun order!19577 () Int)

(declare-fun dynLambda!15470 (Int Int) Int)

(assert (=> b!3403126 (< (dynLambda!15470 order!19577 (toChars!7471 (transformation!5404 (h!42425 rules!2135)))) (dynLambda!15469 order!19575 lambda!121057))))

(assert (=> d!968309 true))

(declare-fun e!2112532 () Bool)

(assert (=> d!968309 e!2112532))

(declare-fun res!1377114 () Bool)

(assert (=> d!968309 (=> (not res!1377114) (not e!2112532))))

(declare-fun lt!1157418 () Bool)

(assert (=> d!968309 (= res!1377114 (= lt!1157418 (forall!7833 (list!13428 (seqFromList!3861 tokens!494)) lambda!121057)))))

(declare-fun forall!7835 (BalanceConc!21982 Int) Bool)

(assert (=> d!968309 (= lt!1157418 (forall!7835 (seqFromList!3861 tokens!494) lambda!121057))))

(assert (=> d!968309 (not (isEmpty!21278 rules!2135))))

(assert (=> d!968309 (= (rulesProduceEachTokenIndividually!1444 thiss!18206 rules!2135 (seqFromList!3861 tokens!494)) lt!1157418)))

(declare-fun b!3403115 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1833 (LexerInterface!4993 List!37129 List!37128) Bool)

(assert (=> b!3403115 (= e!2112532 (= lt!1157418 (rulesProduceEachTokenIndividuallyList!1833 thiss!18206 rules!2135 (list!13428 (seqFromList!3861 tokens!494)))))))

(assert (= (and d!968309 res!1377114) b!3403115))

(assert (=> d!968309 m!3775837))

(declare-fun m!3776637 () Bool)

(assert (=> d!968309 m!3776637))

(assert (=> d!968309 m!3776637))

(declare-fun m!3776639 () Bool)

(assert (=> d!968309 m!3776639))

(assert (=> d!968309 m!3775837))

(declare-fun m!3776641 () Bool)

(assert (=> d!968309 m!3776641))

(assert (=> d!968309 m!3775899))

(assert (=> b!3403115 m!3775837))

(assert (=> b!3403115 m!3776637))

(assert (=> b!3403115 m!3776637))

(declare-fun m!3776643 () Bool)

(assert (=> b!3403115 m!3776643))

(assert (=> b!3402601 d!968309))

(declare-fun d!968357 () Bool)

(declare-fun fromListB!1739 (List!37128) BalanceConc!21982)

(assert (=> d!968357 (= (seqFromList!3861 tokens!494) (fromListB!1739 tokens!494))))

(declare-fun bs!556406 () Bool)

(assert (= bs!556406 d!968357))

(declare-fun m!3776645 () Bool)

(assert (=> bs!556406 m!3776645))

(assert (=> b!3402601 d!968357))

(declare-fun d!968359 () Bool)

(declare-fun c!580093 () Bool)

(assert (=> d!968359 (= c!580093 ((_ is IntegerValue!16902) (value!174474 separatorToken!241)))))

(declare-fun e!2112543 () Bool)

(assert (=> d!968359 (= (inv!21 (value!174474 separatorToken!241)) e!2112543)))

(declare-fun b!3403129 () Bool)

(declare-fun e!2112542 () Bool)

(assert (=> b!3403129 (= e!2112542 (inv!15 (value!174474 separatorToken!241)))))

(declare-fun b!3403130 () Bool)

(declare-fun e!2112544 () Bool)

(assert (=> b!3403130 (= e!2112544 (inv!17 (value!174474 separatorToken!241)))))

(declare-fun b!3403131 () Bool)

(declare-fun res!1377115 () Bool)

(assert (=> b!3403131 (=> res!1377115 e!2112542)))

(assert (=> b!3403131 (= res!1377115 (not ((_ is IntegerValue!16904) (value!174474 separatorToken!241))))))

(assert (=> b!3403131 (= e!2112544 e!2112542)))

(declare-fun b!3403132 () Bool)

(assert (=> b!3403132 (= e!2112543 (inv!16 (value!174474 separatorToken!241)))))

(declare-fun b!3403133 () Bool)

(assert (=> b!3403133 (= e!2112543 e!2112544)))

(declare-fun c!580092 () Bool)

(assert (=> b!3403133 (= c!580092 ((_ is IntegerValue!16903) (value!174474 separatorToken!241)))))

(assert (= (and d!968359 c!580093) b!3403132))

(assert (= (and d!968359 (not c!580093)) b!3403133))

(assert (= (and b!3403133 c!580092) b!3403130))

(assert (= (and b!3403133 (not c!580092)) b!3403131))

(assert (= (and b!3403131 (not res!1377115)) b!3403129))

(declare-fun m!3776647 () Bool)

(assert (=> b!3403129 m!3776647))

(declare-fun m!3776649 () Bool)

(assert (=> b!3403130 m!3776649))

(declare-fun m!3776651 () Bool)

(assert (=> b!3403132 m!3776651))

(assert (=> b!3402600 d!968359))

(declare-fun d!968361 () Bool)

(declare-fun res!1377116 () Bool)

(declare-fun e!2112545 () Bool)

(assert (=> d!968361 (=> (not res!1377116) (not e!2112545))))

(assert (=> d!968361 (= res!1377116 (not (isEmpty!21282 (originalCharacters!6118 (h!42424 tokens!494)))))))

(assert (=> d!968361 (= (inv!50117 (h!42424 tokens!494)) e!2112545)))

(declare-fun b!3403134 () Bool)

(declare-fun res!1377117 () Bool)

(assert (=> b!3403134 (=> (not res!1377117) (not e!2112545))))

(assert (=> b!3403134 (= res!1377117 (= (originalCharacters!6118 (h!42424 tokens!494)) (list!13425 (dynLambda!15463 (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))) (value!174474 (h!42424 tokens!494))))))))

(declare-fun b!3403135 () Bool)

(assert (=> b!3403135 (= e!2112545 (= (size!28021 (h!42424 tokens!494)) (size!28024 (originalCharacters!6118 (h!42424 tokens!494)))))))

(assert (= (and d!968361 res!1377116) b!3403134))

(assert (= (and b!3403134 res!1377117) b!3403135))

(declare-fun b_lambda!97201 () Bool)

(assert (=> (not b_lambda!97201) (not b!3403134)))

(assert (=> b!3403134 t!266175))

(declare-fun b_and!237629 () Bool)

(assert (= b_and!237597 (and (=> t!266175 result!226198) b_and!237629)))

(assert (=> b!3403134 t!266177))

(declare-fun b_and!237631 () Bool)

(assert (= b_and!237599 (and (=> t!266177 result!226200) b_and!237631)))

(assert (=> b!3403134 t!266179))

(declare-fun b_and!237633 () Bool)

(assert (= b_and!237601 (and (=> t!266179 result!226202) b_and!237633)))

(declare-fun m!3776653 () Bool)

(assert (=> d!968361 m!3776653))

(assert (=> b!3403134 m!3776279))

(assert (=> b!3403134 m!3776279))

(declare-fun m!3776655 () Bool)

(assert (=> b!3403134 m!3776655))

(declare-fun m!3776657 () Bool)

(assert (=> b!3403135 m!3776657))

(assert (=> b!3402599 d!968361))

(declare-fun b!3403136 () Bool)

(declare-fun e!2112547 () List!37127)

(assert (=> b!3403136 (= e!2112547 lt!1157243)))

(declare-fun d!968363 () Bool)

(declare-fun e!2112546 () Bool)

(assert (=> d!968363 e!2112546))

(declare-fun res!1377119 () Bool)

(assert (=> d!968363 (=> (not res!1377119) (not e!2112546))))

(declare-fun lt!1157419 () List!37127)

(assert (=> d!968363 (= res!1377119 (= (content!5127 lt!1157419) ((_ map or) (content!5127 lt!1157244) (content!5127 lt!1157243))))))

(assert (=> d!968363 (= lt!1157419 e!2112547)))

(declare-fun c!580094 () Bool)

(assert (=> d!968363 (= c!580094 ((_ is Nil!37003) lt!1157244))))

(assert (=> d!968363 (= (++!9081 lt!1157244 lt!1157243) lt!1157419)))

(declare-fun b!3403138 () Bool)

(declare-fun res!1377118 () Bool)

(assert (=> b!3403138 (=> (not res!1377118) (not e!2112546))))

(assert (=> b!3403138 (= res!1377118 (= (size!28024 lt!1157419) (+ (size!28024 lt!1157244) (size!28024 lt!1157243))))))

(declare-fun b!3403139 () Bool)

(assert (=> b!3403139 (= e!2112546 (or (not (= lt!1157243 Nil!37003)) (= lt!1157419 lt!1157244)))))

(declare-fun b!3403137 () Bool)

(assert (=> b!3403137 (= e!2112547 (Cons!37003 (h!42423 lt!1157244) (++!9081 (t!266146 lt!1157244) lt!1157243)))))

(assert (= (and d!968363 c!580094) b!3403136))

(assert (= (and d!968363 (not c!580094)) b!3403137))

(assert (= (and d!968363 res!1377119) b!3403138))

(assert (= (and b!3403138 res!1377118) b!3403139))

(declare-fun m!3776659 () Bool)

(assert (=> d!968363 m!3776659))

(assert (=> d!968363 m!3775943))

(declare-fun m!3776661 () Bool)

(assert (=> d!968363 m!3776661))

(declare-fun m!3776663 () Bool)

(assert (=> b!3403138 m!3776663))

(assert (=> b!3403138 m!3775949))

(declare-fun m!3776665 () Bool)

(assert (=> b!3403138 m!3776665))

(declare-fun m!3776667 () Bool)

(assert (=> b!3403137 m!3776667))

(assert (=> b!3402598 d!968363))

(declare-fun d!968365 () Bool)

(assert (=> d!968365 (= (++!9081 (++!9081 lt!1157244 lt!1157242) lt!1157248) (++!9081 lt!1157244 (++!9081 lt!1157242 lt!1157248)))))

(declare-fun lt!1157422 () Unit!52164)

(declare-fun choose!19746 (List!37127 List!37127 List!37127) Unit!52164)

(assert (=> d!968365 (= lt!1157422 (choose!19746 lt!1157244 lt!1157242 lt!1157248))))

(assert (=> d!968365 (= (lemmaConcatAssociativity!1910 lt!1157244 lt!1157242 lt!1157248) lt!1157422)))

(declare-fun bs!556407 () Bool)

(assert (= bs!556407 d!968365))

(assert (=> bs!556407 m!3775867))

(assert (=> bs!556407 m!3775869))

(assert (=> bs!556407 m!3775867))

(assert (=> bs!556407 m!3775887))

(declare-fun m!3776669 () Bool)

(assert (=> bs!556407 m!3776669))

(assert (=> bs!556407 m!3775887))

(declare-fun m!3776671 () Bool)

(assert (=> bs!556407 m!3776671))

(assert (=> b!3402598 d!968365))

(declare-fun e!2112550 () Bool)

(assert (=> b!3402585 (= tp!1061732 e!2112550)))

(declare-fun b!3403153 () Bool)

(declare-fun tp!1061815 () Bool)

(declare-fun tp!1061813 () Bool)

(assert (=> b!3403153 (= e!2112550 (and tp!1061815 tp!1061813))))

(declare-fun b!3403150 () Bool)

(declare-fun tp_is_empty!17513 () Bool)

(assert (=> b!3403150 (= e!2112550 tp_is_empty!17513)))

(declare-fun b!3403151 () Bool)

(declare-fun tp!1061811 () Bool)

(declare-fun tp!1061814 () Bool)

(assert (=> b!3403151 (= e!2112550 (and tp!1061811 tp!1061814))))

(declare-fun b!3403152 () Bool)

(declare-fun tp!1061812 () Bool)

(assert (=> b!3403152 (= e!2112550 tp!1061812)))

(assert (= (and b!3402585 ((_ is ElementMatch!10163) (regex!5404 (h!42425 rules!2135)))) b!3403150))

(assert (= (and b!3402585 ((_ is Concat!15797) (regex!5404 (h!42425 rules!2135)))) b!3403151))

(assert (= (and b!3402585 ((_ is Star!10163) (regex!5404 (h!42425 rules!2135)))) b!3403152))

(assert (= (and b!3402585 ((_ is Union!10163) (regex!5404 (h!42425 rules!2135)))) b!3403153))

(declare-fun b!3403158 () Bool)

(declare-fun e!2112553 () Bool)

(declare-fun tp!1061818 () Bool)

(assert (=> b!3403158 (= e!2112553 (and tp_is_empty!17513 tp!1061818))))

(assert (=> b!3402600 (= tp!1061728 e!2112553)))

(assert (= (and b!3402600 ((_ is Cons!37003) (originalCharacters!6118 separatorToken!241))) b!3403158))

(declare-fun e!2112554 () Bool)

(assert (=> b!3402589 (= tp!1061727 e!2112554)))

(declare-fun b!3403162 () Bool)

(declare-fun tp!1061823 () Bool)

(declare-fun tp!1061821 () Bool)

(assert (=> b!3403162 (= e!2112554 (and tp!1061823 tp!1061821))))

(declare-fun b!3403159 () Bool)

(assert (=> b!3403159 (= e!2112554 tp_is_empty!17513)))

(declare-fun b!3403160 () Bool)

(declare-fun tp!1061819 () Bool)

(declare-fun tp!1061822 () Bool)

(assert (=> b!3403160 (= e!2112554 (and tp!1061819 tp!1061822))))

(declare-fun b!3403161 () Bool)

(declare-fun tp!1061820 () Bool)

(assert (=> b!3403161 (= e!2112554 tp!1061820)))

(assert (= (and b!3402589 ((_ is ElementMatch!10163) (regex!5404 (rule!7968 (h!42424 tokens!494))))) b!3403159))

(assert (= (and b!3402589 ((_ is Concat!15797) (regex!5404 (rule!7968 (h!42424 tokens!494))))) b!3403160))

(assert (= (and b!3402589 ((_ is Star!10163) (regex!5404 (rule!7968 (h!42424 tokens!494))))) b!3403161))

(assert (= (and b!3402589 ((_ is Union!10163) (regex!5404 (rule!7968 (h!42424 tokens!494))))) b!3403162))

(declare-fun b!3403173 () Bool)

(declare-fun b_free!89149 () Bool)

(declare-fun b_next!89853 () Bool)

(assert (=> b!3403173 (= b_free!89149 (not b_next!89853))))

(declare-fun tp!1061834 () Bool)

(declare-fun b_and!237635 () Bool)

(assert (=> b!3403173 (= tp!1061834 b_and!237635)))

(declare-fun b_free!89151 () Bool)

(declare-fun b_next!89855 () Bool)

(assert (=> b!3403173 (= b_free!89151 (not b_next!89855))))

(declare-fun t!266213 () Bool)

(declare-fun tb!182543 () Bool)

(assert (=> (and b!3403173 (= (toChars!7471 (transformation!5404 (h!42425 (t!266148 rules!2135)))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494))))) t!266213) tb!182543))

(declare-fun result!226242 () Bool)

(assert (= result!226242 result!226198))

(assert (=> d!968235 t!266213))

(assert (=> b!3403134 t!266213))

(declare-fun tb!182545 () Bool)

(declare-fun t!266215 () Bool)

(assert (=> (and b!3403173 (= (toChars!7471 (transformation!5404 (h!42425 (t!266148 rules!2135)))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494)))))) t!266215) tb!182545))

(declare-fun result!226244 () Bool)

(assert (= result!226244 result!226204))

(assert (=> d!968303 t!266215))

(declare-fun t!266217 () Bool)

(declare-fun tb!182547 () Bool)

(assert (=> (and b!3403173 (= (toChars!7471 (transformation!5404 (h!42425 (t!266148 rules!2135)))) (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241)))) t!266217) tb!182547))

(declare-fun result!226246 () Bool)

(assert (= result!226246 result!226190))

(assert (=> b!3402738 t!266217))

(assert (=> d!968291 t!266217))

(declare-fun tp!1061833 () Bool)

(declare-fun b_and!237637 () Bool)

(assert (=> b!3403173 (= tp!1061833 (and (=> t!266213 result!226242) (=> t!266215 result!226244) (=> t!266217 result!226246) b_and!237637))))

(declare-fun e!2112563 () Bool)

(assert (=> b!3403173 (= e!2112563 (and tp!1061834 tp!1061833))))

(declare-fun e!2112565 () Bool)

(declare-fun b!3403172 () Bool)

(declare-fun tp!1061835 () Bool)

(assert (=> b!3403172 (= e!2112565 (and tp!1061835 (inv!50113 (tag!5990 (h!42425 (t!266148 rules!2135)))) (inv!50116 (transformation!5404 (h!42425 (t!266148 rules!2135)))) e!2112563))))

(declare-fun b!3403171 () Bool)

(declare-fun e!2112566 () Bool)

(declare-fun tp!1061832 () Bool)

(assert (=> b!3403171 (= e!2112566 (and e!2112565 tp!1061832))))

(assert (=> b!3402590 (= tp!1061726 e!2112566)))

(assert (= b!3403172 b!3403173))

(assert (= b!3403171 b!3403172))

(assert (= (and b!3402590 ((_ is Cons!37005) (t!266148 rules!2135))) b!3403171))

(declare-fun m!3776673 () Bool)

(assert (=> b!3403172 m!3776673))

(declare-fun m!3776675 () Bool)

(assert (=> b!3403172 m!3776675))

(declare-fun b!3403174 () Bool)

(declare-fun e!2112567 () Bool)

(declare-fun tp!1061836 () Bool)

(assert (=> b!3403174 (= e!2112567 (and tp_is_empty!17513 tp!1061836))))

(assert (=> b!3402588 (= tp!1061724 e!2112567)))

(assert (= (and b!3402588 ((_ is Cons!37003) (originalCharacters!6118 (h!42424 tokens!494)))) b!3403174))

(declare-fun b!3403188 () Bool)

(declare-fun b_free!89153 () Bool)

(declare-fun b_next!89857 () Bool)

(assert (=> b!3403188 (= b_free!89153 (not b_next!89857))))

(declare-fun tp!1061848 () Bool)

(declare-fun b_and!237639 () Bool)

(assert (=> b!3403188 (= tp!1061848 b_and!237639)))

(declare-fun b_free!89155 () Bool)

(declare-fun b_next!89859 () Bool)

(assert (=> b!3403188 (= b_free!89155 (not b_next!89859))))

(declare-fun t!266219 () Bool)

(declare-fun tb!182549 () Bool)

(assert (=> (and b!3403188 (= (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494))))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494))))) t!266219) tb!182549))

(declare-fun result!226250 () Bool)

(assert (= result!226250 result!226198))

(assert (=> d!968235 t!266219))

(assert (=> b!3403134 t!266219))

(declare-fun t!266221 () Bool)

(declare-fun tb!182551 () Bool)

(assert (=> (and b!3403188 (= (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494))))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494)))))) t!266221) tb!182551))

(declare-fun result!226252 () Bool)

(assert (= result!226252 result!226204))

(assert (=> d!968303 t!266221))

(declare-fun t!266223 () Bool)

(declare-fun tb!182553 () Bool)

(assert (=> (and b!3403188 (= (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494))))) (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241)))) t!266223) tb!182553))

(declare-fun result!226254 () Bool)

(assert (= result!226254 result!226190))

(assert (=> b!3402738 t!266223))

(assert (=> d!968291 t!266223))

(declare-fun tp!1061851 () Bool)

(declare-fun b_and!237641 () Bool)

(assert (=> b!3403188 (= tp!1061851 (and (=> t!266223 result!226254) (=> t!266219 result!226250) (=> t!266221 result!226252) b_and!237641))))

(declare-fun b!3403186 () Bool)

(declare-fun e!2112581 () Bool)

(declare-fun tp!1061847 () Bool)

(declare-fun e!2112582 () Bool)

(assert (=> b!3403186 (= e!2112582 (and (inv!21 (value!174474 (h!42424 (t!266147 tokens!494)))) e!2112581 tp!1061847))))

(declare-fun e!2112580 () Bool)

(assert (=> b!3402599 (= tp!1061729 e!2112580)))

(declare-fun tp!1061849 () Bool)

(declare-fun b!3403187 () Bool)

(declare-fun e!2112585 () Bool)

(assert (=> b!3403187 (= e!2112581 (and tp!1061849 (inv!50113 (tag!5990 (rule!7968 (h!42424 (t!266147 tokens!494))))) (inv!50116 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494))))) e!2112585))))

(assert (=> b!3403188 (= e!2112585 (and tp!1061848 tp!1061851))))

(declare-fun tp!1061850 () Bool)

(declare-fun b!3403185 () Bool)

(assert (=> b!3403185 (= e!2112580 (and (inv!50117 (h!42424 (t!266147 tokens!494))) e!2112582 tp!1061850))))

(assert (= b!3403187 b!3403188))

(assert (= b!3403186 b!3403187))

(assert (= b!3403185 b!3403186))

(assert (= (and b!3402599 ((_ is Cons!37004) (t!266147 tokens!494))) b!3403185))

(declare-fun m!3776677 () Bool)

(assert (=> b!3403186 m!3776677))

(declare-fun m!3776679 () Bool)

(assert (=> b!3403187 m!3776679))

(declare-fun m!3776681 () Bool)

(assert (=> b!3403187 m!3776681))

(declare-fun m!3776683 () Bool)

(assert (=> b!3403185 m!3776683))

(declare-fun e!2112586 () Bool)

(assert (=> b!3402587 (= tp!1061722 e!2112586)))

(declare-fun b!3403192 () Bool)

(declare-fun tp!1061856 () Bool)

(declare-fun tp!1061854 () Bool)

(assert (=> b!3403192 (= e!2112586 (and tp!1061856 tp!1061854))))

(declare-fun b!3403189 () Bool)

(assert (=> b!3403189 (= e!2112586 tp_is_empty!17513)))

(declare-fun b!3403190 () Bool)

(declare-fun tp!1061852 () Bool)

(declare-fun tp!1061855 () Bool)

(assert (=> b!3403190 (= e!2112586 (and tp!1061852 tp!1061855))))

(declare-fun b!3403191 () Bool)

(declare-fun tp!1061853 () Bool)

(assert (=> b!3403191 (= e!2112586 tp!1061853)))

(assert (= (and b!3402587 ((_ is ElementMatch!10163) (regex!5404 (rule!7968 separatorToken!241)))) b!3403189))

(assert (= (and b!3402587 ((_ is Concat!15797) (regex!5404 (rule!7968 separatorToken!241)))) b!3403190))

(assert (= (and b!3402587 ((_ is Star!10163) (regex!5404 (rule!7968 separatorToken!241)))) b!3403191))

(assert (= (and b!3402587 ((_ is Union!10163) (regex!5404 (rule!7968 separatorToken!241)))) b!3403192))

(declare-fun b_lambda!97203 () Bool)

(assert (= b_lambda!97201 (or (and b!3403188 b_free!89155 (= (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494))))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))))) (and b!3402610 b_free!89131 (= (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))))) (and b!3402586 b_free!89139) (and b!3403173 b_free!89151 (= (toChars!7471 (transformation!5404 (h!42425 (t!266148 rules!2135)))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))))) (and b!3402603 b_free!89135 (= (toChars!7471 (transformation!5404 (h!42425 rules!2135))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))))) b_lambda!97203)))

(declare-fun b_lambda!97205 () Bool)

(assert (= b_lambda!97169 (or b!3402595 b_lambda!97205)))

(declare-fun bs!556408 () Bool)

(declare-fun d!968367 () Bool)

(assert (= bs!556408 (and d!968367 b!3402595)))

(assert (=> bs!556408 (= (dynLambda!15462 lambda!121047 (h!42424 (t!266147 tokens!494))) (not (isSeparator!5404 (rule!7968 (h!42424 (t!266147 tokens!494))))))))

(assert (=> d!968257 d!968367))

(declare-fun b_lambda!97207 () Bool)

(assert (= b_lambda!97173 (or (and b!3402603 b_free!89135 (= (toChars!7471 (transformation!5404 (h!42425 rules!2135))) (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))))) (and b!3403188 b_free!89155 (= (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494))))) (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))))) (and b!3403173 b_free!89151 (= (toChars!7471 (transformation!5404 (h!42425 (t!266148 rules!2135)))) (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))))) (and b!3402586 b_free!89139 (= (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))) (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))))) (and b!3402610 b_free!89131) b_lambda!97207)))

(declare-fun b_lambda!97209 () Bool)

(assert (= b_lambda!97155 (or b!3402595 b_lambda!97209)))

(declare-fun bs!556409 () Bool)

(declare-fun d!968369 () Bool)

(assert (= bs!556409 (and d!968369 b!3402595)))

(assert (=> bs!556409 (= (dynLambda!15462 lambda!121047 (h!42424 tokens!494)) (not (isSeparator!5404 (rule!7968 (h!42424 tokens!494)))))))

(assert (=> b!3402627 d!968369))

(declare-fun b_lambda!97211 () Bool)

(assert (= b_lambda!97175 (or (and b!3403188 b_free!89155) (and b!3402586 b_free!89139 (= (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494))))))) (and b!3402603 b_free!89135 (= (toChars!7471 (transformation!5404 (h!42425 rules!2135))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494))))))) (and b!3402610 b_free!89131 (= (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494))))))) (and b!3403173 b_free!89151 (= (toChars!7471 (transformation!5404 (h!42425 (t!266148 rules!2135)))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494))))))) b_lambda!97211)))

(declare-fun b_lambda!97213 () Bool)

(assert (= b_lambda!97167 (or (and b!3403188 b_free!89155 (= (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494))))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))))) (and b!3402610 b_free!89131 (= (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))))) (and b!3402586 b_free!89139) (and b!3403173 b_free!89151 (= (toChars!7471 (transformation!5404 (h!42425 (t!266148 rules!2135)))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))))) (and b!3402603 b_free!89135 (= (toChars!7471 (transformation!5404 (h!42425 rules!2135))) (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))))) b_lambda!97213)))

(declare-fun b_lambda!97215 () Bool)

(assert (= b_lambda!97171 (or b!3402595 b_lambda!97215)))

(assert (=> d!968259 d!968369))

(declare-fun b_lambda!97217 () Bool)

(assert (= b_lambda!97165 (or (and b!3402603 b_free!89135 (= (toChars!7471 (transformation!5404 (h!42425 rules!2135))) (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))))) (and b!3403188 b_free!89155 (= (toChars!7471 (transformation!5404 (rule!7968 (h!42424 (t!266147 tokens!494))))) (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))))) (and b!3403173 b_free!89151 (= (toChars!7471 (transformation!5404 (h!42425 (t!266148 rules!2135)))) (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))))) (and b!3402586 b_free!89139 (= (toChars!7471 (transformation!5404 (rule!7968 (h!42424 tokens!494)))) (toChars!7471 (transformation!5404 (rule!7968 separatorToken!241))))) (and b!3402610 b_free!89131) b_lambda!97217)))

(check-sat (not b!3402882) (not b!3402786) (not b!3402937) (not d!968223) (not b_next!89841) (not b!3402893) (not d!968267) (not b!3402832) (not d!968357) (not d!968251) (not b!3402820) (not b!3403115) (not d!968363) (not b!3402830) (not b_lambda!97207) (not b!3403161) (not d!968265) (not b!3402886) (not b!3402879) (not d!968157) (not b!3403187) (not b!3402796) (not d!968271) (not b!3402785) (not d!968259) (not bm!245864) (not b!3402883) (not d!968295) (not b!3402833) b_and!237563 (not b!3403151) (not b!3402792) (not b!3403135) (not b!3403132) (not b!3402895) (not b_next!89843) (not b_next!89837) (not b!3403130) (not b!3402744) (not d!968305) (not b_lambda!97213) (not d!968235) (not d!968291) (not b!3402861) (not b!3402934) (not d!968289) (not b!3403152) (not b!3402826) (not b!3402865) (not d!968231) (not b!3402819) b_and!237629 (not d!968225) (not b_lambda!97215) (not d!968303) (not b!3403172) (not b!3403138) (not b!3402897) (not d!968275) (not b!3402824) (not b!3402874) (not d!968217) (not d!968293) (not b!3402862) (not d!968287) (not d!968233) (not b!3403192) (not b_next!89859) (not b!3402816) (not b!3402817) b_and!237639 (not tb!182519) (not b!3403129) (not b_lambda!97205) (not b!3402756) (not b!3402779) (not b_next!89855) (not b!3403158) (not b!3402620) (not b!3402628) (not b!3402939) (not b!3403191) (not b!3402808) (not b!3402739) (not b!3402936) (not b!3402807) (not b_lambda!97217) (not tb!182513) (not b!3402761) (not b!3402793) (not d!968211) (not b!3402891) b_and!237555 (not b!3403162) (not b!3402890) (not b!3402935) (not d!968239) (not b!3403190) (not b_next!89857) (not b!3402831) (not d!968215) (not b!3402823) (not b!3402810) (not b!3402732) (not d!968301) (not b!3402733) (not d!968213) (not d!968257) (not d!968161) (not d!968227) (not b_next!89853) (not b!3403160) (not b!3403137) (not b!3402827) (not b!3402926) (not b!3402776) (not b_lambda!97209) (not d!968361) (not d!968309) (not d!968261) (not b!3403153) (not d!968255) (not b!3402621) (not b_next!89833) b_and!237637 (not b!3402753) b_and!237559 (not d!968247) (not b!3403171) b_and!237631 (not b!3402731) (not b!3403134) (not b!3402751) (not b!3403185) (not b!3403124) (not b_lambda!97203) (not b_next!89835) b_and!237633 (not b_lambda!97211) tp_is_empty!17513 (not d!968365) (not b!3403174) (not b!3403186) (not b!3402738) (not d!968229) (not b!3402864) (not d!968245) (not tb!182507) b_and!237635 (not d!968219) (not b!3402834) b_and!237641 (not b_next!89839) (not b!3402887) (not b!3402780))
(check-sat (not b_next!89841) b_and!237563 (not b_next!89843) (not b_next!89837) b_and!237629 (not b_next!89859) b_and!237639 (not b_next!89855) b_and!237555 (not b_next!89857) (not b_next!89853) b_and!237635 (not b_next!89833) b_and!237637 b_and!237559 b_and!237631 (not b_next!89835) b_and!237633 b_and!237641 (not b_next!89839))
