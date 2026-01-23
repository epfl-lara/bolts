; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130348 () Bool)

(assert start!130348)

(declare-fun e!905201 () Bool)

(declare-fun e!905197 () Bool)

(declare-fun b!1418010 () Bool)

(declare-datatypes ((List!14609 0))(
  ( (Nil!14543) (Cons!14543 (h!19944 (_ BitVec 16)) (t!124244 List!14609)) )
))
(declare-datatypes ((TokenValue!2623 0))(
  ( (FloatLiteralValue!5246 (text!18806 List!14609)) (TokenValueExt!2622 (__x!9055 Int)) (Broken!13115 (value!81797 List!14609)) (Object!2688) (End!2623) (Def!2623) (Underscore!2623) (Match!2623) (Else!2623) (Error!2623) (Case!2623) (If!2623) (Extends!2623) (Abstract!2623) (Class!2623) (Val!2623) (DelimiterValue!5246 (del!2683 List!14609)) (KeywordValue!2629 (value!81798 List!14609)) (CommentValue!5246 (value!81799 List!14609)) (WhitespaceValue!5246 (value!81800 List!14609)) (IndentationValue!2623 (value!81801 List!14609)) (String!17350) (Int32!2623) (Broken!13116 (value!81802 List!14609)) (Boolean!2624) (Unit!21471) (OperatorValue!2626 (op!2683 List!14609)) (IdentifierValue!5246 (value!81803 List!14609)) (IdentifierValue!5247 (value!81804 List!14609)) (WhitespaceValue!5247 (value!81805 List!14609)) (True!5246) (False!5246) (Broken!13117 (value!81806 List!14609)) (Broken!13118 (value!81807 List!14609)) (True!5247) (RightBrace!2623) (RightBracket!2623) (Colon!2623) (Null!2623) (Comma!2623) (LeftBracket!2623) (False!5247) (LeftBrace!2623) (ImaginaryLiteralValue!2623 (text!18807 List!14609)) (StringLiteralValue!7869 (value!81808 List!14609)) (EOFValue!2623 (value!81809 List!14609)) (IdentValue!2623 (value!81810 List!14609)) (DelimiterValue!5247 (value!81811 List!14609)) (DedentValue!2623 (value!81812 List!14609)) (NewLineValue!2623 (value!81813 List!14609)) (IntegerValue!7869 (value!81814 (_ BitVec 32)) (text!18808 List!14609)) (IntegerValue!7870 (value!81815 Int) (text!18809 List!14609)) (Times!2623) (Or!2623) (Equal!2623) (Minus!2623) (Broken!13119 (value!81816 List!14609)) (And!2623) (Div!2623) (LessEqual!2623) (Mod!2623) (Concat!6470) (Not!2623) (Plus!2623) (SpaceValue!2623 (value!81817 List!14609)) (IntegerValue!7871 (value!81818 Int) (text!18810 List!14609)) (StringLiteralValue!7870 (text!18811 List!14609)) (FloatLiteralValue!5247 (text!18812 List!14609)) (BytesLiteralValue!2623 (value!81819 List!14609)) (CommentValue!5247 (value!81820 List!14609)) (StringLiteralValue!7871 (value!81821 List!14609)) (ErrorTokenValue!2623 (msg!2684 List!14609)) )
))
(declare-datatypes ((Regex!3847 0))(
  ( (ElementMatch!3847 (c!233019 (_ BitVec 16))) (Concat!6471 (regOne!8206 Regex!3847) (regTwo!8206 Regex!3847)) (EmptyExpr!3847) (Star!3847 (reg!4176 Regex!3847)) (EmptyLang!3847) (Union!3847 (regOne!8207 Regex!3847) (regTwo!8207 Regex!3847)) )
))
(declare-datatypes ((String!17351 0))(
  ( (String!17352 (value!81822 String)) )
))
(declare-datatypes ((IArray!9751 0))(
  ( (IArray!9752 (innerList!4933 List!14609)) )
))
(declare-datatypes ((Conc!4873 0))(
  ( (Node!4873 (left!12433 Conc!4873) (right!12763 Conc!4873) (csize!9976 Int) (cheight!5084 Int)) (Leaf!7336 (xs!7600 IArray!9751) (csize!9977 Int)) (Empty!4873) )
))
(declare-datatypes ((BalanceConc!9686 0))(
  ( (BalanceConc!9687 (c!233020 Conc!4873)) )
))
(declare-datatypes ((TokenValueInjection!4906 0))(
  ( (TokenValueInjection!4907 (toValue!3832 Int) (toChars!3691 Int)) )
))
(declare-datatypes ((Rule!4866 0))(
  ( (Rule!4867 (regex!2533 Regex!3847) (tag!2795 String!17351) (isSeparator!2533 Bool) (transformation!2533 TokenValueInjection!4906)) )
))
(declare-datatypes ((Token!4728 0))(
  ( (Token!4729 (value!81823 TokenValue!2623) (rule!4296 Rule!4866) (size!11999 Int) (originalCharacters!3395 List!14609)) )
))
(declare-datatypes ((List!14610 0))(
  ( (Nil!14544) (Cons!14544 (h!19945 Token!4728) (t!124245 List!14610)) )
))
(declare-datatypes ((IArray!9753 0))(
  ( (IArray!9754 (innerList!4934 List!14610)) )
))
(declare-datatypes ((Conc!4874 0))(
  ( (Node!4874 (left!12434 Conc!4874) (right!12764 Conc!4874) (csize!9978 Int) (cheight!5085 Int)) (Leaf!7337 (xs!7601 IArray!9753) (csize!9979 Int)) (Empty!4874) )
))
(declare-datatypes ((List!14611 0))(
  ( (Nil!14545) (Cons!14545 (h!19946 Rule!4866) (t!124246 List!14611)) )
))
(declare-datatypes ((BalanceConc!9688 0))(
  ( (BalanceConc!9689 (c!233021 Conc!4874)) )
))
(declare-datatypes ((PrintableTokens!848 0))(
  ( (PrintableTokens!849 (rules!11124 List!14611) (tokens!1828 BalanceConc!9688)) )
))
(declare-fun acc!229 () PrintableTokens!848)

