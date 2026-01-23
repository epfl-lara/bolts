; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277370 () Bool)

(assert start!277370)

(declare-fun b!2847949 () Bool)

(declare-fun b_free!82805 () Bool)

(declare-fun b_next!83509 () Bool)

(assert (=> b!2847949 (= b_free!82805 (not b_next!83509))))

(declare-fun tp!914165 () Bool)

(declare-fun b_and!209047 () Bool)

(assert (=> b!2847949 (= tp!914165 b_and!209047)))

(declare-fun b_free!82807 () Bool)

(declare-fun b_next!83511 () Bool)

(assert (=> b!2847949 (= b_free!82807 (not b_next!83511))))

(declare-fun tp!914168 () Bool)

(declare-fun b_and!209049 () Bool)

(assert (=> b!2847949 (= tp!914168 b_and!209049)))

(declare-fun b!2847954 () Bool)

(declare-fun b_free!82809 () Bool)

(declare-fun b_next!83513 () Bool)

(assert (=> b!2847954 (= b_free!82809 (not b_next!83513))))

(declare-fun tp!914164 () Bool)

(declare-fun b_and!209051 () Bool)

(assert (=> b!2847954 (= tp!914164 b_and!209051)))

(declare-fun b_free!82811 () Bool)

(declare-fun b_next!83515 () Bool)

(assert (=> b!2847954 (= b_free!82811 (not b_next!83515))))

(declare-fun tp!914169 () Bool)

(declare-fun b_and!209053 () Bool)

(assert (=> b!2847954 (= tp!914169 b_and!209053)))

(declare-fun tp!914166 () Bool)

(declare-fun e!1804687 () Bool)

(declare-fun b!2847948 () Bool)

(declare-fun e!1804690 () Bool)

