; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!274008 () Bool)

(assert start!274008)

(declare-fun b!2823385 () Bool)

(declare-fun b_free!80829 () Bool)

(declare-fun b_next!81533 () Bool)

(assert (=> b!2823385 (= b_free!80829 (not b_next!81533))))

(declare-fun tp!901710 () Bool)

(declare-fun b_and!206311 () Bool)

(assert (=> b!2823385 (= tp!901710 b_and!206311)))

(declare-fun b_free!80831 () Bool)

(declare-fun b_next!81535 () Bool)

(assert (=> b!2823385 (= b_free!80831 (not b_next!81535))))

(declare-fun tp!901707 () Bool)

(declare-fun b_and!206313 () Bool)

(assert (=> b!2823385 (= tp!901707 b_and!206313)))

(declare-fun b!2823384 () Bool)

(declare-fun b_free!80833 () Bool)

(declare-fun b_next!81537 () Bool)

(assert (=> b!2823384 (= b_free!80833 (not b_next!81537))))

(declare-fun tp!901706 () Bool)

(declare-fun b_and!206315 () Bool)

(assert (=> b!2823384 (= tp!901706 b_and!206315)))

(declare-fun b_free!80835 () Bool)

(declare-fun b_next!81539 () Bool)

(assert (=> b!2823384 (= b_free!80835 (not b_next!81539))))

(declare-fun tp!901708 () Bool)

(declare-fun b_and!206317 () Bool)

(assert (=> b!2823384 (= tp!901708 b_and!206317)))

(declare-fun b!2823409 () Bool)

(declare-fun e!1786430 () Bool)

(assert (=> b!2823409 (= e!1786430 true)))

(declare-fun b!2823408 () Bool)

(declare-fun e!1786429 () Bool)

(assert (=> b!2823408 (= e!1786429 e!1786430)))

(declare-fun b!2823407 () Bool)

(declare-fun e!1786428 () Bool)

(assert (=> b!2823407 (= e!1786428 e!1786429)))

(declare-fun b!2823389 () Bool)

(assert (=> b!2823389 e!1786428))

(assert (= b!2823408 b!2823409))

(assert (= b!2823407 b!2823408))

(declare-datatypes ((C!16890 0))(
  ( (C!16891 (val!10425 Int)) )
))
(declare-datatypes ((List!33258 0))(
  ( (Nil!33134) (Cons!33134 (h!38554 (_ BitVec 16)) (t!230749 List!33258)) )
))
(declare-datatypes ((TokenValue!5194 0))(
  ( (FloatLiteralValue!10388 (text!36803 List!33258)) (TokenValueExt!5193 (__x!22061 Int)) (Broken!25970 (value!159769 List!33258)) (Object!5317) (End!5194) (Def!5194) (Underscore!5194) (Match!5194) (Else!5194) (Error!5194) (Case!5194) (If!5194) (Extends!5194) (Abstract!5194) (Class!5194) (Val!5194) (DelimiterValue!10388 (del!5254 List!33258)) (KeywordValue!5200 (value!159770 List!33258)) (CommentValue!10388 (value!159771 List!33258)) (WhitespaceValue!10388 (value!159772 List!33258)) (IndentationValue!5194 (value!159773 List!33258)) (String!36427) (Int32!5194) (Broken!25971 (value!159774 List!33258)) (Boolean!5195) (Unit!47130) (OperatorValue!5197 (op!5254 List!33258)) (IdentifierValue!10388 (value!159775 List!33258)) (IdentifierValue!10389 (value!159776 List!33258)) (WhitespaceValue!10389 (value!159777 List!33258)) (True!10388) (False!10388) (Broken!25972 (value!159778 List!33258)) (Broken!25973 (value!159779 List!33258)) (True!10389) (RightBrace!5194) (RightBracket!5194) (Colon!5194) (Null!5194) (Comma!5194) (LeftBracket!5194) (False!10389) (LeftBrace!5194) (ImaginaryLiteralValue!5194 (text!36804 List!33258)) (StringLiteralValue!15582 (value!159780 List!33258)) (EOFValue!5194 (value!159781 List!33258)) (IdentValue!5194 (value!159782 List!33258)) (DelimiterValue!10389 (value!159783 List!33258)) (DedentValue!5194 (value!159784 List!33258)) (NewLineValue!5194 (value!159785 List!33258)) (IntegerValue!15582 (value!159786 (_ BitVec 32)) (text!36805 List!33258)) (IntegerValue!15583 (value!159787 Int) (text!36806 List!33258)) (Times!5194) (Or!5194) (Equal!5194) (Minus!5194) (Broken!25974 (value!159788 List!33258)) (And!5194) (Div!5194) (LessEqual!5194) (Mod!5194) (Concat!13548) (Not!5194) (Plus!5194) (SpaceValue!5194 (value!159789 List!33258)) (IntegerValue!15584 (value!159790 Int) (text!36807 List!33258)) (StringLiteralValue!15583 (text!36808 List!33258)) (FloatLiteralValue!10389 (text!36809 List!33258)) (BytesLiteralValue!5194 (value!159791 List!33258)) (CommentValue!10389 (value!159792 List!33258)) (StringLiteralValue!15584 (value!159793 List!33258)) (ErrorTokenValue!5194 (msg!5255 List!33258)) )
))
(declare-datatypes ((List!33259 0))(
  ( (Nil!33135) (Cons!33135 (h!38555 C!16890) (t!230750 List!33259)) )
))
(declare-datatypes ((IArray!20571 0))(
  ( (IArray!20572 (innerList!10343 List!33259)) )
))
(declare-datatypes ((Conc!10283 0))(
  ( (Node!10283 (left!25030 Conc!10283) (right!25360 Conc!10283) (csize!20796 Int) (cheight!10494 Int)) (Leaf!15657 (xs!13395 IArray!20571) (csize!20797 Int)) (Empty!10283) )
))
(declare-datatypes ((BalanceConc!20204 0))(
  ( (BalanceConc!20205 (c!457248 Conc!10283)) )
))
(declare-datatypes ((TokenValueInjection!9816 0))(
  ( (TokenValueInjection!9817 (toValue!6986 Int) (toChars!6845 Int)) )
))
(declare-datatypes ((Regex!8354 0))(
  ( (ElementMatch!8354 (c!457249 C!16890)) (Concat!13549 (regOne!17220 Regex!8354) (regTwo!17220 Regex!8354)) (EmptyExpr!8354) (Star!8354 (reg!8683 Regex!8354)) (EmptyLang!8354) (Union!8354 (regOne!17221 Regex!8354) (regTwo!17221 Regex!8354)) )
))
(declare-datatypes ((String!36428 0))(
  ( (String!36429 (value!159794 String)) )
))
(declare-datatypes ((Rule!9728 0))(
  ( (Rule!9729 (regex!4964 Regex!8354) (tag!5468 String!36428) (isSeparator!4964 Bool) (transformation!4964 TokenValueInjection!9816)) )
))
(declare-datatypes ((List!33260 0))(
  ( (Nil!33136) (Cons!33136 (h!38556 Rule!9728) (t!230751 List!33260)) )
))
(declare-fun rules!4424 () List!33260)

(assert (= (and b!2823389 (is-Cons!33136 rules!4424)) b!2823407))

(declare-fun order!17637 () Int)

(declare-fun lambda!103700 () Int)

(declare-fun order!17639 () Int)

(declare-fun dynLambda!13885 (Int Int) Int)

(declare-fun dynLambda!13886 (Int Int) Int)

(assert (=> b!2823409 (< (dynLambda!13885 order!17637 (toValue!6986 (transformation!4964 (h!38556 rules!4424)))) (dynLambda!13886 order!17639 lambda!103700))))

(declare-fun order!17641 () Int)

(declare-fun dynLambda!13887 (Int Int) Int)

(assert (=> b!2823409 (< (dynLambda!13887 order!17641 (toChars!6845 (transformation!4964 (h!38556 rules!4424)))) (dynLambda!13886 order!17639 lambda!103700))))

(declare-fun e!1786421 () Bool)

(assert (=> b!2823384 (= e!1786421 (and tp!901706 tp!901708))))

(declare-fun e!1786419 () Bool)

(assert (=> b!2823385 (= e!1786419 (and tp!901710 tp!901707))))

(declare-fun tp!901709 () Bool)

(declare-fun b!2823386 () Bool)

(declare-fun e!1786416 () Bool)

(declare-fun inv!45064 (String!36428) Bool)

(declare-fun inv!45067 (TokenValueInjection!9816) Bool)

(assert (=> b!2823386 (= e!1786416 (and tp!901709 (inv!45064 (tag!5468 (h!38556 rules!4424))) (inv!45067 (transformation!4964 (h!38556 rules!4424))) e!1786421))))

(declare-fun b!2823387 () Bool)

(declare-fun res!1174991 () Bool)

(declare-fun e!1786418 () Bool)

(assert (=> b!2823387 (=> (not res!1174991) (not e!1786418))))

(declare-datatypes ((Token!9330 0))(
  ( (Token!9331 (value!159795 TokenValue!5194) (rule!7392 Rule!9728) (size!25797 Int) (originalCharacters!5696 List!33259)) )
))
(declare-datatypes ((List!33261 0))(
  ( (Nil!33137) (Cons!33137 (h!38557 Token!9330) (t!230752 List!33261)) )
))
(declare-fun l!6581 () List!33261)

