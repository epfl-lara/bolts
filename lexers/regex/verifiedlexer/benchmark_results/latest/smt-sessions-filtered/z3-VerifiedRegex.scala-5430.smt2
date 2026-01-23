; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!276056 () Bool)

(assert start!276056)

(declare-fun b!2838408 () Bool)

(declare-fun b_free!82081 () Bool)

(declare-fun b_next!82785 () Bool)

(assert (=> b!2838408 (= b_free!82081 (not b_next!82785))))

(declare-fun tp!908738 () Bool)

(declare-fun b_and!207999 () Bool)

(assert (=> b!2838408 (= tp!908738 b_and!207999)))

(declare-fun b_free!82083 () Bool)

(declare-fun b_next!82787 () Bool)

(assert (=> b!2838408 (= b_free!82083 (not b_next!82787))))

(declare-fun tp!908745 () Bool)

(declare-fun b_and!208001 () Bool)

(assert (=> b!2838408 (= tp!908745 b_and!208001)))

(declare-fun b!2838413 () Bool)

(declare-fun b_free!82085 () Bool)

(declare-fun b_next!82789 () Bool)

(assert (=> b!2838413 (= b_free!82085 (not b_next!82789))))

(declare-fun tp!908741 () Bool)

(declare-fun b_and!208003 () Bool)

(assert (=> b!2838413 (= tp!908741 b_and!208003)))

(declare-fun b_free!82087 () Bool)

(declare-fun b_next!82791 () Bool)

(assert (=> b!2838413 (= b_free!82087 (not b_next!82791))))

(declare-fun tp!908737 () Bool)

(declare-fun b_and!208005 () Bool)

(assert (=> b!2838413 (= tp!908737 b_and!208005)))

(declare-fun b!2838410 () Bool)

(declare-fun b_free!82089 () Bool)

(declare-fun b_next!82793 () Bool)

(assert (=> b!2838410 (= b_free!82089 (not b_next!82793))))

(declare-fun tp!908744 () Bool)

(declare-fun b_and!208007 () Bool)

(assert (=> b!2838410 (= tp!908744 b_and!208007)))

(declare-fun b_free!82091 () Bool)

(declare-fun b_next!82795 () Bool)

(assert (=> b!2838410 (= b_free!82091 (not b_next!82795))))

(declare-fun tp!908750 () Bool)

(declare-fun b_and!208009 () Bool)

(assert (=> b!2838410 (= tp!908750 b_and!208009)))

(declare-fun b!2838405 () Bool)

(declare-fun res!1181014 () Bool)

(declare-fun e!1797738 () Bool)

(assert (=> b!2838405 (=> (not res!1181014) (not e!1797738))))

(declare-datatypes ((C!17056 0))(
  ( (C!17057 (val!10540 Int)) )
))
(declare-datatypes ((List!33694 0))(
  ( (Nil!33570) (Cons!33570 (h!38990 C!17056) (t!232175 List!33694)) )
))
(declare-datatypes ((IArray!20857 0))(
  ( (IArray!20858 (innerList!10486 List!33694)) )
))
(declare-datatypes ((Conc!10426 0))(
  ( (Node!10426 (left!25308 Conc!10426) (right!25638 Conc!10426) (csize!21082 Int) (cheight!10637 Int)) (Leaf!15857 (xs!13538 IArray!20857) (csize!21083 Int)) (Empty!10426) )
))
(declare-datatypes ((BalanceConc!20490 0))(
  ( (BalanceConc!20491 (c!458470 Conc!10426)) )
))
(declare-datatypes ((List!33695 0))(
  ( (Nil!33571) (Cons!33571 (h!38991 (_ BitVec 16)) (t!232176 List!33695)) )
))
(declare-datatypes ((Regex!8437 0))(
  ( (ElementMatch!8437 (c!458471 C!17056)) (Concat!13713 (regOne!17386 Regex!8437) (regTwo!17386 Regex!8437)) (EmptyExpr!8437) (Star!8437 (reg!8766 Regex!8437)) (EmptyLang!8437) (Union!8437 (regOne!17387 Regex!8437) (regTwo!17387 Regex!8437)) )
))
(declare-datatypes ((String!36901 0))(
  ( (String!36902 (value!162154 String)) )
))
(declare-datatypes ((TokenValue!5276 0))(
  ( (FloatLiteralValue!10552 (text!37377 List!33695)) (TokenValueExt!5275 (__x!22290 Int)) (Broken!26380 (value!162155 List!33695)) (Object!5399) (End!5276) (Def!5276) (Underscore!5276) (Match!5276) (Else!5276) (Error!5276) (Case!5276) (If!5276) (Extends!5276) (Abstract!5276) (Class!5276) (Val!5276) (DelimiterValue!10552 (del!5336 List!33695)) (KeywordValue!5282 (value!162156 List!33695)) (CommentValue!10552 (value!162157 List!33695)) (WhitespaceValue!10552 (value!162158 List!33695)) (IndentationValue!5276 (value!162159 List!33695)) (String!36903) (Int32!5276) (Broken!26381 (value!162160 List!33695)) (Boolean!5277) (Unit!47456) (OperatorValue!5279 (op!5336 List!33695)) (IdentifierValue!10552 (value!162161 List!33695)) (IdentifierValue!10553 (value!162162 List!33695)) (WhitespaceValue!10553 (value!162163 List!33695)) (True!10552) (False!10552) (Broken!26382 (value!162164 List!33695)) (Broken!26383 (value!162165 List!33695)) (True!10553) (RightBrace!5276) (RightBracket!5276) (Colon!5276) (Null!5276) (Comma!5276) (LeftBracket!5276) (False!10553) (LeftBrace!5276) (ImaginaryLiteralValue!5276 (text!37378 List!33695)) (StringLiteralValue!15828 (value!162166 List!33695)) (EOFValue!5276 (value!162167 List!33695)) (IdentValue!5276 (value!162168 List!33695)) (DelimiterValue!10553 (value!162169 List!33695)) (DedentValue!5276 (value!162170 List!33695)) (NewLineValue!5276 (value!162171 List!33695)) (IntegerValue!15828 (value!162172 (_ BitVec 32)) (text!37379 List!33695)) (IntegerValue!15829 (value!162173 Int) (text!37380 List!33695)) (Times!5276) (Or!5276) (Equal!5276) (Minus!5276) (Broken!26384 (value!162174 List!33695)) (And!5276) (Div!5276) (LessEqual!5276) (Mod!5276) (Concat!13714) (Not!5276) (Plus!5276) (SpaceValue!5276 (value!162175 List!33695)) (IntegerValue!15830 (value!162176 Int) (text!37381 List!33695)) (StringLiteralValue!15829 (text!37382 List!33695)) (FloatLiteralValue!10553 (text!37383 List!33695)) (BytesLiteralValue!5276 (value!162177 List!33695)) (CommentValue!10553 (value!162178 List!33695)) (StringLiteralValue!15830 (value!162179 List!33695)) (ErrorTokenValue!5276 (msg!5337 List!33695)) )
))
(declare-datatypes ((TokenValueInjection!9980 0))(
  ( (TokenValueInjection!9981 (toValue!7088 Int) (toChars!6947 Int)) )
))
(declare-datatypes ((Rule!9892 0))(
  ( (Rule!9893 (regex!5046 Regex!8437) (tag!5550 String!36901) (isSeparator!5046 Bool) (transformation!5046 TokenValueInjection!9980)) )
))
(declare-datatypes ((Token!9494 0))(
  ( (Token!9495 (value!162180 TokenValue!5276) (rule!7474 Rule!9892) (size!26083 Int) (originalCharacters!5778 List!33694)) )
))
(declare-datatypes ((List!33696 0))(
  ( (Nil!33572) (Cons!33572 (h!38992 Token!9494) (t!232177 List!33696)) )
))
(declare-fun tokensBis!14 () List!33696)

(declare-fun tokens!612 () List!33696)

(declare-fun subseq!512 (List!33696 List!33696) Bool)

(assert (=> b!2838405 (= res!1181014 (subseq!512 tokensBis!14 tokens!612))))

(declare-fun e!1797725 () Bool)

(declare-datatypes ((List!33697 0))(
  ( (Nil!33573) (Cons!33573 (h!38993 Rule!9892) (t!232178 List!33697)) )
))
(declare-fun rules!4246 () List!33697)

