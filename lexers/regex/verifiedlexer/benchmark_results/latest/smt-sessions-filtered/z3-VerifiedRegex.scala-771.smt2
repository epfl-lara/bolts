; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43526 () Bool)

(assert start!43526)

(declare-fun b!458459 () Bool)

(declare-fun b_free!12793 () Bool)

(declare-fun b_next!12793 () Bool)

(assert (=> b!458459 (= b_free!12793 (not b_next!12793))))

(declare-fun tp!127028 () Bool)

(declare-fun b_and!49281 () Bool)

(assert (=> b!458459 (= tp!127028 b_and!49281)))

(declare-fun b_free!12795 () Bool)

(declare-fun b_next!12795 () Bool)

(assert (=> b!458459 (= b_free!12795 (not b_next!12795))))

(declare-fun tp!127036 () Bool)

(declare-fun b_and!49283 () Bool)

(assert (=> b!458459 (= tp!127036 b_and!49283)))

(declare-fun b!458488 () Bool)

(declare-fun b_free!12797 () Bool)

(declare-fun b_next!12797 () Bool)

(assert (=> b!458488 (= b_free!12797 (not b_next!12797))))

(declare-fun tp!127031 () Bool)

(declare-fun b_and!49285 () Bool)

(assert (=> b!458488 (= tp!127031 b_and!49285)))

(declare-fun b_free!12799 () Bool)

(declare-fun b_next!12799 () Bool)

(assert (=> b!458488 (= b_free!12799 (not b_next!12799))))

(declare-fun tp!127032 () Bool)

(declare-fun b_and!49287 () Bool)

(assert (=> b!458488 (= tp!127032 b_and!49287)))

(declare-fun b!458485 () Bool)

(declare-fun b_free!12801 () Bool)

(declare-fun b_next!12801 () Bool)

(assert (=> b!458485 (= b_free!12801 (not b_next!12801))))

(declare-fun tp!127038 () Bool)

(declare-fun b_and!49289 () Bool)

(assert (=> b!458485 (= tp!127038 b_and!49289)))

(declare-fun b_free!12803 () Bool)

(declare-fun b_next!12803 () Bool)

(assert (=> b!458485 (= b_free!12803 (not b_next!12803))))

(declare-fun tp!127034 () Bool)

(declare-fun b_and!49291 () Bool)

(assert (=> b!458485 (= tp!127034 b_and!49291)))

(declare-fun bs!56876 () Bool)

(declare-fun b!458467 () Bool)

(declare-fun b!458456 () Bool)

(assert (= bs!56876 (and b!458467 b!458456)))

(declare-fun lambda!13458 () Int)

(declare-fun lambda!13457 () Int)

(assert (=> bs!56876 (not (= lambda!13458 lambda!13457))))

(declare-fun b!458500 () Bool)

(declare-fun e!280700 () Bool)

(assert (=> b!458500 (= e!280700 true)))

(declare-fun b!458499 () Bool)

(declare-fun e!280699 () Bool)

(assert (=> b!458499 (= e!280699 e!280700)))

(declare-fun b!458498 () Bool)

(declare-fun e!280698 () Bool)

(assert (=> b!458498 (= e!280698 e!280699)))

(assert (=> b!458467 e!280698))

(assert (= b!458499 b!458500))

(assert (= b!458498 b!458499))

(declare-datatypes ((List!4458 0))(
  ( (Nil!4448) (Cons!4448 (h!9845 (_ BitVec 16)) (t!71690 List!4458)) )
))
(declare-datatypes ((TokenValue!887 0))(
  ( (FloatLiteralValue!1774 (text!6654 List!4458)) (TokenValueExt!886 (__x!3261 Int)) (Broken!4435 (value!28942 List!4458)) (Object!896) (End!887) (Def!887) (Underscore!887) (Match!887) (Else!887) (Error!887) (Case!887) (If!887) (Extends!887) (Abstract!887) (Class!887) (Val!887) (DelimiterValue!1774 (del!947 List!4458)) (KeywordValue!893 (value!28943 List!4458)) (CommentValue!1774 (value!28944 List!4458)) (WhitespaceValue!1774 (value!28945 List!4458)) (IndentationValue!887 (value!28946 List!4458)) (String!5514) (Int32!887) (Broken!4436 (value!28947 List!4458)) (Boolean!888) (Unit!8050) (OperatorValue!890 (op!947 List!4458)) (IdentifierValue!1774 (value!28948 List!4458)) (IdentifierValue!1775 (value!28949 List!4458)) (WhitespaceValue!1775 (value!28950 List!4458)) (True!1774) (False!1774) (Broken!4437 (value!28951 List!4458)) (Broken!4438 (value!28952 List!4458)) (True!1775) (RightBrace!887) (RightBracket!887) (Colon!887) (Null!887) (Comma!887) (LeftBracket!887) (False!1775) (LeftBrace!887) (ImaginaryLiteralValue!887 (text!6655 List!4458)) (StringLiteralValue!2661 (value!28953 List!4458)) (EOFValue!887 (value!28954 List!4458)) (IdentValue!887 (value!28955 List!4458)) (DelimiterValue!1775 (value!28956 List!4458)) (DedentValue!887 (value!28957 List!4458)) (NewLineValue!887 (value!28958 List!4458)) (IntegerValue!2661 (value!28959 (_ BitVec 32)) (text!6656 List!4458)) (IntegerValue!2662 (value!28960 Int) (text!6657 List!4458)) (Times!887) (Or!887) (Equal!887) (Minus!887) (Broken!4439 (value!28961 List!4458)) (And!887) (Div!887) (LessEqual!887) (Mod!887) (Concat!1976) (Not!887) (Plus!887) (SpaceValue!887 (value!28962 List!4458)) (IntegerValue!2663 (value!28963 Int) (text!6658 List!4458)) (StringLiteralValue!2662 (text!6659 List!4458)) (FloatLiteralValue!1775 (text!6660 List!4458)) (BytesLiteralValue!887 (value!28964 List!4458)) (CommentValue!1775 (value!28965 List!4458)) (StringLiteralValue!2663 (value!28966 List!4458)) (ErrorTokenValue!887 (msg!948 List!4458)) )
))
(declare-datatypes ((C!3100 0))(
  ( (C!3101 (val!1436 Int)) )
))
(declare-datatypes ((List!4459 0))(
  ( (Nil!4449) (Cons!4449 (h!9846 C!3100) (t!71691 List!4459)) )
))
(declare-datatypes ((IArray!3105 0))(
  ( (IArray!3106 (innerList!1610 List!4459)) )
))
(declare-datatypes ((Conc!1552 0))(
  ( (Node!1552 (left!3755 Conc!1552) (right!4085 Conc!1552) (csize!3334 Int) (cheight!1763 Int)) (Leaf!2324 (xs!4183 IArray!3105) (csize!3335 Int)) (Empty!1552) )
))
(declare-datatypes ((BalanceConc!3112 0))(
  ( (BalanceConc!3113 (c!92502 Conc!1552)) )
))
(declare-datatypes ((TokenValueInjection!1546 0))(
  ( (TokenValueInjection!1547 (toValue!1684 Int) (toChars!1543 Int)) )
))
(declare-datatypes ((String!5515 0))(
  ( (String!5516 (value!28967 String)) )
))
(declare-datatypes ((Regex!1089 0))(
  ( (ElementMatch!1089 (c!92503 C!3100)) (Concat!1977 (regOne!2690 Regex!1089) (regTwo!2690 Regex!1089)) (EmptyExpr!1089) (Star!1089 (reg!1418 Regex!1089)) (EmptyLang!1089) (Union!1089 (regOne!2691 Regex!1089) (regTwo!2691 Regex!1089)) )
))
(declare-datatypes ((Rule!1530 0))(
  ( (Rule!1531 (regex!865 Regex!1089) (tag!1125 String!5515) (isSeparator!865 Bool) (transformation!865 TokenValueInjection!1546)) )
))
(declare-datatypes ((List!4460 0))(
  ( (Nil!4450) (Cons!4450 (h!9847 Rule!1530) (t!71692 List!4460)) )
))
(declare-fun rules!1920 () List!4460)

(get-info :version)

(assert (= (and b!458467 ((_ is Cons!4450) rules!1920)) b!458498))

(declare-fun order!3951 () Int)

(declare-fun order!3949 () Int)

(declare-fun dynLambda!2706 (Int Int) Int)

(declare-fun dynLambda!2707 (Int Int) Int)

(assert (=> b!458500 (< (dynLambda!2706 order!3949 (toValue!1684 (transformation!865 (h!9847 rules!1920)))) (dynLambda!2707 order!3951 lambda!13458))))

(declare-fun order!3953 () Int)

(declare-fun dynLambda!2708 (Int Int) Int)

(assert (=> b!458500 (< (dynLambda!2708 order!3953 (toChars!1543 (transformation!865 (h!9847 rules!1920)))) (dynLambda!2707 order!3951 lambda!13458))))

(assert (=> b!458467 true))

(declare-fun b!458455 () Bool)

(declare-fun res!203890 () Bool)

(declare-fun e!280683 () Bool)

(assert (=> b!458455 (=> (not res!203890) (not e!280683))))

(declare-fun sepAndNonSepRulesDisjointChars!454 (List!4460 List!4460) Bool)

(assert (=> b!458455 (= res!203890 (sepAndNonSepRulesDisjointChars!454 rules!1920 rules!1920))))

(declare-fun res!203891 () Bool)

(assert (=> b!458456 (=> (not res!203891) (not e!280683))))

(declare-datatypes ((Token!1474 0))(
  ( (Token!1475 (value!28968 TokenValue!887) (rule!1560 Rule!1530) (size!3643 Int) (originalCharacters!908 List!4459)) )
))
(declare-datatypes ((List!4461 0))(
  ( (Nil!4451) (Cons!4451 (h!9848 Token!1474) (t!71693 List!4461)) )
))
(declare-fun tokens!465 () List!4461)

(declare-fun forall!1294 (List!4461 Int) Bool)

(assert (=> b!458456 (= res!203891 (forall!1294 tokens!465 lambda!13457))))

(declare-fun b!458457 () Bool)

(declare-fun res!203892 () Bool)

(declare-fun e!280665 () Bool)

(assert (=> b!458457 (=> (not res!203892) (not e!280665))))

(declare-datatypes ((LexerInterface!751 0))(
  ( (LexerInterfaceExt!748 (__x!3262 Int)) (Lexer!749) )
))
(declare-fun thiss!17480 () LexerInterface!751)

(declare-fun rulesInvariant!717 (LexerInterface!751 List!4460) Bool)

(assert (=> b!458457 (= res!203892 (rulesInvariant!717 thiss!17480 rules!1920))))

(declare-fun b!458458 () Bool)

(declare-fun e!280674 () Bool)

(declare-fun e!280673 () Bool)

(assert (=> b!458458 (= e!280674 e!280673)))

(declare-fun res!203878 () Bool)

(assert (=> b!458458 (=> (not res!203878) (not e!280673))))

(declare-datatypes ((tuple2!5422 0))(
  ( (tuple2!5423 (_1!2927 Token!1474) (_2!2927 List!4459)) )
))
(declare-datatypes ((Option!1164 0))(
  ( (None!1163) (Some!1163 (v!15500 tuple2!5422)) )
))
(declare-fun lt!204356 () Option!1164)

(declare-fun isDefined!1003 (Option!1164) Bool)

(assert (=> b!458458 (= res!203878 (isDefined!1003 lt!204356))))

(declare-fun lt!204370 () List!4459)

(declare-fun maxPrefix!467 (LexerInterface!751 List!4460 List!4459) Option!1164)

(assert (=> b!458458 (= lt!204356 (maxPrefix!467 thiss!17480 rules!1920 lt!204370))))

(declare-fun e!280690 () Bool)

(assert (=> b!458459 (= e!280690 (and tp!127028 tp!127036))))

(declare-fun b!458460 () Bool)

(declare-fun res!203885 () Bool)

(assert (=> b!458460 (=> (not res!203885) (not e!280683))))

(declare-fun separatorToken!170 () Token!1474)

(declare-fun rulesProduceIndividualToken!500 (LexerInterface!751 List!4460 Token!1474) Bool)

