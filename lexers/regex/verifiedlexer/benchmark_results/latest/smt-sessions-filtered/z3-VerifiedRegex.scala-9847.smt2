; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!515724 () Bool)

(assert start!515724)

(declare-fun b!4912712 () Bool)

(declare-fun b_free!132019 () Bool)

(declare-fun b_next!132809 () Bool)

(assert (=> b!4912712 (= b_free!132019 (not b_next!132809))))

(declare-fun tp!1381290 () Bool)

(declare-fun b_and!346871 () Bool)

(assert (=> b!4912712 (= tp!1381290 b_and!346871)))

(declare-fun b_free!132021 () Bool)

(declare-fun b_next!132811 () Bool)

(assert (=> b!4912712 (= b_free!132021 (not b_next!132811))))

(declare-fun tp!1381291 () Bool)

(declare-fun b_and!346873 () Bool)

(assert (=> b!4912712 (= tp!1381291 b_and!346873)))

(declare-fun b!4912725 () Bool)

(declare-fun e!3070670 () Bool)

(assert (=> b!4912725 (= e!3070670 true)))

(declare-fun b!4912724 () Bool)

(declare-fun e!3070669 () Bool)

(assert (=> b!4912724 (= e!3070669 e!3070670)))

(declare-fun b!4912703 () Bool)

(assert (=> b!4912703 e!3070669))

(assert (= b!4912724 b!4912725))

(assert (= b!4912703 b!4912724))

(declare-fun order!25963 () Int)

(declare-fun order!25961 () Int)

(declare-datatypes ((C!26872 0))(
  ( (C!26873 (val!22770 Int)) )
))
(declare-datatypes ((Regex!13337 0))(
  ( (ElementMatch!13337 (c!835049 C!26872)) (Concat!21909 (regOne!27186 Regex!13337) (regTwo!27186 Regex!13337)) (EmptyExpr!13337) (Star!13337 (reg!13666 Regex!13337)) (EmptyLang!13337) (Union!13337 (regOne!27187 Regex!13337) (regTwo!27187 Regex!13337)) )
))
(declare-datatypes ((String!64301 0))(
  ( (String!64302 (value!264571 String)) )
))
(declare-datatypes ((List!56722 0))(
  ( (Nil!56598) (Cons!56598 (h!63046 (_ BitVec 16)) (t!367128 List!56722)) )
))
(declare-datatypes ((TokenValue!8572 0))(
  ( (FloatLiteralValue!17144 (text!60449 List!56722)) (TokenValueExt!8571 (__x!34437 Int)) (Broken!42860 (value!264572 List!56722)) (Object!8695) (End!8572) (Def!8572) (Underscore!8572) (Match!8572) (Else!8572) (Error!8572) (Case!8572) (If!8572) (Extends!8572) (Abstract!8572) (Class!8572) (Val!8572) (DelimiterValue!17144 (del!8632 List!56722)) (KeywordValue!8578 (value!264573 List!56722)) (CommentValue!17144 (value!264574 List!56722)) (WhitespaceValue!17144 (value!264575 List!56722)) (IndentationValue!8572 (value!264576 List!56722)) (String!64303) (Int32!8572) (Broken!42861 (value!264577 List!56722)) (Boolean!8573) (Unit!146893) (OperatorValue!8575 (op!8632 List!56722)) (IdentifierValue!17144 (value!264578 List!56722)) (IdentifierValue!17145 (value!264579 List!56722)) (WhitespaceValue!17145 (value!264580 List!56722)) (True!17144) (False!17144) (Broken!42862 (value!264581 List!56722)) (Broken!42863 (value!264582 List!56722)) (True!17145) (RightBrace!8572) (RightBracket!8572) (Colon!8572) (Null!8572) (Comma!8572) (LeftBracket!8572) (False!17145) (LeftBrace!8572) (ImaginaryLiteralValue!8572 (text!60450 List!56722)) (StringLiteralValue!25716 (value!264583 List!56722)) (EOFValue!8572 (value!264584 List!56722)) (IdentValue!8572 (value!264585 List!56722)) (DelimiterValue!17145 (value!264586 List!56722)) (DedentValue!8572 (value!264587 List!56722)) (NewLineValue!8572 (value!264588 List!56722)) (IntegerValue!25716 (value!264589 (_ BitVec 32)) (text!60451 List!56722)) (IntegerValue!25717 (value!264590 Int) (text!60452 List!56722)) (Times!8572) (Or!8572) (Equal!8572) (Minus!8572) (Broken!42864 (value!264591 List!56722)) (And!8572) (Div!8572) (LessEqual!8572) (Mod!8572) (Concat!21910) (Not!8572) (Plus!8572) (SpaceValue!8572 (value!264592 List!56722)) (IntegerValue!25718 (value!264593 Int) (text!60453 List!56722)) (StringLiteralValue!25717 (text!60454 List!56722)) (FloatLiteralValue!17145 (text!60455 List!56722)) (BytesLiteralValue!8572 (value!264594 List!56722)) (CommentValue!17145 (value!264595 List!56722)) (StringLiteralValue!25718 (value!264596 List!56722)) (ErrorTokenValue!8572 (msg!8633 List!56722)) )
))
(declare-datatypes ((List!56723 0))(
  ( (Nil!56599) (Cons!56599 (h!63047 C!26872) (t!367129 List!56723)) )
))
(declare-datatypes ((IArray!29721 0))(
  ( (IArray!29722 (innerList!14918 List!56723)) )
))
(declare-datatypes ((Conc!14830 0))(
  ( (Node!14830 (left!41259 Conc!14830) (right!41589 Conc!14830) (csize!29890 Int) (cheight!15041 Int)) (Leaf!24678 (xs!18146 IArray!29721) (csize!29891 Int)) (Empty!14830) )
))
(declare-datatypes ((BalanceConc!29090 0))(
  ( (BalanceConc!29091 (c!835050 Conc!14830)) )
))
(declare-datatypes ((TokenValueInjection!16452 0))(
  ( (TokenValueInjection!16453 (toValue!11213 Int) (toChars!11072 Int)) )
))
(declare-datatypes ((Rule!16324 0))(
  ( (Rule!16325 (regex!8262 Regex!13337) (tag!9126 String!64301) (isSeparator!8262 Bool) (transformation!8262 TokenValueInjection!16452)) )
))
(declare-fun rule!164 () Rule!16324)

