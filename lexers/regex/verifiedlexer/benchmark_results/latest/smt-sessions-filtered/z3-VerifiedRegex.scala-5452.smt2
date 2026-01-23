; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!276696 () Bool)

(assert start!276696)

(declare-fun b!2843314 () Bool)

(declare-fun b_free!82545 () Bool)

(declare-fun b_next!83249 () Bool)

(assert (=> b!2843314 (= b_free!82545 (not b_next!83249))))

(declare-fun tp!911200 () Bool)

(declare-fun b_and!208715 () Bool)

(assert (=> b!2843314 (= tp!911200 b_and!208715)))

(declare-fun b_free!82547 () Bool)

(declare-fun b_next!83251 () Bool)

(assert (=> b!2843314 (= b_free!82547 (not b_next!83251))))

(declare-fun tp!911210 () Bool)

(declare-fun b_and!208717 () Bool)

(assert (=> b!2843314 (= tp!911210 b_and!208717)))

(declare-fun b!2843307 () Bool)

(declare-fun b_free!82549 () Bool)

(declare-fun b_next!83253 () Bool)

(assert (=> b!2843307 (= b_free!82549 (not b_next!83253))))

(declare-fun tp!911205 () Bool)

(declare-fun b_and!208719 () Bool)

(assert (=> b!2843307 (= tp!911205 b_and!208719)))

(declare-fun b_free!82551 () Bool)

(declare-fun b_next!83255 () Bool)

(assert (=> b!2843307 (= b_free!82551 (not b_next!83255))))

(declare-fun tp!911208 () Bool)

(declare-fun b_and!208721 () Bool)

(assert (=> b!2843307 (= tp!911208 b_and!208721)))

(declare-fun b!2843308 () Bool)

(declare-fun b_free!82553 () Bool)

(declare-fun b_next!83257 () Bool)

(assert (=> b!2843308 (= b_free!82553 (not b_next!83257))))

(declare-fun tp!911204 () Bool)

(declare-fun b_and!208723 () Bool)

(assert (=> b!2843308 (= tp!911204 b_and!208723)))

(declare-fun b_free!82555 () Bool)

(declare-fun b_next!83259 () Bool)

(assert (=> b!2843308 (= b_free!82555 (not b_next!83259))))

(declare-fun tp!911206 () Bool)

(declare-fun b_and!208725 () Bool)

(assert (=> b!2843308 (= tp!911206 b_and!208725)))

(declare-fun res!1182773 () Bool)

(declare-fun e!1801380 () Bool)

(assert (=> start!276696 (=> (not res!1182773) (not e!1801380))))

(declare-datatypes ((LexerInterface!4658 0))(
  ( (LexerInterfaceExt!4655 (__x!22334 Int)) (Lexer!4656) )
))
(declare-fun thiss!11361 () LexerInterface!4658)

(get-info :version)

(assert (=> start!276696 (= res!1182773 ((_ is Lexer!4656) thiss!11361))))

(assert (=> start!276696 e!1801380))

(assert (=> start!276696 true))

(declare-fun e!1801378 () Bool)

(assert (=> start!276696 e!1801378))

(declare-datatypes ((C!17100 0))(
  ( (C!17101 (val!10584 Int)) )
))
(declare-datatypes ((List!33820 0))(
  ( (Nil!33696) (Cons!33696 (h!39116 C!17100) (t!232759 List!33820)) )
))
(declare-datatypes ((IArray!20909 0))(
  ( (IArray!20910 (innerList!10512 List!33820)) )
))
(declare-datatypes ((Conc!10452 0))(
  ( (Node!10452 (left!25392 Conc!10452) (right!25722 Conc!10452) (csize!21134 Int) (cheight!10663 Int)) (Leaf!15905 (xs!13564 IArray!20909) (csize!21135 Int)) (Empty!10452) )
))
(declare-datatypes ((BalanceConc!20542 0))(
  ( (BalanceConc!20543 (c!458900 Conc!10452)) )
))
(declare-datatypes ((List!33821 0))(
  ( (Nil!33697) (Cons!33697 (h!39117 (_ BitVec 16)) (t!232760 List!33821)) )
))
(declare-datatypes ((TokenValue!5298 0))(
  ( (FloatLiteralValue!10596 (text!37531 List!33821)) (TokenValueExt!5297 (__x!22335 Int)) (Broken!26490 (value!162814 List!33821)) (Object!5421) (End!5298) (Def!5298) (Underscore!5298) (Match!5298) (Else!5298) (Error!5298) (Case!5298) (If!5298) (Extends!5298) (Abstract!5298) (Class!5298) (Val!5298) (DelimiterValue!10596 (del!5358 List!33821)) (KeywordValue!5304 (value!162815 List!33821)) (CommentValue!10596 (value!162816 List!33821)) (WhitespaceValue!10596 (value!162817 List!33821)) (IndentationValue!5298 (value!162818 List!33821)) (String!37055) (Int32!5298) (Broken!26491 (value!162819 List!33821)) (Boolean!5299) (Unit!47506) (OperatorValue!5301 (op!5358 List!33821)) (IdentifierValue!10596 (value!162820 List!33821)) (IdentifierValue!10597 (value!162821 List!33821)) (WhitespaceValue!10597 (value!162822 List!33821)) (True!10596) (False!10596) (Broken!26492 (value!162823 List!33821)) (Broken!26493 (value!162824 List!33821)) (True!10597) (RightBrace!5298) (RightBracket!5298) (Colon!5298) (Null!5298) (Comma!5298) (LeftBracket!5298) (False!10597) (LeftBrace!5298) (ImaginaryLiteralValue!5298 (text!37532 List!33821)) (StringLiteralValue!15894 (value!162825 List!33821)) (EOFValue!5298 (value!162826 List!33821)) (IdentValue!5298 (value!162827 List!33821)) (DelimiterValue!10597 (value!162828 List!33821)) (DedentValue!5298 (value!162829 List!33821)) (NewLineValue!5298 (value!162830 List!33821)) (IntegerValue!15894 (value!162831 (_ BitVec 32)) (text!37533 List!33821)) (IntegerValue!15895 (value!162832 Int) (text!37534 List!33821)) (Times!5298) (Or!5298) (Equal!5298) (Minus!5298) (Broken!26494 (value!162833 List!33821)) (And!5298) (Div!5298) (LessEqual!5298) (Mod!5298) (Concat!13757) (Not!5298) (Plus!5298) (SpaceValue!5298 (value!162834 List!33821)) (IntegerValue!15896 (value!162835 Int) (text!37535 List!33821)) (StringLiteralValue!15895 (text!37536 List!33821)) (FloatLiteralValue!10597 (text!37537 List!33821)) (BytesLiteralValue!5298 (value!162836 List!33821)) (CommentValue!10597 (value!162837 List!33821)) (StringLiteralValue!15896 (value!162838 List!33821)) (ErrorTokenValue!5298 (msg!5359 List!33821)) )
))
(declare-datatypes ((String!37056 0))(
  ( (String!37057 (value!162839 String)) )
))
(declare-datatypes ((Regex!8459 0))(
  ( (ElementMatch!8459 (c!458901 C!17100)) (Concat!13758 (regOne!17430 Regex!8459) (regTwo!17430 Regex!8459)) (EmptyExpr!8459) (Star!8459 (reg!8788 Regex!8459)) (EmptyLang!8459) (Union!8459 (regOne!17431 Regex!8459) (regTwo!17431 Regex!8459)) )
))
(declare-datatypes ((TokenValueInjection!10024 0))(
  ( (TokenValueInjection!10025 (toValue!7118 Int) (toChars!6977 Int)) )
))
(declare-datatypes ((Rule!9936 0))(
  ( (Rule!9937 (regex!5068 Regex!8459) (tag!5572 String!37056) (isSeparator!5068 Bool) (transformation!5068 TokenValueInjection!10024)) )
))
(declare-datatypes ((Token!9538 0))(
  ( (Token!9539 (value!162840 TokenValue!5298) (rule!7496 Rule!9936) (size!26167 Int) (originalCharacters!5800 List!33820)) )
))
(declare-fun t1!27 () Token!9538)

(declare-fun e!1801389 () Bool)

(declare-fun inv!45696 (Token!9538) Bool)

(assert (=> start!276696 (and (inv!45696 t1!27) e!1801389)))

(declare-fun t2!27 () Token!9538)

(declare-fun e!1801377 () Bool)

(assert (=> start!276696 (and (inv!45696 t2!27) e!1801377)))

(declare-fun b!2843304 () Bool)

(declare-fun res!1182770 () Bool)

(assert (=> b!2843304 (=> (not res!1182770) (not e!1801380))))

(declare-datatypes ((List!33822 0))(
  ( (Nil!33698) (Cons!33698 (h!39118 Rule!9936) (t!232761 List!33822)) )
))
(declare-fun rules!1139 () List!33822)

(declare-fun rulesProduceIndividualToken!2169 (LexerInterface!4658 List!33822 Token!9538) Bool)

(assert (=> b!2843304 (= res!1182770 (rulesProduceIndividualToken!2169 thiss!11361 rules!1139 t2!27))))

(declare-fun b!2843305 () Bool)

(declare-fun e!1801379 () Bool)

(declare-fun tp!911203 () Bool)

(declare-fun e!1801382 () Bool)

(declare-fun inv!45693 (String!37056) Bool)

(declare-fun inv!45697 (TokenValueInjection!10024) Bool)

(assert (=> b!2843305 (= e!1801379 (and tp!911203 (inv!45693 (tag!5572 (rule!7496 t2!27))) (inv!45697 (transformation!5068 (rule!7496 t2!27))) e!1801382))))

(declare-fun b!2843306 () Bool)

(declare-fun res!1182772 () Bool)

(assert (=> b!2843306 (=> (not res!1182772) (not e!1801380))))

(assert (=> b!2843306 (= res!1182772 (rulesProduceIndividualToken!2169 thiss!11361 rules!1139 t1!27))))

(declare-fun e!1801387 () Bool)

(assert (=> b!2843307 (= e!1801387 (and tp!911205 tp!911208))))

(assert (=> b!2843308 (= e!1801382 (and tp!911204 tp!911206))))

(declare-fun tp!911201 () Bool)

(declare-fun b!2843309 () Bool)

(declare-fun inv!21 (TokenValue!5298) Bool)

(assert (=> b!2843309 (= e!1801377 (and (inv!21 (value!162840 t2!27)) e!1801379 tp!911201))))

(declare-fun b!2843310 () Bool)

(declare-fun e!1801381 () Bool)

(declare-fun lt!1011995 () Regex!8459)

(declare-fun validRegex!3355 (Regex!8459) Bool)

(assert (=> b!2843310 (= e!1801381 (not (validRegex!3355 lt!1011995)))))

(declare-fun lt!1011997 () BalanceConc!20542)

(declare-fun lt!1011996 () BalanceConc!20542)

(declare-fun ++!8116 (BalanceConc!20542 BalanceConc!20542) BalanceConc!20542)

(declare-fun charsOf!3118 (Token!9538) BalanceConc!20542)

(declare-fun singletonSeq!2183 (C!17100) BalanceConc!20542)

(declare-fun apply!7841 (BalanceConc!20542 Int) C!17100)

(assert (=> b!2843310 (= lt!1011997 (++!8116 (charsOf!3118 t1!27) (singletonSeq!2183 (apply!7841 lt!1011996 0))))))

(declare-fun rulesRegex!1004 (LexerInterface!4658 List!33822) Regex!8459)

(assert (=> b!2843310 (= lt!1011995 (rulesRegex!1004 thiss!11361 rules!1139))))

(declare-fun b!2843311 () Bool)

(assert (=> b!2843311 (= e!1801380 e!1801381)))

(declare-fun res!1182774 () Bool)

(assert (=> b!2843311 (=> (not res!1182774) (not e!1801381))))

(declare-fun isEmpty!18552 (BalanceConc!20542) Bool)

(assert (=> b!2843311 (= res!1182774 (not (isEmpty!18552 lt!1011996)))))

(assert (=> b!2843311 (= lt!1011996 (charsOf!3118 t2!27))))

(declare-fun tp!911207 () Bool)

(declare-fun b!2843312 () Bool)

(declare-fun e!1801383 () Bool)

(assert (=> b!2843312 (= e!1801383 (and tp!911207 (inv!45693 (tag!5572 (h!39118 rules!1139))) (inv!45697 (transformation!5068 (h!39118 rules!1139))) e!1801387))))

(declare-fun e!1801384 () Bool)

(declare-fun e!1801391 () Bool)

(declare-fun b!2843313 () Bool)

(declare-fun tp!911202 () Bool)

(assert (=> b!2843313 (= e!1801391 (and tp!911202 (inv!45693 (tag!5572 (rule!7496 t1!27))) (inv!45697 (transformation!5068 (rule!7496 t1!27))) e!1801384))))

(assert (=> b!2843314 (= e!1801384 (and tp!911200 tp!911210))))

(declare-fun b!2843315 () Bool)

(declare-fun res!1182775 () Bool)

(assert (=> b!2843315 (=> (not res!1182775) (not e!1801380))))

(declare-fun isEmpty!18553 (List!33822) Bool)

(assert (=> b!2843315 (= res!1182775 (not (isEmpty!18553 rules!1139)))))

(declare-fun b!2843316 () Bool)

(declare-fun tp!911209 () Bool)

(assert (=> b!2843316 (= e!1801389 (and (inv!21 (value!162840 t1!27)) e!1801391 tp!911209))))

(declare-fun b!2843317 () Bool)

(declare-fun res!1182771 () Bool)

(assert (=> b!2843317 (=> (not res!1182771) (not e!1801380))))

(declare-fun rulesInvariant!4074 (LexerInterface!4658 List!33822) Bool)

(assert (=> b!2843317 (= res!1182771 (rulesInvariant!4074 thiss!11361 rules!1139))))

(declare-fun b!2843318 () Bool)

(declare-fun tp!911199 () Bool)

(assert (=> b!2843318 (= e!1801378 (and e!1801383 tp!911199))))

(assert (= (and start!276696 res!1182773) b!2843315))

(assert (= (and b!2843315 res!1182775) b!2843317))

(assert (= (and b!2843317 res!1182771) b!2843306))

(assert (= (and b!2843306 res!1182772) b!2843304))

(assert (= (and b!2843304 res!1182770) b!2843311))

(assert (= (and b!2843311 res!1182774) b!2843310))

(assert (= b!2843312 b!2843307))

(assert (= b!2843318 b!2843312))

(assert (= (and start!276696 ((_ is Cons!33698) rules!1139)) b!2843318))

(assert (= b!2843313 b!2843314))

(assert (= b!2843316 b!2843313))

(assert (= start!276696 b!2843316))

(assert (= b!2843305 b!2843308))

(assert (= b!2843309 b!2843305))

(assert (= start!276696 b!2843309))

(declare-fun m!3271155 () Bool)

(assert (=> b!2843311 m!3271155))

(declare-fun m!3271157 () Bool)

(assert (=> b!2843311 m!3271157))

(declare-fun m!3271159 () Bool)

(assert (=> b!2843315 m!3271159))

(declare-fun m!3271161 () Bool)

(assert (=> b!2843317 m!3271161))

(declare-fun m!3271163 () Bool)

(assert (=> b!2843316 m!3271163))

(declare-fun m!3271165 () Bool)

(assert (=> b!2843309 m!3271165))

(declare-fun m!3271167 () Bool)

(assert (=> b!2843312 m!3271167))

(declare-fun m!3271169 () Bool)

(assert (=> b!2843312 m!3271169))

(declare-fun m!3271171 () Bool)

(assert (=> b!2843313 m!3271171))

(declare-fun m!3271173 () Bool)

(assert (=> b!2843313 m!3271173))

(declare-fun m!3271175 () Bool)

(assert (=> b!2843305 m!3271175))

(declare-fun m!3271177 () Bool)

(assert (=> b!2843305 m!3271177))

(declare-fun m!3271179 () Bool)

(assert (=> b!2843310 m!3271179))

(declare-fun m!3271181 () Bool)

(assert (=> b!2843310 m!3271181))

(declare-fun m!3271183 () Bool)

(assert (=> b!2843310 m!3271183))

(declare-fun m!3271185 () Bool)

(assert (=> b!2843310 m!3271185))

(declare-fun m!3271187 () Bool)

(assert (=> b!2843310 m!3271187))

(assert (=> b!2843310 m!3271185))

(assert (=> b!2843310 m!3271181))

(declare-fun m!3271189 () Bool)

(assert (=> b!2843310 m!3271189))

(assert (=> b!2843310 m!3271179))

(declare-fun m!3271191 () Bool)

(assert (=> b!2843304 m!3271191))

(declare-fun m!3271193 () Bool)

(assert (=> start!276696 m!3271193))

(declare-fun m!3271195 () Bool)

(assert (=> start!276696 m!3271195))

(declare-fun m!3271197 () Bool)

(assert (=> b!2843306 m!3271197))

(check-sat (not b_next!83255) b_and!208721 (not b!2843311) (not start!276696) (not b!2843312) (not b_next!83249) (not b!2843309) b_and!208723 b_and!208725 (not b_next!83253) (not b!2843318) b_and!208719 (not b!2843304) (not b!2843313) b_and!208715 (not b!2843317) (not b_next!83259) (not b!2843306) b_and!208717 (not b!2843316) (not b!2843305) (not b_next!83257) (not b!2843310) (not b_next!83251) (not b!2843315))
(check-sat (not b_next!83255) b_and!208721 b_and!208719 (not b_next!83249) b_and!208723 b_and!208717 (not b_next!83257) b_and!208725 (not b_next!83253) (not b_next!83251) b_and!208715 (not b_next!83259))
(get-model)

(declare-fun d!824521 () Bool)

(declare-fun lt!1012022 () Bool)

(declare-fun e!1801435 () Bool)

(assert (=> d!824521 (= lt!1012022 e!1801435)))

(declare-fun res!1182829 () Bool)

(assert (=> d!824521 (=> (not res!1182829) (not e!1801435))))

(declare-datatypes ((List!33823 0))(
  ( (Nil!33699) (Cons!33699 (h!39119 Token!9538) (t!232798 List!33823)) )
))
(declare-datatypes ((IArray!20911 0))(
  ( (IArray!20912 (innerList!10513 List!33823)) )
))
(declare-datatypes ((Conc!10453 0))(
  ( (Node!10453 (left!25393 Conc!10453) (right!25723 Conc!10453) (csize!21136 Int) (cheight!10664 Int)) (Leaf!15906 (xs!13565 IArray!20911) (csize!21137 Int)) (Empty!10453) )
))
(declare-datatypes ((BalanceConc!20544 0))(
  ( (BalanceConc!20545 (c!458936 Conc!10453)) )
))
(declare-fun list!12556 (BalanceConc!20544) List!33823)

(declare-datatypes ((tuple2!33570 0))(
  ( (tuple2!33571 (_1!19897 BalanceConc!20544) (_2!19897 BalanceConc!20542)) )
))
(declare-fun lex!2029 (LexerInterface!4658 List!33822 BalanceConc!20542) tuple2!33570)

(declare-fun print!1748 (LexerInterface!4658 BalanceConc!20544) BalanceConc!20542)

(declare-fun singletonSeq!2184 (Token!9538) BalanceConc!20544)

(assert (=> d!824521 (= res!1182829 (= (list!12556 (_1!19897 (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t2!27))))) (list!12556 (singletonSeq!2184 t2!27))))))

(declare-fun e!1801436 () Bool)

(assert (=> d!824521 (= lt!1012022 e!1801436)))

(declare-fun res!1182828 () Bool)

(assert (=> d!824521 (=> (not res!1182828) (not e!1801436))))

(declare-fun lt!1012021 () tuple2!33570)

(declare-fun size!26168 (BalanceConc!20544) Int)

(assert (=> d!824521 (= res!1182828 (= (size!26168 (_1!19897 lt!1012021)) 1))))

(assert (=> d!824521 (= lt!1012021 (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t2!27))))))

(assert (=> d!824521 (not (isEmpty!18553 rules!1139))))

(assert (=> d!824521 (= (rulesProduceIndividualToken!2169 thiss!11361 rules!1139 t2!27) lt!1012022)))

(declare-fun b!2843381 () Bool)

(declare-fun res!1182830 () Bool)

(assert (=> b!2843381 (=> (not res!1182830) (not e!1801436))))

(declare-fun apply!7842 (BalanceConc!20544 Int) Token!9538)

(assert (=> b!2843381 (= res!1182830 (= (apply!7842 (_1!19897 lt!1012021) 0) t2!27))))

(declare-fun b!2843382 () Bool)

(assert (=> b!2843382 (= e!1801436 (isEmpty!18552 (_2!19897 lt!1012021)))))

(declare-fun b!2843383 () Bool)

(assert (=> b!2843383 (= e!1801435 (isEmpty!18552 (_2!19897 (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t2!27))))))))

(assert (= (and d!824521 res!1182828) b!2843381))

(assert (= (and b!2843381 res!1182830) b!2843382))

(assert (= (and d!824521 res!1182829) b!2843383))

(declare-fun m!3271279 () Bool)

(assert (=> d!824521 m!3271279))

(declare-fun m!3271281 () Bool)

(assert (=> d!824521 m!3271281))

(declare-fun m!3271283 () Bool)

(assert (=> d!824521 m!3271283))

(assert (=> d!824521 m!3271159))

(declare-fun m!3271285 () Bool)

(assert (=> d!824521 m!3271285))

(assert (=> d!824521 m!3271279))

(assert (=> d!824521 m!3271285))

(assert (=> d!824521 m!3271285))

(declare-fun m!3271287 () Bool)

(assert (=> d!824521 m!3271287))

(declare-fun m!3271289 () Bool)

(assert (=> d!824521 m!3271289))

(declare-fun m!3271291 () Bool)

(assert (=> b!2843381 m!3271291))

(declare-fun m!3271293 () Bool)

(assert (=> b!2843382 m!3271293))

(assert (=> b!2843383 m!3271285))

(assert (=> b!2843383 m!3271285))

(assert (=> b!2843383 m!3271279))

(assert (=> b!2843383 m!3271279))

(assert (=> b!2843383 m!3271281))

(declare-fun m!3271295 () Bool)

(assert (=> b!2843383 m!3271295))

(assert (=> b!2843304 d!824521))

(declare-fun d!824547 () Bool)

(assert (=> d!824547 (= (isEmpty!18553 rules!1139) ((_ is Nil!33698) rules!1139))))

(assert (=> b!2843315 d!824547))

(declare-fun d!824549 () Bool)

(assert (=> d!824549 (= (inv!45693 (tag!5572 (rule!7496 t2!27))) (= (mod (str.len (value!162839 (tag!5572 (rule!7496 t2!27)))) 2) 0))))

(assert (=> b!2843305 d!824549))

(declare-fun d!824551 () Bool)

(declare-fun res!1182833 () Bool)

(declare-fun e!1801439 () Bool)

(assert (=> d!824551 (=> (not res!1182833) (not e!1801439))))

(declare-fun semiInverseModEq!2115 (Int Int) Bool)

(assert (=> d!824551 (= res!1182833 (semiInverseModEq!2115 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (toValue!7118 (transformation!5068 (rule!7496 t2!27)))))))

(assert (=> d!824551 (= (inv!45697 (transformation!5068 (rule!7496 t2!27))) e!1801439)))

(declare-fun b!2843386 () Bool)

(declare-fun equivClasses!2014 (Int Int) Bool)

(assert (=> b!2843386 (= e!1801439 (equivClasses!2014 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (toValue!7118 (transformation!5068 (rule!7496 t2!27)))))))

(assert (= (and d!824551 res!1182833) b!2843386))

(declare-fun m!3271297 () Bool)

(assert (=> d!824551 m!3271297))

(declare-fun m!3271299 () Bool)

(assert (=> b!2843386 m!3271299))

(assert (=> b!2843305 d!824551))

(declare-fun b!2843397 () Bool)

(declare-fun e!1801448 () Bool)

(declare-fun inv!15 (TokenValue!5298) Bool)

(assert (=> b!2843397 (= e!1801448 (inv!15 (value!162840 t1!27)))))

(declare-fun b!2843398 () Bool)

(declare-fun e!1801446 () Bool)

(declare-fun inv!16 (TokenValue!5298) Bool)

(assert (=> b!2843398 (= e!1801446 (inv!16 (value!162840 t1!27)))))

(declare-fun b!2843399 () Bool)

(declare-fun e!1801447 () Bool)

(declare-fun inv!17 (TokenValue!5298) Bool)

(assert (=> b!2843399 (= e!1801447 (inv!17 (value!162840 t1!27)))))

(declare-fun d!824553 () Bool)

(declare-fun c!458915 () Bool)

(assert (=> d!824553 (= c!458915 ((_ is IntegerValue!15894) (value!162840 t1!27)))))

(assert (=> d!824553 (= (inv!21 (value!162840 t1!27)) e!1801446)))

(declare-fun b!2843400 () Bool)

(assert (=> b!2843400 (= e!1801446 e!1801447)))

(declare-fun c!458916 () Bool)

(assert (=> b!2843400 (= c!458916 ((_ is IntegerValue!15895) (value!162840 t1!27)))))

(declare-fun b!2843401 () Bool)

(declare-fun res!1182836 () Bool)

(assert (=> b!2843401 (=> res!1182836 e!1801448)))

(assert (=> b!2843401 (= res!1182836 (not ((_ is IntegerValue!15896) (value!162840 t1!27))))))

(assert (=> b!2843401 (= e!1801447 e!1801448)))

(assert (= (and d!824553 c!458915) b!2843398))

(assert (= (and d!824553 (not c!458915)) b!2843400))

(assert (= (and b!2843400 c!458916) b!2843399))

(assert (= (and b!2843400 (not c!458916)) b!2843401))

(assert (= (and b!2843401 (not res!1182836)) b!2843397))

(declare-fun m!3271301 () Bool)

(assert (=> b!2843397 m!3271301))

(declare-fun m!3271303 () Bool)

(assert (=> b!2843398 m!3271303))

(declare-fun m!3271305 () Bool)

(assert (=> b!2843399 m!3271305))

(assert (=> b!2843316 d!824553))

(declare-fun d!824555 () Bool)

(declare-fun lt!1012024 () Bool)

(declare-fun e!1801449 () Bool)

(assert (=> d!824555 (= lt!1012024 e!1801449)))

(declare-fun res!1182838 () Bool)

(assert (=> d!824555 (=> (not res!1182838) (not e!1801449))))

(assert (=> d!824555 (= res!1182838 (= (list!12556 (_1!19897 (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t1!27))))) (list!12556 (singletonSeq!2184 t1!27))))))

(declare-fun e!1801450 () Bool)

(assert (=> d!824555 (= lt!1012024 e!1801450)))

(declare-fun res!1182837 () Bool)

(assert (=> d!824555 (=> (not res!1182837) (not e!1801450))))

(declare-fun lt!1012023 () tuple2!33570)

(assert (=> d!824555 (= res!1182837 (= (size!26168 (_1!19897 lt!1012023)) 1))))

(assert (=> d!824555 (= lt!1012023 (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t1!27))))))

(assert (=> d!824555 (not (isEmpty!18553 rules!1139))))

(assert (=> d!824555 (= (rulesProduceIndividualToken!2169 thiss!11361 rules!1139 t1!27) lt!1012024)))

(declare-fun b!2843402 () Bool)

(declare-fun res!1182839 () Bool)

(assert (=> b!2843402 (=> (not res!1182839) (not e!1801450))))

(assert (=> b!2843402 (= res!1182839 (= (apply!7842 (_1!19897 lt!1012023) 0) t1!27))))

(declare-fun b!2843403 () Bool)

(assert (=> b!2843403 (= e!1801450 (isEmpty!18552 (_2!19897 lt!1012023)))))

