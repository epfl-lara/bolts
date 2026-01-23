; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130672 () Bool)

(assert start!130672)

(declare-fun b!1419847 () Bool)

(declare-fun res!642872 () Bool)

(declare-fun e!906326 () Bool)

(assert (=> b!1419847 (=> (not res!642872) (not e!906326))))

(declare-datatypes ((List!14635 0))(
  ( (Nil!14569) (Cons!14569 (h!19970 (_ BitVec 16)) (t!124408 List!14635)) )
))
(declare-datatypes ((TokenValue!2629 0))(
  ( (FloatLiteralValue!5258 (text!18848 List!14635)) (TokenValueExt!2628 (__x!9065 Int)) (Broken!13145 (value!81968 List!14635)) (Object!2694) (End!2629) (Def!2629) (Underscore!2629) (Match!2629) (Else!2629) (Error!2629) (Case!2629) (If!2629) (Extends!2629) (Abstract!2629) (Class!2629) (Val!2629) (DelimiterValue!5258 (del!2689 List!14635)) (KeywordValue!2635 (value!81969 List!14635)) (CommentValue!5258 (value!81970 List!14635)) (WhitespaceValue!5258 (value!81971 List!14635)) (IndentationValue!2629 (value!81972 List!14635)) (String!17380) (Int32!2629) (Broken!13146 (value!81973 List!14635)) (Boolean!2630) (Unit!21777) (OperatorValue!2632 (op!2689 List!14635)) (IdentifierValue!5258 (value!81974 List!14635)) (IdentifierValue!5259 (value!81975 List!14635)) (WhitespaceValue!5259 (value!81976 List!14635)) (True!5258) (False!5258) (Broken!13147 (value!81977 List!14635)) (Broken!13148 (value!81978 List!14635)) (True!5259) (RightBrace!2629) (RightBracket!2629) (Colon!2629) (Null!2629) (Comma!2629) (LeftBracket!2629) (False!5259) (LeftBrace!2629) (ImaginaryLiteralValue!2629 (text!18849 List!14635)) (StringLiteralValue!7887 (value!81979 List!14635)) (EOFValue!2629 (value!81980 List!14635)) (IdentValue!2629 (value!81981 List!14635)) (DelimiterValue!5259 (value!81982 List!14635)) (DedentValue!2629 (value!81983 List!14635)) (NewLineValue!2629 (value!81984 List!14635)) (IntegerValue!7887 (value!81985 (_ BitVec 32)) (text!18850 List!14635)) (IntegerValue!7888 (value!81986 Int) (text!18851 List!14635)) (Times!2629) (Or!2629) (Equal!2629) (Minus!2629) (Broken!13149 (value!81987 List!14635)) (And!2629) (Div!2629) (LessEqual!2629) (Mod!2629) (Concat!6482) (Not!2629) (Plus!2629) (SpaceValue!2629 (value!81988 List!14635)) (IntegerValue!7889 (value!81989 Int) (text!18852 List!14635)) (StringLiteralValue!7888 (text!18853 List!14635)) (FloatLiteralValue!5259 (text!18854 List!14635)) (BytesLiteralValue!2629 (value!81990 List!14635)) (CommentValue!5259 (value!81991 List!14635)) (StringLiteralValue!7889 (value!81992 List!14635)) (ErrorTokenValue!2629 (msg!2690 List!14635)) )
))
(declare-datatypes ((Regex!3853 0))(
  ( (ElementMatch!3853 (c!233373 (_ BitVec 16))) (Concat!6483 (regOne!8218 Regex!3853) (regTwo!8218 Regex!3853)) (EmptyExpr!3853) (Star!3853 (reg!4182 Regex!3853)) (EmptyLang!3853) (Union!3853 (regOne!8219 Regex!3853) (regTwo!8219 Regex!3853)) )
))
(declare-datatypes ((String!17381 0))(
  ( (String!17382 (value!81993 String)) )
))
(declare-datatypes ((IArray!9787 0))(
  ( (IArray!9788 (innerList!4951 List!14635)) )
))
(declare-datatypes ((Conc!4891 0))(
  ( (Node!4891 (left!12458 Conc!4891) (right!12788 Conc!4891) (csize!10012 Int) (cheight!5102 Int)) (Leaf!7357 (xs!7618 IArray!9787) (csize!10013 Int)) (Empty!4891) )
))
(declare-datatypes ((BalanceConc!9722 0))(
  ( (BalanceConc!9723 (c!233374 Conc!4891)) )
))
(declare-datatypes ((TokenValueInjection!4918 0))(
  ( (TokenValueInjection!4919 (toValue!3838 Int) (toChars!3697 Int)) )
))
(declare-datatypes ((Rule!4878 0))(
  ( (Rule!4879 (regex!2539 Regex!3853) (tag!2801 String!17381) (isSeparator!2539 Bool) (transformation!2539 TokenValueInjection!4918)) )
))
(declare-datatypes ((Token!4740 0))(
  ( (Token!4741 (value!81994 TokenValue!2629) (rule!4302 Rule!4878) (size!12029 Int) (originalCharacters!3401 List!14635)) )
))
(declare-datatypes ((List!14636 0))(
  ( (Nil!14570) (Cons!14570 (h!19971 Token!4740) (t!124409 List!14636)) )
))
(declare-datatypes ((IArray!9789 0))(
  ( (IArray!9790 (innerList!4952 List!14636)) )
))
(declare-datatypes ((Conc!4892 0))(
  ( (Node!4892 (left!12459 Conc!4892) (right!12789 Conc!4892) (csize!10014 Int) (cheight!5103 Int)) (Leaf!7358 (xs!7619 IArray!9789) (csize!10015 Int)) (Empty!4892) )
))
(declare-datatypes ((List!14637 0))(
  ( (Nil!14571) (Cons!14571 (h!19972 Rule!4878) (t!124410 List!14637)) )
))
(declare-datatypes ((BalanceConc!9724 0))(
  ( (BalanceConc!9725 (c!233375 Conc!4892)) )
))
(declare-datatypes ((PrintableTokens!860 0))(
  ( (PrintableTokens!861 (rules!11160 List!14637) (tokens!1852 BalanceConc!9724)) )
))
(declare-datatypes ((List!14638 0))(
  ( (Nil!14572) (Cons!14572 (h!19973 PrintableTokens!860) (t!124411 List!14638)) )
))
(declare-datatypes ((IArray!9791 0))(
  ( (IArray!9792 (innerList!4953 List!14638)) )
))
(declare-datatypes ((Conc!4893 0))(
  ( (Node!4893 (left!12460 Conc!4893) (right!12790 Conc!4893) (csize!10016 Int) (cheight!5104 Int)) (Leaf!7359 (xs!7620 IArray!9791) (csize!10017 Int)) (Empty!4893) )
))
(declare-datatypes ((BalanceConc!9726 0))(
  ( (BalanceConc!9727 (c!233376 Conc!4893)) )
))
(declare-fun objs!24 () BalanceConc!9726)

