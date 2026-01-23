; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756902 () Bool)

(assert start!756902)

(declare-fun b!8039372 () Bool)

(declare-fun b_free!135363 () Bool)

(declare-fun b_next!136153 () Bool)

(assert (=> b!8039372 (= b_free!135363 (not b_next!136153))))

(declare-fun tp!2408017 () Bool)

(declare-fun b_and!353799 () Bool)

(assert (=> b!8039372 (= tp!2408017 b_and!353799)))

(declare-fun b_free!135365 () Bool)

(declare-fun b_next!136155 () Bool)

(assert (=> b!8039372 (= b_free!135365 (not b_next!136155))))

(declare-fun tp!2408012 () Bool)

(declare-fun b_and!353801 () Bool)

(assert (=> b!8039372 (= tp!2408012 b_and!353801)))

(declare-fun b!8039389 () Bool)

(declare-fun b_free!135367 () Bool)

(declare-fun b_next!136157 () Bool)

(assert (=> b!8039389 (= b_free!135367 (not b_next!136157))))

(declare-fun tp!2408016 () Bool)

(declare-fun b_and!353803 () Bool)

(assert (=> b!8039389 (= tp!2408016 b_and!353803)))

(declare-fun b_free!135369 () Bool)

(declare-fun b_next!136159 () Bool)

(assert (=> b!8039389 (= b_free!135369 (not b_next!136159))))

(declare-fun tp!2408014 () Bool)

(declare-fun b_and!353805 () Bool)

(assert (=> b!8039389 (= tp!2408014 b_and!353805)))

(declare-fun b!8039381 () Bool)

(declare-fun b_free!135371 () Bool)

(declare-fun b_next!136161 () Bool)

(assert (=> b!8039381 (= b_free!135371 (not b_next!136161))))

(declare-fun tp!2408020 () Bool)

(declare-fun b_and!353807 () Bool)

(assert (=> b!8039381 (= tp!2408020 b_and!353807)))

(declare-fun b_free!135373 () Bool)

(declare-fun b_next!136163 () Bool)

(assert (=> b!8039381 (= b_free!135373 (not b_next!136163))))

(declare-fun tp!2408015 () Bool)

(declare-fun b_and!353809 () Bool)

(assert (=> b!8039381 (= tp!2408015 b_and!353809)))

(declare-fun b!8039382 () Bool)

(declare-fun b_free!135375 () Bool)

(declare-fun b_next!136165 () Bool)

(assert (=> b!8039382 (= b_free!135375 (not b_next!136165))))

(declare-fun tp!2408010 () Bool)

(declare-fun b_and!353811 () Bool)

(assert (=> b!8039382 (= tp!2408010 b_and!353811)))

(declare-fun b_free!135377 () Bool)

(declare-fun b_next!136167 () Bool)

(assert (=> b!8039382 (= b_free!135377 (not b_next!136167))))

(declare-fun tp!2408011 () Bool)

(declare-fun b_and!353813 () Bool)

(assert (=> b!8039382 (= tp!2408011 b_and!353813)))

(declare-fun res!3177847 () Bool)

(declare-fun e!4735283 () Bool)

(assert (=> start!756902 (=> (not res!3177847) (not e!4735283))))

(declare-datatypes ((LexerInterface!8277 0))(
  ( (LexerInterfaceExt!8274 (__x!35295 Int)) (Lexer!8275) )
))
(declare-fun thiss!27054 () LexerInterface!8277)

(assert (=> start!756902 (= res!3177847 (is-Lexer!8275 thiss!27054))))

(assert (=> start!756902 e!4735283))

(assert (=> start!756902 true))

(declare-fun e!4735272 () Bool)

(assert (=> start!756902 e!4735272))

(declare-fun e!4735281 () Bool)

(assert (=> start!756902 e!4735281))

(declare-fun e!4735276 () Bool)

(assert (=> start!756902 e!4735276))

(declare-fun e!4735282 () Bool)

(assert (=> start!756902 e!4735282))

(declare-fun tp_is_empty!54511 () Bool)

(assert (=> start!756902 tp_is_empty!54511))

(declare-fun e!4735286 () Bool)

(assert (=> b!8039372 (= e!4735286 (and tp!2408017 tp!2408012))))

(declare-fun tp!2408021 () Bool)