(assert (=> b!2823387 (= res!1174991 (is-Nil!33137 l!6581))))

(declare-fun res!1174986 () Bool)

(assert (=> start!274008 (=> (not res!1174986) (not e!1786418))))

(declare-datatypes ((LexerInterface!4555 0))(
  ( (LexerInterfaceExt!4552 (__x!22062 Int)) (Lexer!4553) )
))
(declare-fun thiss!27755 () LexerInterface!4555)

(assert (=> start!274008 (= res!1174986 (is-Lexer!4553 thiss!27755))))

(assert (=> start!274008 e!1786418))

(assert (=> start!274008 true))

(declare-fun e!1786413 () Bool)

(assert (=> start!274008 e!1786413))

(declare-fun e!1786417 () Bool)

(assert (=> start!274008 e!1786417))

(declare-fun e!1786410 () Bool)

(declare-fun b!2823388 () Bool)

(declare-fun tp!901705 () Bool)

(declare-fun inv!45068 (Token!9330) Bool)

(assert (=> b!2823388 (= e!1786417 (and (inv!45068 (h!38557 l!6581)) e!1786410 tp!901705))))

(declare-fun lt!1007620 () List!33261)

(declare-fun tokensListTwoByTwoPredicateSeparableList!692 (LexerInterface!4555 List!33261 List!33260) Bool)

(assert (=> b!2823389 (= e!1786418 (not (tokensListTwoByTwoPredicateSeparableList!692 thiss!27755 lt!1007620 rules!4424)))))

(declare-fun forall!6794 (List!33261 Int) Bool)

(assert (=> b!2823389 (forall!6794 lt!1007620 lambda!103700)))

(declare-datatypes ((Unit!47131 0))(
  ( (Unit!47132) )
))
(declare-fun lt!1007621 () Unit!47131)

(declare-fun lemmaForallSubseq!228 (List!33261 List!33261 Int) Unit!47131)

(assert (=> b!2823389 (= lt!1007621 (lemmaForallSubseq!228 lt!1007620 l!6581 lambda!103700))))

(declare-fun e!1786409 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1607 (LexerInterface!4555 List!33260 List!33261) Bool)

(assert (=> b!2823389 (= (rulesProduceEachTokenIndividuallyList!1607 thiss!27755 rules!4424 lt!1007620) e!1786409)))

(declare-fun res!1174988 () Bool)

(assert (=> b!2823389 (=> res!1174988 e!1786409)))

(assert (=> b!2823389 (= res!1174988 (not (is-Cons!33137 lt!1007620)))))

(declare-fun i!1730 () Int)

(declare-fun take!558 (List!33261 Int) List!33261)

(assert (=> b!2823389 (= lt!1007620 (take!558 l!6581 i!1730))))

(declare-fun e!1786411 () Bool)

(declare-fun b!2823390 () Bool)

(declare-fun tp!901711 () Bool)

(assert (=> b!2823390 (= e!1786411 (and tp!901711 (inv!45064 (tag!5468 (rule!7392 (h!38557 l!6581)))) (inv!45067 (transformation!4964 (rule!7392 (h!38557 l!6581)))) e!1786419))))

(declare-fun b!2823391 () Bool)

(declare-fun e!1786415 () Bool)

(assert (=> b!2823391 (= e!1786415 (rulesProduceEachTokenIndividuallyList!1607 thiss!27755 rules!4424 (t!230752 lt!1007620)))))

(declare-fun b!2823392 () Bool)

(declare-fun res!1174989 () Bool)

(assert (=> b!2823392 (=> (not res!1174989) (not e!1786418))))

(assert (=> b!2823392 (= res!1174989 (tokensListTwoByTwoPredicateSeparableList!692 thiss!27755 l!6581 rules!4424))))

(declare-fun b!2823393 () Bool)

(declare-fun res!1174993 () Bool)

(assert (=> b!2823393 (=> (not res!1174993) (not e!1786418))))

(declare-fun isEmpty!18325 (List!33260) Bool)

(assert (=> b!2823393 (= res!1174993 (not (isEmpty!18325 rules!4424)))))

(declare-fun b!2823394 () Bool)

(declare-fun res!1174990 () Bool)

(assert (=> b!2823394 (=> (not res!1174990) (not e!1786418))))

(assert (=> b!2823394 (= res!1174990 (rulesProduceEachTokenIndividuallyList!1607 thiss!27755 rules!4424 l!6581))))

(declare-fun b!2823395 () Bool)

(declare-fun tp!901712 () Bool)

(assert (=> b!2823395 (= e!1786413 (and e!1786416 tp!901712))))

(declare-fun b!2823396 () Bool)

(declare-fun res!1174992 () Bool)

(assert (=> b!2823396 (=> (not res!1174992) (not e!1786418))))

(declare-fun rulesInvariant!3973 (LexerInterface!4555 List!33260) Bool)

(assert (=> b!2823396 (= res!1174992 (rulesInvariant!3973 thiss!27755 rules!4424))))

(declare-fun b!2823397 () Bool)

(declare-fun tp!901713 () Bool)

(declare-fun inv!21 (TokenValue!5194) Bool)

(assert (=> b!2823397 (= e!1786410 (and (inv!21 (value!159795 (h!38557 l!6581))) e!1786411 tp!901713))))

(declare-fun b!2823398 () Bool)

(assert (=> b!2823398 (= e!1786409 e!1786415)))

(declare-fun res!1174987 () Bool)

(assert (=> b!2823398 (=> (not res!1174987) (not e!1786415))))

(declare-fun rulesProduceIndividualToken!2093 (LexerInterface!4555 List!33260 Token!9330) Bool)

(assert (=> b!2823398 (= res!1174987 (rulesProduceIndividualToken!2093 thiss!27755 rules!4424 (h!38557 lt!1007620)))))

(assert (= (and start!274008 res!1174986) b!2823393))

(assert (= (and b!2823393 res!1174993) b!2823396))

(assert (= (and b!2823396 res!1174992) b!2823394))

(assert (= (and b!2823394 res!1174990) b!2823392))

(assert (= (and b!2823392 res!1174989) b!2823387))

(assert (= (and b!2823387 res!1174991) b!2823389))

(assert (= (and b!2823389 (not res!1174988)) b!2823398))

(assert (= (and b!2823398 res!1174987) b!2823391))

(assert (= b!2823386 b!2823384))

(assert (= b!2823395 b!2823386))

(assert (= (and start!274008 (is-Cons!33136 rules!4424)) b!2823395))

(assert (= b!2823390 b!2823385))

(assert (= b!2823397 b!2823390))

(assert (= b!2823388 b!2823397))

(assert (= (and start!274008 (is-Cons!33137 l!6581)) b!2823388))

(declare-fun m!3254087 () Bool)

(assert (=> b!2823386 m!3254087))

(declare-fun m!3254089 () Bool)

(assert (=> b!2823386 m!3254089))

(declare-fun m!3254091 () Bool)

(assert (=> b!2823390 m!3254091))

(declare-fun m!3254093 () Bool)

(assert (=> b!2823390 m!3254093))

(declare-fun m!3254095 () Bool)

(assert (=> b!2823397 m!3254095))

(declare-fun m!3254097 () Bool)

(assert (=> b!2823393 m!3254097))

(declare-fun m!3254099 () Bool)

(assert (=> b!2823394 m!3254099))

(declare-fun m!3254101 () Bool)

(assert (=> b!2823392 m!3254101))

(declare-fun m!3254103 () Bool)

(assert (=> b!2823388 m!3254103))

(declare-fun m!3254105 () Bool)

(assert (=> b!2823396 m!3254105))

(declare-fun m!3254107 () Bool)

(assert (=> b!2823389 m!3254107))

(declare-fun m!3254109 () Bool)

(assert (=> b!2823389 m!3254109))

(declare-fun m!3254111 () Bool)

(assert (=> b!2823389 m!3254111))

(declare-fun m!3254113 () Bool)

(assert (=> b!2823389 m!3254113))

(declare-fun m!3254115 () Bool)

(assert (=> b!2823389 m!3254115))

(declare-fun m!3254117 () Bool)

(assert (=> b!2823391 m!3254117))

(declare-fun m!3254119 () Bool)

(assert (=> b!2823398 m!3254119))

(push 1)

(assert (not b!2823398))

(assert (not b!2823395))

(assert (not b!2823391))

(assert (not b!2823392))

(assert (not b!2823396))

(assert (not b_next!81537))

(assert (not b!2823389))

(assert b_and!206315)

(assert (not b!2823390))

(assert b_and!206311)

(assert (not b!2823388))

(assert (not b_next!81539))

(assert (not b!2823393))

(assert (not b_next!81533))

(assert (not b_next!81535))

(assert b_and!206313)

(assert (not b!2823407))

(assert b_and!206317)

(assert (not b!2823397))

(assert (not b!2823394))

(assert (not b!2823386))

(check-sat)

(pop 1)

(push 1)

(assert b_and!206311)

(assert (not b_next!81539))

(assert b_and!206313)

(assert (not b_next!81537))

(assert b_and!206317)

(assert b_and!206315)

