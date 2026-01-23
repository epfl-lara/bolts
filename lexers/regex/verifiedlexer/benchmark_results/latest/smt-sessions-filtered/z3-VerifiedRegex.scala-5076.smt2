; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!259594 () Bool)

(assert start!259594)

(declare-fun b!2669113 () Bool)

(declare-fun b_free!74905 () Bool)

(declare-fun b_next!75609 () Bool)

(assert (=> b!2669113 (= b_free!74905 (not b_next!75609))))

(declare-fun tp!843612 () Bool)

(declare-fun b_and!196889 () Bool)

(assert (=> b!2669113 (= tp!843612 b_and!196889)))

(declare-fun b_free!74907 () Bool)

(declare-fun b_next!75611 () Bool)

(assert (=> b!2669113 (= b_free!74907 (not b_next!75611))))

(declare-fun tp!843608 () Bool)

(declare-fun b_and!196891 () Bool)

(assert (=> b!2669113 (= tp!843608 b_and!196891)))

(declare-fun b!2669112 () Bool)

(declare-fun b_free!74909 () Bool)

(declare-fun b_next!75613 () Bool)

(assert (=> b!2669112 (= b_free!74909 (not b_next!75613))))

(declare-fun tp!843614 () Bool)

(declare-fun b_and!196893 () Bool)

(assert (=> b!2669112 (= tp!843614 b_and!196893)))

(declare-fun b_free!74911 () Bool)

(declare-fun b_next!75615 () Bool)

(assert (=> b!2669112 (= b_free!74911 (not b_next!75615))))

(declare-fun tp!843609 () Bool)

(declare-fun b_and!196895 () Bool)

(assert (=> b!2669112 (= tp!843609 b_and!196895)))

(declare-fun b!2669106 () Bool)

(declare-fun b_free!74913 () Bool)

(declare-fun b_next!75617 () Bool)

(assert (=> b!2669106 (= b_free!74913 (not b_next!75617))))

(declare-fun tp!843604 () Bool)

(declare-fun b_and!196897 () Bool)

(assert (=> b!2669106 (= tp!843604 b_and!196897)))

(declare-fun b_free!74915 () Bool)

(declare-fun b_next!75619 () Bool)

(assert (=> b!2669106 (= b_free!74915 (not b_next!75619))))

(declare-fun tp!843606 () Bool)

(declare-fun b_and!196899 () Bool)

(assert (=> b!2669106 (= tp!843606 b_and!196899)))

(declare-fun bs!479374 () Bool)

(declare-fun b!2669114 () Bool)

(declare-fun b!2669102 () Bool)

(assert (= bs!479374 (and b!2669114 b!2669102)))

(declare-fun lambda!99628 () Int)

(declare-fun lambda!99627 () Int)

(assert (=> bs!479374 (not (= lambda!99628 lambda!99627))))

(declare-fun b!2669125 () Bool)

(declare-fun e!1682004 () Bool)

(assert (=> b!2669125 (= e!1682004 true)))

(declare-fun b!2669124 () Bool)

(declare-fun e!1682003 () Bool)

(assert (=> b!2669124 (= e!1682003 e!1682004)))

(declare-fun b!2669123 () Bool)

(declare-fun e!1682002 () Bool)

(assert (=> b!2669123 (= e!1682002 e!1682003)))

(assert (=> b!2669114 e!1682002))

(assert (= b!2669124 b!2669125))

(assert (= b!2669123 b!2669124))

(declare-datatypes ((List!30755 0))(
  ( (Nil!30655) (Cons!30655 (h!36075 (_ BitVec 16)) (t!223012 List!30755)) )
))
(declare-datatypes ((TokenValue!4895 0))(
  ( (FloatLiteralValue!9790 (text!34710 List!30755)) (TokenValueExt!4894 (__x!19623 Int)) (Broken!24475 (value!150759 List!30755)) (Object!4994) (End!4895) (Def!4895) (Underscore!4895) (Match!4895) (Else!4895) (Error!4895) (Case!4895) (If!4895) (Extends!4895) (Abstract!4895) (Class!4895) (Val!4895) (DelimiterValue!9790 (del!4955 List!30755)) (KeywordValue!4901 (value!150760 List!30755)) (CommentValue!9790 (value!150761 List!30755)) (WhitespaceValue!9790 (value!150762 List!30755)) (IndentationValue!4895 (value!150763 List!30755)) (String!34358) (Int32!4895) (Broken!24476 (value!150764 List!30755)) (Boolean!4896) (Unit!44886) (OperatorValue!4898 (op!4955 List!30755)) (IdentifierValue!9790 (value!150765 List!30755)) (IdentifierValue!9791 (value!150766 List!30755)) (WhitespaceValue!9791 (value!150767 List!30755)) (True!9790) (False!9790) (Broken!24477 (value!150768 List!30755)) (Broken!24478 (value!150769 List!30755)) (True!9791) (RightBrace!4895) (RightBracket!4895) (Colon!4895) (Null!4895) (Comma!4895) (LeftBracket!4895) (False!9791) (LeftBrace!4895) (ImaginaryLiteralValue!4895 (text!34711 List!30755)) (StringLiteralValue!14685 (value!150770 List!30755)) (EOFValue!4895 (value!150771 List!30755)) (IdentValue!4895 (value!150772 List!30755)) (DelimiterValue!9791 (value!150773 List!30755)) (DedentValue!4895 (value!150774 List!30755)) (NewLineValue!4895 (value!150775 List!30755)) (IntegerValue!14685 (value!150776 (_ BitVec 32)) (text!34712 List!30755)) (IntegerValue!14686 (value!150777 Int) (text!34713 List!30755)) (Times!4895) (Or!4895) (Equal!4895) (Minus!4895) (Broken!24479 (value!150778 List!30755)) (And!4895) (Div!4895) (LessEqual!4895) (Mod!4895) (Concat!12712) (Not!4895) (Plus!4895) (SpaceValue!4895 (value!150779 List!30755)) (IntegerValue!14687 (value!150780 Int) (text!34714 List!30755)) (StringLiteralValue!14686 (text!34715 List!30755)) (FloatLiteralValue!9791 (text!34716 List!30755)) (BytesLiteralValue!4895 (value!150781 List!30755)) (CommentValue!9791 (value!150782 List!30755)) (StringLiteralValue!14687 (value!150783 List!30755)) (ErrorTokenValue!4895 (msg!4956 List!30755)) )
))
(declare-datatypes ((C!15792 0))(
  ( (C!15793 (val!9830 Int)) )
))
(declare-datatypes ((List!30756 0))(
  ( (Nil!30656) (Cons!30656 (h!36076 C!15792) (t!223013 List!30756)) )
))
(declare-datatypes ((IArray!19171 0))(
  ( (IArray!19172 (innerList!9643 List!30756)) )
))
(declare-datatypes ((Conc!9583 0))(
  ( (Node!9583 (left!23703 Conc!9583) (right!24033 Conc!9583) (csize!19396 Int) (cheight!9794 Int)) (Leaf!14660 (xs!12613 IArray!19171) (csize!19397 Int)) (Empty!9583) )
))
(declare-datatypes ((BalanceConc!18780 0))(
  ( (BalanceConc!18781 (c!430401 Conc!9583)) )
))
(declare-datatypes ((String!34359 0))(
  ( (String!34360 (value!150784 String)) )
))
(declare-datatypes ((Regex!7817 0))(
  ( (ElementMatch!7817 (c!430402 C!15792)) (Concat!12713 (regOne!16146 Regex!7817) (regTwo!16146 Regex!7817)) (EmptyExpr!7817) (Star!7817 (reg!8146 Regex!7817)) (EmptyLang!7817) (Union!7817 (regOne!16147 Regex!7817) (regTwo!16147 Regex!7817)) )
))
(declare-datatypes ((TokenValueInjection!9230 0))(
  ( (TokenValueInjection!9231 (toValue!6611 Int) (toChars!6470 Int)) )
))
(declare-datatypes ((Rule!9146 0))(
  ( (Rule!9147 (regex!4673 Regex!7817) (tag!5175 String!34359) (isSeparator!4673 Bool) (transformation!4673 TokenValueInjection!9230)) )
))
(declare-datatypes ((List!30757 0))(
  ( (Nil!30657) (Cons!30657 (h!36077 Rule!9146) (t!223014 List!30757)) )
))
(declare-fun rules!1712 () List!30757)

(get-info :version)

(assert (= (and b!2669114 ((_ is Cons!30657) rules!1712)) b!2669123))

(declare-fun order!16779 () Int)

(declare-fun order!16781 () Int)

(declare-fun dynLambda!13246 (Int Int) Int)

(declare-fun dynLambda!13247 (Int Int) Int)

(assert (=> b!2669125 (< (dynLambda!13246 order!16779 (toValue!6611 (transformation!4673 (h!36077 rules!1712)))) (dynLambda!13247 order!16781 lambda!99628))))

(declare-fun order!16783 () Int)

(declare-fun dynLambda!13248 (Int Int) Int)

(assert (=> b!2669125 (< (dynLambda!13248 order!16783 (toChars!6470 (transformation!4673 (h!36077 rules!1712)))) (dynLambda!13247 order!16781 lambda!99628))))

(assert (=> b!2669114 true))

(declare-fun e!1681985 () Bool)

(declare-fun e!1681993 () Bool)

(declare-fun b!2669095 () Bool)

(declare-datatypes ((Token!8816 0))(
  ( (Token!8817 (value!150785 TokenValue!4895) (rule!7079 Rule!9146) (size!23727 Int) (originalCharacters!5439 List!30756)) )
))
(declare-fun separatorToken!152 () Token!8816)

