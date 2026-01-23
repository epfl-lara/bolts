; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!371816 () Bool)

(assert start!371816)

(declare-fun b!3954508 () Bool)

(declare-fun b_free!108909 () Bool)

(declare-fun b_next!109613 () Bool)

(assert (=> b!3954508 (= b_free!108909 (not b_next!109613))))

(declare-fun tp!1205112 () Bool)

(declare-fun b_and!303247 () Bool)

(assert (=> b!3954508 (= tp!1205112 b_and!303247)))

(declare-fun b_free!108911 () Bool)

(declare-fun b_next!109615 () Bool)

(assert (=> b!3954508 (= b_free!108911 (not b_next!109615))))

(declare-fun tp!1205117 () Bool)

(declare-fun b_and!303249 () Bool)

(assert (=> b!3954508 (= tp!1205117 b_and!303249)))

(declare-fun b!3954532 () Bool)

(declare-fun b_free!108913 () Bool)

(declare-fun b_next!109617 () Bool)

(assert (=> b!3954532 (= b_free!108913 (not b_next!109617))))

(declare-fun tp!1205119 () Bool)

(declare-fun b_and!303251 () Bool)

(assert (=> b!3954532 (= tp!1205119 b_and!303251)))

(declare-fun b_free!108915 () Bool)

(declare-fun b_next!109619 () Bool)

(assert (=> b!3954532 (= b_free!108915 (not b_next!109619))))

(declare-fun tp!1205114 () Bool)

(declare-fun b_and!303253 () Bool)

(assert (=> b!3954532 (= tp!1205114 b_and!303253)))

(declare-fun b!3954514 () Bool)

(declare-fun b_free!108917 () Bool)

(declare-fun b_next!109621 () Bool)

(assert (=> b!3954514 (= b_free!108917 (not b_next!109621))))

(declare-fun tp!1205116 () Bool)

(declare-fun b_and!303255 () Bool)

(assert (=> b!3954514 (= tp!1205116 b_and!303255)))

(declare-fun b_free!108919 () Bool)

(declare-fun b_next!109623 () Bool)

(assert (=> b!3954514 (= b_free!108919 (not b_next!109623))))

(declare-fun tp!1205115 () Bool)

(declare-fun b_and!303257 () Bool)

(assert (=> b!3954514 (= tp!1205115 b_and!303257)))

(declare-fun b!3954503 () Bool)

(declare-fun res!1600190 () Bool)

(declare-fun e!2448215 () Bool)

(assert (=> b!3954503 (=> res!1600190 e!2448215)))

(declare-datatypes ((C!23184 0))(
  ( (C!23185 (val!13686 Int)) )
))
(declare-datatypes ((List!42215 0))(
  ( (Nil!42091) (Cons!42091 (h!47511 C!23184) (t!329048 List!42215)) )
))
(declare-fun suffix!1176 () List!42215)

