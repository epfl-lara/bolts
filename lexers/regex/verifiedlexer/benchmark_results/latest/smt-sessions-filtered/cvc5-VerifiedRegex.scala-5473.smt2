; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277394 () Bool)

(assert start!277394)

(declare-fun b!2848133 () Bool)

(declare-fun b_free!82837 () Bool)

(declare-fun b_next!83541 () Bool)

(assert (=> b!2848133 (= b_free!82837 (not b_next!83541))))

(declare-fun tp!914284 () Bool)

(declare-fun b_and!209079 () Bool)

(assert (=> b!2848133 (= tp!914284 b_and!209079)))

(declare-fun b_free!82839 () Bool)

(declare-fun b_next!83543 () Bool)

(assert (=> b!2848133 (= b_free!82839 (not b_next!83543))))

(declare-fun tp!914287 () Bool)

(declare-fun b_and!209081 () Bool)

(assert (=> b!2848133 (= tp!914287 b_and!209081)))

(declare-fun b!2848130 () Bool)

(declare-fun b_free!82841 () Bool)

(declare-fun b_next!83545 () Bool)

(assert (=> b!2848130 (= b_free!82841 (not b_next!83545))))

(declare-fun tp!914286 () Bool)

(declare-fun b_and!209083 () Bool)

(assert (=> b!2848130 (= tp!914286 b_and!209083)))

(declare-fun b_free!82843 () Bool)

(declare-fun b_next!83547 () Bool)

(assert (=> b!2848130 (= b_free!82843 (not b_next!83547))))

(declare-fun tp!914285 () Bool)

(declare-fun b_and!209085 () Bool)

(assert (=> b!2848130 (= tp!914285 b_and!209085)))

(declare-fun b!2848124 () Bool)

(declare-fun res!1184061 () Bool)

(declare-fun e!1804826 () Bool)

(assert (=> b!2848124 (=> (not res!1184061) (not e!1804826))))

(declare-datatypes ((LexerInterface!4674 0))(
  ( (LexerInterfaceExt!4671 (__x!22427 Int)) (Lexer!4672) )
))
(declare-fun thiss!10983 () LexerInterface!4674)