(declare-fun b!2843404 () Bool)

(assert (=> b!2843404 (= e!1801449 (isEmpty!18552 (_2!19897 (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t1!27))))))))

(assert (= (and d!824555 res!1182837) b!2843402))

(assert (= (and b!2843402 res!1182839) b!2843403))

(assert (= (and d!824555 res!1182838) b!2843404))

(declare-fun m!3271307 () Bool)

(assert (=> d!824555 m!3271307))

(declare-fun m!3271309 () Bool)

(assert (=> d!824555 m!3271309))

(declare-fun m!3271311 () Bool)

(assert (=> d!824555 m!3271311))

(assert (=> d!824555 m!3271159))

(declare-fun m!3271313 () Bool)

(assert (=> d!824555 m!3271313))

(assert (=> d!824555 m!3271307))

(assert (=> d!824555 m!3271313))

(assert (=> d!824555 m!3271313))

(declare-fun m!3271315 () Bool)

(assert (=> d!824555 m!3271315))

(declare-fun m!3271317 () Bool)

(assert (=> d!824555 m!3271317))

(declare-fun m!3271319 () Bool)

(assert (=> b!2843402 m!3271319))

(declare-fun m!3271321 () Bool)

(assert (=> b!2843403 m!3271321))

(assert (=> b!2843404 m!3271313))

(assert (=> b!2843404 m!3271313))

(assert (=> b!2843404 m!3271307))

(assert (=> b!2843404 m!3271307))

(assert (=> b!2843404 m!3271309))

(declare-fun m!3271323 () Bool)

(assert (=> b!2843404 m!3271323))

(assert (=> b!2843306 d!824555))

(declare-fun d!824557 () Bool)

(declare-fun res!1182842 () Bool)

(declare-fun e!1801453 () Bool)

(assert (=> d!824557 (=> (not res!1182842) (not e!1801453))))

(declare-fun rulesValid!1883 (LexerInterface!4658 List!33822) Bool)

(assert (=> d!824557 (= res!1182842 (rulesValid!1883 thiss!11361 rules!1139))))

(assert (=> d!824557 (= (rulesInvariant!4074 thiss!11361 rules!1139) e!1801453)))

(declare-fun b!2843407 () Bool)

(declare-datatypes ((List!33824 0))(
  ( (Nil!33700) (Cons!33700 (h!39120 String!37056) (t!232799 List!33824)) )
))
(declare-fun noDuplicateTag!1879 (LexerInterface!4658 List!33822 List!33824) Bool)

(assert (=> b!2843407 (= e!1801453 (noDuplicateTag!1879 thiss!11361 rules!1139 Nil!33700))))

(assert (= (and d!824557 res!1182842) b!2843407))

(declare-fun m!3271325 () Bool)

(assert (=> d!824557 m!3271325))

(declare-fun m!3271327 () Bool)

(assert (=> b!2843407 m!3271327))

(assert (=> b!2843317 d!824557))

(declare-fun b!2843408 () Bool)

(declare-fun e!1801456 () Bool)

(assert (=> b!2843408 (= e!1801456 (inv!15 (value!162840 t2!27)))))

(declare-fun b!2843409 () Bool)

(declare-fun e!1801454 () Bool)

(assert (=> b!2843409 (= e!1801454 (inv!16 (value!162840 t2!27)))))

(declare-fun b!2843410 () Bool)

(declare-fun e!1801455 () Bool)

(assert (=> b!2843410 (= e!1801455 (inv!17 (value!162840 t2!27)))))

(declare-fun d!824559 () Bool)

(declare-fun c!458917 () Bool)

(assert (=> d!824559 (= c!458917 ((_ is IntegerValue!15894) (value!162840 t2!27)))))

(assert (=> d!824559 (= (inv!21 (value!162840 t2!27)) e!1801454)))

(declare-fun b!2843411 () Bool)

(assert (=> b!2843411 (= e!1801454 e!1801455)))

(declare-fun c!458918 () Bool)

(assert (=> b!2843411 (= c!458918 ((_ is IntegerValue!15895) (value!162840 t2!27)))))

(declare-fun b!2843412 () Bool)

(declare-fun res!1182843 () Bool)

(assert (=> b!2843412 (=> res!1182843 e!1801456)))

(assert (=> b!2843412 (= res!1182843 (not ((_ is IntegerValue!15896) (value!162840 t2!27))))))

(assert (=> b!2843412 (= e!1801455 e!1801456)))

(assert (= (and d!824559 c!458917) b!2843409))

(assert (= (and d!824559 (not c!458917)) b!2843411))

(assert (= (and b!2843411 c!458918) b!2843410))

(assert (= (and b!2843411 (not c!458918)) b!2843412))

(assert (= (and b!2843412 (not res!1182843)) b!2843408))

(declare-fun m!3271329 () Bool)

(assert (=> b!2843408 m!3271329))

(declare-fun m!3271331 () Bool)

(assert (=> b!2843409 m!3271331))

(declare-fun m!3271333 () Bool)

(assert (=> b!2843410 m!3271333))

(assert (=> b!2843309 d!824559))

(declare-fun d!824561 () Bool)

(declare-fun lt!1012027 () C!17100)

(declare-fun apply!7845 (List!33820 Int) C!17100)

(declare-fun list!12557 (BalanceConc!20542) List!33820)

(assert (=> d!824561 (= lt!1012027 (apply!7845 (list!12557 lt!1011996) 0))))

(declare-fun apply!7846 (Conc!10452 Int) C!17100)

(assert (=> d!824561 (= lt!1012027 (apply!7846 (c!458900 lt!1011996) 0))))

(declare-fun e!1801459 () Bool)

(assert (=> d!824561 e!1801459))

(declare-fun res!1182846 () Bool)

(assert (=> d!824561 (=> (not res!1182846) (not e!1801459))))

(assert (=> d!824561 (= res!1182846 (<= 0 0))))

(assert (=> d!824561 (= (apply!7841 lt!1011996 0) lt!1012027)))

(declare-fun b!2843415 () Bool)

(declare-fun size!26170 (BalanceConc!20542) Int)

(assert (=> b!2843415 (= e!1801459 (< 0 (size!26170 lt!1011996)))))

(assert (= (and d!824561 res!1182846) b!2843415))

(declare-fun m!3271335 () Bool)

(assert (=> d!824561 m!3271335))

(assert (=> d!824561 m!3271335))

(declare-fun m!3271337 () Bool)

(assert (=> d!824561 m!3271337))

(declare-fun m!3271339 () Bool)

(assert (=> d!824561 m!3271339))

(declare-fun m!3271341 () Bool)

(assert (=> b!2843415 m!3271341))

(assert (=> b!2843310 d!824561))

(declare-fun d!824563 () Bool)

(declare-fun e!1801462 () Bool)

(assert (=> d!824563 e!1801462))

(declare-fun res!1182849 () Bool)

(assert (=> d!824563 (=> (not res!1182849) (not e!1801462))))

(declare-fun lt!1012030 () BalanceConc!20542)

(assert (=> d!824563 (= res!1182849 (= (list!12557 lt!1012030) (Cons!33696 (apply!7841 lt!1011996 0) Nil!33696)))))

(declare-fun singleton!960 (C!17100) BalanceConc!20542)

(assert (=> d!824563 (= lt!1012030 (singleton!960 (apply!7841 lt!1011996 0)))))

(assert (=> d!824563 (= (singletonSeq!2183 (apply!7841 lt!1011996 0)) lt!1012030)))

(declare-fun b!2843418 () Bool)

(declare-fun isBalanced!3150 (Conc!10452) Bool)

(assert (=> b!2843418 (= e!1801462 (isBalanced!3150 (c!458900 lt!1012030)))))

(assert (= (and d!824563 res!1182849) b!2843418))

(declare-fun m!3271343 () Bool)

(assert (=> d!824563 m!3271343))

(assert (=> d!824563 m!3271179))

(declare-fun m!3271345 () Bool)

(assert (=> d!824563 m!3271345))

(declare-fun m!3271347 () Bool)

(assert (=> b!2843418 m!3271347))

(assert (=> b!2843310 d!824563))

(declare-fun b!2843437 () Bool)

(declare-fun e!1801478 () Bool)

(declare-fun e!1801477 () Bool)

(assert (=> b!2843437 (= e!1801478 e!1801477)))

(declare-fun c!458923 () Bool)

(assert (=> b!2843437 (= c!458923 ((_ is Union!8459) lt!1011995))))

(declare-fun b!2843438 () Bool)

(declare-fun e!1801483 () Bool)

(assert (=> b!2843438 (= e!1801483 e!1801478)))

(declare-fun c!458924 () Bool)

(assert (=> b!2843438 (= c!458924 ((_ is Star!8459) lt!1011995))))

(declare-fun b!2843439 () Bool)

(declare-fun e!1801481 () Bool)

(declare-fun call!183330 () Bool)

(assert (=> b!2843439 (= e!1801481 call!183330)))

(declare-fun bm!183323 () Bool)

(declare-fun call!183328 () Bool)

(assert (=> bm!183323 (= call!183328 (validRegex!3355 (ite c!458924 (reg!8788 lt!1011995) (ite c!458923 (regTwo!17431 lt!1011995) (regTwo!17430 lt!1011995)))))))

(declare-fun b!2843440 () Bool)

(declare-fun e!1801482 () Bool)

(assert (=> b!2843440 (= e!1801482 call!183330)))

(declare-fun bm!183324 () Bool)

(assert (=> bm!183324 (= call!183330 call!183328)))

(declare-fun b!2843441 () Bool)

(declare-fun e!1801480 () Bool)

(assert (=> b!2843441 (= e!1801478 e!1801480)))

(declare-fun res!1182860 () Bool)

(declare-fun nullable!2623 (Regex!8459) Bool)

(assert (=> b!2843441 (= res!1182860 (not (nullable!2623 (reg!8788 lt!1011995))))))

(assert (=> b!2843441 (=> (not res!1182860) (not e!1801480))))

(declare-fun b!2843442 () Bool)

(declare-fun e!1801479 () Bool)

(assert (=> b!2843442 (= e!1801479 e!1801482)))

(declare-fun res!1182861 () Bool)

(assert (=> b!2843442 (=> (not res!1182861) (not e!1801482))))

(declare-fun call!183329 () Bool)

(assert (=> b!2843442 (= res!1182861 call!183329)))

(declare-fun d!824565 () Bool)

(declare-fun res!1182863 () Bool)

(assert (=> d!824565 (=> res!1182863 e!1801483)))

(assert (=> d!824565 (= res!1182863 ((_ is ElementMatch!8459) lt!1011995))))

(assert (=> d!824565 (= (validRegex!3355 lt!1011995) e!1801483)))

(declare-fun bm!183325 () Bool)

(assert (=> bm!183325 (= call!183329 (validRegex!3355 (ite c!458923 (regOne!17431 lt!1011995) (regOne!17430 lt!1011995))))))

(declare-fun b!2843443 () Bool)

(assert (=> b!2843443 (= e!1801480 call!183328)))

(declare-fun b!2843444 () Bool)

(declare-fun res!1182864 () Bool)

(assert (=> b!2843444 (=> res!1182864 e!1801479)))

(assert (=> b!2843444 (= res!1182864 (not ((_ is Concat!13758) lt!1011995)))))

(assert (=> b!2843444 (= e!1801477 e!1801479)))

(declare-fun b!2843445 () Bool)

(declare-fun res!1182862 () Bool)

(assert (=> b!2843445 (=> (not res!1182862) (not e!1801481))))

(assert (=> b!2843445 (= res!1182862 call!183329)))

(assert (=> b!2843445 (= e!1801477 e!1801481)))

(assert (= (and d!824565 (not res!1182863)) b!2843438))

(assert (= (and b!2843438 c!458924) b!2843441))

(assert (= (and b!2843438 (not c!458924)) b!2843437))

(assert (= (and b!2843441 res!1182860) b!2843443))

(assert (= (and b!2843437 c!458923) b!2843445))

(assert (= (and b!2843437 (not c!458923)) b!2843444))

(assert (= (and b!2843445 res!1182862) b!2843439))

(assert (= (and b!2843444 (not res!1182864)) b!2843442))

(assert (= (and b!2843442 res!1182861) b!2843440))

(assert (= (or b!2843445 b!2843442) bm!183325))

(assert (= (or b!2843439 b!2843440) bm!183324))

(assert (= (or b!2843443 bm!183324) bm!183323))

(declare-fun m!3271349 () Bool)

(assert (=> bm!183323 m!3271349))

(declare-fun m!3271351 () Bool)

(assert (=> b!2843441 m!3271351))

(declare-fun m!3271353 () Bool)

(assert (=> bm!183325 m!3271353))

(assert (=> b!2843310 d!824565))

(declare-fun d!824567 () Bool)

(declare-fun lt!1012033 () BalanceConc!20542)

(assert (=> d!824567 (= (list!12557 lt!1012033) (originalCharacters!5800 t1!27))))

(declare-fun dynLambda!14185 (Int TokenValue!5298) BalanceConc!20542)

(assert (=> d!824567 (= lt!1012033 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27)))))

(assert (=> d!824567 (= (charsOf!3118 t1!27) lt!1012033)))

(declare-fun b_lambda!85499 () Bool)

(assert (=> (not b_lambda!85499) (not d!824567)))

(declare-fun t!232778 () Bool)

(declare-fun tb!155041 () Bool)

(assert (=> (and b!2843314 (= (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (toChars!6977 (transformation!5068 (rule!7496 t1!27)))) t!232778) tb!155041))

(declare-fun b!2843450 () Bool)

(declare-fun e!1801486 () Bool)

(declare-fun tp!911217 () Bool)

(declare-fun inv!45700 (Conc!10452) Bool)

(assert (=> b!2843450 (= e!1801486 (and (inv!45700 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27)))) tp!911217))))

(declare-fun result!193472 () Bool)

(declare-fun inv!45701 (BalanceConc!20542) Bool)

(assert (=> tb!155041 (= result!193472 (and (inv!45701 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27))) e!1801486))))

(assert (= tb!155041 b!2843450))

(declare-fun m!3271355 () Bool)

(assert (=> b!2843450 m!3271355))

(declare-fun m!3271357 () Bool)

(assert (=> tb!155041 m!3271357))

(assert (=> d!824567 t!232778))

(declare-fun b_and!208739 () Bool)

(assert (= b_and!208717 (and (=> t!232778 result!193472) b_and!208739)))

(declare-fun tb!155043 () Bool)

(declare-fun t!232780 () Bool)

(assert (=> (and b!2843307 (= (toChars!6977 (transformation!5068 (h!39118 rules!1139))) (toChars!6977 (transformation!5068 (rule!7496 t1!27)))) t!232780) tb!155043))

(declare-fun result!193476 () Bool)

(assert (= result!193476 result!193472))

(assert (=> d!824567 t!232780))

(declare-fun b_and!208741 () Bool)

(assert (= b_and!208721 (and (=> t!232780 result!193476) b_and!208741)))

(declare-fun t!232782 () Bool)

(declare-fun tb!155045 () Bool)

(assert (=> (and b!2843308 (= (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (toChars!6977 (transformation!5068 (rule!7496 t1!27)))) t!232782) tb!155045))

(declare-fun result!193478 () Bool)

(assert (= result!193478 result!193472))

(assert (=> d!824567 t!232782))

(declare-fun b_and!208743 () Bool)

(assert (= b_and!208725 (and (=> t!232782 result!193478) b_and!208743)))

(declare-fun m!3271359 () Bool)

(assert (=> d!824567 m!3271359))

(declare-fun m!3271361 () Bool)

(assert (=> d!824567 m!3271361))

(assert (=> b!2843310 d!824567))

(declare-fun d!824569 () Bool)

(declare-datatypes ((Unit!47509 0))(
  ( (Unit!47510) )
))
(declare-fun lt!1012036 () Unit!47509)

(declare-fun lemma!566 (List!33822 LexerInterface!4658 List!33822) Unit!47509)

(assert (=> d!824569 (= lt!1012036 (lemma!566 rules!1139 thiss!11361 rules!1139))))

(declare-fun lambda!104335 () Int)

(declare-datatypes ((List!33827 0))(
  ( (Nil!33703) (Cons!33703 (h!39123 Regex!8459) (t!232802 List!33827)) )
))
(declare-fun generalisedUnion!542 (List!33827) Regex!8459)

(declare-fun map!7234 (List!33822 Int) List!33827)

(assert (=> d!824569 (= (rulesRegex!1004 thiss!11361 rules!1139) (generalisedUnion!542 (map!7234 rules!1139 lambda!104335)))))

(declare-fun bs!519092 () Bool)

(assert (= bs!519092 d!824569))

(declare-fun m!3271363 () Bool)

(assert (=> bs!519092 m!3271363))

(declare-fun m!3271365 () Bool)

(assert (=> bs!519092 m!3271365))

(assert (=> bs!519092 m!3271365))

(declare-fun m!3271367 () Bool)

(assert (=> bs!519092 m!3271367))

(assert (=> b!2843310 d!824569))

(declare-fun b!2843477 () Bool)

(declare-fun res!1182890 () Bool)

(declare-fun e!1801499 () Bool)

(assert (=> b!2843477 (=> (not res!1182890) (not e!1801499))))

(declare-fun height!1514 (Conc!10452) Int)

(declare-fun ++!8119 (Conc!10452 Conc!10452) Conc!10452)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2843477 (= res!1182890 (<= (height!1514 (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))) (+ (max!0 (height!1514 (c!458900 (charsOf!3118 t1!27))) (height!1514 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))) 1)))))

(declare-fun b!2843479 () Bool)

(declare-fun lt!1012045 () BalanceConc!20542)

(declare-fun ++!8120 (List!33820 List!33820) List!33820)

(assert (=> b!2843479 (= e!1801499 (= (list!12557 lt!1012045) (++!8120 (list!12557 (charsOf!3118 t1!27)) (list!12557 (singletonSeq!2183 (apply!7841 lt!1011996 0))))))))

(declare-fun b!2843476 () Bool)

(declare-fun res!1182893 () Bool)

(assert (=> b!2843476 (=> (not res!1182893) (not e!1801499))))

(assert (=> b!2843476 (= res!1182893 (isBalanced!3150 (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))))))

(declare-fun d!824571 () Bool)

(assert (=> d!824571 e!1801499))

(declare-fun res!1182892 () Bool)

(assert (=> d!824571 (=> (not res!1182892) (not e!1801499))))

(declare-fun appendAssocInst!718 (Conc!10452 Conc!10452) Bool)

(assert (=> d!824571 (= res!1182892 (appendAssocInst!718 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))

(assert (=> d!824571 (= lt!1012045 (BalanceConc!20543 (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))))))

(assert (=> d!824571 (= (++!8116 (charsOf!3118 t1!27) (singletonSeq!2183 (apply!7841 lt!1011996 0))) lt!1012045)))

(declare-fun b!2843478 () Bool)

(declare-fun res!1182891 () Bool)

(assert (=> b!2843478 (=> (not res!1182891) (not e!1801499))))

(assert (=> b!2843478 (= res!1182891 (>= (height!1514 (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))) (max!0 (height!1514 (c!458900 (charsOf!3118 t1!27))) (height!1514 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))

(assert (= (and d!824571 res!1182892) b!2843476))

(assert (= (and b!2843476 res!1182893) b!2843477))

(assert (= (and b!2843477 res!1182890) b!2843478))

(assert (= (and b!2843478 res!1182891) b!2843479))

(declare-fun m!3271399 () Bool)

(assert (=> d!824571 m!3271399))

(declare-fun m!3271401 () Bool)

(assert (=> d!824571 m!3271401))

(declare-fun m!3271403 () Bool)

(assert (=> b!2843479 m!3271403))

(assert (=> b!2843479 m!3271185))

(declare-fun m!3271405 () Bool)

(assert (=> b!2843479 m!3271405))

(assert (=> b!2843479 m!3271181))

(declare-fun m!3271407 () Bool)

(assert (=> b!2843479 m!3271407))

(assert (=> b!2843479 m!3271405))

(assert (=> b!2843479 m!3271407))

(declare-fun m!3271409 () Bool)

(assert (=> b!2843479 m!3271409))

(assert (=> b!2843477 m!3271401))

(declare-fun m!3271411 () Bool)

(assert (=> b!2843477 m!3271411))

(declare-fun m!3271413 () Bool)

(assert (=> b!2843477 m!3271413))

(assert (=> b!2843477 m!3271411))

(declare-fun m!3271415 () Bool)

(assert (=> b!2843477 m!3271415))

(assert (=> b!2843477 m!3271413))

(assert (=> b!2843477 m!3271401))

(declare-fun m!3271417 () Bool)

(assert (=> b!2843477 m!3271417))

(assert (=> b!2843476 m!3271401))

(assert (=> b!2843476 m!3271401))

(declare-fun m!3271419 () Bool)

(assert (=> b!2843476 m!3271419))

(assert (=> b!2843478 m!3271401))

(assert (=> b!2843478 m!3271411))

(assert (=> b!2843478 m!3271413))

(assert (=> b!2843478 m!3271411))

(assert (=> b!2843478 m!3271415))

(assert (=> b!2843478 m!3271413))

(assert (=> b!2843478 m!3271401))

(assert (=> b!2843478 m!3271417))

(assert (=> b!2843310 d!824571))

(declare-fun d!824579 () Bool)

(declare-fun lt!1012050 () Bool)

(declare-fun isEmpty!18556 (List!33820) Bool)

(assert (=> d!824579 (= lt!1012050 (isEmpty!18556 (list!12557 lt!1011996)))))

(declare-fun isEmpty!18557 (Conc!10452) Bool)

(assert (=> d!824579 (= lt!1012050 (isEmpty!18557 (c!458900 lt!1011996)))))

(assert (=> d!824579 (= (isEmpty!18552 lt!1011996) lt!1012050)))

(declare-fun bs!519093 () Bool)

(assert (= bs!519093 d!824579))

(assert (=> bs!519093 m!3271335))

(assert (=> bs!519093 m!3271335))

(declare-fun m!3271445 () Bool)

(assert (=> bs!519093 m!3271445))

(declare-fun m!3271447 () Bool)

(assert (=> bs!519093 m!3271447))

(assert (=> b!2843311 d!824579))

(declare-fun d!824585 () Bool)

(declare-fun lt!1012051 () BalanceConc!20542)

(assert (=> d!824585 (= (list!12557 lt!1012051) (originalCharacters!5800 t2!27))))

(assert (=> d!824585 (= lt!1012051 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27)))))

(assert (=> d!824585 (= (charsOf!3118 t2!27) lt!1012051)))

(declare-fun b_lambda!85505 () Bool)

(assert (=> (not b_lambda!85505) (not d!824585)))

(declare-fun tb!155047 () Bool)

(declare-fun t!232785 () Bool)

(assert (=> (and b!2843314 (= (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (toChars!6977 (transformation!5068 (rule!7496 t2!27)))) t!232785) tb!155047))

(declare-fun b!2843498 () Bool)

(declare-fun e!1801511 () Bool)

(declare-fun tp!911218 () Bool)

(assert (=> b!2843498 (= e!1801511 (and (inv!45700 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27)))) tp!911218))))

(declare-fun result!193480 () Bool)

(assert (=> tb!155047 (= result!193480 (and (inv!45701 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27))) e!1801511))))

(assert (= tb!155047 b!2843498))

(declare-fun m!3271449 () Bool)

(assert (=> b!2843498 m!3271449))

(declare-fun m!3271451 () Bool)

(assert (=> tb!155047 m!3271451))

(assert (=> d!824585 t!232785))

(declare-fun b_and!208757 () Bool)

(assert (= b_and!208739 (and (=> t!232785 result!193480) b_and!208757)))

(declare-fun tb!155049 () Bool)

(declare-fun t!232787 () Bool)

(assert (=> (and b!2843307 (= (toChars!6977 (transformation!5068 (h!39118 rules!1139))) (toChars!6977 (transformation!5068 (rule!7496 t2!27)))) t!232787) tb!155049))

(declare-fun result!193482 () Bool)

(assert (= result!193482 result!193480))

(assert (=> d!824585 t!232787))

(declare-fun b_and!208759 () Bool)

(assert (= b_and!208741 (and (=> t!232787 result!193482) b_and!208759)))

(declare-fun t!232789 () Bool)

(declare-fun tb!155051 () Bool)

(assert (=> (and b!2843308 (= (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (toChars!6977 (transformation!5068 (rule!7496 t2!27)))) t!232789) tb!155051))

(declare-fun result!193484 () Bool)

(assert (= result!193484 result!193480))

(assert (=> d!824585 t!232789))

(declare-fun b_and!208761 () Bool)

(assert (= b_and!208743 (and (=> t!232789 result!193484) b_and!208761)))

(declare-fun m!3271453 () Bool)

(assert (=> d!824585 m!3271453))

(declare-fun m!3271455 () Bool)

(assert (=> d!824585 m!3271455))

(assert (=> b!2843311 d!824585))

(declare-fun d!824587 () Bool)

(declare-fun res!1182908 () Bool)

(declare-fun e!1801522 () Bool)

(assert (=> d!824587 (=> (not res!1182908) (not e!1801522))))

(assert (=> d!824587 (= res!1182908 (not (isEmpty!18556 (originalCharacters!5800 t1!27))))))

(assert (=> d!824587 (= (inv!45696 t1!27) e!1801522)))

(declare-fun b!2843519 () Bool)

(declare-fun res!1182909 () Bool)

(assert (=> b!2843519 (=> (not res!1182909) (not e!1801522))))

(assert (=> b!2843519 (= res!1182909 (= (originalCharacters!5800 t1!27) (list!12557 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27)))))))

(declare-fun b!2843520 () Bool)

(declare-fun size!26173 (List!33820) Int)

(assert (=> b!2843520 (= e!1801522 (= (size!26167 t1!27) (size!26173 (originalCharacters!5800 t1!27))))))

(assert (= (and d!824587 res!1182908) b!2843519))

(assert (= (and b!2843519 res!1182909) b!2843520))

(declare-fun b_lambda!85507 () Bool)

(assert (=> (not b_lambda!85507) (not b!2843519)))

(assert (=> b!2843519 t!232778))

(declare-fun b_and!208763 () Bool)

(assert (= b_and!208757 (and (=> t!232778 result!193472) b_and!208763)))

(assert (=> b!2843519 t!232780))

(declare-fun b_and!208765 () Bool)

(assert (= b_and!208759 (and (=> t!232780 result!193476) b_and!208765)))

(assert (=> b!2843519 t!232782))

(declare-fun b_and!208767 () Bool)

(assert (= b_and!208761 (and (=> t!232782 result!193478) b_and!208767)))

(declare-fun m!3271467 () Bool)

(assert (=> d!824587 m!3271467))

(assert (=> b!2843519 m!3271361))

(assert (=> b!2843519 m!3271361))

(declare-fun m!3271469 () Bool)

(assert (=> b!2843519 m!3271469))

(declare-fun m!3271471 () Bool)

(assert (=> b!2843520 m!3271471))

(assert (=> start!276696 d!824587))

(declare-fun d!824593 () Bool)

(declare-fun res!1182910 () Bool)

(declare-fun e!1801523 () Bool)

(assert (=> d!824593 (=> (not res!1182910) (not e!1801523))))

(assert (=> d!824593 (= res!1182910 (not (isEmpty!18556 (originalCharacters!5800 t2!27))))))

(assert (=> d!824593 (= (inv!45696 t2!27) e!1801523)))

(declare-fun b!2843523 () Bool)

(declare-fun res!1182911 () Bool)

(assert (=> b!2843523 (=> (not res!1182911) (not e!1801523))))

(assert (=> b!2843523 (= res!1182911 (= (originalCharacters!5800 t2!27) (list!12557 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27)))))))

