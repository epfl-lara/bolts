; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!274918 () Bool)

(assert start!274918)

(declare-fun b!2830666 () Bool)

(declare-fun b_free!81301 () Bool)

(declare-fun b_next!82005 () Bool)

(assert (=> b!2830666 (= b_free!81301 (not b_next!82005))))

(declare-fun tp!904423 () Bool)

(declare-fun b_and!206963 () Bool)

(assert (=> b!2830666 (= tp!904423 b_and!206963)))

(declare-fun b_free!81303 () Bool)

(declare-fun b_next!82007 () Bool)

(assert (=> b!2830666 (= b_free!81303 (not b_next!82007))))

(declare-fun tp!904421 () Bool)

(declare-fun b_and!206965 () Bool)

(assert (=> b!2830666 (= tp!904421 b_and!206965)))

(declare-fun e!1792027 () Bool)

(declare-fun b!2830657 () Bool)

(declare-datatypes ((String!36628 0))(
  ( (String!36629 (value!160588 String)) )
))
(declare-datatypes ((C!16946 0))(
  ( (C!16947 (val!10485 Int)) )
))
(declare-datatypes ((Regex!8382 0))(
  ( (ElementMatch!8382 (c!457838 C!16946)) (Concat!13603 (regOne!17276 Regex!8382) (regTwo!17276 Regex!8382)) (EmptyExpr!8382) (Star!8382 (reg!8711 Regex!8382)) (EmptyLang!8382) (Union!8382 (regOne!17277 Regex!8382) (regTwo!17277 Regex!8382)) )
))
(declare-datatypes ((List!33449 0))(
  ( (Nil!33325) (Cons!33325 (h!38745 (_ BitVec 16)) (t!231318 List!33449)) )
))
(declare-datatypes ((TokenValue!5221 0))(
  ( (FloatLiteralValue!10442 (text!36992 List!33449)) (TokenValueExt!5220 (__x!22180 Int)) (Broken!26105 (value!160589 List!33449)) (Object!5344) (End!5221) (Def!5221) (Underscore!5221) (Match!5221) (Else!5221) (Error!5221) (Case!5221) (If!5221) (Extends!5221) (Abstract!5221) (Class!5221) (Val!5221) (DelimiterValue!10442 (del!5281 List!33449)) (KeywordValue!5227 (value!160590 List!33449)) (CommentValue!10442 (value!160591 List!33449)) (WhitespaceValue!10442 (value!160592 List!33449)) (IndentationValue!5221 (value!160593 List!33449)) (String!36630) (Int32!5221) (Broken!26106 (value!160594 List!33449)) (Boolean!5222) (Unit!47336) (OperatorValue!5224 (op!5281 List!33449)) (IdentifierValue!10442 (value!160595 List!33449)) (IdentifierValue!10443 (value!160596 List!33449)) (WhitespaceValue!10443 (value!160597 List!33449)) (True!10442) (False!10442) (Broken!26107 (value!160598 List!33449)) (Broken!26108 (value!160599 List!33449)) (True!10443) (RightBrace!5221) (RightBracket!5221) (Colon!5221) (Null!5221) (Comma!5221) (LeftBracket!5221) (False!10443) (LeftBrace!5221) (ImaginaryLiteralValue!5221 (text!36993 List!33449)) (StringLiteralValue!15663 (value!160600 List!33449)) (EOFValue!5221 (value!160601 List!33449)) (IdentValue!5221 (value!160602 List!33449)) (DelimiterValue!10443 (value!160603 List!33449)) (DedentValue!5221 (value!160604 List!33449)) (NewLineValue!5221 (value!160605 List!33449)) (IntegerValue!15663 (value!160606 (_ BitVec 32)) (text!36994 List!33449)) (IntegerValue!15664 (value!160607 Int) (text!36995 List!33449)) (Times!5221) (Or!5221) (Equal!5221) (Minus!5221) (Broken!26109 (value!160608 List!33449)) (And!5221) (Div!5221) (LessEqual!5221) (Mod!5221) (Concat!13604) (Not!5221) (Plus!5221) (SpaceValue!5221 (value!160609 List!33449)) (IntegerValue!15665 (value!160610 Int) (text!36996 List!33449)) (StringLiteralValue!15664 (text!36997 List!33449)) (FloatLiteralValue!10443 (text!36998 List!33449)) (BytesLiteralValue!5221 (value!160611 List!33449)) (CommentValue!10443 (value!160612 List!33449)) (StringLiteralValue!15665 (value!160613 List!33449)) (ErrorTokenValue!5221 (msg!5282 List!33449)) )
))
(declare-datatypes ((List!33450 0))(
  ( (Nil!33326) (Cons!33326 (h!38746 C!16946) (t!231319 List!33450)) )
))
(declare-datatypes ((IArray!20679 0))(
  ( (IArray!20680 (innerList!10397 List!33450)) )
))
(declare-datatypes ((Conc!10337 0))(
  ( (Node!10337 (left!25148 Conc!10337) (right!25478 Conc!10337) (csize!20904 Int) (cheight!10548 Int)) (Leaf!15741 (xs!13449 IArray!20679) (csize!20905 Int)) (Empty!10337) )
))
(declare-datatypes ((BalanceConc!20312 0))(
  ( (BalanceConc!20313 (c!457839 Conc!10337)) )
))
(declare-datatypes ((TokenValueInjection!9870 0))(
  ( (TokenValueInjection!9871 (toValue!7017 Int) (toChars!6876 Int)) )
))
(declare-datatypes ((Rule!9782 0))(
  ( (Rule!9783 (regex!4991 Regex!8382) (tag!5495 String!36628) (isSeparator!4991 Bool) (transformation!4991 TokenValueInjection!9870)) )
))
(declare-datatypes ((List!33451 0))(
  ( (Nil!33327) (Cons!33327 (h!38747 Rule!9782) (t!231320 List!33451)) )
))
(declare-fun rules!1102 () List!33451)

