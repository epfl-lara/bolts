; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!274160 () Bool)

(assert start!274160)

(declare-fun b!2824647 () Bool)

(declare-fun b_free!80925 () Bool)

(declare-fun b_next!81629 () Bool)

(assert (=> b!2824647 (= b_free!80925 (not b_next!81629))))

(declare-fun tp!902193 () Bool)

(declare-fun b_and!206431 () Bool)

(assert (=> b!2824647 (= tp!902193 b_and!206431)))

(declare-fun b_free!80927 () Bool)

(declare-fun b_next!81631 () Bool)

(assert (=> b!2824647 (= b_free!80927 (not b_next!81631))))

(declare-fun tp!902185 () Bool)

(declare-fun b_and!206433 () Bool)

(assert (=> b!2824647 (= tp!902185 b_and!206433)))

(declare-fun b!2824640 () Bool)

(declare-fun b_free!80929 () Bool)

(declare-fun b_next!81633 () Bool)

(assert (=> b!2824640 (= b_free!80929 (not b_next!81633))))

(declare-fun tp!902186 () Bool)

(declare-fun b_and!206435 () Bool)

(assert (=> b!2824640 (= tp!902186 b_and!206435)))

(declare-fun b_free!80931 () Bool)

(declare-fun b_next!81635 () Bool)

(assert (=> b!2824640 (= b_free!80931 (not b_next!81635))))

(declare-fun tp!902192 () Bool)

(declare-fun b_and!206437 () Bool)

(assert (=> b!2824640 (= tp!902192 b_and!206437)))

(declare-fun b!2824661 () Bool)

(declare-fun e!1787418 () Bool)

(assert (=> b!2824661 (= e!1787418 true)))

(declare-fun b!2824660 () Bool)

(declare-fun e!1787417 () Bool)

(assert (=> b!2824660 (= e!1787417 e!1787418)))

(declare-fun b!2824659 () Bool)

(declare-fun e!1787416 () Bool)

(assert (=> b!2824659 (= e!1787416 e!1787417)))

(declare-fun b!2824643 () Bool)

(assert (=> b!2824643 e!1787416))

(assert (= b!2824660 b!2824661))

(assert (= b!2824659 b!2824660))

(declare-datatypes ((C!16902 0))(
  ( (C!16903 (val!10431 Int)) )
))
(declare-datatypes ((List!33288 0))(
  ( (Nil!33164) (Cons!33164 (h!38584 (_ BitVec 16)) (t!230857 List!33288)) )
))
(declare-datatypes ((TokenValue!5200 0))(
  ( (FloatLiteralValue!10400 (text!36845 List!33288)) (TokenValueExt!5199 (__x!22073 Int)) (Broken!26000 (value!159940 List!33288)) (Object!5323) (End!5200) (Def!5200) (Underscore!5200) (Match!5200) (Else!5200) (Error!5200) (Case!5200) (If!5200) (Extends!5200) (Abstract!5200) (Class!5200) (Val!5200) (DelimiterValue!10400 (del!5260 List!33288)) (KeywordValue!5206 (value!159941 List!33288)) (CommentValue!10400 (value!159942 List!33288)) (WhitespaceValue!10400 (value!159943 List!33288)) (IndentationValue!5200 (value!159944 List!33288)) (String!36457) (Int32!5200) (Broken!26001 (value!159945 List!33288)) (Boolean!5201) (Unit!47172) (OperatorValue!5203 (op!5260 List!33288)) (IdentifierValue!10400 (value!159946 List!33288)) (IdentifierValue!10401 (value!159947 List!33288)) (WhitespaceValue!10401 (value!159948 List!33288)) (True!10400) (False!10400) (Broken!26002 (value!159949 List!33288)) (Broken!26003 (value!159950 List!33288)) (True!10401) (RightBrace!5200) (RightBracket!5200) (Colon!5200) (Null!5200) (Comma!5200) (LeftBracket!5200) (False!10401) (LeftBrace!5200) (ImaginaryLiteralValue!5200 (text!36846 List!33288)) (StringLiteralValue!15600 (value!159951 List!33288)) (EOFValue!5200 (value!159952 List!33288)) (IdentValue!5200 (value!159953 List!33288)) (DelimiterValue!10401 (value!159954 List!33288)) (DedentValue!5200 (value!159955 List!33288)) (NewLineValue!5200 (value!159956 List!33288)) (IntegerValue!15600 (value!159957 (_ BitVec 32)) (text!36847 List!33288)) (IntegerValue!15601 (value!159958 Int) (text!36848 List!33288)) (Times!5200) (Or!5200) (Equal!5200) (Minus!5200) (Broken!26004 (value!159959 List!33288)) (And!5200) (Div!5200) (LessEqual!5200) (Mod!5200) (Concat!13560) (Not!5200) (Plus!5200) (SpaceValue!5200 (value!159960 List!33288)) (IntegerValue!15602 (value!159961 Int) (text!36849 List!33288)) (StringLiteralValue!15601 (text!36850 List!33288)) (FloatLiteralValue!10401 (text!36851 List!33288)) (BytesLiteralValue!5200 (value!159962 List!33288)) (CommentValue!10401 (value!159963 List!33288)) (StringLiteralValue!15602 (value!159964 List!33288)) (ErrorTokenValue!5200 (msg!5261 List!33288)) )
))
(declare-datatypes ((List!33289 0))(
  ( (Nil!33165) (Cons!33165 (h!38585 C!16902) (t!230858 List!33289)) )
))
(declare-datatypes ((IArray!20595 0))(
  ( (IArray!20596 (innerList!10355 List!33289)) )
))
(declare-datatypes ((Conc!10295 0))(
  ( (Node!10295 (left!25057 Conc!10295) (right!25387 Conc!10295) (csize!20820 Int) (cheight!10506 Int)) (Leaf!15672 (xs!13407 IArray!20595) (csize!20821 Int)) (Empty!10295) )
))
(declare-datatypes ((BalanceConc!20228 0))(
  ( (BalanceConc!20229 (c!457356 Conc!10295)) )
))
(declare-datatypes ((TokenValueInjection!9828 0))(
  ( (TokenValueInjection!9829 (toValue!6992 Int) (toChars!6851 Int)) )
))
(declare-datatypes ((Regex!8360 0))(
  ( (ElementMatch!8360 (c!457357 C!16902)) (Concat!13561 (regOne!17232 Regex!8360) (regTwo!17232 Regex!8360)) (EmptyExpr!8360) (Star!8360 (reg!8689 Regex!8360)) (EmptyLang!8360) (Union!8360 (regOne!17233 Regex!8360) (regTwo!17233 Regex!8360)) )
))
(declare-datatypes ((String!36458 0))(
  ( (String!36459 (value!159965 String)) )
))
(declare-datatypes ((Rule!9740 0))(
  ( (Rule!9741 (regex!4970 Regex!8360) (tag!5474 String!36458) (isSeparator!4970 Bool) (transformation!4970 TokenValueInjection!9828)) )
))
(declare-datatypes ((List!33290 0))(
  ( (Nil!33166) (Cons!33166 (h!38586 Rule!9740) (t!230859 List!33290)) )
))
(declare-fun rules!4424 () List!33290)

(assert (= (and b!2824643 (is-Cons!33166 rules!4424)) b!2824659))

(declare-fun lambda!103748 () Int)

(declare-fun order!17673 () Int)

(declare-fun order!17675 () Int)

(declare-fun dynLambda!13915 (Int Int) Int)

(declare-fun dynLambda!13916 (Int Int) Int)

(assert (=> b!2824661 (< (dynLambda!13915 order!17673 (toValue!6992 (transformation!4970 (h!38586 rules!4424)))) (dynLambda!13916 order!17675 lambda!103748))))

(declare-fun order!17677 () Int)

(declare-fun dynLambda!13917 (Int Int) Int)

(assert (=> b!2824661 (< (dynLambda!13917 order!17677 (toChars!6851 (transformation!4970 (h!38586 rules!4424)))) (dynLambda!13916 order!17675 lambda!103748))))

(declare-fun b!2824636 () Bool)

(declare-fun tp!902190 () Bool)

(declare-fun e!1787398 () Bool)

(declare-fun e!1787404 () Bool)

(declare-fun inv!45095 (String!36458) Bool)

(declare-fun inv!45098 (TokenValueInjection!9828) Bool)

(assert (=> b!2824636 (= e!1787404 (and tp!902190 (inv!45095 (tag!5474 (h!38586 rules!4424))) (inv!45098 (transformation!4970 (h!38586 rules!4424))) e!1787398))))

(declare-fun b!2824637 () Bool)

(declare-fun res!1175483 () Bool)

(declare-fun e!1787405 () Bool)

(assert (=> b!2824637 (=> (not res!1175483) (not e!1787405))))

(declare-datatypes ((LexerInterface!4561 0))(
  ( (LexerInterfaceExt!4558 (__x!22074 Int)) (Lexer!4559) )
))
(declare-fun thiss!27755 () LexerInterface!4561)

(declare-datatypes ((Token!9342 0))(
  ( (Token!9343 (value!159966 TokenValue!5200) (rule!7398 Rule!9740) (size!25827 Int) (originalCharacters!5702 List!33289)) )
))
(declare-datatypes ((List!33291 0))(
  ( (Nil!33167) (Cons!33167 (h!38587 Token!9342) (t!230860 List!33291)) )
))
(declare-fun l!6581 () List!33291)