(declare-fun b!2843524 () Bool)

(assert (=> b!2843524 (= e!1801523 (= (size!26167 t2!27) (size!26173 (originalCharacters!5800 t2!27))))))

(assert (= (and d!824593 res!1182910) b!2843523))

(assert (= (and b!2843523 res!1182911) b!2843524))

(declare-fun b_lambda!85509 () Bool)

(assert (=> (not b_lambda!85509) (not b!2843523)))

(assert (=> b!2843523 t!232785))

(declare-fun b_and!208769 () Bool)

(assert (= b_and!208763 (and (=> t!232785 result!193480) b_and!208769)))

(assert (=> b!2843523 t!232787))

(declare-fun b_and!208771 () Bool)

(assert (= b_and!208765 (and (=> t!232787 result!193482) b_and!208771)))

(assert (=> b!2843523 t!232789))

(declare-fun b_and!208773 () Bool)

(assert (= b_and!208767 (and (=> t!232789 result!193484) b_and!208773)))

(declare-fun m!3271473 () Bool)

(assert (=> d!824593 m!3271473))

(assert (=> b!2843523 m!3271455))

(assert (=> b!2843523 m!3271455))

(declare-fun m!3271475 () Bool)

(assert (=> b!2843523 m!3271475))

(declare-fun m!3271477 () Bool)

(assert (=> b!2843524 m!3271477))

(assert (=> start!276696 d!824593))

(declare-fun d!824595 () Bool)

(assert (=> d!824595 (= (inv!45693 (tag!5572 (h!39118 rules!1139))) (= (mod (str.len (value!162839 (tag!5572 (h!39118 rules!1139)))) 2) 0))))

(assert (=> b!2843312 d!824595))

(declare-fun d!824597 () Bool)

(declare-fun res!1182912 () Bool)

(declare-fun e!1801528 () Bool)

(assert (=> d!824597 (=> (not res!1182912) (not e!1801528))))

(assert (=> d!824597 (= res!1182912 (semiInverseModEq!2115 (toChars!6977 (transformation!5068 (h!39118 rules!1139))) (toValue!7118 (transformation!5068 (h!39118 rules!1139)))))))

(assert (=> d!824597 (= (inv!45697 (transformation!5068 (h!39118 rules!1139))) e!1801528)))

(declare-fun b!2843534 () Bool)

(assert (=> b!2843534 (= e!1801528 (equivClasses!2014 (toChars!6977 (transformation!5068 (h!39118 rules!1139))) (toValue!7118 (transformation!5068 (h!39118 rules!1139)))))))

(assert (= (and d!824597 res!1182912) b!2843534))

(declare-fun m!3271479 () Bool)

(assert (=> d!824597 m!3271479))

(declare-fun m!3271481 () Bool)

(assert (=> b!2843534 m!3271481))

(assert (=> b!2843312 d!824597))

(declare-fun d!824599 () Bool)

(assert (=> d!824599 (= (inv!45693 (tag!5572 (rule!7496 t1!27))) (= (mod (str.len (value!162839 (tag!5572 (rule!7496 t1!27)))) 2) 0))))

(assert (=> b!2843313 d!824599))

(declare-fun d!824601 () Bool)

(declare-fun res!1182913 () Bool)

(declare-fun e!1801531 () Bool)

(assert (=> d!824601 (=> (not res!1182913) (not e!1801531))))

(assert (=> d!824601 (= res!1182913 (semiInverseModEq!2115 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (toValue!7118 (transformation!5068 (rule!7496 t1!27)))))))

(assert (=> d!824601 (= (inv!45697 (transformation!5068 (rule!7496 t1!27))) e!1801531)))

(declare-fun b!2843543 () Bool)

(assert (=> b!2843543 (= e!1801531 (equivClasses!2014 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (toValue!7118 (transformation!5068 (rule!7496 t1!27)))))))

(assert (= (and d!824601 res!1182913) b!2843543))

(declare-fun m!3271483 () Bool)

(assert (=> d!824601 m!3271483))

(declare-fun m!3271485 () Bool)

(assert (=> b!2843543 m!3271485))

(assert (=> b!2843313 d!824601))

(declare-fun b!2843554 () Bool)

(declare-fun e!1801538 () Bool)

(declare-fun tp_is_empty!14687 () Bool)

(declare-fun tp!911251 () Bool)

(assert (=> b!2843554 (= e!1801538 (and tp_is_empty!14687 tp!911251))))

(assert (=> b!2843309 (= tp!911201 e!1801538)))

(assert (= (and b!2843309 ((_ is Cons!33696) (originalCharacters!5800 t2!27))) b!2843554))

(declare-fun b!2843567 () Bool)

(declare-fun e!1801545 () Bool)

(assert (=> b!2843567 (= e!1801545 tp_is_empty!14687)))

(declare-fun b!2843568 () Bool)

(declare-fun tp!911269 () Bool)

(declare-fun tp!911270 () Bool)

(assert (=> b!2843568 (= e!1801545 (and tp!911269 tp!911270))))

(assert (=> b!2843305 (= tp!911203 e!1801545)))

(declare-fun b!2843569 () Bool)

(declare-fun tp!911271 () Bool)

(assert (=> b!2843569 (= e!1801545 tp!911271)))

(declare-fun b!2843570 () Bool)

(declare-fun tp!911268 () Bool)

(declare-fun tp!911272 () Bool)

(assert (=> b!2843570 (= e!1801545 (and tp!911268 tp!911272))))

(assert (= (and b!2843305 ((_ is ElementMatch!8459) (regex!5068 (rule!7496 t2!27)))) b!2843567))

(assert (= (and b!2843305 ((_ is Concat!13758) (regex!5068 (rule!7496 t2!27)))) b!2843568))

(assert (= (and b!2843305 ((_ is Star!8459) (regex!5068 (rule!7496 t2!27)))) b!2843569))

(assert (= (and b!2843305 ((_ is Union!8459) (regex!5068 (rule!7496 t2!27)))) b!2843570))

(declare-fun b!2843574 () Bool)

(declare-fun e!1801550 () Bool)

(declare-fun tp!911277 () Bool)

(assert (=> b!2843574 (= e!1801550 (and tp_is_empty!14687 tp!911277))))

(assert (=> b!2843316 (= tp!911209 e!1801550)))

(assert (= (and b!2843316 ((_ is Cons!33696) (originalCharacters!5800 t1!27))) b!2843574))

(declare-fun b!2843575 () Bool)

(declare-fun e!1801551 () Bool)

(assert (=> b!2843575 (= e!1801551 tp_is_empty!14687)))

(declare-fun b!2843576 () Bool)

(declare-fun tp!911279 () Bool)

(declare-fun tp!911280 () Bool)

(assert (=> b!2843576 (= e!1801551 (and tp!911279 tp!911280))))

(assert (=> b!2843312 (= tp!911207 e!1801551)))

(declare-fun b!2843577 () Bool)

(declare-fun tp!911281 () Bool)

(assert (=> b!2843577 (= e!1801551 tp!911281)))

(declare-fun b!2843578 () Bool)

(declare-fun tp!911278 () Bool)

(declare-fun tp!911282 () Bool)

(assert (=> b!2843578 (= e!1801551 (and tp!911278 tp!911282))))

(assert (= (and b!2843312 ((_ is ElementMatch!8459) (regex!5068 (h!39118 rules!1139)))) b!2843575))

(assert (= (and b!2843312 ((_ is Concat!13758) (regex!5068 (h!39118 rules!1139)))) b!2843576))

(assert (= (and b!2843312 ((_ is Star!8459) (regex!5068 (h!39118 rules!1139)))) b!2843577))

(assert (= (and b!2843312 ((_ is Union!8459) (regex!5068 (h!39118 rules!1139)))) b!2843578))

(declare-fun b!2843590 () Bool)

(declare-fun b_free!82561 () Bool)

(declare-fun b_next!83265 () Bool)

(assert (=> b!2843590 (= b_free!82561 (not b_next!83265))))

(declare-fun tp!911295 () Bool)

(declare-fun b_and!208779 () Bool)

(assert (=> b!2843590 (= tp!911295 b_and!208779)))

(declare-fun b_free!82563 () Bool)

(declare-fun b_next!83267 () Bool)

(assert (=> b!2843590 (= b_free!82563 (not b_next!83267))))

(declare-fun tb!155057 () Bool)

(declare-fun t!232795 () Bool)

(assert (=> (and b!2843590 (= (toChars!6977 (transformation!5068 (h!39118 (t!232761 rules!1139)))) (toChars!6977 (transformation!5068 (rule!7496 t1!27)))) t!232795) tb!155057))

(declare-fun result!193502 () Bool)

(assert (= result!193502 result!193472))

(assert (=> d!824567 t!232795))

(declare-fun t!232797 () Bool)

(declare-fun tb!155059 () Bool)

(assert (=> (and b!2843590 (= (toChars!6977 (transformation!5068 (h!39118 (t!232761 rules!1139)))) (toChars!6977 (transformation!5068 (rule!7496 t2!27)))) t!232797) tb!155059))

(declare-fun result!193504 () Bool)

(assert (= result!193504 result!193480))

(assert (=> d!824585 t!232797))

(assert (=> b!2843519 t!232795))

(assert (=> b!2843523 t!232797))

(declare-fun tp!911293 () Bool)

(declare-fun b_and!208781 () Bool)

(assert (=> b!2843590 (= tp!911293 (and (=> t!232795 result!193502) (=> t!232797 result!193504) b_and!208781))))

(declare-fun e!1801563 () Bool)

(assert (=> b!2843590 (= e!1801563 (and tp!911295 tp!911293))))

(declare-fun e!1801561 () Bool)

(declare-fun b!2843589 () Bool)

(declare-fun tp!911294 () Bool)

(assert (=> b!2843589 (= e!1801561 (and tp!911294 (inv!45693 (tag!5572 (h!39118 (t!232761 rules!1139)))) (inv!45697 (transformation!5068 (h!39118 (t!232761 rules!1139)))) e!1801563))))

(declare-fun b!2843588 () Bool)

(declare-fun e!1801562 () Bool)

(declare-fun tp!911292 () Bool)

(assert (=> b!2843588 (= e!1801562 (and e!1801561 tp!911292))))

(assert (=> b!2843318 (= tp!911199 e!1801562)))

(assert (= b!2843589 b!2843590))

(assert (= b!2843588 b!2843589))

(assert (= (and b!2843318 ((_ is Cons!33698) (t!232761 rules!1139))) b!2843588))

(declare-fun m!3271491 () Bool)

(assert (=> b!2843589 m!3271491))

(declare-fun m!3271493 () Bool)

(assert (=> b!2843589 m!3271493))

(declare-fun b!2843591 () Bool)

(declare-fun e!1801565 () Bool)

(assert (=> b!2843591 (= e!1801565 tp_is_empty!14687)))

(declare-fun b!2843592 () Bool)

(declare-fun tp!911297 () Bool)

(declare-fun tp!911298 () Bool)

(assert (=> b!2843592 (= e!1801565 (and tp!911297 tp!911298))))

(assert (=> b!2843313 (= tp!911202 e!1801565)))

(declare-fun b!2843593 () Bool)

(declare-fun tp!911299 () Bool)

(assert (=> b!2843593 (= e!1801565 tp!911299)))

(declare-fun b!2843594 () Bool)

(declare-fun tp!911296 () Bool)

(declare-fun tp!911300 () Bool)

(assert (=> b!2843594 (= e!1801565 (and tp!911296 tp!911300))))

(assert (= (and b!2843313 ((_ is ElementMatch!8459) (regex!5068 (rule!7496 t1!27)))) b!2843591))

(assert (= (and b!2843313 ((_ is Concat!13758) (regex!5068 (rule!7496 t1!27)))) b!2843592))

(assert (= (and b!2843313 ((_ is Star!8459) (regex!5068 (rule!7496 t1!27)))) b!2843593))

(assert (= (and b!2843313 ((_ is Union!8459) (regex!5068 (rule!7496 t1!27)))) b!2843594))

(declare-fun b_lambda!85519 () Bool)

(assert (= b_lambda!85509 (or (and b!2843314 b_free!82547 (= (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (toChars!6977 (transformation!5068 (rule!7496 t2!27))))) (and b!2843307 b_free!82551 (= (toChars!6977 (transformation!5068 (h!39118 rules!1139))) (toChars!6977 (transformation!5068 (rule!7496 t2!27))))) (and b!2843308 b_free!82555) (and b!2843590 b_free!82563 (= (toChars!6977 (transformation!5068 (h!39118 (t!232761 rules!1139)))) (toChars!6977 (transformation!5068 (rule!7496 t2!27))))) b_lambda!85519)))

(declare-fun b_lambda!85521 () Bool)

(assert (= b_lambda!85505 (or (and b!2843314 b_free!82547 (= (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (toChars!6977 (transformation!5068 (rule!7496 t2!27))))) (and b!2843307 b_free!82551 (= (toChars!6977 (transformation!5068 (h!39118 rules!1139))) (toChars!6977 (transformation!5068 (rule!7496 t2!27))))) (and b!2843308 b_free!82555) (and b!2843590 b_free!82563 (= (toChars!6977 (transformation!5068 (h!39118 (t!232761 rules!1139)))) (toChars!6977 (transformation!5068 (rule!7496 t2!27))))) b_lambda!85521)))

(declare-fun b_lambda!85523 () Bool)

(assert (= b_lambda!85507 (or (and b!2843314 b_free!82547) (and b!2843307 b_free!82551 (= (toChars!6977 (transformation!5068 (h!39118 rules!1139))) (toChars!6977 (transformation!5068 (rule!7496 t1!27))))) (and b!2843308 b_free!82555 (= (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (toChars!6977 (transformation!5068 (rule!7496 t1!27))))) (and b!2843590 b_free!82563 (= (toChars!6977 (transformation!5068 (h!39118 (t!232761 rules!1139)))) (toChars!6977 (transformation!5068 (rule!7496 t1!27))))) b_lambda!85523)))

(declare-fun b_lambda!85525 () Bool)

(assert (= b_lambda!85499 (or (and b!2843314 b_free!82547) (and b!2843307 b_free!82551 (= (toChars!6977 (transformation!5068 (h!39118 rules!1139))) (toChars!6977 (transformation!5068 (rule!7496 t1!27))))) (and b!2843308 b_free!82555 (= (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (toChars!6977 (transformation!5068 (rule!7496 t1!27))))) (and b!2843590 b_free!82563 (= (toChars!6977 (transformation!5068 (h!39118 (t!232761 rules!1139)))) (toChars!6977 (transformation!5068 (rule!7496 t1!27))))) b_lambda!85525)))

(check-sat (not b_next!83265) (not d!824563) b_and!208719 (not b!2843534) b_and!208781 (not b_next!83249) (not bm!183323) (not b!2843543) (not b_next!83255) (not b!2843398) (not b!2843519) (not b!2843574) (not d!824587) (not b!2843418) (not b!2843569) (not d!824571) b_and!208769 (not tb!155041) (not b!2843498) (not b!2843576) (not b!2843397) b_and!208773 tp_is_empty!14687 (not d!824601) (not b!2843382) (not b!2843520) (not b!2843554) (not b!2843402) (not b!2843479) (not d!824593) (not d!824521) (not b!2843441) (not b!2843588) (not b!2843476) (not b!2843478) (not b_lambda!85521) (not b!2843568) b_and!208715 (not b_next!83267) (not b_next!83259) (not b_lambda!85519) (not b!2843450) (not bm!183325) (not b!2843403) (not b!2843408) (not d!824579) (not d!824555) (not b!2843593) (not b!2843399) (not d!824597) (not b!2843524) (not b!2843415) (not b_lambda!85523) b_and!208723 (not d!824569) b_and!208779 (not b!2843383) (not b!2843381) (not d!824551) (not b!2843409) (not b!2843407) (not b!2843570) (not b!2843589) b_and!208771 (not tb!155047) (not d!824557) (not b_next!83257) (not b!2843386) (not b!2843404) (not d!824561) (not b!2843477) (not b!2843592) (not d!824585) (not b!2843594) (not d!824567) (not b_next!83253) (not b_lambda!85525) (not b!2843523) (not b!2843577) (not b!2843410) (not b_next!83251) (not b!2843578))
(check-sat (not b_next!83255) (not b_next!83265) b_and!208769 b_and!208773 b_and!208719 b_and!208781 (not b_next!83249) b_and!208723 b_and!208779 b_and!208771 (not b_next!83257) (not b_next!83253) (not b_next!83251) b_and!208715 (not b_next!83267) (not b_next!83259))
(get-model)

(declare-fun d!824607 () Bool)

(assert (=> d!824607 true))

(declare-fun lambda!104338 () Int)

(declare-fun order!18035 () Int)

(declare-fun order!18033 () Int)

(declare-fun dynLambda!14186 (Int Int) Int)

(declare-fun dynLambda!14187 (Int Int) Int)

(assert (=> d!824607 (< (dynLambda!14186 order!18033 (toValue!7118 (transformation!5068 (h!39118 rules!1139)))) (dynLambda!14187 order!18035 lambda!104338))))

(declare-fun Forall2!846 (Int) Bool)

(assert (=> d!824607 (= (equivClasses!2014 (toChars!6977 (transformation!5068 (h!39118 rules!1139))) (toValue!7118 (transformation!5068 (h!39118 rules!1139)))) (Forall2!846 lambda!104338))))

(declare-fun bs!519100 () Bool)

(assert (= bs!519100 d!824607))

(declare-fun m!3271557 () Bool)

(assert (=> bs!519100 m!3271557))

(assert (=> b!2843534 d!824607))

(declare-fun b!2843648 () Bool)

(declare-fun res!1182968 () Bool)

(declare-fun e!1801591 () Bool)

(assert (=> b!2843648 (=> (not res!1182968) (not e!1801591))))

(assert (=> b!2843648 (= res!1182968 (isBalanced!3150 (right!25722 (c!458900 lt!1012030))))))

(declare-fun b!2843649 () Bool)

(assert (=> b!2843649 (= e!1801591 (not (isEmpty!18557 (right!25722 (c!458900 lt!1012030)))))))

(declare-fun b!2843650 () Bool)

(declare-fun res!1182966 () Bool)

(assert (=> b!2843650 (=> (not res!1182966) (not e!1801591))))

(assert (=> b!2843650 (= res!1182966 (not (isEmpty!18557 (left!25392 (c!458900 lt!1012030)))))))

(declare-fun b!2843651 () Bool)

(declare-fun res!1182964 () Bool)

(assert (=> b!2843651 (=> (not res!1182964) (not e!1801591))))

(assert (=> b!2843651 (= res!1182964 (isBalanced!3150 (left!25392 (c!458900 lt!1012030))))))

(declare-fun d!824629 () Bool)

(declare-fun res!1182969 () Bool)

(declare-fun e!1801592 () Bool)

(assert (=> d!824629 (=> res!1182969 e!1801592)))

(assert (=> d!824629 (= res!1182969 (not ((_ is Node!10452) (c!458900 lt!1012030))))))

(assert (=> d!824629 (= (isBalanced!3150 (c!458900 lt!1012030)) e!1801592)))

(declare-fun b!2843652 () Bool)

(assert (=> b!2843652 (= e!1801592 e!1801591)))

(declare-fun res!1182967 () Bool)

(assert (=> b!2843652 (=> (not res!1182967) (not e!1801591))))

(assert (=> b!2843652 (= res!1182967 (<= (- 1) (- (height!1514 (left!25392 (c!458900 lt!1012030))) (height!1514 (right!25722 (c!458900 lt!1012030))))))))

(declare-fun b!2843653 () Bool)

(declare-fun res!1182965 () Bool)

(assert (=> b!2843653 (=> (not res!1182965) (not e!1801591))))

(assert (=> b!2843653 (= res!1182965 (<= (- (height!1514 (left!25392 (c!458900 lt!1012030))) (height!1514 (right!25722 (c!458900 lt!1012030)))) 1))))

(assert (= (and d!824629 (not res!1182969)) b!2843652))

(assert (= (and b!2843652 res!1182967) b!2843653))

(assert (= (and b!2843653 res!1182965) b!2843651))

(assert (= (and b!2843651 res!1182964) b!2843648))

(assert (= (and b!2843648 res!1182968) b!2843650))

(assert (= (and b!2843650 res!1182966) b!2843649))

(declare-fun m!3271559 () Bool)

(assert (=> b!2843648 m!3271559))

(declare-fun m!3271561 () Bool)

(assert (=> b!2843651 m!3271561))

(declare-fun m!3271563 () Bool)

(assert (=> b!2843649 m!3271563))

(declare-fun m!3271565 () Bool)

(assert (=> b!2843650 m!3271565))

(declare-fun m!3271567 () Bool)

(assert (=> b!2843653 m!3271567))

(declare-fun m!3271569 () Bool)

(assert (=> b!2843653 m!3271569))

(assert (=> b!2843652 m!3271567))

(assert (=> b!2843652 m!3271569))

(assert (=> b!2843418 d!824629))

(declare-fun d!824631 () Bool)

(assert (=> d!824631 (= (isEmpty!18556 (list!12557 lt!1011996)) ((_ is Nil!33696) (list!12557 lt!1011996)))))

(assert (=> d!824579 d!824631))

(declare-fun d!824633 () Bool)

(declare-fun list!12560 (Conc!10452) List!33820)

(assert (=> d!824633 (= (list!12557 lt!1011996) (list!12560 (c!458900 lt!1011996)))))

(declare-fun bs!519101 () Bool)

(assert (= bs!519101 d!824633))

(declare-fun m!3271571 () Bool)

(assert (=> bs!519101 m!3271571))

(assert (=> d!824579 d!824633))

(declare-fun d!824635 () Bool)

(declare-fun lt!1012069 () Bool)

(assert (=> d!824635 (= lt!1012069 (isEmpty!18556 (list!12560 (c!458900 lt!1011996))))))

(declare-fun size!26177 (Conc!10452) Int)

(assert (=> d!824635 (= lt!1012069 (= (size!26177 (c!458900 lt!1011996)) 0))))

(assert (=> d!824635 (= (isEmpty!18557 (c!458900 lt!1011996)) lt!1012069)))

(declare-fun bs!519102 () Bool)

(assert (= bs!519102 d!824635))

(assert (=> bs!519102 m!3271571))

(assert (=> bs!519102 m!3271571))

(declare-fun m!3271573 () Bool)

(assert (=> bs!519102 m!3271573))

(declare-fun m!3271575 () Bool)

(assert (=> bs!519102 m!3271575))

(assert (=> d!824579 d!824635))

(assert (=> d!824555 d!824547))

(declare-fun b!2843664 () Bool)

(declare-fun e!1801600 () Bool)

(declare-fun lt!1012072 () tuple2!33570)

(declare-datatypes ((tuple2!33576 0))(
  ( (tuple2!33577 (_1!19900 List!33823) (_2!19900 List!33820)) )
))
(declare-fun lexList!1264 (LexerInterface!4658 List!33822 List!33820) tuple2!33576)

(assert (=> b!2843664 (= e!1801600 (= (list!12557 (_2!19897 lt!1012072)) (_2!19900 (lexList!1264 thiss!11361 rules!1139 (list!12557 (print!1748 thiss!11361 (singletonSeq!2184 t1!27)))))))))

(declare-fun e!1801601 () Bool)

(declare-fun b!2843666 () Bool)

(assert (=> b!2843666 (= e!1801601 (= (_2!19897 lt!1012072) (print!1748 thiss!11361 (singletonSeq!2184 t1!27))))))

(declare-fun b!2843667 () Bool)

(declare-fun e!1801599 () Bool)

(assert (=> b!2843667 (= e!1801601 e!1801599)))

(declare-fun res!1182976 () Bool)

(assert (=> b!2843667 (= res!1182976 (< (size!26170 (_2!19897 lt!1012072)) (size!26170 (print!1748 thiss!11361 (singletonSeq!2184 t1!27)))))))

(assert (=> b!2843667 (=> (not res!1182976) (not e!1801599))))

(declare-fun b!2843668 () Bool)

(declare-fun isEmpty!18559 (BalanceConc!20544) Bool)

(assert (=> b!2843668 (= e!1801599 (not (isEmpty!18559 (_1!19897 lt!1012072))))))

(declare-fun d!824637 () Bool)

(assert (=> d!824637 e!1801600))

(declare-fun res!1182977 () Bool)

(assert (=> d!824637 (=> (not res!1182977) (not e!1801600))))

(assert (=> d!824637 (= res!1182977 e!1801601)))

(declare-fun c!458945 () Bool)

(assert (=> d!824637 (= c!458945 (> (size!26168 (_1!19897 lt!1012072)) 0))))

(declare-fun lexTailRecV2!902 (LexerInterface!4658 List!33822 BalanceConc!20542 BalanceConc!20542 BalanceConc!20542 BalanceConc!20544) tuple2!33570)

(assert (=> d!824637 (= lt!1012072 (lexTailRecV2!902 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t1!27)) (BalanceConc!20543 Empty!10452) (print!1748 thiss!11361 (singletonSeq!2184 t1!27)) (BalanceConc!20545 Empty!10453)))))

(assert (=> d!824637 (= (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t1!27))) lt!1012072)))

(declare-fun b!2843665 () Bool)

(declare-fun res!1182978 () Bool)

(assert (=> b!2843665 (=> (not res!1182978) (not e!1801600))))

(assert (=> b!2843665 (= res!1182978 (= (list!12556 (_1!19897 lt!1012072)) (_1!19900 (lexList!1264 thiss!11361 rules!1139 (list!12557 (print!1748 thiss!11361 (singletonSeq!2184 t1!27)))))))))

(assert (= (and d!824637 c!458945) b!2843667))

(assert (= (and d!824637 (not c!458945)) b!2843666))

(assert (= (and b!2843667 res!1182976) b!2843668))

(assert (= (and d!824637 res!1182977) b!2843665))

(assert (= (and b!2843665 res!1182978) b!2843664))

(declare-fun m!3271577 () Bool)

(assert (=> b!2843667 m!3271577))

(assert (=> b!2843667 m!3271307))

(declare-fun m!3271579 () Bool)

(assert (=> b!2843667 m!3271579))

(declare-fun m!3271581 () Bool)

(assert (=> b!2843664 m!3271581))

(assert (=> b!2843664 m!3271307))

(declare-fun m!3271583 () Bool)

(assert (=> b!2843664 m!3271583))

(assert (=> b!2843664 m!3271583))

(declare-fun m!3271585 () Bool)

(assert (=> b!2843664 m!3271585))

(declare-fun m!3271587 () Bool)

(assert (=> d!824637 m!3271587))

(assert (=> d!824637 m!3271307))

(assert (=> d!824637 m!3271307))

(declare-fun m!3271589 () Bool)

(assert (=> d!824637 m!3271589))

(declare-fun m!3271591 () Bool)

(assert (=> b!2843665 m!3271591))

(assert (=> b!2843665 m!3271307))

(assert (=> b!2843665 m!3271583))

(assert (=> b!2843665 m!3271583))

(assert (=> b!2843665 m!3271585))

(declare-fun m!3271593 () Bool)

(assert (=> b!2843668 m!3271593))

(assert (=> d!824555 d!824637))

(declare-fun d!824639 () Bool)

(declare-fun list!12562 (Conc!10453) List!33823)

(assert (=> d!824639 (= (list!12556 (_1!19897 (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t1!27))))) (list!12562 (c!458936 (_1!19897 (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t1!27)))))))))

(declare-fun bs!519103 () Bool)

(assert (= bs!519103 d!824639))

(declare-fun m!3271595 () Bool)

(assert (=> bs!519103 m!3271595))

(assert (=> d!824555 d!824639))

(declare-fun d!824641 () Bool)

(declare-fun lt!1012075 () Int)

