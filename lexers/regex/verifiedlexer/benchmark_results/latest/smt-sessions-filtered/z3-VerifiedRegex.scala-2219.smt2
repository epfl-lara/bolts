; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108762 () Bool)

(assert start!108762)

(declare-fun b!1216955 () Bool)

(declare-fun b_free!29305 () Bool)

(declare-fun b_next!30009 () Bool)

(assert (=> b!1216955 (= b_free!29305 (not b_next!30009))))

(declare-fun tp!345624 () Bool)

(declare-fun b_and!82721 () Bool)

(assert (=> b!1216955 (= tp!345624 b_and!82721)))

(declare-fun b_free!29307 () Bool)

(declare-fun b_next!30011 () Bool)

(assert (=> b!1216955 (= b_free!29307 (not b_next!30011))))

(declare-fun tp!345623 () Bool)

(declare-fun b_and!82723 () Bool)

(assert (=> b!1216955 (= tp!345623 b_and!82723)))

(declare-fun b!1216953 () Bool)

(declare-fun b_free!29309 () Bool)

(declare-fun b_next!30013 () Bool)

(assert (=> b!1216953 (= b_free!29309 (not b_next!30013))))

(declare-fun tp!345620 () Bool)

(declare-fun b_and!82725 () Bool)

(assert (=> b!1216953 (= tp!345620 b_and!82725)))

(declare-fun b_free!29311 () Bool)

(declare-fun b_next!30015 () Bool)

(assert (=> b!1216953 (= b_free!29311 (not b_next!30015))))

(declare-fun tp!345619 () Bool)

(declare-fun b_and!82727 () Bool)

(assert (=> b!1216953 (= tp!345619 b_and!82727)))

(declare-fun b!1216948 () Bool)

(declare-fun res!547201 () Bool)

(declare-fun e!781150 () Bool)

(assert (=> b!1216948 (=> (not res!547201) (not e!781150))))

(declare-datatypes ((LexerInterface!1838 0))(
  ( (LexerInterfaceExt!1835 (__x!8137 Int)) (Lexer!1836) )
))
(declare-fun thiss!20528 () LexerInterface!1838)

(declare-datatypes ((List!12498 0))(
  ( (Nil!12440) (Cons!12440 (h!17841 (_ BitVec 16)) (t!113244 List!12498)) )
))
(declare-datatypes ((TokenValue!2211 0))(
  ( (FloatLiteralValue!4422 (text!15922 List!12498)) (TokenValueExt!2210 (__x!8138 Int)) (Broken!11055 (value!69646 List!12498)) (Object!2268) (End!2211) (Def!2211) (Underscore!2211) (Match!2211) (Else!2211) (Error!2211) (Case!2211) (If!2211) (Extends!2211) (Abstract!2211) (Class!2211) (Val!2211) (DelimiterValue!4422 (del!2271 List!12498)) (KeywordValue!2217 (value!69647 List!12498)) (CommentValue!4422 (value!69648 List!12498)) (WhitespaceValue!4422 (value!69649 List!12498)) (IndentationValue!2211 (value!69650 List!12498)) (String!15186) (Int32!2211) (Broken!11056 (value!69651 List!12498)) (Boolean!2212) (Unit!18709) (OperatorValue!2214 (op!2271 List!12498)) (IdentifierValue!4422 (value!69652 List!12498)) (IdentifierValue!4423 (value!69653 List!12498)) (WhitespaceValue!4423 (value!69654 List!12498)) (True!4422) (False!4422) (Broken!11057 (value!69655 List!12498)) (Broken!11058 (value!69656 List!12498)) (True!4423) (RightBrace!2211) (RightBracket!2211) (Colon!2211) (Null!2211) (Comma!2211) (LeftBracket!2211) (False!4423) (LeftBrace!2211) (ImaginaryLiteralValue!2211 (text!15923 List!12498)) (StringLiteralValue!6633 (value!69657 List!12498)) (EOFValue!2211 (value!69658 List!12498)) (IdentValue!2211 (value!69659 List!12498)) (DelimiterValue!4423 (value!69660 List!12498)) (DedentValue!2211 (value!69661 List!12498)) (NewLineValue!2211 (value!69662 List!12498)) (IntegerValue!6633 (value!69663 (_ BitVec 32)) (text!15924 List!12498)) (IntegerValue!6634 (value!69664 Int) (text!15925 List!12498)) (Times!2211) (Or!2211) (Equal!2211) (Minus!2211) (Broken!11059 (value!69665 List!12498)) (And!2211) (Div!2211) (LessEqual!2211) (Mod!2211) (Concat!5624) (Not!2211) (Plus!2211) (SpaceValue!2211 (value!69666 List!12498)) (IntegerValue!6635 (value!69667 Int) (text!15926 List!12498)) (StringLiteralValue!6634 (text!15927 List!12498)) (FloatLiteralValue!4423 (text!15928 List!12498)) (BytesLiteralValue!2211 (value!69668 List!12498)) (CommentValue!4423 (value!69669 List!12498)) (StringLiteralValue!6635 (value!69670 List!12498)) (ErrorTokenValue!2211 (msg!2272 List!12498)) )
))
(declare-datatypes ((C!7144 0))(
  ( (C!7145 (val!4102 Int)) )
))
(declare-datatypes ((List!12499 0))(
  ( (Nil!12441) (Cons!12441 (h!17842 C!7144) (t!113245 List!12499)) )
))
(declare-datatypes ((IArray!8145 0))(
  ( (IArray!8146 (innerList!4130 List!12499)) )
))
(declare-datatypes ((Conc!4070 0))(
  ( (Node!4070 (left!10729 Conc!4070) (right!11059 Conc!4070) (csize!8370 Int) (cheight!4281 Int)) (Leaf!6290 (xs!6781 IArray!8145) (csize!8371 Int)) (Empty!4070) )
))
(declare-datatypes ((Regex!3413 0))(
  ( (ElementMatch!3413 (c!203514 C!7144)) (Concat!5625 (regOne!7338 Regex!3413) (regTwo!7338 Regex!3413)) (EmptyExpr!3413) (Star!3413 (reg!3742 Regex!3413)) (EmptyLang!3413) (Union!3413 (regOne!7339 Regex!3413) (regTwo!7339 Regex!3413)) )
))
(declare-datatypes ((String!15187 0))(
  ( (String!15188 (value!69671 String)) )
))
(declare-datatypes ((BalanceConc!8072 0))(
  ( (BalanceConc!8073 (c!203515 Conc!4070)) )
))
(declare-datatypes ((TokenValueInjection!4118 0))(
  ( (TokenValueInjection!4119 (toValue!3272 Int) (toChars!3131 Int)) )
))
(declare-datatypes ((Rule!4086 0))(
  ( (Rule!4087 (regex!2143 Regex!3413) (tag!2405 String!15187) (isSeparator!2143 Bool) (transformation!2143 TokenValueInjection!4118)) )
))
(declare-datatypes ((List!12500 0))(
  ( (Nil!12442) (Cons!12442 (h!17843 Rule!4086) (t!113246 List!12500)) )
))
(declare-fun rules!2728 () List!12500)