(assert (not b_next!81533))

(assert (not b_next!81535))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!819794 () Bool)

(declare-fun res!1175024 () Bool)

(declare-fun e!1786481 () Bool)

(assert (=> d!819794 (=> (not res!1175024) (not e!1786481))))

(declare-fun rulesValid!1827 (LexerInterface!4555 List!33260) Bool)

(assert (=> d!819794 (= res!1175024 (rulesValid!1827 thiss!27755 rules!4424))))

(assert (=> d!819794 (= (rulesInvariant!3973 thiss!27755 rules!4424) e!1786481)))

(declare-fun b!2823468 () Bool)

(declare-datatypes ((List!33266 0))(
  ( (Nil!33142) (Cons!33142 (h!38562 String!36428) (t!230772 List!33266)) )
))
(declare-fun noDuplicateTag!1823 (LexerInterface!4555 List!33260 List!33266) Bool)

(assert (=> b!2823468 (= e!1786481 (noDuplicateTag!1823 thiss!27755 rules!4424 Nil!33142))))

(assert (= (and d!819794 res!1175024) b!2823468))

(declare-fun m!3254155 () Bool)

(assert (=> d!819794 m!3254155))

(declare-fun m!3254157 () Bool)

(assert (=> b!2823468 m!3254157))

(assert (=> b!2823396 d!819794))

(declare-fun d!819796 () Bool)

(assert (=> d!819796 (= (inv!45064 (tag!5468 (h!38556 rules!4424))) (= (mod (str.len (value!159794 (tag!5468 (h!38556 rules!4424)))) 2) 0))))

(assert (=> b!2823386 d!819796))

(declare-fun d!819798 () Bool)

(declare-fun res!1175027 () Bool)

(declare-fun e!1786484 () Bool)

(assert (=> d!819798 (=> (not res!1175027) (not e!1786484))))

(declare-fun semiInverseModEq!2057 (Int Int) Bool)

(assert (=> d!819798 (= res!1175027 (semiInverseModEq!2057 (toChars!6845 (transformation!4964 (h!38556 rules!4424))) (toValue!6986 (transformation!4964 (h!38556 rules!4424)))))))

(assert (=> d!819798 (= (inv!45067 (transformation!4964 (h!38556 rules!4424))) e!1786484)))

(declare-fun b!2823471 () Bool)

(declare-fun equivClasses!1956 (Int Int) Bool)

(assert (=> b!2823471 (= e!1786484 (equivClasses!1956 (toChars!6845 (transformation!4964 (h!38556 rules!4424))) (toValue!6986 (transformation!4964 (h!38556 rules!4424)))))))

(assert (= (and d!819798 res!1175027) b!2823471))

(declare-fun m!3254159 () Bool)

(assert (=> d!819798 m!3254159))

(declare-fun m!3254161 () Bool)

(assert (=> b!2823471 m!3254161))

(assert (=> b!2823386 d!819798))

(declare-fun b!2823482 () Bool)

(declare-fun e!1786493 () Bool)

(declare-fun inv!15 (TokenValue!5194) Bool)

(assert (=> b!2823482 (= e!1786493 (inv!15 (value!159795 (h!38557 l!6581))))))

(declare-fun b!2823483 () Bool)

(declare-fun e!1786491 () Bool)

(declare-fun inv!17 (TokenValue!5194) Bool)

(assert (=> b!2823483 (= e!1786491 (inv!17 (value!159795 (h!38557 l!6581))))))

(declare-fun b!2823484 () Bool)

(declare-fun e!1786492 () Bool)

(assert (=> b!2823484 (= e!1786492 e!1786491)))

(declare-fun c!457257 () Bool)

(assert (=> b!2823484 (= c!457257 (is-IntegerValue!15583 (value!159795 (h!38557 l!6581))))))

(declare-fun b!2823485 () Bool)

(declare-fun res!1175030 () Bool)

(assert (=> b!2823485 (=> res!1175030 e!1786493)))

(assert (=> b!2823485 (= res!1175030 (not (is-IntegerValue!15584 (value!159795 (h!38557 l!6581)))))))

(assert (=> b!2823485 (= e!1786491 e!1786493)))

(declare-fun d!819800 () Bool)

(declare-fun c!457256 () Bool)

(assert (=> d!819800 (= c!457256 (is-IntegerValue!15582 (value!159795 (h!38557 l!6581))))))

(assert (=> d!819800 (= (inv!21 (value!159795 (h!38557 l!6581))) e!1786492)))

(declare-fun b!2823486 () Bool)

(declare-fun inv!16 (TokenValue!5194) Bool)

(assert (=> b!2823486 (= e!1786492 (inv!16 (value!159795 (h!38557 l!6581))))))

(assert (= (and d!819800 c!457256) b!2823486))

(assert (= (and d!819800 (not c!457256)) b!2823484))

(assert (= (and b!2823484 c!457257) b!2823483))

(assert (= (and b!2823484 (not c!457257)) b!2823485))

(assert (= (and b!2823485 (not res!1175030)) b!2823482))

(declare-fun m!3254163 () Bool)

(assert (=> b!2823482 m!3254163))

(declare-fun m!3254165 () Bool)

(assert (=> b!2823483 m!3254165))

(declare-fun m!3254167 () Bool)

(assert (=> b!2823486 m!3254167))

(assert (=> b!2823397 d!819800))

(declare-fun d!819802 () Bool)

(declare-fun lt!1007633 () Bool)

(declare-fun e!1786501 () Bool)

(assert (=> d!819802 (= lt!1007633 e!1786501)))

(declare-fun res!1175041 () Bool)

(assert (=> d!819802 (=> (not res!1175041) (not e!1786501))))

(declare-datatypes ((IArray!20575 0))(
  ( (IArray!20576 (innerList!10345 List!33261)) )
))
(declare-datatypes ((Conc!10285 0))(
  ( (Node!10285 (left!25034 Conc!10285) (right!25364 Conc!10285) (csize!20800 Int) (cheight!10496 Int)) (Leaf!15659 (xs!13397 IArray!20575) (csize!20801 Int)) (Empty!10285) )
))
(declare-datatypes ((BalanceConc!20208 0))(
  ( (BalanceConc!20209 (c!457267 Conc!10285)) )
))
(declare-fun list!12417 (BalanceConc!20208) List!33261)

(declare-datatypes ((tuple2!33398 0))(
  ( (tuple2!33399 (_1!19792 BalanceConc!20208) (_2!19792 BalanceConc!20204)) )
))
(declare-fun lex!1995 (LexerInterface!4555 List!33260 BalanceConc!20204) tuple2!33398)

(declare-fun print!1714 (LexerInterface!4555 BalanceConc!20208) BalanceConc!20204)

(declare-fun singletonSeq!2140 (Token!9330) BalanceConc!20208)

(assert (=> d!819802 (= res!1175041 (= (list!12417 (_1!19792 (lex!1995 thiss!27755 rules!4424 (print!1714 thiss!27755 (singletonSeq!2140 (h!38557 lt!1007620)))))) (list!12417 (singletonSeq!2140 (h!38557 lt!1007620)))))))

(declare-fun e!1786502 () Bool)

(assert (=> d!819802 (= lt!1007633 e!1786502)))

(declare-fun res!1175040 () Bool)

(assert (=> d!819802 (=> (not res!1175040) (not e!1786502))))

(declare-fun lt!1007632 () tuple2!33398)

(declare-fun size!25799 (BalanceConc!20208) Int)

(assert (=> d!819802 (= res!1175040 (= (size!25799 (_1!19792 lt!1007632)) 1))))

(assert (=> d!819802 (= lt!1007632 (lex!1995 thiss!27755 rules!4424 (print!1714 thiss!27755 (singletonSeq!2140 (h!38557 lt!1007620)))))))

(assert (=> d!819802 (not (isEmpty!18325 rules!4424))))

(assert (=> d!819802 (= (rulesProduceIndividualToken!2093 thiss!27755 rules!4424 (h!38557 lt!1007620)) lt!1007633)))

(declare-fun b!2823496 () Bool)

(declare-fun res!1175042 () Bool)

(assert (=> b!2823496 (=> (not res!1175042) (not e!1786502))))

(declare-fun apply!7739 (BalanceConc!20208 Int) Token!9330)

(assert (=> b!2823496 (= res!1175042 (= (apply!7739 (_1!19792 lt!1007632) 0) (h!38557 lt!1007620)))))

(declare-fun b!2823497 () Bool)

(declare-fun isEmpty!18327 (BalanceConc!20204) Bool)

(assert (=> b!2823497 (= e!1786502 (isEmpty!18327 (_2!19792 lt!1007632)))))

(declare-fun b!2823498 () Bool)

(assert (=> b!2823498 (= e!1786501 (isEmpty!18327 (_2!19792 (lex!1995 thiss!27755 rules!4424 (print!1714 thiss!27755 (singletonSeq!2140 (h!38557 lt!1007620)))))))))

(assert (= (and d!819802 res!1175040) b!2823496))

(assert (= (and b!2823496 res!1175042) b!2823497))

(assert (= (and d!819802 res!1175041) b!2823498))

(declare-fun m!3254173 () Bool)

(assert (=> d!819802 m!3254173))

(declare-fun m!3254175 () Bool)

