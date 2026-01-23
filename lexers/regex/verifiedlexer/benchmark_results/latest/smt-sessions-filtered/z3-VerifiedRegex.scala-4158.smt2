; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!223896 () Bool)

(assert start!223896)

(declare-fun b!2284497 () Bool)

(declare-fun b_free!68429 () Bool)

(declare-fun b_next!69133 () Bool)

(assert (=> b!2284497 (= b_free!68429 (not b_next!69133))))

(declare-fun tp!724189 () Bool)

(declare-fun b_and!180777 () Bool)

(assert (=> b!2284497 (= tp!724189 b_and!180777)))

(declare-fun b_free!68431 () Bool)

(declare-fun b_next!69135 () Bool)

(assert (=> b!2284497 (= b_free!68431 (not b_next!69135))))

(declare-fun tp!724194 () Bool)

(declare-fun b_and!180779 () Bool)

(assert (=> b!2284497 (= tp!724194 b_and!180779)))

(declare-fun b!2284480 () Bool)

(declare-fun b_free!68433 () Bool)

(declare-fun b_next!69137 () Bool)

(assert (=> b!2284480 (= b_free!68433 (not b_next!69137))))

(declare-fun tp!724187 () Bool)

(declare-fun b_and!180781 () Bool)

(assert (=> b!2284480 (= tp!724187 b_and!180781)))

(declare-fun b_free!68435 () Bool)

(declare-fun b_next!69139 () Bool)

(assert (=> b!2284480 (= b_free!68435 (not b_next!69139))))

(declare-fun tp!724178 () Bool)

(declare-fun b_and!180783 () Bool)

(assert (=> b!2284480 (= tp!724178 b_and!180783)))

(declare-fun b!2284476 () Bool)

(declare-fun b_free!68437 () Bool)

(declare-fun b_next!69141 () Bool)

(assert (=> b!2284476 (= b_free!68437 (not b_next!69141))))

(declare-fun tp!724184 () Bool)

(declare-fun b_and!180785 () Bool)

(assert (=> b!2284476 (= tp!724184 b_and!180785)))

(declare-fun b_free!68439 () Bool)

(declare-fun b_next!69143 () Bool)

(assert (=> b!2284476 (= b_free!68439 (not b_next!69143))))

(declare-fun tp!724182 () Bool)

(declare-fun b_and!180787 () Bool)

(assert (=> b!2284476 (= tp!724182 b_and!180787)))

(declare-fun b!2284502 () Bool)

(declare-fun b_free!68441 () Bool)

(declare-fun b_next!69145 () Bool)

(assert (=> b!2284502 (= b_free!68441 (not b_next!69145))))

(declare-fun tp!724183 () Bool)

(declare-fun b_and!180789 () Bool)

(assert (=> b!2284502 (= tp!724183 b_and!180789)))

(declare-fun b_free!68443 () Bool)

(declare-fun b_next!69147 () Bool)

(assert (=> b!2284502 (= b_free!68443 (not b_next!69147))))

(declare-fun tp!724190 () Bool)

(declare-fun b_and!180791 () Bool)

(assert (=> b!2284502 (= tp!724190 b_and!180791)))

(declare-fun b!2284473 () Bool)

(declare-fun res!976610 () Bool)

(declare-fun e!1463623 () Bool)

(assert (=> b!2284473 (=> (not res!976610) (not e!1463623))))

(declare-datatypes ((List!27285 0))(
  ( (Nil!27191) (Cons!27191 (h!32592 (_ BitVec 16)) (t!203915 List!27285)) )
))
(declare-datatypes ((TokenValue!4509 0))(
  ( (FloatLiteralValue!9018 (text!32008 List!27285)) (TokenValueExt!4508 (__x!18078 Int)) (Broken!22545 (value!137683 List!27285)) (Object!4602) (End!4509) (Def!4509) (Underscore!4509) (Match!4509) (Else!4509) (Error!4509) (Case!4509) (If!4509) (Extends!4509) (Abstract!4509) (Class!4509) (Val!4509) (DelimiterValue!9018 (del!4569 List!27285)) (KeywordValue!4515 (value!137684 List!27285)) (CommentValue!9018 (value!137685 List!27285)) (WhitespaceValue!9018 (value!137686 List!27285)) (IndentationValue!4509 (value!137687 List!27285)) (String!29648) (Int32!4509) (Broken!22546 (value!137688 List!27285)) (Boolean!4510) (Unit!40099) (OperatorValue!4512 (op!4569 List!27285)) (IdentifierValue!9018 (value!137689 List!27285)) (IdentifierValue!9019 (value!137690 List!27285)) (WhitespaceValue!9019 (value!137691 List!27285)) (True!9018) (False!9018) (Broken!22547 (value!137692 List!27285)) (Broken!22548 (value!137693 List!27285)) (True!9019) (RightBrace!4509) (RightBracket!4509) (Colon!4509) (Null!4509) (Comma!4509) (LeftBracket!4509) (False!9019) (LeftBrace!4509) (ImaginaryLiteralValue!4509 (text!32009 List!27285)) (StringLiteralValue!13527 (value!137694 List!27285)) (EOFValue!4509 (value!137695 List!27285)) (IdentValue!4509 (value!137696 List!27285)) (DelimiterValue!9019 (value!137697 List!27285)) (DedentValue!4509 (value!137698 List!27285)) (NewLineValue!4509 (value!137699 List!27285)) (IntegerValue!13527 (value!137700 (_ BitVec 32)) (text!32010 List!27285)) (IntegerValue!13528 (value!137701 Int) (text!32011 List!27285)) (Times!4509) (Or!4509) (Equal!4509) (Minus!4509) (Broken!22549 (value!137702 List!27285)) (And!4509) (Div!4509) (LessEqual!4509) (Mod!4509) (Concat!11204) (Not!4509) (Plus!4509) (SpaceValue!4509 (value!137703 List!27285)) (IntegerValue!13529 (value!137704 Int) (text!32012 List!27285)) (StringLiteralValue!13528 (text!32013 List!27285)) (FloatLiteralValue!9019 (text!32014 List!27285)) (BytesLiteralValue!4509 (value!137705 List!27285)) (CommentValue!9019 (value!137706 List!27285)) (StringLiteralValue!13529 (value!137707 List!27285)) (ErrorTokenValue!4509 (msg!4570 List!27285)) )
))
(declare-datatypes ((C!13536 0))(
  ( (C!13537 (val!7816 Int)) )
))
(declare-datatypes ((List!27286 0))(
  ( (Nil!27192) (Cons!27192 (h!32593 C!13536) (t!203916 List!27286)) )
))
(declare-datatypes ((IArray!17689 0))(
  ( (IArray!17690 (innerList!8902 List!27286)) )
))
(declare-datatypes ((Conc!8842 0))(
  ( (Node!8842 (left!20620 Conc!8842) (right!20950 Conc!8842) (csize!17914 Int) (cheight!9053 Int)) (Leaf!13001 (xs!11784 IArray!17689) (csize!17915 Int)) (Empty!8842) )
))
(declare-datatypes ((BalanceConc!17412 0))(
  ( (BalanceConc!17413 (c!362396 Conc!8842)) )
))
(declare-datatypes ((Regex!6695 0))(
  ( (ElementMatch!6695 (c!362397 C!13536)) (Concat!11205 (regOne!13902 Regex!6695) (regTwo!13902 Regex!6695)) (EmptyExpr!6695) (Star!6695 (reg!7024 Regex!6695)) (EmptyLang!6695) (Union!6695 (regOne!13903 Regex!6695) (regTwo!13903 Regex!6695)) )
))
(declare-datatypes ((String!29649 0))(
  ( (String!29650 (value!137708 String)) )
))
(declare-datatypes ((TokenValueInjection!8558 0))(
  ( (TokenValueInjection!8559 (toValue!6133 Int) (toChars!5992 Int)) )
))
(declare-datatypes ((Rule!8494 0))(
  ( (Rule!8495 (regex!4347 Regex!6695) (tag!4837 String!29649) (isSeparator!4347 Bool) (transformation!4347 TokenValueInjection!8558)) )
))
(declare-datatypes ((List!27287 0))(
  ( (Nil!27193) (Cons!27193 (h!32594 Rule!8494) (t!203917 List!27287)) )
))
(declare-fun rules!1750 () List!27287)

(declare-fun otherR!12 () Rule!8494)

(declare-fun contains!4721 (List!27287 Rule!8494) Bool)

(assert (=> b!2284473 (= res!976610 (contains!4721 rules!1750 otherR!12))))

(declare-fun e!1463640 () Bool)

(declare-datatypes ((Token!8172 0))(
  ( (Token!8173 (value!137709 TokenValue!4509) (rule!6675 Rule!8494) (size!21388 Int) (originalCharacters!5117 List!27286)) )
))
(declare-datatypes ((List!27288 0))(
  ( (Nil!27194) (Cons!27194 (h!32595 Token!8172) (t!203918 List!27288)) )
))
(declare-fun tokens!456 () List!27288)

(declare-fun b!2284474 () Bool)

(declare-fun e!1463649 () Bool)

(declare-fun tp!724185 () Bool)

(declare-fun inv!21 (TokenValue!4509) Bool)

(assert (=> b!2284474 (= e!1463640 (and (inv!21 (value!137709 (h!32595 tokens!456))) e!1463649 tp!724185))))

(declare-fun b!2284475 () Bool)

(declare-fun e!1463644 () Bool)

(declare-fun tp!724191 () Bool)

(declare-fun inv!36778 (String!29649) Bool)

(declare-fun inv!36781 (TokenValueInjection!8558) Bool)

(assert (=> b!2284475 (= e!1463649 (and tp!724191 (inv!36778 (tag!4837 (rule!6675 (h!32595 tokens!456)))) (inv!36781 (transformation!4347 (rule!6675 (h!32595 tokens!456)))) e!1463644))))

(declare-fun e!1463641 () Bool)

(assert (=> b!2284476 (= e!1463641 (and tp!724184 tp!724182))))

(declare-fun tp!724186 () Bool)

(declare-fun b!2284478 () Bool)

(declare-fun e!1463635 () Bool)

(declare-fun inv!36782 (Token!8172) Bool)

(assert (=> b!2284478 (= e!1463635 (and (inv!36782 (h!32595 tokens!456)) e!1463640 tp!724186))))

(declare-fun b!2284479 () Bool)

(declare-fun e!1463626 () Bool)

(declare-fun tp_is_empty!10611 () Bool)

(declare-fun tp!724193 () Bool)

(assert (=> b!2284479 (= e!1463626 (and tp_is_empty!10611 tp!724193))))

(assert (=> b!2284480 (= e!1463644 (and tp!724187 tp!724178))))

(declare-fun b!2284481 () Bool)

(declare-fun e!1463628 () Bool)

(declare-fun input!1722 () List!27286)

(declare-fun lt!847856 () List!27286)

(assert (=> b!2284481 (= e!1463628 (= input!1722 lt!847856))))

(declare-fun b!2284482 () Bool)

(declare-fun res!976612 () Bool)

(assert (=> b!2284482 (=> (not res!976612) (not e!1463623))))

(declare-fun r!2363 () Rule!8494)

(assert (=> b!2284482 (= res!976612 (contains!4721 rules!1750 r!2363))))

(declare-fun b!2284483 () Bool)

(declare-fun e!1463632 () Bool)

(declare-fun e!1463630 () Bool)

(assert (=> b!2284483 (= e!1463632 e!1463630)))

(declare-fun res!976604 () Bool)

(assert (=> b!2284483 (=> (not res!976604) (not e!1463630))))

(declare-fun e!1463650 () Bool)

(assert (=> b!2284483 (= res!976604 e!1463650)))

(declare-fun res!976614 () Bool)

(assert (=> b!2284483 (=> res!976614 e!1463650)))

(declare-fun lt!847852 () Bool)

(assert (=> b!2284483 (= res!976614 lt!847852)))

(declare-fun isEmpty!15455 (List!27288) Bool)

(assert (=> b!2284483 (= lt!847852 (isEmpty!15455 tokens!456))))

(declare-fun b!2284484 () Bool)

(declare-fun res!976615 () Bool)

(declare-fun e!1463625 () Bool)

(assert (=> b!2284484 (=> res!976615 e!1463625)))

(get-info :version)

(assert (=> b!2284484 (= res!976615 ((_ is Nil!27194) tokens!456))))

(declare-fun b!2284485 () Bool)

(declare-fun e!1463629 () Bool)

(declare-fun tp!724180 () Bool)

(assert (=> b!2284485 (= e!1463629 (and tp!724180 (inv!36778 (tag!4837 (h!32594 rules!1750))) (inv!36781 (transformation!4347 (h!32594 rules!1750))) e!1463641))))

(declare-fun b!2284486 () Bool)

(declare-fun res!976611 () Bool)

(assert (=> b!2284486 (=> (not res!976611) (not e!1463623))))

(declare-fun isEmpty!15456 (List!27287) Bool)

(assert (=> b!2284486 (= res!976611 (not (isEmpty!15456 rules!1750)))))

(declare-fun b!2284487 () Bool)

(declare-fun res!976605 () Bool)

(assert (=> b!2284487 (=> (not res!976605) (not e!1463630))))

(declare-fun e!1463642 () Bool)

(assert (=> b!2284487 (= res!976605 e!1463642)))

(declare-fun res!976609 () Bool)

(assert (=> b!2284487 (=> res!976609 e!1463642)))

(assert (=> b!2284487 (= res!976609 lt!847852)))

(declare-fun b!2284488 () Bool)

(declare-fun e!1463645 () Bool)

(assert (=> b!2284488 (= e!1463645 e!1463628)))

(declare-fun res!976607 () Bool)

(assert (=> b!2284488 (=> res!976607 e!1463628)))

(declare-fun otherP!12 () List!27286)

(declare-fun lt!847853 () List!27286)

(declare-fun size!21389 (List!27286) Int)

(assert (=> b!2284488 (= res!976607 (= (size!21389 otherP!12) (size!21389 lt!847853)))))

(declare-datatypes ((tuple2!26962 0))(
  ( (tuple2!26963 (_1!15991 Token!8172) (_2!15991 List!27286)) )
))
(declare-fun lt!847860 () tuple2!26962)

(declare-fun lt!847854 () List!27286)

(assert (=> b!2284488 (= (_2!15991 lt!847860) lt!847854)))

(declare-datatypes ((Unit!40100 0))(
  ( (Unit!40101) )
))
(declare-fun lt!847857 () Unit!40100)

(declare-fun lemmaSamePrefixThenSameSuffix!1038 (List!27286 List!27286 List!27286 List!27286 List!27286) Unit!40100)

(assert (=> b!2284488 (= lt!847857 (lemmaSamePrefixThenSameSuffix!1038 lt!847853 (_2!15991 lt!847860) lt!847853 lt!847854 input!1722))))

