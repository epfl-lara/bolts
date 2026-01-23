; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183688 () Bool)

(assert start!183688)

(declare-fun bs!408796 () Bool)

(declare-fun b!1843753 () Bool)

(assert (= bs!408796 (and b!1843753 start!183688)))

(declare-fun lambda!72372 () Int)

(declare-fun lambda!72371 () Int)

(assert (=> bs!408796 (not (= lambda!72372 lambda!72371))))

(declare-fun b!1843749 () Bool)

(declare-fun e!1178189 () Bool)

(declare-datatypes ((List!20373 0))(
  ( (Nil!20303) (Cons!20303 (h!25704 (_ BitVec 16)) (t!171868 List!20373)) )
))
(declare-datatypes ((TokenValue!3746 0))(
  ( (FloatLiteralValue!7492 (text!26667 List!20373)) (TokenValueExt!3745 (__x!12790 Int)) (Broken!18730 (value!113972 List!20373)) (Object!3815) (End!3746) (Def!3746) (Underscore!3746) (Match!3746) (Else!3746) (Error!3746) (Case!3746) (If!3746) (Extends!3746) (Abstract!3746) (Class!3746) (Val!3746) (DelimiterValue!7492 (del!3806 List!20373)) (KeywordValue!3752 (value!113973 List!20373)) (CommentValue!7492 (value!113974 List!20373)) (WhitespaceValue!7492 (value!113975 List!20373)) (IndentationValue!3746 (value!113976 List!20373)) (String!23243) (Int32!3746) (Broken!18731 (value!113977 List!20373)) (Boolean!3747) (Unit!35005) (OperatorValue!3749 (op!3806 List!20373)) (IdentifierValue!7492 (value!113978 List!20373)) (IdentifierValue!7493 (value!113979 List!20373)) (WhitespaceValue!7493 (value!113980 List!20373)) (True!7492) (False!7492) (Broken!18732 (value!113981 List!20373)) (Broken!18733 (value!113982 List!20373)) (True!7493) (RightBrace!3746) (RightBracket!3746) (Colon!3746) (Null!3746) (Comma!3746) (LeftBracket!3746) (False!7493) (LeftBrace!3746) (ImaginaryLiteralValue!3746 (text!26668 List!20373)) (StringLiteralValue!11238 (value!113983 List!20373)) (EOFValue!3746 (value!113984 List!20373)) (IdentValue!3746 (value!113985 List!20373)) (DelimiterValue!7493 (value!113986 List!20373)) (DedentValue!3746 (value!113987 List!20373)) (NewLineValue!3746 (value!113988 List!20373)) (IntegerValue!11238 (value!113989 (_ BitVec 32)) (text!26669 List!20373)) (IntegerValue!11239 (value!113990 Int) (text!26670 List!20373)) (Times!3746) (Or!3746) (Equal!3746) (Minus!3746) (Broken!18734 (value!113991 List!20373)) (And!3746) (Div!3746) (LessEqual!3746) (Mod!3746) (Concat!8728) (Not!3746) (Plus!3746) (SpaceValue!3746 (value!113992 List!20373)) (IntegerValue!11240 (value!113993 Int) (text!26671 List!20373)) (StringLiteralValue!11239 (text!26672 List!20373)) (FloatLiteralValue!7493 (text!26673 List!20373)) (BytesLiteralValue!3746 (value!113994 List!20373)) (CommentValue!7493 (value!113995 List!20373)) (StringLiteralValue!11240 (value!113996 List!20373)) (ErrorTokenValue!3746 (msg!3807 List!20373)) )
))
(declare-datatypes ((Regex!4982 0))(
  ( (ElementMatch!4982 (c!301036 (_ BitVec 16))) (Concat!8729 (regOne!10476 Regex!4982) (regTwo!10476 Regex!4982)) (EmptyExpr!4982) (Star!4982 (reg!5311 Regex!4982)) (EmptyLang!4982) (Union!4982 (regOne!10477 Regex!4982) (regTwo!10477 Regex!4982)) )
))
(declare-datatypes ((String!23244 0))(
  ( (String!23245 (value!113997 String)) )
))
(declare-datatypes ((IArray!13445 0))(
  ( (IArray!13446 (innerList!6780 List!20373)) )
))
(declare-datatypes ((Conc!6720 0))(
  ( (Node!6720 (left!16244 Conc!6720) (right!16574 Conc!6720) (csize!13670 Int) (cheight!6931 Int)) (Leaf!9815 (xs!9596 IArray!13445) (csize!13671 Int)) (Empty!6720) )
))
(declare-datatypes ((BalanceConc!13360 0))(
  ( (BalanceConc!13361 (c!301037 Conc!6720)) )
))
(declare-datatypes ((TokenValueInjection!7148 0))(
  ( (TokenValueInjection!7149 (toValue!5209 Int) (toChars!5068 Int)) )
))
(declare-datatypes ((Rule!7108 0))(
  ( (Rule!7109 (regex!3654 Regex!4982) (tag!4068 String!23244) (isSeparator!3654 Bool) (transformation!3654 TokenValueInjection!7148)) )
))
(declare-datatypes ((Token!6862 0))(
  ( (Token!6863 (value!113998 TokenValue!3746) (rule!5848 Rule!7108) (size!16093 Int) (originalCharacters!4462 List!20373)) )
))
(declare-datatypes ((List!20374 0))(
  ( (Nil!20304) (Cons!20304 (h!25705 Token!6862) (t!171869 List!20374)) )
))
(declare-datatypes ((IArray!13447 0))(
  ( (IArray!13448 (innerList!6781 List!20374)) )
))
(declare-datatypes ((Conc!6721 0))(
  ( (Node!6721 (left!16245 Conc!6721) (right!16575 Conc!6721) (csize!13672 Int) (cheight!6932 Int)) (Leaf!9816 (xs!9597 IArray!13447) (csize!13673 Int)) (Empty!6721) )
))
(declare-datatypes ((List!20375 0))(
  ( (Nil!20305) (Cons!20305 (h!25706 Rule!7108) (t!171870 List!20375)) )
))
(declare-datatypes ((BalanceConc!13362 0))(
  ( (BalanceConc!13363 (c!301038 Conc!6721)) )
))
(declare-datatypes ((PrintableTokens!1226 0))(
  ( (PrintableTokens!1227 (rules!15013 List!20375) (tokens!2437 BalanceConc!13362)) )
))
(declare-datatypes ((tuple2!19680 0))(
  ( (tuple2!19681 (_1!11242 Int) (_2!11242 PrintableTokens!1226)) )
))
(declare-datatypes ((List!20376 0))(
  ( (Nil!20306) (Cons!20306 (h!25707 tuple2!19680) (t!171871 List!20376)) )
))
(declare-fun l!2176 () List!20376)

