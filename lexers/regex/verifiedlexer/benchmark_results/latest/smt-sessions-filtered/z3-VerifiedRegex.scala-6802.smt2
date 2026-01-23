; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!356236 () Bool)

(assert start!356236)

(declare-fun b!3803173 () Bool)

(declare-fun b_free!101333 () Bool)

(declare-fun b_next!102037 () Bool)

(assert (=> b!3803173 (= b_free!101333 (not b_next!102037))))

(declare-fun tp!1155310 () Bool)

(declare-fun b_and!282731 () Bool)

(assert (=> b!3803173 (= tp!1155310 b_and!282731)))

(declare-fun b_free!101335 () Bool)

(declare-fun b_next!102039 () Bool)

(assert (=> b!3803173 (= b_free!101335 (not b_next!102039))))

(declare-fun tp!1155309 () Bool)

(declare-fun b_and!282733 () Bool)

(assert (=> b!3803173 (= tp!1155309 b_and!282733)))

(declare-fun b!3803165 () Bool)

(declare-fun res!1539718 () Bool)

(declare-fun e!2350184 () Bool)

(assert (=> b!3803165 (=> (not res!1539718) (not e!2350184))))

(declare-datatypes ((List!40478 0))(
  ( (Nil!40354) (Cons!40354 (h!45774 (_ BitVec 16)) (t!307207 List!40478)) )
))
(declare-datatypes ((TokenValue!6440 0))(
  ( (FloatLiteralValue!12880 (text!45525 List!40478)) (TokenValueExt!6439 (__x!25097 Int)) (Broken!32200 (value!197566 List!40478)) (Object!6563) (End!6440) (Def!6440) (Underscore!6440) (Match!6440) (Else!6440) (Error!6440) (Case!6440) (If!6440) (Extends!6440) (Abstract!6440) (Class!6440) (Val!6440) (DelimiterValue!12880 (del!6500 List!40478)) (KeywordValue!6446 (value!197567 List!40478)) (CommentValue!12880 (value!197568 List!40478)) (WhitespaceValue!12880 (value!197569 List!40478)) (IndentationValue!6440 (value!197570 List!40478)) (String!45881) (Int32!6440) (Broken!32201 (value!197571 List!40478)) (Boolean!6441) (Unit!58097) (OperatorValue!6443 (op!6500 List!40478)) (IdentifierValue!12880 (value!197572 List!40478)) (IdentifierValue!12881 (value!197573 List!40478)) (WhitespaceValue!12881 (value!197574 List!40478)) (True!12880) (False!12880) (Broken!32202 (value!197575 List!40478)) (Broken!32203 (value!197576 List!40478)) (True!12881) (RightBrace!6440) (RightBracket!6440) (Colon!6440) (Null!6440) (Comma!6440) (LeftBracket!6440) (False!12881) (LeftBrace!6440) (ImaginaryLiteralValue!6440 (text!45526 List!40478)) (StringLiteralValue!19320 (value!197577 List!40478)) (EOFValue!6440 (value!197578 List!40478)) (IdentValue!6440 (value!197579 List!40478)) (DelimiterValue!12881 (value!197580 List!40478)) (DedentValue!6440 (value!197581 List!40478)) (NewLineValue!6440 (value!197582 List!40478)) (IntegerValue!19320 (value!197583 (_ BitVec 32)) (text!45527 List!40478)) (IntegerValue!19321 (value!197584 Int) (text!45528 List!40478)) (Times!6440) (Or!6440) (Equal!6440) (Minus!6440) (Broken!32204 (value!197585 List!40478)) (And!6440) (Div!6440) (LessEqual!6440) (Mod!6440) (Concat!17555) (Not!6440) (Plus!6440) (SpaceValue!6440 (value!197586 List!40478)) (IntegerValue!19322 (value!197587 Int) (text!45529 List!40478)) (StringLiteralValue!19321 (text!45530 List!40478)) (FloatLiteralValue!12881 (text!45531 List!40478)) (BytesLiteralValue!6440 (value!197588 List!40478)) (CommentValue!12881 (value!197589 List!40478)) (StringLiteralValue!19322 (value!197590 List!40478)) (ErrorTokenValue!6440 (msg!6501 List!40478)) )
))
(declare-datatypes ((C!22416 0))(
  ( (C!22417 (val!13284 Int)) )
))
(declare-datatypes ((Regex!11115 0))(
  ( (ElementMatch!11115 (c!661401 C!22416)) (Concat!17556 (regOne!22742 Regex!11115) (regTwo!22742 Regex!11115)) (EmptyExpr!11115) (Star!11115 (reg!11444 Regex!11115)) (EmptyLang!11115) (Union!11115 (regOne!22743 Regex!11115) (regTwo!22743 Regex!11115)) )
))
(declare-datatypes ((String!45882 0))(
  ( (String!45883 (value!197591 String)) )
))
(declare-datatypes ((List!40479 0))(
  ( (Nil!40355) (Cons!40355 (h!45775 C!22416) (t!307208 List!40479)) )
))
(declare-datatypes ((IArray!24793 0))(
  ( (IArray!24794 (innerList!12454 List!40479)) )
))
(declare-datatypes ((Conc!12394 0))(
  ( (Node!12394 (left!31224 Conc!12394) (right!31554 Conc!12394) (csize!25018 Int) (cheight!12605 Int)) (Leaf!19197 (xs!15660 IArray!24793) (csize!25019 Int)) (Empty!12394) )
))
(declare-datatypes ((BalanceConc!24382 0))(
  ( (BalanceConc!24383 (c!661402 Conc!12394)) )
))
(declare-datatypes ((TokenValueInjection!12308 0))(
  ( (TokenValueInjection!12309 (toValue!8594 Int) (toChars!8453 Int)) )
))
(declare-datatypes ((Rule!12220 0))(
  ( (Rule!12221 (regex!6210 Regex!11115) (tag!7070 String!45882) (isSeparator!6210 Bool) (transformation!6210 TokenValueInjection!12308)) )
))
(declare-datatypes ((Token!11558 0))(
  ( (Token!11559 (value!197592 TokenValue!6440) (rule!9006 Rule!12220) (size!30382 Int) (originalCharacters!6810 List!40479)) )
))
(declare-datatypes ((List!40480 0))(
  ( (Nil!40356) (Cons!40356 (h!45776 Token!11558) (t!307209 List!40480)) )
))
(declare-datatypes ((IArray!24795 0))(
  ( (IArray!24796 (innerList!12455 List!40480)) )
))
(declare-datatypes ((Conc!12395 0))(
  ( (Node!12395 (left!31225 Conc!12395) (right!31555 Conc!12395) (csize!25020 Int) (cheight!12606 Int)) (Leaf!19198 (xs!15661 IArray!24795) (csize!25021 Int)) (Empty!12395) )
))
(declare-datatypes ((BalanceConc!24384 0))(
  ( (BalanceConc!24385 (c!661403 Conc!12395)) )
))
(declare-datatypes ((tuple2!39486 0))(
  ( (tuple2!39487 (_1!22877 BalanceConc!24384) (_2!22877 BalanceConc!24382)) )
))
(declare-fun lt!1318655 () tuple2!39486)