(declare-datatypes ((Token!9384 0))(
  ( (Token!9385 (value!160614 TokenValue!5221) (rule!7419 Rule!9782) (size!25949 Int) (originalCharacters!5723 List!33450)) )
))
(declare-datatypes ((List!33452 0))(
  ( (Nil!33328) (Cons!33328 (h!38748 Token!9384) (t!231321 List!33452)) )
))
(declare-datatypes ((IArray!20681 0))(
  ( (IArray!20682 (innerList!10398 List!33452)) )
))
(declare-datatypes ((Conc!10338 0))(
  ( (Node!10338 (left!25149 Conc!10338) (right!25479 Conc!10338) (csize!20906 Int) (cheight!10549 Int)) (Leaf!15742 (xs!13450 IArray!20681) (csize!20907 Int)) (Empty!10338) )
))
(declare-datatypes ((BalanceConc!20314 0))(
  ( (BalanceConc!20315 (c!457840 Conc!10338)) )
))
(declare-fun v!6247 () BalanceConc!20314)

(declare-datatypes ((LexerInterface!4581 0))(
  ( (LexerInterfaceExt!4578 (__x!22181 Int)) (Lexer!4579) )
))
(declare-fun thiss!11212 () LexerInterface!4581)

(declare-fun from!827 () Int)

(declare-fun tokensListTwoByTwoPredicateSeparable!160 (LexerInterface!4581 BalanceConc!20314 Int List!33451) Bool)

(assert (=> b!2830657 (= e!1792027 (not (tokensListTwoByTwoPredicateSeparable!160 thiss!11212 v!6247 from!827 rules!1102)))))

(declare-fun b!2830658 () Bool)

(declare-fun res!1178331 () Bool)

(assert (=> b!2830658 (=> (not res!1178331) (not e!1792027))))

(declare-fun rulesInvariant!3997 (LexerInterface!4581 List!33451) Bool)

(assert (=> b!2830658 (= res!1178331 (rulesInvariant!3997 thiss!11212 rules!1102))))

(declare-fun b!2830659 () Bool)

(declare-fun e!1792024 () Bool)

(declare-fun e!1792028 () Bool)

(declare-fun tp!904420 () Bool)

(assert (=> b!2830659 (= e!1792024 (and e!1792028 tp!904420))))

(declare-fun b!2830660 () Bool)

(declare-fun e!1792023 () Bool)

(assert (=> b!2830660 (= e!1792023 e!1792027)))

(declare-fun res!1178334 () Bool)

(assert (=> b!2830660 (=> (not res!1178334) (not e!1792027))))

(declare-fun lt!1009850 () Int)

(assert (=> b!2830660 (= res!1178334 (<= from!827 lt!1009850))))

(declare-fun size!25950 (BalanceConc!20314) Int)

(assert (=> b!2830660 (= lt!1009850 (size!25950 v!6247))))

(declare-fun b!2830661 () Bool)

(declare-fun res!1178335 () Bool)

(assert (=> b!2830661 (=> (not res!1178335) (not e!1792027))))

(assert (=> b!2830661 (= res!1178335 (>= from!827 (- lt!1009850 1)))))

(declare-fun res!1178332 () Bool)

(assert (=> start!274918 (=> (not res!1178332) (not e!1792023))))

(assert (=> start!274918 (= res!1178332 (and (is-Lexer!4579 thiss!11212) (>= from!827 0)))))

(assert (=> start!274918 e!1792023))

(assert (=> start!274918 true))

(assert (=> start!274918 e!1792024))

(declare-fun e!1792022 () Bool)

(declare-fun inv!45280 (BalanceConc!20314) Bool)

(assert (=> start!274918 (and (inv!45280 v!6247) e!1792022)))

(declare-fun b!2830662 () Bool)

(declare-fun tp!904419 () Bool)

(declare-fun e!1792025 () Bool)

(declare-fun inv!45277 (String!36628) Bool)

(declare-fun inv!45281 (TokenValueInjection!9870) Bool)

(assert (=> b!2830662 (= e!1792028 (and tp!904419 (inv!45277 (tag!5495 (h!38747 rules!1102))) (inv!45281 (transformation!4991 (h!38747 rules!1102))) e!1792025))))

(declare-fun b!2830663 () Bool)

(declare-fun res!1178333 () Bool)

(assert (=> b!2830663 (=> (not res!1178333) (not e!1792027))))

(declare-fun isEmpty!18388 (List!33451) Bool)

(assert (=> b!2830663 (= res!1178333 (not (isEmpty!18388 rules!1102)))))

(declare-fun b!2830664 () Bool)

(declare-fun res!1178330 () Bool)

(assert (=> b!2830664 (=> (not res!1178330) (not e!1792027))))

(declare-fun rulesProduceEachTokenIndividually!1099 (LexerInterface!4581 List!33451 BalanceConc!20314) Bool)

(assert (=> b!2830664 (= res!1178330 (rulesProduceEachTokenIndividually!1099 thiss!11212 rules!1102 v!6247))))

(declare-fun b!2830665 () Bool)

(declare-fun tp!904422 () Bool)

(declare-fun inv!45282 (Conc!10338) Bool)

(assert (=> b!2830665 (= e!1792022 (and (inv!45282 (c!457840 v!6247)) tp!904422))))

(assert (=> b!2830666 (= e!1792025 (and tp!904423 tp!904421))))

(assert (= (and start!274918 res!1178332) b!2830660))

(assert (= (and b!2830660 res!1178334) b!2830663))