(declare-fun isEmpty!8970 (BalanceConc!9726) Bool)

(assert (=> b!1419847 (= res!642872 (not (isEmpty!8970 objs!24)))))

(declare-fun b!1419849 () Bool)

(declare-fun res!642870 () Bool)

(declare-fun e!906327 () Bool)

(assert (=> b!1419849 (=> (not res!642870) (not e!906327))))

(declare-fun acc!229 () PrintableTokens!860)

(declare-datatypes ((Option!2802 0))(
  ( (None!2801) (Some!2801 (v!22201 PrintableTokens!860)) )
))
(declare-fun lt!479382 () Option!2802)

(get-info :version)

(declare-fun append!454 (PrintableTokens!860 PrintableTokens!860) Option!2802)

(assert (=> b!1419849 (= res!642870 (not ((_ is Some!2801) (append!454 acc!229 (v!22201 lt!479382)))))))

(declare-fun b!1419850 () Bool)

(declare-fun e!906328 () Bool)

(declare-fun e!906325 () Bool)

(declare-fun sep!3 () PrintableTokens!860)

(declare-fun tp!402570 () Bool)

(declare-fun inv!19230 (BalanceConc!9724) Bool)

(assert (=> b!1419850 (= e!906325 (and tp!402570 (inv!19230 (tokens!1852 sep!3)) e!906328))))

(declare-fun b!1419851 () Bool)

(declare-fun res!642875 () Bool)

(assert (=> b!1419851 (=> (not res!642875) (not e!906326))))

(declare-fun usesJsonRules!0 (PrintableTokens!860) Bool)

(assert (=> b!1419851 (= res!642875 (usesJsonRules!0 sep!3))))

(declare-fun b!1419852 () Bool)

(declare-fun tp!402567 () Bool)

(declare-fun inv!19231 (Conc!4892) Bool)

(assert (=> b!1419852 (= e!906328 (and (inv!19231 (c!233375 (tokens!1852 sep!3))) tp!402567))))

(declare-fun b!1419853 () Bool)

(declare-fun res!642871 () Bool)

(assert (=> b!1419853 (=> (not res!642871) (not e!906327))))

(assert (=> b!1419853 (= res!642871 false)))

(declare-fun b!1419854 () Bool)

(declare-fun res!642876 () Bool)

(assert (=> b!1419854 (=> (not res!642876) (not e!906326))))

(assert (=> b!1419854 (= res!642876 (usesJsonRules!0 acc!229))))

(declare-fun e!906330 () Bool)

(declare-fun e!906329 () Bool)

(declare-fun b!1419855 () Bool)

(declare-fun tp!402568 () Bool)

(assert (=> b!1419855 (= e!906330 (and tp!402568 (inv!19230 (tokens!1852 acc!229)) e!906329))))

(declare-fun b!1419856 () Bool)

(assert (=> b!1419856 (= e!906326 e!906327)))

(declare-fun res!642874 () Bool)

