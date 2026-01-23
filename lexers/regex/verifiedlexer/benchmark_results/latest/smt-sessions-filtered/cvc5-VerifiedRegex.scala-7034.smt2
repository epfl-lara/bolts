; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!373546 () Bool)

(assert start!373546)

(declare-fun b!3969808 () Bool)

(declare-fun b_free!109905 () Bool)

(declare-fun b_next!110609 () Bool)

(assert (=> b!3969808 (= b_free!109905 (not b_next!110609))))

(declare-fun tp!1210211 () Bool)

(declare-fun b_and!305135 () Bool)

(assert (=> b!3969808 (= tp!1210211 b_and!305135)))

(declare-fun b_free!109907 () Bool)

(declare-fun b_next!110611 () Bool)

(assert (=> b!3969808 (= b_free!109907 (not b_next!110611))))

(declare-fun tp!1210220 () Bool)

(declare-fun b_and!305137 () Bool)

(assert (=> b!3969808 (= tp!1210220 b_and!305137)))

(declare-fun b!3969804 () Bool)

(declare-fun b_free!109909 () Bool)

(declare-fun b_next!110613 () Bool)

(assert (=> b!3969804 (= b_free!109909 (not b_next!110613))))

(declare-fun tp!1210213 () Bool)

(declare-fun b_and!305139 () Bool)

(assert (=> b!3969804 (= tp!1210213 b_and!305139)))

(declare-fun b_free!109911 () Bool)

(declare-fun b_next!110615 () Bool)

(assert (=> b!3969804 (= b_free!109911 (not b_next!110615))))

(declare-fun tp!1210214 () Bool)

(declare-fun b_and!305141 () Bool)

(assert (=> b!3969804 (= tp!1210214 b_and!305141)))

(declare-fun b!3969797 () Bool)

(declare-fun res!1606852 () Bool)

(declare-fun e!2458917 () Bool)

(assert (=> b!3969797 (=> (not res!1606852) (not e!2458917))))

(declare-datatypes ((C!23306 0))(
  ( (C!23307 (val!13747 Int)) )
))
(declare-datatypes ((List!42471 0))(
  ( (Nil!42347) (Cons!42347 (h!47767 C!23306) (t!330826 List!42471)) )
))
(declare-fun prefix!494 () List!42471)

(declare-datatypes ((IArray!25737 0))(
  ( (IArray!25738 (innerList!12926 List!42471)) )
))
(declare-datatypes ((Conc!12866 0))(
  ( (Node!12866 (left!32084 Conc!12866) (right!32414 Conc!12866) (csize!25962 Int) (cheight!13077 Int)) (Leaf!19901 (xs!16172 IArray!25737) (csize!25963 Int)) (Empty!12866) )
))
(declare-datatypes ((BalanceConc!25326 0))(
  ( (BalanceConc!25327 (c!688659 Conc!12866)) )
))
(declare-datatypes ((List!42472 0))(
  ( (Nil!42348) (Cons!42348 (h!47768 (_ BitVec 16)) (t!330827 List!42472)) )
))
(declare-datatypes ((TokenValue!6885 0))(
  ( (FloatLiteralValue!13770 (text!48640 List!42472)) (TokenValueExt!6884 (__x!25987 Int)) (Broken!34425 (value!210277 List!42472)) (Object!7008) (End!6885) (Def!6885) (Underscore!6885) (Match!6885) (Else!6885) (Error!6885) (Case!6885) (If!6885) (Extends!6885) (Abstract!6885) (Class!6885) (Val!6885) (DelimiterValue!13770 (del!6945 List!42472)) (KeywordValue!6891 (value!210278 List!42472)) (CommentValue!13770 (value!210279 List!42472)) (WhitespaceValue!13770 (value!210280 List!42472)) (IndentationValue!6885 (value!210281 List!42472)) (String!48144) (Int32!6885) (Broken!34426 (value!210282 List!42472)) (Boolean!6886) (Unit!60998) (OperatorValue!6888 (op!6945 List!42472)) (IdentifierValue!13770 (value!210283 List!42472)) (IdentifierValue!13771 (value!210284 List!42472)) (WhitespaceValue!13771 (value!210285 List!42472)) (True!13770) (False!13770) (Broken!34427 (value!210286 List!42472)) (Broken!34428 (value!210287 List!42472)) (True!13771) (RightBrace!6885) (RightBracket!6885) (Colon!6885) (Null!6885) (Comma!6885) (LeftBracket!6885) (False!13771) (LeftBrace!6885) (ImaginaryLiteralValue!6885 (text!48641 List!42472)) (StringLiteralValue!20655 (value!210288 List!42472)) (EOFValue!6885 (value!210289 List!42472)) (IdentValue!6885 (value!210290 List!42472)) (DelimiterValue!13771 (value!210291 List!42472)) (DedentValue!6885 (value!210292 List!42472)) (NewLineValue!6885 (value!210293 List!42472)) (IntegerValue!20655 (value!210294 (_ BitVec 32)) (text!48642 List!42472)) (IntegerValue!20656 (value!210295 Int) (text!48643 List!42472)) (Times!6885) (Or!6885) (Equal!6885) (Minus!6885) (Broken!34429 (value!210296 List!42472)) (And!6885) (Div!6885) (LessEqual!6885) (Mod!6885) (Concat!18445) (Not!6885) (Plus!6885) (SpaceValue!6885 (value!210297 List!42472)) (IntegerValue!20657 (value!210298 Int) (text!48644 List!42472)) (StringLiteralValue!20656 (text!48645 List!42472)) (FloatLiteralValue!13771 (text!48646 List!42472)) (BytesLiteralValue!6885 (value!210299 List!42472)) (CommentValue!13771 (value!210300 List!42472)) (StringLiteralValue!20657 (value!210301 List!42472)) (ErrorTokenValue!6885 (msg!6946 List!42472)) )
))
(declare-datatypes ((Regex!11560 0))(
  ( (ElementMatch!11560 (c!688660 C!23306)) (Concat!18446 (regOne!23632 Regex!11560) (regTwo!23632 Regex!11560)) (EmptyExpr!11560) (Star!11560 (reg!11889 Regex!11560)) (EmptyLang!11560) (Union!11560 (regOne!23633 Regex!11560) (regTwo!23633 Regex!11560)) )
))
(declare-datatypes ((String!48145 0))(
  ( (String!48146 (value!210302 String)) )
))
(declare-datatypes ((TokenValueInjection!13198 0))(
  ( (TokenValueInjection!13199 (toValue!9143 Int) (toChars!9002 Int)) )
))
(declare-datatypes ((Rule!13110 0))(
  ( (Rule!13111 (regex!6655 Regex!11560) (tag!7515 String!48145) (isSeparator!6655 Bool) (transformation!6655 TokenValueInjection!13198)) )
))
(declare-datatypes ((Token!12448 0))(
  ( (Token!12449 (value!210303 TokenValue!6885) (rule!9643 Rule!13110) (size!31690 Int) (originalCharacters!7255 List!42471)) )
))
(declare-fun token!484 () Token!12448)

(declare-fun suffixResult!105 () List!42471)

(declare-datatypes ((LexerInterface!6244 0))(
  ( (LexerInterfaceExt!6241 (__x!25988 Int)) (Lexer!6242) )
))
(declare-fun thiss!21717 () LexerInterface!6244)

(declare-datatypes ((List!42473 0))(
  ( (Nil!42349) (Cons!42349 (h!47769 Rule!13110) (t!330828 List!42473)) )
))
(declare-fun rules!2999 () List!42473)

(declare-fun suffix!1299 () List!42471)

(declare-datatypes ((tuple2!41622 0))(
  ( (tuple2!41623 (_1!23945 Token!12448) (_2!23945 List!42471)) )
))
(declare-datatypes ((Option!9069 0))(
  ( (None!9068) (Some!9068 (v!39416 tuple2!41622)) )
))
(declare-fun maxPrefix!3542 (LexerInterface!6244 List!42473 List!42471) Option!9069)

(declare-fun ++!11057 (List!42471 List!42471) List!42471)

(assert (=> b!3969797 (= res!1606852 (= (maxPrefix!3542 thiss!21717 rules!2999 (++!11057 prefix!494 suffix!1299)) (Some!9068 (tuple2!41623 token!484 suffixResult!105))))))

(declare-fun e!2458923 () Bool)

(declare-fun b!3969798 () Bool)

(declare-fun e!2458913 () Bool)

(declare-fun tp!1210223 () Bool)

(declare-fun inv!56590 (String!48145) Bool)

(declare-fun inv!56593 (TokenValueInjection!13198) Bool)

(assert (=> b!3969798 (= e!2458923 (and tp!1210223 (inv!56590 (tag!7515 (rule!9643 token!484))) (inv!56593 (transformation!6655 (rule!9643 token!484))) e!2458913))))

(declare-fun tp!1210218 () Bool)

(declare-fun e!2458916 () Bool)

(declare-fun b!3969799 () Bool)

(declare-fun inv!21 (TokenValue!6885) Bool)

(assert (=> b!3969799 (= e!2458916 (and (inv!21 (value!210303 token!484)) e!2458923 tp!1210218))))

(declare-fun b!3969800 () Bool)

(declare-fun e!2458920 () Bool)