(assert (= (and b!2830663 res!1178333) b!2830658))

(assert (= (and b!2830658 res!1178331) b!2830664))

(assert (= (and b!2830664 res!1178330) b!2830661))

(assert (= (and b!2830661 res!1178335) b!2830657))

(assert (= b!2830662 b!2830666))

(assert (= b!2830659 b!2830662))

(assert (= (and start!274918 (is-Cons!33327 rules!1102)) b!2830659))

(assert (= start!274918 b!2830665))

(declare-fun m!3260299 () Bool)

(assert (=> start!274918 m!3260299))

(declare-fun m!3260301 () Bool)

(assert (=> b!2830663 m!3260301))

(declare-fun m!3260303 () Bool)

(assert (=> b!2830658 m!3260303))

(declare-fun m!3260305 () Bool)

(assert (=> b!2830662 m!3260305))

(declare-fun m!3260307 () Bool)

(assert (=> b!2830662 m!3260307))

(declare-fun m!3260309 () Bool)

(assert (=> b!2830660 m!3260309))

(declare-fun m!3260311 () Bool)

(assert (=> b!2830657 m!3260311))

(declare-fun m!3260313 () Bool)

(assert (=> b!2830665 m!3260313))

(declare-fun m!3260315 () Bool)

(assert (=> b!2830664 m!3260315))

(push 1)

(assert (not b!2830659))

(assert (not b_next!82007))

(assert b_and!206963)

(assert (not b_next!82005))

(assert (not b!2830658))

(assert (not b!2830662))

(assert (not b!2830663))

(assert (not b!2830660))

(assert (not b!2830664))

(assert b_and!206965)

(assert (not b!2830657))

(assert (not b!2830665))

(assert (not start!274918))

(check-sat)

(pop 1)

(push 1)

(assert b_and!206965)

(assert b_and!206963)

(assert (not b_next!82005))

(assert (not b_next!82007))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2830716 () Bool)

(declare-fun e!1792067 () Bool)

(assert (=> b!2830716 (= e!1792067 true)))

(declare-fun b!2830715 () Bool)

(declare-fun e!1792066 () Bool)

(assert (=> b!2830715 (= e!1792066 e!1792067)))

(declare-fun b!2830714 () Bool)

(declare-fun e!1792065 () Bool)

(assert (=> b!2830714 (= e!1792065 e!1792066)))

(declare-fun d!821300 () Bool)

(assert (=> d!821300 e!1792065))

(assert (= b!2830715 b!2830716))

(assert (= b!2830714 b!2830715))

(assert (= (and d!821300 (is-Cons!33327 rules!1102)) b!2830714))

(declare-fun lambda!103906 () Int)

(declare-fun order!17753 () Int)

(declare-fun order!17755 () Int)

(declare-fun dynLambda!13999 (Int Int) Int)

(declare-fun dynLambda!14000 (Int Int) Int)

(assert (=> b!2830716 (< (dynLambda!13999 order!17753 (toValue!7017 (transformation!4991 (h!38747 rules!1102)))) (dynLambda!14000 order!17755 lambda!103906))))

(declare-fun order!17757 () Int)

(declare-fun dynLambda!14001 (Int Int) Int)

(assert (=> b!2830716 (< (dynLambda!14001 order!17757 (toChars!6876 (transformation!4991 (h!38747 rules!1102)))) (dynLambda!14000 order!17755 lambda!103906))))

(assert (=> d!821300 true))

(declare-fun e!1792058 () Bool)

(assert (=> d!821300 e!1792058))

(declare-fun res!1178362 () Bool)

(assert (=> d!821300 (=> (not res!1178362) (not e!1792058))))

(declare-fun lt!1009858 () Bool)

(declare-fun forall!6847 (List!33452 Int) Bool)

(declare-fun list!12469 (BalanceConc!20314) List!33452)

(assert (=> d!821300 (= res!1178362 (= lt!1009858 (forall!6847 (list!12469 v!6247) lambda!103906)))))

(declare-fun forall!6848 (BalanceConc!20314 Int) Bool)

(assert (=> d!821300 (= lt!1009858 (forall!6848 v!6247 lambda!103906))))

(assert (=> d!821300 (not (isEmpty!18388 rules!1102))))

(assert (=> d!821300 (= (rulesProduceEachTokenIndividually!1099 thiss!11212 rules!1102 v!6247) lt!1009858)))

(declare-fun b!2830705 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1625 (LexerInterface!4581 List!33451 List!33452) Bool)

(assert (=> b!2830705 (= e!1792058 (= lt!1009858 (rulesProduceEachTokenIndividuallyList!1625 thiss!11212 rules!1102 (list!12469 v!6247))))))

(assert (= (and d!821300 res!1178362) b!2830705))

(declare-fun m!3260343 () Bool)

(assert (=> d!821300 m!3260343))

(assert (=> d!821300 m!3260343))

(declare-fun m!3260345 () Bool)

(assert (=> d!821300 m!3260345))

(declare-fun m!3260347 () Bool)

(assert (=> d!821300 m!3260347))

(assert (=> d!821300 m!3260301))

(assert (=> b!2830705 m!3260343))

(assert (=> b!2830705 m!3260343))

(declare-fun m!3260349 () Bool)

(assert (=> b!2830705 m!3260349))

(assert (=> b!2830664 d!821300))

(declare-fun d!821308 () Bool)

(declare-fun isBalanced!3124 (Conc!10338) Bool)

(assert (=> d!821308 (= (inv!45280 v!6247) (isBalanced!3124 (c!457840 v!6247)))))

(declare-fun bs!518230 () Bool)

(assert (= bs!518230 d!821308))

(declare-fun m!3260351 () Bool)