(declare-datatypes ((List!42216 0))(
  ( (Nil!42092) (Cons!42092 (h!47512 (_ BitVec 16)) (t!329049 List!42216)) )
))
(declare-datatypes ((TokenValue!6824 0))(
  ( (FloatLiteralValue!13648 (text!48213 List!42216)) (TokenValueExt!6823 (__x!25865 Int)) (Broken!34120 (value!208537 List!42216)) (Object!6947) (End!6824) (Def!6824) (Underscore!6824) (Match!6824) (Else!6824) (Error!6824) (Case!6824) (If!6824) (Extends!6824) (Abstract!6824) (Class!6824) (Val!6824) (DelimiterValue!13648 (del!6884 List!42216)) (KeywordValue!6830 (value!208538 List!42216)) (CommentValue!13648 (value!208539 List!42216)) (WhitespaceValue!13648 (value!208540 List!42216)) (IndentationValue!6824 (value!208541 List!42216)) (String!47837) (Int32!6824) (Broken!34121 (value!208542 List!42216)) (Boolean!6825) (Unit!60587) (OperatorValue!6827 (op!6884 List!42216)) (IdentifierValue!13648 (value!208543 List!42216)) (IdentifierValue!13649 (value!208544 List!42216)) (WhitespaceValue!13649 (value!208545 List!42216)) (True!13648) (False!13648) (Broken!34122 (value!208546 List!42216)) (Broken!34123 (value!208547 List!42216)) (True!13649) (RightBrace!6824) (RightBracket!6824) (Colon!6824) (Null!6824) (Comma!6824) (LeftBracket!6824) (False!13649) (LeftBrace!6824) (ImaginaryLiteralValue!6824 (text!48214 List!42216)) (StringLiteralValue!20472 (value!208548 List!42216)) (EOFValue!6824 (value!208549 List!42216)) (IdentValue!6824 (value!208550 List!42216)) (DelimiterValue!13649 (value!208551 List!42216)) (DedentValue!6824 (value!208552 List!42216)) (NewLineValue!6824 (value!208553 List!42216)) (IntegerValue!20472 (value!208554 (_ BitVec 32)) (text!48215 List!42216)) (IntegerValue!20473 (value!208555 Int) (text!48216 List!42216)) (Times!6824) (Or!6824) (Equal!6824) (Minus!6824) (Broken!34124 (value!208556 List!42216)) (And!6824) (Div!6824) (LessEqual!6824) (Mod!6824) (Concat!18323) (Not!6824) (Plus!6824) (SpaceValue!6824 (value!208557 List!42216)) (IntegerValue!20474 (value!208558 Int) (text!48217 List!42216)) (StringLiteralValue!20473 (text!48218 List!42216)) (FloatLiteralValue!13649 (text!48219 List!42216)) (BytesLiteralValue!6824 (value!208559 List!42216)) (CommentValue!13649 (value!208560 List!42216)) (StringLiteralValue!20474 (value!208561 List!42216)) (ErrorTokenValue!6824 (msg!6885 List!42216)) )
))
(declare-datatypes ((Regex!11499 0))(
  ( (ElementMatch!11499 (c!686406 C!23184)) (Concat!18324 (regOne!23510 Regex!11499) (regTwo!23510 Regex!11499)) (EmptyExpr!11499) (Star!11499 (reg!11828 Regex!11499)) (EmptyLang!11499) (Union!11499 (regOne!23511 Regex!11499) (regTwo!23511 Regex!11499)) )
))
(declare-datatypes ((String!47838 0))(
  ( (String!47839 (value!208562 String)) )
))
(declare-datatypes ((IArray!25615 0))(
  ( (IArray!25616 (innerList!12865 List!42215)) )
))
(declare-datatypes ((Conc!12805 0))(
  ( (Node!12805 (left!31980 Conc!12805) (right!32310 Conc!12805) (csize!25840 Int) (cheight!13016 Int)) (Leaf!19809 (xs!16111 IArray!25615) (csize!25841 Int)) (Empty!12805) )
))
(declare-datatypes ((BalanceConc!25204 0))(
  ( (BalanceConc!25205 (c!686407 Conc!12805)) )
))
(declare-datatypes ((TokenValueInjection!13076 0))(
  ( (TokenValueInjection!13077 (toValue!9070 Int) (toChars!8929 Int)) )
))
(declare-datatypes ((Rule!12988 0))(
  ( (Rule!12989 (regex!6594 Regex!11499) (tag!7454 String!47838) (isSeparator!6594 Bool) (transformation!6594 TokenValueInjection!13076)) )
))
(declare-datatypes ((Token!12326 0))(
  ( (Token!12327 (value!208563 TokenValue!6824) (rule!9564 Rule!12988) (size!31530 Int) (originalCharacters!7194 List!42215)) )
))
(declare-datatypes ((List!42217 0))(
  ( (Nil!42093) (Cons!42093 (h!47513 Token!12326) (t!329050 List!42217)) )
))
(declare-datatypes ((tuple2!41374 0))(
  ( (tuple2!41375 (_1!23821 List!42217) (_2!23821 List!42215)) )
))
(declare-fun lt!1382722 () tuple2!41374)

(declare-datatypes ((tuple2!41376 0))(
  ( (tuple2!41377 (_1!23822 Token!12326) (_2!23822 List!42215)) )
))
(declare-datatypes ((Option!9014 0))(
  ( (None!9013) (Some!9013 (v!39357 tuple2!41376)) )
))
(declare-fun lt!1382721 () Option!9014)