(declare-fun tokensListTwoByTwoPredicateSeparableList!698 (LexerInterface!4561 List!33291 List!33290) Bool)

(assert (=> b!2824637 (= res!1175483 (tokensListTwoByTwoPredicateSeparableList!698 thiss!27755 l!6581 rules!4424))))

(declare-fun b!2824638 () Bool)

(declare-fun e!1787399 () Bool)

(declare-fun e!1787397 () Bool)

(assert (=> b!2824638 (= e!1787399 e!1787397)))

(declare-fun res!1175484 () Bool)

(assert (=> b!2824638 (=> (not res!1175484) (not e!1787397))))

(declare-fun lt!1007875 () List!33291)

(declare-fun rulesProduceIndividualToken!2099 (LexerInterface!4561 List!33290 Token!9342) Bool)

(assert (=> b!2824638 (= res!1175484 (rulesProduceIndividualToken!2099 thiss!27755 rules!4424 (h!38587 lt!1007875)))))

(declare-fun e!1787407 () Bool)

(declare-fun e!1787406 () Bool)

(declare-fun b!2824639 () Bool)

(declare-fun tp!902188 () Bool)

(assert (=> b!2824639 (= e!1787407 (and tp!902188 (inv!45095 (tag!5474 (rule!7398 (h!38587 l!6581)))) (inv!45098 (transformation!4970 (rule!7398 (h!38587 l!6581)))) e!1787406))))

(assert (=> b!2824640 (= e!1787398 (and tp!902186 tp!902192))))

(declare-fun b!2824641 () Bool)

(declare-fun res!1175481 () Bool)

(assert (=> b!2824641 (=> (not res!1175481) (not e!1787405))))

(declare-fun isEmpty!18343 (List!33290) Bool)

(assert (=> b!2824641 (= res!1175481 (not (isEmpty!18343 rules!4424)))))

(declare-fun b!2824642 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1613 (LexerInterface!4561 List!33290 List!33291) Bool)

(assert (=> b!2824642 (= e!1787397 (rulesProduceEachTokenIndividuallyList!1613 thiss!27755 rules!4424 (t!230860 lt!1007875)))))

(declare-fun res!1175479 () Bool)

(assert (=> start!274160 (=> (not res!1175479) (not e!1787405))))

(assert (=> start!274160 (= res!1175479 (is-Lexer!4559 thiss!27755))))

(assert (=> start!274160 e!1787405))

(assert (=> start!274160 true))

(declare-fun e!1787401 () Bool)

(assert (=> start!274160 e!1787401))

(declare-fun e!1787408 () Bool)

(assert (=> start!274160 e!1787408))

(assert (=> b!2824643 (= e!1787405 (not (tokensListTwoByTwoPredicateSeparableList!698 thiss!27755 lt!1007875 rules!4424)))))

(declare-fun forall!6800 (List!33291 Int) Bool)

(assert (=> b!2824643 (forall!6800 lt!1007875 lambda!103748)))

(declare-datatypes ((Unit!47173 0))(
  ( (Unit!47174) )
))
(declare-fun lt!1007874 () Unit!47173)

(declare-fun lemmaForallSubseq!230 (List!33291 List!33291 Int) Unit!47173)

(assert (=> b!2824643 (= lt!1007874 (lemmaForallSubseq!230 lt!1007875 l!6581 lambda!103748))))

(assert (=> b!2824643 (= (rulesProduceEachTokenIndividuallyList!1613 thiss!27755 rules!4424 lt!1007875) e!1787399)))

(declare-fun res!1175480 () Bool)

(assert (=> b!2824643 (=> res!1175480 e!1787399)))

(assert (=> b!2824643 (= res!1175480 (not (is-Cons!33167 lt!1007875)))))

(declare-fun i!1730 () Int)

(declare-fun take!564 (List!33291 Int) List!33291)

(assert (=> b!2824643 (= lt!1007875 (take!564 l!6581 i!1730))))

(declare-fun b!2824644 () Bool)

(declare-fun res!1175482 () Bool)

(assert (=> b!2824644 (=> (not res!1175482) (not e!1787405))))

(assert (=> b!2824644 (= res!1175482 (rulesProduceEachTokenIndividuallyList!1613 thiss!27755 rules!4424 l!6581))))

(declare-fun b!2824645 () Bool)

(declare-fun res!1175485 () Bool)

(assert (=> b!2824645 (=> (not res!1175485) (not e!1787405))))

(declare-fun rulesInvariant!3979 (LexerInterface!4561 List!33290) Bool)

(assert (=> b!2824645 (= res!1175485 (rulesInvariant!3979 thiss!27755 rules!4424))))

(declare-fun b!2824646 () Bool)

(declare-fun tp!902189 () Bool)

(declare-fun e!1787409 () Bool)

(declare-fun inv!21 (TokenValue!5200) Bool)

(assert (=> b!2824646 (= e!1787409 (and (inv!21 (value!159966 (h!38587 l!6581))) e!1787407 tp!902189))))

(assert (=> b!2824647 (= e!1787406 (and tp!902193 tp!902185))))

(declare-fun tp!902191 () Bool)

(declare-fun b!2824648 () Bool)

(declare-fun inv!45099 (Token!9342) Bool)

(assert (=> b!2824648 (= e!1787408 (and (inv!45099 (h!38587 l!6581)) e!1787409 tp!902191))))

(declare-fun b!2824649 () Bool)

(declare-fun res!1175478 () Bool)

(assert (=> b!2824649 (=> (not res!1175478) (not e!1787405))))

(assert (=> b!2824649 (= res!1175478 (and (not (is-Nil!33167 l!6581)) (<= i!1730 0)))))

(declare-fun b!2824650 () Bool)

(declare-fun tp!902187 () Bool)

(assert (=> b!2824650 (= e!1787401 (and e!1787404 tp!902187))))

(assert (= (and start!274160 res!1175479) b!2824641))

(assert (= (and b!2824641 res!1175481) b!2824645))

(assert (= (and b!2824645 res!1175485) b!2824644))

(assert (= (and b!2824644 res!1175482) b!2824637))

(assert (= (and b!2824637 res!1175483) b!2824649))

(assert (= (and b!2824649 res!1175478) b!2824643))

(assert (= (and b!2824643 (not res!1175480)) b!2824638))

(assert (= (and b!2824638 res!1175484) b!2824642))

(assert (= b!2824636 b!2824640))

(assert (= b!2824650 b!2824636))

(assert (= (and start!274160 (is-Cons!33166 rules!4424)) b!2824650))

(assert (= b!2824639 b!2824647))

(assert (= b!2824646 b!2824639))

(assert (= b!2824648 b!2824646))

(assert (= (and start!274160 (is-Cons!33167 l!6581)) b!2824648))

(declare-fun m!3254943 () Bool)

(assert (=> b!2824642 m!3254943))

(declare-fun m!3254945 () Bool)

(assert (=> b!2824636 m!3254945))

(declare-fun m!3254947 () Bool)

(assert (=> b!2824636 m!3254947))

(declare-fun m!3254949 () Bool)

(assert (=> b!2824648 m!3254949))

(declare-fun m!3254951 () Bool)

(assert (=> b!2824641 m!3254951))

(declare-fun m!3254953 () Bool)

(assert (=> b!2824646 m!3254953))

(declare-fun m!3254955 () Bool)

(assert (=> b!2824637 m!3254955))

(declare-fun m!3254957 () Bool)

(assert (=> b!2824638 m!3254957))

(declare-fun m!3254959 () Bool)

(assert (=> b!2824645 m!3254959))

(declare-fun m!3254961 () Bool)

(assert (=> b!2824643 m!3254961))

(declare-fun m!3254963 () Bool)

(assert (=> b!2824643 m!3254963))

(declare-fun m!3254965 () Bool)

(assert (=> b!2824643 m!3254965))

(declare-fun m!3254967 () Bool)

(assert (=> b!2824643 m!3254967))

(declare-fun m!3254969 () Bool)

(assert (=> b!2824643 m!3254969))

(declare-fun m!3254971 () Bool)

(assert (=> b!2824639 m!3254971))

(declare-fun m!3254973 () Bool)

(assert (=> b!2824639 m!3254973))

(declare-fun m!3254975 () Bool)

(assert (=> b!2824644 m!3254975))

(push 1)

(assert (not b!2824641))

(assert b_and!206435)

(assert (not b!2824639))

(assert (not b!2824638))

(assert (not b!2824636))

(assert (not b!2824659))

(assert (not b!2824643))

(assert (not b!2824637))

(assert (not b!2824650))

(assert (not b_next!81631))

(assert (not b_next!81629))

(assert (not b!2824644))

(assert (not b!2824645))

(assert b_and!206437)

(assert (not b!2824648))

(assert (not b_next!81635))

(assert (not b!2824646))

(assert (not b!2824642))

(assert b_and!206433)

(assert (not b_next!81633))

(assert b_and!206431)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!81631))

(assert (not b_next!81629))

(assert b_and!206437)

(assert b_and!206435)

(assert (not b_next!81635))