(declare-fun tp!521275 () Bool)

(declare-fun inv!26560 (Conc!6721) Bool)

(assert (=> b!1843749 (= e!1178189 (and (inv!26560 (c!301038 (tokens!2437 (_2!11242 (h!25707 l!2176))))) tp!521275))))

(declare-fun res!828191 () Bool)

(declare-fun e!1178188 () Bool)

(assert (=> start!183688 (=> (not res!828191) (not e!1178188))))

(declare-fun forall!4370 (List!20376 Int) Bool)

(assert (=> start!183688 (= res!828191 (forall!4370 l!2176 lambda!72371))))

(assert (=> start!183688 e!1178188))

(declare-fun e!1178190 () Bool)

(assert (=> start!183688 e!1178190))

(declare-fun b!1843750 () Bool)

(declare-fun res!828192 () Bool)

(assert (=> b!1843750 (=> (not res!828192) (not e!1178188))))

(assert (=> b!1843750 (= res!828192 (is-Nil!20306 l!2176))))

(declare-fun tp!521274 () Bool)

(declare-fun b!1843751 () Bool)

(declare-fun e!1178187 () Bool)

(declare-fun inv!26561 (PrintableTokens!1226) Bool)

(assert (=> b!1843751 (= e!1178190 (and (inv!26561 (_2!11242 (h!25707 l!2176))) e!1178187 tp!521274))))

(declare-fun b!1843752 () Bool)

(declare-fun tp!521273 () Bool)

(declare-fun inv!26562 (BalanceConc!13362) Bool)

(assert (=> b!1843752 (= e!1178187 (and tp!521273 (inv!26562 (tokens!2437 (_2!11242 (h!25707 l!2176)))) e!1178189))))

