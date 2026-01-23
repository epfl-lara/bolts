; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513600 () Bool)

(assert start!513600)

(declare-fun b!4902019 () Bool)

(declare-fun b_free!131787 () Bool)

(declare-fun b_next!132577 () Bool)

(assert (=> b!4902019 (= b_free!131787 (not b_next!132577))))

(declare-fun tp!1379294 () Bool)

(declare-fun b_and!346179 () Bool)

(assert (=> b!4902019 (= tp!1379294 b_and!346179)))

(declare-fun b_free!131789 () Bool)

(declare-fun b_next!132579 () Bool)

(assert (=> b!4902019 (= b_free!131789 (not b_next!132579))))

(declare-fun tp!1379292 () Bool)

(declare-fun b_and!346181 () Bool)

(assert (=> b!4902019 (= tp!1379292 b_and!346181)))

(declare-fun b!4902031 () Bool)

(declare-fun e!3064232 () Bool)

(assert (=> b!4902031 (= e!3064232 true)))

(declare-fun b!4902030 () Bool)

(declare-fun e!3064231 () Bool)

(assert (=> b!4902030 (= e!3064231 e!3064232)))

(declare-fun b!4902018 () Bool)

(assert (=> b!4902018 e!3064231))

(assert (= b!4902030 b!4902031))

(assert (= b!4902018 b!4902030))

(declare-fun lambda!244262 () Int)

(declare-fun order!25575 () Int)

(declare-datatypes ((C!26756 0))(
  ( (C!26757 (val!22712 Int)) )
))
(declare-datatypes ((Regex!13279 0))(
  ( (ElementMatch!13279 (c!833163 C!26756)) (Concat!21793 (regOne!27070 Regex!13279) (regTwo!27070 Regex!13279)) (EmptyExpr!13279) (Star!13279 (reg!13608 Regex!13279)) (EmptyLang!13279) (Union!13279 (regOne!27071 Regex!13279) (regTwo!27071 Regex!13279)) )
))
(declare-datatypes ((String!64011 0))(
  ( (String!64012 (value!262925 String)) )
))
(declare-datatypes ((List!56606 0))(
  ( (Nil!56482) (Cons!56482 (h!62930 (_ BitVec 16)) (t!366698 List!56606)) )
))
(declare-datatypes ((TokenValue!8514 0))(
  ( (FloatLiteralValue!17028 (text!60043 List!56606)) (TokenValueExt!8513 (__x!34321 Int)) (Broken!42570 (value!262926 List!56606)) (Object!8637) (End!8514) (Def!8514) (Underscore!8514) (Match!8514) (Else!8514) (Error!8514) (Case!8514) (If!8514) (Extends!8514) (Abstract!8514) (Class!8514) (Val!8514) (DelimiterValue!17028 (del!8574 List!56606)) (KeywordValue!8520 (value!262927 List!56606)) (CommentValue!17028 (value!262928 List!56606)) (WhitespaceValue!17028 (value!262929 List!56606)) (IndentationValue!8514 (value!262930 List!56606)) (String!64013) (Int32!8514) (Broken!42571 (value!262931 List!56606)) (Boolean!8515) (Unit!146580) (OperatorValue!8517 (op!8574 List!56606)) (IdentifierValue!17028 (value!262932 List!56606)) (IdentifierValue!17029 (value!262933 List!56606)) (WhitespaceValue!17029 (value!262934 List!56606)) (True!17028) (False!17028) (Broken!42572 (value!262935 List!56606)) (Broken!42573 (value!262936 List!56606)) (True!17029) (RightBrace!8514) (RightBracket!8514) (Colon!8514) (Null!8514) (Comma!8514) (LeftBracket!8514) (False!17029) (LeftBrace!8514) (ImaginaryLiteralValue!8514 (text!60044 List!56606)) (StringLiteralValue!25542 (value!262937 List!56606)) (EOFValue!8514 (value!262938 List!56606)) (IdentValue!8514 (value!262939 List!56606)) (DelimiterValue!17029 (value!262940 List!56606)) (DedentValue!8514 (value!262941 List!56606)) (NewLineValue!8514 (value!262942 List!56606)) (IntegerValue!25542 (value!262943 (_ BitVec 32)) (text!60045 List!56606)) (IntegerValue!25543 (value!262944 Int) (text!60046 List!56606)) (Times!8514) (Or!8514) (Equal!8514) (Minus!8514) (Broken!42574 (value!262945 List!56606)) (And!8514) (Div!8514) (LessEqual!8514) (Mod!8514) (Concat!21794) (Not!8514) (Plus!8514) (SpaceValue!8514 (value!262946 List!56606)) (IntegerValue!25544 (value!262947 Int) (text!60047 List!56606)) (StringLiteralValue!25543 (text!60048 List!56606)) (FloatLiteralValue!17029 (text!60049 List!56606)) (BytesLiteralValue!8514 (value!262948 List!56606)) (CommentValue!17029 (value!262949 List!56606)) (StringLiteralValue!25544 (value!262950 List!56606)) (ErrorTokenValue!8514 (msg!8575 List!56606)) )
))
(declare-datatypes ((List!56607 0))(
  ( (Nil!56483) (Cons!56483 (h!62931 C!26756) (t!366699 List!56607)) )
))
(declare-datatypes ((IArray!29605 0))(
  ( (IArray!29606 (innerList!14860 List!56607)) )
))
(declare-datatypes ((Conc!14772 0))(
  ( (Node!14772 (left!41060 Conc!14772) (right!41390 Conc!14772) (csize!29774 Int) (cheight!14983 Int)) (Leaf!24591 (xs!18088 IArray!29605) (csize!29775 Int)) (Empty!14772) )
))
(declare-datatypes ((BalanceConc!28974 0))(
  ( (BalanceConc!28975 (c!833164 Conc!14772)) )
))
(declare-datatypes ((TokenValueInjection!16336 0))(
  ( (TokenValueInjection!16337 (toValue!11115 Int) (toChars!10974 Int)) )
))
(declare-datatypes ((Rule!16208 0))(
  ( (Rule!16209 (regex!8204 Regex!13279) (tag!9068 String!64011) (isSeparator!8204 Bool) (transformation!8204 TokenValueInjection!16336)) )
))
(declare-fun rule!164 () Rule!16208)