(declare-fun lt!1318654 () tuple2!39486)

(declare-fun list!14987 (BalanceConc!24382) List!40479)

(assert (=> b!3803165 (= res!1539718 (= (list!14987 (_2!22877 lt!1318655)) (list!14987 (_2!22877 lt!1318654))))))

(declare-fun b!3803166 () Bool)

(declare-fun e!2350180 () tuple2!39486)

(declare-fun input!678 () BalanceConc!24382)

(assert (=> b!3803166 (= e!2350180 (tuple2!39487 (BalanceConc!24385 Empty!12395) input!678))))

(declare-fun b!3803167 () Bool)

(declare-fun e!2350179 () Bool)

(declare-fun totalInput!335 () BalanceConc!24382)

(declare-fun tp!1155311 () Bool)

(declare-fun inv!54313 (Conc!12394) Bool)

(assert (=> b!3803167 (= e!2350179 (and (inv!54313 (c!661402 totalInput!335)) tp!1155311))))

(declare-fun b!3803168 () Bool)

(declare-fun e!2350182 () Bool)

(declare-fun acc!335 () BalanceConc!24384)

(declare-fun tp!1155315 () Bool)

(declare-fun inv!54314 (Conc!12395) Bool)

(assert (=> b!3803168 (= e!2350182 (and (inv!54314 (c!661403 acc!335)) tp!1155315))))