(declare-datatypes ((List!33957 0))(
  ( (Nil!33833) (Cons!33833 (h!39253 (_ BitVec 16)) (t!232982 List!33957)) )
))
(declare-datatypes ((TokenValue!5313 0))(
  ( (FloatLiteralValue!10626 (text!37636 List!33957)) (TokenValueExt!5312 (__x!22423 Int)) (Broken!26565 (value!163269 List!33957)) (Object!5436) (End!5313) (Def!5313) (Underscore!5313) (Match!5313) (Else!5313) (Error!5313) (Case!5313) (If!5313) (Extends!5313) (Abstract!5313) (Class!5313) (Val!5313) (DelimiterValue!10626 (del!5373 List!33957)) (KeywordValue!5319 (value!163270 List!33957)) (CommentValue!10626 (value!163271 List!33957)) (WhitespaceValue!10626 (value!163272 List!33957)) (IndentationValue!5313 (value!163273 List!33957)) (String!37180) (Int32!5313) (Broken!26566 (value!163274 List!33957)) (Boolean!5314) (Unit!47579) (OperatorValue!5316 (op!5373 List!33957)) (IdentifierValue!10626 (value!163275 List!33957)) (IdentifierValue!10627 (value!163276 List!33957)) (WhitespaceValue!10627 (value!163277 List!33957)) (True!10626) (False!10626) (Broken!26567 (value!163278 List!33957)) (Broken!26568 (value!163279 List!33957)) (True!10627) (RightBrace!5313) (RightBracket!5313) (Colon!5313) (Null!5313) (Comma!5313) (LeftBracket!5313) (False!10627) (LeftBrace!5313) (ImaginaryLiteralValue!5313 (text!37637 List!33957)) (StringLiteralValue!15939 (value!163280 List!33957)) (EOFValue!5313 (value!163281 List!33957)) (IdentValue!5313 (value!163282 List!33957)) (DelimiterValue!10627 (value!163283 List!33957)) (DedentValue!5313 (value!163284 List!33957)) (NewLineValue!5313 (value!163285 List!33957)) (IntegerValue!15939 (value!163286 (_ BitVec 32)) (text!37638 List!33957)) (IntegerValue!15940 (value!163287 Int) (text!37639 List!33957)) (Times!5313) (Or!5313) (Equal!5313) (Minus!5313) (Broken!26569 (value!163288 List!33957)) (And!5313) (Div!5313) (LessEqual!5313) (Mod!5313) (Concat!13811) (Not!5313) (Plus!5313) (SpaceValue!5313 (value!163289 List!33957)) (IntegerValue!15941 (value!163290 Int) (text!37640 List!33957)) (StringLiteralValue!15940 (text!37641 List!33957)) (FloatLiteralValue!10627 (text!37642 List!33957)) (BytesLiteralValue!5313 (value!163291 List!33957)) (CommentValue!10627 (value!163292 List!33957)) (StringLiteralValue!15941 (value!163293 List!33957)) (ErrorTokenValue!5313 (msg!5374 List!33957)) )
))
(declare-datatypes ((C!17178 0))(
  ( (C!17179 (val!10623 Int)) )
))
(declare-datatypes ((List!33958 0))(
  ( (Nil!33834) (Cons!33834 (h!39254 C!17178) (t!232983 List!33958)) )
))
(declare-datatypes ((IArray!20987 0))(
  ( (IArray!20988 (innerList!10551 List!33958)) )
))
(declare-datatypes ((Regex!8498 0))(
  ( (ElementMatch!8498 (c!459469 C!17178)) (Concat!13812 (regOne!17508 Regex!8498) (regTwo!17508 Regex!8498)) (EmptyExpr!8498) (Star!8498 (reg!8827 Regex!8498)) (EmptyLang!8498) (Union!8498 (regOne!17509 Regex!8498) (regTwo!17509 Regex!8498)) )
))
(declare-datatypes ((Conc!10491 0))(
  ( (Node!10491 (left!25471 Conc!10491) (right!25801 Conc!10491) (csize!21212 Int) (cheight!10702 Int)) (Leaf!15964 (xs!13609 IArray!20987) (csize!21213 Int)) (Empty!10491) )
))
(declare-datatypes ((BalanceConc!20620 0))(
  ( (BalanceConc!20621 (c!459470 Conc!10491)) )
))
(declare-datatypes ((String!37181 0))(
  ( (String!37182 (value!163294 String)) )
))
(declare-datatypes ((TokenValueInjection!10054 0))(
  ( (TokenValueInjection!10055 (toValue!7139 Int) (toChars!6998 Int)) )
))
(declare-datatypes ((Rule!9966 0))(
  ( (Rule!9967 (regex!5083 Regex!8498) (tag!5587 String!37181) (isSeparator!5083 Bool) (transformation!5083 TokenValueInjection!10054)) )
))
(declare-datatypes ((List!33959 0))(
  ( (Nil!33835) (Cons!33835 (h!39255 Rule!9966) (t!232984 List!33959)) )
))
(declare-fun rules!1039 () List!33959)

(declare-fun inv!45868 (String!37181) Bool)

(declare-fun inv!45871 (TokenValueInjection!10054) Bool)

(assert (=> b!2847948 (= e!1804687 (and tp!914166 (inv!45868 (tag!5587 (h!39255 rules!1039))) (inv!45871 (transformation!5083 (h!39255 rules!1039))) e!1804690))))

(assert (=> b!2847949 (= e!1804690 (and tp!914165 tp!914168))))

(declare-fun b!2847950 () Bool)

(declare-fun res!1184002 () Bool)

(declare-fun e!1804694 () Bool)

(assert (=> b!2847950 (=> (not res!1184002) (not e!1804694))))

(declare-datatypes ((LexerInterface!4672 0))(
  ( (LexerInterfaceExt!4669 (__x!22424 Int)) (Lexer!4670) )
))
(declare-fun thiss!10983 () LexerInterface!4672)

(declare-fun rs!188 () List!33959)

(declare-fun rulesValidInductive!1748 (LexerInterface!4672 List!33959) Bool)

(assert (=> b!2847950 (= res!1184002 (rulesValidInductive!1748 thiss!10983 rs!188))))

(declare-fun b!2847951 () Bool)

(declare-fun res!1184000 () Bool)

(assert (=> b!2847951 (=> (not res!1184000) (not e!1804694))))

(assert (=> b!2847951 (= res!1184000 (rulesValidInductive!1748 thiss!10983 rules!1039))))