(declare-fun lambda!244816 () Int)

(declare-fun dynLambda!22993 (Int Int) Int)

(declare-fun dynLambda!22994 (Int Int) Int)

(assert (=> b!4912725 (< (dynLambda!22993 order!25961 (toValue!11213 (transformation!8262 rule!164))) (dynLambda!22994 order!25963 lambda!244816))))

(declare-fun order!25965 () Int)

(declare-fun dynLambda!22995 (Int Int) Int)

(assert (=> b!4912725 (< (dynLambda!22995 order!25965 (toChars!11072 (transformation!8262 rule!164))) (dynLambda!22994 order!25963 lambda!244816))))

(declare-fun res!2098598 () Bool)

(declare-fun e!3070655 () Bool)

(assert (=> b!4912703 (=> res!2098598 e!3070655)))

(declare-fun Forall!1757 (Int) Bool)

(assert (=> b!4912703 (= res!2098598 (not (Forall!1757 lambda!244816)))))

(declare-fun tp!1381293 () Bool)

(declare-fun e!3070659 () Bool)

(declare-fun b!4912704 () Bool)

(declare-fun e!3070654 () Bool)

(declare-fun inv!73210 (String!64301) Bool)

(declare-fun inv!73214 (TokenValueInjection!16452) Bool)

(assert (=> b!4912704 (= e!3070654 (and tp!1381293 (inv!73210 (tag!9126 rule!164)) (inv!73214 (transformation!8262 rule!164)) e!3070659))))

(declare-fun b!4912705 () Bool)

(declare-fun e!3070658 () Bool)

(declare-fun lt!2017037 () Bool)

(assert (=> b!4912705 (= e!3070658 lt!2017037)))

(declare-fun b!4912706 () Bool)

(declare-fun res!2098592 () Bool)

(declare-fun e!3070664 () Bool)