(declare-datatypes ((List!75191 0))(
  ( (Nil!75065) (Cons!75065 (h!81513 (_ BitVec 16)) (t!390961 List!75191)) )
))
(declare-datatypes ((TokenValue!9007 0))(
  ( (FloatLiteralValue!18014 (text!63494 List!75191)) (TokenValueExt!9006 (__x!35296 Int)) (Broken!45035 (value!290660 List!75191)) (Object!9132) (End!9007) (Def!9007) (Underscore!9007) (Match!9007) (Else!9007) (Error!9007) (Case!9007) (If!9007) (Extends!9007) (Abstract!9007) (Class!9007) (Val!9007) (DelimiterValue!18014 (del!9067 List!75191)) (KeywordValue!9013 (value!290661 List!75191)) (CommentValue!18014 (value!290662 List!75191)) (WhitespaceValue!18014 (value!290663 List!75191)) (IndentationValue!9007 (value!290664 List!75191)) (String!84810) (Int32!9007) (Broken!45036 (value!290665 List!75191)) (Boolean!9008) (Unit!171010) (OperatorValue!9010 (op!9067 List!75191)) (IdentifierValue!18014 (value!290666 List!75191)) (IdentifierValue!18015 (value!290667 List!75191)) (WhitespaceValue!18015 (value!290668 List!75191)) (True!18014) (False!18014) (Broken!45037 (value!290669 List!75191)) (Broken!45038 (value!290670 List!75191)) (True!18015) (RightBrace!9007) (RightBracket!9007) (Colon!9007) (Null!9007) (Comma!9007) (LeftBracket!9007) (False!18015) (LeftBrace!9007) (ImaginaryLiteralValue!9007 (text!63495 List!75191)) (StringLiteralValue!27021 (value!290671 List!75191)) (EOFValue!9007 (value!290672 List!75191)) (IdentValue!9007 (value!290673 List!75191)) (DelimiterValue!18015 (value!290674 List!75191)) (DedentValue!9007 (value!290675 List!75191)) (NewLineValue!9007 (value!290676 List!75191)) (IntegerValue!27021 (value!290677 (_ BitVec 32)) (text!63496 List!75191)) (IntegerValue!27022 (value!290678 Int) (text!63497 List!75191)) (Times!9007) (Or!9007) (Equal!9007) (Minus!9007) (Broken!45039 (value!290679 List!75191)) (And!9007) (Div!9007) (LessEqual!9007) (Mod!9007) (Concat!30765) (Not!9007) (Plus!9007) (SpaceValue!9007 (value!290680 List!75191)) (IntegerValue!27023 (value!290681 Int) (text!63498 List!75191)) (StringLiteralValue!27022 (text!63499 List!75191)) (FloatLiteralValue!18015 (text!63500 List!75191)) (BytesLiteralValue!9007 (value!290682 List!75191)) (CommentValue!18015 (value!290683 List!75191)) (StringLiteralValue!27023 (value!290684 List!75191)) (ErrorTokenValue!9007 (msg!9068 List!75191)) )
))
(declare-datatypes ((C!43854 0))(
  ( (C!43855 (val!32703 Int)) )
))
(declare-datatypes ((List!75192 0))(
  ( (Nil!75066) (Cons!75066 (h!81514 C!43854) (t!390962 List!75192)) )
))
(declare-datatypes ((IArray!31971 0))(
  ( (IArray!31972 (innerList!16043 List!75192)) )
))
(declare-datatypes ((Conc!15955 0))(
  ( (Node!15955 (left!57248 Conc!15955) (right!57578 Conc!15955) (csize!32140 Int) (cheight!16166 Int)) (Leaf!30609 (xs!19353 IArray!31971) (csize!32141 Int)) (Empty!15955) )
))
(declare-datatypes ((BalanceConc!30866 0))(
  ( (BalanceConc!30867 (c!1474819 Conc!15955)) )
))
(declare-datatypes ((Regex!21758 0))(
  ( (ElementMatch!21758 (c!1474820 C!43854)) (Concat!30766 (regOne!44028 Regex!21758) (regTwo!44028 Regex!21758)) (EmptyExpr!21758) (Star!21758 (reg!22087 Regex!21758)) (EmptyLang!21758) (Union!21758 (regOne!44029 Regex!21758) (regTwo!44029 Regex!21758)) )
))
(declare-datatypes ((String!84811 0))(
  ( (String!84812 (value!290685 String)) )
))
(declare-datatypes ((TokenValueInjection!17322 0))(
  ( (TokenValueInjection!17323 (toValue!11758 Int) (toChars!11617 Int)) )
))
(declare-datatypes ((Rule!17174 0))(
  ( (Rule!17175 (regex!8687 Regex!21758) (tag!9551 String!84811) (isSeparator!8687 Bool) (transformation!8687 TokenValueInjection!17322)) )
))
(declare-datatypes ((List!75193 0))(
  ( (Nil!75067) (Cons!75067 (h!81515 Rule!17174) (t!390963 List!75193)) )
))
(declare-fun rules!4142 () List!75193)

(declare-fun e!4735277 () Bool)

(declare-fun e!4735278 () Bool)

(declare-fun b!8039373 () Bool)

(declare-fun inv!96885 (String!84811) Bool)

(declare-fun inv!96888 (TokenValueInjection!17322) Bool)

(assert (=> b!8039373 (= e!4735277 (and tp!2408021 (inv!96885 (tag!9551 (h!81515 rules!4142))) (inv!96888 (transformation!8687 (h!81515 rules!4142))) e!4735278))))

(declare-fun e!4735279 () Bool)

(declare-fun tp!2408013 () Bool)

(declare-fun rSep!142 () Rule!17174)

(declare-fun b!8039374 () Bool)

(assert (=> b!8039374 (= e!4735281 (and tp!2408013 (inv!96885 (tag!9551 rSep!142)) (inv!96888 (transformation!8687 rSep!142)) e!4735279))))

(declare-fun b!8039375 () Bool)

(declare-fun e!4735280 () Bool)

(declare-fun tp!2408022 () Bool)

(assert (=> b!8039375 (= e!4735276 (and e!4735280 tp!2408022))))

(declare-fun b!8039376 () Bool)

(declare-fun res!3177848 () Bool)

(assert (=> b!8039376 (=> (not res!3177848) (not e!4735283))))

(declare-fun rulesRec!188 () List!75193)

(declare-fun rNSep!142 () Rule!17174)

(declare-fun contains!20957 (List!75193 Rule!17174) Bool)

(assert (=> b!8039376 (= res!3177848 (contains!20957 rulesRec!188 rNSep!142))))

(declare-fun b!8039377 () Bool)

(declare-fun res!3177849 () Bool)

(assert (=> b!8039377 (=> (not res!3177849) (not e!4735283))))

(assert (=> b!8039377 (= res!3177849 (contains!20957 rules!4142 rSep!142))))

(declare-fun b!8039378 () Bool)

(declare-fun tp!2408019 () Bool)

(assert (=> b!8039378 (= e!4735272 (and e!4735277 tp!2408019))))

(declare-fun tp!2408018 () Bool)

(declare-fun b!8039379 () Bool)

(declare-fun e!4735274 () Bool)

(assert (=> b!8039379 (= e!4735280 (and tp!2408018 (inv!96885 (tag!9551 (h!81515 rulesRec!188))) (inv!96888 (transformation!8687 (h!81515 rulesRec!188))) e!4735274))))

(declare-fun b!8039380 () Bool)

(declare-fun res!3177851 () Bool)

(assert (=> b!8039380 (=> (not res!3177851) (not e!4735283))))

(assert (=> b!8039380 (= res!3177851 (contains!20957 rules!4142 rNSep!142))))

(assert (=> b!8039381 (= e!4735278 (and tp!2408020 tp!2408015))))

(assert (=> b!8039382 (= e!4735274 (and tp!2408010 tp!2408011))))

(declare-fun b!8039383 () Bool)

(declare-fun ListPrimitiveSize!527 (List!75193) Int)

(assert (=> b!8039383 (= e!4735283 (< (ListPrimitiveSize!527 rulesRec!188) 0))))

(declare-fun b!8039384 () Bool)

(declare-fun res!3177845 () Bool)

(assert (=> b!8039384 (=> (not res!3177845) (not e!4735283))))

(assert (=> b!8039384 (= res!3177845 (and (not (isSeparator!8687 rNSep!142)) (isSeparator!8687 rSep!142)))))

(declare-fun b!8039385 () Bool)

(declare-fun res!3177844 () Bool)

(assert (=> b!8039385 (=> (not res!3177844) (not e!4735283))))