(declare-fun b!2847952 () Bool)

(declare-fun res!1184001 () Bool)

(assert (=> b!2847952 (=> (not res!1184001) (not e!1804694))))

(assert (=> b!2847952 (= res!1184001 (is-Nil!33835 rs!188))))

(declare-fun b!2847953 () Bool)

(declare-fun e!1804691 () Bool)

(declare-fun e!1804693 () Bool)

(declare-fun tp!914163 () Bool)

(assert (=> b!2847953 (= e!1804691 (and e!1804693 tp!914163))))

(declare-fun res!1184003 () Bool)

(assert (=> start!277370 (=> (not res!1184003) (not e!1804694))))

(assert (=> start!277370 (= res!1184003 (is-Lexer!4670 thiss!10983))))

(assert (=> start!277370 e!1804694))

(assert (=> start!277370 true))

(declare-fun e!1804692 () Bool)

(assert (=> start!277370 e!1804692))

(assert (=> start!277370 e!1804691))

(declare-fun e!1804688 () Bool)

(assert (=> b!2847954 (= e!1804688 (and tp!914164 tp!914169))))

(declare-fun b!2847955 () Bool)

(declare-fun tp!914167 () Bool)

(assert (=> b!2847955 (= e!1804692 (and e!1804687 tp!914167))))

(declare-fun tp!914170 () Bool)

(declare-fun b!2847956 () Bool)

(assert (=> b!2847956 (= e!1804693 (and tp!914170 (inv!45868 (tag!5587 (h!39255 rs!188))) (inv!45871 (transformation!5083 (h!39255 rs!188))) e!1804688))))

(declare-fun lambda!104577 () Int)

(declare-fun lambda!104578 () Int)

(declare-fun b!2847957 () Bool)

(declare-datatypes ((List!33960 0))(
  ( (Nil!33836) (Cons!33836 (h!39256 Regex!8498) (t!232985 List!33960)) )
))
(declare-fun forall!6944 (List!33960 Int) Bool)

(declare-fun map!7262 (List!33959 Int) List!33960)

(assert (=> b!2847957 (= e!1804694 (not (forall!6944 (map!7262 rs!188 lambda!104577) lambda!104578)))))

(assert (= (and start!277370 res!1184003) b!2847951))

(assert (= (and b!2847951 res!1184000) b!2847950))

(assert (= (and b!2847950 res!1184002) b!2847952))

(assert (= (and b!2847952 res!1184001) b!2847957))

(assert (= b!2847948 b!2847949))

(assert (= b!2847955 b!2847948))

(assert (= (and start!277370 (is-Cons!33835 rules!1039)) b!2847955))

(assert (= b!2847956 b!2847954))

(assert (= b!2847953 b!2847956))

(assert (= (and start!277370 (is-Cons!33835 rs!188)) b!2847953))

(declare-fun m!3275179 () Bool)

(assert (=> b!2847957 m!3275179))

(assert (=> b!2847957 m!3275179))

(declare-fun m!3275181 () Bool)

(assert (=> b!2847957 m!3275181))

(declare-fun m!3275183 () Bool)

(assert (=> b!2847948 m!3275183))

(declare-fun m!3275185 () Bool)

(assert (=> b!2847948 m!3275185))

(declare-fun m!3275187 () Bool)

(assert (=> b!2847956 m!3275187))

(declare-fun m!3275189 () Bool)

(assert (=> b!2847956 m!3275189))

(declare-fun m!3275191 () Bool)

(assert (=> b!2847951 m!3275191))

(declare-fun m!3275193 () Bool)

(assert (=> b!2847950 m!3275193))

(push 1)

(assert (not b!2847953))

(assert (not b_next!83515))

(assert (not b_next!83509))

(assert (not b!2847955))

(assert (not b!2847950))

(assert (not b_next!83511))

(assert b_and!209047)

(assert (not b!2847956))

(assert b_and!209053)

(assert (not b!2847948))

(assert b_and!209051)

(assert (not b_next!83513))

(assert (not b!2847957))

(assert b_and!209049)

(assert (not b!2847951))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!83515))