(declare-fun tp!402246 () Bool)

(declare-fun inv!19157 (BalanceConc!9688) Bool)

(assert (=> b!1418010 (= e!905201 (and tp!402246 (inv!19157 (tokens!1828 acc!229)) e!905197))))

(declare-fun b!1418011 () Bool)

(declare-fun res!642064 () Bool)

(declare-fun e!905198 () Bool)

(assert (=> b!1418011 (=> (not res!642064) (not e!905198))))

(declare-fun usesJsonRules!0 (PrintableTokens!848) Bool)

(assert (=> b!1418011 (= res!642064 (usesJsonRules!0 acc!229))))

(declare-fun b!1418012 () Bool)

(declare-fun res!642069 () Bool)

(assert (=> b!1418012 (=> (not res!642069) (not e!905198))))

(declare-datatypes ((List!14612 0))(
  ( (Nil!14546) (Cons!14546 (h!19947 PrintableTokens!848) (t!124247 List!14612)) )
))
(declare-datatypes ((IArray!9755 0))(
  ( (IArray!9756 (innerList!4935 List!14612)) )
))
(declare-datatypes ((Conc!4875 0))(
  ( (Node!4875 (left!12435 Conc!4875) (right!12765 Conc!4875) (csize!9980 Int) (cheight!5086 Int)) (Leaf!7338 (xs!7602 IArray!9755) (csize!9981 Int)) (Empty!4875) )
))
(declare-datatypes ((BalanceConc!9690 0))(
  ( (BalanceConc!9691 (c!233022 Conc!4875)) )
))
(declare-fun objs!24 () BalanceConc!9690)

(declare-fun size!12000 (BalanceConc!9690) Int)

(assert (=> b!1418012 (= res!642069 (= (size!12000 objs!24) 1))))

(declare-fun b!1418013 () Bool)

(declare-fun e!905200 () Bool)

(declare-fun tp!402247 () Bool)

(declare-fun inv!19158 (Conc!4875) Bool)

(assert (=> b!1418013 (= e!905200 (and (inv!19158 (c!233022 objs!24)) tp!402247))))

(declare-fun b!1418014 () Bool)

(declare-fun e!905202 () Bool)

(declare-fun sep!3 () PrintableTokens!848)

(declare-fun tp!402250 () Bool)

(declare-fun inv!19159 (Conc!4874) Bool)

(assert (=> b!1418014 (= e!905202 (and (inv!19159 (c!233021 (tokens!1828 sep!3))) tp!402250))))

(declare-fun res!642065 () Bool)

(assert (=> start!130348 (=> (not res!642065) (not e!905198))))

(declare-fun lambda!62605 () Int)

(declare-fun forall!3617 (BalanceConc!9690 Int) Bool)

(assert (=> start!130348 (= res!642065 (forall!3617 objs!24 lambda!62605))))

(assert (=> start!130348 e!905198))

(declare-fun inv!19160 (BalanceConc!9690) Bool)

(assert (=> start!130348 (and (inv!19160 objs!24) e!905200)))

(declare-fun inv!19161 (PrintableTokens!848) Bool)

(assert (=> start!130348 (and (inv!19161 acc!229) e!905201)))

(declare-fun e!905199 () Bool)

(assert (=> start!130348 (and (inv!19161 sep!3) e!905199)))