(assert (=> bs!518230 m!3260351))

(assert (=> start!274918 d!821308))

(declare-fun d!821310 () Bool)

(declare-fun res!1178365 () Bool)

(declare-fun e!1792070 () Bool)

(assert (=> d!821310 (=> (not res!1178365) (not e!1792070))))

(declare-fun rulesValid!1845 (LexerInterface!4581 List!33451) Bool)

(assert (=> d!821310 (= res!1178365 (rulesValid!1845 thiss!11212 rules!1102))))

(assert (=> d!821310 (= (rulesInvariant!3997 thiss!11212 rules!1102) e!1792070)))

(declare-fun b!2830721 () Bool)

(declare-datatypes ((List!33457 0))(
  ( (Nil!33333) (Cons!33333 (h!38753 String!36628) (t!231334 List!33457)) )
))
(declare-fun noDuplicateTag!1841 (LexerInterface!4581 List!33451 List!33457) Bool)

(assert (=> b!2830721 (= e!1792070 (noDuplicateTag!1841 thiss!11212 rules!1102 Nil!33333))))

(assert (= (and d!821310 res!1178365) b!2830721))

(declare-fun m!3260353 () Bool)

(assert (=> d!821310 m!3260353))

(declare-fun m!3260355 () Bool)

(assert (=> b!2830721 m!3260355))

(assert (=> b!2830658 d!821310))

(declare-fun d!821312 () Bool)

(declare-fun lt!1009861 () Int)

(declare-fun size!25953 (List!33452) Int)

(assert (=> d!821312 (= lt!1009861 (size!25953 (list!12469 v!6247)))))

(declare-fun size!25954 (Conc!10338) Int)

(assert (=> d!821312 (= lt!1009861 (size!25954 (c!457840 v!6247)))))

(assert (=> d!821312 (= (size!25950 v!6247) lt!1009861)))

(declare-fun bs!518231 () Bool)

(assert (= bs!518231 d!821312))

(assert (=> bs!518231 m!3260343))

(assert (=> bs!518231 m!3260343))

(declare-fun m!3260357 () Bool)

(assert (=> bs!518231 m!3260357))

(declare-fun m!3260359 () Bool)

(assert (=> bs!518231 m!3260359))

(assert (=> b!2830660 d!821312))

(declare-fun d!821314 () Bool)

(declare-fun c!457846 () Bool)

(assert (=> d!821314 (= c!457846 (is-Node!10338 (c!457840 v!6247)))))

(declare-fun e!1792075 () Bool)

(assert (=> d!821314 (= (inv!45282 (c!457840 v!6247)) e!1792075)))

(declare-fun b!2830728 () Bool)

(declare-fun inv!45286 (Conc!10338) Bool)

(assert (=> b!2830728 (= e!1792075 (inv!45286 (c!457840 v!6247)))))

(declare-fun b!2830729 () Bool)

(declare-fun e!1792076 () Bool)

(assert (=> b!2830729 (= e!1792075 e!1792076)))

(declare-fun res!1178368 () Bool)

(assert (=> b!2830729 (= res!1178368 (not (is-Leaf!15742 (c!457840 v!6247))))))

(assert (=> b!2830729 (=> res!1178368 e!1792076)))

(declare-fun b!2830730 () Bool)

(declare-fun inv!45287 (Conc!10338) Bool)

(assert (=> b!2830730 (= e!1792076 (inv!45287 (c!457840 v!6247)))))

(assert (= (and d!821314 c!457846) b!2830728))

(assert (= (and d!821314 (not c!457846)) b!2830729))

(assert (= (and b!2830729 (not res!1178368)) b!2830730))

(declare-fun m!3260361 () Bool)

(assert (=> b!2830728 m!3260361))

(declare-fun m!3260363 () Bool)

(assert (=> b!2830730 m!3260363))

(assert (=> b!2830665 d!821314))

(declare-fun d!821316 () Bool)

(assert (=> d!821316 (= (isEmpty!18388 rules!1102) (is-Nil!33327 rules!1102))))

(assert (=> b!2830663 d!821316))

(declare-fun d!821318 () Bool)

(assert (=> d!821318 (= (inv!45277 (tag!5495 (h!38747 rules!1102))) (= (mod (str.len (value!160588 (tag!5495 (h!38747 rules!1102)))) 2) 0))))

(assert (=> b!2830662 d!821318))

(declare-fun d!821320 () Bool)

(declare-fun res!1178371 () Bool)

(declare-fun e!1792079 () Bool)

(assert (=> d!821320 (=> (not res!1178371) (not e!1792079))))

(declare-fun semiInverseModEq!2075 (Int Int) Bool)

(assert (=> d!821320 (= res!1178371 (semiInverseModEq!2075 (toChars!6876 (transformation!4991 (h!38747 rules!1102))) (toValue!7017 (transformation!4991 (h!38747 rules!1102)))))))

(assert (=> d!821320 (= (inv!45281 (transformation!4991 (h!38747 rules!1102))) e!1792079)))

(declare-fun b!2830733 () Bool)

(declare-fun equivClasses!1974 (Int Int) Bool)

(assert (=> b!2830733 (= e!1792079 (equivClasses!1974 (toChars!6876 (transformation!4991 (h!38747 rules!1102))) (toValue!7017 (transformation!4991 (h!38747 rules!1102)))))))

(assert (= (and d!821320 res!1178371) b!2830733))

(declare-fun m!3260365 () Bool)

(assert (=> d!821320 m!3260365))

(declare-fun m!3260367 () Bool)

(assert (=> b!2830733 m!3260367))

(assert (=> b!2830662 d!821320))

(declare-fun lt!1009961 () Bool)

(declare-fun d!821322 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!708 (LexerInterface!4581 List!33452 List!33451) Bool)