(assert (not b_next!83509))

(assert b_and!209051)

(assert (not b_next!83511))

(assert b_and!209047)

(assert (not b_next!83513))

(assert b_and!209053)

(assert b_and!209049)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!825585 () Bool)

(assert (=> d!825585 (= (inv!45868 (tag!5587 (h!39255 rules!1039))) (= (mod (str.len (value!163294 (tag!5587 (h!39255 rules!1039)))) 2) 0))))

(assert (=> b!2847948 d!825585))

(declare-fun d!825589 () Bool)

(declare-fun res!1184024 () Bool)

(declare-fun e!1804730 () Bool)

(assert (=> d!825589 (=> (not res!1184024) (not e!1804730))))

(declare-fun semiInverseModEq!2121 (Int Int) Bool)

(assert (=> d!825589 (= res!1184024 (semiInverseModEq!2121 (toChars!6998 (transformation!5083 (h!39255 rules!1039))) (toValue!7139 (transformation!5083 (h!39255 rules!1039)))))))

(assert (=> d!825589 (= (inv!45871 (transformation!5083 (h!39255 rules!1039))) e!1804730)))

(declare-fun b!2847996 () Bool)

(declare-fun equivClasses!2020 (Int Int) Bool)

(assert (=> b!2847996 (= e!1804730 (equivClasses!2020 (toChars!6998 (transformation!5083 (h!39255 rules!1039))) (toValue!7139 (transformation!5083 (h!39255 rules!1039)))))))

(assert (= (and d!825589 res!1184024) b!2847996))

(declare-fun m!3275215 () Bool)

(assert (=> d!825589 m!3275215))

(declare-fun m!3275217 () Bool)

(assert (=> b!2847996 m!3275217))

(assert (=> b!2847948 d!825589))

(declare-fun d!825591 () Bool)

(assert (=> d!825591 true))

(declare-fun lt!1013000 () Bool)

(declare-fun lambda!104587 () Int)

(declare-fun forall!6946 (List!33959 Int) Bool)

(assert (=> d!825591 (= lt!1013000 (forall!6946 rs!188 lambda!104587))))

(declare-fun e!1804738 () Bool)

(assert (=> d!825591 (= lt!1013000 e!1804738)))

(declare-fun res!1184029 () Bool)

(assert (=> d!825591 (=> res!1184029 e!1804738)))

(assert (=> d!825591 (= res!1184029 (not (is-Cons!33835 rs!188)))))

(assert (=> d!825591 (= (rulesValidInductive!1748 thiss!10983 rs!188) lt!1013000)))

(declare-fun b!2848007 () Bool)

(declare-fun e!1804739 () Bool)

(assert (=> b!2848007 (= e!1804738 e!1804739)))

(declare-fun res!1184030 () Bool)

(assert (=> b!2848007 (=> (not res!1184030) (not e!1804739))))

(declare-fun ruleValid!1610 (LexerInterface!4672 Rule!9966) Bool)

(assert (=> b!2848007 (= res!1184030 (ruleValid!1610 thiss!10983 (h!39255 rs!188)))))

(declare-fun b!2848008 () Bool)

(assert (=> b!2848008 (= e!1804739 (rulesValidInductive!1748 thiss!10983 (t!232984 rs!188)))))

(assert (= (and d!825591 (not res!1184029)) b!2848007))

(assert (= (and b!2848007 res!1184030) b!2848008))

(declare-fun m!3275229 () Bool)

(assert (=> d!825591 m!3275229))

(declare-fun m!3275231 () Bool)

(assert (=> b!2848007 m!3275231))

(declare-fun m!3275233 () Bool)

(assert (=> b!2848008 m!3275233))

(assert (=> b!2847950 d!825591))

(declare-fun bs!519996 () Bool)

(declare-fun d!825595 () Bool)

(assert (= bs!519996 (and d!825595 d!825591)))

(declare-fun lambda!104588 () Int)

(assert (=> bs!519996 (= lambda!104588 lambda!104587)))

(assert (=> d!825595 true))

(declare-fun lt!1013001 () Bool)