(declare-datatypes ((List!33965 0))(
  ( (Nil!33841) (Cons!33841 (h!39261 (_ BitVec 16)) (t!232990 List!33965)) )
))
(declare-datatypes ((TokenValue!5315 0))(
  ( (FloatLiteralValue!10630 (text!37650 List!33965)) (TokenValueExt!5314 (__x!22428 Int)) (Broken!26575 (value!163324 List!33965)) (Object!5438) (End!5315) (Def!5315) (Underscore!5315) (Match!5315) (Else!5315) (Error!5315) (Case!5315) (If!5315) (Extends!5315) (Abstract!5315) (Class!5315) (Val!5315) (DelimiterValue!10630 (del!5375 List!33965)) (KeywordValue!5321 (value!163325 List!33965)) (CommentValue!10630 (value!163326 List!33965)) (WhitespaceValue!10630 (value!163327 List!33965)) (IndentationValue!5315 (value!163328 List!33965)) (String!37190) (Int32!5315) (Broken!26576 (value!163329 List!33965)) (Boolean!5316) (Unit!47581) (OperatorValue!5318 (op!5375 List!33965)) (IdentifierValue!10630 (value!163330 List!33965)) (IdentifierValue!10631 (value!163331 List!33965)) (WhitespaceValue!10631 (value!163332 List!33965)) (True!10630) (False!10630) (Broken!26577 (value!163333 List!33965)) (Broken!26578 (value!163334 List!33965)) (True!10631) (RightBrace!5315) (RightBracket!5315) (Colon!5315) (Null!5315) (Comma!5315) (LeftBracket!5315) (False!10631) (LeftBrace!5315) (ImaginaryLiteralValue!5315 (text!37651 List!33965)) (StringLiteralValue!15945 (value!163335 List!33965)) (EOFValue!5315 (value!163336 List!33965)) (IdentValue!5315 (value!163337 List!33965)) (DelimiterValue!10631 (value!163338 List!33965)) (DedentValue!5315 (value!163339 List!33965)) (NewLineValue!5315 (value!163340 List!33965)) (IntegerValue!15945 (value!163341 (_ BitVec 32)) (text!37652 List!33965)) (IntegerValue!15946 (value!163342 Int) (text!37653 List!33965)) (Times!5315) (Or!5315) (Equal!5315) (Minus!5315) (Broken!26579 (value!163343 List!33965)) (And!5315) (Div!5315) (LessEqual!5315) (Mod!5315) (Concat!13815) (Not!5315) (Plus!5315) (SpaceValue!5315 (value!163344 List!33965)) (IntegerValue!15947 (value!163345 Int) (text!37654 List!33965)) (StringLiteralValue!15946 (text!37655 List!33965)) (FloatLiteralValue!10631 (text!37656 List!33965)) (BytesLiteralValue!5315 (value!163346 List!33965)) (CommentValue!10631 (value!163347 List!33965)) (StringLiteralValue!15947 (value!163348 List!33965)) (ErrorTokenValue!5315 (msg!5376 List!33965)) )
))
(declare-datatypes ((String!37191 0))(
  ( (String!37192 (value!163349 String)) )
))
(declare-datatypes ((C!17182 0))(
  ( (C!17183 (val!10625 Int)) )
))
(declare-datatypes ((List!33966 0))(
  ( (Nil!33842) (Cons!33842 (h!39262 C!17182) (t!232991 List!33966)) )
))
(declare-datatypes ((IArray!20991 0))(
  ( (IArray!20992 (innerList!10553 List!33966)) )
))
(declare-datatypes ((Regex!8500 0))(
  ( (ElementMatch!8500 (c!459479 C!17182)) (Concat!13816 (regOne!17512 Regex!8500) (regTwo!17512 Regex!8500)) (EmptyExpr!8500) (Star!8500 (reg!8829 Regex!8500)) (EmptyLang!8500) (Union!8500 (regOne!17513 Regex!8500) (regTwo!17513 Regex!8500)) )
))
(declare-datatypes ((Conc!10493 0))(
  ( (Node!10493 (left!25478 Conc!10493) (right!25808 Conc!10493) (csize!21216 Int) (cheight!10704 Int)) (Leaf!15967 (xs!13611 IArray!20991) (csize!21217 Int)) (Empty!10493) )
))
(declare-datatypes ((BalanceConc!20624 0))(
  ( (BalanceConc!20625 (c!459480 Conc!10493)) )
))
(declare-datatypes ((TokenValueInjection!10058 0))(
  ( (TokenValueInjection!10059 (toValue!7141 Int) (toChars!7000 Int)) )
))
(declare-datatypes ((Rule!9970 0))(
  ( (Rule!9971 (regex!5085 Regex!8500) (tag!5589 String!37191) (isSeparator!5085 Bool) (transformation!5085 TokenValueInjection!10058)) )
))
(declare-datatypes ((List!33967 0))(
  ( (Nil!33843) (Cons!33843 (h!39263 Rule!9970) (t!232992 List!33967)) )
))
(declare-fun rs!188 () List!33967)

(declare-fun rulesValidInductive!1750 (LexerInterface!4674 List!33967) Bool)

(assert (=> b!2848124 (= res!1184061 (rulesValidInductive!1750 thiss!10983 rs!188))))

(declare-fun b!2848125 () Bool)

(declare-fun res!1184063 () Bool)

(assert (=> b!2848125 (=> (not res!1184063) (not e!1804826))))

(declare-fun rules!1039 () List!33967)

(assert (=> b!2848125 (= res!1184063 (rulesValidInductive!1750 thiss!10983 rules!1039))))

(declare-fun b!2848126 () Bool)

(declare-fun e!1804830 () Bool)

(declare-fun e!1804828 () Bool)

(declare-fun tp!914283 () Bool)

(assert (=> b!2848126 (= e!1804830 (and e!1804828 tp!914283))))

(declare-fun b!2848127 () Bool)

(declare-fun res!1184062 () Bool)

(assert (=> b!2848127 (=> (not res!1184062) (not e!1804826))))

(assert (=> b!2848127 (= res!1184062 (not (is-Nil!33843 rs!188)))))

(declare-fun e!1804823 () Bool)

(declare-fun e!1804829 () Bool)

(declare-fun b!2848128 () Bool)

(declare-fun tp!914290 () Bool)