(declare-fun tp!908743 () Bool)

(declare-fun b!2838406 () Bool)

(declare-fun e!1797732 () Bool)

(declare-fun inv!45536 (String!36901) Bool)

(declare-fun inv!45539 (TokenValueInjection!9980) Bool)

(assert (=> b!2838406 (= e!1797732 (and tp!908743 (inv!45536 (tag!5550 (h!38993 rules!4246))) (inv!45539 (transformation!5046 (h!38993 rules!4246))) e!1797725))))

(declare-fun b!2838407 () Bool)

(declare-fun res!1181016 () Bool)

(assert (=> b!2838407 (=> (not res!1181016) (not e!1797738))))

(declare-fun isEmpty!18495 (List!33697) Bool)

(assert (=> b!2838407 (= res!1181016 (not (isEmpty!18495 rules!4246)))))

(declare-fun e!1797736 () Bool)

(assert (=> b!2838408 (= e!1797736 (and tp!908738 tp!908745))))

(declare-fun tp!908748 () Bool)

(declare-fun b!2838409 () Bool)

(declare-fun e!1797734 () Bool)

(declare-fun e!1797723 () Bool)

(assert (=> b!2838409 (= e!1797734 (and tp!908748 (inv!45536 (tag!5550 (rule!7474 (h!38992 tokensBis!14)))) (inv!45539 (transformation!5046 (rule!7474 (h!38992 tokensBis!14)))) e!1797723))))

(declare-fun res!1181013 () Bool)

(assert (=> start!276056 (=> (not res!1181013) (not e!1797738))))

(declare-datatypes ((LexerInterface!4636 0))(
  ( (LexerInterfaceExt!4633 (__x!22291 Int)) (Lexer!4634) )
))
(declare-fun thiss!27264 () LexerInterface!4636)

(get-info :version)

(assert (=> start!276056 (= res!1181013 ((_ is Lexer!4634) thiss!27264))))

(assert (=> start!276056 e!1797738))

(assert (=> start!276056 true))

(declare-fun e!1797729 () Bool)

(assert (=> start!276056 e!1797729))

(declare-fun e!1797726 () Bool)

(assert (=> start!276056 e!1797726))

(declare-fun e!1797728 () Bool)

(assert (=> start!276056 e!1797728))

(assert (=> b!2838410 (= e!1797725 (and tp!908744 tp!908750))))

(declare-fun b!2838411 () Bool)

(declare-fun res!1181017 () Bool)

(assert (=> b!2838411 (=> (not res!1181017) (not e!1797738))))

(declare-fun rulesInvariant!4052 (LexerInterface!4636 List!33697) Bool)

(assert (=> b!2838411 (= res!1181017 (rulesInvariant!4052 thiss!27264 rules!4246))))

(declare-fun b!2838412 () Bool)

(declare-fun res!1181018 () Bool)

(assert (=> b!2838412 (=> (not res!1181018) (not e!1797738))))

(declare-fun rulesProduceEachTokenIndividuallyList!1677 (LexerInterface!4636 List!33697 List!33696) Bool)

(assert (=> b!2838412 (= res!1181018 (rulesProduceEachTokenIndividuallyList!1677 thiss!27264 rules!4246 tokens!612))))

(assert (=> b!2838413 (= e!1797723 (and tp!908741 tp!908737))))

(declare-fun b!2838414 () Bool)

(declare-fun res!1181012 () Bool)

(assert (=> b!2838414 (=> (not res!1181012) (not e!1797738))))

(assert (=> b!2838414 (= res!1181012 (subseq!512 (t!232177 tokensBis!14) (t!232177 tokens!612)))))

(declare-fun b!2838415 () Bool)

(declare-fun tp!908739 () Bool)

(assert (=> b!2838415 (= e!1797729 (and e!1797732 tp!908739))))

(declare-fun e!1797739 () Bool)

(declare-fun b!2838416 () Bool)

(declare-fun tp!908746 () Bool)

(declare-fun inv!21 (TokenValue!5276) Bool)

(assert (=> b!2838416 (= e!1797739 (and (inv!21 (value!162180 (h!38992 tokensBis!14))) e!1797734 tp!908746))))

(declare-fun b!2838417 () Bool)

(declare-fun res!1181015 () Bool)

(assert (=> b!2838417 (=> (not res!1181015) (not e!1797738))))

(assert (=> b!2838417 (= res!1181015 (and (not ((_ is Nil!33572) tokensBis!14)) ((_ is Cons!33572) tokens!612) (= (h!38992 tokensBis!14) (h!38992 tokens!612))))))

(declare-fun tp!908749 () Bool)

(declare-fun b!2838418 () Bool)

(declare-fun inv!45540 (Token!9494) Bool)

(assert (=> b!2838418 (= e!1797726 (and (inv!45540 (h!38992 tokensBis!14)) e!1797739 tp!908749))))

(declare-fun e!1797733 () Bool)

(declare-fun tp!908740 () Bool)

(declare-fun b!2838419 () Bool)

(assert (=> b!2838419 (= e!1797733 (and tp!908740 (inv!45536 (tag!5550 (rule!7474 (h!38992 tokens!612)))) (inv!45539 (transformation!5046 (rule!7474 (h!38992 tokens!612)))) e!1797736))))

(declare-fun b!2838420 () Bool)

(declare-fun tp!908742 () Bool)

(declare-fun e!1797730 () Bool)

(assert (=> b!2838420 (= e!1797730 (and (inv!21 (value!162180 (h!38992 tokens!612))) e!1797733 tp!908742))))

(declare-fun b!2838421 () Bool)

(assert (=> b!2838421 (= e!1797738 (not (rulesProduceEachTokenIndividuallyList!1677 thiss!27264 rules!4246 (t!232177 tokens!612))))))

(declare-fun b!2838422 () Bool)

(declare-fun tp!908747 () Bool)

(assert (=> b!2838422 (= e!1797728 (and (inv!45540 (h!38992 tokens!612)) e!1797730 tp!908747))))

(assert (= (and start!276056 res!1181013) b!2838407))

(assert (= (and b!2838407 res!1181016) b!2838411))

(assert (= (and b!2838411 res!1181017) b!2838405))

(assert (= (and b!2838405 res!1181014) b!2838412))

(assert (= (and b!2838412 res!1181018) b!2838417))

(assert (= (and b!2838417 res!1181015) b!2838414))

(assert (= (and b!2838414 res!1181012) b!2838421))

(assert (= b!2838406 b!2838410))

(assert (= b!2838415 b!2838406))

(assert (= (and start!276056 ((_ is Cons!33573) rules!4246)) b!2838415))

(assert (= b!2838409 b!2838413))

(assert (= b!2838416 b!2838409))

(assert (= b!2838418 b!2838416))

(assert (= (and start!276056 ((_ is Cons!33572) tokensBis!14)) b!2838418))

(assert (= b!2838419 b!2838408))

(assert (= b!2838420 b!2838419))

(assert (= b!2838422 b!2838420))

(assert (= (and start!276056 ((_ is Cons!33572) tokens!612)) b!2838422))

(declare-fun m!3267595 () Bool)

(assert (=> b!2838405 m!3267595))

(declare-fun m!3267597 () Bool)

(assert (=> b!2838409 m!3267597))

(declare-fun m!3267599 () Bool)

(assert (=> b!2838409 m!3267599))

(declare-fun m!3267601 () Bool)

(assert (=> b!2838419 m!3267601))

(declare-fun m!3267603 () Bool)

(assert (=> b!2838419 m!3267603))

(declare-fun m!3267605 () Bool)

(assert (=> b!2838414 m!3267605))

(declare-fun m!3267607 () Bool)

(assert (=> b!2838422 m!3267607))

(declare-fun m!3267609 () Bool)

(assert (=> b!2838416 m!3267609))

(declare-fun m!3267611 () Bool)

(assert (=> b!2838412 m!3267611))

(declare-fun m!3267613 () Bool)

(assert (=> b!2838418 m!3267613))

(declare-fun m!3267615 () Bool)

(assert (=> b!2838407 m!3267615))

(declare-fun m!3267617 () Bool)

(assert (=> b!2838406 m!3267617))

(declare-fun m!3267619 () Bool)

(assert (=> b!2838406 m!3267619))

(declare-fun m!3267621 () Bool)

(assert (=> b!2838421 m!3267621))

(declare-fun m!3267623 () Bool)