(declare-fun sepAndNonSepRulesDisjointChars!2047 (List!75193 List!75193) Bool)

(assert (=> b!8039385 (= res!3177844 (sepAndNonSepRulesDisjointChars!2047 rules!4142 rulesRec!188))))

(declare-fun tp!2408023 () Bool)

(declare-fun b!8039386 () Bool)

(assert (=> b!8039386 (= e!4735282 (and tp!2408023 (inv!96885 (tag!9551 rNSep!142)) (inv!96888 (transformation!8687 rNSep!142)) e!4735286))))

(declare-fun b!8039387 () Bool)

(declare-fun res!3177850 () Bool)

(assert (=> b!8039387 (=> (not res!3177850) (not e!4735283))))

(declare-fun c!6865 () C!43854)

(declare-fun contains!20958 (List!75192 C!43854) Bool)

(declare-fun usedCharacters!1265 (Regex!21758) List!75192)

(assert (=> b!8039387 (= res!3177850 (contains!20958 (usedCharacters!1265 (regex!8687 rSep!142)) c!6865))))

(declare-fun b!8039388 () Bool)

(declare-fun res!3177846 () Bool)

(assert (=> b!8039388 (=> (not res!3177846) (not e!4735283))))

(declare-fun rulesInvariant!6745 (LexerInterface!8277 List!75193) Bool)

(assert (=> b!8039388 (= res!3177846 (rulesInvariant!6745 thiss!27054 rules!4142))))

(assert (=> b!8039389 (= e!4735279 (and tp!2408016 tp!2408014))))

(assert (= (and start!756902 res!3177847) b!8039388))

(assert (= (and b!8039388 res!3177846) b!8039377))

(assert (= (and b!8039377 res!3177849) b!8039376))

(assert (= (and b!8039376 res!3177848) b!8039380))

(assert (= (and b!8039380 res!3177851) b!8039384))

(assert (= (and b!8039384 res!3177845) b!8039387))

(assert (= (and b!8039387 res!3177850) b!8039385))

(assert (= (and b!8039385 res!3177844) b!8039383))

(assert (= b!8039373 b!8039381))

(assert (= b!8039378 b!8039373))

(assert (= (and start!756902 (is-Cons!75067 rules!4142)) b!8039378))

(assert (= b!8039374 b!8039389))

(assert (= start!756902 b!8039374))

(assert (= b!8039379 b!8039382))

(assert (= b!8039375 b!8039379))

(assert (= (and start!756902 (is-Cons!75067 rulesRec!188)) b!8039375))

(assert (= b!8039386 b!8039372))

(assert (= start!756902 b!8039386))

(declare-fun m!8394338 () Bool)

(assert (=> b!8039388 m!8394338))

(declare-fun m!8394340 () Bool)

(assert (=> b!8039387 m!8394340))

(assert (=> b!8039387 m!8394340))

(declare-fun m!8394342 () Bool)

(assert (=> b!8039387 m!8394342))

(declare-fun m!8394344 () Bool)

(assert (=> b!8039379 m!8394344))

(declare-fun m!8394346 () Bool)

(assert (=> b!8039379 m!8394346))

(declare-fun m!8394348 () Bool)

(assert (=> b!8039380 m!8394348))

(declare-fun m!8394350 () Bool)

(assert (=> b!8039373 m!8394350))

(declare-fun m!8394352 () Bool)

(assert (=> b!8039373 m!8394352))

(declare-fun m!8394354 () Bool)

(assert (=> b!8039374 m!8394354))

(declare-fun m!8394356 () Bool)

(assert (=> b!8039374 m!8394356))

(declare-fun m!8394358 () Bool)

(assert (=> b!8039383 m!8394358))

(declare-fun m!8394360 () Bool)

(assert (=> b!8039376 m!8394360))

(declare-fun m!8394362 () Bool)

(assert (=> b!8039386 m!8394362))

(declare-fun m!8394364 () Bool)

(assert (=> b!8039386 m!8394364))

(declare-fun m!8394366 () Bool)

(assert (=> b!8039385 m!8394366))

(declare-fun m!8394368 () Bool)

(assert (=> b!8039377 m!8394368))

(push 1)

(assert (not b_next!136163))

(assert (not b!8039388))

(assert b_and!353813)

(assert (not b!8039385))

(assert (not b_next!136157))

(assert b_and!353805)

(assert (not b!8039373))

(assert (not b!8039380))

(assert b_and!353801)

(assert b_and!353807)

(assert (not b!8039386))

(assert (not b!8039377))

(assert (not b!8039383))

(assert (not b!8039387))

(assert (not b_next!136161))

(assert (not b!8039378))

(assert (not b!8039374))

(assert (not b_next!136165))

(assert (not b_next!136159))

(assert (not b_next!136153))

(assert (not b_next!136167))

(assert b_and!353809)

(assert b_and!353799)

(assert (not b!8039376))

(assert (not b!8039379))

(assert tp_is_empty!54511)

(assert (not b_next!136155))

(assert b_and!353803)

(assert (not b!8039375))

(assert b_and!353811)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!136161))

(assert (not b_next!136163))

(assert b_and!353813)

(assert (not b_next!136157))

(assert b_and!353811)

(assert b_and!353805)

(assert b_and!353801)

(assert b_and!353807)

(assert (not b_next!136165))

(assert (not b_next!136159))

(assert (not b_next!136153))

(assert (not b_next!136167))

(assert b_and!353809)

(assert b_and!353799)

(assert (not b_next!136155))

(assert b_and!353803)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2395328 () Bool)

(declare-fun lt!2722185 () Bool)

(declare-fun content!16020 (List!75192) (Set C!43854))

(assert (=> d!2395328 (= lt!2722185 (set.member c!6865 (content!16020 (usedCharacters!1265 (regex!8687 rSep!142)))))))

(declare-fun e!4735337 () Bool)

(assert (=> d!2395328 (= lt!2722185 e!4735337)))

(declare-fun res!3177889 () Bool)

(assert (=> d!2395328 (=> (not res!3177889) (not e!4735337))))

(assert (=> d!2395328 (= res!3177889 (is-Cons!75066 (usedCharacters!1265 (regex!8687 rSep!142))))))

(assert (=> d!2395328 (= (contains!20958 (usedCharacters!1265 (regex!8687 rSep!142)) c!6865) lt!2722185)))

(declare-fun b!8039448 () Bool)

(declare-fun e!4735336 () Bool)