(declare-fun inv!45873 (String!37191) Bool)

(declare-fun inv!45876 (TokenValueInjection!10058) Bool)

(assert (=> b!2848128 (= e!1804823 (and tp!914290 (inv!45873 (tag!5589 (h!39263 rs!188))) (inv!45876 (transformation!5085 (h!39263 rs!188))) e!1804829))))

(declare-fun res!1184060 () Bool)

(assert (=> start!277394 (=> (not res!1184060) (not e!1804826))))

(assert (=> start!277394 (= res!1184060 (is-Lexer!4672 thiss!10983))))

(assert (=> start!277394 e!1804826))

(assert (=> start!277394 true))

(assert (=> start!277394 e!1804830))

(declare-fun e!1804822 () Bool)

(assert (=> start!277394 e!1804822))

(declare-fun b!2848129 () Bool)

(declare-fun ListPrimitiveSize!236 (List!33967) Int)

(assert (=> b!2848129 (= e!1804826 (>= (ListPrimitiveSize!236 (t!232992 rs!188)) (ListPrimitiveSize!236 rs!188)))))

(declare-fun e!1804825 () Bool)

(assert (=> b!2848130 (= e!1804825 (and tp!914286 tp!914285))))

(declare-fun b!2848131 () Bool)

(declare-fun tp!914289 () Bool)

(assert (=> b!2848131 (= e!1804822 (and e!1804823 tp!914289))))

(declare-fun b!2848132 () Bool)

(declare-fun tp!914288 () Bool)

(assert (=> b!2848132 (= e!1804828 (and tp!914288 (inv!45873 (tag!5589 (h!39263 rules!1039))) (inv!45876 (transformation!5085 (h!39263 rules!1039))) e!1804825))))

(assert (=> b!2848133 (= e!1804829 (and tp!914284 tp!914287))))

(assert (= (and start!277394 res!1184060) b!2848125))

(assert (= (and b!2848125 res!1184063) b!2848124))

(assert (= (and b!2848124 res!1184061) b!2848127))

(assert (= (and b!2848127 res!1184062) b!2848129))

(assert (= b!2848132 b!2848130))

(assert (= b!2848126 b!2848132))

(assert (= (and start!277394 (is-Cons!33843 rules!1039)) b!2848126))

(assert (= b!2848128 b!2848133))

(assert (= b!2848131 b!2848128))

(assert (= (and start!277394 (is-Cons!33843 rs!188)) b!2848131))

(declare-fun m!3275299 () Bool)

(assert (=> b!2848124 m!3275299))

(declare-fun m!3275301 () Bool)

(assert (=> b!2848132 m!3275301))

(declare-fun m!3275303 () Bool)

(assert (=> b!2848132 m!3275303))

(declare-fun m!3275305 () Bool)

(assert (=> b!2848128 m!3275305))

(declare-fun m!3275307 () Bool)

(assert (=> b!2848128 m!3275307))

(declare-fun m!3275309 () Bool)

(assert (=> b!2848129 m!3275309))

(declare-fun m!3275311 () Bool)

(assert (=> b!2848129 m!3275311))

(declare-fun m!3275313 () Bool)

(assert (=> b!2848125 m!3275313))

(push 1)

(assert (not b!2848131))

(assert (not b_next!83547))

(assert (not b_next!83543))

(assert (not b!2848124))

(assert (not b_next!83541))

(assert b_and!209083)

(assert (not b!2848129))

(assert b_and!209081)

(assert (not b!2848132))

(assert (not b!2848128))

(assert (not b!2848125))

(assert (not b!2848126))

(assert b_and!209085)

(assert (not b_next!83545))

(assert b_and!209079)

(check-sat)

(pop 1)

(push 1)

(assert b_and!209081)

(assert (not b_next!83547))

(assert (not b_next!83543))

(assert b_and!209085)

(assert (not b_next!83541))

(assert b_and!209083)

(assert (not b_next!83545))

(assert b_and!209079)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!825624 () Bool)

(declare-fun lt!1013011 () Int)

(assert (=> d!825624 (>= lt!1013011 0)))

(declare-fun e!1804860 () Int)

(assert (=> d!825624 (= lt!1013011 e!1804860)))

(declare-fun c!459485 () Bool)