(declare-fun rulesInvariant!1712 (LexerInterface!1838 List!12500) Bool)

(assert (=> b!1216948 (= res!547201 (rulesInvariant!1712 thiss!20528 rules!2728))))

(declare-fun res!547198 () Bool)

(assert (=> start!108762 (=> (not res!547198) (not e!781150))))

(get-info :version)

(assert (=> start!108762 (= res!547198 ((_ is Lexer!1836) thiss!20528))))

(assert (=> start!108762 e!781150))

(assert (=> start!108762 true))

(declare-fun e!781143 () Bool)

(assert (=> start!108762 e!781143))

(declare-fun e!781145 () Bool)

(assert (=> start!108762 e!781145))

(declare-fun e!781142 () Bool)

(assert (=> start!108762 e!781142))

(declare-fun tp!345616 () Bool)

(declare-fun e!781148 () Bool)

(declare-fun e!781141 () Bool)

(declare-fun b!1216949 () Bool)

(declare-datatypes ((Token!3948 0))(
  ( (Token!3949 (value!69672 TokenValue!2211) (rule!3568 Rule!4086) (size!9829 Int) (originalCharacters!2697 List!12499)) )
))
(declare-datatypes ((List!12501 0))(
  ( (Nil!12443) (Cons!12443 (h!17844 Token!3948) (t!113247 List!12501)) )
))
(declare-fun tokens!556 () List!12501)

(declare-fun inv!16628 (String!15187) Bool)

(declare-fun inv!16631 (TokenValueInjection!4118) Bool)

(assert (=> b!1216949 (= e!781148 (and tp!345616 (inv!16628 (tag!2405 (rule!3568 (h!17844 tokens!556)))) (inv!16631 (transformation!2143 (rule!3568 (h!17844 tokens!556)))) e!781141))))

(declare-fun b!1216950 () Bool)

(declare-fun res!547200 () Bool)

(assert (=> b!1216950 (=> (not res!547200) (not e!781150))))

(declare-fun input!2346 () List!12499)

(declare-datatypes ((tuple2!12304 0))(
  ( (tuple2!12305 (_1!6999 List!12501) (_2!6999 List!12499)) )
))
(declare-fun lexList!468 (LexerInterface!1838 List!12500 List!12499) tuple2!12304)