(assert b_and!206433)

(assert (not b_next!81633))

(assert b_and!206431)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!820001 () Bool)

(assert (=> d!820001 (forall!6800 lt!1007875 lambda!103748)))

(declare-fun lt!1007884 () Unit!47173)

(declare-fun choose!16688 (List!33291 List!33291 Int) Unit!47173)

(assert (=> d!820001 (= lt!1007884 (choose!16688 lt!1007875 l!6581 lambda!103748))))

(assert (=> d!820001 (forall!6800 l!6581 lambda!103748)))

(assert (=> d!820001 (= (lemmaForallSubseq!230 lt!1007875 l!6581 lambda!103748) lt!1007884)))

(declare-fun bs!517868 () Bool)

(assert (= bs!517868 d!820001))

(assert (=> bs!517868 m!3254963))

(declare-fun m!3255011 () Bool)

(assert (=> bs!517868 m!3255011))

(declare-fun m!3255013 () Bool)

(assert (=> bs!517868 m!3255013))

(assert (=> b!2824643 d!820001))

(declare-fun d!820003 () Bool)

(declare-fun res!1175519 () Bool)

(declare-fun e!1787472 () Bool)

(assert (=> d!820003 (=> res!1175519 e!1787472)))

(assert (=> d!820003 (= res!1175519 (or (not (is-Cons!33167 lt!1007875)) (not (is-Cons!33167 (t!230860 lt!1007875)))))))

(assert (=> d!820003 (= (tokensListTwoByTwoPredicateSeparableList!698 thiss!27755 lt!1007875 rules!4424) e!1787472)))

(declare-fun b!2824722 () Bool)

(declare-fun e!1787471 () Bool)

(assert (=> b!2824722 (= e!1787472 e!1787471)))

(declare-fun res!1175520 () Bool)

(assert (=> b!2824722 (=> (not res!1175520) (not e!1787471))))

(declare-fun separableTokensPredicate!903 (LexerInterface!4561 Token!9342 Token!9342 List!33290) Bool)

(assert (=> b!2824722 (= res!1175520 (separableTokensPredicate!903 thiss!27755 (h!38587 lt!1007875) (h!38587 (t!230860 lt!1007875)) rules!4424))))

(declare-fun lt!1007904 () Unit!47173)

(declare-fun Unit!47178 () Unit!47173)

(assert (=> b!2824722 (= lt!1007904 Unit!47178)))

(declare-fun size!25829 (BalanceConc!20228) Int)

(declare-fun charsOf!3078 (Token!9342) BalanceConc!20228)

(assert (=> b!2824722 (> (size!25829 (charsOf!3078 (h!38587 (t!230860 lt!1007875)))) 0)))

(declare-fun lt!1007899 () Unit!47173)

(declare-fun Unit!47179 () Unit!47173)

(assert (=> b!2824722 (= lt!1007899 Unit!47179)))

(assert (=> b!2824722 (rulesProduceIndividualToken!2099 thiss!27755 rules!4424 (h!38587 (t!230860 lt!1007875)))))

(declare-fun lt!1007905 () Unit!47173)

(declare-fun Unit!47180 () Unit!47173)

(assert (=> b!2824722 (= lt!1007905 Unit!47180)))

(assert (=> b!2824722 (rulesProduceIndividualToken!2099 thiss!27755 rules!4424 (h!38587 lt!1007875))))

(declare-fun lt!1007903 () Unit!47173)

(declare-fun lt!1007900 () Unit!47173)

(assert (=> b!2824722 (= lt!1007903 lt!1007900)))