(assert (=> d!825624 (= c!459485 (is-Nil!33843 (t!232992 rs!188)))))

(assert (=> d!825624 (= (ListPrimitiveSize!236 (t!232992 rs!188)) lt!1013011)))

(declare-fun b!2848168 () Bool)

(assert (=> b!2848168 (= e!1804860 0)))

(declare-fun b!2848169 () Bool)

(assert (=> b!2848169 (= e!1804860 (+ 1 (ListPrimitiveSize!236 (t!232992 (t!232992 rs!188)))))))

(assert (= (and d!825624 c!459485) b!2848168))

(assert (= (and d!825624 (not c!459485)) b!2848169))

(declare-fun m!3275331 () Bool)

(assert (=> b!2848169 m!3275331))

(assert (=> b!2848129 d!825624))

(declare-fun d!825626 () Bool)

(declare-fun lt!1013012 () Int)

(assert (=> d!825626 (>= lt!1013012 0)))

(declare-fun e!1804861 () Int)

(assert (=> d!825626 (= lt!1013012 e!1804861)))

(declare-fun c!459486 () Bool)

(assert (=> d!825626 (= c!459486 (is-Nil!33843 rs!188))))

(assert (=> d!825626 (= (ListPrimitiveSize!236 rs!188) lt!1013012)))

(declare-fun b!2848170 () Bool)

(assert (=> b!2848170 (= e!1804861 0)))

(declare-fun b!2848171 () Bool)

(assert (=> b!2848171 (= e!1804861 (+ 1 (ListPrimitiveSize!236 (t!232992 rs!188))))))

(assert (= (and d!825626 c!459486) b!2848170))

(assert (= (and d!825626 (not c!459486)) b!2848171))

(assert (=> b!2848171 m!3275309))

(assert (=> b!2848129 d!825626))

(declare-fun d!825628 () Bool)

(assert (=> d!825628 true))

(declare-fun lt!1013017 () Bool)

(declare-fun lambda!104595 () Int)

(declare-fun forall!6948 (List!33967 Int) Bool)

(assert (=> d!825628 (= lt!1013017 (forall!6948 rs!188 lambda!104595))))

(declare-fun e!1804873 () Bool)

(assert (=> d!825628 (= lt!1013017 e!1804873)))

(declare-fun res!1184092 () Bool)

(assert (=> d!825628 (=> res!1184092 e!1804873)))

(assert (=> d!825628 (= res!1184092 (not (is-Cons!33843 rs!188)))))

(assert (=> d!825628 (= (rulesValidInductive!1750 thiss!10983 rs!188) lt!1013017)))

(declare-fun b!2848183 () Bool)

(declare-fun e!1804874 () Bool)

(assert (=> b!2848183 (= e!1804873 e!1804874)))

(declare-fun res!1184093 () Bool)

(assert (=> b!2848183 (=> (not res!1184093) (not e!1804874))))

(declare-fun ruleValid!1612 (LexerInterface!4674 Rule!9970) Bool)

(assert (=> b!2848183 (= res!1184093 (ruleValid!1612 thiss!10983 (h!39263 rs!188)))))

(declare-fun b!2848184 () Bool)

(assert (=> b!2848184 (= e!1804874 (rulesValidInductive!1750 thiss!10983 (t!232992 rs!188)))))

(assert (= (and d!825628 (not res!1184092)) b!2848183))

(assert (= (and b!2848183 res!1184093) b!2848184))

(declare-fun m!3275337 () Bool)

(assert (=> d!825628 m!3275337))

(declare-fun m!3275339 () Bool)

(assert (=> b!2848183 m!3275339))

(declare-fun m!3275341 () Bool)

(assert (=> b!2848184 m!3275341))

(assert (=> b!2848124 d!825628))

(declare-fun bs!520004 () Bool)

(declare-fun d!825636 () Bool)

(assert (= bs!520004 (and d!825636 d!825628)))

(declare-fun lambda!104596 () Int)

(assert (=> bs!520004 (= lambda!104596 lambda!104595)))

(assert (=> d!825636 true))

(declare-fun lt!1013018 () Bool)

(assert (=> d!825636 (= lt!1013018 (forall!6948 rules!1039 lambda!104596))))

(declare-fun e!1804875 () Bool)

(assert (=> d!825636 (= lt!1013018 e!1804875)))