(declare-fun tp_is_empty!20091 () Bool)

(declare-fun tp!1210215 () Bool)

(assert (=> b!3969800 (= e!2458920 (and tp_is_empty!20091 tp!1210215))))

(declare-fun b!3969801 () Bool)

(declare-fun e!2458924 () Bool)

(declare-fun tp!1210219 () Bool)

(assert (=> b!3969801 (= e!2458924 (and tp_is_empty!20091 tp!1210219))))

(declare-fun b!3969802 () Bool)

(declare-fun res!1606848 () Bool)

(declare-fun e!2458915 () Bool)

(assert (=> b!3969802 (=> (not res!1606848) (not e!2458915))))

(declare-fun newSuffix!27 () List!42471)

(declare-fun isPrefix!3742 (List!42471 List!42471) Bool)

(assert (=> b!3969802 (= res!1606848 (isPrefix!3742 newSuffix!27 suffix!1299))))

(declare-fun b!3969803 () Bool)

(declare-fun e!2458921 () Bool)

(declare-fun e!2458925 () Bool)

(declare-fun tp!1210212 () Bool)

(assert (=> b!3969803 (= e!2458925 (and tp!1210212 (inv!56590 (tag!7515 (h!47769 rules!2999))) (inv!56593 (transformation!6655 (h!47769 rules!2999))) e!2458921))))

(assert (=> b!3969804 (= e!2458913 (and tp!1210213 tp!1210214))))

(declare-fun b!3969805 () Bool)

(declare-fun res!1606847 () Bool)

(assert (=> b!3969805 (=> (not res!1606847) (not e!2458915))))

(declare-fun size!31691 (List!42471) Int)

(assert (=> b!3969805 (= res!1606847 (>= (size!31691 suffix!1299) (size!31691 newSuffix!27)))))

(declare-fun b!3969806 () Bool)

(declare-fun res!1606845 () Bool)

(assert (=> b!3969806 (=> (not res!1606845) (not e!2458915))))

(declare-fun rulesInvariant!5587 (LexerInterface!6244 List!42473) Bool)

(assert (=> b!3969806 (= res!1606845 (rulesInvariant!5587 thiss!21717 rules!2999))))

(assert (=> b!3969808 (= e!2458921 (and tp!1210211 tp!1210220))))

(declare-fun b!3969809 () Bool)

(declare-fun rulesValidInductive!2415 (LexerInterface!6244 List!42473) Bool)

(assert (=> b!3969809 (= e!2458917 (not (rulesValidInductive!2415 thiss!21717 rules!2999)))))

(declare-datatypes ((Unit!60999 0))(
  ( (Unit!61000) )
))
(declare-fun lt!1390316 () Unit!60999)

(declare-fun lemmaInv!870 (TokenValueInjection!13198) Unit!60999)

(assert (=> b!3969809 (= lt!1390316 (lemmaInv!870 (transformation!6655 (rule!9643 token!484))))))

(declare-fun ruleValid!2587 (LexerInterface!6244 Rule!13110) Bool)

(assert (=> b!3969809 (ruleValid!2587 thiss!21717 (rule!9643 token!484))))

(declare-fun lt!1390314 () Unit!60999)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1661 (LexerInterface!6244 Rule!13110 List!42473) Unit!60999)

(assert (=> b!3969809 (= lt!1390314 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1661 thiss!21717 (rule!9643 token!484) rules!2999))))

(declare-fun b!3969810 () Bool)

(assert (=> b!3969810 (= e!2458915 e!2458917)))

(declare-fun res!1606846 () Bool)

(assert (=> b!3969810 (=> (not res!1606846) (not e!2458917))))

(declare-fun lt!1390315 () List!42471)

(assert (=> b!3969810 (= res!1606846 (>= (size!31691 prefix!494) (size!31691 lt!1390315)))))

(declare-fun list!15713 (BalanceConc!25326) List!42471)

(declare-fun charsOf!4471 (Token!12448) BalanceConc!25326)

(assert (=> b!3969810 (= lt!1390315 (list!15713 (charsOf!4471 token!484)))))

(declare-fun b!3969811 () Bool)

(declare-fun res!1606849 () Bool)

(assert (=> b!3969811 (=> (not res!1606849) (not e!2458915))))

(declare-fun isEmpty!25339 (List!42473) Bool)

(assert (=> b!3969811 (= res!1606849 (not (isEmpty!25339 rules!2999)))))

(declare-fun b!3969812 () Bool)

(declare-fun e!2458919 () Bool)

(declare-fun tp!1210217 () Bool)

(assert (=> b!3969812 (= e!2458919 (and tp_is_empty!20091 tp!1210217))))

(declare-fun b!3969813 () Bool)

(declare-fun e!2458914 () Bool)

(declare-fun tp!1210221 () Bool)

(assert (=> b!3969813 (= e!2458914 (and tp_is_empty!20091 tp!1210221))))

(declare-fun b!3969814 () Bool)

(declare-fun e!2458926 () Bool)

(declare-fun tp!1210216 () Bool)

(assert (=> b!3969814 (= e!2458926 (and e!2458925 tp!1210216))))

(declare-fun b!3969815 () Bool)

(declare-fun res!1606851 () Bool)

(assert (=> b!3969815 (=> (not res!1606851) (not e!2458917))))

(declare-fun newSuffixResult!27 () List!42471)

(assert (=> b!3969815 (= res!1606851 (= (++!11057 lt!1390315 newSuffixResult!27) (++!11057 prefix!494 newSuffix!27)))))

(declare-fun b!3969807 () Bool)

(declare-fun e!2458918 () Bool)

(declare-fun tp!1210222 () Bool)

(assert (=> b!3969807 (= e!2458918 (and tp_is_empty!20091 tp!1210222))))

(declare-fun res!1606850 () Bool)

(assert (=> start!373546 (=> (not res!1606850) (not e!2458915))))

(assert (=> start!373546 (= res!1606850 (is-Lexer!6242 thiss!21717))))

(assert (=> start!373546 e!2458915))

(assert (=> start!373546 e!2458919))

(declare-fun inv!56594 (Token!12448) Bool)

(assert (=> start!373546 (and (inv!56594 token!484) e!2458916)))

(assert (=> start!373546 e!2458914))

(assert (=> start!373546 e!2458920))

(assert (=> start!373546 e!2458924))

(assert (=> start!373546 true))

(assert (=> start!373546 e!2458926))

(assert (=> start!373546 e!2458918))

(assert (= (and start!373546 res!1606850) b!3969811))

(assert (= (and b!3969811 res!1606849) b!3969806))

(assert (= (and b!3969806 res!1606845) b!3969805))

(assert (= (and b!3969805 res!1606847) b!3969802))

(assert (= (and b!3969802 res!1606848) b!3969810))

(assert (= (and b!3969810 res!1606846) b!3969815))

(assert (= (and b!3969815 res!1606851) b!3969797))

(assert (= (and b!3969797 res!1606852) b!3969809))

(assert (= (and start!373546 (is-Cons!42347 prefix!494)) b!3969812))

(assert (= b!3969798 b!3969804))

(assert (= b!3969799 b!3969798))

(assert (= start!373546 b!3969799))

(assert (= (and start!373546 (is-Cons!42347 suffixResult!105)) b!3969813))

(assert (= (and start!373546 (is-Cons!42347 suffix!1299)) b!3969800))

(assert (= (and start!373546 (is-Cons!42347 newSuffix!27)) b!3969801))

(assert (= b!3969803 b!3969808))

(assert (= b!3969814 b!3969803))

(assert (= (and start!373546 (is-Cons!42349 rules!2999)) b!3969814))

(assert (= (and start!373546 (is-Cons!42347 newSuffixResult!27)) b!3969807))

(declare-fun m!4540045 () Bool)

(assert (=> b!3969798 m!4540045))

(declare-fun m!4540047 () Bool)

(assert (=> b!3969798 m!4540047))

(declare-fun m!4540049 () Bool)

(assert (=> b!3969810 m!4540049))

(declare-fun m!4540051 () Bool)

(assert (=> b!3969810 m!4540051))

(declare-fun m!4540053 () Bool)

(assert (=> b!3969810 m!4540053))

(assert (=> b!3969810 m!4540053))

(declare-fun m!4540055 () Bool)

(assert (=> b!3969810 m!4540055))

(declare-fun m!4540057 () Bool)

(assert (=> b!3969805 m!4540057))

(declare-fun m!4540059 () Bool)

(assert (=> b!3969805 m!4540059))

(declare-fun m!4540061 () Bool)

(assert (=> b!3969806 m!4540061))

(declare-fun m!4540063 () Bool)

(assert (=> b!3969797 m!4540063))

(assert (=> b!3969797 m!4540063))

(declare-fun m!4540065 () Bool)

(assert (=> b!3969797 m!4540065))

(declare-fun m!4540067 () Bool)

(assert (=> start!373546 m!4540067))

(declare-fun m!4540069 () Bool)

(assert (=> b!3969799 m!4540069))

(declare-fun m!4540071 () Bool)

(assert (=> b!3969809 m!4540071))

(declare-fun m!4540073 () Bool)

(assert (=> b!3969809 m!4540073))

(declare-fun m!4540075 () Bool)

(assert (=> b!3969809 m!4540075))

