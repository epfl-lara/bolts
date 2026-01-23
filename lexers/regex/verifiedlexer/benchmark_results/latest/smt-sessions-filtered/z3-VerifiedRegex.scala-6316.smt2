; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!318786 () Bool)

(assert start!318786)

(declare-fun b!3410417 () Bool)

(declare-fun b_free!89305 () Bool)

(declare-fun b_next!90009 () Bool)

(assert (=> b!3410417 (= b_free!89305 (not b_next!90009))))

(declare-fun tp!1063643 () Bool)

(declare-fun b_and!238515 () Bool)

(assert (=> b!3410417 (= tp!1063643 b_and!238515)))

(declare-fun b_free!89307 () Bool)

(declare-fun b_next!90011 () Bool)

(assert (=> b!3410417 (= b_free!89307 (not b_next!90011))))

(declare-fun tp!1063642 () Bool)

(declare-fun b_and!238517 () Bool)

(assert (=> b!3410417 (= tp!1063642 b_and!238517)))

(declare-fun b!3410416 () Bool)

(declare-fun b_free!89309 () Bool)

(declare-fun b_next!90013 () Bool)

(assert (=> b!3410416 (= b_free!89309 (not b_next!90013))))

(declare-fun tp!1063649 () Bool)

(declare-fun b_and!238519 () Bool)

(assert (=> b!3410416 (= tp!1063649 b_and!238519)))

(declare-fun b_free!89311 () Bool)

(declare-fun b_next!90015 () Bool)

(assert (=> b!3410416 (= b_free!89311 (not b_next!90015))))

(declare-fun tp!1063651 () Bool)

(declare-fun b_and!238521 () Bool)

(assert (=> b!3410416 (= tp!1063651 b_and!238521)))

(declare-fun b!3410408 () Bool)

(declare-fun b_free!89313 () Bool)

(declare-fun b_next!90017 () Bool)

(assert (=> b!3410408 (= b_free!89313 (not b_next!90017))))

(declare-fun tp!1063641 () Bool)

(declare-fun b_and!238523 () Bool)

(assert (=> b!3410408 (= tp!1063641 b_and!238523)))

(declare-fun b_free!89315 () Bool)

(declare-fun b_next!90019 () Bool)

(assert (=> b!3410408 (= b_free!89315 (not b_next!90019))))

(declare-fun tp!1063645 () Bool)

(declare-fun b_and!238525 () Bool)

(assert (=> b!3410408 (= tp!1063645 b_and!238525)))

(declare-fun res!1379849 () Bool)

(declare-fun e!2116791 () Bool)

(assert (=> start!318786 (=> (not res!1379849) (not e!2116791))))

(declare-datatypes ((LexerInterface!5001 0))(
  ( (LexerInterfaceExt!4998 (__x!23501 Int)) (Lexer!4999) )
))
(declare-fun thiss!18206 () LexerInterface!5001)

(get-info :version)

(assert (=> start!318786 (= res!1379849 ((_ is Lexer!4999) thiss!18206))))

(assert (=> start!318786 e!2116791))

(assert (=> start!318786 true))

(declare-fun e!2116787 () Bool)

(assert (=> start!318786 e!2116787))

(declare-fun e!2116785 () Bool)

(assert (=> start!318786 e!2116785))