(assert (=> b!458460 (= res!203885 (rulesProduceIndividualToken!500 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!458462 () Bool)

(declare-fun res!203887 () Bool)

(assert (=> b!458462 (=> (not res!203887) (not e!280683))))

(assert (=> b!458462 (= res!203887 (isSeparator!865 (rule!1560 separatorToken!170)))))

(declare-fun b!458463 () Bool)

(declare-fun e!280685 () Bool)

(declare-fun e!280671 () Bool)

(assert (=> b!458463 (= e!280685 e!280671)))

(declare-fun res!203870 () Bool)

(assert (=> b!458463 (=> res!203870 e!280671)))

(declare-fun lt!204354 () Bool)

(assert (=> b!458463 (= res!203870 lt!204354)))

(declare-fun e!280691 () Bool)

(assert (=> b!458463 e!280691))

(declare-fun res!203879 () Bool)

(assert (=> b!458463 (=> (not res!203879) (not e!280691))))

(declare-fun lt!204372 () tuple2!5422)

(assert (=> b!458463 (= res!203879 (= (_1!2927 lt!204372) (h!9848 tokens!465)))))

(declare-fun lt!204361 () Option!1164)

(declare-fun get!1633 (Option!1164) tuple2!5422)

(assert (=> b!458463 (= lt!204372 (get!1633 lt!204361))))

(assert (=> b!458463 (isDefined!1003 lt!204361)))

(declare-fun lt!204364 () List!4459)

(assert (=> b!458463 (= lt!204361 (maxPrefix!467 thiss!17480 rules!1920 lt!204364))))

(declare-fun b!458464 () Bool)

(declare-fun e!280669 () Bool)

(declare-fun e!280676 () Bool)

(assert (=> b!458464 (= e!280669 e!280676)))

(declare-fun res!203888 () Bool)

(assert (=> b!458464 (=> res!203888 e!280676)))

(declare-fun e!280675 () Bool)

(assert (=> b!458464 (= res!203888 e!280675)))

(declare-fun res!203886 () Bool)

(assert (=> b!458464 (=> (not res!203886) (not e!280675))))

(assert (=> b!458464 (= res!203886 (not lt!204354))))

(declare-fun lt!204355 () List!4459)

(assert (=> b!458464 (= lt!204354 (= lt!204370 lt!204355))))

(declare-fun b!458465 () Bool)

(declare-fun res!203872 () Bool)

(declare-fun e!280666 () Bool)

(assert (=> b!458465 (=> res!203872 e!280666)))

(assert (=> b!458465 (= res!203872 (not (rulesProduceIndividualToken!500 thiss!17480 rules!1920 (h!9848 tokens!465))))))

(declare-fun b!458466 () Bool)

(assert (=> b!458466 (= e!280676 e!280666)))

(declare-fun res!203889 () Bool)

(assert (=> b!458466 (=> res!203889 e!280666)))

(declare-fun lt!204368 () List!4459)

(declare-fun lt!204365 () List!4459)

(assert (=> b!458466 (= res!203889 (or (not (= lt!204365 lt!204368)) (not (= lt!204368 lt!204364)) (not (= lt!204365 lt!204364))))))

(declare-fun printList!425 (LexerInterface!751 List!4461) List!4459)

(assert (=> b!458466 (= lt!204368 (printList!425 thiss!17480 (Cons!4451 (h!9848 tokens!465) Nil!4451)))))

(declare-fun lt!204369 () BalanceConc!3112)

(declare-fun list!1977 (BalanceConc!3112) List!4459)

(assert (=> b!458466 (= lt!204365 (list!1977 lt!204369))))

(declare-datatypes ((IArray!3107 0))(
  ( (IArray!3108 (innerList!1611 List!4461)) )
))
(declare-datatypes ((Conc!1553 0))(
  ( (Node!1553 (left!3756 Conc!1553) (right!4086 Conc!1553) (csize!3336 Int) (cheight!1764 Int)) (Leaf!2325 (xs!4184 IArray!3107) (csize!3337 Int)) (Empty!1553) )
))
(declare-datatypes ((BalanceConc!3114 0))(
  ( (BalanceConc!3115 (c!92504 Conc!1553)) )
))
(declare-fun lt!204360 () BalanceConc!3114)

(declare-fun printTailRec!437 (LexerInterface!751 BalanceConc!3114 Int BalanceConc!3112) BalanceConc!3112)

(assert (=> b!458466 (= lt!204369 (printTailRec!437 thiss!17480 lt!204360 0 (BalanceConc!3113 Empty!1552)))))

(declare-fun print!476 (LexerInterface!751 BalanceConc!3114) BalanceConc!3112)

(assert (=> b!458466 (= lt!204369 (print!476 thiss!17480 lt!204360))))

(declare-fun singletonSeq!411 (Token!1474) BalanceConc!3114)

(assert (=> b!458466 (= lt!204360 (singletonSeq!411 (h!9848 tokens!465)))))

(assert (=> b!458467 (= e!280666 e!280685)))

(declare-fun res!203881 () Bool)

(assert (=> b!458467 (=> res!203881 e!280685)))

(declare-datatypes ((tuple2!5424 0))(
  ( (tuple2!5425 (_1!2928 Token!1474) (_2!2928 BalanceConc!3112)) )
))
(declare-datatypes ((Option!1165 0))(
  ( (None!1164) (Some!1164 (v!15501 tuple2!5424)) )
))
(declare-fun isDefined!1004 (Option!1165) Bool)

(declare-fun maxPrefixZipperSequence!430 (LexerInterface!751 List!4460 BalanceConc!3112) Option!1165)

(declare-fun seqFromList!1095 (List!4459) BalanceConc!3112)

(assert (=> b!458467 (= res!203881 (not (isDefined!1004 (maxPrefixZipperSequence!430 thiss!17480 rules!1920 (seqFromList!1095 (originalCharacters!908 (h!9848 tokens!465)))))))))

(declare-datatypes ((Unit!8051 0))(
  ( (Unit!8052) )
))
(declare-fun lt!204367 () Unit!8051)

(declare-fun forallContained!418 (List!4461 Int Token!1474) Unit!8051)

(assert (=> b!458467 (= lt!204367 (forallContained!418 tokens!465 lambda!13458 (h!9848 tokens!465)))))

(assert (=> b!458467 (= lt!204364 (originalCharacters!908 (h!9848 tokens!465)))))

(declare-fun b!458468 () Bool)

(declare-fun e!280678 () Bool)

(declare-fun ListPrimitiveSize!36 (List!4461) Int)

(assert (=> b!458468 (= e!280678 (< (ListPrimitiveSize!36 (t!71693 tokens!465)) (ListPrimitiveSize!36 tokens!465)))))

(declare-fun b!458469 () Bool)

(declare-fun res!203875 () Bool)

(assert (=> b!458469 (=> (not res!203875) (not e!280683))))

(assert (=> b!458469 (= res!203875 ((_ is Cons!4451) tokens!465))))

(declare-fun e!280684 () Bool)

(declare-fun tp!127030 () Bool)

(declare-fun e!280670 () Bool)

(declare-fun b!458470 () Bool)

(declare-fun inv!5527 (String!5515) Bool)

(declare-fun inv!5530 (TokenValueInjection!1546) Bool)

(assert (=> b!458470 (= e!280684 (and tp!127030 (inv!5527 (tag!1125 (rule!1560 separatorToken!170))) (inv!5530 (transformation!865 (rule!1560 separatorToken!170))) e!280670))))

(declare-fun tp!127037 () Bool)

(declare-fun e!280677 () Bool)

(declare-fun b!458471 () Bool)

(assert (=> b!458471 (= e!280677 (and tp!127037 (inv!5527 (tag!1125 (h!9847 rules!1920))) (inv!5530 (transformation!865 (h!9847 rules!1920))) e!280690))))

(declare-fun b!458472 () Bool)

(declare-fun tp!127039 () Bool)

(declare-fun e!280682 () Bool)

(declare-fun inv!21 (TokenValue!887) Bool)

(assert (=> b!458472 (= e!280682 (and (inv!21 (value!28968 separatorToken!170)) e!280684 tp!127039))))

(declare-fun b!458473 () Bool)

(declare-fun res!203877 () Bool)

(assert (=> b!458473 (=> (not res!203877) (not e!280665))))

(declare-fun isEmpty!3426 (List!4460) Bool)

(assert (=> b!458473 (= res!203877 (not (isEmpty!3426 rules!1920)))))

(declare-fun b!458474 () Bool)

(declare-fun e!280667 () Bool)

(declare-fun tp!127035 () Bool)

(assert (=> b!458474 (= e!280667 (and e!280677 tp!127035))))

(declare-fun e!280679 () Bool)

(declare-fun tp!127029 () Bool)

(declare-fun b!458475 () Bool)

(declare-fun e!280672 () Bool)

(declare-fun inv!5531 (Token!1474) Bool)

(assert (=> b!458475 (= e!280672 (and (inv!5531 (h!9848 tokens!465)) e!280679 tp!127029))))

(declare-fun b!458476 () Bool)

(assert (=> b!458476 (= e!280671 e!280678)))

(declare-fun res!203882 () Bool)

(assert (=> b!458476 (=> res!203882 e!280678)))

(declare-fun lt!204371 () BalanceConc!3114)

(declare-fun rulesProduceEachTokenIndividually!543 (LexerInterface!751 List!4460 BalanceConc!3114) Bool)

(assert (=> b!458476 (= res!203882 (not (rulesProduceEachTokenIndividually!543 thiss!17480 rules!1920 lt!204371)))))

(assert (=> b!458476 e!280674))

(declare-fun res!203869 () Bool)

(assert (=> b!458476 (=> res!203869 e!280674)))

(declare-fun isEmpty!3427 (List!4461) Bool)

(assert (=> b!458476 (= res!203869 (isEmpty!3427 tokens!465))))

(declare-fun lt!204358 () Unit!8051)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!266 (LexerInterface!751 List!4460 List!4461 Token!1474) Unit!8051)

(assert (=> b!458476 (= lt!204358 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!266 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!458477 () Bool)

(declare-fun res!203876 () Bool)

(declare-fun e!280689 () Bool)

(assert (=> b!458477 (=> (not res!203876) (not e!280689))))

(declare-fun lt!204363 () List!4459)

(assert (=> b!458477 (= res!203876 (= (list!1977 (seqFromList!1095 lt!204370)) lt!204363))))

(declare-fun b!458478 () Bool)

(assert (=> b!458478 (= e!280665 e!280683)))

(declare-fun res!203893 () Bool)

(assert (=> b!458478 (=> (not res!203893) (not e!280683))))

(declare-fun lt!204352 () BalanceConc!3114)

(assert (=> b!458478 (= res!203893 (rulesProduceEachTokenIndividually!543 thiss!17480 rules!1920 lt!204352))))

(declare-fun seqFromList!1096 (List!4461) BalanceConc!3114)

(assert (=> b!458478 (= lt!204352 (seqFromList!1096 tokens!465))))

(declare-fun res!203880 () Bool)

(assert (=> start!43526 (=> (not res!203880) (not e!280665))))

(assert (=> start!43526 (= res!203880 ((_ is Lexer!749) thiss!17480))))

(assert (=> start!43526 e!280665))

(assert (=> start!43526 true))

(assert (=> start!43526 e!280667))

(assert (=> start!43526 (and (inv!5531 separatorToken!170) e!280682)))

(assert (=> start!43526 e!280672))

(declare-fun b!458461 () Bool)

(assert (=> b!458461 (= e!280689 (not e!280669))))

(declare-fun res!203873 () Bool)

(assert (=> b!458461 (=> res!203873 e!280669)))

(declare-fun lt!204357 () List!4459)

(declare-fun printWithSeparatorTokenWhenNeededRec!424 (LexerInterface!751 List!4460 BalanceConc!3114 Token!1474 Int) BalanceConc!3112)

(assert (=> b!458461 (= res!203873 (not (= lt!204357 (list!1977 (printWithSeparatorTokenWhenNeededRec!424 thiss!17480 rules!1920 lt!204371 separatorToken!170 0)))))))

(assert (=> b!458461 (= lt!204371 (seqFromList!1096 (t!71693 tokens!465)))))

(declare-fun lt!204362 () List!4459)

(assert (=> b!458461 (= lt!204362 lt!204355)))

(declare-fun lt!204359 () List!4459)

(declare-fun ++!1298 (List!4459 List!4459) List!4459)

(assert (=> b!458461 (= lt!204355 (++!1298 lt!204364 lt!204359))))

(declare-fun lt!204366 () List!4459)

(assert (=> b!458461 (= lt!204362 (++!1298 (++!1298 lt!204364 lt!204366) lt!204357))))

(declare-fun lt!204353 () Unit!8051)

(declare-fun lemmaConcatAssociativity!602 (List!4459 List!4459 List!4459) Unit!8051)

(assert (=> b!458461 (= lt!204353 (lemmaConcatAssociativity!602 lt!204364 lt!204366 lt!204357))))

(declare-fun charsOf!508 (Token!1474) BalanceConc!3112)

(assert (=> b!458461 (= lt!204364 (list!1977 (charsOf!508 (h!9848 tokens!465))))))

(assert (=> b!458461 (= lt!204359 (++!1298 lt!204366 lt!204357))))

(declare-fun printWithSeparatorTokenWhenNeededList!432 (LexerInterface!751 List!4460 List!4461 Token!1474) List!4459)

(assert (=> b!458461 (= lt!204357 (printWithSeparatorTokenWhenNeededList!432 thiss!17480 rules!1920 (t!71693 tokens!465) separatorToken!170))))

(assert (=> b!458461 (= lt!204366 (list!1977 (charsOf!508 separatorToken!170)))))

(declare-fun b!458479 () Bool)

(declare-fun e!280686 () Bool)

(declare-fun tp!127027 () Bool)

(assert (=> b!458479 (= e!280679 (and (inv!21 (value!28968 (h!9848 tokens!465))) e!280686 tp!127027))))

(declare-fun b!458480 () Bool)

(declare-fun res!203884 () Bool)

(assert (=> b!458480 (=> res!203884 e!280666)))

(declare-fun isEmpty!3428 (BalanceConc!3114) Bool)

(declare-datatypes ((tuple2!5426 0))(
  ( (tuple2!5427 (_1!2929 BalanceConc!3114) (_2!2929 BalanceConc!3112)) )
))
(declare-fun lex!543 (LexerInterface!751 List!4460 BalanceConc!3112) tuple2!5426)

(assert (=> b!458480 (= res!203884 (isEmpty!3428 (_1!2929 (lex!543 thiss!17480 rules!1920 (seqFromList!1095 lt!204364)))))))

(declare-fun b!458481 () Bool)

(assert (=> b!458481 (= e!280675 (not (= lt!204370 (++!1298 lt!204364 lt!204357))))))

(declare-fun b!458482 () Bool)

(assert (=> b!458482 (= e!280683 e!280689)))

(declare-fun res!203883 () Bool)

(assert (=> b!458482 (=> (not res!203883) (not e!280689))))

(assert (=> b!458482 (= res!203883 (= lt!204370 lt!204363))))

(assert (=> b!458482 (= lt!204363 (list!1977 (printWithSeparatorTokenWhenNeededRec!424 thiss!17480 rules!1920 lt!204352 separatorToken!170 0)))))

(assert (=> b!458482 (= lt!204370 (printWithSeparatorTokenWhenNeededList!432 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!458483 () Bool)

(declare-fun matchR!407 (Regex!1089 List!4459) Bool)

(assert (=> b!458483 (= e!280691 (matchR!407 (regex!865 (rule!1560 (h!9848 tokens!465))) lt!204364))))

(declare-fun b!458484 () Bool)

(declare-fun res!203871 () Bool)

(assert (=> b!458484 (=> (not res!203871) (not e!280691))))

(declare-fun isEmpty!3429 (List!4459) Bool)

(assert (=> b!458484 (= res!203871 (isEmpty!3429 (_2!2927 lt!204372)))))

(declare-fun e!280664 () Bool)

(assert (=> b!458485 (= e!280664 (and tp!127038 tp!127034))))

(declare-fun tp!127033 () Bool)

(declare-fun b!458486 () Bool)

(assert (=> b!458486 (= e!280686 (and tp!127033 (inv!5527 (tag!1125 (rule!1560 (h!9848 tokens!465)))) (inv!5530 (transformation!865 (rule!1560 (h!9848 tokens!465)))) e!280664))))

(declare-fun b!458487 () Bool)

(declare-fun head!1118 (List!4461) Token!1474)

(assert (=> b!458487 (= e!280673 (= (_1!2927 (get!1633 lt!204356)) (head!1118 tokens!465)))))

(assert (=> b!458488 (= e!280670 (and tp!127031 tp!127032))))

(declare-fun b!458489 () Bool)

(declare-fun res!203874 () Bool)

(assert (=> b!458489 (=> res!203874 e!280678)))

(assert (=> b!458489 (= res!203874 (not (forall!1294 (t!71693 tokens!465) lambda!13457)))))

(assert (= (and start!43526 res!203880) b!458473))

(assert (= (and b!458473 res!203877) b!458457))

(assert (= (and b!458457 res!203892) b!458478))

(assert (= (and b!458478 res!203893) b!458460))

(assert (= (and b!458460 res!203885) b!458462))

(assert (= (and b!458462 res!203887) b!458456))

(assert (= (and b!458456 res!203891) b!458455))

(assert (= (and b!458455 res!203890) b!458469))

(assert (= (and b!458469 res!203875) b!458482))

(assert (= (and b!458482 res!203883) b!458477))

(assert (= (and b!458477 res!203876) b!458461))

(assert (= (and b!458461 (not res!203873)) b!458464))

(assert (= (and b!458464 res!203886) b!458481))

(assert (= (and b!458464 (not res!203888)) b!458466))

(assert (= (and b!458466 (not res!203889)) b!458465))

(assert (= (and b!458465 (not res!203872)) b!458480))

(assert (= (and b!458480 (not res!203884)) b!458467))

(assert (= (and b!458467 (not res!203881)) b!458463))

(assert (= (and b!458463 res!203879) b!458484))

(assert (= (and b!458484 res!203871) b!458483))

(assert (= (and b!458463 (not res!203870)) b!458476))

(assert (= (and b!458476 (not res!203869)) b!458458))

(assert (= (and b!458458 res!203878) b!458487))

(assert (= (and b!458476 (not res!203882)) b!458489))

(assert (= (and b!458489 (not res!203874)) b!458468))

(assert (= b!458471 b!458459))

(assert (= b!458474 b!458471))

(assert (= (and start!43526 ((_ is Cons!4450) rules!1920)) b!458474))

(assert (= b!458470 b!458488))

(assert (= b!458472 b!458470))

(assert (= start!43526 b!458472))

(assert (= b!458486 b!458485))

(assert (= b!458479 b!458486))

(assert (= b!458475 b!458479))

(assert (= (and start!43526 ((_ is Cons!4451) tokens!465)) b!458475))

(declare-fun m!726047 () Bool)

(assert (=> b!458460 m!726047))

(declare-fun m!726049 () Bool)

(assert (=> b!458482 m!726049))

(assert (=> b!458482 m!726049))

(declare-fun m!726051 () Bool)

(assert (=> b!458482 m!726051))

(declare-fun m!726053 () Bool)

(assert (=> b!458482 m!726053))

(declare-fun m!726055 () Bool)

(assert (=> b!458456 m!726055))

(declare-fun m!726057 () Bool)

(assert (=> b!458468 m!726057))

(declare-fun m!726059 () Bool)

(assert (=> b!458468 m!726059))

(declare-fun m!726061 () Bool)

(assert (=> b!458477 m!726061))

(assert (=> b!458477 m!726061))

(declare-fun m!726063 () Bool)

(assert (=> b!458477 m!726063))

(declare-fun m!726065 () Bool)

(assert (=> b!458481 m!726065))

(declare-fun m!726067 () Bool)

(assert (=> b!458471 m!726067))

(declare-fun m!726069 () Bool)

(assert (=> b!458471 m!726069))

(declare-fun m!726071 () Bool)

(assert (=> b!458483 m!726071))

(declare-fun m!726073 () Bool)

(assert (=> b!458480 m!726073))

(assert (=> b!458480 m!726073))

(declare-fun m!726075 () Bool)

(assert (=> b!458480 m!726075))

(declare-fun m!726077 () Bool)

(assert (=> b!458480 m!726077))

(declare-fun m!726079 () Bool)

(assert (=> b!458467 m!726079))

(assert (=> b!458467 m!726079))

(declare-fun m!726081 () Bool)

(assert (=> b!458467 m!726081))

(assert (=> b!458467 m!726081))

(declare-fun m!726083 () Bool)

(assert (=> b!458467 m!726083))

(declare-fun m!726085 () Bool)

(assert (=> b!458467 m!726085))

(declare-fun m!726087 () Bool)

(assert (=> b!458458 m!726087))

(declare-fun m!726089 () Bool)

(assert (=> b!458458 m!726089))

(declare-fun m!726091 () Bool)

(assert (=> b!458455 m!726091))

(declare-fun m!726093 () Bool)

(assert (=> b!458484 m!726093))

(declare-fun m!726095 () Bool)

(assert (=> b!458465 m!726095))

(declare-fun m!726097 () Bool)

(assert (=> start!43526 m!726097))

(declare-fun m!726099 () Bool)

(assert (=> b!458478 m!726099))

(declare-fun m!726101 () Bool)

(assert (=> b!458478 m!726101))

(declare-fun m!726103 () Bool)

(assert (=> b!458489 m!726103))

(declare-fun m!726105 () Bool)

(assert (=> b!458470 m!726105))

(declare-fun m!726107 () Bool)

(assert (=> b!458470 m!726107))

(declare-fun m!726109 () Bool)

(assert (=> b!458473 m!726109))

(declare-fun m!726111 () Bool)

(assert (=> b!458461 m!726111))

(declare-fun m!726113 () Bool)

(assert (=> b!458461 m!726113))

(declare-fun m!726115 () Bool)

(assert (=> b!458461 m!726115))

(declare-fun m!726117 () Bool)

(assert (=> b!458461 m!726117))

(declare-fun m!726119 () Bool)

(assert (=> b!458461 m!726119))

(declare-fun m!726121 () Bool)

(assert (=> b!458461 m!726121))

(declare-fun m!726123 () Bool)

(assert (=> b!458461 m!726123))

(assert (=> b!458461 m!726117))

(declare-fun m!726125 () Bool)

(assert (=> b!458461 m!726125))

(declare-fun m!726127 () Bool)

(assert (=> b!458461 m!726127))

(declare-fun m!726129 () Bool)

(assert (=> b!458461 m!726129))

(assert (=> b!458461 m!726123))

(declare-fun m!726131 () Bool)

(assert (=> b!458461 m!726131))

(assert (=> b!458461 m!726127))

(declare-fun m!726133 () Bool)

(assert (=> b!458461 m!726133))

(assert (=> b!458461 m!726125))

(declare-fun m!726135 () Bool)

(assert (=> b!458461 m!726135))

(declare-fun m!726137 () Bool)

(assert (=> b!458486 m!726137))

(declare-fun m!726139 () Bool)

(assert (=> b!458486 m!726139))

(declare-fun m!726141 () Bool)

(assert (=> b!458476 m!726141))

(declare-fun m!726143 () Bool)

(assert (=> b!458476 m!726143))

(declare-fun m!726145 () Bool)

(assert (=> b!458476 m!726145))

(declare-fun m!726147 () Bool)

(assert (=> b!458463 m!726147))

(declare-fun m!726149 () Bool)

(assert (=> b!458463 m!726149))

(declare-fun m!726151 () Bool)

(assert (=> b!458463 m!726151))

(declare-fun m!726153 () Bool)

(assert (=> b!458487 m!726153))

(declare-fun m!726155 () Bool)

(assert (=> b!458487 m!726155))

(declare-fun m!726157 () Bool)

(assert (=> b!458472 m!726157))

(declare-fun m!726159 () Bool)

(assert (=> b!458479 m!726159))

(declare-fun m!726161 () Bool)

(assert (=> b!458466 m!726161))

(declare-fun m!726163 () Bool)

(assert (=> b!458466 m!726163))

(declare-fun m!726165 () Bool)

(assert (=> b!458466 m!726165))

(declare-fun m!726167 () Bool)

(assert (=> b!458466 m!726167))

(declare-fun m!726169 () Bool)

(assert (=> b!458466 m!726169))

(declare-fun m!726171 () Bool)

(assert (=> b!458475 m!726171))

(declare-fun m!726173 () Bool)

(assert (=> b!458457 m!726173))

(check-sat (not b_next!12799) (not b!458461) (not b!458478) (not b!458486) (not b!458465) b_and!49285 (not b!458476) b_and!49291 (not b!458463) (not b!458481) (not b!458483) (not b!458457) (not start!43526) b_and!49283 (not b!458484) b_and!49281 (not b_next!12803) (not b!458482) (not b_next!12797) (not b_next!12801) (not b!458460) (not b!458458) (not b_next!12793) (not b!458470) b_and!49287 b_and!49289 (not b!458489) (not b!458475) (not b_next!12795) (not b!458471) (not b!458473) (not b!458498) (not b!458455) (not b!458480) (not b!458487) (not b!458472) (not b!458468) (not b!458466) (not b!458456) (not b!458479) (not b!458477) (not b!458474) (not b!458467))
(check-sat (not b_next!12799) b_and!49283 b_and!49281 (not b_next!12803) (not b_next!12793) (not b_next!12795) b_and!49285 b_and!49291 (not b_next!12797) (not b_next!12801) b_and!49287 b_and!49289)
(get-model)

(declare-fun d!174930 () Bool)

(declare-fun list!1980 (Conc!1552) List!4459)

(assert (=> d!174930 (= (list!1977 (printWithSeparatorTokenWhenNeededRec!424 thiss!17480 rules!1920 lt!204371 separatorToken!170 0)) (list!1980 (c!92502 (printWithSeparatorTokenWhenNeededRec!424 thiss!17480 rules!1920 lt!204371 separatorToken!170 0))))))

(declare-fun bs!56881 () Bool)

(assert (= bs!56881 d!174930))

(declare-fun m!726285 () Bool)

(assert (=> bs!56881 m!726285))

(assert (=> b!458461 d!174930))

(declare-fun d!174932 () Bool)

(assert (=> d!174932 (= (list!1977 (charsOf!508 separatorToken!170)) (list!1980 (c!92502 (charsOf!508 separatorToken!170))))))

(declare-fun bs!56882 () Bool)

(assert (= bs!56882 d!174932))

(declare-fun m!726287 () Bool)

(assert (=> bs!56882 m!726287))

(assert (=> b!458461 d!174932))

(declare-fun d!174934 () Bool)

(declare-fun e!280744 () Bool)

(assert (=> d!174934 e!280744))

(declare-fun res!203950 () Bool)

(assert (=> d!174934 (=> (not res!203950) (not e!280744))))

(declare-fun lt!204402 () List!4459)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!745 (List!4459) (InoxSet C!3100))

(assert (=> d!174934 (= res!203950 (= (content!745 lt!204402) ((_ map or) (content!745 lt!204364) (content!745 lt!204359))))))

(declare-fun e!280745 () List!4459)

(assert (=> d!174934 (= lt!204402 e!280745)))

(declare-fun c!92522 () Bool)

(assert (=> d!174934 (= c!92522 ((_ is Nil!4449) lt!204364))))

(assert (=> d!174934 (= (++!1298 lt!204364 lt!204359) lt!204402)))

(declare-fun b!458588 () Bool)

(assert (=> b!458588 (= e!280745 lt!204359)))

(declare-fun b!458590 () Bool)

(declare-fun res!203949 () Bool)

(assert (=> b!458590 (=> (not res!203949) (not e!280744))))

(declare-fun size!3646 (List!4459) Int)

(assert (=> b!458590 (= res!203949 (= (size!3646 lt!204402) (+ (size!3646 lt!204364) (size!3646 lt!204359))))))

(declare-fun b!458589 () Bool)

(assert (=> b!458589 (= e!280745 (Cons!4449 (h!9846 lt!204364) (++!1298 (t!71691 lt!204364) lt!204359)))))

(declare-fun b!458591 () Bool)

(assert (=> b!458591 (= e!280744 (or (not (= lt!204359 Nil!4449)) (= lt!204402 lt!204364)))))

(assert (= (and d!174934 c!92522) b!458588))

(assert (= (and d!174934 (not c!92522)) b!458589))

(assert (= (and d!174934 res!203950) b!458590))

(assert (= (and b!458590 res!203949) b!458591))

(declare-fun m!726289 () Bool)

(assert (=> d!174934 m!726289))

(declare-fun m!726291 () Bool)

(assert (=> d!174934 m!726291))

(declare-fun m!726293 () Bool)

(assert (=> d!174934 m!726293))

(declare-fun m!726295 () Bool)

(assert (=> b!458590 m!726295))

(declare-fun m!726297 () Bool)

(assert (=> b!458590 m!726297))

(declare-fun m!726299 () Bool)

(assert (=> b!458590 m!726299))

(declare-fun m!726301 () Bool)

(assert (=> b!458589 m!726301))

(assert (=> b!458461 d!174934))

(declare-fun d!174936 () Bool)

(declare-fun e!280746 () Bool)

(assert (=> d!174936 e!280746))

(declare-fun res!203952 () Bool)

(assert (=> d!174936 (=> (not res!203952) (not e!280746))))

(declare-fun lt!204403 () List!4459)

(assert (=> d!174936 (= res!203952 (= (content!745 lt!204403) ((_ map or) (content!745 lt!204364) (content!745 lt!204366))))))

(declare-fun e!280747 () List!4459)

(assert (=> d!174936 (= lt!204403 e!280747)))

(declare-fun c!92523 () Bool)

(assert (=> d!174936 (= c!92523 ((_ is Nil!4449) lt!204364))))

(assert (=> d!174936 (= (++!1298 lt!204364 lt!204366) lt!204403)))

(declare-fun b!458592 () Bool)

(assert (=> b!458592 (= e!280747 lt!204366)))

(declare-fun b!458594 () Bool)

(declare-fun res!203951 () Bool)

(assert (=> b!458594 (=> (not res!203951) (not e!280746))))

(assert (=> b!458594 (= res!203951 (= (size!3646 lt!204403) (+ (size!3646 lt!204364) (size!3646 lt!204366))))))

(declare-fun b!458593 () Bool)

(assert (=> b!458593 (= e!280747 (Cons!4449 (h!9846 lt!204364) (++!1298 (t!71691 lt!204364) lt!204366)))))

(declare-fun b!458595 () Bool)

(assert (=> b!458595 (= e!280746 (or (not (= lt!204366 Nil!4449)) (= lt!204403 lt!204364)))))

(assert (= (and d!174936 c!92523) b!458592))

(assert (= (and d!174936 (not c!92523)) b!458593))

(assert (= (and d!174936 res!203952) b!458594))

(assert (= (and b!458594 res!203951) b!458595))

(declare-fun m!726303 () Bool)

(assert (=> d!174936 m!726303))

(assert (=> d!174936 m!726291))

(declare-fun m!726305 () Bool)

(assert (=> d!174936 m!726305))

(declare-fun m!726307 () Bool)

(assert (=> b!458594 m!726307))

(assert (=> b!458594 m!726297))

(declare-fun m!726309 () Bool)

(assert (=> b!458594 m!726309))

(declare-fun m!726311 () Bool)

(assert (=> b!458593 m!726311))

(assert (=> b!458461 d!174936))

(declare-fun d!174938 () Bool)

(declare-fun lt!204406 () BalanceConc!3112)

(assert (=> d!174938 (= (list!1977 lt!204406) (originalCharacters!908 separatorToken!170))))

(declare-fun dynLambda!2710 (Int TokenValue!887) BalanceConc!3112)

(assert (=> d!174938 (= lt!204406 (dynLambda!2710 (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))) (value!28968 separatorToken!170)))))

(assert (=> d!174938 (= (charsOf!508 separatorToken!170) lt!204406)))

(declare-fun b_lambda!19033 () Bool)

(assert (=> (not b_lambda!19033) (not d!174938)))

(declare-fun tb!46007 () Bool)

(declare-fun t!71701 () Bool)

(assert (=> (and b!458459 (= (toChars!1543 (transformation!865 (h!9847 rules!1920))) (toChars!1543 (transformation!865 (rule!1560 separatorToken!170)))) t!71701) tb!46007))

(declare-fun b!458600 () Bool)

(declare-fun e!280750 () Bool)

(declare-fun tp!127045 () Bool)

(declare-fun inv!5534 (Conc!1552) Bool)

(assert (=> b!458600 (= e!280750 (and (inv!5534 (c!92502 (dynLambda!2710 (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))) (value!28968 separatorToken!170)))) tp!127045))))

(declare-fun result!50632 () Bool)

(declare-fun inv!5535 (BalanceConc!3112) Bool)

(assert (=> tb!46007 (= result!50632 (and (inv!5535 (dynLambda!2710 (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))) (value!28968 separatorToken!170))) e!280750))))

(assert (= tb!46007 b!458600))

(declare-fun m!726313 () Bool)

(assert (=> b!458600 m!726313))

(declare-fun m!726315 () Bool)

(assert (=> tb!46007 m!726315))

(assert (=> d!174938 t!71701))

(declare-fun b_and!49299 () Bool)

(assert (= b_and!49283 (and (=> t!71701 result!50632) b_and!49299)))

(declare-fun t!71703 () Bool)

(declare-fun tb!46009 () Bool)

(assert (=> (and b!458488 (= (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))) (toChars!1543 (transformation!865 (rule!1560 separatorToken!170)))) t!71703) tb!46009))

(declare-fun result!50636 () Bool)

(assert (= result!50636 result!50632))

(assert (=> d!174938 t!71703))

(declare-fun b_and!49301 () Bool)

(assert (= b_and!49287 (and (=> t!71703 result!50636) b_and!49301)))

(declare-fun tb!46011 () Bool)

(declare-fun t!71705 () Bool)

(assert (=> (and b!458485 (= (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))) (toChars!1543 (transformation!865 (rule!1560 separatorToken!170)))) t!71705) tb!46011))

(declare-fun result!50638 () Bool)

(assert (= result!50638 result!50632))

(assert (=> d!174938 t!71705))

(declare-fun b_and!49303 () Bool)

(assert (= b_and!49291 (and (=> t!71705 result!50638) b_and!49303)))

(declare-fun m!726317 () Bool)

(assert (=> d!174938 m!726317))

(declare-fun m!726319 () Bool)

(assert (=> d!174938 m!726319))

(assert (=> b!458461 d!174938))

(declare-fun d!174940 () Bool)

(declare-fun e!280751 () Bool)

(assert (=> d!174940 e!280751))

(declare-fun res!203954 () Bool)

(assert (=> d!174940 (=> (not res!203954) (not e!280751))))

(declare-fun lt!204407 () List!4459)

(assert (=> d!174940 (= res!203954 (= (content!745 lt!204407) ((_ map or) (content!745 (++!1298 lt!204364 lt!204366)) (content!745 lt!204357))))))

(declare-fun e!280752 () List!4459)

(assert (=> d!174940 (= lt!204407 e!280752)))

(declare-fun c!92524 () Bool)

(assert (=> d!174940 (= c!92524 ((_ is Nil!4449) (++!1298 lt!204364 lt!204366)))))

(assert (=> d!174940 (= (++!1298 (++!1298 lt!204364 lt!204366) lt!204357) lt!204407)))

(declare-fun b!458601 () Bool)

(assert (=> b!458601 (= e!280752 lt!204357)))

(declare-fun b!458603 () Bool)

(declare-fun res!203953 () Bool)

(assert (=> b!458603 (=> (not res!203953) (not e!280751))))

(assert (=> b!458603 (= res!203953 (= (size!3646 lt!204407) (+ (size!3646 (++!1298 lt!204364 lt!204366)) (size!3646 lt!204357))))))

(declare-fun b!458602 () Bool)

(assert (=> b!458602 (= e!280752 (Cons!4449 (h!9846 (++!1298 lt!204364 lt!204366)) (++!1298 (t!71691 (++!1298 lt!204364 lt!204366)) lt!204357)))))

(declare-fun b!458604 () Bool)

(assert (=> b!458604 (= e!280751 (or (not (= lt!204357 Nil!4449)) (= lt!204407 (++!1298 lt!204364 lt!204366))))))

(assert (= (and d!174940 c!92524) b!458601))

(assert (= (and d!174940 (not c!92524)) b!458602))

(assert (= (and d!174940 res!203954) b!458603))

(assert (= (and b!458603 res!203953) b!458604))

(declare-fun m!726321 () Bool)

(assert (=> d!174940 m!726321))

(assert (=> d!174940 m!726123))

(declare-fun m!726323 () Bool)

(assert (=> d!174940 m!726323))

(declare-fun m!726325 () Bool)

(assert (=> d!174940 m!726325))

(declare-fun m!726327 () Bool)

(assert (=> b!458603 m!726327))

(assert (=> b!458603 m!726123))

(declare-fun m!726329 () Bool)

(assert (=> b!458603 m!726329))

(declare-fun m!726331 () Bool)

(assert (=> b!458603 m!726331))

(declare-fun m!726333 () Bool)

(assert (=> b!458602 m!726333))

(assert (=> b!458461 d!174940))

(declare-fun d!174942 () Bool)

(assert (=> d!174942 (= (list!1977 (charsOf!508 (h!9848 tokens!465))) (list!1980 (c!92502 (charsOf!508 (h!9848 tokens!465)))))))

(declare-fun bs!56883 () Bool)

(assert (= bs!56883 d!174942))

(declare-fun m!726335 () Bool)

(assert (=> bs!56883 m!726335))

(assert (=> b!458461 d!174942))

(declare-fun d!174944 () Bool)

(declare-fun lt!204408 () BalanceConc!3112)

(assert (=> d!174944 (= (list!1977 lt!204408) (originalCharacters!908 (h!9848 tokens!465)))))

(assert (=> d!174944 (= lt!204408 (dynLambda!2710 (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))) (value!28968 (h!9848 tokens!465))))))

(assert (=> d!174944 (= (charsOf!508 (h!9848 tokens!465)) lt!204408)))

(declare-fun b_lambda!19035 () Bool)

(assert (=> (not b_lambda!19035) (not d!174944)))

(declare-fun tb!46013 () Bool)

(declare-fun t!71707 () Bool)

(assert (=> (and b!458459 (= (toChars!1543 (transformation!865 (h!9847 rules!1920))) (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465))))) t!71707) tb!46013))

(declare-fun b!458605 () Bool)

(declare-fun e!280753 () Bool)

(declare-fun tp!127046 () Bool)

(assert (=> b!458605 (= e!280753 (and (inv!5534 (c!92502 (dynLambda!2710 (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))) (value!28968 (h!9848 tokens!465))))) tp!127046))))

(declare-fun result!50640 () Bool)

(assert (=> tb!46013 (= result!50640 (and (inv!5535 (dynLambda!2710 (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))) (value!28968 (h!9848 tokens!465)))) e!280753))))

(assert (= tb!46013 b!458605))

(declare-fun m!726337 () Bool)

(assert (=> b!458605 m!726337))

(declare-fun m!726339 () Bool)

(assert (=> tb!46013 m!726339))

(assert (=> d!174944 t!71707))

(declare-fun b_and!49305 () Bool)

(assert (= b_and!49299 (and (=> t!71707 result!50640) b_and!49305)))

(declare-fun t!71709 () Bool)

(declare-fun tb!46015 () Bool)

(assert (=> (and b!458488 (= (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))) (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465))))) t!71709) tb!46015))

(declare-fun result!50642 () Bool)

(assert (= result!50642 result!50640))

(assert (=> d!174944 t!71709))

(declare-fun b_and!49307 () Bool)

(assert (= b_and!49301 (and (=> t!71709 result!50642) b_and!49307)))

(declare-fun t!71711 () Bool)

(declare-fun tb!46017 () Bool)

(assert (=> (and b!458485 (= (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))) (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465))))) t!71711) tb!46017))

(declare-fun result!50644 () Bool)

(assert (= result!50644 result!50640))

(assert (=> d!174944 t!71711))

(declare-fun b_and!49309 () Bool)

(assert (= b_and!49303 (and (=> t!71711 result!50644) b_and!49309)))

(declare-fun m!726341 () Bool)

(assert (=> d!174944 m!726341))

(declare-fun m!726343 () Bool)

(assert (=> d!174944 m!726343))

(assert (=> b!458461 d!174944))

(declare-fun d!174946 () Bool)

(declare-fun fromListB!489 (List!4461) BalanceConc!3114)

(assert (=> d!174946 (= (seqFromList!1096 (t!71693 tokens!465)) (fromListB!489 (t!71693 tokens!465)))))

(declare-fun bs!56884 () Bool)

(assert (= bs!56884 d!174946))

(declare-fun m!726345 () Bool)

(assert (=> bs!56884 m!726345))

(assert (=> b!458461 d!174946))

(declare-fun d!174948 () Bool)

(assert (=> d!174948 (= (++!1298 (++!1298 lt!204364 lt!204366) lt!204357) (++!1298 lt!204364 (++!1298 lt!204366 lt!204357)))))

(declare-fun lt!204411 () Unit!8051)

(declare-fun choose!3450 (List!4459 List!4459 List!4459) Unit!8051)

(assert (=> d!174948 (= lt!204411 (choose!3450 lt!204364 lt!204366 lt!204357))))

(assert (=> d!174948 (= (lemmaConcatAssociativity!602 lt!204364 lt!204366 lt!204357) lt!204411)))

(declare-fun bs!56885 () Bool)

(assert (= bs!56885 d!174948))

(assert (=> bs!56885 m!726115))

(declare-fun m!726347 () Bool)

(assert (=> bs!56885 m!726347))

(declare-fun m!726349 () Bool)

(assert (=> bs!56885 m!726349))