(assert (=> b!8039448 (= e!4735337 e!4735336)))

(declare-fun res!3177888 () Bool)

(assert (=> b!8039448 (=> res!3177888 e!4735336)))

(assert (=> b!8039448 (= res!3177888 (= (h!81514 (usedCharacters!1265 (regex!8687 rSep!142))) c!6865))))

(declare-fun b!8039449 () Bool)

(assert (=> b!8039449 (= e!4735336 (contains!20958 (t!390962 (usedCharacters!1265 (regex!8687 rSep!142))) c!6865))))

(assert (= (and d!2395328 res!3177889) b!8039448))

(assert (= (and b!8039448 (not res!3177888)) b!8039449))

(assert (=> d!2395328 m!8394340))

(declare-fun m!8394402 () Bool)

(assert (=> d!2395328 m!8394402))

(declare-fun m!8394404 () Bool)

(assert (=> d!2395328 m!8394404))

(declare-fun m!8394406 () Bool)

(assert (=> b!8039449 m!8394406))

(assert (=> b!8039387 d!2395328))

(declare-fun b!8039484 () Bool)

(declare-fun e!4735364 () List!75192)

(declare-fun e!4735362 () List!75192)

(assert (=> b!8039484 (= e!4735364 e!4735362)))

(declare-fun c!1474836 () Bool)

(assert (=> b!8039484 (= c!1474836 (is-ElementMatch!21758 (regex!8687 rSep!142)))))

(declare-fun b!8039485 () Bool)

(declare-fun e!4735363 () List!75192)

(declare-fun call!746305 () List!75192)

(assert (=> b!8039485 (= e!4735363 call!746305)))

(declare-fun bm!746298 () Bool)

(declare-fun call!746306 () List!75192)

(declare-fun call!746303 () List!75192)

(declare-fun call!746304 () List!75192)

(declare-fun ++!18615 (List!75192 List!75192) List!75192)

(assert (=> bm!746298 (= call!746306 (++!18615 call!746303 call!746304))))

(declare-fun c!1474835 () Bool)

(declare-fun c!1474837 () Bool)

(declare-fun bm!746299 () Bool)

(assert (=> bm!746299 (= call!746305 (usedCharacters!1265 (ite c!1474835 (reg!22087 (regex!8687 rSep!142)) (ite c!1474837 (regTwo!44029 (regex!8687 rSep!142)) (regTwo!44028 (regex!8687 rSep!142))))))))

(declare-fun d!2395332 () Bool)

(declare-fun c!1474834 () Bool)

(assert (=> d!2395332 (= c!1474834 (or (is-EmptyExpr!21758 (regex!8687 rSep!142)) (is-EmptyLang!21758 (regex!8687 rSep!142))))))

(assert (=> d!2395332 (= (usedCharacters!1265 (regex!8687 rSep!142)) e!4735364)))

(declare-fun b!8039486 () Bool)

(declare-fun e!4735361 () List!75192)

(assert (=> b!8039486 (= e!4735363 e!4735361)))

(assert (=> b!8039486 (= c!1474837 (is-Union!21758 (regex!8687 rSep!142)))))

(declare-fun b!8039487 () Bool)

(assert (=> b!8039487 (= e!4735361 call!746306)))

(declare-fun bm!746300 () Bool)

(assert (=> bm!746300 (= call!746303 (usedCharacters!1265 (ite c!1474837 (regOne!44029 (regex!8687 rSep!142)) (regOne!44028 (regex!8687 rSep!142)))))))

(declare-fun b!8039488 () Bool)

(assert (=> b!8039488 (= c!1474835 (is-Star!21758 (regex!8687 rSep!142)))))

(assert (=> b!8039488 (= e!4735362 e!4735363)))

(declare-fun b!8039489 () Bool)

(assert (=> b!8039489 (= e!4735364 Nil!75066)))

(declare-fun bm!746301 () Bool)

(assert (=> bm!746301 (= call!746304 call!746305)))

(declare-fun b!8039490 () Bool)

(assert (=> b!8039490 (= e!4735361 call!746306)))

(declare-fun b!8039491 () Bool)

(assert (=> b!8039491 (= e!4735362 (Cons!75066 (c!1474820 (regex!8687 rSep!142)) Nil!75066))))

(assert (= (and d!2395332 c!1474834) b!8039489))

(assert (= (and d!2395332 (not c!1474834)) b!8039484))

(assert (= (and b!8039484 c!1474836) b!8039491))

(assert (= (and b!8039484 (not c!1474836)) b!8039488))

(assert (= (and b!8039488 c!1474835) b!8039485))

(assert (= (and b!8039488 (not c!1474835)) b!8039486))

(assert (= (and b!8039486 c!1474837) b!8039487))

(assert (= (and b!8039486 (not c!1474837)) b!8039490))

(assert (= (or b!8039487 b!8039490) bm!746301))

(assert (= (or b!8039487 b!8039490) bm!746300))

(assert (= (or b!8039487 b!8039490) bm!746298))

(assert (= (or b!8039485 bm!746301) bm!746299))

(declare-fun m!8394420 () Bool)

(assert (=> bm!746298 m!8394420))

(declare-fun m!8394422 () Bool)

(assert (=> bm!746299 m!8394422))

(declare-fun m!8394424 () Bool)

(assert (=> bm!746300 m!8394424))

(assert (=> b!8039387 d!2395332))

(declare-fun d!2395342 () Bool)

(declare-fun lt!2722194 () Bool)

(declare-fun content!16022 (List!75193) (Set Rule!17174))

(assert (=> d!2395342 (= lt!2722194 (set.member rNSep!142 (content!16022 rulesRec!188)))))

(declare-fun e!4735371 () Bool)

(assert (=> d!2395342 (= lt!2722194 e!4735371)))

(declare-fun res!3177908 () Bool)

(assert (=> d!2395342 (=> (not res!3177908) (not e!4735371))))

(assert (=> d!2395342 (= res!3177908 (is-Cons!75067 rulesRec!188))))

(assert (=> d!2395342 (= (contains!20957 rulesRec!188 rNSep!142) lt!2722194)))

(declare-fun b!8039498 () Bool)

(declare-fun e!4735372 () Bool)

(assert (=> b!8039498 (= e!4735371 e!4735372)))

(declare-fun res!3177909 () Bool)

(assert (=> b!8039498 (=> res!3177909 e!4735372)))

(assert (=> b!8039498 (= res!3177909 (= (h!81515 rulesRec!188) rNSep!142))))