(assert (=> b!4912706 (=> (not res!2098592) (not e!3070664))))

(declare-datatypes ((LexerInterface!7854 0))(
  ( (LexerInterfaceExt!7851 (__x!34438 Int)) (Lexer!7852) )
))
(declare-fun thiss!15943 () LexerInterface!7854)

(declare-fun ruleValid!3759 (LexerInterface!7854 Rule!16324) Bool)

(assert (=> b!4912706 (= res!2098592 (ruleValid!3759 thiss!15943 rule!164))))

(declare-fun b!4912707 () Bool)

(declare-fun e!3070653 () Bool)

(assert (=> b!4912707 (= e!3070664 e!3070653)))

(declare-fun res!2098594 () Bool)

(assert (=> b!4912707 (=> (not res!2098594) (not e!3070653))))

(declare-datatypes ((tuple2!61010 0))(
  ( (tuple2!61011 (_1!33808 BalanceConc!29090) (_2!33808 BalanceConc!29090)) )
))
(declare-fun lt!2017048 () tuple2!61010)

(declare-fun isEmpty!30539 (BalanceConc!29090) Bool)

(assert (=> b!4912707 (= res!2098594 (not (isEmpty!30539 (_1!33808 lt!2017048))))))

(declare-fun input!1509 () BalanceConc!29090)

(declare-fun findLongestMatchWithZipperSequence!350 (Regex!13337 BalanceConc!29090) tuple2!61010)

(assert (=> b!4912707 (= lt!2017048 (findLongestMatchWithZipperSequence!350 (regex!8262 rule!164) input!1509))))

(declare-fun b!4912708 () Bool)

(declare-fun e!3070661 () Bool)

(declare-fun e!3070662 () Bool)

(assert (=> b!4912708 (= e!3070661 e!3070662)))

(declare-fun res!2098593 () Bool)

(assert (=> b!4912708 (=> res!2098593 e!3070662)))

(declare-fun lt!2017040 () BalanceConc!29090)

(declare-fun lt!2017046 () TokenValue!8572)

(declare-fun apply!13604 (TokenValueInjection!16452 BalanceConc!29090) TokenValue!8572)

(assert (=> b!4912708 (= res!2098593 (not (= (apply!13604 (transformation!8262 rule!164) lt!2017040) lt!2017046)))))

(declare-datatypes ((Unit!146894 0))(
  ( (Unit!146895) )
))
(declare-fun lt!2017039 () Unit!146894)

(declare-fun lemmaEqSameImage!1138 (TokenValueInjection!16452 BalanceConc!29090 BalanceConc!29090) Unit!146894)

(assert (=> b!4912708 (= lt!2017039 (lemmaEqSameImage!1138 (transformation!8262 rule!164) (_1!33808 lt!2017048) lt!2017040))))

(declare-fun b!4912709 () Bool)

(declare-fun e!3070663 () Bool)

(assert (=> b!4912709 (= e!3070663 e!3070658)))

(declare-fun res!2098591 () Bool)

(assert (=> b!4912709 (=> res!2098591 e!3070658)))

(declare-datatypes ((Token!15048 0))(
  ( (Token!15049 (value!264597 TokenValue!8572) (rule!11482 Rule!16324) (size!37379 Int) (originalCharacters!8555 List!56723)) )
))
(declare-datatypes ((tuple2!61012 0))(
  ( (tuple2!61013 (_1!33809 Token!15048) (_2!33809 BalanceConc!29090)) )
))
(declare-fun lt!2017050 () tuple2!61012)

(declare-datatypes ((tuple2!61014 0))(
  ( (tuple2!61015 (_1!33810 Token!15048) (_2!33810 List!56723)) )
))
(declare-fun lt!2017035 () tuple2!61014)

(assert (=> b!4912709 (= res!2098591 (not (= (_1!33809 lt!2017050) (_1!33810 lt!2017035))))))

(declare-datatypes ((Option!14153 0))(
  ( (None!14152) (Some!14152 (v!50114 tuple2!61012)) )
))
(declare-fun lt!2017045 () Option!14153)

(declare-fun get!19604 (Option!14153) tuple2!61012)