(assert (=> b!2838420 m!3267623))

(declare-fun m!3267625 () Bool)

(assert (=> b!2838411 m!3267625))

(check-sat (not b_next!82795) (not b!2838419) b_and!208003 b_and!208007 (not b!2838412) (not b_next!82791) b_and!208009 (not b!2838420) (not b!2838405) (not b!2838418) (not b!2838415) b_and!208005 (not b!2838411) (not b_next!82785) (not b!2838406) (not b!2838416) (not b_next!82793) (not b!2838421) (not b!2838409) (not b_next!82789) b_and!207999 (not b!2838422) (not b_next!82787) (not b!2838407) b_and!208001 (not b!2838414))
(check-sat (not b_next!82795) b_and!208003 b_and!208005 (not b_next!82785) b_and!208007 (not b_next!82791) (not b_next!82793) b_and!208009 (not b_next!82789) b_and!207999 (not b_next!82787) b_and!208001)
(get-model)

(declare-fun b!2838433 () Bool)

(declare-fun e!1797750 () Bool)

(assert (=> b!2838433 (= e!1797750 (subseq!512 (t!232177 (t!232177 tokensBis!14)) (t!232177 (t!232177 tokens!612))))))

(declare-fun b!2838434 () Bool)

(declare-fun e!1797749 () Bool)

(assert (=> b!2838434 (= e!1797749 (subseq!512 (t!232177 tokensBis!14) (t!232177 (t!232177 tokens!612))))))

(declare-fun b!2838432 () Bool)

(declare-fun e!1797751 () Bool)

(assert (=> b!2838432 (= e!1797751 e!1797749)))

(declare-fun res!1181033 () Bool)

(assert (=> b!2838432 (=> res!1181033 e!1797749)))

(assert (=> b!2838432 (= res!1181033 e!1797750)))

(declare-fun res!1181032 () Bool)

(assert (=> b!2838432 (=> (not res!1181032) (not e!1797750))))

(assert (=> b!2838432 (= res!1181032 (= (h!38992 (t!232177 tokensBis!14)) (h!38992 (t!232177 tokens!612))))))

(declare-fun b!2838431 () Bool)

(declare-fun e!1797748 () Bool)

(assert (=> b!2838431 (= e!1797748 e!1797751)))

(declare-fun res!1181034 () Bool)

(assert (=> b!2838431 (=> (not res!1181034) (not e!1797751))))

(assert (=> b!2838431 (= res!1181034 ((_ is Cons!33572) (t!232177 tokens!612)))))

(declare-fun d!823373 () Bool)

(declare-fun res!1181035 () Bool)

(assert (=> d!823373 (=> res!1181035 e!1797748)))

(assert (=> d!823373 (= res!1181035 ((_ is Nil!33572) (t!232177 tokensBis!14)))))

(assert (=> d!823373 (= (subseq!512 (t!232177 tokensBis!14) (t!232177 tokens!612)) e!1797748)))

(assert (= (and d!823373 (not res!1181035)) b!2838431))

(assert (= (and b!2838431 res!1181034) b!2838432))

(assert (= (and b!2838432 res!1181032) b!2838433))

(assert (= (and b!2838432 (not res!1181033)) b!2838434))

(declare-fun m!3267627 () Bool)

(assert (=> b!2838433 m!3267627))

(declare-fun m!3267629 () Bool)

(assert (=> b!2838434 m!3267629))

(assert (=> b!2838414 d!823373))

(declare-fun d!823375 () Bool)

(declare-fun res!1181048 () Bool)

(declare-fun e!1797762 () Bool)

(assert (=> d!823375 (=> (not res!1181048) (not e!1797762))))

(declare-fun isEmpty!18496 (List!33694) Bool)

(assert (=> d!823375 (= res!1181048 (not (isEmpty!18496 (originalCharacters!5778 (h!38992 tokens!612)))))))

(assert (=> d!823375 (= (inv!45540 (h!38992 tokens!612)) e!1797762)))

(declare-fun b!2838447 () Bool)

(declare-fun res!1181049 () Bool)

(assert (=> b!2838447 (=> (not res!1181049) (not e!1797762))))

(declare-fun list!12525 (BalanceConc!20490) List!33694)

(declare-fun dynLambda!14108 (Int TokenValue!5276) BalanceConc!20490)

(assert (=> b!2838447 (= res!1181049 (= (originalCharacters!5778 (h!38992 tokens!612)) (list!12525 (dynLambda!14108 (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612)))) (value!162180 (h!38992 tokens!612))))))))

(declare-fun b!2838448 () Bool)

(declare-fun size!26084 (List!33694) Int)

(assert (=> b!2838448 (= e!1797762 (= (size!26083 (h!38992 tokens!612)) (size!26084 (originalCharacters!5778 (h!38992 tokens!612)))))))

(assert (= (and d!823375 res!1181048) b!2838447))

(assert (= (and b!2838447 res!1181049) b!2838448))

(declare-fun b_lambda!85311 () Bool)

(assert (=> (not b_lambda!85311) (not b!2838447)))

(declare-fun t!232180 () Bool)

(declare-fun tb!154613 () Bool)

(assert (=> (and b!2838408 (= (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612)))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612))))) t!232180) tb!154613))

(declare-fun b!2838457 () Bool)

(declare-fun e!1797769 () Bool)

(declare-fun tp!908753 () Bool)

(declare-fun inv!45541 (Conc!10426) Bool)

(assert (=> b!2838457 (= e!1797769 (and (inv!45541 (c!458470 (dynLambda!14108 (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612)))) (value!162180 (h!38992 tokens!612))))) tp!908753))))

(declare-fun result!192838 () Bool)

(declare-fun inv!45542 (BalanceConc!20490) Bool)

(assert (=> tb!154613 (= result!192838 (and (inv!45542 (dynLambda!14108 (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612)))) (value!162180 (h!38992 tokens!612)))) e!1797769))))

(assert (= tb!154613 b!2838457))

(declare-fun m!3267635 () Bool)

(assert (=> b!2838457 m!3267635))

(declare-fun m!3267637 () Bool)

(assert (=> tb!154613 m!3267637))

(assert (=> b!2838447 t!232180))

(declare-fun b_and!208011 () Bool)

(assert (= b_and!208001 (and (=> t!232180 result!192838) b_and!208011)))

(declare-fun tb!154615 () Bool)

(declare-fun t!232182 () Bool)

(assert (=> (and b!2838413 (= (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14)))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612))))) t!232182) tb!154615))

(declare-fun result!192842 () Bool)

(assert (= result!192842 result!192838))

(assert (=> b!2838447 t!232182))

(declare-fun b_and!208013 () Bool)

(assert (= b_and!208005 (and (=> t!232182 result!192842) b_and!208013)))

(declare-fun tb!154617 () Bool)

(declare-fun t!232184 () Bool)

(assert (=> (and b!2838410 (= (toChars!6947 (transformation!5046 (h!38993 rules!4246))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612))))) t!232184) tb!154617))

(declare-fun result!192844 () Bool)

(assert (= result!192844 result!192838))

(assert (=> b!2838447 t!232184))

(declare-fun b_and!208015 () Bool)

(assert (= b_and!208009 (and (=> t!232184 result!192844) b_and!208015)))

(declare-fun m!3267639 () Bool)

(assert (=> d!823375 m!3267639))

(declare-fun m!3267641 () Bool)

(assert (=> b!2838447 m!3267641))

(assert (=> b!2838447 m!3267641))

(declare-fun m!3267643 () Bool)

(assert (=> b!2838447 m!3267643))

(declare-fun m!3267645 () Bool)

(assert (=> b!2838448 m!3267645))

(assert (=> b!2838422 d!823375))

(declare-fun d!823381 () Bool)

(declare-fun res!1181056 () Bool)

(declare-fun e!1797772 () Bool)

(assert (=> d!823381 (=> (not res!1181056) (not e!1797772))))

(declare-fun rulesValid!1866 (LexerInterface!4636 List!33697) Bool)

(assert (=> d!823381 (= res!1181056 (rulesValid!1866 thiss!27264 rules!4246))))

(assert (=> d!823381 (= (rulesInvariant!4052 thiss!27264 rules!4246) e!1797772)))

(declare-fun b!2838460 () Bool)