(assert (=> b!1216950 (= res!547200 (= (_1!6999 (lexList!468 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun b!1216951 () Bool)

(declare-fun ListPrimitiveSize!96 (List!12501) Int)

(assert (=> b!1216951 (= e!781150 (< (ListPrimitiveSize!96 tokens!556) 0))))

(declare-fun b!1216952 () Bool)

(declare-fun tp_is_empty!6347 () Bool)

(declare-fun tp!345622 () Bool)

(assert (=> b!1216952 (= e!781145 (and tp_is_empty!6347 tp!345622))))

(assert (=> b!1216953 (= e!781141 (and tp!345620 tp!345619))))

(declare-fun tp!345621 () Bool)

(declare-fun b!1216954 () Bool)

(declare-fun e!781149 () Bool)

(declare-fun inv!21 (TokenValue!2211) Bool)

(assert (=> b!1216954 (= e!781149 (and (inv!21 (value!69672 (h!17844 tokens!556))) e!781148 tp!345621))))

(declare-fun e!781147 () Bool)

(assert (=> b!1216955 (= e!781147 (and tp!345624 tp!345623))))

(declare-fun tp!345618 () Bool)

(declare-fun b!1216956 () Bool)

(declare-fun inv!16632 (Token!3948) Bool)

(assert (=> b!1216956 (= e!781142 (and (inv!16632 (h!17844 tokens!556)) e!781149 tp!345618))))

(declare-fun b!1216957 () Bool)

(declare-fun e!781146 () Bool)

(declare-fun tp!345617 () Bool)

(assert (=> b!1216957 (= e!781143 (and e!781146 tp!345617))))

(declare-fun b!1216958 () Bool)

(declare-fun tp!345625 () Bool)

(assert (=> b!1216958 (= e!781146 (and tp!345625 (inv!16628 (tag!2405 (h!17843 rules!2728))) (inv!16631 (transformation!2143 (h!17843 rules!2728))) e!781147))))

(declare-fun b!1216959 () Bool)

(declare-fun res!547199 () Bool)

(assert (=> b!1216959 (=> (not res!547199) (not e!781150))))

(declare-fun isEmpty!7394 (List!12500) Bool)

(assert (=> b!1216959 (= res!547199 (not (isEmpty!7394 rules!2728)))))

(assert (= (and start!108762 res!547198) b!1216959))

(assert (= (and b!1216959 res!547199) b!1216948))

(assert (= (and b!1216948 res!547201) b!1216950))

(assert (= (and b!1216950 res!547200) b!1216951))

(assert (= b!1216958 b!1216955))

(assert (= b!1216957 b!1216958))

(assert (= (and start!108762 ((_ is Cons!12442) rules!2728)) b!1216957))

(assert (= (and start!108762 ((_ is Cons!12441) input!2346)) b!1216952))

(assert (= b!1216949 b!1216953))

(assert (= b!1216954 b!1216949))

(assert (= b!1216956 b!1216954))

(assert (= (and start!108762 ((_ is Cons!12443) tokens!556)) b!1216956))

(declare-fun m!1391143 () Bool)

(assert (=> b!1216950 m!1391143))

(declare-fun m!1391145 () Bool)

(assert (=> b!1216951 m!1391145))

(declare-fun m!1391147 () Bool)

(assert (=> b!1216948 m!1391147))

(declare-fun m!1391149 () Bool)

(assert (=> b!1216949 m!1391149))

(declare-fun m!1391151 () Bool)

(assert (=> b!1216949 m!1391151))

(declare-fun m!1391153 () Bool)

(assert (=> b!1216959 m!1391153))

(declare-fun m!1391155 () Bool)

(assert (=> b!1216954 m!1391155))

(declare-fun m!1391157 () Bool)

(assert (=> b!1216956 m!1391157))

(declare-fun m!1391159 () Bool)

(assert (=> b!1216958 m!1391159))

(declare-fun m!1391161 () Bool)

(assert (=> b!1216958 m!1391161))

(check-sat (not b!1216949) b_and!82721 b_and!82725 (not b!1216956) (not b!1216951) b_and!82723 (not b!1216958) (not b!1216957) (not b_next!30013) (not b_next!30009) (not b!1216954) (not b_next!30011) (not b!1216948) (not b_next!30015) b_and!82727 tp_is_empty!6347 (not b!1216952) (not b!1216950) (not b!1216959))
(check-sat (not b_next!30011) b_and!82721 b_and!82725 b_and!82723 (not b_next!30013) (not b_next!30009) (not b_next!30015) b_and!82727)
(get-model)

(declare-fun d!347474 () Bool)

(declare-fun res!547204 () Bool)

(declare-fun e!781153 () Bool)

(assert (=> d!347474 (=> (not res!547204) (not e!781153))))

(declare-fun rulesValid!767 (LexerInterface!1838 List!12500) Bool)

(assert (=> d!347474 (= res!547204 (rulesValid!767 thiss!20528 rules!2728))))

(assert (=> d!347474 (= (rulesInvariant!1712 thiss!20528 rules!2728) e!781153)))

(declare-fun b!1216962 () Bool)

(declare-datatypes ((List!12502 0))(
  ( (Nil!12444) (Cons!12444 (h!17845 String!15187) (t!113264 List!12502)) )
))
(declare-fun noDuplicateTag!767 (LexerInterface!1838 List!12500 List!12502) Bool)

(assert (=> b!1216962 (= e!781153 (noDuplicateTag!767 thiss!20528 rules!2728 Nil!12444))))

(assert (= (and d!347474 res!547204) b!1216962))

(declare-fun m!1391163 () Bool)

(assert (=> d!347474 m!1391163))

(declare-fun m!1391165 () Bool)

(assert (=> b!1216962 m!1391165))

(assert (=> b!1216948 d!347474))

(declare-fun d!347476 () Bool)

(assert (=> d!347476 (= (isEmpty!7394 rules!2728) ((_ is Nil!12442) rules!2728))))

(assert (=> b!1216959 d!347476))

(declare-fun d!347478 () Bool)

(assert (=> d!347478 (= (inv!16628 (tag!2405 (h!17843 rules!2728))) (= (mod (str.len (value!69671 (tag!2405 (h!17843 rules!2728)))) 2) 0))))

(assert (=> b!1216958 d!347478))

(declare-fun d!347480 () Bool)

(declare-fun res!547207 () Bool)

(declare-fun e!781156 () Bool)

(assert (=> d!347480 (=> (not res!547207) (not e!781156))))

(declare-fun semiInverseModEq!779 (Int Int) Bool)

(assert (=> d!347480 (= res!547207 (semiInverseModEq!779 (toChars!3131 (transformation!2143 (h!17843 rules!2728))) (toValue!3272 (transformation!2143 (h!17843 rules!2728)))))))

(assert (=> d!347480 (= (inv!16631 (transformation!2143 (h!17843 rules!2728))) e!781156)))

(declare-fun b!1216965 () Bool)

(declare-fun equivClasses!746 (Int Int) Bool)

(assert (=> b!1216965 (= e!781156 (equivClasses!746 (toChars!3131 (transformation!2143 (h!17843 rules!2728))) (toValue!3272 (transformation!2143 (h!17843 rules!2728)))))))

(assert (= (and d!347480 res!547207) b!1216965))

(declare-fun m!1391167 () Bool)

(assert (=> d!347480 m!1391167))

(declare-fun m!1391169 () Bool)

(assert (=> b!1216965 m!1391169))

(assert (=> b!1216958 d!347480))

(declare-fun d!347484 () Bool)

(declare-fun res!547212 () Bool)

(declare-fun e!781159 () Bool)

(assert (=> d!347484 (=> (not res!547212) (not e!781159))))

(declare-fun isEmpty!7396 (List!12499) Bool)

(assert (=> d!347484 (= res!547212 (not (isEmpty!7396 (originalCharacters!2697 (h!17844 tokens!556)))))))

(assert (=> d!347484 (= (inv!16632 (h!17844 tokens!556)) e!781159)))

(declare-fun b!1216970 () Bool)

(declare-fun res!547213 () Bool)

(assert (=> b!1216970 (=> (not res!547213) (not e!781159))))

(declare-fun list!4584 (BalanceConc!8072) List!12499)

(declare-fun dynLambda!5422 (Int TokenValue!2211) BalanceConc!8072)

(assert (=> b!1216970 (= res!547213 (= (originalCharacters!2697 (h!17844 tokens!556)) (list!4584 (dynLambda!5422 (toChars!3131 (transformation!2143 (rule!3568 (h!17844 tokens!556)))) (value!69672 (h!17844 tokens!556))))))))

(declare-fun b!1216971 () Bool)

(declare-fun size!9832 (List!12499) Int)

(assert (=> b!1216971 (= e!781159 (= (size!9829 (h!17844 tokens!556)) (size!9832 (originalCharacters!2697 (h!17844 tokens!556)))))))

(assert (= (and d!347484 res!547212) b!1216970))

(assert (= (and b!1216970 res!547213) b!1216971))

(declare-fun b_lambda!35887 () Bool)

(assert (=> (not b_lambda!35887) (not b!1216970)))

(declare-fun t!113249 () Bool)

(declare-fun tb!66833 () Bool)

(assert (=> (and b!1216955 (= (toChars!3131 (transformation!2143 (h!17843 rules!2728))) (toChars!3131 (transformation!2143 (rule!3568 (h!17844 tokens!556))))) t!113249) tb!66833))

(declare-fun b!1216976 () Bool)

(declare-fun e!781162 () Bool)

(declare-fun tp!345628 () Bool)

(declare-fun inv!16633 (Conc!4070) Bool)

(assert (=> b!1216976 (= e!781162 (and (inv!16633 (c!203515 (dynLambda!5422 (toChars!3131 (transformation!2143 (rule!3568 (h!17844 tokens!556)))) (value!69672 (h!17844 tokens!556))))) tp!345628))))

(declare-fun result!80892 () Bool)

(declare-fun inv!16634 (BalanceConc!8072) Bool)

(assert (=> tb!66833 (= result!80892 (and (inv!16634 (dynLambda!5422 (toChars!3131 (transformation!2143 (rule!3568 (h!17844 tokens!556)))) (value!69672 (h!17844 tokens!556)))) e!781162))))

(assert (= tb!66833 b!1216976))

(declare-fun m!1391171 () Bool)

(assert (=> b!1216976 m!1391171))

(declare-fun m!1391173 () Bool)

(assert (=> tb!66833 m!1391173))

(assert (=> b!1216970 t!113249))

(declare-fun b_and!82729 () Bool)

(assert (= b_and!82723 (and (=> t!113249 result!80892) b_and!82729)))

(declare-fun t!113251 () Bool)

(declare-fun tb!66835 () Bool)

(assert (=> (and b!1216953 (= (toChars!3131 (transformation!2143 (rule!3568 (h!17844 tokens!556)))) (toChars!3131 (transformation!2143 (rule!3568 (h!17844 tokens!556))))) t!113251) tb!66835))

(declare-fun result!80896 () Bool)

(assert (= result!80896 result!80892))

(assert (=> b!1216970 t!113251))

(declare-fun b_and!82731 () Bool)

(assert (= b_and!82727 (and (=> t!113251 result!80896) b_and!82731)))

(declare-fun m!1391175 () Bool)

(assert (=> d!347484 m!1391175))

(declare-fun m!1391177 () Bool)

(assert (=> b!1216970 m!1391177))

(assert (=> b!1216970 m!1391177))

(declare-fun m!1391179 () Bool)

(assert (=> b!1216970 m!1391179))

(declare-fun m!1391181 () Bool)

(assert (=> b!1216971 m!1391181))

(assert (=> b!1216956 d!347484))

(declare-fun d!347486 () Bool)

(declare-fun lt!415898 () Int)

(assert (=> d!347486 (>= lt!415898 0)))

(declare-fun e!781165 () Int)

(assert (=> d!347486 (= lt!415898 e!781165)))

(declare-fun c!203518 () Bool)

(assert (=> d!347486 (= c!203518 ((_ is Nil!12443) tokens!556))))

(assert (=> d!347486 (= (ListPrimitiveSize!96 tokens!556) lt!415898)))

(declare-fun b!1216981 () Bool)

(assert (=> b!1216981 (= e!781165 0)))

(declare-fun b!1216982 () Bool)

(assert (=> b!1216982 (= e!781165 (+ 1 (ListPrimitiveSize!96 (t!113247 tokens!556))))))

(assert (= (and d!347486 c!203518) b!1216981))

(assert (= (and d!347486 (not c!203518)) b!1216982))

(declare-fun m!1391183 () Bool)

(assert (=> b!1216982 m!1391183))

(assert (=> b!1216951 d!347486))

(declare-fun b!1217043 () Bool)

(declare-fun e!781203 () Bool)

(declare-fun lt!415917 () tuple2!12304)

(declare-fun isEmpty!7398 (List!12501) Bool)

(assert (=> b!1217043 (= e!781203 (not (isEmpty!7398 (_1!6999 lt!415917))))))

(declare-fun b!1217044 () Bool)

(declare-fun e!781202 () tuple2!12304)

(declare-datatypes ((tuple2!12308 0))(
  ( (tuple2!12309 (_1!7001 Token!3948) (_2!7001 List!12499)) )
))
(declare-datatypes ((Option!2505 0))(
  ( (None!2504) (Some!2504 (v!20635 tuple2!12308)) )
))
(declare-fun lt!415918 () Option!2505)

(declare-fun lt!415919 () tuple2!12304)

(assert (=> b!1217044 (= e!781202 (tuple2!12305 (Cons!12443 (_1!7001 (v!20635 lt!415918)) (_1!6999 lt!415919)) (_2!6999 lt!415919)))))

(assert (=> b!1217044 (= lt!415919 (lexList!468 thiss!20528 rules!2728 (_2!7001 (v!20635 lt!415918))))))

(declare-fun b!1217045 () Bool)

(assert (=> b!1217045 (= e!781202 (tuple2!12305 Nil!12443 input!2346))))

(declare-fun b!1217046 () Bool)

(declare-fun e!781204 () Bool)

(assert (=> b!1217046 (= e!781204 e!781203)))

(declare-fun res!547231 () Bool)

(assert (=> b!1217046 (= res!547231 (< (size!9832 (_2!6999 lt!415917)) (size!9832 input!2346)))))

(assert (=> b!1217046 (=> (not res!547231) (not e!781203))))

(declare-fun d!347488 () Bool)

(assert (=> d!347488 e!781204))

(declare-fun c!203538 () Bool)

(declare-fun size!9833 (List!12501) Int)

(assert (=> d!347488 (= c!203538 (> (size!9833 (_1!6999 lt!415917)) 0))))

(assert (=> d!347488 (= lt!415917 e!781202)))

(declare-fun c!203539 () Bool)

(assert (=> d!347488 (= c!203539 ((_ is Some!2504) lt!415918))))

(declare-fun maxPrefix!960 (LexerInterface!1838 List!12500 List!12499) Option!2505)

(assert (=> d!347488 (= lt!415918 (maxPrefix!960 thiss!20528 rules!2728 input!2346))))

(assert (=> d!347488 (= (lexList!468 thiss!20528 rules!2728 input!2346) lt!415917)))

(declare-fun b!1217047 () Bool)

(assert (=> b!1217047 (= e!781204 (= (_2!6999 lt!415917) input!2346))))

(assert (= (and d!347488 c!203539) b!1217044))

(assert (= (and d!347488 (not c!203539)) b!1217045))

(assert (= (and d!347488 c!203538) b!1217046))

(assert (= (and d!347488 (not c!203538)) b!1217047))

(assert (= (and b!1217046 res!547231) b!1217043))

(declare-fun m!1391221 () Bool)

(assert (=> b!1217043 m!1391221))

(declare-fun m!1391223 () Bool)

(assert (=> b!1217044 m!1391223))

(declare-fun m!1391225 () Bool)

(assert (=> b!1217046 m!1391225))

(declare-fun m!1391227 () Bool)

(assert (=> b!1217046 m!1391227))

(declare-fun m!1391229 () Bool)

(assert (=> d!347488 m!1391229))

(declare-fun m!1391231 () Bool)

(assert (=> d!347488 m!1391231))

(assert (=> b!1216950 d!347488))

(declare-fun b!1217090 () Bool)

(declare-fun e!781232 () Bool)

(declare-fun inv!16 (TokenValue!2211) Bool)

(assert (=> b!1217090 (= e!781232 (inv!16 (value!69672 (h!17844 tokens!556))))))

(declare-fun b!1217091 () Bool)

(declare-fun res!547238 () Bool)

(declare-fun e!781233 () Bool)

(assert (=> b!1217091 (=> res!547238 e!781233)))

(assert (=> b!1217091 (= res!547238 (not ((_ is IntegerValue!6635) (value!69672 (h!17844 tokens!556)))))))

(declare-fun e!781234 () Bool)

(assert (=> b!1217091 (= e!781234 e!781233)))

(declare-fun b!1217092 () Bool)

(declare-fun inv!17 (TokenValue!2211) Bool)

(assert (=> b!1217092 (= e!781234 (inv!17 (value!69672 (h!17844 tokens!556))))))

(declare-fun b!1217093 () Bool)

(assert (=> b!1217093 (= e!781232 e!781234)))

(declare-fun c!203545 () Bool)

(assert (=> b!1217093 (= c!203545 ((_ is IntegerValue!6634) (value!69672 (h!17844 tokens!556))))))

(declare-fun b!1217094 () Bool)

(declare-fun inv!15 (TokenValue!2211) Bool)

(assert (=> b!1217094 (= e!781233 (inv!15 (value!69672 (h!17844 tokens!556))))))

(declare-fun d!347504 () Bool)

(declare-fun c!203544 () Bool)

(assert (=> d!347504 (= c!203544 ((_ is IntegerValue!6633) (value!69672 (h!17844 tokens!556))))))

(assert (=> d!347504 (= (inv!21 (value!69672 (h!17844 tokens!556))) e!781232)))

(assert (= (and d!347504 c!203544) b!1217090))

(assert (= (and d!347504 (not c!203544)) b!1217093))

(assert (= (and b!1217093 c!203545) b!1217092))

(assert (= (and b!1217093 (not c!203545)) b!1217091))

(assert (= (and b!1217091 (not res!547238)) b!1217094))

(declare-fun m!1391241 () Bool)

(assert (=> b!1217090 m!1391241))

(declare-fun m!1391243 () Bool)

(assert (=> b!1217092 m!1391243))

(declare-fun m!1391245 () Bool)

(assert (=> b!1217094 m!1391245))

(assert (=> b!1216954 d!347504))

(declare-fun d!347510 () Bool)

(assert (=> d!347510 (= (inv!16628 (tag!2405 (rule!3568 (h!17844 tokens!556)))) (= (mod (str.len (value!69671 (tag!2405 (rule!3568 (h!17844 tokens!556))))) 2) 0))))

(assert (=> b!1216949 d!347510))

(declare-fun d!347512 () Bool)

(declare-fun res!547239 () Bool)

(declare-fun e!781237 () Bool)

(assert (=> d!347512 (=> (not res!547239) (not e!781237))))

(assert (=> d!347512 (= res!547239 (semiInverseModEq!779 (toChars!3131 (transformation!2143 (rule!3568 (h!17844 tokens!556)))) (toValue!3272 (transformation!2143 (rule!3568 (h!17844 tokens!556))))))))

(assert (=> d!347512 (= (inv!16631 (transformation!2143 (rule!3568 (h!17844 tokens!556)))) e!781237)))

(declare-fun b!1217097 () Bool)

(assert (=> b!1217097 (= e!781237 (equivClasses!746 (toChars!3131 (transformation!2143 (rule!3568 (h!17844 tokens!556)))) (toValue!3272 (transformation!2143 (rule!3568 (h!17844 tokens!556))))))))

(assert (= (and d!347512 res!547239) b!1217097))

(declare-fun m!1391247 () Bool)

(assert (=> d!347512 m!1391247))

(declare-fun m!1391249 () Bool)

(assert (=> b!1217097 m!1391249))

(assert (=> b!1216949 d!347512))

(declare-fun b!1217122 () Bool)

(declare-fun e!781249 () Bool)

(declare-fun tp!345684 () Bool)

(assert (=> b!1217122 (= e!781249 tp!345684)))

(declare-fun b!1217120 () Bool)

(assert (=> b!1217120 (= e!781249 tp_is_empty!6347)))

(assert (=> b!1216958 (= tp!345625 e!781249)))

(declare-fun b!1217121 () Bool)

(declare-fun tp!345683 () Bool)

(declare-fun tp!345682 () Bool)

(assert (=> b!1217121 (= e!781249 (and tp!345683 tp!345682))))

(declare-fun b!1217123 () Bool)

(declare-fun tp!345681 () Bool)

(declare-fun tp!345685 () Bool)

(assert (=> b!1217123 (= e!781249 (and tp!345681 tp!345685))))

(assert (= (and b!1216958 ((_ is ElementMatch!3413) (regex!2143 (h!17843 rules!2728)))) b!1217120))

(assert (= (and b!1216958 ((_ is Concat!5625) (regex!2143 (h!17843 rules!2728)))) b!1217121))

(assert (= (and b!1216958 ((_ is Star!3413) (regex!2143 (h!17843 rules!2728)))) b!1217122))

(assert (= (and b!1216958 ((_ is Union!3413) (regex!2143 (h!17843 rules!2728)))) b!1217123))

(declare-fun b!1217132 () Bool)

(declare-fun e!781258 () Bool)

(declare-fun tp!345694 () Bool)

(assert (=> b!1217132 (= e!781258 (and tp_is_empty!6347 tp!345694))))

(assert (=> b!1216952 (= tp!345622 e!781258)))

(assert (= (and b!1216952 ((_ is Cons!12441) (t!113245 input!2346))) b!1217132))

(declare-fun b!1217146 () Bool)

(declare-fun b_free!29321 () Bool)

(declare-fun b_next!30025 () Bool)

(assert (=> b!1217146 (= b_free!29321 (not b_next!30025))))

(declare-fun tp!345712 () Bool)

(declare-fun b_and!82745 () Bool)

(assert (=> b!1217146 (= tp!345712 b_and!82745)))

(declare-fun b_free!29323 () Bool)

(declare-fun b_next!30027 () Bool)

(assert (=> b!1217146 (= b_free!29323 (not b_next!30027))))

(declare-fun tb!66845 () Bool)

(declare-fun t!113261 () Bool)

(assert (=> (and b!1217146 (= (toChars!3131 (transformation!2143 (h!17843 (t!113246 rules!2728)))) (toChars!3131 (transformation!2143 (rule!3568 (h!17844 tokens!556))))) t!113261) tb!66845))

(declare-fun result!80922 () Bool)

(assert (= result!80922 result!80892))

(assert (=> b!1216970 t!113261))

(declare-fun tp!345710 () Bool)

(declare-fun b_and!82747 () Bool)

(assert (=> b!1217146 (= tp!345710 (and (=> t!113261 result!80922) b_and!82747))))

(declare-fun e!781274 () Bool)

(assert (=> b!1217146 (= e!781274 (and tp!345712 tp!345710))))

(declare-fun tp!345711 () Bool)

(declare-fun e!781272 () Bool)

(declare-fun b!1217145 () Bool)

(assert (=> b!1217145 (= e!781272 (and tp!345711 (inv!16628 (tag!2405 (h!17843 (t!113246 rules!2728)))) (inv!16631 (transformation!2143 (h!17843 (t!113246 rules!2728)))) e!781274))))

(declare-fun b!1217144 () Bool)

(declare-fun e!781273 () Bool)

(declare-fun tp!345709 () Bool)

(assert (=> b!1217144 (= e!781273 (and e!781272 tp!345709))))

(assert (=> b!1216957 (= tp!345617 e!781273)))

(assert (= b!1217145 b!1217146))

(assert (= b!1217144 b!1217145))

(assert (= (and b!1216957 ((_ is Cons!12442) (t!113246 rules!2728))) b!1217144))

(declare-fun m!1391263 () Bool)

(assert (=> b!1217145 m!1391263))

(declare-fun m!1391265 () Bool)

(assert (=> b!1217145 m!1391265))

(declare-fun b!1217160 () Bool)

(declare-fun b_free!29325 () Bool)

(declare-fun b_next!30029 () Bool)

(assert (=> b!1217160 (= b_free!29325 (not b_next!30029))))

(declare-fun tp!345723 () Bool)

(declare-fun b_and!82749 () Bool)

(assert (=> b!1217160 (= tp!345723 b_and!82749)))

(declare-fun b_free!29327 () Bool)

(declare-fun b_next!30031 () Bool)

(assert (=> b!1217160 (= b_free!29327 (not b_next!30031))))

(declare-fun t!113263 () Bool)

(declare-fun tb!66847 () Bool)

(assert (=> (and b!1217160 (= (toChars!3131 (transformation!2143 (rule!3568 (h!17844 (t!113247 tokens!556))))) (toChars!3131 (transformation!2143 (rule!3568 (h!17844 tokens!556))))) t!113263) tb!66847))

(declare-fun result!80926 () Bool)

(assert (= result!80926 result!80892))

(assert (=> b!1216970 t!113263))

(declare-fun tp!345724 () Bool)

(declare-fun b_and!82751 () Bool)

(assert (=> b!1217160 (= tp!345724 (and (=> t!113263 result!80926) b_and!82751))))

(declare-fun e!781290 () Bool)

(declare-fun tp!345727 () Bool)

(declare-fun e!781292 () Bool)

(declare-fun b!1217159 () Bool)

(assert (=> b!1217159 (= e!781290 (and tp!345727 (inv!16628 (tag!2405 (rule!3568 (h!17844 (t!113247 tokens!556))))) (inv!16631 (transformation!2143 (rule!3568 (h!17844 (t!113247 tokens!556))))) e!781292))))

(declare-fun e!781287 () Bool)

(declare-fun b!1217158 () Bool)

(declare-fun tp!345726 () Bool)

(assert (=> b!1217158 (= e!781287 (and (inv!21 (value!69672 (h!17844 (t!113247 tokens!556)))) e!781290 tp!345726))))

(declare-fun e!781289 () Bool)

(assert (=> b!1216956 (= tp!345618 e!781289)))

(declare-fun tp!345725 () Bool)

(declare-fun b!1217157 () Bool)

(assert (=> b!1217157 (= e!781289 (and (inv!16632 (h!17844 (t!113247 tokens!556))) e!781287 tp!345725))))

(assert (=> b!1217160 (= e!781292 (and tp!345723 tp!345724))))

(assert (= b!1217159 b!1217160))

(assert (= b!1217158 b!1217159))

(assert (= b!1217157 b!1217158))

(assert (= (and b!1216956 ((_ is Cons!12443) (t!113247 tokens!556))) b!1217157))

(declare-fun m!1391267 () Bool)

(assert (=> b!1217159 m!1391267))

(declare-fun m!1391269 () Bool)

(assert (=> b!1217159 m!1391269))

(declare-fun m!1391271 () Bool)

(assert (=> b!1217158 m!1391271))

(declare-fun m!1391273 () Bool)

(assert (=> b!1217157 m!1391273))

(declare-fun b!1217161 () Bool)

(declare-fun e!781293 () Bool)

(declare-fun tp!345728 () Bool)

(assert (=> b!1217161 (= e!781293 (and tp_is_empty!6347 tp!345728))))

(assert (=> b!1216954 (= tp!345621 e!781293)))

(assert (= (and b!1216954 ((_ is Cons!12441) (originalCharacters!2697 (h!17844 tokens!556)))) b!1217161))

(declare-fun b!1217164 () Bool)

(declare-fun e!781294 () Bool)

(declare-fun tp!345732 () Bool)

(assert (=> b!1217164 (= e!781294 tp!345732)))

(declare-fun b!1217162 () Bool)

(assert (=> b!1217162 (= e!781294 tp_is_empty!6347)))

(assert (=> b!1216949 (= tp!345616 e!781294)))

(declare-fun b!1217163 () Bool)

(declare-fun tp!345731 () Bool)

(declare-fun tp!345730 () Bool)

(assert (=> b!1217163 (= e!781294 (and tp!345731 tp!345730))))

(declare-fun b!1217165 () Bool)

(declare-fun tp!345729 () Bool)

(declare-fun tp!345733 () Bool)

(assert (=> b!1217165 (= e!781294 (and tp!345729 tp!345733))))

(assert (= (and b!1216949 ((_ is ElementMatch!3413) (regex!2143 (rule!3568 (h!17844 tokens!556))))) b!1217162))

(assert (= (and b!1216949 ((_ is Concat!5625) (regex!2143 (rule!3568 (h!17844 tokens!556))))) b!1217163))

(assert (= (and b!1216949 ((_ is Star!3413) (regex!2143 (rule!3568 (h!17844 tokens!556))))) b!1217164))

(assert (= (and b!1216949 ((_ is Union!3413) (regex!2143 (rule!3568 (h!17844 tokens!556))))) b!1217165))

(declare-fun b_lambda!35893 () Bool)

(assert (= b_lambda!35887 (or (and b!1216955 b_free!29307 (= (toChars!3131 (transformation!2143 (h!17843 rules!2728))) (toChars!3131 (transformation!2143 (rule!3568 (h!17844 tokens!556)))))) (and b!1216953 b_free!29311) (and b!1217146 b_free!29323 (= (toChars!3131 (transformation!2143 (h!17843 (t!113246 rules!2728)))) (toChars!3131 (transformation!2143 (rule!3568 (h!17844 tokens!556)))))) (and b!1217160 b_free!29327 (= (toChars!3131 (transformation!2143 (rule!3568 (h!17844 (t!113247 tokens!556))))) (toChars!3131 (transformation!2143 (rule!3568 (h!17844 tokens!556)))))) b_lambda!35893)))

(check-sat (not b_next!30029) (not b!1217121) b_and!82721 (not b!1217092) b_and!82725 (not b!1216962) (not b!1217123) b_and!82751 b_and!82749 (not b!1217159) (not b!1217094) (not b!1217165) (not b_next!30011) (not d!347488) (not b!1216970) (not b!1217132) (not b!1217046) (not b!1216971) (not b_next!30025) (not b_next!30015) (not b!1216976) (not b_next!30027) (not d!347484) (not b!1216982) (not b!1217158) (not b!1216965) (not b!1217043) b_and!82747 (not d!347512) (not d!347480) tp_is_empty!6347 (not b!1217157) b_and!82729 (not tb!66833) b_and!82745 (not b!1217161) (not b_next!30013) (not b!1217044) (not b!1217144) b_and!82731 (not b!1217090) (not b_lambda!35893) (not b_next!30009) (not b!1217164) (not b!1217163) (not b!1217122) (not d!347474) (not b!1217145) (not b_next!30031) (not b!1217097))
(check-sat (not b_next!30029) (not b_next!30011) (not b_next!30025) b_and!82721 b_and!82725 b_and!82747 b_and!82729 b_and!82751 b_and!82731 (not b_next!30009) (not b_next!30031) b_and!82749 (not b_next!30015) (not b_next!30027) b_and!82745 (not b_next!30013))