(declare-fun m!4540077 () Bool)

(assert (=> b!3969809 m!4540077))

(declare-fun m!4540079 () Bool)

(assert (=> b!3969811 m!4540079))

(declare-fun m!4540081 () Bool)

(assert (=> b!3969815 m!4540081))

(declare-fun m!4540083 () Bool)

(assert (=> b!3969815 m!4540083))

(declare-fun m!4540085 () Bool)

(assert (=> b!3969802 m!4540085))

(declare-fun m!4540087 () Bool)

(assert (=> b!3969803 m!4540087))

(declare-fun m!4540089 () Bool)

(assert (=> b!3969803 m!4540089))

(push 1)

(assert tp_is_empty!20091)

(assert (not b!3969800))

(assert (not b!3969814))

(assert (not b_next!110615))

(assert (not b!3969798))

(assert (not b!3969801))

(assert (not b!3969799))

(assert (not b!3969810))

(assert b_and!305141)

(assert (not b_next!110613))

(assert (not b_next!110609))

(assert b_and!305137)

(assert (not b!3969797))

(assert (not b!3969809))

(assert (not b!3969815))

(assert (not b!3969813))

(assert (not b_next!110611))

(assert (not b!3969806))

(assert (not b!3969802))

(assert (not b!3969803))

(assert (not b!3969805))

(assert (not b!3969812))

(assert (not b!3969811))

(assert b_and!305135)

(assert b_and!305139)

(assert (not start!373546))

(assert (not b!3969807))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!110611))

(assert (not b_next!110615))

(assert b_and!305141)

(assert (not b_next!110613))

(assert (not b_next!110609))

(assert b_and!305137)

(assert b_and!305135)

(assert b_and!305139)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3969891 () Bool)

(declare-fun e!2458991 () Bool)

(assert (=> b!3969891 (= e!2458991 (>= (size!31691 suffix!1299) (size!31691 newSuffix!27)))))

(declare-fun b!3969890 () Bool)

(declare-fun e!2458992 () Bool)

(declare-fun tail!6190 (List!42471) List!42471)

(assert (=> b!3969890 (= e!2458992 (isPrefix!3742 (tail!6190 newSuffix!27) (tail!6190 suffix!1299)))))

(declare-fun b!3969889 () Bool)

(declare-fun res!1606899 () Bool)

(assert (=> b!3969889 (=> (not res!1606899) (not e!2458992))))

(declare-fun head!8458 (List!42471) C!23306)

(assert (=> b!3969889 (= res!1606899 (= (head!8458 newSuffix!27) (head!8458 suffix!1299)))))

(declare-fun b!3969888 () Bool)

(declare-fun e!2458990 () Bool)

(assert (=> b!3969888 (= e!2458990 e!2458992)))

(declare-fun res!1606898 () Bool)

(assert (=> b!3969888 (=> (not res!1606898) (not e!2458992))))

(assert (=> b!3969888 (= res!1606898 (not (is-Nil!42347 suffix!1299)))))

(declare-fun d!1176127 () Bool)

(assert (=> d!1176127 e!2458991))

(declare-fun res!1606897 () Bool)

(assert (=> d!1176127 (=> res!1606897 e!2458991)))

(declare-fun lt!1390330 () Bool)

(assert (=> d!1176127 (= res!1606897 (not lt!1390330))))

(assert (=> d!1176127 (= lt!1390330 e!2458990)))

(declare-fun res!1606896 () Bool)

(assert (=> d!1176127 (=> res!1606896 e!2458990)))

(assert (=> d!1176127 (= res!1606896 (is-Nil!42347 newSuffix!27))))

(assert (=> d!1176127 (= (isPrefix!3742 newSuffix!27 suffix!1299) lt!1390330)))

(assert (= (and d!1176127 (not res!1606896)) b!3969888))

(assert (= (and b!3969888 res!1606898) b!3969889))

(assert (= (and b!3969889 res!1606899) b!3969890))

(assert (= (and d!1176127 (not res!1606897)) b!3969891))

(assert (=> b!3969891 m!4540057))

(assert (=> b!3969891 m!4540059))

(declare-fun m!4540141 () Bool)

(assert (=> b!3969890 m!4540141))

(declare-fun m!4540143 () Bool)

(assert (=> b!3969890 m!4540143))

(assert (=> b!3969890 m!4540141))

(assert (=> b!3969890 m!4540143))

(declare-fun m!4540145 () Bool)

(assert (=> b!3969890 m!4540145))

(declare-fun m!4540147 () Bool)

(assert (=> b!3969889 m!4540147))

(declare-fun m!4540149 () Bool)

(assert (=> b!3969889 m!4540149))

(assert (=> b!3969802 d!1176127))

(declare-fun d!1176129 () Bool)

(assert (=> d!1176129 (= (inv!56590 (tag!7515 (h!47769 rules!2999))) (= (mod (str.len (value!210302 (tag!7515 (h!47769 rules!2999)))) 2) 0))))

(assert (=> b!3969803 d!1176129))

(declare-fun d!1176131 () Bool)

(declare-fun res!1606902 () Bool)

(declare-fun e!2458995 () Bool)

(assert (=> d!1176131 (=> (not res!1606902) (not e!2458995))))

(declare-fun semiInverseModEq!2864 (Int Int) Bool)

(assert (=> d!1176131 (= res!1606902 (semiInverseModEq!2864 (toChars!9002 (transformation!6655 (h!47769 rules!2999))) (toValue!9143 (transformation!6655 (h!47769 rules!2999)))))))

(assert (=> d!1176131 (= (inv!56593 (transformation!6655 (h!47769 rules!2999))) e!2458995)))

(declare-fun b!3969894 () Bool)

(declare-fun equivClasses!2763 (Int Int) Bool)

(assert (=> b!3969894 (= e!2458995 (equivClasses!2763 (toChars!9002 (transformation!6655 (h!47769 rules!2999))) (toValue!9143 (transformation!6655 (h!47769 rules!2999)))))))

(assert (= (and d!1176131 res!1606902) b!3969894))

(declare-fun m!4540151 () Bool)

(assert (=> d!1176131 m!4540151))

(declare-fun m!4540153 () Bool)

(assert (=> b!3969894 m!4540153))

(assert (=> b!3969803 d!1176131))

(declare-fun b!3969906 () Bool)

(declare-fun e!2459002 () Bool)

(declare-fun inv!16 (TokenValue!6885) Bool)

(assert (=> b!3969906 (= e!2459002 (inv!16 (value!210303 token!484)))))

(declare-fun b!3969907 () Bool)

(declare-fun e!2459004 () Bool)

(assert (=> b!3969907 (= e!2459002 e!2459004)))

(declare-fun c!688668 () Bool)

(assert (=> b!3969907 (= c!688668 (is-IntegerValue!20656 (value!210303 token!484)))))

(declare-fun d!1176133 () Bool)

(declare-fun c!688669 () Bool)

(assert (=> d!1176133 (= c!688669 (is-IntegerValue!20655 (value!210303 token!484)))))

(assert (=> d!1176133 (= (inv!21 (value!210303 token!484)) e!2459002)))

(declare-fun b!3969905 () Bool)

(declare-fun e!2459003 () Bool)

(declare-fun inv!15 (TokenValue!6885) Bool)

(assert (=> b!3969905 (= e!2459003 (inv!15 (value!210303 token!484)))))

(declare-fun b!3969908 () Bool)

(declare-fun inv!17 (TokenValue!6885) Bool)

(assert (=> b!3969908 (= e!2459004 (inv!17 (value!210303 token!484)))))

(declare-fun b!3969909 () Bool)

(declare-fun res!1606905 () Bool)

(assert (=> b!3969909 (=> res!1606905 e!2459003)))

(assert (=> b!3969909 (= res!1606905 (not (is-IntegerValue!20657 (value!210303 token!484))))))

(assert (=> b!3969909 (= e!2459004 e!2459003)))

(assert (= (and d!1176133 c!688669) b!3969906))

(assert (= (and d!1176133 (not c!688669)) b!3969907))

(assert (= (and b!3969907 c!688668) b!3969908))

(assert (= (and b!3969907 (not c!688668)) b!3969909))

(assert (= (and b!3969909 (not res!1606905)) b!3969905))

(declare-fun m!4540155 () Bool)

(assert (=> b!3969906 m!4540155))

(declare-fun m!4540157 () Bool)

(assert (=> b!3969905 m!4540157))

(declare-fun m!4540159 () Bool)

(assert (=> b!3969908 m!4540159))

(assert (=> b!3969799 d!1176133))

(declare-fun d!1176135 () Bool)

(declare-fun lt!1390333 () Int)

(assert (=> d!1176135 (>= lt!1390333 0)))

(declare-fun e!2459007 () Int)

(assert (=> d!1176135 (= lt!1390333 e!2459007)))

(declare-fun c!688672 () Bool)

(assert (=> d!1176135 (= c!688672 (is-Nil!42347 prefix!494))))

(assert (=> d!1176135 (= (size!31691 prefix!494) lt!1390333)))

(declare-fun b!3969914 () Bool)

(assert (=> b!3969914 (= e!2459007 0)))

(declare-fun b!3969915 () Bool)

(assert (=> b!3969915 (= e!2459007 (+ 1 (size!31691 (t!330826 prefix!494))))))