(declare-datatypes ((C!20528 0))(
  ( (C!20529 (val!12312 Int)) )
))
(declare-datatypes ((Regex!10171 0))(
  ( (ElementMatch!10171 (c!581586 C!20528)) (Concat!15813 (regOne!20854 Regex!10171) (regTwo!20854 Regex!10171)) (EmptyExpr!10171) (Star!10171 (reg!10500 Regex!10171)) (EmptyLang!10171) (Union!10171 (regOne!20855 Regex!10171) (regTwo!20855 Regex!10171)) )
))
(declare-datatypes ((List!37164 0))(
  ( (Nil!37040) (Cons!37040 (h!42460 (_ BitVec 16)) (t!267203 List!37164)) )
))
(declare-datatypes ((TokenValue!5642 0))(
  ( (FloatLiteralValue!11284 (text!39939 List!37164)) (TokenValueExt!5641 (__x!23502 Int)) (Broken!28210 (value!174676 List!37164)) (Object!5765) (End!5642) (Def!5642) (Underscore!5642) (Match!5642) (Else!5642) (Error!5642) (Case!5642) (If!5642) (Extends!5642) (Abstract!5642) (Class!5642) (Val!5642) (DelimiterValue!11284 (del!5702 List!37164)) (KeywordValue!5648 (value!174677 List!37164)) (CommentValue!11284 (value!174678 List!37164)) (WhitespaceValue!11284 (value!174679 List!37164)) (IndentationValue!5642 (value!174680 List!37164)) (String!41543) (Int32!5642) (Broken!28211 (value!174681 List!37164)) (Boolean!5643) (Unit!52209) (OperatorValue!5645 (op!5702 List!37164)) (IdentifierValue!11284 (value!174682 List!37164)) (IdentifierValue!11285 (value!174683 List!37164)) (WhitespaceValue!11285 (value!174684 List!37164)) (True!11284) (False!11284) (Broken!28212 (value!174685 List!37164)) (Broken!28213 (value!174686 List!37164)) (True!11285) (RightBrace!5642) (RightBracket!5642) (Colon!5642) (Null!5642) (Comma!5642) (LeftBracket!5642) (False!11285) (LeftBrace!5642) (ImaginaryLiteralValue!5642 (text!39940 List!37164)) (StringLiteralValue!16926 (value!174687 List!37164)) (EOFValue!5642 (value!174688 List!37164)) (IdentValue!5642 (value!174689 List!37164)) (DelimiterValue!11285 (value!174690 List!37164)) (DedentValue!5642 (value!174691 List!37164)) (NewLineValue!5642 (value!174692 List!37164)) (IntegerValue!16926 (value!174693 (_ BitVec 32)) (text!39941 List!37164)) (IntegerValue!16927 (value!174694 Int) (text!39942 List!37164)) (Times!5642) (Or!5642) (Equal!5642) (Minus!5642) (Broken!28214 (value!174695 List!37164)) (And!5642) (Div!5642) (LessEqual!5642) (Mod!5642) (Concat!15814) (Not!5642) (Plus!5642) (SpaceValue!5642 (value!174696 List!37164)) (IntegerValue!16928 (value!174697 Int) (text!39943 List!37164)) (StringLiteralValue!16927 (text!39944 List!37164)) (FloatLiteralValue!11285 (text!39945 List!37164)) (BytesLiteralValue!5642 (value!174698 List!37164)) (CommentValue!11285 (value!174699 List!37164)) (StringLiteralValue!16928 (value!174700 List!37164)) (ErrorTokenValue!5642 (msg!5703 List!37164)) )
))
(declare-datatypes ((List!37165 0))(
  ( (Nil!37041) (Cons!37041 (h!42461 C!20528) (t!267204 List!37165)) )
))
(declare-datatypes ((IArray!22403 0))(
  ( (IArray!22404 (innerList!11259 List!37165)) )
))
(declare-datatypes ((Conc!11199 0))(
  ( (Node!11199 (left!28883 Conc!11199) (right!29213 Conc!11199) (csize!22628 Int) (cheight!11410 Int)) (Leaf!17516 (xs!14361 IArray!22403) (csize!22629 Int)) (Empty!11199) )
))
(declare-datatypes ((BalanceConc!22012 0))(
  ( (BalanceConc!22013 (c!581587 Conc!11199)) )
))
(declare-datatypes ((String!41544 0))(
  ( (String!41545 (value!174701 String)) )
))
(declare-datatypes ((TokenValueInjection!10712 0))(
  ( (TokenValueInjection!10713 (toValue!7624 Int) (toChars!7483 Int)) )
))
(declare-datatypes ((Rule!10624 0))(
  ( (Rule!10625 (regex!5412 Regex!10171) (tag!6004 String!41544) (isSeparator!5412 Bool) (transformation!5412 TokenValueInjection!10712)) )
))
(declare-datatypes ((Token!10190 0))(
  ( (Token!10191 (value!174702 TokenValue!5642) (rule!7978 Rule!10624) (size!28056 Int) (originalCharacters!6126 List!37165)) )
))
(declare-fun separatorToken!241 () Token!10190)

(declare-fun e!2116782 () Bool)

(declare-fun inv!50166 (Token!10190) Bool)

(assert (=> start!318786 (and (inv!50166 separatorToken!241) e!2116782)))

(declare-fun e!2116802 () Bool)

(declare-fun tp!1063652 () Bool)

(declare-fun b!3410398 () Bool)

(declare-fun e!2116803 () Bool)

(declare-fun inv!50163 (String!41544) Bool)

(declare-fun inv!50167 (TokenValueInjection!10712) Bool)