(declare-fun size!26178 (List!33823) Int)

(assert (=> d!824641 (= lt!1012075 (size!26178 (list!12556 (_1!19897 lt!1012023))))))

(declare-fun size!26179 (Conc!10453) Int)

(assert (=> d!824641 (= lt!1012075 (size!26179 (c!458936 (_1!19897 lt!1012023))))))

(assert (=> d!824641 (= (size!26168 (_1!19897 lt!1012023)) lt!1012075)))

(declare-fun bs!519105 () Bool)

(assert (= bs!519105 d!824641))

(declare-fun m!3271599 () Bool)

(assert (=> bs!519105 m!3271599))

(assert (=> bs!519105 m!3271599))

(declare-fun m!3271601 () Bool)

(assert (=> bs!519105 m!3271601))

(declare-fun m!3271603 () Bool)

(assert (=> bs!519105 m!3271603))

(assert (=> d!824555 d!824641))

(declare-fun d!824645 () Bool)

(declare-fun lt!1012078 () BalanceConc!20542)

(declare-fun printList!1238 (LexerInterface!4658 List!33823) List!33820)

(assert (=> d!824645 (= (list!12557 lt!1012078) (printList!1238 thiss!11361 (list!12556 (singletonSeq!2184 t1!27))))))

(declare-fun printTailRec!1181 (LexerInterface!4658 BalanceConc!20544 Int BalanceConc!20542) BalanceConc!20542)

(assert (=> d!824645 (= lt!1012078 (printTailRec!1181 thiss!11361 (singletonSeq!2184 t1!27) 0 (BalanceConc!20543 Empty!10452)))))

(assert (=> d!824645 (= (print!1748 thiss!11361 (singletonSeq!2184 t1!27)) lt!1012078)))

(declare-fun bs!519106 () Bool)

(assert (= bs!519106 d!824645))

(declare-fun m!3271605 () Bool)

(assert (=> bs!519106 m!3271605))

(assert (=> bs!519106 m!3271313))

(assert (=> bs!519106 m!3271315))

(assert (=> bs!519106 m!3271315))

(declare-fun m!3271607 () Bool)

(assert (=> bs!519106 m!3271607))

(assert (=> bs!519106 m!3271313))

(declare-fun m!3271609 () Bool)

(assert (=> bs!519106 m!3271609))

(assert (=> d!824555 d!824645))

(declare-fun d!824651 () Bool)

(assert (=> d!824651 (= (list!12556 (singletonSeq!2184 t1!27)) (list!12562 (c!458936 (singletonSeq!2184 t1!27))))))

(declare-fun bs!519107 () Bool)

(assert (= bs!519107 d!824651))

(declare-fun m!3271611 () Bool)

(assert (=> bs!519107 m!3271611))

(assert (=> d!824555 d!824651))

(declare-fun d!824653 () Bool)

(declare-fun e!1801604 () Bool)

(assert (=> d!824653 e!1801604))

(declare-fun res!1182981 () Bool)

(assert (=> d!824653 (=> (not res!1182981) (not e!1801604))))

(declare-fun lt!1012081 () BalanceConc!20544)

(assert (=> d!824653 (= res!1182981 (= (list!12556 lt!1012081) (Cons!33699 t1!27 Nil!33699)))))

(declare-fun singleton!962 (Token!9538) BalanceConc!20544)

(assert (=> d!824653 (= lt!1012081 (singleton!962 t1!27))))

(assert (=> d!824653 (= (singletonSeq!2184 t1!27) lt!1012081)))

(declare-fun b!2843675 () Bool)

(declare-fun isBalanced!3152 (Conc!10453) Bool)

(assert (=> b!2843675 (= e!1801604 (isBalanced!3152 (c!458936 lt!1012081)))))

(assert (= (and d!824653 res!1182981) b!2843675))

(declare-fun m!3271613 () Bool)

(assert (=> d!824653 m!3271613))

(declare-fun m!3271615 () Bool)

(assert (=> d!824653 m!3271615))

(declare-fun m!3271617 () Bool)

(assert (=> b!2843675 m!3271617))

(assert (=> d!824555 d!824653))

(declare-fun d!824655 () Bool)

(declare-fun lt!1012084 () Int)

(assert (=> d!824655 (>= lt!1012084 0)))

(declare-fun e!1801607 () Int)

(assert (=> d!824655 (= lt!1012084 e!1801607)))

(declare-fun c!458948 () Bool)

(assert (=> d!824655 (= c!458948 ((_ is Nil!33696) (originalCharacters!5800 t2!27)))))

(assert (=> d!824655 (= (size!26173 (originalCharacters!5800 t2!27)) lt!1012084)))

(declare-fun b!2843680 () Bool)

(assert (=> b!2843680 (= e!1801607 0)))

(declare-fun b!2843681 () Bool)

(assert (=> b!2843681 (= e!1801607 (+ 1 (size!26173 (t!232759 (originalCharacters!5800 t2!27)))))))

(assert (= (and d!824655 c!458948) b!2843680))

(assert (= (and d!824655 (not c!458948)) b!2843681))

(declare-fun m!3271619 () Bool)

(assert (=> b!2843681 m!3271619))

(assert (=> b!2843524 d!824655))

(declare-fun d!824657 () Bool)

(declare-fun lt!1012093 () Int)

(assert (=> d!824657 (= lt!1012093 (size!26173 (list!12557 lt!1011996)))))

(assert (=> d!824657 (= lt!1012093 (size!26177 (c!458900 lt!1011996)))))

(assert (=> d!824657 (= (size!26170 lt!1011996) lt!1012093)))

(declare-fun bs!519108 () Bool)

(assert (= bs!519108 d!824657))

(assert (=> bs!519108 m!3271335))

(assert (=> bs!519108 m!3271335))

(declare-fun m!3271621 () Bool)

(assert (=> bs!519108 m!3271621))

(assert (=> bs!519108 m!3271575))

(assert (=> b!2843415 d!824657))

(declare-fun bs!519109 () Bool)

(declare-fun d!824659 () Bool)

(assert (= bs!519109 (and d!824659 d!824569)))

(declare-fun lambda!104346 () Int)

(assert (=> bs!519109 (= lambda!104346 lambda!104335)))

(declare-fun lambda!104347 () Int)

(declare-fun forall!6921 (List!33827 Int) Bool)

(assert (=> d!824659 (forall!6921 (map!7234 rules!1139 lambda!104346) lambda!104347)))

(declare-fun lt!1012100 () Unit!47509)

(declare-fun e!1801628 () Unit!47509)

(assert (=> d!824659 (= lt!1012100 e!1801628)))

(declare-fun c!458967 () Bool)

(assert (=> d!824659 (= c!458967 ((_ is Nil!33698) rules!1139))))

(declare-fun rulesValidInductive!1735 (LexerInterface!4658 List!33822) Bool)

(assert (=> d!824659 (rulesValidInductive!1735 thiss!11361 rules!1139)))

(assert (=> d!824659 (= (lemma!566 rules!1139 thiss!11361 rules!1139) lt!1012100)))

(declare-fun b!2843720 () Bool)

(declare-fun Unit!47511 () Unit!47509)

(assert (=> b!2843720 (= e!1801628 Unit!47511)))

(declare-fun b!2843721 () Bool)

(declare-fun Unit!47512 () Unit!47509)

(assert (=> b!2843721 (= e!1801628 Unit!47512)))

(declare-fun lt!1012101 () Unit!47509)

(assert (=> b!2843721 (= lt!1012101 (lemma!566 rules!1139 thiss!11361 (t!232761 rules!1139)))))

(assert (= (and d!824659 c!458967) b!2843720))

(assert (= (and d!824659 (not c!458967)) b!2843721))

(declare-fun m!3271623 () Bool)

(assert (=> d!824659 m!3271623))

(assert (=> d!824659 m!3271623))

(declare-fun m!3271625 () Bool)

(assert (=> d!824659 m!3271625))

(declare-fun m!3271627 () Bool)

(assert (=> d!824659 m!3271627))

(declare-fun m!3271629 () Bool)

(assert (=> b!2843721 m!3271629))

(assert (=> d!824569 d!824659))

(declare-fun bs!519110 () Bool)

(declare-fun d!824661 () Bool)

(assert (= bs!519110 (and d!824661 d!824659)))

(declare-fun lambda!104350 () Int)

(assert (=> bs!519110 (= lambda!104350 lambda!104347)))

(declare-fun b!2843750 () Bool)

(declare-fun e!1801648 () Regex!8459)

(assert (=> b!2843750 (= e!1801648 (h!39123 (map!7234 rules!1139 lambda!104335)))))

(declare-fun b!2843751 () Bool)

(declare-fun e!1801645 () Regex!8459)

(assert (=> b!2843751 (= e!1801645 (Union!8459 (h!39123 (map!7234 rules!1139 lambda!104335)) (generalisedUnion!542 (t!232802 (map!7234 rules!1139 lambda!104335)))))))

(declare-fun b!2843752 () Bool)

(assert (=> b!2843752 (= e!1801645 EmptyLang!8459)))

(declare-fun b!2843753 () Bool)

(declare-fun e!1801643 () Bool)

(declare-fun isEmpty!18560 (List!33827) Bool)

(assert (=> b!2843753 (= e!1801643 (isEmpty!18560 (t!232802 (map!7234 rules!1139 lambda!104335))))))

(declare-fun b!2843754 () Bool)

(declare-fun e!1801644 () Bool)

(declare-fun e!1801646 () Bool)

(assert (=> b!2843754 (= e!1801644 e!1801646)))

(declare-fun c!458977 () Bool)

(assert (=> b!2843754 (= c!458977 (isEmpty!18560 (map!7234 rules!1139 lambda!104335)))))

(assert (=> d!824661 e!1801644))

(declare-fun res!1182996 () Bool)

(assert (=> d!824661 (=> (not res!1182996) (not e!1801644))))

(declare-fun lt!1012104 () Regex!8459)

(assert (=> d!824661 (= res!1182996 (validRegex!3355 lt!1012104))))

(assert (=> d!824661 (= lt!1012104 e!1801648)))

(declare-fun c!458976 () Bool)

(assert (=> d!824661 (= c!458976 e!1801643)))

(declare-fun res!1182997 () Bool)

(assert (=> d!824661 (=> (not res!1182997) (not e!1801643))))

(assert (=> d!824661 (= res!1182997 ((_ is Cons!33703) (map!7234 rules!1139 lambda!104335)))))

(assert (=> d!824661 (forall!6921 (map!7234 rules!1139 lambda!104335) lambda!104350)))

(assert (=> d!824661 (= (generalisedUnion!542 (map!7234 rules!1139 lambda!104335)) lt!1012104)))

(declare-fun b!2843755 () Bool)

(declare-fun e!1801647 () Bool)

(assert (=> b!2843755 (= e!1801646 e!1801647)))

(declare-fun c!458979 () Bool)

(declare-fun tail!4474 (List!33827) List!33827)

(assert (=> b!2843755 (= c!458979 (isEmpty!18560 (tail!4474 (map!7234 rules!1139 lambda!104335))))))

(declare-fun b!2843756 () Bool)

(declare-fun isUnion!150 (Regex!8459) Bool)

(assert (=> b!2843756 (= e!1801647 (isUnion!150 lt!1012104))))

(declare-fun b!2843757 () Bool)

(declare-fun head!6249 (List!33827) Regex!8459)

(assert (=> b!2843757 (= e!1801647 (= lt!1012104 (head!6249 (map!7234 rules!1139 lambda!104335))))))

(declare-fun b!2843758 () Bool)

(assert (=> b!2843758 (= e!1801648 e!1801645)))

(declare-fun c!458978 () Bool)

(assert (=> b!2843758 (= c!458978 ((_ is Cons!33703) (map!7234 rules!1139 lambda!104335)))))

(declare-fun b!2843759 () Bool)

(declare-fun isEmptyLang!150 (Regex!8459) Bool)

(assert (=> b!2843759 (= e!1801646 (isEmptyLang!150 lt!1012104))))

(assert (= (and d!824661 res!1182997) b!2843753))

(assert (= (and d!824661 c!458976) b!2843750))

(assert (= (and d!824661 (not c!458976)) b!2843758))

(assert (= (and b!2843758 c!458978) b!2843751))

(assert (= (and b!2843758 (not c!458978)) b!2843752))

(assert (= (and d!824661 res!1182996) b!2843754))

(assert (= (and b!2843754 c!458977) b!2843759))

(assert (= (and b!2843754 (not c!458977)) b!2843755))

(assert (= (and b!2843755 c!458979) b!2843757))

(assert (= (and b!2843755 (not c!458979)) b!2843756))

(declare-fun m!3271631 () Bool)

(assert (=> b!2843759 m!3271631))

(assert (=> b!2843754 m!3271365))

(declare-fun m!3271633 () Bool)

(assert (=> b!2843754 m!3271633))

(declare-fun m!3271635 () Bool)

(assert (=> b!2843751 m!3271635))

(assert (=> b!2843757 m!3271365))

(declare-fun m!3271637 () Bool)

(assert (=> b!2843757 m!3271637))

(assert (=> b!2843755 m!3271365))

(declare-fun m!3271639 () Bool)

(assert (=> b!2843755 m!3271639))

(assert (=> b!2843755 m!3271639))

(declare-fun m!3271641 () Bool)

(assert (=> b!2843755 m!3271641))

(declare-fun m!3271643 () Bool)

(assert (=> b!2843753 m!3271643))

(declare-fun m!3271645 () Bool)

(assert (=> b!2843756 m!3271645))

(declare-fun m!3271647 () Bool)

(assert (=> d!824661 m!3271647))

(assert (=> d!824661 m!3271365))

(declare-fun m!3271649 () Bool)

(assert (=> d!824661 m!3271649))

(assert (=> d!824569 d!824661))

(declare-fun d!824663 () Bool)

(declare-fun lt!1012111 () List!33827)

(declare-fun size!26180 (List!33827) Int)

(declare-fun size!26181 (List!33822) Int)

(assert (=> d!824663 (= (size!26180 lt!1012111) (size!26181 rules!1139))))

(declare-fun e!1801661 () List!33827)

(assert (=> d!824663 (= lt!1012111 e!1801661)))

(declare-fun c!458990 () Bool)

(assert (=> d!824663 (= c!458990 ((_ is Nil!33698) rules!1139))))

(assert (=> d!824663 (= (map!7234 rules!1139 lambda!104335) lt!1012111)))

(declare-fun b!2843785 () Bool)

(assert (=> b!2843785 (= e!1801661 Nil!33703)))

(declare-fun b!2843786 () Bool)

(declare-fun $colon$colon!581 (List!33827 Regex!8459) List!33827)

(declare-fun dynLambda!14191 (Int Rule!9936) Regex!8459)

(assert (=> b!2843786 (= e!1801661 ($colon$colon!581 (map!7234 (t!232761 rules!1139) lambda!104335) (dynLambda!14191 lambda!104335 (h!39118 rules!1139))))))

(assert (= (and d!824663 c!458990) b!2843785))

(assert (= (and d!824663 (not c!458990)) b!2843786))

(declare-fun b_lambda!85527 () Bool)

(assert (=> (not b_lambda!85527) (not b!2843786)))

(declare-fun m!3271651 () Bool)

(assert (=> d!824663 m!3271651))

(declare-fun m!3271653 () Bool)

(assert (=> d!824663 m!3271653))

(declare-fun m!3271655 () Bool)

(assert (=> b!2843786 m!3271655))

(declare-fun m!3271657 () Bool)

(assert (=> b!2843786 m!3271657))

(assert (=> b!2843786 m!3271655))

(assert (=> b!2843786 m!3271657))

(declare-fun m!3271659 () Bool)

(assert (=> b!2843786 m!3271659))

(assert (=> d!824569 d!824663))

(declare-fun d!824665 () Bool)

(declare-fun charsToBigInt!1 (List!33821) Int)

(assert (=> d!824665 (= (inv!17 (value!162840 t2!27)) (= (charsToBigInt!1 (text!37534 (value!162840 t2!27))) (value!162832 (value!162840 t2!27))))))

(declare-fun bs!519111 () Bool)

(assert (= bs!519111 d!824665))

(declare-fun m!3271677 () Bool)

(assert (=> bs!519111 m!3271677))

(assert (=> b!2843410 d!824665))

(declare-fun d!824667 () Bool)

(assert (=> d!824667 (= (height!1514 (c!458900 (charsOf!3118 t1!27))) (ite ((_ is Empty!10452) (c!458900 (charsOf!3118 t1!27))) 0 (ite ((_ is Leaf!15905) (c!458900 (charsOf!3118 t1!27))) 1 (cheight!10663 (c!458900 (charsOf!3118 t1!27))))))))

(assert (=> b!2843477 d!824667))

(declare-fun bm!183406 () Bool)

(declare-fun call!183419 () Conc!10452)

(declare-fun call!183426 () Conc!10452)

(assert (=> bm!183406 (= call!183419 call!183426)))

(declare-fun b!2843859 () Bool)

(declare-fun e!1801705 () Conc!10452)

(declare-fun e!1801706 () Conc!10452)

(assert (=> b!2843859 (= e!1801705 e!1801706)))

(declare-fun c!459015 () Bool)

(declare-fun lt!1012138 () Int)

(assert (=> b!2843859 (= c!459015 (< lt!1012138 (- 1)))))

(declare-fun call!183424 () Conc!10452)

(declare-fun c!459014 () Bool)

(declare-fun c!459011 () Bool)

(declare-fun call!183413 () Conc!10452)

(declare-fun call!183425 () Conc!10452)

(declare-fun call!183423 () Conc!10452)

(declare-fun lt!1012135 () Conc!10452)

(declare-fun lt!1012137 () Conc!10452)

(declare-fun bm!183407 () Bool)

(declare-fun c!459010 () Bool)

(declare-fun call!183417 () Conc!10452)

(declare-fun c!459013 () Bool)

(declare-fun <>!276 (Conc!10452 Conc!10452) Conc!10452)

(assert (=> bm!183407 (= call!183424 (<>!276 (ite c!459015 (ite (or c!459011 c!459013) (left!25392 (c!458900 (charsOf!3118 t1!27))) call!183425) (ite c!459010 call!183423 (ite c!459014 call!183417 lt!1012137))) (ite c!459015 (ite c!459011 call!183413 (ite c!459013 call!183425 lt!1012135)) (ite (or c!459010 c!459014) (right!25722 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))) call!183417))))))

(declare-fun b!2843860 () Bool)

(declare-fun c!459012 () Bool)

(assert (=> b!2843860 (= c!459012 (and (<= (- 1) lt!1012138) (<= lt!1012138 1)))))

(assert (=> b!2843860 (= lt!1012138 (- (height!1514 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))) (height!1514 (c!458900 (charsOf!3118 t1!27)))))))

(declare-fun e!1801708 () Conc!10452)

(assert (=> b!2843860 (= e!1801708 e!1801705)))

(declare-fun b!2843862 () Bool)

(declare-fun e!1801704 () Conc!10452)

(declare-fun call!183412 () Conc!10452)

(assert (=> b!2843862 (= e!1801704 call!183412)))

(declare-fun b!2843863 () Bool)

(declare-fun e!1801707 () Conc!10452)

(assert (=> b!2843863 (= e!1801707 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))))

(declare-fun call!183416 () Int)

(declare-fun bm!183408 () Bool)

(assert (=> bm!183408 (= call!183416 (height!1514 (ite c!459015 (left!25392 (c!458900 (charsOf!3118 t1!27))) (left!25392 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))

(declare-fun bm!183409 () Bool)

(declare-fun call!183421 () Conc!10452)

(assert (=> bm!183409 (= call!183421 call!183412)))

(declare-fun bm!183410 () Bool)

(assert (=> bm!183410 (= call!183426 call!183424)))

(declare-fun b!2843864 () Bool)

(declare-fun e!1801710 () Conc!10452)

(assert (=> b!2843864 (= e!1801710 call!183426)))

(declare-fun bm!183411 () Bool)

(declare-fun call!183420 () Conc!10452)

(assert (=> bm!183411 (= call!183417 call!183420)))

(declare-fun call!183418 () Conc!10452)

(declare-fun bm!183412 () Bool)

(assert (=> bm!183412 (= call!183418 (++!8119 (ite c!459015 (ite c!459011 (right!25722 (c!458900 (charsOf!3118 t1!27))) (right!25722 (right!25722 (c!458900 (charsOf!3118 t1!27))))) (c!458900 (charsOf!3118 t1!27))) (ite c!459015 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))) (ite c!459010 (left!25392 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))) (left!25392 (left!25392 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))))

(declare-fun bm!183413 () Bool)

(declare-fun call!183411 () Conc!10452)

(assert (=> bm!183413 (= call!183411 (<>!276 (ite c!459012 (c!458900 (charsOf!3118 t1!27)) (ite c!459015 (ite c!459013 (left!25392 (right!25722 (c!458900 (charsOf!3118 t1!27)))) (left!25392 (c!458900 (charsOf!3118 t1!27)))) (ite c!459014 lt!1012137 (right!25722 (left!25392 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))) (ite c!459012 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))) (ite c!459015 (ite c!459013 lt!1012135 (left!25392 (right!25722 (c!458900 (charsOf!3118 t1!27))))) (ite c!459014 (right!25722 (left!25392 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))) (right!25722 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))))

(declare-fun bm!183414 () Bool)

(declare-fun call!183415 () Int)

(assert (=> bm!183414 (= call!183415 (height!1514 (ite c!459015 lt!1012135 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))))))

(declare-fun bm!183415 () Bool)

(assert (=> bm!183415 (= call!183420 call!183411)))

(declare-fun b!2843865 () Bool)

(declare-fun call!183414 () Int)

(assert (=> b!2843865 (= c!459010 (>= call!183414 call!183416))))

(assert (=> b!2843865 (= e!1801706 e!1801704)))

(declare-fun bm!183416 () Bool)

(assert (=> bm!183416 (= call!183423 call!183418)))

(declare-fun b!2843866 () Bool)

(assert (=> b!2843866 (= e!1801707 e!1801708)))

(declare-fun c!459009 () Bool)

(assert (=> b!2843866 (= c!459009 (= (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))) Empty!10452))))

(declare-fun b!2843867 () Bool)

(assert (=> b!2843867 (= e!1801705 call!183411)))

(declare-fun b!2843868 () Bool)

(assert (=> b!2843868 (= c!459011 (>= call!183416 call!183414))))

(assert (=> b!2843868 (= e!1801706 e!1801710)))

(declare-fun bm!183417 () Bool)

(assert (=> bm!183417 (= call!183414 (height!1514 (ite c!459015 (right!25722 (c!458900 (charsOf!3118 t1!27))) (right!25722 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))

(declare-fun bm!183418 () Bool)

(assert (=> bm!183418 (= call!183413 call!183418)))

(declare-fun b!2843869 () Bool)

(declare-fun e!1801711 () Conc!10452)

(assert (=> b!2843869 (= e!1801711 call!183421)))

(declare-fun bm!183419 () Bool)

(assert (=> bm!183419 (= call!183425 call!183420)))

(declare-fun d!824671 () Bool)

(declare-fun e!1801709 () Bool)

(assert (=> d!824671 e!1801709))

(declare-fun res!1183038 () Bool)

(assert (=> d!824671 (=> (not res!1183038) (not e!1801709))))

(assert (=> d!824671 (= res!1183038 (appendAssocInst!718 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))

(declare-fun lt!1012136 () Conc!10452)

(assert (=> d!824671 (= lt!1012136 e!1801707)))

(declare-fun c!459008 () Bool)

(assert (=> d!824671 (= c!459008 (= (c!458900 (charsOf!3118 t1!27)) Empty!10452))))

(declare-fun e!1801703 () Bool)

(assert (=> d!824671 e!1801703))

(declare-fun res!1183041 () Bool)

(assert (=> d!824671 (=> (not res!1183041) (not e!1801703))))

(assert (=> d!824671 (= res!1183041 (isBalanced!3150 (c!458900 (charsOf!3118 t1!27))))))

(assert (=> d!824671 (= (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))) lt!1012136)))

(declare-fun b!2843861 () Bool)

(assert (=> b!2843861 (= e!1801709 (= (list!12560 lt!1012136) (++!8120 (list!12560 (c!458900 (charsOf!3118 t1!27))) (list!12560 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))

(declare-fun b!2843870 () Bool)

(declare-fun e!1801702 () Conc!10452)

(assert (=> b!2843870 (= e!1801702 call!183419)))

(declare-fun b!2843871 () Bool)

(assert (=> b!2843871 (= e!1801703 (isBalanced!3150 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))

(declare-fun bm!183420 () Bool)

(assert (=> bm!183420 (= call!183412 call!183424)))

(declare-fun b!2843872 () Bool)

(assert (=> b!2843872 (= e!1801702 call!183419)))

(declare-fun b!2843873 () Bool)

(declare-fun res!1183039 () Bool)

(assert (=> b!2843873 (=> (not res!1183039) (not e!1801709))))

(assert (=> b!2843873 (= res!1183039 (<= (height!1514 lt!1012136) (+ (max!0 (height!1514 (c!458900 (charsOf!3118 t1!27))) (height!1514 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))) 1)))))

(declare-fun call!183422 () Int)

(declare-fun bm!183421 () Bool)

(assert (=> bm!183421 (= call!183422 (height!1514 (ite c!459015 (c!458900 (charsOf!3118 t1!27)) lt!1012137)))))

(declare-fun b!2843874 () Bool)

(assert (=> b!2843874 (= e!1801711 call!183421)))

(declare-fun b!2843875 () Bool)

(assert (=> b!2843875 (= e!1801704 e!1801711)))

(assert (=> b!2843875 (= lt!1012137 call!183423)))

(assert (=> b!2843875 (= c!459014 (= call!183422 (- call!183415 3)))))

(declare-fun b!2843876 () Bool)

(declare-fun res!1183040 () Bool)

(assert (=> b!2843876 (=> (not res!1183040) (not e!1801709))))

(assert (=> b!2843876 (= res!1183040 (isBalanced!3150 lt!1012136))))

(declare-fun b!2843877 () Bool)

(assert (=> b!2843877 (= e!1801708 (c!458900 (charsOf!3118 t1!27)))))

(declare-fun b!2843878 () Bool)

(assert (=> b!2843878 (= e!1801710 e!1801702)))

(assert (=> b!2843878 (= lt!1012135 call!183413)))

(assert (=> b!2843878 (= c!459013 (= call!183415 (- call!183422 3)))))

(declare-fun b!2843879 () Bool)

(declare-fun res!1183037 () Bool)

(assert (=> b!2843879 (=> (not res!1183037) (not e!1801709))))

(assert (=> b!2843879 (= res!1183037 (>= (height!1514 lt!1012136) (max!0 (height!1514 (c!458900 (charsOf!3118 t1!27))) (height!1514 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))

(assert (= (and d!824671 res!1183041) b!2843871))

(assert (= (and d!824671 c!459008) b!2843863))

(assert (= (and d!824671 (not c!459008)) b!2843866))

(assert (= (and b!2843866 c!459009) b!2843877))

(assert (= (and b!2843866 (not c!459009)) b!2843860))

(assert (= (and b!2843860 c!459012) b!2843867))

(assert (= (and b!2843860 (not c!459012)) b!2843859))

(assert (= (and b!2843859 c!459015) b!2843868))

(assert (= (and b!2843859 (not c!459015)) b!2843865))

(assert (= (and b!2843868 c!459011) b!2843864))

(assert (= (and b!2843868 (not c!459011)) b!2843878))

(assert (= (and b!2843878 c!459013) b!2843872))

(assert (= (and b!2843878 (not c!459013)) b!2843870))

(assert (= (or b!2843872 b!2843870) bm!183419))

(assert (= (or b!2843872 b!2843870) bm!183406))

(assert (= (or b!2843864 b!2843878) bm!183418))

(assert (= (or b!2843864 bm!183406) bm!183410))

(assert (= (and b!2843865 c!459010) b!2843862))

(assert (= (and b!2843865 (not c!459010)) b!2843875))

(assert (= (and b!2843875 c!459014) b!2843874))

(assert (= (and b!2843875 (not c!459014)) b!2843869))

(assert (= (or b!2843874 b!2843869) bm!183411))

(assert (= (or b!2843874 b!2843869) bm!183409))

(assert (= (or b!2843862 b!2843875) bm!183416))

(assert (= (or b!2843862 bm!183409) bm!183420))

(assert (= (or b!2843878 b!2843875) bm!183421))

(assert (= (or bm!183418 bm!183416) bm!183412))

(assert (= (or bm!183410 bm!183420) bm!183407))

(assert (= (or bm!183419 bm!183411) bm!183415))

(assert (= (or b!2843868 b!2843865) bm!183408))

(assert (= (or b!2843868 b!2843865) bm!183417))

(assert (= (or b!2843878 b!2843875) bm!183414))

(assert (= (or b!2843867 bm!183415) bm!183413))

(assert (= (and d!824671 res!1183038) b!2843876))

(assert (= (and b!2843876 res!1183040) b!2843873))

(assert (= (and b!2843873 res!1183039) b!2843879))

(assert (= (and b!2843879 res!1183037) b!2843861))

(declare-fun m!3271799 () Bool)

(assert (=> bm!183421 m!3271799))

(declare-fun m!3271801 () Bool)

(assert (=> b!2843876 m!3271801))

(declare-fun m!3271803 () Bool)

(assert (=> bm!183407 m!3271803))

(declare-fun m!3271805 () Bool)

(assert (=> b!2843871 m!3271805))

(declare-fun m!3271807 () Bool)

(assert (=> b!2843873 m!3271807))

(assert (=> b!2843873 m!3271413))

(assert (=> b!2843873 m!3271411))

(assert (=> b!2843873 m!3271413))

(assert (=> b!2843873 m!3271411))

(assert (=> b!2843873 m!3271415))

(declare-fun m!3271809 () Bool)

(assert (=> bm!183412 m!3271809))

(assert (=> d!824671 m!3271399))

(declare-fun m!3271811 () Bool)

(assert (=> d!824671 m!3271811))

(declare-fun m!3271813 () Bool)

(assert (=> bm!183413 m!3271813))

(assert (=> b!2843860 m!3271411))

(assert (=> b!2843860 m!3271413))

(declare-fun m!3271815 () Bool)

(assert (=> b!2843861 m!3271815))

(declare-fun m!3271817 () Bool)

(assert (=> b!2843861 m!3271817))

(declare-fun m!3271819 () Bool)

(assert (=> b!2843861 m!3271819))

(assert (=> b!2843861 m!3271817))

(assert (=> b!2843861 m!3271819))

(declare-fun m!3271821 () Bool)

(assert (=> b!2843861 m!3271821))

(declare-fun m!3271823 () Bool)

(assert (=> bm!183414 m!3271823))

(assert (=> b!2843879 m!3271807))

(assert (=> b!2843879 m!3271413))

(assert (=> b!2843879 m!3271411))

(assert (=> b!2843879 m!3271413))

(assert (=> b!2843879 m!3271411))

(assert (=> b!2843879 m!3271415))

(declare-fun m!3271825 () Bool)

(assert (=> bm!183408 m!3271825))

(declare-fun m!3271827 () Bool)

(assert (=> bm!183417 m!3271827))

(assert (=> b!2843477 d!824671))

(declare-fun d!824729 () Bool)

(assert (=> d!824729 (= (max!0 (height!1514 (c!458900 (charsOf!3118 t1!27))) (height!1514 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))) (ite (< (height!1514 (c!458900 (charsOf!3118 t1!27))) (height!1514 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))) (height!1514 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))) (height!1514 (c!458900 (charsOf!3118 t1!27)))))))

(assert (=> b!2843477 d!824729))

(declare-fun d!824731 () Bool)

(assert (=> d!824731 (= (height!1514 (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))) (ite ((_ is Empty!10452) (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))) 0 (ite ((_ is Leaf!15905) (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))) 1 (cheight!10663 (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))))))))

(assert (=> b!2843477 d!824731))

(declare-fun d!824733 () Bool)

(assert (=> d!824733 (= (height!1514 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))) (ite ((_ is Empty!10452) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))) 0 (ite ((_ is Leaf!15905) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))) 1 (cheight!10663 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))

(assert (=> b!2843477 d!824733))

(declare-fun d!824735 () Bool)

(assert (=> d!824735 (= (isEmpty!18556 (originalCharacters!5800 t2!27)) ((_ is Nil!33696) (originalCharacters!5800 t2!27)))))

(assert (=> d!824593 d!824735))

(declare-fun d!824737 () Bool)

(assert (=> d!824737 (= (list!12557 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27))) (list!12560 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27)))))))