(declare-fun tp!843615 () Bool)

(declare-fun inv!21 (TokenValue!4895) Bool)

(assert (=> b!2669095 (= e!1681993 (and (inv!21 (value!150785 separatorToken!152)) e!1681985 tp!843615))))

(declare-fun b!2669096 () Bool)

(declare-fun res!1122189 () Bool)

(declare-fun e!1681995 () Bool)

(assert (=> b!2669096 (=> (not res!1122189) (not e!1681995))))

(assert (=> b!2669096 (= res!1122189 (isSeparator!4673 (rule!7079 separatorToken!152)))))

(declare-fun e!1681982 () Bool)

(declare-datatypes ((List!30758 0))(
  ( (Nil!30658) (Cons!30658 (h!36078 Token!8816) (t!223015 List!30758)) )
))
(declare-fun l!4335 () List!30758)

(declare-fun e!1681987 () Bool)

(declare-fun tp!843616 () Bool)

(declare-fun b!2669097 () Bool)

(declare-fun inv!41661 (Token!8816) Bool)

(assert (=> b!2669097 (= e!1681982 (and (inv!41661 (h!36078 l!4335)) e!1681987 tp!843616))))

(declare-fun b!2669098 () Bool)

(declare-fun res!1122181 () Bool)

(assert (=> b!2669098 (=> (not res!1122181) (not e!1681995))))

(declare-datatypes ((LexerInterface!4270 0))(
  ( (LexerInterfaceExt!4267 (__x!19624 Int)) (Lexer!4268) )
))
(declare-fun thiss!14116 () LexerInterface!4270)

(declare-fun rulesInvariant!3770 (LexerInterface!4270 List!30757) Bool)

(assert (=> b!2669098 (= res!1122181 (rulesInvariant!3770 thiss!14116 rules!1712))))

(declare-fun b!2669099 () Bool)

(declare-fun res!1122183 () Bool)

(assert (=> b!2669099 (=> (not res!1122183) (not e!1681995))))

(declare-fun rulesProduceIndividualToken!1982 (LexerInterface!4270 List!30757 Token!8816) Bool)