(assert (= (and d!1176135 c!688672) b!3969914))

(assert (= (and d!1176135 (not c!688672)) b!3969915))

(declare-fun m!4540161 () Bool)

(assert (=> b!3969915 m!4540161))

(assert (=> b!3969810 d!1176135))

(declare-fun d!1176137 () Bool)

(declare-fun lt!1390334 () Int)

(assert (=> d!1176137 (>= lt!1390334 0)))

(declare-fun e!2459008 () Int)

(assert (=> d!1176137 (= lt!1390334 e!2459008)))

(declare-fun c!688673 () Bool)

(assert (=> d!1176137 (= c!688673 (is-Nil!42347 lt!1390315))))

(assert (=> d!1176137 (= (size!31691 lt!1390315) lt!1390334)))

(declare-fun b!3969916 () Bool)

(assert (=> b!3969916 (= e!2459008 0)))

(declare-fun b!3969917 () Bool)

(assert (=> b!3969917 (= e!2459008 (+ 1 (size!31691 (t!330826 lt!1390315))))))

(assert (= (and d!1176137 c!688673) b!3969916))

(assert (= (and d!1176137 (not c!688673)) b!3969917))

(declare-fun m!4540163 () Bool)

(assert (=> b!3969917 m!4540163))

(assert (=> b!3969810 d!1176137))

(declare-fun d!1176139 () Bool)

(declare-fun list!15715 (Conc!12866) List!42471)

(assert (=> d!1176139 (= (list!15713 (charsOf!4471 token!484)) (list!15715 (c!688659 (charsOf!4471 token!484))))))

(declare-fun bs!587587 () Bool)

(assert (= bs!587587 d!1176139))

(declare-fun m!4540165 () Bool)

(assert (=> bs!587587 m!4540165))

(assert (=> b!3969810 d!1176139))

(declare-fun d!1176141 () Bool)

(declare-fun lt!1390337 () BalanceConc!25326)

(assert (=> d!1176141 (= (list!15713 lt!1390337) (originalCharacters!7255 token!484))))

(declare-fun dynLambda!18068 (Int TokenValue!6885) BalanceConc!25326)

(assert (=> d!1176141 (= lt!1390337 (dynLambda!18068 (toChars!9002 (transformation!6655 (rule!9643 token!484))) (value!210303 token!484)))))

(assert (=> d!1176141 (= (charsOf!4471 token!484) lt!1390337)))

(declare-fun b_lambda!116047 () Bool)

(assert (=> (not b_lambda!116047) (not d!1176141)))

(declare-fun t!330833 () Bool)

(declare-fun tb!239617 () Bool)

(assert (=> (and b!3969808 (= (toChars!9002 (transformation!6655 (h!47769 rules!2999))) (toChars!9002 (transformation!6655 (rule!9643 token!484)))) t!330833) tb!239617))

(declare-fun b!3969922 () Bool)

(declare-fun e!2459011 () Bool)

(declare-fun tp!1210265 () Bool)

(declare-fun inv!56597 (Conc!12866) Bool)

(assert (=> b!3969922 (= e!2459011 (and (inv!56597 (c!688659 (dynLambda!18068 (toChars!9002 (transformation!6655 (rule!9643 token!484))) (value!210303 token!484)))) tp!1210265))))

(declare-fun result!290142 () Bool)

(declare-fun inv!56598 (BalanceConc!25326) Bool)

(assert (=> tb!239617 (= result!290142 (and (inv!56598 (dynLambda!18068 (toChars!9002 (transformation!6655 (rule!9643 token!484))) (value!210303 token!484))) e!2459011))))

(assert (= tb!239617 b!3969922))

(declare-fun m!4540167 () Bool)

(assert (=> b!3969922 m!4540167))

(declare-fun m!4540169 () Bool)

(assert (=> tb!239617 m!4540169))

(assert (=> d!1176141 t!330833))

(declare-fun b_and!305151 () Bool)

(assert (= b_and!305137 (and (=> t!330833 result!290142) b_and!305151)))

(declare-fun t!330835 () Bool)

(declare-fun tb!239619 () Bool)

(assert (=> (and b!3969804 (= (toChars!9002 (transformation!6655 (rule!9643 token!484))) (toChars!9002 (transformation!6655 (rule!9643 token!484)))) t!330835) tb!239619))

(declare-fun result!290146 () Bool)

(assert (= result!290146 result!290142))

(assert (=> d!1176141 t!330835))

(declare-fun b_and!305153 () Bool)

(assert (= b_and!305141 (and (=> t!330835 result!290146) b_and!305153)))

(declare-fun m!4540171 () Bool)

(assert (=> d!1176141 m!4540171))

(declare-fun m!4540173 () Bool)

(assert (=> d!1176141 m!4540173))

(assert (=> b!3969810 d!1176141))

(declare-fun d!1176143 () Bool)

(assert (=> d!1176143 (= (isEmpty!25339 rules!2999) (is-Nil!42349 rules!2999))))

(assert (=> b!3969811 d!1176143))

(declare-fun b!3969941 () Bool)

(declare-fun res!1606926 () Bool)

(declare-fun e!2459020 () Bool)

(assert (=> b!3969941 (=> (not res!1606926) (not e!2459020))))

(declare-fun lt!1390352 () Option!9069)

(declare-fun get!13961 (Option!9069) tuple2!41622)

(assert (=> b!3969941 (= res!1606926 (= (++!11057 (list!15713 (charsOf!4471 (_1!23945 (get!13961 lt!1390352)))) (_2!23945 (get!13961 lt!1390352))) (++!11057 prefix!494 suffix!1299)))))

(declare-fun b!3969942 () Bool)

(declare-fun e!2459018 () Option!9069)

(declare-fun call!285597 () Option!9069)

(assert (=> b!3969942 (= e!2459018 call!285597)))

(declare-fun b!3969943 () Bool)

(declare-fun lt!1390351 () Option!9069)

(declare-fun lt!1390349 () Option!9069)

(assert (=> b!3969943 (= e!2459018 (ite (and (is-None!9068 lt!1390351) (is-None!9068 lt!1390349)) None!9068 (ite (is-None!9068 lt!1390349) lt!1390351 (ite (is-None!9068 lt!1390351) lt!1390349 (ite (>= (size!31690 (_1!23945 (v!39416 lt!1390351))) (size!31690 (_1!23945 (v!39416 lt!1390349)))) lt!1390351 lt!1390349)))))))

(assert (=> b!3969943 (= lt!1390351 call!285597)))

(assert (=> b!3969943 (= lt!1390349 (maxPrefix!3542 thiss!21717 (t!330828 rules!2999) (++!11057 prefix!494 suffix!1299)))))

(declare-fun b!3969944 () Bool)

(declare-fun res!1606921 () Bool)

(assert (=> b!3969944 (=> (not res!1606921) (not e!2459020))))

(assert (=> b!3969944 (= res!1606921 (< (size!31691 (_2!23945 (get!13961 lt!1390352))) (size!31691 (++!11057 prefix!494 suffix!1299))))))

(declare-fun b!3969945 () Bool)

(declare-fun res!1606922 () Bool)

(assert (=> b!3969945 (=> (not res!1606922) (not e!2459020))))

(declare-fun matchR!5549 (Regex!11560 List!42471) Bool)

(assert (=> b!3969945 (= res!1606922 (matchR!5549 (regex!6655 (rule!9643 (_1!23945 (get!13961 lt!1390352)))) (list!15713 (charsOf!4471 (_1!23945 (get!13961 lt!1390352))))))))

(declare-fun b!3969946 () Bool)

(declare-fun res!1606924 () Bool)

(assert (=> b!3969946 (=> (not res!1606924) (not e!2459020))))

(declare-fun apply!9874 (TokenValueInjection!13198 BalanceConc!25326) TokenValue!6885)

(declare-fun seqFromList!4902 (List!42471) BalanceConc!25326)

(assert (=> b!3969946 (= res!1606924 (= (value!210303 (_1!23945 (get!13961 lt!1390352))) (apply!9874 (transformation!6655 (rule!9643 (_1!23945 (get!13961 lt!1390352)))) (seqFromList!4902 (originalCharacters!7255 (_1!23945 (get!13961 lt!1390352)))))))))

(declare-fun bm!285592 () Bool)

(declare-fun maxPrefixOneRule!2586 (LexerInterface!6244 Rule!13110 List!42471) Option!9069)

(assert (=> bm!285592 (= call!285597 (maxPrefixOneRule!2586 thiss!21717 (h!47769 rules!2999) (++!11057 prefix!494 suffix!1299)))))

(declare-fun b!3969948 () Bool)

(declare-fun e!2459019 () Bool)

(assert (=> b!3969948 (= e!2459019 e!2459020)))

(declare-fun res!1606925 () Bool)

(assert (=> b!3969948 (=> (not res!1606925) (not e!2459020))))

(declare-fun isDefined!7010 (Option!9069) Bool)

(assert (=> b!3969948 (= res!1606925 (isDefined!7010 lt!1390352))))

(declare-fun b!3969949 () Bool)

(declare-fun contains!8445 (List!42473 Rule!13110) Bool)

(assert (=> b!3969949 (= e!2459020 (contains!8445 rules!2999 (rule!9643 (_1!23945 (get!13961 lt!1390352)))))))