(declare-fun bs!519133 () Bool)

(assert (= bs!519133 d!824737))

(declare-fun m!3271829 () Bool)

(assert (=> bs!519133 m!3271829))

(assert (=> b!2843519 d!824737))

(declare-fun d!824739 () Bool)

(declare-fun lt!1012139 () Bool)

(assert (=> d!824739 (= lt!1012139 (isEmpty!18556 (list!12557 (_2!19897 lt!1012021))))))

(assert (=> d!824739 (= lt!1012139 (isEmpty!18557 (c!458900 (_2!19897 lt!1012021))))))

(assert (=> d!824739 (= (isEmpty!18552 (_2!19897 lt!1012021)) lt!1012139)))

(declare-fun bs!519134 () Bool)

(assert (= bs!519134 d!824739))

(declare-fun m!3271831 () Bool)

(assert (=> bs!519134 m!3271831))

(assert (=> bs!519134 m!3271831))

(declare-fun m!3271833 () Bool)

(assert (=> bs!519134 m!3271833))

(declare-fun m!3271835 () Bool)

(assert (=> bs!519134 m!3271835))

(assert (=> b!2843382 d!824739))

(declare-fun d!824741 () Bool)

(declare-fun charsToBigInt!0 (List!33821 Int) Int)

(assert (=> d!824741 (= (inv!15 (value!162840 t2!27)) (= (charsToBigInt!0 (text!37535 (value!162840 t2!27)) 0) (value!162835 (value!162840 t2!27))))))

(declare-fun bs!519135 () Bool)

(assert (= bs!519135 d!824741))

(declare-fun m!3271837 () Bool)

(assert (=> bs!519135 m!3271837))

(assert (=> b!2843408 d!824741))

(declare-fun bs!519136 () Bool)

(declare-fun d!824743 () Bool)

(assert (= bs!519136 (and d!824743 d!824607)))

(declare-fun lambda!104359 () Int)

(assert (=> bs!519136 (= (= (toValue!7118 (transformation!5068 (rule!7496 t1!27))) (toValue!7118 (transformation!5068 (h!39118 rules!1139)))) (= lambda!104359 lambda!104338))))

(assert (=> d!824743 true))

(assert (=> d!824743 (< (dynLambda!14186 order!18033 (toValue!7118 (transformation!5068 (rule!7496 t1!27)))) (dynLambda!14187 order!18035 lambda!104359))))

(assert (=> d!824743 (= (equivClasses!2014 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (toValue!7118 (transformation!5068 (rule!7496 t1!27)))) (Forall2!846 lambda!104359))))

(declare-fun bs!519137 () Bool)

(assert (= bs!519137 d!824743))

(declare-fun m!3271839 () Bool)

(assert (=> bs!519137 m!3271839))

(assert (=> b!2843543 d!824743))

(declare-fun d!824745 () Bool)

(declare-fun charsToInt!0 (List!33821) (_ BitVec 32))

(assert (=> d!824745 (= (inv!16 (value!162840 t1!27)) (= (charsToInt!0 (text!37533 (value!162840 t1!27))) (value!162831 (value!162840 t1!27))))))

(declare-fun bs!519138 () Bool)

(assert (= bs!519138 d!824745))

(declare-fun m!3271841 () Bool)

(assert (=> bs!519138 m!3271841))

(assert (=> b!2843398 d!824745))

(declare-fun lt!1012140 () Bool)

(declare-fun d!824747 () Bool)

(assert (=> d!824747 (= lt!1012140 (isEmpty!18556 (list!12557 (_2!19897 (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t1!27)))))))))

(assert (=> d!824747 (= lt!1012140 (isEmpty!18557 (c!458900 (_2!19897 (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t1!27)))))))))

(assert (=> d!824747 (= (isEmpty!18552 (_2!19897 (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t1!27))))) lt!1012140)))

(declare-fun bs!519139 () Bool)

(assert (= bs!519139 d!824747))

(declare-fun m!3271843 () Bool)

(assert (=> bs!519139 m!3271843))

(assert (=> bs!519139 m!3271843))

(declare-fun m!3271845 () Bool)

(assert (=> bs!519139 m!3271845))

(declare-fun m!3271847 () Bool)

(assert (=> bs!519139 m!3271847))

(assert (=> b!2843404 d!824747))

(assert (=> b!2843404 d!824637))

(assert (=> b!2843404 d!824645))

(assert (=> b!2843404 d!824653))

(declare-fun d!824749 () Bool)

(assert (=> d!824749 (= (list!12557 lt!1012030) (list!12560 (c!458900 lt!1012030)))))

(declare-fun bs!519140 () Bool)

(assert (= bs!519140 d!824749))

(declare-fun m!3271849 () Bool)

(assert (=> bs!519140 m!3271849))

(assert (=> d!824563 d!824749))

(declare-fun d!824751 () Bool)

(declare-fun e!1801741 () Bool)

(assert (=> d!824751 e!1801741))

(declare-fun res!1183071 () Bool)

(assert (=> d!824751 (=> (not res!1183071) (not e!1801741))))

(declare-fun lt!1012143 () BalanceConc!20542)

(assert (=> d!824751 (= res!1183071 (= (list!12557 lt!1012143) (Cons!33696 (apply!7841 lt!1011996 0) Nil!33696)))))

(declare-fun choose!16744 (C!17100) BalanceConc!20542)

(assert (=> d!824751 (= lt!1012143 (choose!16744 (apply!7841 lt!1011996 0)))))

(assert (=> d!824751 (= (singleton!960 (apply!7841 lt!1011996 0)) lt!1012143)))

(declare-fun b!2843909 () Bool)

(assert (=> b!2843909 (= e!1801741 (isBalanced!3150 (c!458900 lt!1012143)))))

(assert (= (and d!824751 res!1183071) b!2843909))

(declare-fun m!3271883 () Bool)

(assert (=> d!824751 m!3271883))

(assert (=> d!824751 m!3271179))

(declare-fun m!3271885 () Bool)

(assert (=> d!824751 m!3271885))

(declare-fun m!3271887 () Bool)

(assert (=> b!2843909 m!3271887))

(assert (=> d!824563 d!824751))

(declare-fun d!824757 () Bool)

(declare-fun lt!1012149 () Token!9538)

(declare-fun apply!7850 (List!33823 Int) Token!9538)

(assert (=> d!824757 (= lt!1012149 (apply!7850 (list!12556 (_1!19897 lt!1012023)) 0))))

(declare-fun apply!7851 (Conc!10453 Int) Token!9538)

(assert (=> d!824757 (= lt!1012149 (apply!7851 (c!458936 (_1!19897 lt!1012023)) 0))))

(declare-fun e!1801744 () Bool)

(assert (=> d!824757 e!1801744))

(declare-fun res!1183074 () Bool)

(assert (=> d!824757 (=> (not res!1183074) (not e!1801744))))

(assert (=> d!824757 (= res!1183074 (<= 0 0))))

(assert (=> d!824757 (= (apply!7842 (_1!19897 lt!1012023) 0) lt!1012149)))

(declare-fun b!2843912 () Bool)

(assert (=> b!2843912 (= e!1801744 (< 0 (size!26168 (_1!19897 lt!1012023))))))

(assert (= (and d!824757 res!1183074) b!2843912))

(assert (=> d!824757 m!3271599))

(assert (=> d!824757 m!3271599))

(declare-fun m!3271893 () Bool)

(assert (=> d!824757 m!3271893))

(declare-fun m!3271895 () Bool)

(assert (=> d!824757 m!3271895))

(assert (=> b!2843912 m!3271311))

(assert (=> b!2843402 d!824757))

(declare-fun d!824763 () Bool)

(assert (=> d!824763 (= (inv!45701 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27))) (isBalanced!3150 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27)))))))

(declare-fun bs!519143 () Bool)

(assert (= bs!519143 d!824763))

(declare-fun m!3271897 () Bool)

(assert (=> bs!519143 m!3271897))

(assert (=> tb!155047 d!824763))

(declare-fun b!2843917 () Bool)

(declare-fun e!1801748 () Bool)

(declare-fun e!1801747 () Bool)

(assert (=> b!2843917 (= e!1801748 e!1801747)))

(declare-fun c!459018 () Bool)

(assert (=> b!2843917 (= c!459018 ((_ is Union!8459) (ite c!458924 (reg!8788 lt!1011995) (ite c!458923 (regTwo!17431 lt!1011995) (regTwo!17430 lt!1011995)))))))

(declare-fun b!2843918 () Bool)

(declare-fun e!1801753 () Bool)

(assert (=> b!2843918 (= e!1801753 e!1801748)))

(declare-fun c!459019 () Bool)

(assert (=> b!2843918 (= c!459019 ((_ is Star!8459) (ite c!458924 (reg!8788 lt!1011995) (ite c!458923 (regTwo!17431 lt!1011995) (regTwo!17430 lt!1011995)))))))

(declare-fun b!2843919 () Bool)

(declare-fun e!1801751 () Bool)

(declare-fun call!183429 () Bool)

(assert (=> b!2843919 (= e!1801751 call!183429)))

(declare-fun call!183427 () Bool)

(declare-fun bm!183422 () Bool)

(assert (=> bm!183422 (= call!183427 (validRegex!3355 (ite c!459019 (reg!8788 (ite c!458924 (reg!8788 lt!1011995) (ite c!458923 (regTwo!17431 lt!1011995) (regTwo!17430 lt!1011995)))) (ite c!459018 (regTwo!17431 (ite c!458924 (reg!8788 lt!1011995) (ite c!458923 (regTwo!17431 lt!1011995) (regTwo!17430 lt!1011995)))) (regTwo!17430 (ite c!458924 (reg!8788 lt!1011995) (ite c!458923 (regTwo!17431 lt!1011995) (regTwo!17430 lt!1011995))))))))))

(declare-fun b!2843920 () Bool)

(declare-fun e!1801752 () Bool)

(assert (=> b!2843920 (= e!1801752 call!183429)))

(declare-fun bm!183423 () Bool)

(assert (=> bm!183423 (= call!183429 call!183427)))

(declare-fun b!2843921 () Bool)

(declare-fun e!1801750 () Bool)

(assert (=> b!2843921 (= e!1801748 e!1801750)))

(declare-fun res!1183075 () Bool)

(assert (=> b!2843921 (= res!1183075 (not (nullable!2623 (reg!8788 (ite c!458924 (reg!8788 lt!1011995) (ite c!458923 (regTwo!17431 lt!1011995) (regTwo!17430 lt!1011995)))))))))

(assert (=> b!2843921 (=> (not res!1183075) (not e!1801750))))

(declare-fun b!2843922 () Bool)

(declare-fun e!1801749 () Bool)

(assert (=> b!2843922 (= e!1801749 e!1801752)))

(declare-fun res!1183076 () Bool)

(assert (=> b!2843922 (=> (not res!1183076) (not e!1801752))))

(declare-fun call!183428 () Bool)

(assert (=> b!2843922 (= res!1183076 call!183428)))

(declare-fun d!824765 () Bool)

(declare-fun res!1183078 () Bool)

(assert (=> d!824765 (=> res!1183078 e!1801753)))

(assert (=> d!824765 (= res!1183078 ((_ is ElementMatch!8459) (ite c!458924 (reg!8788 lt!1011995) (ite c!458923 (regTwo!17431 lt!1011995) (regTwo!17430 lt!1011995)))))))

(assert (=> d!824765 (= (validRegex!3355 (ite c!458924 (reg!8788 lt!1011995) (ite c!458923 (regTwo!17431 lt!1011995) (regTwo!17430 lt!1011995)))) e!1801753)))

(declare-fun bm!183424 () Bool)

(assert (=> bm!183424 (= call!183428 (validRegex!3355 (ite c!459018 (regOne!17431 (ite c!458924 (reg!8788 lt!1011995) (ite c!458923 (regTwo!17431 lt!1011995) (regTwo!17430 lt!1011995)))) (regOne!17430 (ite c!458924 (reg!8788 lt!1011995) (ite c!458923 (regTwo!17431 lt!1011995) (regTwo!17430 lt!1011995)))))))))

(declare-fun b!2843923 () Bool)

(assert (=> b!2843923 (= e!1801750 call!183427)))

(declare-fun b!2843924 () Bool)

(declare-fun res!1183079 () Bool)

(assert (=> b!2843924 (=> res!1183079 e!1801749)))

(assert (=> b!2843924 (= res!1183079 (not ((_ is Concat!13758) (ite c!458924 (reg!8788 lt!1011995) (ite c!458923 (regTwo!17431 lt!1011995) (regTwo!17430 lt!1011995))))))))

(assert (=> b!2843924 (= e!1801747 e!1801749)))

(declare-fun b!2843925 () Bool)

(declare-fun res!1183077 () Bool)

(assert (=> b!2843925 (=> (not res!1183077) (not e!1801751))))

(assert (=> b!2843925 (= res!1183077 call!183428)))

(assert (=> b!2843925 (= e!1801747 e!1801751)))

(assert (= (and d!824765 (not res!1183078)) b!2843918))

(assert (= (and b!2843918 c!459019) b!2843921))

(assert (= (and b!2843918 (not c!459019)) b!2843917))

(assert (= (and b!2843921 res!1183075) b!2843923))

(assert (= (and b!2843917 c!459018) b!2843925))

(assert (= (and b!2843917 (not c!459018)) b!2843924))

(assert (= (and b!2843925 res!1183077) b!2843919))

(assert (= (and b!2843924 (not res!1183079)) b!2843922))

(assert (= (and b!2843922 res!1183076) b!2843920))

(assert (= (or b!2843925 b!2843922) bm!183424))

(assert (= (or b!2843919 b!2843920) bm!183423))

(assert (= (or b!2843923 bm!183423) bm!183422))

(declare-fun m!3271899 () Bool)

(assert (=> bm!183422 m!3271899))

(declare-fun m!3271901 () Bool)

(assert (=> b!2843921 m!3271901))

(declare-fun m!3271903 () Bool)

(assert (=> bm!183424 m!3271903))

(assert (=> bm!183323 d!824765))

(declare-fun d!824767 () Bool)

(assert (=> d!824767 (= (inv!45693 (tag!5572 (h!39118 (t!232761 rules!1139)))) (= (mod (str.len (value!162839 (tag!5572 (h!39118 (t!232761 rules!1139))))) 2) 0))))

(assert (=> b!2843589 d!824767))

(declare-fun d!824769 () Bool)

(declare-fun res!1183080 () Bool)

(declare-fun e!1801755 () Bool)

(assert (=> d!824769 (=> (not res!1183080) (not e!1801755))))

(assert (=> d!824769 (= res!1183080 (semiInverseModEq!2115 (toChars!6977 (transformation!5068 (h!39118 (t!232761 rules!1139)))) (toValue!7118 (transformation!5068 (h!39118 (t!232761 rules!1139))))))))

(assert (=> d!824769 (= (inv!45697 (transformation!5068 (h!39118 (t!232761 rules!1139)))) e!1801755)))

(declare-fun b!2843928 () Bool)

(assert (=> b!2843928 (= e!1801755 (equivClasses!2014 (toChars!6977 (transformation!5068 (h!39118 (t!232761 rules!1139)))) (toValue!7118 (transformation!5068 (h!39118 (t!232761 rules!1139))))))))

(assert (= (and d!824769 res!1183080) b!2843928))

(declare-fun m!3271905 () Bool)

(assert (=> d!824769 m!3271905))

(declare-fun m!3271907 () Bool)

(assert (=> b!2843928 m!3271907))

(assert (=> b!2843589 d!824769))

(declare-fun d!824771 () Bool)

(declare-fun lt!1012158 () C!17100)

(declare-fun contains!6116 (List!33820 C!17100) Bool)

(assert (=> d!824771 (contains!6116 (list!12557 lt!1011996) lt!1012158)))

(declare-fun e!1801760 () C!17100)

(assert (=> d!824771 (= lt!1012158 e!1801760)))

(declare-fun c!459023 () Bool)

(assert (=> d!824771 (= c!459023 (= 0 0))))

(declare-fun e!1801761 () Bool)

(assert (=> d!824771 e!1801761))

(declare-fun res!1183083 () Bool)

(assert (=> d!824771 (=> (not res!1183083) (not e!1801761))))

(assert (=> d!824771 (= res!1183083 (<= 0 0))))

(assert (=> d!824771 (= (apply!7845 (list!12557 lt!1011996) 0) lt!1012158)))

(declare-fun b!2843935 () Bool)

(assert (=> b!2843935 (= e!1801761 (< 0 (size!26173 (list!12557 lt!1011996))))))

(declare-fun b!2843936 () Bool)

(declare-fun head!6250 (List!33820) C!17100)

(assert (=> b!2843936 (= e!1801760 (head!6250 (list!12557 lt!1011996)))))

(declare-fun b!2843937 () Bool)

(declare-fun tail!4475 (List!33820) List!33820)

(assert (=> b!2843937 (= e!1801760 (apply!7845 (tail!4475 (list!12557 lt!1011996)) (- 0 1)))))

(assert (= (and d!824771 res!1183083) b!2843935))

(assert (= (and d!824771 c!459023) b!2843936))

(assert (= (and d!824771 (not c!459023)) b!2843937))

(assert (=> d!824771 m!3271335))

(declare-fun m!3271915 () Bool)

(assert (=> d!824771 m!3271915))

(assert (=> b!2843935 m!3271335))

(assert (=> b!2843935 m!3271621))

(assert (=> b!2843936 m!3271335))

(declare-fun m!3271917 () Bool)

(assert (=> b!2843936 m!3271917))

(assert (=> b!2843937 m!3271335))

(declare-fun m!3271919 () Bool)

(assert (=> b!2843937 m!3271919))

(assert (=> b!2843937 m!3271919))

(declare-fun m!3271921 () Bool)

(assert (=> b!2843937 m!3271921))

(assert (=> d!824561 d!824771))

(assert (=> d!824561 d!824633))

(declare-fun b!2843988 () Bool)

(declare-fun e!1801791 () C!17100)

(declare-fun call!183432 () C!17100)

(assert (=> b!2843988 (= e!1801791 call!183432)))

(declare-fun bm!183427 () Bool)

(declare-fun c!459045 () Bool)

(declare-fun c!459046 () Bool)

(assert (=> bm!183427 (= c!459045 c!459046)))

(declare-fun e!1801793 () Int)

(assert (=> bm!183427 (= call!183432 (apply!7846 (ite c!459046 (left!25392 (c!458900 lt!1011996)) (right!25722 (c!458900 lt!1011996))) e!1801793))))

(declare-fun b!2843989 () Bool)

(declare-fun e!1801794 () C!17100)

(assert (=> b!2843989 (= e!1801794 e!1801791)))

(declare-fun lt!1012170 () Bool)

(declare-fun appendIndex!296 (List!33820 List!33820 Int) Bool)

(assert (=> b!2843989 (= lt!1012170 (appendIndex!296 (list!12560 (left!25392 (c!458900 lt!1011996))) (list!12560 (right!25722 (c!458900 lt!1011996))) 0))))

(assert (=> b!2843989 (= c!459046 (< 0 (size!26177 (left!25392 (c!458900 lt!1011996)))))))

(declare-fun b!2843990 () Bool)

(assert (=> b!2843990 (= e!1801793 (- 0 (size!26177 (left!25392 (c!458900 lt!1011996)))))))

(declare-fun b!2843992 () Bool)

(assert (=> b!2843992 (= e!1801793 0)))

(declare-fun b!2843993 () Bool)

(declare-fun e!1801792 () Bool)

(assert (=> b!2843993 (= e!1801792 (< 0 (size!26177 (c!458900 lt!1011996))))))

(declare-fun b!2843994 () Bool)

(declare-fun apply!7852 (IArray!20909 Int) C!17100)

(assert (=> b!2843994 (= e!1801794 (apply!7852 (xs!13564 (c!458900 lt!1011996)) 0))))

(declare-fun d!824775 () Bool)

(declare-fun lt!1012169 () C!17100)

(assert (=> d!824775 (= lt!1012169 (apply!7845 (list!12560 (c!458900 lt!1011996)) 0))))

(assert (=> d!824775 (= lt!1012169 e!1801794)))

(declare-fun c!459047 () Bool)

(assert (=> d!824775 (= c!459047 ((_ is Leaf!15905) (c!458900 lt!1011996)))))

(assert (=> d!824775 e!1801792))

(declare-fun res!1183092 () Bool)

(assert (=> d!824775 (=> (not res!1183092) (not e!1801792))))

(assert (=> d!824775 (= res!1183092 (<= 0 0))))

(assert (=> d!824775 (= (apply!7846 (c!458900 lt!1011996) 0) lt!1012169)))

(declare-fun b!2843991 () Bool)

(assert (=> b!2843991 (= e!1801791 call!183432)))

(assert (= (and d!824775 res!1183092) b!2843993))

(assert (= (and d!824775 c!459047) b!2843994))

(assert (= (and d!824775 (not c!459047)) b!2843989))

(assert (= (and b!2843989 c!459046) b!2843991))

(assert (= (and b!2843989 (not c!459046)) b!2843988))

(assert (= (or b!2843991 b!2843988) bm!183427))

(assert (= (and bm!183427 c!459045) b!2843992))

(assert (= (and bm!183427 (not c!459045)) b!2843990))

(declare-fun m!3271955 () Bool)

(assert (=> b!2843989 m!3271955))

(declare-fun m!3271957 () Bool)

(assert (=> b!2843989 m!3271957))

(assert (=> b!2843989 m!3271955))

(assert (=> b!2843989 m!3271957))

(declare-fun m!3271959 () Bool)

(assert (=> b!2843989 m!3271959))

(declare-fun m!3271961 () Bool)

(assert (=> b!2843989 m!3271961))

(assert (=> d!824775 m!3271571))

(assert (=> d!824775 m!3271571))

(declare-fun m!3271963 () Bool)

(assert (=> d!824775 m!3271963))

(assert (=> b!2843993 m!3271575))

(declare-fun m!3271965 () Bool)

(assert (=> bm!183427 m!3271965))

(assert (=> b!2843990 m!3271961))

(declare-fun m!3271967 () Bool)

(assert (=> b!2843994 m!3271967))

(assert (=> d!824561 d!824775))

(declare-fun d!824783 () Bool)

(assert (=> d!824783 true))

(declare-fun order!18047 () Int)

(declare-fun lambda!104371 () Int)

(declare-fun order!18045 () Int)

(declare-fun dynLambda!14194 (Int Int) Int)

(declare-fun dynLambda!14195 (Int Int) Int)

(assert (=> d!824783 (< (dynLambda!14194 order!18045 (toChars!6977 (transformation!5068 (rule!7496 t2!27)))) (dynLambda!14195 order!18047 lambda!104371))))

(assert (=> d!824783 true))

(assert (=> d!824783 (< (dynLambda!14186 order!18033 (toValue!7118 (transformation!5068 (rule!7496 t2!27)))) (dynLambda!14195 order!18047 lambda!104371))))