(declare-fun b!3803169 () Bool)

(declare-fun e!2350181 () Bool)

(declare-fun e!2350175 () Bool)

(assert (=> b!3803169 (= e!2350181 e!2350175)))

(declare-fun res!1539714 () Bool)

(assert (=> b!3803169 (=> (not res!1539714) (not e!2350175))))

(declare-fun lt!1318653 () List!40480)

(declare-fun lt!1318662 () List!40480)

(assert (=> b!3803169 (= res!1539714 (= lt!1318653 lt!1318662))))

(declare-fun list!14988 (BalanceConc!24384) List!40480)

(assert (=> b!3803169 (= lt!1318662 (list!14988 acc!335))))

(declare-fun lt!1318656 () tuple2!39486)

(assert (=> b!3803169 (= lt!1318653 (list!14988 (_1!22877 lt!1318656)))))

(declare-fun treated!13 () BalanceConc!24382)

(declare-datatypes ((List!40481 0))(
  ( (Nil!40357) (Cons!40357 (h!45777 Rule!12220) (t!307210 List!40481)) )
))
(declare-fun rules!1265 () List!40481)

(declare-datatypes ((LexerInterface!5799 0))(
  ( (LexerInterfaceExt!5796 (__x!25098 Int)) (Lexer!5797) )
))
(declare-fun thiss!11876 () LexerInterface!5799)

(declare-fun lexRec!823 (LexerInterface!5799 List!40481 BalanceConc!24382) tuple2!39486)

(assert (=> b!3803169 (= lt!1318656 (lexRec!823 thiss!11876 rules!1265 treated!13))))

(declare-fun b!3803170 () Bool)

(declare-fun res!1539711 () Bool)

(declare-fun e!2350183 () Bool)

(assert (=> b!3803170 (=> (not res!1539711) (not e!2350183))))

(declare-fun rulesInvariant!5142 (LexerInterface!5799 List!40481) Bool)

(assert (=> b!3803170 (= res!1539711 (rulesInvariant!5142 thiss!11876 rules!1265))))

(declare-fun b!3803171 () Bool)

(declare-fun e!2350176 () Bool)

(declare-fun tp!1155316 () Bool)

(assert (=> b!3803171 (= e!2350176 (and (inv!54313 (c!661402 treated!13)) tp!1155316))))

(declare-fun b!3803172 () Bool)

(declare-fun tp!1155313 () Bool)

(declare-fun e!2350185 () Bool)

(declare-fun e!2350173 () Bool)

(declare-fun inv!54307 (String!45882) Bool)

(declare-fun inv!54315 (TokenValueInjection!12308) Bool)

(assert (=> b!3803172 (= e!2350173 (and tp!1155313 (inv!54307 (tag!7070 (h!45777 rules!1265))) (inv!54315 (transformation!6210 (h!45777 rules!1265))) e!2350185))))

(assert (=> b!3803173 (= e!2350185 (and tp!1155310 tp!1155309))))

(declare-fun b!3803174 () Bool)

(declare-fun e!2350186 () Bool)

(assert (=> b!3803174 (= e!2350186 true)))

(declare-fun lt!1318660 () List!40479)

(declare-fun lt!1318669 () tuple2!39486)

(assert (=> b!3803174 (= lt!1318660 (list!14987 (_2!22877 lt!1318669)))))

(declare-fun lt!1318670 () List!40480)