(declare-fun getSuffix!1128 (List!27286 List!27286) List!27286)

(assert (=> b!2284488 (= lt!847854 (getSuffix!1128 input!1722 lt!847853))))

(declare-fun isPrefix!2337 (List!27286 List!27286) Bool)

(assert (=> b!2284488 (isPrefix!2337 lt!847853 lt!847856)))

(declare-fun ++!6643 (List!27286 List!27286) List!27286)

(assert (=> b!2284488 (= lt!847856 (++!6643 lt!847853 (_2!15991 lt!847860)))))

(declare-fun lt!847855 () Unit!40100)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1542 (List!27286 List!27286) Unit!40100)

(assert (=> b!2284488 (= lt!847855 (lemmaConcatTwoListThenFirstIsPrefix!1542 lt!847853 (_2!15991 lt!847860)))))

(declare-fun list!10616 (BalanceConc!17412) List!27286)

(declare-fun charsOf!2735 (Token!8172) BalanceConc!17412)

(assert (=> b!2284488 (= lt!847853 (list!10616 (charsOf!2735 (h!32595 tokens!456))))))

(declare-fun b!2284489 () Bool)

(declare-fun tp!724179 () Bool)

(declare-fun e!1463646 () Bool)

(declare-fun e!1463624 () Bool)

(assert (=> b!2284489 (= e!1463624 (and tp!724179 (inv!36778 (tag!4837 r!2363)) (inv!36781 (transformation!4347 r!2363)) e!1463646))))

(declare-fun b!2284490 () Bool)

(assert (=> b!2284490 (= e!1463625 e!1463645)))

(declare-fun res!976621 () Bool)

(assert (=> b!2284490 (=> res!976621 e!1463645)))

(assert (=> b!2284490 (= res!976621 (not (= (h!32595 tokens!456) (_1!15991 lt!847860))))))

(declare-datatypes ((LexerInterface!3944 0))(
  ( (LexerInterfaceExt!3941 (__x!18079 Int)) (Lexer!3942) )
))
(declare-fun thiss!16613 () LexerInterface!3944)

(declare-datatypes ((Option!5335 0))(
  ( (None!5334) (Some!5334 (v!30402 tuple2!26962)) )
))
(declare-fun get!8200 (Option!5335) tuple2!26962)

(declare-fun maxPrefix!2208 (LexerInterface!3944 List!27287 List!27286) Option!5335)