(declare-fun res!1184094 () Bool)

(assert (=> d!825636 (=> res!1184094 e!1804875)))

(assert (=> d!825636 (= res!1184094 (not (is-Cons!33843 rules!1039)))))

(assert (=> d!825636 (= (rulesValidInductive!1750 thiss!10983 rules!1039) lt!1013018)))

(declare-fun b!2848187 () Bool)

(declare-fun e!1804876 () Bool)

(assert (=> b!2848187 (= e!1804875 e!1804876)))

(declare-fun res!1184095 () Bool)

(assert (=> b!2848187 (=> (not res!1184095) (not e!1804876))))

(assert (=> b!2848187 (= res!1184095 (ruleValid!1612 thiss!10983 (h!39263 rules!1039)))))

(declare-fun b!2848188 () Bool)

(assert (=> b!2848188 (= e!1804876 (rulesValidInductive!1750 thiss!10983 (t!232992 rules!1039)))))

(assert (= (and d!825636 (not res!1184094)) b!2848187))

(assert (= (and b!2848187 res!1184095) b!2848188))

(declare-fun m!3275343 () Bool)

(assert (=> d!825636 m!3275343))

(declare-fun m!3275345 () Bool)

(assert (=> b!2848187 m!3275345))

(declare-fun m!3275347 () Bool)

(assert (=> b!2848188 m!3275347))

(assert (=> b!2848125 d!825636))

(declare-fun d!825638 () Bool)

(assert (=> d!825638 (= (inv!45873 (tag!5589 (h!39263 rules!1039))) (= (mod (str.len (value!163349 (tag!5589 (h!39263 rules!1039)))) 2) 0))))

(assert (=> b!2848132 d!825638))

(declare-fun d!825640 () Bool)

(declare-fun res!1184098 () Bool)

(declare-fun e!1804879 () Bool)

(assert (=> d!825640 (=> (not res!1184098) (not e!1804879))))

(declare-fun semiInverseModEq!2123 (Int Int) Bool)

(assert (=> d!825640 (= res!1184098 (semiInverseModEq!2123 (toChars!7000 (transformation!5085 (h!39263 rules!1039))) (toValue!7141 (transformation!5085 (h!39263 rules!1039)))))))

(assert (=> d!825640 (= (inv!45876 (transformation!5085 (h!39263 rules!1039))) e!1804879)))

(declare-fun b!2848191 () Bool)

(declare-fun equivClasses!2022 (Int Int) Bool)

(assert (=> b!2848191 (= e!1804879 (equivClasses!2022 (toChars!7000 (transformation!5085 (h!39263 rules!1039))) (toValue!7141 (transformation!5085 (h!39263 rules!1039)))))))

(assert (= (and d!825640 res!1184098) b!2848191))

(declare-fun m!3275349 () Bool)

(assert (=> d!825640 m!3275349))

(declare-fun m!3275351 () Bool)

(assert (=> b!2848191 m!3275351))

(assert (=> b!2848132 d!825640))

(declare-fun d!825642 () Bool)

(assert (=> d!825642 (= (inv!45873 (tag!5589 (h!39263 rs!188))) (= (mod (str.len (value!163349 (tag!5589 (h!39263 rs!188)))) 2) 0))))

(assert (=> b!2848128 d!825642))

(declare-fun d!825644 () Bool)

(declare-fun res!1184099 () Bool)

(declare-fun e!1804880 () Bool)

(assert (=> d!825644 (=> (not res!1184099) (not e!1804880))))

(assert (=> d!825644 (= res!1184099 (semiInverseModEq!2123 (toChars!7000 (transformation!5085 (h!39263 rs!188))) (toValue!7141 (transformation!5085 (h!39263 rs!188)))))))

(assert (=> d!825644 (= (inv!45876 (transformation!5085 (h!39263 rs!188))) e!1804880)))

(declare-fun b!2848192 () Bool)

(assert (=> b!2848192 (= e!1804880 (equivClasses!2022 (toChars!7000 (transformation!5085 (h!39263 rs!188))) (toValue!7141 (transformation!5085 (h!39263 rs!188)))))))

(assert (= (and d!825644 res!1184099) b!2848192))

(declare-fun m!3275353 () Bool)

(assert (=> d!825644 m!3275353))