(assert (=> bs!56885 m!726123))

(assert (=> bs!56885 m!726123))

(assert (=> bs!56885 m!726131))

(assert (=> bs!56885 m!726115))

(assert (=> b!458461 d!174948))

(declare-fun bs!56897 () Bool)

(declare-fun d!174950 () Bool)

(assert (= bs!56897 (and d!174950 b!458456)))

(declare-fun lambda!13472 () Int)

(assert (=> bs!56897 (= lambda!13472 lambda!13457)))

(declare-fun bs!56898 () Bool)

(assert (= bs!56898 (and d!174950 b!458467)))

(assert (=> bs!56898 (not (= lambda!13472 lambda!13458))))

(declare-fun bs!56899 () Bool)

(declare-fun b!458702 () Bool)

(assert (= bs!56899 (and b!458702 b!458456)))

(declare-fun lambda!13473 () Int)

(assert (=> bs!56899 (not (= lambda!13473 lambda!13457))))

(declare-fun bs!56900 () Bool)

(assert (= bs!56900 (and b!458702 b!458467)))

(assert (=> bs!56900 (= lambda!13473 lambda!13458)))

(declare-fun bs!56901 () Bool)

(assert (= bs!56901 (and b!458702 d!174950)))

(assert (=> bs!56901 (not (= lambda!13473 lambda!13472))))

(declare-fun b!458705 () Bool)

(declare-fun e!280817 () Bool)

(assert (=> b!458705 (= e!280817 true)))

(declare-fun b!458704 () Bool)

(declare-fun e!280816 () Bool)

(assert (=> b!458704 (= e!280816 e!280817)))

(declare-fun b!458703 () Bool)

(declare-fun e!280815 () Bool)

(assert (=> b!458703 (= e!280815 e!280816)))

(assert (=> b!458702 e!280815))

(assert (= b!458704 b!458705))

(assert (= b!458703 b!458704))

(assert (= (and b!458702 ((_ is Cons!4450) rules!1920)) b!458703))

(assert (=> b!458705 (< (dynLambda!2706 order!3949 (toValue!1684 (transformation!865 (h!9847 rules!1920)))) (dynLambda!2707 order!3951 lambda!13473))))

(assert (=> b!458705 (< (dynLambda!2708 order!3953 (toChars!1543 (transformation!865 (h!9847 rules!1920)))) (dynLambda!2707 order!3951 lambda!13473))))

(assert (=> b!458702 true))

(declare-fun b!458692 () Bool)

(declare-fun e!280814 () BalanceConc!3112)

(assert (=> b!458692 (= e!280814 (BalanceConc!3113 Empty!1552))))

(declare-fun call!31815 () Token!1474)

(assert (=> b!458692 (= (print!476 thiss!17480 (singletonSeq!411 call!31815)) (printTailRec!437 thiss!17480 (singletonSeq!411 call!31815) 0 (BalanceConc!3113 Empty!1552)))))

(declare-fun lt!204508 () Unit!8051)

(declare-fun Unit!8057 () Unit!8051)

(assert (=> b!458692 (= lt!204508 Unit!8057)))

(declare-fun lt!204509 () BalanceConc!3112)

(declare-fun call!31814 () BalanceConc!3112)

(declare-fun lt!204510 () Unit!8051)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!196 (LexerInterface!751 List!4460 List!4459 List!4459) Unit!8051)

(assert (=> b!458692 (= lt!204510 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!196 thiss!17480 rules!1920 (list!1977 call!31814) (list!1977 lt!204509)))))

(assert (=> b!458692 false))

(declare-fun lt!204503 () Unit!8051)

(declare-fun Unit!8058 () Unit!8051)

(assert (=> b!458692 (= lt!204503 Unit!8058)))

(declare-fun b!458693 () Bool)

(declare-fun e!280812 () BalanceConc!3112)

(declare-fun call!31813 () BalanceConc!3112)

(assert (=> b!458693 (= e!280812 call!31813)))

(declare-fun bm!31807 () Bool)

(declare-fun call!31812 () Token!1474)

(assert (=> bm!31807 (= call!31815 call!31812)))

(declare-fun bm!31808 () Bool)

(declare-fun c!92558 () Bool)

(declare-fun c!92557 () Bool)

(assert (=> bm!31808 (= c!92558 c!92557)))

(declare-fun call!31816 () BalanceConc!3112)

(declare-fun ++!1300 (BalanceConc!3112 BalanceConc!3112) BalanceConc!3112)

(assert (=> bm!31808 (= call!31816 (++!1300 e!280812 (ite c!92557 lt!204509 call!31814)))))

(declare-fun lt!204511 () BalanceConc!3112)

(declare-fun dropList!248 (BalanceConc!3114 Int) List!4461)

(assert (=> d!174950 (= (list!1977 lt!204511) (printWithSeparatorTokenWhenNeededList!432 thiss!17480 rules!1920 (dropList!248 lt!204371 0) separatorToken!170))))

(declare-fun e!280811 () BalanceConc!3112)

(assert (=> d!174950 (= lt!204511 e!280811)))

(declare-fun c!92559 () Bool)

(declare-fun size!3647 (BalanceConc!3114) Int)

(assert (=> d!174950 (= c!92559 (>= 0 (size!3647 lt!204371)))))

(declare-fun lt!204506 () Unit!8051)

(declare-fun lemmaContentSubsetPreservesForall!192 (List!4461 List!4461 Int) Unit!8051)

(declare-fun list!1981 (BalanceConc!3114) List!4461)

(assert (=> d!174950 (= lt!204506 (lemmaContentSubsetPreservesForall!192 (list!1981 lt!204371) (dropList!248 lt!204371 0) lambda!13472))))

(declare-fun e!280809 () Bool)

(assert (=> d!174950 e!280809))

(declare-fun res!203971 () Bool)

(assert (=> d!174950 (=> (not res!203971) (not e!280809))))

(assert (=> d!174950 (= res!203971 (>= 0 0))))

(assert (=> d!174950 (= (printWithSeparatorTokenWhenNeededRec!424 thiss!17480 rules!1920 lt!204371 separatorToken!170 0) lt!204511)))

(declare-fun bm!31809 () Bool)

(assert (=> bm!31809 (= call!31814 call!31813)))

(declare-fun c!92560 () Bool)

(declare-fun bm!31810 () Bool)

(assert (=> bm!31810 (= call!31813 (charsOf!508 (ite c!92557 call!31812 (ite c!92560 separatorToken!170 call!31815))))))

(declare-fun b!458694 () Bool)

(declare-fun e!280808 () Bool)

(assert (=> b!458694 (= c!92560 e!280808)))

(declare-fun res!203972 () Bool)

(assert (=> b!458694 (=> (not res!203972) (not e!280808))))

(declare-fun lt!204504 () Option!1165)

(assert (=> b!458694 (= res!203972 ((_ is Some!1164) lt!204504))))

(declare-fun e!280810 () BalanceConc!3112)

(assert (=> b!458694 (= e!280810 e!280814)))

(declare-fun b!458695 () Bool)

(declare-fun e!280813 () Bool)

(declare-fun apply!1144 (BalanceConc!3114 Int) Token!1474)

(assert (=> b!458695 (= e!280813 (= (_1!2928 (v!15501 lt!204504)) (apply!1144 lt!204371 0)))))

(declare-fun b!458696 () Bool)

(assert (=> b!458696 (= e!280814 (++!1300 call!31816 lt!204509))))

(declare-fun b!458697 () Bool)

(assert (=> b!458697 (= e!280811 (BalanceConc!3113 Empty!1552))))

(declare-fun b!458698 () Bool)

(assert (=> b!458698 (= e!280810 call!31816)))

(declare-fun b!458699 () Bool)

(assert (=> b!458699 (= e!280808 (not (= (_1!2928 (v!15501 lt!204504)) call!31812)))))

(declare-fun bm!31811 () Bool)

(assert (=> bm!31811 (= call!31812 (apply!1144 lt!204371 0))))

(declare-fun b!458700 () Bool)

(assert (=> b!458700 (= e!280812 (charsOf!508 call!31815))))

(declare-fun b!458701 () Bool)

(assert (=> b!458701 (= e!280809 (<= 0 (size!3647 lt!204371)))))

(assert (=> b!458702 (= e!280811 e!280810)))

(declare-fun lt!204513 () List!4461)

(assert (=> b!458702 (= lt!204513 (list!1981 lt!204371))))

(declare-fun lt!204514 () Unit!8051)

(declare-fun lemmaDropApply!288 (List!4461 Int) Unit!8051)

(assert (=> b!458702 (= lt!204514 (lemmaDropApply!288 lt!204513 0))))

(declare-fun drop!317 (List!4461 Int) List!4461)

(declare-fun apply!1145 (List!4461 Int) Token!1474)

(assert (=> b!458702 (= (head!1118 (drop!317 lt!204513 0)) (apply!1145 lt!204513 0))))

(declare-fun lt!204507 () Unit!8051)

(assert (=> b!458702 (= lt!204507 lt!204514)))

(declare-fun lt!204502 () List!4461)

(assert (=> b!458702 (= lt!204502 (list!1981 lt!204371))))

(declare-fun lt!204505 () Unit!8051)

(declare-fun lemmaDropTail!280 (List!4461 Int) Unit!8051)

(assert (=> b!458702 (= lt!204505 (lemmaDropTail!280 lt!204502 0))))

(declare-fun tail!645 (List!4461) List!4461)

(assert (=> b!458702 (= (tail!645 (drop!317 lt!204502 0)) (drop!317 lt!204502 (+ 0 1)))))

(declare-fun lt!204512 () Unit!8051)

(assert (=> b!458702 (= lt!204512 lt!204505)))

(declare-fun lt!204501 () Unit!8051)

(assert (=> b!458702 (= lt!204501 (forallContained!418 (list!1981 lt!204371) lambda!13473 (apply!1144 lt!204371 0)))))

(assert (=> b!458702 (= lt!204509 (printWithSeparatorTokenWhenNeededRec!424 thiss!17480 rules!1920 lt!204371 separatorToken!170 (+ 0 1)))))

(assert (=> b!458702 (= lt!204504 (maxPrefixZipperSequence!430 thiss!17480 rules!1920 (++!1300 (charsOf!508 (apply!1144 lt!204371 0)) lt!204509)))))

(declare-fun res!203970 () Bool)

(assert (=> b!458702 (= res!203970 ((_ is Some!1164) lt!204504))))

(assert (=> b!458702 (=> (not res!203970) (not e!280813))))

(assert (=> b!458702 (= c!92557 e!280813)))

(assert (= (and d!174950 res!203971) b!458701))

(assert (= (and d!174950 c!92559) b!458697))

(assert (= (and d!174950 (not c!92559)) b!458702))

(assert (= (and b!458702 res!203970) b!458695))

(assert (= (and b!458702 c!92557) b!458698))

(assert (= (and b!458702 (not c!92557)) b!458694))

(assert (= (and b!458694 res!203972) b!458699))

(assert (= (and b!458694 c!92560) b!458696))

(assert (= (and b!458694 (not c!92560)) b!458692))

(assert (= (or b!458696 b!458692) bm!31807))

(assert (= (or b!458696 b!458692) bm!31809))

(assert (= (or b!458698 bm!31807 b!458699) bm!31811))

(assert (= (or b!458698 bm!31809) bm!31810))

(assert (= (or b!458698 b!458696) bm!31808))

(assert (= (and bm!31808 c!92558) b!458693))

(assert (= (and bm!31808 (not c!92558)) b!458700))

(declare-fun m!726451 () Bool)

(assert (=> b!458700 m!726451))

(declare-fun m!726453 () Bool)

(assert (=> b!458702 m!726453))

(declare-fun m!726455 () Bool)

(assert (=> b!458702 m!726455))

(declare-fun m!726457 () Bool)

(assert (=> b!458702 m!726457))

(declare-fun m!726459 () Bool)

(assert (=> b!458702 m!726459))

(declare-fun m!726461 () Bool)

(assert (=> b!458702 m!726461))

(assert (=> b!458702 m!726459))

(declare-fun m!726463 () Bool)

(assert (=> b!458702 m!726463))

(assert (=> b!458702 m!726461))

(declare-fun m!726465 () Bool)

(assert (=> b!458702 m!726465))

(declare-fun m!726467 () Bool)

(assert (=> b!458702 m!726467))

(declare-fun m!726469 () Bool)

(assert (=> b!458702 m!726469))

(assert (=> b!458702 m!726459))

(declare-fun m!726471 () Bool)

(assert (=> b!458702 m!726471))

(declare-fun m!726473 () Bool)

(assert (=> b!458702 m!726473))

(declare-fun m!726475 () Bool)

(assert (=> b!458702 m!726475))

(declare-fun m!726477 () Bool)

(assert (=> b!458702 m!726477))

(assert (=> b!458702 m!726471))

(assert (=> b!458702 m!726453))

(declare-fun m!726479 () Bool)

(assert (=> b!458702 m!726479))

(assert (=> b!458702 m!726473))

(declare-fun m!726481 () Bool)

(assert (=> b!458702 m!726481))

(assert (=> b!458702 m!726465))

(assert (=> b!458695 m!726459))

(declare-fun m!726483 () Bool)

(assert (=> bm!31808 m!726483))

(declare-fun m!726485 () Bool)

(assert (=> b!458701 m!726485))

(declare-fun m!726487 () Bool)

(assert (=> bm!31810 m!726487))

(assert (=> d!174950 m!726461))

(assert (=> d!174950 m!726485))

(assert (=> d!174950 m!726461))

(declare-fun m!726489 () Bool)

(assert (=> d!174950 m!726489))

(declare-fun m!726491 () Bool)

(assert (=> d!174950 m!726491))

(declare-fun m!726493 () Bool)

(assert (=> d!174950 m!726493))

(assert (=> d!174950 m!726489))

(declare-fun m!726495 () Bool)

(assert (=> d!174950 m!726495))

(assert (=> d!174950 m!726489))

(assert (=> bm!31811 m!726459))

(declare-fun m!726497 () Bool)

(assert (=> b!458692 m!726497))

(assert (=> b!458692 m!726497))

(declare-fun m!726499 () Bool)

(assert (=> b!458692 m!726499))

(declare-fun m!726501 () Bool)

(assert (=> b!458692 m!726501))

(declare-fun m!726503 () Bool)

(assert (=> b!458692 m!726503))

(assert (=> b!458692 m!726497))

(declare-fun m!726505 () Bool)

(assert (=> b!458692 m!726505))

(assert (=> b!458692 m!726503))

(assert (=> b!458692 m!726501))

(declare-fun m!726507 () Bool)

(assert (=> b!458692 m!726507))

(declare-fun m!726509 () Bool)

(assert (=> b!458696 m!726509))

(assert (=> b!458461 d!174950))

(declare-fun d!174962 () Bool)

(declare-fun e!280818 () Bool)

(assert (=> d!174962 e!280818))

(declare-fun res!203974 () Bool)

(assert (=> d!174962 (=> (not res!203974) (not e!280818))))

(declare-fun lt!204515 () List!4459)

(assert (=> d!174962 (= res!203974 (= (content!745 lt!204515) ((_ map or) (content!745 lt!204366) (content!745 lt!204357))))))

(declare-fun e!280819 () List!4459)

(assert (=> d!174962 (= lt!204515 e!280819)))

(declare-fun c!92561 () Bool)

(assert (=> d!174962 (= c!92561 ((_ is Nil!4449) lt!204366))))

(assert (=> d!174962 (= (++!1298 lt!204366 lt!204357) lt!204515)))

(declare-fun b!458706 () Bool)

(assert (=> b!458706 (= e!280819 lt!204357)))

(declare-fun b!458708 () Bool)

(declare-fun res!203973 () Bool)

(assert (=> b!458708 (=> (not res!203973) (not e!280818))))

(assert (=> b!458708 (= res!203973 (= (size!3646 lt!204515) (+ (size!3646 lt!204366) (size!3646 lt!204357))))))

(declare-fun b!458707 () Bool)

(assert (=> b!458707 (= e!280819 (Cons!4449 (h!9846 lt!204366) (++!1298 (t!71691 lt!204366) lt!204357)))))

(declare-fun b!458709 () Bool)

(assert (=> b!458709 (= e!280818 (or (not (= lt!204357 Nil!4449)) (= lt!204515 lt!204366)))))

(assert (= (and d!174962 c!92561) b!458706))

(assert (= (and d!174962 (not c!92561)) b!458707))

(assert (= (and d!174962 res!203974) b!458708))

(assert (= (and b!458708 res!203973) b!458709))

(declare-fun m!726511 () Bool)

(assert (=> d!174962 m!726511))

(assert (=> d!174962 m!726305))

(assert (=> d!174962 m!726325))

(declare-fun m!726513 () Bool)

(assert (=> b!458708 m!726513))

(assert (=> b!458708 m!726309))

(assert (=> b!458708 m!726331))

(declare-fun m!726515 () Bool)

(assert (=> b!458707 m!726515))

(assert (=> b!458461 d!174962))

(declare-fun bs!56902 () Bool)

(declare-fun b!458741 () Bool)

(assert (= bs!56902 (and b!458741 b!458456)))

(declare-fun lambda!13476 () Int)

(assert (=> bs!56902 (not (= lambda!13476 lambda!13457))))

(declare-fun bs!56903 () Bool)

(assert (= bs!56903 (and b!458741 b!458467)))

(assert (=> bs!56903 (= lambda!13476 lambda!13458)))

(declare-fun bs!56904 () Bool)

(assert (= bs!56904 (and b!458741 d!174950)))

(assert (=> bs!56904 (not (= lambda!13476 lambda!13472))))

(declare-fun bs!56905 () Bool)

(assert (= bs!56905 (and b!458741 b!458702)))

(assert (=> bs!56905 (= lambda!13476 lambda!13473)))

(declare-fun b!458745 () Bool)

(declare-fun e!280840 () Bool)

(assert (=> b!458745 (= e!280840 true)))

(declare-fun b!458744 () Bool)

(declare-fun e!280839 () Bool)

(assert (=> b!458744 (= e!280839 e!280840)))

(declare-fun b!458743 () Bool)

(declare-fun e!280838 () Bool)

(assert (=> b!458743 (= e!280838 e!280839)))

(assert (=> b!458741 e!280838))

(assert (= b!458744 b!458745))

(assert (= b!458743 b!458744))

(assert (= (and b!458741 ((_ is Cons!4450) rules!1920)) b!458743))

(assert (=> b!458745 (< (dynLambda!2706 order!3949 (toValue!1684 (transformation!865 (h!9847 rules!1920)))) (dynLambda!2707 order!3951 lambda!13476))))

(assert (=> b!458745 (< (dynLambda!2708 order!3953 (toChars!1543 (transformation!865 (h!9847 rules!1920)))) (dynLambda!2707 order!3951 lambda!13476))))

(assert (=> b!458741 true))

(declare-fun c!92571 () Bool)

(declare-fun bm!31822 () Bool)

(declare-fun call!31827 () List!4459)

(declare-fun call!31831 () List!4459)

(declare-fun lt!204534 () List!4459)

(declare-fun call!31828 () List!4459)

(assert (=> bm!31822 (= call!31831 (++!1298 call!31828 (ite c!92571 lt!204534 call!31827)))))

(declare-fun b!458735 () Bool)

(declare-fun e!280835 () List!4459)

(assert (=> b!458735 (= e!280835 Nil!4449)))

(declare-fun b!458736 () Bool)

(declare-fun e!280836 () List!4459)

(assert (=> b!458736 (= e!280836 (++!1298 call!31831 lt!204534))))

(declare-fun b!458737 () Bool)

(assert (=> b!458737 (= e!280836 Nil!4449)))

(assert (=> b!458737 (= (print!476 thiss!17480 (singletonSeq!411 (h!9848 (t!71693 tokens!465)))) (printTailRec!437 thiss!17480 (singletonSeq!411 (h!9848 (t!71693 tokens!465))) 0 (BalanceConc!3113 Empty!1552)))))

(declare-fun lt!204537 () Unit!8051)

(declare-fun Unit!8059 () Unit!8051)

(assert (=> b!458737 (= lt!204537 Unit!8059)))

(declare-fun lt!204539 () Unit!8051)

(assert (=> b!458737 (= lt!204539 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!196 thiss!17480 rules!1920 call!31827 lt!204534))))

(assert (=> b!458737 false))

(declare-fun lt!204536 () Unit!8051)

(declare-fun Unit!8060 () Unit!8051)

(assert (=> b!458737 (= lt!204536 Unit!8060)))

(declare-fun b!458738 () Bool)

(declare-fun e!280837 () BalanceConc!3112)

(assert (=> b!458738 (= e!280837 (charsOf!508 separatorToken!170))))

(declare-fun call!31830 () BalanceConc!3112)

(declare-fun call!31829 () BalanceConc!3112)

(declare-fun bm!31823 () Bool)

(assert (=> bm!31823 (= call!31828 (list!1977 (ite c!92571 call!31829 call!31830)))))

(declare-fun bm!31824 () Bool)

(assert (=> bm!31824 (= call!31830 call!31829)))

(declare-fun b!458739 () Bool)

(assert (=> b!458739 (= e!280837 call!31830)))

(declare-fun b!458740 () Bool)

(declare-fun e!280834 () List!4459)

(assert (=> b!458740 (= e!280834 call!31831)))

(declare-fun bm!31825 () Bool)

(assert (=> bm!31825 (= call!31827 (list!1977 e!280837))))

(declare-fun c!92573 () Bool)

(declare-fun c!92572 () Bool)

(assert (=> bm!31825 (= c!92573 c!92572)))

(assert (=> b!458741 (= e!280835 e!280834)))

(declare-fun lt!204535 () Unit!8051)

(assert (=> b!458741 (= lt!204535 (forallContained!418 (t!71693 tokens!465) lambda!13476 (h!9848 (t!71693 tokens!465))))))

(assert (=> b!458741 (= lt!204534 (printWithSeparatorTokenWhenNeededList!432 thiss!17480 rules!1920 (t!71693 (t!71693 tokens!465)) separatorToken!170))))

(declare-fun lt!204538 () Option!1164)

(assert (=> b!458741 (= lt!204538 (maxPrefix!467 thiss!17480 rules!1920 (++!1298 (list!1977 (charsOf!508 (h!9848 (t!71693 tokens!465)))) lt!204534)))))

(assert (=> b!458741 (= c!92571 (and ((_ is Some!1163) lt!204538) (= (_1!2927 (v!15500 lt!204538)) (h!9848 (t!71693 tokens!465)))))))

(declare-fun b!458742 () Bool)

(assert (=> b!458742 (= c!92572 (and ((_ is Some!1163) lt!204538) (not (= (_1!2927 (v!15500 lt!204538)) (h!9848 (t!71693 tokens!465))))))))

(assert (=> b!458742 (= e!280834 e!280836)))

(declare-fun d!174964 () Bool)

(declare-fun c!92570 () Bool)

(assert (=> d!174964 (= c!92570 ((_ is Cons!4451) (t!71693 tokens!465)))))

(assert (=> d!174964 (= (printWithSeparatorTokenWhenNeededList!432 thiss!17480 rules!1920 (t!71693 tokens!465) separatorToken!170) e!280835)))

(declare-fun bm!31826 () Bool)

(assert (=> bm!31826 (= call!31829 (charsOf!508 (h!9848 (t!71693 tokens!465))))))

(assert (= (and d!174964 c!92570) b!458741))

(assert (= (and d!174964 (not c!92570)) b!458735))

(assert (= (and b!458741 c!92571) b!458740))

(assert (= (and b!458741 (not c!92571)) b!458742))

(assert (= (and b!458742 c!92572) b!458736))

(assert (= (and b!458742 (not c!92572)) b!458737))

(assert (= (or b!458736 b!458737) bm!31824))

(assert (= (or b!458736 b!458737) bm!31825))

(assert (= (and bm!31825 c!92573) b!458738))

(assert (= (and bm!31825 (not c!92573)) b!458739))

(assert (= (or b!458740 bm!31824) bm!31826))

(assert (= (or b!458740 b!458736) bm!31823))

(assert (= (or b!458740 b!458736) bm!31822))

(declare-fun m!726533 () Bool)

(assert (=> b!458737 m!726533))

(assert (=> b!458737 m!726533))

(declare-fun m!726535 () Bool)

(assert (=> b!458737 m!726535))

(assert (=> b!458737 m!726533))

(declare-fun m!726537 () Bool)

(assert (=> b!458737 m!726537))

(declare-fun m!726539 () Bool)

(assert (=> b!458737 m!726539))

(declare-fun m!726541 () Bool)

(assert (=> bm!31822 m!726541))

(declare-fun m!726543 () Bool)

(assert (=> bm!31825 m!726543))

(declare-fun m!726545 () Bool)

(assert (=> b!458736 m!726545))

(declare-fun m!726547 () Bool)

(assert (=> b!458741 m!726547))

(declare-fun m!726549 () Bool)

(assert (=> b!458741 m!726549))

(assert (=> b!458741 m!726547))

(declare-fun m!726551 () Bool)

(assert (=> b!458741 m!726551))

(declare-fun m!726553 () Bool)

(assert (=> b!458741 m!726553))

(declare-fun m!726555 () Bool)

(assert (=> b!458741 m!726555))

(declare-fun m!726557 () Bool)

(assert (=> b!458741 m!726557))

(assert (=> b!458741 m!726549))

(assert (=> b!458741 m!726553))

(declare-fun m!726559 () Bool)

(assert (=> bm!31823 m!726559))

(assert (=> bm!31826 m!726547))

(assert (=> b!458738 m!726117))

(assert (=> b!458461 d!174964))

(declare-fun b!458774 () Bool)

(declare-fun e!280855 () Bool)

(declare-fun head!1120 (List!4459) C!3100)

(assert (=> b!458774 (= e!280855 (not (= (head!1120 lt!204364) (c!92503 (regex!865 (rule!1560 (h!9848 tokens!465)))))))))

(declare-fun b!458775 () Bool)

(declare-fun e!280857 () Bool)

(declare-fun lt!204542 () Bool)

(declare-fun call!31834 () Bool)

(assert (=> b!458775 (= e!280857 (= lt!204542 call!31834))))

(declare-fun b!458776 () Bool)

(declare-fun res!204002 () Bool)

(declare-fun e!280859 () Bool)

(assert (=> b!458776 (=> res!204002 e!280859)))

(declare-fun e!280860 () Bool)

(assert (=> b!458776 (= res!204002 e!280860)))

(declare-fun res!204006 () Bool)

(assert (=> b!458776 (=> (not res!204006) (not e!280860))))

(assert (=> b!458776 (= res!204006 lt!204542)))

(declare-fun bm!31829 () Bool)

(assert (=> bm!31829 (= call!31834 (isEmpty!3429 lt!204364))))

(declare-fun d!174968 () Bool)

(assert (=> d!174968 e!280857))

(declare-fun c!92581 () Bool)

(assert (=> d!174968 (= c!92581 ((_ is EmptyExpr!1089) (regex!865 (rule!1560 (h!9848 tokens!465)))))))