(assert (=> b!3410398 (= e!2116802 (and tp!1063652 (inv!50163 (tag!6004 (rule!7978 separatorToken!241))) (inv!50167 (transformation!5412 (rule!7978 separatorToken!241))) e!2116803))))

(declare-fun b!3410399 () Bool)

(declare-fun e!2116804 () Bool)

(assert (=> b!3410399 (= e!2116791 (not e!2116804))))

(declare-fun res!1379861 () Bool)

(assert (=> b!3410399 (=> res!1379861 e!2116804)))

(declare-fun lt!1160049 () List!37165)

(declare-fun lt!1160051 () List!37165)

(assert (=> b!3410399 (= res!1379861 (not (= lt!1160049 lt!1160051)))))

(declare-datatypes ((List!37166 0))(
  ( (Nil!37042) (Cons!37042 (h!42462 Token!10190) (t!267205 List!37166)) )
))
(declare-fun tokens!494 () List!37166)

(declare-fun printList!1549 (LexerInterface!5001 List!37166) List!37165)

(assert (=> b!3410399 (= lt!1160051 (printList!1549 thiss!18206 (Cons!37042 (h!42462 tokens!494) Nil!37042)))))

(declare-fun lt!1160050 () BalanceConc!22012)

(declare-fun list!13451 (BalanceConc!22012) List!37165)

(assert (=> b!3410399 (= lt!1160049 (list!13451 lt!1160050))))

(declare-datatypes ((IArray!22405 0))(
  ( (IArray!22406 (innerList!11260 List!37166)) )
))
(declare-datatypes ((Conc!11200 0))(
  ( (Node!11200 (left!28884 Conc!11200) (right!29214 Conc!11200) (csize!22630 Int) (cheight!11411 Int)) (Leaf!17517 (xs!14362 IArray!22405) (csize!22631 Int)) (Empty!11200) )
))
(declare-datatypes ((BalanceConc!22014 0))(
  ( (BalanceConc!22015 (c!581588 Conc!11200)) )
))
(declare-fun lt!1160037 () BalanceConc!22014)

(declare-fun printTailRec!1496 (LexerInterface!5001 BalanceConc!22014 Int BalanceConc!22012) BalanceConc!22012)

(assert (=> b!3410399 (= lt!1160050 (printTailRec!1496 thiss!18206 lt!1160037 0 (BalanceConc!22013 Empty!11199)))))

(declare-fun print!2066 (LexerInterface!5001 BalanceConc!22014) BalanceConc!22012)

(assert (=> b!3410399 (= lt!1160050 (print!2066 thiss!18206 lt!1160037))))

(declare-fun singletonSeq!2508 (Token!10190) BalanceConc!22014)

(assert (=> b!3410399 (= lt!1160037 (singletonSeq!2508 (h!42462 tokens!494)))))

(declare-fun e!2116784 () Bool)

(declare-fun b!3410400 () Bool)

(declare-fun tp!1063650 () Bool)

(assert (=> b!3410400 (= e!2116785 (and (inv!50166 (h!42462 tokens!494)) e!2116784 tp!1063650))))

(declare-fun b!3410401 () Bool)

(declare-fun res!1379860 () Bool)

(assert (=> b!3410401 (=> (not res!1379860) (not e!2116791))))

(declare-datatypes ((List!37167 0))(
  ( (Nil!37043) (Cons!37043 (h!42463 Rule!10624) (t!267206 List!37167)) )
))
(declare-fun rules!2135 () List!37167)

(declare-fun sepAndNonSepRulesDisjointChars!1606 (List!37167 List!37167) Bool)

(assert (=> b!3410401 (= res!1379860 (sepAndNonSepRulesDisjointChars!1606 rules!2135 rules!2135))))

(declare-fun b!3410402 () Bool)

(declare-fun e!2116783 () Bool)

(declare-fun lt!1160038 () Rule!10624)

(assert (=> b!3410402 (= e!2116783 (= (rule!7978 (h!42462 tokens!494)) lt!1160038))))

(declare-fun b!3410403 () Bool)

(declare-fun e!2116790 () Bool)

(declare-fun e!2116788 () Bool)

(assert (=> b!3410403 (= e!2116790 e!2116788)))

(declare-fun res!1379866 () Bool)

(assert (=> b!3410403 (=> res!1379866 e!2116788)))

(declare-fun lt!1160041 () List!37165)

(declare-fun lt!1160044 () List!37165)