(assert (=> b!2284490 (= lt!847860 (get!8200 (maxPrefix!2208 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2284491 () Bool)

(declare-fun e!1463648 () Bool)

(declare-fun tp!724192 () Bool)

(assert (=> b!2284491 (= e!1463648 (and tp_is_empty!10611 tp!724192))))

(declare-fun b!2284477 () Bool)

(declare-fun size!21390 (BalanceConc!17412) Int)

(declare-fun head!4962 (List!27288) Token!8172)

(assert (=> b!2284477 (= e!1463650 (<= (size!21390 (charsOf!2735 (head!4962 tokens!456))) (size!21389 otherP!12)))))

(declare-fun res!976619 () Bool)

(assert (=> start!223896 (=> (not res!976619) (not e!1463623))))

(assert (=> start!223896 (= res!976619 ((_ is Lexer!3942) thiss!16613))))

(assert (=> start!223896 e!1463623))

(assert (=> start!223896 true))

(assert (=> start!223896 e!1463626))

(declare-fun e!1463647 () Bool)

(assert (=> start!223896 e!1463647))

(declare-fun e!1463639 () Bool)

(assert (=> start!223896 e!1463639))

(assert (=> start!223896 e!1463648))

(declare-fun e!1463643 () Bool)

(assert (=> start!223896 e!1463643))

(assert (=> start!223896 e!1463624))

(assert (=> start!223896 e!1463635))

(declare-fun b!2284492 () Bool)

(assert (=> b!2284492 (= e!1463623 e!1463632)))

(declare-fun res!976618 () Bool)

(assert (=> b!2284492 (=> (not res!976618) (not e!1463632))))

(declare-datatypes ((IArray!17691 0))(
  ( (IArray!17692 (innerList!8903 List!27288)) )
))
(declare-datatypes ((Conc!8843 0))(
  ( (Node!8843 (left!20621 Conc!8843) (right!20951 Conc!8843) (csize!17916 Int) (cheight!9054 Int)) (Leaf!13002 (xs!11785 IArray!17691) (csize!17917 Int)) (Empty!8843) )
))
(declare-datatypes ((BalanceConc!17414 0))(
  ( (BalanceConc!17415 (c!362398 Conc!8843)) )
))
(declare-datatypes ((tuple2!26964 0))(
  ( (tuple2!26965 (_1!15992 BalanceConc!17414) (_2!15992 BalanceConc!17412)) )
))
(declare-fun lt!847851 () tuple2!26964)

(declare-fun suffix!886 () List!27286)

(declare-datatypes ((tuple2!26966 0))(
  ( (tuple2!26967 (_1!15993 List!27288) (_2!15993 List!27286)) )
))
(declare-fun list!10617 (BalanceConc!17414) List!27288)

(assert (=> b!2284492 (= res!976618 (= (tuple2!26967 (list!10617 (_1!15992 lt!847851)) (list!10616 (_2!15992 lt!847851))) (tuple2!26967 tokens!456 suffix!886)))))

(declare-fun lex!1783 (LexerInterface!3944 List!27287 BalanceConc!17412) tuple2!26964)

(declare-fun seqFromList!3051 (List!27286) BalanceConc!17412)

(assert (=> b!2284492 (= lt!847851 (lex!1783 thiss!16613 rules!1750 (seqFromList!3051 input!1722)))))

(declare-fun b!2284493 () Bool)

(declare-fun e!1463636 () Bool)

(declare-fun tp!724181 () Bool)

(assert (=> b!2284493 (= e!1463647 (and tp!724181 (inv!36778 (tag!4837 otherR!12)) (inv!36781 (transformation!4347 otherR!12)) e!1463636))))

(declare-fun b!2284494 () Bool)

(assert (=> b!2284494 (= e!1463642 (= (rule!6675 (head!4962 tokens!456)) r!2363))))

(declare-fun b!2284495 () Bool)

(declare-fun e!1463634 () Bool)

(declare-fun matchR!2952 (Regex!6695 List!27286) Bool)

(assert (=> b!2284495 (= e!1463634 (not (matchR!2952 (regex!4347 r!2363) (list!10616 (charsOf!2735 (head!4962 tokens!456))))))))

(declare-fun b!2284496 () Bool)

(declare-fun res!976606 () Bool)

(assert (=> b!2284496 (=> (not res!976606) (not e!1463623))))

(declare-fun rulesInvariant!3446 (LexerInterface!3944 List!27287) Bool)

(assert (=> b!2284496 (= res!976606 (rulesInvariant!3446 thiss!16613 rules!1750))))

(assert (=> b!2284497 (= e!1463646 (and tp!724189 tp!724194))))

(declare-fun b!2284498 () Bool)

(declare-fun res!976613 () Bool)

(assert (=> b!2284498 (=> (not res!976613) (not e!1463630))))

(assert (=> b!2284498 (= res!976613 (not (= r!2363 otherR!12)))))

(declare-fun b!2284499 () Bool)

(declare-fun res!976617 () Bool)

(assert (=> b!2284499 (=> (not res!976617) (not e!1463630))))

(assert (=> b!2284499 (= res!976617 (isPrefix!2337 otherP!12 input!1722))))

(declare-fun b!2284500 () Bool)

(declare-fun tp!724195 () Bool)

(assert (=> b!2284500 (= e!1463639 (and tp_is_empty!10611 tp!724195))))

(declare-fun b!2284501 () Bool)

(declare-fun e!1463633 () Bool)

(assert (=> b!2284501 (= e!1463633 e!1463625)))

(declare-fun res!976616 () Bool)

(assert (=> b!2284501 (=> res!976616 e!1463625)))

(declare-fun getIndex!360 (List!27287 Rule!8494) Int)

(assert (=> b!2284501 (= res!976616 (<= (getIndex!360 rules!1750 r!2363) (getIndex!360 rules!1750 otherR!12)))))

(declare-fun ruleValid!1437 (LexerInterface!3944 Rule!8494) Bool)

(assert (=> b!2284501 (ruleValid!1437 thiss!16613 otherR!12)))

(declare-fun lt!847858 () Unit!40100)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!842 (LexerInterface!3944 Rule!8494 List!27287) Unit!40100)

(assert (=> b!2284501 (= lt!847858 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!842 thiss!16613 otherR!12 rules!1750))))

(assert (=> b!2284502 (= e!1463636 (and tp!724183 tp!724190))))

(declare-fun b!2284503 () Bool)

(declare-fun tp!724188 () Bool)

(assert (=> b!2284503 (= e!1463643 (and e!1463629 tp!724188))))

(declare-fun b!2284504 () Bool)

(assert (=> b!2284504 (= e!1463630 (not e!1463633))))

(declare-fun res!976620 () Bool)

(assert (=> b!2284504 (=> res!976620 e!1463633)))

(assert (=> b!2284504 (= res!976620 e!1463634)))

(declare-fun res!976608 () Bool)

(assert (=> b!2284504 (=> (not res!976608) (not e!1463634))))

(assert (=> b!2284504 (= res!976608 (not lt!847852))))

(assert (=> b!2284504 (ruleValid!1437 thiss!16613 r!2363)))

(declare-fun lt!847859 () Unit!40100)

(assert (=> b!2284504 (= lt!847859 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!842 thiss!16613 r!2363 rules!1750))))

(assert (= (and start!223896 res!976619) b!2284486))

(assert (= (and b!2284486 res!976611) b!2284496))

(assert (= (and b!2284496 res!976606) b!2284482))

(assert (= (and b!2284482 res!976612) b!2284473))

(assert (= (and b!2284473 res!976610) b!2284492))

(assert (= (and b!2284492 res!976618) b!2284483))

(assert (= (and b!2284483 (not res!976614)) b!2284477))

(assert (= (and b!2284483 res!976604) b!2284487))

(assert (= (and b!2284487 (not res!976609)) b!2284494))

(assert (= (and b!2284487 res!976605) b!2284499))

(assert (= (and b!2284499 res!976617) b!2284498))

(assert (= (and b!2284498 res!976613) b!2284504))

(assert (= (and b!2284504 res!976608) b!2284495))

(assert (= (and b!2284504 (not res!976620)) b!2284501))

(assert (= (and b!2284501 (not res!976616)) b!2284484))

(assert (= (and b!2284484 (not res!976615)) b!2284490))

(assert (= (and b!2284490 (not res!976621)) b!2284488))

(assert (= (and b!2284488 (not res!976607)) b!2284481))

(assert (= (and start!223896 ((_ is Cons!27192) input!1722)) b!2284479))

(assert (= b!2284493 b!2284502))

(assert (= start!223896 b!2284493))

(assert (= (and start!223896 ((_ is Cons!27192) suffix!886)) b!2284500))

(assert (= (and start!223896 ((_ is Cons!27192) otherP!12)) b!2284491))

(assert (= b!2284485 b!2284476))

(assert (= b!2284503 b!2284485))

(assert (= (and start!223896 ((_ is Cons!27193) rules!1750)) b!2284503))

(assert (= b!2284489 b!2284497))

(assert (= start!223896 b!2284489))

(assert (= b!2284475 b!2284480))

(assert (= b!2284474 b!2284475))

(assert (= b!2284478 b!2284474))

(assert (= (and start!223896 ((_ is Cons!27194) tokens!456)) b!2284478))

(declare-fun m!2712367 () Bool)

(assert (=> b!2284499 m!2712367))

(declare-fun m!2712369 () Bool)

(assert (=> b!2284474 m!2712369))

(declare-fun m!2712371 () Bool)

(assert (=> b!2284475 m!2712371))

(declare-fun m!2712373 () Bool)

(assert (=> b!2284475 m!2712373))

(declare-fun m!2712375 () Bool)

(assert (=> b!2284492 m!2712375))

(declare-fun m!2712377 () Bool)

(assert (=> b!2284492 m!2712377))

(declare-fun m!2712379 () Bool)

(assert (=> b!2284492 m!2712379))

(assert (=> b!2284492 m!2712379))

(declare-fun m!2712381 () Bool)

(assert (=> b!2284492 m!2712381))

(declare-fun m!2712383 () Bool)

(assert (=> b!2284473 m!2712383))

(declare-fun m!2712385 () Bool)

(assert (=> b!2284496 m!2712385))

(declare-fun m!2712387 () Bool)

(assert (=> b!2284493 m!2712387))

(declare-fun m!2712389 () Bool)

(assert (=> b!2284493 m!2712389))

(declare-fun m!2712391 () Bool)

(assert (=> b!2284489 m!2712391))

(declare-fun m!2712393 () Bool)

(assert (=> b!2284489 m!2712393))

(declare-fun m!2712395 () Bool)

(assert (=> b!2284504 m!2712395))

(declare-fun m!2712397 () Bool)

(assert (=> b!2284504 m!2712397))

(declare-fun m!2712399 () Bool)

(assert (=> b!2284494 m!2712399))

(declare-fun m!2712401 () Bool)

(assert (=> b!2284490 m!2712401))

(assert (=> b!2284490 m!2712401))

(declare-fun m!2712403 () Bool)

(assert (=> b!2284490 m!2712403))

(declare-fun m!2712405 () Bool)

(assert (=> b!2284488 m!2712405))

(declare-fun m!2712407 () Bool)

(assert (=> b!2284488 m!2712407))

(declare-fun m!2712409 () Bool)

(assert (=> b!2284488 m!2712409))

(declare-fun m!2712411 () Bool)

(assert (=> b!2284488 m!2712411))

(declare-fun m!2712413 () Bool)

(assert (=> b!2284488 m!2712413))

(declare-fun m!2712415 () Bool)

(assert (=> b!2284488 m!2712415))

(declare-fun m!2712417 () Bool)

(assert (=> b!2284488 m!2712417))

(assert (=> b!2284488 m!2712415))

(declare-fun m!2712419 () Bool)

(assert (=> b!2284488 m!2712419))

(declare-fun m!2712421 () Bool)

(assert (=> b!2284488 m!2712421))

(declare-fun m!2712423 () Bool)

(assert (=> b!2284486 m!2712423))

(assert (=> b!2284495 m!2712399))

(assert (=> b!2284495 m!2712399))

(declare-fun m!2712425 () Bool)

(assert (=> b!2284495 m!2712425))

(assert (=> b!2284495 m!2712425))

(declare-fun m!2712427 () Bool)

(assert (=> b!2284495 m!2712427))

(assert (=> b!2284495 m!2712427))

(declare-fun m!2712429 () Bool)

(assert (=> b!2284495 m!2712429))

(declare-fun m!2712431 () Bool)

(assert (=> b!2284483 m!2712431))

(declare-fun m!2712433 () Bool)

(assert (=> b!2284478 m!2712433))

(declare-fun m!2712435 () Bool)

(assert (=> b!2284501 m!2712435))

(declare-fun m!2712437 () Bool)

(assert (=> b!2284501 m!2712437))

(declare-fun m!2712439 () Bool)

(assert (=> b!2284501 m!2712439))

(declare-fun m!2712441 () Bool)

(assert (=> b!2284501 m!2712441))

(assert (=> b!2284477 m!2712399))

(assert (=> b!2284477 m!2712399))

(assert (=> b!2284477 m!2712425))

(assert (=> b!2284477 m!2712425))

(declare-fun m!2712443 () Bool)

(assert (=> b!2284477 m!2712443))

(assert (=> b!2284477 m!2712407))

(declare-fun m!2712445 () Bool)

(assert (=> b!2284485 m!2712445))

(declare-fun m!2712447 () Bool)

(assert (=> b!2284485 m!2712447))

(declare-fun m!2712449 () Bool)

(assert (=> b!2284482 m!2712449))

(check-sat (not b_next!69137) (not b!2284503) (not b!2284496) (not b_next!69147) (not b_next!69145) (not b!2284494) (not b!2284489) (not b!2284491) (not b_next!69143) (not b!2284483) b_and!180789 (not b!2284477) (not b!2284495) b_and!180785 (not b!2284474) (not b!2284482) (not b_next!69135) (not b!2284493) (not b!2284501) b_and!180779 (not b!2284492) b_and!180777 (not b_next!69141) b_and!180781 b_and!180791 (not b!2284490) (not b!2284478) b_and!180783 b_and!180787 (not b!2284500) (not b!2284473) tp_is_empty!10611 (not b!2284485) (not b_next!69133) (not b!2284499) (not b!2284504) (not b!2284479) (not b!2284475) (not b_next!69139) (not b!2284488) (not b!2284486))
(check-sat b_and!180789 b_and!180785 (not b_next!69137) (not b_next!69135) b_and!180779 (not b_next!69147) (not b_next!69145) (not b_next!69133) (not b_next!69143) (not b_next!69139) b_and!180777 (not b_next!69141) b_and!180781 b_and!180791 b_and!180783 b_and!180787)
(get-model)

(declare-fun b!2284516 () Bool)

(declare-fun e!1463658 () Int)

(assert (=> b!2284516 (= e!1463658 (- 1))))

(declare-fun b!2284513 () Bool)

(declare-fun e!1463657 () Int)

(assert (=> b!2284513 (= e!1463657 0)))

(declare-fun b!2284515 () Bool)

(assert (=> b!2284515 (= e!1463658 (+ 1 (getIndex!360 (t!203917 rules!1750) r!2363)))))

(declare-fun b!2284514 () Bool)

(assert (=> b!2284514 (= e!1463657 e!1463658)))

(declare-fun c!362404 () Bool)

(assert (=> b!2284514 (= c!362404 (and ((_ is Cons!27193) rules!1750) (not (= (h!32594 rules!1750) r!2363))))))

(declare-fun d!675907 () Bool)

(declare-fun lt!847863 () Int)

(assert (=> d!675907 (>= lt!847863 0)))

(assert (=> d!675907 (= lt!847863 e!1463657)))

(declare-fun c!362403 () Bool)

(assert (=> d!675907 (= c!362403 (and ((_ is Cons!27193) rules!1750) (= (h!32594 rules!1750) r!2363)))))

(assert (=> d!675907 (contains!4721 rules!1750 r!2363)))

(assert (=> d!675907 (= (getIndex!360 rules!1750 r!2363) lt!847863)))

(assert (= (and d!675907 c!362403) b!2284513))

(assert (= (and d!675907 (not c!362403)) b!2284514))

(assert (= (and b!2284514 c!362404) b!2284515))

(assert (= (and b!2284514 (not c!362404)) b!2284516))

(declare-fun m!2712451 () Bool)

(assert (=> b!2284515 m!2712451))

(assert (=> d!675907 m!2712449))

(assert (=> b!2284501 d!675907))

(declare-fun b!2284520 () Bool)

(declare-fun e!1463660 () Int)

(assert (=> b!2284520 (= e!1463660 (- 1))))

(declare-fun b!2284517 () Bool)

(declare-fun e!1463659 () Int)

(assert (=> b!2284517 (= e!1463659 0)))

(declare-fun b!2284519 () Bool)

(assert (=> b!2284519 (= e!1463660 (+ 1 (getIndex!360 (t!203917 rules!1750) otherR!12)))))

(declare-fun b!2284518 () Bool)

(assert (=> b!2284518 (= e!1463659 e!1463660)))

(declare-fun c!362406 () Bool)

(assert (=> b!2284518 (= c!362406 (and ((_ is Cons!27193) rules!1750) (not (= (h!32594 rules!1750) otherR!12))))))

(declare-fun d!675913 () Bool)

(declare-fun lt!847864 () Int)

(assert (=> d!675913 (>= lt!847864 0)))

(assert (=> d!675913 (= lt!847864 e!1463659)))

(declare-fun c!362405 () Bool)

(assert (=> d!675913 (= c!362405 (and ((_ is Cons!27193) rules!1750) (= (h!32594 rules!1750) otherR!12)))))

(assert (=> d!675913 (contains!4721 rules!1750 otherR!12)))

(assert (=> d!675913 (= (getIndex!360 rules!1750 otherR!12) lt!847864)))

(assert (= (and d!675913 c!362405) b!2284517))

(assert (= (and d!675913 (not c!362405)) b!2284518))

(assert (= (and b!2284518 c!362406) b!2284519))

(assert (= (and b!2284518 (not c!362406)) b!2284520))

(declare-fun m!2712453 () Bool)

(assert (=> b!2284519 m!2712453))

(assert (=> d!675913 m!2712383))

(assert (=> b!2284501 d!675913))

(declare-fun d!675915 () Bool)

(declare-fun res!976637 () Bool)

(declare-fun e!1463663 () Bool)

(assert (=> d!675915 (=> (not res!976637) (not e!1463663))))

(declare-fun validRegex!2516 (Regex!6695) Bool)

(assert (=> d!675915 (= res!976637 (validRegex!2516 (regex!4347 otherR!12)))))

(assert (=> d!675915 (= (ruleValid!1437 thiss!16613 otherR!12) e!1463663)))

(declare-fun b!2284525 () Bool)

(declare-fun res!976638 () Bool)

(assert (=> b!2284525 (=> (not res!976638) (not e!1463663))))

(declare-fun nullable!1854 (Regex!6695) Bool)

(assert (=> b!2284525 (= res!976638 (not (nullable!1854 (regex!4347 otherR!12))))))

(declare-fun b!2284526 () Bool)

(assert (=> b!2284526 (= e!1463663 (not (= (tag!4837 otherR!12) (String!29650 ""))))))

(assert (= (and d!675915 res!976637) b!2284525))

(assert (= (and b!2284525 res!976638) b!2284526))

(declare-fun m!2712455 () Bool)

(assert (=> d!675915 m!2712455))

(declare-fun m!2712457 () Bool)

(assert (=> b!2284525 m!2712457))

(assert (=> b!2284501 d!675915))

(declare-fun d!675917 () Bool)

(assert (=> d!675917 (ruleValid!1437 thiss!16613 otherR!12)))

(declare-fun lt!847867 () Unit!40100)

(declare-fun choose!13329 (LexerInterface!3944 Rule!8494 List!27287) Unit!40100)

(assert (=> d!675917 (= lt!847867 (choose!13329 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!675917 (contains!4721 rules!1750 otherR!12)))

(assert (=> d!675917 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!842 thiss!16613 otherR!12 rules!1750) lt!847867)))

(declare-fun bs!456752 () Bool)

(assert (= bs!456752 d!675917))

(assert (=> bs!456752 m!2712439))

(declare-fun m!2712459 () Bool)

(assert (=> bs!456752 m!2712459))

(assert (=> bs!456752 m!2712383))

(assert (=> b!2284501 d!675917))

(declare-fun d!675919 () Bool)

(assert (=> d!675919 (= (get!8200 (maxPrefix!2208 thiss!16613 rules!1750 input!1722)) (v!30402 (maxPrefix!2208 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2284490 d!675919))

(declare-fun b!2284653 () Bool)

(declare-fun e!1463734 () Option!5335)

(declare-fun lt!847930 () Option!5335)

(declare-fun lt!847927 () Option!5335)

(assert (=> b!2284653 (= e!1463734 (ite (and ((_ is None!5334) lt!847930) ((_ is None!5334) lt!847927)) None!5334 (ite ((_ is None!5334) lt!847927) lt!847930 (ite ((_ is None!5334) lt!847930) lt!847927 (ite (>= (size!21388 (_1!15991 (v!30402 lt!847930))) (size!21388 (_1!15991 (v!30402 lt!847927)))) lt!847930 lt!847927)))))))

(declare-fun call!136510 () Option!5335)

(assert (=> b!2284653 (= lt!847930 call!136510)))

(assert (=> b!2284653 (= lt!847927 (maxPrefix!2208 thiss!16613 (t!203917 rules!1750) input!1722))))

(declare-fun b!2284654 () Bool)

(declare-fun res!976719 () Bool)

(declare-fun e!1463733 () Bool)

(assert (=> b!2284654 (=> (not res!976719) (not e!1463733))))

(declare-fun lt!847928 () Option!5335)

(assert (=> b!2284654 (= res!976719 (< (size!21389 (_2!15991 (get!8200 lt!847928))) (size!21389 input!1722)))))

(declare-fun d!675921 () Bool)

(declare-fun e!1463732 () Bool)

(assert (=> d!675921 e!1463732))

(declare-fun res!976720 () Bool)

(assert (=> d!675921 (=> res!976720 e!1463732)))

(declare-fun isEmpty!15459 (Option!5335) Bool)

(assert (=> d!675921 (= res!976720 (isEmpty!15459 lt!847928))))

(assert (=> d!675921 (= lt!847928 e!1463734)))

(declare-fun c!362430 () Bool)

(assert (=> d!675921 (= c!362430 (and ((_ is Cons!27193) rules!1750) ((_ is Nil!27193) (t!203917 rules!1750))))))

(declare-fun lt!847926 () Unit!40100)

(declare-fun lt!847929 () Unit!40100)

(assert (=> d!675921 (= lt!847926 lt!847929)))

(assert (=> d!675921 (isPrefix!2337 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1483 (List!27286 List!27286) Unit!40100)

(assert (=> d!675921 (= lt!847929 (lemmaIsPrefixRefl!1483 input!1722 input!1722))))

(declare-fun rulesValidInductive!1525 (LexerInterface!3944 List!27287) Bool)

(assert (=> d!675921 (rulesValidInductive!1525 thiss!16613 rules!1750)))

(assert (=> d!675921 (= (maxPrefix!2208 thiss!16613 rules!1750 input!1722) lt!847928)))

(declare-fun bm!136505 () Bool)

(declare-fun maxPrefixOneRule!1378 (LexerInterface!3944 Rule!8494 List!27286) Option!5335)

(assert (=> bm!136505 (= call!136510 (maxPrefixOneRule!1378 thiss!16613 (h!32594 rules!1750) input!1722))))

(declare-fun b!2284655 () Bool)

(assert (=> b!2284655 (= e!1463733 (contains!4721 rules!1750 (rule!6675 (_1!15991 (get!8200 lt!847928)))))))

(declare-fun b!2284656 () Bool)

(declare-fun res!976717 () Bool)

(assert (=> b!2284656 (=> (not res!976717) (not e!1463733))))

(assert (=> b!2284656 (= res!976717 (= (list!10616 (charsOf!2735 (_1!15991 (get!8200 lt!847928)))) (originalCharacters!5117 (_1!15991 (get!8200 lt!847928)))))))

(declare-fun b!2284657 () Bool)

(declare-fun res!976718 () Bool)

(assert (=> b!2284657 (=> (not res!976718) (not e!1463733))))

(assert (=> b!2284657 (= res!976718 (= (++!6643 (list!10616 (charsOf!2735 (_1!15991 (get!8200 lt!847928)))) (_2!15991 (get!8200 lt!847928))) input!1722))))

(declare-fun b!2284658 () Bool)

(declare-fun res!976716 () Bool)

(assert (=> b!2284658 (=> (not res!976716) (not e!1463733))))

(assert (=> b!2284658 (= res!976716 (matchR!2952 (regex!4347 (rule!6675 (_1!15991 (get!8200 lt!847928)))) (list!10616 (charsOf!2735 (_1!15991 (get!8200 lt!847928))))))))

(declare-fun b!2284659 () Bool)

(declare-fun res!976714 () Bool)

(assert (=> b!2284659 (=> (not res!976714) (not e!1463733))))

(declare-fun apply!6619 (TokenValueInjection!8558 BalanceConc!17412) TokenValue!4509)

(assert (=> b!2284659 (= res!976714 (= (value!137709 (_1!15991 (get!8200 lt!847928))) (apply!6619 (transformation!4347 (rule!6675 (_1!15991 (get!8200 lt!847928)))) (seqFromList!3051 (originalCharacters!5117 (_1!15991 (get!8200 lt!847928)))))))))

(declare-fun b!2284660 () Bool)

(assert (=> b!2284660 (= e!1463732 e!1463733)))

(declare-fun res!976715 () Bool)

(assert (=> b!2284660 (=> (not res!976715) (not e!1463733))))

(declare-fun isDefined!4220 (Option!5335) Bool)

(assert (=> b!2284660 (= res!976715 (isDefined!4220 lt!847928))))

(declare-fun b!2284661 () Bool)

(assert (=> b!2284661 (= e!1463734 call!136510)))

(assert (= (and d!675921 c!362430) b!2284661))

(assert (= (and d!675921 (not c!362430)) b!2284653))

(assert (= (or b!2284661 b!2284653) bm!136505))

(assert (= (and d!675921 (not res!976720)) b!2284660))

(assert (= (and b!2284660 res!976715) b!2284656))

(assert (= (and b!2284656 res!976717) b!2284654))

(assert (= (and b!2284654 res!976719) b!2284657))

(assert (= (and b!2284657 res!976718) b!2284659))

(assert (= (and b!2284659 res!976714) b!2284658))

(assert (= (and b!2284658 res!976716) b!2284655))

(declare-fun m!2712587 () Bool)

(assert (=> b!2284656 m!2712587))

(declare-fun m!2712589 () Bool)

(assert (=> b!2284656 m!2712589))

(assert (=> b!2284656 m!2712589))

(declare-fun m!2712591 () Bool)

(assert (=> b!2284656 m!2712591))

(declare-fun m!2712593 () Bool)

(assert (=> d!675921 m!2712593))

(declare-fun m!2712595 () Bool)

(assert (=> d!675921 m!2712595))

(declare-fun m!2712597 () Bool)

(assert (=> d!675921 m!2712597))

(declare-fun m!2712599 () Bool)

(assert (=> d!675921 m!2712599))

(assert (=> b!2284655 m!2712587))

(declare-fun m!2712601 () Bool)

(assert (=> b!2284655 m!2712601))

(assert (=> b!2284654 m!2712587))

(declare-fun m!2712603 () Bool)

(assert (=> b!2284654 m!2712603))

(declare-fun m!2712605 () Bool)

(assert (=> b!2284654 m!2712605))

(assert (=> b!2284658 m!2712587))

(assert (=> b!2284658 m!2712589))

(assert (=> b!2284658 m!2712589))

(assert (=> b!2284658 m!2712591))

(assert (=> b!2284658 m!2712591))

(declare-fun m!2712607 () Bool)

(assert (=> b!2284658 m!2712607))

(declare-fun m!2712609 () Bool)

(assert (=> bm!136505 m!2712609))

(declare-fun m!2712611 () Bool)

(assert (=> b!2284660 m!2712611))

(declare-fun m!2712613 () Bool)

(assert (=> b!2284653 m!2712613))

(assert (=> b!2284657 m!2712587))

(assert (=> b!2284657 m!2712589))

(assert (=> b!2284657 m!2712589))

(assert (=> b!2284657 m!2712591))

(assert (=> b!2284657 m!2712591))

(declare-fun m!2712615 () Bool)

(assert (=> b!2284657 m!2712615))

(assert (=> b!2284659 m!2712587))

(declare-fun m!2712617 () Bool)

(assert (=> b!2284659 m!2712617))

(assert (=> b!2284659 m!2712617))

(declare-fun m!2712619 () Bool)

(assert (=> b!2284659 m!2712619))

(assert (=> b!2284490 d!675921))

(declare-fun d!675977 () Bool)

(assert (=> d!675977 (= (inv!36778 (tag!4837 r!2363)) (= (mod (str.len (value!137708 (tag!4837 r!2363))) 2) 0))))

(assert (=> b!2284489 d!675977))

(declare-fun d!675979 () Bool)

(declare-fun res!976723 () Bool)

(declare-fun e!1463737 () Bool)

(assert (=> d!675979 (=> (not res!976723) (not e!1463737))))

(declare-fun semiInverseModEq!1756 (Int Int) Bool)

(assert (=> d!675979 (= res!976723 (semiInverseModEq!1756 (toChars!5992 (transformation!4347 r!2363)) (toValue!6133 (transformation!4347 r!2363))))))

(assert (=> d!675979 (= (inv!36781 (transformation!4347 r!2363)) e!1463737)))

(declare-fun b!2284664 () Bool)

(declare-fun equivClasses!1675 (Int Int) Bool)

(assert (=> b!2284664 (= e!1463737 (equivClasses!1675 (toChars!5992 (transformation!4347 r!2363)) (toValue!6133 (transformation!4347 r!2363))))))

(assert (= (and d!675979 res!976723) b!2284664))

(declare-fun m!2712621 () Bool)

(assert (=> d!675979 m!2712621))

(declare-fun m!2712623 () Bool)

(assert (=> b!2284664 m!2712623))

(assert (=> b!2284489 d!675979))

(declare-fun d!675981 () Bool)

(assert (=> d!675981 (= (isEmpty!15455 tokens!456) ((_ is Nil!27194) tokens!456))))

(assert (=> b!2284483 d!675981))

(declare-fun d!675983 () Bool)

(assert (=> d!675983 (= (head!4962 tokens!456) (h!32595 tokens!456))))

(assert (=> b!2284494 d!675983))

(declare-fun d!675985 () Bool)

(assert (=> d!675985 (= (inv!36778 (tag!4837 otherR!12)) (= (mod (str.len (value!137708 (tag!4837 otherR!12))) 2) 0))))

(assert (=> b!2284493 d!675985))

(declare-fun d!675987 () Bool)

(declare-fun res!976724 () Bool)

(declare-fun e!1463738 () Bool)

(assert (=> d!675987 (=> (not res!976724) (not e!1463738))))

(assert (=> d!675987 (= res!976724 (semiInverseModEq!1756 (toChars!5992 (transformation!4347 otherR!12)) (toValue!6133 (transformation!4347 otherR!12))))))

(assert (=> d!675987 (= (inv!36781 (transformation!4347 otherR!12)) e!1463738)))

(declare-fun b!2284665 () Bool)

(assert (=> b!2284665 (= e!1463738 (equivClasses!1675 (toChars!5992 (transformation!4347 otherR!12)) (toValue!6133 (transformation!4347 otherR!12))))))

(assert (= (and d!675987 res!976724) b!2284665))

(declare-fun m!2712625 () Bool)

(assert (=> d!675987 m!2712625))

(declare-fun m!2712627 () Bool)

(assert (=> b!2284665 m!2712627))

(assert (=> b!2284493 d!675987))

(declare-fun d!675989 () Bool)

(declare-fun res!976725 () Bool)

(declare-fun e!1463739 () Bool)

(assert (=> d!675989 (=> (not res!976725) (not e!1463739))))

(assert (=> d!675989 (= res!976725 (validRegex!2516 (regex!4347 r!2363)))))

(assert (=> d!675989 (= (ruleValid!1437 thiss!16613 r!2363) e!1463739)))

(declare-fun b!2284666 () Bool)

(declare-fun res!976726 () Bool)

(assert (=> b!2284666 (=> (not res!976726) (not e!1463739))))

(assert (=> b!2284666 (= res!976726 (not (nullable!1854 (regex!4347 r!2363))))))

(declare-fun b!2284667 () Bool)

(assert (=> b!2284667 (= e!1463739 (not (= (tag!4837 r!2363) (String!29650 ""))))))

(assert (= (and d!675989 res!976725) b!2284666))

(assert (= (and b!2284666 res!976726) b!2284667))

(declare-fun m!2712629 () Bool)

(assert (=> d!675989 m!2712629))

(declare-fun m!2712631 () Bool)

(assert (=> b!2284666 m!2712631))

(assert (=> b!2284504 d!675989))

(declare-fun d!675991 () Bool)

(assert (=> d!675991 (ruleValid!1437 thiss!16613 r!2363)))

(declare-fun lt!847931 () Unit!40100)

(assert (=> d!675991 (= lt!847931 (choose!13329 thiss!16613 r!2363 rules!1750))))

(assert (=> d!675991 (contains!4721 rules!1750 r!2363)))

(assert (=> d!675991 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!842 thiss!16613 r!2363 rules!1750) lt!847931)))

(declare-fun bs!456759 () Bool)

(assert (= bs!456759 d!675991))

(assert (=> bs!456759 m!2712395))

(declare-fun m!2712633 () Bool)

(assert (=> bs!456759 m!2712633))

(assert (=> bs!456759 m!2712449))

(assert (=> b!2284504 d!675991))

(declare-fun d!675993 () Bool)

(declare-fun lt!847934 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3638 (List!27287) (InoxSet Rule!8494))

(assert (=> d!675993 (= lt!847934 (select (content!3638 rules!1750) r!2363))))

(declare-fun e!1463745 () Bool)

(assert (=> d!675993 (= lt!847934 e!1463745)))

(declare-fun res!976731 () Bool)

(assert (=> d!675993 (=> (not res!976731) (not e!1463745))))

(assert (=> d!675993 (= res!976731 ((_ is Cons!27193) rules!1750))))

(assert (=> d!675993 (= (contains!4721 rules!1750 r!2363) lt!847934)))

(declare-fun b!2284672 () Bool)

(declare-fun e!1463744 () Bool)

(assert (=> b!2284672 (= e!1463745 e!1463744)))

(declare-fun res!976732 () Bool)

(assert (=> b!2284672 (=> res!976732 e!1463744)))

(assert (=> b!2284672 (= res!976732 (= (h!32594 rules!1750) r!2363))))

(declare-fun b!2284673 () Bool)

(assert (=> b!2284673 (= e!1463744 (contains!4721 (t!203917 rules!1750) r!2363))))

(assert (= (and d!675993 res!976731) b!2284672))

(assert (= (and b!2284672 (not res!976732)) b!2284673))

(declare-fun m!2712635 () Bool)

(assert (=> d!675993 m!2712635))

(declare-fun m!2712637 () Bool)

(assert (=> d!675993 m!2712637))

(declare-fun m!2712639 () Bool)

(assert (=> b!2284673 m!2712639))

(assert (=> b!2284482 d!675993))

(declare-fun d!675995 () Bool)

(declare-fun list!10620 (Conc!8843) List!27288)

(assert (=> d!675995 (= (list!10617 (_1!15992 lt!847851)) (list!10620 (c!362398 (_1!15992 lt!847851))))))

(declare-fun bs!456760 () Bool)

(assert (= bs!456760 d!675995))

(declare-fun m!2712641 () Bool)

(assert (=> bs!456760 m!2712641))

(assert (=> b!2284492 d!675995))

(declare-fun d!675997 () Bool)

(declare-fun list!10621 (Conc!8842) List!27286)

(assert (=> d!675997 (= (list!10616 (_2!15992 lt!847851)) (list!10621 (c!362396 (_2!15992 lt!847851))))))

(declare-fun bs!456761 () Bool)

(assert (= bs!456761 d!675997))

(declare-fun m!2712643 () Bool)

(assert (=> bs!456761 m!2712643))

(assert (=> b!2284492 d!675997))

(declare-fun b!2284829 () Bool)

(declare-fun e!1463842 () Bool)

(declare-fun e!1463843 () Bool)

(assert (=> b!2284829 (= e!1463842 e!1463843)))

(declare-fun res!976790 () Bool)

(declare-fun lt!847949 () tuple2!26964)

(assert (=> b!2284829 (= res!976790 (< (size!21390 (_2!15992 lt!847949)) (size!21390 (seqFromList!3051 input!1722))))))

(assert (=> b!2284829 (=> (not res!976790) (not e!1463843))))

(declare-fun e!1463844 () Bool)

(declare-fun b!2284830 () Bool)

(declare-fun lexList!1100 (LexerInterface!3944 List!27287 List!27286) tuple2!26966)

(assert (=> b!2284830 (= e!1463844 (= (list!10616 (_2!15992 lt!847949)) (_2!15993 (lexList!1100 thiss!16613 rules!1750 (list!10616 (seqFromList!3051 input!1722))))))))

(declare-fun b!2284831 () Bool)

(declare-fun isEmpty!15461 (BalanceConc!17414) Bool)

(assert (=> b!2284831 (= e!1463843 (not (isEmpty!15461 (_1!15992 lt!847949))))))

(declare-fun b!2284832 () Bool)

(declare-fun res!976788 () Bool)

(assert (=> b!2284832 (=> (not res!976788) (not e!1463844))))

(assert (=> b!2284832 (= res!976788 (= (list!10617 (_1!15992 lt!847949)) (_1!15993 (lexList!1100 thiss!16613 rules!1750 (list!10616 (seqFromList!3051 input!1722))))))))

(declare-fun b!2284833 () Bool)

(assert (=> b!2284833 (= e!1463842 (= (_2!15992 lt!847949) (seqFromList!3051 input!1722)))))

(declare-fun d!675999 () Bool)

(assert (=> d!675999 e!1463844))

(declare-fun res!976789 () Bool)

(assert (=> d!675999 (=> (not res!976789) (not e!1463844))))

(assert (=> d!675999 (= res!976789 e!1463842)))

(declare-fun c!362451 () Bool)

(declare-fun size!21393 (BalanceConc!17414) Int)

(assert (=> d!675999 (= c!362451 (> (size!21393 (_1!15992 lt!847949)) 0))))

(declare-fun lexTailRecV2!775 (LexerInterface!3944 List!27287 BalanceConc!17412 BalanceConc!17412 BalanceConc!17412 BalanceConc!17414) tuple2!26964)

(assert (=> d!675999 (= lt!847949 (lexTailRecV2!775 thiss!16613 rules!1750 (seqFromList!3051 input!1722) (BalanceConc!17413 Empty!8842) (seqFromList!3051 input!1722) (BalanceConc!17415 Empty!8843)))))

(assert (=> d!675999 (= (lex!1783 thiss!16613 rules!1750 (seqFromList!3051 input!1722)) lt!847949)))

(assert (= (and d!675999 c!362451) b!2284829))

(assert (= (and d!675999 (not c!362451)) b!2284833))

(assert (= (and b!2284829 res!976790) b!2284831))

(assert (= (and d!675999 res!976789) b!2284832))

(assert (= (and b!2284832 res!976788) b!2284830))

(declare-fun m!2712733 () Bool)

(assert (=> b!2284829 m!2712733))

(assert (=> b!2284829 m!2712379))

(declare-fun m!2712735 () Bool)

(assert (=> b!2284829 m!2712735))

(declare-fun m!2712737 () Bool)

(assert (=> b!2284831 m!2712737))

(declare-fun m!2712739 () Bool)

(assert (=> d!675999 m!2712739))

(assert (=> d!675999 m!2712379))

(assert (=> d!675999 m!2712379))

(declare-fun m!2712741 () Bool)

(assert (=> d!675999 m!2712741))

(declare-fun m!2712743 () Bool)

(assert (=> b!2284832 m!2712743))

(assert (=> b!2284832 m!2712379))

(declare-fun m!2712745 () Bool)

(assert (=> b!2284832 m!2712745))

(assert (=> b!2284832 m!2712745))

(declare-fun m!2712747 () Bool)

(assert (=> b!2284832 m!2712747))

(declare-fun m!2712749 () Bool)

(assert (=> b!2284830 m!2712749))

(assert (=> b!2284830 m!2712379))

(assert (=> b!2284830 m!2712745))

(assert (=> b!2284830 m!2712745))

(assert (=> b!2284830 m!2712747))

(assert (=> b!2284492 d!675999))

(declare-fun d!676027 () Bool)

(declare-fun fromListB!1366 (List!27286) BalanceConc!17412)

(assert (=> d!676027 (= (seqFromList!3051 input!1722) (fromListB!1366 input!1722))))

(declare-fun bs!456766 () Bool)

(assert (= bs!456766 d!676027))

(declare-fun m!2712751 () Bool)

(assert (=> bs!456766 m!2712751))

(assert (=> b!2284492 d!676027))

(declare-fun d!676029 () Bool)

(assert (=> d!676029 (= (inv!36778 (tag!4837 (rule!6675 (h!32595 tokens!456)))) (= (mod (str.len (value!137708 (tag!4837 (rule!6675 (h!32595 tokens!456))))) 2) 0))))

(assert (=> b!2284475 d!676029))

(declare-fun d!676031 () Bool)

(declare-fun res!976791 () Bool)

(declare-fun e!1463845 () Bool)

(assert (=> d!676031 (=> (not res!976791) (not e!1463845))))

(assert (=> d!676031 (= res!976791 (semiInverseModEq!1756 (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))) (toValue!6133 (transformation!4347 (rule!6675 (h!32595 tokens!456))))))))

(assert (=> d!676031 (= (inv!36781 (transformation!4347 (rule!6675 (h!32595 tokens!456)))) e!1463845)))

(declare-fun b!2284834 () Bool)

(assert (=> b!2284834 (= e!1463845 (equivClasses!1675 (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))) (toValue!6133 (transformation!4347 (rule!6675 (h!32595 tokens!456))))))))