(declare-fun b!8039499 () Bool)

(assert (=> b!8039499 (= e!4735372 (contains!20957 (t!390963 rulesRec!188) rNSep!142))))

(assert (= (and d!2395342 res!3177908) b!8039498))

(assert (= (and b!8039498 (not res!3177909)) b!8039499))

(declare-fun m!8394426 () Bool)

(assert (=> d!2395342 m!8394426))

(declare-fun m!8394428 () Bool)

(assert (=> d!2395342 m!8394428))

(declare-fun m!8394430 () Bool)

(assert (=> b!8039499 m!8394430))

(assert (=> b!8039376 d!2395342))

(declare-fun d!2395344 () Bool)

(declare-fun lt!2722198 () Int)

(assert (=> d!2395344 (>= lt!2722198 0)))

(declare-fun e!4735378 () Int)

(assert (=> d!2395344 (= lt!2722198 e!4735378)))

(declare-fun c!1474840 () Bool)

(assert (=> d!2395344 (= c!1474840 (is-Nil!75067 rulesRec!188))))

(assert (=> d!2395344 (= (ListPrimitiveSize!527 rulesRec!188) lt!2722198)))

(declare-fun b!8039507 () Bool)

(assert (=> b!8039507 (= e!4735378 0)))

(declare-fun b!8039508 () Bool)

(assert (=> b!8039508 (= e!4735378 (+ 1 (ListPrimitiveSize!527 (t!390963 rulesRec!188))))))

(assert (= (and d!2395344 c!1474840) b!8039507))

(assert (= (and d!2395344 (not c!1474840)) b!8039508))

(declare-fun m!8394442 () Bool)

(assert (=> b!8039508 m!8394442))

(assert (=> b!8039383 d!2395344))

(declare-fun d!2395350 () Bool)

(declare-fun lt!2722199 () Bool)

(assert (=> d!2395350 (= lt!2722199 (set.member rSep!142 (content!16022 rules!4142)))))

(declare-fun e!4735381 () Bool)

(assert (=> d!2395350 (= lt!2722199 e!4735381)))

(declare-fun res!3177915 () Bool)

(assert (=> d!2395350 (=> (not res!3177915) (not e!4735381))))

(assert (=> d!2395350 (= res!3177915 (is-Cons!75067 rules!4142))))

(assert (=> d!2395350 (= (contains!20957 rules!4142 rSep!142) lt!2722199)))

(declare-fun b!8039511 () Bool)

(declare-fun e!4735382 () Bool)

(assert (=> b!8039511 (= e!4735381 e!4735382)))

(declare-fun res!3177916 () Bool)

(assert (=> b!8039511 (=> res!3177916 e!4735382)))

(assert (=> b!8039511 (= res!3177916 (= (h!81515 rules!4142) rSep!142))))

(declare-fun b!8039512 () Bool)

(assert (=> b!8039512 (= e!4735382 (contains!20957 (t!390963 rules!4142) rSep!142))))

(assert (= (and d!2395350 res!3177915) b!8039511))

(assert (= (and b!8039511 (not res!3177916)) b!8039512))

(declare-fun m!8394444 () Bool)

(assert (=> d!2395350 m!8394444))

(declare-fun m!8394446 () Bool)

(assert (=> d!2395350 m!8394446))

(declare-fun m!8394448 () Bool)

(assert (=> b!8039512 m!8394448))

(assert (=> b!8039377 d!2395350))

(declare-fun d!2395352 () Bool)

(declare-fun res!3177924 () Bool)

(declare-fun e!4735390 () Bool)

(assert (=> d!2395352 (=> (not res!3177924) (not e!4735390))))

(declare-fun rulesValid!3131 (LexerInterface!8277 List!75193) Bool)

(assert (=> d!2395352 (= res!3177924 (rulesValid!3131 thiss!27054 rules!4142))))

(assert (=> d!2395352 (= (rulesInvariant!6745 thiss!27054 rules!4142) e!4735390)))

(declare-fun b!8039520 () Bool)

(declare-datatypes ((List!75197 0))(
  ( (Nil!75071) (Cons!75071 (h!81519 String!84811) (t!390967 List!75197)) )
))
(declare-fun noDuplicateTag!3292 (LexerInterface!8277 List!75193 List!75197) Bool)

(assert (=> b!8039520 (= e!4735390 (noDuplicateTag!3292 thiss!27054 rules!4142 Nil!75071))))

(assert (= (and d!2395352 res!3177924) b!8039520))

(declare-fun m!8394454 () Bool)

(assert (=> d!2395352 m!8394454))

(declare-fun m!8394456 () Bool)

(assert (=> b!8039520 m!8394456))

(assert (=> b!8039388 d!2395352))

(declare-fun d!2395356 () Bool)

(assert (=> d!2395356 (= (inv!96885 (tag!9551 (h!81515 rulesRec!188))) (= (mod (str.len (value!290685 (tag!9551 (h!81515 rulesRec!188)))) 2) 0))))

(assert (=> b!8039379 d!2395356))

(declare-fun d!2395358 () Bool)

(declare-fun res!3177929 () Bool)

(declare-fun e!4735395 () Bool)

(assert (=> d!2395358 (=> (not res!3177929) (not e!4735395))))

(declare-fun semiInverseModEq!3855 (Int Int) Bool)

(assert (=> d!2395358 (= res!3177929 (semiInverseModEq!3855 (toChars!11617 (transformation!8687 (h!81515 rulesRec!188))) (toValue!11758 (transformation!8687 (h!81515 rulesRec!188)))))))

(assert (=> d!2395358 (= (inv!96888 (transformation!8687 (h!81515 rulesRec!188))) e!4735395)))

(declare-fun b!8039525 () Bool)

(declare-fun equivClasses!3670 (Int Int) Bool)

(assert (=> b!8039525 (= e!4735395 (equivClasses!3670 (toChars!11617 (transformation!8687 (h!81515 rulesRec!188))) (toValue!11758 (transformation!8687 (h!81515 rulesRec!188)))))))

(assert (= (and d!2395358 res!3177929) b!8039525))

(declare-fun m!8394464 () Bool)

(assert (=> d!2395358 m!8394464))

(declare-fun m!8394466 () Bool)

(assert (=> b!8039525 m!8394466))

(assert (=> b!8039379 d!2395358))

(declare-fun d!2395362 () Bool)