(declare-fun Forall!1250 (Int) Bool)

(assert (=> d!824783 (= (semiInverseModEq!2115 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (toValue!7118 (transformation!5068 (rule!7496 t2!27)))) (Forall!1250 lambda!104371))))

(declare-fun bs!519147 () Bool)

(assert (= bs!519147 d!824783))

(declare-fun m!3271973 () Bool)

(assert (=> bs!519147 m!3271973))

(assert (=> d!824551 d!824783))

(declare-fun d!824785 () Bool)

(assert (=> d!824785 (= (list!12557 lt!1012033) (list!12560 (c!458900 lt!1012033)))))

(declare-fun bs!519148 () Bool)

(assert (= bs!519148 d!824785))

(declare-fun m!3271981 () Bool)

(assert (=> bs!519148 m!3271981))

(assert (=> d!824567 d!824785))

(declare-fun d!824787 () Bool)

(declare-fun res!1183108 () Bool)

(declare-fun e!1801812 () Bool)

(assert (=> d!824787 (=> res!1183108 e!1801812)))

(assert (=> d!824787 (= res!1183108 ((_ is Nil!33698) rules!1139))))

(assert (=> d!824787 (= (noDuplicateTag!1879 thiss!11361 rules!1139 Nil!33700) e!1801812)))

(declare-fun b!2844024 () Bool)

(declare-fun e!1801813 () Bool)

(assert (=> b!2844024 (= e!1801812 e!1801813)))

(declare-fun res!1183109 () Bool)

(assert (=> b!2844024 (=> (not res!1183109) (not e!1801813))))

(declare-fun contains!6117 (List!33824 String!37056) Bool)

(assert (=> b!2844024 (= res!1183109 (not (contains!6117 Nil!33700 (tag!5572 (h!39118 rules!1139)))))))

(declare-fun b!2844025 () Bool)

(assert (=> b!2844025 (= e!1801813 (noDuplicateTag!1879 thiss!11361 (t!232761 rules!1139) (Cons!33700 (tag!5572 (h!39118 rules!1139)) Nil!33700)))))

(assert (= (and d!824787 (not res!1183108)) b!2844024))

(assert (= (and b!2844024 res!1183109) b!2844025))

(declare-fun m!3271993 () Bool)

(assert (=> b!2844024 m!3271993))

(declare-fun m!3271995 () Bool)

(assert (=> b!2844025 m!3271995))

(assert (=> b!2843407 d!824787))

(declare-fun d!824797 () Bool)

(assert (=> d!824797 (= (list!12557 lt!1012051) (list!12560 (c!458900 lt!1012051)))))

(declare-fun bs!519151 () Bool)

(assert (= bs!519151 d!824797))

(declare-fun m!3271997 () Bool)

(assert (=> bs!519151 m!3271997))

(assert (=> d!824585 d!824797))

(declare-fun bs!519152 () Bool)

(declare-fun d!824799 () Bool)

(assert (= bs!519152 (and d!824799 d!824783)))

(declare-fun lambda!104372 () Int)

(assert (=> bs!519152 (= (and (= (toChars!6977 (transformation!5068 (h!39118 rules!1139))) (toChars!6977 (transformation!5068 (rule!7496 t2!27)))) (= (toValue!7118 (transformation!5068 (h!39118 rules!1139))) (toValue!7118 (transformation!5068 (rule!7496 t2!27))))) (= lambda!104372 lambda!104371))))

(assert (=> d!824799 true))

(assert (=> d!824799 (< (dynLambda!14194 order!18045 (toChars!6977 (transformation!5068 (h!39118 rules!1139)))) (dynLambda!14195 order!18047 lambda!104372))))

(assert (=> d!824799 true))

(assert (=> d!824799 (< (dynLambda!14186 order!18033 (toValue!7118 (transformation!5068 (h!39118 rules!1139)))) (dynLambda!14195 order!18047 lambda!104372))))

(assert (=> d!824799 (= (semiInverseModEq!2115 (toChars!6977 (transformation!5068 (h!39118 rules!1139))) (toValue!7118 (transformation!5068 (h!39118 rules!1139)))) (Forall!1250 lambda!104372))))

(declare-fun bs!519153 () Bool)

(assert (= bs!519153 d!824799))

(declare-fun m!3271999 () Bool)

(assert (=> bs!519153 m!3271999))

(assert (=> d!824597 d!824799))

(declare-fun b!2844080 () Bool)

(declare-fun e!1801864 () Bool)

(declare-fun e!1801856 () Bool)

(assert (=> b!2844080 (= e!1801864 e!1801856)))

(declare-fun res!1183146 () Bool)

(assert (=> b!2844080 (=> (not res!1183146) (not e!1801856))))

(declare-fun appendAssoc!213 (List!33820 List!33820 List!33820) Bool)

(assert (=> b!2844080 (= res!1183146 (appendAssoc!213 (list!12560 (left!25392 (c!458900 (charsOf!3118 t1!27)))) (list!12560 (right!25722 (c!458900 (charsOf!3118 t1!27)))) (list!12560 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))))))

(declare-fun b!2844081 () Bool)

(declare-fun e!1801858 () Bool)

(declare-fun e!1801863 () Bool)

(assert (=> b!2844081 (= e!1801858 e!1801863)))

(declare-fun res!1183144 () Bool)

(assert (=> b!2844081 (=> (not res!1183144) (not e!1801863))))

(assert (=> b!2844081 (= res!1183144 (appendAssoc!213 (list!12560 (c!458900 (charsOf!3118 t1!27))) (list!12560 (left!25392 (left!25392 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))) (list!12560 (right!25722 (left!25392 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))))))))

(declare-fun b!2844082 () Bool)

(declare-fun e!1801860 () Bool)

(assert (=> b!2844082 (= e!1801856 e!1801860)))

(declare-fun res!1183147 () Bool)

(assert (=> b!2844082 (=> res!1183147 e!1801860)))

(assert (=> b!2844082 (= res!1183147 (not ((_ is Node!10452) (right!25722 (c!458900 (charsOf!3118 t1!27))))))))

(declare-fun b!2844083 () Bool)

(assert (=> b!2844083 (= e!1801863 (appendAssoc!213 (++!8120 (list!12560 (c!458900 (charsOf!3118 t1!27))) (list!12560 (left!25392 (left!25392 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))))) (list!12560 (right!25722 (left!25392 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))) (list!12560 (right!25722 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))

(declare-fun b!2844084 () Bool)

(declare-fun e!1801862 () Bool)

(assert (=> b!2844084 (= e!1801862 e!1801858)))

(declare-fun res!1183145 () Bool)

(assert (=> b!2844084 (=> res!1183145 e!1801858)))

(assert (=> b!2844084 (= res!1183145 (not ((_ is Node!10452) (left!25392 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))

(declare-fun b!2844085 () Bool)

(declare-fun e!1801861 () Bool)

(assert (=> b!2844085 (= e!1801860 e!1801861)))

(declare-fun res!1183148 () Bool)

(assert (=> b!2844085 (=> (not res!1183148) (not e!1801861))))

(assert (=> b!2844085 (= res!1183148 (appendAssoc!213 (list!12560 (left!25392 (right!25722 (c!458900 (charsOf!3118 t1!27))))) (list!12560 (right!25722 (right!25722 (c!458900 (charsOf!3118 t1!27))))) (list!12560 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))))))

(declare-fun b!2844086 () Bool)

(declare-fun e!1801857 () Bool)

(assert (=> b!2844086 (= e!1801857 e!1801862)))

(declare-fun res!1183143 () Bool)

(assert (=> b!2844086 (=> (not res!1183143) (not e!1801862))))

(assert (=> b!2844086 (= res!1183143 (appendAssoc!213 (list!12560 (c!458900 (charsOf!3118 t1!27))) (list!12560 (left!25392 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))) (list!12560 (right!25722 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))

(declare-fun d!824801 () Bool)

(declare-fun e!1801859 () Bool)

(assert (=> d!824801 e!1801859))

(declare-fun res!1183140 () Bool)

(assert (=> d!824801 (=> (not res!1183140) (not e!1801859))))

(assert (=> d!824801 (= res!1183140 e!1801864)))

(declare-fun res!1183142 () Bool)

(assert (=> d!824801 (=> res!1183142 e!1801864)))

(assert (=> d!824801 (= res!1183142 (not ((_ is Node!10452) (c!458900 (charsOf!3118 t1!27)))))))

(assert (=> d!824801 (= (appendAssocInst!718 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))) true)))

(declare-fun b!2844087 () Bool)

(assert (=> b!2844087 (= e!1801861 (appendAssoc!213 (list!12560 (left!25392 (c!458900 (charsOf!3118 t1!27)))) (list!12560 (left!25392 (right!25722 (c!458900 (charsOf!3118 t1!27))))) (++!8120 (list!12560 (right!25722 (right!25722 (c!458900 (charsOf!3118 t1!27))))) (list!12560 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))

(declare-fun b!2844088 () Bool)

(assert (=> b!2844088 (= e!1801859 e!1801857)))

(declare-fun res!1183141 () Bool)

(assert (=> b!2844088 (=> res!1183141 e!1801857)))

(assert (=> b!2844088 (= res!1183141 (not ((_ is Node!10452) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))))))

(assert (= (and d!824801 (not res!1183142)) b!2844080))

(assert (= (and b!2844080 res!1183146) b!2844082))

(assert (= (and b!2844082 (not res!1183147)) b!2844085))

(assert (= (and b!2844085 res!1183148) b!2844087))

(assert (= (and d!824801 res!1183140) b!2844088))

(assert (= (and b!2844088 (not res!1183141)) b!2844086))

(assert (= (and b!2844086 res!1183143) b!2844084))

(assert (= (and b!2844084 (not res!1183145)) b!2844081))

(assert (= (and b!2844081 res!1183144) b!2844083))

(declare-fun m!3272053 () Bool)

(assert (=> b!2844080 m!3272053))

(declare-fun m!3272055 () Bool)

(assert (=> b!2844080 m!3272055))

(assert (=> b!2844080 m!3271819))

(assert (=> b!2844080 m!3272053))

(assert (=> b!2844080 m!3272055))

(assert (=> b!2844080 m!3271819))

(declare-fun m!3272057 () Bool)

(assert (=> b!2844080 m!3272057))

(declare-fun m!3272059 () Bool)

(assert (=> b!2844087 m!3272059))

(declare-fun m!3272061 () Bool)

(assert (=> b!2844087 m!3272061))

(assert (=> b!2844087 m!3271819))

(assert (=> b!2844087 m!3272053))

(assert (=> b!2844087 m!3272059))

(assert (=> b!2844087 m!3271819))

(declare-fun m!3272063 () Bool)

(assert (=> b!2844087 m!3272063))

(assert (=> b!2844087 m!3272053))

(assert (=> b!2844087 m!3272061))

(assert (=> b!2844087 m!3272063))

(declare-fun m!3272065 () Bool)

(assert (=> b!2844087 m!3272065))

(assert (=> b!2844086 m!3271817))

(declare-fun m!3272067 () Bool)

(assert (=> b!2844086 m!3272067))

(declare-fun m!3272069 () Bool)

(assert (=> b!2844086 m!3272069))

(assert (=> b!2844086 m!3271817))

(assert (=> b!2844086 m!3272067))

(assert (=> b!2844086 m!3272069))

(declare-fun m!3272071 () Bool)

(assert (=> b!2844086 m!3272071))

(assert (=> b!2844083 m!3272069))

(declare-fun m!3272073 () Bool)

(assert (=> b!2844083 m!3272073))

(assert (=> b!2844083 m!3271817))

(declare-fun m!3272075 () Bool)

(assert (=> b!2844083 m!3272075))

(declare-fun m!3272077 () Bool)

(assert (=> b!2844083 m!3272077))

(assert (=> b!2844083 m!3272069))

(declare-fun m!3272079 () Bool)

(assert (=> b!2844083 m!3272079))

(assert (=> b!2844083 m!3272077))

(assert (=> b!2844083 m!3271817))

(assert (=> b!2844083 m!3272073))

(assert (=> b!2844083 m!3272075))

(assert (=> b!2844085 m!3272061))

(assert (=> b!2844085 m!3272059))

(assert (=> b!2844085 m!3271819))

(assert (=> b!2844085 m!3272061))

(assert (=> b!2844085 m!3272059))

(assert (=> b!2844085 m!3271819))

(declare-fun m!3272081 () Bool)

(assert (=> b!2844085 m!3272081))

(assert (=> b!2844081 m!3271817))

(assert (=> b!2844081 m!3272073))

(assert (=> b!2844081 m!3272077))

(assert (=> b!2844081 m!3271817))

(assert (=> b!2844081 m!3272073))

(assert (=> b!2844081 m!3272077))

(declare-fun m!3272083 () Bool)

(assert (=> b!2844081 m!3272083))

(assert (=> d!824571 d!824801))

(assert (=> d!824571 d!824671))

(declare-fun d!824833 () Bool)

(assert (=> d!824833 (= (isEmpty!18556 (originalCharacters!5800 t1!27)) ((_ is Nil!33696) (originalCharacters!5800 t1!27)))))

(assert (=> d!824587 d!824833))

(declare-fun d!824835 () Bool)

(assert (=> d!824835 (= (list!12557 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27))) (list!12560 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27)))))))

(declare-fun bs!519163 () Bool)

(assert (= bs!519163 d!824835))

(declare-fun m!3272085 () Bool)

(assert (=> bs!519163 m!3272085))

(assert (=> b!2843523 d!824835))

(declare-fun d!824837 () Bool)

(assert (=> d!824837 (= (list!12557 lt!1012045) (list!12560 (c!458900 lt!1012045)))))

(declare-fun bs!519164 () Bool)

(assert (= bs!519164 d!824837))

(declare-fun m!3272087 () Bool)

(assert (=> bs!519164 m!3272087))

(assert (=> b!2843479 d!824837))

(declare-fun lt!1012190 () List!33820)

(declare-fun b!2844113 () Bool)

(declare-fun e!1801877 () Bool)

(assert (=> b!2844113 (= e!1801877 (or (not (= (list!12557 (singletonSeq!2183 (apply!7841 lt!1011996 0))) Nil!33696)) (= lt!1012190 (list!12557 (charsOf!3118 t1!27)))))))

(declare-fun d!824839 () Bool)

(assert (=> d!824839 e!1801877))

(declare-fun res!1183157 () Bool)

(assert (=> d!824839 (=> (not res!1183157) (not e!1801877))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4647 (List!33820) (InoxSet C!17100))

(assert (=> d!824839 (= res!1183157 (= (content!4647 lt!1012190) ((_ map or) (content!4647 (list!12557 (charsOf!3118 t1!27))) (content!4647 (list!12557 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))

(declare-fun e!1801878 () List!33820)

(assert (=> d!824839 (= lt!1012190 e!1801878)))

(declare-fun c!459072 () Bool)

(assert (=> d!824839 (= c!459072 ((_ is Nil!33696) (list!12557 (charsOf!3118 t1!27))))))

(assert (=> d!824839 (= (++!8120 (list!12557 (charsOf!3118 t1!27)) (list!12557 (singletonSeq!2183 (apply!7841 lt!1011996 0)))) lt!1012190)))

(declare-fun b!2844112 () Bool)

(declare-fun res!1183156 () Bool)

(assert (=> b!2844112 (=> (not res!1183156) (not e!1801877))))

(assert (=> b!2844112 (= res!1183156 (= (size!26173 lt!1012190) (+ (size!26173 (list!12557 (charsOf!3118 t1!27))) (size!26173 (list!12557 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))

(declare-fun b!2844110 () Bool)

(assert (=> b!2844110 (= e!1801878 (list!12557 (singletonSeq!2183 (apply!7841 lt!1011996 0))))))

(declare-fun b!2844111 () Bool)

(assert (=> b!2844111 (= e!1801878 (Cons!33696 (h!39116 (list!12557 (charsOf!3118 t1!27))) (++!8120 (t!232759 (list!12557 (charsOf!3118 t1!27))) (list!12557 (singletonSeq!2183 (apply!7841 lt!1011996 0))))))))

(assert (= (and d!824839 c!459072) b!2844110))

(assert (= (and d!824839 (not c!459072)) b!2844111))

(assert (= (and d!824839 res!1183157) b!2844112))

(assert (= (and b!2844112 res!1183156) b!2844113))

(declare-fun m!3272089 () Bool)

(assert (=> d!824839 m!3272089))

(assert (=> d!824839 m!3271405))

(declare-fun m!3272091 () Bool)

(assert (=> d!824839 m!3272091))

(assert (=> d!824839 m!3271407))

(declare-fun m!3272093 () Bool)

(assert (=> d!824839 m!3272093))

(declare-fun m!3272095 () Bool)

(assert (=> b!2844112 m!3272095))

(assert (=> b!2844112 m!3271405))

(declare-fun m!3272097 () Bool)

(assert (=> b!2844112 m!3272097))

(assert (=> b!2844112 m!3271407))

(declare-fun m!3272099 () Bool)

(assert (=> b!2844112 m!3272099))

(assert (=> b!2844111 m!3271407))

(declare-fun m!3272101 () Bool)

(assert (=> b!2844111 m!3272101))

(assert (=> b!2843479 d!824839))

(declare-fun d!824841 () Bool)

(assert (=> d!824841 (= (list!12557 (charsOf!3118 t1!27)) (list!12560 (c!458900 (charsOf!3118 t1!27))))))

(declare-fun bs!519165 () Bool)

(assert (= bs!519165 d!824841))

(assert (=> bs!519165 m!3271817))

(assert (=> b!2843479 d!824841))

(declare-fun d!824843 () Bool)

(assert (=> d!824843 (= (list!12557 (singletonSeq!2183 (apply!7841 lt!1011996 0))) (list!12560 (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))

(declare-fun bs!519166 () Bool)

(assert (= bs!519166 d!824843))

(assert (=> bs!519166 m!3271819))

(assert (=> b!2843479 d!824843))

(assert (=> b!2843478 d!824667))

(assert (=> b!2843478 d!824671))

(assert (=> b!2843478 d!824729))

(assert (=> b!2843478 d!824731))

(assert (=> b!2843478 d!824733))

(declare-fun d!824845 () Bool)

(declare-fun lt!1012191 () Bool)

(assert (=> d!824845 (= lt!1012191 (isEmpty!18556 (list!12557 (_2!19897 (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t2!27)))))))))

(assert (=> d!824845 (= lt!1012191 (isEmpty!18557 (c!458900 (_2!19897 (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t2!27)))))))))

(assert (=> d!824845 (= (isEmpty!18552 (_2!19897 (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t2!27))))) lt!1012191)))

(declare-fun bs!519167 () Bool)

(assert (= bs!519167 d!824845))

(declare-fun m!3272103 () Bool)

(assert (=> bs!519167 m!3272103))

(assert (=> bs!519167 m!3272103))

(declare-fun m!3272105 () Bool)

(assert (=> bs!519167 m!3272105))

(declare-fun m!3272107 () Bool)

(assert (=> bs!519167 m!3272107))

(assert (=> b!2843383 d!824845))

(declare-fun b!2844118 () Bool)

(declare-fun lt!1012192 () tuple2!33570)

(declare-fun e!1801882 () Bool)

(assert (=> b!2844118 (= e!1801882 (= (list!12557 (_2!19897 lt!1012192)) (_2!19900 (lexList!1264 thiss!11361 rules!1139 (list!12557 (print!1748 thiss!11361 (singletonSeq!2184 t2!27)))))))))

(declare-fun b!2844120 () Bool)

(declare-fun e!1801883 () Bool)

(assert (=> b!2844120 (= e!1801883 (= (_2!19897 lt!1012192) (print!1748 thiss!11361 (singletonSeq!2184 t2!27))))))

(declare-fun b!2844121 () Bool)

(declare-fun e!1801881 () Bool)

(assert (=> b!2844121 (= e!1801883 e!1801881)))

(declare-fun res!1183158 () Bool)

(assert (=> b!2844121 (= res!1183158 (< (size!26170 (_2!19897 lt!1012192)) (size!26170 (print!1748 thiss!11361 (singletonSeq!2184 t2!27)))))))

(assert (=> b!2844121 (=> (not res!1183158) (not e!1801881))))

(declare-fun b!2844122 () Bool)

(assert (=> b!2844122 (= e!1801881 (not (isEmpty!18559 (_1!19897 lt!1012192))))))

(declare-fun d!824847 () Bool)

(assert (=> d!824847 e!1801882))

(declare-fun res!1183159 () Bool)

(assert (=> d!824847 (=> (not res!1183159) (not e!1801882))))

(assert (=> d!824847 (= res!1183159 e!1801883)))

(declare-fun c!459075 () Bool)

(assert (=> d!824847 (= c!459075 (> (size!26168 (_1!19897 lt!1012192)) 0))))

(assert (=> d!824847 (= lt!1012192 (lexTailRecV2!902 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t2!27)) (BalanceConc!20543 Empty!10452) (print!1748 thiss!11361 (singletonSeq!2184 t2!27)) (BalanceConc!20545 Empty!10453)))))

(assert (=> d!824847 (= (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t2!27))) lt!1012192)))

(declare-fun b!2844119 () Bool)

(declare-fun res!1183160 () Bool)

(assert (=> b!2844119 (=> (not res!1183160) (not e!1801882))))

(assert (=> b!2844119 (= res!1183160 (= (list!12556 (_1!19897 lt!1012192)) (_1!19900 (lexList!1264 thiss!11361 rules!1139 (list!12557 (print!1748 thiss!11361 (singletonSeq!2184 t2!27)))))))))

(assert (= (and d!824847 c!459075) b!2844121))

(assert (= (and d!824847 (not c!459075)) b!2844120))

(assert (= (and b!2844121 res!1183158) b!2844122))

(assert (= (and d!824847 res!1183159) b!2844119))

(assert (= (and b!2844119 res!1183160) b!2844118))

(declare-fun m!3272109 () Bool)

(assert (=> b!2844121 m!3272109))

(assert (=> b!2844121 m!3271279))

(declare-fun m!3272111 () Bool)

(assert (=> b!2844121 m!3272111))

(declare-fun m!3272113 () Bool)

(assert (=> b!2844118 m!3272113))

(assert (=> b!2844118 m!3271279))

(declare-fun m!3272115 () Bool)

(assert (=> b!2844118 m!3272115))

(assert (=> b!2844118 m!3272115))

(declare-fun m!3272117 () Bool)

(assert (=> b!2844118 m!3272117))

(declare-fun m!3272119 () Bool)

(assert (=> d!824847 m!3272119))

(assert (=> d!824847 m!3271279))

(assert (=> d!824847 m!3271279))

(declare-fun m!3272121 () Bool)

(assert (=> d!824847 m!3272121))

(declare-fun m!3272123 () Bool)

(assert (=> b!2844119 m!3272123))

(assert (=> b!2844119 m!3271279))

(assert (=> b!2844119 m!3272115))

(assert (=> b!2844119 m!3272115))

(assert (=> b!2844119 m!3272117))

(declare-fun m!3272125 () Bool)

(assert (=> b!2844122 m!3272125))

(assert (=> b!2843383 d!824847))

(declare-fun d!824849 () Bool)

(declare-fun lt!1012193 () BalanceConc!20542)

(assert (=> d!824849 (= (list!12557 lt!1012193) (printList!1238 thiss!11361 (list!12556 (singletonSeq!2184 t2!27))))))

(assert (=> d!824849 (= lt!1012193 (printTailRec!1181 thiss!11361 (singletonSeq!2184 t2!27) 0 (BalanceConc!20543 Empty!10452)))))

(assert (=> d!824849 (= (print!1748 thiss!11361 (singletonSeq!2184 t2!27)) lt!1012193)))

(declare-fun bs!519168 () Bool)

(assert (= bs!519168 d!824849))

(declare-fun m!3272127 () Bool)

(assert (=> bs!519168 m!3272127))

(assert (=> bs!519168 m!3271285))

(assert (=> bs!519168 m!3271287))

(assert (=> bs!519168 m!3271287))

(declare-fun m!3272129 () Bool)

(assert (=> bs!519168 m!3272129))

(assert (=> bs!519168 m!3271285))

(declare-fun m!3272131 () Bool)

(assert (=> bs!519168 m!3272131))

(assert (=> b!2843383 d!824849))

(declare-fun d!824851 () Bool)

(declare-fun e!1801884 () Bool)

(assert (=> d!824851 e!1801884))

(declare-fun res!1183161 () Bool)

(assert (=> d!824851 (=> (not res!1183161) (not e!1801884))))

(declare-fun lt!1012194 () BalanceConc!20544)

(assert (=> d!824851 (= res!1183161 (= (list!12556 lt!1012194) (Cons!33699 t2!27 Nil!33699)))))

(assert (=> d!824851 (= lt!1012194 (singleton!962 t2!27))))

(assert (=> d!824851 (= (singletonSeq!2184 t2!27) lt!1012194)))

(declare-fun b!2844123 () Bool)

(assert (=> b!2844123 (= e!1801884 (isBalanced!3152 (c!458936 lt!1012194)))))

(assert (= (and d!824851 res!1183161) b!2844123))

(declare-fun m!3272133 () Bool)

(assert (=> d!824851 m!3272133))

(declare-fun m!3272135 () Bool)

(assert (=> d!824851 m!3272135))

(declare-fun m!3272137 () Bool)

(assert (=> b!2844123 m!3272137))

(assert (=> b!2843383 d!824851))

(declare-fun d!824853 () Bool)

(assert (=> d!824853 (= (inv!16 (value!162840 t2!27)) (= (charsToInt!0 (text!37533 (value!162840 t2!27))) (value!162831 (value!162840 t2!27))))))

(declare-fun bs!519169 () Bool)

(assert (= bs!519169 d!824853))

(declare-fun m!3272139 () Bool)

(assert (=> bs!519169 m!3272139))

(assert (=> b!2843409 d!824853))

(declare-fun b!2844131 () Bool)

(declare-fun res!1183167 () Bool)

(declare-fun e!1801889 () Bool)

(assert (=> b!2844131 (=> (not res!1183167) (not e!1801889))))

(assert (=> b!2844131 (= res!1183167 (isBalanced!3150 (right!25722 (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))

(declare-fun b!2844132 () Bool)

(assert (=> b!2844132 (= e!1801889 (not (isEmpty!18557 (right!25722 (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))))))))

(declare-fun b!2844133 () Bool)

(declare-fun res!1183165 () Bool)

(assert (=> b!2844133 (=> (not res!1183165) (not e!1801889))))

(assert (=> b!2844133 (= res!1183165 (not (isEmpty!18557 (left!25392 (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))))))))

(declare-fun b!2844134 () Bool)

(declare-fun res!1183163 () Bool)

(assert (=> b!2844134 (=> (not res!1183163) (not e!1801889))))

(assert (=> b!2844134 (= res!1183163 (isBalanced!3150 (left!25392 (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))

(declare-fun d!824855 () Bool)

(declare-fun res!1183168 () Bool)

(declare-fun e!1801890 () Bool)

(assert (=> d!824855 (=> res!1183168 e!1801890)))

(assert (=> d!824855 (= res!1183168 (not ((_ is Node!10452) (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))

(assert (=> d!824855 (= (isBalanced!3150 (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))) e!1801890)))

(declare-fun b!2844135 () Bool)

(assert (=> b!2844135 (= e!1801890 e!1801889)))

(declare-fun res!1183166 () Bool)

(assert (=> b!2844135 (=> (not res!1183166) (not e!1801889))))

(assert (=> b!2844135 (= res!1183166 (<= (- 1) (- (height!1514 (left!25392 (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))) (height!1514 (right!25722 (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))))))))

(declare-fun b!2844136 () Bool)

(declare-fun res!1183164 () Bool)

(assert (=> b!2844136 (=> (not res!1183164) (not e!1801889))))

(assert (=> b!2844136 (= res!1183164 (<= (- (height!1514 (left!25392 (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0)))))) (height!1514 (right!25722 (++!8119 (c!458900 (charsOf!3118 t1!27)) (c!458900 (singletonSeq!2183 (apply!7841 lt!1011996 0))))))) 1))))

(assert (= (and d!824855 (not res!1183168)) b!2844135))

(assert (= (and b!2844135 res!1183166) b!2844136))

(assert (= (and b!2844136 res!1183164) b!2844134))

(assert (= (and b!2844134 res!1183163) b!2844131))

(assert (= (and b!2844131 res!1183167) b!2844133))

(assert (= (and b!2844133 res!1183165) b!2844132))

(declare-fun m!3272151 () Bool)

(assert (=> b!2844131 m!3272151))

(declare-fun m!3272155 () Bool)

(assert (=> b!2844134 m!3272155))

(declare-fun m!3272157 () Bool)

(assert (=> b!2844132 m!3272157))

(declare-fun m!3272161 () Bool)

(assert (=> b!2844133 m!3272161))

(declare-fun m!3272163 () Bool)

(assert (=> b!2844136 m!3272163))

(declare-fun m!3272165 () Bool)

(assert (=> b!2844136 m!3272165))

(assert (=> b!2844135 m!3272163))

(assert (=> b!2844135 m!3272165))

(assert (=> b!2843476 d!824855))

(assert (=> b!2843476 d!824671))

(declare-fun d!824859 () Bool)

(declare-fun lt!1012197 () Int)

(assert (=> d!824859 (>= lt!1012197 0)))

(declare-fun e!1801891 () Int)

(assert (=> d!824859 (= lt!1012197 e!1801891)))

(declare-fun c!459079 () Bool)

(assert (=> d!824859 (= c!459079 ((_ is Nil!33696) (originalCharacters!5800 t1!27)))))

(assert (=> d!824859 (= (size!26173 (originalCharacters!5800 t1!27)) lt!1012197)))

(declare-fun b!2844137 () Bool)

(assert (=> b!2844137 (= e!1801891 0)))

(declare-fun b!2844138 () Bool)

(assert (=> b!2844138 (= e!1801891 (+ 1 (size!26173 (t!232759 (originalCharacters!5800 t1!27)))))))

(assert (= (and d!824859 c!459079) b!2844137))

(assert (= (and d!824859 (not c!459079)) b!2844138))

(declare-fun m!3272167 () Bool)

(assert (=> b!2844138 m!3272167))

(assert (=> b!2843520 d!824859))

(declare-fun bs!519172 () Bool)

(declare-fun d!824861 () Bool)

(assert (= bs!519172 (and d!824861 d!824607)))

(declare-fun lambda!104375 () Int)

(assert (=> bs!519172 (= (= (toValue!7118 (transformation!5068 (rule!7496 t2!27))) (toValue!7118 (transformation!5068 (h!39118 rules!1139)))) (= lambda!104375 lambda!104338))))

(declare-fun bs!519173 () Bool)

(assert (= bs!519173 (and d!824861 d!824743)))

(assert (=> bs!519173 (= (= (toValue!7118 (transformation!5068 (rule!7496 t2!27))) (toValue!7118 (transformation!5068 (rule!7496 t1!27)))) (= lambda!104375 lambda!104359))))

(assert (=> d!824861 true))

(assert (=> d!824861 (< (dynLambda!14186 order!18033 (toValue!7118 (transformation!5068 (rule!7496 t2!27)))) (dynLambda!14187 order!18035 lambda!104375))))

(assert (=> d!824861 (= (equivClasses!2014 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (toValue!7118 (transformation!5068 (rule!7496 t2!27)))) (Forall2!846 lambda!104375))))

(declare-fun bs!519175 () Bool)

(assert (= bs!519175 d!824861))

(declare-fun m!3272171 () Bool)

(assert (=> bs!519175 m!3272171))

(assert (=> b!2843386 d!824861))

(assert (=> d!824521 d!824547))

(declare-fun d!824863 () Bool)

(assert (=> d!824863 (= (list!12556 (_1!19897 (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t2!27))))) (list!12562 (c!458936 (_1!19897 (lex!2029 thiss!11361 rules!1139 (print!1748 thiss!11361 (singletonSeq!2184 t2!27)))))))))

(declare-fun bs!519176 () Bool)

(assert (= bs!519176 d!824863))

(declare-fun m!3272173 () Bool)

(assert (=> bs!519176 m!3272173))

(assert (=> d!824521 d!824863))

(declare-fun d!824865 () Bool)

(assert (=> d!824865 (= (list!12556 (singletonSeq!2184 t2!27)) (list!12562 (c!458936 (singletonSeq!2184 t2!27))))))

(declare-fun bs!519177 () Bool)

(assert (= bs!519177 d!824865))

(declare-fun m!3272175 () Bool)

(assert (=> bs!519177 m!3272175))

(assert (=> d!824521 d!824865))

(assert (=> d!824521 d!824847))

(declare-fun d!824867 () Bool)

(declare-fun lt!1012198 () Int)

(assert (=> d!824867 (= lt!1012198 (size!26178 (list!12556 (_1!19897 lt!1012021))))))

(assert (=> d!824867 (= lt!1012198 (size!26179 (c!458936 (_1!19897 lt!1012021))))))

(assert (=> d!824867 (= (size!26168 (_1!19897 lt!1012021)) lt!1012198)))

(declare-fun bs!519178 () Bool)

(assert (= bs!519178 d!824867))

(declare-fun m!3272177 () Bool)

(assert (=> bs!519178 m!3272177))

(assert (=> bs!519178 m!3272177))

(declare-fun m!3272179 () Bool)

(assert (=> bs!519178 m!3272179))

(declare-fun m!3272181 () Bool)

(assert (=> bs!519178 m!3272181))

(assert (=> d!824521 d!824867))

(assert (=> d!824521 d!824851))

(assert (=> d!824521 d!824849))

(declare-fun d!824869 () Bool)

(assert (=> d!824869 (= (inv!45701 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27))) (isBalanced!3150 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27)))))))

(declare-fun bs!519179 () Bool)

(assert (= bs!519179 d!824869))

(declare-fun m!3272183 () Bool)

(assert (=> bs!519179 m!3272183))

(assert (=> tb!155041 d!824869))

(declare-fun d!824871 () Bool)

(declare-fun lt!1012199 () Token!9538)

(assert (=> d!824871 (= lt!1012199 (apply!7850 (list!12556 (_1!19897 lt!1012021)) 0))))

(assert (=> d!824871 (= lt!1012199 (apply!7851 (c!458936 (_1!19897 lt!1012021)) 0))))

(declare-fun e!1801895 () Bool)

(assert (=> d!824871 e!1801895))

(declare-fun res!1183169 () Bool)

(assert (=> d!824871 (=> (not res!1183169) (not e!1801895))))

(assert (=> d!824871 (= res!1183169 (<= 0 0))))

(assert (=> d!824871 (= (apply!7842 (_1!19897 lt!1012021) 0) lt!1012199)))

(declare-fun b!2844151 () Bool)

(assert (=> b!2844151 (= e!1801895 (< 0 (size!26168 (_1!19897 lt!1012021))))))

(assert (= (and d!824871 res!1183169) b!2844151))

(assert (=> d!824871 m!3272177))

(assert (=> d!824871 m!3272177))

(declare-fun m!3272185 () Bool)

(assert (=> d!824871 m!3272185))

(declare-fun m!3272187 () Bool)

(assert (=> d!824871 m!3272187))

(assert (=> b!2844151 m!3271283))

(assert (=> b!2843381 d!824871))

(declare-fun d!824873 () Bool)

(declare-fun c!459082 () Bool)

(assert (=> d!824873 (= c!459082 ((_ is Node!10452) (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27)))))))

(declare-fun e!1801919 () Bool)

(assert (=> d!824873 (= (inv!45700 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27)))) e!1801919)))

(declare-fun b!2844200 () Bool)

(declare-fun inv!45705 (Conc!10452) Bool)

(assert (=> b!2844200 (= e!1801919 (inv!45705 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27)))))))