(assert (=> b!2824722 (rulesProduceIndividualToken!2099 thiss!27755 rules!4424 (h!38587 (t!230860 lt!1007875)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!717 (LexerInterface!4561 List!33290 List!33291 Token!9342) Unit!47173)

(assert (=> b!2824722 (= lt!1007900 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!717 thiss!27755 rules!4424 lt!1007875 (h!38587 (t!230860 lt!1007875))))))

(declare-fun lt!1007901 () Unit!47173)

(declare-fun lt!1007902 () Unit!47173)

(assert (=> b!2824722 (= lt!1007901 lt!1007902)))

(assert (=> b!2824722 (rulesProduceIndividualToken!2099 thiss!27755 rules!4424 (h!38587 lt!1007875))))

(assert (=> b!2824722 (= lt!1007902 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!717 thiss!27755 rules!4424 lt!1007875 (h!38587 lt!1007875)))))

(declare-fun b!2824723 () Bool)

(assert (=> b!2824723 (= e!1787471 (tokensListTwoByTwoPredicateSeparableList!698 thiss!27755 (Cons!33167 (h!38587 (t!230860 lt!1007875)) (t!230860 (t!230860 lt!1007875))) rules!4424))))

(assert (= (and d!820003 (not res!1175519)) b!2824722))

(assert (= (and b!2824722 res!1175520) b!2824723))

(declare-fun m!3255015 () Bool)

(assert (=> b!2824722 m!3255015))

(declare-fun m!3255017 () Bool)

(assert (=> b!2824722 m!3255017))

(declare-fun m!3255019 () Bool)

(assert (=> b!2824722 m!3255019))

(assert (=> b!2824722 m!3255017))

(declare-fun m!3255021 () Bool)

(assert (=> b!2824722 m!3255021))

(declare-fun m!3255023 () Bool)

(assert (=> b!2824722 m!3255023))

(assert (=> b!2824722 m!3254957))

(declare-fun m!3255025 () Bool)

(assert (=> b!2824722 m!3255025))

(declare-fun m!3255027 () Bool)

(assert (=> b!2824723 m!3255027))

(assert (=> b!2824643 d!820003))

(declare-fun d!820007 () Bool)

(declare-fun res!1175525 () Bool)

(declare-fun e!1787477 () Bool)

(assert (=> d!820007 (=> res!1175525 e!1787477)))

(assert (=> d!820007 (= res!1175525 (is-Nil!33167 lt!1007875))))

(assert (=> d!820007 (= (forall!6800 lt!1007875 lambda!103748) e!1787477)))

(declare-fun b!2824728 () Bool)

(declare-fun e!1787478 () Bool)

(assert (=> b!2824728 (= e!1787477 e!1787478)))

(declare-fun res!1175526 () Bool)

(assert (=> b!2824728 (=> (not res!1175526) (not e!1787478))))

(declare-fun dynLambda!13921 (Int Token!9342) Bool)

(assert (=> b!2824728 (= res!1175526 (dynLambda!13921 lambda!103748 (h!38587 lt!1007875)))))

(declare-fun b!2824729 () Bool)

(assert (=> b!2824729 (= e!1787478 (forall!6800 (t!230860 lt!1007875) lambda!103748))))

(assert (= (and d!820007 (not res!1175525)) b!2824728))

(assert (= (and b!2824728 res!1175526) b!2824729))

(declare-fun b_lambda!84667 () Bool)

(assert (=> (not b_lambda!84667) (not b!2824728)))

(declare-fun m!3255029 () Bool)

(assert (=> b!2824728 m!3255029))

(declare-fun m!3255031 () Bool)

(assert (=> b!2824729 m!3255031))

(assert (=> b!2824643 d!820007))

(declare-fun b!2824744 () Bool)

(declare-fun e!1787488 () Bool)

(declare-fun lt!1007908 () List!33291)

(declare-fun e!1787489 () Int)

(declare-fun size!25830 (List!33291) Int)

(assert (=> b!2824744 (= e!1787488 (= (size!25830 lt!1007908) e!1787489))))

(declare-fun c!457366 () Bool)

(assert (=> b!2824744 (= c!457366 (<= i!1730 0))))

(declare-fun b!2824745 () Bool)

(declare-fun e!1787487 () Int)

(assert (=> b!2824745 (= e!1787487 (size!25830 l!6581))))

(declare-fun b!2824746 () Bool)

(assert (=> b!2824746 (= e!1787487 i!1730)))

(declare-fun d!820009 () Bool)

(assert (=> d!820009 e!1787488))

(declare-fun res!1175529 () Bool)

(assert (=> d!820009 (=> (not res!1175529) (not e!1787488))))

(declare-fun content!4623 (List!33291) (Set Token!9342))

(assert (=> d!820009 (= res!1175529 (set.subset (content!4623 lt!1007908) (content!4623 l!6581)))))

(declare-fun e!1787490 () List!33291)

(assert (=> d!820009 (= lt!1007908 e!1787490)))

(declare-fun c!457368 () Bool)

(assert (=> d!820009 (= c!457368 (or (is-Nil!33167 l!6581) (<= i!1730 0)))))

(assert (=> d!820009 (= (take!564 l!6581 i!1730) lt!1007908)))

(declare-fun b!2824747 () Bool)

(assert (=> b!2824747 (= e!1787489 0)))

(declare-fun b!2824748 () Bool)

(assert (=> b!2824748 (= e!1787490 Nil!33167)))

(declare-fun b!2824749 () Bool)

(assert (=> b!2824749 (= e!1787489 e!1787487)))

(declare-fun c!457367 () Bool)

(assert (=> b!2824749 (= c!457367 (>= i!1730 (size!25830 l!6581)))))

(declare-fun b!2824750 () Bool)

(assert (=> b!2824750 (= e!1787490 (Cons!33167 (h!38587 l!6581) (take!564 (t!230860 l!6581) (- i!1730 1))))))

(assert (= (and d!820009 c!457368) b!2824748))

(assert (= (and d!820009 (not c!457368)) b!2824750))

(assert (= (and d!820009 res!1175529) b!2824744))

(assert (= (and b!2824744 c!457366) b!2824747))

(assert (= (and b!2824744 (not c!457366)) b!2824749))

(assert (= (and b!2824749 c!457367) b!2824745))

(assert (= (and b!2824749 (not c!457367)) b!2824746))

(declare-fun m!3255033 () Bool)

(assert (=> b!2824744 m!3255033))

(declare-fun m!3255035 () Bool)

(assert (=> b!2824749 m!3255035))

(declare-fun m!3255037 () Bool)

(assert (=> b!2824750 m!3255037))

(declare-fun m!3255039 () Bool)

(assert (=> d!820009 m!3255039))

(declare-fun m!3255041 () Bool)

(assert (=> d!820009 m!3255041))

(assert (=> b!2824745 m!3255035))

(assert (=> b!2824643 d!820009))

(declare-fun bs!517869 () Bool)

(declare-fun d!820011 () Bool)

(assert (= bs!517869 (and d!820011 b!2824643)))

(declare-fun lambda!103754 () Int)

(assert (=> bs!517869 (= (= thiss!27755 Lexer!4559) (= lambda!103754 lambda!103748))))

(declare-fun b!2824759 () Bool)

(declare-fun e!1787499 () Bool)

(assert (=> b!2824759 (= e!1787499 true)))

(declare-fun b!2824758 () Bool)

(declare-fun e!1787498 () Bool)

(assert (=> b!2824758 (= e!1787498 e!1787499)))

(declare-fun b!2824757 () Bool)

(declare-fun e!1787497 () Bool)

(assert (=> b!2824757 (= e!1787497 e!1787498)))

(assert (=> d!820011 e!1787497))

(assert (= b!2824758 b!2824759))

(assert (= b!2824757 b!2824758))

(assert (= (and d!820011 (is-Cons!33166 rules!4424)) b!2824757))

(assert (=> b!2824759 (< (dynLambda!13915 order!17673 (toValue!6992 (transformation!4970 (h!38586 rules!4424)))) (dynLambda!13916 order!17675 lambda!103754))))

(assert (=> b!2824759 (< (dynLambda!13917 order!17677 (toChars!6851 (transformation!4970 (h!38586 rules!4424)))) (dynLambda!13916 order!17675 lambda!103754))))

(assert (=> d!820011 true))

(declare-fun lt!1007911 () Bool)

(assert (=> d!820011 (= lt!1007911 (forall!6800 lt!1007875 lambda!103754))))

(declare-fun e!1787495 () Bool)

(assert (=> d!820011 (= lt!1007911 e!1787495)))

(declare-fun res!1175535 () Bool)

(assert (=> d!820011 (=> res!1175535 e!1787495)))

(assert (=> d!820011 (= res!1175535 (not (is-Cons!33167 lt!1007875)))))

(assert (=> d!820011 (not (isEmpty!18343 rules!4424))))

(assert (=> d!820011 (= (rulesProduceEachTokenIndividuallyList!1613 thiss!27755 rules!4424 lt!1007875) lt!1007911)))

(declare-fun b!2824755 () Bool)

(declare-fun e!1787496 () Bool)

(assert (=> b!2824755 (= e!1787495 e!1787496)))

(declare-fun res!1175534 () Bool)

(assert (=> b!2824755 (=> (not res!1175534) (not e!1787496))))

(assert (=> b!2824755 (= res!1175534 (rulesProduceIndividualToken!2099 thiss!27755 rules!4424 (h!38587 lt!1007875)))))

(declare-fun b!2824756 () Bool)

(assert (=> b!2824756 (= e!1787496 (rulesProduceEachTokenIndividuallyList!1613 thiss!27755 rules!4424 (t!230860 lt!1007875)))))

(assert (= (and d!820011 (not res!1175535)) b!2824755))

(assert (= (and b!2824755 res!1175534) b!2824756))

(declare-fun m!3255043 () Bool)

(assert (=> d!820011 m!3255043))

(assert (=> d!820011 m!3254951))

(assert (=> b!2824755 m!3254957))

(assert (=> b!2824756 m!3254943))

(assert (=> b!2824643 d!820011))

(declare-fun bs!517870 () Bool)

(declare-fun d!820013 () Bool)

(assert (= bs!517870 (and d!820013 b!2824643)))

(declare-fun lambda!103755 () Int)

(assert (=> bs!517870 (= (= thiss!27755 Lexer!4559) (= lambda!103755 lambda!103748))))

(declare-fun bs!517871 () Bool)

(assert (= bs!517871 (and d!820013 d!820011)))

(assert (=> bs!517871 (= lambda!103755 lambda!103754)))

(declare-fun b!2824766 () Bool)

(declare-fun e!1787504 () Bool)

(assert (=> b!2824766 (= e!1787504 true)))

(declare-fun b!2824765 () Bool)

(declare-fun e!1787503 () Bool)

(assert (=> b!2824765 (= e!1787503 e!1787504)))

(declare-fun b!2824764 () Bool)

(declare-fun e!1787502 () Bool)

(assert (=> b!2824764 (= e!1787502 e!1787503)))

(assert (=> d!820013 e!1787502))

(assert (= b!2824765 b!2824766))

(assert (= b!2824764 b!2824765))

(assert (= (and d!820013 (is-Cons!33166 rules!4424)) b!2824764))

(assert (=> b!2824766 (< (dynLambda!13915 order!17673 (toValue!6992 (transformation!4970 (h!38586 rules!4424)))) (dynLambda!13916 order!17675 lambda!103755))))

(assert (=> b!2824766 (< (dynLambda!13917 order!17677 (toChars!6851 (transformation!4970 (h!38586 rules!4424)))) (dynLambda!13916 order!17675 lambda!103755))))

(assert (=> d!820013 true))

(declare-fun lt!1007912 () Bool)

(assert (=> d!820013 (= lt!1007912 (forall!6800 l!6581 lambda!103755))))

(declare-fun e!1787500 () Bool)

(assert (=> d!820013 (= lt!1007912 e!1787500)))

(declare-fun res!1175537 () Bool)

(assert (=> d!820013 (=> res!1175537 e!1787500)))

(assert (=> d!820013 (= res!1175537 (not (is-Cons!33167 l!6581)))))

(assert (=> d!820013 (not (isEmpty!18343 rules!4424))))

(assert (=> d!820013 (= (rulesProduceEachTokenIndividuallyList!1613 thiss!27755 rules!4424 l!6581) lt!1007912)))

(declare-fun b!2824762 () Bool)

(declare-fun e!1787501 () Bool)

(assert (=> b!2824762 (= e!1787500 e!1787501)))

(declare-fun res!1175536 () Bool)

(assert (=> b!2824762 (=> (not res!1175536) (not e!1787501))))

(assert (=> b!2824762 (= res!1175536 (rulesProduceIndividualToken!2099 thiss!27755 rules!4424 (h!38587 l!6581)))))

(declare-fun b!2824763 () Bool)

(assert (=> b!2824763 (= e!1787501 (rulesProduceEachTokenIndividuallyList!1613 thiss!27755 rules!4424 (t!230860 l!6581)))))

(assert (= (and d!820013 (not res!1175537)) b!2824762))

(assert (= (and b!2824762 res!1175536) b!2824763))

(declare-fun m!3255045 () Bool)

(assert (=> d!820013 m!3255045))

(assert (=> d!820013 m!3254951))

(declare-fun m!3255047 () Bool)

(assert (=> b!2824762 m!3255047))

(declare-fun m!3255049 () Bool)

(assert (=> b!2824763 m!3255049))

(assert (=> b!2824644 d!820013))

(declare-fun d!820015 () Bool)

(declare-fun res!1175540 () Bool)

(declare-fun e!1787507 () Bool)

(assert (=> d!820015 (=> (not res!1175540) (not e!1787507))))

(declare-fun rulesValid!1833 (LexerInterface!4561 List!33290) Bool)

(assert (=> d!820015 (= res!1175540 (rulesValid!1833 thiss!27755 rules!4424))))

(assert (=> d!820015 (= (rulesInvariant!3979 thiss!27755 rules!4424) e!1787507)))

(declare-fun b!2824769 () Bool)

(declare-datatypes ((List!33296 0))(
  ( (Nil!33172) (Cons!33172 (h!38592 String!36458) (t!230885 List!33296)) )
))
(declare-fun noDuplicateTag!1829 (LexerInterface!4561 List!33290 List!33296) Bool)

(assert (=> b!2824769 (= e!1787507 (noDuplicateTag!1829 thiss!27755 rules!4424 Nil!33172))))

(assert (= (and d!820015 res!1175540) b!2824769))

(declare-fun m!3255051 () Bool)

(assert (=> d!820015 m!3255051))

(declare-fun m!3255053 () Bool)

(assert (=> b!2824769 m!3255053))

(assert (=> b!2824645 d!820015))

(declare-fun d!820017 () Bool)

(assert (=> d!820017 (= (isEmpty!18343 rules!4424) (is-Nil!33166 rules!4424))))

(assert (=> b!2824641 d!820017))

(declare-fun bs!517872 () Bool)

(declare-fun d!820019 () Bool)

(assert (= bs!517872 (and d!820019 b!2824643)))

(declare-fun lambda!103756 () Int)

(assert (=> bs!517872 (= (= thiss!27755 Lexer!4559) (= lambda!103756 lambda!103748))))

(declare-fun bs!517873 () Bool)

(assert (= bs!517873 (and d!820019 d!820011)))

(assert (=> bs!517873 (= lambda!103756 lambda!103754)))

(declare-fun bs!517874 () Bool)

(assert (= bs!517874 (and d!820019 d!820013)))

(assert (=> bs!517874 (= lambda!103756 lambda!103755)))

(declare-fun b!2824774 () Bool)

(declare-fun e!1787512 () Bool)

(assert (=> b!2824774 (= e!1787512 true)))

(declare-fun b!2824773 () Bool)

(declare-fun e!1787511 () Bool)

(assert (=> b!2824773 (= e!1787511 e!1787512)))

(declare-fun b!2824772 () Bool)

(declare-fun e!1787510 () Bool)

(assert (=> b!2824772 (= e!1787510 e!1787511)))

(assert (=> d!820019 e!1787510))

(assert (= b!2824773 b!2824774))

(assert (= b!2824772 b!2824773))

(assert (= (and d!820019 (is-Cons!33166 rules!4424)) b!2824772))

(assert (=> b!2824774 (< (dynLambda!13915 order!17673 (toValue!6992 (transformation!4970 (h!38586 rules!4424)))) (dynLambda!13916 order!17675 lambda!103756))))

(assert (=> b!2824774 (< (dynLambda!13917 order!17677 (toChars!6851 (transformation!4970 (h!38586 rules!4424)))) (dynLambda!13916 order!17675 lambda!103756))))

(assert (=> d!820019 true))

(declare-fun lt!1007913 () Bool)

(assert (=> d!820019 (= lt!1007913 (forall!6800 (t!230860 lt!1007875) lambda!103756))))

(declare-fun e!1787508 () Bool)

(assert (=> d!820019 (= lt!1007913 e!1787508)))

(declare-fun res!1175542 () Bool)

(assert (=> d!820019 (=> res!1175542 e!1787508)))

(assert (=> d!820019 (= res!1175542 (not (is-Cons!33167 (t!230860 lt!1007875))))))

(assert (=> d!820019 (not (isEmpty!18343 rules!4424))))

(assert (=> d!820019 (= (rulesProduceEachTokenIndividuallyList!1613 thiss!27755 rules!4424 (t!230860 lt!1007875)) lt!1007913)))

(declare-fun b!2824770 () Bool)

(declare-fun e!1787509 () Bool)

(assert (=> b!2824770 (= e!1787508 e!1787509)))

(declare-fun res!1175541 () Bool)

(assert (=> b!2824770 (=> (not res!1175541) (not e!1787509))))

(assert (=> b!2824770 (= res!1175541 (rulesProduceIndividualToken!2099 thiss!27755 rules!4424 (h!38587 (t!230860 lt!1007875))))))

(declare-fun b!2824771 () Bool)

(assert (=> b!2824771 (= e!1787509 (rulesProduceEachTokenIndividuallyList!1613 thiss!27755 rules!4424 (t!230860 (t!230860 lt!1007875))))))

(assert (= (and d!820019 (not res!1175542)) b!2824770))

(assert (= (and b!2824770 res!1175541) b!2824771))

(declare-fun m!3255055 () Bool)

(assert (=> d!820019 m!3255055))

(assert (=> d!820019 m!3254951))

(assert (=> b!2824770 m!3255025))

(declare-fun m!3255057 () Bool)

(assert (=> b!2824771 m!3255057))

(assert (=> b!2824642 d!820019))

(declare-fun d!820021 () Bool)

(declare-fun lt!1007922 () Bool)

(declare-fun e!1787526 () Bool)

(assert (=> d!820021 (= lt!1007922 e!1787526)))

(declare-fun res!1175556 () Bool)

(assert (=> d!820021 (=> (not res!1175556) (not e!1787526))))

(declare-datatypes ((IArray!20599 0))(
  ( (IArray!20600 (innerList!10357 List!33291)) )
))
(declare-datatypes ((Conc!10297 0))(
  ( (Node!10297 (left!25061 Conc!10297) (right!25391 Conc!10297) (csize!20824 Int) (cheight!10508 Int)) (Leaf!15674 (xs!13409 IArray!20599) (csize!20825 Int)) (Empty!10297) )
))
(declare-datatypes ((BalanceConc!20232 0))(
  ( (BalanceConc!20233 (c!457384 Conc!10297)) )
))
(declare-fun list!12429 (BalanceConc!20232) List!33291)

(declare-datatypes ((tuple2!33410 0))(
  ( (tuple2!33411 (_1!19798 BalanceConc!20232) (_2!19798 BalanceConc!20228)) )
))
(declare-fun lex!2001 (LexerInterface!4561 List!33290 BalanceConc!20228) tuple2!33410)

(declare-fun print!1720 (LexerInterface!4561 BalanceConc!20232) BalanceConc!20228)

(declare-fun singletonSeq!2146 (Token!9342) BalanceConc!20232)

(assert (=> d!820021 (= res!1175556 (= (list!12429 (_1!19798 (lex!2001 thiss!27755 rules!4424 (print!1720 thiss!27755 (singletonSeq!2146 (h!38587 lt!1007875)))))) (list!12429 (singletonSeq!2146 (h!38587 lt!1007875)))))))

(declare-fun e!1787527 () Bool)

(assert (=> d!820021 (= lt!1007922 e!1787527)))

(declare-fun res!1175557 () Bool)

(assert (=> d!820021 (=> (not res!1175557) (not e!1787527))))

(declare-fun lt!1007921 () tuple2!33410)

(declare-fun size!25831 (BalanceConc!20232) Int)

(assert (=> d!820021 (= res!1175557 (= (size!25831 (_1!19798 lt!1007921)) 1))))

(assert (=> d!820021 (= lt!1007921 (lex!2001 thiss!27755 rules!4424 (print!1720 thiss!27755 (singletonSeq!2146 (h!38587 lt!1007875)))))))

(assert (=> d!820021 (not (isEmpty!18343 rules!4424))))

(assert (=> d!820021 (= (rulesProduceIndividualToken!2099 thiss!27755 rules!4424 (h!38587 lt!1007875)) lt!1007922)))

(declare-fun b!2824792 () Bool)

(declare-fun res!1175555 () Bool)

(assert (=> b!2824792 (=> (not res!1175555) (not e!1787527))))

(declare-fun apply!7745 (BalanceConc!20232 Int) Token!9342)

(assert (=> b!2824792 (= res!1175555 (= (apply!7745 (_1!19798 lt!1007921) 0) (h!38587 lt!1007875)))))

(declare-fun b!2824793 () Bool)

(declare-fun isEmpty!18345 (BalanceConc!20228) Bool)

(assert (=> b!2824793 (= e!1787527 (isEmpty!18345 (_2!19798 lt!1007921)))))

(declare-fun b!2824794 () Bool)

(assert (=> b!2824794 (= e!1787526 (isEmpty!18345 (_2!19798 (lex!2001 thiss!27755 rules!4424 (print!1720 thiss!27755 (singletonSeq!2146 (h!38587 lt!1007875)))))))))

(assert (= (and d!820021 res!1175557) b!2824792))

(assert (= (and b!2824792 res!1175555) b!2824793))

(assert (= (and d!820021 res!1175556) b!2824794))

(declare-fun m!3255065 () Bool)

(assert (=> d!820021 m!3255065))

(declare-fun m!3255067 () Bool)

(assert (=> d!820021 m!3255067))

(declare-fun m!3255069 () Bool)

(assert (=> d!820021 m!3255069))

(declare-fun m!3255071 () Bool)

(assert (=> d!820021 m!3255071))

(assert (=> d!820021 m!3254951))

(declare-fun m!3255073 () Bool)

(assert (=> d!820021 m!3255073))

(declare-fun m!3255075 () Bool)

(assert (=> d!820021 m!3255075))

(assert (=> d!820021 m!3255073))

(assert (=> d!820021 m!3255073))

(assert (=> d!820021 m!3255065))

(declare-fun m!3255077 () Bool)

(assert (=> b!2824792 m!3255077))

(declare-fun m!3255079 () Bool)

(assert (=> b!2824793 m!3255079))

(assert (=> b!2824794 m!3255073))

(assert (=> b!2824794 m!3255073))

(assert (=> b!2824794 m!3255065))

(assert (=> b!2824794 m!3255065))

(assert (=> b!2824794 m!3255067))

(declare-fun m!3255081 () Bool)

(assert (=> b!2824794 m!3255081))

(assert (=> b!2824638 d!820021))

(declare-fun d!820025 () Bool)

(assert (=> d!820025 (= (inv!45095 (tag!5474 (rule!7398 (h!38587 l!6581)))) (= (mod (str.len (value!159965 (tag!5474 (rule!7398 (h!38587 l!6581))))) 2) 0))))

(assert (=> b!2824639 d!820025))

(declare-fun d!820027 () Bool)

(declare-fun res!1175560 () Bool)

(declare-fun e!1787530 () Bool)

(assert (=> d!820027 (=> (not res!1175560) (not e!1787530))))

(declare-fun semiInverseModEq!2063 (Int Int) Bool)

(assert (=> d!820027 (= res!1175560 (semiInverseModEq!2063 (toChars!6851 (transformation!4970 (rule!7398 (h!38587 l!6581)))) (toValue!6992 (transformation!4970 (rule!7398 (h!38587 l!6581))))))))

(assert (=> d!820027 (= (inv!45098 (transformation!4970 (rule!7398 (h!38587 l!6581)))) e!1787530)))

(declare-fun b!2824797 () Bool)

(declare-fun equivClasses!1962 (Int Int) Bool)

(assert (=> b!2824797 (= e!1787530 (equivClasses!1962 (toChars!6851 (transformation!4970 (rule!7398 (h!38587 l!6581)))) (toValue!6992 (transformation!4970 (rule!7398 (h!38587 l!6581))))))))

(assert (= (and d!820027 res!1175560) b!2824797))

(declare-fun m!3255083 () Bool)

(assert (=> d!820027 m!3255083))

(declare-fun m!3255085 () Bool)

(assert (=> b!2824797 m!3255085))

(assert (=> b!2824639 d!820027))

(declare-fun b!2824808 () Bool)

(declare-fun e!1787538 () Bool)

(declare-fun inv!17 (TokenValue!5200) Bool)

(assert (=> b!2824808 (= e!1787538 (inv!17 (value!159966 (h!38587 l!6581))))))

(declare-fun b!2824809 () Bool)

(declare-fun res!1175563 () Bool)

(declare-fun e!1787537 () Bool)

(assert (=> b!2824809 (=> res!1175563 e!1787537)))

(assert (=> b!2824809 (= res!1175563 (not (is-IntegerValue!15602 (value!159966 (h!38587 l!6581)))))))

(assert (=> b!2824809 (= e!1787538 e!1787537)))

(declare-fun d!820029 () Bool)

(declare-fun c!457373 () Bool)

(assert (=> d!820029 (= c!457373 (is-IntegerValue!15600 (value!159966 (h!38587 l!6581))))))

(declare-fun e!1787539 () Bool)

(assert (=> d!820029 (= (inv!21 (value!159966 (h!38587 l!6581))) e!1787539)))

(declare-fun b!2824810 () Bool)

(assert (=> b!2824810 (= e!1787539 e!1787538)))

(declare-fun c!457374 () Bool)

(assert (=> b!2824810 (= c!457374 (is-IntegerValue!15601 (value!159966 (h!38587 l!6581))))))

(declare-fun b!2824811 () Bool)

(declare-fun inv!16 (TokenValue!5200) Bool)

(assert (=> b!2824811 (= e!1787539 (inv!16 (value!159966 (h!38587 l!6581))))))

(declare-fun b!2824812 () Bool)

(declare-fun inv!15 (TokenValue!5200) Bool)

(assert (=> b!2824812 (= e!1787537 (inv!15 (value!159966 (h!38587 l!6581))))))

(assert (= (and d!820029 c!457373) b!2824811))

(assert (= (and d!820029 (not c!457373)) b!2824810))

(assert (= (and b!2824810 c!457374) b!2824808))

(assert (= (and b!2824810 (not c!457374)) b!2824809))

(assert (= (and b!2824809 (not res!1175563)) b!2824812))

(declare-fun m!3255087 () Bool)

(assert (=> b!2824808 m!3255087))

(declare-fun m!3255089 () Bool)

(assert (=> b!2824811 m!3255089))

(declare-fun m!3255091 () Bool)

(assert (=> b!2824812 m!3255091))

(assert (=> b!2824646 d!820029))

(declare-fun d!820031 () Bool)

(assert (=> d!820031 (= (inv!45095 (tag!5474 (h!38586 rules!4424))) (= (mod (str.len (value!159965 (tag!5474 (h!38586 rules!4424)))) 2) 0))))

(assert (=> b!2824636 d!820031))

(declare-fun d!820033 () Bool)

(declare-fun res!1175564 () Bool)

(declare-fun e!1787540 () Bool)

(assert (=> d!820033 (=> (not res!1175564) (not e!1787540))))

(assert (=> d!820033 (= res!1175564 (semiInverseModEq!2063 (toChars!6851 (transformation!4970 (h!38586 rules!4424))) (toValue!6992 (transformation!4970 (h!38586 rules!4424)))))))

(assert (=> d!820033 (= (inv!45098 (transformation!4970 (h!38586 rules!4424))) e!1787540)))

(declare-fun b!2824813 () Bool)

(assert (=> b!2824813 (= e!1787540 (equivClasses!1962 (toChars!6851 (transformation!4970 (h!38586 rules!4424))) (toValue!6992 (transformation!4970 (h!38586 rules!4424)))))))

(assert (= (and d!820033 res!1175564) b!2824813))

(declare-fun m!3255093 () Bool)

(assert (=> d!820033 m!3255093))

(declare-fun m!3255095 () Bool)

(assert (=> b!2824813 m!3255095))

(assert (=> b!2824636 d!820033))

(declare-fun d!820035 () Bool)

(declare-fun res!1175569 () Bool)

(declare-fun e!1787543 () Bool)

(assert (=> d!820035 (=> (not res!1175569) (not e!1787543))))

(declare-fun isEmpty!18346 (List!33289) Bool)

(assert (=> d!820035 (= res!1175569 (not (isEmpty!18346 (originalCharacters!5702 (h!38587 l!6581)))))))

(assert (=> d!820035 (= (inv!45099 (h!38587 l!6581)) e!1787543)))

(declare-fun b!2824818 () Bool)

(declare-fun res!1175570 () Bool)

(assert (=> b!2824818 (=> (not res!1175570) (not e!1787543))))

(declare-fun list!12430 (BalanceConc!20228) List!33289)

(declare-fun dynLambda!13922 (Int TokenValue!5200) BalanceConc!20228)

(assert (=> b!2824818 (= res!1175570 (= (originalCharacters!5702 (h!38587 l!6581)) (list!12430 (dynLambda!13922 (toChars!6851 (transformation!4970 (rule!7398 (h!38587 l!6581)))) (value!159966 (h!38587 l!6581))))))))

(declare-fun b!2824819 () Bool)

(declare-fun size!25832 (List!33289) Int)

(assert (=> b!2824819 (= e!1787543 (= (size!25827 (h!38587 l!6581)) (size!25832 (originalCharacters!5702 (h!38587 l!6581)))))))

(assert (= (and d!820035 res!1175569) b!2824818))

(assert (= (and b!2824818 res!1175570) b!2824819))

(declare-fun b_lambda!84669 () Bool)

(assert (=> (not b_lambda!84669) (not b!2824818)))

(declare-fun t!230873 () Bool)

(declare-fun tb!153989 () Bool)

(assert (=> (and b!2824647 (= (toChars!6851 (transformation!4970 (rule!7398 (h!38587 l!6581)))) (toChars!6851 (transformation!4970 (rule!7398 (h!38587 l!6581))))) t!230873) tb!153989))

(declare-fun b!2824824 () Bool)

(declare-fun e!1787546 () Bool)

(declare-fun tp!902223 () Bool)

(declare-fun inv!45102 (Conc!10295) Bool)

(assert (=> b!2824824 (= e!1787546 (and (inv!45102 (c!457356 (dynLambda!13922 (toChars!6851 (transformation!4970 (rule!7398 (h!38587 l!6581)))) (value!159966 (h!38587 l!6581))))) tp!902223))))

(declare-fun result!191806 () Bool)

(declare-fun inv!45103 (BalanceConc!20228) Bool)

(assert (=> tb!153989 (= result!191806 (and (inv!45103 (dynLambda!13922 (toChars!6851 (transformation!4970 (rule!7398 (h!38587 l!6581)))) (value!159966 (h!38587 l!6581)))) e!1787546))))

(assert (= tb!153989 b!2824824))

(declare-fun m!3255097 () Bool)

(assert (=> b!2824824 m!3255097))

(declare-fun m!3255099 () Bool)

(assert (=> tb!153989 m!3255099))

(assert (=> b!2824818 t!230873))

(declare-fun b_and!206447 () Bool)

(assert (= b_and!206433 (and (=> t!230873 result!191806) b_and!206447)))

(declare-fun t!230875 () Bool)

(declare-fun tb!153991 () Bool)

(assert (=> (and b!2824640 (= (toChars!6851 (transformation!4970 (h!38586 rules!4424))) (toChars!6851 (transformation!4970 (rule!7398 (h!38587 l!6581))))) t!230875) tb!153991))

(declare-fun result!191810 () Bool)

(assert (= result!191810 result!191806))

(assert (=> b!2824818 t!230875))

(declare-fun b_and!206449 () Bool)

(assert (= b_and!206437 (and (=> t!230875 result!191810) b_and!206449)))

(declare-fun m!3255101 () Bool)

(assert (=> d!820035 m!3255101))

(declare-fun m!3255103 () Bool)

(assert (=> b!2824818 m!3255103))

(assert (=> b!2824818 m!3255103))

(declare-fun m!3255105 () Bool)

(assert (=> b!2824818 m!3255105))

(declare-fun m!3255107 () Bool)

(assert (=> b!2824819 m!3255107))

(assert (=> b!2824648 d!820035))

(declare-fun d!820037 () Bool)

(declare-fun res!1175571 () Bool)

(declare-fun e!1787548 () Bool)

(assert (=> d!820037 (=> res!1175571 e!1787548)))

(assert (=> d!820037 (= res!1175571 (or (not (is-Cons!33167 l!6581)) (not (is-Cons!33167 (t!230860 l!6581)))))))

(assert (=> d!820037 (= (tokensListTwoByTwoPredicateSeparableList!698 thiss!27755 l!6581 rules!4424) e!1787548)))

(declare-fun b!2824825 () Bool)

(declare-fun e!1787547 () Bool)

(assert (=> b!2824825 (= e!1787548 e!1787547)))

(declare-fun res!1175572 () Bool)

(assert (=> b!2824825 (=> (not res!1175572) (not e!1787547))))

(assert (=> b!2824825 (= res!1175572 (separableTokensPredicate!903 thiss!27755 (h!38587 l!6581) (h!38587 (t!230860 l!6581)) rules!4424))))

(declare-fun lt!1007928 () Unit!47173)

(declare-fun Unit!47181 () Unit!47173)

(assert (=> b!2824825 (= lt!1007928 Unit!47181)))

(assert (=> b!2824825 (> (size!25829 (charsOf!3078 (h!38587 (t!230860 l!6581)))) 0)))

(declare-fun lt!1007923 () Unit!47173)

(declare-fun Unit!47182 () Unit!47173)

(assert (=> b!2824825 (= lt!1007923 Unit!47182)))

(assert (=> b!2824825 (rulesProduceIndividualToken!2099 thiss!27755 rules!4424 (h!38587 (t!230860 l!6581)))))

(declare-fun lt!1007929 () Unit!47173)

(declare-fun Unit!47183 () Unit!47173)

(assert (=> b!2824825 (= lt!1007929 Unit!47183)))

(assert (=> b!2824825 (rulesProduceIndividualToken!2099 thiss!27755 rules!4424 (h!38587 l!6581))))

(declare-fun lt!1007927 () Unit!47173)

(declare-fun lt!1007924 () Unit!47173)

(assert (=> b!2824825 (= lt!1007927 lt!1007924)))

(assert (=> b!2824825 (rulesProduceIndividualToken!2099 thiss!27755 rules!4424 (h!38587 (t!230860 l!6581)))))

(assert (=> b!2824825 (= lt!1007924 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!717 thiss!27755 rules!4424 l!6581 (h!38587 (t!230860 l!6581))))))