(assert (=> d!2395362 (= (inv!96885 (tag!9551 rSep!142)) (= (mod (str.len (value!290685 (tag!9551 rSep!142))) 2) 0))))

(assert (=> b!8039374 d!2395362))

(declare-fun d!2395364 () Bool)

(declare-fun res!3177930 () Bool)

(declare-fun e!4735396 () Bool)

(assert (=> d!2395364 (=> (not res!3177930) (not e!4735396))))

(assert (=> d!2395364 (= res!3177930 (semiInverseModEq!3855 (toChars!11617 (transformation!8687 rSep!142)) (toValue!11758 (transformation!8687 rSep!142))))))

(assert (=> d!2395364 (= (inv!96888 (transformation!8687 rSep!142)) e!4735396)))

(declare-fun b!8039528 () Bool)

(assert (=> b!8039528 (= e!4735396 (equivClasses!3670 (toChars!11617 (transformation!8687 rSep!142)) (toValue!11758 (transformation!8687 rSep!142))))))

(assert (= (and d!2395364 res!3177930) b!8039528))

(declare-fun m!8394468 () Bool)

(assert (=> d!2395364 m!8394468))

(declare-fun m!8394470 () Bool)

(assert (=> b!8039528 m!8394470))

(assert (=> b!8039374 d!2395364))

(declare-fun d!2395366 () Bool)

(assert (=> d!2395366 (= (inv!96885 (tag!9551 (h!81515 rules!4142))) (= (mod (str.len (value!290685 (tag!9551 (h!81515 rules!4142)))) 2) 0))))

(assert (=> b!8039373 d!2395366))

(declare-fun d!2395368 () Bool)

(declare-fun res!3177931 () Bool)

(declare-fun e!4735403 () Bool)

(assert (=> d!2395368 (=> (not res!3177931) (not e!4735403))))

(assert (=> d!2395368 (= res!3177931 (semiInverseModEq!3855 (toChars!11617 (transformation!8687 (h!81515 rules!4142))) (toValue!11758 (transformation!8687 (h!81515 rules!4142)))))))

(assert (=> d!2395368 (= (inv!96888 (transformation!8687 (h!81515 rules!4142))) e!4735403)))

(declare-fun b!8039539 () Bool)

(assert (=> b!8039539 (= e!4735403 (equivClasses!3670 (toChars!11617 (transformation!8687 (h!81515 rules!4142))) (toValue!11758 (transformation!8687 (h!81515 rules!4142)))))))

(assert (= (and d!2395368 res!3177931) b!8039539))

(declare-fun m!8394472 () Bool)

(assert (=> d!2395368 m!8394472))

(declare-fun m!8394474 () Bool)

(assert (=> b!8039539 m!8394474))

(assert (=> b!8039373 d!2395368))

(declare-fun d!2395370 () Bool)

(assert (=> d!2395370 (= (inv!96885 (tag!9551 rNSep!142)) (= (mod (str.len (value!290685 (tag!9551 rNSep!142))) 2) 0))))

(assert (=> b!8039386 d!2395370))

(declare-fun d!2395372 () Bool)

(declare-fun res!3177932 () Bool)

(declare-fun e!4735406 () Bool)

(assert (=> d!2395372 (=> (not res!3177932) (not e!4735406))))

(assert (=> d!2395372 (= res!3177932 (semiInverseModEq!3855 (toChars!11617 (transformation!8687 rNSep!142)) (toValue!11758 (transformation!8687 rNSep!142))))))

(assert (=> d!2395372 (= (inv!96888 (transformation!8687 rNSep!142)) e!4735406)))

(declare-fun b!8039544 () Bool)

(assert (=> b!8039544 (= e!4735406 (equivClasses!3670 (toChars!11617 (transformation!8687 rNSep!142)) (toValue!11758 (transformation!8687 rNSep!142))))))

(assert (= (and d!2395372 res!3177932) b!8039544))

(declare-fun m!8394476 () Bool)

(assert (=> d!2395372 m!8394476))

(declare-fun m!8394478 () Bool)

(assert (=> b!8039544 m!8394478))

(assert (=> b!8039386 d!2395372))

(declare-fun d!2395374 () Bool)

(declare-fun res!3177937 () Bool)

(declare-fun e!4735411 () Bool)

(assert (=> d!2395374 (=> res!3177937 e!4735411)))

(assert (=> d!2395374 (= res!3177937 (not (is-Cons!75067 rulesRec!188)))))

(assert (=> d!2395374 (= (sepAndNonSepRulesDisjointChars!2047 rules!4142 rulesRec!188) e!4735411)))

(declare-fun b!8039549 () Bool)

(declare-fun e!4735412 () Bool)

(assert (=> b!8039549 (= e!4735411 e!4735412)))

(declare-fun res!3177938 () Bool)