(assert (=> b!1843753 (= e!1178188 (not (forall!4370 l!2176 lambda!72372)))))

(assert (= (and start!183688 res!828191) b!1843750))

(assert (= (and b!1843750 res!828192) b!1843753))

(assert (= b!1843752 b!1843749))

(assert (= b!1843751 b!1843752))

(assert (= (and start!183688 (is-Cons!20306 l!2176)) b!1843751))

(declare-fun m!2272171 () Bool)

(assert (=> b!1843751 m!2272171))

(declare-fun m!2272173 () Bool)

(assert (=> b!1843752 m!2272173))

(declare-fun m!2272175 () Bool)

(assert (=> start!183688 m!2272175))

(declare-fun m!2272177 () Bool)

(assert (=> b!1843753 m!2272177))

(declare-fun m!2272179 () Bool)

(assert (=> b!1843749 m!2272179))

(push 1)

(assert (not b!1843752))

(assert (not b!1843749))

(assert (not b!1843753))

(assert (not start!183688))

(assert (not b!1843751))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!564321 () Bool)

(declare-fun isBalanced!2092 (Conc!6721) Bool)

(assert (=> d!564321 (= (inv!26562 (tokens!2437 (_2!11242 (h!25707 l!2176)))) (isBalanced!2092 (c!301038 (tokens!2437 (_2!11242 (h!25707 l!2176))))))))

(declare-fun bs!408798 () Bool)

(assert (= bs!408798 d!564321))

(declare-fun m!2272191 () Bool)

(assert (=> bs!408798 m!2272191))

(assert (=> b!1843752 d!564321))

(declare-fun d!564323 () Bool)

(declare-fun res!828203 () Bool)

(declare-fun e!1178207 () Bool)

(assert (=> d!564323 (=> res!828203 e!1178207)))

(assert (=> d!564323 (= res!828203 (is-Nil!20306 l!2176))))

(assert (=> d!564323 (= (forall!4370 l!2176 lambda!72371) e!1178207)))

(declare-fun b!1843773 () Bool)

(declare-fun e!1178208 () Bool)

(assert (=> b!1843773 (= e!1178207 e!1178208)))

(declare-fun res!828204 () Bool)

(assert (=> b!1843773 (=> (not res!828204) (not e!1178208))))

(declare-fun dynLambda!10094 (Int tuple2!19680) Bool)

(assert (=> b!1843773 (= res!828204 (dynLambda!10094 lambda!72371 (h!25707 l!2176)))))

(declare-fun b!1843774 () Bool)

(assert (=> b!1843774 (= e!1178208 (forall!4370 (t!171871 l!2176) lambda!72371))))

(assert (= (and d!564323 (not res!828203)) b!1843773))

(assert (= (and b!1843773 res!828204) b!1843774))

(declare-fun b_lambda!61141 () Bool)

(assert (=> (not b_lambda!61141) (not b!1843773)))

(declare-fun m!2272193 () Bool)

(assert (=> b!1843773 m!2272193))

(declare-fun m!2272195 () Bool)

(assert (=> b!1843774 m!2272195))

(assert (=> start!183688 d!564323))

(declare-fun d!564325 () Bool)

(declare-fun res!828205 () Bool)

(declare-fun e!1178209 () Bool)

(assert (=> d!564325 (=> res!828205 e!1178209)))

(assert (=> d!564325 (= res!828205 (is-Nil!20306 l!2176))))

(assert (=> d!564325 (= (forall!4370 l!2176 lambda!72372) e!1178209)))

(declare-fun b!1843775 () Bool)

(declare-fun e!1178210 () Bool)

(assert (=> b!1843775 (= e!1178209 e!1178210)))

(declare-fun res!828206 () Bool)

(assert (=> b!1843775 (=> (not res!828206) (not e!1178210))))

(assert (=> b!1843775 (= res!828206 (dynLambda!10094 lambda!72372 (h!25707 l!2176)))))

(declare-fun b!1843776 () Bool)

(assert (=> b!1843776 (= e!1178210 (forall!4370 (t!171871 l!2176) lambda!72372))))

(assert (= (and d!564325 (not res!828205)) b!1843775))

(assert (= (and b!1843775 res!828206) b!1843776))

(declare-fun b_lambda!61143 () Bool)

(assert (=> (not b_lambda!61143) (not b!1843775)))