(declare-fun e!280861 () Bool)

(assert (=> d!174968 (= lt!204542 e!280861)))

(declare-fun c!92580 () Bool)

(assert (=> d!174968 (= c!92580 (isEmpty!3429 lt!204364))))

(declare-fun validRegex!323 (Regex!1089) Bool)

(assert (=> d!174968 (validRegex!323 (regex!865 (rule!1560 (h!9848 tokens!465))))))

(assert (=> d!174968 (= (matchR!407 (regex!865 (rule!1560 (h!9848 tokens!465))) lt!204364) lt!204542)))

(declare-fun b!458777 () Bool)

(declare-fun e!280858 () Bool)

(assert (=> b!458777 (= e!280859 e!280858)))

(declare-fun res!204005 () Bool)

(assert (=> b!458777 (=> (not res!204005) (not e!280858))))

(assert (=> b!458777 (= res!204005 (not lt!204542))))

(declare-fun b!458778 () Bool)

(declare-fun e!280856 () Bool)

(assert (=> b!458778 (= e!280857 e!280856)))

(declare-fun c!92582 () Bool)

(assert (=> b!458778 (= c!92582 ((_ is EmptyLang!1089) (regex!865 (rule!1560 (h!9848 tokens!465)))))))

(declare-fun b!458779 () Bool)

(declare-fun res!204000 () Bool)

(assert (=> b!458779 (=> res!204000 e!280855)))

(declare-fun tail!646 (List!4459) List!4459)

(assert (=> b!458779 (= res!204000 (not (isEmpty!3429 (tail!646 lt!204364))))))

(declare-fun b!458780 () Bool)

(assert (=> b!458780 (= e!280860 (= (head!1120 lt!204364) (c!92503 (regex!865 (rule!1560 (h!9848 tokens!465))))))))

(declare-fun b!458781 () Bool)

(assert (=> b!458781 (= e!280856 (not lt!204542))))

(declare-fun b!458782 () Bool)

(declare-fun derivativeStep!214 (Regex!1089 C!3100) Regex!1089)

(assert (=> b!458782 (= e!280861 (matchR!407 (derivativeStep!214 (regex!865 (rule!1560 (h!9848 tokens!465))) (head!1120 lt!204364)) (tail!646 lt!204364)))))

(declare-fun b!458783 () Bool)

(declare-fun res!204004 () Bool)

(assert (=> b!458783 (=> (not res!204004) (not e!280860))))

(assert (=> b!458783 (= res!204004 (not call!31834))))

(declare-fun b!458784 () Bool)

(declare-fun nullable!248 (Regex!1089) Bool)

(assert (=> b!458784 (= e!280861 (nullable!248 (regex!865 (rule!1560 (h!9848 tokens!465)))))))

(declare-fun b!458785 () Bool)

(declare-fun res!204003 () Bool)

(assert (=> b!458785 (=> res!204003 e!280859)))

(assert (=> b!458785 (= res!204003 (not ((_ is ElementMatch!1089) (regex!865 (rule!1560 (h!9848 tokens!465))))))))

(assert (=> b!458785 (= e!280856 e!280859)))

(declare-fun b!458786 () Bool)

(assert (=> b!458786 (= e!280858 e!280855)))

(declare-fun res!204007 () Bool)

(assert (=> b!458786 (=> res!204007 e!280855)))

(assert (=> b!458786 (= res!204007 call!31834)))

(declare-fun b!458787 () Bool)

(declare-fun res!204001 () Bool)

(assert (=> b!458787 (=> (not res!204001) (not e!280860))))

(assert (=> b!458787 (= res!204001 (isEmpty!3429 (tail!646 lt!204364)))))

(assert (= (and d!174968 c!92580) b!458784))

(assert (= (and d!174968 (not c!92580)) b!458782))

(assert (= (and d!174968 c!92581) b!458775))

(assert (= (and d!174968 (not c!92581)) b!458778))

(assert (= (and b!458778 c!92582) b!458781))

(assert (= (and b!458778 (not c!92582)) b!458785))

(assert (= (and b!458785 (not res!204003)) b!458776))

(assert (= (and b!458776 res!204006) b!458783))

(assert (= (and b!458783 res!204004) b!458787))

(assert (= (and b!458787 res!204001) b!458780))

(assert (= (and b!458776 (not res!204002)) b!458777))

(assert (= (and b!458777 res!204005) b!458786))

(assert (= (and b!458786 (not res!204007)) b!458779))

(assert (= (and b!458779 (not res!204000)) b!458774))

(assert (= (or b!458775 b!458783 b!458786) bm!31829))

(declare-fun m!726561 () Bool)

(assert (=> b!458779 m!726561))

(assert (=> b!458779 m!726561))

(declare-fun m!726563 () Bool)

(assert (=> b!458779 m!726563))

(declare-fun m!726565 () Bool)

(assert (=> d!174968 m!726565))

(declare-fun m!726567 () Bool)

(assert (=> d!174968 m!726567))

(assert (=> bm!31829 m!726565))

(declare-fun m!726569 () Bool)

(assert (=> b!458784 m!726569))

(declare-fun m!726571 () Bool)

(assert (=> b!458774 m!726571))

(assert (=> b!458780 m!726571))

(assert (=> b!458787 m!726561))

(assert (=> b!458787 m!726561))

(assert (=> b!458787 m!726563))

(assert (=> b!458782 m!726571))

(assert (=> b!458782 m!726571))

(declare-fun m!726573 () Bool)

(assert (=> b!458782 m!726573))

(assert (=> b!458782 m!726561))

(assert (=> b!458782 m!726573))

(assert (=> b!458782 m!726561))

(declare-fun m!726575 () Bool)

(assert (=> b!458782 m!726575))

(assert (=> b!458483 d!174968))

(declare-fun d!174970 () Bool)

(assert (=> d!174970 (= (isEmpty!3429 (_2!2927 lt!204372)) ((_ is Nil!4449) (_2!2927 lt!204372)))))

(assert (=> b!458484 d!174970))

(declare-fun d!174972 () Bool)

(assert (=> d!174972 (= (get!1633 lt!204361) (v!15500 lt!204361))))

(assert (=> b!458463 d!174972))

(declare-fun d!174974 () Bool)

(declare-fun isEmpty!3433 (Option!1164) Bool)

(assert (=> d!174974 (= (isDefined!1003 lt!204361) (not (isEmpty!3433 lt!204361)))))

(declare-fun bs!56906 () Bool)

(assert (= bs!56906 d!174974))

(declare-fun m!726577 () Bool)

(assert (=> bs!56906 m!726577))

(assert (=> b!458463 d!174974))

(declare-fun b!458806 () Bool)

(declare-fun e!280871 () Bool)

(declare-fun lt!204559 () Option!1164)

(declare-fun contains!1000 (List!4460 Rule!1530) Bool)

(assert (=> b!458806 (= e!280871 (contains!1000 rules!1920 (rule!1560 (_1!2927 (get!1633 lt!204559)))))))

(declare-fun b!458807 () Bool)

(declare-fun res!204029 () Bool)

(assert (=> b!458807 (=> (not res!204029) (not e!280871))))

(assert (=> b!458807 (= res!204029 (matchR!407 (regex!865 (rule!1560 (_1!2927 (get!1633 lt!204559)))) (list!1977 (charsOf!508 (_1!2927 (get!1633 lt!204559))))))))

(declare-fun b!458808 () Bool)

(declare-fun res!204030 () Bool)

(assert (=> b!458808 (=> (not res!204030) (not e!280871))))

(assert (=> b!458808 (= res!204030 (< (size!3646 (_2!2927 (get!1633 lt!204559))) (size!3646 lt!204364)))))

(declare-fun d!174976 () Bool)

(declare-fun e!280870 () Bool)

(assert (=> d!174976 e!280870))

(declare-fun res!204024 () Bool)

(assert (=> d!174976 (=> res!204024 e!280870)))

(assert (=> d!174976 (= res!204024 (isEmpty!3433 lt!204559))))

(declare-fun e!280872 () Option!1164)

(assert (=> d!174976 (= lt!204559 e!280872)))

(declare-fun c!92585 () Bool)

(assert (=> d!174976 (= c!92585 (and ((_ is Cons!4450) rules!1920) ((_ is Nil!4450) (t!71692 rules!1920))))))

(declare-fun lt!204558 () Unit!8051)

(declare-fun lt!204555 () Unit!8051)

(assert (=> d!174976 (= lt!204558 lt!204555)))

(declare-fun isPrefix!517 (List!4459 List!4459) Bool)

(assert (=> d!174976 (isPrefix!517 lt!204364 lt!204364)))

(declare-fun lemmaIsPrefixRefl!291 (List!4459 List!4459) Unit!8051)

(assert (=> d!174976 (= lt!204555 (lemmaIsPrefixRefl!291 lt!204364 lt!204364))))

(declare-fun rulesValidInductive!286 (LexerInterface!751 List!4460) Bool)

(assert (=> d!174976 (rulesValidInductive!286 thiss!17480 rules!1920)))

(assert (=> d!174976 (= (maxPrefix!467 thiss!17480 rules!1920 lt!204364) lt!204559)))

(declare-fun b!458809 () Bool)

(declare-fun call!31837 () Option!1164)

(assert (=> b!458809 (= e!280872 call!31837)))

(declare-fun b!458810 () Bool)

(declare-fun lt!204556 () Option!1164)

(declare-fun lt!204557 () Option!1164)

(assert (=> b!458810 (= e!280872 (ite (and ((_ is None!1163) lt!204556) ((_ is None!1163) lt!204557)) None!1163 (ite ((_ is None!1163) lt!204557) lt!204556 (ite ((_ is None!1163) lt!204556) lt!204557 (ite (>= (size!3643 (_1!2927 (v!15500 lt!204556))) (size!3643 (_1!2927 (v!15500 lt!204557)))) lt!204556 lt!204557)))))))

(assert (=> b!458810 (= lt!204556 call!31837)))

(assert (=> b!458810 (= lt!204557 (maxPrefix!467 thiss!17480 (t!71692 rules!1920) lt!204364))))

(declare-fun b!458811 () Bool)

(declare-fun res!204028 () Bool)

(assert (=> b!458811 (=> (not res!204028) (not e!280871))))

(declare-fun apply!1146 (TokenValueInjection!1546 BalanceConc!3112) TokenValue!887)

(assert (=> b!458811 (= res!204028 (= (value!28968 (_1!2927 (get!1633 lt!204559))) (apply!1146 (transformation!865 (rule!1560 (_1!2927 (get!1633 lt!204559)))) (seqFromList!1095 (originalCharacters!908 (_1!2927 (get!1633 lt!204559)))))))))

(declare-fun b!458812 () Bool)

(assert (=> b!458812 (= e!280870 e!280871)))

(declare-fun res!204027 () Bool)

(assert (=> b!458812 (=> (not res!204027) (not e!280871))))

(assert (=> b!458812 (= res!204027 (isDefined!1003 lt!204559))))

(declare-fun b!458813 () Bool)

(declare-fun res!204026 () Bool)

(assert (=> b!458813 (=> (not res!204026) (not e!280871))))

(assert (=> b!458813 (= res!204026 (= (++!1298 (list!1977 (charsOf!508 (_1!2927 (get!1633 lt!204559)))) (_2!2927 (get!1633 lt!204559))) lt!204364))))

(declare-fun b!458814 () Bool)

(declare-fun res!204025 () Bool)

(assert (=> b!458814 (=> (not res!204025) (not e!280871))))

(assert (=> b!458814 (= res!204025 (= (list!1977 (charsOf!508 (_1!2927 (get!1633 lt!204559)))) (originalCharacters!908 (_1!2927 (get!1633 lt!204559)))))))

(declare-fun bm!31832 () Bool)

(declare-fun maxPrefixOneRule!225 (LexerInterface!751 Rule!1530 List!4459) Option!1164)

(assert (=> bm!31832 (= call!31837 (maxPrefixOneRule!225 thiss!17480 (h!9847 rules!1920) lt!204364))))

(assert (= (and d!174976 c!92585) b!458809))

(assert (= (and d!174976 (not c!92585)) b!458810))

(assert (= (or b!458809 b!458810) bm!31832))

(assert (= (and d!174976 (not res!204024)) b!458812))

(assert (= (and b!458812 res!204027) b!458814))

(assert (= (and b!458814 res!204025) b!458808))

(assert (= (and b!458808 res!204030) b!458813))

(assert (= (and b!458813 res!204026) b!458811))

(assert (= (and b!458811 res!204028) b!458807))

(assert (= (and b!458807 res!204029) b!458806))

(declare-fun m!726579 () Bool)

(assert (=> b!458812 m!726579))

(declare-fun m!726581 () Bool)

(assert (=> b!458807 m!726581))

(declare-fun m!726583 () Bool)

(assert (=> b!458807 m!726583))

(assert (=> b!458807 m!726583))

(declare-fun m!726585 () Bool)

(assert (=> b!458807 m!726585))

(assert (=> b!458807 m!726585))

(declare-fun m!726587 () Bool)

(assert (=> b!458807 m!726587))

(declare-fun m!726589 () Bool)

(assert (=> b!458810 m!726589))

(assert (=> b!458808 m!726581))

(declare-fun m!726591 () Bool)

(assert (=> b!458808 m!726591))

(assert (=> b!458808 m!726297))

(declare-fun m!726593 () Bool)

(assert (=> bm!31832 m!726593))

(declare-fun m!726595 () Bool)

(assert (=> d!174976 m!726595))

(declare-fun m!726597 () Bool)

(assert (=> d!174976 m!726597))

(declare-fun m!726599 () Bool)

(assert (=> d!174976 m!726599))

(declare-fun m!726601 () Bool)

(assert (=> d!174976 m!726601))

(assert (=> b!458814 m!726581))

(assert (=> b!458814 m!726583))

(assert (=> b!458814 m!726583))

(assert (=> b!458814 m!726585))

(assert (=> b!458813 m!726581))

(assert (=> b!458813 m!726583))

(assert (=> b!458813 m!726583))

(assert (=> b!458813 m!726585))

(assert (=> b!458813 m!726585))

(declare-fun m!726603 () Bool)

(assert (=> b!458813 m!726603))

(assert (=> b!458806 m!726581))

(declare-fun m!726605 () Bool)

(assert (=> b!458806 m!726605))

(assert (=> b!458811 m!726581))

(declare-fun m!726607 () Bool)

(assert (=> b!458811 m!726607))

(assert (=> b!458811 m!726607))

(declare-fun m!726613 () Bool)

(assert (=> b!458811 m!726613))

(assert (=> b!458463 d!174976))

(declare-fun d!174978 () Bool)

(declare-fun res!204036 () Bool)

(declare-fun e!280879 () Bool)

(assert (=> d!174978 (=> (not res!204036) (not e!280879))))

(assert (=> d!174978 (= res!204036 (not (isEmpty!3429 (originalCharacters!908 separatorToken!170))))))

(assert (=> d!174978 (= (inv!5531 separatorToken!170) e!280879)))

(declare-fun b!458825 () Bool)

(declare-fun res!204037 () Bool)

(assert (=> b!458825 (=> (not res!204037) (not e!280879))))

(assert (=> b!458825 (= res!204037 (= (originalCharacters!908 separatorToken!170) (list!1977 (dynLambda!2710 (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))) (value!28968 separatorToken!170)))))))

(declare-fun b!458826 () Bool)

(assert (=> b!458826 (= e!280879 (= (size!3643 separatorToken!170) (size!3646 (originalCharacters!908 separatorToken!170))))))

(assert (= (and d!174978 res!204036) b!458825))

(assert (= (and b!458825 res!204037) b!458826))

(declare-fun b_lambda!19039 () Bool)

(assert (=> (not b_lambda!19039) (not b!458825)))

(assert (=> b!458825 t!71701))

(declare-fun b_and!49317 () Bool)

(assert (= b_and!49305 (and (=> t!71701 result!50632) b_and!49317)))

(assert (=> b!458825 t!71703))

(declare-fun b_and!49319 () Bool)

(assert (= b_and!49307 (and (=> t!71703 result!50636) b_and!49319)))

(assert (=> b!458825 t!71705))

(declare-fun b_and!49321 () Bool)

(assert (= b_and!49309 (and (=> t!71705 result!50638) b_and!49321)))

(declare-fun m!726617 () Bool)

(assert (=> d!174978 m!726617))

(assert (=> b!458825 m!726319))

(assert (=> b!458825 m!726319))

(declare-fun m!726619 () Bool)

(assert (=> b!458825 m!726619))

(declare-fun m!726621 () Bool)

(assert (=> b!458826 m!726621))

(assert (=> start!43526 d!174978))

(declare-fun d!174984 () Bool)

(assert (=> d!174984 (= (inv!5527 (tag!1125 (rule!1560 (h!9848 tokens!465)))) (= (mod (str.len (value!28967 (tag!1125 (rule!1560 (h!9848 tokens!465))))) 2) 0))))

(assert (=> b!458486 d!174984))

(declare-fun d!174986 () Bool)

(declare-fun res!204040 () Bool)

(declare-fun e!280882 () Bool)

(assert (=> d!174986 (=> (not res!204040) (not e!280882))))

(declare-fun semiInverseModEq!345 (Int Int) Bool)

(assert (=> d!174986 (= res!204040 (semiInverseModEq!345 (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))) (toValue!1684 (transformation!865 (rule!1560 (h!9848 tokens!465))))))))

(assert (=> d!174986 (= (inv!5530 (transformation!865 (rule!1560 (h!9848 tokens!465)))) e!280882)))

(declare-fun b!458829 () Bool)

(declare-fun equivClasses!328 (Int Int) Bool)

(assert (=> b!458829 (= e!280882 (equivClasses!328 (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))) (toValue!1684 (transformation!865 (rule!1560 (h!9848 tokens!465))))))))

(assert (= (and d!174986 res!204040) b!458829))

(declare-fun m!726623 () Bool)

(assert (=> d!174986 m!726623))

(declare-fun m!726625 () Bool)

(assert (=> b!458829 m!726625))

(assert (=> b!458486 d!174986))

(declare-fun d!174988 () Bool)

(declare-fun lt!204565 () Bool)

(declare-fun e!280888 () Bool)

(assert (=> d!174988 (= lt!204565 e!280888)))

(declare-fun res!204049 () Bool)

(assert (=> d!174988 (=> (not res!204049) (not e!280888))))

(assert (=> d!174988 (= res!204049 (= (list!1981 (_1!2929 (lex!543 thiss!17480 rules!1920 (print!476 thiss!17480 (singletonSeq!411 (h!9848 tokens!465)))))) (list!1981 (singletonSeq!411 (h!9848 tokens!465)))))))

(declare-fun e!280887 () Bool)

(assert (=> d!174988 (= lt!204565 e!280887)))

(declare-fun res!204047 () Bool)

(assert (=> d!174988 (=> (not res!204047) (not e!280887))))

(declare-fun lt!204566 () tuple2!5426)

(assert (=> d!174988 (= res!204047 (= (size!3647 (_1!2929 lt!204566)) 1))))

(assert (=> d!174988 (= lt!204566 (lex!543 thiss!17480 rules!1920 (print!476 thiss!17480 (singletonSeq!411 (h!9848 tokens!465)))))))

(assert (=> d!174988 (not (isEmpty!3426 rules!1920))))

(assert (=> d!174988 (= (rulesProduceIndividualToken!500 thiss!17480 rules!1920 (h!9848 tokens!465)) lt!204565)))

(declare-fun b!458836 () Bool)

(declare-fun res!204048 () Bool)

(assert (=> b!458836 (=> (not res!204048) (not e!280887))))

(assert (=> b!458836 (= res!204048 (= (apply!1144 (_1!2929 lt!204566) 0) (h!9848 tokens!465)))))

(declare-fun b!458837 () Bool)

(declare-fun isEmpty!3434 (BalanceConc!3112) Bool)

(assert (=> b!458837 (= e!280887 (isEmpty!3434 (_2!2929 lt!204566)))))

(declare-fun b!458838 () Bool)

(assert (=> b!458838 (= e!280888 (isEmpty!3434 (_2!2929 (lex!543 thiss!17480 rules!1920 (print!476 thiss!17480 (singletonSeq!411 (h!9848 tokens!465)))))))))

(assert (= (and d!174988 res!204047) b!458836))

(assert (= (and b!458836 res!204048) b!458837))

(assert (= (and d!174988 res!204049) b!458838))

(declare-fun m!726627 () Bool)

(assert (=> d!174988 m!726627))

(assert (=> d!174988 m!726109))

(declare-fun m!726629 () Bool)

(assert (=> d!174988 m!726629))

(declare-fun m!726631 () Bool)

(assert (=> d!174988 m!726631))

(declare-fun m!726633 () Bool)

(assert (=> d!174988 m!726633))

(assert (=> d!174988 m!726169))

(assert (=> d!174988 m!726629))

(assert (=> d!174988 m!726169))

(assert (=> d!174988 m!726169))

(declare-fun m!726635 () Bool)

(assert (=> d!174988 m!726635))

(declare-fun m!726637 () Bool)

(assert (=> b!458836 m!726637))

(declare-fun m!726639 () Bool)

(assert (=> b!458837 m!726639))

(assert (=> b!458838 m!726169))

(assert (=> b!458838 m!726169))

(assert (=> b!458838 m!726629))

(assert (=> b!458838 m!726629))

(assert (=> b!458838 m!726631))

(declare-fun m!726641 () Bool)

(assert (=> b!458838 m!726641))

(assert (=> b!458465 d!174988))

(declare-fun d!174990 () Bool)

(assert (=> d!174990 (= (get!1633 lt!204356) (v!15500 lt!204356))))

(assert (=> b!458487 d!174990))

(declare-fun d!174992 () Bool)

(assert (=> d!174992 (= (head!1118 tokens!465) (h!9848 tokens!465))))

(assert (=> b!458487 d!174992))

(declare-fun d!174994 () Bool)

(assert (=> d!174994 (= (list!1977 lt!204369) (list!1980 (c!92502 lt!204369)))))

(declare-fun bs!56912 () Bool)

(assert (= bs!56912 d!174994))

(declare-fun m!726643 () Bool)

(assert (=> bs!56912 m!726643))

(assert (=> b!458466 d!174994))

(declare-fun d!174996 () Bool)

(declare-fun e!280891 () Bool)

(assert (=> d!174996 e!280891))

(declare-fun res!204052 () Bool)

(assert (=> d!174996 (=> (not res!204052) (not e!280891))))

(declare-fun lt!204569 () BalanceConc!3114)

(assert (=> d!174996 (= res!204052 (= (list!1981 lt!204569) (Cons!4451 (h!9848 tokens!465) Nil!4451)))))

(declare-fun singleton!198 (Token!1474) BalanceConc!3114)

(assert (=> d!174996 (= lt!204569 (singleton!198 (h!9848 tokens!465)))))

(assert (=> d!174996 (= (singletonSeq!411 (h!9848 tokens!465)) lt!204569)))

(declare-fun b!458841 () Bool)

(declare-fun isBalanced!477 (Conc!1553) Bool)

(assert (=> b!458841 (= e!280891 (isBalanced!477 (c!92504 lt!204569)))))

(assert (= (and d!174996 res!204052) b!458841))

(declare-fun m!726645 () Bool)

(assert (=> d!174996 m!726645))

(declare-fun m!726647 () Bool)

(assert (=> d!174996 m!726647))

(declare-fun m!726649 () Bool)

(assert (=> b!458841 m!726649))

(assert (=> b!458466 d!174996))

(declare-fun d!174998 () Bool)

(declare-fun c!92588 () Bool)

(assert (=> d!174998 (= c!92588 ((_ is Cons!4451) (Cons!4451 (h!9848 tokens!465) Nil!4451)))))

(declare-fun e!280894 () List!4459)

(assert (=> d!174998 (= (printList!425 thiss!17480 (Cons!4451 (h!9848 tokens!465) Nil!4451)) e!280894)))

(declare-fun b!458846 () Bool)

(assert (=> b!458846 (= e!280894 (++!1298 (list!1977 (charsOf!508 (h!9848 (Cons!4451 (h!9848 tokens!465) Nil!4451)))) (printList!425 thiss!17480 (t!71693 (Cons!4451 (h!9848 tokens!465) Nil!4451)))))))

(declare-fun b!458847 () Bool)

(assert (=> b!458847 (= e!280894 Nil!4449)))

(assert (= (and d!174998 c!92588) b!458846))

(assert (= (and d!174998 (not c!92588)) b!458847))

(declare-fun m!726651 () Bool)

(assert (=> b!458846 m!726651))

(assert (=> b!458846 m!726651))

(declare-fun m!726653 () Bool)

(assert (=> b!458846 m!726653))

(declare-fun m!726655 () Bool)

(assert (=> b!458846 m!726655))

(assert (=> b!458846 m!726653))

(assert (=> b!458846 m!726655))

(declare-fun m!726657 () Bool)

(assert (=> b!458846 m!726657))

(assert (=> b!458466 d!174998))

(declare-fun d!175000 () Bool)

(declare-fun lt!204597 () BalanceConc!3112)

(declare-fun printListTailRec!213 (LexerInterface!751 List!4461 List!4459) List!4459)

(assert (=> d!175000 (= (list!1977 lt!204597) (printListTailRec!213 thiss!17480 (dropList!248 lt!204360 0) (list!1977 (BalanceConc!3113 Empty!1552))))))

(declare-fun e!280910 () BalanceConc!3112)

(assert (=> d!175000 (= lt!204597 e!280910)))

(declare-fun c!92595 () Bool)

(assert (=> d!175000 (= c!92595 (>= 0 (size!3647 lt!204360)))))

(declare-fun e!280909 () Bool)

(assert (=> d!175000 e!280909))

(declare-fun res!204061 () Bool)

(assert (=> d!175000 (=> (not res!204061) (not e!280909))))

(assert (=> d!175000 (= res!204061 (>= 0 0))))

(assert (=> d!175000 (= (printTailRec!437 thiss!17480 lt!204360 0 (BalanceConc!3113 Empty!1552)) lt!204597)))

(declare-fun b!458868 () Bool)

(assert (=> b!458868 (= e!280909 (<= 0 (size!3647 lt!204360)))))

(declare-fun b!458869 () Bool)

(assert (=> b!458869 (= e!280910 (BalanceConc!3113 Empty!1552))))

(declare-fun b!458870 () Bool)

(assert (=> b!458870 (= e!280910 (printTailRec!437 thiss!17480 lt!204360 (+ 0 1) (++!1300 (BalanceConc!3113 Empty!1552) (charsOf!508 (apply!1144 lt!204360 0)))))))

(declare-fun lt!204599 () List!4461)

(assert (=> b!458870 (= lt!204599 (list!1981 lt!204360))))

(declare-fun lt!204596 () Unit!8051)

(assert (=> b!458870 (= lt!204596 (lemmaDropApply!288 lt!204599 0))))

(assert (=> b!458870 (= (head!1118 (drop!317 lt!204599 0)) (apply!1145 lt!204599 0))))