(assert (=> b!4912709 (= lt!2017050 (get!19604 lt!2017045))))

(declare-fun b!4912710 () Bool)

(assert (=> b!4912710 (= e!3070655 e!3070661)))

(declare-fun res!2098600 () Bool)

(assert (=> b!4912710 (=> res!2098600 e!3070661)))

(declare-fun lt!2017044 () Bool)

(assert (=> b!4912710 (= res!2098600 (or (not (= lt!2017044 lt!2017037)) (not lt!2017044)))))

(declare-datatypes ((Option!14154 0))(
  ( (None!14153) (Some!14153 (v!50115 tuple2!61014)) )
))
(declare-fun lt!2017036 () Option!14154)

(declare-fun isDefined!11160 (Option!14154) Bool)

(assert (=> b!4912710 (= lt!2017037 (isDefined!11160 lt!2017036))))

(declare-fun isDefined!11161 (Option!14153) Bool)

(assert (=> b!4912710 (= lt!2017044 (isDefined!11161 lt!2017045))))

(declare-fun lt!2017038 () List!56723)

(declare-fun maxPrefixOneRule!3595 (LexerInterface!7854 Rule!16324 List!56723) Option!14154)

(assert (=> b!4912710 (= lt!2017036 (maxPrefixOneRule!3595 thiss!15943 rule!164 lt!2017038))))

(declare-fun lt!2017042 () Token!15048)

(assert (=> b!4912710 (= lt!2017045 (Some!14152 (tuple2!61013 lt!2017042 (_2!33808 lt!2017048))))))

(declare-fun lt!2017041 () Int)

(declare-fun lt!2017047 () List!56723)

(assert (=> b!4912710 (= lt!2017042 (Token!15049 lt!2017046 rule!164 lt!2017041 lt!2017047))))

(declare-fun size!37380 (BalanceConc!29090) Int)

(assert (=> b!4912710 (= lt!2017041 (size!37380 (_1!33808 lt!2017048)))))

(assert (=> b!4912710 (= lt!2017046 (apply!13604 (transformation!8262 rule!164) (_1!33808 lt!2017048)))))

(declare-fun lt!2017043 () Unit!146894)

(declare-fun ForallOf!1197 (Int BalanceConc!29090) Unit!146894)

(assert (=> b!4912710 (= lt!2017043 (ForallOf!1197 lambda!244816 lt!2017040))))

(declare-fun seqFromList!6002 (List!56723) BalanceConc!29090)

(assert (=> b!4912710 (= lt!2017040 (seqFromList!6002 lt!2017047))))

(declare-fun list!17874 (BalanceConc!29090) List!56723)

(assert (=> b!4912710 (= lt!2017047 (list!17874 (_1!33808 lt!2017048)))))

(declare-fun lt!2017053 () Unit!146894)

(assert (=> b!4912710 (= lt!2017053 (ForallOf!1197 lambda!244816 (_1!33808 lt!2017048)))))

(declare-fun b!4912711 () Bool)

(assert (=> b!4912711 (= e!3070662 e!3070663)))

(declare-fun res!2098595 () Bool)

(assert (=> b!4912711 (=> res!2098595 e!3070663)))

(assert (=> b!4912711 (= res!2098595 (or (not (= (value!264597 (_1!33810 lt!2017035)) lt!2017046)) (not (= (rule!11482 (_1!33810 lt!2017035)) rule!164)) (not (= (size!37379 (_1!33810 lt!2017035)) lt!2017041)) (not (= (originalCharacters!8555 (_1!33810 lt!2017035)) lt!2017047)) (not (= lt!2017042 (_1!33810 lt!2017035)))))))

(declare-fun get!19605 (Option!14154) tuple2!61014)

(assert (=> b!4912711 (= lt!2017035 (get!19605 lt!2017036))))

(assert (=> b!4912712 (= e!3070659 (and tp!1381290 tp!1381291))))

(declare-fun b!4912714 () Bool)

(assert (=> b!4912714 (= e!3070653 (not e!3070655))))

(declare-fun res!2098597 () Bool)

(assert (=> b!4912714 (=> res!2098597 e!3070655)))