(declare-datatypes ((List!33698 0))(
  ( (Nil!33574) (Cons!33574 (h!38994 String!36901) (t!232213 List!33698)) )
))
(declare-fun noDuplicateTag!1862 (LexerInterface!4636 List!33697 List!33698) Bool)

(assert (=> b!2838460 (= e!1797772 (noDuplicateTag!1862 thiss!27264 rules!4246 Nil!33574))))

(assert (= (and d!823381 res!1181056) b!2838460))

(declare-fun m!3267647 () Bool)

(assert (=> d!823381 m!3267647))

(declare-fun m!3267649 () Bool)

(assert (=> b!2838460 m!3267649))

(assert (=> b!2838411 d!823381))

(declare-fun b!2838481 () Bool)

(declare-fun e!1797791 () Bool)

(assert (=> b!2838481 (= e!1797791 true)))

(declare-fun b!2838480 () Bool)

(declare-fun e!1797790 () Bool)

(assert (=> b!2838480 (= e!1797790 e!1797791)))

(declare-fun b!2838479 () Bool)

(declare-fun e!1797789 () Bool)

(assert (=> b!2838479 (= e!1797789 e!1797790)))

(declare-fun d!823383 () Bool)

(assert (=> d!823383 e!1797789))

(assert (= b!2838480 b!2838481))

(assert (= b!2838479 b!2838480))

(assert (= (and d!823383 ((_ is Cons!33573) rules!4246)) b!2838479))

(declare-fun lambda!104192 () Int)

(declare-fun order!17917 () Int)

(declare-fun order!17919 () Int)

(declare-fun dynLambda!14109 (Int Int) Int)

(declare-fun dynLambda!14110 (Int Int) Int)

(assert (=> b!2838481 (< (dynLambda!14109 order!17917 (toValue!7088 (transformation!5046 (h!38993 rules!4246)))) (dynLambda!14110 order!17919 lambda!104192))))

(declare-fun order!17921 () Int)

(declare-fun dynLambda!14111 (Int Int) Int)

(assert (=> b!2838481 (< (dynLambda!14111 order!17921 (toChars!6947 (transformation!5046 (h!38993 rules!4246)))) (dynLambda!14110 order!17919 lambda!104192))))

(assert (=> d!823383 true))

(declare-fun lt!1011510 () Bool)

(declare-fun forall!6902 (List!33696 Int) Bool)

(assert (=> d!823383 (= lt!1011510 (forall!6902 tokens!612 lambda!104192))))

(declare-fun e!1797781 () Bool)

(assert (=> d!823383 (= lt!1011510 e!1797781)))

(declare-fun res!1181066 () Bool)

(assert (=> d!823383 (=> res!1181066 e!1797781)))

(assert (=> d!823383 (= res!1181066 (not ((_ is Cons!33572) tokens!612)))))

(assert (=> d!823383 (not (isEmpty!18495 rules!4246))))

(assert (=> d!823383 (= (rulesProduceEachTokenIndividuallyList!1677 thiss!27264 rules!4246 tokens!612) lt!1011510)))

(declare-fun b!2838469 () Bool)

(declare-fun e!1797782 () Bool)

(assert (=> b!2838469 (= e!1797781 e!1797782)))

(declare-fun res!1181065 () Bool)

(assert (=> b!2838469 (=> (not res!1181065) (not e!1797782))))

(declare-fun rulesProduceIndividualToken!2149 (LexerInterface!4636 List!33697 Token!9494) Bool)

(assert (=> b!2838469 (= res!1181065 (rulesProduceIndividualToken!2149 thiss!27264 rules!4246 (h!38992 tokens!612)))))

(declare-fun b!2838470 () Bool)

(assert (=> b!2838470 (= e!1797782 (rulesProduceEachTokenIndividuallyList!1677 thiss!27264 rules!4246 (t!232177 tokens!612)))))

(assert (= (and d!823383 (not res!1181066)) b!2838469))

(assert (= (and b!2838469 res!1181065) b!2838470))

(declare-fun m!3267651 () Bool)

(assert (=> d!823383 m!3267651))

(assert (=> d!823383 m!3267615))

(declare-fun m!3267653 () Bool)

(assert (=> b!2838469 m!3267653))

(assert (=> b!2838470 m!3267621))

(assert (=> b!2838412 d!823383))

(declare-fun bs!518846 () Bool)

(declare-fun d!823385 () Bool)

(assert (= bs!518846 (and d!823385 d!823383)))

(declare-fun lambda!104193 () Int)

(assert (=> bs!518846 (= lambda!104193 lambda!104192)))

(declare-fun b!2838488 () Bool)

(declare-fun e!1797796 () Bool)

(assert (=> b!2838488 (= e!1797796 true)))

(declare-fun b!2838487 () Bool)

(declare-fun e!1797795 () Bool)

(assert (=> b!2838487 (= e!1797795 e!1797796)))

(declare-fun b!2838486 () Bool)

(declare-fun e!1797794 () Bool)

(assert (=> b!2838486 (= e!1797794 e!1797795)))

(assert (=> d!823385 e!1797794))

(assert (= b!2838487 b!2838488))

(assert (= b!2838486 b!2838487))

(assert (= (and d!823385 ((_ is Cons!33573) rules!4246)) b!2838486))

(assert (=> b!2838488 (< (dynLambda!14109 order!17917 (toValue!7088 (transformation!5046 (h!38993 rules!4246)))) (dynLambda!14110 order!17919 lambda!104193))))

(assert (=> b!2838488 (< (dynLambda!14111 order!17921 (toChars!6947 (transformation!5046 (h!38993 rules!4246)))) (dynLambda!14110 order!17919 lambda!104193))))

(assert (=> d!823385 true))

(declare-fun lt!1011511 () Bool)

(assert (=> d!823385 (= lt!1011511 (forall!6902 (t!232177 tokens!612) lambda!104193))))

(declare-fun e!1797792 () Bool)

(assert (=> d!823385 (= lt!1011511 e!1797792)))

(declare-fun res!1181068 () Bool)

(assert (=> d!823385 (=> res!1181068 e!1797792)))

(assert (=> d!823385 (= res!1181068 (not ((_ is Cons!33572) (t!232177 tokens!612))))))

(assert (=> d!823385 (not (isEmpty!18495 rules!4246))))

(assert (=> d!823385 (= (rulesProduceEachTokenIndividuallyList!1677 thiss!27264 rules!4246 (t!232177 tokens!612)) lt!1011511)))

(declare-fun b!2838484 () Bool)

(declare-fun e!1797793 () Bool)

(assert (=> b!2838484 (= e!1797792 e!1797793)))

(declare-fun res!1181067 () Bool)

(assert (=> b!2838484 (=> (not res!1181067) (not e!1797793))))

(assert (=> b!2838484 (= res!1181067 (rulesProduceIndividualToken!2149 thiss!27264 rules!4246 (h!38992 (t!232177 tokens!612))))))

(declare-fun b!2838485 () Bool)

(assert (=> b!2838485 (= e!1797793 (rulesProduceEachTokenIndividuallyList!1677 thiss!27264 rules!4246 (t!232177 (t!232177 tokens!612))))))

(assert (= (and d!823385 (not res!1181068)) b!2838484))

(assert (= (and b!2838484 res!1181067) b!2838485))

(declare-fun m!3267655 () Bool)

(assert (=> d!823385 m!3267655))

(assert (=> d!823385 m!3267615))

(declare-fun m!3267657 () Bool)

(assert (=> b!2838484 m!3267657))

(declare-fun m!3267659 () Bool)

(assert (=> b!2838485 m!3267659))

(assert (=> b!2838421 d!823385))

(declare-fun d!823387 () Bool)

(assert (=> d!823387 (= (inv!45536 (tag!5550 (rule!7474 (h!38992 tokens!612)))) (= (mod (str.len (value!162154 (tag!5550 (rule!7474 (h!38992 tokens!612))))) 2) 0))))

(assert (=> b!2838419 d!823387))

(declare-fun d!823389 () Bool)

(declare-fun res!1181071 () Bool)

(declare-fun e!1797799 () Bool)

(assert (=> d!823389 (=> (not res!1181071) (not e!1797799))))

(declare-fun semiInverseModEq!2096 (Int Int) Bool)

(assert (=> d!823389 (= res!1181071 (semiInverseModEq!2096 (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612)))) (toValue!7088 (transformation!5046 (rule!7474 (h!38992 tokens!612))))))))

