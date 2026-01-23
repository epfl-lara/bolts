; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55356 () Bool)

(assert start!55356)

(declare-fun b!590767 () Bool)

(declare-fun b_free!16557 () Bool)

(declare-fun b_next!16573 () Bool)

(assert (=> b!590767 (= b_free!16557 (not b_next!16573))))

(declare-fun tp!184214 () Bool)

(declare-fun b_and!58203 () Bool)

(assert (=> b!590767 (= tp!184214 b_and!58203)))

(declare-fun b_free!16559 () Bool)

(declare-fun b_next!16575 () Bool)

(assert (=> b!590767 (= b_free!16559 (not b_next!16575))))

(declare-fun tp!184207 () Bool)

(declare-fun b_and!58205 () Bool)

(assert (=> b!590767 (= tp!184207 b_and!58205)))

(declare-fun b!590776 () Bool)

(declare-fun b_free!16561 () Bool)

(declare-fun b_next!16577 () Bool)

(assert (=> b!590776 (= b_free!16561 (not b_next!16577))))

(declare-fun tp!184211 () Bool)

(declare-fun b_and!58207 () Bool)

(assert (=> b!590776 (= tp!184211 b_and!58207)))

(declare-fun b_free!16563 () Bool)

(declare-fun b_next!16579 () Bool)

(assert (=> b!590776 (= b_free!16563 (not b_next!16579))))

(declare-fun tp!184212 () Bool)

(declare-fun b_and!58209 () Bool)

(assert (=> b!590776 (= tp!184212 b_and!58209)))

(declare-fun b!590761 () Bool)

(declare-fun e!357161 () Bool)

(declare-fun e!357154 () Bool)

(assert (=> b!590761 (= e!357161 e!357154)))

(declare-fun res!254652 () Bool)

(assert (=> b!590761 (=> (not res!254652) (not e!357154))))