(declare-fun b!3969947 () Bool)

(declare-fun res!1606920 () Bool)

(assert (=> b!3969947 (=> (not res!1606920) (not e!2459020))))

(assert (=> b!3969947 (= res!1606920 (= (list!15713 (charsOf!4471 (_1!23945 (get!13961 lt!1390352)))) (originalCharacters!7255 (_1!23945 (get!13961 lt!1390352)))))))

(declare-fun d!1176145 () Bool)

(assert (=> d!1176145 e!2459019))

(declare-fun res!1606923 () Bool)

(assert (=> d!1176145 (=> res!1606923 e!2459019)))

(declare-fun isEmpty!25341 (Option!9069) Bool)

(assert (=> d!1176145 (= res!1606923 (isEmpty!25341 lt!1390352))))

(assert (=> d!1176145 (= lt!1390352 e!2459018)))

(declare-fun c!688676 () Bool)

(assert (=> d!1176145 (= c!688676 (and (is-Cons!42349 rules!2999) (is-Nil!42349 (t!330828 rules!2999))))))

(declare-fun lt!1390348 () Unit!60999)

(declare-fun lt!1390350 () Unit!60999)

(assert (=> d!1176145 (= lt!1390348 lt!1390350)))

(assert (=> d!1176145 (isPrefix!3742 (++!11057 prefix!494 suffix!1299) (++!11057 prefix!494 suffix!1299))))

(declare-fun lemmaIsPrefixRefl!2351 (List!42471 List!42471) Unit!60999)

(assert (=> d!1176145 (= lt!1390350 (lemmaIsPrefixRefl!2351 (++!11057 prefix!494 suffix!1299) (++!11057 prefix!494 suffix!1299)))))

(assert (=> d!1176145 (rulesValidInductive!2415 thiss!21717 rules!2999)))

(assert (=> d!1176145 (= (maxPrefix!3542 thiss!21717 rules!2999 (++!11057 prefix!494 suffix!1299)) lt!1390352)))

(assert (= (and d!1176145 c!688676) b!3969942))

(assert (= (and d!1176145 (not c!688676)) b!3969943))

(assert (= (or b!3969942 b!3969943) bm!285592))

(assert (= (and d!1176145 (not res!1606923)) b!3969948))

(assert (= (and b!3969948 res!1606925) b!3969947))

(assert (= (and b!3969947 res!1606920) b!3969944))

(assert (= (and b!3969944 res!1606921) b!3969941))

(assert (= (and b!3969941 res!1606926) b!3969946))

(assert (= (and b!3969946 res!1606924) b!3969945))

(assert (= (and b!3969945 res!1606922) b!3969949))

(declare-fun m!4540175 () Bool)

(assert (=> d!1176145 m!4540175))

(assert (=> d!1176145 m!4540063))

(assert (=> d!1176145 m!4540063))

(declare-fun m!4540177 () Bool)

(assert (=> d!1176145 m!4540177))

(assert (=> d!1176145 m!4540063))

(assert (=> d!1176145 m!4540063))

(declare-fun m!4540179 () Bool)

(assert (=> d!1176145 m!4540179))

(assert (=> d!1176145 m!4540071))

(assert (=> bm!285592 m!4540063))

(declare-fun m!4540181 () Bool)

(assert (=> bm!285592 m!4540181))

(declare-fun m!4540183 () Bool)

(assert (=> b!3969949 m!4540183))

(declare-fun m!4540185 () Bool)

(assert (=> b!3969949 m!4540185))

(assert (=> b!3969943 m!4540063))

(declare-fun m!4540187 () Bool)

(assert (=> b!3969943 m!4540187))

(assert (=> b!3969947 m!4540183))

(declare-fun m!4540189 () Bool)

(assert (=> b!3969947 m!4540189))

(assert (=> b!3969947 m!4540189))

(declare-fun m!4540191 () Bool)

(assert (=> b!3969947 m!4540191))

(assert (=> b!3969945 m!4540183))

(assert (=> b!3969945 m!4540189))

(assert (=> b!3969945 m!4540189))

(assert (=> b!3969945 m!4540191))

(assert (=> b!3969945 m!4540191))

(declare-fun m!4540193 () Bool)

(assert (=> b!3969945 m!4540193))

(declare-fun m!4540195 () Bool)

(assert (=> b!3969948 m!4540195))

(assert (=> b!3969946 m!4540183))

(declare-fun m!4540197 () Bool)

(assert (=> b!3969946 m!4540197))

(assert (=> b!3969946 m!4540197))

(declare-fun m!4540199 () Bool)

(assert (=> b!3969946 m!4540199))

(assert (=> b!3969941 m!4540183))

(assert (=> b!3969941 m!4540189))

(assert (=> b!3969941 m!4540189))

(assert (=> b!3969941 m!4540191))

(assert (=> b!3969941 m!4540191))

(declare-fun m!4540201 () Bool)

(assert (=> b!3969941 m!4540201))

(assert (=> b!3969944 m!4540183))

(declare-fun m!4540203 () Bool)

(assert (=> b!3969944 m!4540203))

(assert (=> b!3969944 m!4540063))

(declare-fun m!4540205 () Bool)

(assert (=> b!3969944 m!4540205))

(assert (=> b!3969797 d!1176145))

(declare-fun b!3969958 () Bool)

(declare-fun e!2459026 () List!42471)

(assert (=> b!3969958 (= e!2459026 suffix!1299)))

(declare-fun b!3969960 () Bool)

(declare-fun res!1606932 () Bool)

(declare-fun e!2459025 () Bool)

(assert (=> b!3969960 (=> (not res!1606932) (not e!2459025))))

(declare-fun lt!1390355 () List!42471)

(assert (=> b!3969960 (= res!1606932 (= (size!31691 lt!1390355) (+ (size!31691 prefix!494) (size!31691 suffix!1299))))))

(declare-fun d!1176147 () Bool)

(assert (=> d!1176147 e!2459025))

(declare-fun res!1606931 () Bool)

(assert (=> d!1176147 (=> (not res!1606931) (not e!2459025))))

(declare-fun content!6432 (List!42471) (Set C!23306))

(assert (=> d!1176147 (= res!1606931 (= (content!6432 lt!1390355) (set.union (content!6432 prefix!494) (content!6432 suffix!1299))))))

(assert (=> d!1176147 (= lt!1390355 e!2459026)))

(declare-fun c!688679 () Bool)

(assert (=> d!1176147 (= c!688679 (is-Nil!42347 prefix!494))))

(assert (=> d!1176147 (= (++!11057 prefix!494 suffix!1299) lt!1390355)))

(declare-fun b!3969961 () Bool)

(assert (=> b!3969961 (= e!2459025 (or (not (= suffix!1299 Nil!42347)) (= lt!1390355 prefix!494)))))

(declare-fun b!3969959 () Bool)

(assert (=> b!3969959 (= e!2459026 (Cons!42347 (h!47767 prefix!494) (++!11057 (t!330826 prefix!494) suffix!1299)))))

(assert (= (and d!1176147 c!688679) b!3969958))

(assert (= (and d!1176147 (not c!688679)) b!3969959))

(assert (= (and d!1176147 res!1606931) b!3969960))

(assert (= (and b!3969960 res!1606932) b!3969961))

(declare-fun m!4540207 () Bool)

(assert (=> b!3969960 m!4540207))

(assert (=> b!3969960 m!4540049))

(assert (=> b!3969960 m!4540057))

(declare-fun m!4540209 () Bool)

(assert (=> d!1176147 m!4540209))

(declare-fun m!4540211 () Bool)

(assert (=> d!1176147 m!4540211))

(declare-fun m!4540213 () Bool)

(assert (=> d!1176147 m!4540213))

(declare-fun m!4540215 () Bool)

(assert (=> b!3969959 m!4540215))

(assert (=> b!3969797 d!1176147))

(declare-fun d!1176149 () Bool)

(assert (=> d!1176149 (= (inv!56590 (tag!7515 (rule!9643 token!484))) (= (mod (str.len (value!210302 (tag!7515 (rule!9643 token!484)))) 2) 0))))

(assert (=> b!3969798 d!1176149))

(declare-fun d!1176151 () Bool)

(declare-fun res!1606933 () Bool)

(declare-fun e!2459027 () Bool)

(assert (=> d!1176151 (=> (not res!1606933) (not e!2459027))))

(assert (=> d!1176151 (= res!1606933 (semiInverseModEq!2864 (toChars!9002 (transformation!6655 (rule!9643 token!484))) (toValue!9143 (transformation!6655 (rule!9643 token!484)))))))

(assert (=> d!1176151 (= (inv!56593 (transformation!6655 (rule!9643 token!484))) e!2459027)))

(declare-fun b!3969962 () Bool)

(assert (=> b!3969962 (= e!2459027 (equivClasses!2763 (toChars!9002 (transformation!6655 (rule!9643 token!484))) (toValue!9143 (transformation!6655 (rule!9643 token!484)))))))

(assert (= (and d!1176151 res!1606933) b!3969962))

(declare-fun m!4540217 () Bool)

(assert (=> d!1176151 m!4540217))

(declare-fun m!4540219 () Bool)

(assert (=> b!3969962 m!4540219))