(declare-datatypes ((tuple2!39488 0))(
  ( (tuple2!39489 (_1!22878 Token!11558) (_2!22878 BalanceConc!24382)) )
))
(declare-datatypes ((Option!8622 0))(
  ( (None!8621) (Some!8621 (v!38845 tuple2!39488)) )
))
(declare-fun lt!1318671 () Option!8622)

(declare-fun append!1058 (BalanceConc!24384 Token!11558) BalanceConc!24384)

(assert (=> b!3803174 (= lt!1318670 (list!14988 (append!1058 acc!335 (_1!22878 (v!38845 lt!1318671)))))))

(declare-fun lt!1318659 () List!40480)

(declare-fun lt!1318661 () List!40480)

(declare-fun ++!10126 (List!40480 List!40480) List!40480)

(assert (=> b!3803174 (= (++!10126 (++!10126 lt!1318662 lt!1318659) lt!1318661) (++!10126 lt!1318662 (++!10126 lt!1318659 lt!1318661)))))

(declare-datatypes ((Unit!58098 0))(
  ( (Unit!58099) )
))
(declare-fun lt!1318667 () Unit!58098)

(declare-fun lemmaConcatAssociativity!2171 (List!40480 List!40480 List!40480) Unit!58098)

(assert (=> b!3803174 (= lt!1318667 (lemmaConcatAssociativity!2171 lt!1318662 lt!1318659 lt!1318661))))

(assert (=> b!3803174 (= lt!1318661 (list!14988 (_1!22877 lt!1318669)))))

(assert (=> b!3803174 (= lt!1318659 (Cons!40356 (_1!22878 (v!38845 lt!1318671)) Nil!40356))))

(assert (=> b!3803174 (= lt!1318654 e!2350180)))

(declare-fun c!661400 () Bool)

(declare-fun lt!1318673 () Option!8622)

(get-info :version)

(assert (=> b!3803174 (= c!661400 ((_ is Some!8621) lt!1318673))))

(declare-fun maxPrefixZipperSequence!1205 (LexerInterface!5799 List!40481 BalanceConc!24382) Option!8622)

(assert (=> b!3803174 (= lt!1318673 (maxPrefixZipperSequence!1205 thiss!11876 rules!1265 input!678))))

(declare-fun lt!1318657 () List!40479)

(declare-fun lt!1318672 () List!40479)

(declare-fun lt!1318658 () List!40479)

(declare-fun ++!10127 (List!40479 List!40479) List!40479)

(assert (=> b!3803174 (= (++!10127 (++!10127 lt!1318657 lt!1318672) lt!1318658) (++!10127 lt!1318657 (++!10127 lt!1318672 lt!1318658)))))

(declare-fun lt!1318652 () Unit!58098)

(declare-fun lemmaConcatAssociativity!2172 (List!40479 List!40479 List!40479) Unit!58098)

(assert (=> b!3803174 (= lt!1318652 (lemmaConcatAssociativity!2172 lt!1318657 lt!1318672 lt!1318658))))

(assert (=> b!3803174 (= lt!1318658 (list!14987 (_2!22878 (v!38845 lt!1318671))))))

(declare-fun charsOf!4048 (Token!11558) BalanceConc!24382)

(assert (=> b!3803174 (= lt!1318672 (list!14987 (charsOf!4048 (_1!22878 (v!38845 lt!1318671)))))))

(assert (=> b!3803174 (= lt!1318669 (lexRec!823 thiss!11876 rules!1265 (_2!22878 (v!38845 lt!1318671))))))

(declare-fun b!3803175 () Bool)

(assert (=> b!3803175 (= e!2350183 e!2350181)))

(declare-fun res!1539713 () Bool)

(assert (=> b!3803175 (=> (not res!1539713) (not e!2350181))))

(declare-fun lt!1318668 () List!40479)

(declare-fun lt!1318664 () List!40479)

(assert (=> b!3803175 (= res!1539713 (= lt!1318668 lt!1318664))))

(declare-fun lt!1318665 () List!40479)

(assert (=> b!3803175 (= lt!1318664 (++!10127 lt!1318657 lt!1318665))))

(assert (=> b!3803175 (= lt!1318668 (list!14987 totalInput!335))))