(declare-fun order!25573 () Int)

(declare-fun dynLambda!22720 (Int Int) Int)

(declare-fun dynLambda!22721 (Int Int) Int)

(assert (=> b!4902031 (< (dynLambda!22720 order!25573 (toValue!11115 (transformation!8204 rule!164))) (dynLambda!22721 order!25575 lambda!244262))))

(declare-fun order!25577 () Int)

(declare-fun dynLambda!22722 (Int Int) Int)

(assert (=> b!4902031 (< (dynLambda!22722 order!25577 (toChars!10974 (transformation!8204 rule!164))) (dynLambda!22721 order!25575 lambda!244262))))

(declare-fun b!4902015 () Bool)

(declare-fun e!3064221 () Bool)

(declare-datatypes ((tuple2!60584 0))(
  ( (tuple2!60585 (_1!33595 List!56607) (_2!33595 List!56607)) )
))
(declare-fun lt!2010112 () tuple2!60584)

(declare-fun matchR!6546 (Regex!13279 List!56607) Bool)

(assert (=> b!4902015 (= e!3064221 (matchR!6546 (regex!8204 rule!164) (_1!33595 lt!2010112)))))

(declare-fun res!2093823 () Bool)

(declare-fun e!3064224 () Bool)

(assert (=> start!513600 (=> (not res!2093823) (not e!3064224))))

(declare-datatypes ((LexerInterface!7796 0))(
  ( (LexerInterfaceExt!7793 (__x!34322 Int)) (Lexer!7794) )
))
(declare-fun thiss!15943 () LexerInterface!7796)

(get-info :version)

(assert (=> start!513600 (= res!2093823 ((_ is Lexer!7794) thiss!15943))))

(assert (=> start!513600 e!3064224))

(assert (=> start!513600 true))

(declare-fun e!3064222 () Bool)

(assert (=> start!513600 e!3064222))

(declare-fun input!1509 () BalanceConc!28974)

(declare-fun e!3064226 () Bool)

(declare-fun inv!72849 (BalanceConc!28974) Bool)

(assert (=> start!513600 (and (inv!72849 input!1509) e!3064226)))

(declare-fun b!4902016 () Bool)

(declare-fun res!2093825 () Bool)

(assert (=> b!4902016 (=> (not res!2093825) (not e!3064224))))

(declare-fun ruleValid!3701 (LexerInterface!7796 Rule!16208) Bool)

(assert (=> b!4902016 (= res!2093825 (ruleValid!3701 thiss!15943 rule!164))))