(assert (=> b!8039549 (=> (not res!3177938) (not e!4735412))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!969 (Rule!17174 List!75193) Bool)

(assert (=> b!8039549 (= res!3177938 (ruleDisjointCharsFromAllFromOtherType!969 (h!81515 rulesRec!188) rules!4142))))

(declare-fun b!8039550 () Bool)

(assert (=> b!8039550 (= e!4735412 (sepAndNonSepRulesDisjointChars!2047 rules!4142 (t!390963 rulesRec!188)))))

(assert (= (and d!2395374 (not res!3177937)) b!8039549))

(assert (= (and b!8039549 res!3177938) b!8039550))

(declare-fun m!8394480 () Bool)

(assert (=> b!8039549 m!8394480))

(declare-fun m!8394482 () Bool)

(assert (=> b!8039550 m!8394482))

(assert (=> b!8039385 d!2395374))

(declare-fun d!2395376 () Bool)

(declare-fun lt!2722203 () Bool)

(assert (=> d!2395376 (= lt!2722203 (set.member rNSep!142 (content!16022 rules!4142)))))

(declare-fun e!4735413 () Bool)

(assert (=> d!2395376 (= lt!2722203 e!4735413)))

(declare-fun res!3177939 () Bool)

(assert (=> d!2395376 (=> (not res!3177939) (not e!4735413))))

(assert (=> d!2395376 (= res!3177939 (is-Cons!75067 rules!4142))))

(assert (=> d!2395376 (= (contains!20957 rules!4142 rNSep!142) lt!2722203)))

(declare-fun b!8039551 () Bool)

(declare-fun e!4735414 () Bool)

(assert (=> b!8039551 (= e!4735413 e!4735414)))

(declare-fun res!3177940 () Bool)

(assert (=> b!8039551 (=> res!3177940 e!4735414)))

(assert (=> b!8039551 (= res!3177940 (= (h!81515 rules!4142) rNSep!142))))

(declare-fun b!8039552 () Bool)

(assert (=> b!8039552 (= e!4735414 (contains!20957 (t!390963 rules!4142) rNSep!142))))

(assert (= (and d!2395376 res!3177939) b!8039551))

(assert (= (and b!8039551 (not res!3177940)) b!8039552))

(assert (=> d!2395376 m!8394444))

(declare-fun m!8394484 () Bool)

(assert (=> d!2395376 m!8394484))

(declare-fun m!8394486 () Bool)

(assert (=> b!8039552 m!8394486))

(assert (=> b!8039380 d!2395376))

(declare-fun b!8039571 () Bool)

(declare-fun b_free!135395 () Bool)

(declare-fun b_next!136185 () Bool)

(assert (=> b!8039571 (= b_free!135395 (not b_next!136185))))

(declare-fun tp!2408074 () Bool)

(declare-fun b_and!353831 () Bool)

(assert (=> b!8039571 (= tp!2408074 b_and!353831)))

(declare-fun b_free!135397 () Bool)

(declare-fun b_next!136187 () Bool)

(assert (=> b!8039571 (= b_free!135397 (not b_next!136187))))

(declare-fun tp!2408075 () Bool)

(declare-fun b_and!353833 () Bool)

(assert (=> b!8039571 (= tp!2408075 b_and!353833)))

(declare-fun e!4735430 () Bool)

(assert (=> b!8039571 (= e!4735430 (and tp!2408074 tp!2408075))))

(declare-fun tp!2408076 () Bool)

(declare-fun b!8039570 () Bool)

(declare-fun e!4735427 () Bool)

(assert (=> b!8039570 (= e!4735427 (and tp!2408076 (inv!96885 (tag!9551 (h!81515 (t!390963 rules!4142)))) (inv!96888 (transformation!8687 (h!81515 (t!390963 rules!4142)))) e!4735430))))

(declare-fun b!8039569 () Bool)

(declare-fun e!4735429 () Bool)

(declare-fun tp!2408077 () Bool)

(assert (=> b!8039569 (= e!4735429 (and e!4735427 tp!2408077))))

(assert (=> b!8039378 (= tp!2408019 e!4735429)))

(assert (= b!8039570 b!8039571))

(assert (= b!8039569 b!8039570))

(assert (= (and b!8039378 (is-Cons!75067 (t!390963 rules!4142))) b!8039569))

(declare-fun m!8394494 () Bool)

(assert (=> b!8039570 m!8394494))

(declare-fun m!8394496 () Bool)

(assert (=> b!8039570 m!8394496))

(declare-fun b!8039589 () Bool)

(declare-fun e!4735437 () Bool)

(declare-fun tp!2408091 () Bool)

(declare-fun tp!2408090 () Bool)

(assert (=> b!8039589 (= e!4735437 (and tp!2408091 tp!2408090))))

(declare-fun b!8039586 () Bool)

(assert (=> b!8039586 (= e!4735437 tp_is_empty!54511)))

(assert (=> b!8039379 (= tp!2408018 e!4735437)))

(declare-fun b!8039588 () Bool)

(declare-fun tp!2408089 () Bool)

(assert (=> b!8039588 (= e!4735437 tp!2408089)))

(declare-fun b!8039587 () Bool)

(declare-fun tp!2408088 () Bool)

(declare-fun tp!2408092 () Bool)

(assert (=> b!8039587 (= e!4735437 (and tp!2408088 tp!2408092))))

(assert (= (and b!8039379 (is-ElementMatch!21758 (regex!8687 (h!81515 rulesRec!188)))) b!8039586))

(assert (= (and b!8039379 (is-Concat!30766 (regex!8687 (h!81515 rulesRec!188)))) b!8039587))

(assert (= (and b!8039379 (is-Star!21758 (regex!8687 (h!81515 rulesRec!188)))) b!8039588))

(assert (= (and b!8039379 (is-Union!21758 (regex!8687 (h!81515 rulesRec!188)))) b!8039589))

(declare-fun b!8039594 () Bool)

(declare-fun e!4735439 () Bool)

(declare-fun tp!2408096 () Bool)

(declare-fun tp!2408095 () Bool)

(assert (=> b!8039594 (= e!4735439 (and tp!2408096 tp!2408095))))

(declare-fun b!8039591 () Bool)

(assert (=> b!8039591 (= e!4735439 tp_is_empty!54511)))

(assert (=> b!8039374 (= tp!2408013 e!4735439)))

(declare-fun b!8039593 () Bool)

(declare-fun tp!2408094 () Bool)

(assert (=> b!8039593 (= e!4735439 tp!2408094)))

(declare-fun b!8039592 () Bool)

(declare-fun tp!2408093 () Bool)

(declare-fun tp!2408097 () Bool)

(assert (=> b!8039592 (= e!4735439 (and tp!2408093 tp!2408097))))

(assert (= (and b!8039374 (is-ElementMatch!21758 (regex!8687 rSep!142))) b!8039591))

(assert (= (and b!8039374 (is-Concat!30766 (regex!8687 rSep!142))) b!8039592))

(assert (= (and b!8039374 (is-Star!21758 (regex!8687 rSep!142))) b!8039593))

(assert (= (and b!8039374 (is-Union!21758 (regex!8687 rSep!142))) b!8039594))

(declare-fun b!8039602 () Bool)

(declare-fun e!4735442 () Bool)

(declare-fun tp!2408101 () Bool)

(declare-fun tp!2408100 () Bool)

(assert (=> b!8039602 (= e!4735442 (and tp!2408101 tp!2408100))))

(declare-fun b!8039599 () Bool)

(assert (=> b!8039599 (= e!4735442 tp_is_empty!54511)))

(assert (=> b!8039373 (= tp!2408021 e!4735442)))

(declare-fun b!8039601 () Bool)

(declare-fun tp!2408099 () Bool)

(assert (=> b!8039601 (= e!4735442 tp!2408099)))

(declare-fun b!8039600 () Bool)

(declare-fun tp!2408098 () Bool)

(declare-fun tp!2408102 () Bool)

(assert (=> b!8039600 (= e!4735442 (and tp!2408098 tp!2408102))))

(assert (= (and b!8039373 (is-ElementMatch!21758 (regex!8687 (h!81515 rules!4142)))) b!8039599))

(assert (= (and b!8039373 (is-Concat!30766 (regex!8687 (h!81515 rules!4142)))) b!8039600))

(assert (= (and b!8039373 (is-Star!21758 (regex!8687 (h!81515 rules!4142)))) b!8039601))

(assert (= (and b!8039373 (is-Union!21758 (regex!8687 (h!81515 rules!4142)))) b!8039602))

(declare-fun b!8039605 () Bool)

(declare-fun b_free!135399 () Bool)

(declare-fun b_next!136189 () Bool)

(assert (=> b!8039605 (= b_free!135399 (not b_next!136189))))

(declare-fun tp!2408103 () Bool)

(declare-fun b_and!353835 () Bool)

(assert (=> b!8039605 (= tp!2408103 b_and!353835)))

(declare-fun b_free!135401 () Bool)

(declare-fun b_next!136191 () Bool)

(assert (=> b!8039605 (= b_free!135401 (not b_next!136191))))

(declare-fun tp!2408104 () Bool)

(declare-fun b_and!353837 () Bool)

(assert (=> b!8039605 (= tp!2408104 b_and!353837)))

(declare-fun e!4735446 () Bool)

(assert (=> b!8039605 (= e!4735446 (and tp!2408103 tp!2408104))))

(declare-fun tp!2408105 () Bool)

(declare-fun b!8039604 () Bool)

(declare-fun e!4735443 () Bool)

(assert (=> b!8039604 (= e!4735443 (and tp!2408105 (inv!96885 (tag!9551 (h!81515 (t!390963 rulesRec!188)))) (inv!96888 (transformation!8687 (h!81515 (t!390963 rulesRec!188)))) e!4735446))))

(declare-fun b!8039603 () Bool)

(declare-fun e!4735445 () Bool)

(declare-fun tp!2408106 () Bool)

(assert (=> b!8039603 (= e!4735445 (and e!4735443 tp!2408106))))

(assert (=> b!8039375 (= tp!2408022 e!4735445)))

(assert (= b!8039604 b!8039605))

(assert (= b!8039603 b!8039604))

(assert (= (and b!8039375 (is-Cons!75067 (t!390963 rulesRec!188))) b!8039603))

(declare-fun m!8394514 () Bool)

(assert (=> b!8039604 m!8394514))

(declare-fun m!8394516 () Bool)

(assert (=> b!8039604 m!8394516))

(declare-fun b!8039611 () Bool)

(declare-fun e!4735451 () Bool)

(declare-fun tp!2408112 () Bool)

(declare-fun tp!2408111 () Bool)

(assert (=> b!8039611 (= e!4735451 (and tp!2408112 tp!2408111))))

(declare-fun b!8039608 () Bool)

(assert (=> b!8039608 (= e!4735451 tp_is_empty!54511)))

(assert (=> b!8039386 (= tp!2408023 e!4735451)))

(declare-fun b!8039610 () Bool)

(declare-fun tp!2408110 () Bool)

(assert (=> b!8039610 (= e!4735451 tp!2408110)))

(declare-fun b!8039609 () Bool)

(declare-fun tp!2408109 () Bool)

(declare-fun tp!2408113 () Bool)

(assert (=> b!8039609 (= e!4735451 (and tp!2408109 tp!2408113))))

(assert (= (and b!8039386 (is-ElementMatch!21758 (regex!8687 rNSep!142))) b!8039608))

(assert (= (and b!8039386 (is-Concat!30766 (regex!8687 rNSep!142))) b!8039609))

(assert (= (and b!8039386 (is-Star!21758 (regex!8687 rNSep!142))) b!8039610))

(assert (= (and b!8039386 (is-Union!21758 (regex!8687 rNSep!142))) b!8039611))

(push 1)

(assert (not bm!746298))

(assert (not d!2395342))

(assert (not b!8039550))

(assert (not b!8039600))

(assert (not b!8039593))

(assert b_and!353813)

(assert (not b!8039587))

(assert b_and!353831)

(assert (not b_next!136157))

(assert b_and!353801)

(assert (not b_next!136191))

(assert b_and!353807)

(assert (not b_next!136185))

(assert (not b_next!136187))

(assert (not b!8039604))

(assert (not d!2395368))

(assert (not b!8039588))

(assert (not b!8039520))

(assert (not d!2395364))

(assert (not b_next!136161))

(assert (not b!8039603))

(assert (not b_next!136163))

(assert (not b_next!136165))

(assert (not b_next!136159))

(assert (not d!2395328))

(assert (not b!8039549))

(assert (not b_next!136153))

(assert (not b_next!136167))

(assert (not b!8039601))

(assert (not b!8039592))

(assert b_and!353809)

(assert b_and!353799)

(assert (not b!8039512))

(assert (not b!8039544))

(assert tp_is_empty!54511)

(assert (not b!8039594))

(assert (not d!2395358))

(assert (not b_next!136155))

(assert b_and!353803)

(assert b_and!353835)

(assert b_and!353833)

(assert (not d!2395350))

(assert (not b!8039611))

(assert b_and!353811)

(assert (not b!8039569))

(assert (not b!8039602))

(assert (not b!8039589))

(assert b_and!353805)

(assert (not b!8039609))

(assert (not b!8039508))

(assert (not bm!746299))

(assert (not b!8039499))

(assert (not b_next!136189))

(assert (not b!8039610))

(assert (not b!8039449))

(assert (not d!2395372))

(assert (not d!2395376))

(assert (not b!8039539))

(assert (not d!2395352))

(assert (not bm!746300))

(assert b_and!353837)

(assert (not b!8039570))

(assert (not b!8039528))

(assert (not b!8039525))

(assert (not b!8039552))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!136187))

(assert (not b_next!136161))

(assert (not b_next!136163))

(assert b_and!353813)

(assert b_and!353831)

(assert (not b_next!136157))

(assert b_and!353805)

(assert (not b_next!136189))

(assert b_and!353801)

(assert (not b_next!136191))

(assert b_and!353807)

(assert (not b_next!136185))

(assert b_and!353837)

(assert (not b_next!136165))

(assert (not b_next!136159))

(assert (not b_next!136153))

(assert (not b_next!136167))

(assert b_and!353809)

(assert b_and!353799)

(assert (not b_next!136155))

(assert b_and!353803)

(assert b_and!353835)

(assert b_and!353833)

(assert b_and!353811)

(check-sat)

(pop 1)

