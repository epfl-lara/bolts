; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49272 () Bool)

(assert start!49272)

(declare-fun b!534427 () Bool)

(declare-fun b_free!14537 () Bool)

(declare-fun b_next!14553 () Bool)

(assert (=> b!534427 (= b_free!14537 (not b_next!14553))))

(declare-fun tp!170536 () Bool)

(declare-fun b_and!52251 () Bool)

(assert (=> b!534427 (= tp!170536 b_and!52251)))

(declare-fun b_free!14539 () Bool)

(declare-fun b_next!14555 () Bool)

(assert (=> b!534427 (= b_free!14539 (not b_next!14555))))

(declare-fun tp!170531 () Bool)

(declare-fun b_and!52253 () Bool)

(assert (=> b!534427 (= tp!170531 b_and!52253)))

(declare-fun b!534423 () Bool)

(declare-fun b_free!14541 () Bool)

(declare-fun b_next!14557 () Bool)

(assert (=> b!534423 (= b_free!14541 (not b_next!14557))))

(declare-fun tp!170529 () Bool)

(declare-fun b_and!52255 () Bool)

(assert (=> b!534423 (= tp!170529 b_and!52255)))

(declare-fun b_free!14543 () Bool)

(declare-fun b_next!14559 () Bool)

(assert (=> b!534423 (= b_free!14543 (not b_next!14559))))

(declare-fun tp!170535 () Bool)

(declare-fun b_and!52257 () Bool)

(assert (=> b!534423 (= tp!170535 b_and!52257)))

(declare-fun b!534415 () Bool)

(declare-fun e!322031 () Bool)

(declare-fun e!322037 () Bool)

(declare-fun tp!170532 () Bool)

(assert (=> b!534415 (= e!322031 (and e!322037 tp!170532))))

(declare-fun b!534416 () Bool)

(declare-datatypes ((Unit!8980 0))(
  ( (Unit!8981) )
))
(declare-fun e!322028 () Unit!8980)

(declare-fun Unit!8982 () Unit!8980)

(assert (=> b!534416 (= e!322028 Unit!8982)))

(declare-fun b!534417 () Bool)

(declare-fun res!225905 () Bool)

(declare-fun e!322033 () Bool)

(assert (=> b!534417 (=> res!225905 e!322033)))

(declare-datatypes ((C!3472 0))(
  ( (C!3473 (val!1962 Int)) )
))
(declare-datatypes ((List!5155 0))(
  ( (Nil!5145) (Cons!5145 (h!10546 C!3472) (t!74012 List!5155)) )
))
(declare-fun lt!220249 () List!5155)

(declare-fun lt!220247 () Int)

(declare-fun size!4152 (List!5155) Int)

(assert (=> b!534417 (= res!225905 (< (size!4152 lt!220249) lt!220247))))

(declare-fun b!534418 () Bool)

(declare-fun e!322032 () Bool)

(declare-fun e!322020 () Bool)

(assert (=> b!534418 (= e!322032 e!322020)))

(declare-fun res!225908 () Bool)

(assert (=> b!534418 (=> (not res!225908) (not e!322020))))