(assert (=> b!3969798 d!1176151))

(declare-fun d!1176153 () Bool)

(assert (=> d!1176153 true))

(declare-fun lt!1390371 () Bool)

(declare-fun lambda!126875 () Int)

(declare-fun forall!8333 (List!42473 Int) Bool)

(assert (=> d!1176153 (= lt!1390371 (forall!8333 rules!2999 lambda!126875))))

(declare-fun e!2459055 () Bool)

(assert (=> d!1176153 (= lt!1390371 e!2459055)))

(declare-fun res!1606958 () Bool)

(assert (=> d!1176153 (=> res!1606958 e!2459055)))

(assert (=> d!1176153 (= res!1606958 (not (is-Cons!42349 rules!2999)))))

(assert (=> d!1176153 (= (rulesValidInductive!2415 thiss!21717 rules!2999) lt!1390371)))

(declare-fun b!3970006 () Bool)

(declare-fun e!2459056 () Bool)

(assert (=> b!3970006 (= e!2459055 e!2459056)))

(declare-fun res!1606959 () Bool)

(assert (=> b!3970006 (=> (not res!1606959) (not e!2459056))))

(assert (=> b!3970006 (= res!1606959 (ruleValid!2587 thiss!21717 (h!47769 rules!2999)))))

(declare-fun b!3970007 () Bool)

(assert (=> b!3970007 (= e!2459056 (rulesValidInductive!2415 thiss!21717 (t!330828 rules!2999)))))

(assert (= (and d!1176153 (not res!1606958)) b!3970006))

(assert (= (and b!3970006 res!1606959) b!3970007))

(declare-fun m!4540263 () Bool)

(assert (=> d!1176153 m!4540263))

(declare-fun m!4540265 () Bool)

(assert (=> b!3970006 m!4540265))

(declare-fun m!4540267 () Bool)

(assert (=> b!3970007 m!4540267))

(assert (=> b!3969809 d!1176153))

(declare-fun d!1176183 () Bool)

(declare-fun e!2459065 () Bool)

(assert (=> d!1176183 e!2459065))

(declare-fun res!1606964 () Bool)

(assert (=> d!1176183 (=> (not res!1606964) (not e!2459065))))

(assert (=> d!1176183 (= res!1606964 (semiInverseModEq!2864 (toChars!9002 (transformation!6655 (rule!9643 token!484))) (toValue!9143 (transformation!6655 (rule!9643 token!484)))))))

(declare-fun Unit!61005 () Unit!60999)

(assert (=> d!1176183 (= (lemmaInv!870 (transformation!6655 (rule!9643 token!484))) Unit!61005)))

(declare-fun b!3970022 () Bool)

(assert (=> b!3970022 (= e!2459065 (equivClasses!2763 (toChars!9002 (transformation!6655 (rule!9643 token!484))) (toValue!9143 (transformation!6655 (rule!9643 token!484)))))))

(assert (= (and d!1176183 res!1606964) b!3970022))

(assert (=> d!1176183 m!4540217))

(assert (=> b!3970022 m!4540219))

(assert (=> b!3969809 d!1176183))

(declare-fun d!1176185 () Bool)

(declare-fun res!1606971 () Bool)

(declare-fun e!2459072 () Bool)

(assert (=> d!1176185 (=> (not res!1606971) (not e!2459072))))

(declare-fun validRegex!5258 (Regex!11560) Bool)

(assert (=> d!1176185 (= res!1606971 (validRegex!5258 (regex!6655 (rule!9643 token!484))))))

(assert (=> d!1176185 (= (ruleValid!2587 thiss!21717 (rule!9643 token!484)) e!2459072)))

(declare-fun b!3970033 () Bool)

(declare-fun res!1606972 () Bool)

(assert (=> b!3970033 (=> (not res!1606972) (not e!2459072))))

(declare-fun nullable!4059 (Regex!11560) Bool)

(assert (=> b!3970033 (= res!1606972 (not (nullable!4059 (regex!6655 (rule!9643 token!484)))))))

(declare-fun b!3970034 () Bool)

(assert (=> b!3970034 (= e!2459072 (not (= (tag!7515 (rule!9643 token!484)) (String!48146 ""))))))

(assert (= (and d!1176185 res!1606971) b!3970033))

(assert (= (and b!3970033 res!1606972) b!3970034))

(declare-fun m!4540279 () Bool)

(assert (=> d!1176185 m!4540279))

(declare-fun m!4540281 () Bool)

(assert (=> b!3970033 m!4540281))

(assert (=> b!3969809 d!1176185))

(declare-fun d!1176193 () Bool)

(assert (=> d!1176193 (ruleValid!2587 thiss!21717 (rule!9643 token!484))))

(declare-fun lt!1390376 () Unit!60999)

(declare-fun choose!23745 (LexerInterface!6244 Rule!13110 List!42473) Unit!60999)

(assert (=> d!1176193 (= lt!1390376 (choose!23745 thiss!21717 (rule!9643 token!484) rules!2999))))

(assert (=> d!1176193 (contains!8445 rules!2999 (rule!9643 token!484))))

(assert (=> d!1176193 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1661 thiss!21717 (rule!9643 token!484) rules!2999) lt!1390376)))

(declare-fun bs!587590 () Bool)

(assert (= bs!587590 d!1176193))

(assert (=> bs!587590 m!4540075))

(declare-fun m!4540283 () Bool)

(assert (=> bs!587590 m!4540283))

(declare-fun m!4540285 () Bool)

(assert (=> bs!587590 m!4540285))

(assert (=> b!3969809 d!1176193))

(declare-fun b!3970047 () Bool)

(declare-fun e!2459083 () List!42471)

(assert (=> b!3970047 (= e!2459083 newSuffixResult!27)))

(declare-fun b!3970049 () Bool)

(declare-fun res!1606986 () Bool)

(declare-fun e!2459082 () Bool)

(assert (=> b!3970049 (=> (not res!1606986) (not e!2459082))))

(declare-fun lt!1390378 () List!42471)

(assert (=> b!3970049 (= res!1606986 (= (size!31691 lt!1390378) (+ (size!31691 lt!1390315) (size!31691 newSuffixResult!27))))))

(declare-fun d!1176195 () Bool)

(assert (=> d!1176195 e!2459082))

(declare-fun res!1606985 () Bool)

(assert (=> d!1176195 (=> (not res!1606985) (not e!2459082))))

(assert (=> d!1176195 (= res!1606985 (= (content!6432 lt!1390378) (set.union (content!6432 lt!1390315) (content!6432 newSuffixResult!27))))))

(assert (=> d!1176195 (= lt!1390378 e!2459083)))

(declare-fun c!688692 () Bool)

(assert (=> d!1176195 (= c!688692 (is-Nil!42347 lt!1390315))))

(assert (=> d!1176195 (= (++!11057 lt!1390315 newSuffixResult!27) lt!1390378)))

(declare-fun b!3970050 () Bool)

(assert (=> b!3970050 (= e!2459082 (or (not (= newSuffixResult!27 Nil!42347)) (= lt!1390378 lt!1390315)))))

(declare-fun b!3970048 () Bool)

(assert (=> b!3970048 (= e!2459083 (Cons!42347 (h!47767 lt!1390315) (++!11057 (t!330826 lt!1390315) newSuffixResult!27)))))

(assert (= (and d!1176195 c!688692) b!3970047))

(assert (= (and d!1176195 (not c!688692)) b!3970048))

(assert (= (and d!1176195 res!1606985) b!3970049))

(assert (= (and b!3970049 res!1606986) b!3970050))

(declare-fun m!4540295 () Bool)

(assert (=> b!3970049 m!4540295))

(assert (=> b!3970049 m!4540051))

(declare-fun m!4540299 () Bool)

(assert (=> b!3970049 m!4540299))

(declare-fun m!4540301 () Bool)

(assert (=> d!1176195 m!4540301))

(declare-fun m!4540303 () Bool)

(assert (=> d!1176195 m!4540303))

(declare-fun m!4540305 () Bool)

(assert (=> d!1176195 m!4540305))

(declare-fun m!4540307 () Bool)

(assert (=> b!3970048 m!4540307))

(assert (=> b!3969815 d!1176195))

(declare-fun b!3970051 () Bool)

(declare-fun e!2459085 () List!42471)

(assert (=> b!3970051 (= e!2459085 newSuffix!27)))

(declare-fun b!3970053 () Bool)

(declare-fun res!1606988 () Bool)

(declare-fun e!2459084 () Bool)

(assert (=> b!3970053 (=> (not res!1606988) (not e!2459084))))

(declare-fun lt!1390379 () List!42471)

(assert (=> b!3970053 (= res!1606988 (= (size!31691 lt!1390379) (+ (size!31691 prefix!494) (size!31691 newSuffix!27))))))

(declare-fun d!1176199 () Bool)

(assert (=> d!1176199 e!2459084))

(declare-fun res!1606987 () Bool)

(assert (=> d!1176199 (=> (not res!1606987) (not e!2459084))))

(assert (=> d!1176199 (= res!1606987 (= (content!6432 lt!1390379) (set.union (content!6432 prefix!494) (content!6432 newSuffix!27))))))

(assert (=> d!1176199 (= lt!1390379 e!2459085)))

(declare-fun c!688693 () Bool)