(declare-fun dropList!1005 (BalanceConc!20314 Int) List!33452)

(assert (=> d!821322 (= lt!1009961 (tokensListTwoByTwoPredicateSeparableList!708 thiss!11212 (dropList!1005 v!6247 from!827) rules!1102))))

(declare-datatypes ((Unit!47338 0))(
  ( (Unit!47339) )
))
(declare-fun lt!1009954 () Unit!47338)

(declare-fun lt!1009936 () Unit!47338)

(assert (=> d!821322 (= lt!1009954 lt!1009936)))

(declare-fun lt!1009929 () List!33452)

(assert (=> d!821322 (rulesProduceEachTokenIndividuallyList!1625 thiss!11212 rules!1102 lt!1009929)))

(declare-fun lt!1009959 () List!33452)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!77 (LexerInterface!4581 List!33451 List!33452 List!33452) Unit!47338)

(assert (=> d!821322 (= lt!1009936 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!77 thiss!11212 rules!1102 lt!1009959 lt!1009929))))

(declare-fun e!1792103 () Bool)

(assert (=> d!821322 e!1792103))

(declare-fun res!1178393 () Bool)

(assert (=> d!821322 (=> (not res!1178393) (not e!1792103))))

(assert (=> d!821322 (= res!1178393 (is-Lexer!4579 thiss!11212))))

(assert (=> d!821322 (= lt!1009929 (dropList!1005 v!6247 from!827))))

(assert (=> d!821322 (= lt!1009959 (list!12469 v!6247))))

(declare-fun lt!1009933 () Unit!47338)

(declare-fun lt!1009945 () Unit!47338)

(assert (=> d!821322 (= lt!1009933 lt!1009945)))

(declare-fun lt!1009949 () List!33452)

(declare-fun subseq!492 (List!33452 List!33452) Bool)

(declare-fun drop!1793 (List!33452 Int) List!33452)

(assert (=> d!821322 (subseq!492 (drop!1793 lt!1009949 from!827) lt!1009949)))

(declare-fun lemmaDropSubSeq!77 (List!33452 Int) Unit!47338)

(assert (=> d!821322 (= lt!1009945 (lemmaDropSubSeq!77 lt!1009949 from!827))))

(declare-fun e!1792102 () Bool)

(assert (=> d!821322 e!1792102))

(declare-fun res!1178391 () Bool)

(assert (=> d!821322 (=> (not res!1178391) (not e!1792102))))

(assert (=> d!821322 (= res!1178391 (>= from!827 0))))

(assert (=> d!821322 (= lt!1009949 (list!12469 v!6247))))

(declare-fun e!1792104 () Bool)

(assert (=> d!821322 (= lt!1009961 e!1792104)))

(declare-fun res!1178392 () Bool)

(assert (=> d!821322 (=> res!1178392 e!1792104)))

(assert (=> d!821322 (= res!1178392 (not (< from!827 (- (size!25950 v!6247) 1))))))

(declare-fun e!1792105 () Bool)

(assert (=> d!821322 e!1792105))

(declare-fun res!1178394 () Bool)

(assert (=> d!821322 (=> (not res!1178394) (not e!1792105))))

(assert (=> d!821322 (= res!1178394 (>= from!827 0))))

(assert (=> d!821322 (= (tokensListTwoByTwoPredicateSeparable!160 thiss!11212 v!6247 from!827 rules!1102) lt!1009961)))

(declare-fun b!2830766 () Bool)

(assert (=> b!2830766 (= e!1792105 (<= from!827 (size!25950 v!6247)))))

(declare-fun b!2830767 () Bool)

(declare-fun e!1792106 () Bool)

(assert (=> b!2830767 (= e!1792104 e!1792106)))

(declare-fun res!1178397 () Bool)

(assert (=> b!2830767 (=> (not res!1178397) (not e!1792106))))

(declare-fun separableTokensPredicate!913 (LexerInterface!4581 Token!9384 Token!9384 List!33451) Bool)

(declare-fun apply!7786 (BalanceConc!20314 Int) Token!9384)

(assert (=> b!2830767 (= res!1178397 (separableTokensPredicate!913 thiss!11212 (apply!7786 v!6247 from!827) (apply!7786 v!6247 (+ from!827 1)) rules!1102))))

(declare-fun lt!1009942 () Unit!47338)

(declare-fun Unit!47340 () Unit!47338)

(assert (=> b!2830767 (= lt!1009942 Unit!47340)))

(declare-fun size!25955 (BalanceConc!20312) Int)

(declare-fun charsOf!3096 (Token!9384) BalanceConc!20312)

(assert (=> b!2830767 (> (size!25955 (charsOf!3096 (apply!7786 v!6247 (+ from!827 1)))) 0)))

(declare-fun lt!1009943 () Unit!47338)

(declare-fun Unit!47341 () Unit!47338)

(assert (=> b!2830767 (= lt!1009943 Unit!47341)))

(declare-fun rulesProduceIndividualToken!2118 (LexerInterface!4581 List!33451 Token!9384) Bool)

(assert (=> b!2830767 (rulesProduceIndividualToken!2118 thiss!11212 rules!1102 (apply!7786 v!6247 (+ from!827 1)))))

(declare-fun lt!1009944 () Unit!47338)

(declare-fun Unit!47342 () Unit!47338)

(assert (=> b!2830767 (= lt!1009944 Unit!47342)))

(assert (=> b!2830767 (rulesProduceIndividualToken!2118 thiss!11212 rules!1102 (apply!7786 v!6247 from!827))))

(declare-fun lt!1009955 () Unit!47338)

(declare-fun lt!1009939 () Unit!47338)