(declare-datatypes ((Regex!1275 0))(
  ( (ElementMatch!1275 (c!101818 C!3472)) (Concat!2240 (regOne!3062 Regex!1275) (regTwo!3062 Regex!1275)) (EmptyExpr!1275) (Star!1275 (reg!1604 Regex!1275)) (EmptyLang!1275) (Union!1275 (regOne!3063 Regex!1275) (regTwo!3063 Regex!1275)) )
))
(declare-datatypes ((List!5156 0))(
  ( (Nil!5146) (Cons!5146 (h!10547 (_ BitVec 16)) (t!74013 List!5156)) )
))
(declare-datatypes ((String!6568 0))(
  ( (String!6569 (value!31659 String)) )
))
(declare-datatypes ((IArray!3317 0))(
  ( (IArray!3318 (innerList!1716 List!5155)) )
))
(declare-datatypes ((Conc!1658 0))(
  ( (Node!1658 (left!4325 Conc!1658) (right!4655 Conc!1658) (csize!3546 Int) (cheight!1869 Int)) (Leaf!2636 (xs!4295 IArray!3317) (csize!3547 Int)) (Empty!1658) )
))
(declare-datatypes ((BalanceConc!3324 0))(
  ( (BalanceConc!3325 (c!101819 Conc!1658)) )
))
(declare-datatypes ((TokenValue!965 0))(
  ( (FloatLiteralValue!1930 (text!7200 List!5156)) (TokenValueExt!964 (__x!3828 Int)) (Broken!4825 (value!31660 List!5156)) (Object!974) (End!965) (Def!965) (Underscore!965) (Match!965) (Else!965) (Error!965) (Case!965) (If!965) (Extends!965) (Abstract!965) (Class!965) (Val!965) (DelimiterValue!1930 (del!1025 List!5156)) (KeywordValue!971 (value!31661 List!5156)) (CommentValue!1930 (value!31662 List!5156)) (WhitespaceValue!1930 (value!31663 List!5156)) (IndentationValue!965 (value!31664 List!5156)) (String!6570) (Int32!965) (Broken!4826 (value!31665 List!5156)) (Boolean!966) (Unit!8983) (OperatorValue!968 (op!1025 List!5156)) (IdentifierValue!1930 (value!31666 List!5156)) (IdentifierValue!1931 (value!31667 List!5156)) (WhitespaceValue!1931 (value!31668 List!5156)) (True!1930) (False!1930) (Broken!4827 (value!31669 List!5156)) (Broken!4828 (value!31670 List!5156)) (True!1931) (RightBrace!965) (RightBracket!965) (Colon!965) (Null!965) (Comma!965) (LeftBracket!965) (False!1931) (LeftBrace!965) (ImaginaryLiteralValue!965 (text!7201 List!5156)) (StringLiteralValue!2895 (value!31671 List!5156)) (EOFValue!965 (value!31672 List!5156)) (IdentValue!965 (value!31673 List!5156)) (DelimiterValue!1931 (value!31674 List!5156)) (DedentValue!965 (value!31675 List!5156)) (NewLineValue!965 (value!31676 List!5156)) (IntegerValue!2895 (value!31677 (_ BitVec 32)) (text!7202 List!5156)) (IntegerValue!2896 (value!31678 Int) (text!7203 List!5156)) (Times!965) (Or!965) (Equal!965) (Minus!965) (Broken!4829 (value!31679 List!5156)) (And!965) (Div!965) (LessEqual!965) (Mod!965) (Concat!2241) (Not!965) (Plus!965) (SpaceValue!965 (value!31680 List!5156)) (IntegerValue!2897 (value!31681 Int) (text!7204 List!5156)) (StringLiteralValue!2896 (text!7205 List!5156)) (FloatLiteralValue!1931 (text!7206 List!5156)) (BytesLiteralValue!965 (value!31682 List!5156)) (CommentValue!1931 (value!31683 List!5156)) (StringLiteralValue!2897 (value!31684 List!5156)) (ErrorTokenValue!965 (msg!1026 List!5156)) )
))
(declare-datatypes ((TokenValueInjection!1698 0))(
  ( (TokenValueInjection!1699 (toValue!1788 Int) (toChars!1647 Int)) )
))
(declare-datatypes ((Rule!1682 0))(
  ( (Rule!1683 (regex!941 Regex!1275) (tag!1203 String!6568) (isSeparator!941 Bool) (transformation!941 TokenValueInjection!1698)) )
))
(declare-datatypes ((Token!1618 0))(
  ( (Token!1619 (value!31685 TokenValue!965) (rule!1643 Rule!1682) (size!4153 Int) (originalCharacters!980 List!5155)) )
))
(declare-datatypes ((tuple2!6240 0))(
  ( (tuple2!6241 (_1!3384 Token!1618) (_2!3384 List!5155)) )
))
(declare-datatypes ((Option!1291 0))(
  ( (None!1290) (Some!1290 (v!16097 tuple2!6240)) )
))
(declare-fun lt!220237 () Option!1291)

(get-info :version)