(declare-fun m!2272197 () Bool)

(assert (=> b!1843775 m!2272197))

(declare-fun m!2272199 () Bool)

(assert (=> b!1843776 m!2272199))

(assert (=> b!1843753 d!564325))

(declare-fun d!564327 () Bool)

(declare-fun c!301044 () Bool)

(assert (=> d!564327 (= c!301044 (is-Node!6721 (c!301038 (tokens!2437 (_2!11242 (h!25707 l!2176))))))))

(declare-fun e!1178215 () Bool)

(assert (=> d!564327 (= (inv!26560 (c!301038 (tokens!2437 (_2!11242 (h!25707 l!2176))))) e!1178215)))

(declare-fun b!1843783 () Bool)

(declare-fun inv!26566 (Conc!6721) Bool)

(assert (=> b!1843783 (= e!1178215 (inv!26566 (c!301038 (tokens!2437 (_2!11242 (h!25707 l!2176))))))))

(declare-fun b!1843784 () Bool)

(declare-fun e!1178216 () Bool)

(assert (=> b!1843784 (= e!1178215 e!1178216)))

(declare-fun res!828209 () Bool)

(assert (=> b!1843784 (= res!828209 (not (is-Leaf!9816 (c!301038 (tokens!2437 (_2!11242 (h!25707 l!2176)))))))))

(assert (=> b!1843784 (=> res!828209 e!1178216)))

(declare-fun b!1843785 () Bool)

(declare-fun inv!26567 (Conc!6721) Bool)

(assert (=> b!1843785 (= e!1178216 (inv!26567 (c!301038 (tokens!2437 (_2!11242 (h!25707 l!2176))))))))

(assert (= (and d!564327 c!301044) b!1843783))

(assert (= (and d!564327 (not c!301044)) b!1843784))

(assert (= (and b!1843784 (not res!828209)) b!1843785))

(declare-fun m!2272201 () Bool)

(assert (=> b!1843783 m!2272201))

(declare-fun m!2272203 () Bool)

(assert (=> b!1843785 m!2272203))

(assert (=> b!1843749 d!564327))

(declare-fun d!564331 () Bool)

(declare-fun res!828225 () Bool)

(declare-fun e!1178231 () Bool)

(assert (=> d!564331 (=> (not res!828225) (not e!1178231))))

(declare-fun isEmpty!12765 (List!20375) Bool)

(assert (=> d!564331 (= res!828225 (not (isEmpty!12765 (rules!15013 (_2!11242 (h!25707 l!2176))))))))

(assert (=> d!564331 (= (inv!26561 (_2!11242 (h!25707 l!2176))) e!1178231)))

(declare-fun b!1843807 () Bool)

(declare-fun res!828226 () Bool)

(assert (=> b!1843807 (=> (not res!828226) (not e!1178231))))

(declare-datatypes ((LexerInterface!3281 0))(
  ( (LexerInterfaceExt!3278 (__x!12792 Int)) (Lexer!3279) )
))
(declare-fun rulesInvariant!2950 (LexerInterface!3281 List!20375) Bool)

(assert (=> b!1843807 (= res!828226 (rulesInvariant!2950 Lexer!3279 (rules!15013 (_2!11242 (h!25707 l!2176)))))))

(declare-fun b!1843808 () Bool)

(declare-fun res!828227 () Bool)

(assert (=> b!1843808 (=> (not res!828227) (not e!1178231))))

(declare-fun rulesProduceEachTokenIndividually!918 (LexerInterface!3281 List!20375 BalanceConc!13362) Bool)

(assert (=> b!1843808 (= res!828227 (rulesProduceEachTokenIndividually!918 Lexer!3279 (rules!15013 (_2!11242 (h!25707 l!2176))) (tokens!2437 (_2!11242 (h!25707 l!2176)))))))

(declare-fun b!1843809 () Bool)

(declare-fun separableTokens!289 (LexerInterface!3281 BalanceConc!13362 List!20375) Bool)

(assert (=> b!1843809 (= e!1178231 (separableTokens!289 Lexer!3279 (tokens!2437 (_2!11242 (h!25707 l!2176))) (rules!15013 (_2!11242 (h!25707 l!2176)))))))

(assert (= (and d!564331 res!828225) b!1843807))

(assert (= (and b!1843807 res!828226) b!1843808))