(assert (=> d!819802 m!3254175))

(declare-fun m!3254177 () Bool)

(assert (=> d!819802 m!3254177))

(declare-fun m!3254179 () Bool)

(assert (=> d!819802 m!3254179))

(assert (=> d!819802 m!3254173))

(declare-fun m!3254181 () Bool)

(assert (=> d!819802 m!3254181))

(declare-fun m!3254183 () Bool)

(assert (=> d!819802 m!3254183))

(assert (=> d!819802 m!3254173))

(assert (=> d!819802 m!3254177))

(assert (=> d!819802 m!3254097))

(declare-fun m!3254185 () Bool)

(assert (=> b!2823496 m!3254185))

(declare-fun m!3254187 () Bool)

(assert (=> b!2823497 m!3254187))

(assert (=> b!2823498 m!3254173))

(assert (=> b!2823498 m!3254173))

(assert (=> b!2823498 m!3254177))

(assert (=> b!2823498 m!3254177))

(assert (=> b!2823498 m!3254179))

(declare-fun m!3254189 () Bool)

(assert (=> b!2823498 m!3254189))

(assert (=> b!2823398 d!819802))

(declare-fun d!819812 () Bool)

(declare-fun res!1175047 () Bool)

(declare-fun e!1786505 () Bool)

(assert (=> d!819812 (=> (not res!1175047) (not e!1786505))))

(declare-fun isEmpty!18328 (List!33259) Bool)

(assert (=> d!819812 (= res!1175047 (not (isEmpty!18328 (originalCharacters!5696 (h!38557 l!6581)))))))

(assert (=> d!819812 (= (inv!45068 (h!38557 l!6581)) e!1786505)))

(declare-fun b!2823503 () Bool)

(declare-fun res!1175048 () Bool)

(assert (=> b!2823503 (=> (not res!1175048) (not e!1786505))))

(declare-fun list!12418 (BalanceConc!20204) List!33259)

(declare-fun dynLambda!13891 (Int TokenValue!5194) BalanceConc!20204)

(assert (=> b!2823503 (= res!1175048 (= (originalCharacters!5696 (h!38557 l!6581)) (list!12418 (dynLambda!13891 (toChars!6845 (transformation!4964 (rule!7392 (h!38557 l!6581)))) (value!159795 (h!38557 l!6581))))))))

(declare-fun b!2823504 () Bool)

(declare-fun size!25800 (List!33259) Int)

(assert (=> b!2823504 (= e!1786505 (= (size!25797 (h!38557 l!6581)) (size!25800 (originalCharacters!5696 (h!38557 l!6581)))))))

(assert (= (and d!819812 res!1175047) b!2823503))

(assert (= (and b!2823503 res!1175048) b!2823504))

(declare-fun b_lambda!84619 () Bool)

(assert (=> (not b_lambda!84619) (not b!2823503)))

(declare-fun t!230761 () Bool)

(declare-fun tb!153941 () Bool)

(assert (=> (and b!2823385 (= (toChars!6845 (transformation!4964 (rule!7392 (h!38557 l!6581)))) (toChars!6845 (transformation!4964 (rule!7392 (h!38557 l!6581))))) t!230761) tb!153941))

(declare-fun b!2823509 () Bool)

(declare-fun e!1786508 () Bool)

(declare-fun tp!901743 () Bool)

(declare-fun inv!45071 (Conc!10283) Bool)

(assert (=> b!2823509 (= e!1786508 (and (inv!45071 (c!457248 (dynLambda!13891 (toChars!6845 (transformation!4964 (rule!7392 (h!38557 l!6581)))) (value!159795 (h!38557 l!6581))))) tp!901743))))

(declare-fun result!191698 () Bool)

(declare-fun inv!45072 (BalanceConc!20204) Bool)

(assert (=> tb!153941 (= result!191698 (and (inv!45072 (dynLambda!13891 (toChars!6845 (transformation!4964 (rule!7392 (h!38557 l!6581)))) (value!159795 (h!38557 l!6581)))) e!1786508))))

(assert (= tb!153941 b!2823509))

(declare-fun m!3254191 () Bool)

(assert (=> b!2823509 m!3254191))

(declare-fun m!3254193 () Bool)

(assert (=> tb!153941 m!3254193))

(assert (=> b!2823503 t!230761))

(declare-fun b_and!206327 () Bool)

(assert (= b_and!206313 (and (=> t!230761 result!191698) b_and!206327)))

(declare-fun tb!153943 () Bool)

(declare-fun t!230763 () Bool)

(assert (=> (and b!2823384 (= (toChars!6845 (transformation!4964 (h!38556 rules!4424))) (toChars!6845 (transformation!4964 (rule!7392 (h!38557 l!6581))))) t!230763) tb!153943))

(declare-fun result!191702 () Bool)

(assert (= result!191702 result!191698))

(assert (=> b!2823503 t!230763))

(declare-fun b_and!206329 () Bool)

(assert (= b_and!206317 (and (=> t!230763 result!191702) b_and!206329)))

(declare-fun m!3254195 () Bool)

(assert (=> d!819812 m!3254195))

(declare-fun m!3254197 () Bool)

(assert (=> b!2823503 m!3254197))

(assert (=> b!2823503 m!3254197))

(declare-fun m!3254199 () Bool)

(assert (=> b!2823503 m!3254199))

(declare-fun m!3254201 () Bool)

(assert (=> b!2823504 m!3254201))

(assert (=> b!2823388 d!819812))

(declare-fun b!2823524 () Bool)

(declare-fun e!1786517 () Bool)

(declare-fun lt!1007636 () List!33261)

(declare-fun e!1786519 () Int)

(declare-fun size!25801 (List!33261) Int)

(assert (=> b!2823524 (= e!1786517 (= (size!25801 lt!1007636) e!1786519))))

(declare-fun c!457265 () Bool)

(assert (=> b!2823524 (= c!457265 (<= i!1730 0))))

(declare-fun b!2823525 () Bool)

(declare-fun e!1786518 () List!33261)

(assert (=> b!2823525 (= e!1786518 Nil!33137)))

(declare-fun b!2823526 () Bool)

(assert (=> b!2823526 (= e!1786518 (Cons!33137 (h!38557 l!6581) (take!558 (t!230752 l!6581) (- i!1730 1))))))

(declare-fun b!2823527 () Bool)

(assert (=> b!2823527 (= e!1786519 0)))

(declare-fun d!819814 () Bool)

(assert (=> d!819814 e!1786517))

(declare-fun res!1175051 () Bool)

(assert (=> d!819814 (=> (not res!1175051) (not e!1786517))))

(declare-fun content!4617 (List!33261) (Set Token!9330))

(assert (=> d!819814 (= res!1175051 (set.subset (content!4617 lt!1007636) (content!4617 l!6581)))))

(assert (=> d!819814 (= lt!1007636 e!1786518)))

(declare-fun c!457266 () Bool)

(assert (=> d!819814 (= c!457266 (or (is-Nil!33137 l!6581) (<= i!1730 0)))))

(assert (=> d!819814 (= (take!558 l!6581 i!1730) lt!1007636)))

(declare-fun b!2823528 () Bool)

(declare-fun e!1786520 () Int)

(assert (=> b!2823528 (= e!1786520 i!1730)))

(declare-fun b!2823529 () Bool)

(assert (=> b!2823529 (= e!1786519 e!1786520)))

(declare-fun c!457264 () Bool)

(assert (=> b!2823529 (= c!457264 (>= i!1730 (size!25801 l!6581)))))

(declare-fun b!2823530 () Bool)

(assert (=> b!2823530 (= e!1786520 (size!25801 l!6581))))

(assert (= (and d!819814 c!457266) b!2823525))

(assert (= (and d!819814 (not c!457266)) b!2823526))

(assert (= (and d!819814 res!1175051) b!2823524))

(assert (= (and b!2823524 c!457265) b!2823527))

(assert (= (and b!2823524 (not c!457265)) b!2823529))

(assert (= (and b!2823529 c!457264) b!2823530))

(assert (= (and b!2823529 (not c!457264)) b!2823528))

(declare-fun m!3254203 () Bool)

(assert (=> b!2823526 m!3254203))

(declare-fun m!3254205 () Bool)

(assert (=> b!2823529 m!3254205))

(assert (=> b!2823530 m!3254205))

(declare-fun m!3254207 () Bool)

(assert (=> d!819814 m!3254207))

(declare-fun m!3254209 () Bool)

(assert (=> d!819814 m!3254209))

(declare-fun m!3254211 () Bool)

(assert (=> b!2823524 m!3254211))

(assert (=> b!2823389 d!819814))

(declare-fun d!819816 () Bool)

(declare-fun res!1175056 () Bool)

(declare-fun e!1786525 () Bool)

(assert (=> d!819816 (=> res!1175056 e!1786525)))

(assert (=> d!819816 (= res!1175056 (is-Nil!33137 lt!1007620))))

(assert (=> d!819816 (= (forall!6794 lt!1007620 lambda!103700) e!1786525)))

(declare-fun b!2823535 () Bool)

(declare-fun e!1786526 () Bool)

(assert (=> b!2823535 (= e!1786525 e!1786526)))

(declare-fun res!1175057 () Bool)