(assert (=> d!825595 (= lt!1013001 (forall!6946 rules!1039 lambda!104588))))

(declare-fun e!1804740 () Bool)

(assert (=> d!825595 (= lt!1013001 e!1804740)))

(declare-fun res!1184031 () Bool)

(assert (=> d!825595 (=> res!1184031 e!1804740)))

(assert (=> d!825595 (= res!1184031 (not (is-Cons!33835 rules!1039)))))

(assert (=> d!825595 (= (rulesValidInductive!1748 thiss!10983 rules!1039) lt!1013001)))

(declare-fun b!2848011 () Bool)

(declare-fun e!1804741 () Bool)

(assert (=> b!2848011 (= e!1804740 e!1804741)))

(declare-fun res!1184032 () Bool)

(assert (=> b!2848011 (=> (not res!1184032) (not e!1804741))))

(assert (=> b!2848011 (= res!1184032 (ruleValid!1610 thiss!10983 (h!39255 rules!1039)))))

(declare-fun b!2848012 () Bool)

(assert (=> b!2848012 (= e!1804741 (rulesValidInductive!1748 thiss!10983 (t!232984 rules!1039)))))

(assert (= (and d!825595 (not res!1184031)) b!2848011))

(assert (= (and b!2848011 res!1184032) b!2848012))

(declare-fun m!3275235 () Bool)

(assert (=> d!825595 m!3275235))

(declare-fun m!3275237 () Bool)

(assert (=> b!2848011 m!3275237))

(declare-fun m!3275239 () Bool)

(assert (=> b!2848012 m!3275239))

(assert (=> b!2847951 d!825595))

(declare-fun d!825597 () Bool)

(assert (=> d!825597 (= (inv!45868 (tag!5587 (h!39255 rs!188))) (= (mod (str.len (value!163294 (tag!5587 (h!39255 rs!188)))) 2) 0))))

(assert (=> b!2847956 d!825597))

(declare-fun d!825599 () Bool)

(declare-fun res!1184033 () Bool)

(declare-fun e!1804742 () Bool)

(assert (=> d!825599 (=> (not res!1184033) (not e!1804742))))

(assert (=> d!825599 (= res!1184033 (semiInverseModEq!2121 (toChars!6998 (transformation!5083 (h!39255 rs!188))) (toValue!7139 (transformation!5083 (h!39255 rs!188)))))))

(assert (=> d!825599 (= (inv!45871 (transformation!5083 (h!39255 rs!188))) e!1804742)))

(declare-fun b!2848013 () Bool)

(assert (=> b!2848013 (= e!1804742 (equivClasses!2020 (toChars!6998 (transformation!5083 (h!39255 rs!188))) (toValue!7139 (transformation!5083 (h!39255 rs!188)))))))

(assert (= (and d!825599 res!1184033) b!2848013))

(declare-fun m!3275241 () Bool)

(assert (=> d!825599 m!3275241))

(declare-fun m!3275243 () Bool)

(assert (=> b!2848013 m!3275243))

(assert (=> b!2847956 d!825599))

(declare-fun d!825601 () Bool)

(declare-fun res!1184038 () Bool)

(declare-fun e!1804747 () Bool)

(assert (=> d!825601 (=> res!1184038 e!1804747)))

(assert (=> d!825601 (= res!1184038 (is-Nil!33836 (map!7262 rs!188 lambda!104577)))))

(assert (=> d!825601 (= (forall!6944 (map!7262 rs!188 lambda!104577) lambda!104578) e!1804747)))

(declare-fun b!2848018 () Bool)

(declare-fun e!1804748 () Bool)

(assert (=> b!2848018 (= e!1804747 e!1804748)))

(declare-fun res!1184039 () Bool)

(assert (=> b!2848018 (=> (not res!1184039) (not e!1804748))))

(declare-fun dynLambda!14206 (Int Regex!8498) Bool)

(assert (=> b!2848018 (= res!1184039 (dynLambda!14206 lambda!104578 (h!39256 (map!7262 rs!188 lambda!104577))))))

(declare-fun b!2848019 () Bool)