(assert (=> b!2830767 (= lt!1009955 lt!1009939)))

(declare-fun lt!1009947 () Token!9384)

(assert (=> b!2830767 (rulesProduceIndividualToken!2118 thiss!11212 rules!1102 lt!1009947)))

(declare-fun lt!1009932 () List!33452)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!736 (LexerInterface!4581 List!33451 List!33452 Token!9384) Unit!47338)

(assert (=> b!2830767 (= lt!1009939 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!736 thiss!11212 rules!1102 lt!1009932 lt!1009947))))

(assert (=> b!2830767 (= lt!1009947 (apply!7786 v!6247 (+ from!827 1)))))

(assert (=> b!2830767 (= lt!1009932 (list!12469 v!6247))))

(declare-fun lt!1009953 () Unit!47338)

(declare-fun lt!1009952 () Unit!47338)

(assert (=> b!2830767 (= lt!1009953 lt!1009952)))

(declare-fun lt!1009957 () Token!9384)

(assert (=> b!2830767 (rulesProduceIndividualToken!2118 thiss!11212 rules!1102 lt!1009957)))

(declare-fun lt!1009960 () List!33452)

(assert (=> b!2830767 (= lt!1009952 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!736 thiss!11212 rules!1102 lt!1009960 lt!1009957))))

(assert (=> b!2830767 (= lt!1009957 (apply!7786 v!6247 from!827))))

(assert (=> b!2830767 (= lt!1009960 (list!12469 v!6247))))

(declare-fun lt!1009934 () Unit!47338)

(declare-fun lt!1009948 () Unit!47338)

(assert (=> b!2830767 (= lt!1009934 lt!1009948)))

(declare-fun lt!1009951 () List!33452)

(declare-fun lt!1009946 () Int)

(declare-fun tail!4469 (List!33452) List!33452)

(assert (=> b!2830767 (= (tail!4469 (drop!1793 lt!1009951 lt!1009946)) (drop!1793 lt!1009951 (+ lt!1009946 1)))))

(declare-fun lemmaDropTail!879 (List!33452 Int) Unit!47338)

(assert (=> b!2830767 (= lt!1009948 (lemmaDropTail!879 lt!1009951 lt!1009946))))

(assert (=> b!2830767 (= lt!1009946 (+ from!827 1))))

(assert (=> b!2830767 (= lt!1009951 (list!12469 v!6247))))

(declare-fun lt!1009931 () Unit!47338)

(declare-fun lt!1009950 () Unit!47338)

(assert (=> b!2830767 (= lt!1009931 lt!1009950)))

(declare-fun lt!1009930 () List!33452)

(assert (=> b!2830767 (= (tail!4469 (drop!1793 lt!1009930 from!827)) (drop!1793 lt!1009930 (+ from!827 1)))))

(assert (=> b!2830767 (= lt!1009950 (lemmaDropTail!879 lt!1009930 from!827))))

(assert (=> b!2830767 (= lt!1009930 (list!12469 v!6247))))

(declare-fun lt!1009940 () Unit!47338)

(declare-fun lt!1009941 () Unit!47338)

(assert (=> b!2830767 (= lt!1009940 lt!1009941)))

(declare-fun lt!1009937 () List!33452)

(declare-fun lt!1009956 () Int)

(declare-fun head!6244 (List!33452) Token!9384)

(declare-fun apply!7787 (List!33452 Int) Token!9384)

(assert (=> b!2830767 (= (head!6244 (drop!1793 lt!1009937 lt!1009956)) (apply!7787 lt!1009937 lt!1009956))))

(declare-fun lemmaDropApply!991 (List!33452 Int) Unit!47338)

(assert (=> b!2830767 (= lt!1009941 (lemmaDropApply!991 lt!1009937 lt!1009956))))

(assert (=> b!2830767 (= lt!1009956 (+ from!827 1))))

(assert (=> b!2830767 (= lt!1009937 (list!12469 v!6247))))

(declare-fun lt!1009958 () Unit!47338)

(declare-fun lt!1009935 () Unit!47338)

(assert (=> b!2830767 (= lt!1009958 lt!1009935)))

(declare-fun lt!1009938 () List!33452)

(assert (=> b!2830767 (= (head!6244 (drop!1793 lt!1009938 from!827)) (apply!7787 lt!1009938 from!827))))

(assert (=> b!2830767 (= lt!1009935 (lemmaDropApply!991 lt!1009938 from!827))))

(assert (=> b!2830767 (= lt!1009938 (list!12469 v!6247))))

(declare-fun b!2830768 () Bool)

(declare-fun res!1178396 () Bool)

(assert (=> b!2830768 (=> (not res!1178396) (not e!1792103))))

(assert (=> b!2830768 (= res!1178396 (subseq!492 lt!1009929 lt!1009959))))

(declare-fun b!2830769 () Bool)

(assert (=> b!2830769 (= e!1792106 (tokensListTwoByTwoPredicateSeparable!160 thiss!11212 v!6247 (+ from!827 1) rules!1102))))

(declare-fun b!2830770 () Bool)

(assert (=> b!2830770 (= e!1792103 (rulesProduceEachTokenIndividuallyList!1625 thiss!11212 rules!1102 lt!1009959))))

(declare-fun b!2830771 () Bool)

(assert (=> b!2830771 (= e!1792102 (<= from!827 (size!25953 lt!1009949)))))

(declare-fun b!2830772 () Bool)

(declare-fun res!1178395 () Bool)

(assert (=> b!2830772 (=> (not res!1178395) (not e!1792103))))

(assert (=> b!2830772 (= res!1178395 (not (isEmpty!18388 rules!1102)))))

(declare-fun b!2830773 () Bool)

(declare-fun res!1178398 () Bool)