(assert (=> b!2823535 (=> (not res!1175057) (not e!1786526))))

(declare-fun dynLambda!13892 (Int Token!9330) Bool)

(assert (=> b!2823535 (= res!1175057 (dynLambda!13892 lambda!103700 (h!38557 lt!1007620)))))

(declare-fun b!2823536 () Bool)

(assert (=> b!2823536 (= e!1786526 (forall!6794 (t!230752 lt!1007620) lambda!103700))))

(assert (= (and d!819816 (not res!1175056)) b!2823535))

(assert (= (and b!2823535 res!1175057) b!2823536))

(declare-fun b_lambda!84621 () Bool)

(assert (=> (not b_lambda!84621) (not b!2823535)))

(declare-fun m!3254213 () Bool)

(assert (=> b!2823535 m!3254213))

(declare-fun m!3254215 () Bool)

(assert (=> b!2823536 m!3254215))

(assert (=> b!2823389 d!819816))

(declare-fun d!819818 () Bool)

(declare-fun res!1175062 () Bool)

(declare-fun e!1786532 () Bool)

(assert (=> d!819818 (=> res!1175062 e!1786532)))

(assert (=> d!819818 (= res!1175062 (or (not (is-Cons!33137 lt!1007620)) (not (is-Cons!33137 (t!230752 lt!1007620)))))))

(assert (=> d!819818 (= (tokensListTwoByTwoPredicateSeparableList!692 thiss!27755 lt!1007620 rules!4424) e!1786532)))

(declare-fun b!2823541 () Bool)

(declare-fun e!1786531 () Bool)

(assert (=> b!2823541 (= e!1786532 e!1786531)))

(declare-fun res!1175063 () Bool)

(assert (=> b!2823541 (=> (not res!1175063) (not e!1786531))))

(declare-fun separableTokensPredicate!897 (LexerInterface!4555 Token!9330 Token!9330 List!33260) Bool)

(assert (=> b!2823541 (= res!1175063 (separableTokensPredicate!897 thiss!27755 (h!38557 lt!1007620) (h!38557 (t!230752 lt!1007620)) rules!4424))))

(declare-fun lt!1007655 () Unit!47131)

(declare-fun Unit!47136 () Unit!47131)

(assert (=> b!2823541 (= lt!1007655 Unit!47136)))

(declare-fun size!25802 (BalanceConc!20204) Int)

(declare-fun charsOf!3072 (Token!9330) BalanceConc!20204)

(assert (=> b!2823541 (> (size!25802 (charsOf!3072 (h!38557 (t!230752 lt!1007620)))) 0)))

(declare-fun lt!1007656 () Unit!47131)

(declare-fun Unit!47137 () Unit!47131)

(assert (=> b!2823541 (= lt!1007656 Unit!47137)))

(assert (=> b!2823541 (rulesProduceIndividualToken!2093 thiss!27755 rules!4424 (h!38557 (t!230752 lt!1007620)))))

(declare-fun lt!1007651 () Unit!47131)

(declare-fun Unit!47138 () Unit!47131)

(assert (=> b!2823541 (= lt!1007651 Unit!47138)))

(assert (=> b!2823541 (rulesProduceIndividualToken!2093 thiss!27755 rules!4424 (h!38557 lt!1007620))))

(declare-fun lt!1007652 () Unit!47131)

(declare-fun lt!1007654 () Unit!47131)

(assert (=> b!2823541 (= lt!1007652 lt!1007654)))