(declare-fun m!3275355 () Bool)

(assert (=> b!2848192 m!3275355))

(assert (=> b!2848128 d!825644))

(declare-fun b!2848203 () Bool)

(declare-fun b_free!82853 () Bool)

(declare-fun b_next!83557 () Bool)

(assert (=> b!2848203 (= b_free!82853 (not b_next!83557))))

(declare-fun tp!914323 () Bool)

(declare-fun b_and!209095 () Bool)

(assert (=> b!2848203 (= tp!914323 b_and!209095)))

(declare-fun b_free!82855 () Bool)

(declare-fun b_next!83559 () Bool)

(assert (=> b!2848203 (= b_free!82855 (not b_next!83559))))

(declare-fun tp!914326 () Bool)

(declare-fun b_and!209097 () Bool)

(assert (=> b!2848203 (= tp!914326 b_and!209097)))

(declare-fun e!1804890 () Bool)

(assert (=> b!2848203 (= e!1804890 (and tp!914323 tp!914326))))

(declare-fun b!2848202 () Bool)

(declare-fun e!1804892 () Bool)

(declare-fun tp!914325 () Bool)

(assert (=> b!2848202 (= e!1804892 (and tp!914325 (inv!45873 (tag!5589 (h!39263 (t!232992 rs!188)))) (inv!45876 (transformation!5085 (h!39263 (t!232992 rs!188)))) e!1804890))))

(declare-fun b!2848201 () Bool)

(declare-fun e!1804891 () Bool)

(declare-fun tp!914324 () Bool)

(assert (=> b!2848201 (= e!1804891 (and e!1804892 tp!914324))))

(assert (=> b!2848131 (= tp!914289 e!1804891)))

(assert (= b!2848202 b!2848203))

(assert (= b!2848201 b!2848202))

(assert (= (and b!2848131 (is-Cons!33843 (t!232992 rs!188))) b!2848201))

(declare-fun m!3275357 () Bool)

(assert (=> b!2848202 m!3275357))

(declare-fun m!3275359 () Bool)

(assert (=> b!2848202 m!3275359))

(declare-fun b!2848206 () Bool)

(declare-fun b_free!82857 () Bool)

(declare-fun b_next!83561 () Bool)

(assert (=> b!2848206 (= b_free!82857 (not b_next!83561))))

(declare-fun tp!914327 () Bool)

(declare-fun b_and!209099 () Bool)

(assert (=> b!2848206 (= tp!914327 b_and!209099)))

(declare-fun b_free!82859 () Bool)

(declare-fun b_next!83563 () Bool)

(assert (=> b!2848206 (= b_free!82859 (not b_next!83563))))

(declare-fun tp!914330 () Bool)

(declare-fun b_and!209101 () Bool)

(assert (=> b!2848206 (= tp!914330 b_and!209101)))

(declare-fun e!1804894 () Bool)

(assert (=> b!2848206 (= e!1804894 (and tp!914327 tp!914330))))

(declare-fun tp!914329 () Bool)

(declare-fun b!2848205 () Bool)

(declare-fun e!1804896 () Bool)

(assert (=> b!2848205 (= e!1804896 (and tp!914329 (inv!45873 (tag!5589 (h!39263 (t!232992 rules!1039)))) (inv!45876 (transformation!5085 (h!39263 (t!232992 rules!1039)))) e!1804894))))

(declare-fun b!2848204 () Bool)

(declare-fun e!1804895 () Bool)

(declare-fun tp!914328 () Bool)

(assert (=> b!2848204 (= e!1804895 (and e!1804896 tp!914328))))

(assert (=> b!2848126 (= tp!914283 e!1804895)))

(assert (= b!2848205 b!2848206))

(assert (= b!2848204 b!2848205))

(assert (= (and b!2848126 (is-Cons!33843 (t!232992 rules!1039))) b!2848204))

(declare-fun m!3275361 () Bool)

(assert (=> b!2848205 m!3275361))

(declare-fun m!3275363 () Bool)

(assert (=> b!2848205 m!3275363))

(declare-fun b!2848218 () Bool)

(declare-fun e!1804899 () Bool)

(declare-fun tp!914341 () Bool)

(declare-fun tp!914344 () Bool)