(assert (= (and d!676031 res!976791) b!2284834))

(declare-fun m!2712753 () Bool)

(assert (=> d!676031 m!2712753))

(declare-fun m!2712755 () Bool)

(assert (=> b!2284834 m!2712755))

(assert (=> b!2284475 d!676031))

(declare-fun d!676033 () Bool)

(assert (=> d!676033 (= (isEmpty!15456 rules!1750) ((_ is Nil!27193) rules!1750))))

(assert (=> b!2284486 d!676033))

(declare-fun d!676035 () Bool)

(assert (=> d!676035 (= (inv!36778 (tag!4837 (h!32594 rules!1750))) (= (mod (str.len (value!137708 (tag!4837 (h!32594 rules!1750)))) 2) 0))))

(assert (=> b!2284485 d!676035))

(declare-fun d!676037 () Bool)

(declare-fun res!976792 () Bool)

(declare-fun e!1463846 () Bool)

(assert (=> d!676037 (=> (not res!976792) (not e!1463846))))

(assert (=> d!676037 (= res!976792 (semiInverseModEq!1756 (toChars!5992 (transformation!4347 (h!32594 rules!1750))) (toValue!6133 (transformation!4347 (h!32594 rules!1750)))))))

(assert (=> d!676037 (= (inv!36781 (transformation!4347 (h!32594 rules!1750))) e!1463846)))