(declare-fun ++!9099 (List!37165 List!37165) List!37165)

(declare-fun charsOf!3426 (Token!10190) BalanceConc!22012)

(declare-fun printWithSeparatorTokenList!288 (LexerInterface!5001 List!37166 Token!10190) List!37165)

(assert (=> b!3410403 (= res!1379866 (not (= lt!1160041 (++!9099 (++!9099 (list!13451 (charsOf!3426 (h!42462 (t!267205 tokens!494)))) lt!1160044) (printWithSeparatorTokenList!288 thiss!18206 (t!267205 (t!267205 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1160035 () List!37165)

(assert (=> b!3410403 (= lt!1160035 (++!9099 lt!1160044 lt!1160041))))

(assert (=> b!3410403 (= lt!1160044 (list!13451 (charsOf!3426 separatorToken!241)))))

(assert (=> b!3410403 (= lt!1160041 (printWithSeparatorTokenList!288 thiss!18206 (t!267205 tokens!494) separatorToken!241))))

(declare-fun lt!1160043 () List!37165)

(assert (=> b!3410403 (= lt!1160043 (printWithSeparatorTokenList!288 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3410404 () Bool)

(declare-fun e!2116789 () Bool)

(assert (=> b!3410404 (= e!2116788 e!2116789)))

(declare-fun res!1379859 () Bool)

(assert (=> b!3410404 (=> res!1379859 e!2116789)))

(declare-fun lt!1160052 () List!37165)

(assert (=> b!3410404 (= res!1379859 (not (= lt!1160043 lt!1160052)))))

(declare-fun lt!1160053 () List!37165)

(assert (=> b!3410404 (= lt!1160052 (++!9099 (++!9099 lt!1160053 lt!1160044) lt!1160041))))

(declare-fun b!3410405 () Bool)

(declare-fun res!1379855 () Bool)

(assert (=> b!3410405 (=> (not res!1379855) (not e!2116791))))

(assert (=> b!3410405 (= res!1379855 (and (not ((_ is Nil!37042) tokens!494)) (not ((_ is Nil!37042) (t!267205 tokens!494)))))))

(declare-fun b!3410406 () Bool)

(declare-fun tp!1063646 () Bool)

(declare-fun e!2116797 () Bool)

(declare-fun e!2116805 () Bool)

(assert (=> b!3410406 (= e!2116797 (and tp!1063646 (inv!50163 (tag!6004 (h!42463 rules!2135))) (inv!50167 (transformation!5412 (h!42463 rules!2135))) e!2116805))))

(declare-fun b!3410407 () Bool)

(declare-fun res!1379867 () Bool)

(assert (=> b!3410407 (=> (not res!1379867) (not e!2116791))))

(declare-fun rulesProduceIndividualToken!2493 (LexerInterface!5001 List!37167 Token!10190) Bool)

(assert (=> b!3410407 (= res!1379867 (rulesProduceIndividualToken!2493 thiss!18206 rules!2135 separatorToken!241))))

(assert (=> b!3410408 (= e!2116803 (and tp!1063641 tp!1063645))))

(declare-fun b!3410409 () Bool)

(declare-fun res!1379862 () Bool)

(declare-fun e!2116795 () Bool)

(assert (=> b!3410409 (=> res!1379862 e!2116795)))

(assert (=> b!3410409 (= res!1379862 (not (rulesProduceIndividualToken!2493 thiss!18206 rules!2135 (h!42462 tokens!494))))))

(declare-fun b!3410410 () Bool)

(declare-fun e!2116801 () Bool)

(assert (=> b!3410410 (= e!2116789 e!2116801)))

(declare-fun res!1379858 () Bool)

(assert (=> b!3410410 (=> res!1379858 e!2116801)))

(declare-fun lt!1160054 () List!37165)

(assert (=> b!3410410 (= res!1379858 (not (= lt!1160043 lt!1160054)))))

(assert (=> b!3410410 (= lt!1160052 lt!1160054)))

(assert (=> b!3410410 (= lt!1160054 (++!9099 lt!1160053 lt!1160035))))

(declare-datatypes ((Unit!52210 0))(
  ( (Unit!52211) )
))
(declare-fun lt!1160045 () Unit!52210)

(declare-fun lemmaConcatAssociativity!1920 (List!37165 List!37165 List!37165) Unit!52210)

(assert (=> b!3410410 (= lt!1160045 (lemmaConcatAssociativity!1920 lt!1160053 lt!1160044 lt!1160041))))

(declare-fun b!3410411 () Bool)

(assert (=> b!3410411 (= e!2116804 e!2116795)))

(declare-fun res!1379853 () Bool)

(assert (=> b!3410411 (=> res!1379853 e!2116795)))

(assert (=> b!3410411 (= res!1379853 (or (not (= lt!1160051 lt!1160053)) (not (= lt!1160049 lt!1160053))))))

(assert (=> b!3410411 (= lt!1160053 (list!13451 (charsOf!3426 (h!42462 tokens!494))))))

(declare-fun b!3410412 () Bool)

(declare-fun res!1379865 () Bool)

(assert (=> b!3410412 (=> (not res!1379865) (not e!2116791))))

(declare-fun rulesInvariant!4398 (LexerInterface!5001 List!37167) Bool)

(assert (=> b!3410412 (= res!1379865 (rulesInvariant!4398 thiss!18206 rules!2135))))

(declare-fun b!3410413 () Bool)

(assert (=> b!3410413 (= e!2116801 true)))

(declare-fun lt!1160046 () BalanceConc!22012)

(declare-datatypes ((tuple2!36688 0))(
  ( (tuple2!36689 (_1!21478 Token!10190) (_2!21478 List!37165)) )
))
(declare-datatypes ((Option!7461 0))(
  ( (None!7460) (Some!7460 (v!36676 tuple2!36688)) )
))
(declare-fun maxPrefixOneRule!1708 (LexerInterface!5001 Rule!10624 List!37165) Option!7461)

(declare-fun apply!8663 (TokenValueInjection!10712 BalanceConc!22012) TokenValue!5642)

(declare-fun size!28057 (List!37165) Int)

(assert (=> b!3410413 (= (maxPrefixOneRule!1708 thiss!18206 (rule!7978 (h!42462 tokens!494)) lt!1160053) (Some!7460 (tuple2!36689 (Token!10191 (apply!8663 (transformation!5412 (rule!7978 (h!42462 tokens!494))) lt!1160046) (rule!7978 (h!42462 tokens!494)) (size!28057 lt!1160053) lt!1160053) Nil!37041)))))

(declare-fun lt!1160047 () Unit!52210)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!801 (LexerInterface!5001 List!37167 List!37165 List!37165 List!37165 Rule!10624) Unit!52210)

(assert (=> b!3410413 (= lt!1160047 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!801 thiss!18206 rules!2135 lt!1160053 lt!1160053 Nil!37041 (rule!7978 (h!42462 tokens!494))))))

(declare-fun e!2116792 () Bool)

(assert (=> b!3410413 e!2116792))

(declare-fun res!1379850 () Bool)

(assert (=> b!3410413 (=> (not res!1379850) (not e!2116792))))

(declare-datatypes ((Option!7462 0))(
  ( (None!7461) (Some!7461 (v!36677 Rule!10624)) )
))
(declare-fun lt!1160039 () Option!7462)

(declare-fun isDefined!5758 (Option!7462) Bool)

(assert (=> b!3410413 (= res!1379850 (isDefined!5758 lt!1160039))))

(declare-fun getRuleFromTag!1055 (LexerInterface!5001 List!37167 String!41544) Option!7462)

(assert (=> b!3410413 (= lt!1160039 (getRuleFromTag!1055 thiss!18206 rules!2135 (tag!6004 (rule!7978 (h!42462 tokens!494)))))))

(declare-fun lt!1160042 () Unit!52210)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1055 (LexerInterface!5001 List!37167 List!37165 Token!10190) Unit!52210)

(assert (=> b!3410413 (= lt!1160042 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1055 thiss!18206 rules!2135 lt!1160053 (h!42462 tokens!494)))))

(declare-fun lt!1160036 () Unit!52210)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!990 (LexerInterface!5001 List!37167 List!37166 Token!10190) Unit!52210)

(assert (=> b!3410413 (= lt!1160036 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!990 thiss!18206 rules!2135 tokens!494 (h!42462 tokens!494)))))

(declare-fun b!3410414 () Bool)

(declare-fun res!1379864 () Bool)

(assert (=> b!3410414 (=> (not res!1379864) (not e!2116791))))

(declare-fun isEmpty!21330 (List!37167) Bool)

(assert (=> b!3410414 (= res!1379864 (not (isEmpty!21330 rules!2135)))))

(declare-fun e!2116786 () Bool)

(declare-fun b!3410415 () Bool)

(declare-fun tp!1063648 () Bool)

(declare-fun inv!21 (TokenValue!5642) Bool)

(assert (=> b!3410415 (= e!2116784 (and (inv!21 (value!174702 (h!42462 tokens!494))) e!2116786 tp!1063648))))

(assert (=> b!3410416 (= e!2116805 (and tp!1063649 tp!1063651))))

(declare-fun e!2116798 () Bool)

(assert (=> b!3410417 (= e!2116798 (and tp!1063643 tp!1063642))))

(declare-fun b!3410418 () Bool)

(declare-fun e!2116806 () Bool)

(assert (=> b!3410418 (= e!2116795 e!2116806)))

(declare-fun res!1379863 () Bool)

(assert (=> b!3410418 (=> res!1379863 e!2116806)))

(declare-fun isEmpty!21331 (BalanceConc!22014) Bool)

(declare-datatypes ((tuple2!36690 0))(
  ( (tuple2!36691 (_1!21479 BalanceConc!22014) (_2!21479 BalanceConc!22012)) )
))
(declare-fun lex!2327 (LexerInterface!5001 List!37167 BalanceConc!22012) tuple2!36690)

(assert (=> b!3410418 (= res!1379863 (isEmpty!21331 (_1!21479 (lex!2327 thiss!18206 rules!2135 lt!1160046))))))

(declare-fun seqFromList!3877 (List!37165) BalanceConc!22012)

(assert (=> b!3410418 (= lt!1160046 (seqFromList!3877 lt!1160053))))

(declare-fun b!3410419 () Bool)

(declare-fun tp!1063647 () Bool)

(assert (=> b!3410419 (= e!2116782 (and (inv!21 (value!174702 separatorToken!241)) e!2116802 tp!1063647))))

(declare-fun b!3410420 () Bool)

(declare-fun res!1379857 () Bool)

(assert (=> b!3410420 (=> (not res!1379857) (not e!2116791))))

(assert (=> b!3410420 (= res!1379857 (isSeparator!5412 (rule!7978 separatorToken!241)))))

(declare-fun b!3410421 () Bool)

(assert (=> b!3410421 (= e!2116806 e!2116790)))

(declare-fun res!1379854 () Bool)

(assert (=> b!3410421 (=> res!1379854 e!2116790)))

(assert (=> b!3410421 (= res!1379854 (or (isSeparator!5412 (rule!7978 (h!42462 tokens!494))) (isSeparator!5412 (rule!7978 (h!42462 (t!267205 tokens!494))))))))

(declare-fun lt!1160040 () Unit!52210)

(declare-fun lambda!121203 () Int)

(declare-fun forallContained!1359 (List!37166 Int Token!10190) Unit!52210)

(assert (=> b!3410421 (= lt!1160040 (forallContained!1359 tokens!494 lambda!121203 (h!42462 (t!267205 tokens!494))))))

(declare-fun lt!1160048 () Unit!52210)

(assert (=> b!3410421 (= lt!1160048 (forallContained!1359 tokens!494 lambda!121203 (h!42462 tokens!494)))))

(declare-fun b!3410422 () Bool)

(declare-fun res!1379856 () Bool)

(assert (=> b!3410422 (=> (not res!1379856) (not e!2116791))))

(declare-fun rulesProduceEachTokenIndividually!1452 (LexerInterface!5001 List!37167 BalanceConc!22014) Bool)

(declare-fun seqFromList!3878 (List!37166) BalanceConc!22014)

(assert (=> b!3410422 (= res!1379856 (rulesProduceEachTokenIndividually!1452 thiss!18206 rules!2135 (seqFromList!3878 tokens!494)))))

(declare-fun b!3410423 () Bool)

(assert (=> b!3410423 (= e!2116792 e!2116783)))

(declare-fun res!1379851 () Bool)

(assert (=> b!3410423 (=> (not res!1379851) (not e!2116783))))

(declare-fun matchR!4755 (Regex!10171 List!37165) Bool)

(assert (=> b!3410423 (= res!1379851 (matchR!4755 (regex!5412 lt!1160038) lt!1160053))))

(declare-fun get!11833 (Option!7462) Rule!10624)

(assert (=> b!3410423 (= lt!1160038 (get!11833 lt!1160039))))

(declare-fun tp!1063644 () Bool)

(declare-fun b!3410424 () Bool)

(assert (=> b!3410424 (= e!2116786 (and tp!1063644 (inv!50163 (tag!6004 (rule!7978 (h!42462 tokens!494)))) (inv!50167 (transformation!5412 (rule!7978 (h!42462 tokens!494)))) e!2116798))))

(declare-fun b!3410425 () Bool)

(declare-fun res!1379852 () Bool)

(assert (=> b!3410425 (=> (not res!1379852) (not e!2116791))))

(declare-fun forall!7855 (List!37166 Int) Bool)

(assert (=> b!3410425 (= res!1379852 (forall!7855 tokens!494 lambda!121203))))

(declare-fun b!3410426 () Bool)

(declare-fun tp!1063640 () Bool)

(assert (=> b!3410426 (= e!2116787 (and e!2116797 tp!1063640))))

(assert (= (and start!318786 res!1379849) b!3410414))

(assert (= (and b!3410414 res!1379864) b!3410412))

(assert (= (and b!3410412 res!1379865) b!3410422))

(assert (= (and b!3410422 res!1379856) b!3410407))

(assert (= (and b!3410407 res!1379867) b!3410420))

(assert (= (and b!3410420 res!1379857) b!3410425))

(assert (= (and b!3410425 res!1379852) b!3410401))

(assert (= (and b!3410401 res!1379860) b!3410405))

(assert (= (and b!3410405 res!1379855) b!3410399))

(assert (= (and b!3410399 (not res!1379861)) b!3410411))

(assert (= (and b!3410411 (not res!1379853)) b!3410409))

(assert (= (and b!3410409 (not res!1379862)) b!3410418))

(assert (= (and b!3410418 (not res!1379863)) b!3410421))

(assert (= (and b!3410421 (not res!1379854)) b!3410403))

(assert (= (and b!3410403 (not res!1379866)) b!3410404))

(assert (= (and b!3410404 (not res!1379859)) b!3410410))

(assert (= (and b!3410410 (not res!1379858)) b!3410413))

(assert (= (and b!3410413 res!1379850) b!3410423))

(assert (= (and b!3410423 res!1379851) b!3410402))

(assert (= b!3410406 b!3410416))

(assert (= b!3410426 b!3410406))

(assert (= (and start!318786 ((_ is Cons!37043) rules!2135)) b!3410426))

(assert (= b!3410424 b!3410417))

(assert (= b!3410415 b!3410424))

(assert (= b!3410400 b!3410415))

(assert (= (and start!318786 ((_ is Cons!37042) tokens!494)) b!3410400))

(assert (= b!3410398 b!3410408))

(assert (= b!3410419 b!3410398))

(assert (= start!318786 b!3410419))

(declare-fun m!3787401 () Bool)

(assert (=> start!318786 m!3787401))

(declare-fun m!3787403 () Bool)

(assert (=> b!3410410 m!3787403))

(declare-fun m!3787405 () Bool)

(assert (=> b!3410410 m!3787405))

(declare-fun m!3787407 () Bool)

(assert (=> b!3410412 m!3787407))

(declare-fun m!3787409 () Bool)

(assert (=> b!3410421 m!3787409))

(declare-fun m!3787411 () Bool)

(assert (=> b!3410421 m!3787411))

(declare-fun m!3787413 () Bool)

(assert (=> b!3410403 m!3787413))

(declare-fun m!3787415 () Bool)

(assert (=> b!3410403 m!3787415))

(declare-fun m!3787417 () Bool)

(assert (=> b!3410403 m!3787417))

(assert (=> b!3410403 m!3787413))

(declare-fun m!3787419 () Bool)

(assert (=> b!3410403 m!3787419))

(declare-fun m!3787421 () Bool)

(assert (=> b!3410403 m!3787421))

(declare-fun m!3787423 () Bool)

(assert (=> b!3410403 m!3787423))

(assert (=> b!3410403 m!3787421))

(declare-fun m!3787425 () Bool)

(assert (=> b!3410403 m!3787425))

(declare-fun m!3787427 () Bool)

(assert (=> b!3410403 m!3787427))

(declare-fun m!3787429 () Bool)

(assert (=> b!3410403 m!3787429))

(assert (=> b!3410403 m!3787419))

(assert (=> b!3410403 m!3787423))

(assert (=> b!3410403 m!3787415))

(declare-fun m!3787431 () Bool)

(assert (=> b!3410403 m!3787431))

(declare-fun m!3787433 () Bool)

(assert (=> b!3410423 m!3787433))

(declare-fun m!3787435 () Bool)

(assert (=> b!3410423 m!3787435))

(declare-fun m!3787437 () Bool)

(assert (=> b!3410407 m!3787437))

(declare-fun m!3787439 () Bool)

(assert (=> b!3410414 m!3787439))

(declare-fun m!3787441 () Bool)

(assert (=> b!3410401 m!3787441))

(declare-fun m!3787443 () Bool)

(assert (=> b!3410406 m!3787443))

(declare-fun m!3787445 () Bool)

(assert (=> b!3410406 m!3787445))

(declare-fun m!3787447 () Bool)

(assert (=> b!3410399 m!3787447))

(declare-fun m!3787449 () Bool)

(assert (=> b!3410399 m!3787449))

(declare-fun m!3787451 () Bool)

(assert (=> b!3410399 m!3787451))

(declare-fun m!3787453 () Bool)

(assert (=> b!3410399 m!3787453))

(declare-fun m!3787455 () Bool)

(assert (=> b!3410399 m!3787455))

(declare-fun m!3787457 () Bool)

(assert (=> b!3410413 m!3787457))

(declare-fun m!3787459 () Bool)

(assert (=> b!3410413 m!3787459))

(declare-fun m!3787461 () Bool)

(assert (=> b!3410413 m!3787461))

(declare-fun m!3787463 () Bool)

(assert (=> b!3410413 m!3787463))

(declare-fun m!3787465 () Bool)

(assert (=> b!3410413 m!3787465))

(declare-fun m!3787467 () Bool)

(assert (=> b!3410413 m!3787467))

(declare-fun m!3787469 () Bool)

(assert (=> b!3410413 m!3787469))

(declare-fun m!3787471 () Bool)

(assert (=> b!3410413 m!3787471))

(declare-fun m!3787473 () Bool)

(assert (=> b!3410418 m!3787473))

(declare-fun m!3787475 () Bool)

(assert (=> b!3410418 m!3787475))

(declare-fun m!3787477 () Bool)

(assert (=> b!3410418 m!3787477))

(declare-fun m!3787479 () Bool)

(assert (=> b!3410411 m!3787479))

(assert (=> b!3410411 m!3787479))

(declare-fun m!3787481 () Bool)

(assert (=> b!3410411 m!3787481))

(declare-fun m!3787483 () Bool)

(assert (=> b!3410400 m!3787483))

(declare-fun m!3787485 () Bool)

(assert (=> b!3410409 m!3787485))

(declare-fun m!3787487 () Bool)

(assert (=> b!3410425 m!3787487))

(declare-fun m!3787489 () Bool)

(assert (=> b!3410422 m!3787489))

(assert (=> b!3410422 m!3787489))

(declare-fun m!3787491 () Bool)

(assert (=> b!3410422 m!3787491))

(declare-fun m!3787493 () Bool)

(assert (=> b!3410419 m!3787493))

(declare-fun m!3787495 () Bool)

(assert (=> b!3410398 m!3787495))

(declare-fun m!3787497 () Bool)

(assert (=> b!3410398 m!3787497))

(declare-fun m!3787499 () Bool)

(assert (=> b!3410424 m!3787499))

(declare-fun m!3787501 () Bool)

(assert (=> b!3410424 m!3787501))

(declare-fun m!3787503 () Bool)

(assert (=> b!3410415 m!3787503))

(declare-fun m!3787505 () Bool)

(assert (=> b!3410404 m!3787505))

(assert (=> b!3410404 m!3787505))

(declare-fun m!3787507 () Bool)

(assert (=> b!3410404 m!3787507))

(check-sat (not b!3410425) (not b_next!90013) (not b!3410407) (not b!3410400) (not b_next!90017) (not b!3410398) b_and!238517 (not b!3410401) b_and!238525 (not b!3410399) (not b!3410414) (not start!318786) (not b!3410411) b_and!238523 (not b!3410406) b_and!238521 b_and!238515 (not b!3410413) (not b!3410419) b_and!238519 (not b!3410403) (not b_next!90019) (not b!3410421) (not b_next!90011) (not b!3410424) (not b!3410410) (not b!3410404) (not b_next!90009) (not b!3410423) (not b!3410422) (not b!3410412) (not b!3410415) (not b_next!90015) (not b!3410426) (not b!3410418) (not b!3410409))
(check-sat b_and!238523 (not b_next!90013) (not b_next!90011) (not b_next!90017) (not b_next!90009) (not b_next!90015) b_and!238517 b_and!238525 b_and!238521 b_and!238515 b_and!238519 (not b_next!90019))