(assert (=> d!823389 (= (inv!45539 (transformation!5046 (rule!7474 (h!38992 tokens!612)))) e!1797799)))

(declare-fun b!2838491 () Bool)

(declare-fun equivClasses!1995 (Int Int) Bool)

(assert (=> b!2838491 (= e!1797799 (equivClasses!1995 (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612)))) (toValue!7088 (transformation!5046 (rule!7474 (h!38992 tokens!612))))))))

(assert (= (and d!823389 res!1181071) b!2838491))

(declare-fun m!3267661 () Bool)

(assert (=> d!823389 m!3267661))

(declare-fun m!3267663 () Bool)

(assert (=> b!2838491 m!3267663))

(assert (=> b!2838419 d!823389))

(declare-fun b!2838502 () Bool)

(declare-fun e!1797808 () Bool)

(declare-fun e!1797806 () Bool)

(assert (=> b!2838502 (= e!1797808 e!1797806)))

(declare-fun c!458477 () Bool)

(assert (=> b!2838502 (= c!458477 ((_ is IntegerValue!15829) (value!162180 (h!38992 tokens!612))))))

(declare-fun b!2838503 () Bool)

(declare-fun e!1797807 () Bool)

(declare-fun inv!15 (TokenValue!5276) Bool)

(assert (=> b!2838503 (= e!1797807 (inv!15 (value!162180 (h!38992 tokens!612))))))

(declare-fun d!823391 () Bool)

(declare-fun c!458476 () Bool)

(assert (=> d!823391 (= c!458476 ((_ is IntegerValue!15828) (value!162180 (h!38992 tokens!612))))))

(assert (=> d!823391 (= (inv!21 (value!162180 (h!38992 tokens!612))) e!1797808)))

(declare-fun b!2838504 () Bool)

(declare-fun res!1181074 () Bool)

(assert (=> b!2838504 (=> res!1181074 e!1797807)))

(assert (=> b!2838504 (= res!1181074 (not ((_ is IntegerValue!15830) (value!162180 (h!38992 tokens!612)))))))

(assert (=> b!2838504 (= e!1797806 e!1797807)))

(declare-fun b!2838505 () Bool)

(declare-fun inv!17 (TokenValue!5276) Bool)

(assert (=> b!2838505 (= e!1797806 (inv!17 (value!162180 (h!38992 tokens!612))))))

(declare-fun b!2838506 () Bool)

(declare-fun inv!16 (TokenValue!5276) Bool)

(assert (=> b!2838506 (= e!1797808 (inv!16 (value!162180 (h!38992 tokens!612))))))

(assert (= (and d!823391 c!458476) b!2838506))

(assert (= (and d!823391 (not c!458476)) b!2838502))

(assert (= (and b!2838502 c!458477) b!2838505))

(assert (= (and b!2838502 (not c!458477)) b!2838504))

(assert (= (and b!2838504 (not res!1181074)) b!2838503))

(declare-fun m!3267665 () Bool)

(assert (=> b!2838503 m!3267665))

(declare-fun m!3267667 () Bool)

(assert (=> b!2838505 m!3267667))

(declare-fun m!3267669 () Bool)

(assert (=> b!2838506 m!3267669))

(assert (=> b!2838420 d!823391))

(declare-fun d!823393 () Bool)

(assert (=> d!823393 (= (inv!45536 (tag!5550 (rule!7474 (h!38992 tokensBis!14)))) (= (mod (str.len (value!162154 (tag!5550 (rule!7474 (h!38992 tokensBis!14))))) 2) 0))))

(assert (=> b!2838409 d!823393))

(declare-fun d!823395 () Bool)

(declare-fun res!1181075 () Bool)

(declare-fun e!1797809 () Bool)

(assert (=> d!823395 (=> (not res!1181075) (not e!1797809))))

(assert (=> d!823395 (= res!1181075 (semiInverseModEq!2096 (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14)))) (toValue!7088 (transformation!5046 (rule!7474 (h!38992 tokensBis!14))))))))

(assert (=> d!823395 (= (inv!45539 (transformation!5046 (rule!7474 (h!38992 tokensBis!14)))) e!1797809)))

(declare-fun b!2838507 () Bool)

(assert (=> b!2838507 (= e!1797809 (equivClasses!1995 (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14)))) (toValue!7088 (transformation!5046 (rule!7474 (h!38992 tokensBis!14))))))))

(assert (= (and d!823395 res!1181075) b!2838507))

(declare-fun m!3267671 () Bool)

(assert (=> d!823395 m!3267671))

(declare-fun m!3267673 () Bool)

(assert (=> b!2838507 m!3267673))

(assert (=> b!2838409 d!823395))

(declare-fun d!823397 () Bool)

(declare-fun res!1181076 () Bool)

(declare-fun e!1797810 () Bool)

(assert (=> d!823397 (=> (not res!1181076) (not e!1797810))))

(assert (=> d!823397 (= res!1181076 (not (isEmpty!18496 (originalCharacters!5778 (h!38992 tokensBis!14)))))))

(assert (=> d!823397 (= (inv!45540 (h!38992 tokensBis!14)) e!1797810)))

(declare-fun b!2838508 () Bool)

(declare-fun res!1181077 () Bool)

(assert (=> b!2838508 (=> (not res!1181077) (not e!1797810))))

(assert (=> b!2838508 (= res!1181077 (= (originalCharacters!5778 (h!38992 tokensBis!14)) (list!12525 (dynLambda!14108 (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14)))) (value!162180 (h!38992 tokensBis!14))))))))

(declare-fun b!2838509 () Bool)

(assert (=> b!2838509 (= e!1797810 (= (size!26083 (h!38992 tokensBis!14)) (size!26084 (originalCharacters!5778 (h!38992 tokensBis!14)))))))

(assert (= (and d!823397 res!1181076) b!2838508))

(assert (= (and b!2838508 res!1181077) b!2838509))

(declare-fun b_lambda!85313 () Bool)

(assert (=> (not b_lambda!85313) (not b!2838508)))

(declare-fun tb!154619 () Bool)

(declare-fun t!232190 () Bool)

(assert (=> (and b!2838408 (= (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612)))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14))))) t!232190) tb!154619))

(declare-fun b!2838510 () Bool)

(declare-fun e!1797811 () Bool)

(declare-fun tp!908754 () Bool)

(assert (=> b!2838510 (= e!1797811 (and (inv!45541 (c!458470 (dynLambda!14108 (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14)))) (value!162180 (h!38992 tokensBis!14))))) tp!908754))))

(declare-fun result!192846 () Bool)

(assert (=> tb!154619 (= result!192846 (and (inv!45542 (dynLambda!14108 (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14)))) (value!162180 (h!38992 tokensBis!14)))) e!1797811))))

(assert (= tb!154619 b!2838510))

(declare-fun m!3267675 () Bool)

(assert (=> b!2838510 m!3267675))

(declare-fun m!3267677 () Bool)

(assert (=> tb!154619 m!3267677))

(assert (=> b!2838508 t!232190))

(declare-fun b_and!208017 () Bool)

(assert (= b_and!208011 (and (=> t!232190 result!192846) b_and!208017)))

(declare-fun t!232192 () Bool)

(declare-fun tb!154621 () Bool)

(assert (=> (and b!2838413 (= (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14)))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14))))) t!232192) tb!154621))

(declare-fun result!192848 () Bool)

(assert (= result!192848 result!192846))

(assert (=> b!2838508 t!232192))

(declare-fun b_and!208019 () Bool)

(assert (= b_and!208013 (and (=> t!232192 result!192848) b_and!208019)))

(declare-fun tb!154623 () Bool)

(declare-fun t!232194 () Bool)

(assert (=> (and b!2838410 (= (toChars!6947 (transformation!5046 (h!38993 rules!4246))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14))))) t!232194) tb!154623))

(declare-fun result!192850 () Bool)

(assert (= result!192850 result!192846))

(assert (=> b!2838508 t!232194))

(declare-fun b_and!208021 () Bool)

(assert (= b_and!208015 (and (=> t!232194 result!192850) b_and!208021)))

(declare-fun m!3267679 () Bool)

(assert (=> d!823397 m!3267679))

(declare-fun m!3267681 () Bool)

(assert (=> b!2838508 m!3267681))

(assert (=> b!2838508 m!3267681))

(declare-fun m!3267683 () Bool)

(assert (=> b!2838508 m!3267683))