(declare-fun b!2284835 () Bool)

(assert (=> b!2284835 (= e!1463846 (equivClasses!1675 (toChars!5992 (transformation!4347 (h!32594 rules!1750))) (toValue!6133 (transformation!4347 (h!32594 rules!1750)))))))

(assert (= (and d!676037 res!976792) b!2284835))

(declare-fun m!2712757 () Bool)

(assert (=> d!676037 m!2712757))

(declare-fun m!2712759 () Bool)

(assert (=> b!2284835 m!2712759))

(assert (=> b!2284485 d!676037))

(declare-fun d!676039 () Bool)

(declare-fun res!976795 () Bool)

(declare-fun e!1463849 () Bool)

(assert (=> d!676039 (=> (not res!976795) (not e!1463849))))

(declare-fun rulesValid!1600 (LexerInterface!3944 List!27287) Bool)

(assert (=> d!676039 (= res!976795 (rulesValid!1600 thiss!16613 rules!1750))))

(assert (=> d!676039 (= (rulesInvariant!3446 thiss!16613 rules!1750) e!1463849)))

(declare-fun b!2284838 () Bool)

(declare-datatypes ((List!27290 0))(
  ( (Nil!27196) (Cons!27196 (h!32597 String!29649) (t!203968 List!27290)) )
))
(declare-fun noDuplicateTag!1598 (LexerInterface!3944 List!27287 List!27290) Bool)

(assert (=> b!2284838 (= e!1463849 (noDuplicateTag!1598 thiss!16613 rules!1750 Nil!27196))))

(assert (= (and d!676039 res!976795) b!2284838))

(declare-fun m!2712761 () Bool)

(assert (=> d!676039 m!2712761))

(declare-fun m!2712763 () Bool)

(assert (=> b!2284838 m!2712763))

(assert (=> b!2284496 d!676039))

(declare-fun b!2284867 () Bool)

(declare-fun e!1463870 () Bool)

(declare-fun e!1463864 () Bool)

(assert (=> b!2284867 (= e!1463870 e!1463864)))

(declare-fun res!976812 () Bool)

(assert (=> b!2284867 (=> (not res!976812) (not e!1463864))))

(declare-fun lt!847952 () Bool)

(assert (=> b!2284867 (= res!976812 (not lt!847952))))

(declare-fun b!2284868 () Bool)

(declare-fun e!1463865 () Bool)

(declare-fun head!4964 (List!27286) C!13536)

(assert (=> b!2284868 (= e!1463865 (not (= (head!4964 (list!10616 (charsOf!2735 (head!4962 tokens!456)))) (c!362397 (regex!4347 r!2363)))))))

(declare-fun b!2284869 () Bool)

(declare-fun e!1463869 () Bool)

(assert (=> b!2284869 (= e!1463869 (nullable!1854 (regex!4347 r!2363)))))

(declare-fun b!2284870 () Bool)

(declare-fun res!976819 () Bool)

(declare-fun e!1463867 () Bool)

(assert (=> b!2284870 (=> (not res!976819) (not e!1463867))))

(declare-fun call!136516 () Bool)

(assert (=> b!2284870 (= res!976819 (not call!136516))))

(declare-fun b!2284871 () Bool)

(declare-fun res!976818 () Bool)

(assert (=> b!2284871 (=> res!976818 e!1463870)))

(assert (=> b!2284871 (= res!976818 e!1463867)))

(declare-fun res!976817 () Bool)

(assert (=> b!2284871 (=> (not res!976817) (not e!1463867))))

(assert (=> b!2284871 (= res!976817 lt!847952)))

(declare-fun bm!136511 () Bool)

(declare-fun isEmpty!15462 (List!27286) Bool)

(assert (=> bm!136511 (= call!136516 (isEmpty!15462 (list!10616 (charsOf!2735 (head!4962 tokens!456)))))))

(declare-fun b!2284872 () Bool)

(declare-fun e!1463866 () Bool)

(declare-fun e!1463868 () Bool)

(assert (=> b!2284872 (= e!1463866 e!1463868)))

(declare-fun c!362460 () Bool)

(assert (=> b!2284872 (= c!362460 ((_ is EmptyLang!6695) (regex!4347 r!2363)))))

(declare-fun b!2284873 () Bool)

(assert (=> b!2284873 (= e!1463868 (not lt!847952))))

(declare-fun b!2284874 () Bool)

(declare-fun res!976814 () Bool)

(assert (=> b!2284874 (=> res!976814 e!1463870)))

(assert (=> b!2284874 (= res!976814 (not ((_ is ElementMatch!6695) (regex!4347 r!2363))))))

(assert (=> b!2284874 (= e!1463868 e!1463870)))

(declare-fun d!676041 () Bool)

(assert (=> d!676041 e!1463866))

(declare-fun c!362459 () Bool)

(assert (=> d!676041 (= c!362459 ((_ is EmptyExpr!6695) (regex!4347 r!2363)))))

(assert (=> d!676041 (= lt!847952 e!1463869)))

(declare-fun c!362458 () Bool)

(assert (=> d!676041 (= c!362458 (isEmpty!15462 (list!10616 (charsOf!2735 (head!4962 tokens!456)))))))

(assert (=> d!676041 (validRegex!2516 (regex!4347 r!2363))))

(assert (=> d!676041 (= (matchR!2952 (regex!4347 r!2363) (list!10616 (charsOf!2735 (head!4962 tokens!456)))) lt!847952)))

(declare-fun b!2284875 () Bool)

(assert (=> b!2284875 (= e!1463866 (= lt!847952 call!136516))))

(declare-fun b!2284876 () Bool)

(assert (=> b!2284876 (= e!1463867 (= (head!4964 (list!10616 (charsOf!2735 (head!4962 tokens!456)))) (c!362397 (regex!4347 r!2363))))))

(declare-fun b!2284877 () Bool)

(declare-fun derivativeStep!1514 (Regex!6695 C!13536) Regex!6695)

(declare-fun tail!3297 (List!27286) List!27286)

(assert (=> b!2284877 (= e!1463869 (matchR!2952 (derivativeStep!1514 (regex!4347 r!2363) (head!4964 (list!10616 (charsOf!2735 (head!4962 tokens!456))))) (tail!3297 (list!10616 (charsOf!2735 (head!4962 tokens!456))))))))

(declare-fun b!2284878 () Bool)

(declare-fun res!976815 () Bool)

(assert (=> b!2284878 (=> res!976815 e!1463865)))

(assert (=> b!2284878 (= res!976815 (not (isEmpty!15462 (tail!3297 (list!10616 (charsOf!2735 (head!4962 tokens!456)))))))))

(declare-fun b!2284879 () Bool)

(assert (=> b!2284879 (= e!1463864 e!1463865)))

(declare-fun res!976816 () Bool)

(assert (=> b!2284879 (=> res!976816 e!1463865)))

(assert (=> b!2284879 (= res!976816 call!136516)))

(declare-fun b!2284880 () Bool)

(declare-fun res!976813 () Bool)

(assert (=> b!2284880 (=> (not res!976813) (not e!1463867))))

(assert (=> b!2284880 (= res!976813 (isEmpty!15462 (tail!3297 (list!10616 (charsOf!2735 (head!4962 tokens!456))))))))

(assert (= (and d!676041 c!362458) b!2284869))

(assert (= (and d!676041 (not c!362458)) b!2284877))

(assert (= (and d!676041 c!362459) b!2284875))

(assert (= (and d!676041 (not c!362459)) b!2284872))

(assert (= (and b!2284872 c!362460) b!2284873))

(assert (= (and b!2284872 (not c!362460)) b!2284874))

(assert (= (and b!2284874 (not res!976814)) b!2284871))

(assert (= (and b!2284871 res!976817) b!2284870))

(assert (= (and b!2284870 res!976819) b!2284880))

(assert (= (and b!2284880 res!976813) b!2284876))

(assert (= (and b!2284871 (not res!976818)) b!2284867))

(assert (= (and b!2284867 res!976812) b!2284879))

(assert (= (and b!2284879 (not res!976816)) b!2284878))

(assert (= (and b!2284878 (not res!976815)) b!2284868))

(assert (= (or b!2284875 b!2284870 b!2284879) bm!136511))

(assert (=> d!676041 m!2712427))

(declare-fun m!2712765 () Bool)

(assert (=> d!676041 m!2712765))

(assert (=> d!676041 m!2712629))

(assert (=> b!2284868 m!2712427))

(declare-fun m!2712767 () Bool)

(assert (=> b!2284868 m!2712767))

(assert (=> b!2284869 m!2712631))

(assert (=> bm!136511 m!2712427))

(assert (=> bm!136511 m!2712765))

(assert (=> b!2284876 m!2712427))

(assert (=> b!2284876 m!2712767))

(assert (=> b!2284878 m!2712427))

(declare-fun m!2712769 () Bool)

(assert (=> b!2284878 m!2712769))

(assert (=> b!2284878 m!2712769))

(declare-fun m!2712771 () Bool)

(assert (=> b!2284878 m!2712771))

(assert (=> b!2284880 m!2712427))

(assert (=> b!2284880 m!2712769))

(assert (=> b!2284880 m!2712769))

(assert (=> b!2284880 m!2712771))

(assert (=> b!2284877 m!2712427))

(assert (=> b!2284877 m!2712767))

(assert (=> b!2284877 m!2712767))

(declare-fun m!2712773 () Bool)

(assert (=> b!2284877 m!2712773))

(assert (=> b!2284877 m!2712427))

(assert (=> b!2284877 m!2712769))

(assert (=> b!2284877 m!2712773))

(assert (=> b!2284877 m!2712769))

(declare-fun m!2712775 () Bool)

(assert (=> b!2284877 m!2712775))

(assert (=> b!2284495 d!676041))

(declare-fun d!676043 () Bool)

(assert (=> d!676043 (= (list!10616 (charsOf!2735 (head!4962 tokens!456))) (list!10621 (c!362396 (charsOf!2735 (head!4962 tokens!456)))))))

(declare-fun bs!456767 () Bool)

(assert (= bs!456767 d!676043))

(declare-fun m!2712777 () Bool)

(assert (=> bs!456767 m!2712777))

(assert (=> b!2284495 d!676043))

(declare-fun d!676045 () Bool)

(declare-fun lt!847955 () BalanceConc!17412)

(assert (=> d!676045 (= (list!10616 lt!847955) (originalCharacters!5117 (head!4962 tokens!456)))))

(declare-fun dynLambda!11797 (Int TokenValue!4509) BalanceConc!17412)

(assert (=> d!676045 (= lt!847955 (dynLambda!11797 (toChars!5992 (transformation!4347 (rule!6675 (head!4962 tokens!456)))) (value!137709 (head!4962 tokens!456))))))

(assert (=> d!676045 (= (charsOf!2735 (head!4962 tokens!456)) lt!847955)))

(declare-fun b_lambda!72735 () Bool)

(assert (=> (not b_lambda!72735) (not d!676045)))

(declare-fun t!203944 () Bool)

(declare-fun tb!135911 () Bool)

(assert (=> (and b!2284497 (= (toChars!5992 (transformation!4347 r!2363)) (toChars!5992 (transformation!4347 (rule!6675 (head!4962 tokens!456))))) t!203944) tb!135911))

(declare-fun b!2284885 () Bool)

(declare-fun e!1463873 () Bool)

(declare-fun tp!724265 () Bool)

(declare-fun inv!36785 (Conc!8842) Bool)

(assert (=> b!2284885 (= e!1463873 (and (inv!36785 (c!362396 (dynLambda!11797 (toChars!5992 (transformation!4347 (rule!6675 (head!4962 tokens!456)))) (value!137709 (head!4962 tokens!456))))) tp!724265))))

(declare-fun result!165716 () Bool)

(declare-fun inv!36786 (BalanceConc!17412) Bool)

(assert (=> tb!135911 (= result!165716 (and (inv!36786 (dynLambda!11797 (toChars!5992 (transformation!4347 (rule!6675 (head!4962 tokens!456)))) (value!137709 (head!4962 tokens!456)))) e!1463873))))

(assert (= tb!135911 b!2284885))

(declare-fun m!2712779 () Bool)

(assert (=> b!2284885 m!2712779))

(declare-fun m!2712781 () Bool)

(assert (=> tb!135911 m!2712781))

(assert (=> d!676045 t!203944))

(declare-fun b_and!180825 () Bool)

(assert (= b_and!180779 (and (=> t!203944 result!165716) b_and!180825)))

(declare-fun t!203946 () Bool)

(declare-fun tb!135913 () Bool)

(assert (=> (and b!2284480 (= (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))) (toChars!5992 (transformation!4347 (rule!6675 (head!4962 tokens!456))))) t!203946) tb!135913))

(declare-fun result!165720 () Bool)

(assert (= result!165720 result!165716))

(assert (=> d!676045 t!203946))

(declare-fun b_and!180827 () Bool)

(assert (= b_and!180783 (and (=> t!203946 result!165720) b_and!180827)))