(assert (=> b!534418 (= res!225908 ((_ is Some!1290) lt!220237))))

(declare-datatypes ((List!5157 0))(
  ( (Nil!5147) (Cons!5147 (h!10548 Rule!1682) (t!74014 List!5157)) )
))
(declare-fun rules!3103 () List!5157)

(declare-datatypes ((LexerInterface!827 0))(
  ( (LexerInterfaceExt!824 (__x!3829 Int)) (Lexer!825) )
))
(declare-fun thiss!22590 () LexerInterface!827)

(declare-fun input!2705 () List!5155)

(declare-fun maxPrefix!525 (LexerInterface!827 List!5157 List!5155) Option!1291)

(assert (=> b!534418 (= lt!220237 (maxPrefix!525 thiss!22590 rules!3103 input!2705))))

(declare-fun b!534419 () Bool)

(declare-fun e!322026 () Bool)

(declare-fun tp!170534 () Bool)

(declare-fun inv!6458 (String!6568) Bool)

(declare-fun inv!6461 (TokenValueInjection!1698) Bool)

(assert (=> b!534419 (= e!322037 (and tp!170534 (inv!6458 (tag!1203 (h!10548 rules!3103))) (inv!6461 (transformation!941 (h!10548 rules!3103))) e!322026))))

(declare-fun b!534420 () Bool)

(declare-fun e!322021 () Bool)

(assert (=> b!534420 (= e!322021 e!322032)))

(declare-fun res!225912 () Bool)

(assert (=> b!534420 (=> (not res!225912) (not e!322032))))

(declare-fun suffix!1342 () List!5155)

(declare-fun token!491 () Token!1618)

(declare-fun lt!220236 () tuple2!6240)

(assert (=> b!534420 (= res!225912 (and (= (_1!3384 lt!220236) token!491) (= (_2!3384 lt!220236) suffix!1342)))))

(declare-fun lt!220248 () Option!1291)

(declare-fun get!1926 (Option!1291) tuple2!6240)

(assert (=> b!534420 (= lt!220236 (get!1926 lt!220248))))

(declare-fun b!534421 () Bool)

(declare-fun e!322030 () Bool)

(declare-fun tp_is_empty!2905 () Bool)

(declare-fun tp!170528 () Bool)

(assert (=> b!534421 (= e!322030 (and tp_is_empty!2905 tp!170528))))

(declare-fun b!534422 () Bool)

(declare-fun e!322023 () Bool)

(declare-fun tp!170533 () Bool)

(assert (=> b!534422 (= e!322023 (and tp_is_empty!2905 tp!170533))))

(assert (=> b!534423 (= e!322026 (and tp!170529 tp!170535))))

(declare-fun b!534424 () Bool)

(declare-fun e!322029 () Bool)

(assert (=> b!534424 (= e!322029 (not e!322033))))

(declare-fun res!225910 () Bool)

(assert (=> b!534424 (=> res!225910 e!322033)))

(declare-fun lt!220235 () List!5155)

(declare-fun isPrefix!583 (List!5155 List!5155) Bool)

(assert (=> b!534424 (= res!225910 (not (isPrefix!583 input!2705 lt!220235)))))

(declare-fun lt!220246 () List!5155)

(assert (=> b!534424 (isPrefix!583 lt!220246 lt!220235)))

(declare-fun lt!220234 () Unit!8980)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!434 (List!5155 List!5155) Unit!8980)

(assert (=> b!534424 (= lt!220234 (lemmaConcatTwoListThenFirstIsPrefix!434 lt!220246 suffix!1342))))

(assert (=> b!534424 (isPrefix!583 input!2705 lt!220249)))

(declare-fun lt!220242 () Unit!8980)

(assert (=> b!534424 (= lt!220242 (lemmaConcatTwoListThenFirstIsPrefix!434 input!2705 suffix!1342))))

(declare-fun e!322027 () Bool)

(assert (=> b!534424 e!322027))

(declare-fun res!225906 () Bool)

(assert (=> b!534424 (=> (not res!225906) (not e!322027))))

(declare-fun lt!220238 () TokenValue!965)