(declare-datatypes ((C!3876 0))(
  ( (C!3877 (val!2164 Int)) )
))
(declare-datatypes ((Regex!1477 0))(
  ( (ElementMatch!1477 (c!110245 C!3876)) (Concat!2644 (regOne!3466 Regex!1477) (regTwo!3466 Regex!1477)) (EmptyExpr!1477) (Star!1477 (reg!1806 Regex!1477)) (EmptyLang!1477) (Union!1477 (regOne!3467 Regex!1477) (regTwo!3467 Regex!1477)) )
))
(declare-datatypes ((List!5836 0))(
  ( (Nil!5826) (Cons!5826 (h!11227 (_ BitVec 16)) (t!78951 List!5836)) )
))
(declare-datatypes ((List!5837 0))(
  ( (Nil!5827) (Cons!5827 (h!11228 C!3876) (t!78952 List!5837)) )
))
(declare-datatypes ((IArray!3721 0))(
  ( (IArray!3722 (innerList!1918 List!5837)) )
))
(declare-datatypes ((String!7578 0))(
  ( (String!7579 (value!37416 String)) )
))
(declare-datatypes ((Conc!1860 0))(
  ( (Node!1860 (left!4740 Conc!1860) (right!5070 Conc!1860) (csize!3950 Int) (cheight!2071 Int)) (Leaf!2939 (xs!4497 IArray!3721) (csize!3951 Int)) (Empty!1860) )
))
(declare-datatypes ((BalanceConc!3728 0))(
  ( (BalanceConc!3729 (c!110246 Conc!1860)) )
))
(declare-datatypes ((TokenValue!1167 0))(
  ( (FloatLiteralValue!2334 (text!8614 List!5836)) (TokenValueExt!1166 (__x!4232 Int)) (Broken!5835 (value!37417 List!5836)) (Object!1176) (End!1167) (Def!1167) (Underscore!1167) (Match!1167) (Else!1167) (Error!1167) (Case!1167) (If!1167) (Extends!1167) (Abstract!1167) (Class!1167) (Val!1167) (DelimiterValue!2334 (del!1227 List!5836)) (KeywordValue!1173 (value!37418 List!5836)) (CommentValue!2334 (value!37419 List!5836)) (WhitespaceValue!2334 (value!37420 List!5836)) (IndentationValue!1167 (value!37421 List!5836)) (String!7580) (Int32!1167) (Broken!5836 (value!37422 List!5836)) (Boolean!1168) (Unit!10580) (OperatorValue!1170 (op!1227 List!5836)) (IdentifierValue!2334 (value!37423 List!5836)) (IdentifierValue!2335 (value!37424 List!5836)) (WhitespaceValue!2335 (value!37425 List!5836)) (True!2334) (False!2334) (Broken!5837 (value!37426 List!5836)) (Broken!5838 (value!37427 List!5836)) (True!2335) (RightBrace!1167) (RightBracket!1167) (Colon!1167) (Null!1167) (Comma!1167) (LeftBracket!1167) (False!2335) (LeftBrace!1167) (ImaginaryLiteralValue!1167 (text!8615 List!5836)) (StringLiteralValue!3501 (value!37428 List!5836)) (EOFValue!1167 (value!37429 List!5836)) (IdentValue!1167 (value!37430 List!5836)) (DelimiterValue!2335 (value!37431 List!5836)) (DedentValue!1167 (value!37432 List!5836)) (NewLineValue!1167 (value!37433 List!5836)) (IntegerValue!3501 (value!37434 (_ BitVec 32)) (text!8616 List!5836)) (IntegerValue!3502 (value!37435 Int) (text!8617 List!5836)) (Times!1167) (Or!1167) (Equal!1167) (Minus!1167) (Broken!5839 (value!37436 List!5836)) (And!1167) (Div!1167) (LessEqual!1167) (Mod!1167) (Concat!2645) (Not!1167) (Plus!1167) (SpaceValue!1167 (value!37437 List!5836)) (IntegerValue!3503 (value!37438 Int) (text!8618 List!5836)) (StringLiteralValue!3502 (text!8619 List!5836)) (FloatLiteralValue!2335 (text!8620 List!5836)) (BytesLiteralValue!1167 (value!37439 List!5836)) (CommentValue!2335 (value!37440 List!5836)) (StringLiteralValue!3503 (value!37441 List!5836)) (ErrorTokenValue!1167 (msg!1228 List!5836)) )
))
(declare-datatypes ((TokenValueInjection!2102 0))(
  ( (TokenValueInjection!2103 (toValue!2030 Int) (toChars!1889 Int)) )
))
(declare-datatypes ((Rule!2086 0))(
  ( (Rule!2087 (regex!1143 Regex!1477) (tag!1405 String!7578) (isSeparator!1143 Bool) (transformation!1143 TokenValueInjection!2102)) )
))
(declare-datatypes ((Token!2022 0))(
  ( (Token!2023 (value!37442 TokenValue!1167) (rule!1911 Rule!2086) (size!4618 Int) (originalCharacters!1182 List!5837)) )
))
(declare-datatypes ((tuple2!6776 0))(
  ( (tuple2!6777 (_1!3652 Token!2022) (_2!3652 List!5837)) )
))
(declare-datatypes ((Option!1494 0))(
  ( (None!1493) (Some!1493 (v!16378 tuple2!6776)) )
))
(declare-fun lt!250214 () Option!1494)

(get-info :version)

(assert (=> b!590761 (= res!254652 ((_ is Some!1493) lt!250214))))

(declare-datatypes ((List!5838 0))(
  ( (Nil!5828) (Cons!5828 (h!11229 Rule!2086) (t!78953 List!5838)) )
))
(declare-fun rules!3103 () List!5838)

(declare-datatypes ((LexerInterface!1029 0))(
  ( (LexerInterfaceExt!1026 (__x!4233 Int)) (Lexer!1027) )
))
(declare-fun thiss!22590 () LexerInterface!1029)

(declare-fun input!2705 () List!5837)

(declare-fun maxPrefix!727 (LexerInterface!1029 List!5838 List!5837) Option!1494)

(assert (=> b!590761 (= lt!250214 (maxPrefix!727 thiss!22590 rules!3103 input!2705))))

(declare-fun b!590762 () Bool)

(declare-fun res!254654 () Bool)

(declare-fun e!357156 () Bool)

(assert (=> b!590762 (=> (not res!254654) (not e!357156))))