(assert (=> b!2823541 (rulesProduceIndividualToken!2093 thiss!27755 rules!4424 (h!38557 (t!230752 lt!1007620)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!711 (LexerInterface!4555 List!33260 List!33261 Token!9330) Unit!47131)

(assert (=> b!2823541 (= lt!1007654 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!711 thiss!27755 rules!4424 lt!1007620 (h!38557 (t!230752 lt!1007620))))))

(declare-fun lt!1007657 () Unit!47131)

(declare-fun lt!1007653 () Unit!47131)

(assert (=> b!2823541 (= lt!1007657 lt!1007653)))

(assert (=> b!2823541 (rulesProduceIndividualToken!2093 thiss!27755 rules!4424 (h!38557 lt!1007620))))

(assert (=> b!2823541 (= lt!1007653 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!711 thiss!27755 rules!4424 lt!1007620 (h!38557 lt!1007620)))))

(declare-fun b!2823542 () Bool)

(assert (=> b!2823542 (= e!1786531 (tokensListTwoByTwoPredicateSeparableList!692 thiss!27755 (Cons!33137 (h!38557 (t!230752 lt!1007620)) (t!230752 (t!230752 lt!1007620))) rules!4424))))

(assert (= (and d!819818 (not res!1175062)) b!2823541))

(assert (= (and b!2823541 res!1175063) b!2823542))

(declare-fun m!3254217 () Bool)

(assert (=> b!2823541 m!3254217))

(declare-fun m!3254219 () Bool)

(assert (=> b!2823541 m!3254219))

(declare-fun m!3254221 () Bool)

(assert (=> b!2823541 m!3254221))

(declare-fun m!3254223 () Bool)

(assert (=> b!2823541 m!3254223))

(assert (=> b!2823541 m!3254119))

(declare-fun m!3254225 () Bool)

(assert (=> b!2823541 m!3254225))

(assert (=> b!2823541 m!3254225))

(declare-fun m!3254227 () Bool)

(assert (=> b!2823541 m!3254227))

(declare-fun m!3254229 () Bool)

(assert (=> b!2823542 m!3254229))

(assert (=> b!2823389 d!819818))

(declare-fun bs!517821 () Bool)

(declare-fun d!819820 () Bool)

(assert (= bs!517821 (and d!819820 b!2823389)))

(declare-fun lambda!103710 () Int)

(assert (=> bs!517821 (= (= thiss!27755 Lexer!4553) (= lambda!103710 lambda!103700))))

(declare-fun b!2823567 () Bool)

(declare-fun e!1786555 () Bool)

(assert (=> b!2823567 (= e!1786555 true)))

(declare-fun b!2823566 () Bool)

(declare-fun e!1786554 () Bool)

(assert (=> b!2823566 (= e!1786554 e!1786555)))

(declare-fun b!2823565 () Bool)

(declare-fun e!1786553 () Bool)

(assert (=> b!2823565 (= e!1786553 e!1786554)))

(assert (=> d!819820 e!1786553))

(assert (= b!2823566 b!2823567))

(assert (= b!2823565 b!2823566))

(assert (= (and d!819820 (is-Cons!33136 rules!4424)) b!2823565))

(assert (=> b!2823567 (< (dynLambda!13885 order!17637 (toValue!6986 (transformation!4964 (h!38556 rules!4424)))) (dynLambda!13886 order!17639 lambda!103710))))

(assert (=> b!2823567 (< (dynLambda!13887 order!17641 (toChars!6845 (transformation!4964 (h!38556 rules!4424)))) (dynLambda!13886 order!17639 lambda!103710))))

(assert (=> d!819820 true))

(declare-fun lt!1007664 () Bool)

(assert (=> d!819820 (= lt!1007664 (forall!6794 lt!1007620 lambda!103710))))

(declare-fun e!1786551 () Bool)

(assert (=> d!819820 (= lt!1007664 e!1786551)))

(declare-fun res!1175076 () Bool)

(assert (=> d!819820 (=> res!1175076 e!1786551)))

(assert (=> d!819820 (= res!1175076 (not (is-Cons!33137 lt!1007620)))))

(assert (=> d!819820 (not (isEmpty!18325 rules!4424))))

(assert (=> d!819820 (= (rulesProduceEachTokenIndividuallyList!1607 thiss!27755 rules!4424 lt!1007620) lt!1007664)))

(declare-fun b!2823563 () Bool)

(declare-fun e!1786552 () Bool)

(assert (=> b!2823563 (= e!1786551 e!1786552)))

(declare-fun res!1175077 () Bool)

(assert (=> b!2823563 (=> (not res!1175077) (not e!1786552))))

(assert (=> b!2823563 (= res!1175077 (rulesProduceIndividualToken!2093 thiss!27755 rules!4424 (h!38557 lt!1007620)))))

(declare-fun b!2823564 () Bool)

(assert (=> b!2823564 (= e!1786552 (rulesProduceEachTokenIndividuallyList!1607 thiss!27755 rules!4424 (t!230752 lt!1007620)))))

(assert (= (and d!819820 (not res!1175076)) b!2823563))

(assert (= (and b!2823563 res!1175077) b!2823564))

(declare-fun m!3254243 () Bool)

(assert (=> d!819820 m!3254243))

(assert (=> d!819820 m!3254097))

(assert (=> b!2823563 m!3254119))

(assert (=> b!2823564 m!3254117))

(assert (=> b!2823389 d!819820))

(declare-fun d!819826 () Bool)

(assert (=> d!819826 (forall!6794 lt!1007620 lambda!103700)))

(declare-fun lt!1007667 () Unit!47131)

(declare-fun choose!16686 (List!33261 List!33261 Int) Unit!47131)

(assert (=> d!819826 (= lt!1007667 (choose!16686 lt!1007620 l!6581 lambda!103700))))

(assert (=> d!819826 (forall!6794 l!6581 lambda!103700)))

(assert (=> d!819826 (= (lemmaForallSubseq!228 lt!1007620 l!6581 lambda!103700) lt!1007667)))

(declare-fun bs!517822 () Bool)

(assert (= bs!517822 d!819826))

(assert (=> bs!517822 m!3254113))

(declare-fun m!3254245 () Bool)

(assert (=> bs!517822 m!3254245))

(declare-fun m!3254247 () Bool)

(assert (=> bs!517822 m!3254247))

(assert (=> b!2823389 d!819826))

(declare-fun d!819828 () Bool)

(assert (=> d!819828 (= (inv!45064 (tag!5468 (rule!7392 (h!38557 l!6581)))) (= (mod (str.len (value!159794 (tag!5468 (rule!7392 (h!38557 l!6581))))) 2) 0))))

(assert (=> b!2823390 d!819828))

(declare-fun d!819830 () Bool)

(declare-fun res!1175078 () Bool)

(declare-fun e!1786556 () Bool)

(assert (=> d!819830 (=> (not res!1175078) (not e!1786556))))

(assert (=> d!819830 (= res!1175078 (semiInverseModEq!2057 (toChars!6845 (transformation!4964 (rule!7392 (h!38557 l!6581)))) (toValue!6986 (transformation!4964 (rule!7392 (h!38557 l!6581))))))))

(assert (=> d!819830 (= (inv!45067 (transformation!4964 (rule!7392 (h!38557 l!6581)))) e!1786556)))

(declare-fun b!2823570 () Bool)

(assert (=> b!2823570 (= e!1786556 (equivClasses!1956 (toChars!6845 (transformation!4964 (rule!7392 (h!38557 l!6581)))) (toValue!6986 (transformation!4964 (rule!7392 (h!38557 l!6581))))))))

(assert (= (and d!819830 res!1175078) b!2823570))

(declare-fun m!3254249 () Bool)

(assert (=> d!819830 m!3254249))

(declare-fun m!3254251 () Bool)

(assert (=> b!2823570 m!3254251))

(assert (=> b!2823390 d!819830))

(declare-fun bs!517823 () Bool)

(declare-fun d!819832 () Bool)

(assert (= bs!517823 (and d!819832 b!2823389)))

(declare-fun lambda!103711 () Int)

(assert (=> bs!517823 (= (= thiss!27755 Lexer!4553) (= lambda!103711 lambda!103700))))

(declare-fun bs!517824 () Bool)

(assert (= bs!517824 (and d!819832 d!819820)))

(assert (=> bs!517824 (= lambda!103711 lambda!103710)))

(declare-fun b!2823575 () Bool)

(declare-fun e!1786561 () Bool)

(assert (=> b!2823575 (= e!1786561 true)))

(declare-fun b!2823574 () Bool)

(declare-fun e!1786560 () Bool)

(assert (=> b!2823574 (= e!1786560 e!1786561)))

(declare-fun b!2823573 () Bool)

(declare-fun e!1786559 () Bool)

(assert (=> b!2823573 (= e!1786559 e!1786560)))

(assert (=> d!819832 e!1786559))

(assert (= b!2823574 b!2823575))

(assert (= b!2823573 b!2823574))

(assert (= (and d!819832 (is-Cons!33136 rules!4424)) b!2823573))

(assert (=> b!2823575 (< (dynLambda!13885 order!17637 (toValue!6986 (transformation!4964 (h!38556 rules!4424)))) (dynLambda!13886 order!17639 lambda!103711))))

(assert (=> b!2823575 (< (dynLambda!13887 order!17641 (toChars!6845 (transformation!4964 (h!38556 rules!4424)))) (dynLambda!13886 order!17639 lambda!103711))))

(assert (=> d!819832 true))

(declare-fun lt!1007668 () Bool)

(assert (=> d!819832 (= lt!1007668 (forall!6794 (t!230752 lt!1007620) lambda!103711))))

(declare-fun e!1786557 () Bool)

(assert (=> d!819832 (= lt!1007668 e!1786557)))

(declare-fun res!1175079 () Bool)

(assert (=> d!819832 (=> res!1175079 e!1786557)))

(assert (=> d!819832 (= res!1175079 (not (is-Cons!33137 (t!230752 lt!1007620))))))

(assert (=> d!819832 (not (isEmpty!18325 rules!4424))))

(assert (=> d!819832 (= (rulesProduceEachTokenIndividuallyList!1607 thiss!27755 rules!4424 (t!230752 lt!1007620)) lt!1007668)))

(declare-fun b!2823571 () Bool)

(declare-fun e!1786558 () Bool)

(assert (=> b!2823571 (= e!1786557 e!1786558)))

(declare-fun res!1175080 () Bool)

(assert (=> b!2823571 (=> (not res!1175080) (not e!1786558))))

(assert (=> b!2823571 (= res!1175080 (rulesProduceIndividualToken!2093 thiss!27755 rules!4424 (h!38557 (t!230752 lt!1007620))))))

(declare-fun b!2823572 () Bool)

(assert (=> b!2823572 (= e!1786558 (rulesProduceEachTokenIndividuallyList!1607 thiss!27755 rules!4424 (t!230752 (t!230752 lt!1007620))))))

(assert (= (and d!819832 (not res!1175079)) b!2823571))

(assert (= (and b!2823571 res!1175080) b!2823572))

(declare-fun m!3254253 () Bool)

(assert (=> d!819832 m!3254253))

(assert (=> d!819832 m!3254097))

(assert (=> b!2823571 m!3254221))

(declare-fun m!3254255 () Bool)

(assert (=> b!2823572 m!3254255))

(assert (=> b!2823391 d!819832))

(declare-fun d!819834 () Bool)

(declare-fun res!1175081 () Bool)

(declare-fun e!1786563 () Bool)

(assert (=> d!819834 (=> res!1175081 e!1786563)))

(assert (=> d!819834 (= res!1175081 (or (not (is-Cons!33137 l!6581)) (not (is-Cons!33137 (t!230752 l!6581)))))))

(assert (=> d!819834 (= (tokensListTwoByTwoPredicateSeparableList!692 thiss!27755 l!6581 rules!4424) e!1786563)))

(declare-fun b!2823576 () Bool)

(declare-fun e!1786562 () Bool)

(assert (=> b!2823576 (= e!1786563 e!1786562)))

(declare-fun res!1175082 () Bool)

(assert (=> b!2823576 (=> (not res!1175082) (not e!1786562))))

(assert (=> b!2823576 (= res!1175082 (separableTokensPredicate!897 thiss!27755 (h!38557 l!6581) (h!38557 (t!230752 l!6581)) rules!4424))))

(declare-fun lt!1007673 () Unit!47131)

(declare-fun Unit!47139 () Unit!47131)

(assert (=> b!2823576 (= lt!1007673 Unit!47139)))

(assert (=> b!2823576 (> (size!25802 (charsOf!3072 (h!38557 (t!230752 l!6581)))) 0)))

(declare-fun lt!1007674 () Unit!47131)

(declare-fun Unit!47140 () Unit!47131)

(assert (=> b!2823576 (= lt!1007674 Unit!47140)))

(assert (=> b!2823576 (rulesProduceIndividualToken!2093 thiss!27755 rules!4424 (h!38557 (t!230752 l!6581)))))

(declare-fun lt!1007669 () Unit!47131)

(declare-fun Unit!47141 () Unit!47131)

(assert (=> b!2823576 (= lt!1007669 Unit!47141)))

(assert (=> b!2823576 (rulesProduceIndividualToken!2093 thiss!27755 rules!4424 (h!38557 l!6581))))

(declare-fun lt!1007670 () Unit!47131)

(declare-fun lt!1007672 () Unit!47131)

(assert (=> b!2823576 (= lt!1007670 lt!1007672)))

(assert (=> b!2823576 (rulesProduceIndividualToken!2093 thiss!27755 rules!4424 (h!38557 (t!230752 l!6581)))))

(assert (=> b!2823576 (= lt!1007672 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!711 thiss!27755 rules!4424 l!6581 (h!38557 (t!230752 l!6581))))))

(declare-fun lt!1007675 () Unit!47131)

(declare-fun lt!1007671 () Unit!47131)

(assert (=> b!2823576 (= lt!1007675 lt!1007671)))

(assert (=> b!2823576 (rulesProduceIndividualToken!2093 thiss!27755 rules!4424 (h!38557 l!6581))))

(assert (=> b!2823576 (= lt!1007671 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!711 thiss!27755 rules!4424 l!6581 (h!38557 l!6581)))))

(declare-fun b!2823577 () Bool)

(assert (=> b!2823577 (= e!1786562 (tokensListTwoByTwoPredicateSeparableList!692 thiss!27755 (Cons!33137 (h!38557 (t!230752 l!6581)) (t!230752 (t!230752 l!6581))) rules!4424))))

(assert (= (and d!819834 (not res!1175081)) b!2823576))

(assert (= (and b!2823576 res!1175082) b!2823577))

(declare-fun m!3254257 () Bool)

(assert (=> b!2823576 m!3254257))

(declare-fun m!3254259 () Bool)

(assert (=> b!2823576 m!3254259))

(declare-fun m!3254261 () Bool)

(assert (=> b!2823576 m!3254261))

(declare-fun m!3254263 () Bool)