(assert (=> b!2848019 (= e!1804748 (forall!6944 (t!232985 (map!7262 rs!188 lambda!104577)) lambda!104578))))

(assert (= (and d!825601 (not res!1184038)) b!2848018))

(assert (= (and b!2848018 res!1184039) b!2848019))

(declare-fun b_lambda!85575 () Bool)

(assert (=> (not b_lambda!85575) (not b!2848018)))

(declare-fun m!3275245 () Bool)

(assert (=> b!2848018 m!3275245))

(declare-fun m!3275247 () Bool)

(assert (=> b!2848019 m!3275247))

(assert (=> b!2847957 d!825601))

(declare-fun d!825603 () Bool)

(declare-fun lt!1013006 () List!33960)

(declare-fun size!26254 (List!33960) Int)

(declare-fun size!26255 (List!33959) Int)

(assert (=> d!825603 (= (size!26254 lt!1013006) (size!26255 rs!188))))

(declare-fun e!1804755 () List!33960)

(assert (=> d!825603 (= lt!1013006 e!1804755)))

(declare-fun c!459478 () Bool)

(assert (=> d!825603 (= c!459478 (is-Nil!33835 rs!188))))

(assert (=> d!825603 (= (map!7262 rs!188 lambda!104577) lt!1013006)))

(declare-fun b!2848028 () Bool)

(assert (=> b!2848028 (= e!1804755 Nil!33836)))

(declare-fun b!2848029 () Bool)

(declare-fun $colon$colon!586 (List!33960 Regex!8498) List!33960)

(declare-fun dynLambda!14207 (Int Rule!9966) Regex!8498)

(assert (=> b!2848029 (= e!1804755 ($colon$colon!586 (map!7262 (t!232984 rs!188) lambda!104577) (dynLambda!14207 lambda!104577 (h!39255 rs!188))))))

(assert (= (and d!825603 c!459478) b!2848028))

(assert (= (and d!825603 (not c!459478)) b!2848029))

(declare-fun b_lambda!85577 () Bool)

(assert (=> (not b_lambda!85577) (not b!2848029)))

(declare-fun m!3275249 () Bool)

(assert (=> d!825603 m!3275249))

(declare-fun m!3275251 () Bool)

(assert (=> d!825603 m!3275251))

(declare-fun m!3275253 () Bool)

(assert (=> b!2848029 m!3275253))

(declare-fun m!3275255 () Bool)

(assert (=> b!2848029 m!3275255))

(assert (=> b!2848029 m!3275253))

(assert (=> b!2848029 m!3275255))

(declare-fun m!3275257 () Bool)

(assert (=> b!2848029 m!3275257))

(assert (=> b!2847957 d!825603))

(declare-fun b!2848040 () Bool)

(declare-fun b_free!82821 () Bool)

(declare-fun b_next!83525 () Bool)

(assert (=> b!2848040 (= b_free!82821 (not b_next!83525))))

(declare-fun tp!914205 () Bool)

(declare-fun b_and!209063 () Bool)

(assert (=> b!2848040 (= tp!914205 b_and!209063)))

(declare-fun b_free!82823 () Bool)

(declare-fun b_next!83527 () Bool)

(assert (=> b!2848040 (= b_free!82823 (not b_next!83527))))

(declare-fun tp!914206 () Bool)

(declare-fun b_and!209065 () Bool)

(assert (=> b!2848040 (= tp!914206 b_and!209065)))

(declare-fun e!1804766 () Bool)

(assert (=> b!2848040 (= e!1804766 (and tp!914205 tp!914206))))

(declare-fun tp!914203 () Bool)

(declare-fun b!2848039 () Bool)

(declare-fun e!1804767 () Bool)

(assert (=> b!2848039 (= e!1804767 (and tp!914203 (inv!45868 (tag!5587 (h!39255 (t!232984 rs!188)))) (inv!45871 (transformation!5083 (h!39255 (t!232984 rs!188)))) e!1804766))))

(declare-fun b!2848038 () Bool)

(declare-fun e!1804765 () Bool)

(declare-fun tp!914204 () Bool)

(assert (=> b!2848038 (= e!1804765 (and e!1804767 tp!914204))))