(assert (= (and b!1843808 res!828227) b!1843809))

(declare-fun m!2272215 () Bool)

(assert (=> d!564331 m!2272215))

(declare-fun m!2272217 () Bool)

(assert (=> b!1843807 m!2272217))

(declare-fun m!2272219 () Bool)

(assert (=> b!1843808 m!2272219))

(declare-fun m!2272221 () Bool)

(assert (=> b!1843809 m!2272221))

(assert (=> b!1843751 d!564331))

(declare-fun b!1843820 () Bool)

(declare-fun b_free!51523 () Bool)

(declare-fun b_next!52227 () Bool)

(assert (=> b!1843820 (= b_free!51523 (not b_next!52227))))

(declare-fun tp!521293 () Bool)

(declare-fun b_and!143673 () Bool)

(assert (=> b!1843820 (= tp!521293 b_and!143673)))

(declare-fun b_free!51525 () Bool)

(declare-fun b_next!52229 () Bool)

(assert (=> b!1843820 (= b_free!51525 (not b_next!52229))))

(declare-fun tp!521292 () Bool)

(declare-fun b_and!143675 () Bool)

(assert (=> b!1843820 (= tp!521292 b_and!143675)))

(declare-fun e!1178242 () Bool)

(assert (=> b!1843820 (= e!1178242 (and tp!521293 tp!521292))))

(declare-fun b!1843819 () Bool)

(declare-fun e!1178240 () Bool)

(declare-fun inv!26557 (String!23244) Bool)

(declare-fun inv!26568 (TokenValueInjection!7148) Bool)

(assert (=> b!1843819 (= e!1178240 (and (inv!26557 (tag!4068 (h!25706 (rules!15013 (_2!11242 (h!25707 l!2176)))))) (inv!26568 (transformation!3654 (h!25706 (rules!15013 (_2!11242 (h!25707 l!2176)))))) e!1178242))))

(declare-fun b!1843818 () Bool)

(declare-fun e!1178241 () Bool)

(declare-fun tp!521291 () Bool)

(assert (=> b!1843818 (= e!1178241 (and e!1178240 tp!521291))))

(assert (=> b!1843752 (= tp!521273 e!1178241)))

(assert (= b!1843819 b!1843820))

(assert (= b!1843818 b!1843819))

(assert (= (and b!1843752 (is-Cons!20305 (rules!15013 (_2!11242 (h!25707 l!2176))))) b!1843818))

(declare-fun m!2272223 () Bool)

(assert (=> b!1843819 m!2272223))

(declare-fun m!2272225 () Bool)

(assert (=> b!1843819 m!2272225))

(declare-fun b!1843829 () Bool)

(declare-fun tp!521301 () Bool)

(declare-fun e!1178248 () Bool)

(declare-fun tp!521302 () Bool)

(assert (=> b!1843829 (= e!1178248 (and (inv!26560 (left!16245 (c!301038 (tokens!2437 (_2!11242 (h!25707 l!2176)))))) tp!521301 (inv!26560 (right!16575 (c!301038 (tokens!2437 (_2!11242 (h!25707 l!2176)))))) tp!521302))))

(declare-fun b!1843831 () Bool)

(declare-fun e!1178249 () Bool)

(declare-fun tp!521300 () Bool)

(assert (=> b!1843831 (= e!1178249 tp!521300)))

(declare-fun b!1843830 () Bool)

(declare-fun inv!26569 (IArray!13447) Bool)

(assert (=> b!1843830 (= e!1178248 (and (inv!26569 (xs!9597 (c!301038 (tokens!2437 (_2!11242 (h!25707 l!2176)))))) e!1178249))))

(assert (=> b!1843749 (= tp!521275 (and (inv!26560 (c!301038 (tokens!2437 (_2!11242 (h!25707 l!2176))))) e!1178248))))

(assert (= (and b!1843749 (is-Node!6721 (c!301038 (tokens!2437 (_2!11242 (h!25707 l!2176)))))) b!1843829))

(assert (= b!1843830 b!1843831))

(assert (= (and b!1843749 (is-Leaf!9816 (c!301038 (tokens!2437 (_2!11242 (h!25707 l!2176)))))) b!1843830))

(declare-fun m!2272227 () Bool)

(assert (=> b!1843829 m!2272227))