(declare-fun semiInverseModEq!3663 (Int Int) Bool)

(assert (=> b!4912714 (= res!2098597 (not (semiInverseModEq!3663 (toChars!11072 (transformation!8262 rule!164)) (toValue!11213 (transformation!8262 rule!164)))))))

(declare-fun lt!2017049 () Unit!146894)

(declare-fun lemmaInv!1304 (TokenValueInjection!16452) Unit!146894)

(assert (=> b!4912714 (= lt!2017049 (lemmaInv!1304 (transformation!8262 rule!164)))))

(declare-fun e!3070657 () Bool)

(assert (=> b!4912714 e!3070657))

(declare-fun res!2098596 () Bool)

(assert (=> b!4912714 (=> res!2098596 e!3070657)))

(declare-datatypes ((tuple2!61016 0))(
  ( (tuple2!61017 (_1!33811 List!56723) (_2!33811 List!56723)) )
))
(declare-fun lt!2017051 () tuple2!61016)

(declare-fun isEmpty!30540 (List!56723) Bool)

(assert (=> b!4912714 (= res!2098596 (isEmpty!30540 (_1!33811 lt!2017051)))))

(declare-fun findLongestMatchInner!1823 (Regex!13337 List!56723 Int List!56723 List!56723 Int) tuple2!61016)

(declare-fun size!37381 (List!56723) Int)

(assert (=> b!4912714 (= lt!2017051 (findLongestMatchInner!1823 (regex!8262 rule!164) Nil!56599 (size!37381 Nil!56599) lt!2017038 lt!2017038 (size!37381 lt!2017038)))))

(declare-fun lt!2017052 () Unit!146894)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1786 (Regex!13337 List!56723) Unit!146894)

(assert (=> b!4912714 (= lt!2017052 (longestMatchIsAcceptedByMatchOrIsEmpty!1786 (regex!8262 rule!164) lt!2017038))))

(assert (=> b!4912714 (= lt!2017038 (list!17874 input!1509))))

(declare-fun b!4912715 () Bool)

(declare-fun e!3070660 () Bool)

(declare-fun tp!1381292 () Bool)

(declare-fun inv!73215 (Conc!14830) Bool)

(assert (=> b!4912715 (= e!3070660 (and (inv!73215 (c!835050 input!1509)) tp!1381292))))

(declare-fun b!4912716 () Bool)

(declare-fun res!2098589 () Bool)

(assert (=> b!4912716 (=> res!2098589 e!3070661)))

(assert (=> b!4912716 (= res!2098589 (not (= (list!17874 lt!2017040) lt!2017047)))))

(declare-fun b!4912717 () Bool)

(declare-fun matchR!6602 (Regex!13337 List!56723) Bool)

(assert (=> b!4912717 (= e!3070657 (matchR!6602 (regex!8262 rule!164) (_1!33811 lt!2017051)))))

(declare-fun res!2098599 () Bool)

(assert (=> start!515724 (=> (not res!2098599) (not e!3070664))))

(get-info :version)

(assert (=> start!515724 (= res!2098599 ((_ is Lexer!7852) thiss!15943))))

(assert (=> start!515724 e!3070664))

(assert (=> start!515724 true))

(assert (=> start!515724 e!3070654))

(declare-fun inv!73216 (BalanceConc!29090) Bool)

(assert (=> start!515724 (and (inv!73216 input!1509) e!3070660)))

(declare-fun b!4912713 () Bool)

(declare-fun res!2098590 () Bool)

(assert (=> b!4912713 (=> res!2098590 e!3070658)))

(assert (=> b!4912713 (= res!2098590 (not (= (list!17874 (_2!33809 lt!2017050)) (_2!33810 lt!2017035))))))

(assert (= (and start!515724 res!2098599) b!4912706))

(assert (= (and b!4912706 res!2098592) b!4912707))

(assert (= (and b!4912707 res!2098594) b!4912714))

(assert (= (and b!4912714 (not res!2098596)) b!4912717))

(assert (= (and b!4912714 (not res!2098597)) b!4912703))

(assert (= (and b!4912703 (not res!2098598)) b!4912710))