(assert (=> b!3954503 (= res!1600190 (or (not (= lt!1382722 (tuple2!41375 (_1!23821 lt!1382722) (_2!23821 lt!1382722)))) (= (_2!23822 (v!39357 lt!1382721)) suffix!1176)))))

(declare-fun tp!1205120 () Bool)

(declare-fun b!3954504 () Bool)

(declare-fun prefixTokens!80 () List!42217)

(declare-fun e!2448224 () Bool)

(declare-fun e!2448230 () Bool)

(declare-fun inv!21 (TokenValue!6824) Bool)

(assert (=> b!3954504 (= e!2448230 (and (inv!21 (value!208563 (h!47513 prefixTokens!80))) e!2448224 tp!1205120))))

(declare-fun e!2448207 () Bool)

(declare-fun lt!1382712 () TokenValue!6824)

(declare-fun b!3954505 () Bool)

(declare-fun lt!1382713 () Int)

(declare-fun lt!1382710 () List!42215)

(assert (=> b!3954505 (= e!2448207 (= lt!1382721 (Some!9013 (tuple2!41377 (Token!12327 lt!1382712 (rule!9564 (_1!23822 (v!39357 lt!1382721))) lt!1382713 lt!1382710) (_2!23822 (v!39357 lt!1382721))))))))

(declare-datatypes ((Unit!60588 0))(
  ( (Unit!60589) )
))
(declare-fun lt!1382716 () Unit!60588)

(declare-fun lt!1382709 () BalanceConc!25204)

(declare-fun lemmaSemiInverse!1792 (TokenValueInjection!13076 BalanceConc!25204) Unit!60588)

(assert (=> b!3954505 (= lt!1382716 (lemmaSemiInverse!1792 (transformation!6594 (rule!9564 (_1!23822 (v!39357 lt!1382721)))) lt!1382709))))

(declare-fun b!3954506 () Bool)

(declare-fun e!2448219 () Bool)

(declare-fun e!2448217 () Bool)

(assert (=> b!3954506 (= e!2448219 e!2448217)))

(declare-fun res!1600185 () Bool)

(assert (=> b!3954506 (=> (not res!1600185) (not e!2448217))))

(get-info :version)

(assert (=> b!3954506 (= res!1600185 ((_ is Some!9013) lt!1382721))))

(declare-fun lt!1382707 () List!42215)

(declare-datatypes ((LexerInterface!6183 0))(
  ( (LexerInterfaceExt!6180 (__x!25866 Int)) (Lexer!6181) )
))
(declare-fun thiss!20629 () LexerInterface!6183)

(declare-datatypes ((List!42218 0))(
  ( (Nil!42094) (Cons!42094 (h!47514 Rule!12988) (t!329051 List!42218)) )
))
(declare-fun rules!2768 () List!42218)

(declare-fun maxPrefix!3487 (LexerInterface!6183 List!42218 List!42215) Option!9014)

(assert (=> b!3954506 (= lt!1382721 (maxPrefix!3487 thiss!20629 rules!2768 lt!1382707))))

(declare-fun b!3954507 () Bool)

(declare-fun e!2448209 () Bool)

(assert (=> b!3954507 (= e!2448215 e!2448209)))

(declare-fun res!1600184 () Bool)

(assert (=> b!3954507 (=> res!1600184 e!2448209)))

(declare-fun lt!1382724 () Int)

(declare-fun lt!1382725 () Int)

(assert (=> b!3954507 (= res!1600184 (>= lt!1382724 lt!1382725))))

(declare-fun size!31531 (List!42215) Int)

(assert (=> b!3954507 (= lt!1382725 (size!31531 suffix!1176))))

(assert (=> b!3954507 (= lt!1382724 (size!31531 (_2!23822 (v!39357 lt!1382721))))))

(declare-fun e!2448229 () Bool)

(assert (=> b!3954508 (= e!2448229 (and tp!1205112 tp!1205117))))

(declare-fun b!3954509 () Bool)

(declare-fun e!2448206 () Bool)

(assert (=> b!3954509 (= e!2448206 (= (size!31530 (_1!23822 (v!39357 lt!1382721))) (size!31531 (originalCharacters!7194 (_1!23822 (v!39357 lt!1382721))))))))

(declare-fun b!3954510 () Bool)

(declare-fun e!2448208 () Bool)