(declare-fun rulesInvariant!992 (LexerInterface!1029 List!5838) Bool)

(assert (=> b!590762 (= res!254654 (rulesInvariant!992 thiss!22590 rules!3103))))

(declare-fun b!590763 () Bool)

(declare-fun e!357162 () Bool)

(declare-fun e!357155 () Bool)

(declare-fun tp!184205 () Bool)

(assert (=> b!590763 (= e!357162 (and e!357155 tp!184205))))

(declare-fun tp!184209 () Bool)

(declare-fun e!357157 () Bool)

(declare-fun token!491 () Token!2022)

(declare-fun b!590764 () Bool)

(declare-fun e!357158 () Bool)

(declare-fun inv!7374 (String!7578) Bool)

(declare-fun inv!7377 (TokenValueInjection!2102) Bool)

(assert (=> b!590764 (= e!357158 (and tp!184209 (inv!7374 (tag!1405 (rule!1911 token!491))) (inv!7377 (transformation!1143 (rule!1911 token!491))) e!357157))))

(declare-fun b!590765 () Bool)

(declare-fun e!357151 () Bool)

(assert (=> b!590765 (= e!357156 e!357151)))

(declare-fun res!254649 () Bool)

(assert (=> b!590765 (=> (not res!254649) (not e!357151))))

(declare-fun lt!250209 () List!5837)

(assert (=> b!590765 (= res!254649 (= lt!250209 input!2705))))

(declare-fun list!2438 (BalanceConc!3728) List!5837)

(declare-fun charsOf!772 (Token!2022) BalanceConc!3728)

(assert (=> b!590765 (= lt!250209 (list!2438 (charsOf!772 token!491)))))

(declare-fun e!357159 () Bool)

(declare-fun b!590766 () Bool)

(declare-fun tp!184208 () Bool)

(assert (=> b!590766 (= e!357155 (and tp!184208 (inv!7374 (tag!1405 (h!11229 rules!3103))) (inv!7377 (transformation!1143 (h!11229 rules!3103))) e!357159))))

(declare-fun res!254647 () Bool)

(assert (=> start!55356 (=> (not res!254647) (not e!357156))))

(assert (=> start!55356 (= res!254647 ((_ is Lexer!1027) thiss!22590))))

(assert (=> start!55356 e!357156))

(declare-fun e!357149 () Bool)

(assert (=> start!55356 e!357149))

(assert (=> start!55356 e!357162))

(declare-fun e!357160 () Bool)

(declare-fun inv!7378 (Token!2022) Bool)

(assert (=> start!55356 (and (inv!7378 token!491) e!357160)))

(assert (=> start!55356 true))

(declare-fun e!357165 () Bool)

(assert (=> start!55356 e!357165))

(assert (=> b!590767 (= e!357157 (and tp!184214 tp!184207))))

(declare-fun b!590768 () Bool)

(declare-fun res!254646 () Bool)

(assert (=> b!590768 (=> (not res!254646) (not e!357156))))

(declare-fun isEmpty!4207 (List!5838) Bool)

(assert (=> b!590768 (= res!254646 (not (isEmpty!4207 rules!3103)))))

(declare-fun b!590769 () Bool)

(assert (=> b!590769 (= e!357154 (not true))))

(declare-fun lt!250216 () List!5837)

(declare-fun apply!1396 (TokenValueInjection!2102 BalanceConc!3728) TokenValue!1167)

(declare-fun seqFromList!1319 (List!5837) BalanceConc!3728)

(assert (=> b!590769 (= (value!37442 (_1!3652 (v!16378 lt!250214))) (apply!1396 (transformation!1143 (rule!1911 (_1!3652 (v!16378 lt!250214)))) (seqFromList!1319 lt!250216)))))

(declare-datatypes ((Unit!10581 0))(
  ( (Unit!10582) )
))
(declare-fun lt!250213 () Unit!10581)

(declare-fun lemmaInv!251 (TokenValueInjection!2102) Unit!10581)

(assert (=> b!590769 (= lt!250213 (lemmaInv!251 (transformation!1143 (rule!1911 token!491))))))

(declare-fun lt!250210 () Unit!10581)