(declare-fun lt!1007925 () Unit!47173)

(declare-fun lt!1007926 () Unit!47173)

(assert (=> b!2824825 (= lt!1007925 lt!1007926)))

(assert (=> b!2824825 (rulesProduceIndividualToken!2099 thiss!27755 rules!4424 (h!38587 l!6581))))

(assert (=> b!2824825 (= lt!1007926 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!717 thiss!27755 rules!4424 l!6581 (h!38587 l!6581)))))

(declare-fun b!2824826 () Bool)

(assert (=> b!2824826 (= e!1787547 (tokensListTwoByTwoPredicateSeparableList!698 thiss!27755 (Cons!33167 (h!38587 (t!230860 l!6581)) (t!230860 (t!230860 l!6581))) rules!4424))))

(assert (= (and d!820037 (not res!1175571)) b!2824825))

(assert (= (and b!2824825 res!1175572) b!2824826))

(declare-fun m!3255109 () Bool)

(assert (=> b!2824825 m!3255109))

(declare-fun m!3255111 () Bool)

(assert (=> b!2824825 m!3255111))

(declare-fun m!3255113 () Bool)

(assert (=> b!2824825 m!3255113))

(assert (=> b!2824825 m!3255111))

(declare-fun m!3255115 () Bool)

(assert (=> b!2824825 m!3255115))