(declare-fun lt!204594 () Unit!8051)

(assert (=> b!458870 (= lt!204594 lt!204596)))

(declare-fun lt!204598 () List!4461)

(assert (=> b!458870 (= lt!204598 (list!1981 lt!204360))))

(declare-fun lt!204595 () Unit!8051)

(assert (=> b!458870 (= lt!204595 (lemmaDropTail!280 lt!204598 0))))

(assert (=> b!458870 (= (tail!645 (drop!317 lt!204598 0)) (drop!317 lt!204598 (+ 0 1)))))

(declare-fun lt!204600 () Unit!8051)

(assert (=> b!458870 (= lt!204600 lt!204595)))

(assert (= (and d!175000 res!204061) b!458868))

(assert (= (and d!175000 c!92595) b!458869))

(assert (= (and d!175000 (not c!92595)) b!458870))

(declare-fun m!726675 () Bool)

(assert (=> d!175000 m!726675))

(declare-fun m!726677 () Bool)

(assert (=> d!175000 m!726677))

(declare-fun m!726679 () Bool)

(assert (=> d!175000 m!726679))

(declare-fun m!726681 () Bool)

(assert (=> d!175000 m!726681))

(assert (=> d!175000 m!726675))

(assert (=> d!175000 m!726681))

(declare-fun m!726683 () Bool)

(assert (=> d!175000 m!726683))

(assert (=> b!458868 m!726677))

(declare-fun m!726685 () Bool)

(assert (=> b!458870 m!726685))

(declare-fun m!726687 () Bool)

(assert (=> b!458870 m!726687))

(declare-fun m!726689 () Bool)

(assert (=> b!458870 m!726689))

(declare-fun m!726691 () Bool)

(assert (=> b!458870 m!726691))

(declare-fun m!726693 () Bool)

(assert (=> b!458870 m!726693))

(declare-fun m!726695 () Bool)

(assert (=> b!458870 m!726695))

(declare-fun m!726697 () Bool)

(assert (=> b!458870 m!726697))

(assert (=> b!458870 m!726689))

(assert (=> b!458870 m!726691))

(declare-fun m!726699 () Bool)

(assert (=> b!458870 m!726699))

(assert (=> b!458870 m!726693))

(declare-fun m!726701 () Bool)

(assert (=> b!458870 m!726701))

(declare-fun m!726703 () Bool)

(assert (=> b!458870 m!726703))

(declare-fun m!726705 () Bool)

(assert (=> b!458870 m!726705))

(assert (=> b!458870 m!726705))

(declare-fun m!726707 () Bool)

(assert (=> b!458870 m!726707))

(declare-fun m!726709 () Bool)

(assert (=> b!458870 m!726709))

(assert (=> b!458870 m!726697))

(assert (=> b!458466 d!175000))

(declare-fun d!175010 () Bool)

(declare-fun lt!204603 () BalanceConc!3112)

(assert (=> d!175010 (= (list!1977 lt!204603) (printList!425 thiss!17480 (list!1981 lt!204360)))))

(assert (=> d!175010 (= lt!204603 (printTailRec!437 thiss!17480 lt!204360 0 (BalanceConc!3113 Empty!1552)))))

(assert (=> d!175010 (= (print!476 thiss!17480 lt!204360) lt!204603)))

(declare-fun bs!56914 () Bool)

(assert (= bs!56914 d!175010))

(declare-fun m!726711 () Bool)

(assert (=> bs!56914 m!726711))

(assert (=> bs!56914 m!726709))

(assert (=> bs!56914 m!726709))

(declare-fun m!726713 () Bool)

(assert (=> bs!56914 m!726713))

(assert (=> bs!56914 m!726161))

(assert (=> b!458466 d!175010))

(declare-fun d!175012 () Bool)

(declare-fun isEmpty!3435 (Option!1165) Bool)

(assert (=> d!175012 (= (isDefined!1004 (maxPrefixZipperSequence!430 thiss!17480 rules!1920 (seqFromList!1095 (originalCharacters!908 (h!9848 tokens!465))))) (not (isEmpty!3435 (maxPrefixZipperSequence!430 thiss!17480 rules!1920 (seqFromList!1095 (originalCharacters!908 (h!9848 tokens!465)))))))))

(declare-fun bs!56915 () Bool)

(assert (= bs!56915 d!175012))

(assert (=> bs!56915 m!726081))

(declare-fun m!726715 () Bool)

(assert (=> bs!56915 m!726715))

(assert (=> b!458467 d!175012))

(declare-fun d!175014 () Bool)

(declare-fun e!280978 () Bool)

(assert (=> d!175014 e!280978))

(declare-fun res!204130 () Bool)

(assert (=> d!175014 (=> (not res!204130) (not e!280978))))

(declare-fun lt!204658 () Option!1165)

(declare-fun maxPrefixZipper!194 (LexerInterface!751 List!4460 List!4459) Option!1164)

(assert (=> d!175014 (= res!204130 (= (isDefined!1004 lt!204658) (isDefined!1003 (maxPrefixZipper!194 thiss!17480 rules!1920 (list!1977 (seqFromList!1095 (originalCharacters!908 (h!9848 tokens!465))))))))))

(declare-fun e!280979 () Option!1165)

(assert (=> d!175014 (= lt!204658 e!280979)))

(declare-fun c!92616 () Bool)

(assert (=> d!175014 (= c!92616 (and ((_ is Cons!4450) rules!1920) ((_ is Nil!4450) (t!71692 rules!1920))))))

(declare-fun lt!204657 () Unit!8051)

(declare-fun lt!204653 () Unit!8051)

(assert (=> d!175014 (= lt!204657 lt!204653)))

(declare-fun lt!204655 () List!4459)

(declare-fun lt!204656 () List!4459)

(assert (=> d!175014 (isPrefix!517 lt!204655 lt!204656)))

(assert (=> d!175014 (= lt!204653 (lemmaIsPrefixRefl!291 lt!204655 lt!204656))))

(assert (=> d!175014 (= lt!204656 (list!1977 (seqFromList!1095 (originalCharacters!908 (h!9848 tokens!465)))))))

(assert (=> d!175014 (= lt!204655 (list!1977 (seqFromList!1095 (originalCharacters!908 (h!9848 tokens!465)))))))

(assert (=> d!175014 (rulesValidInductive!286 thiss!17480 rules!1920)))

(assert (=> d!175014 (= (maxPrefixZipperSequence!430 thiss!17480 rules!1920 (seqFromList!1095 (originalCharacters!908 (h!9848 tokens!465)))) lt!204658)))

(declare-fun b!458977 () Bool)

(declare-fun res!204131 () Bool)

(assert (=> b!458977 (=> (not res!204131) (not e!280978))))

(declare-fun e!280982 () Bool)

(assert (=> b!458977 (= res!204131 e!280982)))

(declare-fun res!204133 () Bool)

(assert (=> b!458977 (=> res!204133 e!280982)))

(assert (=> b!458977 (= res!204133 (not (isDefined!1004 lt!204658)))))

(declare-fun b!458978 () Bool)

(declare-fun e!280980 () Bool)

(declare-fun e!280977 () Bool)

(assert (=> b!458978 (= e!280980 e!280977)))

(declare-fun res!204129 () Bool)

(assert (=> b!458978 (=> (not res!204129) (not e!280977))))

(declare-fun get!1635 (Option!1165) tuple2!5424)

(assert (=> b!458978 (= res!204129 (= (_1!2928 (get!1635 lt!204658)) (_1!2927 (get!1633 (maxPrefix!467 thiss!17480 rules!1920 (list!1977 (seqFromList!1095 (originalCharacters!908 (h!9848 tokens!465)))))))))))

(declare-fun bm!31839 () Bool)

(declare-fun call!31844 () Option!1165)

(declare-fun maxPrefixOneRuleZipperSequence!195 (LexerInterface!751 Rule!1530 BalanceConc!3112) Option!1165)

(assert (=> bm!31839 (= call!31844 (maxPrefixOneRuleZipperSequence!195 thiss!17480 (h!9847 rules!1920) (seqFromList!1095 (originalCharacters!908 (h!9848 tokens!465)))))))

(declare-fun e!280981 () Bool)

(declare-fun b!458979 () Bool)

(assert (=> b!458979 (= e!280981 (= (list!1977 (_2!2928 (get!1635 lt!204658))) (_2!2927 (get!1633 (maxPrefixZipper!194 thiss!17480 rules!1920 (list!1977 (seqFromList!1095 (originalCharacters!908 (h!9848 tokens!465)))))))))))

(declare-fun b!458980 () Bool)

(assert (=> b!458980 (= e!280977 (= (list!1977 (_2!2928 (get!1635 lt!204658))) (_2!2927 (get!1633 (maxPrefix!467 thiss!17480 rules!1920 (list!1977 (seqFromList!1095 (originalCharacters!908 (h!9848 tokens!465)))))))))))

(declare-fun b!458981 () Bool)

(assert (=> b!458981 (= e!280978 e!280980)))

(declare-fun res!204132 () Bool)

(assert (=> b!458981 (=> res!204132 e!280980)))

(assert (=> b!458981 (= res!204132 (not (isDefined!1004 lt!204658)))))

(declare-fun b!458982 () Bool)

(assert (=> b!458982 (= e!280982 e!280981)))

(declare-fun res!204128 () Bool)

(assert (=> b!458982 (=> (not res!204128) (not e!280981))))

(assert (=> b!458982 (= res!204128 (= (_1!2928 (get!1635 lt!204658)) (_1!2927 (get!1633 (maxPrefixZipper!194 thiss!17480 rules!1920 (list!1977 (seqFromList!1095 (originalCharacters!908 (h!9848 tokens!465)))))))))))

(declare-fun b!458983 () Bool)

(declare-fun lt!204654 () Option!1165)

(declare-fun lt!204652 () Option!1165)

(assert (=> b!458983 (= e!280979 (ite (and ((_ is None!1164) lt!204654) ((_ is None!1164) lt!204652)) None!1164 (ite ((_ is None!1164) lt!204652) lt!204654 (ite ((_ is None!1164) lt!204654) lt!204652 (ite (>= (size!3643 (_1!2928 (v!15501 lt!204654))) (size!3643 (_1!2928 (v!15501 lt!204652)))) lt!204654 lt!204652)))))))

(assert (=> b!458983 (= lt!204654 call!31844)))

(assert (=> b!458983 (= lt!204652 (maxPrefixZipperSequence!430 thiss!17480 (t!71692 rules!1920) (seqFromList!1095 (originalCharacters!908 (h!9848 tokens!465)))))))

(declare-fun b!458984 () Bool)

(assert (=> b!458984 (= e!280979 call!31844)))

(assert (= (and d!175014 c!92616) b!458984))

(assert (= (and d!175014 (not c!92616)) b!458983))

(assert (= (or b!458984 b!458983) bm!31839))

(assert (= (and d!175014 res!204130) b!458977))

(assert (= (and b!458977 (not res!204133)) b!458982))

(assert (= (and b!458982 res!204128) b!458979))

(assert (= (and b!458977 res!204131) b!458981))

(assert (= (and b!458981 (not res!204132)) b!458978))

(assert (= (and b!458978 res!204129) b!458980))

(declare-fun m!726851 () Bool)

(assert (=> d!175014 m!726851))

(declare-fun m!726853 () Bool)

(assert (=> d!175014 m!726853))

(assert (=> d!175014 m!726853))

(declare-fun m!726855 () Bool)

(assert (=> d!175014 m!726855))

(assert (=> d!175014 m!726601))

(declare-fun m!726857 () Bool)

(assert (=> d!175014 m!726857))

(assert (=> d!175014 m!726079))

(assert (=> d!175014 m!726851))

(declare-fun m!726859 () Bool)

(assert (=> d!175014 m!726859))

(declare-fun m!726861 () Bool)

(assert (=> d!175014 m!726861))

(assert (=> bm!31839 m!726079))

(declare-fun m!726863 () Bool)

(assert (=> bm!31839 m!726863))

(assert (=> b!458980 m!726851))

(declare-fun m!726865 () Bool)

(assert (=> b!458980 m!726865))

(assert (=> b!458980 m!726865))

(declare-fun m!726867 () Bool)

(assert (=> b!458980 m!726867))

(declare-fun m!726869 () Bool)

(assert (=> b!458980 m!726869))

(declare-fun m!726871 () Bool)

(assert (=> b!458980 m!726871))

(assert (=> b!458980 m!726079))

(assert (=> b!458980 m!726851))

(assert (=> b!458983 m!726079))

(declare-fun m!726873 () Bool)

(assert (=> b!458983 m!726873))

(assert (=> b!458982 m!726869))

(assert (=> b!458982 m!726079))

(assert (=> b!458982 m!726851))

(assert (=> b!458982 m!726851))

(assert (=> b!458982 m!726853))

(assert (=> b!458982 m!726853))

(declare-fun m!726875 () Bool)

(assert (=> b!458982 m!726875))

(assert (=> b!458978 m!726869))

(assert (=> b!458978 m!726079))

(assert (=> b!458978 m!726851))

(assert (=> b!458978 m!726851))

(assert (=> b!458978 m!726865))

(assert (=> b!458978 m!726865))

(assert (=> b!458978 m!726867))

(assert (=> b!458977 m!726861))

(assert (=> b!458979 m!726853))

(assert (=> b!458979 m!726875))

(assert (=> b!458979 m!726851))

(assert (=> b!458979 m!726853))

(assert (=> b!458979 m!726869))

(assert (=> b!458979 m!726871))

(assert (=> b!458979 m!726079))

(assert (=> b!458979 m!726851))

(assert (=> b!458981 m!726861))

(assert (=> b!458467 d!175014))

(declare-fun d!175052 () Bool)

(declare-fun fromListB!491 (List!4459) BalanceConc!3112)

(assert (=> d!175052 (= (seqFromList!1095 (originalCharacters!908 (h!9848 tokens!465))) (fromListB!491 (originalCharacters!908 (h!9848 tokens!465))))))

(declare-fun bs!56919 () Bool)

(assert (= bs!56919 d!175052))

(declare-fun m!726877 () Bool)

(assert (=> bs!56919 m!726877))

(assert (=> b!458467 d!175052))

(declare-fun d!175054 () Bool)

(declare-fun dynLambda!2712 (Int Token!1474) Bool)

(assert (=> d!175054 (dynLambda!2712 lambda!13458 (h!9848 tokens!465))))

(declare-fun lt!204661 () Unit!8051)

(declare-fun choose!3452 (List!4461 Int Token!1474) Unit!8051)

(assert (=> d!175054 (= lt!204661 (choose!3452 tokens!465 lambda!13458 (h!9848 tokens!465)))))

(declare-fun e!280985 () Bool)

(assert (=> d!175054 e!280985))

(declare-fun res!204136 () Bool)

(assert (=> d!175054 (=> (not res!204136) (not e!280985))))

(assert (=> d!175054 (= res!204136 (forall!1294 tokens!465 lambda!13458))))

(assert (=> d!175054 (= (forallContained!418 tokens!465 lambda!13458 (h!9848 tokens!465)) lt!204661)))

(declare-fun b!458987 () Bool)

(declare-fun contains!1001 (List!4461 Token!1474) Bool)

(assert (=> b!458987 (= e!280985 (contains!1001 tokens!465 (h!9848 tokens!465)))))

(assert (= (and d!175054 res!204136) b!458987))

(declare-fun b_lambda!19043 () Bool)

(assert (=> (not b_lambda!19043) (not d!175054)))

(declare-fun m!726879 () Bool)

(assert (=> d!175054 m!726879))

(declare-fun m!726881 () Bool)

(assert (=> d!175054 m!726881))

(declare-fun m!726883 () Bool)

(assert (=> d!175054 m!726883))

(declare-fun m!726885 () Bool)

(assert (=> b!458987 m!726885))

(assert (=> b!458467 d!175054))

(declare-fun d!175056 () Bool)

(declare-fun res!204141 () Bool)

(declare-fun e!280990 () Bool)

(assert (=> d!175056 (=> res!204141 e!280990)))

(assert (=> d!175056 (= res!204141 ((_ is Nil!4451) (t!71693 tokens!465)))))

(assert (=> d!175056 (= (forall!1294 (t!71693 tokens!465) lambda!13457) e!280990)))

(declare-fun b!458992 () Bool)

(declare-fun e!280991 () Bool)

(assert (=> b!458992 (= e!280990 e!280991)))

(declare-fun res!204142 () Bool)

(assert (=> b!458992 (=> (not res!204142) (not e!280991))))

(assert (=> b!458992 (= res!204142 (dynLambda!2712 lambda!13457 (h!9848 (t!71693 tokens!465))))))

(declare-fun b!458993 () Bool)

(assert (=> b!458993 (= e!280991 (forall!1294 (t!71693 (t!71693 tokens!465)) lambda!13457))))

(assert (= (and d!175056 (not res!204141)) b!458992))

(assert (= (and b!458992 res!204142) b!458993))

(declare-fun b_lambda!19045 () Bool)

(assert (=> (not b_lambda!19045) (not b!458992)))

(declare-fun m!726887 () Bool)

(assert (=> b!458992 m!726887))

(declare-fun m!726889 () Bool)

(assert (=> b!458993 m!726889))

(assert (=> b!458489 d!175056))

(declare-fun d!175058 () Bool)

(declare-fun lt!204664 () Int)

(assert (=> d!175058 (>= lt!204664 0)))

(declare-fun e!280994 () Int)

(assert (=> d!175058 (= lt!204664 e!280994)))

(declare-fun c!92619 () Bool)

(assert (=> d!175058 (= c!92619 ((_ is Nil!4451) (t!71693 tokens!465)))))

(assert (=> d!175058 (= (ListPrimitiveSize!36 (t!71693 tokens!465)) lt!204664)))

(declare-fun b!458998 () Bool)

(assert (=> b!458998 (= e!280994 0)))

(declare-fun b!458999 () Bool)

(assert (=> b!458999 (= e!280994 (+ 1 (ListPrimitiveSize!36 (t!71693 (t!71693 tokens!465)))))))

(assert (= (and d!175058 c!92619) b!458998))

(assert (= (and d!175058 (not c!92619)) b!458999))

(declare-fun m!726891 () Bool)

(assert (=> b!458999 m!726891))

(assert (=> b!458468 d!175058))

(declare-fun d!175060 () Bool)

(declare-fun lt!204665 () Int)

(assert (=> d!175060 (>= lt!204665 0)))

(declare-fun e!280995 () Int)

(assert (=> d!175060 (= lt!204665 e!280995)))

(declare-fun c!92620 () Bool)

(assert (=> d!175060 (= c!92620 ((_ is Nil!4451) tokens!465))))

(assert (=> d!175060 (= (ListPrimitiveSize!36 tokens!465) lt!204665)))

(declare-fun b!459000 () Bool)

(assert (=> b!459000 (= e!280995 0)))

(declare-fun b!459001 () Bool)

(assert (=> b!459001 (= e!280995 (+ 1 (ListPrimitiveSize!36 (t!71693 tokens!465))))))

(assert (= (and d!175060 c!92620) b!459000))

(assert (= (and d!175060 (not c!92620)) b!459001))

(assert (=> b!459001 m!726057))

(assert (=> b!458468 d!175060))

(declare-fun d!175062 () Bool)

(assert (=> d!175062 (= (inv!5527 (tag!1125 (rule!1560 separatorToken!170))) (= (mod (str.len (value!28967 (tag!1125 (rule!1560 separatorToken!170)))) 2) 0))))

(assert (=> b!458470 d!175062))

(declare-fun d!175064 () Bool)

(declare-fun res!204143 () Bool)

(declare-fun e!280996 () Bool)

(assert (=> d!175064 (=> (not res!204143) (not e!280996))))

(assert (=> d!175064 (= res!204143 (semiInverseModEq!345 (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))) (toValue!1684 (transformation!865 (rule!1560 separatorToken!170)))))))

(assert (=> d!175064 (= (inv!5530 (transformation!865 (rule!1560 separatorToken!170))) e!280996)))

(declare-fun b!459002 () Bool)

(assert (=> b!459002 (= e!280996 (equivClasses!328 (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))) (toValue!1684 (transformation!865 (rule!1560 separatorToken!170)))))))

(assert (= (and d!175064 res!204143) b!459002))

(declare-fun m!726893 () Bool)

(assert (=> d!175064 m!726893))

(declare-fun m!726895 () Bool)

(assert (=> b!459002 m!726895))

(assert (=> b!458470 d!175064))

(declare-fun d!175066 () Bool)

(assert (=> d!175066 (= (inv!5527 (tag!1125 (h!9847 rules!1920))) (= (mod (str.len (value!28967 (tag!1125 (h!9847 rules!1920)))) 2) 0))))

(assert (=> b!458471 d!175066))

(declare-fun d!175068 () Bool)

(declare-fun res!204144 () Bool)

(declare-fun e!280997 () Bool)

(assert (=> d!175068 (=> (not res!204144) (not e!280997))))

(assert (=> d!175068 (= res!204144 (semiInverseModEq!345 (toChars!1543 (transformation!865 (h!9847 rules!1920))) (toValue!1684 (transformation!865 (h!9847 rules!1920)))))))

(assert (=> d!175068 (= (inv!5530 (transformation!865 (h!9847 rules!1920))) e!280997)))

(declare-fun b!459003 () Bool)

(assert (=> b!459003 (= e!280997 (equivClasses!328 (toChars!1543 (transformation!865 (h!9847 rules!1920))) (toValue!1684 (transformation!865 (h!9847 rules!1920)))))))

(assert (= (and d!175068 res!204144) b!459003))

(declare-fun m!726897 () Bool)

(assert (=> d!175068 m!726897))

(declare-fun m!726899 () Bool)

(assert (=> b!459003 m!726899))

(assert (=> b!458471 d!175068))

(declare-fun b!459014 () Bool)

(declare-fun e!281006 () Bool)

(declare-fun e!281005 () Bool)

(assert (=> b!459014 (= e!281006 e!281005)))

(declare-fun c!92625 () Bool)

(assert (=> b!459014 (= c!92625 ((_ is IntegerValue!2662) (value!28968 separatorToken!170)))))

(declare-fun d!175070 () Bool)

(declare-fun c!92626 () Bool)

(assert (=> d!175070 (= c!92626 ((_ is IntegerValue!2661) (value!28968 separatorToken!170)))))

(assert (=> d!175070 (= (inv!21 (value!28968 separatorToken!170)) e!281006)))

(declare-fun b!459015 () Bool)

(declare-fun e!281004 () Bool)

(declare-fun inv!15 (TokenValue!887) Bool)

(assert (=> b!459015 (= e!281004 (inv!15 (value!28968 separatorToken!170)))))

(declare-fun b!459016 () Bool)

(declare-fun inv!16 (TokenValue!887) Bool)

(assert (=> b!459016 (= e!281006 (inv!16 (value!28968 separatorToken!170)))))

(declare-fun b!459017 () Bool)

(declare-fun res!204147 () Bool)

(assert (=> b!459017 (=> res!204147 e!281004)))

(assert (=> b!459017 (= res!204147 (not ((_ is IntegerValue!2663) (value!28968 separatorToken!170))))))

(assert (=> b!459017 (= e!281005 e!281004)))

(declare-fun b!459018 () Bool)

(declare-fun inv!17 (TokenValue!887) Bool)

(assert (=> b!459018 (= e!281005 (inv!17 (value!28968 separatorToken!170)))))

(assert (= (and d!175070 c!92626) b!459016))

(assert (= (and d!175070 (not c!92626)) b!459014))

(assert (= (and b!459014 c!92625) b!459018))

(assert (= (and b!459014 (not c!92625)) b!459017))

(assert (= (and b!459017 (not res!204147)) b!459015))

(declare-fun m!726901 () Bool)

(assert (=> b!459015 m!726901))

(declare-fun m!726903 () Bool)

(assert (=> b!459016 m!726903))

(declare-fun m!726905 () Bool)

(assert (=> b!459018 m!726905))

(assert (=> b!458472 d!175070))

(declare-fun d!175072 () Bool)

(assert (=> d!175072 (= (isEmpty!3426 rules!1920) ((_ is Nil!4450) rules!1920))))

(assert (=> b!458473 d!175072))

(declare-fun d!175074 () Bool)

(declare-fun res!204148 () Bool)

(declare-fun e!281007 () Bool)

(assert (=> d!175074 (=> (not res!204148) (not e!281007))))

(assert (=> d!175074 (= res!204148 (not (isEmpty!3429 (originalCharacters!908 (h!9848 tokens!465)))))))

(assert (=> d!175074 (= (inv!5531 (h!9848 tokens!465)) e!281007)))

(declare-fun b!459019 () Bool)

(declare-fun res!204149 () Bool)

(assert (=> b!459019 (=> (not res!204149) (not e!281007))))

(assert (=> b!459019 (= res!204149 (= (originalCharacters!908 (h!9848 tokens!465)) (list!1977 (dynLambda!2710 (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))) (value!28968 (h!9848 tokens!465))))))))

(declare-fun b!459020 () Bool)

(assert (=> b!459020 (= e!281007 (= (size!3643 (h!9848 tokens!465)) (size!3646 (originalCharacters!908 (h!9848 tokens!465)))))))

(assert (= (and d!175074 res!204148) b!459019))

(assert (= (and b!459019 res!204149) b!459020))

(declare-fun b_lambda!19047 () Bool)

(assert (=> (not b_lambda!19047) (not b!459019)))

(assert (=> b!459019 t!71707))

(declare-fun b_and!49323 () Bool)

(assert (= b_and!49317 (and (=> t!71707 result!50640) b_and!49323)))

(assert (=> b!459019 t!71709))

(declare-fun b_and!49325 () Bool)

(assert (= b_and!49319 (and (=> t!71709 result!50642) b_and!49325)))

(assert (=> b!459019 t!71711))

(declare-fun b_and!49327 () Bool)

(assert (= b_and!49321 (and (=> t!71711 result!50644) b_and!49327)))

(declare-fun m!726907 () Bool)

(assert (=> d!175074 m!726907))

(assert (=> b!459019 m!726343))

(assert (=> b!459019 m!726343))

(declare-fun m!726909 () Bool)

(assert (=> b!459019 m!726909))

(declare-fun m!726911 () Bool)

(assert (=> b!459020 m!726911))

(assert (=> b!458475 d!175074))

(declare-fun bs!56956 () Bool)

(declare-fun d!175076 () Bool)

(assert (= bs!56956 (and d!175076 b!458702)))

(declare-fun lambda!13490 () Int)

(assert (=> bs!56956 (= lambda!13490 lambda!13473)))

(declare-fun bs!56957 () Bool)

(assert (= bs!56957 (and d!175076 b!458467)))

(assert (=> bs!56957 (= lambda!13490 lambda!13458)))

(declare-fun bs!56958 () Bool)

(assert (= bs!56958 (and d!175076 b!458456)))

(assert (=> bs!56958 (not (= lambda!13490 lambda!13457))))

(declare-fun bs!56959 () Bool)

(assert (= bs!56959 (and d!175076 d!174950)))