(assert (=> b!2669099 (= res!1122183 (rulesProduceIndividualToken!1982 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun b!2669100 () Bool)

(declare-fun res!1122182 () Bool)

(assert (=> b!2669100 (=> (not res!1122182) (not e!1681995))))

(declare-fun isEmpty!17541 (List!30757) Bool)

(assert (=> b!2669100 (= res!1122182 (not (isEmpty!17541 rules!1712)))))

(declare-fun b!2669101 () Bool)

(declare-fun tp!843613 () Bool)

(declare-fun e!1681989 () Bool)

(declare-fun inv!41658 (String!34359) Bool)

(declare-fun inv!41662 (TokenValueInjection!9230) Bool)

(assert (=> b!2669101 (= e!1681985 (and tp!843613 (inv!41658 (tag!5175 (rule!7079 separatorToken!152))) (inv!41662 (transformation!4673 (rule!7079 separatorToken!152))) e!1681989))))

(declare-fun res!1122185 () Bool)

(assert (=> b!2669102 (=> (not res!1122185) (not e!1681995))))

(declare-fun forall!6486 (List!30758 Int) Bool)

(assert (=> b!2669102 (= res!1122185 (forall!6486 l!4335 lambda!99627))))

(declare-fun e!1681991 () Bool)

(declare-fun b!2669103 () Bool)

(declare-fun e!1681988 () Bool)

(declare-fun tp!843610 () Bool)

(assert (=> b!2669103 (= e!1681988 (and tp!843610 (inv!41658 (tag!5175 (h!36077 rules!1712))) (inv!41662 (transformation!4673 (h!36077 rules!1712))) e!1681991))))

(declare-fun res!1122187 () Bool)

(assert (=> start!259594 (=> (not res!1122187) (not e!1681995))))

(assert (=> start!259594 (= res!1122187 ((_ is Lexer!4268) thiss!14116))))

(assert (=> start!259594 e!1681995))

(assert (=> start!259594 true))

(declare-fun e!1681980 () Bool)

(assert (=> start!259594 e!1681980))

(assert (=> start!259594 e!1681982))

(assert (=> start!259594 (and (inv!41661 separatorToken!152) e!1681993)))

(declare-fun b!2669104 () Bool)

(declare-fun res!1122190 () Bool)

(assert (=> b!2669104 (=> (not res!1122190) (not e!1681995))))

(declare-fun sepAndNonSepRulesDisjointChars!1246 (List!30757 List!30757) Bool)

(assert (=> b!2669104 (= res!1122190 (sepAndNonSepRulesDisjointChars!1246 rules!1712 rules!1712))))

(declare-fun b!2669105 () Bool)

(declare-fun res!1122188 () Bool)

(assert (=> b!2669105 (=> (not res!1122188) (not e!1681995))))

(assert (=> b!2669105 (= res!1122188 ((_ is Cons!30658) l!4335))))

(assert (=> b!2669106 (= e!1681991 (and tp!843604 tp!843606))))

(declare-fun b!2669107 () Bool)

(declare-fun tp!843611 () Bool)

(assert (=> b!2669107 (= e!1681980 (and e!1681988 tp!843611))))

(declare-fun b!2669108 () Bool)

(declare-fun res!1122186 () Bool)

(assert (=> b!2669108 (=> (not res!1122186) (not e!1681995))))

(declare-fun rulesProduceEachTokenIndividuallyList!1492 (LexerInterface!4270 List!30757 List!30758) Bool)

(assert (=> b!2669108 (= res!1122186 (rulesProduceEachTokenIndividuallyList!1492 thiss!14116 rules!1712 l!4335))))

(declare-fun e!1681981 () Bool)

(declare-fun tp!843607 () Bool)

(declare-fun b!2669109 () Bool)

(declare-fun e!1681983 () Bool)

(assert (=> b!2669109 (= e!1681983 (and tp!843607 (inv!41658 (tag!5175 (rule!7079 (h!36078 l!4335)))) (inv!41662 (transformation!4673 (rule!7079 (h!36078 l!4335)))) e!1681981))))

(declare-fun b!2669110 () Bool)

(declare-fun res!1122184 () Bool)

(assert (=> b!2669110 (=> (not res!1122184) (not e!1681995))))

(declare-fun contains!5881 (List!30758 Token!8816) Bool)

(assert (=> b!2669110 (= res!1122184 (contains!5881 l!4335 (h!36078 l!4335)))))

(declare-fun tp!843605 () Bool)

(declare-fun b!2669111 () Bool)

(assert (=> b!2669111 (= e!1681987 (and (inv!21 (value!150785 (h!36078 l!4335))) e!1681983 tp!843605))))

(assert (=> b!2669112 (= e!1681981 (and tp!843614 tp!843609))))

(assert (=> b!2669113 (= e!1681989 (and tp!843612 tp!843608))))

(assert (=> b!2669114 (= e!1681995 (not (rulesProduceEachTokenIndividuallyList!1492 thiss!14116 rules!1712 (t!223015 l!4335))))))

(declare-datatypes ((Unit!44887 0))(
  ( (Unit!44888) )
))
(declare-fun lt!940378 () Unit!44887)

(declare-fun forallContained!1015 (List!30758 Int Token!8816) Unit!44887)

(assert (=> b!2669114 (= lt!940378 (forallContained!1015 l!4335 lambda!99628 (h!36078 l!4335)))))

(assert (= (and start!259594 res!1122187) b!2669100))

(assert (= (and b!2669100 res!1122182) b!2669098))

(assert (= (and b!2669098 res!1122181) b!2669108))

(assert (= (and b!2669108 res!1122186) b!2669099))

(assert (= (and b!2669099 res!1122183) b!2669096))

(assert (= (and b!2669096 res!1122189) b!2669102))

(assert (= (and b!2669102 res!1122185) b!2669104))

(assert (= (and b!2669104 res!1122190) b!2669105))

(assert (= (and b!2669105 res!1122188) b!2669110))

(assert (= (and b!2669110 res!1122184) b!2669114))

(assert (= b!2669103 b!2669106))

(assert (= b!2669107 b!2669103))

(assert (= (and start!259594 ((_ is Cons!30657) rules!1712)) b!2669107))

(assert (= b!2669109 b!2669112))

(assert (= b!2669111 b!2669109))

(assert (= b!2669097 b!2669111))

(assert (= (and start!259594 ((_ is Cons!30658) l!4335)) b!2669097))

(assert (= b!2669101 b!2669113))

(assert (= b!2669095 b!2669101))

(assert (= start!259594 b!2669095))

(declare-fun m!3035649 () Bool)

(assert (=> b!2669109 m!3035649))

(declare-fun m!3035651 () Bool)

(assert (=> b!2669109 m!3035651))

(declare-fun m!3035653 () Bool)

(assert (=> b!2669101 m!3035653))

(declare-fun m!3035655 () Bool)

(assert (=> b!2669101 m!3035655))

(declare-fun m!3035657 () Bool)

(assert (=> b!2669104 m!3035657))

(declare-fun m!3035659 () Bool)

(assert (=> b!2669111 m!3035659))

(declare-fun m!3035661 () Bool)

(assert (=> b!2669102 m!3035661))

(declare-fun m!3035663 () Bool)

(assert (=> b!2669114 m!3035663))

(declare-fun m!3035665 () Bool)

(assert (=> b!2669114 m!3035665))

(declare-fun m!3035667 () Bool)

(assert (=> start!259594 m!3035667))

(declare-fun m!3035669 () Bool)

(assert (=> b!2669099 m!3035669))

(declare-fun m!3035671 () Bool)

(assert (=> b!2669100 m!3035671))

(declare-fun m!3035673 () Bool)

(assert (=> b!2669095 m!3035673))

(declare-fun m!3035675 () Bool)

(assert (=> b!2669103 m!3035675))

(declare-fun m!3035677 () Bool)

(assert (=> b!2669103 m!3035677))

(declare-fun m!3035679 () Bool)

(assert (=> b!2669097 m!3035679))

(declare-fun m!3035681 () Bool)

(assert (=> b!2669110 m!3035681))

(declare-fun m!3035683 () Bool)

(assert (=> b!2669108 m!3035683))

(declare-fun m!3035685 () Bool)

(assert (=> b!2669098 m!3035685))

(check-sat (not b!2669101) (not b_next!75617) (not b!2669103) (not b!2669110) (not b!2669100) (not b!2669107) (not b!2669097) (not b!2669098) (not b!2669104) (not b!2669108) (not b_next!75611) (not b!2669123) (not b!2669111) (not b_next!75619) (not b!2669102) (not b_next!75613) (not b!2669109) b_and!196897 (not b!2669114) b_and!196889 (not b!2669099) (not start!259594) b_and!196895 (not b_next!75609) (not b_next!75615) (not b!2669095) b_and!196891 b_and!196893 b_and!196899)
(check-sat (not b_next!75617) b_and!196889 (not b_next!75611) (not b_next!75619) (not b_next!75613) b_and!196897 b_and!196895 (not b_next!75609) (not b_next!75615) b_and!196891 b_and!196893 b_and!196899)
(get-model)

(declare-fun d!763465 () Bool)

(assert (=> d!763465 (= (inv!41658 (tag!5175 (rule!7079 separatorToken!152))) (= (mod (str.len (value!150784 (tag!5175 (rule!7079 separatorToken!152)))) 2) 0))))

(assert (=> b!2669101 d!763465))

(declare-fun d!763469 () Bool)

(declare-fun res!1122232 () Bool)

(declare-fun e!1682043 () Bool)

(assert (=> d!763469 (=> (not res!1122232) (not e!1682043))))

(declare-fun semiInverseModEq!1936 (Int Int) Bool)

(assert (=> d!763469 (= res!1122232 (semiInverseModEq!1936 (toChars!6470 (transformation!4673 (rule!7079 separatorToken!152))) (toValue!6611 (transformation!4673 (rule!7079 separatorToken!152)))))))

(assert (=> d!763469 (= (inv!41662 (transformation!4673 (rule!7079 separatorToken!152))) e!1682043)))

(declare-fun b!2669177 () Bool)

(declare-fun equivClasses!1837 (Int Int) Bool)

(assert (=> b!2669177 (= e!1682043 (equivClasses!1837 (toChars!6470 (transformation!4673 (rule!7079 separatorToken!152))) (toValue!6611 (transformation!4673 (rule!7079 separatorToken!152)))))))

(assert (= (and d!763469 res!1122232) b!2669177))

(declare-fun m!3035715 () Bool)

(assert (=> d!763469 m!3035715))

(declare-fun m!3035717 () Bool)

(assert (=> b!2669177 m!3035717))

(assert (=> b!2669101 d!763469))

(declare-fun d!763477 () Bool)

(declare-fun res!1122237 () Bool)

(declare-fun e!1682047 () Bool)

(assert (=> d!763477 (=> (not res!1122237) (not e!1682047))))

(declare-fun isEmpty!17544 (List!30756) Bool)

(assert (=> d!763477 (= res!1122237 (not (isEmpty!17544 (originalCharacters!5439 separatorToken!152))))))

(assert (=> d!763477 (= (inv!41661 separatorToken!152) e!1682047)))

(declare-fun b!2669183 () Bool)

(declare-fun res!1122238 () Bool)

(assert (=> b!2669183 (=> (not res!1122238) (not e!1682047))))

(declare-fun list!11578 (BalanceConc!18780) List!30756)

(declare-fun dynLambda!13251 (Int TokenValue!4895) BalanceConc!18780)

(assert (=> b!2669183 (= res!1122238 (= (originalCharacters!5439 separatorToken!152) (list!11578 (dynLambda!13251 (toChars!6470 (transformation!4673 (rule!7079 separatorToken!152))) (value!150785 separatorToken!152)))))))

(declare-fun b!2669184 () Bool)

(declare-fun size!23730 (List!30756) Int)

(assert (=> b!2669184 (= e!1682047 (= (size!23727 separatorToken!152) (size!23730 (originalCharacters!5439 separatorToken!152))))))

(assert (= (and d!763477 res!1122237) b!2669183))

(assert (= (and b!2669183 res!1122238) b!2669184))

(declare-fun b_lambda!81227 () Bool)

(assert (=> (not b_lambda!81227) (not b!2669183)))

(declare-fun t!223023 () Bool)

(declare-fun tb!149543 () Bool)

(assert (=> (and b!2669113 (= (toChars!6470 (transformation!4673 (rule!7079 separatorToken!152))) (toChars!6470 (transformation!4673 (rule!7079 separatorToken!152)))) t!223023) tb!149543))

(declare-fun b!2669189 () Bool)

(declare-fun e!1682050 () Bool)

(declare-fun tp!843622 () Bool)

(declare-fun inv!41665 (Conc!9583) Bool)

(assert (=> b!2669189 (= e!1682050 (and (inv!41665 (c!430401 (dynLambda!13251 (toChars!6470 (transformation!4673 (rule!7079 separatorToken!152))) (value!150785 separatorToken!152)))) tp!843622))))

(declare-fun result!184684 () Bool)

(declare-fun inv!41666 (BalanceConc!18780) Bool)

(assert (=> tb!149543 (= result!184684 (and (inv!41666 (dynLambda!13251 (toChars!6470 (transformation!4673 (rule!7079 separatorToken!152))) (value!150785 separatorToken!152))) e!1682050))))

(assert (= tb!149543 b!2669189))

(declare-fun m!3035731 () Bool)

(assert (=> b!2669189 m!3035731))

(declare-fun m!3035733 () Bool)

(assert (=> tb!149543 m!3035733))

(assert (=> b!2669183 t!223023))

(declare-fun b_and!196907 () Bool)

(assert (= b_and!196891 (and (=> t!223023 result!184684) b_and!196907)))

(declare-fun t!223025 () Bool)

(declare-fun tb!149545 () Bool)

(assert (=> (and b!2669112 (= (toChars!6470 (transformation!4673 (rule!7079 (h!36078 l!4335)))) (toChars!6470 (transformation!4673 (rule!7079 separatorToken!152)))) t!223025) tb!149545))

(declare-fun result!184688 () Bool)

(assert (= result!184688 result!184684))

(assert (=> b!2669183 t!223025))

(declare-fun b_and!196909 () Bool)

(assert (= b_and!196895 (and (=> t!223025 result!184688) b_and!196909)))

(declare-fun tb!149547 () Bool)

(declare-fun t!223027 () Bool)

(assert (=> (and b!2669106 (= (toChars!6470 (transformation!4673 (h!36077 rules!1712))) (toChars!6470 (transformation!4673 (rule!7079 separatorToken!152)))) t!223027) tb!149547))

(declare-fun result!184690 () Bool)

(assert (= result!184690 result!184684))

(assert (=> b!2669183 t!223027))

(declare-fun b_and!196911 () Bool)

(assert (= b_and!196899 (and (=> t!223027 result!184690) b_and!196911)))

(declare-fun m!3035735 () Bool)

(assert (=> d!763477 m!3035735))

(declare-fun m!3035737 () Bool)

(assert (=> b!2669183 m!3035737))

(assert (=> b!2669183 m!3035737))

(declare-fun m!3035739 () Bool)

(assert (=> b!2669183 m!3035739))

(declare-fun m!3035741 () Bool)

(assert (=> b!2669184 m!3035741))

(assert (=> start!259594 d!763477))

(declare-fun d!763481 () Bool)

(declare-fun lt!940384 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4353 (List!30758) (InoxSet Token!8816))

(assert (=> d!763481 (= lt!940384 (select (content!4353 l!4335) (h!36078 l!4335)))))

(declare-fun e!1682056 () Bool)

(assert (=> d!763481 (= lt!940384 e!1682056)))

(declare-fun res!1122244 () Bool)

(assert (=> d!763481 (=> (not res!1122244) (not e!1682056))))

(assert (=> d!763481 (= res!1122244 ((_ is Cons!30658) l!4335))))

(assert (=> d!763481 (= (contains!5881 l!4335 (h!36078 l!4335)) lt!940384)))

(declare-fun b!2669194 () Bool)

(declare-fun e!1682055 () Bool)

(assert (=> b!2669194 (= e!1682056 e!1682055)))

(declare-fun res!1122243 () Bool)

(assert (=> b!2669194 (=> res!1122243 e!1682055)))

(assert (=> b!2669194 (= res!1122243 (= (h!36078 l!4335) (h!36078 l!4335)))))

(declare-fun b!2669195 () Bool)

(assert (=> b!2669195 (= e!1682055 (contains!5881 (t!223015 l!4335) (h!36078 l!4335)))))

(assert (= (and d!763481 res!1122244) b!2669194))

(assert (= (and b!2669194 (not res!1122243)) b!2669195))

(declare-fun m!3035743 () Bool)

(assert (=> d!763481 m!3035743))

(declare-fun m!3035745 () Bool)

(assert (=> d!763481 m!3035745))

(declare-fun m!3035747 () Bool)

(assert (=> b!2669195 m!3035747))

(assert (=> b!2669110 d!763481))

(declare-fun b!2669206 () Bool)

(declare-fun e!1682064 () Bool)

(declare-fun inv!17 (TokenValue!4895) Bool)

(assert (=> b!2669206 (= e!1682064 (inv!17 (value!150785 (h!36078 l!4335))))))

(declare-fun b!2669207 () Bool)

(declare-fun e!1682065 () Bool)

(declare-fun inv!16 (TokenValue!4895) Bool)

(assert (=> b!2669207 (= e!1682065 (inv!16 (value!150785 (h!36078 l!4335))))))

(declare-fun b!2669208 () Bool)

(assert (=> b!2669208 (= e!1682065 e!1682064)))

(declare-fun c!430413 () Bool)

(assert (=> b!2669208 (= c!430413 ((_ is IntegerValue!14686) (value!150785 (h!36078 l!4335))))))

(declare-fun d!763483 () Bool)

(declare-fun c!430414 () Bool)

(assert (=> d!763483 (= c!430414 ((_ is IntegerValue!14685) (value!150785 (h!36078 l!4335))))))

(assert (=> d!763483 (= (inv!21 (value!150785 (h!36078 l!4335))) e!1682065)))

(declare-fun b!2669209 () Bool)

(declare-fun res!1122247 () Bool)

(declare-fun e!1682063 () Bool)

(assert (=> b!2669209 (=> res!1122247 e!1682063)))

(assert (=> b!2669209 (= res!1122247 (not ((_ is IntegerValue!14687) (value!150785 (h!36078 l!4335)))))))

(assert (=> b!2669209 (= e!1682064 e!1682063)))

(declare-fun b!2669210 () Bool)

(declare-fun inv!15 (TokenValue!4895) Bool)

(assert (=> b!2669210 (= e!1682063 (inv!15 (value!150785 (h!36078 l!4335))))))

(assert (= (and d!763483 c!430414) b!2669207))

(assert (= (and d!763483 (not c!430414)) b!2669208))

(assert (= (and b!2669208 c!430413) b!2669206))

(assert (= (and b!2669208 (not c!430413)) b!2669209))

(assert (= (and b!2669209 (not res!1122247)) b!2669210))

(declare-fun m!3035749 () Bool)

(assert (=> b!2669206 m!3035749))

(declare-fun m!3035751 () Bool)

(assert (=> b!2669207 m!3035751))

(declare-fun m!3035753 () Bool)

(assert (=> b!2669210 m!3035753))

(assert (=> b!2669111 d!763483))

(declare-fun d!763485 () Bool)

(assert (=> d!763485 (= (isEmpty!17541 rules!1712) ((_ is Nil!30657) rules!1712))))

(assert (=> b!2669100 d!763485))

(declare-fun d!763487 () Bool)

(assert (=> d!763487 (= (inv!41658 (tag!5175 (rule!7079 (h!36078 l!4335)))) (= (mod (str.len (value!150784 (tag!5175 (rule!7079 (h!36078 l!4335))))) 2) 0))))

(assert (=> b!2669109 d!763487))

(declare-fun d!763489 () Bool)

(declare-fun res!1122248 () Bool)

(declare-fun e!1682066 () Bool)

(assert (=> d!763489 (=> (not res!1122248) (not e!1682066))))

(assert (=> d!763489 (= res!1122248 (semiInverseModEq!1936 (toChars!6470 (transformation!4673 (rule!7079 (h!36078 l!4335)))) (toValue!6611 (transformation!4673 (rule!7079 (h!36078 l!4335))))))))

(assert (=> d!763489 (= (inv!41662 (transformation!4673 (rule!7079 (h!36078 l!4335)))) e!1682066)))

(declare-fun b!2669211 () Bool)

(assert (=> b!2669211 (= e!1682066 (equivClasses!1837 (toChars!6470 (transformation!4673 (rule!7079 (h!36078 l!4335)))) (toValue!6611 (transformation!4673 (rule!7079 (h!36078 l!4335))))))))

(assert (= (and d!763489 res!1122248) b!2669211))

(declare-fun m!3035755 () Bool)

(assert (=> d!763489 m!3035755))

(declare-fun m!3035757 () Bool)

(assert (=> b!2669211 m!3035757))

(assert (=> b!2669109 d!763489))

(declare-fun d!763491 () Bool)

(declare-fun res!1122251 () Bool)

(declare-fun e!1682069 () Bool)

(assert (=> d!763491 (=> (not res!1122251) (not e!1682069))))

(declare-fun rulesValid!1742 (LexerInterface!4270 List!30757) Bool)

(assert (=> d!763491 (= res!1122251 (rulesValid!1742 thiss!14116 rules!1712))))

(assert (=> d!763491 (= (rulesInvariant!3770 thiss!14116 rules!1712) e!1682069)))

(declare-fun b!2669214 () Bool)

(declare-datatypes ((List!30760 0))(
  ( (Nil!30660) (Cons!30660 (h!36080 String!34359) (t!223063 List!30760)) )
))
(declare-fun noDuplicateTag!1738 (LexerInterface!4270 List!30757 List!30760) Bool)

(assert (=> b!2669214 (= e!1682069 (noDuplicateTag!1738 thiss!14116 rules!1712 Nil!30660))))

(assert (= (and d!763491 res!1122251) b!2669214))

(declare-fun m!3035759 () Bool)

(assert (=> d!763491 m!3035759))

(declare-fun m!3035761 () Bool)

(assert (=> b!2669214 m!3035761))

(assert (=> b!2669098 d!763491))

(declare-fun d!763493 () Bool)

(declare-fun lt!940403 () Bool)

(declare-fun e!1682149 () Bool)

(assert (=> d!763493 (= lt!940403 e!1682149)))

(declare-fun res!1122286 () Bool)

(assert (=> d!763493 (=> (not res!1122286) (not e!1682149))))

(declare-datatypes ((IArray!19175 0))(
  ( (IArray!19176 (innerList!9645 List!30758)) )
))
(declare-datatypes ((Conc!9585 0))(
  ( (Node!9585 (left!23705 Conc!9585) (right!24035 Conc!9585) (csize!19400 Int) (cheight!9796 Int)) (Leaf!14662 (xs!12615 IArray!19175) (csize!19401 Int)) (Empty!9585) )
))
(declare-datatypes ((BalanceConc!18784 0))(
  ( (BalanceConc!18785 (c!430420 Conc!9585)) )
))
(declare-fun list!11579 (BalanceConc!18784) List!30758)

(declare-datatypes ((tuple2!30170 0))(
  ( (tuple2!30171 (_1!17627 BalanceConc!18784) (_2!17627 BalanceConc!18780)) )
))
(declare-fun lex!1921 (LexerInterface!4270 List!30757 BalanceConc!18780) tuple2!30170)

(declare-fun print!1659 (LexerInterface!4270 BalanceConc!18784) BalanceConc!18780)

(declare-fun singletonSeq!2078 (Token!8816) BalanceConc!18784)

(assert (=> d!763493 (= res!1122286 (= (list!11579 (_1!17627 (lex!1921 thiss!14116 rules!1712 (print!1659 thiss!14116 (singletonSeq!2078 separatorToken!152))))) (list!11579 (singletonSeq!2078 separatorToken!152))))))

(declare-fun e!1682148 () Bool)

(assert (=> d!763493 (= lt!940403 e!1682148)))

(declare-fun res!1122285 () Bool)

(assert (=> d!763493 (=> (not res!1122285) (not e!1682148))))

(declare-fun lt!940402 () tuple2!30170)

(declare-fun size!23731 (BalanceConc!18784) Int)

(assert (=> d!763493 (= res!1122285 (= (size!23731 (_1!17627 lt!940402)) 1))))

(assert (=> d!763493 (= lt!940402 (lex!1921 thiss!14116 rules!1712 (print!1659 thiss!14116 (singletonSeq!2078 separatorToken!152))))))

(assert (=> d!763493 (not (isEmpty!17541 rules!1712))))

(assert (=> d!763493 (= (rulesProduceIndividualToken!1982 thiss!14116 rules!1712 separatorToken!152) lt!940403)))

(declare-fun b!2669315 () Bool)

(declare-fun res!1122287 () Bool)

(assert (=> b!2669315 (=> (not res!1122287) (not e!1682148))))

(declare-fun apply!7354 (BalanceConc!18784 Int) Token!8816)

(assert (=> b!2669315 (= res!1122287 (= (apply!7354 (_1!17627 lt!940402) 0) separatorToken!152))))

(declare-fun b!2669316 () Bool)

(declare-fun isEmpty!17545 (BalanceConc!18780) Bool)

(assert (=> b!2669316 (= e!1682148 (isEmpty!17545 (_2!17627 lt!940402)))))

(declare-fun b!2669317 () Bool)

(assert (=> b!2669317 (= e!1682149 (isEmpty!17545 (_2!17627 (lex!1921 thiss!14116 rules!1712 (print!1659 thiss!14116 (singletonSeq!2078 separatorToken!152))))))))

(assert (= (and d!763493 res!1122285) b!2669315))

(assert (= (and b!2669315 res!1122287) b!2669316))

(assert (= (and d!763493 res!1122286) b!2669317))

(declare-fun m!3035835 () Bool)

(assert (=> d!763493 m!3035835))

(declare-fun m!3035837 () Bool)

(assert (=> d!763493 m!3035837))

(declare-fun m!3035839 () Bool)

(assert (=> d!763493 m!3035839))

(declare-fun m!3035841 () Bool)

(assert (=> d!763493 m!3035841))

(assert (=> d!763493 m!3035841))

(assert (=> d!763493 m!3035835))

(assert (=> d!763493 m!3035841))

(declare-fun m!3035843 () Bool)

(assert (=> d!763493 m!3035843))

(assert (=> d!763493 m!3035671))

(declare-fun m!3035845 () Bool)

(assert (=> d!763493 m!3035845))

(declare-fun m!3035847 () Bool)

(assert (=> b!2669315 m!3035847))

(declare-fun m!3035849 () Bool)

(assert (=> b!2669316 m!3035849))

(assert (=> b!2669317 m!3035841))

(assert (=> b!2669317 m!3035841))

(assert (=> b!2669317 m!3035835))

(assert (=> b!2669317 m!3035835))

(assert (=> b!2669317 m!3035837))

(declare-fun m!3035851 () Bool)

(assert (=> b!2669317 m!3035851))

(assert (=> b!2669099 d!763493))

(declare-fun d!763515 () Bool)

(declare-fun res!1122288 () Bool)

(declare-fun e!1682150 () Bool)

(assert (=> d!763515 (=> (not res!1122288) (not e!1682150))))

(assert (=> d!763515 (= res!1122288 (not (isEmpty!17544 (originalCharacters!5439 (h!36078 l!4335)))))))

(assert (=> d!763515 (= (inv!41661 (h!36078 l!4335)) e!1682150)))

(declare-fun b!2669318 () Bool)

(declare-fun res!1122289 () Bool)

(assert (=> b!2669318 (=> (not res!1122289) (not e!1682150))))

(assert (=> b!2669318 (= res!1122289 (= (originalCharacters!5439 (h!36078 l!4335)) (list!11578 (dynLambda!13251 (toChars!6470 (transformation!4673 (rule!7079 (h!36078 l!4335)))) (value!150785 (h!36078 l!4335))))))))

(declare-fun b!2669319 () Bool)

(assert (=> b!2669319 (= e!1682150 (= (size!23727 (h!36078 l!4335)) (size!23730 (originalCharacters!5439 (h!36078 l!4335)))))))

(assert (= (and d!763515 res!1122288) b!2669318))

(assert (= (and b!2669318 res!1122289) b!2669319))

(declare-fun b_lambda!81241 () Bool)

(assert (=> (not b_lambda!81241) (not b!2669318)))

(declare-fun t!223047 () Bool)

(declare-fun tb!149563 () Bool)

(assert (=> (and b!2669113 (= (toChars!6470 (transformation!4673 (rule!7079 separatorToken!152))) (toChars!6470 (transformation!4673 (rule!7079 (h!36078 l!4335))))) t!223047) tb!149563))

(declare-fun b!2669320 () Bool)

(declare-fun e!1682151 () Bool)

(declare-fun tp!843680 () Bool)

(assert (=> b!2669320 (= e!1682151 (and (inv!41665 (c!430401 (dynLambda!13251 (toChars!6470 (transformation!4673 (rule!7079 (h!36078 l!4335)))) (value!150785 (h!36078 l!4335))))) tp!843680))))

(declare-fun result!184714 () Bool)

(assert (=> tb!149563 (= result!184714 (and (inv!41666 (dynLambda!13251 (toChars!6470 (transformation!4673 (rule!7079 (h!36078 l!4335)))) (value!150785 (h!36078 l!4335)))) e!1682151))))

(assert (= tb!149563 b!2669320))

(declare-fun m!3035853 () Bool)

(assert (=> b!2669320 m!3035853))

(declare-fun m!3035855 () Bool)

(assert (=> tb!149563 m!3035855))

(assert (=> b!2669318 t!223047))

(declare-fun b_and!196927 () Bool)

(assert (= b_and!196907 (and (=> t!223047 result!184714) b_and!196927)))

(declare-fun t!223049 () Bool)

(declare-fun tb!149565 () Bool)

(assert (=> (and b!2669112 (= (toChars!6470 (transformation!4673 (rule!7079 (h!36078 l!4335)))) (toChars!6470 (transformation!4673 (rule!7079 (h!36078 l!4335))))) t!223049) tb!149565))

(declare-fun result!184716 () Bool)

(assert (= result!184716 result!184714))

(assert (=> b!2669318 t!223049))

(declare-fun b_and!196929 () Bool)

(assert (= b_and!196909 (and (=> t!223049 result!184716) b_and!196929)))

(declare-fun tb!149567 () Bool)

(declare-fun t!223051 () Bool)

(assert (=> (and b!2669106 (= (toChars!6470 (transformation!4673 (h!36077 rules!1712))) (toChars!6470 (transformation!4673 (rule!7079 (h!36078 l!4335))))) t!223051) tb!149567))

(declare-fun result!184718 () Bool)

(assert (= result!184718 result!184714))

(assert (=> b!2669318 t!223051))

(declare-fun b_and!196931 () Bool)

(assert (= b_and!196911 (and (=> t!223051 result!184718) b_and!196931)))

(declare-fun m!3035857 () Bool)

(assert (=> d!763515 m!3035857))

(declare-fun m!3035859 () Bool)

(assert (=> b!2669318 m!3035859))

(assert (=> b!2669318 m!3035859))

(declare-fun m!3035861 () Bool)

(assert (=> b!2669318 m!3035861))

(declare-fun m!3035863 () Bool)

(assert (=> b!2669319 m!3035863))

(assert (=> b!2669097 d!763515))

(declare-fun bs!479382 () Bool)

(declare-fun d!763517 () Bool)

(assert (= bs!479382 (and d!763517 b!2669102)))

(declare-fun lambda!99635 () Int)

(assert (=> bs!479382 (not (= lambda!99635 lambda!99627))))

(declare-fun bs!479383 () Bool)

(assert (= bs!479383 (and d!763517 b!2669114)))

(assert (=> bs!479383 (= lambda!99635 lambda!99628)))

(declare-fun b!2669329 () Bool)

(declare-fun e!1682160 () Bool)

(assert (=> b!2669329 (= e!1682160 true)))

(declare-fun b!2669328 () Bool)

(declare-fun e!1682159 () Bool)

(assert (=> b!2669328 (= e!1682159 e!1682160)))

(declare-fun b!2669327 () Bool)

(declare-fun e!1682158 () Bool)

(assert (=> b!2669327 (= e!1682158 e!1682159)))

(assert (=> d!763517 e!1682158))

(assert (= b!2669328 b!2669329))

(assert (= b!2669327 b!2669328))

(assert (= (and d!763517 ((_ is Cons!30657) rules!1712)) b!2669327))

(assert (=> b!2669329 (< (dynLambda!13246 order!16779 (toValue!6611 (transformation!4673 (h!36077 rules!1712)))) (dynLambda!13247 order!16781 lambda!99635))))

(assert (=> b!2669329 (< (dynLambda!13248 order!16783 (toChars!6470 (transformation!4673 (h!36077 rules!1712)))) (dynLambda!13247 order!16781 lambda!99635))))

(assert (=> d!763517 true))

(declare-fun lt!940406 () Bool)

(assert (=> d!763517 (= lt!940406 (forall!6486 l!4335 lambda!99635))))

(declare-fun e!1682157 () Bool)

(assert (=> d!763517 (= lt!940406 e!1682157)))

(declare-fun res!1122294 () Bool)

(assert (=> d!763517 (=> res!1122294 e!1682157)))

(assert (=> d!763517 (= res!1122294 (not ((_ is Cons!30658) l!4335)))))

(assert (=> d!763517 (not (isEmpty!17541 rules!1712))))

(assert (=> d!763517 (= (rulesProduceEachTokenIndividuallyList!1492 thiss!14116 rules!1712 l!4335) lt!940406)))

(declare-fun b!2669325 () Bool)

(declare-fun e!1682156 () Bool)

(assert (=> b!2669325 (= e!1682157 e!1682156)))

(declare-fun res!1122295 () Bool)

(assert (=> b!2669325 (=> (not res!1122295) (not e!1682156))))

(assert (=> b!2669325 (= res!1122295 (rulesProduceIndividualToken!1982 thiss!14116 rules!1712 (h!36078 l!4335)))))

(declare-fun b!2669326 () Bool)

(assert (=> b!2669326 (= e!1682156 (rulesProduceEachTokenIndividuallyList!1492 thiss!14116 rules!1712 (t!223015 l!4335)))))

(assert (= (and d!763517 (not res!1122294)) b!2669325))

(assert (= (and b!2669325 res!1122295) b!2669326))

(declare-fun m!3035865 () Bool)

(assert (=> d!763517 m!3035865))

(assert (=> d!763517 m!3035671))

(declare-fun m!3035867 () Bool)

(assert (=> b!2669325 m!3035867))

(assert (=> b!2669326 m!3035663))

(assert (=> b!2669108 d!763517))

(declare-fun b!2669330 () Bool)

(declare-fun e!1682162 () Bool)

(assert (=> b!2669330 (= e!1682162 (inv!17 (value!150785 separatorToken!152)))))

(declare-fun b!2669331 () Bool)

(declare-fun e!1682163 () Bool)

(assert (=> b!2669331 (= e!1682163 (inv!16 (value!150785 separatorToken!152)))))

(declare-fun b!2669332 () Bool)

(assert (=> b!2669332 (= e!1682163 e!1682162)))

(declare-fun c!430418 () Bool)

(assert (=> b!2669332 (= c!430418 ((_ is IntegerValue!14686) (value!150785 separatorToken!152)))))

(declare-fun d!763519 () Bool)

(declare-fun c!430419 () Bool)

(assert (=> d!763519 (= c!430419 ((_ is IntegerValue!14685) (value!150785 separatorToken!152)))))

(assert (=> d!763519 (= (inv!21 (value!150785 separatorToken!152)) e!1682163)))

(declare-fun b!2669333 () Bool)

(declare-fun res!1122296 () Bool)

(declare-fun e!1682161 () Bool)

(assert (=> b!2669333 (=> res!1122296 e!1682161)))

(assert (=> b!2669333 (= res!1122296 (not ((_ is IntegerValue!14687) (value!150785 separatorToken!152))))))

(assert (=> b!2669333 (= e!1682162 e!1682161)))

(declare-fun b!2669334 () Bool)

(assert (=> b!2669334 (= e!1682161 (inv!15 (value!150785 separatorToken!152)))))

(assert (= (and d!763519 c!430419) b!2669331))

(assert (= (and d!763519 (not c!430419)) b!2669332))

(assert (= (and b!2669332 c!430418) b!2669330))

(assert (= (and b!2669332 (not c!430418)) b!2669333))

(assert (= (and b!2669333 (not res!1122296)) b!2669334))

(declare-fun m!3035869 () Bool)

(assert (=> b!2669330 m!3035869))

(declare-fun m!3035871 () Bool)

(assert (=> b!2669331 m!3035871))

(declare-fun m!3035873 () Bool)

(assert (=> b!2669334 m!3035873))

(assert (=> b!2669095 d!763519))

(declare-fun bs!479384 () Bool)

(declare-fun d!763521 () Bool)

(assert (= bs!479384 (and d!763521 b!2669102)))

(declare-fun lambda!99636 () Int)

(assert (=> bs!479384 (not (= lambda!99636 lambda!99627))))

(declare-fun bs!479385 () Bool)

(assert (= bs!479385 (and d!763521 b!2669114)))

(assert (=> bs!479385 (= lambda!99636 lambda!99628)))

(declare-fun bs!479386 () Bool)

(assert (= bs!479386 (and d!763521 d!763517)))

(assert (=> bs!479386 (= lambda!99636 lambda!99635)))

(declare-fun b!2669339 () Bool)

(declare-fun e!1682168 () Bool)

(assert (=> b!2669339 (= e!1682168 true)))

(declare-fun b!2669338 () Bool)

(declare-fun e!1682167 () Bool)

(assert (=> b!2669338 (= e!1682167 e!1682168)))

(declare-fun b!2669337 () Bool)

(declare-fun e!1682166 () Bool)

(assert (=> b!2669337 (= e!1682166 e!1682167)))

(assert (=> d!763521 e!1682166))

(assert (= b!2669338 b!2669339))

(assert (= b!2669337 b!2669338))

(assert (= (and d!763521 ((_ is Cons!30657) rules!1712)) b!2669337))

(assert (=> b!2669339 (< (dynLambda!13246 order!16779 (toValue!6611 (transformation!4673 (h!36077 rules!1712)))) (dynLambda!13247 order!16781 lambda!99636))))

(assert (=> b!2669339 (< (dynLambda!13248 order!16783 (toChars!6470 (transformation!4673 (h!36077 rules!1712)))) (dynLambda!13247 order!16781 lambda!99636))))

(assert (=> d!763521 true))

(declare-fun lt!940407 () Bool)

(assert (=> d!763521 (= lt!940407 (forall!6486 (t!223015 l!4335) lambda!99636))))

(declare-fun e!1682165 () Bool)

(assert (=> d!763521 (= lt!940407 e!1682165)))

(declare-fun res!1122297 () Bool)

(assert (=> d!763521 (=> res!1122297 e!1682165)))

(assert (=> d!763521 (= res!1122297 (not ((_ is Cons!30658) (t!223015 l!4335))))))

(assert (=> d!763521 (not (isEmpty!17541 rules!1712))))

(assert (=> d!763521 (= (rulesProduceEachTokenIndividuallyList!1492 thiss!14116 rules!1712 (t!223015 l!4335)) lt!940407)))

(declare-fun b!2669335 () Bool)

(declare-fun e!1682164 () Bool)

(assert (=> b!2669335 (= e!1682165 e!1682164)))

(declare-fun res!1122298 () Bool)

(assert (=> b!2669335 (=> (not res!1122298) (not e!1682164))))

(assert (=> b!2669335 (= res!1122298 (rulesProduceIndividualToken!1982 thiss!14116 rules!1712 (h!36078 (t!223015 l!4335))))))

(declare-fun b!2669336 () Bool)

(assert (=> b!2669336 (= e!1682164 (rulesProduceEachTokenIndividuallyList!1492 thiss!14116 rules!1712 (t!223015 (t!223015 l!4335))))))

(assert (= (and d!763521 (not res!1122297)) b!2669335))

(assert (= (and b!2669335 res!1122298) b!2669336))

(declare-fun m!3035875 () Bool)

(assert (=> d!763521 m!3035875))

(assert (=> d!763521 m!3035671))

(declare-fun m!3035877 () Bool)

(assert (=> b!2669335 m!3035877))

(declare-fun m!3035879 () Bool)

(assert (=> b!2669336 m!3035879))

(assert (=> b!2669114 d!763521))

(declare-fun d!763523 () Bool)

(declare-fun dynLambda!13252 (Int Token!8816) Bool)

(assert (=> d!763523 (dynLambda!13252 lambda!99628 (h!36078 l!4335))))

(declare-fun lt!940410 () Unit!44887)

(declare-fun choose!15831 (List!30758 Int Token!8816) Unit!44887)

(assert (=> d!763523 (= lt!940410 (choose!15831 l!4335 lambda!99628 (h!36078 l!4335)))))

(declare-fun e!1682171 () Bool)

(assert (=> d!763523 e!1682171))

(declare-fun res!1122301 () Bool)

(assert (=> d!763523 (=> (not res!1122301) (not e!1682171))))

(assert (=> d!763523 (= res!1122301 (forall!6486 l!4335 lambda!99628))))

(assert (=> d!763523 (= (forallContained!1015 l!4335 lambda!99628 (h!36078 l!4335)) lt!940410)))

(declare-fun b!2669342 () Bool)

(assert (=> b!2669342 (= e!1682171 (contains!5881 l!4335 (h!36078 l!4335)))))

(assert (= (and d!763523 res!1122301) b!2669342))

(declare-fun b_lambda!81243 () Bool)

(assert (=> (not b_lambda!81243) (not d!763523)))

(declare-fun m!3035881 () Bool)

(assert (=> d!763523 m!3035881))

(declare-fun m!3035883 () Bool)

(assert (=> d!763523 m!3035883))

(declare-fun m!3035885 () Bool)

(assert (=> d!763523 m!3035885))

(assert (=> b!2669342 m!3035681))

(assert (=> b!2669114 d!763523))

(declare-fun d!763525 () Bool)

(declare-fun res!1122306 () Bool)

(declare-fun e!1682176 () Bool)

(assert (=> d!763525 (=> res!1122306 e!1682176)))

(assert (=> d!763525 (= res!1122306 (not ((_ is Cons!30657) rules!1712)))))

(assert (=> d!763525 (= (sepAndNonSepRulesDisjointChars!1246 rules!1712 rules!1712) e!1682176)))

(declare-fun b!2669347 () Bool)

(declare-fun e!1682177 () Bool)

(assert (=> b!2669347 (= e!1682176 e!1682177)))

(declare-fun res!1122307 () Bool)

(assert (=> b!2669347 (=> (not res!1122307) (not e!1682177))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!543 (Rule!9146 List!30757) Bool)

(assert (=> b!2669347 (= res!1122307 (ruleDisjointCharsFromAllFromOtherType!543 (h!36077 rules!1712) rules!1712))))

(declare-fun b!2669348 () Bool)

(assert (=> b!2669348 (= e!1682177 (sepAndNonSepRulesDisjointChars!1246 rules!1712 (t!223014 rules!1712)))))

(assert (= (and d!763525 (not res!1122306)) b!2669347))

(assert (= (and b!2669347 res!1122307) b!2669348))

(declare-fun m!3035887 () Bool)

(assert (=> b!2669347 m!3035887))

(declare-fun m!3035889 () Bool)

(assert (=> b!2669348 m!3035889))

(assert (=> b!2669104 d!763525))

(declare-fun d!763527 () Bool)

(declare-fun res!1122312 () Bool)

(declare-fun e!1682182 () Bool)

(assert (=> d!763527 (=> res!1122312 e!1682182)))

(assert (=> d!763527 (= res!1122312 ((_ is Nil!30658) l!4335))))

(assert (=> d!763527 (= (forall!6486 l!4335 lambda!99627) e!1682182)))

(declare-fun b!2669353 () Bool)

(declare-fun e!1682183 () Bool)

(assert (=> b!2669353 (= e!1682182 e!1682183)))

(declare-fun res!1122313 () Bool)

(assert (=> b!2669353 (=> (not res!1122313) (not e!1682183))))

(assert (=> b!2669353 (= res!1122313 (dynLambda!13252 lambda!99627 (h!36078 l!4335)))))

(declare-fun b!2669354 () Bool)

(assert (=> b!2669354 (= e!1682183 (forall!6486 (t!223015 l!4335) lambda!99627))))

(assert (= (and d!763527 (not res!1122312)) b!2669353))

(assert (= (and b!2669353 res!1122313) b!2669354))

(declare-fun b_lambda!81245 () Bool)

(assert (=> (not b_lambda!81245) (not b!2669353)))

(declare-fun m!3035891 () Bool)

(assert (=> b!2669353 m!3035891))

(declare-fun m!3035893 () Bool)

(assert (=> b!2669354 m!3035893))

(assert (=> b!2669102 d!763527))

(declare-fun d!763529 () Bool)

(assert (=> d!763529 (= (inv!41658 (tag!5175 (h!36077 rules!1712))) (= (mod (str.len (value!150784 (tag!5175 (h!36077 rules!1712)))) 2) 0))))

(assert (=> b!2669103 d!763529))

(declare-fun d!763531 () Bool)

(declare-fun res!1122314 () Bool)

(declare-fun e!1682184 () Bool)

(assert (=> d!763531 (=> (not res!1122314) (not e!1682184))))

(assert (=> d!763531 (= res!1122314 (semiInverseModEq!1936 (toChars!6470 (transformation!4673 (h!36077 rules!1712))) (toValue!6611 (transformation!4673 (h!36077 rules!1712)))))))

(assert (=> d!763531 (= (inv!41662 (transformation!4673 (h!36077 rules!1712))) e!1682184)))

(declare-fun b!2669355 () Bool)

(assert (=> b!2669355 (= e!1682184 (equivClasses!1837 (toChars!6470 (transformation!4673 (h!36077 rules!1712))) (toValue!6611 (transformation!4673 (h!36077 rules!1712)))))))

(assert (= (and d!763531 res!1122314) b!2669355))

(declare-fun m!3035895 () Bool)

(assert (=> d!763531 m!3035895))

(declare-fun m!3035897 () Bool)

(assert (=> b!2669355 m!3035897))

(assert (=> b!2669103 d!763531))

(declare-fun b!2669369 () Bool)

(declare-fun e!1682187 () Bool)

(declare-fun tp!843693 () Bool)

(declare-fun tp!843694 () Bool)

(assert (=> b!2669369 (= e!1682187 (and tp!843693 tp!843694))))

(declare-fun b!2669368 () Bool)

(declare-fun tp!843692 () Bool)

(assert (=> b!2669368 (= e!1682187 tp!843692)))

(assert (=> b!2669101 (= tp!843613 e!1682187)))

(declare-fun b!2669366 () Bool)

(declare-fun tp_is_empty!13801 () Bool)

(assert (=> b!2669366 (= e!1682187 tp_is_empty!13801)))

(declare-fun b!2669367 () Bool)

(declare-fun tp!843695 () Bool)

(declare-fun tp!843691 () Bool)

(assert (=> b!2669367 (= e!1682187 (and tp!843695 tp!843691))))

(assert (= (and b!2669101 ((_ is ElementMatch!7817) (regex!4673 (rule!7079 separatorToken!152)))) b!2669366))

(assert (= (and b!2669101 ((_ is Concat!12713) (regex!4673 (rule!7079 separatorToken!152)))) b!2669367))

(assert (= (and b!2669101 ((_ is Star!7817) (regex!4673 (rule!7079 separatorToken!152)))) b!2669368))

(assert (= (and b!2669101 ((_ is Union!7817) (regex!4673 (rule!7079 separatorToken!152)))) b!2669369))

(declare-fun b!2669374 () Bool)

(declare-fun e!1682190 () Bool)

(declare-fun tp!843698 () Bool)

(assert (=> b!2669374 (= e!1682190 (and tp_is_empty!13801 tp!843698))))

(assert (=> b!2669111 (= tp!843605 e!1682190)))

(assert (= (and b!2669111 ((_ is Cons!30656) (originalCharacters!5439 (h!36078 l!4335)))) b!2669374))

(declare-fun b!2669378 () Bool)

(declare-fun e!1682191 () Bool)

(declare-fun tp!843701 () Bool)

(declare-fun tp!843702 () Bool)

(assert (=> b!2669378 (= e!1682191 (and tp!843701 tp!843702))))

(declare-fun b!2669377 () Bool)

(declare-fun tp!843700 () Bool)

(assert (=> b!2669377 (= e!1682191 tp!843700)))

(assert (=> b!2669109 (= tp!843607 e!1682191)))

(declare-fun b!2669375 () Bool)

(assert (=> b!2669375 (= e!1682191 tp_is_empty!13801)))

(declare-fun b!2669376 () Bool)

(declare-fun tp!843703 () Bool)

(declare-fun tp!843699 () Bool)

(assert (=> b!2669376 (= e!1682191 (and tp!843703 tp!843699))))

(assert (= (and b!2669109 ((_ is ElementMatch!7817) (regex!4673 (rule!7079 (h!36078 l!4335))))) b!2669375))

(assert (= (and b!2669109 ((_ is Concat!12713) (regex!4673 (rule!7079 (h!36078 l!4335))))) b!2669376))

(assert (= (and b!2669109 ((_ is Star!7817) (regex!4673 (rule!7079 (h!36078 l!4335))))) b!2669377))

(assert (= (and b!2669109 ((_ is Union!7817) (regex!4673 (rule!7079 (h!36078 l!4335))))) b!2669378))

(declare-fun b!2669392 () Bool)

(declare-fun b_free!74925 () Bool)

(declare-fun b_next!75629 () Bool)

(assert (=> b!2669392 (= b_free!74925 (not b_next!75629))))

(declare-fun tp!843715 () Bool)

(declare-fun b_and!196933 () Bool)

(assert (=> b!2669392 (= tp!843715 b_and!196933)))

(declare-fun b_free!74927 () Bool)

(declare-fun b_next!75631 () Bool)

(assert (=> b!2669392 (= b_free!74927 (not b_next!75631))))

(declare-fun tb!149569 () Bool)

(declare-fun t!223056 () Bool)

(assert (=> (and b!2669392 (= (toChars!6470 (transformation!4673 (rule!7079 (h!36078 (t!223015 l!4335))))) (toChars!6470 (transformation!4673 (rule!7079 separatorToken!152)))) t!223056) tb!149569))

(declare-fun result!184726 () Bool)

(assert (= result!184726 result!184684))

(assert (=> b!2669183 t!223056))

(declare-fun t!223058 () Bool)

(declare-fun tb!149571 () Bool)

(assert (=> (and b!2669392 (= (toChars!6470 (transformation!4673 (rule!7079 (h!36078 (t!223015 l!4335))))) (toChars!6470 (transformation!4673 (rule!7079 (h!36078 l!4335))))) t!223058) tb!149571))

(declare-fun result!184728 () Bool)

(assert (= result!184728 result!184714))

(assert (=> b!2669318 t!223058))

(declare-fun tp!843717 () Bool)

(declare-fun b_and!196935 () Bool)

(assert (=> b!2669392 (= tp!843717 (and (=> t!223056 result!184726) (=> t!223058 result!184728) b_and!196935))))

(declare-fun e!1682205 () Bool)

(assert (=> b!2669097 (= tp!843616 e!1682205)))

(declare-fun b!2669389 () Bool)

(declare-fun e!1682204 () Bool)

(declare-fun tp!843718 () Bool)

(assert (=> b!2669389 (= e!1682205 (and (inv!41661 (h!36078 (t!223015 l!4335))) e!1682204 tp!843718))))

(declare-fun e!1682208 () Bool)

(declare-fun e!1682209 () Bool)

(declare-fun tp!843716 () Bool)

(declare-fun b!2669391 () Bool)

(assert (=> b!2669391 (= e!1682209 (and tp!843716 (inv!41658 (tag!5175 (rule!7079 (h!36078 (t!223015 l!4335))))) (inv!41662 (transformation!4673 (rule!7079 (h!36078 (t!223015 l!4335))))) e!1682208))))

(assert (=> b!2669392 (= e!1682208 (and tp!843715 tp!843717))))

(declare-fun b!2669390 () Bool)

(declare-fun tp!843714 () Bool)

(assert (=> b!2669390 (= e!1682204 (and (inv!21 (value!150785 (h!36078 (t!223015 l!4335)))) e!1682209 tp!843714))))

(assert (= b!2669391 b!2669392))

(assert (= b!2669390 b!2669391))

(assert (= b!2669389 b!2669390))

(assert (= (and b!2669097 ((_ is Cons!30658) (t!223015 l!4335))) b!2669389))

(declare-fun m!3035899 () Bool)

(assert (=> b!2669389 m!3035899))

(declare-fun m!3035901 () Bool)

(assert (=> b!2669391 m!3035901))

(declare-fun m!3035903 () Bool)

(assert (=> b!2669391 m!3035903))

(declare-fun m!3035905 () Bool)

(assert (=> b!2669390 m!3035905))

(declare-fun b!2669403 () Bool)

(declare-fun b_free!74929 () Bool)

(declare-fun b_next!75633 () Bool)

(assert (=> b!2669403 (= b_free!74929 (not b_next!75633))))

(declare-fun tp!843728 () Bool)

(declare-fun b_and!196937 () Bool)

(assert (=> b!2669403 (= tp!843728 b_and!196937)))

(declare-fun b_free!74931 () Bool)

(declare-fun b_next!75635 () Bool)

(assert (=> b!2669403 (= b_free!74931 (not b_next!75635))))

(declare-fun t!223060 () Bool)

(declare-fun tb!149573 () Bool)

(assert (=> (and b!2669403 (= (toChars!6470 (transformation!4673 (h!36077 (t!223014 rules!1712)))) (toChars!6470 (transformation!4673 (rule!7079 separatorToken!152)))) t!223060) tb!149573))

(declare-fun result!184732 () Bool)

(assert (= result!184732 result!184684))

(assert (=> b!2669183 t!223060))

(declare-fun tb!149575 () Bool)

(declare-fun t!223062 () Bool)

(assert (=> (and b!2669403 (= (toChars!6470 (transformation!4673 (h!36077 (t!223014 rules!1712)))) (toChars!6470 (transformation!4673 (rule!7079 (h!36078 l!4335))))) t!223062) tb!149575))

(declare-fun result!184734 () Bool)

(assert (= result!184734 result!184714))

(assert (=> b!2669318 t!223062))

(declare-fun b_and!196939 () Bool)

(declare-fun tp!843729 () Bool)

(assert (=> b!2669403 (= tp!843729 (and (=> t!223060 result!184732) (=> t!223062 result!184734) b_and!196939))))

(declare-fun e!1682220 () Bool)

(assert (=> b!2669403 (= e!1682220 (and tp!843728 tp!843729))))

(declare-fun tp!843730 () Bool)

(declare-fun e!1682218 () Bool)

(declare-fun b!2669402 () Bool)

(assert (=> b!2669402 (= e!1682218 (and tp!843730 (inv!41658 (tag!5175 (h!36077 (t!223014 rules!1712)))) (inv!41662 (transformation!4673 (h!36077 (t!223014 rules!1712)))) e!1682220))))

(declare-fun b!2669401 () Bool)

(declare-fun e!1682221 () Bool)

(declare-fun tp!843727 () Bool)

(assert (=> b!2669401 (= e!1682221 (and e!1682218 tp!843727))))

(assert (=> b!2669107 (= tp!843611 e!1682221)))

(assert (= b!2669402 b!2669403))

(assert (= b!2669401 b!2669402))

(assert (= (and b!2669107 ((_ is Cons!30657) (t!223014 rules!1712))) b!2669401))

(declare-fun m!3035907 () Bool)

(assert (=> b!2669402 m!3035907))

(declare-fun m!3035909 () Bool)

(assert (=> b!2669402 m!3035909))

(declare-fun b!2669406 () Bool)

(declare-fun e!1682224 () Bool)

(assert (=> b!2669406 (= e!1682224 true)))

(declare-fun b!2669405 () Bool)

(declare-fun e!1682223 () Bool)

(assert (=> b!2669405 (= e!1682223 e!1682224)))

(declare-fun b!2669404 () Bool)

(declare-fun e!1682222 () Bool)

(assert (=> b!2669404 (= e!1682222 e!1682223)))

(assert (=> b!2669123 e!1682222))

(assert (= b!2669405 b!2669406))

(assert (= b!2669404 b!2669405))

(assert (= (and b!2669123 ((_ is Cons!30657) (t!223014 rules!1712))) b!2669404))

(assert (=> b!2669406 (< (dynLambda!13246 order!16779 (toValue!6611 (transformation!4673 (h!36077 (t!223014 rules!1712))))) (dynLambda!13247 order!16781 lambda!99628))))

(assert (=> b!2669406 (< (dynLambda!13248 order!16783 (toChars!6470 (transformation!4673 (h!36077 (t!223014 rules!1712))))) (dynLambda!13247 order!16781 lambda!99628))))

(declare-fun b!2669407 () Bool)

(declare-fun e!1682225 () Bool)

(declare-fun tp!843731 () Bool)

(assert (=> b!2669407 (= e!1682225 (and tp_is_empty!13801 tp!843731))))

(assert (=> b!2669095 (= tp!843615 e!1682225)))

(assert (= (and b!2669095 ((_ is Cons!30656) (originalCharacters!5439 separatorToken!152))) b!2669407))

(declare-fun b!2669411 () Bool)

(declare-fun e!1682226 () Bool)

(declare-fun tp!843734 () Bool)

(declare-fun tp!843735 () Bool)

(assert (=> b!2669411 (= e!1682226 (and tp!843734 tp!843735))))

(declare-fun b!2669410 () Bool)

(declare-fun tp!843733 () Bool)

(assert (=> b!2669410 (= e!1682226 tp!843733)))

(assert (=> b!2669103 (= tp!843610 e!1682226)))

(declare-fun b!2669408 () Bool)

(assert (=> b!2669408 (= e!1682226 tp_is_empty!13801)))

(declare-fun b!2669409 () Bool)

(declare-fun tp!843736 () Bool)

(declare-fun tp!843732 () Bool)

(assert (=> b!2669409 (= e!1682226 (and tp!843736 tp!843732))))

(assert (= (and b!2669103 ((_ is ElementMatch!7817) (regex!4673 (h!36077 rules!1712)))) b!2669408))

(assert (= (and b!2669103 ((_ is Concat!12713) (regex!4673 (h!36077 rules!1712)))) b!2669409))

(assert (= (and b!2669103 ((_ is Star!7817) (regex!4673 (h!36077 rules!1712)))) b!2669410))

(assert (= (and b!2669103 ((_ is Union!7817) (regex!4673 (h!36077 rules!1712)))) b!2669411))

(declare-fun b_lambda!81247 () Bool)

(assert (= b_lambda!81227 (or (and b!2669112 b_free!74911 (= (toChars!6470 (transformation!4673 (rule!7079 (h!36078 l!4335)))) (toChars!6470 (transformation!4673 (rule!7079 separatorToken!152))))) (and b!2669106 b_free!74915 (= (toChars!6470 (transformation!4673 (h!36077 rules!1712))) (toChars!6470 (transformation!4673 (rule!7079 separatorToken!152))))) (and b!2669392 b_free!74927 (= (toChars!6470 (transformation!4673 (rule!7079 (h!36078 (t!223015 l!4335))))) (toChars!6470 (transformation!4673 (rule!7079 separatorToken!152))))) (and b!2669113 b_free!74907) (and b!2669403 b_free!74931 (= (toChars!6470 (transformation!4673 (h!36077 (t!223014 rules!1712)))) (toChars!6470 (transformation!4673 (rule!7079 separatorToken!152))))) b_lambda!81247)))

(declare-fun b_lambda!81249 () Bool)

(assert (= b_lambda!81243 (or b!2669114 b_lambda!81249)))

(declare-fun bs!479387 () Bool)

(declare-fun d!763533 () Bool)

(assert (= bs!479387 (and d!763533 b!2669114)))

(assert (=> bs!479387 (= (dynLambda!13252 lambda!99628 (h!36078 l!4335)) (rulesProduceIndividualToken!1982 thiss!14116 rules!1712 (h!36078 l!4335)))))

(assert (=> bs!479387 m!3035867))

(assert (=> d!763523 d!763533))

(declare-fun b_lambda!81251 () Bool)

(assert (= b_lambda!81245 (or b!2669102 b_lambda!81251)))

(declare-fun bs!479388 () Bool)

(declare-fun d!763535 () Bool)

(assert (= bs!479388 (and d!763535 b!2669102)))

(assert (=> bs!479388 (= (dynLambda!13252 lambda!99627 (h!36078 l!4335)) (not (isSeparator!4673 (rule!7079 (h!36078 l!4335)))))))

(assert (=> b!2669353 d!763535))

(declare-fun b_lambda!81253 () Bool)

(assert (= b_lambda!81241 (or (and b!2669113 b_free!74907 (= (toChars!6470 (transformation!4673 (rule!7079 separatorToken!152))) (toChars!6470 (transformation!4673 (rule!7079 (h!36078 l!4335)))))) (and b!2669392 b_free!74927 (= (toChars!6470 (transformation!4673 (rule!7079 (h!36078 (t!223015 l!4335))))) (toChars!6470 (transformation!4673 (rule!7079 (h!36078 l!4335)))))) (and b!2669112 b_free!74911) (and b!2669106 b_free!74915 (= (toChars!6470 (transformation!4673 (h!36077 rules!1712))) (toChars!6470 (transformation!4673 (rule!7079 (h!36078 l!4335)))))) (and b!2669403 b_free!74931 (= (toChars!6470 (transformation!4673 (h!36077 (t!223014 rules!1712)))) (toChars!6470 (transformation!4673 (rule!7079 (h!36078 l!4335)))))) b_lambda!81253)))

(check-sat (not d!763489) (not bs!479387) (not b!2669315) (not b!2669334) b_and!196889 (not b_next!75629) (not b_next!75609) (not b!2669189) (not b!2669411) (not b!2669327) (not b!2669401) (not b!2669210) b_and!196933 (not d!763481) (not b!2669318) (not b!2669211) (not b!2669368) (not b!2669335) (not b_next!75617) (not b_next!75611) (not b!2669355) (not b!2669184) (not b_next!75619) (not d!763521) b_and!196897 (not b_next!75613) (not b!2669342) (not b_next!75631) (not b!2669389) (not b!2669369) (not b!2669374) (not b!2669325) (not b!2669207) (not b!2669214) b_and!196937 (not d!763469) (not d!763493) (not d!763517) (not b!2669367) (not b!2669336) (not b!2669316) (not b!2669177) (not b!2669354) (not b!2669347) (not b_next!75635) (not d!763491) (not b!2669377) (not b!2669317) (not d!763477) (not b!2669410) (not b_lambda!81253) (not b_lambda!81247) b_and!196927 (not b!2669319) tp_is_empty!13801 (not tb!149543) b_and!196939 b_and!196929 (not b!2669390) (not tb!149563) (not b_lambda!81249) (not b!2669331) (not b!2669391) (not b!2669206) (not b_next!75615) (not b_lambda!81251) b_and!196893 (not b!2669320) (not b!2669402) (not b!2669337) (not d!763515) b_and!196931 (not b!2669330) (not b!2669409) (not b!2669404) b_and!196935 (not b!2669407) (not b!2669378) (not b_next!75633) (not d!763531) (not b!2669183) (not b!2669348) (not d!763523) (not b!2669376) (not b!2669326) (not b!2669195))
(check-sat b_and!196933 (not b_next!75617) (not b_next!75631) b_and!196937 b_and!196889 (not b_next!75635) (not b_next!75629) (not b_next!75609) b_and!196927 (not b_next!75615) b_and!196893 b_and!196931 (not b_next!75611) (not b_next!75619) (not b_next!75613) b_and!196897 b_and!196939 b_and!196929 b_and!196935 (not b_next!75633))