(declare-fun tb!135915 () Bool)

(declare-fun t!203949 () Bool)

(assert (=> (and b!2284476 (= (toChars!5992 (transformation!4347 (h!32594 rules!1750))) (toChars!5992 (transformation!4347 (rule!6675 (head!4962 tokens!456))))) t!203949) tb!135915))

(declare-fun result!165722 () Bool)

(assert (= result!165722 result!165716))

(assert (=> d!676045 t!203949))

(declare-fun b_and!180829 () Bool)

(assert (= b_and!180787 (and (=> t!203949 result!165722) b_and!180829)))

(declare-fun t!203951 () Bool)

(declare-fun tb!135917 () Bool)

(assert (=> (and b!2284502 (= (toChars!5992 (transformation!4347 otherR!12)) (toChars!5992 (transformation!4347 (rule!6675 (head!4962 tokens!456))))) t!203951) tb!135917))

(declare-fun result!165724 () Bool)

(assert (= result!165724 result!165716))

(assert (=> d!676045 t!203951))

(declare-fun b_and!180831 () Bool)

(assert (= b_and!180791 (and (=> t!203951 result!165724) b_and!180831)))

(declare-fun m!2712783 () Bool)

(assert (=> d!676045 m!2712783))

(declare-fun m!2712785 () Bool)

(assert (=> d!676045 m!2712785))

(assert (=> b!2284495 d!676045))

(assert (=> b!2284495 d!675983))

(declare-fun b!2284896 () Bool)

(declare-fun res!976822 () Bool)

(declare-fun e!1463882 () Bool)

(assert (=> b!2284896 (=> res!976822 e!1463882)))

(assert (=> b!2284896 (= res!976822 (not ((_ is IntegerValue!13529) (value!137709 (h!32595 tokens!456)))))))

(declare-fun e!1463880 () Bool)

(assert (=> b!2284896 (= e!1463880 e!1463882)))

(declare-fun b!2284897 () Bool)

(declare-fun inv!15 (TokenValue!4509) Bool)

(assert (=> b!2284897 (= e!1463882 (inv!15 (value!137709 (h!32595 tokens!456))))))

(declare-fun b!2284898 () Bool)

(declare-fun e!1463881 () Bool)

(declare-fun inv!16 (TokenValue!4509) Bool)

(assert (=> b!2284898 (= e!1463881 (inv!16 (value!137709 (h!32595 tokens!456))))))

(declare-fun b!2284899 () Bool)

(declare-fun inv!17 (TokenValue!4509) Bool)

(assert (=> b!2284899 (= e!1463880 (inv!17 (value!137709 (h!32595 tokens!456))))))

(declare-fun b!2284900 () Bool)

(assert (=> b!2284900 (= e!1463881 e!1463880)))

(declare-fun c!362466 () Bool)

(assert (=> b!2284900 (= c!362466 ((_ is IntegerValue!13528) (value!137709 (h!32595 tokens!456))))))

(declare-fun d!676047 () Bool)

(declare-fun c!362465 () Bool)

(assert (=> d!676047 (= c!362465 ((_ is IntegerValue!13527) (value!137709 (h!32595 tokens!456))))))

(assert (=> d!676047 (= (inv!21 (value!137709 (h!32595 tokens!456))) e!1463881)))

(assert (= (and d!676047 c!362465) b!2284898))

(assert (= (and d!676047 (not c!362465)) b!2284900))

(assert (= (and b!2284900 c!362466) b!2284899))

(assert (= (and b!2284900 (not c!362466)) b!2284896))

(assert (= (and b!2284896 (not res!976822)) b!2284897))

(declare-fun m!2712787 () Bool)

(assert (=> b!2284897 m!2712787))

(declare-fun m!2712789 () Bool)

(assert (=> b!2284898 m!2712789))

(declare-fun m!2712791 () Bool)

(assert (=> b!2284899 m!2712791))

(assert (=> b!2284474 d!676047))

(declare-fun d!676049 () Bool)

(declare-fun lt!847956 () Bool)

(assert (=> d!676049 (= lt!847956 (select (content!3638 rules!1750) otherR!12))))

(declare-fun e!1463884 () Bool)

(assert (=> d!676049 (= lt!847956 e!1463884)))

(declare-fun res!976823 () Bool)

(assert (=> d!676049 (=> (not res!976823) (not e!1463884))))

(assert (=> d!676049 (= res!976823 ((_ is Cons!27193) rules!1750))))

(assert (=> d!676049 (= (contains!4721 rules!1750 otherR!12) lt!847956)))

(declare-fun b!2284901 () Bool)

(declare-fun e!1463883 () Bool)

(assert (=> b!2284901 (= e!1463884 e!1463883)))

(declare-fun res!976824 () Bool)

(assert (=> b!2284901 (=> res!976824 e!1463883)))

(assert (=> b!2284901 (= res!976824 (= (h!32594 rules!1750) otherR!12))))

(declare-fun b!2284902 () Bool)

(assert (=> b!2284902 (= e!1463883 (contains!4721 (t!203917 rules!1750) otherR!12))))

(assert (= (and d!676049 res!976823) b!2284901))

(assert (= (and b!2284901 (not res!976824)) b!2284902))

(assert (=> d!676049 m!2712635))

(declare-fun m!2712793 () Bool)

(assert (=> d!676049 m!2712793))

(declare-fun m!2712795 () Bool)

(assert (=> b!2284902 m!2712795))

(assert (=> b!2284473 d!676049))

(declare-fun b!2284912 () Bool)

(declare-fun res!976836 () Bool)

(declare-fun e!1463892 () Bool)

(assert (=> b!2284912 (=> (not res!976836) (not e!1463892))))

(assert (=> b!2284912 (= res!976836 (= (head!4964 otherP!12) (head!4964 input!1722)))))

(declare-fun b!2284911 () Bool)

(declare-fun e!1463891 () Bool)

(assert (=> b!2284911 (= e!1463891 e!1463892)))

(declare-fun res!976834 () Bool)

(assert (=> b!2284911 (=> (not res!976834) (not e!1463892))))

(assert (=> b!2284911 (= res!976834 (not ((_ is Nil!27192) input!1722)))))

(declare-fun d!676051 () Bool)

(declare-fun e!1463893 () Bool)

(assert (=> d!676051 e!1463893))

(declare-fun res!976833 () Bool)

(assert (=> d!676051 (=> res!976833 e!1463893)))

(declare-fun lt!847959 () Bool)

(assert (=> d!676051 (= res!976833 (not lt!847959))))

(assert (=> d!676051 (= lt!847959 e!1463891)))

(declare-fun res!976835 () Bool)

(assert (=> d!676051 (=> res!976835 e!1463891)))

(assert (=> d!676051 (= res!976835 ((_ is Nil!27192) otherP!12))))

(assert (=> d!676051 (= (isPrefix!2337 otherP!12 input!1722) lt!847959)))

(declare-fun b!2284913 () Bool)

(assert (=> b!2284913 (= e!1463892 (isPrefix!2337 (tail!3297 otherP!12) (tail!3297 input!1722)))))

(declare-fun b!2284914 () Bool)

(assert (=> b!2284914 (= e!1463893 (>= (size!21389 input!1722) (size!21389 otherP!12)))))

(assert (= (and d!676051 (not res!976835)) b!2284911))

(assert (= (and b!2284911 res!976834) b!2284912))

(assert (= (and b!2284912 res!976836) b!2284913))

(assert (= (and d!676051 (not res!976833)) b!2284914))

(declare-fun m!2712797 () Bool)

(assert (=> b!2284912 m!2712797))

(declare-fun m!2712799 () Bool)

(assert (=> b!2284912 m!2712799))

(declare-fun m!2712801 () Bool)

(assert (=> b!2284913 m!2712801))

(declare-fun m!2712803 () Bool)

(assert (=> b!2284913 m!2712803))

(assert (=> b!2284913 m!2712801))

(assert (=> b!2284913 m!2712803))

(declare-fun m!2712805 () Bool)

(assert (=> b!2284913 m!2712805))

(assert (=> b!2284914 m!2712605))

(assert (=> b!2284914 m!2712407))

(assert (=> b!2284499 d!676051))

(declare-fun d!676053 () Bool)

(declare-fun res!976841 () Bool)

(declare-fun e!1463896 () Bool)

(assert (=> d!676053 (=> (not res!976841) (not e!1463896))))

(assert (=> d!676053 (= res!976841 (not (isEmpty!15462 (originalCharacters!5117 (h!32595 tokens!456)))))))

(assert (=> d!676053 (= (inv!36782 (h!32595 tokens!456)) e!1463896)))

(declare-fun b!2284919 () Bool)

(declare-fun res!976842 () Bool)

(assert (=> b!2284919 (=> (not res!976842) (not e!1463896))))

(assert (=> b!2284919 (= res!976842 (= (originalCharacters!5117 (h!32595 tokens!456)) (list!10616 (dynLambda!11797 (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))) (value!137709 (h!32595 tokens!456))))))))

(declare-fun b!2284920 () Bool)

(assert (=> b!2284920 (= e!1463896 (= (size!21388 (h!32595 tokens!456)) (size!21389 (originalCharacters!5117 (h!32595 tokens!456)))))))

(assert (= (and d!676053 res!976841) b!2284919))

(assert (= (and b!2284919 res!976842) b!2284920))

(declare-fun b_lambda!72737 () Bool)

(assert (=> (not b_lambda!72737) (not b!2284919)))

(declare-fun t!203953 () Bool)

(declare-fun tb!135919 () Bool)

(assert (=> (and b!2284497 (= (toChars!5992 (transformation!4347 r!2363)) (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456))))) t!203953) tb!135919))

(declare-fun b!2284921 () Bool)

(declare-fun e!1463897 () Bool)

(declare-fun tp!724266 () Bool)

(assert (=> b!2284921 (= e!1463897 (and (inv!36785 (c!362396 (dynLambda!11797 (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))) (value!137709 (h!32595 tokens!456))))) tp!724266))))

(declare-fun result!165726 () Bool)

(assert (=> tb!135919 (= result!165726 (and (inv!36786 (dynLambda!11797 (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))) (value!137709 (h!32595 tokens!456)))) e!1463897))))

(assert (= tb!135919 b!2284921))

(declare-fun m!2712807 () Bool)

(assert (=> b!2284921 m!2712807))

(declare-fun m!2712809 () Bool)

(assert (=> tb!135919 m!2712809))

(assert (=> b!2284919 t!203953))

(declare-fun b_and!180833 () Bool)

(assert (= b_and!180825 (and (=> t!203953 result!165726) b_and!180833)))

(declare-fun t!203955 () Bool)

(declare-fun tb!135921 () Bool)

(assert (=> (and b!2284480 (= (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))) (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456))))) t!203955) tb!135921))

(declare-fun result!165728 () Bool)

(assert (= result!165728 result!165726))

(assert (=> b!2284919 t!203955))

(declare-fun b_and!180835 () Bool)

(assert (= b_and!180827 (and (=> t!203955 result!165728) b_and!180835)))

(declare-fun tb!135923 () Bool)

(declare-fun t!203957 () Bool)

(assert (=> (and b!2284476 (= (toChars!5992 (transformation!4347 (h!32594 rules!1750))) (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456))))) t!203957) tb!135923))

(declare-fun result!165730 () Bool)

(assert (= result!165730 result!165726))

(assert (=> b!2284919 t!203957))

(declare-fun b_and!180837 () Bool)

(assert (= b_and!180829 (and (=> t!203957 result!165730) b_and!180837)))

(declare-fun t!203959 () Bool)

(declare-fun tb!135925 () Bool)

(assert (=> (and b!2284502 (= (toChars!5992 (transformation!4347 otherR!12)) (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456))))) t!203959) tb!135925))

(declare-fun result!165732 () Bool)

(assert (= result!165732 result!165726))

(assert (=> b!2284919 t!203959))

(declare-fun b_and!180839 () Bool)

(assert (= b_and!180831 (and (=> t!203959 result!165732) b_and!180839)))

(declare-fun m!2712811 () Bool)

(assert (=> d!676053 m!2712811))

(declare-fun m!2712813 () Bool)

(assert (=> b!2284919 m!2712813))

(assert (=> b!2284919 m!2712813))

(declare-fun m!2712815 () Bool)

(assert (=> b!2284919 m!2712815))

(declare-fun m!2712817 () Bool)

(assert (=> b!2284920 m!2712817))

(assert (=> b!2284478 d!676053))

(declare-fun d!676055 () Bool)

(declare-fun lt!847962 () Int)

(assert (=> d!676055 (= lt!847962 (size!21389 (list!10616 (charsOf!2735 (head!4962 tokens!456)))))))

(declare-fun size!21394 (Conc!8842) Int)

(assert (=> d!676055 (= lt!847962 (size!21394 (c!362396 (charsOf!2735 (head!4962 tokens!456)))))))

(assert (=> d!676055 (= (size!21390 (charsOf!2735 (head!4962 tokens!456))) lt!847962)))

(declare-fun bs!456768 () Bool)

(assert (= bs!456768 d!676055))

(assert (=> bs!456768 m!2712425))

(assert (=> bs!456768 m!2712427))

(assert (=> bs!456768 m!2712427))

(declare-fun m!2712819 () Bool)

(assert (=> bs!456768 m!2712819))

(declare-fun m!2712821 () Bool)

(assert (=> bs!456768 m!2712821))

(assert (=> b!2284477 d!676055))

(assert (=> b!2284477 d!676045))

(assert (=> b!2284477 d!675983))

(declare-fun d!676057 () Bool)

(declare-fun lt!847965 () Int)

(assert (=> d!676057 (>= lt!847965 0)))

(declare-fun e!1463900 () Int)

(assert (=> d!676057 (= lt!847965 e!1463900)))

(declare-fun c!362469 () Bool)

(assert (=> d!676057 (= c!362469 ((_ is Nil!27192) otherP!12))))

(assert (=> d!676057 (= (size!21389 otherP!12) lt!847965)))

(declare-fun b!2284926 () Bool)

(assert (=> b!2284926 (= e!1463900 0)))

(declare-fun b!2284927 () Bool)

(assert (=> b!2284927 (= e!1463900 (+ 1 (size!21389 (t!203916 otherP!12))))))

(assert (= (and d!676057 c!362469) b!2284926))

(assert (= (and d!676057 (not c!362469)) b!2284927))

(declare-fun m!2712823 () Bool)

(assert (=> b!2284927 m!2712823))

(assert (=> b!2284477 d!676057))

(declare-fun d!676059 () Bool)

(declare-fun lt!847966 () Int)

(assert (=> d!676059 (>= lt!847966 0)))

(declare-fun e!1463901 () Int)

(assert (=> d!676059 (= lt!847966 e!1463901)))

(declare-fun c!362470 () Bool)