(assert (=> bs!56959 (not (= lambda!13490 lambda!13472))))

(declare-fun bs!56960 () Bool)

(assert (= bs!56960 (and d!175076 b!458741)))

(assert (=> bs!56960 (= lambda!13490 lambda!13476)))

(declare-fun b!459097 () Bool)

(declare-fun e!281064 () Bool)

(assert (=> b!459097 (= e!281064 true)))

(declare-fun b!459096 () Bool)

(declare-fun e!281063 () Bool)

(assert (=> b!459096 (= e!281063 e!281064)))

(declare-fun b!459095 () Bool)

(declare-fun e!281062 () Bool)

(assert (=> b!459095 (= e!281062 e!281063)))

(assert (=> d!175076 e!281062))

(assert (= b!459096 b!459097))

(assert (= b!459095 b!459096))

(assert (= (and d!175076 ((_ is Cons!4450) rules!1920)) b!459095))

(assert (=> b!459097 (< (dynLambda!2706 order!3949 (toValue!1684 (transformation!865 (h!9847 rules!1920)))) (dynLambda!2707 order!3951 lambda!13490))))

(assert (=> b!459097 (< (dynLambda!2708 order!3953 (toChars!1543 (transformation!865 (h!9847 rules!1920)))) (dynLambda!2707 order!3951 lambda!13490))))

(assert (=> d!175076 true))

(declare-fun e!281061 () Bool)

(assert (=> d!175076 e!281061))

(declare-fun res!204190 () Bool)

(assert (=> d!175076 (=> (not res!204190) (not e!281061))))

(declare-fun lt!204717 () Bool)

(assert (=> d!175076 (= res!204190 (= lt!204717 (forall!1294 (list!1981 lt!204371) lambda!13490)))))

(declare-fun forall!1296 (BalanceConc!3114 Int) Bool)

(assert (=> d!175076 (= lt!204717 (forall!1296 lt!204371 lambda!13490))))

(assert (=> d!175076 (not (isEmpty!3426 rules!1920))))

(assert (=> d!175076 (= (rulesProduceEachTokenIndividually!543 thiss!17480 rules!1920 lt!204371) lt!204717)))

(declare-fun b!459094 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!323 (LexerInterface!751 List!4460 List!4461) Bool)

(assert (=> b!459094 (= e!281061 (= lt!204717 (rulesProduceEachTokenIndividuallyList!323 thiss!17480 rules!1920 (list!1981 lt!204371))))))

(assert (= (and d!175076 res!204190) b!459094))

(assert (=> d!175076 m!726461))

(assert (=> d!175076 m!726461))

(declare-fun m!727073 () Bool)

(assert (=> d!175076 m!727073))

(declare-fun m!727075 () Bool)

(assert (=> d!175076 m!727075))

(assert (=> d!175076 m!726109))

(assert (=> b!459094 m!726461))

(assert (=> b!459094 m!726461))

(declare-fun m!727077 () Bool)

(assert (=> b!459094 m!727077))

(assert (=> b!458476 d!175076))

(declare-fun d!175114 () Bool)

(assert (=> d!175114 (= (isEmpty!3427 tokens!465) ((_ is Nil!4451) tokens!465))))

(assert (=> b!458476 d!175114))

(declare-fun d!175116 () Bool)

(declare-fun e!281121 () Bool)

(assert (=> d!175116 e!281121))

(declare-fun res!204205 () Bool)

(assert (=> d!175116 (=> res!204205 e!281121)))

(assert (=> d!175116 (= res!204205 (isEmpty!3427 tokens!465))))

(declare-fun lt!204723 () Unit!8051)

(declare-fun choose!3453 (LexerInterface!751 List!4460 List!4461 Token!1474) Unit!8051)