(declare-fun m!3267685 () Bool)

(assert (=> b!2838509 m!3267685))

(assert (=> b!2838418 d!823397))

(declare-fun d!823399 () Bool)

(assert (=> d!823399 (= (isEmpty!18495 rules!4246) ((_ is Nil!33573) rules!4246))))

(assert (=> b!2838407 d!823399))

(declare-fun d!823401 () Bool)

(assert (=> d!823401 (= (inv!45536 (tag!5550 (h!38993 rules!4246))) (= (mod (str.len (value!162154 (tag!5550 (h!38993 rules!4246)))) 2) 0))))

(assert (=> b!2838406 d!823401))

(declare-fun d!823403 () Bool)

(declare-fun res!1181078 () Bool)

(declare-fun e!1797812 () Bool)

(assert (=> d!823403 (=> (not res!1181078) (not e!1797812))))

(assert (=> d!823403 (= res!1181078 (semiInverseModEq!2096 (toChars!6947 (transformation!5046 (h!38993 rules!4246))) (toValue!7088 (transformation!5046 (h!38993 rules!4246)))))))

(assert (=> d!823403 (= (inv!45539 (transformation!5046 (h!38993 rules!4246))) e!1797812)))

(declare-fun b!2838511 () Bool)

(assert (=> b!2838511 (= e!1797812 (equivClasses!1995 (toChars!6947 (transformation!5046 (h!38993 rules!4246))) (toValue!7088 (transformation!5046 (h!38993 rules!4246)))))))

(assert (= (and d!823403 res!1181078) b!2838511))

(declare-fun m!3267687 () Bool)

(assert (=> d!823403 m!3267687))

(declare-fun m!3267689 () Bool)

(assert (=> b!2838511 m!3267689))

(assert (=> b!2838406 d!823403))

(declare-fun b!2838512 () Bool)

(declare-fun e!1797815 () Bool)

(declare-fun e!1797813 () Bool)

(assert (=> b!2838512 (= e!1797815 e!1797813)))

(declare-fun c!458479 () Bool)

(assert (=> b!2838512 (= c!458479 ((_ is IntegerValue!15829) (value!162180 (h!38992 tokensBis!14))))))

(declare-fun b!2838513 () Bool)

(declare-fun e!1797814 () Bool)

(assert (=> b!2838513 (= e!1797814 (inv!15 (value!162180 (h!38992 tokensBis!14))))))

(declare-fun d!823405 () Bool)

(declare-fun c!458478 () Bool)

(assert (=> d!823405 (= c!458478 ((_ is IntegerValue!15828) (value!162180 (h!38992 tokensBis!14))))))

(assert (=> d!823405 (= (inv!21 (value!162180 (h!38992 tokensBis!14))) e!1797815)))

(declare-fun b!2838514 () Bool)

(declare-fun res!1181079 () Bool)

(assert (=> b!2838514 (=> res!1181079 e!1797814)))

(assert (=> b!2838514 (= res!1181079 (not ((_ is IntegerValue!15830) (value!162180 (h!38992 tokensBis!14)))))))

(assert (=> b!2838514 (= e!1797813 e!1797814)))

(declare-fun b!2838515 () Bool)

(assert (=> b!2838515 (= e!1797813 (inv!17 (value!162180 (h!38992 tokensBis!14))))))

(declare-fun b!2838516 () Bool)

(assert (=> b!2838516 (= e!1797815 (inv!16 (value!162180 (h!38992 tokensBis!14))))))

(assert (= (and d!823405 c!458478) b!2838516))

(assert (= (and d!823405 (not c!458478)) b!2838512))

(assert (= (and b!2838512 c!458479) b!2838515))

(assert (= (and b!2838512 (not c!458479)) b!2838514))

(assert (= (and b!2838514 (not res!1181079)) b!2838513))

(declare-fun m!3267691 () Bool)

(assert (=> b!2838513 m!3267691))

(declare-fun m!3267693 () Bool)

(assert (=> b!2838515 m!3267693))

(declare-fun m!3267695 () Bool)

(assert (=> b!2838516 m!3267695))

(assert (=> b!2838416 d!823405))

(declare-fun b!2838519 () Bool)

(declare-fun e!1797818 () Bool)

(assert (=> b!2838519 (= e!1797818 (subseq!512 (t!232177 tokensBis!14) (t!232177 tokens!612)))))

(declare-fun b!2838520 () Bool)

(declare-fun e!1797817 () Bool)

(assert (=> b!2838520 (= e!1797817 (subseq!512 tokensBis!14 (t!232177 tokens!612)))))

(declare-fun b!2838518 () Bool)

(declare-fun e!1797819 () Bool)

(assert (=> b!2838518 (= e!1797819 e!1797817)))

(declare-fun res!1181081 () Bool)

(assert (=> b!2838518 (=> res!1181081 e!1797817)))

(assert (=> b!2838518 (= res!1181081 e!1797818)))

(declare-fun res!1181080 () Bool)

(assert (=> b!2838518 (=> (not res!1181080) (not e!1797818))))

(assert (=> b!2838518 (= res!1181080 (= (h!38992 tokensBis!14) (h!38992 tokens!612)))))

(declare-fun b!2838517 () Bool)

(declare-fun e!1797816 () Bool)

(assert (=> b!2838517 (= e!1797816 e!1797819)))

(declare-fun res!1181082 () Bool)

(assert (=> b!2838517 (=> (not res!1181082) (not e!1797819))))

(assert (=> b!2838517 (= res!1181082 ((_ is Cons!33572) tokens!612))))

(declare-fun d!823407 () Bool)

(declare-fun res!1181083 () Bool)

(assert (=> d!823407 (=> res!1181083 e!1797816)))

(assert (=> d!823407 (= res!1181083 ((_ is Nil!33572) tokensBis!14))))

(assert (=> d!823407 (= (subseq!512 tokensBis!14 tokens!612) e!1797816)))

(assert (= (and d!823407 (not res!1181083)) b!2838517))

(assert (= (and b!2838517 res!1181082) b!2838518))

(assert (= (and b!2838518 res!1181080) b!2838519))

(assert (= (and b!2838518 (not res!1181081)) b!2838520))

(assert (=> b!2838519 m!3267605))

(declare-fun m!3267697 () Bool)

(assert (=> b!2838520 m!3267697))

(assert (=> b!2838405 d!823407))

(declare-fun b!2838536 () Bool)

(declare-fun b_free!82093 () Bool)

(declare-fun b_next!82797 () Bool)

(assert (=> b!2838536 (= b_free!82093 (not b_next!82797))))

(declare-fun tp!908768 () Bool)

(declare-fun b_and!208023 () Bool)

(assert (=> b!2838536 (= tp!908768 b_and!208023)))

(declare-fun b_free!82095 () Bool)

(declare-fun b_next!82799 () Bool)

(assert (=> b!2838536 (= b_free!82095 (not b_next!82799))))

(declare-fun t!232196 () Bool)

(declare-fun tb!154625 () Bool)

(assert (=> (and b!2838536 (= (toChars!6947 (transformation!5046 (rule!7474 (h!38992 (t!232177 tokens!612))))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612))))) t!232196) tb!154625))

(declare-fun result!192854 () Bool)

(assert (= result!192854 result!192838))

(assert (=> b!2838447 t!232196))

(declare-fun t!232198 () Bool)

(declare-fun tb!154627 () Bool)

(assert (=> (and b!2838536 (= (toChars!6947 (transformation!5046 (rule!7474 (h!38992 (t!232177 tokens!612))))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14))))) t!232198) tb!154627))

(declare-fun result!192856 () Bool)

(assert (= result!192856 result!192846))

(assert (=> b!2838508 t!232198))

(declare-fun b_and!208025 () Bool)

(declare-fun tp!908765 () Bool)

(assert (=> b!2838536 (= tp!908765 (and (=> t!232196 result!192854) (=> t!232198 result!192856) b_and!208025))))

(declare-fun b!2838535 () Bool)

(declare-fun tp!908767 () Bool)

(declare-fun e!1797832 () Bool)

(declare-fun e!1797833 () Bool)

(assert (=> b!2838535 (= e!1797832 (and tp!908767 (inv!45536 (tag!5550 (rule!7474 (h!38992 (t!232177 tokens!612))))) (inv!45539 (transformation!5046 (rule!7474 (h!38992 (t!232177 tokens!612))))) e!1797833))))

