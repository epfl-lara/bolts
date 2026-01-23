; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!317506 () Bool)

(assert start!317506)

(declare-fun b!3399996 () Bool)

(declare-fun b_free!89033 () Bool)

(declare-fun b_next!89737 () Bool)

(assert (=> b!3399996 (= b_free!89033 (not b_next!89737))))

(declare-fun tp!1061101 () Bool)

(declare-fun b_and!237219 () Bool)

(assert (=> b!3399996 (= tp!1061101 b_and!237219)))

(declare-fun b_free!89035 () Bool)

(declare-fun b_next!89739 () Bool)

(assert (=> b!3399996 (= b_free!89035 (not b_next!89739))))

(declare-fun tp!1061100 () Bool)

(declare-fun b_and!237221 () Bool)

(assert (=> b!3399996 (= tp!1061100 b_and!237221)))

(declare-fun b!3399977 () Bool)

(declare-fun b_free!89037 () Bool)

(declare-fun b_next!89741 () Bool)

(assert (=> b!3399977 (= b_free!89037 (not b_next!89741))))

(declare-fun tp!1061093 () Bool)

(declare-fun b_and!237223 () Bool)

(assert (=> b!3399977 (= tp!1061093 b_and!237223)))

(declare-fun b_free!89039 () Bool)

(declare-fun b_next!89743 () Bool)

(assert (=> b!3399977 (= b_free!89039 (not b_next!89743))))

(declare-fun tp!1061099 () Bool)

(declare-fun b_and!237225 () Bool)

(assert (=> b!3399977 (= tp!1061099 b_and!237225)))

(declare-fun b!3399970 () Bool)

(declare-fun b_free!89041 () Bool)

(declare-fun b_next!89745 () Bool)

(assert (=> b!3399970 (= b_free!89041 (not b_next!89745))))

(declare-fun tp!1061094 () Bool)

(declare-fun b_and!237227 () Bool)

(assert (=> b!3399970 (= tp!1061094 b_and!237227)))

(declare-fun b_free!89043 () Bool)

(declare-fun b_next!89747 () Bool)

(assert (=> b!3399970 (= b_free!89043 (not b_next!89747))))

(declare-fun tp!1061095 () Bool)

(declare-fun b_and!237229 () Bool)

(assert (=> b!3399970 (= tp!1061095 b_and!237229)))

(declare-fun b!3399969 () Bool)

(declare-fun e!2110549 () Bool)

(declare-fun e!2110544 () Bool)

(assert (=> b!3399969 (= e!2110549 e!2110544)))

(declare-fun res!1375679 () Bool)

(assert (=> b!3399969 (=> res!1375679 e!2110544)))

(declare-datatypes ((C!20504 0))(
  ( (C!20505 (val!12300 Int)) )
))
(declare-datatypes ((Regex!10159 0))(
  ( (ElementMatch!10159 (c!579554 C!20504)) (Concat!15789 (regOne!20830 Regex!10159) (regTwo!20830 Regex!10159)) (EmptyExpr!10159) (Star!10159 (reg!10488 Regex!10159)) (EmptyLang!10159) (Union!10159 (regOne!20831 Regex!10159) (regTwo!20831 Regex!10159)) )
))
(declare-datatypes ((List!37106 0))(
  ( (Nil!36982) (Cons!36982 (h!42402 (_ BitVec 16)) (t!265783 List!37106)) )
))
(declare-datatypes ((TokenValue!5630 0))(
  ( (FloatLiteralValue!11260 (text!39855 List!37106)) (TokenValueExt!5629 (__x!23477 Int)) (Broken!28150 (value!174334 List!37106)) (Object!5753) (End!5630) (Def!5630) (Underscore!5630) (Match!5630) (Else!5630) (Error!5630) (Case!5630) (If!5630) (Extends!5630) (Abstract!5630) (Class!5630) (Val!5630) (DelimiterValue!11260 (del!5690 List!37106)) (KeywordValue!5636 (value!174335 List!37106)) (CommentValue!11260 (value!174336 List!37106)) (WhitespaceValue!11260 (value!174337 List!37106)) (IndentationValue!5630 (value!174338 List!37106)) (String!41483) (Int32!5630) (Broken!28151 (value!174339 List!37106)) (Boolean!5631) (Unit!52147) (OperatorValue!5633 (op!5690 List!37106)) (IdentifierValue!11260 (value!174340 List!37106)) (IdentifierValue!11261 (value!174341 List!37106)) (WhitespaceValue!11261 (value!174342 List!37106)) (True!11260) (False!11260) (Broken!28152 (value!174343 List!37106)) (Broken!28153 (value!174344 List!37106)) (True!11261) (RightBrace!5630) (RightBracket!5630) (Colon!5630) (Null!5630) (Comma!5630) (LeftBracket!5630) (False!11261) (LeftBrace!5630) (ImaginaryLiteralValue!5630 (text!39856 List!37106)) (StringLiteralValue!16890 (value!174345 List!37106)) (EOFValue!5630 (value!174346 List!37106)) (IdentValue!5630 (value!174347 List!37106)) (DelimiterValue!11261 (value!174348 List!37106)) (DedentValue!5630 (value!174349 List!37106)) (NewLineValue!5630 (value!174350 List!37106)) (IntegerValue!16890 (value!174351 (_ BitVec 32)) (text!39857 List!37106)) (IntegerValue!16891 (value!174352 Int) (text!39858 List!37106)) (Times!5630) (Or!5630) (Equal!5630) (Minus!5630) (Broken!28154 (value!174353 List!37106)) (And!5630) (Div!5630) (LessEqual!5630) (Mod!5630) (Concat!15790) (Not!5630) (Plus!5630) (SpaceValue!5630 (value!174354 List!37106)) (IntegerValue!16892 (value!174355 Int) (text!39859 List!37106)) (StringLiteralValue!16891 (text!39860 List!37106)) (FloatLiteralValue!11261 (text!39861 List!37106)) (BytesLiteralValue!5630 (value!174356 List!37106)) (CommentValue!11261 (value!174357 List!37106)) (StringLiteralValue!16892 (value!174358 List!37106)) (ErrorTokenValue!5630 (msg!5691 List!37106)) )
))
(declare-datatypes ((List!37107 0))(
  ( (Nil!36983) (Cons!36983 (h!42403 C!20504) (t!265784 List!37107)) )
))
(declare-datatypes ((IArray!22355 0))(
  ( (IArray!22356 (innerList!11235 List!37107)) )
))
(declare-datatypes ((Conc!11175 0))(
  ( (Node!11175 (left!28833 Conc!11175) (right!29163 Conc!11175) (csize!22580 Int) (cheight!11386 Int)) (Leaf!17486 (xs!14333 IArray!22355) (csize!22581 Int)) (Empty!11175) )
))
(declare-datatypes ((BalanceConc!21964 0))(
  ( (BalanceConc!21965 (c!579555 Conc!11175)) )
))
(declare-datatypes ((String!41484 0))(
  ( (String!41485 (value!174359 String)) )
))
(declare-datatypes ((TokenValueInjection!10688 0))(
  ( (TokenValueInjection!10689 (toValue!7604 Int) (toChars!7463 Int)) )
))
(declare-datatypes ((Rule!10600 0))(
  ( (Rule!10601 (regex!5400 Regex!10159) (tag!5984 String!41484) (isSeparator!5400 Bool) (transformation!5400 TokenValueInjection!10688)) )
))
(declare-datatypes ((Token!10166 0))(
  ( (Token!10167 (value!174360 TokenValue!5630) (rule!7962 Rule!10600) (size!27999 Int) (originalCharacters!6114 List!37107)) )
))
(declare-datatypes ((tuple2!36616 0))(
  ( (tuple2!36617 (_1!21442 Token!10166) (_2!21442 List!37107)) )
))
(declare-datatypes ((Option!7440 0))(
  ( (None!7439) (Some!7439 (v!36611 tuple2!36616)) )
))
(declare-fun lt!1156139 () Option!7440)

(declare-fun isDefined!5742 (Option!7440) Bool)

(assert (=> b!3399969 (= res!1375679 (not (isDefined!5742 lt!1156139)))))

(declare-fun lt!1156137 () List!37107)

(declare-datatypes ((LexerInterface!4989 0))(
  ( (LexerInterfaceExt!4986 (__x!23478 Int)) (Lexer!4987) )
))
(declare-fun thiss!18206 () LexerInterface!4989)

(declare-datatypes ((List!37108 0))(
  ( (Nil!36984) (Cons!36984 (h!42404 Rule!10600) (t!265785 List!37108)) )
))
(declare-fun rules!2135 () List!37108)

(declare-fun maxPrefix!2555 (LexerInterface!4989 List!37108 List!37107) Option!7440)

(assert (=> b!3399969 (= lt!1156139 (maxPrefix!2555 thiss!18206 rules!2135 lt!1156137))))

(declare-datatypes ((List!37109 0))(
  ( (Nil!36985) (Cons!36985 (h!42405 Token!10166) (t!265786 List!37109)) )
))
(declare-fun tokens!494 () List!37109)

(declare-datatypes ((Unit!52148 0))(
  ( (Unit!52149) )
))
(declare-fun lt!1156143 () Unit!52148)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!978 (LexerInterface!4989 List!37108 List!37109 Token!10166) Unit!52148)

(assert (=> b!3399969 (= lt!1156143 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!978 thiss!18206 rules!2135 tokens!494 (h!42405 tokens!494)))))

(declare-fun e!2110532 () Bool)

(assert (=> b!3399970 (= e!2110532 (and tp!1061094 tp!1061095))))

(declare-fun b!3399971 () Bool)

(declare-fun e!2110548 () Bool)

(declare-fun e!2110533 () Bool)

(declare-fun tp!1061090 () Bool)

(assert (=> b!3399971 (= e!2110548 (and e!2110533 tp!1061090))))

(declare-fun b!3399972 () Bool)

(declare-fun res!1375677 () Bool)

(declare-fun e!2110543 () Bool)

(assert (=> b!3399972 (=> res!1375677 e!2110543)))

(declare-datatypes ((IArray!22357 0))(
  ( (IArray!22358 (innerList!11236 List!37109)) )
))
(declare-datatypes ((Conc!11176 0))(
  ( (Node!11176 (left!28834 Conc!11176) (right!29164 Conc!11176) (csize!22582 Int) (cheight!11387 Int)) (Leaf!17487 (xs!14334 IArray!22357) (csize!22583 Int)) (Empty!11176) )
))
(declare-datatypes ((BalanceConc!21966 0))(
  ( (BalanceConc!21967 (c!579556 Conc!11176)) )
))
(declare-fun isEmpty!21248 (BalanceConc!21966) Bool)

(declare-datatypes ((tuple2!36618 0))(
  ( (tuple2!36619 (_1!21443 BalanceConc!21966) (_2!21443 BalanceConc!21964)) )
))
(declare-fun lex!2315 (LexerInterface!4989 List!37108 BalanceConc!21964) tuple2!36618)

(declare-fun seqFromList!3853 (List!37107) BalanceConc!21964)

(assert (=> b!3399972 (= res!1375677 (isEmpty!21248 (_1!21443 (lex!2315 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137)))))))

(declare-fun b!3399973 () Bool)

(declare-fun res!1375674 () Bool)

(declare-fun e!2110540 () Bool)

(assert (=> b!3399973 (=> (not res!1375674) (not e!2110540))))

(declare-fun separatorToken!241 () Token!10166)

(declare-fun rulesProduceIndividualToken!2481 (LexerInterface!4989 List!37108 Token!10166) Bool)

(assert (=> b!3399973 (= res!1375674 (rulesProduceIndividualToken!2481 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3399974 () Bool)

(declare-fun res!1375675 () Bool)

(assert (=> b!3399974 (=> (not res!1375675) (not e!2110540))))

(declare-fun isEmpty!21249 (List!37108) Bool)

(assert (=> b!3399974 (= res!1375675 (not (isEmpty!21249 rules!2135)))))

(declare-fun b!3399975 () Bool)

(declare-fun e!2110550 () Bool)

(declare-fun e!2110536 () Bool)

(assert (=> b!3399975 (= e!2110550 e!2110536)))

(declare-fun res!1375688 () Bool)

(assert (=> b!3399975 (=> res!1375688 e!2110536)))

(declare-fun lt!1156140 () List!37107)

(declare-fun lt!1156144 () List!37107)

(declare-fun ++!9069 (List!37107 List!37107) List!37107)

(declare-fun list!13409 (BalanceConc!21964) List!37107)

(declare-fun charsOf!3414 (Token!10166) BalanceConc!21964)

(declare-fun printWithSeparatorTokenList!276 (LexerInterface!4989 List!37109 Token!10166) List!37107)

(assert (=> b!3399975 (= res!1375688 (not (= lt!1156144 (++!9069 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140) (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1156146 () List!37107)

(assert (=> b!3399975 (= lt!1156146 (++!9069 lt!1156140 lt!1156144))))

(assert (=> b!3399975 (= lt!1156140 (list!13409 (charsOf!3414 separatorToken!241)))))

(assert (=> b!3399975 (= lt!1156144 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 tokens!494) separatorToken!241))))

(declare-fun lt!1156149 () List!37107)

(assert (=> b!3399975 (= lt!1156149 (printWithSeparatorTokenList!276 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3399976 () Bool)

(declare-fun res!1375680 () Bool)

(assert (=> b!3399976 (=> res!1375680 e!2110543)))

(assert (=> b!3399976 (= res!1375680 (not (rulesProduceIndividualToken!2481 thiss!18206 rules!2135 (h!42405 tokens!494))))))

(declare-fun e!2110534 () Bool)

(assert (=> b!3399977 (= e!2110534 (and tp!1061093 tp!1061099))))

(declare-fun b!3399978 () Bool)

(declare-fun res!1375676 () Bool)

(assert (=> b!3399978 (=> (not res!1375676) (not e!2110540))))

(assert (=> b!3399978 (= res!1375676 (isSeparator!5400 (rule!7962 separatorToken!241)))))

(declare-fun b!3399980 () Bool)

(declare-fun e!2110539 () Bool)

(assert (=> b!3399980 (= e!2110539 e!2110543)))

(declare-fun res!1375682 () Bool)

(assert (=> b!3399980 (=> res!1375682 e!2110543)))

(declare-fun lt!1156150 () List!37107)

(declare-fun lt!1156141 () List!37107)

(assert (=> b!3399980 (= res!1375682 (or (not (= lt!1156150 lt!1156137)) (not (= lt!1156141 lt!1156137))))))

(assert (=> b!3399980 (= lt!1156137 (list!13409 (charsOf!3414 (h!42405 tokens!494))))))

(declare-fun b!3399981 () Bool)

(declare-fun res!1375678 () Bool)

(assert (=> b!3399981 (=> (not res!1375678) (not e!2110540))))

(get-info :version)

(assert (=> b!3399981 (= res!1375678 (and (not ((_ is Nil!36985) tokens!494)) (not ((_ is Nil!36985) (t!265786 tokens!494)))))))

(declare-fun b!3399982 () Bool)

(declare-fun e!2110546 () Bool)

(assert (=> b!3399982 (= e!2110536 e!2110546)))

(declare-fun res!1375683 () Bool)

(assert (=> b!3399982 (=> res!1375683 e!2110546)))

(declare-fun lt!1156148 () List!37107)

(assert (=> b!3399982 (= res!1375683 (not (= lt!1156149 lt!1156148)))))

(assert (=> b!3399982 (= lt!1156148 (++!9069 (++!9069 lt!1156137 lt!1156140) lt!1156144))))

(declare-fun tp!1061091 () Bool)

(declare-fun b!3399983 () Bool)

(declare-fun e!2110553 () Bool)

(declare-fun inv!50085 (String!41484) Bool)

(declare-fun inv!50088 (TokenValueInjection!10688) Bool)

(assert (=> b!3399983 (= e!2110553 (and tp!1061091 (inv!50085 (tag!5984 (rule!7962 (h!42405 tokens!494)))) (inv!50088 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) e!2110534))))

(declare-fun b!3399984 () Bool)

(declare-fun tp!1061098 () Bool)

(assert (=> b!3399984 (= e!2110533 (and tp!1061098 (inv!50085 (tag!5984 (h!42404 rules!2135))) (inv!50088 (transformation!5400 (h!42404 rules!2135))) e!2110532))))

(declare-fun b!3399985 () Bool)

(assert (=> b!3399985 (= e!2110540 (not e!2110539))))

(declare-fun res!1375684 () Bool)

(assert (=> b!3399985 (=> res!1375684 e!2110539)))

(assert (=> b!3399985 (= res!1375684 (not (= lt!1156141 lt!1156150)))))

(declare-fun printList!1537 (LexerInterface!4989 List!37109) List!37107)

(assert (=> b!3399985 (= lt!1156150 (printList!1537 thiss!18206 (Cons!36985 (h!42405 tokens!494) Nil!36985)))))

(declare-fun lt!1156138 () BalanceConc!21964)

(assert (=> b!3399985 (= lt!1156141 (list!13409 lt!1156138))))

(declare-fun lt!1156135 () BalanceConc!21966)

(declare-fun printTailRec!1484 (LexerInterface!4989 BalanceConc!21966 Int BalanceConc!21964) BalanceConc!21964)

(assert (=> b!3399985 (= lt!1156138 (printTailRec!1484 thiss!18206 lt!1156135 0 (BalanceConc!21965 Empty!11175)))))

(declare-fun print!2054 (LexerInterface!4989 BalanceConc!21966) BalanceConc!21964)

(assert (=> b!3399985 (= lt!1156138 (print!2054 thiss!18206 lt!1156135))))

(declare-fun singletonSeq!2496 (Token!10166) BalanceConc!21966)

(assert (=> b!3399985 (= lt!1156135 (singletonSeq!2496 (h!42405 tokens!494)))))

(declare-fun b!3399986 () Bool)

(assert (=> b!3399986 (= e!2110546 e!2110549)))

(declare-fun res!1375687 () Bool)

(assert (=> b!3399986 (=> res!1375687 e!2110549)))

(declare-fun lt!1156147 () List!37107)

(assert (=> b!3399986 (= res!1375687 (not (= lt!1156149 lt!1156147)))))

(assert (=> b!3399986 (= lt!1156148 lt!1156147)))

(assert (=> b!3399986 (= lt!1156147 (++!9069 lt!1156137 lt!1156146))))

(declare-fun lt!1156136 () Unit!52148)

(declare-fun lemmaConcatAssociativity!1904 (List!37107 List!37107 List!37107) Unit!52148)

(assert (=> b!3399986 (= lt!1156136 (lemmaConcatAssociativity!1904 lt!1156137 lt!1156140 lt!1156144))))

(declare-fun res!1375686 () Bool)

(assert (=> start!317506 (=> (not res!1375686) (not e!2110540))))

(assert (=> start!317506 (= res!1375686 ((_ is Lexer!4987) thiss!18206))))

(assert (=> start!317506 e!2110540))

(assert (=> start!317506 true))

(assert (=> start!317506 e!2110548))

(declare-fun e!2110547 () Bool)

(assert (=> start!317506 e!2110547))

(declare-fun e!2110541 () Bool)

(declare-fun inv!50089 (Token!10166) Bool)

(assert (=> start!317506 (and (inv!50089 separatorToken!241) e!2110541)))

(declare-fun b!3399979 () Bool)

(declare-fun res!1375689 () Bool)

(assert (=> b!3399979 (=> (not res!1375689) (not e!2110540))))

(declare-fun rulesInvariant!4386 (LexerInterface!4989 List!37108) Bool)

(assert (=> b!3399979 (= res!1375689 (rulesInvariant!4386 thiss!18206 rules!2135))))

(declare-fun e!2110538 () Bool)

(declare-fun b!3399987 () Bool)

(declare-fun tp!1061096 () Bool)

(assert (=> b!3399987 (= e!2110547 (and (inv!50089 (h!42405 tokens!494)) e!2110538 tp!1061096))))

(declare-fun e!2110551 () Bool)

(declare-fun b!3399988 () Bool)

(declare-fun e!2110537 () Bool)

(declare-fun tp!1061092 () Bool)

(assert (=> b!3399988 (= e!2110537 (and tp!1061092 (inv!50085 (tag!5984 (rule!7962 separatorToken!241))) (inv!50088 (transformation!5400 (rule!7962 separatorToken!241))) e!2110551))))

(declare-fun b!3399989 () Bool)

(declare-fun res!1375673 () Bool)

(assert (=> b!3399989 (=> (not res!1375673) (not e!2110540))))

(declare-fun sepAndNonSepRulesDisjointChars!1594 (List!37108 List!37108) Bool)

(assert (=> b!3399989 (= res!1375673 (sepAndNonSepRulesDisjointChars!1594 rules!2135 rules!2135))))

(declare-fun b!3399990 () Bool)

(declare-fun tp!1061102 () Bool)

(declare-fun inv!21 (TokenValue!5630) Bool)

(assert (=> b!3399990 (= e!2110538 (and (inv!21 (value!174360 (h!42405 tokens!494))) e!2110553 tp!1061102))))

(declare-fun b!3399991 () Bool)

(assert (=> b!3399991 (= e!2110543 e!2110550)))

(declare-fun res!1375685 () Bool)

(assert (=> b!3399991 (=> res!1375685 e!2110550)))

(assert (=> b!3399991 (= res!1375685 (or (isSeparator!5400 (rule!7962 (h!42405 tokens!494))) (isSeparator!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))))))

(declare-fun lt!1156145 () Unit!52148)

(declare-fun lambda!120961 () Int)

(declare-fun forallContained!1347 (List!37109 Int Token!10166) Unit!52148)

(assert (=> b!3399991 (= lt!1156145 (forallContained!1347 tokens!494 lambda!120961 (h!42405 (t!265786 tokens!494))))))

(declare-fun lt!1156142 () Unit!52148)

(assert (=> b!3399991 (= lt!1156142 (forallContained!1347 tokens!494 lambda!120961 (h!42405 tokens!494)))))

(declare-fun b!3399992 () Bool)

(declare-fun get!11811 (Option!7440) tuple2!36616)

(assert (=> b!3399992 (= e!2110544 (= (_1!21442 (get!11811 lt!1156139)) (h!42405 tokens!494)))))

(declare-fun b!3399993 () Bool)

(declare-fun res!1375690 () Bool)

(assert (=> b!3399993 (=> (not res!1375690) (not e!2110540))))

(declare-fun rulesProduceEachTokenIndividually!1440 (LexerInterface!4989 List!37108 BalanceConc!21966) Bool)

(declare-fun seqFromList!3854 (List!37109) BalanceConc!21966)

(assert (=> b!3399993 (= res!1375690 (rulesProduceEachTokenIndividually!1440 thiss!18206 rules!2135 (seqFromList!3854 tokens!494)))))

(declare-fun b!3399994 () Bool)

(declare-fun res!1375681 () Bool)

(assert (=> b!3399994 (=> (not res!1375681) (not e!2110540))))

(declare-fun forall!7821 (List!37109 Int) Bool)

(assert (=> b!3399994 (= res!1375681 (forall!7821 tokens!494 lambda!120961))))

(declare-fun tp!1061097 () Bool)

(declare-fun b!3399995 () Bool)

(assert (=> b!3399995 (= e!2110541 (and (inv!21 (value!174360 separatorToken!241)) e!2110537 tp!1061097))))

(assert (=> b!3399996 (= e!2110551 (and tp!1061101 tp!1061100))))

(assert (= (and start!317506 res!1375686) b!3399974))

(assert (= (and b!3399974 res!1375675) b!3399979))

(assert (= (and b!3399979 res!1375689) b!3399993))

(assert (= (and b!3399993 res!1375690) b!3399973))

(assert (= (and b!3399973 res!1375674) b!3399978))

(assert (= (and b!3399978 res!1375676) b!3399994))

(assert (= (and b!3399994 res!1375681) b!3399989))

(assert (= (and b!3399989 res!1375673) b!3399981))

(assert (= (and b!3399981 res!1375678) b!3399985))

(assert (= (and b!3399985 (not res!1375684)) b!3399980))

(assert (= (and b!3399980 (not res!1375682)) b!3399976))

(assert (= (and b!3399976 (not res!1375680)) b!3399972))

(assert (= (and b!3399972 (not res!1375677)) b!3399991))

(assert (= (and b!3399991 (not res!1375685)) b!3399975))

(assert (= (and b!3399975 (not res!1375688)) b!3399982))

(assert (= (and b!3399982 (not res!1375683)) b!3399986))

(assert (= (and b!3399986 (not res!1375687)) b!3399969))

(assert (= (and b!3399969 (not res!1375679)) b!3399992))

(assert (= b!3399984 b!3399970))

(assert (= b!3399971 b!3399984))

(assert (= (and start!317506 ((_ is Cons!36984) rules!2135)) b!3399971))

(assert (= b!3399983 b!3399977))

(assert (= b!3399990 b!3399983))

(assert (= b!3399987 b!3399990))

(assert (= (and start!317506 ((_ is Cons!36985) tokens!494)) b!3399987))

(assert (= b!3399988 b!3399996))

(assert (= b!3399995 b!3399988))

(assert (= start!317506 b!3399995))

(declare-fun m!3772057 () Bool)

(assert (=> b!3399988 m!3772057))

(declare-fun m!3772059 () Bool)

(assert (=> b!3399988 m!3772059))

(declare-fun m!3772061 () Bool)

(assert (=> b!3399979 m!3772061))

(declare-fun m!3772063 () Bool)

(assert (=> b!3399984 m!3772063))

(declare-fun m!3772065 () Bool)

(assert (=> b!3399984 m!3772065))

(declare-fun m!3772067 () Bool)

(assert (=> b!3399992 m!3772067))

(declare-fun m!3772069 () Bool)

(assert (=> b!3399995 m!3772069))

(declare-fun m!3772071 () Bool)

(assert (=> b!3399969 m!3772071))

(declare-fun m!3772073 () Bool)

(assert (=> b!3399969 m!3772073))

(declare-fun m!3772075 () Bool)

(assert (=> b!3399969 m!3772075))

(declare-fun m!3772077 () Bool)

(assert (=> b!3399986 m!3772077))

(declare-fun m!3772079 () Bool)

(assert (=> b!3399986 m!3772079))

(declare-fun m!3772081 () Bool)

(assert (=> b!3399993 m!3772081))

(assert (=> b!3399993 m!3772081))

(declare-fun m!3772083 () Bool)

(assert (=> b!3399993 m!3772083))

(declare-fun m!3772085 () Bool)

(assert (=> b!3399976 m!3772085))

(declare-fun m!3772087 () Bool)

(assert (=> b!3399991 m!3772087))

(declare-fun m!3772089 () Bool)

(assert (=> b!3399991 m!3772089))

(declare-fun m!3772091 () Bool)

(assert (=> b!3399985 m!3772091))

(declare-fun m!3772093 () Bool)

(assert (=> b!3399985 m!3772093))

(declare-fun m!3772095 () Bool)

(assert (=> b!3399985 m!3772095))

(declare-fun m!3772097 () Bool)

(assert (=> b!3399985 m!3772097))

(declare-fun m!3772099 () Bool)

(assert (=> b!3399985 m!3772099))

(declare-fun m!3772101 () Bool)

(assert (=> b!3399990 m!3772101))

(declare-fun m!3772103 () Bool)

(assert (=> b!3399983 m!3772103))

(declare-fun m!3772105 () Bool)

(assert (=> b!3399983 m!3772105))

(declare-fun m!3772107 () Bool)

(assert (=> b!3399972 m!3772107))

(assert (=> b!3399972 m!3772107))

(declare-fun m!3772109 () Bool)

(assert (=> b!3399972 m!3772109))

(declare-fun m!3772111 () Bool)

(assert (=> b!3399972 m!3772111))

(declare-fun m!3772113 () Bool)

(assert (=> b!3399974 m!3772113))

(declare-fun m!3772115 () Bool)

(assert (=> b!3399987 m!3772115))

(declare-fun m!3772117 () Bool)

(assert (=> b!3399982 m!3772117))

(assert (=> b!3399982 m!3772117))

(declare-fun m!3772119 () Bool)

(assert (=> b!3399982 m!3772119))

(declare-fun m!3772121 () Bool)

(assert (=> b!3399973 m!3772121))

(declare-fun m!3772123 () Bool)

(assert (=> b!3399994 m!3772123))

(declare-fun m!3772125 () Bool)

(assert (=> b!3399989 m!3772125))

(declare-fun m!3772127 () Bool)

(assert (=> b!3399975 m!3772127))

(declare-fun m!3772129 () Bool)

(assert (=> b!3399975 m!3772129))

(declare-fun m!3772131 () Bool)

(assert (=> b!3399975 m!3772131))

(declare-fun m!3772133 () Bool)

(assert (=> b!3399975 m!3772133))

(declare-fun m!3772135 () Bool)

(assert (=> b!3399975 m!3772135))

(declare-fun m!3772137 () Bool)

(assert (=> b!3399975 m!3772137))

(assert (=> b!3399975 m!3772129))

(declare-fun m!3772139 () Bool)

(assert (=> b!3399975 m!3772139))

(declare-fun m!3772141 () Bool)

(assert (=> b!3399975 m!3772141))

(assert (=> b!3399975 m!3772131))

(assert (=> b!3399975 m!3772127))

(assert (=> b!3399975 m!3772133))

(declare-fun m!3772143 () Bool)

(assert (=> b!3399975 m!3772143))

(assert (=> b!3399975 m!3772139))

(declare-fun m!3772145 () Bool)

(assert (=> b!3399975 m!3772145))

(declare-fun m!3772147 () Bool)

(assert (=> start!317506 m!3772147))

(declare-fun m!3772149 () Bool)

(assert (=> b!3399980 m!3772149))

(assert (=> b!3399980 m!3772149))

(declare-fun m!3772151 () Bool)

(assert (=> b!3399980 m!3772151))

(check-sat (not b!3399972) b_and!237225 (not start!317506) b_and!237221 (not b!3399989) (not b!3399990) (not b!3399984) b_and!237223 (not b_next!89737) (not b!3399987) (not b!3399980) (not b!3399986) (not b!3399974) (not b!3399975) (not b_next!89743) (not b!3399992) (not b!3399979) b_and!237227 (not b!3399994) (not b!3399982) b_and!237219 (not b!3399995) (not b!3399988) (not b!3399969) (not b_next!89747) (not b_next!89745) (not b!3399993) (not b!3399973) (not b!3399991) (not b_next!89741) (not b_next!89739) (not b!3399971) (not b!3399983) (not b!3399976) (not b!3399985) b_and!237229)
(check-sat (not b_next!89743) b_and!237227 b_and!237225 b_and!237221 b_and!237219 b_and!237223 (not b_next!89737) b_and!237229 (not b_next!89747) (not b_next!89745) (not b_next!89741) (not b_next!89739))
(get-model)

(declare-fun d!967081 () Bool)

(assert (=> d!967081 (= (isEmpty!21249 rules!2135) ((_ is Nil!36984) rules!2135))))

(assert (=> b!3399974 d!967081))

(declare-fun b!3400057 () Bool)

(declare-fun e!2110592 () Bool)

(declare-fun inv!17 (TokenValue!5630) Bool)

(assert (=> b!3400057 (= e!2110592 (inv!17 (value!174360 separatorToken!241)))))

(declare-fun b!3400058 () Bool)

(declare-fun e!2110591 () Bool)

(assert (=> b!3400058 (= e!2110591 e!2110592)))

(declare-fun c!579573 () Bool)

(assert (=> b!3400058 (= c!579573 ((_ is IntegerValue!16891) (value!174360 separatorToken!241)))))

(declare-fun d!967083 () Bool)

(declare-fun c!579574 () Bool)

(assert (=> d!967083 (= c!579574 ((_ is IntegerValue!16890) (value!174360 separatorToken!241)))))

(assert (=> d!967083 (= (inv!21 (value!174360 separatorToken!241)) e!2110591)))

(declare-fun b!3400059 () Bool)

(declare-fun res!1375724 () Bool)

(declare-fun e!2110590 () Bool)

(assert (=> b!3400059 (=> res!1375724 e!2110590)))

(assert (=> b!3400059 (= res!1375724 (not ((_ is IntegerValue!16892) (value!174360 separatorToken!241))))))

(assert (=> b!3400059 (= e!2110592 e!2110590)))

(declare-fun b!3400060 () Bool)

(declare-fun inv!15 (TokenValue!5630) Bool)

(assert (=> b!3400060 (= e!2110590 (inv!15 (value!174360 separatorToken!241)))))

(declare-fun b!3400061 () Bool)

(declare-fun inv!16 (TokenValue!5630) Bool)

(assert (=> b!3400061 (= e!2110591 (inv!16 (value!174360 separatorToken!241)))))

(assert (= (and d!967083 c!579574) b!3400061))

(assert (= (and d!967083 (not c!579574)) b!3400058))

(assert (= (and b!3400058 c!579573) b!3400057))

(assert (= (and b!3400058 (not c!579573)) b!3400059))

(assert (= (and b!3400059 (not res!1375724)) b!3400060))

(declare-fun m!3772253 () Bool)

(assert (=> b!3400057 m!3772253))

(declare-fun m!3772255 () Bool)

(assert (=> b!3400060 m!3772255))

(declare-fun m!3772257 () Bool)

(assert (=> b!3400061 m!3772257))

(assert (=> b!3399995 d!967083))

(declare-fun d!967085 () Bool)

(declare-fun res!1375729 () Bool)

(declare-fun e!2110597 () Bool)

(assert (=> d!967085 (=> res!1375729 e!2110597)))

(assert (=> d!967085 (= res!1375729 ((_ is Nil!36985) tokens!494))))

(assert (=> d!967085 (= (forall!7821 tokens!494 lambda!120961) e!2110597)))

(declare-fun b!3400066 () Bool)

(declare-fun e!2110598 () Bool)

(assert (=> b!3400066 (= e!2110597 e!2110598)))

(declare-fun res!1375730 () Bool)

(assert (=> b!3400066 (=> (not res!1375730) (not e!2110598))))

(declare-fun dynLambda!15439 (Int Token!10166) Bool)

(assert (=> b!3400066 (= res!1375730 (dynLambda!15439 lambda!120961 (h!42405 tokens!494)))))

(declare-fun b!3400067 () Bool)

(assert (=> b!3400067 (= e!2110598 (forall!7821 (t!265786 tokens!494) lambda!120961))))

(assert (= (and d!967085 (not res!1375729)) b!3400066))

(assert (= (and b!3400066 res!1375730) b!3400067))

(declare-fun b_lambda!96967 () Bool)

(assert (=> (not b_lambda!96967) (not b!3400066)))

(declare-fun m!3772259 () Bool)

(assert (=> b!3400066 m!3772259))

(declare-fun m!3772261 () Bool)

(assert (=> b!3400067 m!3772261))

(assert (=> b!3399994 d!967085))

(declare-fun d!967087 () Bool)

(declare-fun lt!1156179 () Bool)

(declare-fun e!2110618 () Bool)

(assert (=> d!967087 (= lt!1156179 e!2110618)))

(declare-fun res!1375755 () Bool)

(assert (=> d!967087 (=> (not res!1375755) (not e!2110618))))

(declare-fun list!13412 (BalanceConc!21966) List!37109)

(assert (=> d!967087 (= res!1375755 (= (list!13412 (_1!21443 (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 separatorToken!241))))) (list!13412 (singletonSeq!2496 separatorToken!241))))))

(declare-fun e!2110619 () Bool)

(assert (=> d!967087 (= lt!1156179 e!2110619)))

(declare-fun res!1375757 () Bool)

(assert (=> d!967087 (=> (not res!1375757) (not e!2110619))))

(declare-fun lt!1156178 () tuple2!36618)

(declare-fun size!28003 (BalanceConc!21966) Int)

(assert (=> d!967087 (= res!1375757 (= (size!28003 (_1!21443 lt!1156178)) 1))))

(assert (=> d!967087 (= lt!1156178 (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 separatorToken!241))))))

(assert (=> d!967087 (not (isEmpty!21249 rules!2135))))

(assert (=> d!967087 (= (rulesProduceIndividualToken!2481 thiss!18206 rules!2135 separatorToken!241) lt!1156179)))

(declare-fun b!3400098 () Bool)

(declare-fun res!1375756 () Bool)

(assert (=> b!3400098 (=> (not res!1375756) (not e!2110619))))

(declare-fun apply!8632 (BalanceConc!21966 Int) Token!10166)

(assert (=> b!3400098 (= res!1375756 (= (apply!8632 (_1!21443 lt!1156178) 0) separatorToken!241))))

(declare-fun b!3400099 () Bool)

(declare-fun isEmpty!21254 (BalanceConc!21964) Bool)

(assert (=> b!3400099 (= e!2110619 (isEmpty!21254 (_2!21443 lt!1156178)))))

(declare-fun b!3400100 () Bool)

(assert (=> b!3400100 (= e!2110618 (isEmpty!21254 (_2!21443 (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 separatorToken!241))))))))

(assert (= (and d!967087 res!1375757) b!3400098))

(assert (= (and b!3400098 res!1375756) b!3400099))

(assert (= (and d!967087 res!1375755) b!3400100))

(declare-fun m!3772307 () Bool)

(assert (=> d!967087 m!3772307))

(declare-fun m!3772309 () Bool)

(assert (=> d!967087 m!3772309))

(assert (=> d!967087 m!3772113))

(declare-fun m!3772311 () Bool)

(assert (=> d!967087 m!3772311))

(declare-fun m!3772313 () Bool)

(assert (=> d!967087 m!3772313))

(assert (=> d!967087 m!3772313))

(assert (=> d!967087 m!3772307))

(assert (=> d!967087 m!3772313))

(declare-fun m!3772315 () Bool)

(assert (=> d!967087 m!3772315))

(declare-fun m!3772317 () Bool)

(assert (=> d!967087 m!3772317))

(declare-fun m!3772319 () Bool)

(assert (=> b!3400098 m!3772319))

(declare-fun m!3772321 () Bool)

(assert (=> b!3400099 m!3772321))

(assert (=> b!3400100 m!3772313))

(assert (=> b!3400100 m!3772313))

(assert (=> b!3400100 m!3772307))

(assert (=> b!3400100 m!3772307))

(assert (=> b!3400100 m!3772309))

(declare-fun m!3772323 () Bool)

(assert (=> b!3400100 m!3772323))

(assert (=> b!3399973 d!967087))

(declare-fun lt!1156182 () Bool)

(declare-fun d!967097 () Bool)

(declare-fun isEmpty!21255 (List!37109) Bool)

(assert (=> d!967097 (= lt!1156182 (isEmpty!21255 (list!13412 (_1!21443 (lex!2315 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137))))))))

(declare-fun isEmpty!21256 (Conc!11176) Bool)

(assert (=> d!967097 (= lt!1156182 (isEmpty!21256 (c!579556 (_1!21443 (lex!2315 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137))))))))

(assert (=> d!967097 (= (isEmpty!21248 (_1!21443 (lex!2315 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137)))) lt!1156182)))

(declare-fun bs!556184 () Bool)

(assert (= bs!556184 d!967097))

(declare-fun m!3772325 () Bool)

(assert (=> bs!556184 m!3772325))

(assert (=> bs!556184 m!3772325))

(declare-fun m!3772327 () Bool)

(assert (=> bs!556184 m!3772327))

(declare-fun m!3772329 () Bool)

(assert (=> bs!556184 m!3772329))

(assert (=> b!3399972 d!967097))

(declare-fun b!3400111 () Bool)

(declare-fun e!2110626 () Bool)

(declare-fun lt!1156185 () tuple2!36618)

(assert (=> b!3400111 (= e!2110626 (= (_2!21443 lt!1156185) (seqFromList!3853 lt!1156137)))))

(declare-fun b!3400112 () Bool)

(declare-fun res!1375765 () Bool)

(declare-fun e!2110628 () Bool)

(assert (=> b!3400112 (=> (not res!1375765) (not e!2110628))))

(declare-datatypes ((tuple2!36622 0))(
  ( (tuple2!36623 (_1!21445 List!37109) (_2!21445 List!37107)) )
))
(declare-fun lexList!1422 (LexerInterface!4989 List!37108 List!37107) tuple2!36622)

(assert (=> b!3400112 (= res!1375765 (= (list!13412 (_1!21443 lt!1156185)) (_1!21445 (lexList!1422 thiss!18206 rules!2135 (list!13409 (seqFromList!3853 lt!1156137))))))))

(declare-fun d!967099 () Bool)

(assert (=> d!967099 e!2110628))

(declare-fun res!1375766 () Bool)

(assert (=> d!967099 (=> (not res!1375766) (not e!2110628))))

(assert (=> d!967099 (= res!1375766 e!2110626)))

(declare-fun c!579580 () Bool)

(assert (=> d!967099 (= c!579580 (> (size!28003 (_1!21443 lt!1156185)) 0))))

(declare-fun lexTailRecV2!1030 (LexerInterface!4989 List!37108 BalanceConc!21964 BalanceConc!21964 BalanceConc!21964 BalanceConc!21966) tuple2!36618)

(assert (=> d!967099 (= lt!1156185 (lexTailRecV2!1030 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137) (BalanceConc!21965 Empty!11175) (seqFromList!3853 lt!1156137) (BalanceConc!21967 Empty!11176)))))

(assert (=> d!967099 (= (lex!2315 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137)) lt!1156185)))

(declare-fun b!3400113 () Bool)

(declare-fun e!2110627 () Bool)

(assert (=> b!3400113 (= e!2110627 (not (isEmpty!21248 (_1!21443 lt!1156185))))))

(declare-fun b!3400114 () Bool)

(assert (=> b!3400114 (= e!2110626 e!2110627)))

(declare-fun res!1375764 () Bool)

(declare-fun size!28004 (BalanceConc!21964) Int)

(assert (=> b!3400114 (= res!1375764 (< (size!28004 (_2!21443 lt!1156185)) (size!28004 (seqFromList!3853 lt!1156137))))))

(assert (=> b!3400114 (=> (not res!1375764) (not e!2110627))))

(declare-fun b!3400115 () Bool)

(assert (=> b!3400115 (= e!2110628 (= (list!13409 (_2!21443 lt!1156185)) (_2!21445 (lexList!1422 thiss!18206 rules!2135 (list!13409 (seqFromList!3853 lt!1156137))))))))

(assert (= (and d!967099 c!579580) b!3400114))

(assert (= (and d!967099 (not c!579580)) b!3400111))

(assert (= (and b!3400114 res!1375764) b!3400113))

(assert (= (and d!967099 res!1375766) b!3400112))

(assert (= (and b!3400112 res!1375765) b!3400115))

(declare-fun m!3772331 () Bool)

(assert (=> b!3400114 m!3772331))

(assert (=> b!3400114 m!3772107))

(declare-fun m!3772333 () Bool)

(assert (=> b!3400114 m!3772333))

(declare-fun m!3772335 () Bool)

(assert (=> b!3400112 m!3772335))

(assert (=> b!3400112 m!3772107))

(declare-fun m!3772337 () Bool)

(assert (=> b!3400112 m!3772337))

(assert (=> b!3400112 m!3772337))

(declare-fun m!3772339 () Bool)

(assert (=> b!3400112 m!3772339))

(declare-fun m!3772341 () Bool)

(assert (=> b!3400115 m!3772341))

(assert (=> b!3400115 m!3772107))

(assert (=> b!3400115 m!3772337))

(assert (=> b!3400115 m!3772337))

(assert (=> b!3400115 m!3772339))

(declare-fun m!3772343 () Bool)

(assert (=> b!3400113 m!3772343))

(declare-fun m!3772345 () Bool)

(assert (=> d!967099 m!3772345))

(assert (=> d!967099 m!3772107))

(assert (=> d!967099 m!3772107))

(declare-fun m!3772347 () Bool)

(assert (=> d!967099 m!3772347))

(assert (=> b!3399972 d!967099))

(declare-fun d!967101 () Bool)

(declare-fun fromListB!1730 (List!37107) BalanceConc!21964)

(assert (=> d!967101 (= (seqFromList!3853 lt!1156137) (fromListB!1730 lt!1156137))))

(declare-fun bs!556185 () Bool)

(assert (= bs!556185 d!967101))

(declare-fun m!3772349 () Bool)

(assert (=> bs!556185 m!3772349))

(assert (=> b!3399972 d!967101))

(declare-fun bs!556193 () Bool)

(declare-fun d!967103 () Bool)

(assert (= bs!556193 (and d!967103 b!3399994)))

(declare-fun lambda!120971 () Int)

(assert (=> bs!556193 (not (= lambda!120971 lambda!120961))))

(declare-fun b!3400217 () Bool)

(declare-fun e!2110703 () Bool)

(assert (=> b!3400217 (= e!2110703 true)))

(declare-fun b!3400216 () Bool)

(declare-fun e!2110702 () Bool)

(assert (=> b!3400216 (= e!2110702 e!2110703)))

(declare-fun b!3400215 () Bool)

(declare-fun e!2110701 () Bool)

(assert (=> b!3400215 (= e!2110701 e!2110702)))

(assert (=> d!967103 e!2110701))

(assert (= b!3400216 b!3400217))

(assert (= b!3400215 b!3400216))

(assert (= (and d!967103 ((_ is Cons!36984) rules!2135)) b!3400215))

(declare-fun order!19541 () Int)

(declare-fun order!19543 () Int)

(declare-fun dynLambda!15440 (Int Int) Int)

(declare-fun dynLambda!15441 (Int Int) Int)

(assert (=> b!3400217 (< (dynLambda!15440 order!19541 (toValue!7604 (transformation!5400 (h!42404 rules!2135)))) (dynLambda!15441 order!19543 lambda!120971))))

(declare-fun order!19545 () Int)

(declare-fun dynLambda!15442 (Int Int) Int)

(assert (=> b!3400217 (< (dynLambda!15442 order!19545 (toChars!7463 (transformation!5400 (h!42404 rules!2135)))) (dynLambda!15441 order!19543 lambda!120971))))

(assert (=> d!967103 true))

(declare-fun e!2110693 () Bool)

(assert (=> d!967103 e!2110693))

(declare-fun res!1375812 () Bool)

(assert (=> d!967103 (=> (not res!1375812) (not e!2110693))))

(declare-fun lt!1156229 () Bool)

(assert (=> d!967103 (= res!1375812 (= lt!1156229 (forall!7821 (list!13412 (seqFromList!3854 tokens!494)) lambda!120971)))))

(declare-fun forall!7823 (BalanceConc!21966 Int) Bool)

(assert (=> d!967103 (= lt!1156229 (forall!7823 (seqFromList!3854 tokens!494) lambda!120971))))

(assert (=> d!967103 (not (isEmpty!21249 rules!2135))))

(assert (=> d!967103 (= (rulesProduceEachTokenIndividually!1440 thiss!18206 rules!2135 (seqFromList!3854 tokens!494)) lt!1156229)))

(declare-fun b!3400205 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1829 (LexerInterface!4989 List!37108 List!37109) Bool)

(assert (=> b!3400205 (= e!2110693 (= lt!1156229 (rulesProduceEachTokenIndividuallyList!1829 thiss!18206 rules!2135 (list!13412 (seqFromList!3854 tokens!494)))))))

(assert (= (and d!967103 res!1375812) b!3400205))

(assert (=> d!967103 m!3772081))

(declare-fun m!3772513 () Bool)

(assert (=> d!967103 m!3772513))

(assert (=> d!967103 m!3772513))

(declare-fun m!3772515 () Bool)

(assert (=> d!967103 m!3772515))

(assert (=> d!967103 m!3772081))

(declare-fun m!3772517 () Bool)

(assert (=> d!967103 m!3772517))

(assert (=> d!967103 m!3772113))

(assert (=> b!3400205 m!3772081))

(assert (=> b!3400205 m!3772513))

(assert (=> b!3400205 m!3772513))

(declare-fun m!3772519 () Bool)

(assert (=> b!3400205 m!3772519))

(assert (=> b!3399993 d!967103))

(declare-fun d!967163 () Bool)

(declare-fun fromListB!1731 (List!37109) BalanceConc!21966)

(assert (=> d!967163 (= (seqFromList!3854 tokens!494) (fromListB!1731 tokens!494))))

(declare-fun bs!556194 () Bool)

(assert (= bs!556194 d!967163))

(declare-fun m!3772521 () Bool)

(assert (=> bs!556194 m!3772521))

(assert (=> b!3399993 d!967163))

(declare-fun d!967165 () Bool)

(assert (=> d!967165 (= (get!11811 lt!1156139) (v!36611 lt!1156139))))

(assert (=> b!3399992 d!967165))

(declare-fun d!967167 () Bool)

(assert (=> d!967167 (dynLambda!15439 lambda!120961 (h!42405 (t!265786 tokens!494)))))

(declare-fun lt!1156232 () Unit!52148)

(declare-fun choose!19719 (List!37109 Int Token!10166) Unit!52148)

(assert (=> d!967167 (= lt!1156232 (choose!19719 tokens!494 lambda!120961 (h!42405 (t!265786 tokens!494))))))

(declare-fun e!2110706 () Bool)

(assert (=> d!967167 e!2110706))

(declare-fun res!1375816 () Bool)

(assert (=> d!967167 (=> (not res!1375816) (not e!2110706))))

(assert (=> d!967167 (= res!1375816 (forall!7821 tokens!494 lambda!120961))))

(assert (=> d!967167 (= (forallContained!1347 tokens!494 lambda!120961 (h!42405 (t!265786 tokens!494))) lt!1156232)))

(declare-fun b!3400222 () Bool)

(declare-fun contains!6795 (List!37109 Token!10166) Bool)

(assert (=> b!3400222 (= e!2110706 (contains!6795 tokens!494 (h!42405 (t!265786 tokens!494))))))

(assert (= (and d!967167 res!1375816) b!3400222))

(declare-fun b_lambda!96981 () Bool)

(assert (=> (not b_lambda!96981) (not d!967167)))

(declare-fun m!3772523 () Bool)

(assert (=> d!967167 m!3772523))

(declare-fun m!3772525 () Bool)

(assert (=> d!967167 m!3772525))

(assert (=> d!967167 m!3772123))

(declare-fun m!3772527 () Bool)

(assert (=> b!3400222 m!3772527))

(assert (=> b!3399991 d!967167))

(declare-fun d!967169 () Bool)

(assert (=> d!967169 (dynLambda!15439 lambda!120961 (h!42405 tokens!494))))

(declare-fun lt!1156233 () Unit!52148)

(assert (=> d!967169 (= lt!1156233 (choose!19719 tokens!494 lambda!120961 (h!42405 tokens!494)))))

(declare-fun e!2110707 () Bool)

(assert (=> d!967169 e!2110707))

(declare-fun res!1375817 () Bool)

(assert (=> d!967169 (=> (not res!1375817) (not e!2110707))))

(assert (=> d!967169 (= res!1375817 (forall!7821 tokens!494 lambda!120961))))

(assert (=> d!967169 (= (forallContained!1347 tokens!494 lambda!120961 (h!42405 tokens!494)) lt!1156233)))

(declare-fun b!3400223 () Bool)

(assert (=> b!3400223 (= e!2110707 (contains!6795 tokens!494 (h!42405 tokens!494)))))

(assert (= (and d!967169 res!1375817) b!3400223))

(declare-fun b_lambda!96983 () Bool)

(assert (=> (not b_lambda!96983) (not d!967169)))

(assert (=> d!967169 m!3772259))

(declare-fun m!3772529 () Bool)

(assert (=> d!967169 m!3772529))

(assert (=> d!967169 m!3772123))

(declare-fun m!3772531 () Bool)

(assert (=> b!3400223 m!3772531))

(assert (=> b!3399991 d!967169))

(declare-fun d!967171 () Bool)

(declare-fun res!1375820 () Bool)

(declare-fun e!2110710 () Bool)

(assert (=> d!967171 (=> (not res!1375820) (not e!2110710))))

(declare-fun rulesValid!2017 (LexerInterface!4989 List!37108) Bool)

(assert (=> d!967171 (= res!1375820 (rulesValid!2017 thiss!18206 rules!2135))))

(assert (=> d!967171 (= (rulesInvariant!4386 thiss!18206 rules!2135) e!2110710)))

(declare-fun b!3400226 () Bool)

(declare-datatypes ((List!37111 0))(
  ( (Nil!36987) (Cons!36987 (h!42407 String!41484) (t!265862 List!37111)) )
))
(declare-fun noDuplicateTag!2013 (LexerInterface!4989 List!37108 List!37111) Bool)

(assert (=> b!3400226 (= e!2110710 (noDuplicateTag!2013 thiss!18206 rules!2135 Nil!36987))))

(assert (= (and d!967171 res!1375820) b!3400226))

(declare-fun m!3772533 () Bool)

(assert (=> d!967171 m!3772533))

(declare-fun m!3772535 () Bool)

(assert (=> b!3400226 m!3772535))

(assert (=> b!3399979 d!967171))

(declare-fun d!967173 () Bool)

(declare-fun lt!1156235 () Bool)

(declare-fun e!2110711 () Bool)

(assert (=> d!967173 (= lt!1156235 e!2110711)))

(declare-fun res!1375821 () Bool)

(assert (=> d!967173 (=> (not res!1375821) (not e!2110711))))

(assert (=> d!967173 (= res!1375821 (= (list!13412 (_1!21443 (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 (h!42405 tokens!494)))))) (list!13412 (singletonSeq!2496 (h!42405 tokens!494)))))))

(declare-fun e!2110712 () Bool)

(assert (=> d!967173 (= lt!1156235 e!2110712)))

(declare-fun res!1375823 () Bool)

(assert (=> d!967173 (=> (not res!1375823) (not e!2110712))))

(declare-fun lt!1156234 () tuple2!36618)

(assert (=> d!967173 (= res!1375823 (= (size!28003 (_1!21443 lt!1156234)) 1))))

(assert (=> d!967173 (= lt!1156234 (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 (h!42405 tokens!494)))))))

(assert (=> d!967173 (not (isEmpty!21249 rules!2135))))

(assert (=> d!967173 (= (rulesProduceIndividualToken!2481 thiss!18206 rules!2135 (h!42405 tokens!494)) lt!1156235)))

(declare-fun b!3400227 () Bool)

(declare-fun res!1375822 () Bool)

(assert (=> b!3400227 (=> (not res!1375822) (not e!2110712))))

(assert (=> b!3400227 (= res!1375822 (= (apply!8632 (_1!21443 lt!1156234) 0) (h!42405 tokens!494)))))

(declare-fun b!3400228 () Bool)

(assert (=> b!3400228 (= e!2110712 (isEmpty!21254 (_2!21443 lt!1156234)))))

(declare-fun b!3400229 () Bool)

(assert (=> b!3400229 (= e!2110711 (isEmpty!21254 (_2!21443 (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 (h!42405 tokens!494)))))))))

(assert (= (and d!967173 res!1375823) b!3400227))

(assert (= (and b!3400227 res!1375822) b!3400228))

(assert (= (and d!967173 res!1375821) b!3400229))

(declare-fun m!3772537 () Bool)

(assert (=> d!967173 m!3772537))

(declare-fun m!3772539 () Bool)

(assert (=> d!967173 m!3772539))

(assert (=> d!967173 m!3772113))

(declare-fun m!3772541 () Bool)

(assert (=> d!967173 m!3772541))

(assert (=> d!967173 m!3772093))

(assert (=> d!967173 m!3772093))

(assert (=> d!967173 m!3772537))

(assert (=> d!967173 m!3772093))

(declare-fun m!3772543 () Bool)

(assert (=> d!967173 m!3772543))

(declare-fun m!3772545 () Bool)

(assert (=> d!967173 m!3772545))

(declare-fun m!3772547 () Bool)

(assert (=> b!3400227 m!3772547))

(declare-fun m!3772549 () Bool)

(assert (=> b!3400228 m!3772549))

(assert (=> b!3400229 m!3772093))

(assert (=> b!3400229 m!3772093))

(assert (=> b!3400229 m!3772537))

(assert (=> b!3400229 m!3772537))

(assert (=> b!3400229 m!3772539))

(declare-fun m!3772551 () Bool)

(assert (=> b!3400229 m!3772551))

(assert (=> b!3399976 d!967173))

(declare-fun d!967175 () Bool)

(declare-fun c!579598 () Bool)

(assert (=> d!967175 (= c!579598 ((_ is Cons!36985) tokens!494))))

(declare-fun e!2110715 () List!37107)

(assert (=> d!967175 (= (printWithSeparatorTokenList!276 thiss!18206 tokens!494 separatorToken!241) e!2110715)))

(declare-fun b!3400234 () Bool)

(assert (=> b!3400234 (= e!2110715 (++!9069 (++!9069 (list!13409 (charsOf!3414 (h!42405 tokens!494))) (list!13409 (charsOf!3414 separatorToken!241))) (printWithSeparatorTokenList!276 thiss!18206 (t!265786 tokens!494) separatorToken!241)))))

(declare-fun b!3400235 () Bool)

(assert (=> b!3400235 (= e!2110715 Nil!36983)))

(assert (= (and d!967175 c!579598) b!3400234))

(assert (= (and d!967175 (not c!579598)) b!3400235))

(assert (=> b!3400234 m!3772133))

(assert (=> b!3400234 m!3772137))

(declare-fun m!3772553 () Bool)

(assert (=> b!3400234 m!3772553))

(assert (=> b!3400234 m!3772137))

(declare-fun m!3772555 () Bool)

(assert (=> b!3400234 m!3772555))

(assert (=> b!3400234 m!3772133))

(assert (=> b!3400234 m!3772143))

(assert (=> b!3400234 m!3772149))

(assert (=> b!3400234 m!3772149))

(assert (=> b!3400234 m!3772151))

(assert (=> b!3400234 m!3772151))

(assert (=> b!3400234 m!3772143))

(assert (=> b!3400234 m!3772553))

(assert (=> b!3399975 d!967175))

(declare-fun b!3400246 () Bool)

(declare-fun res!1375829 () Bool)

(declare-fun e!2110721 () Bool)

(assert (=> b!3400246 (=> (not res!1375829) (not e!2110721))))

(declare-fun lt!1156238 () List!37107)

(declare-fun size!28005 (List!37107) Int)

(assert (=> b!3400246 (= res!1375829 (= (size!28005 lt!1156238) (+ (size!28005 lt!1156140) (size!28005 lt!1156144))))))

(declare-fun b!3400245 () Bool)

(declare-fun e!2110720 () List!37107)

(assert (=> b!3400245 (= e!2110720 (Cons!36983 (h!42403 lt!1156140) (++!9069 (t!265784 lt!1156140) lt!1156144)))))

(declare-fun b!3400247 () Bool)

(assert (=> b!3400247 (= e!2110721 (or (not (= lt!1156144 Nil!36983)) (= lt!1156238 lt!1156140)))))

(declare-fun d!967177 () Bool)

(assert (=> d!967177 e!2110721))

(declare-fun res!1375828 () Bool)

(assert (=> d!967177 (=> (not res!1375828) (not e!2110721))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5117 (List!37107) (InoxSet C!20504))

(assert (=> d!967177 (= res!1375828 (= (content!5117 lt!1156238) ((_ map or) (content!5117 lt!1156140) (content!5117 lt!1156144))))))

(assert (=> d!967177 (= lt!1156238 e!2110720)))

(declare-fun c!579601 () Bool)

(assert (=> d!967177 (= c!579601 ((_ is Nil!36983) lt!1156140))))

(assert (=> d!967177 (= (++!9069 lt!1156140 lt!1156144) lt!1156238)))

(declare-fun b!3400244 () Bool)

(assert (=> b!3400244 (= e!2110720 lt!1156144)))

(assert (= (and d!967177 c!579601) b!3400244))

(assert (= (and d!967177 (not c!579601)) b!3400245))

(assert (= (and d!967177 res!1375828) b!3400246))

(assert (= (and b!3400246 res!1375829) b!3400247))

(declare-fun m!3772557 () Bool)

(assert (=> b!3400246 m!3772557))

(declare-fun m!3772559 () Bool)

(assert (=> b!3400246 m!3772559))

(declare-fun m!3772561 () Bool)

(assert (=> b!3400246 m!3772561))

(declare-fun m!3772563 () Bool)

(assert (=> b!3400245 m!3772563))

(declare-fun m!3772565 () Bool)

(assert (=> d!967177 m!3772565))

(declare-fun m!3772567 () Bool)

(assert (=> d!967177 m!3772567))

(declare-fun m!3772569 () Bool)

(assert (=> d!967177 m!3772569))

(assert (=> b!3399975 d!967177))

(declare-fun b!3400250 () Bool)

(declare-fun res!1375831 () Bool)

(declare-fun e!2110723 () Bool)

(assert (=> b!3400250 (=> (not res!1375831) (not e!2110723))))

(declare-fun lt!1156239 () List!37107)

(assert (=> b!3400250 (= res!1375831 (= (size!28005 lt!1156239) (+ (size!28005 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140)) (size!28005 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)))))))

(declare-fun e!2110722 () List!37107)

(declare-fun b!3400249 () Bool)

(assert (=> b!3400249 (= e!2110722 (Cons!36983 (h!42403 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140)) (++!9069 (t!265784 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140)) (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241))))))

(declare-fun b!3400251 () Bool)

(assert (=> b!3400251 (= e!2110723 (or (not (= (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241) Nil!36983)) (= lt!1156239 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140))))))

(declare-fun d!967179 () Bool)

(assert (=> d!967179 e!2110723))

(declare-fun res!1375830 () Bool)

(assert (=> d!967179 (=> (not res!1375830) (not e!2110723))))

(assert (=> d!967179 (= res!1375830 (= (content!5117 lt!1156239) ((_ map or) (content!5117 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140)) (content!5117 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)))))))

(assert (=> d!967179 (= lt!1156239 e!2110722)))

(declare-fun c!579602 () Bool)

(assert (=> d!967179 (= c!579602 ((_ is Nil!36983) (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140)))))

(assert (=> d!967179 (= (++!9069 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140) (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)) lt!1156239)))

(declare-fun b!3400248 () Bool)

(assert (=> b!3400248 (= e!2110722 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241))))

(assert (= (and d!967179 c!579602) b!3400248))

(assert (= (and d!967179 (not c!579602)) b!3400249))

(assert (= (and d!967179 res!1375830) b!3400250))

(assert (= (and b!3400250 res!1375831) b!3400251))

(declare-fun m!3772571 () Bool)

(assert (=> b!3400250 m!3772571))

(assert (=> b!3400250 m!3772129))

(declare-fun m!3772573 () Bool)

(assert (=> b!3400250 m!3772573))

(assert (=> b!3400250 m!3772139))

(declare-fun m!3772575 () Bool)

(assert (=> b!3400250 m!3772575))

(assert (=> b!3400249 m!3772139))

(declare-fun m!3772577 () Bool)

(assert (=> b!3400249 m!3772577))

(declare-fun m!3772579 () Bool)

(assert (=> d!967179 m!3772579))

(assert (=> d!967179 m!3772129))

(declare-fun m!3772581 () Bool)

(assert (=> d!967179 m!3772581))

(assert (=> d!967179 m!3772139))

(declare-fun m!3772583 () Bool)

(assert (=> d!967179 m!3772583))

(assert (=> b!3399975 d!967179))

(declare-fun b!3400254 () Bool)

(declare-fun res!1375833 () Bool)

(declare-fun e!2110725 () Bool)

(assert (=> b!3400254 (=> (not res!1375833) (not e!2110725))))

(declare-fun lt!1156240 () List!37107)

(assert (=> b!3400254 (= res!1375833 (= (size!28005 lt!1156240) (+ (size!28005 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))) (size!28005 lt!1156140))))))

(declare-fun b!3400253 () Bool)

(declare-fun e!2110724 () List!37107)

(assert (=> b!3400253 (= e!2110724 (Cons!36983 (h!42403 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))) (++!9069 (t!265784 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))) lt!1156140)))))

(declare-fun b!3400255 () Bool)

(assert (=> b!3400255 (= e!2110725 (or (not (= lt!1156140 Nil!36983)) (= lt!1156240 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))))))))

(declare-fun d!967181 () Bool)

(assert (=> d!967181 e!2110725))

(declare-fun res!1375832 () Bool)

(assert (=> d!967181 (=> (not res!1375832) (not e!2110725))))

(assert (=> d!967181 (= res!1375832 (= (content!5117 lt!1156240) ((_ map or) (content!5117 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))) (content!5117 lt!1156140))))))

(assert (=> d!967181 (= lt!1156240 e!2110724)))

(declare-fun c!579603 () Bool)

(assert (=> d!967181 (= c!579603 ((_ is Nil!36983) (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))))))

(assert (=> d!967181 (= (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140) lt!1156240)))

(declare-fun b!3400252 () Bool)

(assert (=> b!3400252 (= e!2110724 lt!1156140)))

(assert (= (and d!967181 c!579603) b!3400252))

(assert (= (and d!967181 (not c!579603)) b!3400253))

(assert (= (and d!967181 res!1375832) b!3400254))

(assert (= (and b!3400254 res!1375833) b!3400255))

(declare-fun m!3772585 () Bool)

(assert (=> b!3400254 m!3772585))

(assert (=> b!3400254 m!3772127))

(declare-fun m!3772587 () Bool)

(assert (=> b!3400254 m!3772587))

(assert (=> b!3400254 m!3772559))

(declare-fun m!3772589 () Bool)

(assert (=> b!3400253 m!3772589))

(declare-fun m!3772591 () Bool)

(assert (=> d!967181 m!3772591))

(assert (=> d!967181 m!3772127))

(declare-fun m!3772593 () Bool)

(assert (=> d!967181 m!3772593))

(assert (=> d!967181 m!3772567))

(assert (=> b!3399975 d!967181))

(declare-fun d!967183 () Bool)

(declare-fun lt!1156253 () BalanceConc!21964)

(assert (=> d!967183 (= (list!13409 lt!1156253) (originalCharacters!6114 separatorToken!241))))

(declare-fun dynLambda!15444 (Int TokenValue!5630) BalanceConc!21964)

(assert (=> d!967183 (= lt!1156253 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241)))))

(assert (=> d!967183 (= (charsOf!3414 separatorToken!241) lt!1156253)))

(declare-fun b_lambda!96985 () Bool)

(assert (=> (not b_lambda!96985) (not d!967183)))

(declare-fun t!265817 () Bool)

(declare-fun tb!182229 () Bool)

(assert (=> (and b!3399996 (= (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241)))) t!265817) tb!182229))

(declare-fun b!3400278 () Bool)

(declare-fun e!2110734 () Bool)

(declare-fun tp!1061110 () Bool)

(declare-fun inv!50092 (Conc!11175) Bool)

(assert (=> b!3400278 (= e!2110734 (and (inv!50092 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241)))) tp!1061110))))

(declare-fun result!225864 () Bool)

(declare-fun inv!50093 (BalanceConc!21964) Bool)

(assert (=> tb!182229 (= result!225864 (and (inv!50093 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241))) e!2110734))))

(assert (= tb!182229 b!3400278))

(declare-fun m!3772595 () Bool)

(assert (=> b!3400278 m!3772595))

(declare-fun m!3772597 () Bool)

(assert (=> tb!182229 m!3772597))

(assert (=> d!967183 t!265817))

(declare-fun b_and!237261 () Bool)

(assert (= b_and!237221 (and (=> t!265817 result!225864) b_and!237261)))

(declare-fun tb!182231 () Bool)

(declare-fun t!265819 () Bool)

(assert (=> (and b!3399977 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241)))) t!265819) tb!182231))

(declare-fun result!225868 () Bool)

(assert (= result!225868 result!225864))

(assert (=> d!967183 t!265819))

(declare-fun b_and!237263 () Bool)

(assert (= b_and!237225 (and (=> t!265819 result!225868) b_and!237263)))

(declare-fun t!265821 () Bool)

(declare-fun tb!182233 () Bool)

(assert (=> (and b!3399970 (= (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241)))) t!265821) tb!182233))

(declare-fun result!225870 () Bool)

(assert (= result!225870 result!225864))

(assert (=> d!967183 t!265821))

(declare-fun b_and!237265 () Bool)

(assert (= b_and!237229 (and (=> t!265821 result!225870) b_and!237265)))

(declare-fun m!3772599 () Bool)

(assert (=> d!967183 m!3772599))

(declare-fun m!3772601 () Bool)

(assert (=> d!967183 m!3772601))

(assert (=> b!3399975 d!967183))

(declare-fun d!967185 () Bool)

(declare-fun list!13413 (Conc!11175) List!37107)

(assert (=> d!967185 (= (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) (list!13413 (c!579555 (charsOf!3414 (h!42405 (t!265786 tokens!494))))))))

(declare-fun bs!556195 () Bool)

(assert (= bs!556195 d!967185))

(declare-fun m!3772603 () Bool)

(assert (=> bs!556195 m!3772603))

(assert (=> b!3399975 d!967185))

(declare-fun d!967187 () Bool)

(declare-fun c!579606 () Bool)

(assert (=> d!967187 (= c!579606 ((_ is Cons!36985) (t!265786 (t!265786 tokens!494))))))

(declare-fun e!2110735 () List!37107)

(assert (=> d!967187 (= (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241) e!2110735)))

(declare-fun b!3400279 () Bool)

(assert (=> b!3400279 (= e!2110735 (++!9069 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494))))) (list!13409 (charsOf!3414 separatorToken!241))) (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 (t!265786 tokens!494))) separatorToken!241)))))

(declare-fun b!3400280 () Bool)

(assert (=> b!3400280 (= e!2110735 Nil!36983)))

(assert (= (and d!967187 c!579606) b!3400279))

(assert (= (and d!967187 (not c!579606)) b!3400280))

(assert (=> b!3400279 m!3772133))

(declare-fun m!3772605 () Bool)

(assert (=> b!3400279 m!3772605))

(declare-fun m!3772607 () Bool)

(assert (=> b!3400279 m!3772607))

(assert (=> b!3400279 m!3772605))

(declare-fun m!3772609 () Bool)

(assert (=> b!3400279 m!3772609))

(assert (=> b!3400279 m!3772133))

(assert (=> b!3400279 m!3772143))

(declare-fun m!3772611 () Bool)

(assert (=> b!3400279 m!3772611))

(assert (=> b!3400279 m!3772611))

(declare-fun m!3772613 () Bool)

(assert (=> b!3400279 m!3772613))

(assert (=> b!3400279 m!3772613))

(assert (=> b!3400279 m!3772143))

(assert (=> b!3400279 m!3772607))

(assert (=> b!3399975 d!967187))

(declare-fun d!967189 () Bool)

(declare-fun c!579607 () Bool)

(assert (=> d!967189 (= c!579607 ((_ is Cons!36985) (t!265786 tokens!494)))))

(declare-fun e!2110736 () List!37107)

(assert (=> d!967189 (= (printWithSeparatorTokenList!276 thiss!18206 (t!265786 tokens!494) separatorToken!241) e!2110736)))

(declare-fun b!3400281 () Bool)

(assert (=> b!3400281 (= e!2110736 (++!9069 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) (list!13409 (charsOf!3414 separatorToken!241))) (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)))))

(declare-fun b!3400282 () Bool)

(assert (=> b!3400282 (= e!2110736 Nil!36983)))

(assert (= (and d!967189 c!579607) b!3400281))

(assert (= (and d!967189 (not c!579607)) b!3400282))

(assert (=> b!3400281 m!3772133))

(assert (=> b!3400281 m!3772139))

(declare-fun m!3772615 () Bool)

(assert (=> b!3400281 m!3772615))

(assert (=> b!3400281 m!3772139))

(declare-fun m!3772617 () Bool)

(assert (=> b!3400281 m!3772617))

(assert (=> b!3400281 m!3772133))

(assert (=> b!3400281 m!3772143))

(assert (=> b!3400281 m!3772131))

(assert (=> b!3400281 m!3772131))

(assert (=> b!3400281 m!3772127))

(assert (=> b!3400281 m!3772127))

(assert (=> b!3400281 m!3772143))

(assert (=> b!3400281 m!3772615))

(assert (=> b!3399975 d!967189))

(declare-fun d!967191 () Bool)

(assert (=> d!967191 (= (list!13409 (charsOf!3414 separatorToken!241)) (list!13413 (c!579555 (charsOf!3414 separatorToken!241))))))

(declare-fun bs!556196 () Bool)

(assert (= bs!556196 d!967191))

(declare-fun m!3772619 () Bool)

(assert (=> bs!556196 m!3772619))

(assert (=> b!3399975 d!967191))

(declare-fun d!967193 () Bool)

(declare-fun lt!1156254 () BalanceConc!21964)

(assert (=> d!967193 (= (list!13409 lt!1156254) (originalCharacters!6114 (h!42405 (t!265786 tokens!494))))))

(assert (=> d!967193 (= lt!1156254 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (value!174360 (h!42405 (t!265786 tokens!494)))))))

(assert (=> d!967193 (= (charsOf!3414 (h!42405 (t!265786 tokens!494))) lt!1156254)))

(declare-fun b_lambda!96987 () Bool)

(assert (=> (not b_lambda!96987) (not d!967193)))

(declare-fun t!265823 () Bool)

(declare-fun tb!182235 () Bool)

(assert (=> (and b!3399996 (= (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494)))))) t!265823) tb!182235))

(declare-fun b!3400283 () Bool)

(declare-fun e!2110737 () Bool)

(declare-fun tp!1061111 () Bool)

(assert (=> b!3400283 (= e!2110737 (and (inv!50092 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (value!174360 (h!42405 (t!265786 tokens!494)))))) tp!1061111))))

(declare-fun result!225872 () Bool)

(assert (=> tb!182235 (= result!225872 (and (inv!50093 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (value!174360 (h!42405 (t!265786 tokens!494))))) e!2110737))))

(assert (= tb!182235 b!3400283))

(declare-fun m!3772621 () Bool)

(assert (=> b!3400283 m!3772621))

(declare-fun m!3772623 () Bool)

(assert (=> tb!182235 m!3772623))

(assert (=> d!967193 t!265823))

(declare-fun b_and!237267 () Bool)

(assert (= b_and!237261 (and (=> t!265823 result!225872) b_and!237267)))

(declare-fun t!265825 () Bool)

(declare-fun tb!182237 () Bool)

(assert (=> (and b!3399977 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494)))))) t!265825) tb!182237))

(declare-fun result!225874 () Bool)

(assert (= result!225874 result!225872))

(assert (=> d!967193 t!265825))

(declare-fun b_and!237269 () Bool)

(assert (= b_and!237263 (and (=> t!265825 result!225874) b_and!237269)))

(declare-fun tb!182239 () Bool)

(declare-fun t!265827 () Bool)

(assert (=> (and b!3399970 (= (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494)))))) t!265827) tb!182239))

(declare-fun result!225876 () Bool)

(assert (= result!225876 result!225872))

(assert (=> d!967193 t!265827))

(declare-fun b_and!237271 () Bool)

(assert (= b_and!237265 (and (=> t!265827 result!225876) b_and!237271)))

(declare-fun m!3772625 () Bool)

(assert (=> d!967193 m!3772625))

(declare-fun m!3772627 () Bool)

(assert (=> d!967193 m!3772627))

(assert (=> b!3399975 d!967193))

(declare-fun d!967195 () Bool)

(assert (=> d!967195 (= (list!13409 lt!1156138) (list!13413 (c!579555 lt!1156138)))))

(declare-fun bs!556197 () Bool)

(assert (= bs!556197 d!967195))

(declare-fun m!3772629 () Bool)

(assert (=> bs!556197 m!3772629))

(assert (=> b!3399985 d!967195))

(declare-fun d!967197 () Bool)

(declare-fun lt!1156280 () BalanceConc!21964)

(declare-fun printListTailRec!662 (LexerInterface!4989 List!37109 List!37107) List!37107)

(declare-fun dropList!1179 (BalanceConc!21966 Int) List!37109)

(assert (=> d!967197 (= (list!13409 lt!1156280) (printListTailRec!662 thiss!18206 (dropList!1179 lt!1156135 0) (list!13409 (BalanceConc!21965 Empty!11175))))))

(declare-fun e!2110746 () BalanceConc!21964)

(assert (=> d!967197 (= lt!1156280 e!2110746)))

(declare-fun c!579611 () Bool)

(assert (=> d!967197 (= c!579611 (>= 0 (size!28003 lt!1156135)))))

(declare-fun e!2110745 () Bool)

(assert (=> d!967197 e!2110745))

(declare-fun res!1375857 () Bool)

(assert (=> d!967197 (=> (not res!1375857) (not e!2110745))))

(assert (=> d!967197 (= res!1375857 (>= 0 0))))

(assert (=> d!967197 (= (printTailRec!1484 thiss!18206 lt!1156135 0 (BalanceConc!21965 Empty!11175)) lt!1156280)))

(declare-fun b!3400299 () Bool)

(assert (=> b!3400299 (= e!2110745 (<= 0 (size!28003 lt!1156135)))))

(declare-fun b!3400300 () Bool)

(assert (=> b!3400300 (= e!2110746 (BalanceConc!21965 Empty!11175))))

(declare-fun b!3400301 () Bool)

(declare-fun ++!9071 (BalanceConc!21964 BalanceConc!21964) BalanceConc!21964)

(assert (=> b!3400301 (= e!2110746 (printTailRec!1484 thiss!18206 lt!1156135 (+ 0 1) (++!9071 (BalanceConc!21965 Empty!11175) (charsOf!3414 (apply!8632 lt!1156135 0)))))))

(declare-fun lt!1156275 () List!37109)

(assert (=> b!3400301 (= lt!1156275 (list!13412 lt!1156135))))

(declare-fun lt!1156274 () Unit!52148)

(declare-fun lemmaDropApply!1137 (List!37109 Int) Unit!52148)

(assert (=> b!3400301 (= lt!1156274 (lemmaDropApply!1137 lt!1156275 0))))

(declare-fun head!7257 (List!37109) Token!10166)

(declare-fun drop!1979 (List!37109 Int) List!37109)

(declare-fun apply!8634 (List!37109 Int) Token!10166)

(assert (=> b!3400301 (= (head!7257 (drop!1979 lt!1156275 0)) (apply!8634 lt!1156275 0))))

(declare-fun lt!1156276 () Unit!52148)

(assert (=> b!3400301 (= lt!1156276 lt!1156274)))

(declare-fun lt!1156277 () List!37109)

(assert (=> b!3400301 (= lt!1156277 (list!13412 lt!1156135))))

(declare-fun lt!1156278 () Unit!52148)

(declare-fun lemmaDropTail!1021 (List!37109 Int) Unit!52148)

(assert (=> b!3400301 (= lt!1156278 (lemmaDropTail!1021 lt!1156277 0))))

(declare-fun tail!5379 (List!37109) List!37109)

(assert (=> b!3400301 (= (tail!5379 (drop!1979 lt!1156277 0)) (drop!1979 lt!1156277 (+ 0 1)))))

(declare-fun lt!1156279 () Unit!52148)

(assert (=> b!3400301 (= lt!1156279 lt!1156278)))

(assert (= (and d!967197 res!1375857) b!3400299))

(assert (= (and d!967197 c!579611) b!3400300))

(assert (= (and d!967197 (not c!579611)) b!3400301))

(declare-fun m!3772663 () Bool)

(assert (=> d!967197 m!3772663))

(declare-fun m!3772665 () Bool)

(assert (=> d!967197 m!3772665))

(assert (=> d!967197 m!3772663))

(assert (=> d!967197 m!3772665))

(declare-fun m!3772667 () Bool)

(assert (=> d!967197 m!3772667))

(declare-fun m!3772669 () Bool)

(assert (=> d!967197 m!3772669))

(declare-fun m!3772671 () Bool)

(assert (=> d!967197 m!3772671))

(assert (=> b!3400299 m!3772669))

(declare-fun m!3772673 () Bool)

(assert (=> b!3400301 m!3772673))

(declare-fun m!3772675 () Bool)

(assert (=> b!3400301 m!3772675))

(declare-fun m!3772677 () Bool)

(assert (=> b!3400301 m!3772677))

(assert (=> b!3400301 m!3772673))

(declare-fun m!3772679 () Bool)

(assert (=> b!3400301 m!3772679))

(declare-fun m!3772681 () Bool)

(assert (=> b!3400301 m!3772681))

(declare-fun m!3772683 () Bool)

(assert (=> b!3400301 m!3772683))

(assert (=> b!3400301 m!3772681))

(declare-fun m!3772685 () Bool)

(assert (=> b!3400301 m!3772685))

(declare-fun m!3772687 () Bool)

(assert (=> b!3400301 m!3772687))

(declare-fun m!3772689 () Bool)

(assert (=> b!3400301 m!3772689))

(declare-fun m!3772691 () Bool)

(assert (=> b!3400301 m!3772691))

(declare-fun m!3772693 () Bool)

(assert (=> b!3400301 m!3772693))

(declare-fun m!3772695 () Bool)

(assert (=> b!3400301 m!3772695))

(assert (=> b!3400301 m!3772675))

(assert (=> b!3400301 m!3772685))

(assert (=> b!3400301 m!3772691))

(declare-fun m!3772697 () Bool)

(assert (=> b!3400301 m!3772697))

(assert (=> b!3399985 d!967197))

(declare-fun d!967201 () Bool)

(declare-fun lt!1156283 () BalanceConc!21964)

(assert (=> d!967201 (= (list!13409 lt!1156283) (printList!1537 thiss!18206 (list!13412 lt!1156135)))))

(assert (=> d!967201 (= lt!1156283 (printTailRec!1484 thiss!18206 lt!1156135 0 (BalanceConc!21965 Empty!11175)))))

(assert (=> d!967201 (= (print!2054 thiss!18206 lt!1156135) lt!1156283)))

(declare-fun bs!556198 () Bool)

(assert (= bs!556198 d!967201))

(declare-fun m!3772699 () Bool)

(assert (=> bs!556198 m!3772699))

(assert (=> bs!556198 m!3772695))

(assert (=> bs!556198 m!3772695))

(declare-fun m!3772701 () Bool)

(assert (=> bs!556198 m!3772701))

(assert (=> bs!556198 m!3772099))

(assert (=> b!3399985 d!967201))

(declare-fun d!967203 () Bool)

(declare-fun e!2110749 () Bool)

(assert (=> d!967203 e!2110749))

(declare-fun res!1375860 () Bool)

(assert (=> d!967203 (=> (not res!1375860) (not e!2110749))))

(declare-fun lt!1156286 () BalanceConc!21966)

(assert (=> d!967203 (= res!1375860 (= (list!13412 lt!1156286) (Cons!36985 (h!42405 tokens!494) Nil!36985)))))

(declare-fun singleton!1094 (Token!10166) BalanceConc!21966)

(assert (=> d!967203 (= lt!1156286 (singleton!1094 (h!42405 tokens!494)))))

(assert (=> d!967203 (= (singletonSeq!2496 (h!42405 tokens!494)) lt!1156286)))

(declare-fun b!3400304 () Bool)

(declare-fun isBalanced!3377 (Conc!11176) Bool)

(assert (=> b!3400304 (= e!2110749 (isBalanced!3377 (c!579556 lt!1156286)))))

(assert (= (and d!967203 res!1375860) b!3400304))

(declare-fun m!3772703 () Bool)

(assert (=> d!967203 m!3772703))

(declare-fun m!3772705 () Bool)

(assert (=> d!967203 m!3772705))

(declare-fun m!3772707 () Bool)

(assert (=> b!3400304 m!3772707))

(assert (=> b!3399985 d!967203))

(declare-fun d!967205 () Bool)

(declare-fun c!579614 () Bool)

(assert (=> d!967205 (= c!579614 ((_ is Cons!36985) (Cons!36985 (h!42405 tokens!494) Nil!36985)))))

(declare-fun e!2110752 () List!37107)

(assert (=> d!967205 (= (printList!1537 thiss!18206 (Cons!36985 (h!42405 tokens!494) Nil!36985)) e!2110752)))

(declare-fun b!3400309 () Bool)

(assert (=> b!3400309 (= e!2110752 (++!9069 (list!13409 (charsOf!3414 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985)))) (printList!1537 thiss!18206 (t!265786 (Cons!36985 (h!42405 tokens!494) Nil!36985)))))))

(declare-fun b!3400310 () Bool)

(assert (=> b!3400310 (= e!2110752 Nil!36983)))

(assert (= (and d!967205 c!579614) b!3400309))

(assert (= (and d!967205 (not c!579614)) b!3400310))

(declare-fun m!3772709 () Bool)

(assert (=> b!3400309 m!3772709))

(assert (=> b!3400309 m!3772709))

(declare-fun m!3772711 () Bool)

(assert (=> b!3400309 m!3772711))

(declare-fun m!3772713 () Bool)

(assert (=> b!3400309 m!3772713))

(assert (=> b!3400309 m!3772711))

(assert (=> b!3400309 m!3772713))

(declare-fun m!3772715 () Bool)

(assert (=> b!3400309 m!3772715))

(assert (=> b!3399985 d!967205))

(declare-fun d!967207 () Bool)

(assert (=> d!967207 (= (inv!50085 (tag!5984 (h!42404 rules!2135))) (= (mod (str.len (value!174359 (tag!5984 (h!42404 rules!2135)))) 2) 0))))

(assert (=> b!3399984 d!967207))

(declare-fun d!967209 () Bool)

(declare-fun res!1375863 () Bool)

(declare-fun e!2110755 () Bool)

(assert (=> d!967209 (=> (not res!1375863) (not e!2110755))))

(declare-fun semiInverseModEq!2257 (Int Int) Bool)

(assert (=> d!967209 (= res!1375863 (semiInverseModEq!2257 (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toValue!7604 (transformation!5400 (h!42404 rules!2135)))))))

(assert (=> d!967209 (= (inv!50088 (transformation!5400 (h!42404 rules!2135))) e!2110755)))

(declare-fun b!3400313 () Bool)

(declare-fun equivClasses!2156 (Int Int) Bool)

(assert (=> b!3400313 (= e!2110755 (equivClasses!2156 (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toValue!7604 (transformation!5400 (h!42404 rules!2135)))))))

(assert (= (and d!967209 res!1375863) b!3400313))

(declare-fun m!3772717 () Bool)

(assert (=> d!967209 m!3772717))

(declare-fun m!3772719 () Bool)

(assert (=> b!3400313 m!3772719))

(assert (=> b!3399984 d!967209))

(declare-fun d!967211 () Bool)

(assert (=> d!967211 (= (inv!50085 (tag!5984 (rule!7962 (h!42405 tokens!494)))) (= (mod (str.len (value!174359 (tag!5984 (rule!7962 (h!42405 tokens!494))))) 2) 0))))

(assert (=> b!3399983 d!967211))

(declare-fun d!967213 () Bool)

(declare-fun res!1375864 () Bool)

(declare-fun e!2110756 () Bool)

(assert (=> d!967213 (=> (not res!1375864) (not e!2110756))))

(assert (=> d!967213 (= res!1375864 (semiInverseModEq!2257 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toValue!7604 (transformation!5400 (rule!7962 (h!42405 tokens!494))))))))

(assert (=> d!967213 (= (inv!50088 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) e!2110756)))

(declare-fun b!3400314 () Bool)

(assert (=> b!3400314 (= e!2110756 (equivClasses!2156 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toValue!7604 (transformation!5400 (rule!7962 (h!42405 tokens!494))))))))

(assert (= (and d!967213 res!1375864) b!3400314))

(declare-fun m!3772721 () Bool)

(assert (=> d!967213 m!3772721))

(declare-fun m!3772723 () Bool)

(assert (=> b!3400314 m!3772723))

(assert (=> b!3399983 d!967213))

(declare-fun b!3400317 () Bool)

(declare-fun res!1375866 () Bool)

(declare-fun e!2110758 () Bool)

(assert (=> b!3400317 (=> (not res!1375866) (not e!2110758))))

(declare-fun lt!1156287 () List!37107)

(assert (=> b!3400317 (= res!1375866 (= (size!28005 lt!1156287) (+ (size!28005 (++!9069 lt!1156137 lt!1156140)) (size!28005 lt!1156144))))))

(declare-fun e!2110757 () List!37107)

(declare-fun b!3400316 () Bool)

(assert (=> b!3400316 (= e!2110757 (Cons!36983 (h!42403 (++!9069 lt!1156137 lt!1156140)) (++!9069 (t!265784 (++!9069 lt!1156137 lt!1156140)) lt!1156144)))))

(declare-fun b!3400318 () Bool)

(assert (=> b!3400318 (= e!2110758 (or (not (= lt!1156144 Nil!36983)) (= lt!1156287 (++!9069 lt!1156137 lt!1156140))))))

(declare-fun d!967215 () Bool)

(assert (=> d!967215 e!2110758))

(declare-fun res!1375865 () Bool)

(assert (=> d!967215 (=> (not res!1375865) (not e!2110758))))

(assert (=> d!967215 (= res!1375865 (= (content!5117 lt!1156287) ((_ map or) (content!5117 (++!9069 lt!1156137 lt!1156140)) (content!5117 lt!1156144))))))

(assert (=> d!967215 (= lt!1156287 e!2110757)))

(declare-fun c!579615 () Bool)

(assert (=> d!967215 (= c!579615 ((_ is Nil!36983) (++!9069 lt!1156137 lt!1156140)))))

(assert (=> d!967215 (= (++!9069 (++!9069 lt!1156137 lt!1156140) lt!1156144) lt!1156287)))

(declare-fun b!3400315 () Bool)

(assert (=> b!3400315 (= e!2110757 lt!1156144)))

(assert (= (and d!967215 c!579615) b!3400315))

(assert (= (and d!967215 (not c!579615)) b!3400316))

(assert (= (and d!967215 res!1375865) b!3400317))

(assert (= (and b!3400317 res!1375866) b!3400318))

(declare-fun m!3772725 () Bool)

(assert (=> b!3400317 m!3772725))

(assert (=> b!3400317 m!3772117))

(declare-fun m!3772727 () Bool)

(assert (=> b!3400317 m!3772727))

(assert (=> b!3400317 m!3772561))

(declare-fun m!3772729 () Bool)

(assert (=> b!3400316 m!3772729))

(declare-fun m!3772731 () Bool)

(assert (=> d!967215 m!3772731))

(assert (=> d!967215 m!3772117))

(declare-fun m!3772733 () Bool)

(assert (=> d!967215 m!3772733))

(assert (=> d!967215 m!3772569))

(assert (=> b!3399982 d!967215))

(declare-fun b!3400321 () Bool)

(declare-fun res!1375868 () Bool)

(declare-fun e!2110760 () Bool)

(assert (=> b!3400321 (=> (not res!1375868) (not e!2110760))))

(declare-fun lt!1156288 () List!37107)

(assert (=> b!3400321 (= res!1375868 (= (size!28005 lt!1156288) (+ (size!28005 lt!1156137) (size!28005 lt!1156140))))))

(declare-fun b!3400320 () Bool)

(declare-fun e!2110759 () List!37107)

(assert (=> b!3400320 (= e!2110759 (Cons!36983 (h!42403 lt!1156137) (++!9069 (t!265784 lt!1156137) lt!1156140)))))

(declare-fun b!3400322 () Bool)

(assert (=> b!3400322 (= e!2110760 (or (not (= lt!1156140 Nil!36983)) (= lt!1156288 lt!1156137)))))

(declare-fun d!967217 () Bool)

(assert (=> d!967217 e!2110760))

(declare-fun res!1375867 () Bool)

(assert (=> d!967217 (=> (not res!1375867) (not e!2110760))))

(assert (=> d!967217 (= res!1375867 (= (content!5117 lt!1156288) ((_ map or) (content!5117 lt!1156137) (content!5117 lt!1156140))))))

(assert (=> d!967217 (= lt!1156288 e!2110759)))

(declare-fun c!579616 () Bool)

(assert (=> d!967217 (= c!579616 ((_ is Nil!36983) lt!1156137))))

(assert (=> d!967217 (= (++!9069 lt!1156137 lt!1156140) lt!1156288)))

(declare-fun b!3400319 () Bool)

(assert (=> b!3400319 (= e!2110759 lt!1156140)))

(assert (= (and d!967217 c!579616) b!3400319))

(assert (= (and d!967217 (not c!579616)) b!3400320))

(assert (= (and d!967217 res!1375867) b!3400321))

(assert (= (and b!3400321 res!1375868) b!3400322))

(declare-fun m!3772735 () Bool)

(assert (=> b!3400321 m!3772735))

(declare-fun m!3772737 () Bool)

(assert (=> b!3400321 m!3772737))

(assert (=> b!3400321 m!3772559))

(declare-fun m!3772739 () Bool)

(assert (=> b!3400320 m!3772739))

(declare-fun m!3772741 () Bool)

(assert (=> d!967217 m!3772741))

(declare-fun m!3772743 () Bool)

(assert (=> d!967217 m!3772743))

(assert (=> d!967217 m!3772567))

(assert (=> b!3399982 d!967217))

(declare-fun d!967219 () Bool)

(declare-fun res!1375873 () Bool)

(declare-fun e!2110763 () Bool)

(assert (=> d!967219 (=> (not res!1375873) (not e!2110763))))

(declare-fun isEmpty!21258 (List!37107) Bool)

(assert (=> d!967219 (= res!1375873 (not (isEmpty!21258 (originalCharacters!6114 separatorToken!241))))))

(assert (=> d!967219 (= (inv!50089 separatorToken!241) e!2110763)))

(declare-fun b!3400327 () Bool)

(declare-fun res!1375874 () Bool)

(assert (=> b!3400327 (=> (not res!1375874) (not e!2110763))))

(assert (=> b!3400327 (= res!1375874 (= (originalCharacters!6114 separatorToken!241) (list!13409 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241)))))))

(declare-fun b!3400328 () Bool)

(assert (=> b!3400328 (= e!2110763 (= (size!27999 separatorToken!241) (size!28005 (originalCharacters!6114 separatorToken!241))))))

(assert (= (and d!967219 res!1375873) b!3400327))

(assert (= (and b!3400327 res!1375874) b!3400328))

(declare-fun b_lambda!96989 () Bool)

(assert (=> (not b_lambda!96989) (not b!3400327)))

(assert (=> b!3400327 t!265817))

(declare-fun b_and!237273 () Bool)

(assert (= b_and!237267 (and (=> t!265817 result!225864) b_and!237273)))

(assert (=> b!3400327 t!265819))

(declare-fun b_and!237275 () Bool)

(assert (= b_and!237269 (and (=> t!265819 result!225868) b_and!237275)))

(assert (=> b!3400327 t!265821))

(declare-fun b_and!237277 () Bool)

(assert (= b_and!237271 (and (=> t!265821 result!225870) b_and!237277)))

(declare-fun m!3772745 () Bool)

(assert (=> d!967219 m!3772745))

(assert (=> b!3400327 m!3772601))

(assert (=> b!3400327 m!3772601))

(declare-fun m!3772747 () Bool)

(assert (=> b!3400327 m!3772747))

(declare-fun m!3772749 () Bool)

(assert (=> b!3400328 m!3772749))

(assert (=> start!317506 d!967219))

(declare-fun d!967221 () Bool)

(assert (=> d!967221 (= (list!13409 (charsOf!3414 (h!42405 tokens!494))) (list!13413 (c!579555 (charsOf!3414 (h!42405 tokens!494)))))))

(declare-fun bs!556199 () Bool)

(assert (= bs!556199 d!967221))

(declare-fun m!3772751 () Bool)

(assert (=> bs!556199 m!3772751))

(assert (=> b!3399980 d!967221))

(declare-fun d!967223 () Bool)

(declare-fun lt!1156289 () BalanceConc!21964)

(assert (=> d!967223 (= (list!13409 lt!1156289) (originalCharacters!6114 (h!42405 tokens!494)))))

(assert (=> d!967223 (= lt!1156289 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494))))))

(assert (=> d!967223 (= (charsOf!3414 (h!42405 tokens!494)) lt!1156289)))

(declare-fun b_lambda!96991 () Bool)

(assert (=> (not b_lambda!96991) (not d!967223)))

(declare-fun tb!182241 () Bool)

(declare-fun t!265830 () Bool)

(assert (=> (and b!3399996 (= (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494))))) t!265830) tb!182241))

(declare-fun b!3400329 () Bool)

(declare-fun e!2110764 () Bool)

(declare-fun tp!1061112 () Bool)

(assert (=> b!3400329 (= e!2110764 (and (inv!50092 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494))))) tp!1061112))))

(declare-fun result!225878 () Bool)

(assert (=> tb!182241 (= result!225878 (and (inv!50093 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494)))) e!2110764))))

(assert (= tb!182241 b!3400329))

(declare-fun m!3772753 () Bool)

(assert (=> b!3400329 m!3772753))

(declare-fun m!3772755 () Bool)

(assert (=> tb!182241 m!3772755))

(assert (=> d!967223 t!265830))

(declare-fun b_and!237279 () Bool)

(assert (= b_and!237273 (and (=> t!265830 result!225878) b_and!237279)))

(declare-fun t!265832 () Bool)

(declare-fun tb!182243 () Bool)

(assert (=> (and b!3399977 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494))))) t!265832) tb!182243))

(declare-fun result!225880 () Bool)

(assert (= result!225880 result!225878))

(assert (=> d!967223 t!265832))

(declare-fun b_and!237281 () Bool)

(assert (= b_and!237275 (and (=> t!265832 result!225880) b_and!237281)))

(declare-fun t!265834 () Bool)

(declare-fun tb!182245 () Bool)

(assert (=> (and b!3399970 (= (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494))))) t!265834) tb!182245))

(declare-fun result!225882 () Bool)

(assert (= result!225882 result!225878))

(assert (=> d!967223 t!265834))

(declare-fun b_and!237283 () Bool)

(assert (= b_and!237277 (and (=> t!265834 result!225882) b_and!237283)))

(declare-fun m!3772757 () Bool)

(assert (=> d!967223 m!3772757))

(declare-fun m!3772759 () Bool)

(assert (=> d!967223 m!3772759))

(assert (=> b!3399980 d!967223))

(declare-fun b!3400330 () Bool)

(declare-fun e!2110767 () Bool)

(assert (=> b!3400330 (= e!2110767 (inv!17 (value!174360 (h!42405 tokens!494))))))

(declare-fun b!3400331 () Bool)

(declare-fun e!2110766 () Bool)

(assert (=> b!3400331 (= e!2110766 e!2110767)))

(declare-fun c!579617 () Bool)

(assert (=> b!3400331 (= c!579617 ((_ is IntegerValue!16891) (value!174360 (h!42405 tokens!494))))))

(declare-fun d!967225 () Bool)

(declare-fun c!579618 () Bool)

(assert (=> d!967225 (= c!579618 ((_ is IntegerValue!16890) (value!174360 (h!42405 tokens!494))))))

(assert (=> d!967225 (= (inv!21 (value!174360 (h!42405 tokens!494))) e!2110766)))

(declare-fun b!3400332 () Bool)

(declare-fun res!1375875 () Bool)

(declare-fun e!2110765 () Bool)

(assert (=> b!3400332 (=> res!1375875 e!2110765)))

(assert (=> b!3400332 (= res!1375875 (not ((_ is IntegerValue!16892) (value!174360 (h!42405 tokens!494)))))))

(assert (=> b!3400332 (= e!2110767 e!2110765)))

(declare-fun b!3400333 () Bool)

(assert (=> b!3400333 (= e!2110765 (inv!15 (value!174360 (h!42405 tokens!494))))))

(declare-fun b!3400334 () Bool)

(assert (=> b!3400334 (= e!2110766 (inv!16 (value!174360 (h!42405 tokens!494))))))

(assert (= (and d!967225 c!579618) b!3400334))

(assert (= (and d!967225 (not c!579618)) b!3400331))

(assert (= (and b!3400331 c!579617) b!3400330))

(assert (= (and b!3400331 (not c!579617)) b!3400332))

(assert (= (and b!3400332 (not res!1375875)) b!3400333))

(declare-fun m!3772761 () Bool)

(assert (=> b!3400330 m!3772761))

(declare-fun m!3772763 () Bool)

(assert (=> b!3400333 m!3772763))

(declare-fun m!3772765 () Bool)

(assert (=> b!3400334 m!3772765))

(assert (=> b!3399990 d!967225))

(declare-fun d!967227 () Bool)

(declare-fun isEmpty!21259 (Option!7440) Bool)

(assert (=> d!967227 (= (isDefined!5742 lt!1156139) (not (isEmpty!21259 lt!1156139)))))

(declare-fun bs!556200 () Bool)

(assert (= bs!556200 d!967227))

(declare-fun m!3772767 () Bool)

(assert (=> bs!556200 m!3772767))

(assert (=> b!3399969 d!967227))

(declare-fun b!3400387 () Bool)

(declare-fun e!2110796 () Bool)

(declare-fun e!2110795 () Bool)

(assert (=> b!3400387 (= e!2110796 e!2110795)))

(declare-fun res!1375896 () Bool)

(assert (=> b!3400387 (=> (not res!1375896) (not e!2110795))))

(declare-fun lt!1156307 () Option!7440)

(assert (=> b!3400387 (= res!1375896 (isDefined!5742 lt!1156307))))

(declare-fun b!3400388 () Bool)

(declare-fun contains!6797 (List!37108 Rule!10600) Bool)

(assert (=> b!3400388 (= e!2110795 (contains!6797 rules!2135 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))))

(declare-fun b!3400389 () Bool)

(declare-fun res!1375891 () Bool)

(assert (=> b!3400389 (=> (not res!1375891) (not e!2110795))))

(assert (=> b!3400389 (= res!1375891 (= (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307)))) (originalCharacters!6114 (_1!21442 (get!11811 lt!1156307)))))))

(declare-fun b!3400390 () Bool)

(declare-fun e!2110794 () Option!7440)

(declare-fun lt!1156305 () Option!7440)

(declare-fun lt!1156304 () Option!7440)

(assert (=> b!3400390 (= e!2110794 (ite (and ((_ is None!7439) lt!1156305) ((_ is None!7439) lt!1156304)) None!7439 (ite ((_ is None!7439) lt!1156304) lt!1156305 (ite ((_ is None!7439) lt!1156305) lt!1156304 (ite (>= (size!27999 (_1!21442 (v!36611 lt!1156305))) (size!27999 (_1!21442 (v!36611 lt!1156304)))) lt!1156305 lt!1156304)))))))

(declare-fun call!245836 () Option!7440)

(assert (=> b!3400390 (= lt!1156305 call!245836)))

(assert (=> b!3400390 (= lt!1156304 (maxPrefix!2555 thiss!18206 (t!265785 rules!2135) lt!1156137))))

(declare-fun b!3400392 () Bool)

(declare-fun res!1375893 () Bool)

(assert (=> b!3400392 (=> (not res!1375893) (not e!2110795))))

(declare-fun matchR!4743 (Regex!10159 List!37107) Bool)

(assert (=> b!3400392 (= res!1375893 (matchR!4743 (regex!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))) (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307))))))))

(declare-fun b!3400393 () Bool)

(declare-fun res!1375892 () Bool)

(assert (=> b!3400393 (=> (not res!1375892) (not e!2110795))))

(assert (=> b!3400393 (= res!1375892 (< (size!28005 (_2!21442 (get!11811 lt!1156307))) (size!28005 lt!1156137)))))

(declare-fun b!3400394 () Bool)

(declare-fun res!1375890 () Bool)

(assert (=> b!3400394 (=> (not res!1375890) (not e!2110795))))

(declare-fun apply!8635 (TokenValueInjection!10688 BalanceConc!21964) TokenValue!5630)

(assert (=> b!3400394 (= res!1375890 (= (value!174360 (_1!21442 (get!11811 lt!1156307))) (apply!8635 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))) (seqFromList!3853 (originalCharacters!6114 (_1!21442 (get!11811 lt!1156307)))))))))

(declare-fun bm!245831 () Bool)

(declare-fun maxPrefixOneRule!1704 (LexerInterface!4989 Rule!10600 List!37107) Option!7440)

(assert (=> bm!245831 (= call!245836 (maxPrefixOneRule!1704 thiss!18206 (h!42404 rules!2135) lt!1156137))))

(declare-fun b!3400395 () Bool)

(declare-fun res!1375894 () Bool)

(assert (=> b!3400395 (=> (not res!1375894) (not e!2110795))))

(assert (=> b!3400395 (= res!1375894 (= (++!9069 (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307)))) (_2!21442 (get!11811 lt!1156307))) lt!1156137))))

(declare-fun d!967229 () Bool)

(assert (=> d!967229 e!2110796))

(declare-fun res!1375895 () Bool)

(assert (=> d!967229 (=> res!1375895 e!2110796)))

(assert (=> d!967229 (= res!1375895 (isEmpty!21259 lt!1156307))))

(assert (=> d!967229 (= lt!1156307 e!2110794)))

(declare-fun c!579621 () Bool)

(assert (=> d!967229 (= c!579621 (and ((_ is Cons!36984) rules!2135) ((_ is Nil!36984) (t!265785 rules!2135))))))

(declare-fun lt!1156303 () Unit!52148)

(declare-fun lt!1156306 () Unit!52148)

(assert (=> d!967229 (= lt!1156303 lt!1156306)))

(declare-fun isPrefix!2834 (List!37107 List!37107) Bool)

(assert (=> d!967229 (isPrefix!2834 lt!1156137 lt!1156137)))

(declare-fun lemmaIsPrefixRefl!1793 (List!37107 List!37107) Unit!52148)

(assert (=> d!967229 (= lt!1156306 (lemmaIsPrefixRefl!1793 lt!1156137 lt!1156137))))

(declare-fun rulesValidInductive!1843 (LexerInterface!4989 List!37108) Bool)

(assert (=> d!967229 (rulesValidInductive!1843 thiss!18206 rules!2135)))

(assert (=> d!967229 (= (maxPrefix!2555 thiss!18206 rules!2135 lt!1156137) lt!1156307)))

(declare-fun b!3400391 () Bool)

(assert (=> b!3400391 (= e!2110794 call!245836)))

(assert (= (and d!967229 c!579621) b!3400391))

(assert (= (and d!967229 (not c!579621)) b!3400390))

(assert (= (or b!3400391 b!3400390) bm!245831))

(assert (= (and d!967229 (not res!1375895)) b!3400387))

(assert (= (and b!3400387 res!1375896) b!3400389))

(assert (= (and b!3400389 res!1375891) b!3400393))

(assert (= (and b!3400393 res!1375892) b!3400395))

(assert (= (and b!3400395 res!1375894) b!3400394))

(assert (= (and b!3400394 res!1375890) b!3400392))

(assert (= (and b!3400392 res!1375893) b!3400388))

(declare-fun m!3772771 () Bool)

(assert (=> b!3400395 m!3772771))

(declare-fun m!3772775 () Bool)

(assert (=> b!3400395 m!3772775))

(assert (=> b!3400395 m!3772775))

(declare-fun m!3772783 () Bool)

(assert (=> b!3400395 m!3772783))

(assert (=> b!3400395 m!3772783))

(declare-fun m!3772785 () Bool)

(assert (=> b!3400395 m!3772785))

(declare-fun m!3772787 () Bool)

(assert (=> bm!245831 m!3772787))

(declare-fun m!3772789 () Bool)

(assert (=> d!967229 m!3772789))

(declare-fun m!3772791 () Bool)

(assert (=> d!967229 m!3772791))

(declare-fun m!3772793 () Bool)

(assert (=> d!967229 m!3772793))

(declare-fun m!3772795 () Bool)

(assert (=> d!967229 m!3772795))

(assert (=> b!3400388 m!3772771))

(declare-fun m!3772797 () Bool)

(assert (=> b!3400388 m!3772797))

(assert (=> b!3400392 m!3772771))

(assert (=> b!3400392 m!3772775))

(assert (=> b!3400392 m!3772775))

(assert (=> b!3400392 m!3772783))

(assert (=> b!3400392 m!3772783))

(declare-fun m!3772799 () Bool)

(assert (=> b!3400392 m!3772799))

(assert (=> b!3400389 m!3772771))

(assert (=> b!3400389 m!3772775))

(assert (=> b!3400389 m!3772775))

(assert (=> b!3400389 m!3772783))

(assert (=> b!3400393 m!3772771))

(declare-fun m!3772801 () Bool)

(assert (=> b!3400393 m!3772801))

(assert (=> b!3400393 m!3772737))

(declare-fun m!3772803 () Bool)

(assert (=> b!3400387 m!3772803))

(assert (=> b!3400394 m!3772771))

(declare-fun m!3772805 () Bool)

(assert (=> b!3400394 m!3772805))

(assert (=> b!3400394 m!3772805))

(declare-fun m!3772807 () Bool)

(assert (=> b!3400394 m!3772807))

(declare-fun m!3772809 () Bool)

(assert (=> b!3400390 m!3772809))

(assert (=> b!3399969 d!967229))

(declare-fun d!967231 () Bool)

(assert (=> d!967231 (rulesProduceIndividualToken!2481 thiss!18206 rules!2135 (h!42405 tokens!494))))

(declare-fun lt!1156310 () Unit!52148)

(declare-fun choose!19721 (LexerInterface!4989 List!37108 List!37109 Token!10166) Unit!52148)

(assert (=> d!967231 (= lt!1156310 (choose!19721 thiss!18206 rules!2135 tokens!494 (h!42405 tokens!494)))))

(assert (=> d!967231 (not (isEmpty!21249 rules!2135))))

(assert (=> d!967231 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!978 thiss!18206 rules!2135 tokens!494 (h!42405 tokens!494)) lt!1156310)))

(declare-fun bs!556204 () Bool)

(assert (= bs!556204 d!967231))

(assert (=> bs!556204 m!3772085))

(declare-fun m!3772815 () Bool)

(assert (=> bs!556204 m!3772815))

(assert (=> bs!556204 m!3772113))

(assert (=> b!3399969 d!967231))

(declare-fun d!967237 () Bool)

(declare-fun res!1375901 () Bool)

(declare-fun e!2110820 () Bool)

(assert (=> d!967237 (=> res!1375901 e!2110820)))

(assert (=> d!967237 (= res!1375901 (not ((_ is Cons!36984) rules!2135)))))

(assert (=> d!967237 (= (sepAndNonSepRulesDisjointChars!1594 rules!2135 rules!2135) e!2110820)))

(declare-fun b!3400419 () Bool)

(declare-fun e!2110821 () Bool)

(assert (=> b!3400419 (= e!2110820 e!2110821)))

(declare-fun res!1375902 () Bool)

(assert (=> b!3400419 (=> (not res!1375902) (not e!2110821))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!693 (Rule!10600 List!37108) Bool)

(assert (=> b!3400419 (= res!1375902 (ruleDisjointCharsFromAllFromOtherType!693 (h!42404 rules!2135) rules!2135))))

(declare-fun b!3400420 () Bool)

(assert (=> b!3400420 (= e!2110821 (sepAndNonSepRulesDisjointChars!1594 rules!2135 (t!265785 rules!2135)))))

(assert (= (and d!967237 (not res!1375901)) b!3400419))

(assert (= (and b!3400419 res!1375902) b!3400420))

(declare-fun m!3772817 () Bool)

(assert (=> b!3400419 m!3772817))

(declare-fun m!3772819 () Bool)

(assert (=> b!3400420 m!3772819))

(assert (=> b!3399989 d!967237))

(declare-fun d!967239 () Bool)

(assert (=> d!967239 (= (inv!50085 (tag!5984 (rule!7962 separatorToken!241))) (= (mod (str.len (value!174359 (tag!5984 (rule!7962 separatorToken!241)))) 2) 0))))

(assert (=> b!3399988 d!967239))

(declare-fun d!967241 () Bool)

(declare-fun res!1375903 () Bool)

(declare-fun e!2110822 () Bool)

(assert (=> d!967241 (=> (not res!1375903) (not e!2110822))))

(assert (=> d!967241 (= res!1375903 (semiInverseModEq!2257 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (toValue!7604 (transformation!5400 (rule!7962 separatorToken!241)))))))

(assert (=> d!967241 (= (inv!50088 (transformation!5400 (rule!7962 separatorToken!241))) e!2110822)))

(declare-fun b!3400421 () Bool)

(assert (=> b!3400421 (= e!2110822 (equivClasses!2156 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (toValue!7604 (transformation!5400 (rule!7962 separatorToken!241)))))))

(assert (= (and d!967241 res!1375903) b!3400421))

(declare-fun m!3772821 () Bool)

(assert (=> d!967241 m!3772821))

(declare-fun m!3772823 () Bool)

(assert (=> b!3400421 m!3772823))

(assert (=> b!3399988 d!967241))

(declare-fun d!967243 () Bool)

(declare-fun res!1375904 () Bool)

(declare-fun e!2110823 () Bool)

(assert (=> d!967243 (=> (not res!1375904) (not e!2110823))))

(assert (=> d!967243 (= res!1375904 (not (isEmpty!21258 (originalCharacters!6114 (h!42405 tokens!494)))))))

(assert (=> d!967243 (= (inv!50089 (h!42405 tokens!494)) e!2110823)))

(declare-fun b!3400422 () Bool)

(declare-fun res!1375905 () Bool)

(assert (=> b!3400422 (=> (not res!1375905) (not e!2110823))))

(assert (=> b!3400422 (= res!1375905 (= (originalCharacters!6114 (h!42405 tokens!494)) (list!13409 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494))))))))

(declare-fun b!3400423 () Bool)

(assert (=> b!3400423 (= e!2110823 (= (size!27999 (h!42405 tokens!494)) (size!28005 (originalCharacters!6114 (h!42405 tokens!494)))))))

(assert (= (and d!967243 res!1375904) b!3400422))

(assert (= (and b!3400422 res!1375905) b!3400423))

(declare-fun b_lambda!97009 () Bool)

(assert (=> (not b_lambda!97009) (not b!3400422)))

(assert (=> b!3400422 t!265830))

(declare-fun b_and!237293 () Bool)

(assert (= b_and!237279 (and (=> t!265830 result!225878) b_and!237293)))

(assert (=> b!3400422 t!265832))

(declare-fun b_and!237295 () Bool)

(assert (= b_and!237281 (and (=> t!265832 result!225880) b_and!237295)))

(assert (=> b!3400422 t!265834))

(declare-fun b_and!237297 () Bool)

(assert (= b_and!237283 (and (=> t!265834 result!225882) b_and!237297)))

(declare-fun m!3772825 () Bool)

(assert (=> d!967243 m!3772825))

(assert (=> b!3400422 m!3772759))

(assert (=> b!3400422 m!3772759))

(declare-fun m!3772827 () Bool)

(assert (=> b!3400422 m!3772827))

(declare-fun m!3772829 () Bool)

(assert (=> b!3400423 m!3772829))

(assert (=> b!3399987 d!967243))

(declare-fun b!3400426 () Bool)

(declare-fun res!1375907 () Bool)

(declare-fun e!2110825 () Bool)

(assert (=> b!3400426 (=> (not res!1375907) (not e!2110825))))

(declare-fun lt!1156311 () List!37107)

(assert (=> b!3400426 (= res!1375907 (= (size!28005 lt!1156311) (+ (size!28005 lt!1156137) (size!28005 lt!1156146))))))

(declare-fun b!3400425 () Bool)

(declare-fun e!2110824 () List!37107)

(assert (=> b!3400425 (= e!2110824 (Cons!36983 (h!42403 lt!1156137) (++!9069 (t!265784 lt!1156137) lt!1156146)))))

(declare-fun b!3400427 () Bool)

(assert (=> b!3400427 (= e!2110825 (or (not (= lt!1156146 Nil!36983)) (= lt!1156311 lt!1156137)))))

(declare-fun d!967245 () Bool)

(assert (=> d!967245 e!2110825))

(declare-fun res!1375906 () Bool)

(assert (=> d!967245 (=> (not res!1375906) (not e!2110825))))

(assert (=> d!967245 (= res!1375906 (= (content!5117 lt!1156311) ((_ map or) (content!5117 lt!1156137) (content!5117 lt!1156146))))))

(assert (=> d!967245 (= lt!1156311 e!2110824)))

(declare-fun c!579622 () Bool)

(assert (=> d!967245 (= c!579622 ((_ is Nil!36983) lt!1156137))))

(assert (=> d!967245 (= (++!9069 lt!1156137 lt!1156146) lt!1156311)))

(declare-fun b!3400424 () Bool)

(assert (=> b!3400424 (= e!2110824 lt!1156146)))

(assert (= (and d!967245 c!579622) b!3400424))

(assert (= (and d!967245 (not c!579622)) b!3400425))

(assert (= (and d!967245 res!1375906) b!3400426))

(assert (= (and b!3400426 res!1375907) b!3400427))

(declare-fun m!3772831 () Bool)

(assert (=> b!3400426 m!3772831))

(assert (=> b!3400426 m!3772737))

(declare-fun m!3772833 () Bool)

(assert (=> b!3400426 m!3772833))

(declare-fun m!3772835 () Bool)

(assert (=> b!3400425 m!3772835))

(declare-fun m!3772837 () Bool)

(assert (=> d!967245 m!3772837))

(assert (=> d!967245 m!3772743))

(declare-fun m!3772839 () Bool)

(assert (=> d!967245 m!3772839))

(assert (=> b!3399986 d!967245))

(declare-fun d!967247 () Bool)

(assert (=> d!967247 (= (++!9069 (++!9069 lt!1156137 lt!1156140) lt!1156144) (++!9069 lt!1156137 (++!9069 lt!1156140 lt!1156144)))))

(declare-fun lt!1156314 () Unit!52148)

(declare-fun choose!19722 (List!37107 List!37107 List!37107) Unit!52148)

(assert (=> d!967247 (= lt!1156314 (choose!19722 lt!1156137 lt!1156140 lt!1156144))))

(assert (=> d!967247 (= (lemmaConcatAssociativity!1904 lt!1156137 lt!1156140 lt!1156144) lt!1156314)))

(declare-fun bs!556205 () Bool)

(assert (= bs!556205 d!967247))

(assert (=> bs!556205 m!3772117))

(declare-fun m!3772841 () Bool)

(assert (=> bs!556205 m!3772841))

(assert (=> bs!556205 m!3772145))

(declare-fun m!3772843 () Bool)

(assert (=> bs!556205 m!3772843))

(assert (=> bs!556205 m!3772117))

(assert (=> bs!556205 m!3772119))

(assert (=> bs!556205 m!3772145))

(assert (=> b!3399986 d!967247))

(declare-fun b!3400432 () Bool)

(declare-fun e!2110828 () Bool)

(declare-fun tp_is_empty!17505 () Bool)

(declare-fun tp!1061171 () Bool)

(assert (=> b!3400432 (= e!2110828 (and tp_is_empty!17505 tp!1061171))))

(assert (=> b!3399990 (= tp!1061102 e!2110828)))

(assert (= (and b!3399990 ((_ is Cons!36983) (originalCharacters!6114 (h!42405 tokens!494)))) b!3400432))

(declare-fun b!3400446 () Bool)

(declare-fun e!2110831 () Bool)

(declare-fun tp!1061182 () Bool)

(declare-fun tp!1061184 () Bool)

(assert (=> b!3400446 (= e!2110831 (and tp!1061182 tp!1061184))))

(declare-fun b!3400445 () Bool)

(declare-fun tp!1061183 () Bool)

(assert (=> b!3400445 (= e!2110831 tp!1061183)))

(declare-fun b!3400444 () Bool)

(declare-fun tp!1061186 () Bool)

(declare-fun tp!1061185 () Bool)

(assert (=> b!3400444 (= e!2110831 (and tp!1061186 tp!1061185))))

(assert (=> b!3399984 (= tp!1061098 e!2110831)))

(declare-fun b!3400443 () Bool)

(assert (=> b!3400443 (= e!2110831 tp_is_empty!17505)))

(assert (= (and b!3399984 ((_ is ElementMatch!10159) (regex!5400 (h!42404 rules!2135)))) b!3400443))

(assert (= (and b!3399984 ((_ is Concat!15789) (regex!5400 (h!42404 rules!2135)))) b!3400444))

(assert (= (and b!3399984 ((_ is Star!10159) (regex!5400 (h!42404 rules!2135)))) b!3400445))

(assert (= (and b!3399984 ((_ is Union!10159) (regex!5400 (h!42404 rules!2135)))) b!3400446))

(declare-fun b!3400447 () Bool)

(declare-fun e!2110832 () Bool)

(declare-fun tp!1061187 () Bool)

(assert (=> b!3400447 (= e!2110832 (and tp_is_empty!17505 tp!1061187))))

(assert (=> b!3399995 (= tp!1061097 e!2110832)))

(assert (= (and b!3399995 ((_ is Cons!36983) (originalCharacters!6114 separatorToken!241))) b!3400447))

(declare-fun b!3400451 () Bool)

(declare-fun e!2110833 () Bool)

(declare-fun tp!1061188 () Bool)

(declare-fun tp!1061190 () Bool)

(assert (=> b!3400451 (= e!2110833 (and tp!1061188 tp!1061190))))

(declare-fun b!3400450 () Bool)

(declare-fun tp!1061189 () Bool)

(assert (=> b!3400450 (= e!2110833 tp!1061189)))

(declare-fun b!3400449 () Bool)

(declare-fun tp!1061192 () Bool)

(declare-fun tp!1061191 () Bool)

(assert (=> b!3400449 (= e!2110833 (and tp!1061192 tp!1061191))))

(assert (=> b!3399988 (= tp!1061092 e!2110833)))

(declare-fun b!3400448 () Bool)

(assert (=> b!3400448 (= e!2110833 tp_is_empty!17505)))

(assert (= (and b!3399988 ((_ is ElementMatch!10159) (regex!5400 (rule!7962 separatorToken!241)))) b!3400448))

(assert (= (and b!3399988 ((_ is Concat!15789) (regex!5400 (rule!7962 separatorToken!241)))) b!3400449))

(assert (= (and b!3399988 ((_ is Star!10159) (regex!5400 (rule!7962 separatorToken!241)))) b!3400450))

(assert (= (and b!3399988 ((_ is Union!10159) (regex!5400 (rule!7962 separatorToken!241)))) b!3400451))

(declare-fun b!3400455 () Bool)

(declare-fun e!2110834 () Bool)

(declare-fun tp!1061193 () Bool)

(declare-fun tp!1061195 () Bool)

(assert (=> b!3400455 (= e!2110834 (and tp!1061193 tp!1061195))))

(declare-fun b!3400454 () Bool)

(declare-fun tp!1061194 () Bool)

(assert (=> b!3400454 (= e!2110834 tp!1061194)))

(declare-fun b!3400453 () Bool)

(declare-fun tp!1061197 () Bool)

(declare-fun tp!1061196 () Bool)

(assert (=> b!3400453 (= e!2110834 (and tp!1061197 tp!1061196))))

(assert (=> b!3399983 (= tp!1061091 e!2110834)))

(declare-fun b!3400452 () Bool)

(assert (=> b!3400452 (= e!2110834 tp_is_empty!17505)))

(assert (= (and b!3399983 ((_ is ElementMatch!10159) (regex!5400 (rule!7962 (h!42405 tokens!494))))) b!3400452))

(assert (= (and b!3399983 ((_ is Concat!15789) (regex!5400 (rule!7962 (h!42405 tokens!494))))) b!3400453))

(assert (= (and b!3399983 ((_ is Star!10159) (regex!5400 (rule!7962 (h!42405 tokens!494))))) b!3400454))

(assert (= (and b!3399983 ((_ is Union!10159) (regex!5400 (rule!7962 (h!42405 tokens!494))))) b!3400455))

(declare-fun b!3400466 () Bool)

(declare-fun b_free!89053 () Bool)

(declare-fun b_next!89757 () Bool)

(assert (=> b!3400466 (= b_free!89053 (not b_next!89757))))

(declare-fun tp!1061208 () Bool)

(declare-fun b_and!237299 () Bool)

(assert (=> b!3400466 (= tp!1061208 b_and!237299)))

(declare-fun b_free!89055 () Bool)

(declare-fun b_next!89759 () Bool)

(assert (=> b!3400466 (= b_free!89055 (not b_next!89759))))

(declare-fun t!265850 () Bool)

(declare-fun tb!182259 () Bool)

(assert (=> (and b!3400466 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 rules!2135)))) (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241)))) t!265850) tb!182259))

(declare-fun result!225910 () Bool)

(assert (= result!225910 result!225864))

(assert (=> b!3400327 t!265850))

(declare-fun t!265852 () Bool)

(declare-fun tb!182261 () Bool)

(assert (=> (and b!3400466 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 rules!2135)))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494))))) t!265852) tb!182261))

(declare-fun result!225912 () Bool)

(assert (= result!225912 result!225878))

(assert (=> b!3400422 t!265852))

(assert (=> d!967183 t!265850))

(assert (=> d!967223 t!265852))

(declare-fun tb!182263 () Bool)

(declare-fun t!265854 () Bool)

(assert (=> (and b!3400466 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 rules!2135)))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494)))))) t!265854) tb!182263))

(declare-fun result!225914 () Bool)

(assert (= result!225914 result!225872))

(assert (=> d!967193 t!265854))

(declare-fun b_and!237301 () Bool)

(declare-fun tp!1061207 () Bool)

(assert (=> b!3400466 (= tp!1061207 (and (=> t!265854 result!225914) (=> t!265852 result!225912) (=> t!265850 result!225910) b_and!237301))))

(declare-fun e!2110843 () Bool)

(assert (=> b!3400466 (= e!2110843 (and tp!1061208 tp!1061207))))

(declare-fun b!3400465 () Bool)

(declare-fun tp!1061209 () Bool)

(declare-fun e!2110844 () Bool)

(assert (=> b!3400465 (= e!2110844 (and tp!1061209 (inv!50085 (tag!5984 (h!42404 (t!265785 rules!2135)))) (inv!50088 (transformation!5400 (h!42404 (t!265785 rules!2135)))) e!2110843))))

(declare-fun b!3400464 () Bool)

(declare-fun e!2110846 () Bool)

(declare-fun tp!1061206 () Bool)

(assert (=> b!3400464 (= e!2110846 (and e!2110844 tp!1061206))))

(assert (=> b!3399971 (= tp!1061090 e!2110846)))

(assert (= b!3400465 b!3400466))

(assert (= b!3400464 b!3400465))

(assert (= (and b!3399971 ((_ is Cons!36984) (t!265785 rules!2135))) b!3400464))

(declare-fun m!3772845 () Bool)

(assert (=> b!3400465 m!3772845))

(declare-fun m!3772847 () Bool)

(assert (=> b!3400465 m!3772847))

(declare-fun b!3400480 () Bool)

(declare-fun b_free!89057 () Bool)

(declare-fun b_next!89761 () Bool)

(assert (=> b!3400480 (= b_free!89057 (not b_next!89761))))

(declare-fun tp!1061221 () Bool)

(declare-fun b_and!237303 () Bool)

(assert (=> b!3400480 (= tp!1061221 b_and!237303)))

(declare-fun b_free!89059 () Bool)

(declare-fun b_next!89763 () Bool)

(assert (=> b!3400480 (= b_free!89059 (not b_next!89763))))

(declare-fun t!265856 () Bool)

(declare-fun tb!182265 () Bool)

(assert (=> (and b!3400480 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241)))) t!265856) tb!182265))

(declare-fun result!225918 () Bool)

(assert (= result!225918 result!225864))

(assert (=> b!3400327 t!265856))

(declare-fun t!265858 () Bool)

(declare-fun tb!182267 () Bool)

(assert (=> (and b!3400480 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494))))) t!265858) tb!182267))

(declare-fun result!225920 () Bool)

(assert (= result!225920 result!225878))

(assert (=> b!3400422 t!265858))

(assert (=> d!967183 t!265856))

(assert (=> d!967223 t!265858))

(declare-fun t!265860 () Bool)

(declare-fun tb!182269 () Bool)

(assert (=> (and b!3400480 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494)))))) t!265860) tb!182269))

(declare-fun result!225922 () Bool)

(assert (= result!225922 result!225872))

(assert (=> d!967193 t!265860))

(declare-fun tp!1061223 () Bool)

(declare-fun b_and!237305 () Bool)

(assert (=> b!3400480 (= tp!1061223 (and (=> t!265856 result!225918) (=> t!265860 result!225922) (=> t!265858 result!225920) b_and!237305))))

(declare-fun tp!1061220 () Bool)

(declare-fun e!2110863 () Bool)

(declare-fun e!2110859 () Bool)

(declare-fun b!3400478 () Bool)

(assert (=> b!3400478 (= e!2110863 (and (inv!21 (value!174360 (h!42405 (t!265786 tokens!494)))) e!2110859 tp!1061220))))

(declare-fun e!2110861 () Bool)

(assert (=> b!3399987 (= tp!1061096 e!2110861)))

(declare-fun e!2110862 () Bool)

(assert (=> b!3400480 (= e!2110862 (and tp!1061221 tp!1061223))))

(declare-fun tp!1061222 () Bool)

(declare-fun b!3400479 () Bool)

(assert (=> b!3400479 (= e!2110859 (and tp!1061222 (inv!50085 (tag!5984 (rule!7962 (h!42405 (t!265786 tokens!494))))) (inv!50088 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) e!2110862))))

(declare-fun b!3400477 () Bool)

(declare-fun tp!1061224 () Bool)

(assert (=> b!3400477 (= e!2110861 (and (inv!50089 (h!42405 (t!265786 tokens!494))) e!2110863 tp!1061224))))

(assert (= b!3400479 b!3400480))

(assert (= b!3400478 b!3400479))

(assert (= b!3400477 b!3400478))

(assert (= (and b!3399987 ((_ is Cons!36985) (t!265786 tokens!494))) b!3400477))

(declare-fun m!3772849 () Bool)

(assert (=> b!3400478 m!3772849))

(declare-fun m!3772851 () Bool)

(assert (=> b!3400479 m!3772851))

(declare-fun m!3772853 () Bool)

(assert (=> b!3400479 m!3772853))

(declare-fun m!3772855 () Bool)

(assert (=> b!3400477 m!3772855))

(declare-fun b_lambda!97011 () Bool)

(assert (= b_lambda!96983 (or b!3399994 b_lambda!97011)))

(declare-fun bs!556206 () Bool)

(declare-fun d!967249 () Bool)

(assert (= bs!556206 (and d!967249 b!3399994)))

(assert (=> bs!556206 (= (dynLambda!15439 lambda!120961 (h!42405 tokens!494)) (not (isSeparator!5400 (rule!7962 (h!42405 tokens!494)))))))

(assert (=> d!967169 d!967249))

(declare-fun b_lambda!97013 () Bool)

(assert (= b_lambda!96989 (or (and b!3400466 b_free!89055 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 rules!2135)))) (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))))) (and b!3400480 b_free!89059 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))))) (and b!3399977 b_free!89039 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))))) (and b!3399996 b_free!89035) (and b!3399970 b_free!89043 (= (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))))) b_lambda!97013)))

(declare-fun b_lambda!97015 () Bool)

(assert (= b_lambda!96981 (or b!3399994 b_lambda!97015)))

(declare-fun bs!556207 () Bool)

(declare-fun d!967251 () Bool)

(assert (= bs!556207 (and d!967251 b!3399994)))

(assert (=> bs!556207 (= (dynLambda!15439 lambda!120961 (h!42405 (t!265786 tokens!494))) (not (isSeparator!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))))))

(assert (=> d!967167 d!967251))

(declare-fun b_lambda!97017 () Bool)

(assert (= b_lambda!96967 (or b!3399994 b_lambda!97017)))

(assert (=> b!3400066 d!967249))

(declare-fun b_lambda!97019 () Bool)

(assert (= b_lambda!96991 (or (and b!3399996 b_free!89035 (= (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))))) (and b!3399977 b_free!89039) (and b!3400480 b_free!89059 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))))) (and b!3399970 b_free!89043 (= (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))))) (and b!3400466 b_free!89055 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 rules!2135)))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))))) b_lambda!97019)))

(declare-fun b_lambda!97021 () Bool)

(assert (= b_lambda!96985 (or (and b!3400466 b_free!89055 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 rules!2135)))) (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))))) (and b!3400480 b_free!89059 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))))) (and b!3399977 b_free!89039 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))))) (and b!3399996 b_free!89035) (and b!3399970 b_free!89043 (= (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))))) b_lambda!97021)))

(declare-fun b_lambda!97023 () Bool)

(assert (= b_lambda!96987 (or (and b!3400480 b_free!89059) (and b!3399996 b_free!89035 (= (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))))) (and b!3399970 b_free!89043 (= (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))))) (and b!3399977 b_free!89039 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))))) (and b!3400466 b_free!89055 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 rules!2135)))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))))) b_lambda!97023)))

(declare-fun b_lambda!97025 () Bool)

(assert (= b_lambda!97009 (or (and b!3399996 b_free!89035 (= (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))))) (and b!3399977 b_free!89039) (and b!3400480 b_free!89059 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))))) (and b!3399970 b_free!89043 (= (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))))) (and b!3400466 b_free!89055 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 rules!2135)))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))))) b_lambda!97025)))

(check-sat (not b_next!89757) (not b!3400477) (not b!3400301) (not b!3400423) (not b!3400422) (not d!967191) (not d!967221) (not d!967231) (not b!3400334) (not tb!182229) (not b!3400446) (not b!3400281) (not d!967183) (not d!967201) (not b!3400333) (not d!967195) b_and!237299 (not b!3400226) (not b!3400465) (not b!3400279) (not b!3400445) (not b!3400283) (not b!3400245) (not b!3400327) b_and!237301 (not b!3400100) (not b!3400278) (not b_next!89743) (not d!967177) (not d!967209) (not b!3400330) (not b!3400390) (not b!3400228) (not b!3400316) b_and!237227 (not d!967163) (not d!967241) (not b!3400321) (not b!3400254) (not b!3400449) (not b!3400478) (not b!3400479) b_and!237295 (not b_lambda!97017) (not b!3400299) (not b!3400253) (not b!3400222) (not d!967215) (not tb!182235) (not b!3400447) (not b!3400426) (not b!3400229) (not b_next!89763) b_and!237219 (not d!967171) (not b_lambda!97025) (not b!3400393) (not b_lambda!97015) (not b_lambda!97023) (not d!967193) (not b!3400455) (not b!3400419) (not b!3400227) (not b!3400444) (not b_lambda!97011) (not d!967103) (not b!3400432) (not b!3400450) (not b_next!89747) (not b!3400394) (not b!3400387) (not b!3400329) (not b!3400234) (not d!967243) (not b_next!89745) (not tb!182241) (not d!967227) (not b!3400067) (not d!967179) (not bm!245831) (not b!3400392) (not b_next!89761) (not b!3400250) (not d!967213) (not b_next!89759) (not d!967097) (not b!3400314) (not b!3400112) b_and!237223 (not d!967245) b_and!237293 (not b!3400205) (not b!3400464) (not b!3400215) (not d!967181) (not d!967173) (not b_lambda!97013) (not b!3400313) (not b!3400223) (not b_next!89737) (not b!3400453) (not b!3400060) (not d!967087) (not d!967197) (not b!3400061) (not b!3400309) (not d!967185) (not b!3400099) (not d!967223) (not b_lambda!97019) (not b_next!89741) (not d!967219) (not b!3400114) (not b!3400395) b_and!237297 (not b_next!89739) (not b!3400057) b_and!237305 (not d!967229) (not b!3400304) (not b!3400425) b_and!237303 (not b!3400246) (not b!3400454) (not b!3400421) (not b!3400388) (not b!3400451) (not b!3400113) (not d!967167) (not b!3400389) (not b!3400328) (not b!3400098) (not b!3400317) (not d!967101) (not d!967099) tp_is_empty!17505 (not b!3400420) (not d!967203) (not d!967217) (not b!3400249) (not b_lambda!97021) (not b!3400320) (not d!967169) (not d!967247) (not b!3400115))
(check-sat b_and!237299 b_and!237301 (not b_next!89743) (not b_next!89757) b_and!237227 b_and!237295 (not b_next!89761) b_and!237293 (not b_next!89737) b_and!237305 b_and!237303 (not b_next!89763) b_and!237219 (not b_next!89747) (not b_next!89745) (not b_next!89759) b_and!237223 (not b_next!89741) b_and!237297 (not b_next!89739))
(get-model)

(declare-fun d!967337 () Bool)

(assert (=> d!967337 true))

(declare-fun order!19551 () Int)

(declare-fun lambda!120981 () Int)

(declare-fun dynLambda!15446 (Int Int) Int)

(assert (=> d!967337 (< (dynLambda!15442 order!19545 (toChars!7463 (transformation!5400 (h!42404 rules!2135)))) (dynLambda!15446 order!19551 lambda!120981))))

(assert (=> d!967337 true))

(assert (=> d!967337 (< (dynLambda!15440 order!19541 (toValue!7604 (transformation!5400 (h!42404 rules!2135)))) (dynLambda!15446 order!19551 lambda!120981))))

(declare-fun Forall!1326 (Int) Bool)

(assert (=> d!967337 (= (semiInverseModEq!2257 (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toValue!7604 (transformation!5400 (h!42404 rules!2135)))) (Forall!1326 lambda!120981))))

(declare-fun bs!556226 () Bool)

(assert (= bs!556226 d!967337))

(declare-fun m!3773039 () Bool)

(assert (=> bs!556226 m!3773039))

(assert (=> d!967209 d!967337))

(declare-fun d!967339 () Bool)

(assert (=> d!967339 (= (inv!50085 (tag!5984 (h!42404 (t!265785 rules!2135)))) (= (mod (str.len (value!174359 (tag!5984 (h!42404 (t!265785 rules!2135))))) 2) 0))))

(assert (=> b!3400465 d!967339))

(declare-fun d!967343 () Bool)

(declare-fun res!1375968 () Bool)

(declare-fun e!2110935 () Bool)

(assert (=> d!967343 (=> (not res!1375968) (not e!2110935))))

(assert (=> d!967343 (= res!1375968 (semiInverseModEq!2257 (toChars!7463 (transformation!5400 (h!42404 (t!265785 rules!2135)))) (toValue!7604 (transformation!5400 (h!42404 (t!265785 rules!2135))))))))

(assert (=> d!967343 (= (inv!50088 (transformation!5400 (h!42404 (t!265785 rules!2135)))) e!2110935)))

(declare-fun b!3400601 () Bool)

(assert (=> b!3400601 (= e!2110935 (equivClasses!2156 (toChars!7463 (transformation!5400 (h!42404 (t!265785 rules!2135)))) (toValue!7604 (transformation!5400 (h!42404 (t!265785 rules!2135))))))))

(assert (= (and d!967343 res!1375968) b!3400601))

(declare-fun m!3773047 () Bool)

(assert (=> d!967343 m!3773047))

(declare-fun m!3773051 () Bool)

(assert (=> b!3400601 m!3773051))

(assert (=> b!3400465 d!967343))

(declare-fun d!967347 () Bool)

(declare-fun list!13415 (Conc!11176) List!37109)

(assert (=> d!967347 (= (list!13412 (_1!21443 lt!1156185)) (list!13415 (c!579556 (_1!21443 lt!1156185))))))

(declare-fun bs!556227 () Bool)

(assert (= bs!556227 d!967347))

(declare-fun m!3773053 () Bool)

(assert (=> bs!556227 m!3773053))

(assert (=> b!3400112 d!967347))

(declare-fun b!3400651 () Bool)

(declare-fun e!2110970 () Bool)

(declare-fun lt!1156377 () tuple2!36622)

(assert (=> b!3400651 (= e!2110970 (not (isEmpty!21255 (_1!21445 lt!1156377))))))

(declare-fun b!3400652 () Bool)

(declare-fun e!2110969 () Bool)

(assert (=> b!3400652 (= e!2110969 (= (_2!21445 lt!1156377) (list!13409 (seqFromList!3853 lt!1156137))))))

(declare-fun d!967349 () Bool)

(assert (=> d!967349 e!2110969))

(declare-fun c!579670 () Bool)

(declare-fun size!28008 (List!37109) Int)

(assert (=> d!967349 (= c!579670 (> (size!28008 (_1!21445 lt!1156377)) 0))))

(declare-fun e!2110971 () tuple2!36622)

(assert (=> d!967349 (= lt!1156377 e!2110971)))

(declare-fun c!579671 () Bool)

(declare-fun lt!1156376 () Option!7440)

(assert (=> d!967349 (= c!579671 ((_ is Some!7439) lt!1156376))))

(assert (=> d!967349 (= lt!1156376 (maxPrefix!2555 thiss!18206 rules!2135 (list!13409 (seqFromList!3853 lt!1156137))))))

(assert (=> d!967349 (= (lexList!1422 thiss!18206 rules!2135 (list!13409 (seqFromList!3853 lt!1156137))) lt!1156377)))

(declare-fun b!3400653 () Bool)

(assert (=> b!3400653 (= e!2110971 (tuple2!36623 Nil!36985 (list!13409 (seqFromList!3853 lt!1156137))))))

(declare-fun b!3400654 () Bool)

(assert (=> b!3400654 (= e!2110969 e!2110970)))

(declare-fun res!1375989 () Bool)

(assert (=> b!3400654 (= res!1375989 (< (size!28005 (_2!21445 lt!1156377)) (size!28005 (list!13409 (seqFromList!3853 lt!1156137)))))))

(assert (=> b!3400654 (=> (not res!1375989) (not e!2110970))))

(declare-fun b!3400655 () Bool)

(declare-fun lt!1156375 () tuple2!36622)

(assert (=> b!3400655 (= e!2110971 (tuple2!36623 (Cons!36985 (_1!21442 (v!36611 lt!1156376)) (_1!21445 lt!1156375)) (_2!21445 lt!1156375)))))

(assert (=> b!3400655 (= lt!1156375 (lexList!1422 thiss!18206 rules!2135 (_2!21442 (v!36611 lt!1156376))))))

(assert (= (and d!967349 c!579671) b!3400655))

(assert (= (and d!967349 (not c!579671)) b!3400653))

(assert (= (and d!967349 c!579670) b!3400654))

(assert (= (and d!967349 (not c!579670)) b!3400652))

(assert (= (and b!3400654 res!1375989) b!3400651))

(declare-fun m!3773163 () Bool)

(assert (=> b!3400651 m!3773163))

(declare-fun m!3773165 () Bool)

(assert (=> d!967349 m!3773165))

(assert (=> d!967349 m!3772337))

(declare-fun m!3773167 () Bool)

(assert (=> d!967349 m!3773167))

(declare-fun m!3773169 () Bool)

(assert (=> b!3400654 m!3773169))

(assert (=> b!3400654 m!3772337))

(declare-fun m!3773171 () Bool)

(assert (=> b!3400654 m!3773171))

(declare-fun m!3773173 () Bool)

(assert (=> b!3400655 m!3773173))

(assert (=> b!3400112 d!967349))

(declare-fun d!967393 () Bool)

(assert (=> d!967393 (= (list!13409 (seqFromList!3853 lt!1156137)) (list!13413 (c!579555 (seqFromList!3853 lt!1156137))))))

(declare-fun bs!556238 () Bool)

(assert (= bs!556238 d!967393))

(declare-fun m!3773175 () Bool)

(assert (=> bs!556238 m!3773175))

(assert (=> b!3400112 d!967393))

(declare-fun d!967395 () Bool)

(declare-fun lt!1156386 () Bool)

(assert (=> d!967395 (= lt!1156386 (isEmpty!21258 (list!13409 (_2!21443 (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 (h!42405 tokens!494))))))))))

(declare-fun isEmpty!21261 (Conc!11175) Bool)

(assert (=> d!967395 (= lt!1156386 (isEmpty!21261 (c!579555 (_2!21443 (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 (h!42405 tokens!494))))))))))

(assert (=> d!967395 (= (isEmpty!21254 (_2!21443 (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 (h!42405 tokens!494)))))) lt!1156386)))

(declare-fun bs!556241 () Bool)

(assert (= bs!556241 d!967395))

(declare-fun m!3773217 () Bool)

(assert (=> bs!556241 m!3773217))

(assert (=> bs!556241 m!3773217))

(declare-fun m!3773221 () Bool)

(assert (=> bs!556241 m!3773221))

(declare-fun m!3773225 () Bool)

(assert (=> bs!556241 m!3773225))

(assert (=> b!3400229 d!967395))

(declare-fun lt!1156388 () tuple2!36618)

(declare-fun e!2110980 () Bool)

(declare-fun b!3400670 () Bool)

(assert (=> b!3400670 (= e!2110980 (= (_2!21443 lt!1156388) (print!2054 thiss!18206 (singletonSeq!2496 (h!42405 tokens!494)))))))

(declare-fun b!3400671 () Bool)

(declare-fun res!1375995 () Bool)

(declare-fun e!2110982 () Bool)

(assert (=> b!3400671 (=> (not res!1375995) (not e!2110982))))

(assert (=> b!3400671 (= res!1375995 (= (list!13412 (_1!21443 lt!1156388)) (_1!21445 (lexList!1422 thiss!18206 rules!2135 (list!13409 (print!2054 thiss!18206 (singletonSeq!2496 (h!42405 tokens!494))))))))))

(declare-fun d!967415 () Bool)

(assert (=> d!967415 e!2110982))

(declare-fun res!1375996 () Bool)

(assert (=> d!967415 (=> (not res!1375996) (not e!2110982))))

(assert (=> d!967415 (= res!1375996 e!2110980)))

(declare-fun c!579677 () Bool)

(assert (=> d!967415 (= c!579677 (> (size!28003 (_1!21443 lt!1156388)) 0))))

(assert (=> d!967415 (= lt!1156388 (lexTailRecV2!1030 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 (h!42405 tokens!494))) (BalanceConc!21965 Empty!11175) (print!2054 thiss!18206 (singletonSeq!2496 (h!42405 tokens!494))) (BalanceConc!21967 Empty!11176)))))

(assert (=> d!967415 (= (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 (h!42405 tokens!494)))) lt!1156388)))

(declare-fun b!3400672 () Bool)

(declare-fun e!2110981 () Bool)

(assert (=> b!3400672 (= e!2110981 (not (isEmpty!21248 (_1!21443 lt!1156388))))))

(declare-fun b!3400673 () Bool)

(assert (=> b!3400673 (= e!2110980 e!2110981)))

(declare-fun res!1375994 () Bool)

(assert (=> b!3400673 (= res!1375994 (< (size!28004 (_2!21443 lt!1156388)) (size!28004 (print!2054 thiss!18206 (singletonSeq!2496 (h!42405 tokens!494))))))))

(assert (=> b!3400673 (=> (not res!1375994) (not e!2110981))))

(declare-fun b!3400674 () Bool)

(assert (=> b!3400674 (= e!2110982 (= (list!13409 (_2!21443 lt!1156388)) (_2!21445 (lexList!1422 thiss!18206 rules!2135 (list!13409 (print!2054 thiss!18206 (singletonSeq!2496 (h!42405 tokens!494))))))))))

(assert (= (and d!967415 c!579677) b!3400673))

(assert (= (and d!967415 (not c!579677)) b!3400670))

(assert (= (and b!3400673 res!1375994) b!3400672))

(assert (= (and d!967415 res!1375996) b!3400671))

(assert (= (and b!3400671 res!1375995) b!3400674))

(declare-fun m!3773235 () Bool)

(assert (=> b!3400673 m!3773235))

(assert (=> b!3400673 m!3772537))

(declare-fun m!3773237 () Bool)

(assert (=> b!3400673 m!3773237))

(declare-fun m!3773239 () Bool)

(assert (=> b!3400671 m!3773239))

(assert (=> b!3400671 m!3772537))

(declare-fun m!3773241 () Bool)

(assert (=> b!3400671 m!3773241))

(assert (=> b!3400671 m!3773241))

(declare-fun m!3773243 () Bool)

(assert (=> b!3400671 m!3773243))

(declare-fun m!3773245 () Bool)

(assert (=> b!3400674 m!3773245))

(assert (=> b!3400674 m!3772537))

(assert (=> b!3400674 m!3773241))

(assert (=> b!3400674 m!3773241))

(assert (=> b!3400674 m!3773243))

(declare-fun m!3773247 () Bool)

(assert (=> b!3400672 m!3773247))

(declare-fun m!3773249 () Bool)

(assert (=> d!967415 m!3773249))

(assert (=> d!967415 m!3772537))

(assert (=> d!967415 m!3772537))

(declare-fun m!3773251 () Bool)

(assert (=> d!967415 m!3773251))

(assert (=> b!3400229 d!967415))

(declare-fun d!967421 () Bool)

(declare-fun lt!1156391 () BalanceConc!21964)

(assert (=> d!967421 (= (list!13409 lt!1156391) (printList!1537 thiss!18206 (list!13412 (singletonSeq!2496 (h!42405 tokens!494)))))))

(assert (=> d!967421 (= lt!1156391 (printTailRec!1484 thiss!18206 (singletonSeq!2496 (h!42405 tokens!494)) 0 (BalanceConc!21965 Empty!11175)))))

(assert (=> d!967421 (= (print!2054 thiss!18206 (singletonSeq!2496 (h!42405 tokens!494))) lt!1156391)))

(declare-fun bs!556243 () Bool)

(assert (= bs!556243 d!967421))

(declare-fun m!3773257 () Bool)

(assert (=> bs!556243 m!3773257))

(assert (=> bs!556243 m!3772093))

(assert (=> bs!556243 m!3772543))

(assert (=> bs!556243 m!3772543))

(declare-fun m!3773263 () Bool)

(assert (=> bs!556243 m!3773263))

(assert (=> bs!556243 m!3772093))

(declare-fun m!3773267 () Bool)

(assert (=> bs!556243 m!3773267))

(assert (=> b!3400229 d!967421))

(assert (=> b!3400229 d!967203))

(declare-fun b!3400683 () Bool)

(declare-fun e!2110991 () Bool)

(assert (=> b!3400683 (= e!2110991 (inv!17 (value!174360 (h!42405 (t!265786 tokens!494)))))))

(declare-fun b!3400685 () Bool)

(declare-fun e!2110989 () Bool)

(assert (=> b!3400685 (= e!2110989 e!2110991)))

(declare-fun c!579680 () Bool)

(assert (=> b!3400685 (= c!579680 ((_ is IntegerValue!16891) (value!174360 (h!42405 (t!265786 tokens!494)))))))

(declare-fun d!967423 () Bool)

(declare-fun c!579682 () Bool)

(assert (=> d!967423 (= c!579682 ((_ is IntegerValue!16890) (value!174360 (h!42405 (t!265786 tokens!494)))))))

(assert (=> d!967423 (= (inv!21 (value!174360 (h!42405 (t!265786 tokens!494)))) e!2110989)))

(declare-fun b!3400687 () Bool)

(declare-fun res!1376001 () Bool)

(declare-fun e!2110987 () Bool)

(assert (=> b!3400687 (=> res!1376001 e!2110987)))

(assert (=> b!3400687 (= res!1376001 (not ((_ is IntegerValue!16892) (value!174360 (h!42405 (t!265786 tokens!494))))))))

(assert (=> b!3400687 (= e!2110991 e!2110987)))

(declare-fun b!3400689 () Bool)

(assert (=> b!3400689 (= e!2110987 (inv!15 (value!174360 (h!42405 (t!265786 tokens!494)))))))

(declare-fun b!3400691 () Bool)

(assert (=> b!3400691 (= e!2110989 (inv!16 (value!174360 (h!42405 (t!265786 tokens!494)))))))

(assert (= (and d!967423 c!579682) b!3400691))

(assert (= (and d!967423 (not c!579682)) b!3400685))

(assert (= (and b!3400685 c!579680) b!3400683))

(assert (= (and b!3400685 (not c!579680)) b!3400687))

(assert (= (and b!3400687 (not res!1376001)) b!3400689))

(declare-fun m!3773273 () Bool)

(assert (=> b!3400683 m!3773273))

(declare-fun m!3773277 () Bool)

(assert (=> b!3400689 m!3773277))

(declare-fun m!3773279 () Bool)

(assert (=> b!3400691 m!3773279))

(assert (=> b!3400478 d!967423))

(declare-fun d!967429 () Bool)

(declare-fun res!1376003 () Bool)

(declare-fun e!2110993 () Bool)

(assert (=> d!967429 (=> res!1376003 e!2110993)))

(assert (=> d!967429 (= res!1376003 ((_ is Nil!36985) (t!265786 tokens!494)))))

(assert (=> d!967429 (= (forall!7821 (t!265786 tokens!494) lambda!120961) e!2110993)))

(declare-fun b!3400693 () Bool)

(declare-fun e!2110994 () Bool)

(assert (=> b!3400693 (= e!2110993 e!2110994)))

(declare-fun res!1376004 () Bool)

(assert (=> b!3400693 (=> (not res!1376004) (not e!2110994))))

(assert (=> b!3400693 (= res!1376004 (dynLambda!15439 lambda!120961 (h!42405 (t!265786 tokens!494))))))

(declare-fun b!3400694 () Bool)

(assert (=> b!3400694 (= e!2110994 (forall!7821 (t!265786 (t!265786 tokens!494)) lambda!120961))))

(assert (= (and d!967429 (not res!1376003)) b!3400693))

(assert (= (and b!3400693 res!1376004) b!3400694))

(declare-fun b_lambda!97037 () Bool)

(assert (=> (not b_lambda!97037) (not b!3400693)))

(assert (=> b!3400693 m!3772523))

(declare-fun m!3773281 () Bool)

(assert (=> b!3400694 m!3773281))

(assert (=> b!3400067 d!967429))

(declare-fun d!967431 () Bool)

(assert (=> d!967431 true))

(declare-fun lambda!120984 () Int)

(declare-fun order!19553 () Int)

(declare-fun dynLambda!15448 (Int Int) Int)

(assert (=> d!967431 (< (dynLambda!15440 order!19541 (toValue!7604 (transformation!5400 (rule!7962 separatorToken!241)))) (dynLambda!15448 order!19553 lambda!120984))))

(declare-fun Forall2!924 (Int) Bool)

(assert (=> d!967431 (= (equivClasses!2156 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (toValue!7604 (transformation!5400 (rule!7962 separatorToken!241)))) (Forall2!924 lambda!120984))))

(declare-fun bs!556244 () Bool)

(assert (= bs!556244 d!967431))

(declare-fun m!3773283 () Bool)

(assert (=> bs!556244 m!3773283))

(assert (=> b!3400421 d!967431))

(declare-fun lt!1156395 () Bool)

(declare-fun d!967435 () Bool)

(assert (=> d!967435 (= lt!1156395 (isEmpty!21258 (list!13409 (_2!21443 (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 separatorToken!241)))))))))

(assert (=> d!967435 (= lt!1156395 (isEmpty!21261 (c!579555 (_2!21443 (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 separatorToken!241)))))))))

(assert (=> d!967435 (= (isEmpty!21254 (_2!21443 (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 separatorToken!241))))) lt!1156395)))

(declare-fun bs!556245 () Bool)

(assert (= bs!556245 d!967435))

(declare-fun m!3773291 () Bool)

(assert (=> bs!556245 m!3773291))

(assert (=> bs!556245 m!3773291))

(declare-fun m!3773293 () Bool)

(assert (=> bs!556245 m!3773293))

(declare-fun m!3773295 () Bool)

(assert (=> bs!556245 m!3773295))

(assert (=> b!3400100 d!967435))

(declare-fun lt!1156396 () tuple2!36618)

(declare-fun b!3400711 () Bool)

(declare-fun e!2111006 () Bool)

(assert (=> b!3400711 (= e!2111006 (= (_2!21443 lt!1156396) (print!2054 thiss!18206 (singletonSeq!2496 separatorToken!241))))))

(declare-fun b!3400712 () Bool)

(declare-fun res!1376020 () Bool)

(declare-fun e!2111008 () Bool)

(assert (=> b!3400712 (=> (not res!1376020) (not e!2111008))))

(assert (=> b!3400712 (= res!1376020 (= (list!13412 (_1!21443 lt!1156396)) (_1!21445 (lexList!1422 thiss!18206 rules!2135 (list!13409 (print!2054 thiss!18206 (singletonSeq!2496 separatorToken!241)))))))))

(declare-fun d!967439 () Bool)

(assert (=> d!967439 e!2111008))

(declare-fun res!1376021 () Bool)

(assert (=> d!967439 (=> (not res!1376021) (not e!2111008))))

(assert (=> d!967439 (= res!1376021 e!2111006)))

(declare-fun c!579684 () Bool)

(assert (=> d!967439 (= c!579684 (> (size!28003 (_1!21443 lt!1156396)) 0))))

(assert (=> d!967439 (= lt!1156396 (lexTailRecV2!1030 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 separatorToken!241)) (BalanceConc!21965 Empty!11175) (print!2054 thiss!18206 (singletonSeq!2496 separatorToken!241)) (BalanceConc!21967 Empty!11176)))))

(assert (=> d!967439 (= (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 separatorToken!241))) lt!1156396)))

(declare-fun b!3400713 () Bool)

(declare-fun e!2111007 () Bool)

(assert (=> b!3400713 (= e!2111007 (not (isEmpty!21248 (_1!21443 lt!1156396))))))

(declare-fun b!3400714 () Bool)

(assert (=> b!3400714 (= e!2111006 e!2111007)))

(declare-fun res!1376019 () Bool)

(assert (=> b!3400714 (= res!1376019 (< (size!28004 (_2!21443 lt!1156396)) (size!28004 (print!2054 thiss!18206 (singletonSeq!2496 separatorToken!241)))))))

(assert (=> b!3400714 (=> (not res!1376019) (not e!2111007))))

(declare-fun b!3400715 () Bool)

(assert (=> b!3400715 (= e!2111008 (= (list!13409 (_2!21443 lt!1156396)) (_2!21445 (lexList!1422 thiss!18206 rules!2135 (list!13409 (print!2054 thiss!18206 (singletonSeq!2496 separatorToken!241)))))))))

(assert (= (and d!967439 c!579684) b!3400714))

(assert (= (and d!967439 (not c!579684)) b!3400711))

(assert (= (and b!3400714 res!1376019) b!3400713))

(assert (= (and d!967439 res!1376021) b!3400712))

(assert (= (and b!3400712 res!1376020) b!3400715))

(declare-fun m!3773297 () Bool)

(assert (=> b!3400714 m!3773297))

(assert (=> b!3400714 m!3772307))

(declare-fun m!3773299 () Bool)

(assert (=> b!3400714 m!3773299))

(declare-fun m!3773301 () Bool)

(assert (=> b!3400712 m!3773301))

(assert (=> b!3400712 m!3772307))

(declare-fun m!3773303 () Bool)

(assert (=> b!3400712 m!3773303))

(assert (=> b!3400712 m!3773303))

(declare-fun m!3773305 () Bool)

(assert (=> b!3400712 m!3773305))

(declare-fun m!3773307 () Bool)

(assert (=> b!3400715 m!3773307))

(assert (=> b!3400715 m!3772307))

(assert (=> b!3400715 m!3773303))

(assert (=> b!3400715 m!3773303))

(assert (=> b!3400715 m!3773305))

(declare-fun m!3773309 () Bool)

(assert (=> b!3400713 m!3773309))

(declare-fun m!3773311 () Bool)

(assert (=> d!967439 m!3773311))

(assert (=> d!967439 m!3772307))

(assert (=> d!967439 m!3772307))

(declare-fun m!3773313 () Bool)

(assert (=> d!967439 m!3773313))

(assert (=> b!3400100 d!967439))

(declare-fun d!967441 () Bool)

(declare-fun lt!1156400 () BalanceConc!21964)

(assert (=> d!967441 (= (list!13409 lt!1156400) (printList!1537 thiss!18206 (list!13412 (singletonSeq!2496 separatorToken!241))))))

(assert (=> d!967441 (= lt!1156400 (printTailRec!1484 thiss!18206 (singletonSeq!2496 separatorToken!241) 0 (BalanceConc!21965 Empty!11175)))))

(assert (=> d!967441 (= (print!2054 thiss!18206 (singletonSeq!2496 separatorToken!241)) lt!1156400)))

(declare-fun bs!556247 () Bool)

(assert (= bs!556247 d!967441))

(declare-fun m!3773315 () Bool)

(assert (=> bs!556247 m!3773315))

(assert (=> bs!556247 m!3772313))

(assert (=> bs!556247 m!3772315))

(assert (=> bs!556247 m!3772315))

(declare-fun m!3773319 () Bool)

(assert (=> bs!556247 m!3773319))

(assert (=> bs!556247 m!3772313))

(declare-fun m!3773321 () Bool)

(assert (=> bs!556247 m!3773321))

(assert (=> b!3400100 d!967441))

(declare-fun d!967445 () Bool)

(declare-fun e!2111009 () Bool)

(assert (=> d!967445 e!2111009))

(declare-fun res!1376022 () Bool)

(assert (=> d!967445 (=> (not res!1376022) (not e!2111009))))

(declare-fun lt!1156401 () BalanceConc!21966)

(assert (=> d!967445 (= res!1376022 (= (list!13412 lt!1156401) (Cons!36985 separatorToken!241 Nil!36985)))))

(assert (=> d!967445 (= lt!1156401 (singleton!1094 separatorToken!241))))

(assert (=> d!967445 (= (singletonSeq!2496 separatorToken!241) lt!1156401)))

(declare-fun b!3400716 () Bool)

(assert (=> b!3400716 (= e!2111009 (isBalanced!3377 (c!579556 lt!1156401)))))

(assert (= (and d!967445 res!1376022) b!3400716))

(declare-fun m!3773323 () Bool)

(assert (=> d!967445 m!3773323))

(declare-fun m!3773325 () Bool)

(assert (=> d!967445 m!3773325))

(declare-fun m!3773327 () Bool)

(assert (=> b!3400716 m!3773327))

(assert (=> b!3400100 d!967445))

(declare-fun bs!556252 () Bool)

(declare-fun d!967447 () Bool)

(assert (= bs!556252 (and d!967447 b!3399994)))

(declare-fun lambda!120990 () Int)

(assert (=> bs!556252 (not (= lambda!120990 lambda!120961))))

(declare-fun bs!556253 () Bool)

(assert (= bs!556253 (and d!967447 d!967103)))

(assert (=> bs!556253 (= lambda!120990 lambda!120971)))

(declare-fun b!3400756 () Bool)

(declare-fun e!2111037 () Bool)

(assert (=> b!3400756 (= e!2111037 true)))

(declare-fun b!3400755 () Bool)

(declare-fun e!2111036 () Bool)

(assert (=> b!3400755 (= e!2111036 e!2111037)))

(declare-fun b!3400754 () Bool)

(declare-fun e!2111035 () Bool)

(assert (=> b!3400754 (= e!2111035 e!2111036)))

(assert (=> d!967447 e!2111035))

(assert (= b!3400755 b!3400756))

(assert (= b!3400754 b!3400755))

(assert (= (and d!967447 ((_ is Cons!36984) rules!2135)) b!3400754))

(assert (=> b!3400756 (< (dynLambda!15440 order!19541 (toValue!7604 (transformation!5400 (h!42404 rules!2135)))) (dynLambda!15441 order!19543 lambda!120990))))

(assert (=> b!3400756 (< (dynLambda!15442 order!19545 (toChars!7463 (transformation!5400 (h!42404 rules!2135)))) (dynLambda!15441 order!19543 lambda!120990))))

(assert (=> d!967447 true))

(declare-fun lt!1156413 () Bool)

(assert (=> d!967447 (= lt!1156413 (forall!7821 (list!13412 (seqFromList!3854 tokens!494)) lambda!120990))))

(declare-fun e!2111034 () Bool)

(assert (=> d!967447 (= lt!1156413 e!2111034)))

(declare-fun res!1376039 () Bool)

(assert (=> d!967447 (=> res!1376039 e!2111034)))

(assert (=> d!967447 (= res!1376039 (not ((_ is Cons!36985) (list!13412 (seqFromList!3854 tokens!494)))))))

(assert (=> d!967447 (not (isEmpty!21249 rules!2135))))

(assert (=> d!967447 (= (rulesProduceEachTokenIndividuallyList!1829 thiss!18206 rules!2135 (list!13412 (seqFromList!3854 tokens!494))) lt!1156413)))

(declare-fun b!3400752 () Bool)

(declare-fun e!2111033 () Bool)

(assert (=> b!3400752 (= e!2111034 e!2111033)))

(declare-fun res!1376040 () Bool)

(assert (=> b!3400752 (=> (not res!1376040) (not e!2111033))))

(assert (=> b!3400752 (= res!1376040 (rulesProduceIndividualToken!2481 thiss!18206 rules!2135 (h!42405 (list!13412 (seqFromList!3854 tokens!494)))))))

(declare-fun b!3400753 () Bool)

(assert (=> b!3400753 (= e!2111033 (rulesProduceEachTokenIndividuallyList!1829 thiss!18206 rules!2135 (t!265786 (list!13412 (seqFromList!3854 tokens!494)))))))

(assert (= (and d!967447 (not res!1376039)) b!3400752))

(assert (= (and b!3400752 res!1376040) b!3400753))

(assert (=> d!967447 m!3772513))

(declare-fun m!3773397 () Bool)

(assert (=> d!967447 m!3773397))

(assert (=> d!967447 m!3772113))

(declare-fun m!3773399 () Bool)

(assert (=> b!3400752 m!3773399))

(declare-fun m!3773401 () Bool)

(assert (=> b!3400753 m!3773401))

(assert (=> b!3400205 d!967447))

(declare-fun d!967475 () Bool)

(assert (=> d!967475 (= (list!13412 (seqFromList!3854 tokens!494)) (list!13415 (c!579556 (seqFromList!3854 tokens!494))))))

(declare-fun bs!556254 () Bool)

(assert (= bs!556254 d!967475))

(declare-fun m!3773403 () Bool)

(assert (=> bs!556254 m!3773403))

(assert (=> b!3400205 d!967475))

(declare-fun d!967477 () Bool)

(declare-fun c!579695 () Bool)

(assert (=> d!967477 (= c!579695 ((_ is Node!11175) (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (value!174360 (h!42405 (t!265786 tokens!494)))))))))

(declare-fun e!2111042 () Bool)

(assert (=> d!967477 (= (inv!50092 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (value!174360 (h!42405 (t!265786 tokens!494)))))) e!2111042)))

(declare-fun b!3400763 () Bool)

(declare-fun inv!50096 (Conc!11175) Bool)

(assert (=> b!3400763 (= e!2111042 (inv!50096 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (value!174360 (h!42405 (t!265786 tokens!494)))))))))

(declare-fun b!3400764 () Bool)

(declare-fun e!2111043 () Bool)

(assert (=> b!3400764 (= e!2111042 e!2111043)))

(declare-fun res!1376043 () Bool)

(assert (=> b!3400764 (= res!1376043 (not ((_ is Leaf!17486) (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (value!174360 (h!42405 (t!265786 tokens!494))))))))))

(assert (=> b!3400764 (=> res!1376043 e!2111043)))

(declare-fun b!3400765 () Bool)

(declare-fun inv!50097 (Conc!11175) Bool)

(assert (=> b!3400765 (= e!2111043 (inv!50097 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (value!174360 (h!42405 (t!265786 tokens!494)))))))))

(assert (= (and d!967477 c!579695) b!3400763))

(assert (= (and d!967477 (not c!579695)) b!3400764))

(assert (= (and b!3400764 (not res!1376043)) b!3400765))

(declare-fun m!3773405 () Bool)

(assert (=> b!3400763 m!3773405))

(declare-fun m!3773407 () Bool)

(assert (=> b!3400765 m!3773407))

(assert (=> b!3400283 d!967477))

(declare-fun d!967479 () Bool)

(assert (=> d!967479 (= (list!13412 lt!1156286) (list!13415 (c!579556 lt!1156286)))))

(declare-fun bs!556255 () Bool)

(assert (= bs!556255 d!967479))

(declare-fun m!3773409 () Bool)

(assert (=> bs!556255 m!3773409))

(assert (=> d!967203 d!967479))

(declare-fun d!967481 () Bool)

(declare-fun e!2111046 () Bool)

(assert (=> d!967481 e!2111046))

(declare-fun res!1376046 () Bool)

(assert (=> d!967481 (=> (not res!1376046) (not e!2111046))))

(declare-fun lt!1156416 () BalanceConc!21966)

(assert (=> d!967481 (= res!1376046 (= (list!13412 lt!1156416) (Cons!36985 (h!42405 tokens!494) Nil!36985)))))

(declare-fun choose!19723 (Token!10166) BalanceConc!21966)

(assert (=> d!967481 (= lt!1156416 (choose!19723 (h!42405 tokens!494)))))

(assert (=> d!967481 (= (singleton!1094 (h!42405 tokens!494)) lt!1156416)))

(declare-fun b!3400768 () Bool)

(assert (=> b!3400768 (= e!2111046 (isBalanced!3377 (c!579556 lt!1156416)))))

(assert (= (and d!967481 res!1376046) b!3400768))

(declare-fun m!3773411 () Bool)

(assert (=> d!967481 m!3773411))

(declare-fun m!3773413 () Bool)

(assert (=> d!967481 m!3773413))

(declare-fun m!3773415 () Bool)

(assert (=> b!3400768 m!3773415))

(assert (=> d!967203 d!967481))

(declare-fun d!967483 () Bool)

(assert (=> d!967483 true))

(declare-fun lt!1156419 () Bool)

(assert (=> d!967483 (= lt!1156419 (rulesValidInductive!1843 thiss!18206 rules!2135))))

(declare-fun lambda!120993 () Int)

(declare-fun forall!7824 (List!37108 Int) Bool)

(assert (=> d!967483 (= lt!1156419 (forall!7824 rules!2135 lambda!120993))))

(assert (=> d!967483 (= (rulesValid!2017 thiss!18206 rules!2135) lt!1156419)))

(declare-fun bs!556256 () Bool)

(assert (= bs!556256 d!967483))

(assert (=> bs!556256 m!3772795))

(declare-fun m!3773417 () Bool)

(assert (=> bs!556256 m!3773417))

(assert (=> d!967171 d!967483))

(declare-fun d!967485 () Bool)

(declare-fun c!579696 () Bool)

(assert (=> d!967485 (= c!579696 ((_ is Node!11175) (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241)))))))

(declare-fun e!2111047 () Bool)

(assert (=> d!967485 (= (inv!50092 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241)))) e!2111047)))

(declare-fun b!3400771 () Bool)

(assert (=> b!3400771 (= e!2111047 (inv!50096 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241)))))))

(declare-fun b!3400772 () Bool)

(declare-fun e!2111048 () Bool)

(assert (=> b!3400772 (= e!2111047 e!2111048)))

(declare-fun res!1376047 () Bool)

(assert (=> b!3400772 (= res!1376047 (not ((_ is Leaf!17486) (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241))))))))

(assert (=> b!3400772 (=> res!1376047 e!2111048)))

(declare-fun b!3400773 () Bool)

(assert (=> b!3400773 (= e!2111048 (inv!50097 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241)))))))

(assert (= (and d!967485 c!579696) b!3400771))

(assert (= (and d!967485 (not c!579696)) b!3400772))

(assert (= (and b!3400772 (not res!1376047)) b!3400773))

(declare-fun m!3773419 () Bool)

(assert (=> b!3400771 m!3773419))

(declare-fun m!3773421 () Bool)

(assert (=> b!3400773 m!3773421))

(assert (=> b!3400278 d!967485))

(declare-fun d!967487 () Bool)

(assert (=> d!967487 (= (isDefined!5742 lt!1156307) (not (isEmpty!21259 lt!1156307)))))

(declare-fun bs!556257 () Bool)

(assert (= bs!556257 d!967487))

(assert (=> bs!556257 m!3772789))

(assert (=> b!3400387 d!967487))

(assert (=> b!3400234 d!967223))

(assert (=> b!3400234 d!967221))

(declare-fun b!3400776 () Bool)

(declare-fun res!1376049 () Bool)

(declare-fun e!2111050 () Bool)

(assert (=> b!3400776 (=> (not res!1376049) (not e!2111050))))

(declare-fun lt!1156420 () List!37107)

(assert (=> b!3400776 (= res!1376049 (= (size!28005 lt!1156420) (+ (size!28005 (++!9069 (list!13409 (charsOf!3414 (h!42405 tokens!494))) (list!13409 (charsOf!3414 separatorToken!241)))) (size!28005 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 tokens!494) separatorToken!241)))))))

(declare-fun b!3400775 () Bool)

(declare-fun e!2111049 () List!37107)

(assert (=> b!3400775 (= e!2111049 (Cons!36983 (h!42403 (++!9069 (list!13409 (charsOf!3414 (h!42405 tokens!494))) (list!13409 (charsOf!3414 separatorToken!241)))) (++!9069 (t!265784 (++!9069 (list!13409 (charsOf!3414 (h!42405 tokens!494))) (list!13409 (charsOf!3414 separatorToken!241)))) (printWithSeparatorTokenList!276 thiss!18206 (t!265786 tokens!494) separatorToken!241))))))

(declare-fun b!3400777 () Bool)

(assert (=> b!3400777 (= e!2111050 (or (not (= (printWithSeparatorTokenList!276 thiss!18206 (t!265786 tokens!494) separatorToken!241) Nil!36983)) (= lt!1156420 (++!9069 (list!13409 (charsOf!3414 (h!42405 tokens!494))) (list!13409 (charsOf!3414 separatorToken!241))))))))

(declare-fun d!967489 () Bool)

(assert (=> d!967489 e!2111050))

(declare-fun res!1376048 () Bool)

(assert (=> d!967489 (=> (not res!1376048) (not e!2111050))))

(assert (=> d!967489 (= res!1376048 (= (content!5117 lt!1156420) ((_ map or) (content!5117 (++!9069 (list!13409 (charsOf!3414 (h!42405 tokens!494))) (list!13409 (charsOf!3414 separatorToken!241)))) (content!5117 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 tokens!494) separatorToken!241)))))))

(assert (=> d!967489 (= lt!1156420 e!2111049)))

(declare-fun c!579697 () Bool)

(assert (=> d!967489 (= c!579697 ((_ is Nil!36983) (++!9069 (list!13409 (charsOf!3414 (h!42405 tokens!494))) (list!13409 (charsOf!3414 separatorToken!241)))))))

(assert (=> d!967489 (= (++!9069 (++!9069 (list!13409 (charsOf!3414 (h!42405 tokens!494))) (list!13409 (charsOf!3414 separatorToken!241))) (printWithSeparatorTokenList!276 thiss!18206 (t!265786 tokens!494) separatorToken!241)) lt!1156420)))

(declare-fun b!3400774 () Bool)

(assert (=> b!3400774 (= e!2111049 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 tokens!494) separatorToken!241))))

(assert (= (and d!967489 c!579697) b!3400774))

(assert (= (and d!967489 (not c!579697)) b!3400775))

(assert (= (and d!967489 res!1376048) b!3400776))

(assert (= (and b!3400776 res!1376049) b!3400777))

(declare-fun m!3773423 () Bool)

(assert (=> b!3400776 m!3773423))

(assert (=> b!3400776 m!3772553))

(declare-fun m!3773425 () Bool)

(assert (=> b!3400776 m!3773425))

(assert (=> b!3400776 m!3772137))

(declare-fun m!3773427 () Bool)

(assert (=> b!3400776 m!3773427))

(assert (=> b!3400775 m!3772137))

(declare-fun m!3773429 () Bool)

(assert (=> b!3400775 m!3773429))

(declare-fun m!3773431 () Bool)

(assert (=> d!967489 m!3773431))

(assert (=> d!967489 m!3772553))

(declare-fun m!3773433 () Bool)

(assert (=> d!967489 m!3773433))

(assert (=> d!967489 m!3772137))

(declare-fun m!3773435 () Bool)

(assert (=> d!967489 m!3773435))

(assert (=> b!3400234 d!967489))

(assert (=> b!3400234 d!967183))

(assert (=> b!3400234 d!967191))

(declare-fun b!3400780 () Bool)

(declare-fun res!1376051 () Bool)

(declare-fun e!2111052 () Bool)

(assert (=> b!3400780 (=> (not res!1376051) (not e!2111052))))

(declare-fun lt!1156421 () List!37107)

(assert (=> b!3400780 (= res!1376051 (= (size!28005 lt!1156421) (+ (size!28005 (list!13409 (charsOf!3414 (h!42405 tokens!494)))) (size!28005 (list!13409 (charsOf!3414 separatorToken!241))))))))

(declare-fun b!3400779 () Bool)

(declare-fun e!2111051 () List!37107)

(assert (=> b!3400779 (= e!2111051 (Cons!36983 (h!42403 (list!13409 (charsOf!3414 (h!42405 tokens!494)))) (++!9069 (t!265784 (list!13409 (charsOf!3414 (h!42405 tokens!494)))) (list!13409 (charsOf!3414 separatorToken!241)))))))

(declare-fun b!3400781 () Bool)

(assert (=> b!3400781 (= e!2111052 (or (not (= (list!13409 (charsOf!3414 separatorToken!241)) Nil!36983)) (= lt!1156421 (list!13409 (charsOf!3414 (h!42405 tokens!494))))))))

(declare-fun d!967491 () Bool)

(assert (=> d!967491 e!2111052))

(declare-fun res!1376050 () Bool)

(assert (=> d!967491 (=> (not res!1376050) (not e!2111052))))

(assert (=> d!967491 (= res!1376050 (= (content!5117 lt!1156421) ((_ map or) (content!5117 (list!13409 (charsOf!3414 (h!42405 tokens!494)))) (content!5117 (list!13409 (charsOf!3414 separatorToken!241))))))))

(assert (=> d!967491 (= lt!1156421 e!2111051)))

(declare-fun c!579698 () Bool)

(assert (=> d!967491 (= c!579698 ((_ is Nil!36983) (list!13409 (charsOf!3414 (h!42405 tokens!494)))))))

(assert (=> d!967491 (= (++!9069 (list!13409 (charsOf!3414 (h!42405 tokens!494))) (list!13409 (charsOf!3414 separatorToken!241))) lt!1156421)))

(declare-fun b!3400778 () Bool)

(assert (=> b!3400778 (= e!2111051 (list!13409 (charsOf!3414 separatorToken!241)))))

(assert (= (and d!967491 c!579698) b!3400778))

(assert (= (and d!967491 (not c!579698)) b!3400779))

(assert (= (and d!967491 res!1376050) b!3400780))

(assert (= (and b!3400780 res!1376051) b!3400781))

(declare-fun m!3773437 () Bool)

(assert (=> b!3400780 m!3773437))

(assert (=> b!3400780 m!3772151))

(declare-fun m!3773439 () Bool)

(assert (=> b!3400780 m!3773439))

(assert (=> b!3400780 m!3772143))

(declare-fun m!3773441 () Bool)

(assert (=> b!3400780 m!3773441))

(assert (=> b!3400779 m!3772143))

(declare-fun m!3773443 () Bool)

(assert (=> b!3400779 m!3773443))

(declare-fun m!3773445 () Bool)

(assert (=> d!967491 m!3773445))

(assert (=> d!967491 m!3772151))

(declare-fun m!3773447 () Bool)

(assert (=> d!967491 m!3773447))

(assert (=> d!967491 m!3772143))

(declare-fun m!3773449 () Bool)

(assert (=> d!967491 m!3773449))

(assert (=> b!3400234 d!967491))

(assert (=> b!3400234 d!967189))

(declare-fun d!967493 () Bool)

(assert (=> d!967493 (= (list!13409 lt!1156253) (list!13413 (c!579555 lt!1156253)))))

(declare-fun bs!556258 () Bool)

(assert (= bs!556258 d!967493))

(declare-fun m!3773451 () Bool)

(assert (=> bs!556258 m!3773451))

(assert (=> d!967183 d!967493))

(declare-fun d!967495 () Bool)

(declare-fun c!579701 () Bool)

(assert (=> d!967495 (= c!579701 ((_ is Nil!36983) lt!1156288))))

(declare-fun e!2111055 () (InoxSet C!20504))

(assert (=> d!967495 (= (content!5117 lt!1156288) e!2111055)))

(declare-fun b!3400786 () Bool)

(assert (=> b!3400786 (= e!2111055 ((as const (Array C!20504 Bool)) false))))

(declare-fun b!3400787 () Bool)

(assert (=> b!3400787 (= e!2111055 ((_ map or) (store ((as const (Array C!20504 Bool)) false) (h!42403 lt!1156288) true) (content!5117 (t!265784 lt!1156288))))))

(assert (= (and d!967495 c!579701) b!3400786))

(assert (= (and d!967495 (not c!579701)) b!3400787))

(declare-fun m!3773453 () Bool)

(assert (=> b!3400787 m!3773453))

(declare-fun m!3773455 () Bool)

(assert (=> b!3400787 m!3773455))

(assert (=> d!967217 d!967495))

(declare-fun d!967497 () Bool)

(declare-fun c!579702 () Bool)

(assert (=> d!967497 (= c!579702 ((_ is Nil!36983) lt!1156137))))

(declare-fun e!2111056 () (InoxSet C!20504))

(assert (=> d!967497 (= (content!5117 lt!1156137) e!2111056)))

(declare-fun b!3400788 () Bool)

(assert (=> b!3400788 (= e!2111056 ((as const (Array C!20504 Bool)) false))))

(declare-fun b!3400789 () Bool)

(assert (=> b!3400789 (= e!2111056 ((_ map or) (store ((as const (Array C!20504 Bool)) false) (h!42403 lt!1156137) true) (content!5117 (t!265784 lt!1156137))))))

(assert (= (and d!967497 c!579702) b!3400788))

(assert (= (and d!967497 (not c!579702)) b!3400789))

(declare-fun m!3773457 () Bool)

(assert (=> b!3400789 m!3773457))

(declare-fun m!3773459 () Bool)

(assert (=> b!3400789 m!3773459))

(assert (=> d!967217 d!967497))

(declare-fun d!967499 () Bool)

(declare-fun c!579703 () Bool)

(assert (=> d!967499 (= c!579703 ((_ is Nil!36983) lt!1156140))))

(declare-fun e!2111057 () (InoxSet C!20504))

(assert (=> d!967499 (= (content!5117 lt!1156140) e!2111057)))

(declare-fun b!3400790 () Bool)

(assert (=> b!3400790 (= e!2111057 ((as const (Array C!20504 Bool)) false))))

(declare-fun b!3400791 () Bool)

(assert (=> b!3400791 (= e!2111057 ((_ map or) (store ((as const (Array C!20504 Bool)) false) (h!42403 lt!1156140) true) (content!5117 (t!265784 lt!1156140))))))

(assert (= (and d!967499 c!579703) b!3400790))

(assert (= (and d!967499 (not c!579703)) b!3400791))

(declare-fun m!3773461 () Bool)

(assert (=> b!3400791 m!3773461))

(declare-fun m!3773463 () Bool)

(assert (=> b!3400791 m!3773463))

(assert (=> d!967217 d!967499))

(declare-fun b!3400831 () Bool)

(declare-fun e!2111080 () Bool)

(declare-datatypes ((tuple2!36624 0))(
  ( (tuple2!36625 (_1!21446 List!37107) (_2!21446 List!37107)) )
))
(declare-fun findLongestMatchInner!888 (Regex!10159 List!37107 Int List!37107 List!37107 Int) tuple2!36624)

(assert (=> b!3400831 (= e!2111080 (matchR!4743 (regex!5400 (h!42404 rules!2135)) (_1!21446 (findLongestMatchInner!888 (regex!5400 (h!42404 rules!2135)) Nil!36983 (size!28005 Nil!36983) lt!1156137 lt!1156137 (size!28005 lt!1156137)))))))

(declare-fun b!3400832 () Bool)

(declare-fun res!1376073 () Bool)

(declare-fun e!2111078 () Bool)

(assert (=> b!3400832 (=> (not res!1376073) (not e!2111078))))

(declare-fun lt!1156537 () Option!7440)

(assert (=> b!3400832 (= res!1376073 (= (value!174360 (_1!21442 (get!11811 lt!1156537))) (apply!8635 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156537)))) (seqFromList!3853 (originalCharacters!6114 (_1!21442 (get!11811 lt!1156537)))))))))

(declare-fun b!3400833 () Bool)

(declare-fun e!2111079 () Option!7440)

(declare-fun lt!1156535 () tuple2!36624)

(assert (=> b!3400833 (= e!2111079 (Some!7439 (tuple2!36617 (Token!10167 (apply!8635 (transformation!5400 (h!42404 rules!2135)) (seqFromList!3853 (_1!21446 lt!1156535))) (h!42404 rules!2135) (size!28004 (seqFromList!3853 (_1!21446 lt!1156535))) (_1!21446 lt!1156535)) (_2!21446 lt!1156535))))))

(declare-fun lt!1156536 () Unit!52148)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!861 (Regex!10159 List!37107) Unit!52148)

(assert (=> b!3400833 (= lt!1156536 (longestMatchIsAcceptedByMatchOrIsEmpty!861 (regex!5400 (h!42404 rules!2135)) lt!1156137))))

(declare-fun res!1376072 () Bool)

(assert (=> b!3400833 (= res!1376072 (isEmpty!21258 (_1!21446 (findLongestMatchInner!888 (regex!5400 (h!42404 rules!2135)) Nil!36983 (size!28005 Nil!36983) lt!1156137 lt!1156137 (size!28005 lt!1156137)))))))

(assert (=> b!3400833 (=> res!1376072 e!2111080)))

(assert (=> b!3400833 e!2111080))

(declare-fun lt!1156538 () Unit!52148)

(assert (=> b!3400833 (= lt!1156538 lt!1156536)))

(declare-fun lt!1156534 () Unit!52148)

(declare-fun lemmaSemiInverse!1236 (TokenValueInjection!10688 BalanceConc!21964) Unit!52148)

(assert (=> b!3400833 (= lt!1156534 (lemmaSemiInverse!1236 (transformation!5400 (h!42404 rules!2135)) (seqFromList!3853 (_1!21446 lt!1156535))))))

(declare-fun b!3400834 () Bool)

(declare-fun res!1376074 () Bool)

(assert (=> b!3400834 (=> (not res!1376074) (not e!2111078))))

(assert (=> b!3400834 (= res!1376074 (= (++!9069 (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156537)))) (_2!21442 (get!11811 lt!1156537))) lt!1156137))))

(declare-fun b!3400835 () Bool)

(declare-fun res!1376071 () Bool)

(assert (=> b!3400835 (=> (not res!1376071) (not e!2111078))))

(assert (=> b!3400835 (= res!1376071 (= (rule!7962 (_1!21442 (get!11811 lt!1156537))) (h!42404 rules!2135)))))

(declare-fun b!3400836 () Bool)

(declare-fun e!2111081 () Bool)

(assert (=> b!3400836 (= e!2111081 e!2111078)))

(declare-fun res!1376075 () Bool)

(assert (=> b!3400836 (=> (not res!1376075) (not e!2111078))))

(assert (=> b!3400836 (= res!1376075 (matchR!4743 (regex!5400 (h!42404 rules!2135)) (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156537))))))))

(declare-fun b!3400837 () Bool)

(assert (=> b!3400837 (= e!2111078 (= (size!27999 (_1!21442 (get!11811 lt!1156537))) (size!28005 (originalCharacters!6114 (_1!21442 (get!11811 lt!1156537))))))))

(declare-fun d!967501 () Bool)

(assert (=> d!967501 e!2111081))

(declare-fun res!1376070 () Bool)

(assert (=> d!967501 (=> res!1376070 e!2111081)))

(assert (=> d!967501 (= res!1376070 (isEmpty!21259 lt!1156537))))

(assert (=> d!967501 (= lt!1156537 e!2111079)))

(declare-fun c!579715 () Bool)

(assert (=> d!967501 (= c!579715 (isEmpty!21258 (_1!21446 lt!1156535)))))

(declare-fun findLongestMatch!803 (Regex!10159 List!37107) tuple2!36624)

(assert (=> d!967501 (= lt!1156535 (findLongestMatch!803 (regex!5400 (h!42404 rules!2135)) lt!1156137))))

(declare-fun ruleValid!1715 (LexerInterface!4989 Rule!10600) Bool)

(assert (=> d!967501 (ruleValid!1715 thiss!18206 (h!42404 rules!2135))))

(assert (=> d!967501 (= (maxPrefixOneRule!1704 thiss!18206 (h!42404 rules!2135) lt!1156137) lt!1156537)))

(declare-fun b!3400838 () Bool)

(assert (=> b!3400838 (= e!2111079 None!7439)))

(declare-fun b!3400839 () Bool)

(declare-fun res!1376069 () Bool)

(assert (=> b!3400839 (=> (not res!1376069) (not e!2111078))))

(assert (=> b!3400839 (= res!1376069 (< (size!28005 (_2!21442 (get!11811 lt!1156537))) (size!28005 lt!1156137)))))

(assert (= (and d!967501 c!579715) b!3400838))

(assert (= (and d!967501 (not c!579715)) b!3400833))

(assert (= (and b!3400833 (not res!1376072)) b!3400831))

(assert (= (and d!967501 (not res!1376070)) b!3400836))

(assert (= (and b!3400836 res!1376075) b!3400834))

(assert (= (and b!3400834 res!1376074) b!3400839))

(assert (= (and b!3400839 res!1376069) b!3400835))

(assert (= (and b!3400835 res!1376071) b!3400832))

(assert (= (and b!3400832 res!1376073) b!3400837))

(declare-fun m!3773553 () Bool)

(assert (=> b!3400837 m!3773553))

(declare-fun m!3773555 () Bool)

(assert (=> b!3400837 m!3773555))

(declare-fun m!3773557 () Bool)

(assert (=> d!967501 m!3773557))

(declare-fun m!3773559 () Bool)

(assert (=> d!967501 m!3773559))

(declare-fun m!3773561 () Bool)

(assert (=> d!967501 m!3773561))

(declare-fun m!3773563 () Bool)

(assert (=> d!967501 m!3773563))

(assert (=> b!3400832 m!3773553))

(declare-fun m!3773565 () Bool)

(assert (=> b!3400832 m!3773565))

(assert (=> b!3400832 m!3773565))

(declare-fun m!3773567 () Bool)

(assert (=> b!3400832 m!3773567))

(assert (=> b!3400835 m!3773553))

(assert (=> b!3400839 m!3773553))

(declare-fun m!3773569 () Bool)

(assert (=> b!3400839 m!3773569))

(assert (=> b!3400839 m!3772737))

(declare-fun m!3773571 () Bool)

(assert (=> b!3400833 m!3773571))

(assert (=> b!3400833 m!3772737))

(declare-fun m!3773573 () Bool)

(assert (=> b!3400833 m!3773573))

(declare-fun m!3773575 () Bool)

(assert (=> b!3400833 m!3773575))

(declare-fun m!3773577 () Bool)

(assert (=> b!3400833 m!3773577))

(assert (=> b!3400833 m!3773573))

(declare-fun m!3773579 () Bool)

(assert (=> b!3400833 m!3773579))

(assert (=> b!3400833 m!3773573))

(declare-fun m!3773581 () Bool)

(assert (=> b!3400833 m!3773581))

(assert (=> b!3400833 m!3773573))

(declare-fun m!3773583 () Bool)

(assert (=> b!3400833 m!3773583))

(assert (=> b!3400833 m!3773577))

(assert (=> b!3400833 m!3772737))

(declare-fun m!3773585 () Bool)

(assert (=> b!3400833 m!3773585))

(assert (=> b!3400831 m!3773577))

(assert (=> b!3400831 m!3772737))

(assert (=> b!3400831 m!3773577))

(assert (=> b!3400831 m!3772737))

(assert (=> b!3400831 m!3773585))

(declare-fun m!3773587 () Bool)

(assert (=> b!3400831 m!3773587))

(assert (=> b!3400836 m!3773553))

(declare-fun m!3773589 () Bool)

(assert (=> b!3400836 m!3773589))

(assert (=> b!3400836 m!3773589))

(declare-fun m!3773591 () Bool)

(assert (=> b!3400836 m!3773591))

(assert (=> b!3400836 m!3773591))

(declare-fun m!3773593 () Bool)

(assert (=> b!3400836 m!3773593))

(assert (=> b!3400834 m!3773553))

(assert (=> b!3400834 m!3773589))

(assert (=> b!3400834 m!3773589))

(assert (=> b!3400834 m!3773591))

(assert (=> b!3400834 m!3773591))

(declare-fun m!3773595 () Bool)

(assert (=> b!3400834 m!3773595))

(assert (=> bm!245831 d!967501))

(declare-fun b!3400848 () Bool)

(declare-fun e!2111090 () Bool)

(declare-fun call!245843 () Bool)

(assert (=> b!3400848 (= e!2111090 call!245843)))

(declare-fun b!3400849 () Bool)

(declare-fun e!2111089 () Bool)

(assert (=> b!3400849 (= e!2111089 call!245843)))

(declare-fun b!3400850 () Bool)

(declare-fun e!2111088 () Bool)

(assert (=> b!3400850 (= e!2111088 e!2111089)))

(declare-fun res!1376081 () Bool)

(assert (=> b!3400850 (= res!1376081 (not ((_ is Cons!36984) rules!2135)))))

(assert (=> b!3400850 (=> res!1376081 e!2111089)))

(declare-fun d!967505 () Bool)

(declare-fun c!579718 () Bool)

(assert (=> d!967505 (= c!579718 (and ((_ is Cons!36984) rules!2135) (not (= (isSeparator!5400 (h!42404 rules!2135)) (isSeparator!5400 (h!42404 rules!2135))))))))

(assert (=> d!967505 (= (ruleDisjointCharsFromAllFromOtherType!693 (h!42404 rules!2135) rules!2135) e!2111088)))

(declare-fun bm!245838 () Bool)

(assert (=> bm!245838 (= call!245843 (ruleDisjointCharsFromAllFromOtherType!693 (h!42404 rules!2135) (t!265785 rules!2135)))))

(declare-fun b!3400851 () Bool)

(assert (=> b!3400851 (= e!2111088 e!2111090)))

(declare-fun res!1376080 () Bool)

(declare-fun rulesUseDisjointChars!331 (Rule!10600 Rule!10600) Bool)

(assert (=> b!3400851 (= res!1376080 (rulesUseDisjointChars!331 (h!42404 rules!2135) (h!42404 rules!2135)))))

(assert (=> b!3400851 (=> (not res!1376080) (not e!2111090))))

(assert (= (and d!967505 c!579718) b!3400851))

(assert (= (and d!967505 (not c!579718)) b!3400850))

(assert (= (and b!3400851 res!1376080) b!3400848))

(assert (= (and b!3400850 (not res!1376081)) b!3400849))

(assert (= (or b!3400848 b!3400849) bm!245838))

(declare-fun m!3773597 () Bool)

(assert (=> bm!245838 m!3773597))

(declare-fun m!3773599 () Bool)

(assert (=> b!3400851 m!3773599))

(assert (=> b!3400419 d!967505))

(declare-fun d!967507 () Bool)

(declare-fun lt!1156541 () Int)

(assert (=> d!967507 (>= lt!1156541 0)))

(declare-fun e!2111093 () Int)

(assert (=> d!967507 (= lt!1156541 e!2111093)))

(declare-fun c!579721 () Bool)

(assert (=> d!967507 (= c!579721 ((_ is Nil!36983) lt!1156287))))

(assert (=> d!967507 (= (size!28005 lt!1156287) lt!1156541)))

(declare-fun b!3400856 () Bool)

(assert (=> b!3400856 (= e!2111093 0)))

(declare-fun b!3400857 () Bool)

(assert (=> b!3400857 (= e!2111093 (+ 1 (size!28005 (t!265784 lt!1156287))))))

(assert (= (and d!967507 c!579721) b!3400856))

(assert (= (and d!967507 (not c!579721)) b!3400857))

(declare-fun m!3773601 () Bool)

(assert (=> b!3400857 m!3773601))

(assert (=> b!3400317 d!967507))

(declare-fun d!967509 () Bool)

(declare-fun lt!1156542 () Int)

(assert (=> d!967509 (>= lt!1156542 0)))

(declare-fun e!2111094 () Int)

(assert (=> d!967509 (= lt!1156542 e!2111094)))

(declare-fun c!579722 () Bool)

(assert (=> d!967509 (= c!579722 ((_ is Nil!36983) (++!9069 lt!1156137 lt!1156140)))))

(assert (=> d!967509 (= (size!28005 (++!9069 lt!1156137 lt!1156140)) lt!1156542)))

(declare-fun b!3400858 () Bool)

(assert (=> b!3400858 (= e!2111094 0)))

(declare-fun b!3400859 () Bool)

(assert (=> b!3400859 (= e!2111094 (+ 1 (size!28005 (t!265784 (++!9069 lt!1156137 lt!1156140)))))))

(assert (= (and d!967509 c!579722) b!3400858))

(assert (= (and d!967509 (not c!579722)) b!3400859))

(declare-fun m!3773603 () Bool)

(assert (=> b!3400859 m!3773603))

(assert (=> b!3400317 d!967509))

(declare-fun d!967511 () Bool)

(declare-fun lt!1156543 () Int)

(assert (=> d!967511 (>= lt!1156543 0)))

(declare-fun e!2111095 () Int)

(assert (=> d!967511 (= lt!1156543 e!2111095)))

(declare-fun c!579723 () Bool)

(assert (=> d!967511 (= c!579723 ((_ is Nil!36983) lt!1156144))))

(assert (=> d!967511 (= (size!28005 lt!1156144) lt!1156543)))

(declare-fun b!3400860 () Bool)

(assert (=> b!3400860 (= e!2111095 0)))

(declare-fun b!3400861 () Bool)

(assert (=> b!3400861 (= e!2111095 (+ 1 (size!28005 (t!265784 lt!1156144))))))

(assert (= (and d!967511 c!579723) b!3400860))

(assert (= (and d!967511 (not c!579723)) b!3400861))

(declare-fun m!3773605 () Bool)

(assert (=> b!3400861 m!3773605))

(assert (=> b!3400317 d!967511))

(declare-fun d!967513 () Bool)

(declare-fun lt!1156544 () Int)

(assert (=> d!967513 (>= lt!1156544 0)))

(declare-fun e!2111096 () Int)

(assert (=> d!967513 (= lt!1156544 e!2111096)))

(declare-fun c!579724 () Bool)

(assert (=> d!967513 (= c!579724 ((_ is Nil!36983) lt!1156240))))

(assert (=> d!967513 (= (size!28005 lt!1156240) lt!1156544)))

(declare-fun b!3400862 () Bool)

(assert (=> b!3400862 (= e!2111096 0)))

(declare-fun b!3400863 () Bool)

(assert (=> b!3400863 (= e!2111096 (+ 1 (size!28005 (t!265784 lt!1156240))))))

(assert (= (and d!967513 c!579724) b!3400862))

(assert (= (and d!967513 (not c!579724)) b!3400863))

(declare-fun m!3773607 () Bool)

(assert (=> b!3400863 m!3773607))

(assert (=> b!3400254 d!967513))

(declare-fun d!967515 () Bool)

(declare-fun lt!1156545 () Int)

(assert (=> d!967515 (>= lt!1156545 0)))

(declare-fun e!2111097 () Int)

(assert (=> d!967515 (= lt!1156545 e!2111097)))

(declare-fun c!579725 () Bool)

(assert (=> d!967515 (= c!579725 ((_ is Nil!36983) (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))))))

(assert (=> d!967515 (= (size!28005 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))) lt!1156545)))

(declare-fun b!3400864 () Bool)

(assert (=> b!3400864 (= e!2111097 0)))

(declare-fun b!3400865 () Bool)

(assert (=> b!3400865 (= e!2111097 (+ 1 (size!28005 (t!265784 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))))))))

(assert (= (and d!967515 c!579725) b!3400864))

(assert (= (and d!967515 (not c!579725)) b!3400865))

(declare-fun m!3773609 () Bool)

(assert (=> b!3400865 m!3773609))

(assert (=> b!3400254 d!967515))

(declare-fun d!967517 () Bool)

(declare-fun lt!1156546 () Int)

(assert (=> d!967517 (>= lt!1156546 0)))

(declare-fun e!2111098 () Int)

(assert (=> d!967517 (= lt!1156546 e!2111098)))

(declare-fun c!579726 () Bool)

(assert (=> d!967517 (= c!579726 ((_ is Nil!36983) lt!1156140))))

(assert (=> d!967517 (= (size!28005 lt!1156140) lt!1156546)))

(declare-fun b!3400866 () Bool)

(assert (=> b!3400866 (= e!2111098 0)))

(declare-fun b!3400867 () Bool)

(assert (=> b!3400867 (= e!2111098 (+ 1 (size!28005 (t!265784 lt!1156140))))))

(assert (= (and d!967517 c!579726) b!3400866))

(assert (= (and d!967517 (not c!579726)) b!3400867))

(declare-fun m!3773611 () Bool)

(assert (=> b!3400867 m!3773611))

(assert (=> b!3400254 d!967517))

(declare-fun b!3400870 () Bool)

(declare-fun res!1376083 () Bool)

(declare-fun e!2111100 () Bool)

(assert (=> b!3400870 (=> (not res!1376083) (not e!2111100))))

(declare-fun lt!1156547 () List!37107)

(assert (=> b!3400870 (= res!1376083 (= (size!28005 lt!1156547) (+ (size!28005 (t!265784 lt!1156137)) (size!28005 lt!1156140))))))

(declare-fun b!3400869 () Bool)

(declare-fun e!2111099 () List!37107)

(assert (=> b!3400869 (= e!2111099 (Cons!36983 (h!42403 (t!265784 lt!1156137)) (++!9069 (t!265784 (t!265784 lt!1156137)) lt!1156140)))))

(declare-fun b!3400871 () Bool)

(assert (=> b!3400871 (= e!2111100 (or (not (= lt!1156140 Nil!36983)) (= lt!1156547 (t!265784 lt!1156137))))))

(declare-fun d!967519 () Bool)

(assert (=> d!967519 e!2111100))

(declare-fun res!1376082 () Bool)

(assert (=> d!967519 (=> (not res!1376082) (not e!2111100))))

(assert (=> d!967519 (= res!1376082 (= (content!5117 lt!1156547) ((_ map or) (content!5117 (t!265784 lt!1156137)) (content!5117 lt!1156140))))))

(assert (=> d!967519 (= lt!1156547 e!2111099)))

(declare-fun c!579727 () Bool)

(assert (=> d!967519 (= c!579727 ((_ is Nil!36983) (t!265784 lt!1156137)))))

(assert (=> d!967519 (= (++!9069 (t!265784 lt!1156137) lt!1156140) lt!1156547)))

(declare-fun b!3400868 () Bool)

(assert (=> b!3400868 (= e!2111099 lt!1156140)))

(assert (= (and d!967519 c!579727) b!3400868))

(assert (= (and d!967519 (not c!579727)) b!3400869))

(assert (= (and d!967519 res!1376082) b!3400870))

(assert (= (and b!3400870 res!1376083) b!3400871))

(declare-fun m!3773613 () Bool)

(assert (=> b!3400870 m!3773613))

(declare-fun m!3773615 () Bool)

(assert (=> b!3400870 m!3773615))

(assert (=> b!3400870 m!3772559))

(declare-fun m!3773617 () Bool)

(assert (=> b!3400869 m!3773617))

(declare-fun m!3773619 () Bool)

(assert (=> d!967519 m!3773619))

(assert (=> d!967519 m!3773459))

(assert (=> d!967519 m!3772567))

(assert (=> b!3400320 d!967519))

(declare-fun d!967521 () Bool)

(declare-fun isBalanced!3379 (Conc!11175) Bool)

(assert (=> d!967521 (= (inv!50093 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241))) (isBalanced!3379 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241)))))))

(declare-fun bs!556259 () Bool)

(assert (= bs!556259 d!967521))

(declare-fun m!3773621 () Bool)

(assert (=> bs!556259 m!3773621))

(assert (=> tb!182229 d!967521))

(declare-fun d!967523 () Bool)

(assert (=> d!967523 (= (list!13409 lt!1156254) (list!13413 (c!579555 lt!1156254)))))

(declare-fun bs!556260 () Bool)

(assert (= bs!556260 d!967523))

(declare-fun m!3773623 () Bool)

(assert (=> bs!556260 m!3773623))

(assert (=> d!967193 d!967523))

(declare-fun b!3400874 () Bool)

(declare-fun res!1376085 () Bool)

(declare-fun e!2111102 () Bool)

(assert (=> b!3400874 (=> (not res!1376085) (not e!2111102))))

(declare-fun lt!1156548 () List!37107)

(assert (=> b!3400874 (= res!1376085 (= (size!28005 lt!1156548) (+ (size!28005 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))) (size!28005 (list!13409 (charsOf!3414 separatorToken!241))))))))

(declare-fun b!3400873 () Bool)

(declare-fun e!2111101 () List!37107)

(assert (=> b!3400873 (= e!2111101 (Cons!36983 (h!42403 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))) (++!9069 (t!265784 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))) (list!13409 (charsOf!3414 separatorToken!241)))))))

(declare-fun b!3400875 () Bool)

(assert (=> b!3400875 (= e!2111102 (or (not (= (list!13409 (charsOf!3414 separatorToken!241)) Nil!36983)) (= lt!1156548 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))))))))

(declare-fun d!967525 () Bool)

(assert (=> d!967525 e!2111102))

(declare-fun res!1376084 () Bool)

(assert (=> d!967525 (=> (not res!1376084) (not e!2111102))))

(assert (=> d!967525 (= res!1376084 (= (content!5117 lt!1156548) ((_ map or) (content!5117 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))) (content!5117 (list!13409 (charsOf!3414 separatorToken!241))))))))

(assert (=> d!967525 (= lt!1156548 e!2111101)))

(declare-fun c!579728 () Bool)

(assert (=> d!967525 (= c!579728 ((_ is Nil!36983) (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))))))

(assert (=> d!967525 (= (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) (list!13409 (charsOf!3414 separatorToken!241))) lt!1156548)))

(declare-fun b!3400872 () Bool)

(assert (=> b!3400872 (= e!2111101 (list!13409 (charsOf!3414 separatorToken!241)))))

(assert (= (and d!967525 c!579728) b!3400872))

(assert (= (and d!967525 (not c!579728)) b!3400873))

(assert (= (and d!967525 res!1376084) b!3400874))

(assert (= (and b!3400874 res!1376085) b!3400875))

(declare-fun m!3773625 () Bool)

(assert (=> b!3400874 m!3773625))

(assert (=> b!3400874 m!3772127))

(assert (=> b!3400874 m!3772587))

(assert (=> b!3400874 m!3772143))

(assert (=> b!3400874 m!3773441))

(assert (=> b!3400873 m!3772143))

(declare-fun m!3773627 () Bool)

(assert (=> b!3400873 m!3773627))

(declare-fun m!3773629 () Bool)

(assert (=> d!967525 m!3773629))

(assert (=> d!967525 m!3772127))

(assert (=> d!967525 m!3772593))

(assert (=> d!967525 m!3772143))

(assert (=> d!967525 m!3773449))

(assert (=> b!3400281 d!967525))

(assert (=> b!3400281 d!967187))

(assert (=> b!3400281 d!967183))

(assert (=> b!3400281 d!967185))

(declare-fun b!3400878 () Bool)

(declare-fun res!1376087 () Bool)

(declare-fun e!2111104 () Bool)

(assert (=> b!3400878 (=> (not res!1376087) (not e!2111104))))

(declare-fun lt!1156549 () List!37107)

(assert (=> b!3400878 (= res!1376087 (= (size!28005 lt!1156549) (+ (size!28005 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) (list!13409 (charsOf!3414 separatorToken!241)))) (size!28005 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)))))))

(declare-fun e!2111103 () List!37107)

(declare-fun b!3400877 () Bool)

(assert (=> b!3400877 (= e!2111103 (Cons!36983 (h!42403 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) (list!13409 (charsOf!3414 separatorToken!241)))) (++!9069 (t!265784 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) (list!13409 (charsOf!3414 separatorToken!241)))) (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241))))))

(declare-fun b!3400879 () Bool)

(assert (=> b!3400879 (= e!2111104 (or (not (= (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241) Nil!36983)) (= lt!1156549 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) (list!13409 (charsOf!3414 separatorToken!241))))))))

(declare-fun d!967527 () Bool)

(assert (=> d!967527 e!2111104))

(declare-fun res!1376086 () Bool)

(assert (=> d!967527 (=> (not res!1376086) (not e!2111104))))

(assert (=> d!967527 (= res!1376086 (= (content!5117 lt!1156549) ((_ map or) (content!5117 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) (list!13409 (charsOf!3414 separatorToken!241)))) (content!5117 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)))))))

(assert (=> d!967527 (= lt!1156549 e!2111103)))

(declare-fun c!579729 () Bool)

(assert (=> d!967527 (= c!579729 ((_ is Nil!36983) (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) (list!13409 (charsOf!3414 separatorToken!241)))))))

(assert (=> d!967527 (= (++!9069 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) (list!13409 (charsOf!3414 separatorToken!241))) (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)) lt!1156549)))

(declare-fun b!3400876 () Bool)

(assert (=> b!3400876 (= e!2111103 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241))))

(assert (= (and d!967527 c!579729) b!3400876))

(assert (= (and d!967527 (not c!579729)) b!3400877))

(assert (= (and d!967527 res!1376086) b!3400878))

(assert (= (and b!3400878 res!1376087) b!3400879))

(declare-fun m!3773631 () Bool)

(assert (=> b!3400878 m!3773631))

(assert (=> b!3400878 m!3772615))

(declare-fun m!3773633 () Bool)

(assert (=> b!3400878 m!3773633))

(assert (=> b!3400878 m!3772139))

(assert (=> b!3400878 m!3772575))

(assert (=> b!3400877 m!3772139))

(declare-fun m!3773635 () Bool)

(assert (=> b!3400877 m!3773635))

(declare-fun m!3773637 () Bool)

(assert (=> d!967527 m!3773637))

(assert (=> d!967527 m!3772615))

(declare-fun m!3773639 () Bool)

(assert (=> d!967527 m!3773639))

(assert (=> d!967527 m!3772139))

(assert (=> d!967527 m!3772583))

(assert (=> b!3400281 d!967527))

(assert (=> b!3400281 d!967191))

(assert (=> b!3400281 d!967193))

(assert (=> d!967231 d!967173))

(declare-fun d!967529 () Bool)

(assert (=> d!967529 (rulesProduceIndividualToken!2481 thiss!18206 rules!2135 (h!42405 tokens!494))))

(assert (=> d!967529 true))

(declare-fun _$77!935 () Unit!52148)

(assert (=> d!967529 (= (choose!19721 thiss!18206 rules!2135 tokens!494 (h!42405 tokens!494)) _$77!935)))

(declare-fun bs!556262 () Bool)

(assert (= bs!556262 d!967529))

(assert (=> bs!556262 m!3772085))

(assert (=> d!967231 d!967529))

(assert (=> d!967231 d!967081))

(declare-fun d!967543 () Bool)

(declare-fun lt!1156567 () Bool)

(assert (=> d!967543 (= lt!1156567 (isEmpty!21255 (list!13412 (_1!21443 lt!1156185))))))

(assert (=> d!967543 (= lt!1156567 (isEmpty!21256 (c!579556 (_1!21443 lt!1156185))))))

(assert (=> d!967543 (= (isEmpty!21248 (_1!21443 lt!1156185)) lt!1156567)))

(declare-fun bs!556263 () Bool)

(assert (= bs!556263 d!967543))

(assert (=> bs!556263 m!3772335))

(assert (=> bs!556263 m!3772335))

(declare-fun m!3773703 () Bool)

(assert (=> bs!556263 m!3773703))

(declare-fun m!3773705 () Bool)

(assert (=> bs!556263 m!3773705))

(assert (=> b!3400113 d!967543))

(declare-fun d!967545 () Bool)

(assert (=> d!967545 (dynLambda!15439 lambda!120961 (h!42405 tokens!494))))

(assert (=> d!967545 true))

(declare-fun _$7!1256 () Unit!52148)

(assert (=> d!967545 (= (choose!19719 tokens!494 lambda!120961 (h!42405 tokens!494)) _$7!1256)))

(declare-fun b_lambda!97041 () Bool)

(assert (=> (not b_lambda!97041) (not d!967545)))

(declare-fun bs!556264 () Bool)

(assert (= bs!556264 d!967545))

(assert (=> bs!556264 m!3772259))

(assert (=> d!967169 d!967545))

(assert (=> d!967169 d!967085))

(declare-fun b!3400935 () Bool)

(declare-fun e!2111132 () Int)

(declare-fun call!245846 () Int)

(assert (=> b!3400935 (= e!2111132 call!245846)))

(declare-fun b!3400936 () Bool)

(declare-fun e!2111135 () Int)

(assert (=> b!3400936 (= e!2111135 (- call!245846 (+ 0 1)))))

(declare-fun d!967547 () Bool)

(declare-fun e!2111133 () Bool)

(assert (=> d!967547 e!2111133))

(declare-fun res!1376113 () Bool)

(assert (=> d!967547 (=> (not res!1376113) (not e!2111133))))

(declare-fun lt!1156570 () List!37109)

(declare-fun content!5120 (List!37109) (InoxSet Token!10166))

(assert (=> d!967547 (= res!1376113 (= ((_ map implies) (content!5120 lt!1156570) (content!5120 lt!1156277)) ((as const (InoxSet Token!10166)) true)))))

(declare-fun e!2111136 () List!37109)

(assert (=> d!967547 (= lt!1156570 e!2111136)))

(declare-fun c!579745 () Bool)

(assert (=> d!967547 (= c!579745 ((_ is Nil!36985) lt!1156277))))

(assert (=> d!967547 (= (drop!1979 lt!1156277 (+ 0 1)) lt!1156570)))

(declare-fun b!3400937 () Bool)

(declare-fun e!2111134 () List!37109)

(assert (=> b!3400937 (= e!2111136 e!2111134)))

(declare-fun c!579747 () Bool)

(assert (=> b!3400937 (= c!579747 (<= (+ 0 1) 0))))

(declare-fun b!3400938 () Bool)

(assert (=> b!3400938 (= e!2111134 lt!1156277)))

(declare-fun bm!245841 () Bool)

(assert (=> bm!245841 (= call!245846 (size!28008 lt!1156277))))

(declare-fun b!3400939 () Bool)

(assert (=> b!3400939 (= e!2111136 Nil!36985)))

(declare-fun b!3400940 () Bool)

(assert (=> b!3400940 (= e!2111135 0)))

(declare-fun b!3400941 () Bool)

(assert (=> b!3400941 (= e!2111134 (drop!1979 (t!265786 lt!1156277) (- (+ 0 1) 1)))))

(declare-fun b!3400942 () Bool)

(assert (=> b!3400942 (= e!2111133 (= (size!28008 lt!1156570) e!2111132))))

(declare-fun c!579748 () Bool)

(assert (=> b!3400942 (= c!579748 (<= (+ 0 1) 0))))

(declare-fun b!3400943 () Bool)

(assert (=> b!3400943 (= e!2111132 e!2111135)))

(declare-fun c!579746 () Bool)

(assert (=> b!3400943 (= c!579746 (>= (+ 0 1) call!245846))))

(assert (= (and d!967547 c!579745) b!3400939))

(assert (= (and d!967547 (not c!579745)) b!3400937))

(assert (= (and b!3400937 c!579747) b!3400938))

(assert (= (and b!3400937 (not c!579747)) b!3400941))

(assert (= (and d!967547 res!1376113) b!3400942))

(assert (= (and b!3400942 c!579748) b!3400935))

(assert (= (and b!3400942 (not c!579748)) b!3400943))

(assert (= (and b!3400943 c!579746) b!3400940))

(assert (= (and b!3400943 (not c!579746)) b!3400936))

(assert (= (or b!3400935 b!3400943 b!3400936) bm!245841))

(declare-fun m!3773707 () Bool)

(assert (=> d!967547 m!3773707))

(declare-fun m!3773709 () Bool)

(assert (=> d!967547 m!3773709))

(declare-fun m!3773711 () Bool)

(assert (=> bm!245841 m!3773711))

(declare-fun m!3773713 () Bool)

(assert (=> b!3400941 m!3773713))

(declare-fun m!3773715 () Bool)

(assert (=> b!3400942 m!3773715))

(assert (=> b!3400301 d!967547))

(declare-fun b!3400944 () Bool)

(declare-fun e!2111137 () Int)

(declare-fun call!245847 () Int)

(assert (=> b!3400944 (= e!2111137 call!245847)))

(declare-fun b!3400945 () Bool)

(declare-fun e!2111140 () Int)

(assert (=> b!3400945 (= e!2111140 (- call!245847 0))))

(declare-fun d!967549 () Bool)

(declare-fun e!2111138 () Bool)

(assert (=> d!967549 e!2111138))

(declare-fun res!1376114 () Bool)

(assert (=> d!967549 (=> (not res!1376114) (not e!2111138))))

(declare-fun lt!1156571 () List!37109)

(assert (=> d!967549 (= res!1376114 (= ((_ map implies) (content!5120 lt!1156571) (content!5120 lt!1156277)) ((as const (InoxSet Token!10166)) true)))))

(declare-fun e!2111141 () List!37109)

(assert (=> d!967549 (= lt!1156571 e!2111141)))

(declare-fun c!579749 () Bool)

(assert (=> d!967549 (= c!579749 ((_ is Nil!36985) lt!1156277))))

(assert (=> d!967549 (= (drop!1979 lt!1156277 0) lt!1156571)))

(declare-fun b!3400946 () Bool)

(declare-fun e!2111139 () List!37109)

(assert (=> b!3400946 (= e!2111141 e!2111139)))

(declare-fun c!579751 () Bool)

(assert (=> b!3400946 (= c!579751 (<= 0 0))))

(declare-fun b!3400947 () Bool)

(assert (=> b!3400947 (= e!2111139 lt!1156277)))

(declare-fun bm!245842 () Bool)

(assert (=> bm!245842 (= call!245847 (size!28008 lt!1156277))))

(declare-fun b!3400948 () Bool)

(assert (=> b!3400948 (= e!2111141 Nil!36985)))

(declare-fun b!3400949 () Bool)

(assert (=> b!3400949 (= e!2111140 0)))

(declare-fun b!3400950 () Bool)

(assert (=> b!3400950 (= e!2111139 (drop!1979 (t!265786 lt!1156277) (- 0 1)))))

(declare-fun b!3400951 () Bool)

(assert (=> b!3400951 (= e!2111138 (= (size!28008 lt!1156571) e!2111137))))

(declare-fun c!579752 () Bool)

(assert (=> b!3400951 (= c!579752 (<= 0 0))))

(declare-fun b!3400952 () Bool)

(assert (=> b!3400952 (= e!2111137 e!2111140)))

(declare-fun c!579750 () Bool)

(assert (=> b!3400952 (= c!579750 (>= 0 call!245847))))

(assert (= (and d!967549 c!579749) b!3400948))

(assert (= (and d!967549 (not c!579749)) b!3400946))

(assert (= (and b!3400946 c!579751) b!3400947))

(assert (= (and b!3400946 (not c!579751)) b!3400950))

(assert (= (and d!967549 res!1376114) b!3400951))

(assert (= (and b!3400951 c!579752) b!3400944))

(assert (= (and b!3400951 (not c!579752)) b!3400952))

(assert (= (and b!3400952 c!579750) b!3400949))

(assert (= (and b!3400952 (not c!579750)) b!3400945))

(assert (= (or b!3400944 b!3400952 b!3400945) bm!245842))

(declare-fun m!3773717 () Bool)

(assert (=> d!967549 m!3773717))

(assert (=> d!967549 m!3773709))

(assert (=> bm!245842 m!3773711))

(declare-fun m!3773719 () Bool)

(assert (=> b!3400950 m!3773719))

(declare-fun m!3773721 () Bool)

(assert (=> b!3400951 m!3773721))

(assert (=> b!3400301 d!967549))

(declare-fun d!967551 () Bool)

(declare-fun lt!1156574 () Token!10166)

(assert (=> d!967551 (contains!6795 lt!1156275 lt!1156574)))

(declare-fun e!2111147 () Token!10166)

(assert (=> d!967551 (= lt!1156574 e!2111147)))

(declare-fun c!579755 () Bool)

(assert (=> d!967551 (= c!579755 (= 0 0))))

(declare-fun e!2111146 () Bool)

(assert (=> d!967551 e!2111146))

(declare-fun res!1376117 () Bool)

(assert (=> d!967551 (=> (not res!1376117) (not e!2111146))))

(assert (=> d!967551 (= res!1376117 (<= 0 0))))

(assert (=> d!967551 (= (apply!8634 lt!1156275 0) lt!1156574)))

(declare-fun b!3400959 () Bool)

(assert (=> b!3400959 (= e!2111146 (< 0 (size!28008 lt!1156275)))))

(declare-fun b!3400960 () Bool)

(assert (=> b!3400960 (= e!2111147 (head!7257 lt!1156275))))

(declare-fun b!3400961 () Bool)

(assert (=> b!3400961 (= e!2111147 (apply!8634 (tail!5379 lt!1156275) (- 0 1)))))

(assert (= (and d!967551 res!1376117) b!3400959))

(assert (= (and d!967551 c!579755) b!3400960))

(assert (= (and d!967551 (not c!579755)) b!3400961))

(declare-fun m!3773723 () Bool)

(assert (=> d!967551 m!3773723))

(declare-fun m!3773725 () Bool)

(assert (=> b!3400959 m!3773725))

(declare-fun m!3773727 () Bool)

(assert (=> b!3400960 m!3773727))

(declare-fun m!3773729 () Bool)

(assert (=> b!3400961 m!3773729))

(assert (=> b!3400961 m!3773729))

(declare-fun m!3773731 () Bool)

(assert (=> b!3400961 m!3773731))

(assert (=> b!3400301 d!967551))

(declare-fun d!967553 () Bool)

(assert (=> d!967553 (= (head!7257 (drop!1979 lt!1156275 0)) (h!42405 (drop!1979 lt!1156275 0)))))

(assert (=> b!3400301 d!967553))

(declare-fun d!967555 () Bool)

(declare-fun lt!1156577 () Token!10166)

(assert (=> d!967555 (= lt!1156577 (apply!8634 (list!13412 lt!1156135) 0))))

(declare-fun apply!8636 (Conc!11176 Int) Token!10166)

(assert (=> d!967555 (= lt!1156577 (apply!8636 (c!579556 lt!1156135) 0))))

(declare-fun e!2111150 () Bool)

(assert (=> d!967555 e!2111150))

(declare-fun res!1376120 () Bool)

(assert (=> d!967555 (=> (not res!1376120) (not e!2111150))))

(assert (=> d!967555 (= res!1376120 (<= 0 0))))

(assert (=> d!967555 (= (apply!8632 lt!1156135 0) lt!1156577)))

(declare-fun b!3400964 () Bool)

(assert (=> b!3400964 (= e!2111150 (< 0 (size!28003 lt!1156135)))))

(assert (= (and d!967555 res!1376120) b!3400964))

(assert (=> d!967555 m!3772695))

(assert (=> d!967555 m!3772695))

(declare-fun m!3773733 () Bool)

(assert (=> d!967555 m!3773733))

(declare-fun m!3773735 () Bool)

(assert (=> d!967555 m!3773735))

(assert (=> b!3400964 m!3772669))

(assert (=> b!3400301 d!967555))

(declare-fun d!967557 () Bool)

(assert (=> d!967557 (= (list!13412 lt!1156135) (list!13415 (c!579556 lt!1156135)))))

(declare-fun bs!556265 () Bool)

(assert (= bs!556265 d!967557))

(declare-fun m!3773737 () Bool)

(assert (=> bs!556265 m!3773737))

(assert (=> b!3400301 d!967557))

(declare-fun d!967559 () Bool)

(assert (=> d!967559 (= (head!7257 (drop!1979 lt!1156275 0)) (apply!8634 lt!1156275 0))))

(declare-fun lt!1156580 () Unit!52148)

(declare-fun choose!19726 (List!37109 Int) Unit!52148)

(assert (=> d!967559 (= lt!1156580 (choose!19726 lt!1156275 0))))

(declare-fun e!2111153 () Bool)

(assert (=> d!967559 e!2111153))

(declare-fun res!1376123 () Bool)

(assert (=> d!967559 (=> (not res!1376123) (not e!2111153))))

(assert (=> d!967559 (= res!1376123 (>= 0 0))))

(assert (=> d!967559 (= (lemmaDropApply!1137 lt!1156275 0) lt!1156580)))

(declare-fun b!3400967 () Bool)

(assert (=> b!3400967 (= e!2111153 (< 0 (size!28008 lt!1156275)))))

(assert (= (and d!967559 res!1376123) b!3400967))

(assert (=> d!967559 m!3772691))

(assert (=> d!967559 m!3772691))

(assert (=> d!967559 m!3772693))

(assert (=> d!967559 m!3772679))

(declare-fun m!3773739 () Bool)

(assert (=> d!967559 m!3773739))

(assert (=> b!3400967 m!3773725))

(assert (=> b!3400301 d!967559))

(declare-fun d!967561 () Bool)

(assert (=> d!967561 (= (tail!5379 (drop!1979 lt!1156277 0)) (drop!1979 lt!1156277 (+ 0 1)))))

(declare-fun lt!1156583 () Unit!52148)

(declare-fun choose!19727 (List!37109 Int) Unit!52148)

(assert (=> d!967561 (= lt!1156583 (choose!19727 lt!1156277 0))))

(declare-fun e!2111156 () Bool)

(assert (=> d!967561 e!2111156))

(declare-fun res!1376126 () Bool)

(assert (=> d!967561 (=> (not res!1376126) (not e!2111156))))

(assert (=> d!967561 (= res!1376126 (>= 0 0))))

(assert (=> d!967561 (= (lemmaDropTail!1021 lt!1156277 0) lt!1156583)))

(declare-fun b!3400970 () Bool)

(assert (=> b!3400970 (= e!2111156 (< 0 (size!28008 lt!1156277)))))

(assert (= (and d!967561 res!1376126) b!3400970))

(assert (=> d!967561 m!3772681))

(assert (=> d!967561 m!3772681))

(assert (=> d!967561 m!3772683))

(assert (=> d!967561 m!3772697))

(declare-fun m!3773741 () Bool)

(assert (=> d!967561 m!3773741))

(assert (=> b!3400970 m!3773711))

(assert (=> b!3400301 d!967561))

(declare-fun d!967563 () Bool)

(assert (=> d!967563 (= (tail!5379 (drop!1979 lt!1156277 0)) (t!265786 (drop!1979 lt!1156277 0)))))

(assert (=> b!3400301 d!967563))

(declare-fun b!3400980 () Bool)

(declare-fun res!1376138 () Bool)

(declare-fun e!2111159 () Bool)

(assert (=> b!3400980 (=> (not res!1376138) (not e!2111159))))

(declare-fun height!1673 (Conc!11175) Int)

(declare-fun ++!9072 (Conc!11175 Conc!11175) Conc!11175)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3400980 (= res!1376138 (<= (height!1673 (++!9072 (c!579555 (BalanceConc!21965 Empty!11175)) (c!579555 (charsOf!3414 (apply!8632 lt!1156135 0))))) (+ (max!0 (height!1673 (c!579555 (BalanceConc!21965 Empty!11175))) (height!1673 (c!579555 (charsOf!3414 (apply!8632 lt!1156135 0))))) 1)))))

(declare-fun b!3400981 () Bool)

(declare-fun res!1376136 () Bool)

(assert (=> b!3400981 (=> (not res!1376136) (not e!2111159))))

(assert (=> b!3400981 (= res!1376136 (>= (height!1673 (++!9072 (c!579555 (BalanceConc!21965 Empty!11175)) (c!579555 (charsOf!3414 (apply!8632 lt!1156135 0))))) (max!0 (height!1673 (c!579555 (BalanceConc!21965 Empty!11175))) (height!1673 (c!579555 (charsOf!3414 (apply!8632 lt!1156135 0)))))))))

(declare-fun b!3400982 () Bool)

(declare-fun lt!1156586 () BalanceConc!21964)

(assert (=> b!3400982 (= e!2111159 (= (list!13409 lt!1156586) (++!9069 (list!13409 (BalanceConc!21965 Empty!11175)) (list!13409 (charsOf!3414 (apply!8632 lt!1156135 0))))))))

(declare-fun b!3400979 () Bool)

(declare-fun res!1376137 () Bool)

(assert (=> b!3400979 (=> (not res!1376137) (not e!2111159))))

(assert (=> b!3400979 (= res!1376137 (isBalanced!3379 (++!9072 (c!579555 (BalanceConc!21965 Empty!11175)) (c!579555 (charsOf!3414 (apply!8632 lt!1156135 0))))))))

(declare-fun d!967565 () Bool)

(assert (=> d!967565 e!2111159))

(declare-fun res!1376135 () Bool)

(assert (=> d!967565 (=> (not res!1376135) (not e!2111159))))

(declare-fun appendAssocInst!792 (Conc!11175 Conc!11175) Bool)

(assert (=> d!967565 (= res!1376135 (appendAssocInst!792 (c!579555 (BalanceConc!21965 Empty!11175)) (c!579555 (charsOf!3414 (apply!8632 lt!1156135 0)))))))

(assert (=> d!967565 (= lt!1156586 (BalanceConc!21965 (++!9072 (c!579555 (BalanceConc!21965 Empty!11175)) (c!579555 (charsOf!3414 (apply!8632 lt!1156135 0))))))))

(assert (=> d!967565 (= (++!9071 (BalanceConc!21965 Empty!11175) (charsOf!3414 (apply!8632 lt!1156135 0))) lt!1156586)))

(assert (= (and d!967565 res!1376135) b!3400979))

(assert (= (and b!3400979 res!1376137) b!3400980))

(assert (= (and b!3400980 res!1376138) b!3400981))

(assert (= (and b!3400981 res!1376136) b!3400982))

(declare-fun m!3773743 () Bool)

(assert (=> b!3400979 m!3773743))

(assert (=> b!3400979 m!3773743))

(declare-fun m!3773745 () Bool)

(assert (=> b!3400979 m!3773745))

(assert (=> b!3400980 m!3773743))

(declare-fun m!3773747 () Bool)

(assert (=> b!3400980 m!3773747))

(assert (=> b!3400980 m!3773743))

(declare-fun m!3773749 () Bool)

(assert (=> b!3400980 m!3773749))

(declare-fun m!3773751 () Bool)

(assert (=> b!3400980 m!3773751))

(assert (=> b!3400980 m!3773747))

(declare-fun m!3773753 () Bool)

(assert (=> b!3400980 m!3773753))

(assert (=> b!3400980 m!3773751))

(assert (=> b!3400981 m!3773743))

(assert (=> b!3400981 m!3773747))

(assert (=> b!3400981 m!3773743))

(assert (=> b!3400981 m!3773749))

(assert (=> b!3400981 m!3773751))

(assert (=> b!3400981 m!3773747))

(assert (=> b!3400981 m!3773753))

(assert (=> b!3400981 m!3773751))

(declare-fun m!3773755 () Bool)

(assert (=> d!967565 m!3773755))

(assert (=> d!967565 m!3773743))

(declare-fun m!3773757 () Bool)

(assert (=> b!3400982 m!3773757))

(assert (=> b!3400982 m!3772665))

(assert (=> b!3400982 m!3772675))

(declare-fun m!3773759 () Bool)

(assert (=> b!3400982 m!3773759))

(assert (=> b!3400982 m!3772665))

(assert (=> b!3400982 m!3773759))

(declare-fun m!3773761 () Bool)

(assert (=> b!3400982 m!3773761))

(assert (=> b!3400301 d!967565))

(declare-fun d!967567 () Bool)

(declare-fun lt!1156593 () BalanceConc!21964)

(assert (=> d!967567 (= (list!13409 lt!1156593) (printListTailRec!662 thiss!18206 (dropList!1179 lt!1156135 (+ 0 1)) (list!13409 (++!9071 (BalanceConc!21965 Empty!11175) (charsOf!3414 (apply!8632 lt!1156135 0))))))))

(declare-fun e!2111161 () BalanceConc!21964)

(assert (=> d!967567 (= lt!1156593 e!2111161)))

(declare-fun c!579759 () Bool)

(assert (=> d!967567 (= c!579759 (>= (+ 0 1) (size!28003 lt!1156135)))))

(declare-fun e!2111160 () Bool)

(assert (=> d!967567 e!2111160))

(declare-fun res!1376139 () Bool)

(assert (=> d!967567 (=> (not res!1376139) (not e!2111160))))

(assert (=> d!967567 (= res!1376139 (>= (+ 0 1) 0))))

(assert (=> d!967567 (= (printTailRec!1484 thiss!18206 lt!1156135 (+ 0 1) (++!9071 (BalanceConc!21965 Empty!11175) (charsOf!3414 (apply!8632 lt!1156135 0)))) lt!1156593)))

(declare-fun b!3400983 () Bool)

(assert (=> b!3400983 (= e!2111160 (<= (+ 0 1) (size!28003 lt!1156135)))))

(declare-fun b!3400984 () Bool)

(assert (=> b!3400984 (= e!2111161 (++!9071 (BalanceConc!21965 Empty!11175) (charsOf!3414 (apply!8632 lt!1156135 0))))))

(declare-fun b!3400985 () Bool)

(assert (=> b!3400985 (= e!2111161 (printTailRec!1484 thiss!18206 lt!1156135 (+ 0 1 1) (++!9071 (++!9071 (BalanceConc!21965 Empty!11175) (charsOf!3414 (apply!8632 lt!1156135 0))) (charsOf!3414 (apply!8632 lt!1156135 (+ 0 1))))))))

(declare-fun lt!1156588 () List!37109)

(assert (=> b!3400985 (= lt!1156588 (list!13412 lt!1156135))))

(declare-fun lt!1156587 () Unit!52148)

(assert (=> b!3400985 (= lt!1156587 (lemmaDropApply!1137 lt!1156588 (+ 0 1)))))

(assert (=> b!3400985 (= (head!7257 (drop!1979 lt!1156588 (+ 0 1))) (apply!8634 lt!1156588 (+ 0 1)))))

(declare-fun lt!1156589 () Unit!52148)

(assert (=> b!3400985 (= lt!1156589 lt!1156587)))

(declare-fun lt!1156590 () List!37109)

(assert (=> b!3400985 (= lt!1156590 (list!13412 lt!1156135))))

(declare-fun lt!1156591 () Unit!52148)

(assert (=> b!3400985 (= lt!1156591 (lemmaDropTail!1021 lt!1156590 (+ 0 1)))))

(assert (=> b!3400985 (= (tail!5379 (drop!1979 lt!1156590 (+ 0 1))) (drop!1979 lt!1156590 (+ 0 1 1)))))

(declare-fun lt!1156592 () Unit!52148)

(assert (=> b!3400985 (= lt!1156592 lt!1156591)))

(assert (= (and d!967567 res!1376139) b!3400983))

(assert (= (and d!967567 c!579759) b!3400984))

(assert (= (and d!967567 (not c!579759)) b!3400985))

(declare-fun m!3773763 () Bool)

(assert (=> d!967567 m!3773763))

(assert (=> d!967567 m!3772685))

(declare-fun m!3773765 () Bool)

(assert (=> d!967567 m!3773765))

(assert (=> d!967567 m!3773763))

(assert (=> d!967567 m!3773765))

(declare-fun m!3773767 () Bool)

(assert (=> d!967567 m!3773767))

(assert (=> d!967567 m!3772669))

(declare-fun m!3773769 () Bool)

(assert (=> d!967567 m!3773769))

(assert (=> b!3400983 m!3772669))

(declare-fun m!3773771 () Bool)

(assert (=> b!3400985 m!3773771))

(declare-fun m!3773773 () Bool)

(assert (=> b!3400985 m!3773773))

(declare-fun m!3773775 () Bool)

(assert (=> b!3400985 m!3773775))

(assert (=> b!3400985 m!3773771))

(declare-fun m!3773777 () Bool)

(assert (=> b!3400985 m!3773777))

(declare-fun m!3773779 () Bool)

(assert (=> b!3400985 m!3773779))

(declare-fun m!3773781 () Bool)

(assert (=> b!3400985 m!3773781))

(assert (=> b!3400985 m!3773779))

(declare-fun m!3773783 () Bool)

(assert (=> b!3400985 m!3773783))

(declare-fun m!3773785 () Bool)

(assert (=> b!3400985 m!3773785))

(declare-fun m!3773787 () Bool)

(assert (=> b!3400985 m!3773787))

(declare-fun m!3773789 () Bool)

(assert (=> b!3400985 m!3773789))

(declare-fun m!3773791 () Bool)

(assert (=> b!3400985 m!3773791))

(assert (=> b!3400985 m!3772695))

(assert (=> b!3400985 m!3772685))

(assert (=> b!3400985 m!3773773))

(assert (=> b!3400985 m!3773783))

(assert (=> b!3400985 m!3773789))

(declare-fun m!3773793 () Bool)

(assert (=> b!3400985 m!3773793))

(assert (=> b!3400301 d!967567))

(declare-fun b!3400986 () Bool)

(declare-fun e!2111162 () Int)

(declare-fun call!245848 () Int)

(assert (=> b!3400986 (= e!2111162 call!245848)))

(declare-fun b!3400987 () Bool)

(declare-fun e!2111165 () Int)

(assert (=> b!3400987 (= e!2111165 (- call!245848 0))))

(declare-fun d!967569 () Bool)

(declare-fun e!2111163 () Bool)

(assert (=> d!967569 e!2111163))

(declare-fun res!1376140 () Bool)

(assert (=> d!967569 (=> (not res!1376140) (not e!2111163))))

(declare-fun lt!1156594 () List!37109)

(assert (=> d!967569 (= res!1376140 (= ((_ map implies) (content!5120 lt!1156594) (content!5120 lt!1156275)) ((as const (InoxSet Token!10166)) true)))))

(declare-fun e!2111166 () List!37109)

(assert (=> d!967569 (= lt!1156594 e!2111166)))

(declare-fun c!579760 () Bool)

(assert (=> d!967569 (= c!579760 ((_ is Nil!36985) lt!1156275))))

(assert (=> d!967569 (= (drop!1979 lt!1156275 0) lt!1156594)))

(declare-fun b!3400988 () Bool)

(declare-fun e!2111164 () List!37109)

(assert (=> b!3400988 (= e!2111166 e!2111164)))

(declare-fun c!579762 () Bool)

(assert (=> b!3400988 (= c!579762 (<= 0 0))))

(declare-fun b!3400989 () Bool)

(assert (=> b!3400989 (= e!2111164 lt!1156275)))

(declare-fun bm!245843 () Bool)

(assert (=> bm!245843 (= call!245848 (size!28008 lt!1156275))))

(declare-fun b!3400990 () Bool)

(assert (=> b!3400990 (= e!2111166 Nil!36985)))

(declare-fun b!3400991 () Bool)

(assert (=> b!3400991 (= e!2111165 0)))

(declare-fun b!3400992 () Bool)

(assert (=> b!3400992 (= e!2111164 (drop!1979 (t!265786 lt!1156275) (- 0 1)))))

(declare-fun b!3400993 () Bool)

(assert (=> b!3400993 (= e!2111163 (= (size!28008 lt!1156594) e!2111162))))

(declare-fun c!579763 () Bool)

(assert (=> b!3400993 (= c!579763 (<= 0 0))))

(declare-fun b!3400994 () Bool)

(assert (=> b!3400994 (= e!2111162 e!2111165)))

(declare-fun c!579761 () Bool)

(assert (=> b!3400994 (= c!579761 (>= 0 call!245848))))

(assert (= (and d!967569 c!579760) b!3400990))

(assert (= (and d!967569 (not c!579760)) b!3400988))

(assert (= (and b!3400988 c!579762) b!3400989))

(assert (= (and b!3400988 (not c!579762)) b!3400992))

(assert (= (and d!967569 res!1376140) b!3400993))

(assert (= (and b!3400993 c!579763) b!3400986))

(assert (= (and b!3400993 (not c!579763)) b!3400994))

(assert (= (and b!3400994 c!579761) b!3400991))

(assert (= (and b!3400994 (not c!579761)) b!3400987))

(assert (= (or b!3400986 b!3400994 b!3400987) bm!245843))

(declare-fun m!3773795 () Bool)

(assert (=> d!967569 m!3773795))

(declare-fun m!3773797 () Bool)

(assert (=> d!967569 m!3773797))

(assert (=> bm!245843 m!3773725))

(declare-fun m!3773799 () Bool)

(assert (=> b!3400992 m!3773799))

(declare-fun m!3773801 () Bool)

(assert (=> b!3400993 m!3773801))

(assert (=> b!3400301 d!967569))

(declare-fun d!967571 () Bool)

(declare-fun lt!1156595 () BalanceConc!21964)

(assert (=> d!967571 (= (list!13409 lt!1156595) (originalCharacters!6114 (apply!8632 lt!1156135 0)))))

(assert (=> d!967571 (= lt!1156595 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (apply!8632 lt!1156135 0)))) (value!174360 (apply!8632 lt!1156135 0))))))

(assert (=> d!967571 (= (charsOf!3414 (apply!8632 lt!1156135 0)) lt!1156595)))

(declare-fun b_lambda!97043 () Bool)

(assert (=> (not b_lambda!97043) (not d!967571)))

(declare-fun tb!182291 () Bool)

(declare-fun t!265891 () Bool)

(assert (=> (and b!3400480 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (toChars!7463 (transformation!5400 (rule!7962 (apply!8632 lt!1156135 0))))) t!265891) tb!182291))

(declare-fun b!3400995 () Bool)

(declare-fun e!2111167 () Bool)

(declare-fun tp!1061227 () Bool)

(assert (=> b!3400995 (= e!2111167 (and (inv!50092 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (apply!8632 lt!1156135 0)))) (value!174360 (apply!8632 lt!1156135 0))))) tp!1061227))))

(declare-fun result!225944 () Bool)

(assert (=> tb!182291 (= result!225944 (and (inv!50093 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (apply!8632 lt!1156135 0)))) (value!174360 (apply!8632 lt!1156135 0)))) e!2111167))))

(assert (= tb!182291 b!3400995))

(declare-fun m!3773803 () Bool)

(assert (=> b!3400995 m!3773803))

(declare-fun m!3773805 () Bool)

(assert (=> tb!182291 m!3773805))

(assert (=> d!967571 t!265891))

(declare-fun b_and!237337 () Bool)

(assert (= b_and!237305 (and (=> t!265891 result!225944) b_and!237337)))

(declare-fun t!265893 () Bool)

(declare-fun tb!182293 () Bool)

(assert (=> (and b!3399996 (= (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (toChars!7463 (transformation!5400 (rule!7962 (apply!8632 lt!1156135 0))))) t!265893) tb!182293))

(declare-fun result!225946 () Bool)

(assert (= result!225946 result!225944))

(assert (=> d!967571 t!265893))

(declare-fun b_and!237339 () Bool)

(assert (= b_and!237293 (and (=> t!265893 result!225946) b_and!237339)))

(declare-fun tb!182295 () Bool)

(declare-fun t!265895 () Bool)

(assert (=> (and b!3399977 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toChars!7463 (transformation!5400 (rule!7962 (apply!8632 lt!1156135 0))))) t!265895) tb!182295))

(declare-fun result!225948 () Bool)

(assert (= result!225948 result!225944))

(assert (=> d!967571 t!265895))

(declare-fun b_and!237341 () Bool)

(assert (= b_and!237295 (and (=> t!265895 result!225948) b_and!237341)))

(declare-fun tb!182297 () Bool)

(declare-fun t!265897 () Bool)

(assert (=> (and b!3399970 (= (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toChars!7463 (transformation!5400 (rule!7962 (apply!8632 lt!1156135 0))))) t!265897) tb!182297))

(declare-fun result!225950 () Bool)

(assert (= result!225950 result!225944))

(assert (=> d!967571 t!265897))

(declare-fun b_and!237343 () Bool)

(assert (= b_and!237297 (and (=> t!265897 result!225950) b_and!237343)))

(declare-fun t!265899 () Bool)

(declare-fun tb!182299 () Bool)

(assert (=> (and b!3400466 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 rules!2135)))) (toChars!7463 (transformation!5400 (rule!7962 (apply!8632 lt!1156135 0))))) t!265899) tb!182299))

(declare-fun result!225952 () Bool)

(assert (= result!225952 result!225944))

(assert (=> d!967571 t!265899))

(declare-fun b_and!237345 () Bool)

(assert (= b_and!237301 (and (=> t!265899 result!225952) b_and!237345)))

(declare-fun m!3773807 () Bool)

(assert (=> d!967571 m!3773807))

(declare-fun m!3773809 () Bool)

(assert (=> d!967571 m!3773809))

(assert (=> b!3400301 d!967571))

(declare-fun d!967573 () Bool)

(assert (=> d!967573 (= (inv!50085 (tag!5984 (rule!7962 (h!42405 (t!265786 tokens!494))))) (= (mod (str.len (value!174359 (tag!5984 (rule!7962 (h!42405 (t!265786 tokens!494)))))) 2) 0))))

(assert (=> b!3400479 d!967573))

(declare-fun d!967575 () Bool)

(declare-fun res!1376141 () Bool)

(declare-fun e!2111168 () Bool)

(assert (=> d!967575 (=> (not res!1376141) (not e!2111168))))

(assert (=> d!967575 (= res!1376141 (semiInverseModEq!2257 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (toValue!7604 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494)))))))))

(assert (=> d!967575 (= (inv!50088 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) e!2111168)))

(declare-fun b!3400996 () Bool)

(assert (=> b!3400996 (= e!2111168 (equivClasses!2156 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (toValue!7604 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494)))))))))

(assert (= (and d!967575 res!1376141) b!3400996))

(declare-fun m!3773811 () Bool)

(assert (=> d!967575 m!3773811))

(declare-fun m!3773813 () Bool)

(assert (=> b!3400996 m!3773813))

(assert (=> b!3400479 d!967575))

(declare-fun b!3400999 () Bool)

(declare-fun res!1376143 () Bool)

(declare-fun e!2111170 () Bool)

(assert (=> b!3400999 (=> (not res!1376143) (not e!2111170))))

(declare-fun lt!1156596 () List!37107)

(assert (=> b!3400999 (= res!1376143 (= (size!28005 lt!1156596) (+ (size!28005 (t!265784 lt!1156137)) (size!28005 lt!1156146))))))

(declare-fun b!3400998 () Bool)

(declare-fun e!2111169 () List!37107)

(assert (=> b!3400998 (= e!2111169 (Cons!36983 (h!42403 (t!265784 lt!1156137)) (++!9069 (t!265784 (t!265784 lt!1156137)) lt!1156146)))))

(declare-fun b!3401000 () Bool)

(assert (=> b!3401000 (= e!2111170 (or (not (= lt!1156146 Nil!36983)) (= lt!1156596 (t!265784 lt!1156137))))))

(declare-fun d!967577 () Bool)

(assert (=> d!967577 e!2111170))

(declare-fun res!1376142 () Bool)

(assert (=> d!967577 (=> (not res!1376142) (not e!2111170))))

(assert (=> d!967577 (= res!1376142 (= (content!5117 lt!1156596) ((_ map or) (content!5117 (t!265784 lt!1156137)) (content!5117 lt!1156146))))))

(assert (=> d!967577 (= lt!1156596 e!2111169)))

(declare-fun c!579764 () Bool)

(assert (=> d!967577 (= c!579764 ((_ is Nil!36983) (t!265784 lt!1156137)))))

(assert (=> d!967577 (= (++!9069 (t!265784 lt!1156137) lt!1156146) lt!1156596)))

(declare-fun b!3400997 () Bool)

(assert (=> b!3400997 (= e!2111169 lt!1156146)))

(assert (= (and d!967577 c!579764) b!3400997))

(assert (= (and d!967577 (not c!579764)) b!3400998))

(assert (= (and d!967577 res!1376142) b!3400999))

(assert (= (and b!3400999 res!1376143) b!3401000))

(declare-fun m!3773815 () Bool)

(assert (=> b!3400999 m!3773815))

(assert (=> b!3400999 m!3773615))

(assert (=> b!3400999 m!3772833))

(declare-fun m!3773817 () Bool)

(assert (=> b!3400998 m!3773817))

(declare-fun m!3773819 () Bool)

(assert (=> d!967577 m!3773819))

(assert (=> d!967577 m!3773459))

(assert (=> d!967577 m!3772839))

(assert (=> b!3400425 d!967577))

(declare-fun b!3401007 () Bool)

(declare-fun res!1376149 () Bool)

(declare-fun e!2111176 () Bool)

(assert (=> b!3401007 (=> (not res!1376149) (not e!2111176))))

(declare-fun lt!1156599 () List!37107)

(assert (=> b!3401007 (= res!1376149 (= (size!28005 lt!1156599) (+ (size!28005 (list!13409 (charsOf!3414 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985))))) (size!28005 (printList!1537 thiss!18206 (t!265786 (Cons!36985 (h!42405 tokens!494) Nil!36985)))))))))

(declare-fun b!3401006 () Bool)

(declare-fun e!2111175 () List!37107)

(assert (=> b!3401006 (= e!2111175 (Cons!36983 (h!42403 (list!13409 (charsOf!3414 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985))))) (++!9069 (t!265784 (list!13409 (charsOf!3414 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985))))) (printList!1537 thiss!18206 (t!265786 (Cons!36985 (h!42405 tokens!494) Nil!36985))))))))

(declare-fun b!3401008 () Bool)

(assert (=> b!3401008 (= e!2111176 (or (not (= (printList!1537 thiss!18206 (t!265786 (Cons!36985 (h!42405 tokens!494) Nil!36985))) Nil!36983)) (= lt!1156599 (list!13409 (charsOf!3414 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985)))))))))

(declare-fun d!967579 () Bool)

(assert (=> d!967579 e!2111176))

(declare-fun res!1376148 () Bool)

(assert (=> d!967579 (=> (not res!1376148) (not e!2111176))))

(assert (=> d!967579 (= res!1376148 (= (content!5117 lt!1156599) ((_ map or) (content!5117 (list!13409 (charsOf!3414 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985))))) (content!5117 (printList!1537 thiss!18206 (t!265786 (Cons!36985 (h!42405 tokens!494) Nil!36985)))))))))

(assert (=> d!967579 (= lt!1156599 e!2111175)))

(declare-fun c!579765 () Bool)

(assert (=> d!967579 (= c!579765 ((_ is Nil!36983) (list!13409 (charsOf!3414 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985))))))))

(assert (=> d!967579 (= (++!9069 (list!13409 (charsOf!3414 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985)))) (printList!1537 thiss!18206 (t!265786 (Cons!36985 (h!42405 tokens!494) Nil!36985)))) lt!1156599)))

(declare-fun b!3401005 () Bool)

(assert (=> b!3401005 (= e!2111175 (printList!1537 thiss!18206 (t!265786 (Cons!36985 (h!42405 tokens!494) Nil!36985))))))

(assert (= (and d!967579 c!579765) b!3401005))

(assert (= (and d!967579 (not c!579765)) b!3401006))

(assert (= (and d!967579 res!1376148) b!3401007))

(assert (= (and b!3401007 res!1376149) b!3401008))

(declare-fun m!3773821 () Bool)

(assert (=> b!3401007 m!3773821))

(assert (=> b!3401007 m!3772711))

(declare-fun m!3773823 () Bool)

(assert (=> b!3401007 m!3773823))

(assert (=> b!3401007 m!3772713))

(declare-fun m!3773825 () Bool)

(assert (=> b!3401007 m!3773825))

(assert (=> b!3401006 m!3772713))

(declare-fun m!3773827 () Bool)

(assert (=> b!3401006 m!3773827))

(declare-fun m!3773829 () Bool)

(assert (=> d!967579 m!3773829))

(assert (=> d!967579 m!3772711))

(declare-fun m!3773831 () Bool)

(assert (=> d!967579 m!3773831))

(assert (=> d!967579 m!3772713))

(declare-fun m!3773833 () Bool)

(assert (=> d!967579 m!3773833))

(assert (=> b!3400309 d!967579))

(declare-fun d!967581 () Bool)

(assert (=> d!967581 (= (list!13409 (charsOf!3414 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985)))) (list!13413 (c!579555 (charsOf!3414 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985))))))))

(declare-fun bs!556266 () Bool)

(assert (= bs!556266 d!967581))

(declare-fun m!3773835 () Bool)

(assert (=> bs!556266 m!3773835))

(assert (=> b!3400309 d!967581))

(declare-fun d!967583 () Bool)

(declare-fun lt!1156600 () BalanceConc!21964)

(assert (=> d!967583 (= (list!13409 lt!1156600) (originalCharacters!6114 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985))))))

(assert (=> d!967583 (= lt!1156600 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985))))) (value!174360 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985)))))))

(assert (=> d!967583 (= (charsOf!3414 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985))) lt!1156600)))

(declare-fun b_lambda!97045 () Bool)

(assert (=> (not b_lambda!97045) (not d!967583)))

(declare-fun tb!182301 () Bool)

(declare-fun t!265903 () Bool)

(assert (=> (and b!3399970 (= (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985)))))) t!265903) tb!182301))

(declare-fun b!3401009 () Bool)

(declare-fun e!2111177 () Bool)

(declare-fun tp!1061228 () Bool)

(assert (=> b!3401009 (= e!2111177 (and (inv!50092 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985))))) (value!174360 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985)))))) tp!1061228))))

(declare-fun result!225954 () Bool)

(assert (=> tb!182301 (= result!225954 (and (inv!50093 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985))))) (value!174360 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985))))) e!2111177))))

(assert (= tb!182301 b!3401009))

(declare-fun m!3773837 () Bool)

(assert (=> b!3401009 m!3773837))

(declare-fun m!3773839 () Bool)

(assert (=> tb!182301 m!3773839))

(assert (=> d!967583 t!265903))

(declare-fun b_and!237347 () Bool)

(assert (= b_and!237343 (and (=> t!265903 result!225954) b_and!237347)))

(declare-fun t!265905 () Bool)

(declare-fun tb!182303 () Bool)

(assert (=> (and b!3400480 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985)))))) t!265905) tb!182303))

(declare-fun result!225956 () Bool)

(assert (= result!225956 result!225954))

(assert (=> d!967583 t!265905))

(declare-fun b_and!237349 () Bool)

(assert (= b_and!237337 (and (=> t!265905 result!225956) b_and!237349)))

(declare-fun tb!182305 () Bool)

(declare-fun t!265907 () Bool)

(assert (=> (and b!3400466 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 rules!2135)))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985)))))) t!265907) tb!182305))

(declare-fun result!225958 () Bool)

(assert (= result!225958 result!225954))

(assert (=> d!967583 t!265907))

(declare-fun b_and!237351 () Bool)

(assert (= b_and!237345 (and (=> t!265907 result!225958) b_and!237351)))

(declare-fun t!265909 () Bool)

(declare-fun tb!182307 () Bool)

(assert (=> (and b!3399996 (= (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985)))))) t!265909) tb!182307))

(declare-fun result!225960 () Bool)

(assert (= result!225960 result!225954))

(assert (=> d!967583 t!265909))

(declare-fun b_and!237353 () Bool)

(assert (= b_and!237339 (and (=> t!265909 result!225960) b_and!237353)))

(declare-fun t!265911 () Bool)

(declare-fun tb!182309 () Bool)

(assert (=> (and b!3399977 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985)))))) t!265911) tb!182309))

(declare-fun result!225962 () Bool)

(assert (= result!225962 result!225954))

(assert (=> d!967583 t!265911))

(declare-fun b_and!237355 () Bool)

(assert (= b_and!237341 (and (=> t!265911 result!225962) b_and!237355)))

(declare-fun m!3773841 () Bool)

(assert (=> d!967583 m!3773841))

(declare-fun m!3773843 () Bool)

(assert (=> d!967583 m!3773843))

(assert (=> b!3400309 d!967583))

(declare-fun d!967585 () Bool)

(declare-fun c!579766 () Bool)

(assert (=> d!967585 (= c!579766 ((_ is Cons!36985) (t!265786 (Cons!36985 (h!42405 tokens!494) Nil!36985))))))

(declare-fun e!2111178 () List!37107)

(assert (=> d!967585 (= (printList!1537 thiss!18206 (t!265786 (Cons!36985 (h!42405 tokens!494) Nil!36985))) e!2111178)))

(declare-fun b!3401010 () Bool)

(assert (=> b!3401010 (= e!2111178 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 (Cons!36985 (h!42405 tokens!494) Nil!36985))))) (printList!1537 thiss!18206 (t!265786 (t!265786 (Cons!36985 (h!42405 tokens!494) Nil!36985))))))))

(declare-fun b!3401011 () Bool)

(assert (=> b!3401011 (= e!2111178 Nil!36983)))

(assert (= (and d!967585 c!579766) b!3401010))

(assert (= (and d!967585 (not c!579766)) b!3401011))

(declare-fun m!3773845 () Bool)

(assert (=> b!3401010 m!3773845))

(assert (=> b!3401010 m!3773845))

(declare-fun m!3773847 () Bool)

(assert (=> b!3401010 m!3773847))

(declare-fun m!3773849 () Bool)

(assert (=> b!3401010 m!3773849))

(assert (=> b!3401010 m!3773847))

(assert (=> b!3401010 m!3773849))

(declare-fun m!3773851 () Bool)

(assert (=> b!3401010 m!3773851))

(assert (=> b!3400309 d!967585))

(declare-fun d!967587 () Bool)

(declare-fun res!1376158 () Bool)

(declare-fun e!2111190 () Bool)

(assert (=> d!967587 (=> res!1376158 e!2111190)))

(assert (=> d!967587 (= res!1376158 ((_ is Nil!36984) rules!2135))))

(assert (=> d!967587 (= (noDuplicateTag!2013 thiss!18206 rules!2135 Nil!36987) e!2111190)))

(declare-fun b!3401023 () Bool)

(declare-fun e!2111191 () Bool)

(assert (=> b!3401023 (= e!2111190 e!2111191)))

(declare-fun res!1376159 () Bool)

(assert (=> b!3401023 (=> (not res!1376159) (not e!2111191))))

(declare-fun contains!6799 (List!37111 String!41484) Bool)

(assert (=> b!3401023 (= res!1376159 (not (contains!6799 Nil!36987 (tag!5984 (h!42404 rules!2135)))))))

(declare-fun b!3401024 () Bool)

(assert (=> b!3401024 (= e!2111191 (noDuplicateTag!2013 thiss!18206 (t!265785 rules!2135) (Cons!36987 (tag!5984 (h!42404 rules!2135)) Nil!36987)))))

(assert (= (and d!967587 (not res!1376158)) b!3401023))

(assert (= (and b!3401023 res!1376159) b!3401024))

(declare-fun m!3773863 () Bool)

(assert (=> b!3401023 m!3773863))

(declare-fun m!3773867 () Bool)

(assert (=> b!3401024 m!3773867))

(assert (=> b!3400226 d!967587))

(declare-fun d!967595 () Bool)

(declare-fun lt!1156607 () Bool)

(assert (=> d!967595 (= lt!1156607 (select (content!5120 tokens!494) (h!42405 tokens!494)))))

(declare-fun e!2111201 () Bool)

(assert (=> d!967595 (= lt!1156607 e!2111201)))

(declare-fun res!1376167 () Bool)

(assert (=> d!967595 (=> (not res!1376167) (not e!2111201))))

(assert (=> d!967595 (= res!1376167 ((_ is Cons!36985) tokens!494))))

(assert (=> d!967595 (= (contains!6795 tokens!494 (h!42405 tokens!494)) lt!1156607)))

(declare-fun b!3401035 () Bool)

(declare-fun e!2111200 () Bool)

(assert (=> b!3401035 (= e!2111201 e!2111200)))

(declare-fun res!1376168 () Bool)

(assert (=> b!3401035 (=> res!1376168 e!2111200)))

(assert (=> b!3401035 (= res!1376168 (= (h!42405 tokens!494) (h!42405 tokens!494)))))

(declare-fun b!3401036 () Bool)

(assert (=> b!3401036 (= e!2111200 (contains!6795 (t!265786 tokens!494) (h!42405 tokens!494)))))

(assert (= (and d!967595 res!1376167) b!3401035))

(assert (= (and b!3401035 (not res!1376168)) b!3401036))

(declare-fun m!3773889 () Bool)

(assert (=> d!967595 m!3773889))

(declare-fun m!3773891 () Bool)

(assert (=> d!967595 m!3773891))

(declare-fun m!3773893 () Bool)

(assert (=> b!3401036 m!3773893))

(assert (=> b!3400223 d!967595))

(declare-fun bs!556273 () Bool)

(declare-fun d!967605 () Bool)

(assert (= bs!556273 (and d!967605 d!967337)))

(declare-fun lambda!120998 () Int)

(assert (=> bs!556273 (= (and (= (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (toChars!7463 (transformation!5400 (h!42404 rules!2135)))) (= (toValue!7604 (transformation!5400 (rule!7962 separatorToken!241))) (toValue!7604 (transformation!5400 (h!42404 rules!2135))))) (= lambda!120998 lambda!120981))))

(assert (=> d!967605 true))

(assert (=> d!967605 (< (dynLambda!15442 order!19545 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241)))) (dynLambda!15446 order!19551 lambda!120998))))

(assert (=> d!967605 true))

(assert (=> d!967605 (< (dynLambda!15440 order!19541 (toValue!7604 (transformation!5400 (rule!7962 separatorToken!241)))) (dynLambda!15446 order!19551 lambda!120998))))

(assert (=> d!967605 (= (semiInverseModEq!2257 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (toValue!7604 (transformation!5400 (rule!7962 separatorToken!241)))) (Forall!1326 lambda!120998))))

(declare-fun bs!556274 () Bool)

(assert (= bs!556274 d!967605))

(declare-fun m!3773901 () Bool)

(assert (=> bs!556274 m!3773901))

(assert (=> d!967241 d!967605))

(declare-fun d!967611 () Bool)

(assert (=> d!967611 (= (isEmpty!21258 (originalCharacters!6114 (h!42405 tokens!494))) ((_ is Nil!36983) (originalCharacters!6114 (h!42405 tokens!494))))))

(assert (=> d!967243 d!967611))

(declare-fun d!967615 () Bool)

(declare-fun c!579770 () Bool)

(assert (=> d!967615 (= c!579770 ((_ is Nil!36983) lt!1156311))))

(declare-fun e!2111205 () (InoxSet C!20504))

(assert (=> d!967615 (= (content!5117 lt!1156311) e!2111205)))

(declare-fun b!3401043 () Bool)

(assert (=> b!3401043 (= e!2111205 ((as const (Array C!20504 Bool)) false))))

(declare-fun b!3401044 () Bool)

(assert (=> b!3401044 (= e!2111205 ((_ map or) (store ((as const (Array C!20504 Bool)) false) (h!42403 lt!1156311) true) (content!5117 (t!265784 lt!1156311))))))

(assert (= (and d!967615 c!579770) b!3401043))

(assert (= (and d!967615 (not c!579770)) b!3401044))

(declare-fun m!3773913 () Bool)

(assert (=> b!3401044 m!3773913))

(declare-fun m!3773915 () Bool)

(assert (=> b!3401044 m!3773915))

(assert (=> d!967245 d!967615))

(assert (=> d!967245 d!967497))

(declare-fun d!967617 () Bool)

(declare-fun c!579771 () Bool)

(assert (=> d!967617 (= c!579771 ((_ is Nil!36983) lt!1156146))))

(declare-fun e!2111206 () (InoxSet C!20504))

(assert (=> d!967617 (= (content!5117 lt!1156146) e!2111206)))

(declare-fun b!3401045 () Bool)

(assert (=> b!3401045 (= e!2111206 ((as const (Array C!20504 Bool)) false))))

(declare-fun b!3401046 () Bool)

(assert (=> b!3401046 (= e!2111206 ((_ map or) (store ((as const (Array C!20504 Bool)) false) (h!42403 lt!1156146) true) (content!5117 (t!265784 lt!1156146))))))

(assert (= (and d!967617 c!579771) b!3401045))

(assert (= (and d!967617 (not c!579771)) b!3401046))

(declare-fun m!3773925 () Bool)

(assert (=> b!3401046 m!3773925))

(declare-fun m!3773927 () Bool)

(assert (=> b!3401046 m!3773927))

(assert (=> d!967245 d!967617))

(declare-fun d!967619 () Bool)

(assert (=> d!967619 (= (isEmpty!21258 (originalCharacters!6114 separatorToken!241)) ((_ is Nil!36983) (originalCharacters!6114 separatorToken!241)))))

(assert (=> d!967219 d!967619))

(declare-fun d!967621 () Bool)

(declare-fun lt!1156615 () Bool)

(declare-fun content!5121 (List!37108) (InoxSet Rule!10600))

(assert (=> d!967621 (= lt!1156615 (select (content!5121 rules!2135) (rule!7962 (_1!21442 (get!11811 lt!1156307)))))))

(declare-fun e!2111221 () Bool)

(assert (=> d!967621 (= lt!1156615 e!2111221)))

(declare-fun res!1376180 () Bool)

(assert (=> d!967621 (=> (not res!1376180) (not e!2111221))))

(assert (=> d!967621 (= res!1376180 ((_ is Cons!36984) rules!2135))))

(assert (=> d!967621 (= (contains!6797 rules!2135 (rule!7962 (_1!21442 (get!11811 lt!1156307)))) lt!1156615)))

(declare-fun b!3401067 () Bool)

(declare-fun e!2111220 () Bool)

(assert (=> b!3401067 (= e!2111221 e!2111220)))

(declare-fun res!1376179 () Bool)

(assert (=> b!3401067 (=> res!1376179 e!2111220)))

(assert (=> b!3401067 (= res!1376179 (= (h!42404 rules!2135) (rule!7962 (_1!21442 (get!11811 lt!1156307)))))))

(declare-fun b!3401068 () Bool)

(assert (=> b!3401068 (= e!2111220 (contains!6797 (t!265785 rules!2135) (rule!7962 (_1!21442 (get!11811 lt!1156307)))))))

(assert (= (and d!967621 res!1376180) b!3401067))

(assert (= (and b!3401067 (not res!1376179)) b!3401068))

(declare-fun m!3773957 () Bool)

(assert (=> d!967621 m!3773957))

(declare-fun m!3773961 () Bool)

(assert (=> d!967621 m!3773961))

(declare-fun m!3773965 () Bool)

(assert (=> b!3401068 m!3773965))

(assert (=> b!3400388 d!967621))

(declare-fun d!967639 () Bool)

(assert (=> d!967639 (= (get!11811 lt!1156307) (v!36611 lt!1156307))))

(assert (=> b!3400388 d!967639))

(declare-fun d!967643 () Bool)

(declare-fun lt!1156618 () Int)

(assert (=> d!967643 (= lt!1156618 (size!28008 (list!13412 (_1!21443 lt!1156185))))))

(declare-fun size!28009 (Conc!11176) Int)

(assert (=> d!967643 (= lt!1156618 (size!28009 (c!579556 (_1!21443 lt!1156185))))))

(assert (=> d!967643 (= (size!28003 (_1!21443 lt!1156185)) lt!1156618)))

(declare-fun bs!556275 () Bool)

(assert (= bs!556275 d!967643))

(assert (=> bs!556275 m!3772335))

(assert (=> bs!556275 m!3772335))

(declare-fun m!3773967 () Bool)

(assert (=> bs!556275 m!3773967))

(declare-fun m!3773969 () Bool)

(assert (=> bs!556275 m!3773969))

(assert (=> d!967099 d!967643))

(declare-fun d!967645 () Bool)

(declare-fun e!2111328 () Bool)

(assert (=> d!967645 e!2111328))

(declare-fun res!1376263 () Bool)

(assert (=> d!967645 (=> (not res!1376263) (not e!2111328))))

(declare-fun lt!1156767 () tuple2!36618)

(declare-fun lexRec!739 (LexerInterface!4989 List!37108 BalanceConc!21964) tuple2!36618)

(assert (=> d!967645 (= res!1376263 (= (list!13412 (_1!21443 lt!1156767)) (list!13412 (_1!21443 (lexRec!739 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137))))))))

(declare-fun e!2111329 () tuple2!36618)

(assert (=> d!967645 (= lt!1156767 e!2111329)))

(declare-fun c!579836 () Bool)

(declare-datatypes ((tuple2!36630 0))(
  ( (tuple2!36631 (_1!21449 Token!10166) (_2!21449 BalanceConc!21964)) )
))
(declare-datatypes ((Option!7442 0))(
  ( (None!7441) (Some!7441 (v!36621 tuple2!36630)) )
))
(declare-fun lt!1156777 () Option!7442)

(assert (=> d!967645 (= c!579836 ((_ is Some!7441) lt!1156777))))

(declare-fun maxPrefixZipperSequenceV2!526 (LexerInterface!4989 List!37108 BalanceConc!21964 BalanceConc!21964) Option!7442)

(assert (=> d!967645 (= lt!1156777 (maxPrefixZipperSequenceV2!526 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137) (seqFromList!3853 lt!1156137)))))

(declare-fun lt!1156770 () Unit!52148)

(declare-fun lt!1156758 () Unit!52148)

(assert (=> d!967645 (= lt!1156770 lt!1156758)))

(declare-fun lt!1156757 () List!37107)

(declare-fun lt!1156756 () List!37107)

(declare-fun isSuffix!901 (List!37107 List!37107) Bool)

(assert (=> d!967645 (isSuffix!901 lt!1156757 (++!9069 lt!1156756 lt!1156757))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!586 (List!37107 List!37107) Unit!52148)

(assert (=> d!967645 (= lt!1156758 (lemmaConcatTwoListThenFSndIsSuffix!586 lt!1156756 lt!1156757))))

(assert (=> d!967645 (= lt!1156757 (list!13409 (seqFromList!3853 lt!1156137)))))

(assert (=> d!967645 (= lt!1156756 (list!13409 (BalanceConc!21965 Empty!11175)))))

(assert (=> d!967645 (= (lexTailRecV2!1030 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137) (BalanceConc!21965 Empty!11175) (seqFromList!3853 lt!1156137) (BalanceConc!21967 Empty!11176)) lt!1156767)))

(declare-fun lt!1156769 () Option!7442)

(declare-fun b!3401264 () Bool)

(declare-fun lt!1156762 () tuple2!36618)

(assert (=> b!3401264 (= lt!1156762 (lexRec!739 thiss!18206 rules!2135 (_2!21449 (v!36621 lt!1156769))))))

(declare-fun e!2111330 () tuple2!36618)

(declare-fun prepend!1245 (BalanceConc!21966 Token!10166) BalanceConc!21966)

(assert (=> b!3401264 (= e!2111330 (tuple2!36619 (prepend!1245 (_1!21443 lt!1156762) (_1!21449 (v!36621 lt!1156769))) (_2!21443 lt!1156762)))))

(declare-fun b!3401265 () Bool)

(assert (=> b!3401265 (= e!2111329 (tuple2!36619 (BalanceConc!21967 Empty!11176) (seqFromList!3853 lt!1156137)))))

(declare-fun lt!1156783 () Option!7442)

(declare-fun lt!1156773 () tuple2!36618)

(declare-fun b!3401266 () Bool)

(assert (=> b!3401266 (= lt!1156773 (lexRec!739 thiss!18206 rules!2135 (_2!21449 (v!36621 lt!1156783))))))

(declare-fun e!2111327 () tuple2!36618)

(assert (=> b!3401266 (= e!2111327 (tuple2!36619 (prepend!1245 (_1!21443 lt!1156773) (_1!21449 (v!36621 lt!1156783))) (_2!21443 lt!1156773)))))

(declare-fun b!3401267 () Bool)

(declare-fun lt!1156759 () BalanceConc!21964)

(declare-fun append!945 (BalanceConc!21966 Token!10166) BalanceConc!21966)

(assert (=> b!3401267 (= e!2111329 (lexTailRecV2!1030 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137) lt!1156759 (_2!21449 (v!36621 lt!1156777)) (append!945 (BalanceConc!21967 Empty!11176) (_1!21449 (v!36621 lt!1156777)))))))

(declare-fun lt!1156787 () tuple2!36618)

(assert (=> b!3401267 (= lt!1156787 (lexRec!739 thiss!18206 rules!2135 (_2!21449 (v!36621 lt!1156777))))))

(declare-fun lt!1156781 () List!37107)

(assert (=> b!3401267 (= lt!1156781 (list!13409 (BalanceConc!21965 Empty!11175)))))

(declare-fun lt!1156778 () List!37107)

(assert (=> b!3401267 (= lt!1156778 (list!13409 (charsOf!3414 (_1!21449 (v!36621 lt!1156777)))))))

(declare-fun lt!1156761 () List!37107)

(assert (=> b!3401267 (= lt!1156761 (list!13409 (_2!21449 (v!36621 lt!1156777))))))

(declare-fun lt!1156755 () Unit!52148)

(assert (=> b!3401267 (= lt!1156755 (lemmaConcatAssociativity!1904 lt!1156781 lt!1156778 lt!1156761))))

(assert (=> b!3401267 (= (++!9069 (++!9069 lt!1156781 lt!1156778) lt!1156761) (++!9069 lt!1156781 (++!9069 lt!1156778 lt!1156761)))))

(declare-fun lt!1156754 () Unit!52148)

(assert (=> b!3401267 (= lt!1156754 lt!1156755)))

(declare-fun maxPrefixZipperSequence!1132 (LexerInterface!4989 List!37108 BalanceConc!21964) Option!7442)

(assert (=> b!3401267 (= lt!1156769 (maxPrefixZipperSequence!1132 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137)))))

(declare-fun c!579838 () Bool)

(assert (=> b!3401267 (= c!579838 ((_ is Some!7441) lt!1156769))))

(assert (=> b!3401267 (= (lexRec!739 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137)) e!2111330)))

(declare-fun lt!1156782 () Unit!52148)

(declare-fun Unit!52152 () Unit!52148)

(assert (=> b!3401267 (= lt!1156782 Unit!52152)))

(declare-fun lt!1156760 () List!37109)

(assert (=> b!3401267 (= lt!1156760 (list!13412 (BalanceConc!21967 Empty!11176)))))

(declare-fun lt!1156764 () List!37109)

(assert (=> b!3401267 (= lt!1156764 (Cons!36985 (_1!21449 (v!36621 lt!1156777)) Nil!36985))))

(declare-fun lt!1156766 () List!37109)

(assert (=> b!3401267 (= lt!1156766 (list!13412 (_1!21443 lt!1156787)))))

(declare-fun lt!1156771 () Unit!52148)

(declare-fun lemmaConcatAssociativity!1906 (List!37109 List!37109 List!37109) Unit!52148)

(assert (=> b!3401267 (= lt!1156771 (lemmaConcatAssociativity!1906 lt!1156760 lt!1156764 lt!1156766))))

(declare-fun ++!9074 (List!37109 List!37109) List!37109)

(assert (=> b!3401267 (= (++!9074 (++!9074 lt!1156760 lt!1156764) lt!1156766) (++!9074 lt!1156760 (++!9074 lt!1156764 lt!1156766)))))

(declare-fun lt!1156765 () Unit!52148)

(assert (=> b!3401267 (= lt!1156765 lt!1156771)))

(declare-fun lt!1156786 () List!37107)

(assert (=> b!3401267 (= lt!1156786 (++!9069 (list!13409 (BalanceConc!21965 Empty!11175)) (list!13409 (charsOf!3414 (_1!21449 (v!36621 lt!1156777))))))))

(declare-fun lt!1156785 () List!37107)

(assert (=> b!3401267 (= lt!1156785 (list!13409 (_2!21449 (v!36621 lt!1156777))))))

(declare-fun lt!1156776 () List!37109)

(assert (=> b!3401267 (= lt!1156776 (list!13412 (append!945 (BalanceConc!21967 Empty!11176) (_1!21449 (v!36621 lt!1156777)))))))

(declare-fun lt!1156775 () Unit!52148)

(declare-fun lemmaLexThenLexPrefix!504 (LexerInterface!4989 List!37108 List!37107 List!37107 List!37109 List!37109 List!37107) Unit!52148)

(assert (=> b!3401267 (= lt!1156775 (lemmaLexThenLexPrefix!504 thiss!18206 rules!2135 lt!1156786 lt!1156785 lt!1156776 (list!13412 (_1!21443 lt!1156787)) (list!13409 (_2!21443 lt!1156787))))))

(assert (=> b!3401267 (= (lexList!1422 thiss!18206 rules!2135 lt!1156786) (tuple2!36623 lt!1156776 Nil!36983))))

(declare-fun lt!1156780 () Unit!52148)

(assert (=> b!3401267 (= lt!1156780 lt!1156775)))

(declare-fun lt!1156774 () BalanceConc!21964)

(assert (=> b!3401267 (= lt!1156774 (++!9071 (BalanceConc!21965 Empty!11175) (charsOf!3414 (_1!21449 (v!36621 lt!1156777)))))))

(assert (=> b!3401267 (= lt!1156783 (maxPrefixZipperSequence!1132 thiss!18206 rules!2135 lt!1156774))))

(declare-fun c!579837 () Bool)

(assert (=> b!3401267 (= c!579837 ((_ is Some!7441) lt!1156783))))

(assert (=> b!3401267 (= (lexRec!739 thiss!18206 rules!2135 (++!9071 (BalanceConc!21965 Empty!11175) (charsOf!3414 (_1!21449 (v!36621 lt!1156777))))) e!2111327)))

(declare-fun lt!1156768 () Unit!52148)

(declare-fun Unit!52153 () Unit!52148)

(assert (=> b!3401267 (= lt!1156768 Unit!52153)))

(assert (=> b!3401267 (= lt!1156759 (++!9071 (BalanceConc!21965 Empty!11175) (charsOf!3414 (_1!21449 (v!36621 lt!1156777)))))))

(declare-fun lt!1156763 () List!37107)

(assert (=> b!3401267 (= lt!1156763 (list!13409 lt!1156759))))

(declare-fun lt!1156772 () List!37107)

(assert (=> b!3401267 (= lt!1156772 (list!13409 (_2!21449 (v!36621 lt!1156777))))))

(declare-fun lt!1156779 () Unit!52148)

(assert (=> b!3401267 (= lt!1156779 (lemmaConcatTwoListThenFSndIsSuffix!586 lt!1156763 lt!1156772))))

(assert (=> b!3401267 (isSuffix!901 lt!1156772 (++!9069 lt!1156763 lt!1156772))))

(declare-fun lt!1156784 () Unit!52148)

(assert (=> b!3401267 (= lt!1156784 lt!1156779)))

(declare-fun b!3401268 () Bool)

(assert (=> b!3401268 (= e!2111327 (tuple2!36619 (BalanceConc!21967 Empty!11176) lt!1156774))))

(declare-fun b!3401269 () Bool)

(assert (=> b!3401269 (= e!2111330 (tuple2!36619 (BalanceConc!21967 Empty!11176) (seqFromList!3853 lt!1156137)))))

(declare-fun b!3401270 () Bool)

(assert (=> b!3401270 (= e!2111328 (= (list!13409 (_2!21443 lt!1156767)) (list!13409 (_2!21443 (lexRec!739 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137))))))))

(assert (= (and d!967645 c!579836) b!3401267))

(assert (= (and d!967645 (not c!579836)) b!3401265))

(assert (= (and b!3401267 c!579838) b!3401264))

(assert (= (and b!3401267 (not c!579838)) b!3401269))

(assert (= (and b!3401267 c!579837) b!3401266))

(assert (= (and b!3401267 (not c!579837)) b!3401268))

(assert (= (and d!967645 res!1376263) b!3401270))

(declare-fun m!3774233 () Bool)

(assert (=> b!3401266 m!3774233))

(declare-fun m!3774235 () Bool)

(assert (=> b!3401266 m!3774235))

(declare-fun m!3774237 () Bool)

(assert (=> b!3401264 m!3774237))

(declare-fun m!3774239 () Bool)

(assert (=> b!3401264 m!3774239))

(assert (=> d!967645 m!3772665))

(assert (=> d!967645 m!3772107))

(assert (=> d!967645 m!3772337))

(declare-fun m!3774241 () Bool)

(assert (=> d!967645 m!3774241))

(assert (=> d!967645 m!3774241))

(declare-fun m!3774243 () Bool)

(assert (=> d!967645 m!3774243))

(declare-fun m!3774245 () Bool)

(assert (=> d!967645 m!3774245))

(assert (=> d!967645 m!3772107))

(assert (=> d!967645 m!3772107))

(declare-fun m!3774247 () Bool)

(assert (=> d!967645 m!3774247))

(declare-fun m!3774249 () Bool)

(assert (=> d!967645 m!3774249))

(assert (=> d!967645 m!3772107))

(declare-fun m!3774251 () Bool)

(assert (=> d!967645 m!3774251))

(declare-fun m!3774253 () Bool)

(assert (=> d!967645 m!3774253))

(declare-fun m!3774255 () Bool)

(assert (=> b!3401270 m!3774255))

(assert (=> b!3401270 m!3772107))

(assert (=> b!3401270 m!3774251))

(declare-fun m!3774257 () Bool)

(assert (=> b!3401270 m!3774257))

(declare-fun m!3774259 () Bool)

(assert (=> b!3401267 m!3774259))

(assert (=> b!3401267 m!3772665))

(declare-fun m!3774261 () Bool)

(assert (=> b!3401267 m!3774261))

(declare-fun m!3774263 () Bool)

(assert (=> b!3401267 m!3774263))

(declare-fun m!3774265 () Bool)

(assert (=> b!3401267 m!3774265))

(assert (=> b!3401267 m!3772107))

(assert (=> b!3401267 m!3774251))

(declare-fun m!3774267 () Bool)

(assert (=> b!3401267 m!3774267))

(declare-fun m!3774269 () Bool)

(assert (=> b!3401267 m!3774269))

(declare-fun m!3774271 () Bool)

(assert (=> b!3401267 m!3774271))

(declare-fun m!3774273 () Bool)

(assert (=> b!3401267 m!3774273))

(declare-fun m!3774275 () Bool)

(assert (=> b!3401267 m!3774275))

(declare-fun m!3774277 () Bool)

(assert (=> b!3401267 m!3774277))

(declare-fun m!3774279 () Bool)

(assert (=> b!3401267 m!3774279))

(declare-fun m!3774281 () Bool)

(assert (=> b!3401267 m!3774281))

(declare-fun m!3774283 () Bool)

(assert (=> b!3401267 m!3774283))

(declare-fun m!3774285 () Bool)

(assert (=> b!3401267 m!3774285))

(assert (=> b!3401267 m!3774269))

(assert (=> b!3401267 m!3774283))

(declare-fun m!3774287 () Bool)

(assert (=> b!3401267 m!3774287))

(declare-fun m!3774289 () Bool)

(assert (=> b!3401267 m!3774289))

(assert (=> b!3401267 m!3772107))

(assert (=> b!3401267 m!3774279))

(declare-fun m!3774291 () Bool)

(assert (=> b!3401267 m!3774291))

(declare-fun m!3774293 () Bool)

(assert (=> b!3401267 m!3774293))

(declare-fun m!3774295 () Bool)

(assert (=> b!3401267 m!3774295))

(assert (=> b!3401267 m!3772665))

(declare-fun m!3774297 () Bool)

(assert (=> b!3401267 m!3774297))

(assert (=> b!3401267 m!3774279))

(assert (=> b!3401267 m!3774275))

(declare-fun m!3774299 () Bool)

(assert (=> b!3401267 m!3774299))

(declare-fun m!3774301 () Bool)

(assert (=> b!3401267 m!3774301))

(assert (=> b!3401267 m!3774273))

(declare-fun m!3774303 () Bool)

(assert (=> b!3401267 m!3774303))

(assert (=> b!3401267 m!3774271))

(declare-fun m!3774305 () Bool)

(assert (=> b!3401267 m!3774305))

(declare-fun m!3774307 () Bool)

(assert (=> b!3401267 m!3774307))

(assert (=> b!3401267 m!3774297))

(declare-fun m!3774309 () Bool)

(assert (=> b!3401267 m!3774309))

(assert (=> b!3401267 m!3774265))

(declare-fun m!3774311 () Bool)

(assert (=> b!3401267 m!3774311))

(declare-fun m!3774313 () Bool)

(assert (=> b!3401267 m!3774313))

(assert (=> b!3401267 m!3774269))

(assert (=> b!3401267 m!3774261))

(declare-fun m!3774315 () Bool)

(assert (=> b!3401267 m!3774315))

(assert (=> b!3401267 m!3772107))

(declare-fun m!3774317 () Bool)

(assert (=> b!3401267 m!3774317))

(assert (=> b!3401267 m!3774301))

(assert (=> b!3401267 m!3774289))

(declare-fun m!3774319 () Bool)

(assert (=> b!3401267 m!3774319))

(assert (=> d!967099 d!967645))

(declare-fun d!967747 () Bool)

(assert (=> d!967747 (= (list!13409 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494)))) (list!13413 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494))))))))

(declare-fun bs!556299 () Bool)

(assert (= bs!556299 d!967747))

(declare-fun m!3774321 () Bool)

(assert (=> bs!556299 m!3774321))

(assert (=> b!3400422 d!967747))

(declare-fun d!967749 () Bool)

(assert (=> d!967749 (= (list!13409 lt!1156283) (list!13413 (c!579555 lt!1156283)))))

(declare-fun bs!556300 () Bool)

(assert (= bs!556300 d!967749))

(declare-fun m!3774323 () Bool)

(assert (=> bs!556300 m!3774323))

(assert (=> d!967201 d!967749))

(declare-fun d!967751 () Bool)

(declare-fun c!579839 () Bool)

(assert (=> d!967751 (= c!579839 ((_ is Cons!36985) (list!13412 lt!1156135)))))

(declare-fun e!2111331 () List!37107)

(assert (=> d!967751 (= (printList!1537 thiss!18206 (list!13412 lt!1156135)) e!2111331)))

(declare-fun b!3401271 () Bool)

(assert (=> b!3401271 (= e!2111331 (++!9069 (list!13409 (charsOf!3414 (h!42405 (list!13412 lt!1156135)))) (printList!1537 thiss!18206 (t!265786 (list!13412 lt!1156135)))))))

(declare-fun b!3401272 () Bool)

(assert (=> b!3401272 (= e!2111331 Nil!36983)))

(assert (= (and d!967751 c!579839) b!3401271))

(assert (= (and d!967751 (not c!579839)) b!3401272))

(declare-fun m!3774325 () Bool)

(assert (=> b!3401271 m!3774325))

(assert (=> b!3401271 m!3774325))

(declare-fun m!3774327 () Bool)

(assert (=> b!3401271 m!3774327))

(declare-fun m!3774329 () Bool)

(assert (=> b!3401271 m!3774329))

(assert (=> b!3401271 m!3774327))

(assert (=> b!3401271 m!3774329))

(declare-fun m!3774331 () Bool)

(assert (=> b!3401271 m!3774331))

(assert (=> d!967201 d!967751))

(assert (=> d!967201 d!967557))

(assert (=> d!967201 d!967197))

(declare-fun d!967753 () Bool)

(declare-fun lt!1156788 () Int)

(assert (=> d!967753 (>= lt!1156788 0)))

(declare-fun e!2111332 () Int)

(assert (=> d!967753 (= lt!1156788 e!2111332)))

(declare-fun c!579840 () Bool)

(assert (=> d!967753 (= c!579840 ((_ is Nil!36983) lt!1156288))))

(assert (=> d!967753 (= (size!28005 lt!1156288) lt!1156788)))

(declare-fun b!3401273 () Bool)

(assert (=> b!3401273 (= e!2111332 0)))

(declare-fun b!3401274 () Bool)

(assert (=> b!3401274 (= e!2111332 (+ 1 (size!28005 (t!265784 lt!1156288))))))

(assert (= (and d!967753 c!579840) b!3401273))

(assert (= (and d!967753 (not c!579840)) b!3401274))

(declare-fun m!3774333 () Bool)

(assert (=> b!3401274 m!3774333))

(assert (=> b!3400321 d!967753))

(declare-fun d!967755 () Bool)

(declare-fun lt!1156789 () Int)

(assert (=> d!967755 (>= lt!1156789 0)))

(declare-fun e!2111333 () Int)

(assert (=> d!967755 (= lt!1156789 e!2111333)))

(declare-fun c!579841 () Bool)

(assert (=> d!967755 (= c!579841 ((_ is Nil!36983) lt!1156137))))

(assert (=> d!967755 (= (size!28005 lt!1156137) lt!1156789)))

(declare-fun b!3401275 () Bool)

(assert (=> b!3401275 (= e!2111333 0)))

(declare-fun b!3401276 () Bool)

(assert (=> b!3401276 (= e!2111333 (+ 1 (size!28005 (t!265784 lt!1156137))))))

(assert (= (and d!967755 c!579841) b!3401275))

(assert (= (and d!967755 (not c!579841)) b!3401276))

(assert (=> b!3401276 m!3773615))

(assert (=> b!3400321 d!967755))

(assert (=> b!3400321 d!967517))

(declare-fun b!3401279 () Bool)

(declare-fun res!1376265 () Bool)

(declare-fun e!2111335 () Bool)

(assert (=> b!3401279 (=> (not res!1376265) (not e!2111335))))

(declare-fun lt!1156790 () List!37107)

(assert (=> b!3401279 (= res!1376265 (= (size!28005 lt!1156790) (+ (size!28005 (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307))))) (size!28005 (_2!21442 (get!11811 lt!1156307))))))))

(declare-fun b!3401278 () Bool)

(declare-fun e!2111334 () List!37107)

(assert (=> b!3401278 (= e!2111334 (Cons!36983 (h!42403 (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307))))) (++!9069 (t!265784 (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307))))) (_2!21442 (get!11811 lt!1156307)))))))

(declare-fun b!3401280 () Bool)

(assert (=> b!3401280 (= e!2111335 (or (not (= (_2!21442 (get!11811 lt!1156307)) Nil!36983)) (= lt!1156790 (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307)))))))))

(declare-fun d!967757 () Bool)

(assert (=> d!967757 e!2111335))

(declare-fun res!1376264 () Bool)

(assert (=> d!967757 (=> (not res!1376264) (not e!2111335))))

(assert (=> d!967757 (= res!1376264 (= (content!5117 lt!1156790) ((_ map or) (content!5117 (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307))))) (content!5117 (_2!21442 (get!11811 lt!1156307))))))))

(assert (=> d!967757 (= lt!1156790 e!2111334)))

(declare-fun c!579842 () Bool)

(assert (=> d!967757 (= c!579842 ((_ is Nil!36983) (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307))))))))

(assert (=> d!967757 (= (++!9069 (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307)))) (_2!21442 (get!11811 lt!1156307))) lt!1156790)))

(declare-fun b!3401277 () Bool)

(assert (=> b!3401277 (= e!2111334 (_2!21442 (get!11811 lt!1156307)))))

(assert (= (and d!967757 c!579842) b!3401277))

(assert (= (and d!967757 (not c!579842)) b!3401278))

(assert (= (and d!967757 res!1376264) b!3401279))

(assert (= (and b!3401279 res!1376265) b!3401280))

(declare-fun m!3774335 () Bool)

(assert (=> b!3401279 m!3774335))

(assert (=> b!3401279 m!3772783))

(declare-fun m!3774337 () Bool)

(assert (=> b!3401279 m!3774337))

(assert (=> b!3401279 m!3772801))

(declare-fun m!3774339 () Bool)

(assert (=> b!3401278 m!3774339))

(declare-fun m!3774341 () Bool)

(assert (=> d!967757 m!3774341))

(assert (=> d!967757 m!3772783))

(declare-fun m!3774343 () Bool)

(assert (=> d!967757 m!3774343))

(declare-fun m!3774345 () Bool)

(assert (=> d!967757 m!3774345))

(assert (=> b!3400395 d!967757))

(declare-fun d!967759 () Bool)

(assert (=> d!967759 (= (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307)))) (list!13413 (c!579555 (charsOf!3414 (_1!21442 (get!11811 lt!1156307))))))))

(declare-fun bs!556301 () Bool)

(assert (= bs!556301 d!967759))

(declare-fun m!3774347 () Bool)

(assert (=> bs!556301 m!3774347))

(assert (=> b!3400395 d!967759))

(declare-fun d!967761 () Bool)

(declare-fun lt!1156791 () BalanceConc!21964)

(assert (=> d!967761 (= (list!13409 lt!1156791) (originalCharacters!6114 (_1!21442 (get!11811 lt!1156307))))))

(assert (=> d!967761 (= lt!1156791 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307))))) (value!174360 (_1!21442 (get!11811 lt!1156307)))))))

(assert (=> d!967761 (= (charsOf!3414 (_1!21442 (get!11811 lt!1156307))) lt!1156791)))

(declare-fun b_lambda!97055 () Bool)

(assert (=> (not b_lambda!97055) (not d!967761)))

(declare-fun t!265944 () Bool)

(declare-fun tb!182341 () Bool)

(assert (=> (and b!3399970 (= (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toChars!7463 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))) t!265944) tb!182341))

(declare-fun b!3401281 () Bool)

(declare-fun e!2111336 () Bool)

(declare-fun tp!1061231 () Bool)

(assert (=> b!3401281 (= e!2111336 (and (inv!50092 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307))))) (value!174360 (_1!21442 (get!11811 lt!1156307)))))) tp!1061231))))

(declare-fun result!225996 () Bool)

(assert (=> tb!182341 (= result!225996 (and (inv!50093 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307))))) (value!174360 (_1!21442 (get!11811 lt!1156307))))) e!2111336))))

(assert (= tb!182341 b!3401281))

(declare-fun m!3774349 () Bool)

(assert (=> b!3401281 m!3774349))

(declare-fun m!3774351 () Bool)

(assert (=> tb!182341 m!3774351))

(assert (=> d!967761 t!265944))

(declare-fun b_and!237387 () Bool)

(assert (= b_and!237347 (and (=> t!265944 result!225996) b_and!237387)))

(declare-fun tb!182343 () Bool)

(declare-fun t!265946 () Bool)

(assert (=> (and b!3399977 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toChars!7463 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))) t!265946) tb!182343))

(declare-fun result!225998 () Bool)

(assert (= result!225998 result!225996))

(assert (=> d!967761 t!265946))

(declare-fun b_and!237389 () Bool)

(assert (= b_and!237355 (and (=> t!265946 result!225998) b_and!237389)))

(declare-fun t!265948 () Bool)

(declare-fun tb!182345 () Bool)

(assert (=> (and b!3400466 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 rules!2135)))) (toChars!7463 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))) t!265948) tb!182345))

(declare-fun result!226000 () Bool)

(assert (= result!226000 result!225996))

(assert (=> d!967761 t!265948))

(declare-fun b_and!237391 () Bool)

(assert (= b_and!237351 (and (=> t!265948 result!226000) b_and!237391)))

(declare-fun t!265950 () Bool)

(declare-fun tb!182347 () Bool)

(assert (=> (and b!3399996 (= (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (toChars!7463 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))) t!265950) tb!182347))

(declare-fun result!226002 () Bool)

(assert (= result!226002 result!225996))

(assert (=> d!967761 t!265950))

(declare-fun b_and!237393 () Bool)

(assert (= b_and!237353 (and (=> t!265950 result!226002) b_and!237393)))

(declare-fun t!265952 () Bool)

(declare-fun tb!182349 () Bool)

(assert (=> (and b!3400480 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (toChars!7463 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))) t!265952) tb!182349))

(declare-fun result!226004 () Bool)

(assert (= result!226004 result!225996))

(assert (=> d!967761 t!265952))

(declare-fun b_and!237395 () Bool)

(assert (= b_and!237349 (and (=> t!265952 result!226004) b_and!237395)))

(declare-fun m!3774353 () Bool)

(assert (=> d!967761 m!3774353))

(declare-fun m!3774355 () Bool)

(assert (=> d!967761 m!3774355))

(assert (=> b!3400395 d!967761))

(assert (=> b!3400395 d!967639))

(declare-fun d!967763 () Bool)

(declare-fun res!1376266 () Bool)

(declare-fun e!2111337 () Bool)

(assert (=> d!967763 (=> res!1376266 e!2111337)))

(assert (=> d!967763 (= res!1376266 (not ((_ is Cons!36984) (t!265785 rules!2135))))))

(assert (=> d!967763 (= (sepAndNonSepRulesDisjointChars!1594 rules!2135 (t!265785 rules!2135)) e!2111337)))

(declare-fun b!3401282 () Bool)

(declare-fun e!2111338 () Bool)

(assert (=> b!3401282 (= e!2111337 e!2111338)))

(declare-fun res!1376267 () Bool)

(assert (=> b!3401282 (=> (not res!1376267) (not e!2111338))))

(assert (=> b!3401282 (= res!1376267 (ruleDisjointCharsFromAllFromOtherType!693 (h!42404 (t!265785 rules!2135)) rules!2135))))

(declare-fun b!3401283 () Bool)

(assert (=> b!3401283 (= e!2111338 (sepAndNonSepRulesDisjointChars!1594 rules!2135 (t!265785 (t!265785 rules!2135))))))

(assert (= (and d!967763 (not res!1376266)) b!3401282))

(assert (= (and b!3401282 res!1376267) b!3401283))

(declare-fun m!3774357 () Bool)

(assert (=> b!3401282 m!3774357))

(declare-fun m!3774359 () Bool)

(assert (=> b!3401283 m!3774359))

(assert (=> b!3400420 d!967763))

(declare-fun d!967765 () Bool)

(assert (=> d!967765 (= (inv!50093 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494)))) (isBalanced!3379 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494))))))))

(declare-fun bs!556302 () Bool)

(assert (= bs!556302 d!967765))

(declare-fun m!3774361 () Bool)

(assert (=> bs!556302 m!3774361))

(assert (=> tb!182241 d!967765))

(declare-fun b!3401312 () Bool)

(declare-fun res!1376289 () Bool)

(declare-fun e!2111357 () Bool)

(assert (=> b!3401312 (=> res!1376289 e!2111357)))

(declare-fun tail!5381 (List!37107) List!37107)

(assert (=> b!3401312 (= res!1376289 (not (isEmpty!21258 (tail!5381 (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307))))))))))

(declare-fun b!3401313 () Bool)

(declare-fun res!1376288 () Bool)

(declare-fun e!2111355 () Bool)

(assert (=> b!3401313 (=> (not res!1376288) (not e!2111355))))

(assert (=> b!3401313 (= res!1376288 (isEmpty!21258 (tail!5381 (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307)))))))))

(declare-fun b!3401314 () Bool)

(declare-fun head!7259 (List!37107) C!20504)

(assert (=> b!3401314 (= e!2111355 (= (head!7259 (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307))))) (c!579554 (regex!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))))))

(declare-fun b!3401315 () Bool)

(declare-fun e!2111356 () Bool)

(declare-fun lt!1156794 () Bool)

(declare-fun call!245859 () Bool)

(assert (=> b!3401315 (= e!2111356 (= lt!1156794 call!245859))))

(declare-fun b!3401316 () Bool)

(declare-fun res!1376285 () Bool)

(declare-fun e!2111359 () Bool)

(assert (=> b!3401316 (=> res!1376285 e!2111359)))

(assert (=> b!3401316 (= res!1376285 (not ((_ is ElementMatch!10159) (regex!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))))))

(declare-fun e!2111353 () Bool)

(assert (=> b!3401316 (= e!2111353 e!2111359)))

(declare-fun b!3401317 () Bool)

(declare-fun e!2111358 () Bool)

(assert (=> b!3401317 (= e!2111359 e!2111358)))

(declare-fun res!1376286 () Bool)

(assert (=> b!3401317 (=> (not res!1376286) (not e!2111358))))

(assert (=> b!3401317 (= res!1376286 (not lt!1156794))))

(declare-fun b!3401318 () Bool)

(assert (=> b!3401318 (= e!2111358 e!2111357)))

(declare-fun res!1376291 () Bool)

(assert (=> b!3401318 (=> res!1376291 e!2111357)))

(assert (=> b!3401318 (= res!1376291 call!245859)))

(declare-fun d!967767 () Bool)

(assert (=> d!967767 e!2111356))

(declare-fun c!579850 () Bool)

(assert (=> d!967767 (= c!579850 ((_ is EmptyExpr!10159) (regex!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307))))))))

(declare-fun e!2111354 () Bool)

(assert (=> d!967767 (= lt!1156794 e!2111354)))

(declare-fun c!579851 () Bool)

(assert (=> d!967767 (= c!579851 (isEmpty!21258 (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307))))))))

(declare-fun validRegex!4617 (Regex!10159) Bool)

(assert (=> d!967767 (validRegex!4617 (regex!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))))

(assert (=> d!967767 (= (matchR!4743 (regex!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))) (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307))))) lt!1156794)))

(declare-fun b!3401319 () Bool)

(declare-fun derivativeStep!3014 (Regex!10159 C!20504) Regex!10159)

(assert (=> b!3401319 (= e!2111354 (matchR!4743 (derivativeStep!3014 (regex!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))) (head!7259 (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307)))))) (tail!5381 (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307)))))))))

(declare-fun b!3401320 () Bool)

(assert (=> b!3401320 (= e!2111353 (not lt!1156794))))

(declare-fun b!3401321 () Bool)

(assert (=> b!3401321 (= e!2111356 e!2111353)))

(declare-fun c!579849 () Bool)

(assert (=> b!3401321 (= c!579849 ((_ is EmptyLang!10159) (regex!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307))))))))

(declare-fun b!3401322 () Bool)

(assert (=> b!3401322 (= e!2111357 (not (= (head!7259 (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307))))) (c!579554 (regex!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307))))))))))

(declare-fun bm!245854 () Bool)

(assert (=> bm!245854 (= call!245859 (isEmpty!21258 (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156307))))))))

(declare-fun b!3401323 () Bool)

(declare-fun res!1376287 () Bool)

(assert (=> b!3401323 (=> (not res!1376287) (not e!2111355))))

(assert (=> b!3401323 (= res!1376287 (not call!245859))))

(declare-fun b!3401324 () Bool)

(declare-fun res!1376290 () Bool)

(assert (=> b!3401324 (=> res!1376290 e!2111359)))

(assert (=> b!3401324 (= res!1376290 e!2111355)))

(declare-fun res!1376284 () Bool)

(assert (=> b!3401324 (=> (not res!1376284) (not e!2111355))))

(assert (=> b!3401324 (= res!1376284 lt!1156794)))

(declare-fun b!3401325 () Bool)

(declare-fun nullable!3461 (Regex!10159) Bool)

(assert (=> b!3401325 (= e!2111354 (nullable!3461 (regex!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307))))))))

(assert (= (and d!967767 c!579851) b!3401325))

(assert (= (and d!967767 (not c!579851)) b!3401319))

(assert (= (and d!967767 c!579850) b!3401315))

(assert (= (and d!967767 (not c!579850)) b!3401321))

(assert (= (and b!3401321 c!579849) b!3401320))

(assert (= (and b!3401321 (not c!579849)) b!3401316))

(assert (= (and b!3401316 (not res!1376285)) b!3401324))

(assert (= (and b!3401324 res!1376284) b!3401323))

(assert (= (and b!3401323 res!1376287) b!3401313))

(assert (= (and b!3401313 res!1376288) b!3401314))

(assert (= (and b!3401324 (not res!1376290)) b!3401317))

(assert (= (and b!3401317 res!1376286) b!3401318))

(assert (= (and b!3401318 (not res!1376291)) b!3401312))

(assert (= (and b!3401312 (not res!1376289)) b!3401322))

(assert (= (or b!3401315 b!3401318 b!3401323) bm!245854))

(assert (=> bm!245854 m!3772783))

(declare-fun m!3774363 () Bool)

(assert (=> bm!245854 m!3774363))

(declare-fun m!3774365 () Bool)

(assert (=> b!3401325 m!3774365))

(assert (=> b!3401314 m!3772783))

(declare-fun m!3774367 () Bool)

(assert (=> b!3401314 m!3774367))

(assert (=> d!967767 m!3772783))

(assert (=> d!967767 m!3774363))

(declare-fun m!3774369 () Bool)

(assert (=> d!967767 m!3774369))

(assert (=> b!3401313 m!3772783))

(declare-fun m!3774371 () Bool)

(assert (=> b!3401313 m!3774371))

(assert (=> b!3401313 m!3774371))

(declare-fun m!3774373 () Bool)

(assert (=> b!3401313 m!3774373))

(assert (=> b!3401312 m!3772783))

(assert (=> b!3401312 m!3774371))

(assert (=> b!3401312 m!3774371))

(assert (=> b!3401312 m!3774373))

(assert (=> b!3401322 m!3772783))

(assert (=> b!3401322 m!3774367))

(assert (=> b!3401319 m!3772783))

(assert (=> b!3401319 m!3774367))

(assert (=> b!3401319 m!3774367))

(declare-fun m!3774375 () Bool)

(assert (=> b!3401319 m!3774375))

(assert (=> b!3401319 m!3772783))

(assert (=> b!3401319 m!3774371))

(assert (=> b!3401319 m!3774375))

(assert (=> b!3401319 m!3774371))

(declare-fun m!3774377 () Bool)

(assert (=> b!3401319 m!3774377))

(assert (=> b!3400392 d!967767))

(assert (=> b!3400392 d!967639))

(assert (=> b!3400392 d!967759))

(assert (=> b!3400392 d!967761))

(declare-fun d!967769 () Bool)

(declare-fun lt!1156795 () Int)

(assert (=> d!967769 (>= lt!1156795 0)))

(declare-fun e!2111360 () Int)

(assert (=> d!967769 (= lt!1156795 e!2111360)))

(declare-fun c!579852 () Bool)

(assert (=> d!967769 (= c!579852 ((_ is Nil!36983) lt!1156311))))

(assert (=> d!967769 (= (size!28005 lt!1156311) lt!1156795)))

(declare-fun b!3401326 () Bool)

(assert (=> b!3401326 (= e!2111360 0)))

(declare-fun b!3401327 () Bool)

(assert (=> b!3401327 (= e!2111360 (+ 1 (size!28005 (t!265784 lt!1156311))))))

(assert (= (and d!967769 c!579852) b!3401326))

(assert (= (and d!967769 (not c!579852)) b!3401327))

(declare-fun m!3774379 () Bool)

(assert (=> b!3401327 m!3774379))

(assert (=> b!3400426 d!967769))

(assert (=> b!3400426 d!967755))

(declare-fun d!967771 () Bool)

(declare-fun lt!1156796 () Int)

(assert (=> d!967771 (>= lt!1156796 0)))

(declare-fun e!2111361 () Int)

(assert (=> d!967771 (= lt!1156796 e!2111361)))

(declare-fun c!579853 () Bool)

(assert (=> d!967771 (= c!579853 ((_ is Nil!36983) lt!1156146))))

(assert (=> d!967771 (= (size!28005 lt!1156146) lt!1156796)))

(declare-fun b!3401328 () Bool)

(assert (=> b!3401328 (= e!2111361 0)))

(declare-fun b!3401329 () Bool)

(assert (=> b!3401329 (= e!2111361 (+ 1 (size!28005 (t!265784 lt!1156146))))))

(assert (= (and d!967771 c!579853) b!3401328))

(assert (= (and d!967771 (not c!579853)) b!3401329))

(declare-fun m!3774381 () Bool)

(assert (=> b!3401329 m!3774381))

(assert (=> b!3400426 d!967771))

(declare-fun d!967773 () Bool)

(declare-fun lt!1156797 () Token!10166)

(assert (=> d!967773 (= lt!1156797 (apply!8634 (list!13412 (_1!21443 lt!1156178)) 0))))

(assert (=> d!967773 (= lt!1156797 (apply!8636 (c!579556 (_1!21443 lt!1156178)) 0))))

(declare-fun e!2111362 () Bool)

(assert (=> d!967773 e!2111362))

(declare-fun res!1376292 () Bool)

(assert (=> d!967773 (=> (not res!1376292) (not e!2111362))))

(assert (=> d!967773 (= res!1376292 (<= 0 0))))

(assert (=> d!967773 (= (apply!8632 (_1!21443 lt!1156178) 0) lt!1156797)))

(declare-fun b!3401330 () Bool)

(assert (=> b!3401330 (= e!2111362 (< 0 (size!28003 (_1!21443 lt!1156178))))))

(assert (= (and d!967773 res!1376292) b!3401330))

(declare-fun m!3774383 () Bool)

(assert (=> d!967773 m!3774383))

(assert (=> d!967773 m!3774383))

(declare-fun m!3774385 () Bool)

(assert (=> d!967773 m!3774385))

(declare-fun m!3774387 () Bool)

(assert (=> d!967773 m!3774387))

(assert (=> b!3401330 m!3772317))

(assert (=> b!3400098 d!967773))

(declare-fun d!967775 () Bool)

(declare-fun lt!1156800 () Int)

(assert (=> d!967775 (= lt!1156800 (size!28005 (list!13409 (_2!21443 lt!1156185))))))

(declare-fun size!28010 (Conc!11175) Int)

(assert (=> d!967775 (= lt!1156800 (size!28010 (c!579555 (_2!21443 lt!1156185))))))

(assert (=> d!967775 (= (size!28004 (_2!21443 lt!1156185)) lt!1156800)))

(declare-fun bs!556303 () Bool)

(assert (= bs!556303 d!967775))

(assert (=> bs!556303 m!3772341))

(assert (=> bs!556303 m!3772341))

(declare-fun m!3774389 () Bool)

(assert (=> bs!556303 m!3774389))

(declare-fun m!3774391 () Bool)

(assert (=> bs!556303 m!3774391))

(assert (=> b!3400114 d!967775))

(declare-fun d!967777 () Bool)

(declare-fun lt!1156801 () Int)

(assert (=> d!967777 (= lt!1156801 (size!28005 (list!13409 (seqFromList!3853 lt!1156137))))))

(assert (=> d!967777 (= lt!1156801 (size!28010 (c!579555 (seqFromList!3853 lt!1156137))))))

(assert (=> d!967777 (= (size!28004 (seqFromList!3853 lt!1156137)) lt!1156801)))

(declare-fun bs!556304 () Bool)

(assert (= bs!556304 d!967777))

(assert (=> bs!556304 m!3772107))

(assert (=> bs!556304 m!3772337))

(assert (=> bs!556304 m!3772337))

(assert (=> bs!556304 m!3773171))

(declare-fun m!3774393 () Bool)

(assert (=> bs!556304 m!3774393))

(assert (=> b!3400114 d!967777))

(declare-fun b!3401340 () Bool)

(declare-fun e!2111367 () List!37107)

(declare-fun e!2111368 () List!37107)

(assert (=> b!3401340 (= e!2111367 e!2111368)))

(declare-fun c!579859 () Bool)

(assert (=> b!3401340 (= c!579859 ((_ is Leaf!17486) (c!579555 (charsOf!3414 (h!42405 tokens!494)))))))

(declare-fun b!3401341 () Bool)

(declare-fun list!13417 (IArray!22355) List!37107)

(assert (=> b!3401341 (= e!2111368 (list!13417 (xs!14333 (c!579555 (charsOf!3414 (h!42405 tokens!494))))))))

(declare-fun b!3401339 () Bool)

(assert (=> b!3401339 (= e!2111367 Nil!36983)))

(declare-fun d!967779 () Bool)

(declare-fun c!579858 () Bool)

(assert (=> d!967779 (= c!579858 ((_ is Empty!11175) (c!579555 (charsOf!3414 (h!42405 tokens!494)))))))

(assert (=> d!967779 (= (list!13413 (c!579555 (charsOf!3414 (h!42405 tokens!494)))) e!2111367)))

(declare-fun b!3401342 () Bool)

(assert (=> b!3401342 (= e!2111368 (++!9069 (list!13413 (left!28833 (c!579555 (charsOf!3414 (h!42405 tokens!494))))) (list!13413 (right!29163 (c!579555 (charsOf!3414 (h!42405 tokens!494)))))))))

(assert (= (and d!967779 c!579858) b!3401339))

(assert (= (and d!967779 (not c!579858)) b!3401340))

(assert (= (and b!3401340 c!579859) b!3401341))

(assert (= (and b!3401340 (not c!579859)) b!3401342))

(declare-fun m!3774395 () Bool)

(assert (=> b!3401341 m!3774395))

(declare-fun m!3774397 () Bool)

(assert (=> b!3401342 m!3774397))

(declare-fun m!3774399 () Bool)

(assert (=> b!3401342 m!3774399))

(assert (=> b!3401342 m!3774397))

(assert (=> b!3401342 m!3774399))

(declare-fun m!3774401 () Bool)

(assert (=> b!3401342 m!3774401))

(assert (=> d!967221 d!967779))

(declare-fun d!967781 () Bool)

(declare-fun charsToBigInt!0 (List!37106 Int) Int)

(assert (=> d!967781 (= (inv!15 (value!174360 separatorToken!241)) (= (charsToBigInt!0 (text!39859 (value!174360 separatorToken!241)) 0) (value!174355 (value!174360 separatorToken!241))))))

(declare-fun bs!556309 () Bool)

(assert (= bs!556309 d!967781))

(declare-fun m!3774405 () Bool)

(assert (=> bs!556309 m!3774405))

(assert (=> b!3400060 d!967781))

(declare-fun b!3401345 () Bool)

(declare-fun res!1376294 () Bool)

(declare-fun e!2111370 () Bool)

(assert (=> b!3401345 (=> (not res!1376294) (not e!2111370))))

(declare-fun lt!1156802 () List!37107)

(assert (=> b!3401345 (= res!1376294 (= (size!28005 lt!1156802) (+ (size!28005 (t!265784 lt!1156140)) (size!28005 lt!1156144))))))

(declare-fun b!3401344 () Bool)

(declare-fun e!2111369 () List!37107)

(assert (=> b!3401344 (= e!2111369 (Cons!36983 (h!42403 (t!265784 lt!1156140)) (++!9069 (t!265784 (t!265784 lt!1156140)) lt!1156144)))))

(declare-fun b!3401346 () Bool)

(assert (=> b!3401346 (= e!2111370 (or (not (= lt!1156144 Nil!36983)) (= lt!1156802 (t!265784 lt!1156140))))))

(declare-fun d!967785 () Bool)

(assert (=> d!967785 e!2111370))

(declare-fun res!1376293 () Bool)

(assert (=> d!967785 (=> (not res!1376293) (not e!2111370))))

(assert (=> d!967785 (= res!1376293 (= (content!5117 lt!1156802) ((_ map or) (content!5117 (t!265784 lt!1156140)) (content!5117 lt!1156144))))))

(assert (=> d!967785 (= lt!1156802 e!2111369)))

(declare-fun c!579860 () Bool)

(assert (=> d!967785 (= c!579860 ((_ is Nil!36983) (t!265784 lt!1156140)))))

(assert (=> d!967785 (= (++!9069 (t!265784 lt!1156140) lt!1156144) lt!1156802)))

(declare-fun b!3401343 () Bool)

(assert (=> b!3401343 (= e!2111369 lt!1156144)))

(assert (= (and d!967785 c!579860) b!3401343))

(assert (= (and d!967785 (not c!579860)) b!3401344))

(assert (= (and d!967785 res!1376293) b!3401345))

(assert (= (and b!3401345 res!1376294) b!3401346))

(declare-fun m!3774407 () Bool)

(assert (=> b!3401345 m!3774407))

(assert (=> b!3401345 m!3773611))

(assert (=> b!3401345 m!3772561))

(declare-fun m!3774409 () Bool)

(assert (=> b!3401344 m!3774409))

(declare-fun m!3774411 () Bool)

(assert (=> d!967785 m!3774411))

(assert (=> d!967785 m!3773463))

(assert (=> d!967785 m!3772569))

(assert (=> b!3400245 d!967785))

(declare-fun d!967787 () Bool)

(assert (=> d!967787 (= (list!13409 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241))) (list!13413 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241)))))))

(declare-fun bs!556310 () Bool)

(assert (= bs!556310 d!967787))

(declare-fun m!3774413 () Bool)

(assert (=> bs!556310 m!3774413))

(assert (=> b!3400327 d!967787))

(declare-fun d!967789 () Bool)

(declare-fun lt!1156803 () BalanceConc!21964)

(assert (=> d!967789 (= (list!13409 lt!1156803) (originalCharacters!6114 (h!42405 (t!265786 (t!265786 tokens!494)))))))

(assert (=> d!967789 (= lt!1156803 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))) (value!174360 (h!42405 (t!265786 (t!265786 tokens!494))))))))

(assert (=> d!967789 (= (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494)))) lt!1156803)))

(declare-fun b_lambda!97057 () Bool)

(assert (=> (not b_lambda!97057) (not d!967789)))

(declare-fun t!265956 () Bool)

(declare-fun tb!182351 () Bool)

(assert (=> (and b!3400480 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494))))))) t!265956) tb!182351))

(declare-fun b!3401358 () Bool)

(declare-fun e!2111378 () Bool)

(declare-fun tp!1061238 () Bool)

(assert (=> b!3401358 (= e!2111378 (and (inv!50092 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))) (value!174360 (h!42405 (t!265786 (t!265786 tokens!494))))))) tp!1061238))))

(declare-fun result!226008 () Bool)

(assert (=> tb!182351 (= result!226008 (and (inv!50093 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))) (value!174360 (h!42405 (t!265786 (t!265786 tokens!494)))))) e!2111378))))

(assert (= tb!182351 b!3401358))

(declare-fun m!3774415 () Bool)

(assert (=> b!3401358 m!3774415))

(declare-fun m!3774417 () Bool)

(assert (=> tb!182351 m!3774417))

(assert (=> d!967789 t!265956))

(declare-fun b_and!237397 () Bool)

(assert (= b_and!237395 (and (=> t!265956 result!226008) b_and!237397)))

(declare-fun tb!182353 () Bool)

(declare-fun t!265958 () Bool)

(assert (=> (and b!3399970 (= (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494))))))) t!265958) tb!182353))

(declare-fun result!226010 () Bool)

(assert (= result!226010 result!226008))

(assert (=> d!967789 t!265958))

(declare-fun b_and!237399 () Bool)

(assert (= b_and!237387 (and (=> t!265958 result!226010) b_and!237399)))

(declare-fun t!265960 () Bool)

(declare-fun tb!182355 () Bool)

(assert (=> (and b!3399996 (= (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494))))))) t!265960) tb!182355))

(declare-fun result!226012 () Bool)

(assert (= result!226012 result!226008))

(assert (=> d!967789 t!265960))

(declare-fun b_and!237401 () Bool)

(assert (= b_and!237393 (and (=> t!265960 result!226012) b_and!237401)))

(declare-fun t!265962 () Bool)

(declare-fun tb!182357 () Bool)

(assert (=> (and b!3400466 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 rules!2135)))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494))))))) t!265962) tb!182357))

(declare-fun result!226014 () Bool)

(assert (= result!226014 result!226008))

(assert (=> d!967789 t!265962))

(declare-fun b_and!237403 () Bool)

(assert (= b_and!237391 (and (=> t!265962 result!226014) b_and!237403)))

(declare-fun t!265964 () Bool)

(declare-fun tb!182359 () Bool)

(assert (=> (and b!3399977 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494))))))) t!265964) tb!182359))

(declare-fun result!226016 () Bool)

(assert (= result!226016 result!226008))

(assert (=> d!967789 t!265964))

(declare-fun b_and!237405 () Bool)

(assert (= b_and!237389 (and (=> t!265964 result!226016) b_and!237405)))

(declare-fun m!3774419 () Bool)

(assert (=> d!967789 m!3774419))

(declare-fun m!3774421 () Bool)

(assert (=> d!967789 m!3774421))

(assert (=> b!3400279 d!967789))

(declare-fun d!967791 () Bool)

(assert (=> d!967791 (= (list!13409 (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494))))) (list!13413 (c!579555 (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494)))))))))

(declare-fun bs!556311 () Bool)

(assert (= bs!556311 d!967791))

(declare-fun m!3774423 () Bool)

(assert (=> bs!556311 m!3774423))

(assert (=> b!3400279 d!967791))

(declare-fun d!967793 () Bool)

(declare-fun c!579861 () Bool)

(assert (=> d!967793 (= c!579861 ((_ is Cons!36985) (t!265786 (t!265786 (t!265786 tokens!494)))))))

(declare-fun e!2111380 () List!37107)

(assert (=> d!967793 (= (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 (t!265786 tokens!494))) separatorToken!241) e!2111380)))

(declare-fun b!3401359 () Bool)

(assert (=> b!3401359 (= e!2111380 (++!9069 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 (t!265786 (t!265786 tokens!494)))))) (list!13409 (charsOf!3414 separatorToken!241))) (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 (t!265786 (t!265786 tokens!494)))) separatorToken!241)))))

(declare-fun b!3401361 () Bool)

(assert (=> b!3401361 (= e!2111380 Nil!36983)))

(assert (= (and d!967793 c!579861) b!3401359))

(assert (= (and d!967793 (not c!579861)) b!3401361))

(assert (=> b!3401359 m!3772133))

(declare-fun m!3774431 () Bool)

(assert (=> b!3401359 m!3774431))

(declare-fun m!3774433 () Bool)

(assert (=> b!3401359 m!3774433))

(assert (=> b!3401359 m!3774431))

(declare-fun m!3774435 () Bool)

(assert (=> b!3401359 m!3774435))

(assert (=> b!3401359 m!3772133))

(assert (=> b!3401359 m!3772143))

(declare-fun m!3774437 () Bool)

(assert (=> b!3401359 m!3774437))

(assert (=> b!3401359 m!3774437))

(declare-fun m!3774439 () Bool)

(assert (=> b!3401359 m!3774439))

(assert (=> b!3401359 m!3774439))

(assert (=> b!3401359 m!3772143))

(assert (=> b!3401359 m!3774433))

(assert (=> b!3400279 d!967793))

(declare-fun b!3401378 () Bool)

(declare-fun res!1376296 () Bool)

(declare-fun e!2111386 () Bool)

(assert (=> b!3401378 (=> (not res!1376296) (not e!2111386))))

(declare-fun lt!1156804 () List!37107)

(assert (=> b!3401378 (= res!1376296 (= (size!28005 lt!1156804) (+ (size!28005 (list!13409 (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494)))))) (size!28005 (list!13409 (charsOf!3414 separatorToken!241))))))))

(declare-fun b!3401377 () Bool)

(declare-fun e!2111385 () List!37107)

(assert (=> b!3401377 (= e!2111385 (Cons!36983 (h!42403 (list!13409 (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494)))))) (++!9069 (t!265784 (list!13409 (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494)))))) (list!13409 (charsOf!3414 separatorToken!241)))))))

(declare-fun b!3401379 () Bool)

(assert (=> b!3401379 (= e!2111386 (or (not (= (list!13409 (charsOf!3414 separatorToken!241)) Nil!36983)) (= lt!1156804 (list!13409 (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494))))))))))

(declare-fun d!967795 () Bool)

(assert (=> d!967795 e!2111386))

(declare-fun res!1376295 () Bool)

(assert (=> d!967795 (=> (not res!1376295) (not e!2111386))))

(assert (=> d!967795 (= res!1376295 (= (content!5117 lt!1156804) ((_ map or) (content!5117 (list!13409 (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494)))))) (content!5117 (list!13409 (charsOf!3414 separatorToken!241))))))))

(assert (=> d!967795 (= lt!1156804 e!2111385)))

(declare-fun c!579862 () Bool)

(assert (=> d!967795 (= c!579862 ((_ is Nil!36983) (list!13409 (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494)))))))))

(assert (=> d!967795 (= (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494))))) (list!13409 (charsOf!3414 separatorToken!241))) lt!1156804)))

(declare-fun b!3401376 () Bool)

(assert (=> b!3401376 (= e!2111385 (list!13409 (charsOf!3414 separatorToken!241)))))

(assert (= (and d!967795 c!579862) b!3401376))

(assert (= (and d!967795 (not c!579862)) b!3401377))

(assert (= (and d!967795 res!1376295) b!3401378))

(assert (= (and b!3401378 res!1376296) b!3401379))

(declare-fun m!3774441 () Bool)

(assert (=> b!3401378 m!3774441))

(assert (=> b!3401378 m!3772613))

(declare-fun m!3774443 () Bool)

(assert (=> b!3401378 m!3774443))

(assert (=> b!3401378 m!3772143))

(assert (=> b!3401378 m!3773441))

(assert (=> b!3401377 m!3772143))

(declare-fun m!3774445 () Bool)

(assert (=> b!3401377 m!3774445))

(declare-fun m!3774447 () Bool)

(assert (=> d!967795 m!3774447))

(assert (=> d!967795 m!3772613))

(declare-fun m!3774449 () Bool)

(assert (=> d!967795 m!3774449))

(assert (=> d!967795 m!3772143))

(assert (=> d!967795 m!3773449))

(assert (=> b!3400279 d!967795))

(assert (=> b!3400279 d!967183))

(assert (=> b!3400279 d!967191))

(declare-fun b!3401393 () Bool)

(declare-fun res!1376298 () Bool)

(declare-fun e!2111393 () Bool)

(assert (=> b!3401393 (=> (not res!1376298) (not e!2111393))))

(declare-fun lt!1156805 () List!37107)

(assert (=> b!3401393 (= res!1376298 (= (size!28005 lt!1156805) (+ (size!28005 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494))))) (list!13409 (charsOf!3414 separatorToken!241)))) (size!28005 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 (t!265786 tokens!494))) separatorToken!241)))))))

(declare-fun e!2111392 () List!37107)

(declare-fun b!3401392 () Bool)

(assert (=> b!3401392 (= e!2111392 (Cons!36983 (h!42403 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494))))) (list!13409 (charsOf!3414 separatorToken!241)))) (++!9069 (t!265784 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494))))) (list!13409 (charsOf!3414 separatorToken!241)))) (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 (t!265786 tokens!494))) separatorToken!241))))))

(declare-fun b!3401394 () Bool)

(assert (=> b!3401394 (= e!2111393 (or (not (= (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 (t!265786 tokens!494))) separatorToken!241) Nil!36983)) (= lt!1156805 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494))))) (list!13409 (charsOf!3414 separatorToken!241))))))))

(declare-fun d!967797 () Bool)

(assert (=> d!967797 e!2111393))

(declare-fun res!1376297 () Bool)

(assert (=> d!967797 (=> (not res!1376297) (not e!2111393))))

(assert (=> d!967797 (= res!1376297 (= (content!5117 lt!1156805) ((_ map or) (content!5117 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494))))) (list!13409 (charsOf!3414 separatorToken!241)))) (content!5117 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 (t!265786 tokens!494))) separatorToken!241)))))))

(assert (=> d!967797 (= lt!1156805 e!2111392)))

(declare-fun c!579863 () Bool)

(assert (=> d!967797 (= c!579863 ((_ is Nil!36983) (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494))))) (list!13409 (charsOf!3414 separatorToken!241)))))))

(assert (=> d!967797 (= (++!9069 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 (t!265786 tokens!494))))) (list!13409 (charsOf!3414 separatorToken!241))) (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 (t!265786 tokens!494))) separatorToken!241)) lt!1156805)))

(declare-fun b!3401391 () Bool)

(assert (=> b!3401391 (= e!2111392 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 (t!265786 tokens!494))) separatorToken!241))))

(assert (= (and d!967797 c!579863) b!3401391))

(assert (= (and d!967797 (not c!579863)) b!3401392))

(assert (= (and d!967797 res!1376297) b!3401393))

(assert (= (and b!3401393 res!1376298) b!3401394))

(declare-fun m!3774457 () Bool)

(assert (=> b!3401393 m!3774457))

(assert (=> b!3401393 m!3772607))

(declare-fun m!3774459 () Bool)

(assert (=> b!3401393 m!3774459))

(assert (=> b!3401393 m!3772605))

(declare-fun m!3774461 () Bool)

(assert (=> b!3401393 m!3774461))

(assert (=> b!3401392 m!3772605))

(declare-fun m!3774463 () Bool)

(assert (=> b!3401392 m!3774463))

(declare-fun m!3774465 () Bool)

(assert (=> d!967797 m!3774465))

(assert (=> d!967797 m!3772607))

(declare-fun m!3774467 () Bool)

(assert (=> d!967797 m!3774467))

(assert (=> d!967797 m!3772605))

(declare-fun m!3774469 () Bool)

(assert (=> d!967797 m!3774469))

(assert (=> b!3400279 d!967797))

(declare-fun bs!556312 () Bool)

(declare-fun d!967799 () Bool)

(assert (= bs!556312 (and d!967799 d!967431)))

(declare-fun lambda!121004 () Int)

(assert (=> bs!556312 (= (= (toValue!7604 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toValue!7604 (transformation!5400 (rule!7962 separatorToken!241)))) (= lambda!121004 lambda!120984))))

(assert (=> d!967799 true))

(assert (=> d!967799 (< (dynLambda!15440 order!19541 (toValue!7604 (transformation!5400 (rule!7962 (h!42405 tokens!494))))) (dynLambda!15448 order!19553 lambda!121004))))

(assert (=> d!967799 (= (equivClasses!2156 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toValue!7604 (transformation!5400 (rule!7962 (h!42405 tokens!494))))) (Forall2!924 lambda!121004))))

(declare-fun bs!556313 () Bool)

(assert (= bs!556313 d!967799))

(declare-fun m!3774471 () Bool)

(assert (=> bs!556313 m!3774471))

(assert (=> b!3400314 d!967799))

(declare-fun b!3401404 () Bool)

(declare-fun res!1376300 () Bool)

(declare-fun e!2111403 () Bool)

(assert (=> b!3401404 (=> (not res!1376300) (not e!2111403))))

(declare-fun lt!1156806 () List!37107)

(assert (=> b!3401404 (= res!1376300 (= (size!28005 lt!1156806) (+ (size!28005 (t!265784 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140))) (size!28005 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)))))))

(declare-fun b!3401403 () Bool)

(declare-fun e!2111402 () List!37107)

(assert (=> b!3401403 (= e!2111402 (Cons!36983 (h!42403 (t!265784 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140))) (++!9069 (t!265784 (t!265784 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140))) (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241))))))

(declare-fun b!3401405 () Bool)

(assert (=> b!3401405 (= e!2111403 (or (not (= (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241) Nil!36983)) (= lt!1156806 (t!265784 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140)))))))

(declare-fun d!967801 () Bool)

(assert (=> d!967801 e!2111403))

(declare-fun res!1376299 () Bool)

(assert (=> d!967801 (=> (not res!1376299) (not e!2111403))))

(assert (=> d!967801 (= res!1376299 (= (content!5117 lt!1156806) ((_ map or) (content!5117 (t!265784 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140))) (content!5117 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)))))))

(assert (=> d!967801 (= lt!1156806 e!2111402)))

(declare-fun c!579864 () Bool)

(assert (=> d!967801 (= c!579864 ((_ is Nil!36983) (t!265784 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140))))))

(assert (=> d!967801 (= (++!9069 (t!265784 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140)) (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)) lt!1156806)))

(declare-fun b!3401402 () Bool)

(assert (=> b!3401402 (= e!2111402 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241))))

(assert (= (and d!967801 c!579864) b!3401402))

(assert (= (and d!967801 (not c!579864)) b!3401403))

(assert (= (and d!967801 res!1376299) b!3401404))

(assert (= (and b!3401404 res!1376300) b!3401405))

(declare-fun m!3774481 () Bool)

(assert (=> b!3401404 m!3774481))

(declare-fun m!3774483 () Bool)

(assert (=> b!3401404 m!3774483))

(assert (=> b!3401404 m!3772139))

(assert (=> b!3401404 m!3772575))

(assert (=> b!3401403 m!3772139))

(declare-fun m!3774485 () Bool)

(assert (=> b!3401403 m!3774485))

(declare-fun m!3774487 () Bool)

(assert (=> d!967801 m!3774487))

(declare-fun m!3774489 () Bool)

(assert (=> d!967801 m!3774489))

(assert (=> d!967801 m!3772139))

(assert (=> d!967801 m!3772583))

(assert (=> b!3400249 d!967801))

(declare-fun b!3401419 () Bool)

(declare-fun e!2111407 () List!37107)

(declare-fun e!2111408 () List!37107)

(assert (=> b!3401419 (= e!2111407 e!2111408)))

(declare-fun c!579866 () Bool)

(assert (=> b!3401419 (= c!579866 ((_ is Leaf!17486) (c!579555 lt!1156138)))))

(declare-fun b!3401420 () Bool)

(assert (=> b!3401420 (= e!2111408 (list!13417 (xs!14333 (c!579555 lt!1156138))))))

(declare-fun b!3401418 () Bool)

(assert (=> b!3401418 (= e!2111407 Nil!36983)))

(declare-fun d!967803 () Bool)

(declare-fun c!579865 () Bool)

(assert (=> d!967803 (= c!579865 ((_ is Empty!11175) (c!579555 lt!1156138)))))

(assert (=> d!967803 (= (list!13413 (c!579555 lt!1156138)) e!2111407)))

(declare-fun b!3401421 () Bool)

(assert (=> b!3401421 (= e!2111408 (++!9069 (list!13413 (left!28833 (c!579555 lt!1156138))) (list!13413 (right!29163 (c!579555 lt!1156138)))))))

(assert (= (and d!967803 c!579865) b!3401418))

(assert (= (and d!967803 (not c!579865)) b!3401419))

(assert (= (and b!3401419 c!579866) b!3401420))

(assert (= (and b!3401419 (not c!579866)) b!3401421))

(declare-fun m!3774491 () Bool)

(assert (=> b!3401420 m!3774491))

(declare-fun m!3774493 () Bool)

(assert (=> b!3401421 m!3774493))

(declare-fun m!3774495 () Bool)

(assert (=> b!3401421 m!3774495))

(assert (=> b!3401421 m!3774493))

(assert (=> b!3401421 m!3774495))

(declare-fun m!3774497 () Bool)

(assert (=> b!3401421 m!3774497))

(assert (=> d!967195 d!967803))

(declare-fun d!967805 () Bool)

(declare-fun e!2111426 () Bool)

(assert (=> d!967805 e!2111426))

(declare-fun res!1376303 () Bool)

(assert (=> d!967805 (=> (not res!1376303) (not e!2111426))))

(declare-fun lt!1156809 () BalanceConc!21964)

(assert (=> d!967805 (= res!1376303 (= (list!13409 lt!1156809) lt!1156137))))

(declare-fun fromList!724 (List!37107) Conc!11175)

(assert (=> d!967805 (= lt!1156809 (BalanceConc!21965 (fromList!724 lt!1156137)))))

(assert (=> d!967805 (= (fromListB!1730 lt!1156137) lt!1156809)))

(declare-fun b!3401466 () Bool)

(assert (=> b!3401466 (= e!2111426 (isBalanced!3379 (fromList!724 lt!1156137)))))

(assert (= (and d!967805 res!1376303) b!3401466))

(declare-fun m!3774509 () Bool)

(assert (=> d!967805 m!3774509))

(declare-fun m!3774511 () Bool)

(assert (=> d!967805 m!3774511))

(assert (=> b!3401466 m!3774511))

(assert (=> b!3401466 m!3774511))

(declare-fun m!3774513 () Bool)

(assert (=> b!3401466 m!3774513))

(assert (=> d!967101 d!967805))

(assert (=> b!3400389 d!967759))

(assert (=> b!3400389 d!967761))

(assert (=> b!3400389 d!967639))

(declare-fun d!967807 () Bool)

(assert (=> d!967807 (= (list!13412 (_1!21443 (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 (h!42405 tokens!494)))))) (list!13415 (c!579556 (_1!21443 (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 (h!42405 tokens!494))))))))))

(declare-fun bs!556314 () Bool)

(assert (= bs!556314 d!967807))

(declare-fun m!3774515 () Bool)

(assert (=> bs!556314 m!3774515))

(assert (=> d!967173 d!967807))

(assert (=> d!967173 d!967415))

(assert (=> d!967173 d!967421))

(declare-fun d!967811 () Bool)

(assert (=> d!967811 (= (list!13412 (singletonSeq!2496 (h!42405 tokens!494))) (list!13415 (c!579556 (singletonSeq!2496 (h!42405 tokens!494)))))))

(declare-fun bs!556316 () Bool)

(assert (= bs!556316 d!967811))

(declare-fun m!3774517 () Bool)

(assert (=> bs!556316 m!3774517))

(assert (=> d!967173 d!967811))

(assert (=> d!967173 d!967203))

(assert (=> d!967173 d!967081))

(declare-fun d!967813 () Bool)

(declare-fun lt!1156810 () Int)

(assert (=> d!967813 (= lt!1156810 (size!28008 (list!13412 (_1!21443 lt!1156234))))))

(assert (=> d!967813 (= lt!1156810 (size!28009 (c!579556 (_1!21443 lt!1156234))))))

(assert (=> d!967813 (= (size!28003 (_1!21443 lt!1156234)) lt!1156810)))

(declare-fun bs!556317 () Bool)

(assert (= bs!556317 d!967813))

(declare-fun m!3774519 () Bool)

(assert (=> bs!556317 m!3774519))

(assert (=> bs!556317 m!3774519))

(declare-fun m!3774521 () Bool)

(assert (=> bs!556317 m!3774521))

(declare-fun m!3774523 () Bool)

(assert (=> bs!556317 m!3774523))

(assert (=> d!967173 d!967813))

(declare-fun d!967815 () Bool)

(assert (=> d!967815 (= (isEmpty!21259 lt!1156307) (not ((_ is Some!7439) lt!1156307)))))

(assert (=> d!967229 d!967815))

(declare-fun d!967817 () Bool)

(declare-fun e!2111435 () Bool)

(assert (=> d!967817 e!2111435))

(declare-fun res!1376312 () Bool)

(assert (=> d!967817 (=> res!1376312 e!2111435)))

(declare-fun lt!1156813 () Bool)

(assert (=> d!967817 (= res!1376312 (not lt!1156813))))

(declare-fun e!2111433 () Bool)

(assert (=> d!967817 (= lt!1156813 e!2111433)))

(declare-fun res!1376315 () Bool)

(assert (=> d!967817 (=> res!1376315 e!2111433)))

(assert (=> d!967817 (= res!1376315 ((_ is Nil!36983) lt!1156137))))

(assert (=> d!967817 (= (isPrefix!2834 lt!1156137 lt!1156137) lt!1156813)))

(declare-fun b!3401478 () Bool)

(assert (=> b!3401478 (= e!2111435 (>= (size!28005 lt!1156137) (size!28005 lt!1156137)))))

(declare-fun b!3401475 () Bool)

(declare-fun e!2111434 () Bool)

(assert (=> b!3401475 (= e!2111433 e!2111434)))

(declare-fun res!1376313 () Bool)

(assert (=> b!3401475 (=> (not res!1376313) (not e!2111434))))

(assert (=> b!3401475 (= res!1376313 (not ((_ is Nil!36983) lt!1156137)))))

(declare-fun b!3401476 () Bool)

(declare-fun res!1376314 () Bool)

(assert (=> b!3401476 (=> (not res!1376314) (not e!2111434))))

(assert (=> b!3401476 (= res!1376314 (= (head!7259 lt!1156137) (head!7259 lt!1156137)))))

(declare-fun b!3401477 () Bool)

(assert (=> b!3401477 (= e!2111434 (isPrefix!2834 (tail!5381 lt!1156137) (tail!5381 lt!1156137)))))

(assert (= (and d!967817 (not res!1376315)) b!3401475))

(assert (= (and b!3401475 res!1376313) b!3401476))

(assert (= (and b!3401476 res!1376314) b!3401477))

(assert (= (and d!967817 (not res!1376312)) b!3401478))

(assert (=> b!3401478 m!3772737))

(assert (=> b!3401478 m!3772737))

(declare-fun m!3774525 () Bool)

(assert (=> b!3401476 m!3774525))

(assert (=> b!3401476 m!3774525))

(declare-fun m!3774527 () Bool)

(assert (=> b!3401477 m!3774527))

(assert (=> b!3401477 m!3774527))

(assert (=> b!3401477 m!3774527))

(assert (=> b!3401477 m!3774527))

(declare-fun m!3774529 () Bool)

(assert (=> b!3401477 m!3774529))

(assert (=> d!967229 d!967817))

(declare-fun d!967819 () Bool)

(assert (=> d!967819 (isPrefix!2834 lt!1156137 lt!1156137)))

(declare-fun lt!1156816 () Unit!52148)

(declare-fun choose!19730 (List!37107 List!37107) Unit!52148)

(assert (=> d!967819 (= lt!1156816 (choose!19730 lt!1156137 lt!1156137))))

(assert (=> d!967819 (= (lemmaIsPrefixRefl!1793 lt!1156137 lt!1156137) lt!1156816)))

(declare-fun bs!556318 () Bool)

(assert (= bs!556318 d!967819))

(assert (=> bs!556318 m!3772791))

(declare-fun m!3774531 () Bool)

(assert (=> bs!556318 m!3774531))

(assert (=> d!967229 d!967819))

(declare-fun bs!556319 () Bool)

(declare-fun d!967821 () Bool)

(assert (= bs!556319 (and d!967821 d!967483)))

(declare-fun lambda!121007 () Int)

(assert (=> bs!556319 (= lambda!121007 lambda!120993)))

(assert (=> d!967821 true))

(declare-fun lt!1156819 () Bool)

(assert (=> d!967821 (= lt!1156819 (forall!7824 rules!2135 lambda!121007))))

(declare-fun e!2111441 () Bool)

(assert (=> d!967821 (= lt!1156819 e!2111441)))

(declare-fun res!1376320 () Bool)

(assert (=> d!967821 (=> res!1376320 e!2111441)))

(assert (=> d!967821 (= res!1376320 (not ((_ is Cons!36984) rules!2135)))))

(assert (=> d!967821 (= (rulesValidInductive!1843 thiss!18206 rules!2135) lt!1156819)))

(declare-fun b!3401483 () Bool)

(declare-fun e!2111440 () Bool)

(assert (=> b!3401483 (= e!2111441 e!2111440)))

(declare-fun res!1376321 () Bool)

(assert (=> b!3401483 (=> (not res!1376321) (not e!2111440))))

(assert (=> b!3401483 (= res!1376321 (ruleValid!1715 thiss!18206 (h!42404 rules!2135)))))

(declare-fun b!3401484 () Bool)

(assert (=> b!3401484 (= e!2111440 (rulesValidInductive!1843 thiss!18206 (t!265785 rules!2135)))))

(assert (= (and d!967821 (not res!1376320)) b!3401483))

(assert (= (and b!3401483 res!1376321) b!3401484))

(declare-fun m!3774533 () Bool)

(assert (=> d!967821 m!3774533))

(assert (=> b!3401483 m!3773563))

(declare-fun m!3774535 () Bool)

(assert (=> b!3401484 m!3774535))

(assert (=> d!967229 d!967821))

(declare-fun d!967823 () Bool)

(declare-fun res!1376322 () Bool)

(declare-fun e!2111442 () Bool)

(assert (=> d!967823 (=> res!1376322 e!2111442)))

(assert (=> d!967823 (= res!1376322 ((_ is Nil!36985) (list!13412 (seqFromList!3854 tokens!494))))))

(assert (=> d!967823 (= (forall!7821 (list!13412 (seqFromList!3854 tokens!494)) lambda!120971) e!2111442)))

(declare-fun b!3401485 () Bool)

(declare-fun e!2111443 () Bool)

(assert (=> b!3401485 (= e!2111442 e!2111443)))

(declare-fun res!1376323 () Bool)

(assert (=> b!3401485 (=> (not res!1376323) (not e!2111443))))

(assert (=> b!3401485 (= res!1376323 (dynLambda!15439 lambda!120971 (h!42405 (list!13412 (seqFromList!3854 tokens!494)))))))

(declare-fun b!3401486 () Bool)

(assert (=> b!3401486 (= e!2111443 (forall!7821 (t!265786 (list!13412 (seqFromList!3854 tokens!494))) lambda!120971))))

(assert (= (and d!967823 (not res!1376322)) b!3401485))

(assert (= (and b!3401485 res!1376323) b!3401486))

(declare-fun b_lambda!97071 () Bool)

(assert (=> (not b_lambda!97071) (not b!3401485)))

(declare-fun m!3774537 () Bool)

(assert (=> b!3401485 m!3774537))

(declare-fun m!3774539 () Bool)

(assert (=> b!3401486 m!3774539))

(assert (=> d!967103 d!967823))

(assert (=> d!967103 d!967475))

(declare-fun d!967825 () Bool)

(declare-fun lt!1156822 () Bool)

(assert (=> d!967825 (= lt!1156822 (forall!7821 (list!13412 (seqFromList!3854 tokens!494)) lambda!120971))))

(declare-fun forall!7827 (Conc!11176 Int) Bool)

(assert (=> d!967825 (= lt!1156822 (forall!7827 (c!579556 (seqFromList!3854 tokens!494)) lambda!120971))))

(assert (=> d!967825 (= (forall!7823 (seqFromList!3854 tokens!494) lambda!120971) lt!1156822)))

(declare-fun bs!556320 () Bool)

(assert (= bs!556320 d!967825))

(assert (=> bs!556320 m!3772081))

(assert (=> bs!556320 m!3772513))

(assert (=> bs!556320 m!3772513))

(assert (=> bs!556320 m!3772515))

(declare-fun m!3774541 () Bool)

(assert (=> bs!556320 m!3774541))

(assert (=> d!967103 d!967825))

(assert (=> d!967103 d!967081))

(declare-fun d!967827 () Bool)

(declare-fun c!579868 () Bool)

(assert (=> d!967827 (= c!579868 ((_ is Node!11175) (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494))))))))

(declare-fun e!2111444 () Bool)

(assert (=> d!967827 (= (inv!50092 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494))))) e!2111444)))

(declare-fun b!3401487 () Bool)

(assert (=> b!3401487 (= e!2111444 (inv!50096 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494))))))))

(declare-fun b!3401488 () Bool)

(declare-fun e!2111445 () Bool)

(assert (=> b!3401488 (= e!2111444 e!2111445)))

(declare-fun res!1376324 () Bool)

(assert (=> b!3401488 (= res!1376324 (not ((_ is Leaf!17486) (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494)))))))))

(assert (=> b!3401488 (=> res!1376324 e!2111445)))

(declare-fun b!3401489 () Bool)

(assert (=> b!3401489 (= e!2111445 (inv!50097 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494))))))))

(assert (= (and d!967827 c!579868) b!3401487))

(assert (= (and d!967827 (not c!579868)) b!3401488))

(assert (= (and b!3401488 (not res!1376324)) b!3401489))

(declare-fun m!3774543 () Bool)

(assert (=> b!3401487 m!3774543))

(declare-fun m!3774545 () Bool)

(assert (=> b!3401489 m!3774545))

(assert (=> b!3400329 d!967827))

(declare-fun d!967829 () Bool)

(declare-fun lt!1156823 () Int)

(assert (=> d!967829 (>= lt!1156823 0)))

(declare-fun e!2111446 () Int)

(assert (=> d!967829 (= lt!1156823 e!2111446)))

(declare-fun c!579869 () Bool)

(assert (=> d!967829 (= c!579869 ((_ is Nil!36983) (originalCharacters!6114 (h!42405 tokens!494))))))

(assert (=> d!967829 (= (size!28005 (originalCharacters!6114 (h!42405 tokens!494))) lt!1156823)))

(declare-fun b!3401490 () Bool)

(assert (=> b!3401490 (= e!2111446 0)))

(declare-fun b!3401491 () Bool)

(assert (=> b!3401491 (= e!2111446 (+ 1 (size!28005 (t!265784 (originalCharacters!6114 (h!42405 tokens!494))))))))

(assert (= (and d!967829 c!579869) b!3401490))

(assert (= (and d!967829 (not c!579869)) b!3401491))

(declare-fun m!3774547 () Bool)

(assert (=> b!3401491 m!3774547))

(assert (=> b!3400423 d!967829))

(declare-fun d!967831 () Bool)

(declare-fun lt!1156824 () Token!10166)

(assert (=> d!967831 (= lt!1156824 (apply!8634 (list!13412 (_1!21443 lt!1156234)) 0))))

(assert (=> d!967831 (= lt!1156824 (apply!8636 (c!579556 (_1!21443 lt!1156234)) 0))))

(declare-fun e!2111447 () Bool)

(assert (=> d!967831 e!2111447))

(declare-fun res!1376325 () Bool)

(assert (=> d!967831 (=> (not res!1376325) (not e!2111447))))

(assert (=> d!967831 (= res!1376325 (<= 0 0))))

(assert (=> d!967831 (= (apply!8632 (_1!21443 lt!1156234) 0) lt!1156824)))

(declare-fun b!3401492 () Bool)

(assert (=> b!3401492 (= e!2111447 (< 0 (size!28003 (_1!21443 lt!1156234))))))

(assert (= (and d!967831 res!1376325) b!3401492))

(assert (=> d!967831 m!3774519))

(assert (=> d!967831 m!3774519))

(declare-fun m!3774549 () Bool)

(assert (=> d!967831 m!3774549))

(declare-fun m!3774551 () Bool)

(assert (=> d!967831 m!3774551))

(assert (=> b!3401492 m!3772545))

(assert (=> b!3400227 d!967831))

(declare-fun d!967833 () Bool)

(declare-fun lt!1156825 () Int)

(assert (=> d!967833 (>= lt!1156825 0)))

(declare-fun e!2111448 () Int)

(assert (=> d!967833 (= lt!1156825 e!2111448)))

(declare-fun c!579870 () Bool)

(assert (=> d!967833 (= c!579870 ((_ is Nil!36983) (_2!21442 (get!11811 lt!1156307))))))

(assert (=> d!967833 (= (size!28005 (_2!21442 (get!11811 lt!1156307))) lt!1156825)))

(declare-fun b!3401493 () Bool)

(assert (=> b!3401493 (= e!2111448 0)))

(declare-fun b!3401494 () Bool)

(assert (=> b!3401494 (= e!2111448 (+ 1 (size!28005 (t!265784 (_2!21442 (get!11811 lt!1156307))))))))

(assert (= (and d!967833 c!579870) b!3401493))

(assert (= (and d!967833 (not c!579870)) b!3401494))

(declare-fun m!3774553 () Bool)

(assert (=> b!3401494 m!3774553))

(assert (=> b!3400393 d!967833))

(assert (=> b!3400393 d!967639))

(assert (=> b!3400393 d!967755))

(declare-fun d!967835 () Bool)

(assert (=> d!967835 (= (inv!15 (value!174360 (h!42405 tokens!494))) (= (charsToBigInt!0 (text!39859 (value!174360 (h!42405 tokens!494))) 0) (value!174355 (value!174360 (h!42405 tokens!494)))))))

(declare-fun bs!556321 () Bool)

(assert (= bs!556321 d!967835))

(declare-fun m!3774555 () Bool)

(assert (=> bs!556321 m!3774555))

(assert (=> b!3400333 d!967835))

(assert (=> d!967247 d!967215))

(assert (=> d!967247 d!967177))

(declare-fun b!3401497 () Bool)

(declare-fun res!1376327 () Bool)

(declare-fun e!2111450 () Bool)

(assert (=> b!3401497 (=> (not res!1376327) (not e!2111450))))

(declare-fun lt!1156826 () List!37107)

(assert (=> b!3401497 (= res!1376327 (= (size!28005 lt!1156826) (+ (size!28005 lt!1156137) (size!28005 (++!9069 lt!1156140 lt!1156144)))))))

(declare-fun e!2111449 () List!37107)

(declare-fun b!3401496 () Bool)

(assert (=> b!3401496 (= e!2111449 (Cons!36983 (h!42403 lt!1156137) (++!9069 (t!265784 lt!1156137) (++!9069 lt!1156140 lt!1156144))))))

(declare-fun b!3401498 () Bool)

(assert (=> b!3401498 (= e!2111450 (or (not (= (++!9069 lt!1156140 lt!1156144) Nil!36983)) (= lt!1156826 lt!1156137)))))

(declare-fun d!967837 () Bool)

(assert (=> d!967837 e!2111450))

(declare-fun res!1376326 () Bool)

(assert (=> d!967837 (=> (not res!1376326) (not e!2111450))))

(assert (=> d!967837 (= res!1376326 (= (content!5117 lt!1156826) ((_ map or) (content!5117 lt!1156137) (content!5117 (++!9069 lt!1156140 lt!1156144)))))))

(assert (=> d!967837 (= lt!1156826 e!2111449)))

(declare-fun c!579871 () Bool)

(assert (=> d!967837 (= c!579871 ((_ is Nil!36983) lt!1156137))))

(assert (=> d!967837 (= (++!9069 lt!1156137 (++!9069 lt!1156140 lt!1156144)) lt!1156826)))

(declare-fun b!3401495 () Bool)

(assert (=> b!3401495 (= e!2111449 (++!9069 lt!1156140 lt!1156144))))

(assert (= (and d!967837 c!579871) b!3401495))

(assert (= (and d!967837 (not c!579871)) b!3401496))

(assert (= (and d!967837 res!1376326) b!3401497))

(assert (= (and b!3401497 res!1376327) b!3401498))

(declare-fun m!3774557 () Bool)

(assert (=> b!3401497 m!3774557))

(assert (=> b!3401497 m!3772737))

(assert (=> b!3401497 m!3772145))

(declare-fun m!3774559 () Bool)

(assert (=> b!3401497 m!3774559))

(assert (=> b!3401496 m!3772145))

(declare-fun m!3774561 () Bool)

(assert (=> b!3401496 m!3774561))

(declare-fun m!3774563 () Bool)

(assert (=> d!967837 m!3774563))

(assert (=> d!967837 m!3772743))

(assert (=> d!967837 m!3772145))

(declare-fun m!3774565 () Bool)

(assert (=> d!967837 m!3774565))

(assert (=> d!967247 d!967837))

(assert (=> d!967247 d!967217))

(declare-fun d!967839 () Bool)

(assert (=> d!967839 (= (++!9069 (++!9069 lt!1156137 lt!1156140) lt!1156144) (++!9069 lt!1156137 (++!9069 lt!1156140 lt!1156144)))))

(assert (=> d!967839 true))

(declare-fun _$52!1806 () Unit!52148)

(assert (=> d!967839 (= (choose!19722 lt!1156137 lt!1156140 lt!1156144) _$52!1806)))

(declare-fun bs!556322 () Bool)

(assert (= bs!556322 d!967839))

(assert (=> bs!556322 m!3772117))

(assert (=> bs!556322 m!3772117))

(assert (=> bs!556322 m!3772119))

(assert (=> bs!556322 m!3772145))

(assert (=> bs!556322 m!3772145))

(assert (=> bs!556322 m!3772843))

(assert (=> d!967247 d!967839))

(declare-fun d!967841 () Bool)

(assert (=> d!967841 (= (list!13409 (_2!21443 lt!1156185)) (list!13413 (c!579555 (_2!21443 lt!1156185))))))

(declare-fun bs!556323 () Bool)

(assert (= bs!556323 d!967841))

(declare-fun m!3774567 () Bool)

(assert (=> bs!556323 m!3774567))

(assert (=> b!3400115 d!967841))

(assert (=> b!3400115 d!967349))

(assert (=> b!3400115 d!967393))

(declare-fun d!967843 () Bool)

(declare-fun e!2111453 () Bool)

(assert (=> d!967843 e!2111453))

(declare-fun res!1376330 () Bool)

(assert (=> d!967843 (=> (not res!1376330) (not e!2111453))))

(declare-fun lt!1156829 () BalanceConc!21966)

(assert (=> d!967843 (= res!1376330 (= (list!13412 lt!1156829) tokens!494))))

(declare-fun fromList!725 (List!37109) Conc!11176)

(assert (=> d!967843 (= lt!1156829 (BalanceConc!21967 (fromList!725 tokens!494)))))

(assert (=> d!967843 (= (fromListB!1731 tokens!494) lt!1156829)))

(declare-fun b!3401501 () Bool)

(assert (=> b!3401501 (= e!2111453 (isBalanced!3377 (fromList!725 tokens!494)))))

(assert (= (and d!967843 res!1376330) b!3401501))

(declare-fun m!3774569 () Bool)

(assert (=> d!967843 m!3774569))

(declare-fun m!3774571 () Bool)

(assert (=> d!967843 m!3774571))

(assert (=> b!3401501 m!3774571))

(assert (=> b!3401501 m!3774571))

(declare-fun m!3774573 () Bool)

(assert (=> b!3401501 m!3774573))

(assert (=> d!967163 d!967843))

(declare-fun d!967845 () Bool)

(assert (=> d!967845 (= (inv!50093 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (value!174360 (h!42405 (t!265786 tokens!494))))) (isBalanced!3379 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (value!174360 (h!42405 (t!265786 tokens!494)))))))))

(declare-fun bs!556324 () Bool)

(assert (= bs!556324 d!967845))

(declare-fun m!3774575 () Bool)

(assert (=> bs!556324 m!3774575))

(assert (=> tb!182235 d!967845))

(declare-fun d!967847 () Bool)

(assert (=> d!967847 (= (isEmpty!21259 lt!1156139) (not ((_ is Some!7439) lt!1156139)))))

(assert (=> d!967227 d!967847))

(declare-fun d!967849 () Bool)

(declare-fun res!1376331 () Bool)

(declare-fun e!2111454 () Bool)

(assert (=> d!967849 (=> (not res!1376331) (not e!2111454))))

(assert (=> d!967849 (= res!1376331 (not (isEmpty!21258 (originalCharacters!6114 (h!42405 (t!265786 tokens!494))))))))

(assert (=> d!967849 (= (inv!50089 (h!42405 (t!265786 tokens!494))) e!2111454)))

(declare-fun b!3401502 () Bool)

(declare-fun res!1376332 () Bool)

(assert (=> b!3401502 (=> (not res!1376332) (not e!2111454))))

(assert (=> b!3401502 (= res!1376332 (= (originalCharacters!6114 (h!42405 (t!265786 tokens!494))) (list!13409 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (value!174360 (h!42405 (t!265786 tokens!494)))))))))

(declare-fun b!3401503 () Bool)

(assert (=> b!3401503 (= e!2111454 (= (size!27999 (h!42405 (t!265786 tokens!494))) (size!28005 (originalCharacters!6114 (h!42405 (t!265786 tokens!494))))))))

(assert (= (and d!967849 res!1376331) b!3401502))

(assert (= (and b!3401502 res!1376332) b!3401503))

(declare-fun b_lambda!97073 () Bool)

(assert (=> (not b_lambda!97073) (not b!3401502)))

(assert (=> b!3401502 t!265823))

(declare-fun b_and!237415 () Bool)

(assert (= b_and!237401 (and (=> t!265823 result!225872) b_and!237415)))

(assert (=> b!3401502 t!265854))

(declare-fun b_and!237417 () Bool)

(assert (= b_and!237403 (and (=> t!265854 result!225914) b_and!237417)))

(assert (=> b!3401502 t!265827))

(declare-fun b_and!237419 () Bool)

(assert (= b_and!237399 (and (=> t!265827 result!225876) b_and!237419)))

(assert (=> b!3401502 t!265860))

(declare-fun b_and!237421 () Bool)

(assert (= b_and!237397 (and (=> t!265860 result!225922) b_and!237421)))

(assert (=> b!3401502 t!265825))

(declare-fun b_and!237423 () Bool)

(assert (= b_and!237405 (and (=> t!265825 result!225874) b_and!237423)))

(declare-fun m!3774577 () Bool)

(assert (=> d!967849 m!3774577))

(assert (=> b!3401502 m!3772627))

(assert (=> b!3401502 m!3772627))

(declare-fun m!3774579 () Bool)

(assert (=> b!3401502 m!3774579))

(declare-fun m!3774581 () Bool)

(assert (=> b!3401503 m!3774581))

(assert (=> b!3400477 d!967849))

(declare-fun bs!556325 () Bool)

(declare-fun d!967851 () Bool)

(assert (= bs!556325 (and d!967851 d!967337)))

(declare-fun lambda!121008 () Int)

(assert (=> bs!556325 (= (and (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toChars!7463 (transformation!5400 (h!42404 rules!2135)))) (= (toValue!7604 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toValue!7604 (transformation!5400 (h!42404 rules!2135))))) (= lambda!121008 lambda!120981))))

(declare-fun bs!556326 () Bool)

(assert (= bs!556326 (and d!967851 d!967605)))

(assert (=> bs!556326 (= (and (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241)))) (= (toValue!7604 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toValue!7604 (transformation!5400 (rule!7962 separatorToken!241))))) (= lambda!121008 lambda!120998))))

(assert (=> d!967851 true))

(assert (=> d!967851 (< (dynLambda!15442 order!19545 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494))))) (dynLambda!15446 order!19551 lambda!121008))))

(assert (=> d!967851 true))

(assert (=> d!967851 (< (dynLambda!15440 order!19541 (toValue!7604 (transformation!5400 (rule!7962 (h!42405 tokens!494))))) (dynLambda!15446 order!19551 lambda!121008))))

(assert (=> d!967851 (= (semiInverseModEq!2257 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toValue!7604 (transformation!5400 (rule!7962 (h!42405 tokens!494))))) (Forall!1326 lambda!121008))))

(declare-fun bs!556327 () Bool)

(assert (= bs!556327 d!967851))

(declare-fun m!3774583 () Bool)

(assert (=> bs!556327 m!3774583))

(assert (=> d!967213 d!967851))

(declare-fun d!967853 () Bool)

(declare-fun lt!1156830 () Int)

(assert (=> d!967853 (= lt!1156830 (size!28008 (list!13412 lt!1156135)))))

(assert (=> d!967853 (= lt!1156830 (size!28009 (c!579556 lt!1156135)))))

(assert (=> d!967853 (= (size!28003 lt!1156135) lt!1156830)))

(declare-fun bs!556328 () Bool)

(assert (= bs!556328 d!967853))

(assert (=> bs!556328 m!3772695))

(assert (=> bs!556328 m!3772695))

(declare-fun m!3774585 () Bool)

(assert (=> bs!556328 m!3774585))

(declare-fun m!3774587 () Bool)

(assert (=> bs!556328 m!3774587))

(assert (=> b!3400299 d!967853))

(declare-fun d!967855 () Bool)

(declare-fun charsToInt!0 (List!37106) (_ BitVec 32))

(assert (=> d!967855 (= (inv!16 (value!174360 separatorToken!241)) (= (charsToInt!0 (text!39857 (value!174360 separatorToken!241))) (value!174351 (value!174360 separatorToken!241))))))

(declare-fun bs!556329 () Bool)

(assert (= bs!556329 d!967855))

(declare-fun m!3774589 () Bool)

(assert (=> bs!556329 m!3774589))

(assert (=> b!3400061 d!967855))

(declare-fun d!967857 () Bool)

(assert (=> d!967857 (= (list!13409 lt!1156289) (list!13413 (c!579555 lt!1156289)))))

(declare-fun bs!556330 () Bool)

(assert (= bs!556330 d!967857))

(declare-fun m!3774591 () Bool)

(assert (=> bs!556330 m!3774591))

(assert (=> d!967223 d!967857))

(declare-fun d!967859 () Bool)

(declare-fun lt!1156831 () Int)

(assert (=> d!967859 (>= lt!1156831 0)))

(declare-fun e!2111455 () Int)

(assert (=> d!967859 (= lt!1156831 e!2111455)))

(declare-fun c!579873 () Bool)

(assert (=> d!967859 (= c!579873 ((_ is Nil!36983) lt!1156238))))

(assert (=> d!967859 (= (size!28005 lt!1156238) lt!1156831)))

(declare-fun b!3401504 () Bool)

(assert (=> b!3401504 (= e!2111455 0)))

(declare-fun b!3401505 () Bool)

(assert (=> b!3401505 (= e!2111455 (+ 1 (size!28005 (t!265784 lt!1156238))))))

(assert (= (and d!967859 c!579873) b!3401504))

(assert (= (and d!967859 (not c!579873)) b!3401505))

(declare-fun m!3774593 () Bool)

(assert (=> b!3401505 m!3774593))

(assert (=> b!3400246 d!967859))

(assert (=> b!3400246 d!967517))

(assert (=> b!3400246 d!967511))

(declare-fun d!967861 () Bool)

(declare-fun lt!1156832 () Int)

(assert (=> d!967861 (>= lt!1156832 0)))

(declare-fun e!2111456 () Int)

(assert (=> d!967861 (= lt!1156832 e!2111456)))

(declare-fun c!579874 () Bool)

(assert (=> d!967861 (= c!579874 ((_ is Nil!36983) (originalCharacters!6114 separatorToken!241)))))

(assert (=> d!967861 (= (size!28005 (originalCharacters!6114 separatorToken!241)) lt!1156832)))

(declare-fun b!3401506 () Bool)

(assert (=> b!3401506 (= e!2111456 0)))

(declare-fun b!3401507 () Bool)

(assert (=> b!3401507 (= e!2111456 (+ 1 (size!28005 (t!265784 (originalCharacters!6114 separatorToken!241)))))))

(assert (= (and d!967861 c!579874) b!3401506))

(assert (= (and d!967861 (not c!579874)) b!3401507))

(declare-fun m!3774595 () Bool)

(assert (=> b!3401507 m!3774595))

(assert (=> b!3400328 d!967861))

(declare-fun d!967863 () Bool)

(declare-fun lt!1156833 () Bool)

(assert (=> d!967863 (= lt!1156833 (isEmpty!21258 (list!13409 (_2!21443 lt!1156178))))))

(assert (=> d!967863 (= lt!1156833 (isEmpty!21261 (c!579555 (_2!21443 lt!1156178))))))

(assert (=> d!967863 (= (isEmpty!21254 (_2!21443 lt!1156178)) lt!1156833)))

(declare-fun bs!556331 () Bool)

(assert (= bs!556331 d!967863))

(declare-fun m!3774597 () Bool)

(assert (=> bs!556331 m!3774597))

(assert (=> bs!556331 m!3774597))

(declare-fun m!3774599 () Bool)

(assert (=> bs!556331 m!3774599))

(declare-fun m!3774601 () Bool)

(assert (=> bs!556331 m!3774601))

(assert (=> b!3400099 d!967863))

(declare-fun d!967865 () Bool)

(assert (=> d!967865 (= (isEmpty!21255 (list!13412 (_1!21443 (lex!2315 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137))))) ((_ is Nil!36985) (list!13412 (_1!21443 (lex!2315 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137))))))))

(assert (=> d!967097 d!967865))

(declare-fun d!967867 () Bool)

(assert (=> d!967867 (= (list!13412 (_1!21443 (lex!2315 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137)))) (list!13415 (c!579556 (_1!21443 (lex!2315 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137))))))))

(declare-fun bs!556332 () Bool)

(assert (= bs!556332 d!967867))

(declare-fun m!3774603 () Bool)

(assert (=> bs!556332 m!3774603))

(assert (=> d!967097 d!967867))

(declare-fun d!967869 () Bool)

(declare-fun lt!1156836 () Bool)

(assert (=> d!967869 (= lt!1156836 (isEmpty!21255 (list!13415 (c!579556 (_1!21443 (lex!2315 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137)))))))))

(assert (=> d!967869 (= lt!1156836 (= (size!28009 (c!579556 (_1!21443 (lex!2315 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137))))) 0))))

(assert (=> d!967869 (= (isEmpty!21256 (c!579556 (_1!21443 (lex!2315 thiss!18206 rules!2135 (seqFromList!3853 lt!1156137))))) lt!1156836)))

(declare-fun bs!556333 () Bool)

(assert (= bs!556333 d!967869))

(assert (=> bs!556333 m!3774603))

(assert (=> bs!556333 m!3774603))

(declare-fun m!3774605 () Bool)

(assert (=> bs!556333 m!3774605))

(declare-fun m!3774607 () Bool)

(assert (=> bs!556333 m!3774607))

(assert (=> d!967097 d!967869))

(declare-fun b!3401520 () Bool)

(declare-fun e!2111462 () Bool)

(assert (=> b!3401520 (= e!2111462 (not (isEmpty!21256 (right!29164 (c!579556 lt!1156286)))))))

(declare-fun d!967871 () Bool)

(declare-fun res!1376350 () Bool)

(declare-fun e!2111461 () Bool)

(assert (=> d!967871 (=> res!1376350 e!2111461)))

(assert (=> d!967871 (= res!1376350 (not ((_ is Node!11176) (c!579556 lt!1156286))))))

(assert (=> d!967871 (= (isBalanced!3377 (c!579556 lt!1156286)) e!2111461)))

(declare-fun b!3401521 () Bool)

(declare-fun res!1376346 () Bool)

(assert (=> b!3401521 (=> (not res!1376346) (not e!2111462))))

(assert (=> b!3401521 (= res!1376346 (not (isEmpty!21256 (left!28834 (c!579556 lt!1156286)))))))

(declare-fun b!3401522 () Bool)

(assert (=> b!3401522 (= e!2111461 e!2111462)))

(declare-fun res!1376349 () Bool)

(assert (=> b!3401522 (=> (not res!1376349) (not e!2111462))))

(declare-fun height!1676 (Conc!11176) Int)

(assert (=> b!3401522 (= res!1376349 (<= (- 1) (- (height!1676 (left!28834 (c!579556 lt!1156286))) (height!1676 (right!29164 (c!579556 lt!1156286))))))))

(declare-fun b!3401523 () Bool)

(declare-fun res!1376345 () Bool)

(assert (=> b!3401523 (=> (not res!1376345) (not e!2111462))))

(assert (=> b!3401523 (= res!1376345 (isBalanced!3377 (right!29164 (c!579556 lt!1156286))))))

(declare-fun b!3401524 () Bool)

(declare-fun res!1376347 () Bool)

(assert (=> b!3401524 (=> (not res!1376347) (not e!2111462))))

(assert (=> b!3401524 (= res!1376347 (<= (- (height!1676 (left!28834 (c!579556 lt!1156286))) (height!1676 (right!29164 (c!579556 lt!1156286)))) 1))))

(declare-fun b!3401525 () Bool)

(declare-fun res!1376348 () Bool)

(assert (=> b!3401525 (=> (not res!1376348) (not e!2111462))))

(assert (=> b!3401525 (= res!1376348 (isBalanced!3377 (left!28834 (c!579556 lt!1156286))))))

(assert (= (and d!967871 (not res!1376350)) b!3401522))

(assert (= (and b!3401522 res!1376349) b!3401524))

(assert (= (and b!3401524 res!1376347) b!3401525))

(assert (= (and b!3401525 res!1376348) b!3401523))

(assert (= (and b!3401523 res!1376345) b!3401521))

(assert (= (and b!3401521 res!1376346) b!3401520))

(declare-fun m!3774609 () Bool)

(assert (=> b!3401524 m!3774609))

(declare-fun m!3774611 () Bool)

(assert (=> b!3401524 m!3774611))

(assert (=> b!3401522 m!3774609))

(assert (=> b!3401522 m!3774611))

(declare-fun m!3774613 () Bool)

(assert (=> b!3401520 m!3774613))

(declare-fun m!3774615 () Bool)

(assert (=> b!3401525 m!3774615))

(declare-fun m!3774617 () Bool)

(assert (=> b!3401521 m!3774617))

(declare-fun m!3774619 () Bool)

(assert (=> b!3401523 m!3774619))

(assert (=> b!3400304 d!967871))

(declare-fun d!967873 () Bool)

(declare-fun c!579875 () Bool)

(assert (=> d!967873 (= c!579875 ((_ is Nil!36983) lt!1156239))))

(declare-fun e!2111463 () (InoxSet C!20504))

(assert (=> d!967873 (= (content!5117 lt!1156239) e!2111463)))

(declare-fun b!3401526 () Bool)

(assert (=> b!3401526 (= e!2111463 ((as const (Array C!20504 Bool)) false))))

(declare-fun b!3401527 () Bool)

(assert (=> b!3401527 (= e!2111463 ((_ map or) (store ((as const (Array C!20504 Bool)) false) (h!42403 lt!1156239) true) (content!5117 (t!265784 lt!1156239))))))

(assert (= (and d!967873 c!579875) b!3401526))

(assert (= (and d!967873 (not c!579875)) b!3401527))

(declare-fun m!3774621 () Bool)

(assert (=> b!3401527 m!3774621))

(declare-fun m!3774623 () Bool)

(assert (=> b!3401527 m!3774623))

(assert (=> d!967179 d!967873))

(declare-fun d!967875 () Bool)

(declare-fun c!579876 () Bool)

(assert (=> d!967875 (= c!579876 ((_ is Nil!36983) (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140)))))

(declare-fun e!2111464 () (InoxSet C!20504))

(assert (=> d!967875 (= (content!5117 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140)) e!2111464)))

(declare-fun b!3401528 () Bool)

(assert (=> b!3401528 (= e!2111464 ((as const (Array C!20504 Bool)) false))))

(declare-fun b!3401529 () Bool)

(assert (=> b!3401529 (= e!2111464 ((_ map or) (store ((as const (Array C!20504 Bool)) false) (h!42403 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140)) true) (content!5117 (t!265784 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140)))))))

(assert (= (and d!967875 c!579876) b!3401528))

(assert (= (and d!967875 (not c!579876)) b!3401529))

(declare-fun m!3774625 () Bool)

(assert (=> b!3401529 m!3774625))

(assert (=> b!3401529 m!3774489))

(assert (=> d!967179 d!967875))

(declare-fun c!579877 () Bool)

(declare-fun d!967877 () Bool)

(assert (=> d!967877 (= c!579877 ((_ is Nil!36983) (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)))))

(declare-fun e!2111465 () (InoxSet C!20504))

(assert (=> d!967877 (= (content!5117 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)) e!2111465)))

(declare-fun b!3401530 () Bool)

(assert (=> b!3401530 (= e!2111465 ((as const (Array C!20504 Bool)) false))))

(declare-fun b!3401531 () Bool)

(assert (=> b!3401531 (= e!2111465 ((_ map or) (store ((as const (Array C!20504 Bool)) false) (h!42403 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)) true) (content!5117 (t!265784 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)))))))

(assert (= (and d!967877 c!579877) b!3401530))

(assert (= (and d!967877 (not c!579877)) b!3401531))

(declare-fun m!3774627 () Bool)

(assert (=> b!3401531 m!3774627))

(declare-fun m!3774629 () Bool)

(assert (=> b!3401531 m!3774629))

(assert (=> d!967179 d!967877))

(declare-fun d!967879 () Bool)

(declare-fun lt!1156837 () Int)

(assert (=> d!967879 (>= lt!1156837 0)))

(declare-fun e!2111466 () Int)

(assert (=> d!967879 (= lt!1156837 e!2111466)))

(declare-fun c!579878 () Bool)

(assert (=> d!967879 (= c!579878 ((_ is Nil!36983) lt!1156239))))

(assert (=> d!967879 (= (size!28005 lt!1156239) lt!1156837)))

(declare-fun b!3401532 () Bool)

(assert (=> b!3401532 (= e!2111466 0)))

(declare-fun b!3401533 () Bool)

(assert (=> b!3401533 (= e!2111466 (+ 1 (size!28005 (t!265784 lt!1156239))))))

(assert (= (and d!967879 c!579878) b!3401532))

(assert (= (and d!967879 (not c!579878)) b!3401533))

(declare-fun m!3774631 () Bool)

(assert (=> b!3401533 m!3774631))

(assert (=> b!3400250 d!967879))

(declare-fun d!967881 () Bool)

(declare-fun lt!1156838 () Int)

(assert (=> d!967881 (>= lt!1156838 0)))

(declare-fun e!2111467 () Int)

(assert (=> d!967881 (= lt!1156838 e!2111467)))

(declare-fun c!579879 () Bool)

(assert (=> d!967881 (= c!579879 ((_ is Nil!36983) (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140)))))

(assert (=> d!967881 (= (size!28005 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140)) lt!1156838)))

(declare-fun b!3401534 () Bool)

(assert (=> b!3401534 (= e!2111467 0)))

(declare-fun b!3401535 () Bool)

(assert (=> b!3401535 (= e!2111467 (+ 1 (size!28005 (t!265784 (++!9069 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))) lt!1156140)))))))

(assert (= (and d!967881 c!579879) b!3401534))

(assert (= (and d!967881 (not c!579879)) b!3401535))

(assert (=> b!3401535 m!3774483))

(assert (=> b!3400250 d!967881))

(declare-fun d!967883 () Bool)

(declare-fun lt!1156839 () Int)

(assert (=> d!967883 (>= lt!1156839 0)))

(declare-fun e!2111468 () Int)

(assert (=> d!967883 (= lt!1156839 e!2111468)))

(declare-fun c!579880 () Bool)

(assert (=> d!967883 (= c!579880 ((_ is Nil!36983) (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)))))

(assert (=> d!967883 (= (size!28005 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)) lt!1156839)))

(declare-fun b!3401536 () Bool)

(assert (=> b!3401536 (= e!2111468 0)))

(declare-fun b!3401537 () Bool)

(assert (=> b!3401537 (= e!2111468 (+ 1 (size!28005 (t!265784 (printWithSeparatorTokenList!276 thiss!18206 (t!265786 (t!265786 tokens!494)) separatorToken!241)))))))

(assert (= (and d!967883 c!579880) b!3401536))

(assert (= (and d!967883 (not c!579880)) b!3401537))

(declare-fun m!3774633 () Bool)

(assert (=> b!3401537 m!3774633))

(assert (=> b!3400250 d!967883))

(declare-fun b!3401538 () Bool)

(declare-fun e!2111471 () Bool)

(declare-fun e!2111470 () Bool)

(assert (=> b!3401538 (= e!2111471 e!2111470)))

(declare-fun res!1376357 () Bool)

(assert (=> b!3401538 (=> (not res!1376357) (not e!2111470))))

(declare-fun lt!1156844 () Option!7440)

(assert (=> b!3401538 (= res!1376357 (isDefined!5742 lt!1156844))))

(declare-fun b!3401539 () Bool)

(assert (=> b!3401539 (= e!2111470 (contains!6797 (t!265785 rules!2135) (rule!7962 (_1!21442 (get!11811 lt!1156844)))))))

(declare-fun b!3401540 () Bool)

(declare-fun res!1376352 () Bool)

(assert (=> b!3401540 (=> (not res!1376352) (not e!2111470))))

(assert (=> b!3401540 (= res!1376352 (= (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156844)))) (originalCharacters!6114 (_1!21442 (get!11811 lt!1156844)))))))

(declare-fun b!3401541 () Bool)

(declare-fun e!2111469 () Option!7440)

(declare-fun lt!1156842 () Option!7440)

(declare-fun lt!1156841 () Option!7440)

(assert (=> b!3401541 (= e!2111469 (ite (and ((_ is None!7439) lt!1156842) ((_ is None!7439) lt!1156841)) None!7439 (ite ((_ is None!7439) lt!1156841) lt!1156842 (ite ((_ is None!7439) lt!1156842) lt!1156841 (ite (>= (size!27999 (_1!21442 (v!36611 lt!1156842))) (size!27999 (_1!21442 (v!36611 lt!1156841)))) lt!1156842 lt!1156841)))))))

(declare-fun call!245860 () Option!7440)

(assert (=> b!3401541 (= lt!1156842 call!245860)))

(assert (=> b!3401541 (= lt!1156841 (maxPrefix!2555 thiss!18206 (t!265785 (t!265785 rules!2135)) lt!1156137))))

(declare-fun b!3401543 () Bool)

(declare-fun res!1376354 () Bool)

(assert (=> b!3401543 (=> (not res!1376354) (not e!2111470))))

(assert (=> b!3401543 (= res!1376354 (matchR!4743 (regex!5400 (rule!7962 (_1!21442 (get!11811 lt!1156844)))) (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156844))))))))

(declare-fun b!3401544 () Bool)

(declare-fun res!1376353 () Bool)

(assert (=> b!3401544 (=> (not res!1376353) (not e!2111470))))

(assert (=> b!3401544 (= res!1376353 (< (size!28005 (_2!21442 (get!11811 lt!1156844))) (size!28005 lt!1156137)))))

(declare-fun b!3401545 () Bool)

(declare-fun res!1376351 () Bool)

(assert (=> b!3401545 (=> (not res!1376351) (not e!2111470))))

(assert (=> b!3401545 (= res!1376351 (= (value!174360 (_1!21442 (get!11811 lt!1156844))) (apply!8635 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156844)))) (seqFromList!3853 (originalCharacters!6114 (_1!21442 (get!11811 lt!1156844)))))))))

(declare-fun bm!245855 () Bool)

(assert (=> bm!245855 (= call!245860 (maxPrefixOneRule!1704 thiss!18206 (h!42404 (t!265785 rules!2135)) lt!1156137))))

(declare-fun b!3401546 () Bool)

(declare-fun res!1376355 () Bool)

(assert (=> b!3401546 (=> (not res!1376355) (not e!2111470))))

(assert (=> b!3401546 (= res!1376355 (= (++!9069 (list!13409 (charsOf!3414 (_1!21442 (get!11811 lt!1156844)))) (_2!21442 (get!11811 lt!1156844))) lt!1156137))))

(declare-fun d!967885 () Bool)

(assert (=> d!967885 e!2111471))

(declare-fun res!1376356 () Bool)

(assert (=> d!967885 (=> res!1376356 e!2111471)))

(assert (=> d!967885 (= res!1376356 (isEmpty!21259 lt!1156844))))

(assert (=> d!967885 (= lt!1156844 e!2111469)))

(declare-fun c!579881 () Bool)

(assert (=> d!967885 (= c!579881 (and ((_ is Cons!36984) (t!265785 rules!2135)) ((_ is Nil!36984) (t!265785 (t!265785 rules!2135)))))))

(declare-fun lt!1156840 () Unit!52148)

(declare-fun lt!1156843 () Unit!52148)

(assert (=> d!967885 (= lt!1156840 lt!1156843)))

(assert (=> d!967885 (isPrefix!2834 lt!1156137 lt!1156137)))

(assert (=> d!967885 (= lt!1156843 (lemmaIsPrefixRefl!1793 lt!1156137 lt!1156137))))

(assert (=> d!967885 (rulesValidInductive!1843 thiss!18206 (t!265785 rules!2135))))

(assert (=> d!967885 (= (maxPrefix!2555 thiss!18206 (t!265785 rules!2135) lt!1156137) lt!1156844)))

(declare-fun b!3401542 () Bool)

(assert (=> b!3401542 (= e!2111469 call!245860)))

(assert (= (and d!967885 c!579881) b!3401542))

(assert (= (and d!967885 (not c!579881)) b!3401541))

(assert (= (or b!3401542 b!3401541) bm!245855))

(assert (= (and d!967885 (not res!1376356)) b!3401538))

(assert (= (and b!3401538 res!1376357) b!3401540))

(assert (= (and b!3401540 res!1376352) b!3401544))

(assert (= (and b!3401544 res!1376353) b!3401546))

(assert (= (and b!3401546 res!1376355) b!3401545))

(assert (= (and b!3401545 res!1376351) b!3401543))

(assert (= (and b!3401543 res!1376354) b!3401539))

(declare-fun m!3774635 () Bool)

(assert (=> b!3401546 m!3774635))

(declare-fun m!3774637 () Bool)

(assert (=> b!3401546 m!3774637))

(assert (=> b!3401546 m!3774637))

(declare-fun m!3774639 () Bool)

(assert (=> b!3401546 m!3774639))

(assert (=> b!3401546 m!3774639))

(declare-fun m!3774641 () Bool)

(assert (=> b!3401546 m!3774641))

(declare-fun m!3774643 () Bool)

(assert (=> bm!245855 m!3774643))

(declare-fun m!3774645 () Bool)

(assert (=> d!967885 m!3774645))

(assert (=> d!967885 m!3772791))

(assert (=> d!967885 m!3772793))

(assert (=> d!967885 m!3774535))

(assert (=> b!3401539 m!3774635))

(declare-fun m!3774647 () Bool)

(assert (=> b!3401539 m!3774647))

(assert (=> b!3401543 m!3774635))

(assert (=> b!3401543 m!3774637))

(assert (=> b!3401543 m!3774637))

(assert (=> b!3401543 m!3774639))

(assert (=> b!3401543 m!3774639))

(declare-fun m!3774649 () Bool)

(assert (=> b!3401543 m!3774649))

(assert (=> b!3401540 m!3774635))

(assert (=> b!3401540 m!3774637))

(assert (=> b!3401540 m!3774637))

(assert (=> b!3401540 m!3774639))

(assert (=> b!3401544 m!3774635))

(declare-fun m!3774651 () Bool)

(assert (=> b!3401544 m!3774651))

(assert (=> b!3401544 m!3772737))

(declare-fun m!3774653 () Bool)

(assert (=> b!3401538 m!3774653))

(assert (=> b!3401545 m!3774635))

(declare-fun m!3774655 () Bool)

(assert (=> b!3401545 m!3774655))

(assert (=> b!3401545 m!3774655))

(declare-fun m!3774657 () Bool)

(assert (=> b!3401545 m!3774657))

(declare-fun m!3774659 () Bool)

(assert (=> b!3401541 m!3774659))

(assert (=> b!3400390 d!967885))

(declare-fun d!967887 () Bool)

(declare-fun charsToBigInt!1 (List!37106) Int)

(assert (=> d!967887 (= (inv!17 (value!174360 (h!42405 tokens!494))) (= (charsToBigInt!1 (text!39858 (value!174360 (h!42405 tokens!494)))) (value!174352 (value!174360 (h!42405 tokens!494)))))))

(declare-fun bs!556334 () Bool)

(assert (= bs!556334 d!967887))

(declare-fun m!3774661 () Bool)

(assert (=> bs!556334 m!3774661))

(assert (=> b!3400330 d!967887))

(declare-fun d!967889 () Bool)

(declare-fun lt!1156845 () Bool)

(assert (=> d!967889 (= lt!1156845 (select (content!5120 tokens!494) (h!42405 (t!265786 tokens!494))))))

(declare-fun e!2111473 () Bool)

(assert (=> d!967889 (= lt!1156845 e!2111473)))

(declare-fun res!1376358 () Bool)

(assert (=> d!967889 (=> (not res!1376358) (not e!2111473))))

(assert (=> d!967889 (= res!1376358 ((_ is Cons!36985) tokens!494))))

(assert (=> d!967889 (= (contains!6795 tokens!494 (h!42405 (t!265786 tokens!494))) lt!1156845)))

(declare-fun b!3401547 () Bool)

(declare-fun e!2111472 () Bool)

(assert (=> b!3401547 (= e!2111473 e!2111472)))

(declare-fun res!1376359 () Bool)

(assert (=> b!3401547 (=> res!1376359 e!2111472)))

(assert (=> b!3401547 (= res!1376359 (= (h!42405 tokens!494) (h!42405 (t!265786 tokens!494))))))

(declare-fun b!3401548 () Bool)

(assert (=> b!3401548 (= e!2111472 (contains!6795 (t!265786 tokens!494) (h!42405 (t!265786 tokens!494))))))

(assert (= (and d!967889 res!1376358) b!3401547))

(assert (= (and b!3401547 (not res!1376359)) b!3401548))

(assert (=> d!967889 m!3773889))

(declare-fun m!3774663 () Bool)

(assert (=> d!967889 m!3774663))

(declare-fun m!3774665 () Bool)

(assert (=> b!3401548 m!3774665))

(assert (=> b!3400222 d!967889))

(declare-fun bs!556335 () Bool)

(declare-fun d!967891 () Bool)

(assert (= bs!556335 (and d!967891 d!967431)))

(declare-fun lambda!121009 () Int)

(assert (=> bs!556335 (= (= (toValue!7604 (transformation!5400 (h!42404 rules!2135))) (toValue!7604 (transformation!5400 (rule!7962 separatorToken!241)))) (= lambda!121009 lambda!120984))))

(declare-fun bs!556336 () Bool)

(assert (= bs!556336 (and d!967891 d!967799)))

(assert (=> bs!556336 (= (= (toValue!7604 (transformation!5400 (h!42404 rules!2135))) (toValue!7604 (transformation!5400 (rule!7962 (h!42405 tokens!494))))) (= lambda!121009 lambda!121004))))

(assert (=> d!967891 true))

(assert (=> d!967891 (< (dynLambda!15440 order!19541 (toValue!7604 (transformation!5400 (h!42404 rules!2135)))) (dynLambda!15448 order!19553 lambda!121009))))

(assert (=> d!967891 (= (equivClasses!2156 (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toValue!7604 (transformation!5400 (h!42404 rules!2135)))) (Forall2!924 lambda!121009))))

(declare-fun bs!556337 () Bool)

(assert (= bs!556337 d!967891))

(declare-fun m!3774667 () Bool)

(assert (=> bs!556337 m!3774667))

(assert (=> b!3400313 d!967891))

(declare-fun b!3401550 () Bool)

(declare-fun e!2111474 () List!37107)

(declare-fun e!2111475 () List!37107)

(assert (=> b!3401550 (= e!2111474 e!2111475)))

(declare-fun c!579883 () Bool)

(assert (=> b!3401550 (= c!579883 ((_ is Leaf!17486) (c!579555 (charsOf!3414 separatorToken!241))))))

(declare-fun b!3401551 () Bool)

(assert (=> b!3401551 (= e!2111475 (list!13417 (xs!14333 (c!579555 (charsOf!3414 separatorToken!241)))))))

(declare-fun b!3401549 () Bool)

(assert (=> b!3401549 (= e!2111474 Nil!36983)))

(declare-fun d!967893 () Bool)

(declare-fun c!579882 () Bool)

(assert (=> d!967893 (= c!579882 ((_ is Empty!11175) (c!579555 (charsOf!3414 separatorToken!241))))))

(assert (=> d!967893 (= (list!13413 (c!579555 (charsOf!3414 separatorToken!241))) e!2111474)))

(declare-fun b!3401552 () Bool)

(assert (=> b!3401552 (= e!2111475 (++!9069 (list!13413 (left!28833 (c!579555 (charsOf!3414 separatorToken!241)))) (list!13413 (right!29163 (c!579555 (charsOf!3414 separatorToken!241))))))))

(assert (= (and d!967893 c!579882) b!3401549))

(assert (= (and d!967893 (not c!579882)) b!3401550))

(assert (= (and b!3401550 c!579883) b!3401551))

(assert (= (and b!3401550 (not c!579883)) b!3401552))

(declare-fun m!3774669 () Bool)

(assert (=> b!3401551 m!3774669))

(declare-fun m!3774671 () Bool)

(assert (=> b!3401552 m!3774671))

(declare-fun m!3774673 () Bool)

(assert (=> b!3401552 m!3774673))

(assert (=> b!3401552 m!3774671))

(assert (=> b!3401552 m!3774673))

(declare-fun m!3774675 () Bool)

(assert (=> b!3401552 m!3774675))

(assert (=> d!967191 d!967893))

(declare-fun d!967895 () Bool)

(declare-fun c!579884 () Bool)

(assert (=> d!967895 (= c!579884 ((_ is Nil!36983) lt!1156287))))

(declare-fun e!2111476 () (InoxSet C!20504))

(assert (=> d!967895 (= (content!5117 lt!1156287) e!2111476)))

(declare-fun b!3401553 () Bool)

(assert (=> b!3401553 (= e!2111476 ((as const (Array C!20504 Bool)) false))))

(declare-fun b!3401554 () Bool)

(assert (=> b!3401554 (= e!2111476 ((_ map or) (store ((as const (Array C!20504 Bool)) false) (h!42403 lt!1156287) true) (content!5117 (t!265784 lt!1156287))))))

(assert (= (and d!967895 c!579884) b!3401553))

(assert (= (and d!967895 (not c!579884)) b!3401554))

(declare-fun m!3774677 () Bool)

(assert (=> b!3401554 m!3774677))

(declare-fun m!3774679 () Bool)

(assert (=> b!3401554 m!3774679))

(assert (=> d!967215 d!967895))

(declare-fun d!967897 () Bool)

(declare-fun c!579885 () Bool)

(assert (=> d!967897 (= c!579885 ((_ is Nil!36983) (++!9069 lt!1156137 lt!1156140)))))

(declare-fun e!2111477 () (InoxSet C!20504))

(assert (=> d!967897 (= (content!5117 (++!9069 lt!1156137 lt!1156140)) e!2111477)))

(declare-fun b!3401555 () Bool)

(assert (=> b!3401555 (= e!2111477 ((as const (Array C!20504 Bool)) false))))

(declare-fun b!3401556 () Bool)

(assert (=> b!3401556 (= e!2111477 ((_ map or) (store ((as const (Array C!20504 Bool)) false) (h!42403 (++!9069 lt!1156137 lt!1156140)) true) (content!5117 (t!265784 (++!9069 lt!1156137 lt!1156140)))))))

(assert (= (and d!967897 c!579885) b!3401555))

(assert (= (and d!967897 (not c!579885)) b!3401556))

(declare-fun m!3774681 () Bool)

(assert (=> b!3401556 m!3774681))

(declare-fun m!3774683 () Bool)

(assert (=> b!3401556 m!3774683))

(assert (=> d!967215 d!967897))

(declare-fun d!967899 () Bool)

(declare-fun c!579886 () Bool)

(assert (=> d!967899 (= c!579886 ((_ is Nil!36983) lt!1156144))))

(declare-fun e!2111478 () (InoxSet C!20504))

(assert (=> d!967899 (= (content!5117 lt!1156144) e!2111478)))

(declare-fun b!3401557 () Bool)

(assert (=> b!3401557 (= e!2111478 ((as const (Array C!20504 Bool)) false))))

(declare-fun b!3401558 () Bool)

(assert (=> b!3401558 (= e!2111478 ((_ map or) (store ((as const (Array C!20504 Bool)) false) (h!42403 lt!1156144) true) (content!5117 (t!265784 lt!1156144))))))

(assert (= (and d!967899 c!579886) b!3401557))

(assert (= (and d!967899 (not c!579886)) b!3401558))

(declare-fun m!3774685 () Bool)

(assert (=> b!3401558 m!3774685))

(declare-fun m!3774687 () Bool)

(assert (=> b!3401558 m!3774687))

(assert (=> d!967215 d!967899))

(declare-fun d!967901 () Bool)

(declare-fun c!579887 () Bool)

(assert (=> d!967901 (= c!579887 ((_ is Nil!36983) lt!1156240))))

(declare-fun e!2111479 () (InoxSet C!20504))

(assert (=> d!967901 (= (content!5117 lt!1156240) e!2111479)))

(declare-fun b!3401559 () Bool)

(assert (=> b!3401559 (= e!2111479 ((as const (Array C!20504 Bool)) false))))

(declare-fun b!3401560 () Bool)

(assert (=> b!3401560 (= e!2111479 ((_ map or) (store ((as const (Array C!20504 Bool)) false) (h!42403 lt!1156240) true) (content!5117 (t!265784 lt!1156240))))))

(assert (= (and d!967901 c!579887) b!3401559))

(assert (= (and d!967901 (not c!579887)) b!3401560))

(declare-fun m!3774689 () Bool)

(assert (=> b!3401560 m!3774689))

(declare-fun m!3774691 () Bool)

(assert (=> b!3401560 m!3774691))

(assert (=> d!967181 d!967901))

(declare-fun d!967903 () Bool)

(declare-fun c!579888 () Bool)

(assert (=> d!967903 (= c!579888 ((_ is Nil!36983) (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))))))

(declare-fun e!2111480 () (InoxSet C!20504))

(assert (=> d!967903 (= (content!5117 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))) e!2111480)))

(declare-fun b!3401561 () Bool)

(assert (=> b!3401561 (= e!2111480 ((as const (Array C!20504 Bool)) false))))

(declare-fun b!3401562 () Bool)

(assert (=> b!3401562 (= e!2111480 ((_ map or) (store ((as const (Array C!20504 Bool)) false) (h!42403 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))) true) (content!5117 (t!265784 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))))))))

(assert (= (and d!967903 c!579888) b!3401561))

(assert (= (and d!967903 (not c!579888)) b!3401562))

(declare-fun m!3774693 () Bool)

(assert (=> b!3401562 m!3774693))

(declare-fun m!3774695 () Bool)

(assert (=> b!3401562 m!3774695))

(assert (=> d!967181 d!967903))

(assert (=> d!967181 d!967499))

(declare-fun d!967905 () Bool)

(declare-fun c!579889 () Bool)

(assert (=> d!967905 (= c!579889 ((_ is Nil!36983) lt!1156238))))

(declare-fun e!2111481 () (InoxSet C!20504))

(assert (=> d!967905 (= (content!5117 lt!1156238) e!2111481)))

(declare-fun b!3401563 () Bool)

(assert (=> b!3401563 (= e!2111481 ((as const (Array C!20504 Bool)) false))))

(declare-fun b!3401564 () Bool)

(assert (=> b!3401564 (= e!2111481 ((_ map or) (store ((as const (Array C!20504 Bool)) false) (h!42403 lt!1156238) true) (content!5117 (t!265784 lt!1156238))))))

(assert (= (and d!967905 c!579889) b!3401563))

(assert (= (and d!967905 (not c!579889)) b!3401564))

(declare-fun m!3774697 () Bool)

(assert (=> b!3401564 m!3774697))

(declare-fun m!3774699 () Bool)

(assert (=> b!3401564 m!3774699))

(assert (=> d!967177 d!967905))

(assert (=> d!967177 d!967499))

(assert (=> d!967177 d!967899))

(declare-fun b!3401567 () Bool)

(declare-fun res!1376361 () Bool)

(declare-fun e!2111483 () Bool)

(assert (=> b!3401567 (=> (not res!1376361) (not e!2111483))))

(declare-fun lt!1156846 () List!37107)

(assert (=> b!3401567 (= res!1376361 (= (size!28005 lt!1156846) (+ (size!28005 (t!265784 (++!9069 lt!1156137 lt!1156140))) (size!28005 lt!1156144))))))

(declare-fun e!2111482 () List!37107)

(declare-fun b!3401566 () Bool)

(assert (=> b!3401566 (= e!2111482 (Cons!36983 (h!42403 (t!265784 (++!9069 lt!1156137 lt!1156140))) (++!9069 (t!265784 (t!265784 (++!9069 lt!1156137 lt!1156140))) lt!1156144)))))

(declare-fun b!3401568 () Bool)

(assert (=> b!3401568 (= e!2111483 (or (not (= lt!1156144 Nil!36983)) (= lt!1156846 (t!265784 (++!9069 lt!1156137 lt!1156140)))))))

(declare-fun d!967907 () Bool)

(assert (=> d!967907 e!2111483))

(declare-fun res!1376360 () Bool)

(assert (=> d!967907 (=> (not res!1376360) (not e!2111483))))

(assert (=> d!967907 (= res!1376360 (= (content!5117 lt!1156846) ((_ map or) (content!5117 (t!265784 (++!9069 lt!1156137 lt!1156140))) (content!5117 lt!1156144))))))

(assert (=> d!967907 (= lt!1156846 e!2111482)))

(declare-fun c!579890 () Bool)

(assert (=> d!967907 (= c!579890 ((_ is Nil!36983) (t!265784 (++!9069 lt!1156137 lt!1156140))))))

(assert (=> d!967907 (= (++!9069 (t!265784 (++!9069 lt!1156137 lt!1156140)) lt!1156144) lt!1156846)))

(declare-fun b!3401565 () Bool)

(assert (=> b!3401565 (= e!2111482 lt!1156144)))

(assert (= (and d!967907 c!579890) b!3401565))

(assert (= (and d!967907 (not c!579890)) b!3401566))

(assert (= (and d!967907 res!1376360) b!3401567))

(assert (= (and b!3401567 res!1376361) b!3401568))

(declare-fun m!3774701 () Bool)

(assert (=> b!3401567 m!3774701))

(assert (=> b!3401567 m!3773603))

(assert (=> b!3401567 m!3772561))

(declare-fun m!3774703 () Bool)

(assert (=> b!3401566 m!3774703))

(declare-fun m!3774705 () Bool)

(assert (=> d!967907 m!3774705))

(assert (=> d!967907 m!3774683))

(assert (=> d!967907 m!3772569))

(assert (=> b!3400316 d!967907))

(declare-fun d!967909 () Bool)

(declare-fun lt!1156847 () Bool)

(assert (=> d!967909 (= lt!1156847 (isEmpty!21258 (list!13409 (_2!21443 lt!1156234))))))

(assert (=> d!967909 (= lt!1156847 (isEmpty!21261 (c!579555 (_2!21443 lt!1156234))))))

(assert (=> d!967909 (= (isEmpty!21254 (_2!21443 lt!1156234)) lt!1156847)))

(declare-fun bs!556338 () Bool)

(assert (= bs!556338 d!967909))

(declare-fun m!3774707 () Bool)

(assert (=> bs!556338 m!3774707))

(assert (=> bs!556338 m!3774707))

(declare-fun m!3774709 () Bool)

(assert (=> bs!556338 m!3774709))

(declare-fun m!3774711 () Bool)

(assert (=> bs!556338 m!3774711))

(assert (=> b!3400228 d!967909))

(declare-fun b!3401570 () Bool)

(declare-fun e!2111484 () List!37107)

(declare-fun e!2111485 () List!37107)

(assert (=> b!3401570 (= e!2111484 e!2111485)))

(declare-fun c!579892 () Bool)

(assert (=> b!3401570 (= c!579892 ((_ is Leaf!17486) (c!579555 (charsOf!3414 (h!42405 (t!265786 tokens!494))))))))

(declare-fun b!3401571 () Bool)

(assert (=> b!3401571 (= e!2111485 (list!13417 (xs!14333 (c!579555 (charsOf!3414 (h!42405 (t!265786 tokens!494)))))))))

(declare-fun b!3401569 () Bool)

(assert (=> b!3401569 (= e!2111484 Nil!36983)))

(declare-fun d!967911 () Bool)

(declare-fun c!579891 () Bool)

(assert (=> d!967911 (= c!579891 ((_ is Empty!11175) (c!579555 (charsOf!3414 (h!42405 (t!265786 tokens!494))))))))

(assert (=> d!967911 (= (list!13413 (c!579555 (charsOf!3414 (h!42405 (t!265786 tokens!494))))) e!2111484)))

(declare-fun b!3401572 () Bool)

(assert (=> b!3401572 (= e!2111485 (++!9069 (list!13413 (left!28833 (c!579555 (charsOf!3414 (h!42405 (t!265786 tokens!494)))))) (list!13413 (right!29163 (c!579555 (charsOf!3414 (h!42405 (t!265786 tokens!494))))))))))

(assert (= (and d!967911 c!579891) b!3401569))

(assert (= (and d!967911 (not c!579891)) b!3401570))

(assert (= (and b!3401570 c!579892) b!3401571))

(assert (= (and b!3401570 (not c!579892)) b!3401572))

(declare-fun m!3774713 () Bool)

(assert (=> b!3401571 m!3774713))

(declare-fun m!3774715 () Bool)

(assert (=> b!3401572 m!3774715))

(declare-fun m!3774717 () Bool)

(assert (=> b!3401572 m!3774717))

(assert (=> b!3401572 m!3774715))

(assert (=> b!3401572 m!3774717))

(declare-fun m!3774719 () Bool)

(assert (=> b!3401572 m!3774719))

(assert (=> d!967185 d!967911))

(declare-fun b!3401575 () Bool)

(declare-fun res!1376363 () Bool)

(declare-fun e!2111487 () Bool)

(assert (=> b!3401575 (=> (not res!1376363) (not e!2111487))))

(declare-fun lt!1156848 () List!37107)

(assert (=> b!3401575 (= res!1376363 (= (size!28005 lt!1156848) (+ (size!28005 (t!265784 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))))) (size!28005 lt!1156140))))))

(declare-fun b!3401574 () Bool)

(declare-fun e!2111486 () List!37107)

(assert (=> b!3401574 (= e!2111486 (Cons!36983 (h!42403 (t!265784 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))))) (++!9069 (t!265784 (t!265784 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))))) lt!1156140)))))

(declare-fun b!3401576 () Bool)

(assert (=> b!3401576 (= e!2111487 (or (not (= lt!1156140 Nil!36983)) (= lt!1156848 (t!265784 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))))))))

(declare-fun d!967913 () Bool)

(assert (=> d!967913 e!2111487))

(declare-fun res!1376362 () Bool)

(assert (=> d!967913 (=> (not res!1376362) (not e!2111487))))

(assert (=> d!967913 (= res!1376362 (= (content!5117 lt!1156848) ((_ map or) (content!5117 (t!265784 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))))) (content!5117 lt!1156140))))))

(assert (=> d!967913 (= lt!1156848 e!2111486)))

(declare-fun c!579893 () Bool)

(assert (=> d!967913 (= c!579893 ((_ is Nil!36983) (t!265784 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494)))))))))

(assert (=> d!967913 (= (++!9069 (t!265784 (list!13409 (charsOf!3414 (h!42405 (t!265786 tokens!494))))) lt!1156140) lt!1156848)))

(declare-fun b!3401573 () Bool)

(assert (=> b!3401573 (= e!2111486 lt!1156140)))

(assert (= (and d!967913 c!579893) b!3401573))

(assert (= (and d!967913 (not c!579893)) b!3401574))

(assert (= (and d!967913 res!1376362) b!3401575))

(assert (= (and b!3401575 res!1376363) b!3401576))

(declare-fun m!3774721 () Bool)

(assert (=> b!3401575 m!3774721))

(assert (=> b!3401575 m!3773609))

(assert (=> b!3401575 m!3772559))

(declare-fun m!3774723 () Bool)

(assert (=> b!3401574 m!3774723))

(declare-fun m!3774725 () Bool)

(assert (=> d!967913 m!3774725))

(assert (=> d!967913 m!3774695))

(assert (=> d!967913 m!3772567))

(assert (=> b!3400253 d!967913))

(declare-fun d!967915 () Bool)

(assert (=> d!967915 (= (dropList!1179 lt!1156135 0) (drop!1979 (list!13415 (c!579556 lt!1156135)) 0))))

(declare-fun bs!556339 () Bool)

(assert (= bs!556339 d!967915))

(assert (=> bs!556339 m!3773737))

(assert (=> bs!556339 m!3773737))

(declare-fun m!3774727 () Bool)

(assert (=> bs!556339 m!3774727))

(assert (=> d!967197 d!967915))

(declare-fun d!967917 () Bool)

(assert (=> d!967917 (= (list!13409 (BalanceConc!21965 Empty!11175)) (list!13413 (c!579555 (BalanceConc!21965 Empty!11175))))))

(declare-fun bs!556340 () Bool)

(assert (= bs!556340 d!967917))

(declare-fun m!3774729 () Bool)

(assert (=> bs!556340 m!3774729))

(assert (=> d!967197 d!967917))

(assert (=> d!967197 d!967853))

(declare-fun d!967919 () Bool)

(assert (=> d!967919 (= (list!13409 lt!1156280) (list!13413 (c!579555 lt!1156280)))))

(declare-fun bs!556341 () Bool)

(assert (= bs!556341 d!967919))

(declare-fun m!3774731 () Bool)

(assert (=> bs!556341 m!3774731))

(assert (=> d!967197 d!967919))

(declare-fun d!967921 () Bool)

(declare-fun lt!1156861 () List!37107)

(assert (=> d!967921 (= lt!1156861 (++!9069 (list!13409 (BalanceConc!21965 Empty!11175)) (printList!1537 thiss!18206 (dropList!1179 lt!1156135 0))))))

(declare-fun e!2111490 () List!37107)

(assert (=> d!967921 (= lt!1156861 e!2111490)))

(declare-fun c!579896 () Bool)

(assert (=> d!967921 (= c!579896 ((_ is Cons!36985) (dropList!1179 lt!1156135 0)))))

(assert (=> d!967921 (= (printListTailRec!662 thiss!18206 (dropList!1179 lt!1156135 0) (list!13409 (BalanceConc!21965 Empty!11175))) lt!1156861)))

(declare-fun b!3401581 () Bool)

(assert (=> b!3401581 (= e!2111490 (printListTailRec!662 thiss!18206 (t!265786 (dropList!1179 lt!1156135 0)) (++!9069 (list!13409 (BalanceConc!21965 Empty!11175)) (list!13409 (charsOf!3414 (h!42405 (dropList!1179 lt!1156135 0)))))))))

(declare-fun lt!1156860 () List!37107)

(assert (=> b!3401581 (= lt!1156860 (list!13409 (charsOf!3414 (h!42405 (dropList!1179 lt!1156135 0)))))))

(declare-fun lt!1156863 () List!37107)

(assert (=> b!3401581 (= lt!1156863 (printList!1537 thiss!18206 (t!265786 (dropList!1179 lt!1156135 0))))))

(declare-fun lt!1156859 () Unit!52148)

(assert (=> b!3401581 (= lt!1156859 (lemmaConcatAssociativity!1904 (list!13409 (BalanceConc!21965 Empty!11175)) lt!1156860 lt!1156863))))

(assert (=> b!3401581 (= (++!9069 (++!9069 (list!13409 (BalanceConc!21965 Empty!11175)) lt!1156860) lt!1156863) (++!9069 (list!13409 (BalanceConc!21965 Empty!11175)) (++!9069 lt!1156860 lt!1156863)))))

(declare-fun lt!1156862 () Unit!52148)

(assert (=> b!3401581 (= lt!1156862 lt!1156859)))

(declare-fun b!3401582 () Bool)

(assert (=> b!3401582 (= e!2111490 (list!13409 (BalanceConc!21965 Empty!11175)))))

(assert (= (and d!967921 c!579896) b!3401581))

(assert (= (and d!967921 (not c!579896)) b!3401582))

(assert (=> d!967921 m!3772663))

(declare-fun m!3774733 () Bool)

(assert (=> d!967921 m!3774733))

(assert (=> d!967921 m!3772665))

(assert (=> d!967921 m!3774733))

(declare-fun m!3774735 () Bool)

(assert (=> d!967921 m!3774735))

(declare-fun m!3774737 () Bool)

(assert (=> b!3401581 m!3774737))

(assert (=> b!3401581 m!3772665))

(declare-fun m!3774739 () Bool)

(assert (=> b!3401581 m!3774739))

(declare-fun m!3774741 () Bool)

(assert (=> b!3401581 m!3774741))

(declare-fun m!3774743 () Bool)

(assert (=> b!3401581 m!3774743))

(assert (=> b!3401581 m!3772665))

(declare-fun m!3774745 () Bool)

(assert (=> b!3401581 m!3774745))

(declare-fun m!3774747 () Bool)

(assert (=> b!3401581 m!3774747))

(assert (=> b!3401581 m!3772665))

(declare-fun m!3774749 () Bool)

(assert (=> b!3401581 m!3774749))

(assert (=> b!3401581 m!3774741))

(declare-fun m!3774751 () Bool)

(assert (=> b!3401581 m!3774751))

(declare-fun m!3774753 () Bool)

(assert (=> b!3401581 m!3774753))

(assert (=> b!3401581 m!3772665))

(assert (=> b!3401581 m!3774751))

(assert (=> b!3401581 m!3774745))

(declare-fun m!3774755 () Bool)

(assert (=> b!3401581 m!3774755))

(assert (=> b!3401581 m!3774737))

(assert (=> b!3401581 m!3774749))

(assert (=> d!967197 d!967921))

(declare-fun d!967923 () Bool)

(assert (=> d!967923 (= (list!13412 (singletonSeq!2496 separatorToken!241)) (list!13415 (c!579556 (singletonSeq!2496 separatorToken!241))))))

(declare-fun bs!556342 () Bool)

(assert (= bs!556342 d!967923))

(declare-fun m!3774757 () Bool)

(assert (=> bs!556342 m!3774757))

(assert (=> d!967087 d!967923))

(declare-fun d!967925 () Bool)

(assert (=> d!967925 (= (list!13412 (_1!21443 (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 separatorToken!241))))) (list!13415 (c!579556 (_1!21443 (lex!2315 thiss!18206 rules!2135 (print!2054 thiss!18206 (singletonSeq!2496 separatorToken!241)))))))))

(declare-fun bs!556343 () Bool)

(assert (= bs!556343 d!967925))

(declare-fun m!3774759 () Bool)

(assert (=> bs!556343 m!3774759))

(assert (=> d!967087 d!967925))

(assert (=> d!967087 d!967445))

(declare-fun d!967927 () Bool)

(declare-fun lt!1156864 () Int)

(assert (=> d!967927 (= lt!1156864 (size!28008 (list!13412 (_1!21443 lt!1156178))))))

(assert (=> d!967927 (= lt!1156864 (size!28009 (c!579556 (_1!21443 lt!1156178))))))

(assert (=> d!967927 (= (size!28003 (_1!21443 lt!1156178)) lt!1156864)))

(declare-fun bs!556344 () Bool)

(assert (= bs!556344 d!967927))

(assert (=> bs!556344 m!3774383))

(assert (=> bs!556344 m!3774383))

(declare-fun m!3774761 () Bool)

(assert (=> bs!556344 m!3774761))

(declare-fun m!3774763 () Bool)

(assert (=> bs!556344 m!3774763))

(assert (=> d!967087 d!967927))

(assert (=> d!967087 d!967441))

(assert (=> d!967087 d!967081))

(assert (=> d!967087 d!967439))

(declare-fun d!967929 () Bool)

(assert (=> d!967929 (dynLambda!15439 lambda!120961 (h!42405 (t!265786 tokens!494)))))

(assert (=> d!967929 true))

(declare-fun _$7!1257 () Unit!52148)

(assert (=> d!967929 (= (choose!19719 tokens!494 lambda!120961 (h!42405 (t!265786 tokens!494))) _$7!1257)))

(declare-fun b_lambda!97075 () Bool)

(assert (=> (not b_lambda!97075) (not d!967929)))

(declare-fun bs!556345 () Bool)

(assert (= bs!556345 d!967929))

(assert (=> bs!556345 m!3772523))

(assert (=> d!967167 d!967929))

(assert (=> d!967167 d!967085))

(declare-fun d!967931 () Bool)

(assert (=> d!967931 (= (inv!17 (value!174360 separatorToken!241)) (= (charsToBigInt!1 (text!39858 (value!174360 separatorToken!241))) (value!174352 (value!174360 separatorToken!241))))))

(declare-fun bs!556346 () Bool)

(assert (= bs!556346 d!967931))

(declare-fun m!3774765 () Bool)

(assert (=> bs!556346 m!3774765))

(assert (=> b!3400057 d!967931))

(assert (=> b!3400394 d!967639))

(declare-fun d!967933 () Bool)

(declare-fun dynLambda!15450 (Int BalanceConc!21964) TokenValue!5630)

(assert (=> d!967933 (= (apply!8635 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))) (seqFromList!3853 (originalCharacters!6114 (_1!21442 (get!11811 lt!1156307))))) (dynLambda!15450 (toValue!7604 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307))))) (seqFromList!3853 (originalCharacters!6114 (_1!21442 (get!11811 lt!1156307))))))))

(declare-fun b_lambda!97077 () Bool)

(assert (=> (not b_lambda!97077) (not d!967933)))

(declare-fun tb!182393 () Bool)

(declare-fun t!266000 () Bool)

(assert (=> (and b!3400466 (= (toValue!7604 (transformation!5400 (h!42404 (t!265785 rules!2135)))) (toValue!7604 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))) t!266000) tb!182393))

(declare-fun result!226050 () Bool)

(assert (=> tb!182393 (= result!226050 (inv!21 (dynLambda!15450 (toValue!7604 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307))))) (seqFromList!3853 (originalCharacters!6114 (_1!21442 (get!11811 lt!1156307)))))))))

(declare-fun m!3774767 () Bool)

(assert (=> tb!182393 m!3774767))

(assert (=> d!967933 t!266000))

(declare-fun b_and!237425 () Bool)

(assert (= b_and!237299 (and (=> t!266000 result!226050) b_and!237425)))

(declare-fun t!266002 () Bool)

(declare-fun tb!182395 () Bool)

(assert (=> (and b!3399970 (= (toValue!7604 (transformation!5400 (h!42404 rules!2135))) (toValue!7604 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))) t!266002) tb!182395))

(declare-fun result!226054 () Bool)

(assert (= result!226054 result!226050))

(assert (=> d!967933 t!266002))

(declare-fun b_and!237427 () Bool)

(assert (= b_and!237227 (and (=> t!266002 result!226054) b_and!237427)))

(declare-fun t!266004 () Bool)

(declare-fun tb!182397 () Bool)

(assert (=> (and b!3399977 (= (toValue!7604 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toValue!7604 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))) t!266004) tb!182397))

(declare-fun result!226056 () Bool)

(assert (= result!226056 result!226050))

(assert (=> d!967933 t!266004))

(declare-fun b_and!237429 () Bool)

(assert (= b_and!237223 (and (=> t!266004 result!226056) b_and!237429)))

(declare-fun tb!182399 () Bool)

(declare-fun t!266006 () Bool)

(assert (=> (and b!3400480 (= (toValue!7604 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (toValue!7604 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))) t!266006) tb!182399))

(declare-fun result!226058 () Bool)

(assert (= result!226058 result!226050))

(assert (=> d!967933 t!266006))

(declare-fun b_and!237431 () Bool)

(assert (= b_and!237303 (and (=> t!266006 result!226058) b_and!237431)))

(declare-fun tb!182401 () Bool)

(declare-fun t!266008 () Bool)

(assert (=> (and b!3399996 (= (toValue!7604 (transformation!5400 (rule!7962 separatorToken!241))) (toValue!7604 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))) t!266008) tb!182401))

(declare-fun result!226060 () Bool)

(assert (= result!226060 result!226050))

(assert (=> d!967933 t!266008))

(declare-fun b_and!237433 () Bool)

(assert (= b_and!237219 (and (=> t!266008 result!226060) b_and!237433)))

(assert (=> d!967933 m!3772805))

(declare-fun m!3774769 () Bool)

(assert (=> d!967933 m!3774769))

(assert (=> b!3400394 d!967933))

(declare-fun d!967935 () Bool)

(assert (=> d!967935 (= (seqFromList!3853 (originalCharacters!6114 (_1!21442 (get!11811 lt!1156307)))) (fromListB!1730 (originalCharacters!6114 (_1!21442 (get!11811 lt!1156307)))))))

(declare-fun bs!556347 () Bool)

(assert (= bs!556347 d!967935))

(declare-fun m!3774771 () Bool)

(assert (=> bs!556347 m!3774771))

(assert (=> b!3400394 d!967935))

(declare-fun d!967937 () Bool)

(assert (=> d!967937 (= (inv!16 (value!174360 (h!42405 tokens!494))) (= (charsToInt!0 (text!39857 (value!174360 (h!42405 tokens!494)))) (value!174351 (value!174360 (h!42405 tokens!494)))))))

(declare-fun bs!556348 () Bool)

(assert (= bs!556348 d!967937))

(declare-fun m!3774773 () Bool)

(assert (=> bs!556348 m!3774773))

(assert (=> b!3400334 d!967937))

(declare-fun b!3401588 () Bool)

(declare-fun e!2111494 () Bool)

(declare-fun tp!1061345 () Bool)

(declare-fun tp!1061347 () Bool)

(assert (=> b!3401588 (= e!2111494 (and tp!1061345 tp!1061347))))

(declare-fun b!3401587 () Bool)

(declare-fun tp!1061346 () Bool)

(assert (=> b!3401587 (= e!2111494 tp!1061346)))

(declare-fun b!3401586 () Bool)

(declare-fun tp!1061349 () Bool)

(declare-fun tp!1061348 () Bool)

(assert (=> b!3401586 (= e!2111494 (and tp!1061349 tp!1061348))))

(assert (=> b!3400465 (= tp!1061209 e!2111494)))

(declare-fun b!3401585 () Bool)

(assert (=> b!3401585 (= e!2111494 tp_is_empty!17505)))

(assert (= (and b!3400465 ((_ is ElementMatch!10159) (regex!5400 (h!42404 (t!265785 rules!2135))))) b!3401585))

(assert (= (and b!3400465 ((_ is Concat!15789) (regex!5400 (h!42404 (t!265785 rules!2135))))) b!3401586))

(assert (= (and b!3400465 ((_ is Star!10159) (regex!5400 (h!42404 (t!265785 rules!2135))))) b!3401587))

(assert (= (and b!3400465 ((_ is Union!10159) (regex!5400 (h!42404 (t!265785 rules!2135))))) b!3401588))

(declare-fun b!3401592 () Bool)

(declare-fun b_free!89069 () Bool)

(declare-fun b_next!89773 () Bool)

(assert (=> b!3401592 (= b_free!89069 (not b_next!89773))))

(declare-fun t!266010 () Bool)

(declare-fun tb!182403 () Bool)

(assert (=> (and b!3401592 (= (toValue!7604 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))) (toValue!7604 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))) t!266010) tb!182403))

(declare-fun result!226062 () Bool)

(assert (= result!226062 result!226050))

(assert (=> d!967933 t!266010))

(declare-fun b_and!237435 () Bool)

(declare-fun tp!1061351 () Bool)

(assert (=> b!3401592 (= tp!1061351 (and (=> t!266010 result!226062) b_and!237435))))

(declare-fun b_free!89071 () Bool)

(declare-fun b_next!89775 () Bool)

(assert (=> b!3401592 (= b_free!89071 (not b_next!89775))))

(declare-fun t!266012 () Bool)

(declare-fun tb!182405 () Bool)

(assert (=> (and b!3401592 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))) (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241)))) t!266012) tb!182405))

(declare-fun result!226064 () Bool)

(assert (= result!226064 result!225864))

(assert (=> b!3400327 t!266012))

(declare-fun t!266014 () Bool)

(declare-fun tb!182407 () Bool)

(assert (=> (and b!3401592 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494)))))) t!266014) tb!182407))

(declare-fun result!226066 () Bool)

(assert (= result!226066 result!225872))

(assert (=> b!3401502 t!266014))

(declare-fun t!266016 () Bool)

(declare-fun tb!182409 () Bool)

(assert (=> (and b!3401592 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))) (toChars!7463 (transformation!5400 (rule!7962 (apply!8632 lt!1156135 0))))) t!266016) tb!182409))

(declare-fun result!226068 () Bool)

(assert (= result!226068 result!225944))

(assert (=> d!967571 t!266016))

(declare-fun t!266018 () Bool)

(declare-fun tb!182411 () Bool)

(assert (=> (and b!3401592 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494))))))) t!266018) tb!182411))

(declare-fun result!226070 () Bool)

(assert (= result!226070 result!226008))

(assert (=> d!967789 t!266018))

(declare-fun t!266020 () Bool)

(declare-fun tb!182413 () Bool)

(assert (=> (and b!3401592 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494))))) t!266020) tb!182413))

(declare-fun result!226072 () Bool)

(assert (= result!226072 result!225878))

(assert (=> d!967223 t!266020))

(assert (=> d!967193 t!266014))

(declare-fun t!266022 () Bool)

(declare-fun tb!182415 () Bool)

(assert (=> (and b!3401592 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))) (toChars!7463 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))) t!266022) tb!182415))

(declare-fun result!226074 () Bool)

(assert (= result!226074 result!225996))

(assert (=> d!967761 t!266022))

(assert (=> b!3400422 t!266020))

(declare-fun t!266024 () Bool)

(declare-fun tb!182417 () Bool)

(assert (=> (and b!3401592 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985)))))) t!266024) tb!182417))

(declare-fun result!226076 () Bool)

(assert (= result!226076 result!225954))

(assert (=> d!967583 t!266024))

(assert (=> d!967183 t!266012))

(declare-fun tp!1061353 () Bool)

(declare-fun b_and!237437 () Bool)

(assert (=> b!3401592 (= tp!1061353 (and (=> t!266012 result!226064) (=> t!266016 result!226068) (=> t!266024 result!226076) (=> t!266014 result!226066) (=> t!266022 result!226074) (=> t!266018 result!226070) (=> t!266020 result!226072) b_and!237437))))

(declare-fun tp!1061350 () Bool)

(declare-fun b!3401590 () Bool)

(declare-fun e!2111495 () Bool)

(declare-fun e!2111499 () Bool)

(assert (=> b!3401590 (= e!2111499 (and (inv!21 (value!174360 (h!42405 (t!265786 (t!265786 tokens!494))))) e!2111495 tp!1061350))))

(declare-fun e!2111497 () Bool)

(assert (=> b!3400477 (= tp!1061224 e!2111497)))

(declare-fun e!2111498 () Bool)

(assert (=> b!3401592 (= e!2111498 (and tp!1061351 tp!1061353))))

(declare-fun b!3401591 () Bool)

(declare-fun tp!1061352 () Bool)

(assert (=> b!3401591 (= e!2111495 (and tp!1061352 (inv!50085 (tag!5984 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))) (inv!50088 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))) e!2111498))))

(declare-fun tp!1061354 () Bool)

(declare-fun b!3401589 () Bool)

(assert (=> b!3401589 (= e!2111497 (and (inv!50089 (h!42405 (t!265786 (t!265786 tokens!494)))) e!2111499 tp!1061354))))

(assert (= b!3401591 b!3401592))

(assert (= b!3401590 b!3401591))

(assert (= b!3401589 b!3401590))

(assert (= (and b!3400477 ((_ is Cons!36985) (t!265786 (t!265786 tokens!494)))) b!3401589))

(declare-fun m!3774775 () Bool)

(assert (=> b!3401590 m!3774775))

(declare-fun m!3774777 () Bool)

(assert (=> b!3401591 m!3774777))

(declare-fun m!3774779 () Bool)

(assert (=> b!3401591 m!3774779))

(declare-fun m!3774781 () Bool)

(assert (=> b!3401589 m!3774781))

(declare-fun b!3401596 () Bool)

(declare-fun e!2111501 () Bool)

(declare-fun tp!1061355 () Bool)

(declare-fun tp!1061357 () Bool)

(assert (=> b!3401596 (= e!2111501 (and tp!1061355 tp!1061357))))

(declare-fun b!3401595 () Bool)

(declare-fun tp!1061356 () Bool)

(assert (=> b!3401595 (= e!2111501 tp!1061356)))

(declare-fun b!3401594 () Bool)

(declare-fun tp!1061359 () Bool)

(declare-fun tp!1061358 () Bool)

(assert (=> b!3401594 (= e!2111501 (and tp!1061359 tp!1061358))))

(assert (=> b!3400454 (= tp!1061194 e!2111501)))

(declare-fun b!3401593 () Bool)

(assert (=> b!3401593 (= e!2111501 tp_is_empty!17505)))

(assert (= (and b!3400454 ((_ is ElementMatch!10159) (reg!10488 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401593))

(assert (= (and b!3400454 ((_ is Concat!15789) (reg!10488 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401594))

(assert (= (and b!3400454 ((_ is Star!10159) (reg!10488 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401595))

(assert (= (and b!3400454 ((_ is Union!10159) (reg!10488 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401596))

(declare-fun b!3401600 () Bool)

(declare-fun e!2111502 () Bool)

(declare-fun tp!1061360 () Bool)

(declare-fun tp!1061362 () Bool)

(assert (=> b!3401600 (= e!2111502 (and tp!1061360 tp!1061362))))

(declare-fun b!3401599 () Bool)

(declare-fun tp!1061361 () Bool)

(assert (=> b!3401599 (= e!2111502 tp!1061361)))

(declare-fun b!3401598 () Bool)

(declare-fun tp!1061364 () Bool)

(declare-fun tp!1061363 () Bool)

(assert (=> b!3401598 (= e!2111502 (and tp!1061364 tp!1061363))))

(assert (=> b!3400479 (= tp!1061222 e!2111502)))

(declare-fun b!3401597 () Bool)

(assert (=> b!3401597 (= e!2111502 tp_is_empty!17505)))

(assert (= (and b!3400479 ((_ is ElementMatch!10159) (regex!5400 (rule!7962 (h!42405 (t!265786 tokens!494)))))) b!3401597))

(assert (= (and b!3400479 ((_ is Concat!15789) (regex!5400 (rule!7962 (h!42405 (t!265786 tokens!494)))))) b!3401598))

(assert (= (and b!3400479 ((_ is Star!10159) (regex!5400 (rule!7962 (h!42405 (t!265786 tokens!494)))))) b!3401599))

(assert (= (and b!3400479 ((_ is Union!10159) (regex!5400 (rule!7962 (h!42405 (t!265786 tokens!494)))))) b!3401600))

(declare-fun b!3401603 () Bool)

(declare-fun b_free!89073 () Bool)

(declare-fun b_next!89777 () Bool)

(assert (=> b!3401603 (= b_free!89073 (not b_next!89777))))

(declare-fun tb!182419 () Bool)

(declare-fun t!266026 () Bool)

(assert (=> (and b!3401603 (= (toValue!7604 (transformation!5400 (h!42404 (t!265785 (t!265785 rules!2135))))) (toValue!7604 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))) t!266026) tb!182419))

(declare-fun result!226078 () Bool)

(assert (= result!226078 result!226050))

(assert (=> d!967933 t!266026))

(declare-fun tp!1061367 () Bool)

(declare-fun b_and!237439 () Bool)

(assert (=> b!3401603 (= tp!1061367 (and (=> t!266026 result!226078) b_and!237439))))

(declare-fun b_free!89075 () Bool)

(declare-fun b_next!89779 () Bool)

(assert (=> b!3401603 (= b_free!89075 (not b_next!89779))))

(declare-fun tb!182421 () Bool)

(declare-fun t!266028 () Bool)

(assert (=> (and b!3401603 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 (t!265785 rules!2135))))) (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241)))) t!266028) tb!182421))

(declare-fun result!226080 () Bool)

(assert (= result!226080 result!225864))

(assert (=> b!3400327 t!266028))

(declare-fun t!266030 () Bool)

(declare-fun tb!182423 () Bool)

(assert (=> (and b!3401603 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 (t!265785 rules!2135))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494)))))) t!266030) tb!182423))

(declare-fun result!226082 () Bool)

(assert (= result!226082 result!225872))

(assert (=> b!3401502 t!266030))

(declare-fun t!266032 () Bool)

(declare-fun tb!182425 () Bool)

(assert (=> (and b!3401603 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 (t!265785 rules!2135))))) (toChars!7463 (transformation!5400 (rule!7962 (apply!8632 lt!1156135 0))))) t!266032) tb!182425))

(declare-fun result!226084 () Bool)

(assert (= result!226084 result!225944))

(assert (=> d!967571 t!266032))

(declare-fun tb!182427 () Bool)

(declare-fun t!266034 () Bool)

(assert (=> (and b!3401603 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 (t!265785 rules!2135))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494))))))) t!266034) tb!182427))

(declare-fun result!226086 () Bool)

(assert (= result!226086 result!226008))

(assert (=> d!967789 t!266034))

(declare-fun t!266036 () Bool)

(declare-fun tb!182429 () Bool)

(assert (=> (and b!3401603 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 (t!265785 rules!2135))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494))))) t!266036) tb!182429))

(declare-fun result!226088 () Bool)

(assert (= result!226088 result!225878))

(assert (=> d!967223 t!266036))

(assert (=> d!967193 t!266030))

(declare-fun t!266038 () Bool)

(declare-fun tb!182431 () Bool)

(assert (=> (and b!3401603 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 (t!265785 rules!2135))))) (toChars!7463 (transformation!5400 (rule!7962 (_1!21442 (get!11811 lt!1156307)))))) t!266038) tb!182431))

(declare-fun result!226090 () Bool)

(assert (= result!226090 result!225996))

(assert (=> d!967761 t!266038))

(assert (=> b!3400422 t!266036))

(declare-fun t!266040 () Bool)

(declare-fun tb!182433 () Bool)

(assert (=> (and b!3401603 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 (t!265785 rules!2135))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (Cons!36985 (h!42405 tokens!494) Nil!36985)))))) t!266040) tb!182433))

(declare-fun result!226092 () Bool)

(assert (= result!226092 result!225954))

(assert (=> d!967583 t!266040))

(assert (=> d!967183 t!266028))

(declare-fun tp!1061366 () Bool)

(declare-fun b_and!237441 () Bool)

(assert (=> b!3401603 (= tp!1061366 (and (=> t!266032 result!226084) (=> t!266030 result!226082) (=> t!266034 result!226086) (=> t!266036 result!226088) (=> t!266040 result!226092) (=> t!266028 result!226080) (=> t!266038 result!226090) b_and!237441))))

(declare-fun e!2111503 () Bool)

(assert (=> b!3401603 (= e!2111503 (and tp!1061367 tp!1061366))))

(declare-fun e!2111504 () Bool)

(declare-fun tp!1061368 () Bool)

(declare-fun b!3401602 () Bool)

(assert (=> b!3401602 (= e!2111504 (and tp!1061368 (inv!50085 (tag!5984 (h!42404 (t!265785 (t!265785 rules!2135))))) (inv!50088 (transformation!5400 (h!42404 (t!265785 (t!265785 rules!2135))))) e!2111503))))

(declare-fun b!3401601 () Bool)

(declare-fun e!2111506 () Bool)

(declare-fun tp!1061365 () Bool)

(assert (=> b!3401601 (= e!2111506 (and e!2111504 tp!1061365))))

(assert (=> b!3400464 (= tp!1061206 e!2111506)))

(assert (= b!3401602 b!3401603))

(assert (= b!3401601 b!3401602))

(assert (= (and b!3400464 ((_ is Cons!36984) (t!265785 (t!265785 rules!2135)))) b!3401601))

(declare-fun m!3774783 () Bool)

(assert (=> b!3401602 m!3774783))

(declare-fun m!3774785 () Bool)

(assert (=> b!3401602 m!3774785))

(declare-fun b!3401604 () Bool)

(declare-fun e!2111507 () Bool)

(declare-fun tp!1061369 () Bool)

(assert (=> b!3401604 (= e!2111507 (and tp_is_empty!17505 tp!1061369))))

(assert (=> b!3400447 (= tp!1061187 e!2111507)))

(assert (= (and b!3400447 ((_ is Cons!36983) (t!265784 (originalCharacters!6114 separatorToken!241)))) b!3401604))

(declare-fun b!3401605 () Bool)

(declare-fun e!2111508 () Bool)

(declare-fun tp!1061370 () Bool)

(assert (=> b!3401605 (= e!2111508 (and tp_is_empty!17505 tp!1061370))))

(assert (=> b!3400478 (= tp!1061220 e!2111508)))

(assert (= (and b!3400478 ((_ is Cons!36983) (originalCharacters!6114 (h!42405 (t!265786 tokens!494))))) b!3401605))

(declare-fun b!3401609 () Bool)

(declare-fun e!2111509 () Bool)

(declare-fun tp!1061371 () Bool)

(declare-fun tp!1061373 () Bool)

(assert (=> b!3401609 (= e!2111509 (and tp!1061371 tp!1061373))))

(declare-fun b!3401608 () Bool)

(declare-fun tp!1061372 () Bool)

(assert (=> b!3401608 (= e!2111509 tp!1061372)))

(declare-fun b!3401607 () Bool)

(declare-fun tp!1061375 () Bool)

(declare-fun tp!1061374 () Bool)

(assert (=> b!3401607 (= e!2111509 (and tp!1061375 tp!1061374))))

(assert (=> b!3400455 (= tp!1061193 e!2111509)))

(declare-fun b!3401606 () Bool)

(assert (=> b!3401606 (= e!2111509 tp_is_empty!17505)))

(assert (= (and b!3400455 ((_ is ElementMatch!10159) (regOne!20831 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401606))

(assert (= (and b!3400455 ((_ is Concat!15789) (regOne!20831 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401607))

(assert (= (and b!3400455 ((_ is Star!10159) (regOne!20831 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401608))

(assert (= (and b!3400455 ((_ is Union!10159) (regOne!20831 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401609))

(declare-fun b!3401613 () Bool)

(declare-fun e!2111510 () Bool)

(declare-fun tp!1061376 () Bool)

(declare-fun tp!1061378 () Bool)

(assert (=> b!3401613 (= e!2111510 (and tp!1061376 tp!1061378))))

(declare-fun b!3401612 () Bool)

(declare-fun tp!1061377 () Bool)

(assert (=> b!3401612 (= e!2111510 tp!1061377)))

(declare-fun b!3401611 () Bool)

(declare-fun tp!1061380 () Bool)

(declare-fun tp!1061379 () Bool)

(assert (=> b!3401611 (= e!2111510 (and tp!1061380 tp!1061379))))

(assert (=> b!3400455 (= tp!1061195 e!2111510)))

(declare-fun b!3401610 () Bool)

(assert (=> b!3401610 (= e!2111510 tp_is_empty!17505)))

(assert (= (and b!3400455 ((_ is ElementMatch!10159) (regTwo!20831 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401610))

(assert (= (and b!3400455 ((_ is Concat!15789) (regTwo!20831 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401611))

(assert (= (and b!3400455 ((_ is Star!10159) (regTwo!20831 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401612))

(assert (= (and b!3400455 ((_ is Union!10159) (regTwo!20831 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401613))

(declare-fun b!3401617 () Bool)

(declare-fun e!2111511 () Bool)

(declare-fun tp!1061381 () Bool)

(declare-fun tp!1061383 () Bool)

(assert (=> b!3401617 (= e!2111511 (and tp!1061381 tp!1061383))))

(declare-fun b!3401616 () Bool)

(declare-fun tp!1061382 () Bool)

(assert (=> b!3401616 (= e!2111511 tp!1061382)))

(declare-fun b!3401615 () Bool)

(declare-fun tp!1061385 () Bool)

(declare-fun tp!1061384 () Bool)

(assert (=> b!3401615 (= e!2111511 (and tp!1061385 tp!1061384))))

(assert (=> b!3400449 (= tp!1061192 e!2111511)))

(declare-fun b!3401614 () Bool)

(assert (=> b!3401614 (= e!2111511 tp_is_empty!17505)))

(assert (= (and b!3400449 ((_ is ElementMatch!10159) (regOne!20830 (regex!5400 (rule!7962 separatorToken!241))))) b!3401614))

(assert (= (and b!3400449 ((_ is Concat!15789) (regOne!20830 (regex!5400 (rule!7962 separatorToken!241))))) b!3401615))

(assert (= (and b!3400449 ((_ is Star!10159) (regOne!20830 (regex!5400 (rule!7962 separatorToken!241))))) b!3401616))

(assert (= (and b!3400449 ((_ is Union!10159) (regOne!20830 (regex!5400 (rule!7962 separatorToken!241))))) b!3401617))

(declare-fun b!3401621 () Bool)

(declare-fun e!2111512 () Bool)

(declare-fun tp!1061386 () Bool)

(declare-fun tp!1061388 () Bool)

(assert (=> b!3401621 (= e!2111512 (and tp!1061386 tp!1061388))))

(declare-fun b!3401620 () Bool)

(declare-fun tp!1061387 () Bool)

(assert (=> b!3401620 (= e!2111512 tp!1061387)))

(declare-fun b!3401619 () Bool)

(declare-fun tp!1061390 () Bool)

(declare-fun tp!1061389 () Bool)

(assert (=> b!3401619 (= e!2111512 (and tp!1061390 tp!1061389))))

(assert (=> b!3400449 (= tp!1061191 e!2111512)))

(declare-fun b!3401618 () Bool)

(assert (=> b!3401618 (= e!2111512 tp_is_empty!17505)))

(assert (= (and b!3400449 ((_ is ElementMatch!10159) (regTwo!20830 (regex!5400 (rule!7962 separatorToken!241))))) b!3401618))

(assert (= (and b!3400449 ((_ is Concat!15789) (regTwo!20830 (regex!5400 (rule!7962 separatorToken!241))))) b!3401619))

(assert (= (and b!3400449 ((_ is Star!10159) (regTwo!20830 (regex!5400 (rule!7962 separatorToken!241))))) b!3401620))

(assert (= (and b!3400449 ((_ is Union!10159) (regTwo!20830 (regex!5400 (rule!7962 separatorToken!241))))) b!3401621))

(declare-fun b!3401624 () Bool)

(declare-fun e!2111515 () Bool)

(assert (=> b!3401624 (= e!2111515 true)))

(declare-fun b!3401623 () Bool)

(declare-fun e!2111514 () Bool)

(assert (=> b!3401623 (= e!2111514 e!2111515)))

(declare-fun b!3401622 () Bool)

(declare-fun e!2111513 () Bool)

(assert (=> b!3401622 (= e!2111513 e!2111514)))

(assert (=> b!3400215 e!2111513))

(assert (= b!3401623 b!3401624))

(assert (= b!3401622 b!3401623))

(assert (= (and b!3400215 ((_ is Cons!36984) (t!265785 rules!2135))) b!3401622))

(assert (=> b!3401624 (< (dynLambda!15440 order!19541 (toValue!7604 (transformation!5400 (h!42404 (t!265785 rules!2135))))) (dynLambda!15441 order!19543 lambda!120971))))

(assert (=> b!3401624 (< (dynLambda!15442 order!19545 (toChars!7463 (transformation!5400 (h!42404 (t!265785 rules!2135))))) (dynLambda!15441 order!19543 lambda!120971))))

(declare-fun tp!1061398 () Bool)

(declare-fun e!2111520 () Bool)

(declare-fun tp!1061397 () Bool)

(declare-fun b!3401633 () Bool)

(assert (=> b!3401633 (= e!2111520 (and (inv!50092 (left!28833 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (value!174360 (h!42405 (t!265786 tokens!494))))))) tp!1061398 (inv!50092 (right!29163 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (value!174360 (h!42405 (t!265786 tokens!494))))))) tp!1061397))))

(declare-fun b!3401635 () Bool)

(declare-fun e!2111521 () Bool)

(declare-fun tp!1061399 () Bool)

(assert (=> b!3401635 (= e!2111521 tp!1061399)))

(declare-fun b!3401634 () Bool)

(declare-fun inv!50099 (IArray!22355) Bool)

(assert (=> b!3401634 (= e!2111520 (and (inv!50099 (xs!14333 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (value!174360 (h!42405 (t!265786 tokens!494))))))) e!2111521))))

(assert (=> b!3400283 (= tp!1061111 (and (inv!50092 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (value!174360 (h!42405 (t!265786 tokens!494)))))) e!2111520))))

(assert (= (and b!3400283 ((_ is Node!11175) (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (value!174360 (h!42405 (t!265786 tokens!494))))))) b!3401633))

(assert (= b!3401634 b!3401635))

(assert (= (and b!3400283 ((_ is Leaf!17486) (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (value!174360 (h!42405 (t!265786 tokens!494))))))) b!3401634))

(declare-fun m!3774787 () Bool)

(assert (=> b!3401633 m!3774787))

(declare-fun m!3774789 () Bool)

(assert (=> b!3401633 m!3774789))

(declare-fun m!3774791 () Bool)

(assert (=> b!3401634 m!3774791))

(assert (=> b!3400283 m!3772621))

(declare-fun b!3401636 () Bool)

(declare-fun e!2111522 () Bool)

(declare-fun tp!1061400 () Bool)

(assert (=> b!3401636 (= e!2111522 (and tp_is_empty!17505 tp!1061400))))

(assert (=> b!3400432 (= tp!1061171 e!2111522)))

(assert (= (and b!3400432 ((_ is Cons!36983) (t!265784 (originalCharacters!6114 (h!42405 tokens!494))))) b!3401636))

(declare-fun e!2111523 () Bool)

(declare-fun b!3401637 () Bool)

(declare-fun tp!1061402 () Bool)

(declare-fun tp!1061401 () Bool)

(assert (=> b!3401637 (= e!2111523 (and (inv!50092 (left!28833 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241))))) tp!1061402 (inv!50092 (right!29163 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241))))) tp!1061401))))

(declare-fun b!3401639 () Bool)

(declare-fun e!2111524 () Bool)

(declare-fun tp!1061403 () Bool)

(assert (=> b!3401639 (= e!2111524 tp!1061403)))

(declare-fun b!3401638 () Bool)

(assert (=> b!3401638 (= e!2111523 (and (inv!50099 (xs!14333 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241))))) e!2111524))))

(assert (=> b!3400278 (= tp!1061110 (and (inv!50092 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241)))) e!2111523))))

(assert (= (and b!3400278 ((_ is Node!11175) (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241))))) b!3401637))

(assert (= b!3401638 b!3401639))

(assert (= (and b!3400278 ((_ is Leaf!17486) (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (value!174360 separatorToken!241))))) b!3401638))

(declare-fun m!3774793 () Bool)

(assert (=> b!3401637 m!3774793))

(declare-fun m!3774795 () Bool)

(assert (=> b!3401637 m!3774795))

(declare-fun m!3774797 () Bool)

(assert (=> b!3401638 m!3774797))

(assert (=> b!3400278 m!3772595))

(declare-fun b!3401643 () Bool)

(declare-fun e!2111525 () Bool)

(declare-fun tp!1061404 () Bool)

(declare-fun tp!1061406 () Bool)

(assert (=> b!3401643 (= e!2111525 (and tp!1061404 tp!1061406))))

(declare-fun b!3401642 () Bool)

(declare-fun tp!1061405 () Bool)

(assert (=> b!3401642 (= e!2111525 tp!1061405)))

(declare-fun b!3401641 () Bool)

(declare-fun tp!1061408 () Bool)

(declare-fun tp!1061407 () Bool)

(assert (=> b!3401641 (= e!2111525 (and tp!1061408 tp!1061407))))

(assert (=> b!3400451 (= tp!1061188 e!2111525)))

(declare-fun b!3401640 () Bool)

(assert (=> b!3401640 (= e!2111525 tp_is_empty!17505)))

(assert (= (and b!3400451 ((_ is ElementMatch!10159) (regOne!20831 (regex!5400 (rule!7962 separatorToken!241))))) b!3401640))

(assert (= (and b!3400451 ((_ is Concat!15789) (regOne!20831 (regex!5400 (rule!7962 separatorToken!241))))) b!3401641))

(assert (= (and b!3400451 ((_ is Star!10159) (regOne!20831 (regex!5400 (rule!7962 separatorToken!241))))) b!3401642))

(assert (= (and b!3400451 ((_ is Union!10159) (regOne!20831 (regex!5400 (rule!7962 separatorToken!241))))) b!3401643))

(declare-fun b!3401647 () Bool)

(declare-fun e!2111526 () Bool)

(declare-fun tp!1061409 () Bool)

(declare-fun tp!1061411 () Bool)

(assert (=> b!3401647 (= e!2111526 (and tp!1061409 tp!1061411))))

(declare-fun b!3401646 () Bool)

(declare-fun tp!1061410 () Bool)

(assert (=> b!3401646 (= e!2111526 tp!1061410)))

(declare-fun b!3401645 () Bool)

(declare-fun tp!1061413 () Bool)

(declare-fun tp!1061412 () Bool)

(assert (=> b!3401645 (= e!2111526 (and tp!1061413 tp!1061412))))

(assert (=> b!3400451 (= tp!1061190 e!2111526)))

(declare-fun b!3401644 () Bool)

(assert (=> b!3401644 (= e!2111526 tp_is_empty!17505)))

(assert (= (and b!3400451 ((_ is ElementMatch!10159) (regTwo!20831 (regex!5400 (rule!7962 separatorToken!241))))) b!3401644))

(assert (= (and b!3400451 ((_ is Concat!15789) (regTwo!20831 (regex!5400 (rule!7962 separatorToken!241))))) b!3401645))

(assert (= (and b!3400451 ((_ is Star!10159) (regTwo!20831 (regex!5400 (rule!7962 separatorToken!241))))) b!3401646))

(assert (= (and b!3400451 ((_ is Union!10159) (regTwo!20831 (regex!5400 (rule!7962 separatorToken!241))))) b!3401647))

(declare-fun b!3401651 () Bool)

(declare-fun e!2111527 () Bool)

(declare-fun tp!1061414 () Bool)

(declare-fun tp!1061416 () Bool)

(assert (=> b!3401651 (= e!2111527 (and tp!1061414 tp!1061416))))

(declare-fun b!3401650 () Bool)

(declare-fun tp!1061415 () Bool)

(assert (=> b!3401650 (= e!2111527 tp!1061415)))

(declare-fun b!3401649 () Bool)

(declare-fun tp!1061418 () Bool)

(declare-fun tp!1061417 () Bool)

(assert (=> b!3401649 (= e!2111527 (and tp!1061418 tp!1061417))))

(assert (=> b!3400450 (= tp!1061189 e!2111527)))

(declare-fun b!3401648 () Bool)

(assert (=> b!3401648 (= e!2111527 tp_is_empty!17505)))

(assert (= (and b!3400450 ((_ is ElementMatch!10159) (reg!10488 (regex!5400 (rule!7962 separatorToken!241))))) b!3401648))

(assert (= (and b!3400450 ((_ is Concat!15789) (reg!10488 (regex!5400 (rule!7962 separatorToken!241))))) b!3401649))

(assert (= (and b!3400450 ((_ is Star!10159) (reg!10488 (regex!5400 (rule!7962 separatorToken!241))))) b!3401650))

(assert (= (and b!3400450 ((_ is Union!10159) (reg!10488 (regex!5400 (rule!7962 separatorToken!241))))) b!3401651))

(declare-fun b!3401655 () Bool)

(declare-fun e!2111528 () Bool)

(declare-fun tp!1061419 () Bool)

(declare-fun tp!1061421 () Bool)

(assert (=> b!3401655 (= e!2111528 (and tp!1061419 tp!1061421))))

(declare-fun b!3401654 () Bool)

(declare-fun tp!1061420 () Bool)

(assert (=> b!3401654 (= e!2111528 tp!1061420)))

(declare-fun b!3401653 () Bool)

(declare-fun tp!1061423 () Bool)

(declare-fun tp!1061422 () Bool)

(assert (=> b!3401653 (= e!2111528 (and tp!1061423 tp!1061422))))

(assert (=> b!3400445 (= tp!1061183 e!2111528)))

(declare-fun b!3401652 () Bool)

(assert (=> b!3401652 (= e!2111528 tp_is_empty!17505)))

(assert (= (and b!3400445 ((_ is ElementMatch!10159) (reg!10488 (regex!5400 (h!42404 rules!2135))))) b!3401652))

(assert (= (and b!3400445 ((_ is Concat!15789) (reg!10488 (regex!5400 (h!42404 rules!2135))))) b!3401653))

(assert (= (and b!3400445 ((_ is Star!10159) (reg!10488 (regex!5400 (h!42404 rules!2135))))) b!3401654))

(assert (= (and b!3400445 ((_ is Union!10159) (reg!10488 (regex!5400 (h!42404 rules!2135))))) b!3401655))

(declare-fun b!3401656 () Bool)

(declare-fun tp!1061425 () Bool)

(declare-fun e!2111529 () Bool)

(declare-fun tp!1061424 () Bool)

(assert (=> b!3401656 (= e!2111529 (and (inv!50092 (left!28833 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494)))))) tp!1061425 (inv!50092 (right!29163 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494)))))) tp!1061424))))

(declare-fun b!3401658 () Bool)

(declare-fun e!2111530 () Bool)

(declare-fun tp!1061426 () Bool)

(assert (=> b!3401658 (= e!2111530 tp!1061426)))

(declare-fun b!3401657 () Bool)

(assert (=> b!3401657 (= e!2111529 (and (inv!50099 (xs!14333 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494)))))) e!2111530))))

(assert (=> b!3400329 (= tp!1061112 (and (inv!50092 (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494))))) e!2111529))))

(assert (= (and b!3400329 ((_ is Node!11175) (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494)))))) b!3401656))

(assert (= b!3401657 b!3401658))

(assert (= (and b!3400329 ((_ is Leaf!17486) (c!579555 (dynLambda!15444 (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (value!174360 (h!42405 tokens!494)))))) b!3401657))

(declare-fun m!3774799 () Bool)

(assert (=> b!3401656 m!3774799))

(declare-fun m!3774801 () Bool)

(assert (=> b!3401656 m!3774801))

(declare-fun m!3774803 () Bool)

(assert (=> b!3401657 m!3774803))

(assert (=> b!3400329 m!3772753))

(declare-fun b!3401662 () Bool)

(declare-fun e!2111531 () Bool)

(declare-fun tp!1061427 () Bool)

(declare-fun tp!1061429 () Bool)

(assert (=> b!3401662 (= e!2111531 (and tp!1061427 tp!1061429))))

(declare-fun b!3401661 () Bool)

(declare-fun tp!1061428 () Bool)

(assert (=> b!3401661 (= e!2111531 tp!1061428)))

(declare-fun b!3401660 () Bool)

(declare-fun tp!1061431 () Bool)

(declare-fun tp!1061430 () Bool)

(assert (=> b!3401660 (= e!2111531 (and tp!1061431 tp!1061430))))

(assert (=> b!3400453 (= tp!1061197 e!2111531)))

(declare-fun b!3401659 () Bool)

(assert (=> b!3401659 (= e!2111531 tp_is_empty!17505)))

(assert (= (and b!3400453 ((_ is ElementMatch!10159) (regOne!20830 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401659))

(assert (= (and b!3400453 ((_ is Concat!15789) (regOne!20830 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401660))

(assert (= (and b!3400453 ((_ is Star!10159) (regOne!20830 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401661))

(assert (= (and b!3400453 ((_ is Union!10159) (regOne!20830 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401662))

(declare-fun b!3401666 () Bool)

(declare-fun e!2111532 () Bool)

(declare-fun tp!1061432 () Bool)

(declare-fun tp!1061434 () Bool)

(assert (=> b!3401666 (= e!2111532 (and tp!1061432 tp!1061434))))

(declare-fun b!3401665 () Bool)

(declare-fun tp!1061433 () Bool)

(assert (=> b!3401665 (= e!2111532 tp!1061433)))

(declare-fun b!3401664 () Bool)

(declare-fun tp!1061436 () Bool)

(declare-fun tp!1061435 () Bool)

(assert (=> b!3401664 (= e!2111532 (and tp!1061436 tp!1061435))))

(assert (=> b!3400453 (= tp!1061196 e!2111532)))

(declare-fun b!3401663 () Bool)

(assert (=> b!3401663 (= e!2111532 tp_is_empty!17505)))

(assert (= (and b!3400453 ((_ is ElementMatch!10159) (regTwo!20830 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401663))

(assert (= (and b!3400453 ((_ is Concat!15789) (regTwo!20830 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401664))

(assert (= (and b!3400453 ((_ is Star!10159) (regTwo!20830 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401665))

(assert (= (and b!3400453 ((_ is Union!10159) (regTwo!20830 (regex!5400 (rule!7962 (h!42405 tokens!494)))))) b!3401666))

(declare-fun b!3401670 () Bool)

(declare-fun e!2111533 () Bool)

(declare-fun tp!1061437 () Bool)

(declare-fun tp!1061439 () Bool)

(assert (=> b!3401670 (= e!2111533 (and tp!1061437 tp!1061439))))

(declare-fun b!3401669 () Bool)

(declare-fun tp!1061438 () Bool)

(assert (=> b!3401669 (= e!2111533 tp!1061438)))

(declare-fun b!3401668 () Bool)

(declare-fun tp!1061441 () Bool)

(declare-fun tp!1061440 () Bool)

(assert (=> b!3401668 (= e!2111533 (and tp!1061441 tp!1061440))))

(assert (=> b!3400446 (= tp!1061182 e!2111533)))

(declare-fun b!3401667 () Bool)

(assert (=> b!3401667 (= e!2111533 tp_is_empty!17505)))

(assert (= (and b!3400446 ((_ is ElementMatch!10159) (regOne!20831 (regex!5400 (h!42404 rules!2135))))) b!3401667))

(assert (= (and b!3400446 ((_ is Concat!15789) (regOne!20831 (regex!5400 (h!42404 rules!2135))))) b!3401668))

(assert (= (and b!3400446 ((_ is Star!10159) (regOne!20831 (regex!5400 (h!42404 rules!2135))))) b!3401669))

(assert (= (and b!3400446 ((_ is Union!10159) (regOne!20831 (regex!5400 (h!42404 rules!2135))))) b!3401670))

(declare-fun b!3401674 () Bool)

(declare-fun e!2111534 () Bool)

(declare-fun tp!1061442 () Bool)

(declare-fun tp!1061444 () Bool)

(assert (=> b!3401674 (= e!2111534 (and tp!1061442 tp!1061444))))

(declare-fun b!3401673 () Bool)

(declare-fun tp!1061443 () Bool)

(assert (=> b!3401673 (= e!2111534 tp!1061443)))

(declare-fun b!3401672 () Bool)

(declare-fun tp!1061446 () Bool)

(declare-fun tp!1061445 () Bool)

(assert (=> b!3401672 (= e!2111534 (and tp!1061446 tp!1061445))))

(assert (=> b!3400446 (= tp!1061184 e!2111534)))

(declare-fun b!3401671 () Bool)

(assert (=> b!3401671 (= e!2111534 tp_is_empty!17505)))

(assert (= (and b!3400446 ((_ is ElementMatch!10159) (regTwo!20831 (regex!5400 (h!42404 rules!2135))))) b!3401671))

(assert (= (and b!3400446 ((_ is Concat!15789) (regTwo!20831 (regex!5400 (h!42404 rules!2135))))) b!3401672))

(assert (= (and b!3400446 ((_ is Star!10159) (regTwo!20831 (regex!5400 (h!42404 rules!2135))))) b!3401673))

(assert (= (and b!3400446 ((_ is Union!10159) (regTwo!20831 (regex!5400 (h!42404 rules!2135))))) b!3401674))

(declare-fun b!3401678 () Bool)

(declare-fun e!2111535 () Bool)

(declare-fun tp!1061447 () Bool)

(declare-fun tp!1061449 () Bool)

(assert (=> b!3401678 (= e!2111535 (and tp!1061447 tp!1061449))))

(declare-fun b!3401677 () Bool)

(declare-fun tp!1061448 () Bool)

(assert (=> b!3401677 (= e!2111535 tp!1061448)))

(declare-fun b!3401676 () Bool)

(declare-fun tp!1061451 () Bool)

(declare-fun tp!1061450 () Bool)

(assert (=> b!3401676 (= e!2111535 (and tp!1061451 tp!1061450))))

(assert (=> b!3400444 (= tp!1061186 e!2111535)))

(declare-fun b!3401675 () Bool)

(assert (=> b!3401675 (= e!2111535 tp_is_empty!17505)))

(assert (= (and b!3400444 ((_ is ElementMatch!10159) (regOne!20830 (regex!5400 (h!42404 rules!2135))))) b!3401675))

(assert (= (and b!3400444 ((_ is Concat!15789) (regOne!20830 (regex!5400 (h!42404 rules!2135))))) b!3401676))

(assert (= (and b!3400444 ((_ is Star!10159) (regOne!20830 (regex!5400 (h!42404 rules!2135))))) b!3401677))

(assert (= (and b!3400444 ((_ is Union!10159) (regOne!20830 (regex!5400 (h!42404 rules!2135))))) b!3401678))

(declare-fun b!3401682 () Bool)

(declare-fun e!2111536 () Bool)

(declare-fun tp!1061452 () Bool)

(declare-fun tp!1061454 () Bool)

(assert (=> b!3401682 (= e!2111536 (and tp!1061452 tp!1061454))))

(declare-fun b!3401681 () Bool)

(declare-fun tp!1061453 () Bool)

(assert (=> b!3401681 (= e!2111536 tp!1061453)))

(declare-fun b!3401680 () Bool)

(declare-fun tp!1061456 () Bool)

(declare-fun tp!1061455 () Bool)

(assert (=> b!3401680 (= e!2111536 (and tp!1061456 tp!1061455))))

(assert (=> b!3400444 (= tp!1061185 e!2111536)))

(declare-fun b!3401679 () Bool)

(assert (=> b!3401679 (= e!2111536 tp_is_empty!17505)))

(assert (= (and b!3400444 ((_ is ElementMatch!10159) (regTwo!20830 (regex!5400 (h!42404 rules!2135))))) b!3401679))

(assert (= (and b!3400444 ((_ is Concat!15789) (regTwo!20830 (regex!5400 (h!42404 rules!2135))))) b!3401680))

(assert (= (and b!3400444 ((_ is Star!10159) (regTwo!20830 (regex!5400 (h!42404 rules!2135))))) b!3401681))

(assert (= (and b!3400444 ((_ is Union!10159) (regTwo!20830 (regex!5400 (h!42404 rules!2135))))) b!3401682))

(declare-fun b_lambda!97079 () Bool)

(assert (= b_lambda!97037 (or b!3399994 b_lambda!97079)))

(assert (=> b!3400693 d!967251))

(declare-fun b_lambda!97081 () Bool)

(assert (= b_lambda!97041 (or b!3399994 b_lambda!97081)))

(assert (=> d!967545 d!967249))

(declare-fun b_lambda!97083 () Bool)

(assert (= b_lambda!97071 (or d!967103 b_lambda!97083)))

(declare-fun bs!556349 () Bool)

(declare-fun d!967939 () Bool)

(assert (= bs!556349 (and d!967939 d!967103)))

(assert (=> bs!556349 (= (dynLambda!15439 lambda!120971 (h!42405 (list!13412 (seqFromList!3854 tokens!494)))) (rulesProduceIndividualToken!2481 thiss!18206 rules!2135 (h!42405 (list!13412 (seqFromList!3854 tokens!494)))))))

(assert (=> bs!556349 m!3773399))

(assert (=> b!3401485 d!967939))

(declare-fun b_lambda!97085 () Bool)

(assert (= b_lambda!97057 (or (and b!3399970 b_free!89043 (= (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))))) (and b!3399977 b_free!89039 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))))) (and b!3399996 b_free!89035 (= (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))))) (and b!3401603 b_free!89075 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 (t!265785 rules!2135))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))))) (and b!3401592 b_free!89071) (and b!3400466 b_free!89055 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 rules!2135)))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))))) (and b!3400480 b_free!89059 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))))) b_lambda!97085)))

(declare-fun b_lambda!97087 () Bool)

(assert (= b_lambda!97075 (or b!3399994 b_lambda!97087)))

(assert (=> d!967929 d!967251))

(declare-fun b_lambda!97089 () Bool)

(assert (= b_lambda!97073 (or (and b!3401603 b_free!89075 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 (t!265785 rules!2135))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))))) (and b!3399996 b_free!89035 (= (toChars!7463 (transformation!5400 (rule!7962 separatorToken!241))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))))) (and b!3399970 b_free!89043 (= (toChars!7463 (transformation!5400 (h!42404 rules!2135))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))))) (and b!3399977 b_free!89039 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 tokens!494)))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))))) (and b!3400466 b_free!89055 (= (toChars!7463 (transformation!5400 (h!42404 (t!265785 rules!2135)))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))))) (and b!3401592 b_free!89071 (= (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 (t!265786 tokens!494)))))) (toChars!7463 (transformation!5400 (rule!7962 (h!42405 (t!265786 tokens!494))))))) (and b!3400480 b_free!89059) b_lambda!97089)))

(check-sat (not d!967849) (not b!3400863) (not b!3401599) (not b!3401420) (not b!3401665) (not d!967773) (not b!3401634) (not d!967549) (not b!3400837) (not b!3401392) (not b!3400712) (not b!3400776) (not d!967347) (not b!3400961) (not d!967557) (not d!967521) (not d!967431) (not b!3401591) (not b!3401483) (not d!967837) (not d!967765) (not b!3401566) (not b!3401541) (not d!967519) (not d!967575) (not b!3400832) (not d!967863) (not b!3401313) b_and!237437 (not tb!182291) (not b!3400831) (not d!967799) (not b!3401540) (not b!3400835) (not d!967801) (not b!3401607) (not b!3401588) (not b!3401677) (not b!3400993) (not b!3401312) (not d!967857) (not b!3401673) (not b_lambda!97081) (not b!3401643) (not b_next!89779) (not d!967843) (not b!3401661) (not bm!245855) (not b!3400283) (not d!967923) (not tb!182351) (not b!3401589) (not b!3401503) (not b!3401653) (not b!3400278) (not b!3400941) (not d!967789) (not d!967835) (not b!3401525) (not b_lambda!97045) (not d!967493) (not b!3400950) (not b!3401537) (not b!3401533) (not b!3401548) (not b!3401524) (not b!3401590) (not bm!245838) (not b_next!89743) (not b!3401656) (not b!3400877) (not b!3401466) (not b!3400674) (not b!3401645) (not b!3400996) (not b!3401594) (not b!3401276) (not b!3401393) (not bm!245854) (not b!3401496) (not b!3401639) (not d!967555) (not b_next!89757) (not b!3401543) (not b!3400765) (not b!3400763) (not b!3401660) (not b!3401616) (not b!3401654) (not b!3401044) (not b!3401678) (not d!967919) (not b_lambda!97089) b_and!237431 (not b!3401664) (not b!3401617) (not d!967885) (not b!3401046) (not b!3401344) (not d!967909) b_and!237415 (not b!3401489) b_and!237439 (not d!967805) (not b!3401612) (not b!3401531) (not b!3401281) (not d!967349) (not b!3400779) (not b!3401283) (not d!967807) (not b_lambda!97079) (not b!3400654) (not d!967529) (not b!3401647) (not d!967937) (not b!3401641) (not b!3401325) (not b!3400998) (not d!967777) (not b!3401609) (not b!3401604) (not b!3401668) (not b_next!89775) (not bm!245843) (not d!967813) (not b!3400836) (not b!3401669) (not b!3400985) (not b_lambda!97085) (not b!3400691) (not b!3401672) (not tb!182301) (not b!3401613) (not d!967907) (not b!3400752) (not b!3401341) (not b!3400768) (not b_lambda!97077) (not b!3400874) (not b!3400789) (not b_lambda!97043) (not b!3400865) (not b_lambda!97017) (not b!3400771) (not b!3400851) b_and!237421 b_and!237441 (not tb!182341) (not b!3401487) (not d!967581) (not b!3401023) (not b!3401024) (not d!967921) (not d!967791) (not d!967475) (not d!967439) (not b!3401529) (not b!3400671) (not b!3401581) (not b!3401010) b_and!237435 (not d!967787) (not d!967749) (not d!967447) (not b!3401551) (not b!3401552) (not b!3401522) (not b!3400873) (not b!3401264) (not b!3401642) (not d!967927) (not b!3401657) (not b!3401314) (not d!967489) (not d!967421) (not b!3401572) (not b!3401507) (not b!3401682) (not b!3401006) (not b!3401527) (not b!3401544) (not d!967487) (not b!3400981) (not b!3400715) (not d!967337) (not b!3401009) (not b!3401554) (not d!967547) (not b!3401635) (not b!3400694) (not b!3400714) (not b!3401478) (not b!3401539) (not b!3400878) (not d!967913) (not b!3401646) (not d!967393) (not b!3401322) (not b!3400716) (not d!967491) (not d!967579) (not d!967747) (not b!3401329) (not b!3401560) (not b!3401558) (not b!3401403) (not d!967435) (not b!3401620) (not b_next!89763) (not b!3401492) (not d!967605) (not b!3401633) (not d!967343) (not b!3400980) b_and!237425 (not d!967551) (not b!3401674) (not b_lambda!97015) (not b!3400672) (not d!967767) (not b!3401596) (not b!3401586) b_and!237419 (not b!3400775) (not b_lambda!97025) (not b!3400992) (not b!3400683) (not b!3400967) (not b_lambda!97023) (not b!3401330) (not b!3401670) (not b!3401476) (not d!967565) (not b!3401587) (not b!3401600) (not b!3401358) (not d!967915) (not d!967851) (not b!3400833) (not b!3401502) (not d!967855) (not bs!556349) (not d!967595) (not b!3401267) (not b!3400942) (not d!967889) (not b!3400870) (not b!3401345) (not b_lambda!97011) (not d!967781) (not b!3401571) (not b!3401342) (not b!3400753) (not b!3400787) (not b!3400982) (not b!3401546) b_and!237423 (not b!3400601) (not d!967441) (not bm!245841) (not b_next!89747) (not b_next!89773) (not b!3400964) (not d!967567) (not b!3400329) (not b!3401282) (not d!967821) (not b!3401270) (not b!3401598) (not b!3401605) (not b_next!89745) (not b!3401521) (not b!3401377) (not b_lambda!97055) (not b!3400651) (not b!3400960) b_and!237417 (not b!3401538) (not tb!182393) (not d!967845) (not d!967931) (not d!967831) (not d!967869) (not d!967643) (not b!3401556) (not b_next!89777) (not d!967479) (not d!967795) (not b!3401545) (not b!3401520) (not b!3401421) (not b_next!89761) (not d!967825) (not d!967853) (not b!3401655) (not b!3400979) (not b!3401676) (not d!967841) (not b!3401636) (not b_next!89759) (not b!3401681) (not b!3401680) (not d!967445) (not b!3400791) (not b!3401650) (not b!3401666) (not b!3401497) (not b!3401484) (not d!967501) (not b!3401651) (not d!967785) (not b!3401271) b_and!237429 (not d!967621) (not b_next!89737) (not b!3401477) (not b!3401501) (not d!967775) (not b!3401608) (not b!3401611) (not b_lambda!97013) (not b!3401567) (not d!967891) (not b!3400983) (not b!3401562) (not b!3400861) (not b!3400834) (not b!3400839) (not d!967525) (not d!967523) (not b!3401658) (not b!3401649) (not b!3401319) (not d!967935) (not d!967917) (not b!3400857) (not d!967757) (not b!3401274) (not b!3401278) (not bm!245842) (not d!967561) (not d!967797) (not b_lambda!97019) (not b_next!89741) (not b_next!89739) (not b!3401595) (not d!967481) (not b!3400780) (not b!3400859) (not d!967571) (not b!3401574) (not b!3401662) b_and!237433 (not b!3401068) (not b!3400970) (not b!3401637) (not b_lambda!97083) (not b!3401494) (not b!3401486) (not d!967761) (not d!967527) (not d!967867) (not d!967483) (not b!3401359) (not b!3400713) (not b!3401619) (not b!3400869) (not d!967819) (not b!3401327) (not b!3401279) (not b!3401601) (not b!3401378) (not b!3401621) (not b!3400673) (not d!967415) (not b!3401036) (not b!3400689) (not b!3401638) (not b!3401491) (not b!3400999) (not d!967839) (not b!3400959) (not d!967543) tp_is_empty!17505 (not b!3401622) (not b!3401535) (not b!3400754) (not b!3400867) (not d!967811) (not b!3401505) b_and!237427 (not d!967887) (not b!3401602) (not b!3401404) (not d!967925) (not d!967583) (not d!967559) (not b!3401575) (not b!3400995) (not b!3401615) (not b!3401523) (not d!967759) (not b!3401564) (not b!3401007) (not d!967577) (not d!967645) (not b_lambda!97021) (not d!967395) (not b!3400773) (not b_lambda!97087) (not b!3400951) (not d!967569) (not b!3400655) (not b!3401266))
(check-sat b_and!237437 (not b_next!89779) (not b_next!89743) (not b_next!89757) (not b_next!89775) b_and!237435 (not b_next!89763) b_and!237423 (not b_next!89759) b_and!237433 b_and!237427 b_and!237415 b_and!237431 b_and!237439 b_and!237421 b_and!237441 b_and!237419 b_and!237425 (not b_next!89747) b_and!237417 (not b_next!89773) (not b_next!89745) (not b_next!89761) (not b_next!89777) b_and!237429 (not b_next!89737) (not b_next!89741) (not b_next!89739))