(assert (=> d!676059 (= c!362470 ((_ is Nil!27192) lt!847853))))

(assert (=> d!676059 (= (size!21389 lt!847853) lt!847966)))

(declare-fun b!2284928 () Bool)

(assert (=> b!2284928 (= e!1463901 0)))

(declare-fun b!2284929 () Bool)

(assert (=> b!2284929 (= e!1463901 (+ 1 (size!21389 (t!203916 lt!847853))))))

(assert (= (and d!676059 c!362470) b!2284928))

(assert (= (and d!676059 (not c!362470)) b!2284929))

(declare-fun m!2712825 () Bool)

(assert (=> b!2284929 m!2712825))

(assert (=> b!2284488 d!676059))

(declare-fun d!676061 () Bool)

(declare-fun lt!847969 () List!27286)

(assert (=> d!676061 (= (++!6643 lt!847853 lt!847969) input!1722)))

(declare-fun e!1463904 () List!27286)

(assert (=> d!676061 (= lt!847969 e!1463904)))

(declare-fun c!362473 () Bool)

(assert (=> d!676061 (= c!362473 ((_ is Cons!27192) lt!847853))))

(assert (=> d!676061 (>= (size!21389 input!1722) (size!21389 lt!847853))))

(assert (=> d!676061 (= (getSuffix!1128 input!1722 lt!847853) lt!847969)))

(declare-fun b!2284934 () Bool)

(assert (=> b!2284934 (= e!1463904 (getSuffix!1128 (tail!3297 input!1722) (t!203916 lt!847853)))))

(declare-fun b!2284935 () Bool)

(assert (=> b!2284935 (= e!1463904 input!1722)))

(assert (= (and d!676061 c!362473) b!2284934))

(assert (= (and d!676061 (not c!362473)) b!2284935))

(declare-fun m!2712827 () Bool)

(assert (=> d!676061 m!2712827))

(assert (=> d!676061 m!2712605))

(assert (=> d!676061 m!2712411))

(assert (=> b!2284934 m!2712803))

(assert (=> b!2284934 m!2712803))

(declare-fun m!2712829 () Bool)

(assert (=> b!2284934 m!2712829))

(assert (=> b!2284488 d!676061))

(declare-fun b!2284937 () Bool)

(declare-fun res!976846 () Bool)

(declare-fun e!1463906 () Bool)

(assert (=> b!2284937 (=> (not res!976846) (not e!1463906))))

(assert (=> b!2284937 (= res!976846 (= (head!4964 lt!847853) (head!4964 lt!847856)))))

(declare-fun b!2284936 () Bool)

(declare-fun e!1463905 () Bool)

(assert (=> b!2284936 (= e!1463905 e!1463906)))

(declare-fun res!976844 () Bool)

(assert (=> b!2284936 (=> (not res!976844) (not e!1463906))))

(assert (=> b!2284936 (= res!976844 (not ((_ is Nil!27192) lt!847856)))))

(declare-fun d!676063 () Bool)

(declare-fun e!1463907 () Bool)

(assert (=> d!676063 e!1463907))

(declare-fun res!976843 () Bool)

(assert (=> d!676063 (=> res!976843 e!1463907)))

(declare-fun lt!847970 () Bool)

(assert (=> d!676063 (= res!976843 (not lt!847970))))

(assert (=> d!676063 (= lt!847970 e!1463905)))

(declare-fun res!976845 () Bool)

(assert (=> d!676063 (=> res!976845 e!1463905)))

(assert (=> d!676063 (= res!976845 ((_ is Nil!27192) lt!847853))))

(assert (=> d!676063 (= (isPrefix!2337 lt!847853 lt!847856) lt!847970)))

(declare-fun b!2284938 () Bool)

(assert (=> b!2284938 (= e!1463906 (isPrefix!2337 (tail!3297 lt!847853) (tail!3297 lt!847856)))))

(declare-fun b!2284939 () Bool)

(assert (=> b!2284939 (= e!1463907 (>= (size!21389 lt!847856) (size!21389 lt!847853)))))

(assert (= (and d!676063 (not res!976845)) b!2284936))

(assert (= (and b!2284936 res!976844) b!2284937))

(assert (= (and b!2284937 res!976846) b!2284938))

(assert (= (and d!676063 (not res!976843)) b!2284939))

(declare-fun m!2712831 () Bool)

(assert (=> b!2284937 m!2712831))

(declare-fun m!2712833 () Bool)

(assert (=> b!2284937 m!2712833))

(declare-fun m!2712835 () Bool)

(assert (=> b!2284938 m!2712835))

(declare-fun m!2712837 () Bool)

(assert (=> b!2284938 m!2712837))

(assert (=> b!2284938 m!2712835))

(assert (=> b!2284938 m!2712837))

(declare-fun m!2712839 () Bool)

(assert (=> b!2284938 m!2712839))

(declare-fun m!2712841 () Bool)

(assert (=> b!2284939 m!2712841))

(assert (=> b!2284939 m!2712411))

(assert (=> b!2284488 d!676063))

(assert (=> b!2284488 d!676057))

(declare-fun b!2284949 () Bool)

(declare-fun e!1463912 () List!27286)

(assert (=> b!2284949 (= e!1463912 (Cons!27192 (h!32593 lt!847853) (++!6643 (t!203916 lt!847853) (_2!15991 lt!847860))))))

(declare-fun b!2284948 () Bool)

(assert (=> b!2284948 (= e!1463912 (_2!15991 lt!847860))))

(declare-fun d!676065 () Bool)

(declare-fun e!1463913 () Bool)

(assert (=> d!676065 e!1463913))

(declare-fun res!976851 () Bool)

(assert (=> d!676065 (=> (not res!976851) (not e!1463913))))

(declare-fun lt!847973 () List!27286)

(declare-fun content!3639 (List!27286) (InoxSet C!13536))

(assert (=> d!676065 (= res!976851 (= (content!3639 lt!847973) ((_ map or) (content!3639 lt!847853) (content!3639 (_2!15991 lt!847860)))))))

(assert (=> d!676065 (= lt!847973 e!1463912)))

(declare-fun c!362476 () Bool)

(assert (=> d!676065 (= c!362476 ((_ is Nil!27192) lt!847853))))

(assert (=> d!676065 (= (++!6643 lt!847853 (_2!15991 lt!847860)) lt!847973)))

(declare-fun b!2284951 () Bool)

(assert (=> b!2284951 (= e!1463913 (or (not (= (_2!15991 lt!847860) Nil!27192)) (= lt!847973 lt!847853)))))

(declare-fun b!2284950 () Bool)

(declare-fun res!976852 () Bool)

(assert (=> b!2284950 (=> (not res!976852) (not e!1463913))))

(assert (=> b!2284950 (= res!976852 (= (size!21389 lt!847973) (+ (size!21389 lt!847853) (size!21389 (_2!15991 lt!847860)))))))

(assert (= (and d!676065 c!362476) b!2284948))

(assert (= (and d!676065 (not c!362476)) b!2284949))

(assert (= (and d!676065 res!976851) b!2284950))

(assert (= (and b!2284950 res!976852) b!2284951))

(declare-fun m!2712843 () Bool)

(assert (=> b!2284949 m!2712843))

(declare-fun m!2712845 () Bool)

(assert (=> d!676065 m!2712845))

(declare-fun m!2712847 () Bool)

(assert (=> d!676065 m!2712847))

(declare-fun m!2712849 () Bool)

(assert (=> d!676065 m!2712849))

(declare-fun m!2712851 () Bool)

(assert (=> b!2284950 m!2712851))

(assert (=> b!2284950 m!2712411))

(declare-fun m!2712853 () Bool)

(assert (=> b!2284950 m!2712853))

(assert (=> b!2284488 d!676065))

(declare-fun d!676067 () Bool)

(assert (=> d!676067 (isPrefix!2337 lt!847853 (++!6643 lt!847853 (_2!15991 lt!847860)))))

(declare-fun lt!847976 () Unit!40100)

(declare-fun choose!13330 (List!27286 List!27286) Unit!40100)

(assert (=> d!676067 (= lt!847976 (choose!13330 lt!847853 (_2!15991 lt!847860)))))

(assert (=> d!676067 (= (lemmaConcatTwoListThenFirstIsPrefix!1542 lt!847853 (_2!15991 lt!847860)) lt!847976)))

(declare-fun bs!456769 () Bool)

(assert (= bs!456769 d!676067))

(assert (=> bs!456769 m!2712417))

(assert (=> bs!456769 m!2712417))

(declare-fun m!2712855 () Bool)

(assert (=> bs!456769 m!2712855))

(declare-fun m!2712857 () Bool)

(assert (=> bs!456769 m!2712857))

(assert (=> b!2284488 d!676067))

(declare-fun d!676069 () Bool)

(declare-fun lt!847977 () BalanceConc!17412)

(assert (=> d!676069 (= (list!10616 lt!847977) (originalCharacters!5117 (h!32595 tokens!456)))))

(assert (=> d!676069 (= lt!847977 (dynLambda!11797 (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))) (value!137709 (h!32595 tokens!456))))))

(assert (=> d!676069 (= (charsOf!2735 (h!32595 tokens!456)) lt!847977)))

(declare-fun b_lambda!72739 () Bool)

(assert (=> (not b_lambda!72739) (not d!676069)))

(assert (=> d!676069 t!203953))

(declare-fun b_and!180841 () Bool)

(assert (= b_and!180833 (and (=> t!203953 result!165726) b_and!180841)))

(assert (=> d!676069 t!203955))

(declare-fun b_and!180843 () Bool)

(assert (= b_and!180835 (and (=> t!203955 result!165728) b_and!180843)))

(assert (=> d!676069 t!203957))

(declare-fun b_and!180845 () Bool)

(assert (= b_and!180837 (and (=> t!203957 result!165730) b_and!180845)))

(assert (=> d!676069 t!203959))

(declare-fun b_and!180847 () Bool)

(assert (= b_and!180839 (and (=> t!203959 result!165732) b_and!180847)))

(declare-fun m!2712859 () Bool)

(assert (=> d!676069 m!2712859))

(assert (=> d!676069 m!2712813))

(assert (=> b!2284488 d!676069))

(declare-fun d!676071 () Bool)

(assert (=> d!676071 (= (list!10616 (charsOf!2735 (h!32595 tokens!456))) (list!10621 (c!362396 (charsOf!2735 (h!32595 tokens!456)))))))

(declare-fun bs!456770 () Bool)

(assert (= bs!456770 d!676071))

(declare-fun m!2712861 () Bool)

(assert (=> bs!456770 m!2712861))

(assert (=> b!2284488 d!676071))

(declare-fun d!676073 () Bool)

(assert (=> d!676073 (= (_2!15991 lt!847860) lt!847854)))

(declare-fun lt!847980 () Unit!40100)

(declare-fun choose!13331 (List!27286 List!27286 List!27286 List!27286 List!27286) Unit!40100)

(assert (=> d!676073 (= lt!847980 (choose!13331 lt!847853 (_2!15991 lt!847860) lt!847853 lt!847854 input!1722))))

(assert (=> d!676073 (isPrefix!2337 lt!847853 input!1722)))

(assert (=> d!676073 (= (lemmaSamePrefixThenSameSuffix!1038 lt!847853 (_2!15991 lt!847860) lt!847853 lt!847854 input!1722) lt!847980)))

(declare-fun bs!456771 () Bool)

(assert (= bs!456771 d!676073))

(declare-fun m!2712863 () Bool)

(assert (=> bs!456771 m!2712863))

(declare-fun m!2712865 () Bool)

(assert (=> bs!456771 m!2712865))

(assert (=> b!2284488 d!676073))

(declare-fun b!2284956 () Bool)

(declare-fun e!1463916 () Bool)

(declare-fun tp!724269 () Bool)

(assert (=> b!2284956 (= e!1463916 (and tp_is_empty!10611 tp!724269))))

(assert (=> b!2284491 (= tp!724192 e!1463916)))

(assert (= (and b!2284491 ((_ is Cons!27192) (t!203916 otherP!12))) b!2284956))

(declare-fun b!2284957 () Bool)

(declare-fun e!1463917 () Bool)

(declare-fun tp!724270 () Bool)

(assert (=> b!2284957 (= e!1463917 (and tp_is_empty!10611 tp!724270))))

(assert (=> b!2284479 (= tp!724193 e!1463917)))

(assert (= (and b!2284479 ((_ is Cons!27192) (t!203916 input!1722))) b!2284957))

(declare-fun b!2284968 () Bool)

(declare-fun e!1463920 () Bool)

(assert (=> b!2284968 (= e!1463920 tp_is_empty!10611)))

(declare-fun b!2284970 () Bool)

(declare-fun tp!724285 () Bool)

(assert (=> b!2284970 (= e!1463920 tp!724285)))

(declare-fun b!2284971 () Bool)

(declare-fun tp!724282 () Bool)

(declare-fun tp!724283 () Bool)

(assert (=> b!2284971 (= e!1463920 (and tp!724282 tp!724283))))

(declare-fun b!2284969 () Bool)

(declare-fun tp!724281 () Bool)

(declare-fun tp!724284 () Bool)

(assert (=> b!2284969 (= e!1463920 (and tp!724281 tp!724284))))

(assert (=> b!2284489 (= tp!724179 e!1463920)))

(assert (= (and b!2284489 ((_ is ElementMatch!6695) (regex!4347 r!2363))) b!2284968))

(assert (= (and b!2284489 ((_ is Concat!11205) (regex!4347 r!2363))) b!2284969))

(assert (= (and b!2284489 ((_ is Star!6695) (regex!4347 r!2363))) b!2284970))

(assert (= (and b!2284489 ((_ is Union!6695) (regex!4347 r!2363))) b!2284971))

(declare-fun b!2284972 () Bool)

(declare-fun e!1463921 () Bool)

(declare-fun tp!724286 () Bool)

(assert (=> b!2284972 (= e!1463921 (and tp_is_empty!10611 tp!724286))))

(assert (=> b!2284500 (= tp!724195 e!1463921)))

(assert (= (and b!2284500 ((_ is Cons!27192) (t!203916 suffix!886))) b!2284972))

(declare-fun b!2284973 () Bool)

(declare-fun e!1463922 () Bool)

(assert (=> b!2284973 (= e!1463922 tp_is_empty!10611)))

(declare-fun b!2284975 () Bool)

(declare-fun tp!724291 () Bool)

(assert (=> b!2284975 (= e!1463922 tp!724291)))

(declare-fun b!2284976 () Bool)

(declare-fun tp!724288 () Bool)

(declare-fun tp!724289 () Bool)

(assert (=> b!2284976 (= e!1463922 (and tp!724288 tp!724289))))

(declare-fun b!2284974 () Bool)

(declare-fun tp!724287 () Bool)

(declare-fun tp!724290 () Bool)

(assert (=> b!2284974 (= e!1463922 (and tp!724287 tp!724290))))