(declare-fun tp!908766 () Bool)

(declare-fun b!2838534 () Bool)

(declare-fun e!1797835 () Bool)

(assert (=> b!2838534 (= e!1797835 (and (inv!21 (value!162180 (h!38992 (t!232177 tokens!612)))) e!1797832 tp!908766))))

(declare-fun e!1797834 () Bool)

(declare-fun b!2838532 () Bool)

(declare-fun tp!908769 () Bool)

(assert (=> b!2838532 (= e!1797834 (and (inv!45540 (h!38992 (t!232177 tokens!612))) e!1797835 tp!908769))))

(assert (=> b!2838422 (= tp!908747 e!1797834)))

(assert (=> b!2838536 (= e!1797833 (and tp!908768 tp!908765))))

(assert (= b!2838535 b!2838536))

(assert (= b!2838534 b!2838535))

(assert (= b!2838532 b!2838534))

(assert (= (and b!2838422 ((_ is Cons!33572) (t!232177 tokens!612))) b!2838532))

(declare-fun m!3267699 () Bool)

(assert (=> b!2838535 m!3267699))

(declare-fun m!3267701 () Bool)

(assert (=> b!2838535 m!3267701))

(declare-fun m!3267703 () Bool)

(assert (=> b!2838534 m!3267703))

(declare-fun m!3267705 () Bool)

(assert (=> b!2838532 m!3267705))

(declare-fun b!2838555 () Bool)

(declare-fun e!1797846 () Bool)

(declare-fun tp_is_empty!14605 () Bool)

(assert (=> b!2838555 (= e!1797846 tp_is_empty!14605)))

(declare-fun b!2838558 () Bool)

(declare-fun tp!908781 () Bool)

(declare-fun tp!908783 () Bool)

(assert (=> b!2838558 (= e!1797846 (and tp!908781 tp!908783))))

(assert (=> b!2838419 (= tp!908740 e!1797846)))

(declare-fun b!2838557 () Bool)

(declare-fun tp!908782 () Bool)

(assert (=> b!2838557 (= e!1797846 tp!908782)))

(declare-fun b!2838556 () Bool)

(declare-fun tp!908780 () Bool)

(declare-fun tp!908784 () Bool)

(assert (=> b!2838556 (= e!1797846 (and tp!908780 tp!908784))))

(assert (= (and b!2838419 ((_ is ElementMatch!8437) (regex!5046 (rule!7474 (h!38992 tokens!612))))) b!2838555))

(assert (= (and b!2838419 ((_ is Concat!13713) (regex!5046 (rule!7474 (h!38992 tokens!612))))) b!2838556))

(assert (= (and b!2838419 ((_ is Star!8437) (regex!5046 (rule!7474 (h!38992 tokens!612))))) b!2838557))

(assert (= (and b!2838419 ((_ is Union!8437) (regex!5046 (rule!7474 (h!38992 tokens!612))))) b!2838558))

(declare-fun b!2838563 () Bool)

(declare-fun e!1797851 () Bool)

(declare-fun tp!908787 () Bool)

(assert (=> b!2838563 (= e!1797851 (and tp_is_empty!14605 tp!908787))))

(assert (=> b!2838420 (= tp!908742 e!1797851)))

(assert (= (and b!2838420 ((_ is Cons!33570) (originalCharacters!5778 (h!38992 tokens!612)))) b!2838563))

(declare-fun b!2838564 () Bool)

(declare-fun e!1797852 () Bool)

(assert (=> b!2838564 (= e!1797852 tp_is_empty!14605)))

(declare-fun b!2838567 () Bool)

(declare-fun tp!908789 () Bool)

(declare-fun tp!908791 () Bool)

(assert (=> b!2838567 (= e!1797852 (and tp!908789 tp!908791))))

(assert (=> b!2838409 (= tp!908748 e!1797852)))

(declare-fun b!2838566 () Bool)

(declare-fun tp!908790 () Bool)

(assert (=> b!2838566 (= e!1797852 tp!908790)))

(declare-fun b!2838565 () Bool)

(declare-fun tp!908788 () Bool)

(declare-fun tp!908792 () Bool)

(assert (=> b!2838565 (= e!1797852 (and tp!908788 tp!908792))))

(assert (= (and b!2838409 ((_ is ElementMatch!8437) (regex!5046 (rule!7474 (h!38992 tokensBis!14))))) b!2838564))

(assert (= (and b!2838409 ((_ is Concat!13713) (regex!5046 (rule!7474 (h!38992 tokensBis!14))))) b!2838565))

(assert (= (and b!2838409 ((_ is Star!8437) (regex!5046 (rule!7474 (h!38992 tokensBis!14))))) b!2838566))

(assert (= (and b!2838409 ((_ is Union!8437) (regex!5046 (rule!7474 (h!38992 tokensBis!14))))) b!2838567))

(declare-fun b!2838571 () Bool)

(declare-fun b_free!82097 () Bool)

(declare-fun b_next!82801 () Bool)

(assert (=> b!2838571 (= b_free!82097 (not b_next!82801))))

(declare-fun tp!908796 () Bool)

(declare-fun b_and!208027 () Bool)

(assert (=> b!2838571 (= tp!908796 b_and!208027)))

(declare-fun b_free!82099 () Bool)

(declare-fun b_next!82803 () Bool)

(assert (=> b!2838571 (= b_free!82099 (not b_next!82803))))

(declare-fun tb!154629 () Bool)

(declare-fun t!232200 () Bool)

(assert (=> (and b!2838571 (= (toChars!6947 (transformation!5046 (rule!7474 (h!38992 (t!232177 tokensBis!14))))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612))))) t!232200) tb!154629))

(declare-fun result!192862 () Bool)

(assert (= result!192862 result!192838))

(assert (=> b!2838447 t!232200))

(declare-fun t!232202 () Bool)

(declare-fun tb!154631 () Bool)

(assert (=> (and b!2838571 (= (toChars!6947 (transformation!5046 (rule!7474 (h!38992 (t!232177 tokensBis!14))))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14))))) t!232202) tb!154631))

(declare-fun result!192864 () Bool)

(assert (= result!192864 result!192846))

(assert (=> b!2838508 t!232202))

(declare-fun b_and!208029 () Bool)

(declare-fun tp!908793 () Bool)

(assert (=> b!2838571 (= tp!908793 (and (=> t!232200 result!192862) (=> t!232202 result!192864) b_and!208029))))

(declare-fun b!2838570 () Bool)

(declare-fun e!1797854 () Bool)

(declare-fun e!1797853 () Bool)

(declare-fun tp!908795 () Bool)

(assert (=> b!2838570 (= e!1797853 (and tp!908795 (inv!45536 (tag!5550 (rule!7474 (h!38992 (t!232177 tokensBis!14))))) (inv!45539 (transformation!5046 (rule!7474 (h!38992 (t!232177 tokensBis!14))))) e!1797854))))

(declare-fun b!2838569 () Bool)

(declare-fun tp!908794 () Bool)

(declare-fun e!1797856 () Bool)

(assert (=> b!2838569 (= e!1797856 (and (inv!21 (value!162180 (h!38992 (t!232177 tokensBis!14)))) e!1797853 tp!908794))))

(declare-fun tp!908797 () Bool)

(declare-fun e!1797855 () Bool)

(declare-fun b!2838568 () Bool)

(assert (=> b!2838568 (= e!1797855 (and (inv!45540 (h!38992 (t!232177 tokensBis!14))) e!1797856 tp!908797))))

(assert (=> b!2838418 (= tp!908749 e!1797855)))

(assert (=> b!2838571 (= e!1797854 (and tp!908796 tp!908793))))

(assert (= b!2838570 b!2838571))

(assert (= b!2838569 b!2838570))

(assert (= b!2838568 b!2838569))

(assert (= (and b!2838418 ((_ is Cons!33572) (t!232177 tokensBis!14))) b!2838568))

(declare-fun m!3267707 () Bool)

(assert (=> b!2838570 m!3267707))

(declare-fun m!3267709 () Bool)

(assert (=> b!2838570 m!3267709))

(declare-fun m!3267711 () Bool)

(assert (=> b!2838569 m!3267711))

(declare-fun m!3267713 () Bool)

(assert (=> b!2838568 m!3267713))

(declare-fun b!2838577 () Bool)

(declare-fun e!1797862 () Bool)