(declare-fun b!2844201 () Bool)

(declare-fun e!1801920 () Bool)

(assert (=> b!2844201 (= e!1801919 e!1801920)))

(declare-fun res!1183172 () Bool)

(assert (=> b!2844201 (= res!1183172 (not ((_ is Leaf!15905) (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27))))))))

(assert (=> b!2844201 (=> res!1183172 e!1801920)))

(declare-fun b!2844202 () Bool)

(declare-fun inv!45706 (Conc!10452) Bool)

(assert (=> b!2844202 (= e!1801920 (inv!45706 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27)))))))

(assert (= (and d!824873 c!459082) b!2844200))

(assert (= (and d!824873 (not c!459082)) b!2844201))

(assert (= (and b!2844201 (not res!1183172)) b!2844202))

(declare-fun m!3272201 () Bool)

(assert (=> b!2844200 m!3272201))

(declare-fun m!3272203 () Bool)

(assert (=> b!2844202 m!3272203))

(assert (=> b!2843498 d!824873))

(declare-fun b!2844203 () Bool)

(declare-fun e!1801922 () Bool)

(declare-fun e!1801921 () Bool)

(assert (=> b!2844203 (= e!1801922 e!1801921)))

(declare-fun c!459083 () Bool)

(assert (=> b!2844203 (= c!459083 ((_ is Union!8459) (ite c!458923 (regOne!17431 lt!1011995) (regOne!17430 lt!1011995))))))

(declare-fun b!2844204 () Bool)

(declare-fun e!1801927 () Bool)

(assert (=> b!2844204 (= e!1801927 e!1801922)))

(declare-fun c!459084 () Bool)

(assert (=> b!2844204 (= c!459084 ((_ is Star!8459) (ite c!458923 (regOne!17431 lt!1011995) (regOne!17430 lt!1011995))))))

(declare-fun b!2844205 () Bool)

(declare-fun e!1801925 () Bool)

(declare-fun call!183444 () Bool)

(assert (=> b!2844205 (= e!1801925 call!183444)))

(declare-fun call!183442 () Bool)

(declare-fun bm!183437 () Bool)

(assert (=> bm!183437 (= call!183442 (validRegex!3355 (ite c!459084 (reg!8788 (ite c!458923 (regOne!17431 lt!1011995) (regOne!17430 lt!1011995))) (ite c!459083 (regTwo!17431 (ite c!458923 (regOne!17431 lt!1011995) (regOne!17430 lt!1011995))) (regTwo!17430 (ite c!458923 (regOne!17431 lt!1011995) (regOne!17430 lt!1011995)))))))))

(declare-fun b!2844206 () Bool)

(declare-fun e!1801926 () Bool)

(assert (=> b!2844206 (= e!1801926 call!183444)))

(declare-fun bm!183438 () Bool)

(assert (=> bm!183438 (= call!183444 call!183442)))

(declare-fun b!2844207 () Bool)

(declare-fun e!1801924 () Bool)

(assert (=> b!2844207 (= e!1801922 e!1801924)))

(declare-fun res!1183173 () Bool)

(assert (=> b!2844207 (= res!1183173 (not (nullable!2623 (reg!8788 (ite c!458923 (regOne!17431 lt!1011995) (regOne!17430 lt!1011995))))))))

(assert (=> b!2844207 (=> (not res!1183173) (not e!1801924))))

(declare-fun b!2844208 () Bool)

(declare-fun e!1801923 () Bool)

(assert (=> b!2844208 (= e!1801923 e!1801926)))

(declare-fun res!1183174 () Bool)

(assert (=> b!2844208 (=> (not res!1183174) (not e!1801926))))

(declare-fun call!183443 () Bool)

(assert (=> b!2844208 (= res!1183174 call!183443)))

(declare-fun d!824875 () Bool)

(declare-fun res!1183176 () Bool)

(assert (=> d!824875 (=> res!1183176 e!1801927)))

(assert (=> d!824875 (= res!1183176 ((_ is ElementMatch!8459) (ite c!458923 (regOne!17431 lt!1011995) (regOne!17430 lt!1011995))))))

(assert (=> d!824875 (= (validRegex!3355 (ite c!458923 (regOne!17431 lt!1011995) (regOne!17430 lt!1011995))) e!1801927)))

(declare-fun bm!183439 () Bool)

(assert (=> bm!183439 (= call!183443 (validRegex!3355 (ite c!459083 (regOne!17431 (ite c!458923 (regOne!17431 lt!1011995) (regOne!17430 lt!1011995))) (regOne!17430 (ite c!458923 (regOne!17431 lt!1011995) (regOne!17430 lt!1011995))))))))

(declare-fun b!2844209 () Bool)

(assert (=> b!2844209 (= e!1801924 call!183442)))

(declare-fun b!2844210 () Bool)

(declare-fun res!1183177 () Bool)

(assert (=> b!2844210 (=> res!1183177 e!1801923)))

(assert (=> b!2844210 (= res!1183177 (not ((_ is Concat!13758) (ite c!458923 (regOne!17431 lt!1011995) (regOne!17430 lt!1011995)))))))

(assert (=> b!2844210 (= e!1801921 e!1801923)))

(declare-fun b!2844211 () Bool)

(declare-fun res!1183175 () Bool)

(assert (=> b!2844211 (=> (not res!1183175) (not e!1801925))))

(assert (=> b!2844211 (= res!1183175 call!183443)))

(assert (=> b!2844211 (= e!1801921 e!1801925)))

(assert (= (and d!824875 (not res!1183176)) b!2844204))

(assert (= (and b!2844204 c!459084) b!2844207))

(assert (= (and b!2844204 (not c!459084)) b!2844203))

(assert (= (and b!2844207 res!1183173) b!2844209))

(assert (= (and b!2844203 c!459083) b!2844211))

(assert (= (and b!2844203 (not c!459083)) b!2844210))

(assert (= (and b!2844211 res!1183175) b!2844205))

(assert (= (and b!2844210 (not res!1183177)) b!2844208))

(assert (= (and b!2844208 res!1183174) b!2844206))

(assert (= (or b!2844211 b!2844208) bm!183439))

(assert (= (or b!2844205 b!2844206) bm!183438))

(assert (= (or b!2844209 bm!183438) bm!183437))

(declare-fun m!3272209 () Bool)

(assert (=> bm!183437 m!3272209))

(declare-fun m!3272211 () Bool)

(assert (=> b!2844207 m!3272211))

(declare-fun m!3272213 () Bool)

(assert (=> bm!183439 m!3272213))

(assert (=> bm!183325 d!824875))

(declare-fun d!824877 () Bool)

(assert (=> d!824877 (= (inv!17 (value!162840 t1!27)) (= (charsToBigInt!1 (text!37534 (value!162840 t1!27))) (value!162832 (value!162840 t1!27))))))

(declare-fun bs!519180 () Bool)

(assert (= bs!519180 d!824877))

(declare-fun m!3272215 () Bool)

(assert (=> bs!519180 m!3272215))

(assert (=> b!2843399 d!824877))

(declare-fun d!824879 () Bool)

(declare-fun nullableFct!795 (Regex!8459) Bool)

(assert (=> d!824879 (= (nullable!2623 (reg!8788 lt!1011995)) (nullableFct!795 (reg!8788 lt!1011995)))))

(declare-fun bs!519181 () Bool)

(assert (= bs!519181 d!824879))

(declare-fun m!3272217 () Bool)

(assert (=> bs!519181 m!3272217))

(assert (=> b!2843441 d!824879))

(declare-fun d!824881 () Bool)

(assert (=> d!824881 (= (inv!15 (value!162840 t1!27)) (= (charsToBigInt!0 (text!37535 (value!162840 t1!27)) 0) (value!162835 (value!162840 t1!27))))))

(declare-fun bs!519182 () Bool)

(assert (= bs!519182 d!824881))

(declare-fun m!3272219 () Bool)

(assert (=> bs!519182 m!3272219))

(assert (=> b!2843397 d!824881))

(declare-fun d!824883 () Bool)

(declare-fun c!459085 () Bool)

(assert (=> d!824883 (= c!459085 ((_ is Node!10452) (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27)))))))

(declare-fun e!1801936 () Bool)

(assert (=> d!824883 (= (inv!45700 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27)))) e!1801936)))

(declare-fun b!2844241 () Bool)

(assert (=> b!2844241 (= e!1801936 (inv!45705 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27)))))))

(declare-fun b!2844242 () Bool)

(declare-fun e!1801937 () Bool)

(assert (=> b!2844242 (= e!1801936 e!1801937)))

(declare-fun res!1183178 () Bool)

(assert (=> b!2844242 (= res!1183178 (not ((_ is Leaf!15905) (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27))))))))

(assert (=> b!2844242 (=> res!1183178 e!1801937)))

(declare-fun b!2844243 () Bool)

(assert (=> b!2844243 (= e!1801937 (inv!45706 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27)))))))

(assert (= (and d!824883 c!459085) b!2844241))

(assert (= (and d!824883 (not c!459085)) b!2844242))

(assert (= (and b!2844242 (not res!1183178)) b!2844243))

(declare-fun m!3272221 () Bool)

(assert (=> b!2844241 m!3272221))

(declare-fun m!3272223 () Bool)

(assert (=> b!2844243 m!3272223))

(assert (=> b!2843450 d!824883))

(declare-fun bs!519184 () Bool)

(declare-fun d!824887 () Bool)

(assert (= bs!519184 (and d!824887 d!824783)))

(declare-fun lambda!104376 () Int)

(assert (=> bs!519184 (= (and (= (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (toChars!6977 (transformation!5068 (rule!7496 t2!27)))) (= (toValue!7118 (transformation!5068 (rule!7496 t1!27))) (toValue!7118 (transformation!5068 (rule!7496 t2!27))))) (= lambda!104376 lambda!104371))))

(declare-fun bs!519185 () Bool)

(assert (= bs!519185 (and d!824887 d!824799)))

(assert (=> bs!519185 (= (and (= (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (toChars!6977 (transformation!5068 (h!39118 rules!1139)))) (= (toValue!7118 (transformation!5068 (rule!7496 t1!27))) (toValue!7118 (transformation!5068 (h!39118 rules!1139))))) (= lambda!104376 lambda!104372))))

(assert (=> d!824887 true))

(assert (=> d!824887 (< (dynLambda!14194 order!18045 (toChars!6977 (transformation!5068 (rule!7496 t1!27)))) (dynLambda!14195 order!18047 lambda!104376))))

(assert (=> d!824887 true))

(assert (=> d!824887 (< (dynLambda!14186 order!18033 (toValue!7118 (transformation!5068 (rule!7496 t1!27)))) (dynLambda!14195 order!18047 lambda!104376))))

(assert (=> d!824887 (= (semiInverseModEq!2115 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (toValue!7118 (transformation!5068 (rule!7496 t1!27)))) (Forall!1250 lambda!104376))))

(declare-fun bs!519186 () Bool)

(assert (= bs!519186 d!824887))

(declare-fun m!3272225 () Bool)

(assert (=> bs!519186 m!3272225))

(assert (=> d!824601 d!824887))

(declare-fun d!824889 () Bool)

(declare-fun lt!1012200 () Bool)

(assert (=> d!824889 (= lt!1012200 (isEmpty!18556 (list!12557 (_2!19897 lt!1012023))))))

(assert (=> d!824889 (= lt!1012200 (isEmpty!18557 (c!458900 (_2!19897 lt!1012023))))))

(assert (=> d!824889 (= (isEmpty!18552 (_2!19897 lt!1012023)) lt!1012200)))

(declare-fun bs!519187 () Bool)

(assert (= bs!519187 d!824889))

(declare-fun m!3272227 () Bool)

(assert (=> bs!519187 m!3272227))

(assert (=> bs!519187 m!3272227))

(declare-fun m!3272229 () Bool)

(assert (=> bs!519187 m!3272229))

(declare-fun m!3272231 () Bool)

(assert (=> bs!519187 m!3272231))

(assert (=> b!2843403 d!824889))

(declare-fun d!824891 () Bool)

(assert (=> d!824891 true))

(declare-fun lt!1012203 () Bool)

(assert (=> d!824891 (= lt!1012203 (rulesValidInductive!1735 thiss!11361 rules!1139))))

(declare-fun lambda!104379 () Int)

(declare-fun forall!6924 (List!33822 Int) Bool)

(assert (=> d!824891 (= lt!1012203 (forall!6924 rules!1139 lambda!104379))))

(assert (=> d!824891 (= (rulesValid!1883 thiss!11361 rules!1139) lt!1012203)))

(declare-fun bs!519188 () Bool)

(assert (= bs!519188 d!824891))

(assert (=> bs!519188 m!3271627))

(declare-fun m!3272233 () Bool)

(assert (=> bs!519188 m!3272233))

(assert (=> d!824557 d!824891))

(declare-fun b!2844246 () Bool)

(declare-fun e!1801938 () Bool)

(assert (=> b!2844246 (= e!1801938 tp_is_empty!14687)))

(declare-fun b!2844247 () Bool)

(declare-fun tp!911400 () Bool)

(declare-fun tp!911401 () Bool)

(assert (=> b!2844247 (= e!1801938 (and tp!911400 tp!911401))))

(assert (=> b!2843589 (= tp!911294 e!1801938)))

(declare-fun b!2844248 () Bool)

(declare-fun tp!911402 () Bool)

(assert (=> b!2844248 (= e!1801938 tp!911402)))

(declare-fun b!2844249 () Bool)

(declare-fun tp!911399 () Bool)

(declare-fun tp!911403 () Bool)

(assert (=> b!2844249 (= e!1801938 (and tp!911399 tp!911403))))

(assert (= (and b!2843589 ((_ is ElementMatch!8459) (regex!5068 (h!39118 (t!232761 rules!1139))))) b!2844246))

(assert (= (and b!2843589 ((_ is Concat!13758) (regex!5068 (h!39118 (t!232761 rules!1139))))) b!2844247))

(assert (= (and b!2843589 ((_ is Star!8459) (regex!5068 (h!39118 (t!232761 rules!1139))))) b!2844248))

(assert (= (and b!2843589 ((_ is Union!8459) (regex!5068 (h!39118 (t!232761 rules!1139))))) b!2844249))

(declare-fun b!2844252 () Bool)

(declare-fun b_free!82569 () Bool)

(declare-fun b_next!83273 () Bool)

(assert (=> b!2844252 (= b_free!82569 (not b_next!83273))))

(declare-fun tp!911407 () Bool)

(declare-fun b_and!208787 () Bool)

(assert (=> b!2844252 (= tp!911407 b_and!208787)))

(declare-fun b_free!82571 () Bool)

(declare-fun b_next!83275 () Bool)

(assert (=> b!2844252 (= b_free!82571 (not b_next!83275))))

(declare-fun t!232821 () Bool)

(declare-fun tb!155065 () Bool)

(assert (=> (and b!2844252 (= (toChars!6977 (transformation!5068 (h!39118 (t!232761 (t!232761 rules!1139))))) (toChars!6977 (transformation!5068 (rule!7496 t1!27)))) t!232821) tb!155065))

(declare-fun result!193512 () Bool)

(assert (= result!193512 result!193472))

(assert (=> d!824567 t!232821))

(declare-fun t!232823 () Bool)

(declare-fun tb!155067 () Bool)

(assert (=> (and b!2844252 (= (toChars!6977 (transformation!5068 (h!39118 (t!232761 (t!232761 rules!1139))))) (toChars!6977 (transformation!5068 (rule!7496 t2!27)))) t!232823) tb!155067))

(declare-fun result!193514 () Bool)

(assert (= result!193514 result!193480))

(assert (=> d!824585 t!232823))

(assert (=> b!2843519 t!232821))

(assert (=> b!2843523 t!232823))

(declare-fun b_and!208789 () Bool)

(declare-fun tp!911405 () Bool)

(assert (=> b!2844252 (= tp!911405 (and (=> t!232821 result!193512) (=> t!232823 result!193514) b_and!208789))))

(declare-fun e!1801941 () Bool)

(assert (=> b!2844252 (= e!1801941 (and tp!911407 tp!911405))))

(declare-fun tp!911406 () Bool)

(declare-fun e!1801939 () Bool)

(declare-fun b!2844251 () Bool)

(assert (=> b!2844251 (= e!1801939 (and tp!911406 (inv!45693 (tag!5572 (h!39118 (t!232761 (t!232761 rules!1139))))) (inv!45697 (transformation!5068 (h!39118 (t!232761 (t!232761 rules!1139))))) e!1801941))))

(declare-fun b!2844250 () Bool)

(declare-fun e!1801940 () Bool)

(declare-fun tp!911404 () Bool)

(assert (=> b!2844250 (= e!1801940 (and e!1801939 tp!911404))))

(assert (=> b!2843588 (= tp!911292 e!1801940)))

(assert (= b!2844251 b!2844252))

(assert (= b!2844250 b!2844251))

(assert (= (and b!2843588 ((_ is Cons!33698) (t!232761 (t!232761 rules!1139)))) b!2844250))

(declare-fun m!3272235 () Bool)

(assert (=> b!2844251 m!3272235))

(declare-fun m!3272237 () Bool)

(assert (=> b!2844251 m!3272237))

(declare-fun b!2844253 () Bool)

(declare-fun e!1801943 () Bool)

(declare-fun tp!911408 () Bool)

(assert (=> b!2844253 (= e!1801943 (and tp_is_empty!14687 tp!911408))))

(assert (=> b!2843574 (= tp!911277 e!1801943)))

(assert (= (and b!2843574 ((_ is Cons!33696) (t!232759 (originalCharacters!5800 t1!27)))) b!2844253))

(declare-fun b!2844254 () Bool)

(declare-fun e!1801944 () Bool)

(assert (=> b!2844254 (= e!1801944 tp_is_empty!14687)))

(declare-fun b!2844255 () Bool)

(declare-fun tp!911410 () Bool)

(declare-fun tp!911411 () Bool)

(assert (=> b!2844255 (= e!1801944 (and tp!911410 tp!911411))))

(assert (=> b!2843594 (= tp!911296 e!1801944)))

(declare-fun b!2844256 () Bool)

(declare-fun tp!911412 () Bool)

(assert (=> b!2844256 (= e!1801944 tp!911412)))

(declare-fun b!2844257 () Bool)

(declare-fun tp!911409 () Bool)

(declare-fun tp!911413 () Bool)

(assert (=> b!2844257 (= e!1801944 (and tp!911409 tp!911413))))

(assert (= (and b!2843594 ((_ is ElementMatch!8459) (regOne!17431 (regex!5068 (rule!7496 t1!27))))) b!2844254))

(assert (= (and b!2843594 ((_ is Concat!13758) (regOne!17431 (regex!5068 (rule!7496 t1!27))))) b!2844255))

(assert (= (and b!2843594 ((_ is Star!8459) (regOne!17431 (regex!5068 (rule!7496 t1!27))))) b!2844256))

(assert (= (and b!2843594 ((_ is Union!8459) (regOne!17431 (regex!5068 (rule!7496 t1!27))))) b!2844257))

(declare-fun b!2844258 () Bool)

(declare-fun e!1801945 () Bool)

(assert (=> b!2844258 (= e!1801945 tp_is_empty!14687)))

(declare-fun b!2844259 () Bool)

(declare-fun tp!911415 () Bool)

(declare-fun tp!911416 () Bool)

(assert (=> b!2844259 (= e!1801945 (and tp!911415 tp!911416))))

(assert (=> b!2843594 (= tp!911300 e!1801945)))

(declare-fun b!2844260 () Bool)

(declare-fun tp!911417 () Bool)

(assert (=> b!2844260 (= e!1801945 tp!911417)))

(declare-fun b!2844261 () Bool)

(declare-fun tp!911414 () Bool)

(declare-fun tp!911418 () Bool)

(assert (=> b!2844261 (= e!1801945 (and tp!911414 tp!911418))))

(assert (= (and b!2843594 ((_ is ElementMatch!8459) (regTwo!17431 (regex!5068 (rule!7496 t1!27))))) b!2844258))

(assert (= (and b!2843594 ((_ is Concat!13758) (regTwo!17431 (regex!5068 (rule!7496 t1!27))))) b!2844259))

(assert (= (and b!2843594 ((_ is Star!8459) (regTwo!17431 (regex!5068 (rule!7496 t1!27))))) b!2844260))

(assert (= (and b!2843594 ((_ is Union!8459) (regTwo!17431 (regex!5068 (rule!7496 t1!27))))) b!2844261))

(declare-fun b!2844270 () Bool)

(declare-fun tp!911425 () Bool)

(declare-fun e!1801950 () Bool)

(declare-fun tp!911427 () Bool)

(assert (=> b!2844270 (= e!1801950 (and (inv!45700 (left!25392 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27))))) tp!911427 (inv!45700 (right!25722 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27))))) tp!911425))))