(assert (=> b!2830773 (=> (not res!1178398) (not e!1792103))))

(assert (=> b!2830773 (= res!1178398 (rulesInvariant!3997 thiss!11212 rules!1102))))

(assert (= (and d!821322 res!1178394) b!2830766))

(assert (= (and d!821322 (not res!1178392)) b!2830767))

(assert (= (and b!2830767 res!1178397) b!2830769))

(assert (= (and d!821322 res!1178391) b!2830771))

(assert (= (and d!821322 res!1178393) b!2830772))

(assert (= (and b!2830772 res!1178395) b!2830773))

(assert (= (and b!2830773 res!1178398) b!2830768))

(assert (= (and b!2830768 res!1178396) b!2830770))

(declare-fun m!3260377 () Bool)

(assert (=> b!2830768 m!3260377))

(declare-fun m!3260379 () Bool)

(assert (=> b!2830769 m!3260379))

(declare-fun m!3260381 () Bool)

(assert (=> b!2830767 m!3260381))

(declare-fun m!3260383 () Bool)

(assert (=> b!2830767 m!3260383))

(declare-fun m!3260385 () Bool)

(assert (=> b!2830767 m!3260385))

(declare-fun m!3260387 () Bool)

(assert (=> b!2830767 m!3260387))

(declare-fun m!3260389 () Bool)

(assert (=> b!2830767 m!3260389))

(declare-fun m!3260391 () Bool)

(assert (=> b!2830767 m!3260391))

(declare-fun m!3260393 () Bool)

(assert (=> b!2830767 m!3260393))

(declare-fun m!3260395 () Bool)

(assert (=> b!2830767 m!3260395))

(assert (=> b!2830767 m!3260343))

(declare-fun m!3260397 () Bool)

(assert (=> b!2830767 m!3260397))

(declare-fun m!3260399 () Bool)

(assert (=> b!2830767 m!3260399))

(declare-fun m!3260401 () Bool)

(assert (=> b!2830767 m!3260401))

(assert (=> b!2830767 m!3260397))

(declare-fun m!3260403 () Bool)

(assert (=> b!2830767 m!3260403))

(declare-fun m!3260405 () Bool)

(assert (=> b!2830767 m!3260405))

(declare-fun m!3260407 () Bool)

(assert (=> b!2830767 m!3260407))

(declare-fun m!3260409 () Bool)

(assert (=> b!2830767 m!3260409))

(assert (=> b!2830767 m!3260385))

(assert (=> b!2830767 m!3260401))

(assert (=> b!2830767 m!3260381))

(declare-fun m!3260411 () Bool)

(assert (=> b!2830767 m!3260411))

(declare-fun m!3260413 () Bool)

(assert (=> b!2830767 m!3260413))

(declare-fun m!3260415 () Bool)

(assert (=> b!2830767 m!3260415))

(declare-fun m!3260417 () Bool)

(assert (=> b!2830767 m!3260417))

(declare-fun m!3260419 () Bool)

(assert (=> b!2830767 m!3260419))

(declare-fun m!3260421 () Bool)

(assert (=> b!2830767 m!3260421))

(assert (=> b!2830767 m!3260407))

(declare-fun m!3260423 () Bool)

(assert (=> b!2830767 m!3260423))

(assert (=> b!2830767 m!3260401))

(declare-fun m!3260425 () Bool)

(assert (=> b!2830767 m!3260425))

(declare-fun m!3260427 () Bool)

(assert (=> b!2830767 m!3260427))

(declare-fun m!3260429 () Bool)

(assert (=> b!2830767 m!3260429))

(assert (=> b!2830767 m!3260413))

(assert (=> b!2830767 m!3260397))

(assert (=> b!2830767 m!3260389))

(declare-fun m!3260431 () Bool)

(assert (=> b!2830767 m!3260431))

(declare-fun m!3260433 () Bool)

(assert (=> b!2830767 m!3260433))

(assert (=> b!2830767 m!3260397))

(declare-fun m!3260435 () Bool)

(assert (=> b!2830771 m!3260435))

(assert (=> b!2830772 m!3260301))

(assert (=> b!2830766 m!3260309))

(assert (=> d!821322 m!3260309))

(declare-fun m!3260437 () Bool)

(assert (=> d!821322 m!3260437))

(declare-fun m!3260439 () Bool)

(assert (=> d!821322 m!3260439))

(declare-fun m!3260441 () Bool)

(assert (=> d!821322 m!3260441))

(assert (=> d!821322 m!3260439))

(declare-fun m!3260443 () Bool)

(assert (=> d!821322 m!3260443))

(declare-fun m!3260445 () Bool)

(assert (=> d!821322 m!3260445))

(declare-fun m!3260447 () Bool)

(assert (=> d!821322 m!3260447))

(assert (=> d!821322 m!3260343))

(assert (=> d!821322 m!3260445))

(declare-fun m!3260449 () Bool)

(assert (=> d!821322 m!3260449))

(assert (=> b!2830773 m!3260303))

(declare-fun m!3260451 () Bool)

(assert (=> b!2830770 m!3260451))

(assert (=> b!2830657 d!821322))

(declare-fun b!2830784 () Bool)

(declare-fun b_free!81309 () Bool)

(declare-fun b_next!82013 () Bool)

(assert (=> b!2830784 (= b_free!81309 (not b_next!82013))))

(declare-fun tp!904449 () Bool)

(declare-fun b_and!206971 () Bool)

(assert (=> b!2830784 (= tp!904449 b_and!206971)))

(declare-fun b_free!81311 () Bool)

(declare-fun b_next!82015 () Bool)

(assert (=> b!2830784 (= b_free!81311 (not b_next!82015))))

(declare-fun tp!904448 () Bool)