(declare-fun b!1418015 () Bool)

(declare-fun tp!402248 () Bool)

(assert (=> b!1418015 (= e!905197 (and (inv!19159 (c!233021 (tokens!1828 acc!229))) tp!402248))))

(declare-fun b!1418016 () Bool)

(declare-fun res!642068 () Bool)

(assert (=> b!1418016 (=> (not res!642068) (not e!905198))))

(assert (=> b!1418016 (= res!642068 (usesJsonRules!0 sep!3))))

(declare-fun b!1418017 () Bool)

(declare-fun res!642066 () Bool)

(assert (=> b!1418017 (=> (not res!642066) (not e!905198))))

(declare-fun isEmpty!8936 (BalanceConc!9690) Bool)

(assert (=> b!1418017 (= res!642066 (not (isEmpty!8936 objs!24)))))

(declare-fun b!1418018 () Bool)

(declare-fun tp!402249 () Bool)

(assert (=> b!1418018 (= e!905199 (and tp!402249 (inv!19157 (tokens!1828 sep!3)) e!905202))))

(declare-fun b!1418019 () Bool)

(declare-fun res!642070 () Bool)

(assert (=> b!1418019 (=> (not res!642070) (not e!905198))))

(get-info :version)

(declare-datatypes ((Option!2794 0))(
  ( (None!2793) (Some!2793 (v!22113 PrintableTokens!848)) )
))
(declare-fun append!448 (PrintableTokens!848 PrintableTokens!848) Option!2794)

(declare-fun head!2753 (BalanceConc!9690) PrintableTokens!848)

(assert (=> b!1418019 (= res!642070 (not ((_ is Some!2793) (append!448 acc!229 (head!2753 objs!24)))))))

(declare-fun b!1418020 () Bool)

(declare-fun res!642067 () Bool)

(assert (=> b!1418020 (=> (not res!642067) (not e!905198))))

(assert (=> b!1418020 (= res!642067 false)))

(declare-fun b!1418021 () Bool)

(declare-fun get!4470 (Option!2794) PrintableTokens!848)

(assert (=> b!1418021 (= e!905198 (not (usesJsonRules!0 (get!4470 None!2793))))))

(assert (= (and start!130348 res!642065) b!1418011))

(assert (= (and b!1418011 res!642064) b!1418016))

(assert (= (and b!1418016 res!642068) b!1418017))

(assert (= (and b!1418017 res!642066) b!1418012))

(assert (= (and b!1418012 res!642069) b!1418019))

(assert (= (and b!1418019 res!642070) b!1418020))

(assert (= (and b!1418020 res!642067) b!1418021))

(assert (= start!130348 b!1418013))

(assert (= b!1418010 b!1418015))

(assert (= start!130348 b!1418010))

(assert (= b!1418018 b!1418014))

(assert (= start!130348 b!1418018))

(declare-fun m!1604513 () Bool)

(assert (=> b!1418014 m!1604513))

(declare-fun m!1604515 () Bool)

(assert (=> b!1418015 m!1604515))

(declare-fun m!1604517 () Bool)

(assert (=> b!1418019 m!1604517))

(assert (=> b!1418019 m!1604517))

(declare-fun m!1604519 () Bool)

(assert (=> b!1418019 m!1604519))

(declare-fun m!1604521 () Bool)

(assert (=> b!1418011 m!1604521))

(declare-fun m!1604523 () Bool)

(assert (=> b!1418010 m!1604523))

(declare-fun m!1604525 () Bool)

(assert (=> b!1418012 m!1604525))

(declare-fun m!1604527 () Bool)

(assert (=> start!130348 m!1604527))

(declare-fun m!1604529 () Bool)

(assert (=> start!130348 m!1604529))

(declare-fun m!1604531 () Bool)

(assert (=> start!130348 m!1604531))

(declare-fun m!1604533 () Bool)

(assert (=> start!130348 m!1604533))

(declare-fun m!1604535 () Bool)

(assert (=> b!1418021 m!1604535))

(assert (=> b!1418021 m!1604535))

(declare-fun m!1604537 () Bool)

(assert (=> b!1418021 m!1604537))

(declare-fun m!1604539 () Bool)

(assert (=> b!1418016 m!1604539))

(declare-fun m!1604541 () Bool)

(assert (=> b!1418017 m!1604541))

(declare-fun m!1604543 () Bool)

(assert (=> b!1418018 m!1604543))

(declare-fun m!1604545 () Bool)

(assert (=> b!1418013 m!1604545))

(check-sat (not start!130348) (not b!1418017) (not b!1418016) (not b!1418015) (not b!1418019) (not b!1418018) (not b!1418014) (not b!1418013) (not b!1418011) (not b!1418021) (not b!1418010) (not b!1418012))
(check-sat)