(declare-fun b!4902017 () Bool)

(declare-fun tp!1379293 () Bool)

(declare-fun inv!72850 (Conc!14772) Bool)

(assert (=> b!4902017 (= e!3064226 (and (inv!72850 (c!833164 input!1509)) tp!1379293))))

(declare-fun res!2093821 () Bool)

(declare-fun e!3064219 () Bool)

(assert (=> b!4902018 (=> res!2093821 e!3064219)))

(declare-fun Forall!1701 (Int) Bool)

(assert (=> b!4902018 (= res!2093821 (not (Forall!1701 lambda!244262)))))

(declare-fun e!3064223 () Bool)

(assert (=> b!4902019 (= e!3064223 (and tp!1379294 tp!1379292))))

(declare-fun b!4902020 () Bool)

(assert (=> b!4902020 (= e!3064219 true)))

(declare-fun lt!2010117 () Int)

(declare-datatypes ((tuple2!60586 0))(
  ( (tuple2!60587 (_1!33596 BalanceConc!28974) (_2!33596 BalanceConc!28974)) )
))
(declare-fun lt!2010119 () tuple2!60586)

(declare-fun size!37193 (BalanceConc!28974) Int)

(assert (=> b!4902020 (= lt!2010117 (size!37193 (_1!33596 lt!2010119)))))

(declare-fun lt!2010118 () TokenValue!8514)

(declare-fun apply!13552 (TokenValueInjection!16336 BalanceConc!28974) TokenValue!8514)

(assert (=> b!4902020 (= lt!2010118 (apply!13552 (transformation!8204 rule!164) (_1!33596 lt!2010119)))))

(declare-datatypes ((Unit!146581 0))(
  ( (Unit!146582) )
))
(declare-fun lt!2010113 () Unit!146581)

(declare-fun ForallOf!1145 (Int BalanceConc!28974) Unit!146581)

(declare-fun seqFromList!5950 (List!56607) BalanceConc!28974)

(declare-fun list!17774 (BalanceConc!28974) List!56607)

(assert (=> b!4902020 (= lt!2010113 (ForallOf!1145 lambda!244262 (seqFromList!5950 (list!17774 (_1!33596 lt!2010119)))))))

(declare-fun lt!2010111 () Unit!146581)

(assert (=> b!4902020 (= lt!2010111 (ForallOf!1145 lambda!244262 (_1!33596 lt!2010119)))))

(declare-fun b!4902021 () Bool)

(declare-fun e!3064225 () Bool)

(assert (=> b!4902021 (= e!3064225 (not e!3064219))))

(declare-fun res!2093822 () Bool)

(assert (=> b!4902021 (=> res!2093822 e!3064219)))

(declare-fun semiInverseModEq!3605 (Int Int) Bool)

(assert (=> b!4902021 (= res!2093822 (not (semiInverseModEq!3605 (toChars!10974 (transformation!8204 rule!164)) (toValue!11115 (transformation!8204 rule!164)))))))

(declare-fun lt!2010116 () Unit!146581)

(declare-fun lemmaInv!1250 (TokenValueInjection!16336) Unit!146581)

(assert (=> b!4902021 (= lt!2010116 (lemmaInv!1250 (transformation!8204 rule!164)))))

(assert (=> b!4902021 e!3064221))

(declare-fun res!2093824 () Bool)

(assert (=> b!4902021 (=> res!2093824 e!3064221)))

(declare-fun isEmpty!30343 (List!56607) Bool)

(assert (=> b!4902021 (= res!2093824 (isEmpty!30343 (_1!33595 lt!2010112)))))

(declare-fun lt!2010115 () List!56607)

(declare-fun findLongestMatchInner!1767 (Regex!13279 List!56607 Int List!56607 List!56607 Int) tuple2!60584)

(declare-fun size!37194 (List!56607) Int)

(assert (=> b!4902021 (= lt!2010112 (findLongestMatchInner!1767 (regex!8204 rule!164) Nil!56483 (size!37194 Nil!56483) lt!2010115 lt!2010115 (size!37194 lt!2010115)))))

(declare-fun lt!2010114 () Unit!146581)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1730 (Regex!13279 List!56607) Unit!146581)

(assert (=> b!4902021 (= lt!2010114 (longestMatchIsAcceptedByMatchOrIsEmpty!1730 (regex!8204 rule!164) lt!2010115))))

(assert (=> b!4902021 (= lt!2010115 (list!17774 input!1509))))