(assert (=> b!3803175 (= lt!1318665 (list!14987 input!678))))

(assert (=> b!3803175 (= lt!1318657 (list!14987 treated!13))))

(declare-fun res!1539712 () Bool)

(assert (=> start!356236 (=> (not res!1539712) (not e!2350183))))

(assert (=> start!356236 (= res!1539712 ((_ is Lexer!5797) thiss!11876))))

(assert (=> start!356236 e!2350183))

(declare-fun e!2350174 () Bool)

(declare-fun inv!54316 (BalanceConc!24382) Bool)

(assert (=> start!356236 (and (inv!54316 input!678) e!2350174)))

(declare-fun inv!54317 (BalanceConc!24384) Bool)

(assert (=> start!356236 (and (inv!54317 acc!335) e!2350182)))

(assert (=> start!356236 (and (inv!54316 treated!13) e!2350176)))

(declare-fun e!2350178 () Bool)

(assert (=> start!356236 e!2350178))

(assert (=> start!356236 true))

(assert (=> start!356236 (and (inv!54316 totalInput!335) e!2350179)))

(declare-fun b!3803164 () Bool)

(declare-fun lt!1318663 () tuple2!39486)

(declare-fun prepend!1354 (BalanceConc!24384 Token!11558) BalanceConc!24384)

(assert (=> b!3803164 (= e!2350180 (tuple2!39487 (prepend!1354 (_1!22877 lt!1318663) (_1!22878 (v!38845 lt!1318673))) (_2!22877 lt!1318663)))))

(assert (=> b!3803164 (= lt!1318663 (lexRec!823 thiss!11876 rules!1265 (_2!22878 (v!38845 lt!1318673))))))

(declare-fun b!3803176 () Bool)

(declare-fun res!1539717 () Bool)

(assert (=> b!3803176 (=> (not res!1539717) (not e!2350183))))

(declare-fun isEmpty!23757 (List!40481) Bool)

(assert (=> b!3803176 (= res!1539717 (not (isEmpty!23757 rules!1265)))))

(declare-fun b!3803177 () Bool)

(declare-fun e!2350172 () Bool)

(assert (=> b!3803177 (= e!2350172 e!2350186)))

(declare-fun res!1539715 () Bool)

(assert (=> b!3803177 (=> res!1539715 e!2350186)))

(assert (=> b!3803177 (= res!1539715 (not ((_ is Some!8621) lt!1318671)))))

(declare-fun maxPrefixZipperSequenceV2!599 (LexerInterface!5799 List!40481 BalanceConc!24382 BalanceConc!24382) Option!8622)

(assert (=> b!3803177 (= lt!1318671 (maxPrefixZipperSequenceV2!599 thiss!11876 rules!1265 input!678 totalInput!335))))

(declare-fun b!3803178 () Bool)

(declare-fun tp!1155312 () Bool)

(assert (=> b!3803178 (= e!2350174 (and (inv!54313 (c!661402 input!678)) tp!1155312))))

(declare-fun b!3803179 () Bool)

(assert (=> b!3803179 (= e!2350175 e!2350184)))

(declare-fun res!1539716 () Bool)

(assert (=> b!3803179 (=> (not res!1539716) (not e!2350184))))

(declare-fun ++!10128 (BalanceConc!24384 BalanceConc!24384) BalanceConc!24384)

(assert (=> b!3803179 (= res!1539716 (= (list!14988 (_1!22877 lt!1318655)) (list!14988 (++!10128 acc!335 (_1!22877 lt!1318654)))))))

(assert (=> b!3803179 (= lt!1318654 (lexRec!823 thiss!11876 rules!1265 input!678))))