(declare-fun m!2272229 () Bool)

(assert (=> b!1843829 m!2272229))

(declare-fun m!2272231 () Bool)

(assert (=> b!1843830 m!2272231))

(assert (=> b!1843749 m!2272179))

(declare-fun b!1843842 () Bool)

(declare-fun e!1178256 () Bool)

(declare-fun tp!521311 () Bool)

(assert (=> b!1843842 (= e!1178256 (and (inv!26560 (c!301038 (tokens!2437 (_2!11242 (h!25707 (t!171871 l!2176)))))) tp!521311))))

(declare-fun e!1178257 () Bool)

(declare-fun b!1843841 () Bool)

(declare-fun tp!521310 () Bool)

(assert (=> b!1843841 (= e!1178257 (and tp!521310 (inv!26562 (tokens!2437 (_2!11242 (h!25707 (t!171871 l!2176))))) e!1178256))))

(declare-fun e!1178258 () Bool)

(declare-fun b!1843840 () Bool)

(declare-fun tp!521309 () Bool)

(assert (=> b!1843840 (= e!1178258 (and (inv!26561 (_2!11242 (h!25707 (t!171871 l!2176)))) e!1178257 tp!521309))))

(assert (=> b!1843751 (= tp!521274 e!1178258)))

(assert (= b!1843841 b!1843842))

(assert (= b!1843840 b!1843841))

(assert (= (and b!1843751 (is-Cons!20306 (t!171871 l!2176))) b!1843840))

(declare-fun m!2272233 () Bool)

(assert (=> b!1843842 m!2272233))

(declare-fun m!2272235 () Bool)

(assert (=> b!1843841 m!2272235))

(declare-fun m!2272237 () Bool)

(assert (=> b!1843840 m!2272237))

(declare-fun b_lambda!61147 () Bool)

(assert (= b_lambda!61143 (or b!1843753 b_lambda!61147)))

(declare-fun bs!408800 () Bool)

(declare-fun d!564339 () Bool)

(assert (= bs!408800 (and d!564339 b!1843753)))

(declare-fun usesJsonRules!0 (PrintableTokens!1226) Bool)

(declare-fun removeId!0 (tuple2!19680) PrintableTokens!1226)

(assert (=> bs!408800 (= (dynLambda!10094 lambda!72372 (h!25707 l!2176)) (usesJsonRules!0 (removeId!0 (h!25707 l!2176))))))

(declare-fun m!2272239 () Bool)

(assert (=> bs!408800 m!2272239))

(assert (=> bs!408800 m!2272239))

(declare-fun m!2272241 () Bool)

(assert (=> bs!408800 m!2272241))

(assert (=> b!1843775 d!564339))

(declare-fun b_lambda!61149 () Bool)

(assert (= b_lambda!61141 (or start!183688 b_lambda!61149)))

(declare-fun bs!408801 () Bool)

(declare-fun d!564341 () Bool)

(assert (= bs!408801 (and d!564341 start!183688)))

(assert (=> bs!408801 (= (dynLambda!10094 lambda!72371 (h!25707 l!2176)) (usesJsonRules!0 (_2!11242 (h!25707 l!2176))))))

(declare-fun m!2272243 () Bool)

(assert (=> bs!408801 m!2272243))

(assert (=> b!1843773 d!564341))

(push 1)

(assert b_and!143675)

(assert (not b!1843819))

(assert (not d!564331))

(assert (not b!1843808))

(assert (not b_lambda!61147))

(assert b_and!143673)

(assert (not bs!408800))

(assert (not b!1843774))

(assert (not b_next!52229))

(assert (not b!1843785))

(assert (not b!1843840))

(assert (not b!1843783))

(assert (not bs!408801))

(assert (not b!1843831))

(assert (not d!564321))

(assert (not b!1843830))

(assert (not b!1843829))

(assert (not b!1843841))

(assert (not b!1843809))

(assert (not b_next!52227))

(assert (not b!1843818))

(assert (not b!1843776))

(assert (not b!1843807))

(assert (not b!1843749))

(assert (not b!1843842))

(assert (not b_lambda!61149))

(check-sat)

(pop 1)

(push 1)

(assert b_and!143675)

(assert b_and!143673)

(assert (not b_next!52227))

(assert (not b_next!52229))

(check-sat)

(pop 1)