(assert (=> b!2847953 (= tp!914163 e!1804765)))

(assert (= b!2848039 b!2848040))

(assert (= b!2848038 b!2848039))

(assert (= (and b!2847953 (is-Cons!33835 (t!232984 rs!188))) b!2848038))

(declare-fun m!3275259 () Bool)

(assert (=> b!2848039 m!3275259))

(declare-fun m!3275261 () Bool)

(assert (=> b!2848039 m!3275261))

(declare-fun e!1804772 () Bool)

(assert (=> b!2847948 (= tp!914166 e!1804772)))

(declare-fun b!2848055 () Bool)

(declare-fun tp_is_empty!14737 () Bool)

(assert (=> b!2848055 (= e!1804772 tp_is_empty!14737)))

(declare-fun b!2848057 () Bool)

(declare-fun tp!914219 () Bool)

(assert (=> b!2848057 (= e!1804772 tp!914219)))

(declare-fun b!2848056 () Bool)

(declare-fun tp!914218 () Bool)

(declare-fun tp!914220 () Bool)

(assert (=> b!2848056 (= e!1804772 (and tp!914218 tp!914220))))

(declare-fun b!2848058 () Bool)

(declare-fun tp!914217 () Bool)

(declare-fun tp!914221 () Bool)

(assert (=> b!2848058 (= e!1804772 (and tp!914217 tp!914221))))

(assert (= (and b!2847948 (is-ElementMatch!8498 (regex!5083 (h!39255 rules!1039)))) b!2848055))

(assert (= (and b!2847948 (is-Concat!13812 (regex!5083 (h!39255 rules!1039)))) b!2848056))

(assert (= (and b!2847948 (is-Star!8498 (regex!5083 (h!39255 rules!1039)))) b!2848057))

(assert (= (and b!2847948 (is-Union!8498 (regex!5083 (h!39255 rules!1039)))) b!2848058))

(declare-fun b!2848061 () Bool)

(declare-fun b_free!82825 () Bool)

(declare-fun b_next!83529 () Bool)

(assert (=> b!2848061 (= b_free!82825 (not b_next!83529))))

(declare-fun tp!914224 () Bool)

(declare-fun b_and!209067 () Bool)

(assert (=> b!2848061 (= tp!914224 b_and!209067)))

(declare-fun b_free!82827 () Bool)

(declare-fun b_next!83531 () Bool)

(assert (=> b!2848061 (= b_free!82827 (not b_next!83531))))

(declare-fun tp!914225 () Bool)

(declare-fun b_and!209069 () Bool)

(assert (=> b!2848061 (= tp!914225 b_and!209069)))

(declare-fun e!1804775 () Bool)

(assert (=> b!2848061 (= e!1804775 (and tp!914224 tp!914225))))

(declare-fun tp!914222 () Bool)

(declare-fun e!1804776 () Bool)

(declare-fun b!2848060 () Bool)

(assert (=> b!2848060 (= e!1804776 (and tp!914222 (inv!45868 (tag!5587 (h!39255 (t!232984 rules!1039)))) (inv!45871 (transformation!5083 (h!39255 (t!232984 rules!1039)))) e!1804775))))

(declare-fun b!2848059 () Bool)

(declare-fun e!1804774 () Bool)

(declare-fun tp!914223 () Bool)

(assert (=> b!2848059 (= e!1804774 (and e!1804776 tp!914223))))

(assert (=> b!2847955 (= tp!914167 e!1804774)))

(assert (= b!2848060 b!2848061))

(assert (= b!2848059 b!2848060))

(assert (= (and b!2847955 (is-Cons!33835 (t!232984 rules!1039))) b!2848059))

(declare-fun m!3275263 () Bool)

(assert (=> b!2848060 m!3275263))

(declare-fun m!3275265 () Bool)

(assert (=> b!2848060 m!3275265))

(declare-fun e!1804777 () Bool)

(assert (=> b!2847956 (= tp!914170 e!1804777)))

(declare-fun b!2848062 () Bool)

(assert (=> b!2848062 (= e!1804777 tp_is_empty!14737)))

(declare-fun b!2848064 () Bool)