(assert (=> b!590769 (= lt!250210 (lemmaInv!251 (transformation!1143 (rule!1911 (_1!3652 (v!16378 lt!250214))))))))

(declare-fun ruleValid!341 (LexerInterface!1029 Rule!2086) Bool)

(assert (=> b!590769 (ruleValid!341 thiss!22590 (rule!1911 token!491))))

(declare-fun lt!250211 () Unit!10581)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!188 (LexerInterface!1029 Rule!2086 List!5838) Unit!10581)

(assert (=> b!590769 (= lt!250211 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!188 thiss!22590 (rule!1911 token!491) rules!3103))))

(assert (=> b!590769 (ruleValid!341 thiss!22590 (rule!1911 (_1!3652 (v!16378 lt!250214))))))

(declare-fun lt!250205 () Unit!10581)

(assert (=> b!590769 (= lt!250205 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!188 thiss!22590 (rule!1911 (_1!3652 (v!16378 lt!250214))) rules!3103))))

(declare-fun isPrefix!771 (List!5837 List!5837) Bool)

(assert (=> b!590769 (isPrefix!771 input!2705 input!2705)))

(declare-fun lt!250220 () Unit!10581)

(declare-fun lemmaIsPrefixRefl!507 (List!5837 List!5837) Unit!10581)

(assert (=> b!590769 (= lt!250220 (lemmaIsPrefixRefl!507 input!2705 input!2705))))

(declare-fun lt!250221 () List!5837)

(assert (=> b!590769 (= (_2!3652 (v!16378 lt!250214)) lt!250221)))

(declare-fun lt!250215 () Unit!10581)

(declare-fun lemmaSamePrefixThenSameSuffix!484 (List!5837 List!5837 List!5837 List!5837 List!5837) Unit!10581)

(assert (=> b!590769 (= lt!250215 (lemmaSamePrefixThenSameSuffix!484 lt!250216 (_2!3652 (v!16378 lt!250214)) lt!250216 lt!250221 input!2705))))

(declare-fun getSuffix!288 (List!5837 List!5837) List!5837)

(assert (=> b!590769 (= lt!250221 (getSuffix!288 input!2705 lt!250216))))

(declare-fun ++!1631 (List!5837 List!5837) List!5837)

(assert (=> b!590769 (isPrefix!771 lt!250216 (++!1631 lt!250216 (_2!3652 (v!16378 lt!250214))))))

(declare-fun lt!250207 () Unit!10581)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!616 (List!5837 List!5837) Unit!10581)

(assert (=> b!590769 (= lt!250207 (lemmaConcatTwoListThenFirstIsPrefix!616 lt!250216 (_2!3652 (v!16378 lt!250214))))))

(declare-fun lt!250217 () Unit!10581)

(declare-fun lemmaCharactersSize!202 (Token!2022) Unit!10581)

(assert (=> b!590769 (= lt!250217 (lemmaCharactersSize!202 token!491))))

(declare-fun lt!250219 () Unit!10581)

(assert (=> b!590769 (= lt!250219 (lemmaCharactersSize!202 (_1!3652 (v!16378 lt!250214))))))

(declare-fun lt!250208 () Unit!10581)

(declare-fun e!357150 () Unit!10581)

(assert (=> b!590769 (= lt!250208 e!357150)))

(declare-fun c!110244 () Bool)

(declare-fun size!4619 (List!5837) Int)

(assert (=> b!590769 (= c!110244 (> (size!4619 lt!250216) (size!4619 lt!250209)))))

(assert (=> b!590769 (= lt!250216 (list!2438 (charsOf!772 (_1!3652 (v!16378 lt!250214)))))))

(assert (=> b!590769 (= lt!250214 (Some!1493 (v!16378 lt!250214)))))

(declare-fun suffix!1342 () List!5837)

(declare-fun lt!250212 () Unit!10581)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!216 (List!5837 List!5837 List!5837 List!5837) Unit!10581)