(assert (=> b!2848218 (= e!1804899 (and tp!914341 tp!914344))))

(declare-fun b!2848220 () Bool)

(declare-fun tp!914343 () Bool)

(declare-fun tp!914342 () Bool)

(assert (=> b!2848220 (= e!1804899 (and tp!914343 tp!914342))))

(declare-fun b!2848219 () Bool)

(declare-fun tp!914345 () Bool)

(assert (=> b!2848219 (= e!1804899 tp!914345)))

(declare-fun b!2848217 () Bool)

(declare-fun tp_is_empty!14741 () Bool)

(assert (=> b!2848217 (= e!1804899 tp_is_empty!14741)))

(assert (=> b!2848132 (= tp!914288 e!1804899)))

(assert (= (and b!2848132 (is-ElementMatch!8500 (regex!5085 (h!39263 rules!1039)))) b!2848217))

(assert (= (and b!2848132 (is-Concat!13816 (regex!5085 (h!39263 rules!1039)))) b!2848218))

(assert (= (and b!2848132 (is-Star!8500 (regex!5085 (h!39263 rules!1039)))) b!2848219))

(assert (= (and b!2848132 (is-Union!8500 (regex!5085 (h!39263 rules!1039)))) b!2848220))

(declare-fun b!2848222 () Bool)

(declare-fun e!1804900 () Bool)

(declare-fun tp!914346 () Bool)

(declare-fun tp!914349 () Bool)

(assert (=> b!2848222 (= e!1804900 (and tp!914346 tp!914349))))

(declare-fun b!2848224 () Bool)

(declare-fun tp!914348 () Bool)

(declare-fun tp!914347 () Bool)

(assert (=> b!2848224 (= e!1804900 (and tp!914348 tp!914347))))

(declare-fun b!2848223 () Bool)

(declare-fun tp!914350 () Bool)

(assert (=> b!2848223 (= e!1804900 tp!914350)))

(declare-fun b!2848221 () Bool)

(assert (=> b!2848221 (= e!1804900 tp_is_empty!14741)))

(assert (=> b!2848128 (= tp!914290 e!1804900)))

(assert (= (and b!2848128 (is-ElementMatch!8500 (regex!5085 (h!39263 rs!188)))) b!2848221))

(assert (= (and b!2848128 (is-Concat!13816 (regex!5085 (h!39263 rs!188)))) b!2848222))

(assert (= (and b!2848128 (is-Star!8500 (regex!5085 (h!39263 rs!188)))) b!2848223))

(assert (= (and b!2848128 (is-Union!8500 (regex!5085 (h!39263 rs!188)))) b!2848224))

(push 1)

(assert (not b!2848218))

(assert (not d!825636))

(assert (not b_next!83561))

(assert (not b!2848205))

(assert (not b_next!83563))

(assert b_and!209081)

(assert (not b!2848224))

(assert (not d!825628))

(assert (not b!2848204))

(assert (not d!825644))

(assert (not b!2848192))

(assert (not b_next!83557))

(assert (not b!2848188))

(assert b_and!209101)

(assert (not b_next!83541))

(assert b_and!209083)

(assert tp_is_empty!14741)

(assert (not b!2848201))

(assert (not b!2848183))

(assert (not b!2848219))

(assert b_and!209095)

(assert (not b_next!83547))

(assert (not b_next!83543))

(assert (not d!825640))

(assert (not b!2848202))

(assert (not b!2848191))

(assert b_and!209085)

(assert b_and!209097)

(assert (not b!2848223))

(assert b_and!209099)

(assert (not b!2848169))

(assert (not b!2848187))

(assert (not b!2848220))

(assert (not b!2848222))

(assert (not b!2848171))

(assert (not b!2848184))

(assert (not b_next!83559))

(assert (not b_next!83545))

(assert b_and!209079)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!83557))

(assert (not b_next!83561))

(assert (not b_next!83563))

(assert b_and!209081)

(assert (not b_next!83543))

(assert b_and!209085)

(assert b_and!209101)

(assert (not b_next!83541))

(assert b_and!209083)

(assert b_and!209095)

(assert (not b_next!83547))

(assert b_and!209097)

(assert b_and!209099)

(assert (not b_next!83559))

(assert (not b_next!83545))

(assert b_and!209079)

(check-sat)

(pop 1)