(assert (=> b!534424 (= res!225906 (= (value!31685 (_1!3384 (v!16097 lt!220237))) lt!220238))))

(declare-fun lt!220245 () List!5155)

(declare-fun apply!1216 (TokenValueInjection!1698 BalanceConc!3324) TokenValue!965)

(declare-fun seqFromList!1139 (List!5155) BalanceConc!3324)

(assert (=> b!534424 (= lt!220238 (apply!1216 (transformation!941 (rule!1643 (_1!3384 (v!16097 lt!220237)))) (seqFromList!1139 lt!220245)))))

(declare-fun lt!220229 () Unit!8980)

(declare-fun lemmaInv!89 (TokenValueInjection!1698) Unit!8980)

(assert (=> b!534424 (= lt!220229 (lemmaInv!89 (transformation!941 (rule!1643 token!491))))))

(declare-fun lt!220233 () Unit!8980)

(assert (=> b!534424 (= lt!220233 (lemmaInv!89 (transformation!941 (rule!1643 (_1!3384 (v!16097 lt!220237))))))))

(declare-fun ruleValid!161 (LexerInterface!827 Rule!1682) Bool)

(assert (=> b!534424 (ruleValid!161 thiss!22590 (rule!1643 token!491))))

(declare-fun lt!220231 () Unit!8980)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!20 (LexerInterface!827 Rule!1682 List!5157) Unit!8980)

(assert (=> b!534424 (= lt!220231 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!20 thiss!22590 (rule!1643 token!491) rules!3103))))

(assert (=> b!534424 (ruleValid!161 thiss!22590 (rule!1643 (_1!3384 (v!16097 lt!220237))))))

(declare-fun lt!220226 () Unit!8980)

(assert (=> b!534424 (= lt!220226 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!20 thiss!22590 (rule!1643 (_1!3384 (v!16097 lt!220237))) rules!3103))))

(assert (=> b!534424 (isPrefix!583 input!2705 input!2705)))

(declare-fun lt!220243 () Unit!8980)

(declare-fun lemmaIsPrefixRefl!323 (List!5155 List!5155) Unit!8980)

(assert (=> b!534424 (= lt!220243 (lemmaIsPrefixRefl!323 input!2705 input!2705))))

(declare-fun lt!220228 () List!5155)

(assert (=> b!534424 (= (_2!3384 (v!16097 lt!220237)) lt!220228)))

(declare-fun lt!220232 () Unit!8980)

(declare-fun lemmaSamePrefixThenSameSuffix!310 (List!5155 List!5155 List!5155 List!5155 List!5155) Unit!8980)

(assert (=> b!534424 (= lt!220232 (lemmaSamePrefixThenSameSuffix!310 lt!220245 (_2!3384 (v!16097 lt!220237)) lt!220245 lt!220228 input!2705))))

(declare-fun getSuffix!106 (List!5155 List!5155) List!5155)

(assert (=> b!534424 (= lt!220228 (getSuffix!106 input!2705 lt!220245))))

(declare-fun ++!1429 (List!5155 List!5155) List!5155)

(assert (=> b!534424 (isPrefix!583 lt!220245 (++!1429 lt!220245 (_2!3384 (v!16097 lt!220237))))))

(declare-fun lt!220241 () Unit!8980)

(assert (=> b!534424 (= lt!220241 (lemmaConcatTwoListThenFirstIsPrefix!434 lt!220245 (_2!3384 (v!16097 lt!220237))))))

(declare-fun lt!220230 () Unit!8980)

(declare-fun lemmaCharactersSize!20 (Token!1618) Unit!8980)

(assert (=> b!534424 (= lt!220230 (lemmaCharactersSize!20 token!491))))

(declare-fun lt!220240 () Unit!8980)

(assert (=> b!534424 (= lt!220240 (lemmaCharactersSize!20 (_1!3384 (v!16097 lt!220237))))))

(declare-fun lt!220239 () Unit!8980)

(assert (=> b!534424 (= lt!220239 e!322028)))

(declare-fun c!101817 () Bool)

(declare-fun lt!220244 () Int)