(declare-fun b!4902022 () Bool)

(assert (=> b!4902022 (= e!3064224 e!3064225)))

(declare-fun res!2093826 () Bool)

(assert (=> b!4902022 (=> (not res!2093826) (not e!3064225))))

(declare-fun isEmpty!30344 (BalanceConc!28974) Bool)

(assert (=> b!4902022 (= res!2093826 (not (isEmpty!30344 (_1!33596 lt!2010119))))))

(declare-fun findLongestMatchWithZipperSequence!292 (Regex!13279 BalanceConc!28974) tuple2!60586)

(assert (=> b!4902022 (= lt!2010119 (findLongestMatchWithZipperSequence!292 (regex!8204 rule!164) input!1509))))

(declare-fun b!4902023 () Bool)

(declare-fun tp!1379295 () Bool)

(declare-fun inv!72845 (String!64011) Bool)

(declare-fun inv!72851 (TokenValueInjection!16336) Bool)

(assert (=> b!4902023 (= e!3064222 (and tp!1379295 (inv!72845 (tag!9068 rule!164)) (inv!72851 (transformation!8204 rule!164)) e!3064223))))

(assert (= (and start!513600 res!2093823) b!4902016))

(assert (= (and b!4902016 res!2093825) b!4902022))

(assert (= (and b!4902022 res!2093826) b!4902021))

(assert (= (and b!4902021 (not res!2093824)) b!4902015))

(assert (= (and b!4902021 (not res!2093822)) b!4902018))

(assert (= (and b!4902018 (not res!2093821)) b!4902020))

(assert (= b!4902023 b!4902019))

(assert (= start!513600 b!4902023))

(assert (= start!513600 b!4902017))

(declare-fun m!5910668 () Bool)

(assert (=> b!4902017 m!5910668))

(declare-fun m!5910670 () Bool)

(assert (=> b!4902016 m!5910670))

(declare-fun m!5910672 () Bool)

(assert (=> b!4902020 m!5910672))

(declare-fun m!5910674 () Bool)

(assert (=> b!4902020 m!5910674))

(declare-fun m!5910676 () Bool)

(assert (=> b!4902020 m!5910676))

(declare-fun m!5910678 () Bool)

(assert (=> b!4902020 m!5910678))

(declare-fun m!5910680 () Bool)

(assert (=> b!4902020 m!5910680))

(declare-fun m!5910682 () Bool)

(assert (=> b!4902020 m!5910682))

(assert (=> b!4902020 m!5910682))

(assert (=> b!4902020 m!5910678))

(declare-fun m!5910684 () Bool)

(assert (=> b!4902015 m!5910684))

(declare-fun m!5910686 () Bool)

(assert (=> b!4902023 m!5910686))

(declare-fun m!5910688 () Bool)

(assert (=> b!4902023 m!5910688))

(declare-fun m!5910690 () Bool)

(assert (=> b!4902022 m!5910690))

(declare-fun m!5910692 () Bool)

(assert (=> b!4902022 m!5910692))

(declare-fun m!5910694 () Bool)

(assert (=> start!513600 m!5910694))

(declare-fun m!5910696 () Bool)

(assert (=> b!4902018 m!5910696))

(declare-fun m!5910698 () Bool)

(assert (=> b!4902021 m!5910698))

(declare-fun m!5910700 () Bool)

(assert (=> b!4902021 m!5910700))

(declare-fun m!5910702 () Bool)

(assert (=> b!4902021 m!5910702))

(assert (=> b!4902021 m!5910700))

(declare-fun m!5910704 () Bool)

(assert (=> b!4902021 m!5910704))

(declare-fun m!5910706 () Bool)

(assert (=> b!4902021 m!5910706))

(declare-fun m!5910708 () Bool)

(assert (=> b!4902021 m!5910708))

(declare-fun m!5910710 () Bool)

(assert (=> b!4902021 m!5910710))

(assert (=> b!4902021 m!5910704))

(declare-fun m!5910712 () Bool)

(assert (=> b!4902021 m!5910712))

(check-sat (not b!4902016) b_and!346181 (not b_next!132577) (not b_next!132579) (not b!4902017) (not b!4902018) (not b!4902015) (not start!513600) (not b!4902021) (not b!4902022) b_and!346179 (not b!4902023) (not b!4902020))
(check-sat b_and!346181 b_and!346179 (not b_next!132579) (not b_next!132577))