(declare-fun m!3255117 () Bool)

(assert (=> b!2824825 m!3255117))

(assert (=> b!2824825 m!3255047))

(declare-fun m!3255119 () Bool)

(assert (=> b!2824825 m!3255119))

(declare-fun m!3255121 () Bool)

(assert (=> b!2824826 m!3255121))

(assert (=> b!2824637 d!820037))

(declare-fun b!2824829 () Bool)

(declare-fun e!1787551 () Bool)

(assert (=> b!2824829 (= e!1787551 true)))

(declare-fun b!2824828 () Bool)

(declare-fun e!1787550 () Bool)

(assert (=> b!2824828 (= e!1787550 e!1787551)))

(declare-fun b!2824827 () Bool)

(declare-fun e!1787549 () Bool)

(assert (=> b!2824827 (= e!1787549 e!1787550)))

(assert (=> b!2824659 e!1787549))

(assert (= b!2824828 b!2824829))

(assert (= b!2824827 b!2824828))

(assert (= (and b!2824659 (is-Cons!33166 (t!230859 rules!4424))) b!2824827))

(assert (=> b!2824829 (< (dynLambda!13915 order!17673 (toValue!6992 (transformation!4970 (h!38586 (t!230859 rules!4424))))) (dynLambda!13916 order!17675 lambda!103748))))