(assert (=> b!3954510 (= e!2448208 e!2448219)))

(declare-fun res!1600194 () Bool)

(assert (=> b!3954510 (=> (not res!1600194) (not e!2448219))))

(declare-fun suffixResult!91 () List!42215)

(declare-fun lt!1382720 () tuple2!41374)

(declare-fun lt!1382718 () List!42217)

(assert (=> b!3954510 (= res!1600194 (= lt!1382720 (tuple2!41375 lt!1382718 suffixResult!91)))))

(declare-fun lexList!1951 (LexerInterface!6183 List!42218 List!42215) tuple2!41374)

(assert (=> b!3954510 (= lt!1382720 (lexList!1951 thiss!20629 rules!2768 lt!1382707))))

(declare-fun suffixTokens!72 () List!42217)

(declare-fun ++!10945 (List!42217 List!42217) List!42217)

(assert (=> b!3954510 (= lt!1382718 (++!10945 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!42215)

(declare-fun ++!10946 (List!42215 List!42215) List!42215)

(assert (=> b!3954510 (= lt!1382707 (++!10946 prefix!426 suffix!1176))))

(declare-fun b!3954511 () Bool)

(declare-fun res!1600182 () Bool)

(assert (=> b!3954511 (=> res!1600182 e!2448207)))

(declare-fun lt!1382708 () List!42215)

(assert (=> b!3954511 (= res!1600182 (not (= lt!1382707 lt!1382708)))))

(declare-fun b!3954512 () Bool)

(declare-fun res!1600195 () Bool)

(assert (=> b!3954512 (=> res!1600195 e!2448207)))

(declare-fun isEmpty!25154 (List!42215) Bool)

(assert (=> b!3954512 (= res!1600195 (isEmpty!25154 lt!1382710))))

(declare-fun e!2448228 () Bool)

(declare-fun b!3954513 () Bool)

(declare-fun tp!1205110 () Bool)

(declare-fun e!2448221 () Bool)

(assert (=> b!3954513 (= e!2448228 (and (inv!21 (value!208563 (h!47513 suffixTokens!72))) e!2448221 tp!1205110))))

(declare-fun e!2448211 () Bool)

(assert (=> b!3954514 (= e!2448211 (and tp!1205116 tp!1205115))))

(declare-fun b!3954515 () Bool)

(declare-fun e!2448225 () Bool)

(declare-fun tp_is_empty!19969 () Bool)

(declare-fun tp!1205113 () Bool)

(assert (=> b!3954515 (= e!2448225 (and tp_is_empty!19969 tp!1205113))))

(declare-fun b!3954516 () Bool)

(declare-fun res!1600188 () Bool)

(assert (=> b!3954516 (=> (not res!1600188) (not e!2448208))))

(declare-fun rulesInvariant!5526 (LexerInterface!6183 List!42218) Bool)

(assert (=> b!3954516 (= res!1600188 (rulesInvariant!5526 thiss!20629 rules!2768))))

(declare-fun b!3954517 () Bool)

(declare-fun res!1600193 () Bool)

(assert (=> b!3954517 (=> (not res!1600193) (not e!2448208))))

(assert (=> b!3954517 (= res!1600193 (not (isEmpty!25154 prefix!426)))))

(declare-fun b!3954518 () Bool)

(declare-fun e!2448222 () Bool)

(declare-fun e!2448210 () Bool)

(declare-fun tp!1205123 () Bool)

(assert (=> b!3954518 (= e!2448222 (and e!2448210 tp!1205123))))

(declare-fun tp!1205124 () Bool)

(declare-fun b!3954519 () Bool)

(declare-fun inv!56314 (String!47838) Bool)

(declare-fun inv!56317 (TokenValueInjection!13076) Bool)

(assert (=> b!3954519 (= e!2448224 (and tp!1205124 (inv!56314 (tag!7454 (rule!9564 (h!47513 prefixTokens!80)))) (inv!56317 (transformation!6594 (rule!9564 (h!47513 prefixTokens!80)))) e!2448229))))

(declare-fun b!3954520 () Bool)

(declare-fun e!2448220 () Bool)

(declare-fun tp!1205111 () Bool)

(assert (=> b!3954520 (= e!2448220 (and tp_is_empty!19969 tp!1205111))))

(declare-fun b!3954521 () Bool)

(declare-fun e!2448218 () Bool)

(assert (=> b!3954521 (= e!2448218 e!2448207)))

(declare-fun res!1600191 () Bool)

(assert (=> b!3954521 (=> res!1600191 e!2448207)))

(declare-fun lt!1382723 () Int)

(declare-fun lt!1382715 () Int)

(assert (=> b!3954521 (= res!1600191 (or (not (= (+ lt!1382723 lt!1382725) lt!1382715)) (<= lt!1382713 lt!1382723)))))

(assert (=> b!3954521 (= lt!1382723 (size!31531 prefix!426))))

(declare-fun b!3954522 () Bool)

(assert (=> b!3954522 (= e!2448209 e!2448218)))

(declare-fun res!1600189 () Bool)

(assert (=> b!3954522 (=> res!1600189 e!2448218)))

(assert (=> b!3954522 (= res!1600189 (not (= (+ lt!1382713 lt!1382724) lt!1382715)))))

(assert (=> b!3954522 (= lt!1382715 (size!31531 lt!1382707))))

(declare-fun tp!1205108 () Bool)

(declare-fun b!3954523 () Bool)

(declare-fun e!2448231 () Bool)

(assert (=> b!3954523 (= e!2448210 (and tp!1205108 (inv!56314 (tag!7454 (h!47514 rules!2768))) (inv!56317 (transformation!6594 (h!47514 rules!2768))) e!2448231))))

(declare-fun b!3954524 () Bool)

(declare-fun res!1600183 () Bool)

(assert (=> b!3954524 (=> (not res!1600183) (not e!2448208))))

(declare-fun isEmpty!25155 (List!42218) Bool)

(assert (=> b!3954524 (= res!1600183 (not (isEmpty!25155 rules!2768)))))

(declare-fun b!3954525 () Bool)

(declare-fun res!1600192 () Bool)

(assert (=> b!3954525 (=> (not res!1600192) (not e!2448208))))

(declare-fun isEmpty!25156 (List!42217) Bool)

(assert (=> b!3954525 (= res!1600192 (not (isEmpty!25156 prefixTokens!80)))))

(declare-fun res!1600181 () Bool)

(assert (=> start!371816 (=> (not res!1600181) (not e!2448208))))

(assert (=> start!371816 (= res!1600181 ((_ is Lexer!6181) thiss!20629))))

(assert (=> start!371816 e!2448208))

(assert (=> start!371816 e!2448220))

(assert (=> start!371816 true))

(assert (=> start!371816 e!2448225))

(assert (=> start!371816 e!2448222))

(declare-fun e!2448226 () Bool)

(assert (=> start!371816 e!2448226))

(declare-fun e!2448212 () Bool)

(assert (=> start!371816 e!2448212))

(declare-fun e!2448227 () Bool)

(assert (=> start!371816 e!2448227))

(declare-fun b!3954526 () Bool)

(declare-fun res!1600186 () Bool)

(assert (=> b!3954526 (=> res!1600186 e!2448207)))

(declare-fun contains!8416 (List!42218 Rule!12988) Bool)

(assert (=> b!3954526 (= res!1600186 (not (contains!8416 rules!2768 (rule!9564 (_1!23822 (v!39357 lt!1382721))))))))

(declare-fun b!3954527 () Bool)

(assert (=> b!3954527 (= e!2448217 (not e!2448215))))

(declare-fun res!1600196 () Bool)

(assert (=> b!3954527 (=> res!1600196 e!2448215)))

(assert (=> b!3954527 (= res!1600196 (not (= lt!1382708 lt!1382707)))))

(assert (=> b!3954527 (= lt!1382722 (lexList!1951 thiss!20629 rules!2768 (_2!23822 (v!39357 lt!1382721))))))

(declare-fun lt!1382714 () List!42215)

(assert (=> b!3954527 (and (= (size!31530 (_1!23822 (v!39357 lt!1382721))) lt!1382713) (= (originalCharacters!7194 (_1!23822 (v!39357 lt!1382721))) lt!1382710) (= (v!39357 lt!1382721) (tuple2!41377 (Token!12327 lt!1382712 (rule!9564 (_1!23822 (v!39357 lt!1382721))) lt!1382713 lt!1382710) lt!1382714)))))

(assert (=> b!3954527 (= lt!1382713 (size!31531 lt!1382710))))

(assert (=> b!3954527 e!2448206))

(declare-fun res!1600179 () Bool)

(assert (=> b!3954527 (=> (not res!1600179) (not e!2448206))))

(assert (=> b!3954527 (= res!1600179 (= (value!208563 (_1!23822 (v!39357 lt!1382721))) lt!1382712))))

(declare-fun apply!9825 (TokenValueInjection!13076 BalanceConc!25204) TokenValue!6824)

(assert (=> b!3954527 (= lt!1382712 (apply!9825 (transformation!6594 (rule!9564 (_1!23822 (v!39357 lt!1382721)))) lt!1382709))))

(declare-fun seqFromList!4853 (List!42215) BalanceConc!25204)

(assert (=> b!3954527 (= lt!1382709 (seqFromList!4853 lt!1382710))))

(assert (=> b!3954527 (= (_2!23822 (v!39357 lt!1382721)) lt!1382714)))

(declare-fun lt!1382711 () Unit!60588)

(declare-fun lemmaSamePrefixThenSameSuffix!1892 (List!42215 List!42215 List!42215 List!42215 List!42215) Unit!60588)

(assert (=> b!3954527 (= lt!1382711 (lemmaSamePrefixThenSameSuffix!1892 lt!1382710 (_2!23822 (v!39357 lt!1382721)) lt!1382710 lt!1382714 lt!1382707))))

(declare-fun getSuffix!2134 (List!42215 List!42215) List!42215)

(assert (=> b!3954527 (= lt!1382714 (getSuffix!2134 lt!1382707 lt!1382710))))

(declare-fun isPrefix!3683 (List!42215 List!42215) Bool)

(assert (=> b!3954527 (isPrefix!3683 lt!1382710 lt!1382708)))

(assert (=> b!3954527 (= lt!1382708 (++!10946 lt!1382710 (_2!23822 (v!39357 lt!1382721))))))

(declare-fun lt!1382706 () Unit!60588)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2542 (List!42215 List!42215) Unit!60588)

(assert (=> b!3954527 (= lt!1382706 (lemmaConcatTwoListThenFirstIsPrefix!2542 lt!1382710 (_2!23822 (v!39357 lt!1382721))))))

(declare-fun list!15628 (BalanceConc!25204) List!42215)

(declare-fun charsOf!4412 (Token!12326) BalanceConc!25204)

(assert (=> b!3954527 (= lt!1382710 (list!15628 (charsOf!4412 (_1!23822 (v!39357 lt!1382721)))))))

(declare-fun ruleValid!2536 (LexerInterface!6183 Rule!12988) Bool)

(assert (=> b!3954527 (ruleValid!2536 thiss!20629 (rule!9564 (_1!23822 (v!39357 lt!1382721))))))

(declare-fun lt!1382719 () Unit!60588)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1612 (LexerInterface!6183 Rule!12988 List!42218) Unit!60588)

(assert (=> b!3954527 (= lt!1382719 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1612 thiss!20629 (rule!9564 (_1!23822 (v!39357 lt!1382721))) rules!2768))))