(assert (=> b!2823576 m!3254263))

(declare-fun m!3254265 () Bool)

(assert (=> b!2823576 m!3254265))

(declare-fun m!3254267 () Bool)

(assert (=> b!2823576 m!3254267))

(assert (=> b!2823576 m!3254267))

(declare-fun m!3254269 () Bool)

(assert (=> b!2823576 m!3254269))

(declare-fun m!3254271 () Bool)

(assert (=> b!2823577 m!3254271))

(assert (=> b!2823392 d!819834))

(declare-fun d!819836 () Bool)

(assert (=> d!819836 (= (isEmpty!18325 rules!4424) (is-Nil!33136 rules!4424))))

(assert (=> b!2823393 d!819836))

(declare-fun bs!517825 () Bool)

(declare-fun d!819838 () Bool)

(assert (= bs!517825 (and d!819838 b!2823389)))

(declare-fun lambda!103712 () Int)

(assert (=> bs!517825 (= (= thiss!27755 Lexer!4553) (= lambda!103712 lambda!103700))))

(declare-fun bs!517826 () Bool)

(assert (= bs!517826 (and d!819838 d!819820)))

(assert (=> bs!517826 (= lambda!103712 lambda!103710)))

(declare-fun bs!517827 () Bool)

(assert (= bs!517827 (and d!819838 d!819832)))

(assert (=> bs!517827 (= lambda!103712 lambda!103711)))

(declare-fun b!2823582 () Bool)

(declare-fun e!1786568 () Bool)

(assert (=> b!2823582 (= e!1786568 true)))

(declare-fun b!2823581 () Bool)

(declare-fun e!1786567 () Bool)

(assert (=> b!2823581 (= e!1786567 e!1786568)))

(declare-fun b!2823580 () Bool)

(declare-fun e!1786566 () Bool)

(assert (=> b!2823580 (= e!1786566 e!1786567)))

(assert (=> d!819838 e!1786566))

(assert (= b!2823581 b!2823582))

(assert (= b!2823580 b!2823581))

(assert (= (and d!819838 (is-Cons!33136 rules!4424)) b!2823580))

(assert (=> b!2823582 (< (dynLambda!13885 order!17637 (toValue!6986 (transformation!4964 (h!38556 rules!4424)))) (dynLambda!13886 order!17639 lambda!103712))))

(assert (=> b!2823582 (< (dynLambda!13887 order!17641 (toChars!6845 (transformation!4964 (h!38556 rules!4424)))) (dynLambda!13886 order!17639 lambda!103712))))

(assert (=> d!819838 true))

(declare-fun lt!1007676 () Bool)

(assert (=> d!819838 (= lt!1007676 (forall!6794 l!6581 lambda!103712))))

(declare-fun e!1786564 () Bool)

(assert (=> d!819838 (= lt!1007676 e!1786564)))

(declare-fun res!1175083 () Bool)

(assert (=> d!819838 (=> res!1175083 e!1786564)))

(assert (=> d!819838 (= res!1175083 (not (is-Cons!33137 l!6581)))))

(assert (=> d!819838 (not (isEmpty!18325 rules!4424))))

(assert (=> d!819838 (= (rulesProduceEachTokenIndividuallyList!1607 thiss!27755 rules!4424 l!6581) lt!1007676)))

(declare-fun b!2823578 () Bool)

(declare-fun e!1786565 () Bool)

(assert (=> b!2823578 (= e!1786564 e!1786565)))

(declare-fun res!1175084 () Bool)

(assert (=> b!2823578 (=> (not res!1175084) (not e!1786565))))

(assert (=> b!2823578 (= res!1175084 (rulesProduceIndividualToken!2093 thiss!27755 rules!4424 (h!38557 l!6581)))))

(declare-fun b!2823579 () Bool)

(assert (=> b!2823579 (= e!1786565 (rulesProduceEachTokenIndividuallyList!1607 thiss!27755 rules!4424 (t!230752 l!6581)))))

(assert (= (and d!819838 (not res!1175083)) b!2823578))

(assert (= (and b!2823578 res!1175084) b!2823579))

(declare-fun m!3254273 () Bool)

(assert (=> d!819838 m!3254273))

(assert (=> d!819838 m!3254097))

(assert (=> b!2823578 m!3254265))

(declare-fun m!3254275 () Bool)

(assert (=> b!2823579 m!3254275))

(assert (=> b!2823394 d!819838))

(declare-fun b!2823593 () Bool)

(declare-fun b_free!80845 () Bool)

(declare-fun b_next!81549 () Bool)

(assert (=> b!2823593 (= b_free!80845 (not b_next!81549))))

(declare-fun tp!901752 () Bool)

(declare-fun b_and!206331 () Bool)

(assert (=> b!2823593 (= tp!901752 b_and!206331)))

(declare-fun b_free!80847 () Bool)

(declare-fun b_next!81551 () Bool)

(assert (=> b!2823593 (= b_free!80847 (not b_next!81551))))

(declare-fun t!230769 () Bool)

(declare-fun tb!153945 () Bool)

(assert (=> (and b!2823593 (= (toChars!6845 (transformation!4964 (h!38556 (t!230751 rules!4424)))) (toChars!6845 (transformation!4964 (rule!7392 (h!38557 l!6581))))) t!230769) tb!153945))

(declare-fun result!191706 () Bool)

(assert (= result!191706 result!191698))

(assert (=> b!2823503 t!230769))

(declare-fun b_and!206333 () Bool)

(declare-fun tp!901755 () Bool)

(assert (=> b!2823593 (= tp!901755 (and (=> t!230769 result!191706) b_and!206333))))

(declare-fun e!1786579 () Bool)

(assert (=> b!2823593 (= e!1786579 (and tp!901752 tp!901755))))

(declare-fun b!2823592 () Bool)

(declare-fun e!1786580 () Bool)

(declare-fun tp!901754 () Bool)

(assert (=> b!2823592 (= e!1786580 (and tp!901754 (inv!45064 (tag!5468 (h!38556 (t!230751 rules!4424)))) (inv!45067 (transformation!4964 (h!38556 (t!230751 rules!4424)))) e!1786579))))

(declare-fun b!2823591 () Bool)

(declare-fun e!1786577 () Bool)

(declare-fun tp!901753 () Bool)

(assert (=> b!2823591 (= e!1786577 (and e!1786580 tp!901753))))

(assert (=> b!2823395 (= tp!901712 e!1786577)))

(assert (= b!2823592 b!2823593))

(assert (= b!2823591 b!2823592))

(assert (= (and b!2823395 (is-Cons!33136 (t!230751 rules!4424))) b!2823591))

(declare-fun m!3254277 () Bool)

(assert (=> b!2823592 m!3254277))

(declare-fun m!3254279 () Bool)

(assert (=> b!2823592 m!3254279))

(declare-fun e!1786583 () Bool)

(assert (=> b!2823390 (= tp!901711 e!1786583)))

(declare-fun b!2823607 () Bool)

(declare-fun tp!901766 () Bool)

(declare-fun tp!901768 () Bool)

(assert (=> b!2823607 (= e!1786583 (and tp!901766 tp!901768))))

(declare-fun b!2823605 () Bool)

(declare-fun tp!901767 () Bool)

(declare-fun tp!901769 () Bool)

(assert (=> b!2823605 (= e!1786583 (and tp!901767 tp!901769))))

(declare-fun b!2823606 () Bool)

(declare-fun tp!901770 () Bool)

(assert (=> b!2823606 (= e!1786583 tp!901770)))

(declare-fun b!2823604 () Bool)

(declare-fun tp_is_empty!14461 () Bool)

(assert (=> b!2823604 (= e!1786583 tp_is_empty!14461)))

(assert (= (and b!2823390 (is-ElementMatch!8354 (regex!4964 (rule!7392 (h!38557 l!6581))))) b!2823604))

(assert (= (and b!2823390 (is-Concat!13549 (regex!4964 (rule!7392 (h!38557 l!6581))))) b!2823605))

(assert (= (and b!2823390 (is-Star!8354 (regex!4964 (rule!7392 (h!38557 l!6581))))) b!2823606))

(assert (= (and b!2823390 (is-Union!8354 (regex!4964 (rule!7392 (h!38557 l!6581))))) b!2823607))

(declare-fun e!1786584 () Bool)

(assert (=> b!2823386 (= tp!901709 e!1786584)))

(declare-fun b!2823611 () Bool)

(declare-fun tp!901771 () Bool)

(declare-fun tp!901773 () Bool)

(assert (=> b!2823611 (= e!1786584 (and tp!901771 tp!901773))))

(declare-fun b!2823609 () Bool)

(declare-fun tp!901772 () Bool)

(declare-fun tp!901774 () Bool)

(assert (=> b!2823609 (= e!1786584 (and tp!901772 tp!901774))))

(declare-fun b!2823610 () Bool)

(declare-fun tp!901775 () Bool)

(assert (=> b!2823610 (= e!1786584 tp!901775)))

(declare-fun b!2823608 () Bool)

(assert (=> b!2823608 (= e!1786584 tp_is_empty!14461)))

(assert (= (and b!2823386 (is-ElementMatch!8354 (regex!4964 (h!38556 rules!4424)))) b!2823608))