(declare-fun tp!914228 () Bool)

(assert (=> b!2848064 (= e!1804777 tp!914228)))

(declare-fun b!2848063 () Bool)

(declare-fun tp!914227 () Bool)

(declare-fun tp!914229 () Bool)

(assert (=> b!2848063 (= e!1804777 (and tp!914227 tp!914229))))

(declare-fun b!2848065 () Bool)

(declare-fun tp!914226 () Bool)

(declare-fun tp!914230 () Bool)

(assert (=> b!2848065 (= e!1804777 (and tp!914226 tp!914230))))

(assert (= (and b!2847956 (is-ElementMatch!8498 (regex!5083 (h!39255 rs!188)))) b!2848062))

(assert (= (and b!2847956 (is-Concat!13812 (regex!5083 (h!39255 rs!188)))) b!2848063))

(assert (= (and b!2847956 (is-Star!8498 (regex!5083 (h!39255 rs!188)))) b!2848064))

(assert (= (and b!2847956 (is-Union!8498 (regex!5083 (h!39255 rs!188)))) b!2848065))

(declare-fun b_lambda!85579 () Bool)

(assert (= b_lambda!85575 (or b!2847957 b_lambda!85579)))

(declare-fun bs!519997 () Bool)

(declare-fun d!825607 () Bool)

(assert (= bs!519997 (and d!825607 b!2847957)))

(declare-fun validRegex!3373 (Regex!8498) Bool)

(assert (=> bs!519997 (= (dynLambda!14206 lambda!104578 (h!39256 (map!7262 rs!188 lambda!104577))) (validRegex!3373 (h!39256 (map!7262 rs!188 lambda!104577))))))

(declare-fun m!3275273 () Bool)

(assert (=> bs!519997 m!3275273))

(assert (=> b!2848018 d!825607))

(declare-fun b_lambda!85581 () Bool)

(assert (= b_lambda!85577 (or b!2847957 b_lambda!85581)))

(declare-fun bs!519998 () Bool)

(declare-fun d!825609 () Bool)

(assert (= bs!519998 (and d!825609 b!2847957)))

(assert (=> bs!519998 (= (dynLambda!14207 lambda!104577 (h!39255 rs!188)) (regex!5083 (h!39255 rs!188)))))

(assert (=> b!2848029 d!825609))

(push 1)

(assert (not b_lambda!85581))

(assert (not b!2848056))

(assert b_and!209065)

(assert (not b!2848013))

(assert (not b!2848060))

(assert b_and!209063)

(assert (not b_next!83525))

(assert (not b_next!83531))

(assert (not b!2848038))

(assert (not b!2848019))

(assert (not b_next!83515))

(assert (not d!825603))

(assert tp_is_empty!14737)

(assert (not b_next!83509))

(assert (not b!2848029))

(assert (not b!2848012))

(assert b_and!209069)

(assert b_and!209067)

(assert (not b!2848057))

(assert (not bs!519997))

(assert (not d!825589))

(assert (not b!2848064))

(assert (not d!825591))

(assert b_and!209051)

(assert (not b!2848007))

(assert (not b_next!83511))

(assert (not d!825595))

(assert b_and!209047)

(assert (not b!2848039))

(assert (not b_next!83529))

(assert (not b_next!83513))

(assert (not b_lambda!85579))

(assert (not b!2848063))

(assert (not b!2848058))

(assert b_and!209053)

(assert (not b!2848059))

(assert (not b_next!83527))

(assert (not b!2848008))

(assert b_and!209049)

(assert (not d!825599))

(assert (not b!2848065))

(assert (not b!2848011))

(assert (not b!2847996))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!83531))

(assert (not b_next!83515))

(assert (not b_next!83509))

(assert b_and!209069)

(assert b_and!209067)

(assert b_and!209051)

(assert (not b_next!83511))

(assert (not b_next!83513))

(assert b_and!209065)

(assert b_and!209063)

(assert b_and!209049)

(assert (not b_next!83525))

(assert b_and!209047)

(assert (not b_next!83529))

(assert b_and!209053)

(assert (not b_next!83527))

(check-sat)

(pop 1)