(declare-fun lt!1382717 () Unit!60588)

(declare-fun lemmaCharactersSize!1247 (Token!12326) Unit!60588)

(assert (=> b!3954527 (= lt!1382717 (lemmaCharactersSize!1247 (_1!23822 (v!39357 lt!1382721))))))

(declare-fun b!3954528 () Bool)

(declare-fun tp!1205121 () Bool)

(declare-fun inv!56318 (Token!12326) Bool)

(assert (=> b!3954528 (= e!2448226 (and (inv!56318 (h!47513 prefixTokens!80)) e!2448230 tp!1205121))))

(declare-fun b!3954529 () Bool)

(declare-fun res!1600187 () Bool)

(assert (=> b!3954529 (=> res!1600187 e!2448215)))

(assert (=> b!3954529 (= res!1600187 (not (= lt!1382720 (tuple2!41375 (++!10945 (Cons!42093 (_1!23822 (v!39357 lt!1382721)) Nil!42093) (_1!23821 lt!1382722)) (_2!23821 lt!1382722)))))))

(declare-fun tp!1205122 () Bool)

(declare-fun b!3954530 () Bool)

(assert (=> b!3954530 (= e!2448212 (and (inv!56318 (h!47513 suffixTokens!72)) e!2448228 tp!1205122))))