(assert (= (and b!4912710 (not res!2098600)) b!4912716))

(assert (= (and b!4912716 (not res!2098589)) b!4912708))

(assert (= (and b!4912708 (not res!2098593)) b!4912711))

(assert (= (and b!4912711 (not res!2098595)) b!4912709))

(assert (= (and b!4912709 (not res!2098591)) b!4912713))

(assert (= (and b!4912713 (not res!2098590)) b!4912705))

(assert (= b!4912704 b!4912712))

(assert (= start!515724 b!4912704))

(assert (= start!515724 b!4912715))

(declare-fun m!5922570 () Bool)

(assert (=> b!4912706 m!5922570))

(declare-fun m!5922572 () Bool)

(assert (=> b!4912714 m!5922572))

(declare-fun m!5922574 () Bool)

(assert (=> b!4912714 m!5922574))

(declare-fun m!5922576 () Bool)

(assert (=> b!4912714 m!5922576))

(declare-fun m!5922578 () Bool)

(assert (=> b!4912714 m!5922578))

(declare-fun m!5922580 () Bool)

(assert (=> b!4912714 m!5922580))

(declare-fun m!5922582 () Bool)

(assert (=> b!4912714 m!5922582))

(assert (=> b!4912714 m!5922574))

(assert (=> b!4912714 m!5922580))

(declare-fun m!5922584 () Bool)

(assert (=> b!4912714 m!5922584))

(declare-fun m!5922586 () Bool)

(assert (=> b!4912714 m!5922586))

(declare-fun m!5922588 () Bool)

(assert (=> b!4912716 m!5922588))

(declare-fun m!5922590 () Bool)

(assert (=> b!4912717 m!5922590))

(declare-fun m!5922592 () Bool)

(assert (=> b!4912703 m!5922592))

(declare-fun m!5922594 () Bool)

(assert (=> start!515724 m!5922594))

(declare-fun m!5922596 () Bool)

(assert (=> b!4912707 m!5922596))

(declare-fun m!5922598 () Bool)

(assert (=> b!4912707 m!5922598))

(declare-fun m!5922600 () Bool)

(assert (=> b!4912711 m!5922600))

(declare-fun m!5922602 () Bool)

(assert (=> b!4912715 m!5922602))

(declare-fun m!5922604 () Bool)

(assert (=> b!4912708 m!5922604))

(declare-fun m!5922606 () Bool)

(assert (=> b!4912708 m!5922606))

(declare-fun m!5922608 () Bool)

(assert (=> b!4912713 m!5922608))

(declare-fun m!5922610 () Bool)

(assert (=> b!4912709 m!5922610))

(declare-fun m!5922612 () Bool)

(assert (=> b!4912704 m!5922612))

(declare-fun m!5922614 () Bool)

(assert (=> b!4912704 m!5922614))

(declare-fun m!5922616 () Bool)

(assert (=> b!4912710 m!5922616))

(declare-fun m!5922618 () Bool)

(assert (=> b!4912710 m!5922618))

(declare-fun m!5922620 () Bool)

(assert (=> b!4912710 m!5922620))

(declare-fun m!5922622 () Bool)

(assert (=> b!4912710 m!5922622))

(declare-fun m!5922624 () Bool)

(assert (=> b!4912710 m!5922624))

(declare-fun m!5922626 () Bool)

(assert (=> b!4912710 m!5922626))

(declare-fun m!5922628 () Bool)

(assert (=> b!4912710 m!5922628))

(declare-fun m!5922630 () Bool)

(assert (=> b!4912710 m!5922630))

(declare-fun m!5922632 () Bool)

(assert (=> b!4912710 m!5922632))

(check-sat (not b!4912707) (not b_next!132809) (not b_next!132811) (not b!4912709) b_and!346871 (not b!4912710) (not b!4912716) (not b!4912706) (not b!4912713) (not b!4912704) (not b!4912703) (not b!4912714) (not start!515724) (not b!4912711) (not b!4912708) (not b!4912717) b_and!346873 (not b!4912715))
(check-sat b_and!346873 b_and!346871 (not b_next!132811) (not b_next!132809))