(assert (=> d!1176199 (= c!688693 (is-Nil!42347 prefix!494))))

(assert (=> d!1176199 (= (++!11057 prefix!494 newSuffix!27) lt!1390379)))

(declare-fun b!3970054 () Bool)

(assert (=> b!3970054 (= e!2459084 (or (not (= newSuffix!27 Nil!42347)) (= lt!1390379 prefix!494)))))

(declare-fun b!3970052 () Bool)

(assert (=> b!3970052 (= e!2459085 (Cons!42347 (h!47767 prefix!494) (++!11057 (t!330826 prefix!494) newSuffix!27)))))

(assert (= (and d!1176199 c!688693) b!3970051))

(assert (= (and d!1176199 (not c!688693)) b!3970052))

(assert (= (and d!1176199 res!1606987) b!3970053))

(assert (= (and b!3970053 res!1606988) b!3970054))

(declare-fun m!4540309 () Bool)

(assert (=> b!3970053 m!4540309))

(assert (=> b!3970053 m!4540049))

(assert (=> b!3970053 m!4540059))

(declare-fun m!4540311 () Bool)

(assert (=> d!1176199 m!4540311))

(assert (=> d!1176199 m!4540211))

(declare-fun m!4540313 () Bool)

(assert (=> d!1176199 m!4540313))

(declare-fun m!4540315 () Bool)

(assert (=> b!3970052 m!4540315))

(assert (=> b!3969815 d!1176199))

(declare-fun d!1176201 () Bool)

(declare-fun lt!1390380 () Int)

(assert (=> d!1176201 (>= lt!1390380 0)))

(declare-fun e!2459086 () Int)

(assert (=> d!1176201 (= lt!1390380 e!2459086)))

(declare-fun c!688694 () Bool)

(assert (=> d!1176201 (= c!688694 (is-Nil!42347 suffix!1299))))

(assert (=> d!1176201 (= (size!31691 suffix!1299) lt!1390380)))

(declare-fun b!3970055 () Bool)

(assert (=> b!3970055 (= e!2459086 0)))

(declare-fun b!3970056 () Bool)

(assert (=> b!3970056 (= e!2459086 (+ 1 (size!31691 (t!330826 suffix!1299))))))

(assert (= (and d!1176201 c!688694) b!3970055))

(assert (= (and d!1176201 (not c!688694)) b!3970056))

(declare-fun m!4540317 () Bool)

(assert (=> b!3970056 m!4540317))

(assert (=> b!3969805 d!1176201))

(declare-fun d!1176203 () Bool)

(declare-fun lt!1390381 () Int)

(assert (=> d!1176203 (>= lt!1390381 0)))

(declare-fun e!2459087 () Int)

(assert (=> d!1176203 (= lt!1390381 e!2459087)))

(declare-fun c!688695 () Bool)

(assert (=> d!1176203 (= c!688695 (is-Nil!42347 newSuffix!27))))

(assert (=> d!1176203 (= (size!31691 newSuffix!27) lt!1390381)))

(declare-fun b!3970057 () Bool)

(assert (=> b!3970057 (= e!2459087 0)))

(declare-fun b!3970058 () Bool)

(assert (=> b!3970058 (= e!2459087 (+ 1 (size!31691 (t!330826 newSuffix!27))))))

(assert (= (and d!1176203 c!688695) b!3970057))

(assert (= (and d!1176203 (not c!688695)) b!3970058))

(declare-fun m!4540319 () Bool)

(assert (=> b!3970058 m!4540319))

(assert (=> b!3969805 d!1176203))

(declare-fun d!1176205 () Bool)

(declare-fun res!1606997 () Bool)

(declare-fun e!2459094 () Bool)

(assert (=> d!1176205 (=> (not res!1606997) (not e!2459094))))

(declare-fun isEmpty!25343 (List!42471) Bool)

(assert (=> d!1176205 (= res!1606997 (not (isEmpty!25343 (originalCharacters!7255 token!484))))))

(assert (=> d!1176205 (= (inv!56594 token!484) e!2459094)))

(declare-fun b!3970071 () Bool)

(declare-fun res!1606998 () Bool)

(assert (=> b!3970071 (=> (not res!1606998) (not e!2459094))))

(assert (=> b!3970071 (= res!1606998 (= (originalCharacters!7255 token!484) (list!15713 (dynLambda!18068 (toChars!9002 (transformation!6655 (rule!9643 token!484))) (value!210303 token!484)))))))

(declare-fun b!3970072 () Bool)

(assert (=> b!3970072 (= e!2459094 (= (size!31690 token!484) (size!31691 (originalCharacters!7255 token!484))))))

(assert (= (and d!1176205 res!1606997) b!3970071))

(assert (= (and b!3970071 res!1606998) b!3970072))

(declare-fun b_lambda!116053 () Bool)

(assert (=> (not b_lambda!116053) (not b!3970071)))

(assert (=> b!3970071 t!330833))

(declare-fun b_and!305163 () Bool)

(assert (= b_and!305151 (and (=> t!330833 result!290142) b_and!305163)))

(assert (=> b!3970071 t!330835))

(declare-fun b_and!305165 () Bool)

(assert (= b_and!305153 (and (=> t!330835 result!290146) b_and!305165)))

(declare-fun m!4540321 () Bool)

(assert (=> d!1176205 m!4540321))

(assert (=> b!3970071 m!4540173))

(assert (=> b!3970071 m!4540173))

(declare-fun m!4540323 () Bool)

(assert (=> b!3970071 m!4540323))

(declare-fun m!4540325 () Bool)

(assert (=> b!3970072 m!4540325))

(assert (=> start!373546 d!1176205))

(declare-fun d!1176207 () Bool)

(declare-fun res!1607005 () Bool)

(declare-fun e!2459101 () Bool)

(assert (=> d!1176207 (=> (not res!1607005) (not e!2459101))))

(declare-fun rulesValid!2599 (LexerInterface!6244 List!42473) Bool)

(assert (=> d!1176207 (= res!1607005 (rulesValid!2599 thiss!21717 rules!2999))))

(assert (=> d!1176207 (= (rulesInvariant!5587 thiss!21717 rules!2999) e!2459101)))

(declare-fun b!3970083 () Bool)

(declare-datatypes ((List!42478 0))(
  ( (Nil!42354) (Cons!42354 (h!47774 String!48145) (t!330845 List!42478)) )
))
(declare-fun noDuplicateTag!2600 (LexerInterface!6244 List!42473 List!42478) Bool)

(assert (=> b!3970083 (= e!2459101 (noDuplicateTag!2600 thiss!21717 rules!2999 Nil!42354))))

(assert (= (and d!1176207 res!1607005) b!3970083))

(declare-fun m!4540349 () Bool)

(assert (=> d!1176207 m!4540349))

(declare-fun m!4540351 () Bool)

(assert (=> b!3970083 m!4540351))

(assert (=> b!3969806 d!1176207))

(declare-fun b!3970088 () Bool)

(declare-fun e!2459104 () Bool)

(declare-fun tp!1210271 () Bool)

(assert (=> b!3970088 (= e!2459104 (and tp_is_empty!20091 tp!1210271))))

(assert (=> b!3969807 (= tp!1210222 e!2459104)))

(assert (= (and b!3969807 (is-Cons!42347 (t!330826 newSuffixResult!27))) b!3970088))

(declare-fun b!3970089 () Bool)

(declare-fun e!2459105 () Bool)

(declare-fun tp!1210272 () Bool)

(assert (=> b!3970089 (= e!2459105 (and tp_is_empty!20091 tp!1210272))))

(assert (=> b!3969813 (= tp!1210221 e!2459105)))

(assert (= (and b!3969813 (is-Cons!42347 (t!330826 suffixResult!105))) b!3970089))

(declare-fun b!3970102 () Bool)

(declare-fun e!2459108 () Bool)

(declare-fun tp!1210284 () Bool)

(assert (=> b!3970102 (= e!2459108 tp!1210284)))

(declare-fun b!3970103 () Bool)

(declare-fun tp!1210283 () Bool)

(declare-fun tp!1210286 () Bool)

(assert (=> b!3970103 (= e!2459108 (and tp!1210283 tp!1210286))))

(declare-fun b!3970100 () Bool)

(assert (=> b!3970100 (= e!2459108 tp_is_empty!20091)))

(declare-fun b!3970101 () Bool)

(declare-fun tp!1210287 () Bool)

(declare-fun tp!1210285 () Bool)

(assert (=> b!3970101 (= e!2459108 (and tp!1210287 tp!1210285))))

(assert (=> b!3969803 (= tp!1210212 e!2459108)))

(assert (= (and b!3969803 (is-ElementMatch!11560 (regex!6655 (h!47769 rules!2999)))) b!3970100))

(assert (= (and b!3969803 (is-Concat!18446 (regex!6655 (h!47769 rules!2999)))) b!3970101))

(assert (= (and b!3969803 (is-Star!11560 (regex!6655 (h!47769 rules!2999)))) b!3970102))

(assert (= (and b!3969803 (is-Union!11560 (regex!6655 (h!47769 rules!2999)))) b!3970103))

(declare-fun b!3970106 () Bool)

(declare-fun e!2459109 () Bool)

(declare-fun tp!1210289 () Bool)