(declare-fun b_and!206973 () Bool)

(assert (=> b!2830784 (= tp!904448 b_and!206973)))

(declare-fun e!1792115 () Bool)

(assert (=> b!2830784 (= e!1792115 (and tp!904449 tp!904448))))

(declare-fun b!2830783 () Bool)

(declare-fun tp!904447 () Bool)

(declare-fun e!1792117 () Bool)

(assert (=> b!2830783 (= e!1792117 (and tp!904447 (inv!45277 (tag!5495 (h!38747 (t!231320 rules!1102)))) (inv!45281 (transformation!4991 (h!38747 (t!231320 rules!1102)))) e!1792115))))

(declare-fun b!2830782 () Bool)

(declare-fun e!1792118 () Bool)

(declare-fun tp!904450 () Bool)

(assert (=> b!2830782 (= e!1792118 (and e!1792117 tp!904450))))

(assert (=> b!2830659 (= tp!904420 e!1792118)))

(assert (= b!2830783 b!2830784))

(assert (= b!2830782 b!2830783))

(assert (= (and b!2830659 (is-Cons!33327 (t!231320 rules!1102))) b!2830782))

(declare-fun m!3260453 () Bool)

(assert (=> b!2830783 m!3260453))

(declare-fun m!3260455 () Bool)

(assert (=> b!2830783 m!3260455))

(declare-fun tp!904457 () Bool)

(declare-fun b!2830793 () Bool)

(declare-fun e!1792124 () Bool)

(declare-fun tp!904458 () Bool)

(assert (=> b!2830793 (= e!1792124 (and (inv!45282 (left!25149 (c!457840 v!6247))) tp!904457 (inv!45282 (right!25479 (c!457840 v!6247))) tp!904458))))

(declare-fun b!2830795 () Bool)

(declare-fun e!1792123 () Bool)

(declare-fun tp!904459 () Bool)

(assert (=> b!2830795 (= e!1792123 tp!904459)))

(declare-fun b!2830794 () Bool)

(declare-fun inv!45288 (IArray!20681) Bool)

(assert (=> b!2830794 (= e!1792124 (and (inv!45288 (xs!13450 (c!457840 v!6247))) e!1792123))))

(assert (=> b!2830665 (= tp!904422 (and (inv!45282 (c!457840 v!6247)) e!1792124))))

(assert (= (and b!2830665 (is-Node!10338 (c!457840 v!6247))) b!2830793))

(assert (= b!2830794 b!2830795))

(assert (= (and b!2830665 (is-Leaf!15742 (c!457840 v!6247))) b!2830794))

(declare-fun m!3260457 () Bool)

(assert (=> b!2830793 m!3260457))

(declare-fun m!3260459 () Bool)

(assert (=> b!2830793 m!3260459))

(declare-fun m!3260461 () Bool)

(assert (=> b!2830794 m!3260461))

(assert (=> b!2830665 m!3260313))

(declare-fun e!1792127 () Bool)

(assert (=> b!2830662 (= tp!904419 e!1792127)))

(declare-fun b!2830809 () Bool)

(declare-fun tp!904473 () Bool)

(declare-fun tp!904470 () Bool)

(assert (=> b!2830809 (= e!1792127 (and tp!904473 tp!904470))))

(declare-fun b!2830808 () Bool)

(declare-fun tp!904471 () Bool)

(assert (=> b!2830808 (= e!1792127 tp!904471)))

(declare-fun b!2830807 () Bool)

(declare-fun tp!904472 () Bool)

(declare-fun tp!904474 () Bool)

(assert (=> b!2830807 (= e!1792127 (and tp!904472 tp!904474))))

(declare-fun b!2830806 () Bool)

(declare-fun tp_is_empty!14561 () Bool)

(assert (=> b!2830806 (= e!1792127 tp_is_empty!14561)))

(assert (= (and b!2830662 (is-ElementMatch!8382 (regex!4991 (h!38747 rules!1102)))) b!2830806))

(assert (= (and b!2830662 (is-Concat!13603 (regex!4991 (h!38747 rules!1102)))) b!2830807))

(assert (= (and b!2830662 (is-Star!8382 (regex!4991 (h!38747 rules!1102)))) b!2830808))

(assert (= (and b!2830662 (is-Union!8382 (regex!4991 (h!38747 rules!1102)))) b!2830809))

(push 1)

(assert (not b!2830795))

(assert (not b_next!82015))

(assert (not b!2830782))

(assert (not b_next!82007))

(assert (not b!2830771))

(assert (not b!2830773))

(assert (not b!2830728))

(assert (not b_next!82005))

(assert (not d!821322))

(assert (not b!2830730))

(assert (not b!2830772))

(assert b_and!206965)

(assert (not d!821312))

(assert (not b!2830714))

(assert (not d!821300))

(assert b_and!206971)

(assert (not d!821320))

(assert tp_is_empty!14561)

(assert (not d!821308))

(assert (not b!2830793))

(assert (not b!2830769))

(assert (not b!2830767))

(assert b_and!206963)

(assert (not b!2830808))

(assert (not b!2830783))

(assert (not b!2830809))

(assert (not b!2830768))

(assert (not b!2830766))

(assert b_and!206973)

(assert (not b!2830705))

(assert (not b!2830721))

(assert (not b!2830770))

(assert (not b!2830794))

(assert (not d!821310))

(assert (not b!2830665))

(assert (not b_next!82013))

(assert (not b!2830733))

(assert (not b!2830807))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!82015))

(assert b_and!206971)

(assert (not b_next!82007))

(assert b_and!206963)

(assert (not b_next!82005))

(assert b_and!206973)

(assert b_and!206965)

(assert (not b_next!82013))

(check-sat)

(pop 1)