(assert (=> b!2824829 (< (dynLambda!13917 order!17677 (toChars!6851 (transformation!4970 (h!38586 (t!230859 rules!4424))))) (dynLambda!13916 order!17675 lambda!103748))))

(declare-fun b!2824840 () Bool)

(declare-fun b_free!80941 () Bool)

(declare-fun b_next!81645 () Bool)

(assert (=> b!2824840 (= b_free!80941 (not b_next!81645))))

(declare-fun tp!902232 () Bool)

(declare-fun b_and!206451 () Bool)

(assert (=> b!2824840 (= tp!902232 b_and!206451)))

(declare-fun b_free!80943 () Bool)

(declare-fun b_next!81647 () Bool)

(assert (=> b!2824840 (= b_free!80943 (not b_next!81647))))

(declare-fun tb!153993 () Bool)

(declare-fun t!230877 () Bool)

(assert (=> (and b!2824840 (= (toChars!6851 (transformation!4970 (h!38586 (t!230859 rules!4424)))) (toChars!6851 (transformation!4970 (rule!7398 (h!38587 l!6581))))) t!230877) tb!153993))

(declare-fun result!191814 () Bool)

(assert (= result!191814 result!191806))

(assert (=> b!2824818 t!230877))

(declare-fun b_and!206453 () Bool)

(declare-fun tp!902233 () Bool)

(assert (=> b!2824840 (= tp!902233 (and (=> t!230877 result!191814) b_and!206453))))

(declare-fun e!1787560 () Bool)

(assert (=> b!2824840 (= e!1787560 (and tp!902232 tp!902233))))

(declare-fun b!2824839 () Bool)

(declare-fun tp!902234 () Bool)

(declare-fun e!1787562 () Bool)

(assert (=> b!2824839 (= e!1787562 (and tp!902234 (inv!45095 (tag!5474 (h!38586 (t!230859 rules!4424)))) (inv!45098 (transformation!4970 (h!38586 (t!230859 rules!4424)))) e!1787560))))

(declare-fun b!2824838 () Bool)

(declare-fun e!1787561 () Bool)

(declare-fun tp!902235 () Bool)

(assert (=> b!2824838 (= e!1787561 (and e!1787562 tp!902235))))

(assert (=> b!2824650 (= tp!902187 e!1787561)))

(assert (= b!2824839 b!2824840))

(assert (= b!2824838 b!2824839))

(assert (= (and b!2824650 (is-Cons!33166 (t!230859 rules!4424))) b!2824838))

(declare-fun m!3255123 () Bool)

(assert (=> b!2824839 m!3255123))

(declare-fun m!3255125 () Bool)

(assert (=> b!2824839 m!3255125))

(declare-fun b!2824853 () Bool)

(declare-fun e!1787566 () Bool)

(declare-fun tp!902246 () Bool)

(assert (=> b!2824853 (= e!1787566 tp!902246)))

(declare-fun b!2824852 () Bool)

(declare-fun tp!902248 () Bool)

(declare-fun tp!902250 () Bool)

(assert (=> b!2824852 (= e!1787566 (and tp!902248 tp!902250))))

(declare-fun b!2824851 () Bool)

(declare-fun tp_is_empty!14473 () Bool)

(assert (=> b!2824851 (= e!1787566 tp_is_empty!14473)))

(assert (=> b!2824639 (= tp!902188 e!1787566)))

(declare-fun b!2824854 () Bool)

(declare-fun tp!902247 () Bool)

(declare-fun tp!902249 () Bool)

(assert (=> b!2824854 (= e!1787566 (and tp!902247 tp!902249))))

(assert (= (and b!2824639 (is-ElementMatch!8360 (regex!4970 (rule!7398 (h!38587 l!6581))))) b!2824851))

(assert (= (and b!2824639 (is-Concat!13561 (regex!4970 (rule!7398 (h!38587 l!6581))))) b!2824852))

(assert (= (and b!2824639 (is-Star!8360 (regex!4970 (rule!7398 (h!38587 l!6581))))) b!2824853))