(assert (=> b!590769 (= lt!250212 (lemmaConcatSameAndSameSizesThenSameLists!216 lt!250209 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!590770 () Bool)

(declare-fun e!357163 () Bool)

(assert (=> b!590770 (= e!357163 e!357161)))

(declare-fun res!254651 () Bool)

(assert (=> b!590770 (=> (not res!254651) (not e!357161))))

(declare-fun lt!250206 () tuple2!6776)

(assert (=> b!590770 (= res!254651 (and (= (_1!3652 lt!250206) token!491) (= (_2!3652 lt!250206) suffix!1342)))))

(declare-fun lt!250222 () Option!1494)

(declare-fun get!2229 (Option!1494) tuple2!6776)

(assert (=> b!590770 (= lt!250206 (get!2229 lt!250222))))

(declare-fun b!590771 () Bool)

(declare-fun res!254650 () Bool)

(assert (=> b!590771 (=> (not res!254650) (not e!357156))))

(declare-fun isEmpty!4208 (List!5837) Bool)

(assert (=> b!590771 (= res!254650 (not (isEmpty!4208 input!2705)))))

(declare-fun b!590772 () Bool)

(declare-fun tp_is_empty!3309 () Bool)

(declare-fun tp!184206 () Bool)

(assert (=> b!590772 (= e!357149 (and tp_is_empty!3309 tp!184206))))

(declare-fun b!590773 () Bool)

(declare-fun tp!184213 () Bool)

(assert (=> b!590773 (= e!357165 (and tp_is_empty!3309 tp!184213))))

(declare-fun b!590774 () Bool)

(declare-fun Unit!10583 () Unit!10581)

(assert (=> b!590774 (= e!357150 Unit!10583)))

(assert (=> b!590774 false))

(declare-fun b!590775 () Bool)

(declare-fun res!254653 () Bool)

(assert (=> b!590775 (=> (not res!254653) (not e!357154))))

(declare-fun lt!250218 () List!5837)

(assert (=> b!590775 (= res!254653 (= (++!1631 lt!250209 suffix!1342) lt!250218))))

(assert (=> b!590776 (= e!357159 (and tp!184211 tp!184212))))

(declare-fun b!590777 () Bool)

(declare-fun Unit!10584 () Unit!10581)

(assert (=> b!590777 (= e!357150 Unit!10584)))

(declare-fun b!590778 () Bool)

(declare-fun tp!184210 () Bool)

(declare-fun inv!21 (TokenValue!1167) Bool)

(assert (=> b!590778 (= e!357160 (and (inv!21 (value!37442 token!491)) e!357158 tp!184210))))

(declare-fun b!590779 () Bool)

(assert (=> b!590779 (= e!357151 e!357163)))

(declare-fun res!254648 () Bool)

(assert (=> b!590779 (=> (not res!254648) (not e!357163))))

(declare-fun isDefined!1305 (Option!1494) Bool)

(assert (=> b!590779 (= res!254648 (isDefined!1305 lt!250222))))

(assert (=> b!590779 (= lt!250222 (maxPrefix!727 thiss!22590 rules!3103 lt!250218))))

(assert (=> b!590779 (= lt!250218 (++!1631 input!2705 suffix!1342))))

(assert (= (and start!55356 res!254647) b!590768))

(assert (= (and b!590768 res!254646) b!590762))

(assert (= (and b!590762 res!254654) b!590771))

(assert (= (and b!590771 res!254650) b!590765))

(assert (= (and b!590765 res!254649) b!590779))

(assert (= (and b!590779 res!254648) b!590770))

(assert (= (and b!590770 res!254651) b!590761))

(assert (= (and b!590761 res!254652) b!590775))

(assert (= (and b!590775 res!254653) b!590769))

(assert (= (and b!590769 c!110244) b!590774))

(assert (= (and b!590769 (not c!110244)) b!590777))

(assert (= (and start!55356 ((_ is Cons!5827) suffix!1342)) b!590772))

(assert (= b!590766 b!590776))

(assert (= b!590763 b!590766))

(assert (= (and start!55356 ((_ is Cons!5828) rules!3103)) b!590763))

(assert (= b!590764 b!590767))

(assert (= b!590778 b!590764))

(assert (= start!55356 b!590778))

(assert (= (and start!55356 ((_ is Cons!5827) input!2705)) b!590773))

(declare-fun m!851859 () Bool)

(assert (=> b!590762 m!851859))

(declare-fun m!851861 () Bool)

(assert (=> b!590765 m!851861))

(assert (=> b!590765 m!851861))

(declare-fun m!851863 () Bool)

(assert (=> b!590765 m!851863))

(declare-fun m!851865 () Bool)

(assert (=> b!590764 m!851865))

(declare-fun m!851867 () Bool)

(assert (=> b!590764 m!851867))

(declare-fun m!851869 () Bool)

(assert (=> b!590778 m!851869))

(declare-fun m!851871 () Bool)

(assert (=> b!590768 m!851871))

(declare-fun m!851873 () Bool)

(assert (=> b!590769 m!851873))

(declare-fun m!851875 () Bool)

(assert (=> b!590769 m!851875))

(declare-fun m!851877 () Bool)

(assert (=> b!590769 m!851877))

(declare-fun m!851879 () Bool)

(assert (=> b!590769 m!851879))

(declare-fun m!851881 () Bool)

(assert (=> b!590769 m!851881))

(declare-fun m!851883 () Bool)

(assert (=> b!590769 m!851883))

(assert (=> b!590769 m!851873))

(declare-fun m!851885 () Bool)

(assert (=> b!590769 m!851885))

(declare-fun m!851887 () Bool)

(assert (=> b!590769 m!851887))

(declare-fun m!851889 () Bool)

(assert (=> b!590769 m!851889))

(declare-fun m!851891 () Bool)

(assert (=> b!590769 m!851891))

(declare-fun m!851893 () Bool)

(assert (=> b!590769 m!851893))

(declare-fun m!851895 () Bool)

(assert (=> b!590769 m!851895))

(declare-fun m!851897 () Bool)

(assert (=> b!590769 m!851897))

(declare-fun m!851899 () Bool)

(assert (=> b!590769 m!851899))

(declare-fun m!851901 () Bool)

(assert (=> b!590769 m!851901))

(assert (=> b!590769 m!851895))

(declare-fun m!851903 () Bool)

(assert (=> b!590769 m!851903))

(declare-fun m!851905 () Bool)

(assert (=> b!590769 m!851905))

(declare-fun m!851907 () Bool)

(assert (=> b!590769 m!851907))

(declare-fun m!851909 () Bool)

(assert (=> b!590769 m!851909))

(declare-fun m!851911 () Bool)

(assert (=> b!590769 m!851911))

(declare-fun m!851913 () Bool)

(assert (=> b!590769 m!851913))

(assert (=> b!590769 m!851899))

(declare-fun m!851915 () Bool)

(assert (=> b!590769 m!851915))

(declare-fun m!851917 () Bool)

(assert (=> b!590761 m!851917))

(declare-fun m!851919 () Bool)

(assert (=> b!590771 m!851919))

(declare-fun m!851921 () Bool)

(assert (=> start!55356 m!851921))

(declare-fun m!851923 () Bool)

(assert (=> b!590779 m!851923))

(declare-fun m!851925 () Bool)

(assert (=> b!590779 m!851925))

(declare-fun m!851927 () Bool)

(assert (=> b!590779 m!851927))

(declare-fun m!851929 () Bool)

(assert (=> b!590775 m!851929))

(declare-fun m!851931 () Bool)

(assert (=> b!590766 m!851931))

(declare-fun m!851933 () Bool)

(assert (=> b!590766 m!851933))

(declare-fun m!851935 () Bool)

(assert (=> b!590770 m!851935))

(check-sat (not b!590764) (not b_next!16579) (not b!590779) tp_is_empty!3309 b_and!58205 (not b!590761) (not b!590768) (not b!590769) (not b!590765) b_and!58209 (not b!590772) (not b!590762) (not b!590773) (not b!590771) (not b!590778) (not b!590770) (not b_next!16577) (not start!55356) (not b_next!16575) b_and!58203 (not b!590775) (not b!590766) (not b!590763) (not b_next!16573) b_and!58207)
(check-sat (not b_next!16579) (not b_next!16577) (not b_next!16575) b_and!58203 b_and!58205 b_and!58209 (not b_next!16573) b_and!58207)