(declare-fun b!3954531 () Bool)

(declare-fun tp!1205109 () Bool)

(assert (=> b!3954531 (= e!2448227 (and tp_is_empty!19969 tp!1205109))))

(assert (=> b!3954532 (= e!2448231 (and tp!1205119 tp!1205114))))

(declare-fun b!3954533 () Bool)

(declare-fun res!1600180 () Bool)

(assert (=> b!3954533 (=> (not res!1600180) (not e!2448219))))

(assert (=> b!3954533 (= res!1600180 (= (lexList!1951 thiss!20629 rules!2768 suffix!1176) (tuple2!41375 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3954534 () Bool)

(declare-fun tp!1205118 () Bool)

(assert (=> b!3954534 (= e!2448221 (and tp!1205118 (inv!56314 (tag!7454 (rule!9564 (h!47513 suffixTokens!72)))) (inv!56317 (transformation!6594 (rule!9564 (h!47513 suffixTokens!72)))) e!2448211))))

(assert (= (and start!371816 res!1600181) b!3954524))

(assert (= (and b!3954524 res!1600183) b!3954516))

(assert (= (and b!3954516 res!1600188) b!3954525))

(assert (= (and b!3954525 res!1600192) b!3954517))

(assert (= (and b!3954517 res!1600193) b!3954510))

(assert (= (and b!3954510 res!1600194) b!3954533))

(assert (= (and b!3954533 res!1600180) b!3954506))

(assert (= (and b!3954506 res!1600185) b!3954527))

(assert (= (and b!3954527 res!1600179) b!3954509))

(assert (= (and b!3954527 (not res!1600196)) b!3954529))

(assert (= (and b!3954529 (not res!1600187)) b!3954503))

(assert (= (and b!3954503 (not res!1600190)) b!3954507))

(assert (= (and b!3954507 (not res!1600184)) b!3954522))

(assert (= (and b!3954522 (not res!1600189)) b!3954521))

(assert (= (and b!3954521 (not res!1600191)) b!3954526))

(assert (= (and b!3954526 (not res!1600186)) b!3954511))

(assert (= (and b!3954511 (not res!1600182)) b!3954512))

(assert (= (and b!3954512 (not res!1600195)) b!3954505))

(assert (= (and start!371816 ((_ is Cons!42091) suffixResult!91)) b!3954520))

(assert (= (and start!371816 ((_ is Cons!42091) suffix!1176)) b!3954515))

(assert (= b!3954523 b!3954532))

(assert (= b!3954518 b!3954523))

(assert (= (and start!371816 ((_ is Cons!42094) rules!2768)) b!3954518))

(assert (= b!3954519 b!3954508))

(assert (= b!3954504 b!3954519))

(assert (= b!3954528 b!3954504))

(assert (= (and start!371816 ((_ is Cons!42093) prefixTokens!80)) b!3954528))

(assert (= b!3954534 b!3954514))

(assert (= b!3954513 b!3954534))

(assert (= b!3954530 b!3954513))

(assert (= (and start!371816 ((_ is Cons!42093) suffixTokens!72)) b!3954530))

(assert (= (and start!371816 ((_ is Cons!42091) prefix!426)) b!3954531))

(declare-fun m!4523241 () Bool)

(assert (=> b!3954521 m!4523241))

(declare-fun m!4523243 () Bool)

(assert (=> b!3954516 m!4523243))

(declare-fun m!4523245 () Bool)

(assert (=> b!3954523 m!4523245))

(declare-fun m!4523247 () Bool)

(assert (=> b!3954523 m!4523247))

(declare-fun m!4523249 () Bool)

(assert (=> b!3954517 m!4523249))

(declare-fun m!4523251 () Bool)

(assert (=> b!3954513 m!4523251))

(declare-fun m!4523253 () Bool)

(assert (=> b!3954507 m!4523253))

(declare-fun m!4523255 () Bool)

(assert (=> b!3954507 m!4523255))

(declare-fun m!4523257 () Bool)

(assert (=> b!3954525 m!4523257))

(declare-fun m!4523259 () Bool)

(assert (=> b!3954526 m!4523259))

(declare-fun m!4523261 () Bool)

(assert (=> b!3954510 m!4523261))

(declare-fun m!4523263 () Bool)

(assert (=> b!3954510 m!4523263))

(declare-fun m!4523265 () Bool)

(assert (=> b!3954510 m!4523265))

(declare-fun m!4523267 () Bool)

(assert (=> b!3954534 m!4523267))

(declare-fun m!4523269 () Bool)

(assert (=> b!3954534 m!4523269))

(declare-fun m!4523271 () Bool)

(assert (=> b!3954506 m!4523271))

(declare-fun m!4523273 () Bool)

(assert (=> b!3954529 m!4523273))

(declare-fun m!4523275 () Bool)

(assert (=> b!3954519 m!4523275))

(declare-fun m!4523277 () Bool)

(assert (=> b!3954519 m!4523277))

(declare-fun m!4523279 () Bool)

(assert (=> b!3954522 m!4523279))

(declare-fun m!4523281 () Bool)

(assert (=> b!3954530 m!4523281))

(declare-fun m!4523283 () Bool)

(assert (=> b!3954533 m!4523283))

(declare-fun m!4523285 () Bool)

(assert (=> b!3954512 m!4523285))

(declare-fun m!4523287 () Bool)

(assert (=> b!3954509 m!4523287))

(declare-fun m!4523289 () Bool)

(assert (=> b!3954527 m!4523289))

(declare-fun m!4523291 () Bool)

(assert (=> b!3954527 m!4523291))

(declare-fun m!4523293 () Bool)

(assert (=> b!3954527 m!4523293))

(declare-fun m!4523295 () Bool)

(assert (=> b!3954527 m!4523295))

(declare-fun m!4523297 () Bool)

(assert (=> b!3954527 m!4523297))

(declare-fun m!4523299 () Bool)

(assert (=> b!3954527 m!4523299))

(declare-fun m!4523301 () Bool)

(assert (=> b!3954527 m!4523301))

(declare-fun m!4523303 () Bool)

(assert (=> b!3954527 m!4523303))

(declare-fun m!4523305 () Bool)

(assert (=> b!3954527 m!4523305))

(declare-fun m!4523307 () Bool)

(assert (=> b!3954527 m!4523307))

(declare-fun m!4523309 () Bool)

(assert (=> b!3954527 m!4523309))

(declare-fun m!4523311 () Bool)

(assert (=> b!3954527 m!4523311))

(assert (=> b!3954527 m!4523297))

(declare-fun m!4523313 () Bool)

(assert (=> b!3954527 m!4523313))

(declare-fun m!4523315 () Bool)

(assert (=> b!3954527 m!4523315))

(declare-fun m!4523317 () Bool)

(assert (=> b!3954524 m!4523317))

(declare-fun m!4523319 () Bool)

(assert (=> b!3954504 m!4523319))

(declare-fun m!4523321 () Bool)

(assert (=> b!3954505 m!4523321))

(declare-fun m!4523323 () Bool)

(assert (=> b!3954528 m!4523323))

(check-sat b_and!303251 (not b!3954507) (not b_next!109617) (not b!3954523) (not b!3954521) (not b_next!109623) (not b!3954510) (not b!3954505) (not b!3954528) tp_is_empty!19969 (not b!3954534) (not b!3954525) (not b!3954520) (not b!3954506) (not b!3954533) (not b_next!109621) (not b!3954526) (not b!3954522) b_and!303257 (not b!3954516) (not b!3954519) (not b!3954531) (not b!3954527) (not b!3954518) b_and!303247 (not b_next!109615) (not b_next!109619) (not b!3954524) b_and!303249 (not b!3954530) (not b!3954515) b_and!303255 (not b!3954517) (not b!3954504) (not b_next!109613) (not b!3954512) (not b!3954509) (not b!3954513) b_and!303253 (not b!3954529))
(check-sat b_and!303251 (not b_next!109617) (not b_next!109621) b_and!303257 (not b_next!109623) (not b_next!109619) b_and!303249 b_and!303255 (not b_next!109613) b_and!303253 b_and!303247 (not b_next!109615))