(assert (= (and b!2824639 (is-Union!8360 (regex!4970 (rule!7398 (h!38587 l!6581))))) b!2824854))

(declare-fun b!2824859 () Bool)

(declare-fun e!1787569 () Bool)

(declare-fun tp!902253 () Bool)

(assert (=> b!2824859 (= e!1787569 (and tp_is_empty!14473 tp!902253))))

(assert (=> b!2824646 (= tp!902189 e!1787569)))

(assert (= (and b!2824646 (is-Cons!33165 (originalCharacters!5702 (h!38587 l!6581)))) b!2824859))

(declare-fun b!2824862 () Bool)

(declare-fun e!1787570 () Bool)

(declare-fun tp!902254 () Bool)

(assert (=> b!2824862 (= e!1787570 tp!902254)))

(declare-fun b!2824861 () Bool)

(declare-fun tp!902256 () Bool)

(declare-fun tp!902258 () Bool)

(assert (=> b!2824861 (= e!1787570 (and tp!902256 tp!902258))))

(declare-fun b!2824860 () Bool)

(assert (=> b!2824860 (= e!1787570 tp_is_empty!14473)))

(assert (=> b!2824636 (= tp!902190 e!1787570)))

(declare-fun b!2824863 () Bool)

(declare-fun tp!902255 () Bool)

(declare-fun tp!902257 () Bool)

(assert (=> b!2824863 (= e!1787570 (and tp!902255 tp!902257))))

(assert (= (and b!2824636 (is-ElementMatch!8360 (regex!4970 (h!38586 rules!4424)))) b!2824860))

(assert (= (and b!2824636 (is-Concat!13561 (regex!4970 (h!38586 rules!4424)))) b!2824861))

(assert (= (and b!2824636 (is-Star!8360 (regex!4970 (h!38586 rules!4424)))) b!2824862))

(assert (= (and b!2824636 (is-Union!8360 (regex!4970 (h!38586 rules!4424)))) b!2824863))

(declare-fun b!2824877 () Bool)

(declare-fun b_free!80945 () Bool)

(declare-fun b_next!81649 () Bool)

(assert (=> b!2824877 (= b_free!80945 (not b_next!81649))))

(declare-fun tp!902273 () Bool)

(declare-fun b_and!206455 () Bool)

(assert (=> b!2824877 (= tp!902273 b_and!206455)))

(declare-fun b_free!80947 () Bool)

(declare-fun b_next!81651 () Bool)

(assert (=> b!2824877 (= b_free!80947 (not b_next!81651))))

(declare-fun t!230879 () Bool)

(declare-fun tb!153995 () Bool)

(assert (=> (and b!2824877 (= (toChars!6851 (transformation!4970 (rule!7398 (h!38587 (t!230860 l!6581))))) (toChars!6851 (transformation!4970 (rule!7398 (h!38587 l!6581))))) t!230879) tb!153995))

(declare-fun result!191822 () Bool)

(assert (= result!191822 result!191806))

(assert (=> b!2824818 t!230879))

(declare-fun tp!902269 () Bool)

(declare-fun b_and!206457 () Bool)

(assert (=> b!2824877 (= tp!902269 (and (=> t!230879 result!191822) b_and!206457))))

(declare-fun e!1787588 () Bool)

(declare-fun b!2824874 () Bool)

(declare-fun e!1787583 () Bool)

(declare-fun tp!902272 () Bool)

(assert (=> b!2824874 (= e!1787583 (and (inv!45099 (h!38587 (t!230860 l!6581))) e!1787588 tp!902272))))

(declare-fun tp!902270 () Bool)

(declare-fun e!1787586 () Bool)

(declare-fun b!2824875 () Bool)

(assert (=> b!2824875 (= e!1787588 (and (inv!21 (value!159966 (h!38587 (t!230860 l!6581)))) e!1787586 tp!902270))))

(declare-fun tp!902271 () Bool)

(declare-fun e!1787584 () Bool)

(declare-fun b!2824876 () Bool)

(assert (=> b!2824876 (= e!1787586 (and tp!902271 (inv!45095 (tag!5474 (rule!7398 (h!38587 (t!230860 l!6581))))) (inv!45098 (transformation!4970 (rule!7398 (h!38587 (t!230860 l!6581))))) e!1787584))))

(assert (=> b!2824877 (= e!1787584 (and tp!902273 tp!902269))))

(assert (=> b!2824648 (= tp!902191 e!1787583)))

(assert (= b!2824876 b!2824877))

(assert (= b!2824875 b!2824876))

(assert (= b!2824874 b!2824875))

(assert (= (and b!2824648 (is-Cons!33167 (t!230860 l!6581))) b!2824874))

(declare-fun m!3255127 () Bool)

(assert (=> b!2824874 m!3255127))

(declare-fun m!3255129 () Bool)

(assert (=> b!2824875 m!3255129))

(declare-fun m!3255131 () Bool)

(assert (=> b!2824876 m!3255131))

(declare-fun m!3255133 () Bool)

(assert (=> b!2824876 m!3255133))

(declare-fun b_lambda!84671 () Bool)

(assert (= b_lambda!84667 (or b!2824643 b_lambda!84671)))

(declare-fun bs!517876 () Bool)

(declare-fun d!820039 () Bool)

(assert (= bs!517876 (and d!820039 b!2824643)))

(assert (=> bs!517876 (= (dynLambda!13921 lambda!103748 (h!38587 lt!1007875)) (rulesProduceIndividualToken!2099 Lexer!4559 rules!4424 (h!38587 lt!1007875)))))

(declare-fun m!3255135 () Bool)

(assert (=> bs!517876 m!3255135))

(assert (=> b!2824728 d!820039))

(declare-fun b_lambda!84673 () Bool)

(assert (= b_lambda!84669 (or (and b!2824647 b_free!80927) (and b!2824640 b_free!80931 (= (toChars!6851 (transformation!4970 (h!38586 rules!4424))) (toChars!6851 (transformation!4970 (rule!7398 (h!38587 l!6581)))))) (and b!2824840 b_free!80943 (= (toChars!6851 (transformation!4970 (h!38586 (t!230859 rules!4424)))) (toChars!6851 (transformation!4970 (rule!7398 (h!38587 l!6581)))))) (and b!2824877 b_free!80947 (= (toChars!6851 (transformation!4970 (rule!7398 (h!38587 (t!230860 l!6581))))) (toChars!6851 (transformation!4970 (rule!7398 (h!38587 l!6581)))))) b_lambda!84673)))

(push 1)

(assert (not b!2824852))

(assert b_and!206447)

(assert (not b_lambda!84671))

(assert (not b!2824859))

(assert (not b!2824854))

(assert (not b!2824839))

(assert (not b_next!81645))

(assert (not tb!153989))

(assert (not b!2824808))

(assert (not b!2824825))

(assert (not b_lambda!84673))

(assert (not b_next!81649))

(assert (not b!2824861))

(assert (not d!820013))

(assert (not b_next!81631))

(assert (not b!2824722))

(assert (not b!2824762))

(assert (not b!2824723))

(assert b_and!206451)

(assert b_and!206455)

(assert (not bs!517876))

(assert (not b_next!81629))

(assert (not b!2824745))

(assert (not b!2824812))

(assert (not b!2824819))

(assert (not d!820033))

(assert b_and!206453)

(assert (not b!2824771))

(assert (not b!2824744))

(assert (not b_next!81651))

(assert b_and!206435)

(assert (not b!2824750))

(assert (not b!2824794))

(assert (not b_next!81635))

(assert tp_is_empty!14473)

(assert (not d!820035))

(assert (not b!2824818))

(assert (not b_next!81647))

(assert (not b!2824770))

(assert (not b!2824772))

(assert (not d!820001))

(assert (not d!820019))

(assert (not b!2824757))

(assert (not b!2824875))

(assert (not b!2824755))

(assert (not d!820027))

(assert (not b!2824811))

(assert (not d!820011))

(assert (not b!2824838))

(assert (not b!2824863))

(assert (not b!2824793))

(assert (not b!2824876))

(assert (not b!2824853))

(assert (not b!2824729))

(assert (not b!2824792))

(assert (not b!2824749))

(assert (not b!2824874))

(assert (not b!2824813))

(assert (not b!2824756))

(assert b_and!206457)

(assert (not b!2824769))

(assert b_and!206449)

(assert (not b_next!81633))

(assert b_and!206431)

(assert (not d!820021))

(assert (not b!2824826))

(assert (not d!820015))

(assert (not b!2824797))

(assert (not b!2824862))

(assert (not b!2824824))

(assert (not b!2824763))

(assert (not d!820009))

(assert (not b!2824827))

(assert (not b!2824764))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!81629))

(assert b_and!206447)

(assert b_and!206453)

(assert (not b_next!81651))

(assert b_and!206435)

(assert (not b_next!81635))

(assert (not b_next!81647))

(assert (not b_next!81645))

(assert b_and!206457)

(assert (not b_next!81649))

(assert (not b_next!81631))

(assert b_and!206451)

(assert b_and!206455)

(assert b_and!206449)

(assert (not b_next!81633))

(assert b_and!206431)

(check-sat)

(pop 1)