(assert (=> d!175116 (= lt!204723 (choose!3453 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!175116 (not (isEmpty!3426 rules!1920))))

(assert (=> d!175116 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!266 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!204723)))

(declare-fun b!459173 () Bool)

(declare-fun e!281120 () Bool)

(assert (=> b!459173 (= e!281121 e!281120)))

(declare-fun res!204204 () Bool)

(assert (=> b!459173 (=> (not res!204204) (not e!281120))))

(assert (=> b!459173 (= res!204204 (isDefined!1003 (maxPrefix!467 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!432 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!459174 () Bool)

(assert (=> b!459174 (= e!281120 (= (_1!2927 (get!1633 (maxPrefix!467 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!432 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!1118 tokens!465)))))

(assert (= (and d!175116 (not res!204205)) b!459173))

(assert (= (and b!459173 res!204204) b!459174))

(assert (=> d!175116 m!726143))

(declare-fun m!727111 () Bool)

(assert (=> d!175116 m!727111))

(assert (=> d!175116 m!726109))

(assert (=> b!459173 m!726053))

(assert (=> b!459173 m!726053))

(declare-fun m!727113 () Bool)

(assert (=> b!459173 m!727113))

(assert (=> b!459173 m!727113))

(declare-fun m!727115 () Bool)

(assert (=> b!459173 m!727115))

(assert (=> b!459174 m!726053))

(assert (=> b!459174 m!726053))

(assert (=> b!459174 m!727113))

(assert (=> b!459174 m!727113))

(declare-fun m!727117 () Bool)

(assert (=> b!459174 m!727117))

(assert (=> b!459174 m!726155))

(assert (=> b!458476 d!175116))

(declare-fun d!175126 () Bool)

(declare-fun res!204210 () Bool)

(declare-fun e!281126 () Bool)

(assert (=> d!175126 (=> res!204210 e!281126)))

(assert (=> d!175126 (= res!204210 (not ((_ is Cons!4450) rules!1920)))))

(assert (=> d!175126 (= (sepAndNonSepRulesDisjointChars!454 rules!1920 rules!1920) e!281126)))

(declare-fun b!459179 () Bool)

(declare-fun e!281127 () Bool)

(assert (=> b!459179 (= e!281126 e!281127)))

(declare-fun res!204211 () Bool)

(assert (=> b!459179 (=> (not res!204211) (not e!281127))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!203 (Rule!1530 List!4460) Bool)

(assert (=> b!459179 (= res!204211 (ruleDisjointCharsFromAllFromOtherType!203 (h!9847 rules!1920) rules!1920))))

(declare-fun b!459180 () Bool)

(assert (=> b!459180 (= e!281127 (sepAndNonSepRulesDisjointChars!454 rules!1920 (t!71692 rules!1920)))))

(assert (= (and d!175126 (not res!204210)) b!459179))

(assert (= (and b!459179 res!204211) b!459180))

(declare-fun m!727119 () Bool)

(assert (=> b!459179 m!727119))

(declare-fun m!727121 () Bool)

(assert (=> b!459180 m!727121))

(assert (=> b!458455 d!175126))

(declare-fun d!175128 () Bool)

(assert (=> d!175128 (= (list!1977 (seqFromList!1095 lt!204370)) (list!1980 (c!92502 (seqFromList!1095 lt!204370))))))

(declare-fun bs!56965 () Bool)

(assert (= bs!56965 d!175128))

(declare-fun m!727123 () Bool)

(assert (=> bs!56965 m!727123))

(assert (=> b!458477 d!175128))

(declare-fun d!175130 () Bool)

(assert (=> d!175130 (= (seqFromList!1095 lt!204370) (fromListB!491 lt!204370))))

(declare-fun bs!56966 () Bool)

(assert (= bs!56966 d!175130))

(declare-fun m!727125 () Bool)

(assert (=> bs!56966 m!727125))

(assert (=> b!458477 d!175130))

(declare-fun d!175132 () Bool)

(declare-fun res!204212 () Bool)

(declare-fun e!281128 () Bool)

(assert (=> d!175132 (=> res!204212 e!281128)))

(assert (=> d!175132 (= res!204212 ((_ is Nil!4451) tokens!465))))

(assert (=> d!175132 (= (forall!1294 tokens!465 lambda!13457) e!281128)))

(declare-fun b!459181 () Bool)

(declare-fun e!281129 () Bool)

(assert (=> b!459181 (= e!281128 e!281129)))

(declare-fun res!204213 () Bool)

(assert (=> b!459181 (=> (not res!204213) (not e!281129))))

(assert (=> b!459181 (= res!204213 (dynLambda!2712 lambda!13457 (h!9848 tokens!465)))))

(declare-fun b!459182 () Bool)

(assert (=> b!459182 (= e!281129 (forall!1294 (t!71693 tokens!465) lambda!13457))))

(assert (= (and d!175132 (not res!204212)) b!459181))

(assert (= (and b!459181 res!204213) b!459182))

(declare-fun b_lambda!19071 () Bool)

(assert (=> (not b_lambda!19071) (not b!459181)))

(declare-fun m!727127 () Bool)

(assert (=> b!459181 m!727127))

(assert (=> b!459182 m!726103))

(assert (=> b!458456 d!175132))

(declare-fun bs!56967 () Bool)

(declare-fun d!175134 () Bool)

(assert (= bs!56967 (and d!175134 b!458702)))

(declare-fun lambda!13491 () Int)

(assert (=> bs!56967 (= lambda!13491 lambda!13473)))

(declare-fun bs!56968 () Bool)

(assert (= bs!56968 (and d!175134 d!175076)))

(assert (=> bs!56968 (= lambda!13491 lambda!13490)))

(declare-fun bs!56969 () Bool)

(assert (= bs!56969 (and d!175134 b!458467)))

(assert (=> bs!56969 (= lambda!13491 lambda!13458)))

(declare-fun bs!56970 () Bool)

(assert (= bs!56970 (and d!175134 b!458456)))

(assert (=> bs!56970 (not (= lambda!13491 lambda!13457))))

(declare-fun bs!56971 () Bool)

(assert (= bs!56971 (and d!175134 d!174950)))

(assert (=> bs!56971 (not (= lambda!13491 lambda!13472))))

(declare-fun bs!56972 () Bool)

(assert (= bs!56972 (and d!175134 b!458741)))

(assert (=> bs!56972 (= lambda!13491 lambda!13476)))

(declare-fun b!459186 () Bool)

(declare-fun e!281133 () Bool)

(assert (=> b!459186 (= e!281133 true)))

(declare-fun b!459185 () Bool)

(declare-fun e!281132 () Bool)

(assert (=> b!459185 (= e!281132 e!281133)))

(declare-fun b!459184 () Bool)

(declare-fun e!281131 () Bool)

(assert (=> b!459184 (= e!281131 e!281132)))

(assert (=> d!175134 e!281131))

(assert (= b!459185 b!459186))

(assert (= b!459184 b!459185))

(assert (= (and d!175134 ((_ is Cons!4450) rules!1920)) b!459184))

(assert (=> b!459186 (< (dynLambda!2706 order!3949 (toValue!1684 (transformation!865 (h!9847 rules!1920)))) (dynLambda!2707 order!3951 lambda!13491))))

(assert (=> b!459186 (< (dynLambda!2708 order!3953 (toChars!1543 (transformation!865 (h!9847 rules!1920)))) (dynLambda!2707 order!3951 lambda!13491))))

(assert (=> d!175134 true))

(declare-fun e!281130 () Bool)

(assert (=> d!175134 e!281130))

(declare-fun res!204214 () Bool)

(assert (=> d!175134 (=> (not res!204214) (not e!281130))))

(declare-fun lt!204724 () Bool)

(assert (=> d!175134 (= res!204214 (= lt!204724 (forall!1294 (list!1981 lt!204352) lambda!13491)))))

(assert (=> d!175134 (= lt!204724 (forall!1296 lt!204352 lambda!13491))))

(assert (=> d!175134 (not (isEmpty!3426 rules!1920))))

(assert (=> d!175134 (= (rulesProduceEachTokenIndividually!543 thiss!17480 rules!1920 lt!204352) lt!204724)))

(declare-fun b!459183 () Bool)

(assert (=> b!459183 (= e!281130 (= lt!204724 (rulesProduceEachTokenIndividuallyList!323 thiss!17480 rules!1920 (list!1981 lt!204352))))))

(assert (= (and d!175134 res!204214) b!459183))

(declare-fun m!727129 () Bool)

(assert (=> d!175134 m!727129))

(assert (=> d!175134 m!727129))

(declare-fun m!727131 () Bool)

(assert (=> d!175134 m!727131))

(declare-fun m!727133 () Bool)

(assert (=> d!175134 m!727133))

(assert (=> d!175134 m!726109))

(assert (=> b!459183 m!727129))

(assert (=> b!459183 m!727129))

(declare-fun m!727135 () Bool)

(assert (=> b!459183 m!727135))

(assert (=> b!458478 d!175134))

(declare-fun d!175136 () Bool)

(assert (=> d!175136 (= (seqFromList!1096 tokens!465) (fromListB!489 tokens!465))))

(declare-fun bs!56973 () Bool)

(assert (= bs!56973 d!175136))

(declare-fun m!727137 () Bool)

(assert (=> bs!56973 m!727137))

(assert (=> b!458478 d!175136))

(declare-fun d!175138 () Bool)

(declare-fun res!204217 () Bool)

(declare-fun e!281136 () Bool)

(assert (=> d!175138 (=> (not res!204217) (not e!281136))))

(declare-fun rulesValid!310 (LexerInterface!751 List!4460) Bool)

(assert (=> d!175138 (= res!204217 (rulesValid!310 thiss!17480 rules!1920))))

(assert (=> d!175138 (= (rulesInvariant!717 thiss!17480 rules!1920) e!281136)))

(declare-fun b!459189 () Bool)

(declare-datatypes ((List!4463 0))(
  ( (Nil!4453) (Cons!4453 (h!9850 String!5515) (t!71759 List!4463)) )
))
(declare-fun noDuplicateTag!310 (LexerInterface!751 List!4460 List!4463) Bool)

(assert (=> b!459189 (= e!281136 (noDuplicateTag!310 thiss!17480 rules!1920 Nil!4453))))

(assert (= (and d!175138 res!204217) b!459189))

(declare-fun m!727139 () Bool)

(assert (=> d!175138 m!727139))

(declare-fun m!727141 () Bool)

(assert (=> b!459189 m!727141))

(assert (=> b!458457 d!175138))

(declare-fun b!459190 () Bool)

(declare-fun e!281139 () Bool)

(declare-fun e!281138 () Bool)

(assert (=> b!459190 (= e!281139 e!281138)))

(declare-fun c!92642 () Bool)

(assert (=> b!459190 (= c!92642 ((_ is IntegerValue!2662) (value!28968 (h!9848 tokens!465))))))

(declare-fun d!175140 () Bool)

(declare-fun c!92643 () Bool)

(assert (=> d!175140 (= c!92643 ((_ is IntegerValue!2661) (value!28968 (h!9848 tokens!465))))))

(assert (=> d!175140 (= (inv!21 (value!28968 (h!9848 tokens!465))) e!281139)))

(declare-fun b!459191 () Bool)

(declare-fun e!281137 () Bool)

(assert (=> b!459191 (= e!281137 (inv!15 (value!28968 (h!9848 tokens!465))))))

(declare-fun b!459192 () Bool)

(assert (=> b!459192 (= e!281139 (inv!16 (value!28968 (h!9848 tokens!465))))))

(declare-fun b!459193 () Bool)

(declare-fun res!204218 () Bool)

(assert (=> b!459193 (=> res!204218 e!281137)))

(assert (=> b!459193 (= res!204218 (not ((_ is IntegerValue!2663) (value!28968 (h!9848 tokens!465)))))))

(assert (=> b!459193 (= e!281138 e!281137)))

(declare-fun b!459194 () Bool)

(assert (=> b!459194 (= e!281138 (inv!17 (value!28968 (h!9848 tokens!465))))))

(assert (= (and d!175140 c!92643) b!459192))

(assert (= (and d!175140 (not c!92643)) b!459190))

(assert (= (and b!459190 c!92642) b!459194))

(assert (= (and b!459190 (not c!92642)) b!459193))

(assert (= (and b!459193 (not res!204218)) b!459191))

(declare-fun m!727143 () Bool)

(assert (=> b!459191 m!727143))

(declare-fun m!727145 () Bool)

(assert (=> b!459192 m!727145))

(declare-fun m!727147 () Bool)

(assert (=> b!459194 m!727147))

(assert (=> b!458479 d!175140))

(declare-fun d!175142 () Bool)

(assert (=> d!175142 (= (isDefined!1003 lt!204356) (not (isEmpty!3433 lt!204356)))))

(declare-fun bs!56974 () Bool)

(assert (= bs!56974 d!175142))

(declare-fun m!727149 () Bool)

(assert (=> bs!56974 m!727149))

(assert (=> b!458458 d!175142))

(declare-fun b!459195 () Bool)

(declare-fun e!281141 () Bool)

(declare-fun lt!204729 () Option!1164)

(assert (=> b!459195 (= e!281141 (contains!1000 rules!1920 (rule!1560 (_1!2927 (get!1633 lt!204729)))))))

(declare-fun b!459196 () Bool)

(declare-fun res!204224 () Bool)

(assert (=> b!459196 (=> (not res!204224) (not e!281141))))

(assert (=> b!459196 (= res!204224 (matchR!407 (regex!865 (rule!1560 (_1!2927 (get!1633 lt!204729)))) (list!1977 (charsOf!508 (_1!2927 (get!1633 lt!204729))))))))

(declare-fun b!459197 () Bool)

(declare-fun res!204225 () Bool)

(assert (=> b!459197 (=> (not res!204225) (not e!281141))))

(assert (=> b!459197 (= res!204225 (< (size!3646 (_2!2927 (get!1633 lt!204729))) (size!3646 lt!204370)))))

(declare-fun d!175144 () Bool)

(declare-fun e!281140 () Bool)

(assert (=> d!175144 e!281140))

(declare-fun res!204219 () Bool)

(assert (=> d!175144 (=> res!204219 e!281140)))

(assert (=> d!175144 (= res!204219 (isEmpty!3433 lt!204729))))

(declare-fun e!281142 () Option!1164)

(assert (=> d!175144 (= lt!204729 e!281142)))

(declare-fun c!92644 () Bool)

(assert (=> d!175144 (= c!92644 (and ((_ is Cons!4450) rules!1920) ((_ is Nil!4450) (t!71692 rules!1920))))))

(declare-fun lt!204728 () Unit!8051)

(declare-fun lt!204725 () Unit!8051)

(assert (=> d!175144 (= lt!204728 lt!204725)))

(assert (=> d!175144 (isPrefix!517 lt!204370 lt!204370)))

(assert (=> d!175144 (= lt!204725 (lemmaIsPrefixRefl!291 lt!204370 lt!204370))))

(assert (=> d!175144 (rulesValidInductive!286 thiss!17480 rules!1920)))

(assert (=> d!175144 (= (maxPrefix!467 thiss!17480 rules!1920 lt!204370) lt!204729)))

(declare-fun b!459198 () Bool)

(declare-fun call!31858 () Option!1164)

(assert (=> b!459198 (= e!281142 call!31858)))

(declare-fun b!459199 () Bool)

(declare-fun lt!204726 () Option!1164)

(declare-fun lt!204727 () Option!1164)

(assert (=> b!459199 (= e!281142 (ite (and ((_ is None!1163) lt!204726) ((_ is None!1163) lt!204727)) None!1163 (ite ((_ is None!1163) lt!204727) lt!204726 (ite ((_ is None!1163) lt!204726) lt!204727 (ite (>= (size!3643 (_1!2927 (v!15500 lt!204726))) (size!3643 (_1!2927 (v!15500 lt!204727)))) lt!204726 lt!204727)))))))

(assert (=> b!459199 (= lt!204726 call!31858)))

(assert (=> b!459199 (= lt!204727 (maxPrefix!467 thiss!17480 (t!71692 rules!1920) lt!204370))))

(declare-fun b!459200 () Bool)

(declare-fun res!204223 () Bool)

(assert (=> b!459200 (=> (not res!204223) (not e!281141))))

(assert (=> b!459200 (= res!204223 (= (value!28968 (_1!2927 (get!1633 lt!204729))) (apply!1146 (transformation!865 (rule!1560 (_1!2927 (get!1633 lt!204729)))) (seqFromList!1095 (originalCharacters!908 (_1!2927 (get!1633 lt!204729)))))))))

(declare-fun b!459201 () Bool)

(assert (=> b!459201 (= e!281140 e!281141)))

(declare-fun res!204222 () Bool)

(assert (=> b!459201 (=> (not res!204222) (not e!281141))))

(assert (=> b!459201 (= res!204222 (isDefined!1003 lt!204729))))

(declare-fun b!459202 () Bool)

(declare-fun res!204221 () Bool)

(assert (=> b!459202 (=> (not res!204221) (not e!281141))))

(assert (=> b!459202 (= res!204221 (= (++!1298 (list!1977 (charsOf!508 (_1!2927 (get!1633 lt!204729)))) (_2!2927 (get!1633 lt!204729))) lt!204370))))

(declare-fun b!459203 () Bool)

(declare-fun res!204220 () Bool)

(assert (=> b!459203 (=> (not res!204220) (not e!281141))))

(assert (=> b!459203 (= res!204220 (= (list!1977 (charsOf!508 (_1!2927 (get!1633 lt!204729)))) (originalCharacters!908 (_1!2927 (get!1633 lt!204729)))))))

(declare-fun bm!31853 () Bool)

(assert (=> bm!31853 (= call!31858 (maxPrefixOneRule!225 thiss!17480 (h!9847 rules!1920) lt!204370))))

(assert (= (and d!175144 c!92644) b!459198))

(assert (= (and d!175144 (not c!92644)) b!459199))

(assert (= (or b!459198 b!459199) bm!31853))

(assert (= (and d!175144 (not res!204219)) b!459201))

(assert (= (and b!459201 res!204222) b!459203))

(assert (= (and b!459203 res!204220) b!459197))

(assert (= (and b!459197 res!204225) b!459202))

(assert (= (and b!459202 res!204221) b!459200))

(assert (= (and b!459200 res!204223) b!459196))

(assert (= (and b!459196 res!204224) b!459195))

(declare-fun m!727151 () Bool)

(assert (=> b!459201 m!727151))

(declare-fun m!727153 () Bool)

(assert (=> b!459196 m!727153))

(declare-fun m!727155 () Bool)

(assert (=> b!459196 m!727155))

(assert (=> b!459196 m!727155))

(declare-fun m!727157 () Bool)

(assert (=> b!459196 m!727157))

(assert (=> b!459196 m!727157))

(declare-fun m!727159 () Bool)

(assert (=> b!459196 m!727159))

(declare-fun m!727161 () Bool)

(assert (=> b!459199 m!727161))

(assert (=> b!459197 m!727153))

(declare-fun m!727163 () Bool)

(assert (=> b!459197 m!727163))

(declare-fun m!727165 () Bool)

(assert (=> b!459197 m!727165))

(declare-fun m!727167 () Bool)

(assert (=> bm!31853 m!727167))

(declare-fun m!727169 () Bool)

(assert (=> d!175144 m!727169))

(declare-fun m!727171 () Bool)

(assert (=> d!175144 m!727171))

(declare-fun m!727173 () Bool)

(assert (=> d!175144 m!727173))

(assert (=> d!175144 m!726601))

(assert (=> b!459203 m!727153))

(assert (=> b!459203 m!727155))

(assert (=> b!459203 m!727155))

(assert (=> b!459203 m!727157))

(assert (=> b!459202 m!727153))

(assert (=> b!459202 m!727155))

(assert (=> b!459202 m!727155))

(assert (=> b!459202 m!727157))

(assert (=> b!459202 m!727157))

(declare-fun m!727175 () Bool)

(assert (=> b!459202 m!727175))

(assert (=> b!459195 m!727153))

(declare-fun m!727177 () Bool)

(assert (=> b!459195 m!727177))

(assert (=> b!459200 m!727153))

(declare-fun m!727179 () Bool)

(assert (=> b!459200 m!727179))

(assert (=> b!459200 m!727179))

(declare-fun m!727181 () Bool)

(assert (=> b!459200 m!727181))

(assert (=> b!458458 d!175144))

(declare-fun d!175146 () Bool)

(declare-fun lt!204732 () Bool)

(assert (=> d!175146 (= lt!204732 (isEmpty!3427 (list!1981 (_1!2929 (lex!543 thiss!17480 rules!1920 (seqFromList!1095 lt!204364))))))))

(declare-fun isEmpty!3437 (Conc!1553) Bool)

(assert (=> d!175146 (= lt!204732 (isEmpty!3437 (c!92504 (_1!2929 (lex!543 thiss!17480 rules!1920 (seqFromList!1095 lt!204364))))))))

(assert (=> d!175146 (= (isEmpty!3428 (_1!2929 (lex!543 thiss!17480 rules!1920 (seqFromList!1095 lt!204364)))) lt!204732)))

(declare-fun bs!56975 () Bool)

(assert (= bs!56975 d!175146))

(declare-fun m!727183 () Bool)

(assert (=> bs!56975 m!727183))

(assert (=> bs!56975 m!727183))

(declare-fun m!727185 () Bool)

(assert (=> bs!56975 m!727185))

(declare-fun m!727187 () Bool)

(assert (=> bs!56975 m!727187))

(assert (=> b!458480 d!175146))

(declare-fun b!459214 () Bool)

(declare-fun e!281151 () Bool)

(declare-fun lt!204735 () tuple2!5426)

(assert (=> b!459214 (= e!281151 (= (_2!2929 lt!204735) (seqFromList!1095 lt!204364)))))

(declare-fun b!459216 () Bool)

(declare-fun res!204233 () Bool)

(declare-fun e!281150 () Bool)

(assert (=> b!459216 (=> (not res!204233) (not e!281150))))

(declare-datatypes ((tuple2!5430 0))(
  ( (tuple2!5431 (_1!2931 List!4461) (_2!2931 List!4459)) )
))
(declare-fun lexList!295 (LexerInterface!751 List!4460 List!4459) tuple2!5430)

(assert (=> b!459216 (= res!204233 (= (list!1981 (_1!2929 lt!204735)) (_1!2931 (lexList!295 thiss!17480 rules!1920 (list!1977 (seqFromList!1095 lt!204364))))))))

(declare-fun b!459217 () Bool)

(assert (=> b!459217 (= e!281150 (= (list!1977 (_2!2929 lt!204735)) (_2!2931 (lexList!295 thiss!17480 rules!1920 (list!1977 (seqFromList!1095 lt!204364))))))))

(declare-fun b!459218 () Bool)

(declare-fun e!281149 () Bool)

(assert (=> b!459218 (= e!281149 (not (isEmpty!3428 (_1!2929 lt!204735))))))

(declare-fun d!175148 () Bool)

(assert (=> d!175148 e!281150))

(declare-fun res!204232 () Bool)

(assert (=> d!175148 (=> (not res!204232) (not e!281150))))

(assert (=> d!175148 (= res!204232 e!281151)))

(declare-fun c!92647 () Bool)

(assert (=> d!175148 (= c!92647 (> (size!3647 (_1!2929 lt!204735)) 0))))

(declare-fun lexTailRecV2!260 (LexerInterface!751 List!4460 BalanceConc!3112 BalanceConc!3112 BalanceConc!3112 BalanceConc!3114) tuple2!5426)

(assert (=> d!175148 (= lt!204735 (lexTailRecV2!260 thiss!17480 rules!1920 (seqFromList!1095 lt!204364) (BalanceConc!3113 Empty!1552) (seqFromList!1095 lt!204364) (BalanceConc!3115 Empty!1553)))))

(assert (=> d!175148 (= (lex!543 thiss!17480 rules!1920 (seqFromList!1095 lt!204364)) lt!204735)))

(declare-fun b!459215 () Bool)

(assert (=> b!459215 (= e!281151 e!281149)))

(declare-fun res!204234 () Bool)

(declare-fun size!3649 (BalanceConc!3112) Int)

(assert (=> b!459215 (= res!204234 (< (size!3649 (_2!2929 lt!204735)) (size!3649 (seqFromList!1095 lt!204364))))))

(assert (=> b!459215 (=> (not res!204234) (not e!281149))))

(assert (= (and d!175148 c!92647) b!459215))

(assert (= (and d!175148 (not c!92647)) b!459214))

(assert (= (and b!459215 res!204234) b!459218))

(assert (= (and d!175148 res!204232) b!459216))

(assert (= (and b!459216 res!204233) b!459217))

(declare-fun m!727189 () Bool)

(assert (=> b!459216 m!727189))

(assert (=> b!459216 m!726073))

(declare-fun m!727191 () Bool)

(assert (=> b!459216 m!727191))

(assert (=> b!459216 m!727191))

(declare-fun m!727193 () Bool)

(assert (=> b!459216 m!727193))

(declare-fun m!727195 () Bool)

(assert (=> b!459217 m!727195))

(assert (=> b!459217 m!726073))

(assert (=> b!459217 m!727191))

(assert (=> b!459217 m!727191))

(assert (=> b!459217 m!727193))

(declare-fun m!727197 () Bool)

(assert (=> b!459218 m!727197))

(declare-fun m!727199 () Bool)

(assert (=> d!175148 m!727199))

(assert (=> d!175148 m!726073))

(assert (=> d!175148 m!726073))

(declare-fun m!727201 () Bool)

(assert (=> d!175148 m!727201))

(declare-fun m!727203 () Bool)

(assert (=> b!459215 m!727203))

(assert (=> b!459215 m!726073))

(declare-fun m!727205 () Bool)

(assert (=> b!459215 m!727205))

(assert (=> b!458480 d!175148))

(declare-fun d!175150 () Bool)

(assert (=> d!175150 (= (seqFromList!1095 lt!204364) (fromListB!491 lt!204364))))

(declare-fun bs!56976 () Bool)

(assert (= bs!56976 d!175150))

(declare-fun m!727207 () Bool)

(assert (=> bs!56976 m!727207))

(assert (=> b!458480 d!175150))

(declare-fun d!175152 () Bool)

(declare-fun e!281152 () Bool)

(assert (=> d!175152 e!281152))

(declare-fun res!204236 () Bool)

(assert (=> d!175152 (=> (not res!204236) (not e!281152))))

(declare-fun lt!204736 () List!4459)

(assert (=> d!175152 (= res!204236 (= (content!745 lt!204736) ((_ map or) (content!745 lt!204364) (content!745 lt!204357))))))

(declare-fun e!281153 () List!4459)

(assert (=> d!175152 (= lt!204736 e!281153)))

(declare-fun c!92648 () Bool)

(assert (=> d!175152 (= c!92648 ((_ is Nil!4449) lt!204364))))

(assert (=> d!175152 (= (++!1298 lt!204364 lt!204357) lt!204736)))

(declare-fun b!459219 () Bool)

(assert (=> b!459219 (= e!281153 lt!204357)))

(declare-fun b!459221 () Bool)

(declare-fun res!204235 () Bool)

(assert (=> b!459221 (=> (not res!204235) (not e!281152))))

(assert (=> b!459221 (= res!204235 (= (size!3646 lt!204736) (+ (size!3646 lt!204364) (size!3646 lt!204357))))))

(declare-fun b!459220 () Bool)

(assert (=> b!459220 (= e!281153 (Cons!4449 (h!9846 lt!204364) (++!1298 (t!71691 lt!204364) lt!204357)))))

(declare-fun b!459222 () Bool)

(assert (=> b!459222 (= e!281152 (or (not (= lt!204357 Nil!4449)) (= lt!204736 lt!204364)))))

(assert (= (and d!175152 c!92648) b!459219))

(assert (= (and d!175152 (not c!92648)) b!459220))

(assert (= (and d!175152 res!204236) b!459221))

(assert (= (and b!459221 res!204235) b!459222))

(declare-fun m!727209 () Bool)

(assert (=> d!175152 m!727209))

(assert (=> d!175152 m!726291))

(assert (=> d!175152 m!726325))

(declare-fun m!727211 () Bool)

(assert (=> b!459221 m!727211))

(assert (=> b!459221 m!726297))

(assert (=> b!459221 m!726331))

(declare-fun m!727213 () Bool)

(assert (=> b!459220 m!727213))

(assert (=> b!458481 d!175152))

(declare-fun d!175154 () Bool)

(declare-fun lt!204737 () Bool)

(declare-fun e!281155 () Bool)

(assert (=> d!175154 (= lt!204737 e!281155)))

(declare-fun res!204239 () Bool)

(assert (=> d!175154 (=> (not res!204239) (not e!281155))))

(assert (=> d!175154 (= res!204239 (= (list!1981 (_1!2929 (lex!543 thiss!17480 rules!1920 (print!476 thiss!17480 (singletonSeq!411 separatorToken!170))))) (list!1981 (singletonSeq!411 separatorToken!170))))))

(declare-fun e!281154 () Bool)

(assert (=> d!175154 (= lt!204737 e!281154)))

(declare-fun res!204237 () Bool)

(assert (=> d!175154 (=> (not res!204237) (not e!281154))))

(declare-fun lt!204738 () tuple2!5426)

(assert (=> d!175154 (= res!204237 (= (size!3647 (_1!2929 lt!204738)) 1))))

(assert (=> d!175154 (= lt!204738 (lex!543 thiss!17480 rules!1920 (print!476 thiss!17480 (singletonSeq!411 separatorToken!170))))))

(assert (=> d!175154 (not (isEmpty!3426 rules!1920))))

(assert (=> d!175154 (= (rulesProduceIndividualToken!500 thiss!17480 rules!1920 separatorToken!170) lt!204737)))

(declare-fun b!459223 () Bool)

(declare-fun res!204238 () Bool)

(assert (=> b!459223 (=> (not res!204238) (not e!281154))))

(assert (=> b!459223 (= res!204238 (= (apply!1144 (_1!2929 lt!204738) 0) separatorToken!170))))

(declare-fun b!459224 () Bool)

(assert (=> b!459224 (= e!281154 (isEmpty!3434 (_2!2929 lt!204738)))))

(declare-fun b!459225 () Bool)

(assert (=> b!459225 (= e!281155 (isEmpty!3434 (_2!2929 (lex!543 thiss!17480 rules!1920 (print!476 thiss!17480 (singletonSeq!411 separatorToken!170))))))))

(assert (= (and d!175154 res!204237) b!459223))

(assert (= (and b!459223 res!204238) b!459224))

(assert (= (and d!175154 res!204239) b!459225))

(declare-fun m!727215 () Bool)

(assert (=> d!175154 m!727215))

(assert (=> d!175154 m!726109))

(declare-fun m!727217 () Bool)

(assert (=> d!175154 m!727217))

(declare-fun m!727219 () Bool)

(assert (=> d!175154 m!727219))

(declare-fun m!727221 () Bool)

(assert (=> d!175154 m!727221))

(declare-fun m!727223 () Bool)

(assert (=> d!175154 m!727223))

(assert (=> d!175154 m!727217))

(assert (=> d!175154 m!727223))

(assert (=> d!175154 m!727223))

(declare-fun m!727225 () Bool)

(assert (=> d!175154 m!727225))

(declare-fun m!727227 () Bool)

(assert (=> b!459223 m!727227))

(declare-fun m!727229 () Bool)

(assert (=> b!459224 m!727229))

(assert (=> b!459225 m!727223))

(assert (=> b!459225 m!727223))

(assert (=> b!459225 m!727217))

(assert (=> b!459225 m!727217))

(assert (=> b!459225 m!727219))

(declare-fun m!727231 () Bool)

(assert (=> b!459225 m!727231))

(assert (=> b!458460 d!175154))

(declare-fun d!175156 () Bool)

(assert (=> d!175156 (= (list!1977 (printWithSeparatorTokenWhenNeededRec!424 thiss!17480 rules!1920 lt!204352 separatorToken!170 0)) (list!1980 (c!92502 (printWithSeparatorTokenWhenNeededRec!424 thiss!17480 rules!1920 lt!204352 separatorToken!170 0))))))

(declare-fun bs!56977 () Bool)

(assert (= bs!56977 d!175156))

(declare-fun m!727233 () Bool)

(assert (=> bs!56977 m!727233))

(assert (=> b!458482 d!175156))

(declare-fun bs!56978 () Bool)

(declare-fun d!175158 () Bool)

(assert (= bs!56978 (and d!175158 b!458702)))

(declare-fun lambda!13492 () Int)

(assert (=> bs!56978 (not (= lambda!13492 lambda!13473))))

(declare-fun bs!56979 () Bool)

(assert (= bs!56979 (and d!175158 d!175076)))

(assert (=> bs!56979 (not (= lambda!13492 lambda!13490))))

(declare-fun bs!56980 () Bool)

(assert (= bs!56980 (and d!175158 d!175134)))

(assert (=> bs!56980 (not (= lambda!13492 lambda!13491))))

(declare-fun bs!56981 () Bool)

(assert (= bs!56981 (and d!175158 b!458467)))

(assert (=> bs!56981 (not (= lambda!13492 lambda!13458))))

(declare-fun bs!56982 () Bool)

(assert (= bs!56982 (and d!175158 b!458456)))

(assert (=> bs!56982 (= lambda!13492 lambda!13457)))

(declare-fun bs!56983 () Bool)

(assert (= bs!56983 (and d!175158 d!174950)))

(assert (=> bs!56983 (= lambda!13492 lambda!13472)))

(declare-fun bs!56984 () Bool)

(assert (= bs!56984 (and d!175158 b!458741)))

(assert (=> bs!56984 (not (= lambda!13492 lambda!13476))))

(declare-fun bs!56985 () Bool)

(declare-fun b!459236 () Bool)

(assert (= bs!56985 (and b!459236 b!458702)))

(declare-fun lambda!13493 () Int)

(assert (=> bs!56985 (= lambda!13493 lambda!13473)))

(declare-fun bs!56986 () Bool)

(assert (= bs!56986 (and b!459236 d!175076)))

(assert (=> bs!56986 (= lambda!13493 lambda!13490)))

(declare-fun bs!56987 () Bool)

(assert (= bs!56987 (and b!459236 d!175134)))

(assert (=> bs!56987 (= lambda!13493 lambda!13491)))

(declare-fun bs!56988 () Bool)

(assert (= bs!56988 (and b!459236 d!175158)))

(assert (=> bs!56988 (not (= lambda!13493 lambda!13492))))

(declare-fun bs!56989 () Bool)

(assert (= bs!56989 (and b!459236 b!458467)))

(assert (=> bs!56989 (= lambda!13493 lambda!13458)))

(declare-fun bs!56990 () Bool)

(assert (= bs!56990 (and b!459236 b!458456)))

(assert (=> bs!56990 (not (= lambda!13493 lambda!13457))))

(declare-fun bs!56991 () Bool)

(assert (= bs!56991 (and b!459236 d!174950)))

(assert (=> bs!56991 (not (= lambda!13493 lambda!13472))))

(declare-fun bs!56992 () Bool)

(assert (= bs!56992 (and b!459236 b!458741)))

(assert (=> bs!56992 (= lambda!13493 lambda!13476)))

(declare-fun b!459239 () Bool)

(declare-fun e!281165 () Bool)

(assert (=> b!459239 (= e!281165 true)))

(declare-fun b!459238 () Bool)

(declare-fun e!281164 () Bool)

(assert (=> b!459238 (= e!281164 e!281165)))

(declare-fun b!459237 () Bool)

(declare-fun e!281163 () Bool)

(assert (=> b!459237 (= e!281163 e!281164)))

(assert (=> b!459236 e!281163))

(assert (= b!459238 b!459239))

(assert (= b!459237 b!459238))

(assert (= (and b!459236 ((_ is Cons!4450) rules!1920)) b!459237))

(assert (=> b!459239 (< (dynLambda!2706 order!3949 (toValue!1684 (transformation!865 (h!9847 rules!1920)))) (dynLambda!2707 order!3951 lambda!13493))))

(assert (=> b!459239 (< (dynLambda!2708 order!3953 (toChars!1543 (transformation!865 (h!9847 rules!1920)))) (dynLambda!2707 order!3951 lambda!13493))))

(assert (=> b!459236 true))

(declare-fun b!459226 () Bool)

(declare-fun e!281162 () BalanceConc!3112)

(assert (=> b!459226 (= e!281162 (BalanceConc!3113 Empty!1552))))

(declare-fun call!31862 () Token!1474)

(assert (=> b!459226 (= (print!476 thiss!17480 (singletonSeq!411 call!31862)) (printTailRec!437 thiss!17480 (singletonSeq!411 call!31862) 0 (BalanceConc!3113 Empty!1552)))))

(declare-fun lt!204746 () Unit!8051)

(declare-fun Unit!8065 () Unit!8051)

(assert (=> b!459226 (= lt!204746 Unit!8065)))

(declare-fun lt!204748 () Unit!8051)

(declare-fun call!31861 () BalanceConc!3112)

(declare-fun lt!204747 () BalanceConc!3112)

(assert (=> b!459226 (= lt!204748 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!196 thiss!17480 rules!1920 (list!1977 call!31861) (list!1977 lt!204747)))))

(assert (=> b!459226 false))

(declare-fun lt!204741 () Unit!8051)

(declare-fun Unit!8066 () Unit!8051)

(assert (=> b!459226 (= lt!204741 Unit!8066)))

(declare-fun b!459227 () Bool)

(declare-fun e!281160 () BalanceConc!3112)

(declare-fun call!31860 () BalanceConc!3112)

(assert (=> b!459227 (= e!281160 call!31860)))

(declare-fun bm!31854 () Bool)

(declare-fun call!31859 () Token!1474)

(assert (=> bm!31854 (= call!31862 call!31859)))

(declare-fun bm!31855 () Bool)

(declare-fun c!92650 () Bool)

(declare-fun c!92649 () Bool)

(assert (=> bm!31855 (= c!92650 c!92649)))

(declare-fun call!31863 () BalanceConc!3112)

(assert (=> bm!31855 (= call!31863 (++!1300 e!281160 (ite c!92649 lt!204747 call!31861)))))

(declare-fun lt!204749 () BalanceConc!3112)

(assert (=> d!175158 (= (list!1977 lt!204749) (printWithSeparatorTokenWhenNeededList!432 thiss!17480 rules!1920 (dropList!248 lt!204352 0) separatorToken!170))))

(declare-fun e!281159 () BalanceConc!3112)

(assert (=> d!175158 (= lt!204749 e!281159)))

(declare-fun c!92651 () Bool)

(assert (=> d!175158 (= c!92651 (>= 0 (size!3647 lt!204352)))))

(declare-fun lt!204744 () Unit!8051)

(assert (=> d!175158 (= lt!204744 (lemmaContentSubsetPreservesForall!192 (list!1981 lt!204352) (dropList!248 lt!204352 0) lambda!13492))))

(declare-fun e!281157 () Bool)

(assert (=> d!175158 e!281157))

(declare-fun res!204241 () Bool)

(assert (=> d!175158 (=> (not res!204241) (not e!281157))))

(assert (=> d!175158 (= res!204241 (>= 0 0))))

(assert (=> d!175158 (= (printWithSeparatorTokenWhenNeededRec!424 thiss!17480 rules!1920 lt!204352 separatorToken!170 0) lt!204749)))

(declare-fun bm!31856 () Bool)

(assert (=> bm!31856 (= call!31861 call!31860)))

(declare-fun c!92652 () Bool)

(declare-fun bm!31857 () Bool)

(assert (=> bm!31857 (= call!31860 (charsOf!508 (ite c!92649 call!31859 (ite c!92652 separatorToken!170 call!31862))))))

(declare-fun b!459228 () Bool)

(declare-fun e!281156 () Bool)

(assert (=> b!459228 (= c!92652 e!281156)))

(declare-fun res!204242 () Bool)

(assert (=> b!459228 (=> (not res!204242) (not e!281156))))

(declare-fun lt!204742 () Option!1165)

(assert (=> b!459228 (= res!204242 ((_ is Some!1164) lt!204742))))

(declare-fun e!281158 () BalanceConc!3112)

(assert (=> b!459228 (= e!281158 e!281162)))

(declare-fun b!459229 () Bool)

(declare-fun e!281161 () Bool)

(assert (=> b!459229 (= e!281161 (= (_1!2928 (v!15501 lt!204742)) (apply!1144 lt!204352 0)))))

(declare-fun b!459230 () Bool)

(assert (=> b!459230 (= e!281162 (++!1300 call!31863 lt!204747))))

(declare-fun b!459231 () Bool)

(assert (=> b!459231 (= e!281159 (BalanceConc!3113 Empty!1552))))

(declare-fun b!459232 () Bool)

(assert (=> b!459232 (= e!281158 call!31863)))

(declare-fun b!459233 () Bool)

(assert (=> b!459233 (= e!281156 (not (= (_1!2928 (v!15501 lt!204742)) call!31859)))))

(declare-fun bm!31858 () Bool)

(assert (=> bm!31858 (= call!31859 (apply!1144 lt!204352 0))))

(declare-fun b!459234 () Bool)

(assert (=> b!459234 (= e!281160 (charsOf!508 call!31862))))

(declare-fun b!459235 () Bool)

(assert (=> b!459235 (= e!281157 (<= 0 (size!3647 lt!204352)))))

(assert (=> b!459236 (= e!281159 e!281158)))

(declare-fun lt!204751 () List!4461)

(assert (=> b!459236 (= lt!204751 (list!1981 lt!204352))))

(declare-fun lt!204752 () Unit!8051)

(assert (=> b!459236 (= lt!204752 (lemmaDropApply!288 lt!204751 0))))

(assert (=> b!459236 (= (head!1118 (drop!317 lt!204751 0)) (apply!1145 lt!204751 0))))

(declare-fun lt!204745 () Unit!8051)

(assert (=> b!459236 (= lt!204745 lt!204752)))

(declare-fun lt!204740 () List!4461)

(assert (=> b!459236 (= lt!204740 (list!1981 lt!204352))))

(declare-fun lt!204743 () Unit!8051)

(assert (=> b!459236 (= lt!204743 (lemmaDropTail!280 lt!204740 0))))

(assert (=> b!459236 (= (tail!645 (drop!317 lt!204740 0)) (drop!317 lt!204740 (+ 0 1)))))

(declare-fun lt!204750 () Unit!8051)

(assert (=> b!459236 (= lt!204750 lt!204743)))

(declare-fun lt!204739 () Unit!8051)

(assert (=> b!459236 (= lt!204739 (forallContained!418 (list!1981 lt!204352) lambda!13493 (apply!1144 lt!204352 0)))))

(assert (=> b!459236 (= lt!204747 (printWithSeparatorTokenWhenNeededRec!424 thiss!17480 rules!1920 lt!204352 separatorToken!170 (+ 0 1)))))

(assert (=> b!459236 (= lt!204742 (maxPrefixZipperSequence!430 thiss!17480 rules!1920 (++!1300 (charsOf!508 (apply!1144 lt!204352 0)) lt!204747)))))

(declare-fun res!204240 () Bool)

(assert (=> b!459236 (= res!204240 ((_ is Some!1164) lt!204742))))

(assert (=> b!459236 (=> (not res!204240) (not e!281161))))

(assert (=> b!459236 (= c!92649 e!281161)))

(assert (= (and d!175158 res!204241) b!459235))

(assert (= (and d!175158 c!92651) b!459231))

(assert (= (and d!175158 (not c!92651)) b!459236))

(assert (= (and b!459236 res!204240) b!459229))

(assert (= (and b!459236 c!92649) b!459232))

(assert (= (and b!459236 (not c!92649)) b!459228))

(assert (= (and b!459228 res!204242) b!459233))

(assert (= (and b!459228 c!92652) b!459230))

(assert (= (and b!459228 (not c!92652)) b!459226))

(assert (= (or b!459230 b!459226) bm!31854))

(assert (= (or b!459230 b!459226) bm!31856))

(assert (= (or b!459232 bm!31854 b!459233) bm!31858))

(assert (= (or b!459232 bm!31856) bm!31857))

(assert (= (or b!459232 b!459230) bm!31855))

(assert (= (and bm!31855 c!92650) b!459227))

(assert (= (and bm!31855 (not c!92650)) b!459234))

(declare-fun m!727235 () Bool)

(assert (=> b!459234 m!727235))

(declare-fun m!727237 () Bool)

(assert (=> b!459236 m!727237))

(declare-fun m!727239 () Bool)

(assert (=> b!459236 m!727239))

(declare-fun m!727241 () Bool)

(assert (=> b!459236 m!727241))

(declare-fun m!727243 () Bool)

(assert (=> b!459236 m!727243))

(assert (=> b!459236 m!727129))

(assert (=> b!459236 m!727243))

(declare-fun m!727245 () Bool)

(assert (=> b!459236 m!727245))

(assert (=> b!459236 m!727129))

(declare-fun m!727247 () Bool)

(assert (=> b!459236 m!727247))

(declare-fun m!727249 () Bool)

(assert (=> b!459236 m!727249))

(declare-fun m!727251 () Bool)

(assert (=> b!459236 m!727251))

(assert (=> b!459236 m!727243))

(declare-fun m!727253 () Bool)

(assert (=> b!459236 m!727253))

(declare-fun m!727255 () Bool)

(assert (=> b!459236 m!727255))

(declare-fun m!727257 () Bool)

(assert (=> b!459236 m!727257))

(declare-fun m!727259 () Bool)

(assert (=> b!459236 m!727259))

(assert (=> b!459236 m!727253))

(assert (=> b!459236 m!727237))

(declare-fun m!727261 () Bool)

(assert (=> b!459236 m!727261))

(assert (=> b!459236 m!727255))

(declare-fun m!727263 () Bool)

(assert (=> b!459236 m!727263))

(assert (=> b!459236 m!727247))

(assert (=> b!459229 m!727243))

(declare-fun m!727265 () Bool)

(assert (=> bm!31855 m!727265))

(declare-fun m!727267 () Bool)

(assert (=> b!459235 m!727267))

(declare-fun m!727269 () Bool)

(assert (=> bm!31857 m!727269))

(assert (=> d!175158 m!727129))

(assert (=> d!175158 m!727267))

(assert (=> d!175158 m!727129))

(declare-fun m!727271 () Bool)

(assert (=> d!175158 m!727271))

(declare-fun m!727273 () Bool)

(assert (=> d!175158 m!727273))

(declare-fun m!727275 () Bool)

(assert (=> d!175158 m!727275))

(assert (=> d!175158 m!727271))

(declare-fun m!727277 () Bool)

(assert (=> d!175158 m!727277))

(assert (=> d!175158 m!727271))

(assert (=> bm!31858 m!727243))

(declare-fun m!727279 () Bool)

(assert (=> b!459226 m!727279))

(assert (=> b!459226 m!727279))

(declare-fun m!727281 () Bool)

(assert (=> b!459226 m!727281))

(declare-fun m!727283 () Bool)

(assert (=> b!459226 m!727283))

(declare-fun m!727285 () Bool)

(assert (=> b!459226 m!727285))

(assert (=> b!459226 m!727279))

(declare-fun m!727287 () Bool)

(assert (=> b!459226 m!727287))

(assert (=> b!459226 m!727285))

(assert (=> b!459226 m!727283))

(declare-fun m!727289 () Bool)

(assert (=> b!459226 m!727289))

(declare-fun m!727291 () Bool)

(assert (=> b!459230 m!727291))

(assert (=> b!458482 d!175158))

(declare-fun bs!56993 () Bool)

(declare-fun b!459246 () Bool)

(assert (= bs!56993 (and b!459246 b!459236)))

(declare-fun lambda!13494 () Int)

(assert (=> bs!56993 (= lambda!13494 lambda!13493)))

(declare-fun bs!56994 () Bool)

(assert (= bs!56994 (and b!459246 b!458702)))

(assert (=> bs!56994 (= lambda!13494 lambda!13473)))

(declare-fun bs!56995 () Bool)

(assert (= bs!56995 (and b!459246 d!175076)))

(assert (=> bs!56995 (= lambda!13494 lambda!13490)))

(declare-fun bs!56996 () Bool)

(assert (= bs!56996 (and b!459246 d!175134)))

(assert (=> bs!56996 (= lambda!13494 lambda!13491)))

(declare-fun bs!56997 () Bool)

(assert (= bs!56997 (and b!459246 d!175158)))

(assert (=> bs!56997 (not (= lambda!13494 lambda!13492))))

(declare-fun bs!56998 () Bool)

(assert (= bs!56998 (and b!459246 b!458467)))

(assert (=> bs!56998 (= lambda!13494 lambda!13458)))

(declare-fun bs!56999 () Bool)

(assert (= bs!56999 (and b!459246 b!458456)))

(assert (=> bs!56999 (not (= lambda!13494 lambda!13457))))

(declare-fun bs!57000 () Bool)

(assert (= bs!57000 (and b!459246 d!174950)))

(assert (=> bs!57000 (not (= lambda!13494 lambda!13472))))

(declare-fun bs!57001 () Bool)

(assert (= bs!57001 (and b!459246 b!458741)))

(assert (=> bs!57001 (= lambda!13494 lambda!13476)))

(declare-fun b!459250 () Bool)

(declare-fun e!281172 () Bool)

(assert (=> b!459250 (= e!281172 true)))

(declare-fun b!459249 () Bool)

(declare-fun e!281171 () Bool)

(assert (=> b!459249 (= e!281171 e!281172)))

(declare-fun b!459248 () Bool)

(declare-fun e!281170 () Bool)

(assert (=> b!459248 (= e!281170 e!281171)))

(assert (=> b!459246 e!281170))

(assert (= b!459249 b!459250))

(assert (= b!459248 b!459249))

(assert (= (and b!459246 ((_ is Cons!4450) rules!1920)) b!459248))

(assert (=> b!459250 (< (dynLambda!2706 order!3949 (toValue!1684 (transformation!865 (h!9847 rules!1920)))) (dynLambda!2707 order!3951 lambda!13494))))

(assert (=> b!459250 (< (dynLambda!2708 order!3953 (toChars!1543 (transformation!865 (h!9847 rules!1920)))) (dynLambda!2707 order!3951 lambda!13494))))

(assert (=> b!459246 true))

(declare-fun call!31864 () List!4459)

(declare-fun call!31868 () List!4459)

(declare-fun c!92654 () Bool)

(declare-fun call!31865 () List!4459)

(declare-fun bm!31859 () Bool)

(declare-fun lt!204753 () List!4459)

(assert (=> bm!31859 (= call!31868 (++!1298 call!31865 (ite c!92654 lt!204753 call!31864)))))

(declare-fun b!459240 () Bool)

(declare-fun e!281167 () List!4459)

(assert (=> b!459240 (= e!281167 Nil!4449)))

(declare-fun b!459241 () Bool)

(declare-fun e!281168 () List!4459)

(assert (=> b!459241 (= e!281168 (++!1298 call!31868 lt!204753))))

(declare-fun b!459242 () Bool)

(assert (=> b!459242 (= e!281168 Nil!4449)))

(assert (=> b!459242 (= (print!476 thiss!17480 (singletonSeq!411 (h!9848 tokens!465))) (printTailRec!437 thiss!17480 (singletonSeq!411 (h!9848 tokens!465)) 0 (BalanceConc!3113 Empty!1552)))))

(declare-fun lt!204756 () Unit!8051)

(declare-fun Unit!8067 () Unit!8051)

(assert (=> b!459242 (= lt!204756 Unit!8067)))

(declare-fun lt!204758 () Unit!8051)

(assert (=> b!459242 (= lt!204758 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!196 thiss!17480 rules!1920 call!31864 lt!204753))))

(assert (=> b!459242 false))

(declare-fun lt!204755 () Unit!8051)

(declare-fun Unit!8068 () Unit!8051)

(assert (=> b!459242 (= lt!204755 Unit!8068)))

(declare-fun b!459243 () Bool)

(declare-fun e!281169 () BalanceConc!3112)

(assert (=> b!459243 (= e!281169 (charsOf!508 separatorToken!170))))

(declare-fun call!31866 () BalanceConc!3112)

(declare-fun bm!31860 () Bool)

(declare-fun call!31867 () BalanceConc!3112)

(assert (=> bm!31860 (= call!31865 (list!1977 (ite c!92654 call!31866 call!31867)))))

(declare-fun bm!31861 () Bool)

(assert (=> bm!31861 (= call!31867 call!31866)))

(declare-fun b!459244 () Bool)

(assert (=> b!459244 (= e!281169 call!31867)))

(declare-fun b!459245 () Bool)

(declare-fun e!281166 () List!4459)

(assert (=> b!459245 (= e!281166 call!31868)))

(declare-fun bm!31862 () Bool)

(assert (=> bm!31862 (= call!31864 (list!1977 e!281169))))

(declare-fun c!92656 () Bool)

(declare-fun c!92655 () Bool)

(assert (=> bm!31862 (= c!92656 c!92655)))

(assert (=> b!459246 (= e!281167 e!281166)))

(declare-fun lt!204754 () Unit!8051)

(assert (=> b!459246 (= lt!204754 (forallContained!418 tokens!465 lambda!13494 (h!9848 tokens!465)))))

(assert (=> b!459246 (= lt!204753 (printWithSeparatorTokenWhenNeededList!432 thiss!17480 rules!1920 (t!71693 tokens!465) separatorToken!170))))

(declare-fun lt!204757 () Option!1164)

(assert (=> b!459246 (= lt!204757 (maxPrefix!467 thiss!17480 rules!1920 (++!1298 (list!1977 (charsOf!508 (h!9848 tokens!465))) lt!204753)))))

(assert (=> b!459246 (= c!92654 (and ((_ is Some!1163) lt!204757) (= (_1!2927 (v!15500 lt!204757)) (h!9848 tokens!465))))))

(declare-fun b!459247 () Bool)

(assert (=> b!459247 (= c!92655 (and ((_ is Some!1163) lt!204757) (not (= (_1!2927 (v!15500 lt!204757)) (h!9848 tokens!465)))))))

(assert (=> b!459247 (= e!281166 e!281168)))

(declare-fun d!175160 () Bool)

(declare-fun c!92653 () Bool)

(assert (=> d!175160 (= c!92653 ((_ is Cons!4451) tokens!465))))

(assert (=> d!175160 (= (printWithSeparatorTokenWhenNeededList!432 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!281167)))

(declare-fun bm!31863 () Bool)

(assert (=> bm!31863 (= call!31866 (charsOf!508 (h!9848 tokens!465)))))

(assert (= (and d!175160 c!92653) b!459246))

(assert (= (and d!175160 (not c!92653)) b!459240))

(assert (= (and b!459246 c!92654) b!459245))

(assert (= (and b!459246 (not c!92654)) b!459247))

(assert (= (and b!459247 c!92655) b!459241))

(assert (= (and b!459247 (not c!92655)) b!459242))

(assert (= (or b!459241 b!459242) bm!31861))

(assert (= (or b!459241 b!459242) bm!31862))

(assert (= (and bm!31862 c!92656) b!459243))

(assert (= (and bm!31862 (not c!92656)) b!459244))

(assert (= (or b!459245 bm!31861) bm!31863))

(assert (= (or b!459245 b!459241) bm!31860))

(assert (= (or b!459245 b!459241) bm!31859))

(assert (=> b!459242 m!726169))

(assert (=> b!459242 m!726169))

(assert (=> b!459242 m!726629))

(assert (=> b!459242 m!726169))

(declare-fun m!727293 () Bool)

(assert (=> b!459242 m!727293))

(declare-fun m!727295 () Bool)

(assert (=> b!459242 m!727295))

(declare-fun m!727297 () Bool)

(assert (=> bm!31859 m!727297))

(declare-fun m!727299 () Bool)

(assert (=> bm!31862 m!727299))

(declare-fun m!727301 () Bool)

(assert (=> b!459241 m!727301))

(assert (=> b!459246 m!726127))

(assert (=> b!459246 m!726129))

(assert (=> b!459246 m!726127))

(assert (=> b!459246 m!726113))

(declare-fun m!727303 () Bool)

(assert (=> b!459246 m!727303))

(declare-fun m!727305 () Bool)

(assert (=> b!459246 m!727305))

(declare-fun m!727307 () Bool)

(assert (=> b!459246 m!727307))

(assert (=> b!459246 m!726129))

(assert (=> b!459246 m!727303))

(declare-fun m!727309 () Bool)

(assert (=> bm!31860 m!727309))

(assert (=> bm!31863 m!726127))

(assert (=> b!459243 m!726117))

(assert (=> b!458482 d!175160))

(declare-fun b!459255 () Bool)

(declare-fun e!281175 () Bool)

(declare-fun tp_is_empty!1987 () Bool)

(declare-fun tp!127106 () Bool)

(assert (=> b!459255 (= e!281175 (and tp_is_empty!1987 tp!127106))))

(assert (=> b!458472 (= tp!127039 e!281175)))

(assert (= (and b!458472 ((_ is Cons!4449) (originalCharacters!908 separatorToken!170))) b!459255))

(declare-fun b!459266 () Bool)

(declare-fun b_free!12813 () Bool)

(declare-fun b_next!12813 () Bool)

(assert (=> b!459266 (= b_free!12813 (not b_next!12813))))

(declare-fun tp!127116 () Bool)

(declare-fun b_and!49349 () Bool)

(assert (=> b!459266 (= tp!127116 b_and!49349)))

(declare-fun b_free!12815 () Bool)

(declare-fun b_next!12815 () Bool)

(assert (=> b!459266 (= b_free!12815 (not b_next!12815))))

(declare-fun tb!46033 () Bool)

(declare-fun t!71752 () Bool)

(assert (=> (and b!459266 (= (toChars!1543 (transformation!865 (h!9847 (t!71692 rules!1920)))) (toChars!1543 (transformation!865 (rule!1560 separatorToken!170)))) t!71752) tb!46033))

(declare-fun result!50672 () Bool)

(assert (= result!50672 result!50632))

(assert (=> d!174938 t!71752))

(declare-fun t!71754 () Bool)

(declare-fun tb!46035 () Bool)

(assert (=> (and b!459266 (= (toChars!1543 (transformation!865 (h!9847 (t!71692 rules!1920)))) (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465))))) t!71754) tb!46035))

(declare-fun result!50674 () Bool)

(assert (= result!50674 result!50640))

(assert (=> d!174944 t!71754))

(assert (=> b!458825 t!71752))

(assert (=> b!459019 t!71754))

(declare-fun tp!127117 () Bool)

(declare-fun b_and!49351 () Bool)

(assert (=> b!459266 (= tp!127117 (and (=> t!71752 result!50672) (=> t!71754 result!50674) b_and!49351))))

(declare-fun e!281185 () Bool)

(assert (=> b!459266 (= e!281185 (and tp!127116 tp!127117))))

(declare-fun tp!127118 () Bool)

(declare-fun b!459265 () Bool)

(declare-fun e!281186 () Bool)

(assert (=> b!459265 (= e!281186 (and tp!127118 (inv!5527 (tag!1125 (h!9847 (t!71692 rules!1920)))) (inv!5530 (transformation!865 (h!9847 (t!71692 rules!1920)))) e!281185))))

(declare-fun b!459264 () Bool)

(declare-fun e!281187 () Bool)

(declare-fun tp!127115 () Bool)

(assert (=> b!459264 (= e!281187 (and e!281186 tp!127115))))

(assert (=> b!458474 (= tp!127035 e!281187)))

(assert (= b!459265 b!459266))

(assert (= b!459264 b!459265))

(assert (= (and b!458474 ((_ is Cons!4450) (t!71692 rules!1920))) b!459264))

(declare-fun m!727311 () Bool)

(assert (=> b!459265 m!727311))

(declare-fun m!727313 () Bool)

(assert (=> b!459265 m!727313))

(declare-fun b!459280 () Bool)

(declare-fun b_free!12817 () Bool)

(declare-fun b_next!12817 () Bool)

(assert (=> b!459280 (= b_free!12817 (not b_next!12817))))

(declare-fun tp!127131 () Bool)

(declare-fun b_and!49353 () Bool)

(assert (=> b!459280 (= tp!127131 b_and!49353)))

(declare-fun b_free!12819 () Bool)

(declare-fun b_next!12819 () Bool)

(assert (=> b!459280 (= b_free!12819 (not b_next!12819))))

(declare-fun tb!46037 () Bool)

(declare-fun t!71756 () Bool)

(assert (=> (and b!459280 (= (toChars!1543 (transformation!865 (rule!1560 (h!9848 (t!71693 tokens!465))))) (toChars!1543 (transformation!865 (rule!1560 separatorToken!170)))) t!71756) tb!46037))

(declare-fun result!50678 () Bool)

(assert (= result!50678 result!50632))

(assert (=> d!174938 t!71756))

(declare-fun t!71758 () Bool)

(declare-fun tb!46039 () Bool)

(assert (=> (and b!459280 (= (toChars!1543 (transformation!865 (rule!1560 (h!9848 (t!71693 tokens!465))))) (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465))))) t!71758) tb!46039))

(declare-fun result!50680 () Bool)

(assert (= result!50680 result!50640))

(assert (=> d!174944 t!71758))

(assert (=> b!458825 t!71756))

(assert (=> b!459019 t!71758))

(declare-fun tp!127129 () Bool)

(declare-fun b_and!49355 () Bool)

(assert (=> b!459280 (= tp!127129 (and (=> t!71756 result!50678) (=> t!71758 result!50680) b_and!49355))))

(declare-fun b!459277 () Bool)

(declare-fun tp!127132 () Bool)

(declare-fun e!281202 () Bool)

(declare-fun e!281205 () Bool)

(assert (=> b!459277 (= e!281202 (and (inv!5531 (h!9848 (t!71693 tokens!465))) e!281205 tp!127132))))

(declare-fun e!281204 () Bool)

(assert (=> b!459280 (= e!281204 (and tp!127131 tp!127129))))

(declare-fun b!459278 () Bool)

(declare-fun tp!127130 () Bool)

(declare-fun e!281203 () Bool)

(assert (=> b!459278 (= e!281205 (and (inv!21 (value!28968 (h!9848 (t!71693 tokens!465)))) e!281203 tp!127130))))

(assert (=> b!458475 (= tp!127029 e!281202)))

(declare-fun b!459279 () Bool)

(declare-fun tp!127133 () Bool)

(assert (=> b!459279 (= e!281203 (and tp!127133 (inv!5527 (tag!1125 (rule!1560 (h!9848 (t!71693 tokens!465))))) (inv!5530 (transformation!865 (rule!1560 (h!9848 (t!71693 tokens!465))))) e!281204))))

(assert (= b!459279 b!459280))

(assert (= b!459278 b!459279))

(assert (= b!459277 b!459278))

(assert (= (and b!458475 ((_ is Cons!4451) (t!71693 tokens!465))) b!459277))

(declare-fun m!727315 () Bool)

(assert (=> b!459277 m!727315))

(declare-fun m!727317 () Bool)

(assert (=> b!459278 m!727317))

(declare-fun m!727319 () Bool)

(assert (=> b!459279 m!727319))

(declare-fun m!727321 () Bool)

(assert (=> b!459279 m!727321))

(declare-fun b!459293 () Bool)

(declare-fun e!281208 () Bool)

(declare-fun tp!127146 () Bool)

(assert (=> b!459293 (= e!281208 tp!127146)))

(declare-fun b!459292 () Bool)

(declare-fun tp!127144 () Bool)

(declare-fun tp!127148 () Bool)

(assert (=> b!459292 (= e!281208 (and tp!127144 tp!127148))))

(declare-fun b!459294 () Bool)

(declare-fun tp!127145 () Bool)

(declare-fun tp!127147 () Bool)

(assert (=> b!459294 (= e!281208 (and tp!127145 tp!127147))))

(assert (=> b!458486 (= tp!127033 e!281208)))

(declare-fun b!459291 () Bool)

(assert (=> b!459291 (= e!281208 tp_is_empty!1987)))

(assert (= (and b!458486 ((_ is ElementMatch!1089) (regex!865 (rule!1560 (h!9848 tokens!465))))) b!459291))

(assert (= (and b!458486 ((_ is Concat!1977) (regex!865 (rule!1560 (h!9848 tokens!465))))) b!459292))

(assert (= (and b!458486 ((_ is Star!1089) (regex!865 (rule!1560 (h!9848 tokens!465))))) b!459293))

(assert (= (and b!458486 ((_ is Union!1089) (regex!865 (rule!1560 (h!9848 tokens!465))))) b!459294))

(declare-fun b!459295 () Bool)

(declare-fun e!281209 () Bool)

(declare-fun tp!127149 () Bool)

(assert (=> b!459295 (= e!281209 (and tp_is_empty!1987 tp!127149))))

(assert (=> b!458479 (= tp!127027 e!281209)))

(assert (= (and b!458479 ((_ is Cons!4449) (originalCharacters!908 (h!9848 tokens!465)))) b!459295))

(declare-fun b!459298 () Bool)

(declare-fun e!281212 () Bool)

(assert (=> b!459298 (= e!281212 true)))

(declare-fun b!459297 () Bool)

(declare-fun e!281211 () Bool)

(assert (=> b!459297 (= e!281211 e!281212)))

(declare-fun b!459296 () Bool)

(declare-fun e!281210 () Bool)

(assert (=> b!459296 (= e!281210 e!281211)))

(assert (=> b!458498 e!281210))

(assert (= b!459297 b!459298))

(assert (= b!459296 b!459297))

(assert (= (and b!458498 ((_ is Cons!4450) (t!71692 rules!1920))) b!459296))

(assert (=> b!459298 (< (dynLambda!2706 order!3949 (toValue!1684 (transformation!865 (h!9847 (t!71692 rules!1920))))) (dynLambda!2707 order!3951 lambda!13458))))

(assert (=> b!459298 (< (dynLambda!2708 order!3953 (toChars!1543 (transformation!865 (h!9847 (t!71692 rules!1920))))) (dynLambda!2707 order!3951 lambda!13458))))

(declare-fun b!459301 () Bool)

(declare-fun e!281213 () Bool)

(declare-fun tp!127152 () Bool)

(assert (=> b!459301 (= e!281213 tp!127152)))

(declare-fun b!459300 () Bool)

(declare-fun tp!127150 () Bool)

(declare-fun tp!127154 () Bool)

(assert (=> b!459300 (= e!281213 (and tp!127150 tp!127154))))

(declare-fun b!459302 () Bool)

(declare-fun tp!127151 () Bool)

(declare-fun tp!127153 () Bool)

(assert (=> b!459302 (= e!281213 (and tp!127151 tp!127153))))

(assert (=> b!458470 (= tp!127030 e!281213)))

(declare-fun b!459299 () Bool)

(assert (=> b!459299 (= e!281213 tp_is_empty!1987)))

(assert (= (and b!458470 ((_ is ElementMatch!1089) (regex!865 (rule!1560 separatorToken!170)))) b!459299))

(assert (= (and b!458470 ((_ is Concat!1977) (regex!865 (rule!1560 separatorToken!170)))) b!459300))

(assert (= (and b!458470 ((_ is Star!1089) (regex!865 (rule!1560 separatorToken!170)))) b!459301))

(assert (= (and b!458470 ((_ is Union!1089) (regex!865 (rule!1560 separatorToken!170)))) b!459302))

(declare-fun b!459305 () Bool)

(declare-fun e!281214 () Bool)

(declare-fun tp!127157 () Bool)

(assert (=> b!459305 (= e!281214 tp!127157)))

(declare-fun b!459304 () Bool)

(declare-fun tp!127155 () Bool)

(declare-fun tp!127159 () Bool)

(assert (=> b!459304 (= e!281214 (and tp!127155 tp!127159))))

(declare-fun b!459306 () Bool)

(declare-fun tp!127156 () Bool)

(declare-fun tp!127158 () Bool)

(assert (=> b!459306 (= e!281214 (and tp!127156 tp!127158))))

(assert (=> b!458471 (= tp!127037 e!281214)))

(declare-fun b!459303 () Bool)

(assert (=> b!459303 (= e!281214 tp_is_empty!1987)))

(assert (= (and b!458471 ((_ is ElementMatch!1089) (regex!865 (h!9847 rules!1920)))) b!459303))

(assert (= (and b!458471 ((_ is Concat!1977) (regex!865 (h!9847 rules!1920)))) b!459304))

(assert (= (and b!458471 ((_ is Star!1089) (regex!865 (h!9847 rules!1920)))) b!459305))

(assert (= (and b!458471 ((_ is Union!1089) (regex!865 (h!9847 rules!1920)))) b!459306))

(declare-fun b_lambda!19073 () Bool)

(assert (= b_lambda!19045 (or b!458456 b_lambda!19073)))

(declare-fun bs!57002 () Bool)

(declare-fun d!175162 () Bool)

(assert (= bs!57002 (and d!175162 b!458456)))

(assert (=> bs!57002 (= (dynLambda!2712 lambda!13457 (h!9848 (t!71693 tokens!465))) (not (isSeparator!865 (rule!1560 (h!9848 (t!71693 tokens!465))))))))

(assert (=> b!458992 d!175162))

(declare-fun b_lambda!19075 () Bool)

(assert (= b_lambda!19035 (or (and b!459280 b_free!12819 (= (toChars!1543 (transformation!865 (rule!1560 (h!9848 (t!71693 tokens!465))))) (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))))) (and b!459266 b_free!12815 (= (toChars!1543 (transformation!865 (h!9847 (t!71692 rules!1920)))) (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))))) (and b!458488 b_free!12799 (= (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))) (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))))) (and b!458459 b_free!12795 (= (toChars!1543 (transformation!865 (h!9847 rules!1920))) (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))))) (and b!458485 b_free!12803) b_lambda!19075)))