(assert (=> b!2838577 (= e!1797862 tp_is_empty!14605)))

(declare-fun b!2838580 () Bool)

(declare-fun tp!908799 () Bool)

(declare-fun tp!908801 () Bool)

(assert (=> b!2838580 (= e!1797862 (and tp!908799 tp!908801))))

(assert (=> b!2838406 (= tp!908743 e!1797862)))

(declare-fun b!2838579 () Bool)

(declare-fun tp!908800 () Bool)

(assert (=> b!2838579 (= e!1797862 tp!908800)))

(declare-fun b!2838578 () Bool)

(declare-fun tp!908798 () Bool)

(declare-fun tp!908802 () Bool)

(assert (=> b!2838578 (= e!1797862 (and tp!908798 tp!908802))))

(assert (= (and b!2838406 ((_ is ElementMatch!8437) (regex!5046 (h!38993 rules!4246)))) b!2838577))

(assert (= (and b!2838406 ((_ is Concat!13713) (regex!5046 (h!38993 rules!4246)))) b!2838578))

(assert (= (and b!2838406 ((_ is Star!8437) (regex!5046 (h!38993 rules!4246)))) b!2838579))

(assert (= (and b!2838406 ((_ is Union!8437) (regex!5046 (h!38993 rules!4246)))) b!2838580))

(declare-fun b!2838591 () Bool)

(declare-fun b_free!82101 () Bool)

(declare-fun b_next!82805 () Bool)

(assert (=> b!2838591 (= b_free!82101 (not b_next!82805))))

(declare-fun tp!908814 () Bool)

(declare-fun b_and!208031 () Bool)

(assert (=> b!2838591 (= tp!908814 b_and!208031)))

(declare-fun b_free!82103 () Bool)

(declare-fun b_next!82807 () Bool)

(assert (=> b!2838591 (= b_free!82103 (not b_next!82807))))

(declare-fun t!232204 () Bool)

(declare-fun tb!154633 () Bool)

(assert (=> (and b!2838591 (= (toChars!6947 (transformation!5046 (h!38993 (t!232178 rules!4246)))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612))))) t!232204) tb!154633))

(declare-fun result!192868 () Bool)

(assert (= result!192868 result!192838))

(assert (=> b!2838447 t!232204))

(declare-fun t!232206 () Bool)

(declare-fun tb!154635 () Bool)

(assert (=> (and b!2838591 (= (toChars!6947 (transformation!5046 (h!38993 (t!232178 rules!4246)))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14))))) t!232206) tb!154635))

(declare-fun result!192870 () Bool)

(assert (= result!192870 result!192846))

(assert (=> b!2838508 t!232206))

(declare-fun tp!908813 () Bool)

(declare-fun b_and!208033 () Bool)

(assert (=> b!2838591 (= tp!908813 (and (=> t!232204 result!192868) (=> t!232206 result!192870) b_and!208033))))

(declare-fun e!1797871 () Bool)

(assert (=> b!2838591 (= e!1797871 (and tp!908814 tp!908813))))

(declare-fun e!1797874 () Bool)

(declare-fun b!2838590 () Bool)

(declare-fun tp!908812 () Bool)

(assert (=> b!2838590 (= e!1797874 (and tp!908812 (inv!45536 (tag!5550 (h!38993 (t!232178 rules!4246)))) (inv!45539 (transformation!5046 (h!38993 (t!232178 rules!4246)))) e!1797871))))

(declare-fun b!2838589 () Bool)

(declare-fun e!1797872 () Bool)

(declare-fun tp!908811 () Bool)

(assert (=> b!2838589 (= e!1797872 (and e!1797874 tp!908811))))

(assert (=> b!2838415 (= tp!908739 e!1797872)))

(assert (= b!2838590 b!2838591))

(assert (= b!2838589 b!2838590))

(assert (= (and b!2838415 ((_ is Cons!33573) (t!232178 rules!4246))) b!2838589))

(declare-fun m!3267719 () Bool)

(assert (=> b!2838590 m!3267719))

(declare-fun m!3267721 () Bool)

(assert (=> b!2838590 m!3267721))

(declare-fun b!2838592 () Bool)

(declare-fun e!1797875 () Bool)

(declare-fun tp!908815 () Bool)

(assert (=> b!2838592 (= e!1797875 (and tp_is_empty!14605 tp!908815))))

(assert (=> b!2838416 (= tp!908746 e!1797875)))

(assert (= (and b!2838416 ((_ is Cons!33570) (originalCharacters!5778 (h!38992 tokensBis!14)))) b!2838592))

(declare-fun b_lambda!85315 () Bool)

(assert (= b_lambda!85311 (or (and b!2838408 b_free!82083) (and b!2838571 b_free!82099 (= (toChars!6947 (transformation!5046 (rule!7474 (h!38992 (t!232177 tokensBis!14))))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612)))))) (and b!2838413 b_free!82087 (= (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14)))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612)))))) (and b!2838591 b_free!82103 (= (toChars!6947 (transformation!5046 (h!38993 (t!232178 rules!4246)))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612)))))) (and b!2838410 b_free!82091 (= (toChars!6947 (transformation!5046 (h!38993 rules!4246))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612)))))) (and b!2838536 b_free!82095 (= (toChars!6947 (transformation!5046 (rule!7474 (h!38992 (t!232177 tokens!612))))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612)))))) b_lambda!85315)))

(declare-fun b_lambda!85317 () Bool)

(assert (= b_lambda!85313 (or (and b!2838536 b_free!82095 (= (toChars!6947 (transformation!5046 (rule!7474 (h!38992 (t!232177 tokens!612))))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14)))))) (and b!2838408 b_free!82083 (= (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokens!612)))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14)))))) (and b!2838410 b_free!82091 (= (toChars!6947 (transformation!5046 (h!38993 rules!4246))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14)))))) (and b!2838571 b_free!82099 (= (toChars!6947 (transformation!5046 (rule!7474 (h!38992 (t!232177 tokensBis!14))))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14)))))) (and b!2838413 b_free!82087) (and b!2838591 b_free!82103 (= (toChars!6947 (transformation!5046 (h!38993 (t!232178 rules!4246)))) (toChars!6947 (transformation!5046 (rule!7474 (h!38992 tokensBis!14)))))) b_lambda!85317)))

(check-sat (not b!2838589) (not b!2838486) (not b!2838519) b_and!207999 (not b!2838592) (not b_next!82787) (not b!2838491) (not d!823389) (not b!2838507) (not b_next!82795) (not b!2838566) b_and!208019 (not b!2838448) (not b!2838590) (not b!2838516) b_and!208003 (not b!2838580) (not b!2838460) (not d!823397) (not b!2838532) (not b!2838434) (not b!2838534) b_and!208021 (not b!2838505) (not b!2838479) b_and!208017 (not b_next!82785) (not b!2838578) b_and!208029 (not b!2838503) b_and!208007 (not b!2838457) (not b!2838579) (not b!2838470) (not d!823383) (not b!2838570) (not b!2838565) (not d!823375) (not b!2838558) (not tb!154619) (not d!823381) (not b_next!82803) (not b!2838556) (not b!2838568) (not b!2838520) b_and!208023 (not b_next!82799) (not tb!154613) (not b_next!82791) (not b!2838511) (not b!2838569) (not b!2838484) (not b!2838567) (not b_next!82793) (not b_next!82807) (not b!2838557) (not b_next!82801) (not b!2838509) (not d!823395) (not b!2838510) (not b!2838469) b_and!208025 (not b!2838447) (not d!823385) (not b!2838506) (not b_next!82789) (not b!2838563) b_and!208027 (not b!2838515) (not b!2838433) b_and!208031 (not b!2838508) (not b_next!82805) (not d!823403) (not b_lambda!85317) (not b!2838535) b_and!208033 (not b!2838513) (not b_lambda!85315) (not b_next!82797) tp_is_empty!14605 (not b!2838485))
(check-sat (not b_next!82795) b_and!208019 b_and!208003 b_and!208021 (not b_next!82803) (not b_next!82801) b_and!208025 (not b_next!82789) b_and!208027 b_and!207999 b_and!208033 (not b_next!82787) (not b_next!82797) b_and!208017 (not b_next!82785) b_and!208029 b_and!208007 b_and!208023 (not b_next!82799) (not b_next!82791) (not b_next!82793) (not b_next!82807) b_and!208031 (not b_next!82805))