(assert (=> b!3803179 (= lt!1318655 (lexRec!823 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3803180 () Bool)

(declare-fun res!1539719 () Bool)

(assert (=> b!3803180 (=> (not res!1539719) (not e!2350175))))

(declare-fun isEmpty!23758 (List!40479) Bool)

(assert (=> b!3803180 (= res!1539719 (isEmpty!23758 (list!14987 (_2!22877 lt!1318656))))))

(declare-fun b!3803181 () Bool)

(assert (=> b!3803181 (= e!2350184 (not e!2350172))))

(declare-fun res!1539720 () Bool)

(assert (=> b!3803181 (=> res!1539720 e!2350172)))

(declare-fun isSuffix!982 (List!40479 List!40479) Bool)

(assert (=> b!3803181 (= res!1539720 (not (isSuffix!982 lt!1318665 lt!1318668)))))

(assert (=> b!3803181 (isSuffix!982 lt!1318665 lt!1318664)))

(declare-fun lt!1318666 () Unit!58098)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!667 (List!40479 List!40479) Unit!58098)

(assert (=> b!3803181 (= lt!1318666 (lemmaConcatTwoListThenFSndIsSuffix!667 lt!1318657 lt!1318665))))

(declare-fun b!3803182 () Bool)

(declare-fun tp!1155314 () Bool)

(assert (=> b!3803182 (= e!2350178 (and e!2350173 tp!1155314))))

(assert (= (and start!356236 res!1539712) b!3803176))

(assert (= (and b!3803176 res!1539717) b!3803170))

(assert (= (and b!3803170 res!1539711) b!3803175))

(assert (= (and b!3803175 res!1539713) b!3803169))

(assert (= (and b!3803169 res!1539714) b!3803180))

(assert (= (and b!3803180 res!1539719) b!3803179))

(assert (= (and b!3803179 res!1539716) b!3803165))

(assert (= (and b!3803165 res!1539718) b!3803181))

(assert (= (and b!3803181 (not res!1539720)) b!3803177))

(assert (= (and b!3803177 (not res!1539715)) b!3803174))

(assert (= (and b!3803174 c!661400) b!3803164))

(assert (= (and b!3803174 (not c!661400)) b!3803166))

(assert (= start!356236 b!3803178))

(assert (= start!356236 b!3803168))

(assert (= start!356236 b!3803171))

(assert (= b!3803172 b!3803173))

(assert (= b!3803182 b!3803172))

(assert (= (and start!356236 ((_ is Cons!40357) rules!1265)) b!3803182))

(assert (= start!356236 b!3803167))

(declare-fun m!4334145 () Bool)

(assert (=> b!3803178 m!4334145))

(declare-fun m!4334147 () Bool)

(assert (=> b!3803169 m!4334147))

(declare-fun m!4334149 () Bool)

(assert (=> b!3803169 m!4334149))

(declare-fun m!4334151 () Bool)

(assert (=> b!3803169 m!4334151))

(declare-fun m!4334153 () Bool)

(assert (=> b!3803175 m!4334153))

(declare-fun m!4334155 () Bool)

(assert (=> b!3803175 m!4334155))

(declare-fun m!4334157 () Bool)

(assert (=> b!3803175 m!4334157))

(declare-fun m!4334159 () Bool)

(assert (=> b!3803175 m!4334159))

(declare-fun m!4334161 () Bool)

(assert (=> b!3803177 m!4334161))

(declare-fun m!4334163 () Bool)

(assert (=> b!3803180 m!4334163))

(assert (=> b!3803180 m!4334163))

(declare-fun m!4334165 () Bool)

(assert (=> b!3803180 m!4334165))

(declare-fun m!4334167 () Bool)

(assert (=> b!3803164 m!4334167))

(declare-fun m!4334169 () Bool)

(assert (=> b!3803164 m!4334169))

(declare-fun m!4334171 () Bool)

(assert (=> b!3803172 m!4334171))

(declare-fun m!4334173 () Bool)

(assert (=> b!3803172 m!4334173))

(declare-fun m!4334175 () Bool)

(assert (=> b!3803170 m!4334175))

(declare-fun m!4334177 () Bool)

(assert (=> b!3803167 m!4334177))

(declare-fun m!4334179 () Bool)

(assert (=> b!3803174 m!4334179))

(declare-fun m!4334181 () Bool)

(assert (=> b!3803174 m!4334181))

(declare-fun m!4334183 () Bool)

(assert (=> b!3803174 m!4334183))

(declare-fun m!4334185 () Bool)

(assert (=> b!3803174 m!4334185))

(assert (=> b!3803174 m!4334181))

(declare-fun m!4334187 () Bool)

(assert (=> b!3803174 m!4334187))

(declare-fun m!4334189 () Bool)

(assert (=> b!3803174 m!4334189))

(declare-fun m!4334191 () Bool)

(assert (=> b!3803174 m!4334191))

(declare-fun m!4334193 () Bool)

(assert (=> b!3803174 m!4334193))

(declare-fun m!4334195 () Bool)

(assert (=> b!3803174 m!4334195))

(declare-fun m!4334197 () Bool)

(assert (=> b!3803174 m!4334197))

(declare-fun m!4334199 () Bool)

(assert (=> b!3803174 m!4334199))

(declare-fun m!4334201 () Bool)

(assert (=> b!3803174 m!4334201))

(declare-fun m!4334203 () Bool)

(assert (=> b!3803174 m!4334203))

(assert (=> b!3803174 m!4334197))

(declare-fun m!4334205 () Bool)

(assert (=> b!3803174 m!4334205))

(declare-fun m!4334207 () Bool)

(assert (=> b!3803174 m!4334207))

(assert (=> b!3803174 m!4334205))

(declare-fun m!4334209 () Bool)

(assert (=> b!3803174 m!4334209))

(assert (=> b!3803174 m!4334191))

(declare-fun m!4334211 () Bool)

(assert (=> b!3803174 m!4334211))

(declare-fun m!4334213 () Bool)

(assert (=> b!3803174 m!4334213))

(assert (=> b!3803174 m!4334193))

(assert (=> b!3803174 m!4334179))

(declare-fun m!4334215 () Bool)

(assert (=> b!3803174 m!4334215))

(declare-fun m!4334217 () Bool)

(assert (=> b!3803179 m!4334217))

(declare-fun m!4334219 () Bool)

(assert (=> b!3803179 m!4334219))

(assert (=> b!3803179 m!4334219))

(declare-fun m!4334221 () Bool)

(assert (=> b!3803179 m!4334221))

(declare-fun m!4334223 () Bool)

(assert (=> b!3803179 m!4334223))

(declare-fun m!4334225 () Bool)

(assert (=> b!3803179 m!4334225))

(declare-fun m!4334227 () Bool)

(assert (=> b!3803181 m!4334227))

(declare-fun m!4334229 () Bool)

(assert (=> b!3803181 m!4334229))

(declare-fun m!4334231 () Bool)

(assert (=> b!3803181 m!4334231))

(declare-fun m!4334233 () Bool)

(assert (=> b!3803165 m!4334233))

(declare-fun m!4334235 () Bool)

(assert (=> b!3803165 m!4334235))

(declare-fun m!4334237 () Bool)

(assert (=> b!3803176 m!4334237))

(declare-fun m!4334239 () Bool)

(assert (=> start!356236 m!4334239))

(declare-fun m!4334241 () Bool)

(assert (=> start!356236 m!4334241))

(declare-fun m!4334243 () Bool)

(assert (=> start!356236 m!4334243))

(declare-fun m!4334245 () Bool)

(assert (=> start!356236 m!4334245))

(declare-fun m!4334247 () Bool)

(assert (=> b!3803168 m!4334247))

(declare-fun m!4334249 () Bool)

(assert (=> b!3803171 m!4334249))

(check-sat (not b!3803177) (not b!3803172) (not b!3803165) (not b!3803175) (not b!3803181) (not b!3803174) (not b!3803180) (not b_next!102037) b_and!282733 (not b!3803176) (not b!3803171) (not b!3803164) (not b_next!102039) (not b!3803168) (not b!3803179) (not b!3803182) (not start!356236) (not b!3803167) b_and!282731 (not b!3803178) (not b!3803169) (not b!3803170))
(check-sat b_and!282731 b_and!282733 (not b_next!102037) (not b_next!102039))