(assert (=> b!1419856 (=> (not res!642874) (not e!906327))))

(assert (=> b!1419856 (= res!642874 ((_ is Some!2801) lt!479382))))

(declare-fun head!2779 (BalanceConc!9726) PrintableTokens!860)

(assert (=> b!1419856 (= lt!479382 (append!454 (head!2779 objs!24) sep!3))))

(declare-fun b!1419857 () Bool)

(declare-fun get!4481 (Option!2802) PrintableTokens!860)

(assert (=> b!1419857 (= e!906327 (not (usesJsonRules!0 (get!4481 None!2801))))))

(declare-fun b!1419858 () Bool)

(declare-fun e!906324 () Bool)

(declare-fun tp!402569 () Bool)

(declare-fun inv!19232 (Conc!4893) Bool)

(assert (=> b!1419858 (= e!906324 (and (inv!19232 (c!233376 objs!24)) tp!402569))))

(declare-fun b!1419859 () Bool)

(declare-fun res!642877 () Bool)

(assert (=> b!1419859 (=> (not res!642877) (not e!906326))))

(declare-fun size!12030 (BalanceConc!9726) Int)

(assert (=> b!1419859 (= res!642877 (not (= (size!12030 objs!24) 1)))))

(declare-fun b!1419848 () Bool)

(declare-fun tp!402566 () Bool)

(assert (=> b!1419848 (= e!906329 (and (inv!19231 (c!233375 (tokens!1852 acc!229))) tp!402566))))

(declare-fun res!642873 () Bool)

(assert (=> start!130672 (=> (not res!642873) (not e!906326))))

(declare-fun lambda!62649 () Int)

(declare-fun forall!3637 (BalanceConc!9726 Int) Bool)

(assert (=> start!130672 (= res!642873 (forall!3637 objs!24 lambda!62649))))

(assert (=> start!130672 e!906326))

(declare-fun inv!19233 (BalanceConc!9726) Bool)

(assert (=> start!130672 (and (inv!19233 objs!24) e!906324)))

(declare-fun inv!19234 (PrintableTokens!860) Bool)

(assert (=> start!130672 (and (inv!19234 acc!229) e!906330)))

(assert (=> start!130672 (and (inv!19234 sep!3) e!906325)))

(assert (= (and start!130672 res!642873) b!1419854))

(assert (= (and b!1419854 res!642876) b!1419851))

(assert (= (and b!1419851 res!642875) b!1419847))

(assert (= (and b!1419847 res!642872) b!1419859))

(assert (= (and b!1419859 res!642877) b!1419856))

(assert (= (and b!1419856 res!642874) b!1419849))

(assert (= (and b!1419849 res!642870) b!1419853))

(assert (= (and b!1419853 res!642871) b!1419857))

(assert (= start!130672 b!1419858))

(assert (= b!1419855 b!1419848))

(assert (= start!130672 b!1419855))

(assert (= b!1419850 b!1419852))

(assert (= start!130672 b!1419850))

(declare-fun m!1609449 () Bool)

(assert (=> b!1419850 m!1609449))

(declare-fun m!1609451 () Bool)

(assert (=> b!1419847 m!1609451))

(declare-fun m!1609453 () Bool)

(assert (=> b!1419859 m!1609453))

(declare-fun m!1609455 () Bool)

(assert (=> start!130672 m!1609455))

(declare-fun m!1609457 () Bool)

(assert (=> start!130672 m!1609457))

(declare-fun m!1609459 () Bool)

(assert (=> start!130672 m!1609459))

(declare-fun m!1609461 () Bool)

(assert (=> start!130672 m!1609461))

(declare-fun m!1609463 () Bool)

(assert (=> b!1419858 m!1609463))

(declare-fun m!1609465 () Bool)

(assert (=> b!1419849 m!1609465))

(declare-fun m!1609467 () Bool)

(assert (=> b!1419851 m!1609467))

(declare-fun m!1609469 () Bool)

(assert (=> b!1419852 m!1609469))

(declare-fun m!1609471 () Bool)

(assert (=> b!1419854 m!1609471))

(declare-fun m!1609473 () Bool)

(assert (=> b!1419857 m!1609473))

(assert (=> b!1419857 m!1609473))

(declare-fun m!1609475 () Bool)

(assert (=> b!1419857 m!1609475))

(declare-fun m!1609477 () Bool)

(assert (=> b!1419848 m!1609477))

(declare-fun m!1609479 () Bool)

(assert (=> b!1419855 m!1609479))

(declare-fun m!1609481 () Bool)

(assert (=> b!1419856 m!1609481))

(assert (=> b!1419856 m!1609481))

(declare-fun m!1609483 () Bool)

(assert (=> b!1419856 m!1609483))

(check-sat (not b!1419855) (not b!1419851) (not b!1419852) (not b!1419850) (not b!1419849) (not b!1419859) (not b!1419847) (not b!1419856) (not b!1419858) (not b!1419854) (not b!1419857) (not b!1419848) (not start!130672))
(check-sat)