(assert (= (and b!2823386 (is-Concat!13549 (regex!4964 (h!38556 rules!4424)))) b!2823609))

(assert (= (and b!2823386 (is-Star!8354 (regex!4964 (h!38556 rules!4424)))) b!2823610))

(assert (= (and b!2823386 (is-Union!8354 (regex!4964 (h!38556 rules!4424)))) b!2823611))

(declare-fun b!2823616 () Bool)

(declare-fun e!1786587 () Bool)

(declare-fun tp!901778 () Bool)

(assert (=> b!2823616 (= e!1786587 (and tp_is_empty!14461 tp!901778))))

(assert (=> b!2823397 (= tp!901713 e!1786587)))

(assert (= (and b!2823397 (is-Cons!33135 (originalCharacters!5696 (h!38557 l!6581)))) b!2823616))

(declare-fun b!2823619 () Bool)

(declare-fun e!1786590 () Bool)

(assert (=> b!2823619 (= e!1786590 true)))

(declare-fun b!2823618 () Bool)

(declare-fun e!1786589 () Bool)

(assert (=> b!2823618 (= e!1786589 e!1786590)))

(declare-fun b!2823617 () Bool)

(declare-fun e!1786588 () Bool)

(assert (=> b!2823617 (= e!1786588 e!1786589)))

(assert (=> b!2823407 e!1786588))

(assert (= b!2823618 b!2823619))

(assert (= b!2823617 b!2823618))

(assert (= (and b!2823407 (is-Cons!33136 (t!230751 rules!4424))) b!2823617))

(assert (=> b!2823619 (< (dynLambda!13885 order!17637 (toValue!6986 (transformation!4964 (h!38556 (t!230751 rules!4424))))) (dynLambda!13886 order!17639 lambda!103700))))

(assert (=> b!2823619 (< (dynLambda!13887 order!17641 (toChars!6845 (transformation!4964 (h!38556 (t!230751 rules!4424))))) (dynLambda!13886 order!17639 lambda!103700))))

(declare-fun b!2823633 () Bool)

(declare-fun b_free!80849 () Bool)

(declare-fun b_next!81553 () Bool)

(assert (=> b!2823633 (= b_free!80849 (not b_next!81553))))

(declare-fun tp!901790 () Bool)

(declare-fun b_and!206335 () Bool)

(assert (=> b!2823633 (= tp!901790 b_and!206335)))

(declare-fun b_free!80851 () Bool)

(declare-fun b_next!81555 () Bool)

(assert (=> b!2823633 (= b_free!80851 (not b_next!81555))))

(declare-fun t!230771 () Bool)

(declare-fun tb!153947 () Bool)

(assert (=> (and b!2823633 (= (toChars!6845 (transformation!4964 (rule!7392 (h!38557 (t!230752 l!6581))))) (toChars!6845 (transformation!4964 (rule!7392 (h!38557 l!6581))))) t!230771) tb!153947))

(declare-fun result!191714 () Bool)

(assert (= result!191714 result!191698))

(assert (=> b!2823503 t!230771))

(declare-fun tp!901791 () Bool)

(declare-fun b_and!206337 () Bool)

(assert (=> b!2823633 (= tp!901791 (and (=> t!230771 result!191714) b_and!206337))))

(declare-fun e!1786608 () Bool)

(assert (=> b!2823388 (= tp!901705 e!1786608)))

(declare-fun e!1786604 () Bool)

(declare-fun b!2823630 () Bool)

(declare-fun tp!901793 () Bool)

(assert (=> b!2823630 (= e!1786608 (and (inv!45068 (h!38557 (t!230752 l!6581))) e!1786604 tp!901793))))

(declare-fun tp!901789 () Bool)

(declare-fun e!1786606 () Bool)

(declare-fun b!2823631 () Bool)

(assert (=> b!2823631 (= e!1786604 (and (inv!21 (value!159795 (h!38557 (t!230752 l!6581)))) e!1786606 tp!901789))))

(declare-fun b!2823632 () Bool)

(declare-fun e!1786603 () Bool)

(declare-fun tp!901792 () Bool)

(assert (=> b!2823632 (= e!1786606 (and tp!901792 (inv!45064 (tag!5468 (rule!7392 (h!38557 (t!230752 l!6581))))) (inv!45067 (transformation!4964 (rule!7392 (h!38557 (t!230752 l!6581))))) e!1786603))))

(assert (=> b!2823633 (= e!1786603 (and tp!901790 tp!901791))))

(assert (= b!2823632 b!2823633))

(assert (= b!2823631 b!2823632))

(assert (= b!2823630 b!2823631))

(assert (= (and b!2823388 (is-Cons!33137 (t!230752 l!6581))) b!2823630))

(declare-fun m!3254281 () Bool)

(assert (=> b!2823630 m!3254281))

(declare-fun m!3254283 () Bool)

(assert (=> b!2823631 m!3254283))

(declare-fun m!3254285 () Bool)

(assert (=> b!2823632 m!3254285))

(declare-fun m!3254287 () Bool)

(assert (=> b!2823632 m!3254287))

(declare-fun b_lambda!84623 () Bool)

(assert (= b_lambda!84621 (or b!2823389 b_lambda!84623)))

(declare-fun bs!517828 () Bool)

(declare-fun d!819840 () Bool)

(assert (= bs!517828 (and d!819840 b!2823389)))

(assert (=> bs!517828 (= (dynLambda!13892 lambda!103700 (h!38557 lt!1007620)) (rulesProduceIndividualToken!2093 Lexer!4553 rules!4424 (h!38557 lt!1007620)))))

(declare-fun m!3254289 () Bool)

(assert (=> bs!517828 m!3254289))

(assert (=> b!2823535 d!819840))

(declare-fun b_lambda!84625 () Bool)

(assert (= b_lambda!84619 (or (and b!2823385 b_free!80831) (and b!2823384 b_free!80835 (= (toChars!6845 (transformation!4964 (h!38556 rules!4424))) (toChars!6845 (transformation!4964 (rule!7392 (h!38557 l!6581)))))) (and b!2823593 b_free!80847 (= (toChars!6845 (transformation!4964 (h!38556 (t!230751 rules!4424)))) (toChars!6845 (transformation!4964 (rule!7392 (h!38557 l!6581)))))) (and b!2823633 b_free!80851 (= (toChars!6845 (transformation!4964 (rule!7392 (h!38557 (t!230752 l!6581))))) (toChars!6845 (transformation!4964 (rule!7392 (h!38557 l!6581)))))) b_lambda!84625)))

(push 1)

(assert (not b!2823504))

(assert (not b!2823579))

(assert (not b!2823610))

(assert (not b!2823609))

(assert (not b!2823486))

(assert b_and!206315)

(assert (not b!2823524))

(assert (not b!2823617))

(assert b_and!206311)

(assert (not b!2823496))

(assert (not d!819798))

(assert (not b!2823571))

(assert (not b!2823570))

(assert (not b_next!81539))

(assert tp_is_empty!14461)

(assert (not b!2823564))

(assert b_and!206329)

(assert (not b!2823616))

(assert (not b_next!81533))

(assert (not b!2823471))

(assert (not b!2823542))

(assert (not b!2823578))

(assert (not b_next!81535))

(assert (not b!2823526))

(assert (not b!2823607))

(assert (not b!2823631))

(assert b_and!206327)

(assert (not d!819832))

(assert (not b!2823509))

(assert (not d!819830))

(assert (not d!819812))

(assert (not b!2823573))

(assert (not b!2823565))

(assert (not tb!153941))

(assert (not b!2823577))

(assert (not b!2823468))

(assert (not b!2823580))

(assert (not b!2823572))

(assert (not d!819794))

(assert (not b!2823498))

(assert (not b!2823563))

(assert b_and!206335)

(assert (not b_next!81553))

(assert b_and!206337)

(assert (not b_next!81551))

(assert (not b!2823529))

(assert (not b_next!81555))

(assert (not b!2823630))

(assert (not b_lambda!84623))

(assert (not b!2823592))

(assert (not b!2823606))

(assert (not b!2823536))

(assert (not b_next!81537))

(assert (not b!2823497))

(assert (not d!819826))

(assert (not b!2823605))

(assert (not d!819802))

(assert b_and!206333)

(assert (not b!2823483))

(assert (not b!2823530))

(assert (not bs!517828))

(assert (not b!2823541))

(assert (not b!2823482))

(assert b_and!206331)

(assert (not b!2823591))

(assert (not b!2823576))

(assert (not b_lambda!84625))

(assert (not d!819820))

(assert (not b_next!81549))

(assert (not d!819838))

(assert (not d!819814))

(assert (not b!2823611))

(assert (not b!2823632))

(assert (not b!2823503))

(check-sat)

(pop 1)

(push 1)

(assert b_and!206311)

(assert (not b_next!81539))

(assert b_and!206329)

(assert b_and!206327)

(assert (not b_next!81555))

(assert (not b_next!81537))

(assert b_and!206333)

(assert b_and!206315)

(assert b_and!206331)

(assert (not b_next!81549))

(assert (not b_next!81533))

(assert (not b_next!81535))

(assert b_and!206335)

(assert (not b_next!81553))

(assert b_and!206337)

(assert (not b_next!81551))

(check-sat)

(pop 1)