(assert (=> b!534424 (= c!101817 (> lt!220244 lt!220247))))

(assert (=> b!534424 (= lt!220247 (size!4152 lt!220246))))

(assert (=> b!534424 (= lt!220244 (size!4152 lt!220245))))

(declare-fun list!2141 (BalanceConc!3324) List!5155)

(declare-fun charsOf!570 (Token!1618) BalanceConc!3324)

(assert (=> b!534424 (= lt!220245 (list!2141 (charsOf!570 (_1!3384 (v!16097 lt!220237)))))))

(assert (=> b!534424 (= lt!220237 (Some!1290 (v!16097 lt!220237)))))

(declare-fun lt!220227 () Unit!8980)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!26 (List!5155 List!5155 List!5155 List!5155) Unit!8980)

(assert (=> b!534424 (= lt!220227 (lemmaConcatSameAndSameSizesThenSameLists!26 lt!220246 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!534425 () Bool)

(declare-fun res!225904 () Bool)

(declare-fun e!322022 () Bool)

(assert (=> b!534425 (=> (not res!225904) (not e!322022))))

(declare-fun rulesInvariant!790 (LexerInterface!827 List!5157) Bool)

(assert (=> b!534425 (= res!225904 (rulesInvariant!790 thiss!22590 rules!3103))))

(declare-fun e!322019 () Bool)

(declare-fun e!322038 () Bool)

(declare-fun tp!170527 () Bool)

(declare-fun b!534426 () Bool)

(declare-fun inv!21 (TokenValue!965) Bool)

(assert (=> b!534426 (= e!322038 (and (inv!21 (value!31685 token!491)) e!322019 tp!170527))))

(declare-fun e!322034 () Bool)

(assert (=> b!534427 (= e!322034 (and tp!170536 tp!170531))))

(declare-fun b!534428 () Bool)

(declare-fun Unit!8984 () Unit!8980)

(assert (=> b!534428 (= e!322028 Unit!8984)))

(assert (=> b!534428 false))

(declare-fun b!534429 () Bool)

(declare-fun res!225911 () Bool)

(assert (=> b!534429 (=> (not res!225911) (not e!322022))))

(declare-fun isEmpty!3722 (List!5157) Bool)

(assert (=> b!534429 (= res!225911 (not (isEmpty!3722 rules!3103)))))

(declare-fun b!534430 () Bool)

(assert (=> b!534430 (= e!322027 (and (= (size!4153 (_1!3384 (v!16097 lt!220237))) lt!220244) (= (originalCharacters!980 (_1!3384 (v!16097 lt!220237))) lt!220245) (= (v!16097 lt!220237) (tuple2!6241 (Token!1619 lt!220238 (rule!1643 (_1!3384 (v!16097 lt!220237))) lt!220244 lt!220245) lt!220228))))))

(declare-fun b!534431 () Bool)

(assert (=> b!534431 (= e!322020 e!322029)))

(declare-fun res!225915 () Bool)

(assert (=> b!534431 (=> (not res!225915) (not e!322029))))

(assert (=> b!534431 (= res!225915 (= lt!220235 lt!220249))))

(assert (=> b!534431 (= lt!220235 (++!1429 lt!220246 suffix!1342))))

(declare-fun tp!170530 () Bool)

(declare-fun b!534432 () Bool)

(assert (=> b!534432 (= e!322019 (and tp!170530 (inv!6458 (tag!1203 (rule!1643 token!491))) (inv!6461 (transformation!941 (rule!1643 token!491))) e!322034))))

(declare-fun b!534433 () Bool)

(declare-fun e!322036 () Bool)

(assert (=> b!534433 (= e!322022 e!322036)))

(declare-fun res!225909 () Bool)

(assert (=> b!534433 (=> (not res!225909) (not e!322036))))

(assert (=> b!534433 (= res!225909 (= lt!220246 input!2705))))

(assert (=> b!534433 (= lt!220246 (list!2141 (charsOf!570 token!491)))))

(declare-fun res!225914 () Bool)

(assert (=> start!49272 (=> (not res!225914) (not e!322022))))

(assert (=> start!49272 (= res!225914 ((_ is Lexer!825) thiss!22590))))

(assert (=> start!49272 e!322022))

(assert (=> start!49272 e!322023))

(assert (=> start!49272 e!322031))

(declare-fun inv!6462 (Token!1618) Bool)

(assert (=> start!49272 (and (inv!6462 token!491) e!322038)))

(assert (=> start!49272 true))

(assert (=> start!49272 e!322030))

(declare-fun b!534434 () Bool)

(assert (=> b!534434 (= e!322033 (isPrefix!583 lt!220246 lt!220249))))

(declare-fun b!534435 () Bool)

(declare-fun res!225913 () Bool)

(assert (=> b!534435 (=> (not res!225913) (not e!322027))))

(assert (=> b!534435 (= res!225913 (= (size!4153 (_1!3384 (v!16097 lt!220237))) (size!4152 (originalCharacters!980 (_1!3384 (v!16097 lt!220237))))))))

(declare-fun b!534436 () Bool)

(declare-fun res!225907 () Bool)

(assert (=> b!534436 (=> (not res!225907) (not e!322022))))

(declare-fun isEmpty!3723 (List!5155) Bool)

(assert (=> b!534436 (= res!225907 (not (isEmpty!3723 input!2705)))))

(declare-fun b!534437 () Bool)

(assert (=> b!534437 (= e!322036 e!322021)))

(declare-fun res!225916 () Bool)

(assert (=> b!534437 (=> (not res!225916) (not e!322021))))

(declare-fun isDefined!1103 (Option!1291) Bool)

(assert (=> b!534437 (= res!225916 (isDefined!1103 lt!220248))))

(assert (=> b!534437 (= lt!220248 (maxPrefix!525 thiss!22590 rules!3103 lt!220249))))

(assert (=> b!534437 (= lt!220249 (++!1429 input!2705 suffix!1342))))

(assert (= (and start!49272 res!225914) b!534429))

(assert (= (and b!534429 res!225911) b!534425))

(assert (= (and b!534425 res!225904) b!534436))

(assert (= (and b!534436 res!225907) b!534433))

(assert (= (and b!534433 res!225909) b!534437))

(assert (= (and b!534437 res!225916) b!534420))

(assert (= (and b!534420 res!225912) b!534418))

(assert (= (and b!534418 res!225908) b!534431))

(assert (= (and b!534431 res!225915) b!534424))

(assert (= (and b!534424 c!101817) b!534428))

(assert (= (and b!534424 (not c!101817)) b!534416))

(assert (= (and b!534424 res!225906) b!534435))

(assert (= (and b!534435 res!225913) b!534430))

(assert (= (and b!534424 (not res!225910)) b!534417))

(assert (= (and b!534417 (not res!225905)) b!534434))

(assert (= (and start!49272 ((_ is Cons!5145) suffix!1342)) b!534422))

(assert (= b!534419 b!534423))

(assert (= b!534415 b!534419))

(assert (= (and start!49272 ((_ is Cons!5147) rules!3103)) b!534415))

(assert (= b!534432 b!534427))

(assert (= b!534426 b!534432))

(assert (= start!49272 b!534426))

(assert (= (and start!49272 ((_ is Cons!5145) input!2705)) b!534421))

(declare-fun m!780037 () Bool)

(assert (=> start!49272 m!780037))

(declare-fun m!780039 () Bool)

(assert (=> b!534426 m!780039))

(declare-fun m!780041 () Bool)

(assert (=> b!534434 m!780041))

(declare-fun m!780043 () Bool)

(assert (=> b!534425 m!780043))

(declare-fun m!780045 () Bool)

(assert (=> b!534419 m!780045))

(declare-fun m!780047 () Bool)

(assert (=> b!534419 m!780047))

(declare-fun m!780049 () Bool)

(assert (=> b!534420 m!780049))

(declare-fun m!780051 () Bool)

(assert (=> b!534437 m!780051))

(declare-fun m!780053 () Bool)

(assert (=> b!534437 m!780053))

(declare-fun m!780055 () Bool)

(assert (=> b!534437 m!780055))

(declare-fun m!780057 () Bool)

(assert (=> b!534431 m!780057))

(declare-fun m!780059 () Bool)

(assert (=> b!534417 m!780059))

(declare-fun m!780061 () Bool)

(assert (=> b!534418 m!780061))

(declare-fun m!780063 () Bool)

(assert (=> b!534435 m!780063))

(declare-fun m!780065 () Bool)

(assert (=> b!534433 m!780065))

(assert (=> b!534433 m!780065))

(declare-fun m!780067 () Bool)

(assert (=> b!534433 m!780067))

(declare-fun m!780069 () Bool)

(assert (=> b!534436 m!780069))

(declare-fun m!780071 () Bool)

(assert (=> b!534429 m!780071))

(declare-fun m!780073 () Bool)

(assert (=> b!534432 m!780073))

(declare-fun m!780075 () Bool)

(assert (=> b!534432 m!780075))

(declare-fun m!780077 () Bool)

(assert (=> b!534424 m!780077))

(declare-fun m!780079 () Bool)

(assert (=> b!534424 m!780079))

(declare-fun m!780081 () Bool)

(assert (=> b!534424 m!780081))

(declare-fun m!780083 () Bool)

(assert (=> b!534424 m!780083))

(declare-fun m!780085 () Bool)

(assert (=> b!534424 m!780085))

(declare-fun m!780087 () Bool)

(assert (=> b!534424 m!780087))

(declare-fun m!780089 () Bool)

(assert (=> b!534424 m!780089))

(declare-fun m!780091 () Bool)

(assert (=> b!534424 m!780091))

(declare-fun m!780093 () Bool)

(assert (=> b!534424 m!780093))

(declare-fun m!780095 () Bool)

(assert (=> b!534424 m!780095))

(declare-fun m!780097 () Bool)

(assert (=> b!534424 m!780097))

(declare-fun m!780099 () Bool)

(assert (=> b!534424 m!780099))

(declare-fun m!780101 () Bool)

(assert (=> b!534424 m!780101))

(declare-fun m!780103 () Bool)

(assert (=> b!534424 m!780103))

(declare-fun m!780105 () Bool)

(assert (=> b!534424 m!780105))

(declare-fun m!780107 () Bool)

(assert (=> b!534424 m!780107))

(declare-fun m!780109 () Bool)

(assert (=> b!534424 m!780109))

(declare-fun m!780111 () Bool)

(assert (=> b!534424 m!780111))

(declare-fun m!780113 () Bool)

(assert (=> b!534424 m!780113))

(assert (=> b!534424 m!780083))

(declare-fun m!780115 () Bool)

(assert (=> b!534424 m!780115))

(declare-fun m!780117 () Bool)

(assert (=> b!534424 m!780117))

(assert (=> b!534424 m!780101))

(assert (=> b!534424 m!780089))

(declare-fun m!780119 () Bool)

(assert (=> b!534424 m!780119))

(declare-fun m!780121 () Bool)

(assert (=> b!534424 m!780121))

(declare-fun m!780123 () Bool)

(assert (=> b!534424 m!780123))

(declare-fun m!780125 () Bool)

(assert (=> b!534424 m!780125))

(declare-fun m!780127 () Bool)

(assert (=> b!534424 m!780127))

(declare-fun m!780129 () Bool)

(assert (=> b!534424 m!780129))

(check-sat tp_is_empty!2905 (not b_next!14559) (not b!534434) (not b!534429) (not b_next!14557) b_and!52257 (not b!534431) (not b!534424) (not start!49272) (not b!534422) (not b_next!14555) (not b!534420) (not b!534418) (not b!534421) (not b!534435) b_and!52255 (not b!534426) (not b!534425) (not b_next!14553) (not b!534433) (not b!534417) b_and!52251 (not b!534437) (not b!534436) (not b!534415) (not b!534419) b_and!52253 (not b!534432))
(check-sat (not b_next!14559) (not b_next!14557) b_and!52257 (not b_next!14553) (not b_next!14555) b_and!52251 b_and!52255 b_and!52253)