(assert (=> b!2284493 (= tp!724181 e!1463922)))

(assert (= (and b!2284493 ((_ is ElementMatch!6695) (regex!4347 otherR!12))) b!2284973))

(assert (= (and b!2284493 ((_ is Concat!11205) (regex!4347 otherR!12))) b!2284974))

(assert (= (and b!2284493 ((_ is Star!6695) (regex!4347 otherR!12))) b!2284975))

(assert (= (and b!2284493 ((_ is Union!6695) (regex!4347 otherR!12))) b!2284976))

(declare-fun b!2284987 () Bool)

(declare-fun b_free!68453 () Bool)

(declare-fun b_next!69157 () Bool)

(assert (=> b!2284987 (= b_free!68453 (not b_next!69157))))

(declare-fun tp!724301 () Bool)

(declare-fun b_and!180849 () Bool)

(assert (=> b!2284987 (= tp!724301 b_and!180849)))

(declare-fun b_free!68455 () Bool)

(declare-fun b_next!69159 () Bool)

(assert (=> b!2284987 (= b_free!68455 (not b_next!69159))))

(declare-fun tb!135927 () Bool)

(declare-fun t!203961 () Bool)

(assert (=> (and b!2284987 (= (toChars!5992 (transformation!4347 (h!32594 (t!203917 rules!1750)))) (toChars!5992 (transformation!4347 (rule!6675 (head!4962 tokens!456))))) t!203961) tb!135927))

(declare-fun result!165740 () Bool)

(assert (= result!165740 result!165716))

(assert (=> d!676045 t!203961))

(declare-fun t!203963 () Bool)

(declare-fun tb!135929 () Bool)

(assert (=> (and b!2284987 (= (toChars!5992 (transformation!4347 (h!32594 (t!203917 rules!1750)))) (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456))))) t!203963) tb!135929))

(declare-fun result!165742 () Bool)

(assert (= result!165742 result!165726))

(assert (=> b!2284919 t!203963))

(assert (=> d!676069 t!203963))

(declare-fun tp!724303 () Bool)

(declare-fun b_and!180851 () Bool)

(assert (=> b!2284987 (= tp!724303 (and (=> t!203961 result!165740) (=> t!203963 result!165742) b_and!180851))))

(declare-fun e!1463934 () Bool)

(assert (=> b!2284987 (= e!1463934 (and tp!724301 tp!724303))))

(declare-fun e!1463931 () Bool)

(declare-fun tp!724302 () Bool)

(declare-fun b!2284986 () Bool)

(assert (=> b!2284986 (= e!1463931 (and tp!724302 (inv!36778 (tag!4837 (h!32594 (t!203917 rules!1750)))) (inv!36781 (transformation!4347 (h!32594 (t!203917 rules!1750)))) e!1463934))))

(declare-fun b!2284985 () Bool)

(declare-fun e!1463932 () Bool)

(declare-fun tp!724300 () Bool)

(assert (=> b!2284985 (= e!1463932 (and e!1463931 tp!724300))))

(assert (=> b!2284503 (= tp!724188 e!1463932)))

(assert (= b!2284986 b!2284987))

(assert (= b!2284985 b!2284986))

(assert (= (and b!2284503 ((_ is Cons!27193) (t!203917 rules!1750))) b!2284985))

(declare-fun m!2712867 () Bool)

(assert (=> b!2284986 m!2712867))

(declare-fun m!2712869 () Bool)

(assert (=> b!2284986 m!2712869))

(declare-fun b!2284988 () Bool)

(declare-fun e!1463935 () Bool)

(assert (=> b!2284988 (= e!1463935 tp_is_empty!10611)))

(declare-fun b!2284990 () Bool)

(declare-fun tp!724308 () Bool)

(assert (=> b!2284990 (= e!1463935 tp!724308)))

(declare-fun b!2284991 () Bool)

(declare-fun tp!724305 () Bool)

(declare-fun tp!724306 () Bool)

(assert (=> b!2284991 (= e!1463935 (and tp!724305 tp!724306))))

(declare-fun b!2284989 () Bool)

(declare-fun tp!724304 () Bool)

(declare-fun tp!724307 () Bool)

(assert (=> b!2284989 (= e!1463935 (and tp!724304 tp!724307))))

(assert (=> b!2284475 (= tp!724191 e!1463935)))

(assert (= (and b!2284475 ((_ is ElementMatch!6695) (regex!4347 (rule!6675 (h!32595 tokens!456))))) b!2284988))

(assert (= (and b!2284475 ((_ is Concat!11205) (regex!4347 (rule!6675 (h!32595 tokens!456))))) b!2284989))

(assert (= (and b!2284475 ((_ is Star!6695) (regex!4347 (rule!6675 (h!32595 tokens!456))))) b!2284990))

(assert (= (and b!2284475 ((_ is Union!6695) (regex!4347 (rule!6675 (h!32595 tokens!456))))) b!2284991))

(declare-fun b!2284992 () Bool)

(declare-fun e!1463936 () Bool)

(assert (=> b!2284992 (= e!1463936 tp_is_empty!10611)))

(declare-fun b!2284994 () Bool)

(declare-fun tp!724313 () Bool)

(assert (=> b!2284994 (= e!1463936 tp!724313)))

(declare-fun b!2284995 () Bool)

(declare-fun tp!724310 () Bool)

(declare-fun tp!724311 () Bool)

(assert (=> b!2284995 (= e!1463936 (and tp!724310 tp!724311))))

(declare-fun b!2284993 () Bool)

(declare-fun tp!724309 () Bool)

(declare-fun tp!724312 () Bool)

(assert (=> b!2284993 (= e!1463936 (and tp!724309 tp!724312))))

(assert (=> b!2284485 (= tp!724180 e!1463936)))

(assert (= (and b!2284485 ((_ is ElementMatch!6695) (regex!4347 (h!32594 rules!1750)))) b!2284992))

(assert (= (and b!2284485 ((_ is Concat!11205) (regex!4347 (h!32594 rules!1750)))) b!2284993))

(assert (= (and b!2284485 ((_ is Star!6695) (regex!4347 (h!32594 rules!1750)))) b!2284994))

(assert (= (and b!2284485 ((_ is Union!6695) (regex!4347 (h!32594 rules!1750)))) b!2284995))

(declare-fun b!2284996 () Bool)

(declare-fun e!1463937 () Bool)

(declare-fun tp!724314 () Bool)

(assert (=> b!2284996 (= e!1463937 (and tp_is_empty!10611 tp!724314))))

(assert (=> b!2284474 (= tp!724185 e!1463937)))

(assert (= (and b!2284474 ((_ is Cons!27192) (originalCharacters!5117 (h!32595 tokens!456)))) b!2284996))

(declare-fun b!2285010 () Bool)

(declare-fun b_free!68457 () Bool)

(declare-fun b_next!69161 () Bool)

(assert (=> b!2285010 (= b_free!68457 (not b_next!69161))))

(declare-fun tp!724329 () Bool)

(declare-fun b_and!180853 () Bool)

(assert (=> b!2285010 (= tp!724329 b_and!180853)))

(declare-fun b_free!68459 () Bool)

(declare-fun b_next!69163 () Bool)

(assert (=> b!2285010 (= b_free!68459 (not b_next!69163))))

(declare-fun t!203965 () Bool)

(declare-fun tb!135931 () Bool)

(assert (=> (and b!2285010 (= (toChars!5992 (transformation!4347 (rule!6675 (h!32595 (t!203918 tokens!456))))) (toChars!5992 (transformation!4347 (rule!6675 (head!4962 tokens!456))))) t!203965) tb!135931))

(declare-fun result!165746 () Bool)

(assert (= result!165746 result!165716))

(assert (=> d!676045 t!203965))

(declare-fun t!203967 () Bool)

(declare-fun tb!135933 () Bool)

(assert (=> (and b!2285010 (= (toChars!5992 (transformation!4347 (rule!6675 (h!32595 (t!203918 tokens!456))))) (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456))))) t!203967) tb!135933))

(declare-fun result!165748 () Bool)

(assert (= result!165748 result!165726))

(assert (=> b!2284919 t!203967))

(assert (=> d!676069 t!203967))

(declare-fun tp!724326 () Bool)

(declare-fun b_and!180855 () Bool)

(assert (=> b!2285010 (= tp!724326 (and (=> t!203965 result!165746) (=> t!203967 result!165748) b_and!180855))))

(declare-fun b!2285008 () Bool)

(declare-fun e!1463955 () Bool)

(declare-fun tp!724328 () Bool)

(declare-fun e!1463953 () Bool)

(assert (=> b!2285008 (= e!1463955 (and (inv!21 (value!137709 (h!32595 (t!203918 tokens!456)))) e!1463953 tp!724328))))

(declare-fun e!1463950 () Bool)

(assert (=> b!2285010 (= e!1463950 (and tp!724329 tp!724326))))

(declare-fun e!1463951 () Bool)

(assert (=> b!2284478 (= tp!724186 e!1463951)))

(declare-fun tp!724325 () Bool)

(declare-fun b!2285007 () Bool)

(assert (=> b!2285007 (= e!1463951 (and (inv!36782 (h!32595 (t!203918 tokens!456))) e!1463955 tp!724325))))

(declare-fun b!2285009 () Bool)

(declare-fun tp!724327 () Bool)

(assert (=> b!2285009 (= e!1463953 (and tp!724327 (inv!36778 (tag!4837 (rule!6675 (h!32595 (t!203918 tokens!456))))) (inv!36781 (transformation!4347 (rule!6675 (h!32595 (t!203918 tokens!456))))) e!1463950))))

(assert (= b!2285009 b!2285010))

(assert (= b!2285008 b!2285009))

(assert (= b!2285007 b!2285008))

(assert (= (and b!2284478 ((_ is Cons!27194) (t!203918 tokens!456))) b!2285007))

(declare-fun m!2712871 () Bool)

(assert (=> b!2285008 m!2712871))

(declare-fun m!2712873 () Bool)

(assert (=> b!2285007 m!2712873))

(declare-fun m!2712875 () Bool)

(assert (=> b!2285009 m!2712875))

(declare-fun m!2712877 () Bool)

(assert (=> b!2285009 m!2712877))

(declare-fun b_lambda!72741 () Bool)

(assert (= b_lambda!72737 (or (and b!2284497 b_free!68431 (= (toChars!5992 (transformation!4347 r!2363)) (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))))) (and b!2284502 b_free!68443 (= (toChars!5992 (transformation!4347 otherR!12)) (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))))) (and b!2284476 b_free!68439 (= (toChars!5992 (transformation!4347 (h!32594 rules!1750))) (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))))) (and b!2285010 b_free!68459 (= (toChars!5992 (transformation!4347 (rule!6675 (h!32595 (t!203918 tokens!456))))) (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))))) (and b!2284480 b_free!68435) (and b!2284987 b_free!68455 (= (toChars!5992 (transformation!4347 (h!32594 (t!203917 rules!1750)))) (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))))) b_lambda!72741)))

(declare-fun b_lambda!72743 () Bool)

(assert (= b_lambda!72739 (or (and b!2284497 b_free!68431 (= (toChars!5992 (transformation!4347 r!2363)) (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))))) (and b!2284502 b_free!68443 (= (toChars!5992 (transformation!4347 otherR!12)) (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))))) (and b!2284476 b_free!68439 (= (toChars!5992 (transformation!4347 (h!32594 rules!1750))) (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))))) (and b!2285010 b_free!68459 (= (toChars!5992 (transformation!4347 (rule!6675 (h!32595 (t!203918 tokens!456))))) (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))))) (and b!2284480 b_free!68435) (and b!2284987 b_free!68455 (= (toChars!5992 (transformation!4347 (h!32594 (t!203917 rules!1750)))) (toChars!5992 (transformation!4347 (rule!6675 (h!32595 tokens!456)))))) b_lambda!72743)))

(check-sat (not b!2284673) (not b!2284880) (not b!2284653) b_and!180845 (not d!675913) (not b!2284995) (not b!2284660) (not b_next!69161) (not d!675991) b_and!180789 (not b!2284914) b_and!180785 (not d!676069) (not b_next!69137) (not d!675993) (not d!676071) (not b!2284665) (not b_next!69163) (not b!2284885) (not d!676049) (not b!2285008) (not tb!135911) (not b!2284921) (not b!2284950) (not b!2284832) (not b!2284994) (not b_lambda!72741) (not b_next!69135) (not b!2284830) (not b!2284976) (not d!675979) (not bm!136511) (not b!2284656) (not b!2284969) (not b!2284525) (not b!2284899) (not b!2284913) b_and!180777 b_and!180855 (not b_next!69141) (not b_lambda!72743) (not b!2284898) (not b!2284897) (not d!675915) (not b!2284986) (not b!2284989) (not b!2284990) (not b_next!69159) (not b!2284939) (not b!2284975) (not b!2284938) (not d!676053) (not b!2284654) (not b!2284937) b_and!180853 (not b!2284927) (not b!2284996) (not b!2284831) b_and!180781 (not b!2284876) (not tb!135919) (not b!2284934) (not b!2284666) b_and!180849 (not d!676073) (not b!2284970) (not b!2284974) (not d!676041) (not bm!136505) (not b!2284949) (not b!2284519) (not d!676067) (not b_next!69147) b_and!180847 (not b!2284902) (not b_next!69157) (not b!2284912) b_and!180843 (not b!2284658) (not b!2284971) (not b!2284657) (not b_next!69145) (not d!675987) (not d!675907) (not b!2284929) (not b!2284868) (not d!675995) (not b!2284659) (not b!2284919) (not d!676065) (not b!2284834) (not b!2284877) (not b!2284956) (not d!676061) (not d!676043) (not b!2284829) (not d!676031) (not b!2284515) (not d!676045) tp_is_empty!10611 (not b!2285009) (not d!675989) (not b!2284985) (not d!675999) b_and!180851 (not b_next!69133) (not b_lambda!72735) (not b_next!69143) (not b!2284664) (not b!2284957) (not d!675917) (not b!2284655) (not d!675997) (not b_next!69139) (not b!2284835) (not b!2284972) (not d!676037) (not b!2284993) (not b!2284991) (not d!676055) (not b!2284869) b_and!180841 (not b!2284878) (not b!2285007) (not d!676027) (not b!2284920) (not b!2284838) (not d!675921) (not d!676039))
(check-sat b_and!180789 b_and!180785 (not b_next!69137) (not b_next!69163) (not b_next!69135) (not b_next!69159) b_and!180853 b_and!180781 b_and!180849 (not b_next!69157) b_and!180843 (not b_next!69145) (not b_next!69143) (not b_next!69139) b_and!180841 b_and!180845 (not b_next!69161) b_and!180777 b_and!180855 (not b_next!69141) (not b_next!69147) b_and!180847 b_and!180851 (not b_next!69133))