(declare-fun b!2844272 () Bool)

(declare-fun e!1801951 () Bool)

(declare-fun tp!911426 () Bool)

(assert (=> b!2844272 (= e!1801951 tp!911426)))

(declare-fun b!2844271 () Bool)

(declare-fun inv!45707 (IArray!20909) Bool)

(assert (=> b!2844271 (= e!1801950 (and (inv!45707 (xs!13564 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27))))) e!1801951))))

(assert (=> b!2843498 (= tp!911218 (and (inv!45700 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27)))) e!1801950))))

(assert (= (and b!2843498 ((_ is Node!10452) (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27))))) b!2844270))

(assert (= b!2844271 b!2844272))

(assert (= (and b!2843498 ((_ is Leaf!15905) (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t2!27))) (value!162840 t2!27))))) b!2844271))

(declare-fun m!3272239 () Bool)

(assert (=> b!2844270 m!3272239))

(declare-fun m!3272241 () Bool)

(assert (=> b!2844270 m!3272241))

(declare-fun m!3272243 () Bool)

(assert (=> b!2844271 m!3272243))

(assert (=> b!2843498 m!3271449))

(declare-fun b!2844273 () Bool)

(declare-fun e!1801952 () Bool)

(assert (=> b!2844273 (= e!1801952 tp_is_empty!14687)))

(declare-fun b!2844274 () Bool)

(declare-fun tp!911429 () Bool)

(declare-fun tp!911430 () Bool)

(assert (=> b!2844274 (= e!1801952 (and tp!911429 tp!911430))))

(assert (=> b!2843570 (= tp!911268 e!1801952)))

(declare-fun b!2844275 () Bool)

(declare-fun tp!911431 () Bool)

(assert (=> b!2844275 (= e!1801952 tp!911431)))

(declare-fun b!2844276 () Bool)

(declare-fun tp!911428 () Bool)

(declare-fun tp!911432 () Bool)

(assert (=> b!2844276 (= e!1801952 (and tp!911428 tp!911432))))

(assert (= (and b!2843570 ((_ is ElementMatch!8459) (regOne!17431 (regex!5068 (rule!7496 t2!27))))) b!2844273))

(assert (= (and b!2843570 ((_ is Concat!13758) (regOne!17431 (regex!5068 (rule!7496 t2!27))))) b!2844274))

(assert (= (and b!2843570 ((_ is Star!8459) (regOne!17431 (regex!5068 (rule!7496 t2!27))))) b!2844275))

(assert (= (and b!2843570 ((_ is Union!8459) (regOne!17431 (regex!5068 (rule!7496 t2!27))))) b!2844276))

(declare-fun b!2844277 () Bool)

(declare-fun e!1801953 () Bool)

(assert (=> b!2844277 (= e!1801953 tp_is_empty!14687)))

(declare-fun b!2844278 () Bool)

(declare-fun tp!911434 () Bool)

(declare-fun tp!911435 () Bool)

(assert (=> b!2844278 (= e!1801953 (and tp!911434 tp!911435))))

(assert (=> b!2843570 (= tp!911272 e!1801953)))

(declare-fun b!2844279 () Bool)

(declare-fun tp!911436 () Bool)

(assert (=> b!2844279 (= e!1801953 tp!911436)))

(declare-fun b!2844280 () Bool)

(declare-fun tp!911433 () Bool)

(declare-fun tp!911437 () Bool)

(assert (=> b!2844280 (= e!1801953 (and tp!911433 tp!911437))))

(assert (= (and b!2843570 ((_ is ElementMatch!8459) (regTwo!17431 (regex!5068 (rule!7496 t2!27))))) b!2844277))

(assert (= (and b!2843570 ((_ is Concat!13758) (regTwo!17431 (regex!5068 (rule!7496 t2!27))))) b!2844278))

(assert (= (and b!2843570 ((_ is Star!8459) (regTwo!17431 (regex!5068 (rule!7496 t2!27))))) b!2844279))

(assert (= (and b!2843570 ((_ is Union!8459) (regTwo!17431 (regex!5068 (rule!7496 t2!27))))) b!2844280))

(declare-fun b!2844281 () Bool)

(declare-fun e!1801954 () Bool)

(assert (=> b!2844281 (= e!1801954 tp_is_empty!14687)))

(declare-fun b!2844282 () Bool)

(declare-fun tp!911439 () Bool)

(declare-fun tp!911440 () Bool)

(assert (=> b!2844282 (= e!1801954 (and tp!911439 tp!911440))))

(assert (=> b!2843593 (= tp!911299 e!1801954)))

(declare-fun b!2844283 () Bool)

(declare-fun tp!911441 () Bool)

(assert (=> b!2844283 (= e!1801954 tp!911441)))

(declare-fun b!2844284 () Bool)

(declare-fun tp!911438 () Bool)

(declare-fun tp!911442 () Bool)

(assert (=> b!2844284 (= e!1801954 (and tp!911438 tp!911442))))

(assert (= (and b!2843593 ((_ is ElementMatch!8459) (reg!8788 (regex!5068 (rule!7496 t1!27))))) b!2844281))

(assert (= (and b!2843593 ((_ is Concat!13758) (reg!8788 (regex!5068 (rule!7496 t1!27))))) b!2844282))

(assert (= (and b!2843593 ((_ is Star!8459) (reg!8788 (regex!5068 (rule!7496 t1!27))))) b!2844283))

(assert (= (and b!2843593 ((_ is Union!8459) (reg!8788 (regex!5068 (rule!7496 t1!27))))) b!2844284))

(declare-fun b!2844285 () Bool)

(declare-fun e!1801955 () Bool)

(assert (=> b!2844285 (= e!1801955 tp_is_empty!14687)))

(declare-fun b!2844286 () Bool)

(declare-fun tp!911444 () Bool)

(declare-fun tp!911445 () Bool)

(assert (=> b!2844286 (= e!1801955 (and tp!911444 tp!911445))))

(assert (=> b!2843592 (= tp!911297 e!1801955)))

(declare-fun b!2844287 () Bool)

(declare-fun tp!911446 () Bool)

(assert (=> b!2844287 (= e!1801955 tp!911446)))

(declare-fun b!2844288 () Bool)

(declare-fun tp!911443 () Bool)

(declare-fun tp!911447 () Bool)

(assert (=> b!2844288 (= e!1801955 (and tp!911443 tp!911447))))

(assert (= (and b!2843592 ((_ is ElementMatch!8459) (regOne!17430 (regex!5068 (rule!7496 t1!27))))) b!2844285))

(assert (= (and b!2843592 ((_ is Concat!13758) (regOne!17430 (regex!5068 (rule!7496 t1!27))))) b!2844286))

(assert (= (and b!2843592 ((_ is Star!8459) (regOne!17430 (regex!5068 (rule!7496 t1!27))))) b!2844287))

(assert (= (and b!2843592 ((_ is Union!8459) (regOne!17430 (regex!5068 (rule!7496 t1!27))))) b!2844288))

(declare-fun b!2844289 () Bool)

(declare-fun e!1801956 () Bool)

(assert (=> b!2844289 (= e!1801956 tp_is_empty!14687)))

(declare-fun b!2844290 () Bool)

(declare-fun tp!911449 () Bool)

(declare-fun tp!911450 () Bool)

(assert (=> b!2844290 (= e!1801956 (and tp!911449 tp!911450))))

(assert (=> b!2843592 (= tp!911298 e!1801956)))

(declare-fun b!2844291 () Bool)

(declare-fun tp!911451 () Bool)

(assert (=> b!2844291 (= e!1801956 tp!911451)))

(declare-fun b!2844292 () Bool)

(declare-fun tp!911448 () Bool)

(declare-fun tp!911452 () Bool)

(assert (=> b!2844292 (= e!1801956 (and tp!911448 tp!911452))))

(assert (= (and b!2843592 ((_ is ElementMatch!8459) (regTwo!17430 (regex!5068 (rule!7496 t1!27))))) b!2844289))

(assert (= (and b!2843592 ((_ is Concat!13758) (regTwo!17430 (regex!5068 (rule!7496 t1!27))))) b!2844290))

(assert (= (and b!2843592 ((_ is Star!8459) (regTwo!17430 (regex!5068 (rule!7496 t1!27))))) b!2844291))

(assert (= (and b!2843592 ((_ is Union!8459) (regTwo!17430 (regex!5068 (rule!7496 t1!27))))) b!2844292))

(declare-fun b!2844293 () Bool)

(declare-fun e!1801957 () Bool)

(assert (=> b!2844293 (= e!1801957 tp_is_empty!14687)))

(declare-fun b!2844294 () Bool)

(declare-fun tp!911454 () Bool)

(declare-fun tp!911455 () Bool)

(assert (=> b!2844294 (= e!1801957 (and tp!911454 tp!911455))))

(assert (=> b!2843569 (= tp!911271 e!1801957)))

(declare-fun b!2844295 () Bool)

(declare-fun tp!911456 () Bool)

(assert (=> b!2844295 (= e!1801957 tp!911456)))

(declare-fun b!2844296 () Bool)

(declare-fun tp!911453 () Bool)

(declare-fun tp!911457 () Bool)

(assert (=> b!2844296 (= e!1801957 (and tp!911453 tp!911457))))

(assert (= (and b!2843569 ((_ is ElementMatch!8459) (reg!8788 (regex!5068 (rule!7496 t2!27))))) b!2844293))

(assert (= (and b!2843569 ((_ is Concat!13758) (reg!8788 (regex!5068 (rule!7496 t2!27))))) b!2844294))

(assert (= (and b!2843569 ((_ is Star!8459) (reg!8788 (regex!5068 (rule!7496 t2!27))))) b!2844295))

(assert (= (and b!2843569 ((_ is Union!8459) (reg!8788 (regex!5068 (rule!7496 t2!27))))) b!2844296))

(declare-fun b!2844297 () Bool)

(declare-fun e!1801958 () Bool)

(assert (=> b!2844297 (= e!1801958 tp_is_empty!14687)))

(declare-fun b!2844298 () Bool)

(declare-fun tp!911459 () Bool)

(declare-fun tp!911460 () Bool)

(assert (=> b!2844298 (= e!1801958 (and tp!911459 tp!911460))))

(assert (=> b!2843578 (= tp!911278 e!1801958)))

(declare-fun b!2844299 () Bool)

(declare-fun tp!911461 () Bool)

(assert (=> b!2844299 (= e!1801958 tp!911461)))

(declare-fun b!2844300 () Bool)

(declare-fun tp!911458 () Bool)

(declare-fun tp!911462 () Bool)

(assert (=> b!2844300 (= e!1801958 (and tp!911458 tp!911462))))

(assert (= (and b!2843578 ((_ is ElementMatch!8459) (regOne!17431 (regex!5068 (h!39118 rules!1139))))) b!2844297))

(assert (= (and b!2843578 ((_ is Concat!13758) (regOne!17431 (regex!5068 (h!39118 rules!1139))))) b!2844298))

(assert (= (and b!2843578 ((_ is Star!8459) (regOne!17431 (regex!5068 (h!39118 rules!1139))))) b!2844299))

(assert (= (and b!2843578 ((_ is Union!8459) (regOne!17431 (regex!5068 (h!39118 rules!1139))))) b!2844300))

(declare-fun b!2844301 () Bool)

(declare-fun e!1801959 () Bool)

(assert (=> b!2844301 (= e!1801959 tp_is_empty!14687)))

(declare-fun b!2844302 () Bool)

(declare-fun tp!911464 () Bool)

(declare-fun tp!911465 () Bool)

(assert (=> b!2844302 (= e!1801959 (and tp!911464 tp!911465))))

(assert (=> b!2843578 (= tp!911282 e!1801959)))

(declare-fun b!2844303 () Bool)

(declare-fun tp!911466 () Bool)

(assert (=> b!2844303 (= e!1801959 tp!911466)))

(declare-fun b!2844304 () Bool)

(declare-fun tp!911463 () Bool)

(declare-fun tp!911467 () Bool)

(assert (=> b!2844304 (= e!1801959 (and tp!911463 tp!911467))))

(assert (= (and b!2843578 ((_ is ElementMatch!8459) (regTwo!17431 (regex!5068 (h!39118 rules!1139))))) b!2844301))

(assert (= (and b!2843578 ((_ is Concat!13758) (regTwo!17431 (regex!5068 (h!39118 rules!1139))))) b!2844302))

(assert (= (and b!2843578 ((_ is Star!8459) (regTwo!17431 (regex!5068 (h!39118 rules!1139))))) b!2844303))

(assert (= (and b!2843578 ((_ is Union!8459) (regTwo!17431 (regex!5068 (h!39118 rules!1139))))) b!2844304))

(declare-fun b!2844305 () Bool)

(declare-fun e!1801960 () Bool)

(assert (=> b!2844305 (= e!1801960 tp_is_empty!14687)))

(declare-fun b!2844306 () Bool)

(declare-fun tp!911469 () Bool)

(declare-fun tp!911470 () Bool)

(assert (=> b!2844306 (= e!1801960 (and tp!911469 tp!911470))))

(assert (=> b!2843568 (= tp!911269 e!1801960)))

(declare-fun b!2844307 () Bool)

(declare-fun tp!911471 () Bool)

(assert (=> b!2844307 (= e!1801960 tp!911471)))

(declare-fun b!2844308 () Bool)

(declare-fun tp!911468 () Bool)

(declare-fun tp!911472 () Bool)

(assert (=> b!2844308 (= e!1801960 (and tp!911468 tp!911472))))

(assert (= (and b!2843568 ((_ is ElementMatch!8459) (regOne!17430 (regex!5068 (rule!7496 t2!27))))) b!2844305))

(assert (= (and b!2843568 ((_ is Concat!13758) (regOne!17430 (regex!5068 (rule!7496 t2!27))))) b!2844306))

(assert (= (and b!2843568 ((_ is Star!8459) (regOne!17430 (regex!5068 (rule!7496 t2!27))))) b!2844307))

(assert (= (and b!2843568 ((_ is Union!8459) (regOne!17430 (regex!5068 (rule!7496 t2!27))))) b!2844308))

(declare-fun b!2844309 () Bool)

(declare-fun e!1801961 () Bool)

(assert (=> b!2844309 (= e!1801961 tp_is_empty!14687)))

(declare-fun b!2844310 () Bool)

(declare-fun tp!911474 () Bool)

(declare-fun tp!911475 () Bool)

(assert (=> b!2844310 (= e!1801961 (and tp!911474 tp!911475))))

(assert (=> b!2843568 (= tp!911270 e!1801961)))

(declare-fun b!2844311 () Bool)

(declare-fun tp!911476 () Bool)

(assert (=> b!2844311 (= e!1801961 tp!911476)))

(declare-fun b!2844312 () Bool)

(declare-fun tp!911473 () Bool)

(declare-fun tp!911477 () Bool)

(assert (=> b!2844312 (= e!1801961 (and tp!911473 tp!911477))))

(assert (= (and b!2843568 ((_ is ElementMatch!8459) (regTwo!17430 (regex!5068 (rule!7496 t2!27))))) b!2844309))

(assert (= (and b!2843568 ((_ is Concat!13758) (regTwo!17430 (regex!5068 (rule!7496 t2!27))))) b!2844310))

(assert (= (and b!2843568 ((_ is Star!8459) (regTwo!17430 (regex!5068 (rule!7496 t2!27))))) b!2844311))

(assert (= (and b!2843568 ((_ is Union!8459) (regTwo!17430 (regex!5068 (rule!7496 t2!27))))) b!2844312))

(declare-fun b!2844313 () Bool)

(declare-fun tp!911480 () Bool)

(declare-fun e!1801962 () Bool)

(declare-fun tp!911478 () Bool)

(assert (=> b!2844313 (= e!1801962 (and (inv!45700 (left!25392 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27))))) tp!911480 (inv!45700 (right!25722 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27))))) tp!911478))))

(declare-fun b!2844315 () Bool)

(declare-fun e!1801963 () Bool)

(declare-fun tp!911479 () Bool)

(assert (=> b!2844315 (= e!1801963 tp!911479)))

(declare-fun b!2844314 () Bool)

(assert (=> b!2844314 (= e!1801962 (and (inv!45707 (xs!13564 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27))))) e!1801963))))

(assert (=> b!2843450 (= tp!911217 (and (inv!45700 (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27)))) e!1801962))))

(assert (= (and b!2843450 ((_ is Node!10452) (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27))))) b!2844313))

(assert (= b!2844314 b!2844315))

(assert (= (and b!2843450 ((_ is Leaf!15905) (c!458900 (dynLambda!14185 (toChars!6977 (transformation!5068 (rule!7496 t1!27))) (value!162840 t1!27))))) b!2844314))

(declare-fun m!3272245 () Bool)

(assert (=> b!2844313 m!3272245))

(declare-fun m!3272247 () Bool)

(assert (=> b!2844313 m!3272247))

(declare-fun m!3272249 () Bool)

(assert (=> b!2844314 m!3272249))

(assert (=> b!2843450 m!3271355))

(declare-fun b!2844316 () Bool)

(declare-fun e!1801964 () Bool)

(assert (=> b!2844316 (= e!1801964 tp_is_empty!14687)))

(declare-fun b!2844317 () Bool)

(declare-fun tp!911482 () Bool)

(declare-fun tp!911483 () Bool)

(assert (=> b!2844317 (= e!1801964 (and tp!911482 tp!911483))))

(assert (=> b!2843577 (= tp!911281 e!1801964)))

(declare-fun b!2844318 () Bool)

(declare-fun tp!911484 () Bool)

(assert (=> b!2844318 (= e!1801964 tp!911484)))

(declare-fun b!2844319 () Bool)

(declare-fun tp!911481 () Bool)

(declare-fun tp!911485 () Bool)

(assert (=> b!2844319 (= e!1801964 (and tp!911481 tp!911485))))

(assert (= (and b!2843577 ((_ is ElementMatch!8459) (reg!8788 (regex!5068 (h!39118 rules!1139))))) b!2844316))

(assert (= (and b!2843577 ((_ is Concat!13758) (reg!8788 (regex!5068 (h!39118 rules!1139))))) b!2844317))

(assert (= (and b!2843577 ((_ is Star!8459) (reg!8788 (regex!5068 (h!39118 rules!1139))))) b!2844318))

(assert (= (and b!2843577 ((_ is Union!8459) (reg!8788 (regex!5068 (h!39118 rules!1139))))) b!2844319))

(declare-fun b!2844320 () Bool)

(declare-fun e!1801965 () Bool)

(assert (=> b!2844320 (= e!1801965 tp_is_empty!14687)))

(declare-fun b!2844321 () Bool)

(declare-fun tp!911487 () Bool)

(declare-fun tp!911488 () Bool)

(assert (=> b!2844321 (= e!1801965 (and tp!911487 tp!911488))))

(assert (=> b!2843576 (= tp!911279 e!1801965)))

(declare-fun b!2844322 () Bool)

(declare-fun tp!911489 () Bool)

(assert (=> b!2844322 (= e!1801965 tp!911489)))

(declare-fun b!2844323 () Bool)

(declare-fun tp!911486 () Bool)

(declare-fun tp!911490 () Bool)

(assert (=> b!2844323 (= e!1801965 (and tp!911486 tp!911490))))

(assert (= (and b!2843576 ((_ is ElementMatch!8459) (regOne!17430 (regex!5068 (h!39118 rules!1139))))) b!2844320))

(assert (= (and b!2843576 ((_ is Concat!13758) (regOne!17430 (regex!5068 (h!39118 rules!1139))))) b!2844321))

(assert (= (and b!2843576 ((_ is Star!8459) (regOne!17430 (regex!5068 (h!39118 rules!1139))))) b!2844322))

(assert (= (and b!2843576 ((_ is Union!8459) (regOne!17430 (regex!5068 (h!39118 rules!1139))))) b!2844323))

(declare-fun b!2844324 () Bool)

(declare-fun e!1801966 () Bool)

(assert (=> b!2844324 (= e!1801966 tp_is_empty!14687)))

(declare-fun b!2844325 () Bool)

(declare-fun tp!911492 () Bool)

(declare-fun tp!911493 () Bool)

(assert (=> b!2844325 (= e!1801966 (and tp!911492 tp!911493))))

(assert (=> b!2843576 (= tp!911280 e!1801966)))

(declare-fun b!2844326 () Bool)

(declare-fun tp!911494 () Bool)

(assert (=> b!2844326 (= e!1801966 tp!911494)))

(declare-fun b!2844327 () Bool)

(declare-fun tp!911491 () Bool)

(declare-fun tp!911495 () Bool)

(assert (=> b!2844327 (= e!1801966 (and tp!911491 tp!911495))))

(assert (= (and b!2843576 ((_ is ElementMatch!8459) (regTwo!17430 (regex!5068 (h!39118 rules!1139))))) b!2844324))

(assert (= (and b!2843576 ((_ is Concat!13758) (regTwo!17430 (regex!5068 (h!39118 rules!1139))))) b!2844325))

(assert (= (and b!2843576 ((_ is Star!8459) (regTwo!17430 (regex!5068 (h!39118 rules!1139))))) b!2844326))

(assert (= (and b!2843576 ((_ is Union!8459) (regTwo!17430 (regex!5068 (h!39118 rules!1139))))) b!2844327))

(declare-fun b!2844328 () Bool)

(declare-fun e!1801967 () Bool)

(declare-fun tp!911496 () Bool)

(assert (=> b!2844328 (= e!1801967 (and tp_is_empty!14687 tp!911496))))

(assert (=> b!2843554 (= tp!911251 e!1801967)))

(assert (= (and b!2843554 ((_ is Cons!33696) (t!232759 (originalCharacters!5800 t2!27)))) b!2844328))

(declare-fun b_lambda!85533 () Bool)

(assert (= b_lambda!85527 (or d!824569 b_lambda!85533)))

(declare-fun bs!519189 () Bool)

(declare-fun d!824893 () Bool)

(assert (= bs!519189 (and d!824893 d!824569)))

(assert (=> bs!519189 (= (dynLambda!14191 lambda!104335 (h!39118 rules!1139)) (regex!5068 (h!39118 rules!1139)))))

(assert (=> b!2843786 d!824893))

(check-sat (not b!2844257) (not b!2844299) (not d!824743) (not b!2844274) (not b_next!83255) (not bm!183437) (not b!2843665) (not b!2844119) (not d!824749) (not b!2843664) (not b!2844256) (not d!824665) (not b!2844279) (not d!824651) (not d!824633) (not b_next!83265) (not d!824867) (not d!824775) (not d!824877) (not b!2844249) (not b!2844255) (not b!2844122) (not d!824847) (not d!824745) (not d!824661) (not d!824671) (not d!824771) (not d!824865) (not b!2844025) (not b!2843498) b_and!208769 (not bm!183424) (not bm!183421) (not b!2844133) (not b!2844284) (not b!2844135) (not b!2843681) (not b!2843759) (not b!2844310) (not d!824871) (not b!2844328) (not b!2844291) (not b!2843861) (not b!2844304) (not b!2844306) (not b!2844241) (not b!2844278) (not b!2844250) (not b!2844202) tp_is_empty!14687 (not b!2843675) (not b!2844321) (not b!2844138) (not b!2844259) (not d!824747) (not d!824653) b_and!208773 (not b!2844134) (not b!2844251) (not bm!183413) (not bm!183407) (not b!2843936) (not b!2844260) b_and!208719 (not d!824783) (not d!824879) (not b!2844151) (not b!2843921) (not b!2843786) (not b!2843667) (not d!824841) (not d!824839) (not d!824607) (not b!2843751) (not b!2843879) (not b!2844295) (not d!824835) (not d!824769) (not d!824869) (not bm!183412) (not b!2844207) (not b!2843757) (not b!2843754) (not d!824785) (not d!824853) (not b!2844200) (not b!2843873) (not d!824799) (not b!2844307) (not bm!183422) (not b!2844314) (not b!2844087) (not d!824751) (not b!2843935) (not b!2844313) (not b!2843871) (not b!2844080) (not b_lambda!85521) (not b!2844311) (not b!2844111) (not b!2844083) b_and!208789 (not b!2843937) b_and!208715 (not b_next!83267) (not b_next!83259) (not b_lambda!85519) (not bm!183414) (not b!2843450) (not d!824641) (not b!2844292) (not d!824741) (not b!2843653) (not b!2844247) (not b!2843994) (not d!824663) (not d!824739) (not b!2844294) (not b!2844325) (not b!2844326) (not d!824845) (not b!2843648) (not b!2844296) b_and!208781 (not d!824659) (not b_next!83275) (not b!2843721) (not bm!183427) (not b!2844303) (not d!824639) (not b_lambda!85533) (not b!2843989) (not b!2844315) (not b_next!83249) (not bm!183417) (not b!2843860) (not d!824889) (not b!2843928) (not b!2844118) (not d!824797) (not b_lambda!85523) (not b!2844248) (not bm!183408) (not b!2843651) (not b!2843652) b_and!208723 (not b!2844243) b_and!208779 (not b!2843753) (not d!824757) (not d!824863) (not b!2844283) (not b!2844131) (not d!824837) (not b!2844136) (not b!2843912) (not b!2843650) (not b!2843755) (not b!2844123) (not b!2844317) (not b!2844282) (not b!2844323) (not d!824635) (not b!2844081) (not b!2843756) b_and!208771 (not d!824861) (not b!2843649) (not b!2843909) (not b!2844275) (not b_next!83257) (not d!824637) (not d!824891) (not d!824887) (not b!2844300) (not d!824851) (not bm!183439) (not b!2844271) (not b!2844308) (not b!2844327) (not d!824737) (not b!2844024) (not b!2844086) (not b!2843990) (not b!2844132) (not b!2844312) (not b!2844253) (not b_next!83253) (not b!2844270) (not b!2844121) (not b!2844261) (not d!824657) (not b!2844286) (not b!2843668) (not b!2844298) (not b!2844272) (not b_lambda!85525) (not b!2844280) (not d!824763) (not b!2844287) (not b_next!83251) (not d!824881) (not b!2844276) (not b!2843876) (not b!2844318) (not d!824843) (not b!2844319) (not b!2844112) (not d!824645) b_and!208787 (not b!2844302) (not d!824849) (not b_next!83273) (not b!2844288) (not b!2844085) (not b!2844322) (not b!2844290) (not b!2843993))
(check-sat (not b_next!83255) (not b_next!83265) b_and!208769 b_and!208773 b_and!208719 (not b_next!83249) b_and!208723 b_and!208779 b_and!208771 (not b_next!83257) (not b_next!83253) (not b_next!83251) b_and!208789 b_and!208715 (not b_next!83267) (not b_next!83259) (not b_next!83275) b_and!208781 b_and!208787 (not b_next!83273))