(assert (=> b!3970106 (= e!2459109 tp!1210289)))

(declare-fun b!3970107 () Bool)

(declare-fun tp!1210288 () Bool)

(declare-fun tp!1210291 () Bool)

(assert (=> b!3970107 (= e!2459109 (and tp!1210288 tp!1210291))))

(declare-fun b!3970104 () Bool)

(assert (=> b!3970104 (= e!2459109 tp_is_empty!20091)))

(declare-fun b!3970105 () Bool)

(declare-fun tp!1210292 () Bool)

(declare-fun tp!1210290 () Bool)

(assert (=> b!3970105 (= e!2459109 (and tp!1210292 tp!1210290))))

(assert (=> b!3969798 (= tp!1210223 e!2459109)))

(assert (= (and b!3969798 (is-ElementMatch!11560 (regex!6655 (rule!9643 token!484)))) b!3970104))

(assert (= (and b!3969798 (is-Concat!18446 (regex!6655 (rule!9643 token!484)))) b!3970105))

(assert (= (and b!3969798 (is-Star!11560 (regex!6655 (rule!9643 token!484)))) b!3970106))

(assert (= (and b!3969798 (is-Union!11560 (regex!6655 (rule!9643 token!484)))) b!3970107))

(declare-fun b!3970118 () Bool)

(declare-fun b_free!109921 () Bool)

(declare-fun b_next!110625 () Bool)

(assert (=> b!3970118 (= b_free!109921 (not b_next!110625))))

(declare-fun tp!1210303 () Bool)

(declare-fun b_and!305167 () Bool)

(assert (=> b!3970118 (= tp!1210303 b_and!305167)))

(declare-fun b_free!109923 () Bool)

(declare-fun b_next!110627 () Bool)

(assert (=> b!3970118 (= b_free!109923 (not b_next!110627))))

(declare-fun t!330841 () Bool)

(declare-fun tb!239625 () Bool)

(assert (=> (and b!3970118 (= (toChars!9002 (transformation!6655 (h!47769 (t!330828 rules!2999)))) (toChars!9002 (transformation!6655 (rule!9643 token!484)))) t!330841) tb!239625))

(declare-fun result!290160 () Bool)

(assert (= result!290160 result!290142))

(assert (=> d!1176141 t!330841))

(assert (=> b!3970071 t!330841))

(declare-fun b_and!305169 () Bool)

(declare-fun tp!1210304 () Bool)

(assert (=> b!3970118 (= tp!1210304 (and (=> t!330841 result!290160) b_and!305169))))

(declare-fun e!2459119 () Bool)

(assert (=> b!3970118 (= e!2459119 (and tp!1210303 tp!1210304))))

(declare-fun tp!1210301 () Bool)

(declare-fun b!3970117 () Bool)

(declare-fun e!2459120 () Bool)

(assert (=> b!3970117 (= e!2459120 (and tp!1210301 (inv!56590 (tag!7515 (h!47769 (t!330828 rules!2999)))) (inv!56593 (transformation!6655 (h!47769 (t!330828 rules!2999)))) e!2459119))))

(declare-fun b!3970116 () Bool)

(declare-fun e!2459118 () Bool)

(declare-fun tp!1210302 () Bool)

(assert (=> b!3970116 (= e!2459118 (and e!2459120 tp!1210302))))

(assert (=> b!3969814 (= tp!1210216 e!2459118)))

(assert (= b!3970117 b!3970118))

(assert (= b!3970116 b!3970117))

(assert (= (and b!3969814 (is-Cons!42349 (t!330828 rules!2999))) b!3970116))

(declare-fun m!4540353 () Bool)

(assert (=> b!3970117 m!4540353))

(declare-fun m!4540355 () Bool)

(assert (=> b!3970117 m!4540355))

(declare-fun b!3970119 () Bool)

(declare-fun e!2459122 () Bool)

(declare-fun tp!1210305 () Bool)

(assert (=> b!3970119 (= e!2459122 (and tp_is_empty!20091 tp!1210305))))

(assert (=> b!3969799 (= tp!1210218 e!2459122)))

(assert (= (and b!3969799 (is-Cons!42347 (originalCharacters!7255 token!484))) b!3970119))

(declare-fun b!3970120 () Bool)

(declare-fun e!2459123 () Bool)

(declare-fun tp!1210306 () Bool)

(assert (=> b!3970120 (= e!2459123 (and tp_is_empty!20091 tp!1210306))))

(assert (=> b!3969800 (= tp!1210215 e!2459123)))

(assert (= (and b!3969800 (is-Cons!42347 (t!330826 suffix!1299))) b!3970120))

(declare-fun b!3970121 () Bool)

(declare-fun e!2459124 () Bool)

(declare-fun tp!1210307 () Bool)

(assert (=> b!3970121 (= e!2459124 (and tp_is_empty!20091 tp!1210307))))

(assert (=> b!3969801 (= tp!1210219 e!2459124)))

(assert (= (and b!3969801 (is-Cons!42347 (t!330826 newSuffix!27))) b!3970121))

(declare-fun b!3970122 () Bool)

(declare-fun e!2459125 () Bool)

(declare-fun tp!1210308 () Bool)

(assert (=> b!3970122 (= e!2459125 (and tp_is_empty!20091 tp!1210308))))

(assert (=> b!3969812 (= tp!1210217 e!2459125)))

(assert (= (and b!3969812 (is-Cons!42347 (t!330826 prefix!494))) b!3970122))

(declare-fun b_lambda!116055 () Bool)

(assert (= b_lambda!116047 (or (and b!3969808 b_free!109907 (= (toChars!9002 (transformation!6655 (h!47769 rules!2999))) (toChars!9002 (transformation!6655 (rule!9643 token!484))))) (and b!3969804 b_free!109911) (and b!3970118 b_free!109923 (= (toChars!9002 (transformation!6655 (h!47769 (t!330828 rules!2999)))) (toChars!9002 (transformation!6655 (rule!9643 token!484))))) b_lambda!116055)))

(declare-fun b_lambda!116057 () Bool)

(assert (= b_lambda!116053 (or (and b!3969808 b_free!109907 (= (toChars!9002 (transformation!6655 (h!47769 rules!2999))) (toChars!9002 (transformation!6655 (rule!9643 token!484))))) (and b!3969804 b_free!109911) (and b!3970118 b_free!109923 (= (toChars!9002 (transformation!6655 (h!47769 (t!330828 rules!2999)))) (toChars!9002 (transformation!6655 (rule!9643 token!484))))) b_lambda!116057)))

(push 1)

(assert (not b!3969960))

(assert (not b_lambda!116057))

(assert (not d!1176139))

(assert (not b!3970083))

(assert (not b!3969906))

(assert (not d!1176185))

(assert (not b!3969949))

(assert (not b_next!110625))

(assert (not b!3969944))

(assert (not b!3970052))

(assert (not b_lambda!116055))

(assert (not b!3970117))

(assert (not b!3969941))

(assert tp_is_empty!20091)

(assert (not b!3970033))

(assert (not b!3970058))

(assert (not b!3969945))

(assert (not b!3970105))

(assert (not b!3969962))

(assert (not d!1176193))

(assert (not d!1176145))

(assert (not b!3969889))

(assert (not b_next!110613))

(assert (not b!3969959))

(assert (not d!1176151))

(assert (not b!3969922))

(assert (not b_next!110609))

(assert (not b_next!110627))

(assert (not b!3969905))

(assert (not b!3969915))

(assert (not b!3969890))

(assert b_and!305169)

(assert (not d!1176199))

(assert b_and!305163)

(assert (not b_next!110611))

(assert (not b!3970102))

(assert (not b!3970107))

(assert (not b!3970088))

(assert (not b!3970048))

(assert (not b!3969943))

(assert (not b!3970071))

(assert b_and!305165)

(assert (not b!3970049))

(assert (not tb!239617))

(assert (not d!1176207))

(assert (not b!3970116))

(assert (not b!3969948))

(assert (not b!3970121))

(assert (not b!3969947))

(assert (not b!3969917))

(assert (not b!3970007))

(assert (not b!3970120))

(assert (not b!3969891))

(assert (not b!3970122))

(assert (not d!1176147))

(assert (not d!1176205))

(assert (not b_next!110615))

(assert (not b!3970072))

(assert (not d!1176141))

(assert (not b!3969946))

(assert (not b!3970056))

(assert (not b!3970022))

(assert (not b!3970119))

(assert (not bm!285592))

(assert (not b!3970053))

(assert (not b!3970106))

(assert (not b!3970006))

(assert (not b!3969894))

(assert (not b!3970089))

(assert (not b!3970103))

(assert b_and!305135)

(assert b_and!305139)

(assert (not d!1176195))

(assert (not d!1176183))

(assert (not d!1176153))

(assert (not b!3970101))

(assert (not d!1176131))

(assert (not b!3969908))

(assert b_and!305167)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!110625))

(assert (not b_next!110613))

(assert b_and!305169)

(assert b_and!305163)

(assert (not b_next!110611))

(assert b_and!305165)

(assert (not b_next!110615))

(assert b_and!305167)

(assert (not b_next!110609))

(assert (not b_next!110627))

(assert b_and!305135)

(assert b_and!305139)

(check-sat)

(pop 1)