(declare-fun b_lambda!19077 () Bool)

(assert (= b_lambda!19043 (or b!458467 b_lambda!19077)))

(declare-fun bs!57003 () Bool)

(declare-fun d!175164 () Bool)

(assert (= bs!57003 (and d!175164 b!458467)))

(assert (=> bs!57003 (= (dynLambda!2712 lambda!13458 (h!9848 tokens!465)) (rulesProduceIndividualToken!500 thiss!17480 rules!1920 (h!9848 tokens!465)))))

(assert (=> bs!57003 m!726095))

(assert (=> d!175054 d!175164))

(declare-fun b_lambda!19079 () Bool)

(assert (= b_lambda!19071 (or b!458456 b_lambda!19079)))

(declare-fun bs!57004 () Bool)

(declare-fun d!175166 () Bool)

(assert (= bs!57004 (and d!175166 b!458456)))

(assert (=> bs!57004 (= (dynLambda!2712 lambda!13457 (h!9848 tokens!465)) (not (isSeparator!865 (rule!1560 (h!9848 tokens!465)))))))

(assert (=> b!459181 d!175166))

(declare-fun b_lambda!19081 () Bool)

(assert (= b_lambda!19039 (or (and b!459280 b_free!12819 (= (toChars!1543 (transformation!865 (rule!1560 (h!9848 (t!71693 tokens!465))))) (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))))) (and b!459266 b_free!12815 (= (toChars!1543 (transformation!865 (h!9847 (t!71692 rules!1920)))) (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))))) (and b!458488 b_free!12799) (and b!458485 b_free!12803 (= (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))) (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))))) (and b!458459 b_free!12795 (= (toChars!1543 (transformation!865 (h!9847 rules!1920))) (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))))) b_lambda!19081)))

(declare-fun b_lambda!19083 () Bool)

(assert (= b_lambda!19033 (or (and b!459280 b_free!12819 (= (toChars!1543 (transformation!865 (rule!1560 (h!9848 (t!71693 tokens!465))))) (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))))) (and b!459266 b_free!12815 (= (toChars!1543 (transformation!865 (h!9847 (t!71692 rules!1920)))) (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))))) (and b!458488 b_free!12799) (and b!458485 b_free!12803 (= (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))) (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))))) (and b!458459 b_free!12795 (= (toChars!1543 (transformation!865 (h!9847 rules!1920))) (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))))) b_lambda!19083)))

(declare-fun b_lambda!19085 () Bool)

(assert (= b_lambda!19047 (or (and b!459280 b_free!12819 (= (toChars!1543 (transformation!865 (rule!1560 (h!9848 (t!71693 tokens!465))))) (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))))) (and b!459266 b_free!12815 (= (toChars!1543 (transformation!865 (h!9847 (t!71692 rules!1920)))) (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))))) (and b!458488 b_free!12799 (= (toChars!1543 (transformation!865 (rule!1560 separatorToken!170))) (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))))) (and b!458459 b_free!12795 (= (toChars!1543 (transformation!865 (h!9847 rules!1920))) (toChars!1543 (transformation!865 (rule!1560 (h!9848 tokens!465)))))) (and b!458485 b_free!12803) b_lambda!19085)))

(check-sat (not b!459201) (not b!458806) (not b!459301) (not b!458779) (not d!174994) (not d!175156) (not b!458736) (not b!459095) (not b_lambda!19073) (not b!459215) (not b!458743) (not d!174930) (not bm!31857) (not d!175128) (not b!458838) (not b!459223) (not b_lambda!19077) (not d!174938) (not b!459279) (not b!459020) (not b_lambda!19075) (not b!459180) (not b!459184) (not b!458741) (not b!459226) (not b!459197) (not b!459237) (not b!459306) (not b!458825) (not b!459224) (not b_lambda!19081) (not b!459246) (not bm!31863) (not b!459305) (not b!458981) (not b_next!12799) (not d!175134) b_and!49323 (not b!458707) (not b!459264) (not b!459179) (not bm!31822) (not tb!46007) (not d!175150) b_and!49349 (not d!175144) (not d!175068) (not b!459292) (not b!458993) (not tb!46013) (not bm!31853) b_and!49281 (not b!458812) (not d!174934) (not b!458983) (not b!459194) (not b!459192) (not d!175154) (not b_next!12803) (not b!458999) (not b!459173) (not b!459018) (not b!458982) (not b!458987) (not b_next!12801) (not b!458602) (not b!459304) (not b!458841) (not b_next!12813) (not b_next!12797) (not d!175052) (not bm!31855) (not bm!31829) (not d!174950) (not bm!31826) (not b!458814) (not b!458700) (not b!459265) (not d!174988) (not d!175116) (not b!458829) (not b!459174) (not b!458695) (not d!174948) (not b!459003) tp_is_empty!1987 (not b!459217) (not d!174978) (not b!459220) b_and!49327 (not d!175000) (not b_next!12819) (not b!459189) (not b!459191) (not b!459199) (not b_next!12793) (not b!459236) (not b!459229) (not b!459248) (not b!458780) (not b!458590) (not b!459294) (not bm!31859) (not d!174940) (not b!458808) (not b!458826) (not bm!31862) (not bs!57003) (not b!459295) (not b!459300) (not b!458692) (not b!459183) (not b!459277) (not d!175142) (not bm!31811) (not b!458978) (not b!458605) (not d!175130) b_and!49289 (not b!459015) (not d!175012) (not d!174962) (not b!459195) (not b!459019) (not b_next!12815) (not b!459016) (not b!459293) (not b!459196) (not b!459302) (not d!175158) (not b!459001) (not b_lambda!19079) (not d!175146) (not bm!31839) (not b!459235) (not bm!31823) (not b!459002) (not bm!31825) (not b!459221) (not b!458603) (not bm!31808) (not bm!31858) (not b!459203) (not d!174986) (not d!175010) (not d!175148) (not b!458702) (not b_next!12795) (not b!458868) (not b!458589) (not d!174976) (not bm!31860) (not b!459234) (not b_next!12817) (not b!458701) (not d!174936) b_and!49355 (not b!458980) (not b!459202) (not b!458807) (not b!459296) (not d!174944) (not d!174932) (not b!459216) (not b!458708) (not b!458810) (not b!458979) (not b!459278) (not b!458737) b_and!49285 (not b_lambda!19083) (not b!458594) b_and!49353 (not d!175074) (not b!458593) (not b!458870) (not b!459182) (not b!458703) (not b!458813) (not b!459225) (not bm!31810) (not b!458836) b_and!49325 (not b!458774) (not d!175076) (not d!175014) (not d!174968) (not b!459241) (not d!175152) (not b!459243) (not b!459218) (not d!175064) (not d!175138) (not b!459230) (not b!458784) (not b!458811) (not b!459094) (not d!175054) (not b!459242) (not d!174942) (not bm!31832) (not d!175136) (not d!174946) (not b!458696) (not b_lambda!19085) (not b!458787) (not b!458977) b_and!49351 (not d!174974) (not b!459255) (not d!174996) (not b!459200) (not b!458846) (not b!458782) (not b!458600) (not b!458738) (not b!458837))
(check-sat (not b_next!12799) b_and!49281 (not b_next!12803) (not b_next!12793) b_and!49289 (not b_next!12815) (not b_next!12795) b_and!49325 b_and!49351 b_and!49323 b_and!49349 (not b_next!12813) (not b_next!12797) (not b_next!12801) b_and!49327 (not b_next!12819) (not b_next!12817) b_and!49355 b_and!49285 b_and!49353)
