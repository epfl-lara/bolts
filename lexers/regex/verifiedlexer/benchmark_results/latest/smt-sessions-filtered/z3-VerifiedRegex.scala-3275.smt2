; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188134 () Bool)

(assert start!188134)

(declare-fun b!1876224 () Bool)

(declare-fun b_free!52209 () Bool)

(declare-fun b_next!52913 () Bool)

(assert (=> b!1876224 (= b_free!52209 (not b_next!52913))))

(declare-fun tp!534817 () Bool)

(declare-fun b_and!144503 () Bool)

(assert (=> b!1876224 (= tp!534817 b_and!144503)))

(declare-fun b_free!52211 () Bool)

(declare-fun b_next!52915 () Bool)

(assert (=> b!1876224 (= b_free!52211 (not b_next!52915))))

(declare-fun tp!534814 () Bool)

(declare-fun b_and!144505 () Bool)

(assert (=> b!1876224 (= tp!534814 b_and!144505)))

(declare-fun e!1197540 () Bool)

(declare-fun e!1197542 () Bool)

(declare-fun tp!534812 () Bool)

(declare-fun b!1876219 () Bool)

(declare-datatypes ((List!20997 0))(
  ( (Nil!20915) (Cons!20915 (h!26316 (_ BitVec 16)) (t!173226 List!20997)) )
))
(declare-datatypes ((TokenValue!3846 0))(
  ( (FloatLiteralValue!7692 (text!27367 List!20997)) (TokenValueExt!3845 (__x!13130 Int)) (Broken!19230 (value!117174 List!20997)) (Object!3927) (End!3846) (Def!3846) (Underscore!3846) (Match!3846) (Else!3846) (Error!3846) (Case!3846) (If!3846) (Extends!3846) (Abstract!3846) (Class!3846) (Val!3846) (DelimiterValue!7692 (del!3906 List!20997)) (KeywordValue!3852 (value!117175 List!20997)) (CommentValue!7692 (value!117176 List!20997)) (WhitespaceValue!7692 (value!117177 List!20997)) (IndentationValue!3846 (value!117178 List!20997)) (String!24179) (Int32!3846) (Broken!19231 (value!117179 List!20997)) (Boolean!3847) (Unit!35439) (OperatorValue!3849 (op!3906 List!20997)) (IdentifierValue!7692 (value!117180 List!20997)) (IdentifierValue!7693 (value!117181 List!20997)) (WhitespaceValue!7693 (value!117182 List!20997)) (True!7692) (False!7692) (Broken!19232 (value!117183 List!20997)) (Broken!19233 (value!117184 List!20997)) (True!7693) (RightBrace!3846) (RightBracket!3846) (Colon!3846) (Null!3846) (Comma!3846) (LeftBracket!3846) (False!7693) (LeftBrace!3846) (ImaginaryLiteralValue!3846 (text!27368 List!20997)) (StringLiteralValue!11538 (value!117185 List!20997)) (EOFValue!3846 (value!117186 List!20997)) (IdentValue!3846 (value!117187 List!20997)) (DelimiterValue!7693 (value!117188 List!20997)) (DedentValue!3846 (value!117189 List!20997)) (NewLineValue!3846 (value!117190 List!20997)) (IntegerValue!11538 (value!117191 (_ BitVec 32)) (text!27369 List!20997)) (IntegerValue!11539 (value!117192 Int) (text!27370 List!20997)) (Times!3846) (Or!3846) (Equal!3846) (Minus!3846) (Broken!19234 (value!117193 List!20997)) (And!3846) (Div!3846) (LessEqual!3846) (Mod!3846) (Concat!8965) (Not!3846) (Plus!3846) (SpaceValue!3846 (value!117194 List!20997)) (IntegerValue!11540 (value!117195 Int) (text!27371 List!20997)) (StringLiteralValue!11539 (text!27372 List!20997)) (FloatLiteralValue!7693 (text!27373 List!20997)) (BytesLiteralValue!3846 (value!117196 List!20997)) (CommentValue!7693 (value!117197 List!20997)) (StringLiteralValue!11540 (value!117198 List!20997)) (ErrorTokenValue!3846 (msg!3907 List!20997)) )
))
(declare-datatypes ((C!10396 0))(
  ( (C!10397 (val!6086 Int)) )
))
(declare-datatypes ((Regex!5119 0))(
  ( (ElementMatch!5119 (c!305734 C!10396)) (Concat!8966 (regOne!10750 Regex!5119) (regTwo!10750 Regex!5119)) (EmptyExpr!5119) (Star!5119 (reg!5448 Regex!5119)) (EmptyLang!5119) (Union!5119 (regOne!10751 Regex!5119) (regTwo!10751 Regex!5119)) )
))
(declare-datatypes ((List!20998 0))(
  ( (Nil!20916) (Cons!20916 (h!26317 C!10396) (t!173227 List!20998)) )
))
(declare-datatypes ((IArray!13903 0))(
  ( (IArray!13904 (innerList!7009 List!20998)) )
))
(declare-datatypes ((Conc!6949 0))(
  ( (Node!6949 (left!16810 Conc!6949) (right!17140 Conc!6949) (csize!14128 Int) (cheight!7160 Int)) (Leaf!10225 (xs!9833 IArray!13903) (csize!14129 Int)) (Empty!6949) )
))
(declare-datatypes ((BalanceConc!13714 0))(
  ( (BalanceConc!13715 (c!305735 Conc!6949)) )
))
(declare-datatypes ((TokenValueInjection!7276 0))(
  ( (TokenValueInjection!7277 (toValue!5307 Int) (toChars!5166 Int)) )
))
(declare-datatypes ((String!24180 0))(
  ( (String!24181 (value!117199 String)) )
))
(declare-datatypes ((Rule!7220 0))(
  ( (Rule!7221 (regex!3710 Regex!5119) (tag!4124 String!24180) (isSeparator!3710 Bool) (transformation!3710 TokenValueInjection!7276)) )
))
(declare-datatypes ((Token!6972 0))(
  ( (Token!6973 (value!117200 TokenValue!3846) (rule!5903 Rule!7220) (size!16595 Int) (originalCharacters!4517 List!20998)) )
))
(declare-fun separatorToken!84 () Token!6972)

(declare-fun inv!27815 (String!24180) Bool)

(declare-fun inv!27820 (TokenValueInjection!7276) Bool)

(assert (=> b!1876219 (= e!1197542 (and tp!534812 (inv!27815 (tag!4124 (rule!5903 separatorToken!84))) (inv!27820 (transformation!3710 (rule!5903 separatorToken!84))) e!1197540))))

(declare-fun b!1876220 () Bool)

(declare-fun e!1197538 () Bool)

(declare-fun e!1197537 () Bool)

(assert (=> b!1876220 (= e!1197538 e!1197537)))

(declare-fun res!839026 () Bool)

(assert (=> b!1876220 (=> (not res!839026) (not e!1197537))))

(declare-fun from!845 () Int)

(declare-fun lt!721285 () Int)

(assert (=> b!1876220 (= res!839026 (and (<= from!845 lt!721285) (isSeparator!3710 (rule!5903 separatorToken!84)) (>= from!845 lt!721285)))))

(declare-datatypes ((List!20999 0))(
  ( (Nil!20917) (Cons!20917 (h!26318 Token!6972) (t!173228 List!20999)) )
))
(declare-datatypes ((IArray!13905 0))(
  ( (IArray!13906 (innerList!7010 List!20999)) )
))
(declare-datatypes ((Conc!6950 0))(
  ( (Node!6950 (left!16811 Conc!6950) (right!17141 Conc!6950) (csize!14130 Int) (cheight!7161 Int)) (Leaf!10226 (xs!9834 IArray!13905) (csize!14131 Int)) (Empty!6950) )
))
(declare-datatypes ((BalanceConc!13716 0))(
  ( (BalanceConc!13717 (c!305736 Conc!6950)) )
))
(declare-fun v!6352 () BalanceConc!13716)

(declare-fun size!16596 (BalanceConc!13716) Int)

(assert (=> b!1876220 (= lt!721285 (size!16596 v!6352))))

(declare-fun b!1876221 () Bool)

(declare-fun e!1197543 () Bool)

(declare-fun tp!534815 () Bool)

(declare-fun inv!27821 (Conc!6950) Bool)

(assert (=> b!1876221 (= e!1197543 (and (inv!27821 (c!305736 v!6352)) tp!534815))))

(declare-fun b!1876222 () Bool)

(declare-fun e!1197539 () Bool)

(declare-fun acc!408 () BalanceConc!13716)

(declare-fun tp!534816 () Bool)

(assert (=> b!1876222 (= e!1197539 (and (inv!27821 (c!305736 acc!408)) tp!534816))))

(declare-fun b!1876223 () Bool)

(declare-fun e!1197541 () Bool)

(declare-fun tp!534813 () Bool)

(declare-fun inv!21 (TokenValue!3846) Bool)

(assert (=> b!1876223 (= e!1197541 (and (inv!21 (value!117200 separatorToken!84)) e!1197542 tp!534813))))

(assert (=> b!1876224 (= e!1197540 (and tp!534817 tp!534814))))

(declare-fun b!1876225 () Bool)

(declare-fun lt!721287 () List!20999)

(declare-fun lt!721286 () List!20999)

(declare-fun ++!5684 (List!20999 List!20999) List!20999)

(assert (=> b!1876225 (= e!1197537 (not (= lt!721287 (++!5684 lt!721287 lt!721286))))))

(declare-fun list!8532 (BalanceConc!13716) List!20999)

(assert (=> b!1876225 (= lt!721287 (list!8532 acc!408))))

(declare-datatypes ((LexerInterface!3332 0))(
  ( (LexerInterfaceExt!3329 (__x!13131 Int)) (Lexer!3330) )
))
(declare-fun thiss!13718 () LexerInterface!3332)

(declare-fun withSeparatorTokenList!118 (LexerInterface!3332 List!20999 Token!6972) List!20999)

(declare-fun drop!1030 (List!20999 Int) List!20999)

(assert (=> b!1876225 (= lt!721286 (withSeparatorTokenList!118 thiss!13718 (drop!1030 (list!8532 v!6352) from!845) separatorToken!84))))

(declare-fun res!839027 () Bool)

(assert (=> start!188134 (=> (not res!839027) (not e!1197538))))

(get-info :version)

(assert (=> start!188134 (= res!839027 (and ((_ is Lexer!3330) thiss!13718) (>= from!845 0)))))

(assert (=> start!188134 e!1197538))

(assert (=> start!188134 true))

(declare-fun inv!27822 (BalanceConc!13716) Bool)

(assert (=> start!188134 (and (inv!27822 acc!408) e!1197539)))

(assert (=> start!188134 (and (inv!27822 v!6352) e!1197543)))

(declare-fun inv!27823 (Token!6972) Bool)

(assert (=> start!188134 (and (inv!27823 separatorToken!84) e!1197541)))

(assert (= (and start!188134 res!839027) b!1876220))

(assert (= (and b!1876220 res!839026) b!1876225))

(assert (= start!188134 b!1876222))

(assert (= start!188134 b!1876221))

(assert (= b!1876219 b!1876224))

(assert (= b!1876223 b!1876219))

(assert (= start!188134 b!1876223))

(declare-fun m!2302371 () Bool)

(assert (=> b!1876222 m!2302371))

(declare-fun m!2302373 () Bool)

(assert (=> b!1876221 m!2302373))

(declare-fun m!2302375 () Bool)

(assert (=> b!1876223 m!2302375))

(declare-fun m!2302377 () Bool)

(assert (=> b!1876225 m!2302377))

(declare-fun m!2302379 () Bool)

(assert (=> b!1876225 m!2302379))

(assert (=> b!1876225 m!2302379))

(declare-fun m!2302381 () Bool)

(assert (=> b!1876225 m!2302381))

(declare-fun m!2302383 () Bool)

(assert (=> b!1876225 m!2302383))

(assert (=> b!1876225 m!2302381))

(declare-fun m!2302385 () Bool)

(assert (=> b!1876225 m!2302385))

(declare-fun m!2302387 () Bool)

(assert (=> b!1876219 m!2302387))

(declare-fun m!2302389 () Bool)

(assert (=> b!1876219 m!2302389))

(declare-fun m!2302391 () Bool)

(assert (=> b!1876220 m!2302391))

(declare-fun m!2302393 () Bool)

(assert (=> start!188134 m!2302393))

(declare-fun m!2302395 () Bool)

(assert (=> start!188134 m!2302395))

(declare-fun m!2302397 () Bool)

(assert (=> start!188134 m!2302397))

(check-sat (not b!1876219) (not b!1876223) (not b!1876220) b_and!144505 b_and!144503 (not b_next!52913) (not b!1876221) (not start!188134) (not b!1876225) (not b_next!52915) (not b!1876222))
(check-sat b_and!144505 b_and!144503 (not b_next!52913) (not b_next!52915))
(get-model)

(declare-fun d!573098 () Bool)

(declare-fun c!305739 () Bool)

(assert (=> d!573098 (= c!305739 ((_ is Node!6950) (c!305736 acc!408)))))

(declare-fun e!1197550 () Bool)

(assert (=> d!573098 (= (inv!27821 (c!305736 acc!408)) e!1197550)))

(declare-fun b!1876236 () Bool)

(declare-fun inv!27826 (Conc!6950) Bool)

(assert (=> b!1876236 (= e!1197550 (inv!27826 (c!305736 acc!408)))))

(declare-fun b!1876237 () Bool)

(declare-fun e!1197551 () Bool)

(assert (=> b!1876237 (= e!1197550 e!1197551)))

(declare-fun res!839040 () Bool)

(assert (=> b!1876237 (= res!839040 (not ((_ is Leaf!10226) (c!305736 acc!408))))))

(assert (=> b!1876237 (=> res!839040 e!1197551)))

(declare-fun b!1876238 () Bool)

(declare-fun inv!27827 (Conc!6950) Bool)

(assert (=> b!1876238 (= e!1197551 (inv!27827 (c!305736 acc!408)))))

(assert (= (and d!573098 c!305739) b!1876236))

(assert (= (and d!573098 (not c!305739)) b!1876237))

(assert (= (and b!1876237 (not res!839040)) b!1876238))

(declare-fun m!2302403 () Bool)

(assert (=> b!1876236 m!2302403))

(declare-fun m!2302405 () Bool)

(assert (=> b!1876238 m!2302405))

(assert (=> b!1876222 d!573098))

(declare-fun d!573104 () Bool)

(declare-fun isBalanced!2201 (Conc!6950) Bool)

(assert (=> d!573104 (= (inv!27822 acc!408) (isBalanced!2201 (c!305736 acc!408)))))

(declare-fun bs!412222 () Bool)

(assert (= bs!412222 d!573104))

(declare-fun m!2302419 () Bool)

(assert (=> bs!412222 m!2302419))

(assert (=> start!188134 d!573104))

(declare-fun d!573110 () Bool)

(assert (=> d!573110 (= (inv!27822 v!6352) (isBalanced!2201 (c!305736 v!6352)))))

(declare-fun bs!412223 () Bool)

(assert (= bs!412223 d!573110))

(declare-fun m!2302421 () Bool)

(assert (=> bs!412223 m!2302421))

(assert (=> start!188134 d!573110))

(declare-fun d!573112 () Bool)

(declare-fun res!839050 () Bool)

(declare-fun e!1197561 () Bool)

(assert (=> d!573112 (=> (not res!839050) (not e!1197561))))

(declare-fun isEmpty!12974 (List!20998) Bool)

(assert (=> d!573112 (= res!839050 (not (isEmpty!12974 (originalCharacters!4517 separatorToken!84))))))

(assert (=> d!573112 (= (inv!27823 separatorToken!84) e!1197561)))

(declare-fun b!1876253 () Bool)

(declare-fun res!839051 () Bool)

(assert (=> b!1876253 (=> (not res!839051) (not e!1197561))))

(declare-fun list!8535 (BalanceConc!13714) List!20998)

(declare-fun dynLambda!10230 (Int TokenValue!3846) BalanceConc!13714)

(assert (=> b!1876253 (= res!839051 (= (originalCharacters!4517 separatorToken!84) (list!8535 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))))

(declare-fun b!1876254 () Bool)

(declare-fun size!16598 (List!20998) Int)

(assert (=> b!1876254 (= e!1197561 (= (size!16595 separatorToken!84) (size!16598 (originalCharacters!4517 separatorToken!84))))))

(assert (= (and d!573112 res!839050) b!1876253))

(assert (= (and b!1876253 res!839051) b!1876254))

(declare-fun b_lambda!61643 () Bool)

(assert (=> (not b_lambda!61643) (not b!1876253)))

(declare-fun t!173232 () Bool)

(declare-fun tb!112955 () Bool)

(assert (=> (and b!1876224 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84)))) t!173232) tb!112955))

(declare-fun b!1876259 () Bool)

(declare-fun e!1197564 () Bool)

(declare-fun tp!534823 () Bool)

(declare-fun inv!27828 (Conc!6949) Bool)

(assert (=> b!1876259 (= e!1197564 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))) tp!534823))))

(declare-fun result!136738 () Bool)

(declare-fun inv!27829 (BalanceConc!13714) Bool)

(assert (=> tb!112955 (= result!136738 (and (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))) e!1197564))))

(assert (= tb!112955 b!1876259))

(declare-fun m!2302429 () Bool)

(assert (=> b!1876259 m!2302429))

(declare-fun m!2302431 () Bool)

(assert (=> tb!112955 m!2302431))

(assert (=> b!1876253 t!173232))

(declare-fun b_and!144509 () Bool)

(assert (= b_and!144505 (and (=> t!173232 result!136738) b_and!144509)))

(declare-fun m!2302433 () Bool)

(assert (=> d!573112 m!2302433))

(declare-fun m!2302435 () Bool)

(assert (=> b!1876253 m!2302435))

(assert (=> b!1876253 m!2302435))

(declare-fun m!2302437 () Bool)

(assert (=> b!1876253 m!2302437))

(declare-fun m!2302439 () Bool)

(assert (=> b!1876254 m!2302439))

(assert (=> start!188134 d!573112))

(declare-fun b!1876270 () Bool)

(declare-fun e!1197573 () Bool)

(declare-fun inv!17 (TokenValue!3846) Bool)

(assert (=> b!1876270 (= e!1197573 (inv!17 (value!117200 separatorToken!84)))))

(declare-fun b!1876271 () Bool)

(declare-fun e!1197571 () Bool)

(assert (=> b!1876271 (= e!1197571 e!1197573)))

(declare-fun c!305745 () Bool)

(assert (=> b!1876271 (= c!305745 ((_ is IntegerValue!11539) (value!117200 separatorToken!84)))))

(declare-fun d!573118 () Bool)

(declare-fun c!305744 () Bool)

(assert (=> d!573118 (= c!305744 ((_ is IntegerValue!11538) (value!117200 separatorToken!84)))))

(assert (=> d!573118 (= (inv!21 (value!117200 separatorToken!84)) e!1197571)))

(declare-fun b!1876272 () Bool)

(declare-fun res!839054 () Bool)

(declare-fun e!1197572 () Bool)

(assert (=> b!1876272 (=> res!839054 e!1197572)))

(assert (=> b!1876272 (= res!839054 (not ((_ is IntegerValue!11540) (value!117200 separatorToken!84))))))

(assert (=> b!1876272 (= e!1197573 e!1197572)))

(declare-fun b!1876273 () Bool)

(declare-fun inv!15 (TokenValue!3846) Bool)

(assert (=> b!1876273 (= e!1197572 (inv!15 (value!117200 separatorToken!84)))))

(declare-fun b!1876274 () Bool)

(declare-fun inv!16 (TokenValue!3846) Bool)

(assert (=> b!1876274 (= e!1197571 (inv!16 (value!117200 separatorToken!84)))))

(assert (= (and d!573118 c!305744) b!1876274))

(assert (= (and d!573118 (not c!305744)) b!1876271))

(assert (= (and b!1876271 c!305745) b!1876270))

(assert (= (and b!1876271 (not c!305745)) b!1876272))

(assert (= (and b!1876272 (not res!839054)) b!1876273))

(declare-fun m!2302441 () Bool)

(assert (=> b!1876270 m!2302441))

(declare-fun m!2302443 () Bool)

(assert (=> b!1876273 m!2302443))

(declare-fun m!2302445 () Bool)

(assert (=> b!1876274 m!2302445))

(assert (=> b!1876223 d!573118))

(declare-fun d!573120 () Bool)

(declare-fun list!8536 (Conc!6950) List!20999)

(assert (=> d!573120 (= (list!8532 acc!408) (list!8536 (c!305736 acc!408)))))

(declare-fun bs!412225 () Bool)

(assert (= bs!412225 d!573120))

(declare-fun m!2302447 () Bool)

(assert (=> bs!412225 m!2302447))

(assert (=> b!1876225 d!573120))

(declare-fun lt!721336 () List!20999)

(declare-fun d!573122 () Bool)

(declare-fun printList!1012 (LexerInterface!3332 List!20999) List!20998)

(declare-fun printWithSeparatorTokenList!70 (LexerInterface!3332 List!20999 Token!6972) List!20998)

(assert (=> d!573122 (= (printList!1012 thiss!13718 lt!721336) (printWithSeparatorTokenList!70 thiss!13718 (drop!1030 (list!8532 v!6352) from!845) separatorToken!84))))

(declare-fun e!1197619 () List!20999)

(assert (=> d!573122 (= lt!721336 e!1197619)))

(declare-fun c!305775 () Bool)

(assert (=> d!573122 (= c!305775 ((_ is Cons!20917) (drop!1030 (list!8532 v!6352) from!845)))))

(declare-fun e!1197623 () Bool)

(assert (=> d!573122 e!1197623))

(declare-fun res!839080 () Bool)

(assert (=> d!573122 (=> (not res!839080) (not e!1197623))))

(assert (=> d!573122 (= res!839080 (isSeparator!3710 (rule!5903 separatorToken!84)))))

(assert (=> d!573122 (= (withSeparatorTokenList!118 thiss!13718 (drop!1030 (list!8532 v!6352) from!845) separatorToken!84) lt!721336)))

(declare-fun b!1876352 () Bool)

(declare-fun e!1197621 () List!20998)

(declare-fun lt!721335 () List!20999)

(declare-fun ++!5686 (List!20998 List!20998) List!20998)

(declare-fun charsOf!2302 (Token!6972) BalanceConc!13714)

(assert (=> b!1876352 (= e!1197621 (++!5686 (list!8535 (charsOf!2302 (h!26318 lt!721335))) (printList!1012 thiss!13718 (t!173228 lt!721335))))))

(declare-fun b!1876353 () Bool)

(declare-fun $colon$colon!494 (List!20999 Token!6972) List!20999)

(assert (=> b!1876353 (= e!1197619 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))

(declare-fun lt!721338 () List!20998)

(assert (=> b!1876353 (= lt!721338 (list!8535 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))

(declare-fun lt!721332 () List!20998)

(assert (=> b!1876353 (= lt!721332 (list!8535 (charsOf!2302 separatorToken!84)))))

(declare-fun lt!721333 () List!20998)

(assert (=> b!1876353 (= lt!721333 (printList!1012 thiss!13718 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))

(declare-datatypes ((Unit!35442 0))(
  ( (Unit!35443) )
))
(declare-fun lt!721337 () Unit!35442)

(declare-fun lemmaConcatAssociativity!1125 (List!20998 List!20998 List!20998) Unit!35442)

(assert (=> b!1876353 (= lt!721337 (lemmaConcatAssociativity!1125 lt!721338 lt!721332 lt!721333))))

(assert (=> b!1876353 (= (++!5686 (++!5686 lt!721338 lt!721332) lt!721333) (++!5686 lt!721338 (++!5686 lt!721332 lt!721333)))))

(declare-fun lt!721334 () Unit!35442)

(assert (=> b!1876353 (= lt!721334 lt!721337)))

(declare-fun b!1876354 () Bool)

(declare-fun e!1197622 () List!20998)

(assert (=> b!1876354 (= e!1197622 Nil!20916)))

(declare-fun b!1876355 () Bool)

(declare-fun e!1197624 () Bool)

(assert (=> b!1876355 (= e!1197624 (= (printList!1012 thiss!13718 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))) e!1197622))))

(declare-fun c!305774 () Bool)

(declare-fun lt!721331 () List!20999)

(assert (=> b!1876355 (= c!305774 ((_ is Cons!20917) lt!721331))))

(assert (=> b!1876355 (= lt!721331 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))

(declare-fun b!1876356 () Bool)

(assert (=> b!1876356 (= e!1197622 (++!5686 (list!8535 (charsOf!2302 (h!26318 lt!721331))) (printList!1012 thiss!13718 (t!173228 lt!721331))))))

(declare-fun b!1876357 () Bool)

(assert (=> b!1876357 (= e!1197621 Nil!20916)))

(declare-fun b!1876358 () Bool)

(declare-fun res!839079 () Bool)

(assert (=> b!1876358 (=> (not res!839079) (not e!1197623))))

(assert (=> b!1876358 (= res!839079 e!1197624)))

(declare-fun res!839081 () Bool)

(assert (=> b!1876358 (=> res!839081 e!1197624)))

(assert (=> b!1876358 (= res!839081 (not ((_ is Cons!20917) (drop!1030 (list!8532 v!6352) from!845))))))

(declare-fun b!1876359 () Bool)

(declare-fun e!1197620 () Bool)

(assert (=> b!1876359 (= e!1197623 e!1197620)))

(declare-fun res!839078 () Bool)

(assert (=> b!1876359 (=> res!839078 e!1197620)))

(assert (=> b!1876359 (= res!839078 (not ((_ is Cons!20917) (drop!1030 (list!8532 v!6352) from!845))))))

(declare-fun b!1876360 () Bool)

(assert (=> b!1876360 (= e!1197619 Nil!20917)))

(declare-fun b!1876361 () Bool)

(assert (=> b!1876361 (= e!1197620 (= (printList!1012 thiss!13718 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)) e!1197621))))

(declare-fun c!305773 () Bool)

(assert (=> b!1876361 (= c!305773 ((_ is Cons!20917) lt!721335))))

(assert (=> b!1876361 (= lt!721335 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))))

(assert (= (and d!573122 res!839080) b!1876358))

(assert (= (and b!1876358 (not res!839081)) b!1876355))

(assert (= (and b!1876355 c!305774) b!1876356))

(assert (= (and b!1876355 (not c!305774)) b!1876354))

(assert (= (and b!1876358 res!839079) b!1876359))

(assert (= (and b!1876359 (not res!839078)) b!1876361))

(assert (= (and b!1876361 c!305773) b!1876352))

(assert (= (and b!1876361 (not c!305773)) b!1876357))

(assert (= (and d!573122 c!305775) b!1876353))

(assert (= (and d!573122 (not c!305775)) b!1876360))

(declare-fun m!2302511 () Bool)

(assert (=> b!1876353 m!2302511))

(declare-fun m!2302513 () Bool)

(assert (=> b!1876353 m!2302513))

(declare-fun m!2302515 () Bool)

(assert (=> b!1876353 m!2302515))

(declare-fun m!2302517 () Bool)

(assert (=> b!1876353 m!2302517))

(assert (=> b!1876353 m!2302511))

(declare-fun m!2302519 () Bool)

(assert (=> b!1876353 m!2302519))

(assert (=> b!1876353 m!2302513))

(declare-fun m!2302521 () Bool)

(assert (=> b!1876353 m!2302521))

(assert (=> b!1876353 m!2302521))

(declare-fun m!2302523 () Bool)

(assert (=> b!1876353 m!2302523))

(declare-fun m!2302525 () Bool)

(assert (=> b!1876353 m!2302525))

(declare-fun m!2302527 () Bool)

(assert (=> b!1876353 m!2302527))

(declare-fun m!2302529 () Bool)

(assert (=> b!1876353 m!2302529))

(declare-fun m!2302531 () Bool)

(assert (=> b!1876353 m!2302531))

(assert (=> b!1876353 m!2302513))

(declare-fun m!2302533 () Bool)

(assert (=> b!1876353 m!2302533))

(assert (=> b!1876353 m!2302515))

(declare-fun m!2302535 () Bool)

(assert (=> b!1876353 m!2302535))

(assert (=> b!1876353 m!2302529))

(assert (=> b!1876353 m!2302525))

(assert (=> b!1876355 m!2302513))

(assert (=> b!1876355 m!2302513))

(assert (=> b!1876355 m!2302521))

(assert (=> b!1876355 m!2302521))

(assert (=> b!1876355 m!2302523))

(assert (=> b!1876355 m!2302523))

(declare-fun m!2302551 () Bool)

(assert (=> b!1876355 m!2302551))

(assert (=> b!1876361 m!2302513))

(assert (=> b!1876361 m!2302513))

(assert (=> b!1876361 m!2302521))

(assert (=> b!1876361 m!2302521))

(declare-fun m!2302553 () Bool)

(assert (=> b!1876361 m!2302553))

(declare-fun m!2302555 () Bool)

(assert (=> b!1876352 m!2302555))

(assert (=> b!1876352 m!2302555))

(declare-fun m!2302557 () Bool)

(assert (=> b!1876352 m!2302557))

(declare-fun m!2302559 () Bool)

(assert (=> b!1876352 m!2302559))

(assert (=> b!1876352 m!2302557))

(assert (=> b!1876352 m!2302559))

(declare-fun m!2302561 () Bool)

(assert (=> b!1876352 m!2302561))

(declare-fun m!2302563 () Bool)

(assert (=> d!573122 m!2302563))

(assert (=> d!573122 m!2302381))

(declare-fun m!2302565 () Bool)

(assert (=> d!573122 m!2302565))

(declare-fun m!2302567 () Bool)

(assert (=> b!1876356 m!2302567))

(assert (=> b!1876356 m!2302567))

(declare-fun m!2302569 () Bool)

(assert (=> b!1876356 m!2302569))

(declare-fun m!2302571 () Bool)

(assert (=> b!1876356 m!2302571))

(assert (=> b!1876356 m!2302569))

(assert (=> b!1876356 m!2302571))

(declare-fun m!2302573 () Bool)

(assert (=> b!1876356 m!2302573))

(assert (=> b!1876225 d!573122))

(declare-fun d!573132 () Bool)

(assert (=> d!573132 (= (list!8532 v!6352) (list!8536 (c!305736 v!6352)))))

(declare-fun bs!412227 () Bool)

(assert (= bs!412227 d!573132))

(declare-fun m!2302575 () Bool)

(assert (=> bs!412227 m!2302575))

(assert (=> b!1876225 d!573132))

(declare-fun b!1876429 () Bool)

(declare-fun e!1197660 () Int)

(declare-fun call!116168 () Int)

(assert (=> b!1876429 (= e!1197660 (- call!116168 from!845))))

(declare-fun b!1876430 () Bool)

(declare-fun e!1197662 () Int)

(assert (=> b!1876430 (= e!1197662 e!1197660)))

(declare-fun c!305799 () Bool)

(assert (=> b!1876430 (= c!305799 (>= from!845 call!116168))))

(declare-fun b!1876431 () Bool)

(assert (=> b!1876431 (= e!1197660 0)))

(declare-fun b!1876432 () Bool)

(declare-fun e!1197664 () List!20999)

(assert (=> b!1876432 (= e!1197664 (drop!1030 (t!173228 (list!8532 v!6352)) (- from!845 1)))))

(declare-fun bm!116163 () Bool)

(declare-fun size!16601 (List!20999) Int)

(assert (=> bm!116163 (= call!116168 (size!16601 (list!8532 v!6352)))))

(declare-fun b!1876433 () Bool)

(assert (=> b!1876433 (= e!1197664 (list!8532 v!6352))))

(declare-fun d!573134 () Bool)

(declare-fun e!1197661 () Bool)

(assert (=> d!573134 e!1197661))

(declare-fun res!839097 () Bool)

(assert (=> d!573134 (=> (not res!839097) (not e!1197661))))

(declare-fun lt!721347 () List!20999)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3111 (List!20999) (InoxSet Token!6972))

(assert (=> d!573134 (= res!839097 (= ((_ map implies) (content!3111 lt!721347) (content!3111 (list!8532 v!6352))) ((as const (InoxSet Token!6972)) true)))))

(declare-fun e!1197663 () List!20999)

(assert (=> d!573134 (= lt!721347 e!1197663)))

(declare-fun c!305798 () Bool)

(assert (=> d!573134 (= c!305798 ((_ is Nil!20917) (list!8532 v!6352)))))

(assert (=> d!573134 (= (drop!1030 (list!8532 v!6352) from!845) lt!721347)))

(declare-fun b!1876434 () Bool)

(assert (=> b!1876434 (= e!1197663 e!1197664)))

(declare-fun c!305797 () Bool)

(assert (=> b!1876434 (= c!305797 (<= from!845 0))))

(declare-fun b!1876435 () Bool)

(assert (=> b!1876435 (= e!1197663 Nil!20917)))

(declare-fun b!1876436 () Bool)

(assert (=> b!1876436 (= e!1197661 (= (size!16601 lt!721347) e!1197662))))

(declare-fun c!305800 () Bool)

(assert (=> b!1876436 (= c!305800 (<= from!845 0))))

(declare-fun b!1876437 () Bool)

(assert (=> b!1876437 (= e!1197662 call!116168)))

(assert (= (and d!573134 c!305798) b!1876435))

(assert (= (and d!573134 (not c!305798)) b!1876434))

(assert (= (and b!1876434 c!305797) b!1876433))

(assert (= (and b!1876434 (not c!305797)) b!1876432))

(assert (= (and d!573134 res!839097) b!1876436))

(assert (= (and b!1876436 c!305800) b!1876437))

(assert (= (and b!1876436 (not c!305800)) b!1876430))

(assert (= (and b!1876430 c!305799) b!1876431))

(assert (= (and b!1876430 (not c!305799)) b!1876429))

(assert (= (or b!1876437 b!1876430 b!1876429) bm!116163))

(declare-fun m!2302593 () Bool)

(assert (=> b!1876432 m!2302593))

(assert (=> bm!116163 m!2302379))

(declare-fun m!2302595 () Bool)

(assert (=> bm!116163 m!2302595))

(declare-fun m!2302597 () Bool)

(assert (=> d!573134 m!2302597))

(assert (=> d!573134 m!2302379))

(declare-fun m!2302599 () Bool)

(assert (=> d!573134 m!2302599))

(declare-fun m!2302601 () Bool)

(assert (=> b!1876436 m!2302601))

(assert (=> b!1876225 d!573134))

(declare-fun b!1876471 () Bool)

(declare-fun res!839102 () Bool)

(declare-fun e!1197681 () Bool)

(assert (=> b!1876471 (=> (not res!839102) (not e!1197681))))

(declare-fun lt!721350 () List!20999)

(assert (=> b!1876471 (= res!839102 (= (size!16601 lt!721350) (+ (size!16601 lt!721287) (size!16601 lt!721286))))))

(declare-fun b!1876469 () Bool)

(declare-fun e!1197682 () List!20999)

(assert (=> b!1876469 (= e!1197682 lt!721286)))

(declare-fun d!573142 () Bool)

(assert (=> d!573142 e!1197681))

(declare-fun res!839103 () Bool)

(assert (=> d!573142 (=> (not res!839103) (not e!1197681))))

(assert (=> d!573142 (= res!839103 (= (content!3111 lt!721350) ((_ map or) (content!3111 lt!721287) (content!3111 lt!721286))))))

(assert (=> d!573142 (= lt!721350 e!1197682)))

(declare-fun c!305803 () Bool)

(assert (=> d!573142 (= c!305803 ((_ is Nil!20917) lt!721287))))

(assert (=> d!573142 (= (++!5684 lt!721287 lt!721286) lt!721350)))

(declare-fun b!1876470 () Bool)

(assert (=> b!1876470 (= e!1197682 (Cons!20917 (h!26318 lt!721287) (++!5684 (t!173228 lt!721287) lt!721286)))))

(declare-fun b!1876472 () Bool)

(assert (=> b!1876472 (= e!1197681 (or (not (= lt!721286 Nil!20917)) (= lt!721350 lt!721287)))))

(assert (= (and d!573142 c!305803) b!1876469))

(assert (= (and d!573142 (not c!305803)) b!1876470))

(assert (= (and d!573142 res!839103) b!1876471))

(assert (= (and b!1876471 res!839102) b!1876472))

(declare-fun m!2302615 () Bool)

(assert (=> b!1876471 m!2302615))

(declare-fun m!2302617 () Bool)

(assert (=> b!1876471 m!2302617))

(declare-fun m!2302619 () Bool)

(assert (=> b!1876471 m!2302619))

(declare-fun m!2302621 () Bool)

(assert (=> d!573142 m!2302621))

(declare-fun m!2302623 () Bool)

(assert (=> d!573142 m!2302623))

(declare-fun m!2302625 () Bool)

(assert (=> d!573142 m!2302625))

(declare-fun m!2302627 () Bool)

(assert (=> b!1876470 m!2302627))

(assert (=> b!1876225 d!573142))

(declare-fun d!573144 () Bool)

(declare-fun lt!721353 () Int)

(assert (=> d!573144 (= lt!721353 (size!16601 (list!8532 v!6352)))))

(declare-fun size!16602 (Conc!6950) Int)

(assert (=> d!573144 (= lt!721353 (size!16602 (c!305736 v!6352)))))

(assert (=> d!573144 (= (size!16596 v!6352) lt!721353)))

(declare-fun bs!412229 () Bool)

(assert (= bs!412229 d!573144))

(assert (=> bs!412229 m!2302379))

(assert (=> bs!412229 m!2302379))

(assert (=> bs!412229 m!2302595))

(declare-fun m!2302629 () Bool)

(assert (=> bs!412229 m!2302629))

(assert (=> b!1876220 d!573144))

(declare-fun d!573146 () Bool)

(assert (=> d!573146 (= (inv!27815 (tag!4124 (rule!5903 separatorToken!84))) (= (mod (str.len (value!117199 (tag!4124 (rule!5903 separatorToken!84)))) 2) 0))))

(assert (=> b!1876219 d!573146))

(declare-fun d!573148 () Bool)

(declare-fun res!839106 () Bool)

(declare-fun e!1197685 () Bool)

(assert (=> d!573148 (=> (not res!839106) (not e!1197685))))

(declare-fun semiInverseModEq!1514 (Int Int) Bool)

(assert (=> d!573148 (= res!839106 (semiInverseModEq!1514 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toValue!5307 (transformation!3710 (rule!5903 separatorToken!84)))))))

(assert (=> d!573148 (= (inv!27820 (transformation!3710 (rule!5903 separatorToken!84))) e!1197685)))

(declare-fun b!1876475 () Bool)

(declare-fun equivClasses!1441 (Int Int) Bool)

(assert (=> b!1876475 (= e!1197685 (equivClasses!1441 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toValue!5307 (transformation!3710 (rule!5903 separatorToken!84)))))))

(assert (= (and d!573148 res!839106) b!1876475))

(declare-fun m!2302631 () Bool)

(assert (=> d!573148 m!2302631))

(declare-fun m!2302633 () Bool)

(assert (=> b!1876475 m!2302633))

(assert (=> b!1876219 d!573148))

(declare-fun d!573150 () Bool)

(declare-fun c!305804 () Bool)

(assert (=> d!573150 (= c!305804 ((_ is Node!6950) (c!305736 v!6352)))))

(declare-fun e!1197686 () Bool)

(assert (=> d!573150 (= (inv!27821 (c!305736 v!6352)) e!1197686)))

(declare-fun b!1876476 () Bool)

(assert (=> b!1876476 (= e!1197686 (inv!27826 (c!305736 v!6352)))))

(declare-fun b!1876477 () Bool)

(declare-fun e!1197687 () Bool)

(assert (=> b!1876477 (= e!1197686 e!1197687)))

(declare-fun res!839107 () Bool)

(assert (=> b!1876477 (= res!839107 (not ((_ is Leaf!10226) (c!305736 v!6352))))))

(assert (=> b!1876477 (=> res!839107 e!1197687)))

(declare-fun b!1876478 () Bool)

(assert (=> b!1876478 (= e!1197687 (inv!27827 (c!305736 v!6352)))))

(assert (= (and d!573150 c!305804) b!1876476))

(assert (= (and d!573150 (not c!305804)) b!1876477))

(assert (= (and b!1876477 (not res!839107)) b!1876478))

(declare-fun m!2302635 () Bool)

(assert (=> b!1876476 m!2302635))

(declare-fun m!2302637 () Bool)

(assert (=> b!1876478 m!2302637))

(assert (=> b!1876221 d!573150))

(declare-fun b!1876487 () Bool)

(declare-fun tp!534860 () Bool)

(declare-fun e!1197693 () Bool)

(declare-fun tp!534861 () Bool)

(assert (=> b!1876487 (= e!1197693 (and (inv!27821 (left!16811 (c!305736 acc!408))) tp!534861 (inv!27821 (right!17141 (c!305736 acc!408))) tp!534860))))

(declare-fun b!1876489 () Bool)

(declare-fun e!1197692 () Bool)

(declare-fun tp!534862 () Bool)

(assert (=> b!1876489 (= e!1197692 tp!534862)))

(declare-fun b!1876488 () Bool)

(declare-fun inv!27833 (IArray!13905) Bool)

(assert (=> b!1876488 (= e!1197693 (and (inv!27833 (xs!9834 (c!305736 acc!408))) e!1197692))))

(assert (=> b!1876222 (= tp!534816 (and (inv!27821 (c!305736 acc!408)) e!1197693))))

(assert (= (and b!1876222 ((_ is Node!6950) (c!305736 acc!408))) b!1876487))

(assert (= b!1876488 b!1876489))

(assert (= (and b!1876222 ((_ is Leaf!10226) (c!305736 acc!408))) b!1876488))

(declare-fun m!2302639 () Bool)

(assert (=> b!1876487 m!2302639))

(declare-fun m!2302641 () Bool)

(assert (=> b!1876487 m!2302641))

(declare-fun m!2302643 () Bool)

(assert (=> b!1876488 m!2302643))

(assert (=> b!1876222 m!2302371))

(declare-fun b!1876494 () Bool)

(declare-fun e!1197696 () Bool)

(declare-fun tp_is_empty!8895 () Bool)

(declare-fun tp!534865 () Bool)

(assert (=> b!1876494 (= e!1197696 (and tp_is_empty!8895 tp!534865))))

(assert (=> b!1876223 (= tp!534813 e!1197696)))

(assert (= (and b!1876223 ((_ is Cons!20916) (originalCharacters!4517 separatorToken!84))) b!1876494))

(declare-fun b!1876507 () Bool)

(declare-fun e!1197699 () Bool)

(declare-fun tp!534878 () Bool)

(assert (=> b!1876507 (= e!1197699 tp!534878)))

(declare-fun b!1876506 () Bool)

(declare-fun tp!534880 () Bool)

(declare-fun tp!534877 () Bool)

(assert (=> b!1876506 (= e!1197699 (and tp!534880 tp!534877))))

(assert (=> b!1876219 (= tp!534812 e!1197699)))

(declare-fun b!1876508 () Bool)

(declare-fun tp!534876 () Bool)

(declare-fun tp!534879 () Bool)

(assert (=> b!1876508 (= e!1197699 (and tp!534876 tp!534879))))

(declare-fun b!1876505 () Bool)

(assert (=> b!1876505 (= e!1197699 tp_is_empty!8895)))

(assert (= (and b!1876219 ((_ is ElementMatch!5119) (regex!3710 (rule!5903 separatorToken!84)))) b!1876505))

(assert (= (and b!1876219 ((_ is Concat!8966) (regex!3710 (rule!5903 separatorToken!84)))) b!1876506))

(assert (= (and b!1876219 ((_ is Star!5119) (regex!3710 (rule!5903 separatorToken!84)))) b!1876507))

(assert (= (and b!1876219 ((_ is Union!5119) (regex!3710 (rule!5903 separatorToken!84)))) b!1876508))

(declare-fun e!1197701 () Bool)

(declare-fun tp!534882 () Bool)

(declare-fun tp!534881 () Bool)

(declare-fun b!1876509 () Bool)

(assert (=> b!1876509 (= e!1197701 (and (inv!27821 (left!16811 (c!305736 v!6352))) tp!534882 (inv!27821 (right!17141 (c!305736 v!6352))) tp!534881))))

(declare-fun b!1876511 () Bool)

(declare-fun e!1197700 () Bool)

(declare-fun tp!534883 () Bool)

(assert (=> b!1876511 (= e!1197700 tp!534883)))

(declare-fun b!1876510 () Bool)

(assert (=> b!1876510 (= e!1197701 (and (inv!27833 (xs!9834 (c!305736 v!6352))) e!1197700))))

(assert (=> b!1876221 (= tp!534815 (and (inv!27821 (c!305736 v!6352)) e!1197701))))

(assert (= (and b!1876221 ((_ is Node!6950) (c!305736 v!6352))) b!1876509))

(assert (= b!1876510 b!1876511))

(assert (= (and b!1876221 ((_ is Leaf!10226) (c!305736 v!6352))) b!1876510))

(declare-fun m!2302645 () Bool)

(assert (=> b!1876509 m!2302645))

(declare-fun m!2302647 () Bool)

(assert (=> b!1876509 m!2302647))

(declare-fun m!2302649 () Bool)

(assert (=> b!1876510 m!2302649))

(assert (=> b!1876221 m!2302373))

(declare-fun b_lambda!61647 () Bool)

(assert (= b_lambda!61643 (or (and b!1876224 b_free!52211) b_lambda!61647)))

(check-sat (not b!1876506) (not tb!112955) tp_is_empty!8895 (not b_lambda!61647) (not b!1876274) (not b!1876487) (not d!573144) (not b!1876509) (not bm!116163) (not b!1876470) (not b!1876353) (not b!1876471) (not d!573112) (not b!1876476) (not d!573110) (not d!573120) (not b!1876432) (not b!1876356) (not b!1876352) (not b!1876510) (not b!1876270) (not d!573132) (not b!1876236) (not b!1876488) (not b!1876355) (not b!1876253) (not d!573104) (not b!1876259) (not b!1876436) (not b!1876489) (not b!1876511) (not d!573134) (not b!1876273) (not d!573148) (not b!1876361) b_and!144509 (not b!1876508) (not b!1876254) (not b_next!52915) (not b!1876222) (not b!1876478) (not b!1876238) (not d!573142) b_and!144503 (not b!1876475) (not b!1876507) (not b!1876494) (not b_next!52913) (not b!1876221) (not d!573122))
(check-sat b_and!144509 b_and!144503 (not b_next!52913) (not b_next!52915))
(get-model)

(declare-fun d!573154 () Bool)

(declare-fun lt!721356 () BalanceConc!13714)

(assert (=> d!573154 (= (list!8535 lt!721356) (originalCharacters!4517 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))

(assert (=> d!573154 (= lt!721356 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (value!117200 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))

(assert (=> d!573154 (= (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845))) lt!721356)))

(declare-fun b_lambda!61649 () Bool)

(assert (=> (not b_lambda!61649) (not d!573154)))

(declare-fun t!173234 () Bool)

(declare-fun tb!112957 () Bool)

(assert (=> (and b!1876224 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))) t!173234) tb!112957))

(declare-fun tp!534884 () Bool)

(declare-fun b!1876512 () Bool)

(declare-fun e!1197702 () Bool)

(assert (=> b!1876512 (= e!1197702 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (value!117200 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))) tp!534884))))

(declare-fun result!136754 () Bool)

(assert (=> tb!112957 (= result!136754 (and (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (value!117200 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) e!1197702))))

(assert (= tb!112957 b!1876512))

(declare-fun m!2302651 () Bool)

(assert (=> b!1876512 m!2302651))

(declare-fun m!2302653 () Bool)

(assert (=> tb!112957 m!2302653))

(assert (=> d!573154 t!173234))

(declare-fun b_and!144511 () Bool)

(assert (= b_and!144509 (and (=> t!173234 result!136754) b_and!144511)))

(declare-fun m!2302655 () Bool)

(assert (=> d!573154 m!2302655))

(declare-fun m!2302657 () Bool)

(assert (=> d!573154 m!2302657))

(assert (=> b!1876353 d!573154))

(declare-fun d!573156 () Bool)

(assert (=> d!573156 (= (++!5686 (++!5686 lt!721338 lt!721332) lt!721333) (++!5686 lt!721338 (++!5686 lt!721332 lt!721333)))))

(declare-fun lt!721359 () Unit!35442)

(declare-fun choose!11782 (List!20998 List!20998 List!20998) Unit!35442)

(assert (=> d!573156 (= lt!721359 (choose!11782 lt!721338 lt!721332 lt!721333))))

(assert (=> d!573156 (= (lemmaConcatAssociativity!1125 lt!721338 lt!721332 lt!721333) lt!721359)))

(declare-fun bs!412230 () Bool)

(assert (= bs!412230 d!573156))

(assert (=> bs!412230 m!2302525))

(assert (=> bs!412230 m!2302527))

(declare-fun m!2302659 () Bool)

(assert (=> bs!412230 m!2302659))

(assert (=> bs!412230 m!2302529))

(assert (=> bs!412230 m!2302531))

(assert (=> bs!412230 m!2302525))

(assert (=> bs!412230 m!2302529))

(assert (=> b!1876353 d!573156))

(declare-fun c!305807 () Bool)

(declare-fun d!573158 () Bool)

(assert (=> d!573158 (= c!305807 ((_ is Cons!20917) (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))

(declare-fun e!1197705 () List!20998)

(assert (=> d!573158 (= (printList!1012 thiss!13718 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)) e!1197705)))

(declare-fun b!1876517 () Bool)

(assert (=> b!1876517 (= e!1197705 (++!5686 (list!8535 (charsOf!2302 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))) (printList!1012 thiss!13718 (t!173228 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))))

(declare-fun b!1876518 () Bool)

(assert (=> b!1876518 (= e!1197705 Nil!20916)))

(assert (= (and d!573158 c!305807) b!1876517))

(assert (= (and d!573158 (not c!305807)) b!1876518))

(declare-fun m!2302661 () Bool)

(assert (=> b!1876517 m!2302661))

(assert (=> b!1876517 m!2302661))

(declare-fun m!2302663 () Bool)

(assert (=> b!1876517 m!2302663))

(declare-fun m!2302665 () Bool)

(assert (=> b!1876517 m!2302665))

(assert (=> b!1876517 m!2302663))

(assert (=> b!1876517 m!2302665))

(declare-fun m!2302667 () Bool)

(assert (=> b!1876517 m!2302667))

(assert (=> b!1876353 d!573158))

(declare-fun lt!721362 () List!20998)

(declare-fun b!1876530 () Bool)

(declare-fun e!1197711 () Bool)

(assert (=> b!1876530 (= e!1197711 (or (not (= lt!721332 Nil!20916)) (= lt!721362 lt!721338)))))

(declare-fun d!573160 () Bool)

(assert (=> d!573160 e!1197711))

(declare-fun res!839118 () Bool)

(assert (=> d!573160 (=> (not res!839118) (not e!1197711))))

(declare-fun content!3113 (List!20998) (InoxSet C!10396))

(assert (=> d!573160 (= res!839118 (= (content!3113 lt!721362) ((_ map or) (content!3113 lt!721338) (content!3113 lt!721332))))))

(declare-fun e!1197710 () List!20998)

(assert (=> d!573160 (= lt!721362 e!1197710)))

(declare-fun c!305810 () Bool)

(assert (=> d!573160 (= c!305810 ((_ is Nil!20916) lt!721338))))

(assert (=> d!573160 (= (++!5686 lt!721338 lt!721332) lt!721362)))

(declare-fun b!1876528 () Bool)

(assert (=> b!1876528 (= e!1197710 (Cons!20916 (h!26317 lt!721338) (++!5686 (t!173227 lt!721338) lt!721332)))))

(declare-fun b!1876527 () Bool)

(assert (=> b!1876527 (= e!1197710 lt!721332)))

(declare-fun b!1876529 () Bool)

(declare-fun res!839117 () Bool)

(assert (=> b!1876529 (=> (not res!839117) (not e!1197711))))

(assert (=> b!1876529 (= res!839117 (= (size!16598 lt!721362) (+ (size!16598 lt!721338) (size!16598 lt!721332))))))

(assert (= (and d!573160 c!305810) b!1876527))

(assert (= (and d!573160 (not c!305810)) b!1876528))

(assert (= (and d!573160 res!839118) b!1876529))

(assert (= (and b!1876529 res!839117) b!1876530))

(declare-fun m!2302669 () Bool)

(assert (=> d!573160 m!2302669))

(declare-fun m!2302671 () Bool)

(assert (=> d!573160 m!2302671))

(declare-fun m!2302673 () Bool)

(assert (=> d!573160 m!2302673))

(declare-fun m!2302675 () Bool)

(assert (=> b!1876528 m!2302675))

(declare-fun m!2302677 () Bool)

(assert (=> b!1876529 m!2302677))

(declare-fun m!2302679 () Bool)

(assert (=> b!1876529 m!2302679))

(declare-fun m!2302681 () Bool)

(assert (=> b!1876529 m!2302681))

(assert (=> b!1876353 d!573160))

(declare-fun d!573162 () Bool)

(assert (=> d!573162 (= ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (Cons!20917 separatorToken!84 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))

(assert (=> b!1876353 d!573162))

(declare-fun d!573164 () Bool)

(declare-fun list!8539 (Conc!6949) List!20998)

(assert (=> d!573164 (= (list!8535 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))) (list!8539 (c!305735 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))))

(declare-fun bs!412231 () Bool)

(assert (= bs!412231 d!573164))

(declare-fun m!2302683 () Bool)

(assert (=> bs!412231 m!2302683))

(assert (=> b!1876353 d!573164))

(declare-fun d!573166 () Bool)

(assert (=> d!573166 (= ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))) (Cons!20917 (h!26318 (drop!1030 (list!8532 v!6352) from!845)) ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))))

(assert (=> b!1876353 d!573166))

(declare-fun b!1876534 () Bool)

(declare-fun e!1197713 () Bool)

(declare-fun lt!721363 () List!20998)

(assert (=> b!1876534 (= e!1197713 (or (not (= lt!721333 Nil!20916)) (= lt!721363 (++!5686 lt!721338 lt!721332))))))

(declare-fun d!573168 () Bool)

(assert (=> d!573168 e!1197713))

(declare-fun res!839120 () Bool)

(assert (=> d!573168 (=> (not res!839120) (not e!1197713))))

(assert (=> d!573168 (= res!839120 (= (content!3113 lt!721363) ((_ map or) (content!3113 (++!5686 lt!721338 lt!721332)) (content!3113 lt!721333))))))

(declare-fun e!1197712 () List!20998)

(assert (=> d!573168 (= lt!721363 e!1197712)))

(declare-fun c!305811 () Bool)

(assert (=> d!573168 (= c!305811 ((_ is Nil!20916) (++!5686 lt!721338 lt!721332)))))

(assert (=> d!573168 (= (++!5686 (++!5686 lt!721338 lt!721332) lt!721333) lt!721363)))

(declare-fun b!1876532 () Bool)

(assert (=> b!1876532 (= e!1197712 (Cons!20916 (h!26317 (++!5686 lt!721338 lt!721332)) (++!5686 (t!173227 (++!5686 lt!721338 lt!721332)) lt!721333)))))

(declare-fun b!1876531 () Bool)

(assert (=> b!1876531 (= e!1197712 lt!721333)))

(declare-fun b!1876533 () Bool)

(declare-fun res!839119 () Bool)

(assert (=> b!1876533 (=> (not res!839119) (not e!1197713))))

(assert (=> b!1876533 (= res!839119 (= (size!16598 lt!721363) (+ (size!16598 (++!5686 lt!721338 lt!721332)) (size!16598 lt!721333))))))

(assert (= (and d!573168 c!305811) b!1876531))

(assert (= (and d!573168 (not c!305811)) b!1876532))

(assert (= (and d!573168 res!839120) b!1876533))

(assert (= (and b!1876533 res!839119) b!1876534))

(declare-fun m!2302685 () Bool)

(assert (=> d!573168 m!2302685))

(assert (=> d!573168 m!2302525))

(declare-fun m!2302687 () Bool)

(assert (=> d!573168 m!2302687))

(declare-fun m!2302689 () Bool)

(assert (=> d!573168 m!2302689))

(declare-fun m!2302691 () Bool)

(assert (=> b!1876532 m!2302691))

(declare-fun m!2302693 () Bool)

(assert (=> b!1876533 m!2302693))

(assert (=> b!1876533 m!2302525))

(declare-fun m!2302695 () Bool)

(assert (=> b!1876533 m!2302695))

(declare-fun m!2302697 () Bool)

(assert (=> b!1876533 m!2302697))

(assert (=> b!1876353 d!573168))

(declare-fun d!573170 () Bool)

(assert (=> d!573170 (= (list!8535 (charsOf!2302 separatorToken!84)) (list!8539 (c!305735 (charsOf!2302 separatorToken!84))))))

(declare-fun bs!412232 () Bool)

(assert (= bs!412232 d!573170))

(declare-fun m!2302699 () Bool)

(assert (=> bs!412232 m!2302699))

(assert (=> b!1876353 d!573170))

(declare-fun d!573172 () Bool)

(declare-fun lt!721364 () BalanceConc!13714)

(assert (=> d!573172 (= (list!8535 lt!721364) (originalCharacters!4517 separatorToken!84))))

(assert (=> d!573172 (= lt!721364 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))

(assert (=> d!573172 (= (charsOf!2302 separatorToken!84) lt!721364)))

(declare-fun b_lambda!61651 () Bool)

(assert (=> (not b_lambda!61651) (not d!573172)))

(assert (=> d!573172 t!173232))

(declare-fun b_and!144513 () Bool)

(assert (= b_and!144511 (and (=> t!173232 result!136738) b_and!144513)))

(declare-fun m!2302701 () Bool)

(assert (=> d!573172 m!2302701))

(assert (=> d!573172 m!2302435))

(assert (=> b!1876353 d!573172))

(declare-fun d!573174 () Bool)

(declare-fun lt!721370 () List!20999)

(assert (=> d!573174 (= (printList!1012 thiss!13718 lt!721370) (printWithSeparatorTokenList!70 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))

(declare-fun e!1197714 () List!20999)

(assert (=> d!573174 (= lt!721370 e!1197714)))

(declare-fun c!305814 () Bool)

(assert (=> d!573174 (= c!305814 ((_ is Cons!20917) (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))

(declare-fun e!1197718 () Bool)

(assert (=> d!573174 e!1197718))

(declare-fun res!839123 () Bool)

(assert (=> d!573174 (=> (not res!839123) (not e!1197718))))

(assert (=> d!573174 (= res!839123 (isSeparator!3710 (rule!5903 separatorToken!84)))))

(assert (=> d!573174 (= (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) lt!721370)))

(declare-fun b!1876535 () Bool)

(declare-fun e!1197716 () List!20998)

(declare-fun lt!721369 () List!20999)

(assert (=> b!1876535 (= e!1197716 (++!5686 (list!8535 (charsOf!2302 (h!26318 lt!721369))) (printList!1012 thiss!13718 (t!173228 lt!721369))))))

(declare-fun b!1876536 () Bool)

(assert (=> b!1876536 (= e!1197714 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84) separatorToken!84) (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))))))

(declare-fun lt!721372 () List!20998)

(assert (=> b!1876536 (= lt!721372 (list!8535 (charsOf!2302 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))))

(declare-fun lt!721366 () List!20998)

(assert (=> b!1876536 (= lt!721366 (list!8535 (charsOf!2302 separatorToken!84)))))

(declare-fun lt!721367 () List!20998)

(assert (=> b!1876536 (= lt!721367 (printList!1012 thiss!13718 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84)))))

(declare-fun lt!721371 () Unit!35442)

(assert (=> b!1876536 (= lt!721371 (lemmaConcatAssociativity!1125 lt!721372 lt!721366 lt!721367))))

(assert (=> b!1876536 (= (++!5686 (++!5686 lt!721372 lt!721366) lt!721367) (++!5686 lt!721372 (++!5686 lt!721366 lt!721367)))))

(declare-fun lt!721368 () Unit!35442)

(assert (=> b!1876536 (= lt!721368 lt!721371)))

(declare-fun b!1876537 () Bool)

(declare-fun e!1197717 () List!20998)

(assert (=> b!1876537 (= e!1197717 Nil!20916)))

(declare-fun e!1197719 () Bool)

(declare-fun b!1876538 () Bool)

(assert (=> b!1876538 (= e!1197719 (= (printList!1012 thiss!13718 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84) separatorToken!84) (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))) e!1197717))))

(declare-fun c!305813 () Bool)

(declare-fun lt!721365 () List!20999)

(assert (=> b!1876538 (= c!305813 ((_ is Cons!20917) lt!721365))))

(assert (=> b!1876538 (= lt!721365 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84) separatorToken!84) (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))))))

(declare-fun b!1876539 () Bool)

(assert (=> b!1876539 (= e!1197717 (++!5686 (list!8535 (charsOf!2302 (h!26318 lt!721365))) (printList!1012 thiss!13718 (t!173228 lt!721365))))))

(declare-fun b!1876540 () Bool)

(assert (=> b!1876540 (= e!1197716 Nil!20916)))

(declare-fun b!1876541 () Bool)

(declare-fun res!839122 () Bool)

(assert (=> b!1876541 (=> (not res!839122) (not e!1197718))))

(assert (=> b!1876541 (= res!839122 e!1197719)))

(declare-fun res!839124 () Bool)

(assert (=> b!1876541 (=> res!839124 e!1197719)))

(assert (=> b!1876541 (= res!839124 (not ((_ is Cons!20917) (t!173228 (drop!1030 (list!8532 v!6352) from!845)))))))

(declare-fun b!1876542 () Bool)

(declare-fun e!1197715 () Bool)

(assert (=> b!1876542 (= e!1197718 e!1197715)))

(declare-fun res!839121 () Bool)

(assert (=> b!1876542 (=> res!839121 e!1197715)))

(assert (=> b!1876542 (= res!839121 (not ((_ is Cons!20917) (t!173228 (drop!1030 (list!8532 v!6352) from!845)))))))

(declare-fun b!1876543 () Bool)

(assert (=> b!1876543 (= e!1197714 Nil!20917)))

(declare-fun b!1876544 () Bool)

(assert (=> b!1876544 (= e!1197715 (= (printList!1012 thiss!13718 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84) separatorToken!84)) e!1197716))))

(declare-fun c!305812 () Bool)

(assert (=> b!1876544 (= c!305812 ((_ is Cons!20917) lt!721369))))

(assert (=> b!1876544 (= lt!721369 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84) separatorToken!84))))

(assert (= (and d!573174 res!839123) b!1876541))

(assert (= (and b!1876541 (not res!839124)) b!1876538))

(assert (= (and b!1876538 c!305813) b!1876539))

(assert (= (and b!1876538 (not c!305813)) b!1876537))

(assert (= (and b!1876541 res!839122) b!1876542))

(assert (= (and b!1876542 (not res!839121)) b!1876544))

(assert (= (and b!1876544 c!305812) b!1876535))

(assert (= (and b!1876544 (not c!305812)) b!1876540))

(assert (= (and d!573174 c!305814) b!1876536))

(assert (= (and d!573174 (not c!305814)) b!1876543))

(declare-fun m!2302703 () Bool)

(assert (=> b!1876536 m!2302703))

(declare-fun m!2302705 () Bool)

(assert (=> b!1876536 m!2302705))

(assert (=> b!1876536 m!2302515))

(declare-fun m!2302707 () Bool)

(assert (=> b!1876536 m!2302707))

(assert (=> b!1876536 m!2302703))

(declare-fun m!2302709 () Bool)

(assert (=> b!1876536 m!2302709))

(assert (=> b!1876536 m!2302705))

(declare-fun m!2302711 () Bool)

(assert (=> b!1876536 m!2302711))

(assert (=> b!1876536 m!2302711))

(declare-fun m!2302713 () Bool)

(assert (=> b!1876536 m!2302713))

(declare-fun m!2302715 () Bool)

(assert (=> b!1876536 m!2302715))

(declare-fun m!2302717 () Bool)

(assert (=> b!1876536 m!2302717))

(declare-fun m!2302719 () Bool)

(assert (=> b!1876536 m!2302719))

(declare-fun m!2302721 () Bool)

(assert (=> b!1876536 m!2302721))

(assert (=> b!1876536 m!2302705))

(declare-fun m!2302723 () Bool)

(assert (=> b!1876536 m!2302723))

(assert (=> b!1876536 m!2302515))

(assert (=> b!1876536 m!2302535))

(assert (=> b!1876536 m!2302719))

(assert (=> b!1876536 m!2302715))

(assert (=> b!1876538 m!2302705))

(assert (=> b!1876538 m!2302705))

(assert (=> b!1876538 m!2302711))

(assert (=> b!1876538 m!2302711))

(assert (=> b!1876538 m!2302713))

(assert (=> b!1876538 m!2302713))

(declare-fun m!2302725 () Bool)

(assert (=> b!1876538 m!2302725))

(assert (=> b!1876544 m!2302705))

(assert (=> b!1876544 m!2302705))

(assert (=> b!1876544 m!2302711))

(assert (=> b!1876544 m!2302711))

(declare-fun m!2302727 () Bool)

(assert (=> b!1876544 m!2302727))

(declare-fun m!2302729 () Bool)

(assert (=> b!1876535 m!2302729))

(assert (=> b!1876535 m!2302729))

(declare-fun m!2302731 () Bool)

(assert (=> b!1876535 m!2302731))

(declare-fun m!2302733 () Bool)

(assert (=> b!1876535 m!2302733))

(assert (=> b!1876535 m!2302731))

(assert (=> b!1876535 m!2302733))

(declare-fun m!2302735 () Bool)

(assert (=> b!1876535 m!2302735))

(declare-fun m!2302737 () Bool)

(assert (=> d!573174 m!2302737))

(declare-fun m!2302739 () Bool)

(assert (=> d!573174 m!2302739))

(declare-fun m!2302741 () Bool)

(assert (=> b!1876539 m!2302741))

(assert (=> b!1876539 m!2302741))

(declare-fun m!2302743 () Bool)

(assert (=> b!1876539 m!2302743))

(declare-fun m!2302745 () Bool)

(assert (=> b!1876539 m!2302745))

(assert (=> b!1876539 m!2302743))

(assert (=> b!1876539 m!2302745))

(declare-fun m!2302747 () Bool)

(assert (=> b!1876539 m!2302747))

(assert (=> b!1876353 d!573174))

(declare-fun e!1197721 () Bool)

(declare-fun b!1876548 () Bool)

(declare-fun lt!721373 () List!20998)

(assert (=> b!1876548 (= e!1197721 (or (not (= (++!5686 lt!721332 lt!721333) Nil!20916)) (= lt!721373 lt!721338)))))

(declare-fun d!573176 () Bool)

(assert (=> d!573176 e!1197721))

(declare-fun res!839126 () Bool)

(assert (=> d!573176 (=> (not res!839126) (not e!1197721))))

(assert (=> d!573176 (= res!839126 (= (content!3113 lt!721373) ((_ map or) (content!3113 lt!721338) (content!3113 (++!5686 lt!721332 lt!721333)))))))

(declare-fun e!1197720 () List!20998)

(assert (=> d!573176 (= lt!721373 e!1197720)))

(declare-fun c!305815 () Bool)

(assert (=> d!573176 (= c!305815 ((_ is Nil!20916) lt!721338))))

(assert (=> d!573176 (= (++!5686 lt!721338 (++!5686 lt!721332 lt!721333)) lt!721373)))

(declare-fun b!1876546 () Bool)

(assert (=> b!1876546 (= e!1197720 (Cons!20916 (h!26317 lt!721338) (++!5686 (t!173227 lt!721338) (++!5686 lt!721332 lt!721333))))))

(declare-fun b!1876545 () Bool)

(assert (=> b!1876545 (= e!1197720 (++!5686 lt!721332 lt!721333))))

(declare-fun b!1876547 () Bool)

(declare-fun res!839125 () Bool)

(assert (=> b!1876547 (=> (not res!839125) (not e!1197721))))

(assert (=> b!1876547 (= res!839125 (= (size!16598 lt!721373) (+ (size!16598 lt!721338) (size!16598 (++!5686 lt!721332 lt!721333)))))))

(assert (= (and d!573176 c!305815) b!1876545))

(assert (= (and d!573176 (not c!305815)) b!1876546))

(assert (= (and d!573176 res!839126) b!1876547))

(assert (= (and b!1876547 res!839125) b!1876548))

(declare-fun m!2302749 () Bool)

(assert (=> d!573176 m!2302749))

(assert (=> d!573176 m!2302671))

(assert (=> d!573176 m!2302529))

(declare-fun m!2302751 () Bool)

(assert (=> d!573176 m!2302751))

(assert (=> b!1876546 m!2302529))

(declare-fun m!2302753 () Bool)

(assert (=> b!1876546 m!2302753))

(declare-fun m!2302755 () Bool)

(assert (=> b!1876547 m!2302755))

(assert (=> b!1876547 m!2302679))

(assert (=> b!1876547 m!2302529))

(declare-fun m!2302757 () Bool)

(assert (=> b!1876547 m!2302757))

(assert (=> b!1876353 d!573176))

(declare-fun b!1876552 () Bool)

(declare-fun lt!721374 () List!20998)

(declare-fun e!1197723 () Bool)

(assert (=> b!1876552 (= e!1197723 (or (not (= lt!721333 Nil!20916)) (= lt!721374 lt!721332)))))

(declare-fun d!573178 () Bool)

(assert (=> d!573178 e!1197723))

(declare-fun res!839128 () Bool)

(assert (=> d!573178 (=> (not res!839128) (not e!1197723))))

(assert (=> d!573178 (= res!839128 (= (content!3113 lt!721374) ((_ map or) (content!3113 lt!721332) (content!3113 lt!721333))))))

(declare-fun e!1197722 () List!20998)

(assert (=> d!573178 (= lt!721374 e!1197722)))

(declare-fun c!305816 () Bool)

(assert (=> d!573178 (= c!305816 ((_ is Nil!20916) lt!721332))))

(assert (=> d!573178 (= (++!5686 lt!721332 lt!721333) lt!721374)))

(declare-fun b!1876550 () Bool)

(assert (=> b!1876550 (= e!1197722 (Cons!20916 (h!26317 lt!721332) (++!5686 (t!173227 lt!721332) lt!721333)))))

(declare-fun b!1876549 () Bool)

(assert (=> b!1876549 (= e!1197722 lt!721333)))

(declare-fun b!1876551 () Bool)

(declare-fun res!839127 () Bool)

(assert (=> b!1876551 (=> (not res!839127) (not e!1197723))))

(assert (=> b!1876551 (= res!839127 (= (size!16598 lt!721374) (+ (size!16598 lt!721332) (size!16598 lt!721333))))))

(assert (= (and d!573178 c!305816) b!1876549))

(assert (= (and d!573178 (not c!305816)) b!1876550))

(assert (= (and d!573178 res!839128) b!1876551))

(assert (= (and b!1876551 res!839127) b!1876552))

(declare-fun m!2302759 () Bool)

(assert (=> d!573178 m!2302759))

(assert (=> d!573178 m!2302673))

(assert (=> d!573178 m!2302689))

(declare-fun m!2302761 () Bool)

(assert (=> b!1876550 m!2302761))

(declare-fun m!2302763 () Bool)

(assert (=> b!1876551 m!2302763))

(assert (=> b!1876551 m!2302681))

(assert (=> b!1876551 m!2302697))

(assert (=> b!1876353 d!573178))

(assert (=> b!1876222 d!573098))

(declare-fun d!573180 () Bool)

(declare-fun charsToBigInt!1 (List!20997) Int)

(assert (=> d!573180 (= (inv!17 (value!117200 separatorToken!84)) (= (charsToBigInt!1 (text!27370 (value!117200 separatorToken!84))) (value!117192 (value!117200 separatorToken!84))))))

(declare-fun bs!412233 () Bool)

(assert (= bs!412233 d!573180))

(declare-fun m!2302765 () Bool)

(assert (=> bs!412233 m!2302765))

(assert (=> b!1876270 d!573180))

(declare-fun d!573182 () Bool)

(declare-fun c!305817 () Bool)

(assert (=> d!573182 (= c!305817 ((_ is Node!6950) (left!16811 (c!305736 acc!408))))))

(declare-fun e!1197724 () Bool)

(assert (=> d!573182 (= (inv!27821 (left!16811 (c!305736 acc!408))) e!1197724)))

(declare-fun b!1876553 () Bool)

(assert (=> b!1876553 (= e!1197724 (inv!27826 (left!16811 (c!305736 acc!408))))))

(declare-fun b!1876554 () Bool)

(declare-fun e!1197725 () Bool)

(assert (=> b!1876554 (= e!1197724 e!1197725)))

(declare-fun res!839129 () Bool)

(assert (=> b!1876554 (= res!839129 (not ((_ is Leaf!10226) (left!16811 (c!305736 acc!408)))))))

(assert (=> b!1876554 (=> res!839129 e!1197725)))

(declare-fun b!1876555 () Bool)

(assert (=> b!1876555 (= e!1197725 (inv!27827 (left!16811 (c!305736 acc!408))))))

(assert (= (and d!573182 c!305817) b!1876553))

(assert (= (and d!573182 (not c!305817)) b!1876554))

(assert (= (and b!1876554 (not res!839129)) b!1876555))

(declare-fun m!2302767 () Bool)

(assert (=> b!1876553 m!2302767))

(declare-fun m!2302769 () Bool)

(assert (=> b!1876555 m!2302769))

(assert (=> b!1876487 d!573182))

(declare-fun d!573184 () Bool)

(declare-fun c!305818 () Bool)

(assert (=> d!573184 (= c!305818 ((_ is Node!6950) (right!17141 (c!305736 acc!408))))))

(declare-fun e!1197726 () Bool)

(assert (=> d!573184 (= (inv!27821 (right!17141 (c!305736 acc!408))) e!1197726)))

(declare-fun b!1876556 () Bool)

(assert (=> b!1876556 (= e!1197726 (inv!27826 (right!17141 (c!305736 acc!408))))))

(declare-fun b!1876557 () Bool)

(declare-fun e!1197727 () Bool)

(assert (=> b!1876557 (= e!1197726 e!1197727)))

(declare-fun res!839130 () Bool)

(assert (=> b!1876557 (= res!839130 (not ((_ is Leaf!10226) (right!17141 (c!305736 acc!408)))))))

(assert (=> b!1876557 (=> res!839130 e!1197727)))

(declare-fun b!1876558 () Bool)

(assert (=> b!1876558 (= e!1197727 (inv!27827 (right!17141 (c!305736 acc!408))))))

(assert (= (and d!573184 c!305818) b!1876556))

(assert (= (and d!573184 (not c!305818)) b!1876557))

(assert (= (and b!1876557 (not res!839130)) b!1876558))

(declare-fun m!2302771 () Bool)

(assert (=> b!1876556 m!2302771))

(declare-fun m!2302773 () Bool)

(assert (=> b!1876558 m!2302773))

(assert (=> b!1876487 d!573184))

(declare-fun c!305819 () Bool)

(declare-fun d!573186 () Bool)

(assert (=> d!573186 (= c!305819 ((_ is Cons!20917) ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))

(declare-fun e!1197728 () List!20998)

(assert (=> d!573186 (= (printList!1012 thiss!13718 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))) e!1197728)))

(declare-fun b!1876559 () Bool)

(assert (=> b!1876559 (= e!1197728 (++!5686 (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))) (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))))

(declare-fun b!1876560 () Bool)

(assert (=> b!1876560 (= e!1197728 Nil!20916)))

(assert (= (and d!573186 c!305819) b!1876559))

(assert (= (and d!573186 (not c!305819)) b!1876560))

(declare-fun m!2302775 () Bool)

(assert (=> b!1876559 m!2302775))

(assert (=> b!1876559 m!2302775))

(declare-fun m!2302777 () Bool)

(assert (=> b!1876559 m!2302777))

(declare-fun m!2302779 () Bool)

(assert (=> b!1876559 m!2302779))

(assert (=> b!1876559 m!2302777))

(assert (=> b!1876559 m!2302779))

(declare-fun m!2302781 () Bool)

(assert (=> b!1876559 m!2302781))

(assert (=> b!1876355 d!573186))

(assert (=> b!1876355 d!573166))

(assert (=> b!1876355 d!573162))

(assert (=> b!1876355 d!573174))

(declare-fun b!1876564 () Bool)

(declare-fun lt!721375 () List!20998)

(declare-fun e!1197730 () Bool)

(assert (=> b!1876564 (= e!1197730 (or (not (= (printList!1012 thiss!13718 (t!173228 lt!721331)) Nil!20916)) (= lt!721375 (list!8535 (charsOf!2302 (h!26318 lt!721331))))))))

(declare-fun d!573188 () Bool)

(assert (=> d!573188 e!1197730))

(declare-fun res!839132 () Bool)

(assert (=> d!573188 (=> (not res!839132) (not e!1197730))))

(assert (=> d!573188 (= res!839132 (= (content!3113 lt!721375) ((_ map or) (content!3113 (list!8535 (charsOf!2302 (h!26318 lt!721331)))) (content!3113 (printList!1012 thiss!13718 (t!173228 lt!721331))))))))

(declare-fun e!1197729 () List!20998)

(assert (=> d!573188 (= lt!721375 e!1197729)))

(declare-fun c!305820 () Bool)

(assert (=> d!573188 (= c!305820 ((_ is Nil!20916) (list!8535 (charsOf!2302 (h!26318 lt!721331)))))))

(assert (=> d!573188 (= (++!5686 (list!8535 (charsOf!2302 (h!26318 lt!721331))) (printList!1012 thiss!13718 (t!173228 lt!721331))) lt!721375)))

(declare-fun b!1876562 () Bool)

(assert (=> b!1876562 (= e!1197729 (Cons!20916 (h!26317 (list!8535 (charsOf!2302 (h!26318 lt!721331)))) (++!5686 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721331)))) (printList!1012 thiss!13718 (t!173228 lt!721331)))))))

(declare-fun b!1876561 () Bool)

(assert (=> b!1876561 (= e!1197729 (printList!1012 thiss!13718 (t!173228 lt!721331)))))

(declare-fun b!1876563 () Bool)

(declare-fun res!839131 () Bool)

(assert (=> b!1876563 (=> (not res!839131) (not e!1197730))))

(assert (=> b!1876563 (= res!839131 (= (size!16598 lt!721375) (+ (size!16598 (list!8535 (charsOf!2302 (h!26318 lt!721331)))) (size!16598 (printList!1012 thiss!13718 (t!173228 lt!721331))))))))

(assert (= (and d!573188 c!305820) b!1876561))

(assert (= (and d!573188 (not c!305820)) b!1876562))

(assert (= (and d!573188 res!839132) b!1876563))

(assert (= (and b!1876563 res!839131) b!1876564))

(declare-fun m!2302783 () Bool)

(assert (=> d!573188 m!2302783))

(assert (=> d!573188 m!2302569))

(declare-fun m!2302785 () Bool)

(assert (=> d!573188 m!2302785))

(assert (=> d!573188 m!2302571))

(declare-fun m!2302787 () Bool)

(assert (=> d!573188 m!2302787))

(assert (=> b!1876562 m!2302571))

(declare-fun m!2302789 () Bool)

(assert (=> b!1876562 m!2302789))

(declare-fun m!2302791 () Bool)

(assert (=> b!1876563 m!2302791))

(assert (=> b!1876563 m!2302569))

(declare-fun m!2302793 () Bool)

(assert (=> b!1876563 m!2302793))

(assert (=> b!1876563 m!2302571))

(declare-fun m!2302795 () Bool)

(assert (=> b!1876563 m!2302795))

(assert (=> b!1876356 d!573188))

(declare-fun d!573190 () Bool)

(assert (=> d!573190 (= (list!8535 (charsOf!2302 (h!26318 lt!721331))) (list!8539 (c!305735 (charsOf!2302 (h!26318 lt!721331)))))))

(declare-fun bs!412234 () Bool)

(assert (= bs!412234 d!573190))

(declare-fun m!2302797 () Bool)

(assert (=> bs!412234 m!2302797))

(assert (=> b!1876356 d!573190))

(declare-fun d!573192 () Bool)

(declare-fun lt!721376 () BalanceConc!13714)

(assert (=> d!573192 (= (list!8535 lt!721376) (originalCharacters!4517 (h!26318 lt!721331)))))

(assert (=> d!573192 (= lt!721376 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))) (value!117200 (h!26318 lt!721331))))))

(assert (=> d!573192 (= (charsOf!2302 (h!26318 lt!721331)) lt!721376)))

(declare-fun b_lambda!61653 () Bool)

(assert (=> (not b_lambda!61653) (not d!573192)))

(declare-fun t!173237 () Bool)

(declare-fun tb!112959 () Bool)

(assert (=> (and b!1876224 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331))))) t!173237) tb!112959))

(declare-fun b!1876565 () Bool)

(declare-fun e!1197731 () Bool)

(declare-fun tp!534885 () Bool)

(assert (=> b!1876565 (= e!1197731 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))) (value!117200 (h!26318 lt!721331))))) tp!534885))))

(declare-fun result!136756 () Bool)

(assert (=> tb!112959 (= result!136756 (and (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))) (value!117200 (h!26318 lt!721331)))) e!1197731))))

(assert (= tb!112959 b!1876565))

(declare-fun m!2302799 () Bool)

(assert (=> b!1876565 m!2302799))

(declare-fun m!2302801 () Bool)

(assert (=> tb!112959 m!2302801))

(assert (=> d!573192 t!173237))

(declare-fun b_and!144515 () Bool)

(assert (= b_and!144513 (and (=> t!173237 result!136756) b_and!144515)))

(declare-fun m!2302803 () Bool)

(assert (=> d!573192 m!2302803))

(declare-fun m!2302805 () Bool)

(assert (=> d!573192 m!2302805))

(assert (=> b!1876356 d!573192))

(declare-fun d!573194 () Bool)

(declare-fun c!305821 () Bool)

(assert (=> d!573194 (= c!305821 ((_ is Cons!20917) (t!173228 lt!721331)))))

(declare-fun e!1197732 () List!20998)

(assert (=> d!573194 (= (printList!1012 thiss!13718 (t!173228 lt!721331)) e!1197732)))

(declare-fun b!1876566 () Bool)

(assert (=> b!1876566 (= e!1197732 (++!5686 (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721331)))) (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721331)))))))

(declare-fun b!1876567 () Bool)

(assert (=> b!1876567 (= e!1197732 Nil!20916)))

(assert (= (and d!573194 c!305821) b!1876566))

(assert (= (and d!573194 (not c!305821)) b!1876567))

(declare-fun m!2302807 () Bool)

(assert (=> b!1876566 m!2302807))

(assert (=> b!1876566 m!2302807))

(declare-fun m!2302809 () Bool)

(assert (=> b!1876566 m!2302809))

(declare-fun m!2302811 () Bool)

(assert (=> b!1876566 m!2302811))

(assert (=> b!1876566 m!2302809))

(assert (=> b!1876566 m!2302811))

(declare-fun m!2302813 () Bool)

(assert (=> b!1876566 m!2302813))

(assert (=> b!1876356 d!573194))

(declare-fun d!573196 () Bool)

(assert (=> d!573196 (= (inv!27833 (xs!9834 (c!305736 acc!408))) (<= (size!16601 (innerList!7010 (xs!9834 (c!305736 acc!408)))) 2147483647))))

(declare-fun bs!412235 () Bool)

(assert (= bs!412235 d!573196))

(declare-fun m!2302815 () Bool)

(assert (=> bs!412235 m!2302815))

(assert (=> b!1876488 d!573196))

(declare-fun d!573198 () Bool)

(assert (=> d!573198 true))

(declare-fun order!13295 () Int)

(declare-fun order!13293 () Int)

(declare-fun lambda!73801 () Int)

(declare-fun dynLambda!10234 (Int Int) Int)

(declare-fun dynLambda!10235 (Int Int) Int)

(assert (=> d!573198 (< (dynLambda!10234 order!13293 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84)))) (dynLambda!10235 order!13295 lambda!73801))))

(assert (=> d!573198 true))

(declare-fun order!13297 () Int)

(declare-fun dynLambda!10236 (Int Int) Int)

(assert (=> d!573198 (< (dynLambda!10236 order!13297 (toValue!5307 (transformation!3710 (rule!5903 separatorToken!84)))) (dynLambda!10235 order!13295 lambda!73801))))

(declare-fun Forall!982 (Int) Bool)

(assert (=> d!573198 (= (semiInverseModEq!1514 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toValue!5307 (transformation!3710 (rule!5903 separatorToken!84)))) (Forall!982 lambda!73801))))

(declare-fun bs!412251 () Bool)

(assert (= bs!412251 d!573198))

(declare-fun m!2303209 () Bool)

(assert (=> bs!412251 m!2303209))

(assert (=> d!573148 d!573198))

(declare-fun d!573322 () Bool)

(declare-fun c!305883 () Bool)

(assert (=> d!573322 (= c!305883 ((_ is Nil!20917) lt!721350))))

(declare-fun e!1197879 () (InoxSet Token!6972))

(assert (=> d!573322 (= (content!3111 lt!721350) e!1197879)))

(declare-fun b!1876841 () Bool)

(assert (=> b!1876841 (= e!1197879 ((as const (Array Token!6972 Bool)) false))))

(declare-fun b!1876842 () Bool)

(assert (=> b!1876842 (= e!1197879 ((_ map or) (store ((as const (Array Token!6972 Bool)) false) (h!26318 lt!721350) true) (content!3111 (t!173228 lt!721350))))))

(assert (= (and d!573322 c!305883) b!1876841))

(assert (= (and d!573322 (not c!305883)) b!1876842))

(declare-fun m!2303211 () Bool)

(assert (=> b!1876842 m!2303211))

(declare-fun m!2303213 () Bool)

(assert (=> b!1876842 m!2303213))

(assert (=> d!573142 d!573322))

(declare-fun d!573324 () Bool)

(declare-fun c!305884 () Bool)

(assert (=> d!573324 (= c!305884 ((_ is Nil!20917) lt!721287))))

(declare-fun e!1197880 () (InoxSet Token!6972))

(assert (=> d!573324 (= (content!3111 lt!721287) e!1197880)))

(declare-fun b!1876843 () Bool)

(assert (=> b!1876843 (= e!1197880 ((as const (Array Token!6972 Bool)) false))))

(declare-fun b!1876844 () Bool)

(assert (=> b!1876844 (= e!1197880 ((_ map or) (store ((as const (Array Token!6972 Bool)) false) (h!26318 lt!721287) true) (content!3111 (t!173228 lt!721287))))))

(assert (= (and d!573324 c!305884) b!1876843))

(assert (= (and d!573324 (not c!305884)) b!1876844))

(declare-fun m!2303215 () Bool)

(assert (=> b!1876844 m!2303215))

(declare-fun m!2303217 () Bool)

(assert (=> b!1876844 m!2303217))

(assert (=> d!573142 d!573324))

(declare-fun d!573326 () Bool)

(declare-fun c!305885 () Bool)

(assert (=> d!573326 (= c!305885 ((_ is Nil!20917) lt!721286))))

(declare-fun e!1197881 () (InoxSet Token!6972))

(assert (=> d!573326 (= (content!3111 lt!721286) e!1197881)))

(declare-fun b!1876845 () Bool)

(assert (=> b!1876845 (= e!1197881 ((as const (Array Token!6972 Bool)) false))))

(declare-fun b!1876846 () Bool)

(assert (=> b!1876846 (= e!1197881 ((_ map or) (store ((as const (Array Token!6972 Bool)) false) (h!26318 lt!721286) true) (content!3111 (t!173228 lt!721286))))))

(assert (= (and d!573326 c!305885) b!1876845))

(assert (= (and d!573326 (not c!305885)) b!1876846))

(declare-fun m!2303219 () Bool)

(assert (=> b!1876846 m!2303219))

(declare-fun m!2303221 () Bool)

(assert (=> b!1876846 m!2303221))

(assert (=> d!573142 d!573326))

(declare-fun d!573328 () Bool)

(declare-fun c!305890 () Bool)

(assert (=> d!573328 (= c!305890 ((_ is Empty!6950) (c!305736 v!6352)))))

(declare-fun e!1197886 () List!20999)

(assert (=> d!573328 (= (list!8536 (c!305736 v!6352)) e!1197886)))

(declare-fun b!1876858 () Bool)

(declare-fun e!1197887 () List!20999)

(assert (=> b!1876858 (= e!1197887 (++!5684 (list!8536 (left!16811 (c!305736 v!6352))) (list!8536 (right!17141 (c!305736 v!6352)))))))

(declare-fun b!1876855 () Bool)

(assert (=> b!1876855 (= e!1197886 Nil!20917)))

(declare-fun b!1876857 () Bool)

(declare-fun list!8540 (IArray!13905) List!20999)

(assert (=> b!1876857 (= e!1197887 (list!8540 (xs!9834 (c!305736 v!6352))))))

(declare-fun b!1876856 () Bool)

(assert (=> b!1876856 (= e!1197886 e!1197887)))

(declare-fun c!305891 () Bool)

(assert (=> b!1876856 (= c!305891 ((_ is Leaf!10226) (c!305736 v!6352)))))

(assert (= (and d!573328 c!305890) b!1876855))

(assert (= (and d!573328 (not c!305890)) b!1876856))

(assert (= (and b!1876856 c!305891) b!1876857))

(assert (= (and b!1876856 (not c!305891)) b!1876858))

(declare-fun m!2303223 () Bool)

(assert (=> b!1876858 m!2303223))

(declare-fun m!2303225 () Bool)

(assert (=> b!1876858 m!2303225))

(assert (=> b!1876858 m!2303223))

(assert (=> b!1876858 m!2303225))

(declare-fun m!2303227 () Bool)

(assert (=> b!1876858 m!2303227))

(declare-fun m!2303229 () Bool)

(assert (=> b!1876857 m!2303229))

(assert (=> d!573132 d!573328))

(declare-fun b!1876859 () Bool)

(declare-fun e!1197888 () Int)

(declare-fun call!116170 () Int)

(assert (=> b!1876859 (= e!1197888 (- call!116170 (- from!845 1)))))

(declare-fun b!1876860 () Bool)

(declare-fun e!1197890 () Int)

(assert (=> b!1876860 (= e!1197890 e!1197888)))

(declare-fun c!305894 () Bool)

(assert (=> b!1876860 (= c!305894 (>= (- from!845 1) call!116170))))

(declare-fun b!1876861 () Bool)

(assert (=> b!1876861 (= e!1197888 0)))

(declare-fun b!1876862 () Bool)

(declare-fun e!1197892 () List!20999)

(assert (=> b!1876862 (= e!1197892 (drop!1030 (t!173228 (t!173228 (list!8532 v!6352))) (- (- from!845 1) 1)))))

(declare-fun bm!116165 () Bool)

(assert (=> bm!116165 (= call!116170 (size!16601 (t!173228 (list!8532 v!6352))))))

(declare-fun b!1876863 () Bool)

(assert (=> b!1876863 (= e!1197892 (t!173228 (list!8532 v!6352)))))

(declare-fun d!573330 () Bool)

(declare-fun e!1197889 () Bool)

(assert (=> d!573330 e!1197889))

(declare-fun res!839209 () Bool)

(assert (=> d!573330 (=> (not res!839209) (not e!1197889))))

(declare-fun lt!721417 () List!20999)

(assert (=> d!573330 (= res!839209 (= ((_ map implies) (content!3111 lt!721417) (content!3111 (t!173228 (list!8532 v!6352)))) ((as const (InoxSet Token!6972)) true)))))

(declare-fun e!1197891 () List!20999)

(assert (=> d!573330 (= lt!721417 e!1197891)))

(declare-fun c!305893 () Bool)

(assert (=> d!573330 (= c!305893 ((_ is Nil!20917) (t!173228 (list!8532 v!6352))))))

(assert (=> d!573330 (= (drop!1030 (t!173228 (list!8532 v!6352)) (- from!845 1)) lt!721417)))

(declare-fun b!1876864 () Bool)

(assert (=> b!1876864 (= e!1197891 e!1197892)))

(declare-fun c!305892 () Bool)

(assert (=> b!1876864 (= c!305892 (<= (- from!845 1) 0))))

(declare-fun b!1876865 () Bool)

(assert (=> b!1876865 (= e!1197891 Nil!20917)))

(declare-fun b!1876866 () Bool)

(assert (=> b!1876866 (= e!1197889 (= (size!16601 lt!721417) e!1197890))))

(declare-fun c!305895 () Bool)

(assert (=> b!1876866 (= c!305895 (<= (- from!845 1) 0))))

(declare-fun b!1876867 () Bool)

(assert (=> b!1876867 (= e!1197890 call!116170)))

(assert (= (and d!573330 c!305893) b!1876865))

(assert (= (and d!573330 (not c!305893)) b!1876864))

(assert (= (and b!1876864 c!305892) b!1876863))

(assert (= (and b!1876864 (not c!305892)) b!1876862))

(assert (= (and d!573330 res!839209) b!1876866))

(assert (= (and b!1876866 c!305895) b!1876867))

(assert (= (and b!1876866 (not c!305895)) b!1876860))

(assert (= (and b!1876860 c!305894) b!1876861))

(assert (= (and b!1876860 (not c!305894)) b!1876859))

(assert (= (or b!1876867 b!1876860 b!1876859) bm!116165))

(declare-fun m!2303231 () Bool)

(assert (=> b!1876862 m!2303231))

(declare-fun m!2303233 () Bool)

(assert (=> bm!116165 m!2303233))

(declare-fun m!2303235 () Bool)

(assert (=> d!573330 m!2303235))

(declare-fun m!2303237 () Bool)

(assert (=> d!573330 m!2303237))

(declare-fun m!2303239 () Bool)

(assert (=> b!1876866 m!2303239))

(assert (=> b!1876432 d!573330))

(declare-fun d!573332 () Bool)

(declare-fun res!839216 () Bool)

(declare-fun e!1197895 () Bool)

(assert (=> d!573332 (=> (not res!839216) (not e!1197895))))

(assert (=> d!573332 (= res!839216 (= (csize!14130 (c!305736 acc!408)) (+ (size!16602 (left!16811 (c!305736 acc!408))) (size!16602 (right!17141 (c!305736 acc!408))))))))

(assert (=> d!573332 (= (inv!27826 (c!305736 acc!408)) e!1197895)))

(declare-fun b!1876874 () Bool)

(declare-fun res!839217 () Bool)

(assert (=> b!1876874 (=> (not res!839217) (not e!1197895))))

(assert (=> b!1876874 (= res!839217 (and (not (= (left!16811 (c!305736 acc!408)) Empty!6950)) (not (= (right!17141 (c!305736 acc!408)) Empty!6950))))))

(declare-fun b!1876875 () Bool)

(declare-fun res!839218 () Bool)

(assert (=> b!1876875 (=> (not res!839218) (not e!1197895))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1087 (Conc!6950) Int)

(assert (=> b!1876875 (= res!839218 (= (cheight!7161 (c!305736 acc!408)) (+ (max!0 (height!1087 (left!16811 (c!305736 acc!408))) (height!1087 (right!17141 (c!305736 acc!408)))) 1)))))

(declare-fun b!1876876 () Bool)

(assert (=> b!1876876 (= e!1197895 (<= 0 (cheight!7161 (c!305736 acc!408))))))

(assert (= (and d!573332 res!839216) b!1876874))

(assert (= (and b!1876874 res!839217) b!1876875))

(assert (= (and b!1876875 res!839218) b!1876876))

(declare-fun m!2303241 () Bool)

(assert (=> d!573332 m!2303241))

(declare-fun m!2303243 () Bool)

(assert (=> d!573332 m!2303243))

(declare-fun m!2303245 () Bool)

(assert (=> b!1876875 m!2303245))

(declare-fun m!2303247 () Bool)

(assert (=> b!1876875 m!2303247))

(assert (=> b!1876875 m!2303245))

(assert (=> b!1876875 m!2303247))

(declare-fun m!2303249 () Bool)

(assert (=> b!1876875 m!2303249))

(assert (=> b!1876236 d!573332))

(declare-fun d!573334 () Bool)

(declare-fun charsToBigInt!0 (List!20997 Int) Int)

(assert (=> d!573334 (= (inv!15 (value!117200 separatorToken!84)) (= (charsToBigInt!0 (text!27371 (value!117200 separatorToken!84)) 0) (value!117195 (value!117200 separatorToken!84))))))

(declare-fun bs!412252 () Bool)

(assert (= bs!412252 d!573334))

(declare-fun m!2303251 () Bool)

(assert (=> bs!412252 m!2303251))

(assert (=> b!1876273 d!573334))

(declare-fun d!573336 () Bool)

(declare-fun lt!721420 () Int)

(assert (=> d!573336 (>= lt!721420 0)))

(declare-fun e!1197898 () Int)

(assert (=> d!573336 (= lt!721420 e!1197898)))

(declare-fun c!305898 () Bool)

(assert (=> d!573336 (= c!305898 ((_ is Nil!20917) (list!8532 v!6352)))))

(assert (=> d!573336 (= (size!16601 (list!8532 v!6352)) lt!721420)))

(declare-fun b!1876881 () Bool)

(assert (=> b!1876881 (= e!1197898 0)))

(declare-fun b!1876882 () Bool)

(assert (=> b!1876882 (= e!1197898 (+ 1 (size!16601 (t!173228 (list!8532 v!6352)))))))

(assert (= (and d!573336 c!305898) b!1876881))

(assert (= (and d!573336 (not c!305898)) b!1876882))

(assert (=> b!1876882 m!2303233))

(assert (=> d!573144 d!573336))

(assert (=> d!573144 d!573132))

(declare-fun d!573338 () Bool)

(declare-fun lt!721423 () Int)

(assert (=> d!573338 (= lt!721423 (size!16601 (list!8536 (c!305736 v!6352))))))

(assert (=> d!573338 (= lt!721423 (ite ((_ is Empty!6950) (c!305736 v!6352)) 0 (ite ((_ is Leaf!10226) (c!305736 v!6352)) (csize!14131 (c!305736 v!6352)) (csize!14130 (c!305736 v!6352)))))))

(assert (=> d!573338 (= (size!16602 (c!305736 v!6352)) lt!721423)))

(declare-fun bs!412253 () Bool)

(assert (= bs!412253 d!573338))

(assert (=> bs!412253 m!2302575))

(assert (=> bs!412253 m!2302575))

(declare-fun m!2303253 () Bool)

(assert (=> bs!412253 m!2303253))

(assert (=> d!573144 d!573338))

(declare-fun d!573340 () Bool)

(assert (=> d!573340 true))

(declare-fun lambda!73804 () Int)

(declare-fun order!13299 () Int)

(declare-fun dynLambda!10237 (Int Int) Int)

(assert (=> d!573340 (< (dynLambda!10236 order!13297 (toValue!5307 (transformation!3710 (rule!5903 separatorToken!84)))) (dynLambda!10237 order!13299 lambda!73804))))

(declare-fun Forall2!606 (Int) Bool)

(assert (=> d!573340 (= (equivClasses!1441 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toValue!5307 (transformation!3710 (rule!5903 separatorToken!84)))) (Forall2!606 lambda!73804))))

(declare-fun bs!412254 () Bool)

(assert (= bs!412254 d!573340))

(declare-fun m!2303255 () Bool)

(assert (=> bs!412254 m!2303255))

(assert (=> b!1876475 d!573340))

(declare-fun d!573342 () Bool)

(declare-fun isBalanced!2203 (Conc!6949) Bool)

(assert (=> d!573342 (= (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))) (isBalanced!2203 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))))

(declare-fun bs!412255 () Bool)

(assert (= bs!412255 d!573342))

(declare-fun m!2303257 () Bool)

(assert (=> bs!412255 m!2303257))

(assert (=> tb!112955 d!573342))

(declare-fun b!1876899 () Bool)

(declare-fun res!839233 () Bool)

(declare-fun e!1197905 () Bool)

(assert (=> b!1876899 (=> (not res!839233) (not e!1197905))))

(assert (=> b!1876899 (= res!839233 (<= (- (height!1087 (left!16811 (c!305736 acc!408))) (height!1087 (right!17141 (c!305736 acc!408)))) 1))))

(declare-fun b!1876900 () Bool)

(declare-fun e!1197906 () Bool)

(assert (=> b!1876900 (= e!1197906 e!1197905)))

(declare-fun res!839234 () Bool)

(assert (=> b!1876900 (=> (not res!839234) (not e!1197905))))

(assert (=> b!1876900 (= res!839234 (<= (- 1) (- (height!1087 (left!16811 (c!305736 acc!408))) (height!1087 (right!17141 (c!305736 acc!408))))))))

(declare-fun b!1876901 () Bool)

(declare-fun res!839235 () Bool)

(assert (=> b!1876901 (=> (not res!839235) (not e!1197905))))

(declare-fun isEmpty!12976 (Conc!6950) Bool)

(assert (=> b!1876901 (= res!839235 (not (isEmpty!12976 (left!16811 (c!305736 acc!408)))))))

(declare-fun b!1876902 () Bool)

(declare-fun res!839236 () Bool)

(assert (=> b!1876902 (=> (not res!839236) (not e!1197905))))

(assert (=> b!1876902 (= res!839236 (isBalanced!2201 (left!16811 (c!305736 acc!408))))))

(declare-fun b!1876903 () Bool)

(declare-fun res!839238 () Bool)

(assert (=> b!1876903 (=> (not res!839238) (not e!1197905))))

(assert (=> b!1876903 (= res!839238 (isBalanced!2201 (right!17141 (c!305736 acc!408))))))

(declare-fun d!573344 () Bool)

(declare-fun res!839237 () Bool)

(assert (=> d!573344 (=> res!839237 e!1197906)))

(assert (=> d!573344 (= res!839237 (not ((_ is Node!6950) (c!305736 acc!408))))))

(assert (=> d!573344 (= (isBalanced!2201 (c!305736 acc!408)) e!1197906)))

(declare-fun b!1876904 () Bool)

(assert (=> b!1876904 (= e!1197905 (not (isEmpty!12976 (right!17141 (c!305736 acc!408)))))))

(assert (= (and d!573344 (not res!839237)) b!1876900))

(assert (= (and b!1876900 res!839234) b!1876899))

(assert (= (and b!1876899 res!839233) b!1876902))

(assert (= (and b!1876902 res!839236) b!1876903))

(assert (= (and b!1876903 res!839238) b!1876901))

(assert (= (and b!1876901 res!839235) b!1876904))

(declare-fun m!2303259 () Bool)

(assert (=> b!1876901 m!2303259))

(declare-fun m!2303261 () Bool)

(assert (=> b!1876904 m!2303261))

(assert (=> b!1876900 m!2303245))

(assert (=> b!1876900 m!2303247))

(declare-fun m!2303263 () Bool)

(assert (=> b!1876903 m!2303263))

(assert (=> b!1876899 m!2303245))

(assert (=> b!1876899 m!2303247))

(declare-fun m!2303265 () Bool)

(assert (=> b!1876902 m!2303265))

(assert (=> d!573104 d!573344))

(assert (=> b!1876221 d!573150))

(declare-fun e!1197908 () Bool)

(declare-fun b!1876908 () Bool)

(declare-fun lt!721424 () List!20998)

(assert (=> b!1876908 (= e!1197908 (or (not (= (printList!1012 thiss!13718 (t!173228 lt!721335)) Nil!20916)) (= lt!721424 (list!8535 (charsOf!2302 (h!26318 lt!721335))))))))

(declare-fun d!573346 () Bool)

(assert (=> d!573346 e!1197908))

(declare-fun res!839240 () Bool)

(assert (=> d!573346 (=> (not res!839240) (not e!1197908))))

(assert (=> d!573346 (= res!839240 (= (content!3113 lt!721424) ((_ map or) (content!3113 (list!8535 (charsOf!2302 (h!26318 lt!721335)))) (content!3113 (printList!1012 thiss!13718 (t!173228 lt!721335))))))))

(declare-fun e!1197907 () List!20998)

(assert (=> d!573346 (= lt!721424 e!1197907)))

(declare-fun c!305899 () Bool)

(assert (=> d!573346 (= c!305899 ((_ is Nil!20916) (list!8535 (charsOf!2302 (h!26318 lt!721335)))))))

(assert (=> d!573346 (= (++!5686 (list!8535 (charsOf!2302 (h!26318 lt!721335))) (printList!1012 thiss!13718 (t!173228 lt!721335))) lt!721424)))

(declare-fun b!1876906 () Bool)

(assert (=> b!1876906 (= e!1197907 (Cons!20916 (h!26317 (list!8535 (charsOf!2302 (h!26318 lt!721335)))) (++!5686 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721335)))) (printList!1012 thiss!13718 (t!173228 lt!721335)))))))

(declare-fun b!1876905 () Bool)

(assert (=> b!1876905 (= e!1197907 (printList!1012 thiss!13718 (t!173228 lt!721335)))))

(declare-fun b!1876907 () Bool)

(declare-fun res!839239 () Bool)

(assert (=> b!1876907 (=> (not res!839239) (not e!1197908))))

(assert (=> b!1876907 (= res!839239 (= (size!16598 lt!721424) (+ (size!16598 (list!8535 (charsOf!2302 (h!26318 lt!721335)))) (size!16598 (printList!1012 thiss!13718 (t!173228 lt!721335))))))))

(assert (= (and d!573346 c!305899) b!1876905))

(assert (= (and d!573346 (not c!305899)) b!1876906))

(assert (= (and d!573346 res!839240) b!1876907))

(assert (= (and b!1876907 res!839239) b!1876908))

(declare-fun m!2303267 () Bool)

(assert (=> d!573346 m!2303267))

(assert (=> d!573346 m!2302557))

(declare-fun m!2303269 () Bool)

(assert (=> d!573346 m!2303269))

(assert (=> d!573346 m!2302559))

(declare-fun m!2303271 () Bool)

(assert (=> d!573346 m!2303271))

(assert (=> b!1876906 m!2302559))

(declare-fun m!2303273 () Bool)

(assert (=> b!1876906 m!2303273))

(declare-fun m!2303275 () Bool)

(assert (=> b!1876907 m!2303275))

(assert (=> b!1876907 m!2302557))

(declare-fun m!2303277 () Bool)

(assert (=> b!1876907 m!2303277))

(assert (=> b!1876907 m!2302559))

(declare-fun m!2303279 () Bool)

(assert (=> b!1876907 m!2303279))

(assert (=> b!1876352 d!573346))

(declare-fun d!573348 () Bool)

(assert (=> d!573348 (= (list!8535 (charsOf!2302 (h!26318 lt!721335))) (list!8539 (c!305735 (charsOf!2302 (h!26318 lt!721335)))))))

(declare-fun bs!412256 () Bool)

(assert (= bs!412256 d!573348))

(declare-fun m!2303281 () Bool)

(assert (=> bs!412256 m!2303281))

(assert (=> b!1876352 d!573348))

(declare-fun d!573350 () Bool)

(declare-fun lt!721425 () BalanceConc!13714)

(assert (=> d!573350 (= (list!8535 lt!721425) (originalCharacters!4517 (h!26318 lt!721335)))))

(assert (=> d!573350 (= lt!721425 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))) (value!117200 (h!26318 lt!721335))))))

(assert (=> d!573350 (= (charsOf!2302 (h!26318 lt!721335)) lt!721425)))

(declare-fun b_lambda!61665 () Bool)

(assert (=> (not b_lambda!61665) (not d!573350)))

(declare-fun t!173268 () Bool)

(declare-fun tb!112983 () Bool)

(assert (=> (and b!1876224 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335))))) t!173268) tb!112983))

(declare-fun b!1876909 () Bool)

(declare-fun e!1197909 () Bool)

(declare-fun tp!534956 () Bool)

(assert (=> b!1876909 (= e!1197909 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))) (value!117200 (h!26318 lt!721335))))) tp!534956))))

(declare-fun result!136784 () Bool)

(assert (=> tb!112983 (= result!136784 (and (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))) (value!117200 (h!26318 lt!721335)))) e!1197909))))

(assert (= tb!112983 b!1876909))

(declare-fun m!2303283 () Bool)

(assert (=> b!1876909 m!2303283))

(declare-fun m!2303285 () Bool)

(assert (=> tb!112983 m!2303285))

(assert (=> d!573350 t!173268))

(declare-fun b_and!144533 () Bool)

(assert (= b_and!144515 (and (=> t!173268 result!136784) b_and!144533)))

(declare-fun m!2303287 () Bool)

(assert (=> d!573350 m!2303287))

(declare-fun m!2303289 () Bool)

(assert (=> d!573350 m!2303289))

(assert (=> b!1876352 d!573350))

(declare-fun d!573352 () Bool)

(declare-fun c!305900 () Bool)

(assert (=> d!573352 (= c!305900 ((_ is Cons!20917) (t!173228 lt!721335)))))

(declare-fun e!1197910 () List!20998)

(assert (=> d!573352 (= (printList!1012 thiss!13718 (t!173228 lt!721335)) e!1197910)))

(declare-fun b!1876910 () Bool)

(assert (=> b!1876910 (= e!1197910 (++!5686 (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721335)))) (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721335)))))))

(declare-fun b!1876911 () Bool)

(assert (=> b!1876911 (= e!1197910 Nil!20916)))

(assert (= (and d!573352 c!305900) b!1876910))

(assert (= (and d!573352 (not c!305900)) b!1876911))

(declare-fun m!2303291 () Bool)

(assert (=> b!1876910 m!2303291))

(assert (=> b!1876910 m!2303291))

(declare-fun m!2303293 () Bool)

(assert (=> b!1876910 m!2303293))

(declare-fun m!2303295 () Bool)

(assert (=> b!1876910 m!2303295))

(assert (=> b!1876910 m!2303293))

(assert (=> b!1876910 m!2303295))

(declare-fun m!2303297 () Bool)

(assert (=> b!1876910 m!2303297))

(assert (=> b!1876352 d!573352))

(declare-fun d!573354 () Bool)

(assert (=> d!573354 (= (isEmpty!12974 (originalCharacters!4517 separatorToken!84)) ((_ is Nil!20916) (originalCharacters!4517 separatorToken!84)))))

(assert (=> d!573112 d!573354))

(declare-fun d!573356 () Bool)

(declare-fun c!305903 () Bool)

(assert (=> d!573356 (= c!305903 ((_ is Node!6949) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))))

(declare-fun e!1197915 () Bool)

(assert (=> d!573356 (= (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))) e!1197915)))

(declare-fun b!1876918 () Bool)

(declare-fun inv!27836 (Conc!6949) Bool)

(assert (=> b!1876918 (= e!1197915 (inv!27836 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))))

(declare-fun b!1876919 () Bool)

(declare-fun e!1197916 () Bool)

(assert (=> b!1876919 (= e!1197915 e!1197916)))

(declare-fun res!839243 () Bool)

(assert (=> b!1876919 (= res!839243 (not ((_ is Leaf!10225) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))))))

(assert (=> b!1876919 (=> res!839243 e!1197916)))

(declare-fun b!1876920 () Bool)

(declare-fun inv!27837 (Conc!6949) Bool)

(assert (=> b!1876920 (= e!1197916 (inv!27837 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))))

(assert (= (and d!573356 c!305903) b!1876918))

(assert (= (and d!573356 (not c!305903)) b!1876919))

(assert (= (and b!1876919 (not res!839243)) b!1876920))

(declare-fun m!2303299 () Bool)

(assert (=> b!1876918 m!2303299))

(declare-fun m!2303301 () Bool)

(assert (=> b!1876920 m!2303301))

(assert (=> b!1876259 d!573356))

(declare-fun d!573358 () Bool)

(declare-fun c!305904 () Bool)

(assert (=> d!573358 (= c!305904 ((_ is Empty!6950) (c!305736 acc!408)))))

(declare-fun e!1197917 () List!20999)

(assert (=> d!573358 (= (list!8536 (c!305736 acc!408)) e!1197917)))

(declare-fun b!1876924 () Bool)

(declare-fun e!1197918 () List!20999)

(assert (=> b!1876924 (= e!1197918 (++!5684 (list!8536 (left!16811 (c!305736 acc!408))) (list!8536 (right!17141 (c!305736 acc!408)))))))

(declare-fun b!1876921 () Bool)

(assert (=> b!1876921 (= e!1197917 Nil!20917)))

(declare-fun b!1876923 () Bool)

(assert (=> b!1876923 (= e!1197918 (list!8540 (xs!9834 (c!305736 acc!408))))))

(declare-fun b!1876922 () Bool)

(assert (=> b!1876922 (= e!1197917 e!1197918)))

(declare-fun c!305905 () Bool)

(assert (=> b!1876922 (= c!305905 ((_ is Leaf!10226) (c!305736 acc!408)))))

(assert (= (and d!573358 c!305904) b!1876921))

(assert (= (and d!573358 (not c!305904)) b!1876922))

(assert (= (and b!1876922 c!305905) b!1876923))

(assert (= (and b!1876922 (not c!305905)) b!1876924))

(declare-fun m!2303303 () Bool)

(assert (=> b!1876924 m!2303303))

(declare-fun m!2303305 () Bool)

(assert (=> b!1876924 m!2303305))

(assert (=> b!1876924 m!2303303))

(assert (=> b!1876924 m!2303305))

(declare-fun m!2303307 () Bool)

(assert (=> b!1876924 m!2303307))

(declare-fun m!2303309 () Bool)

(assert (=> b!1876923 m!2303309))

(assert (=> d!573120 d!573358))

(declare-fun b!1876925 () Bool)

(declare-fun res!839244 () Bool)

(declare-fun e!1197919 () Bool)

(assert (=> b!1876925 (=> (not res!839244) (not e!1197919))))

(assert (=> b!1876925 (= res!839244 (<= (- (height!1087 (left!16811 (c!305736 v!6352))) (height!1087 (right!17141 (c!305736 v!6352)))) 1))))

(declare-fun b!1876926 () Bool)

(declare-fun e!1197920 () Bool)

(assert (=> b!1876926 (= e!1197920 e!1197919)))

(declare-fun res!839245 () Bool)

(assert (=> b!1876926 (=> (not res!839245) (not e!1197919))))

(assert (=> b!1876926 (= res!839245 (<= (- 1) (- (height!1087 (left!16811 (c!305736 v!6352))) (height!1087 (right!17141 (c!305736 v!6352))))))))

(declare-fun b!1876927 () Bool)

(declare-fun res!839246 () Bool)

(assert (=> b!1876927 (=> (not res!839246) (not e!1197919))))

(assert (=> b!1876927 (= res!839246 (not (isEmpty!12976 (left!16811 (c!305736 v!6352)))))))

(declare-fun b!1876928 () Bool)

(declare-fun res!839247 () Bool)

(assert (=> b!1876928 (=> (not res!839247) (not e!1197919))))

(assert (=> b!1876928 (= res!839247 (isBalanced!2201 (left!16811 (c!305736 v!6352))))))

(declare-fun b!1876929 () Bool)

(declare-fun res!839249 () Bool)

(assert (=> b!1876929 (=> (not res!839249) (not e!1197919))))

(assert (=> b!1876929 (= res!839249 (isBalanced!2201 (right!17141 (c!305736 v!6352))))))

(declare-fun d!573360 () Bool)

(declare-fun res!839248 () Bool)

(assert (=> d!573360 (=> res!839248 e!1197920)))

(assert (=> d!573360 (= res!839248 (not ((_ is Node!6950) (c!305736 v!6352))))))

(assert (=> d!573360 (= (isBalanced!2201 (c!305736 v!6352)) e!1197920)))

(declare-fun b!1876930 () Bool)

(assert (=> b!1876930 (= e!1197919 (not (isEmpty!12976 (right!17141 (c!305736 v!6352)))))))

(assert (= (and d!573360 (not res!839248)) b!1876926))

(assert (= (and b!1876926 res!839245) b!1876925))

(assert (= (and b!1876925 res!839244) b!1876928))

(assert (= (and b!1876928 res!839247) b!1876929))

(assert (= (and b!1876929 res!839249) b!1876927))

(assert (= (and b!1876927 res!839246) b!1876930))

(declare-fun m!2303311 () Bool)

(assert (=> b!1876927 m!2303311))

(declare-fun m!2303313 () Bool)

(assert (=> b!1876930 m!2303313))

(declare-fun m!2303315 () Bool)

(assert (=> b!1876926 m!2303315))

(declare-fun m!2303317 () Bool)

(assert (=> b!1876926 m!2303317))

(declare-fun m!2303319 () Bool)

(assert (=> b!1876929 m!2303319))

(assert (=> b!1876925 m!2303315))

(assert (=> b!1876925 m!2303317))

(declare-fun m!2303321 () Bool)

(assert (=> b!1876928 m!2303321))

(assert (=> d!573110 d!573360))

(declare-fun d!573362 () Bool)

(declare-fun charsToInt!0 (List!20997) (_ BitVec 32))

(assert (=> d!573362 (= (inv!16 (value!117200 separatorToken!84)) (= (charsToInt!0 (text!27369 (value!117200 separatorToken!84))) (value!117191 (value!117200 separatorToken!84))))))

(declare-fun bs!412257 () Bool)

(assert (= bs!412257 d!573362))

(declare-fun m!2303323 () Bool)

(assert (=> bs!412257 m!2303323))

(assert (=> b!1876274 d!573362))

(declare-fun d!573364 () Bool)

(declare-fun c!305906 () Bool)

(assert (=> d!573364 (= c!305906 ((_ is Cons!20917) lt!721336))))

(declare-fun e!1197921 () List!20998)

(assert (=> d!573364 (= (printList!1012 thiss!13718 lt!721336) e!1197921)))

(declare-fun b!1876931 () Bool)

(assert (=> b!1876931 (= e!1197921 (++!5686 (list!8535 (charsOf!2302 (h!26318 lt!721336))) (printList!1012 thiss!13718 (t!173228 lt!721336))))))

(declare-fun b!1876932 () Bool)

(assert (=> b!1876932 (= e!1197921 Nil!20916)))

(assert (= (and d!573364 c!305906) b!1876931))

(assert (= (and d!573364 (not c!305906)) b!1876932))

(declare-fun m!2303325 () Bool)

(assert (=> b!1876931 m!2303325))

(assert (=> b!1876931 m!2303325))

(declare-fun m!2303327 () Bool)

(assert (=> b!1876931 m!2303327))

(declare-fun m!2303329 () Bool)

(assert (=> b!1876931 m!2303329))

(assert (=> b!1876931 m!2303327))

(assert (=> b!1876931 m!2303329))

(declare-fun m!2303331 () Bool)

(assert (=> b!1876931 m!2303331))

(assert (=> d!573122 d!573364))

(declare-fun d!573366 () Bool)

(declare-fun c!305909 () Bool)

(assert (=> d!573366 (= c!305909 ((_ is Cons!20917) (drop!1030 (list!8532 v!6352) from!845)))))

(declare-fun e!1197924 () List!20998)

(assert (=> d!573366 (= (printWithSeparatorTokenList!70 thiss!13718 (drop!1030 (list!8532 v!6352) from!845) separatorToken!84) e!1197924)))

(declare-fun b!1876937 () Bool)

(assert (=> b!1876937 (= e!1197924 (++!5686 (++!5686 (list!8535 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))) (list!8535 (charsOf!2302 separatorToken!84))) (printWithSeparatorTokenList!70 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))

(declare-fun b!1876938 () Bool)

(assert (=> b!1876938 (= e!1197924 Nil!20916)))

(assert (= (and d!573366 c!305909) b!1876937))

(assert (= (and d!573366 (not c!305909)) b!1876938))

(assert (=> b!1876937 m!2302515))

(assert (=> b!1876937 m!2302535))

(assert (=> b!1876937 m!2302739))

(assert (=> b!1876937 m!2302511))

(assert (=> b!1876937 m!2302515))

(assert (=> b!1876937 m!2302519))

(assert (=> b!1876937 m!2302535))

(declare-fun m!2303333 () Bool)

(assert (=> b!1876937 m!2303333))

(assert (=> b!1876937 m!2303333))

(assert (=> b!1876937 m!2302739))

(declare-fun m!2303335 () Bool)

(assert (=> b!1876937 m!2303335))

(assert (=> b!1876937 m!2302511))

(assert (=> b!1876937 m!2302519))

(assert (=> d!573122 d!573366))

(assert (=> bm!116163 d!573336))

(declare-fun d!573368 () Bool)

(assert (=> d!573368 (= (list!8535 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))) (list!8539 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))))

(declare-fun bs!412258 () Bool)

(assert (= bs!412258 d!573368))

(declare-fun m!2303337 () Bool)

(assert (=> bs!412258 m!2303337))

(assert (=> b!1876253 d!573368))

(declare-fun d!573370 () Bool)

(declare-fun res!839250 () Bool)

(declare-fun e!1197925 () Bool)

(assert (=> d!573370 (=> (not res!839250) (not e!1197925))))

(assert (=> d!573370 (= res!839250 (= (csize!14130 (c!305736 v!6352)) (+ (size!16602 (left!16811 (c!305736 v!6352))) (size!16602 (right!17141 (c!305736 v!6352))))))))

(assert (=> d!573370 (= (inv!27826 (c!305736 v!6352)) e!1197925)))

(declare-fun b!1876939 () Bool)

(declare-fun res!839251 () Bool)

(assert (=> b!1876939 (=> (not res!839251) (not e!1197925))))

(assert (=> b!1876939 (= res!839251 (and (not (= (left!16811 (c!305736 v!6352)) Empty!6950)) (not (= (right!17141 (c!305736 v!6352)) Empty!6950))))))

(declare-fun b!1876940 () Bool)

(declare-fun res!839252 () Bool)

(assert (=> b!1876940 (=> (not res!839252) (not e!1197925))))

(assert (=> b!1876940 (= res!839252 (= (cheight!7161 (c!305736 v!6352)) (+ (max!0 (height!1087 (left!16811 (c!305736 v!6352))) (height!1087 (right!17141 (c!305736 v!6352)))) 1)))))

(declare-fun b!1876941 () Bool)

(assert (=> b!1876941 (= e!1197925 (<= 0 (cheight!7161 (c!305736 v!6352))))))

(assert (= (and d!573370 res!839250) b!1876939))

(assert (= (and b!1876939 res!839251) b!1876940))

(assert (= (and b!1876940 res!839252) b!1876941))

(declare-fun m!2303339 () Bool)

(assert (=> d!573370 m!2303339))

(declare-fun m!2303341 () Bool)

(assert (=> d!573370 m!2303341))

(assert (=> b!1876940 m!2303315))

(assert (=> b!1876940 m!2303317))

(assert (=> b!1876940 m!2303315))

(assert (=> b!1876940 m!2303317))

(declare-fun m!2303343 () Bool)

(assert (=> b!1876940 m!2303343))

(assert (=> b!1876476 d!573370))

(declare-fun d!573372 () Bool)

(declare-fun lt!721428 () Int)

(assert (=> d!573372 (>= lt!721428 0)))

(declare-fun e!1197928 () Int)

(assert (=> d!573372 (= lt!721428 e!1197928)))

(declare-fun c!305912 () Bool)

(assert (=> d!573372 (= c!305912 ((_ is Nil!20916) (originalCharacters!4517 separatorToken!84)))))

(assert (=> d!573372 (= (size!16598 (originalCharacters!4517 separatorToken!84)) lt!721428)))

(declare-fun b!1876946 () Bool)

(assert (=> b!1876946 (= e!1197928 0)))

(declare-fun b!1876947 () Bool)

(assert (=> b!1876947 (= e!1197928 (+ 1 (size!16598 (t!173227 (originalCharacters!4517 separatorToken!84)))))))

(assert (= (and d!573372 c!305912) b!1876946))

(assert (= (and d!573372 (not c!305912)) b!1876947))

(declare-fun m!2303345 () Bool)

(assert (=> b!1876947 m!2303345))

(assert (=> b!1876254 d!573372))

(declare-fun d!573374 () Bool)

(declare-fun res!839257 () Bool)

(declare-fun e!1197931 () Bool)

(assert (=> d!573374 (=> (not res!839257) (not e!1197931))))

(assert (=> d!573374 (= res!839257 (<= (size!16601 (list!8540 (xs!9834 (c!305736 acc!408)))) 512))))

(assert (=> d!573374 (= (inv!27827 (c!305736 acc!408)) e!1197931)))

(declare-fun b!1876952 () Bool)

(declare-fun res!839258 () Bool)

(assert (=> b!1876952 (=> (not res!839258) (not e!1197931))))

(assert (=> b!1876952 (= res!839258 (= (csize!14131 (c!305736 acc!408)) (size!16601 (list!8540 (xs!9834 (c!305736 acc!408))))))))

(declare-fun b!1876953 () Bool)

(assert (=> b!1876953 (= e!1197931 (and (> (csize!14131 (c!305736 acc!408)) 0) (<= (csize!14131 (c!305736 acc!408)) 512)))))

(assert (= (and d!573374 res!839257) b!1876952))

(assert (= (and b!1876952 res!839258) b!1876953))

(assert (=> d!573374 m!2303309))

(assert (=> d!573374 m!2303309))

(declare-fun m!2303347 () Bool)

(assert (=> d!573374 m!2303347))

(assert (=> b!1876952 m!2303309))

(assert (=> b!1876952 m!2303309))

(assert (=> b!1876952 m!2303347))

(assert (=> b!1876238 d!573374))

(declare-fun b!1876956 () Bool)

(declare-fun res!839259 () Bool)

(declare-fun e!1197932 () Bool)

(assert (=> b!1876956 (=> (not res!839259) (not e!1197932))))

(declare-fun lt!721429 () List!20999)

(assert (=> b!1876956 (= res!839259 (= (size!16601 lt!721429) (+ (size!16601 (t!173228 lt!721287)) (size!16601 lt!721286))))))

(declare-fun b!1876954 () Bool)

(declare-fun e!1197933 () List!20999)

(assert (=> b!1876954 (= e!1197933 lt!721286)))

(declare-fun d!573376 () Bool)

(assert (=> d!573376 e!1197932))

(declare-fun res!839260 () Bool)

(assert (=> d!573376 (=> (not res!839260) (not e!1197932))))

(assert (=> d!573376 (= res!839260 (= (content!3111 lt!721429) ((_ map or) (content!3111 (t!173228 lt!721287)) (content!3111 lt!721286))))))

(assert (=> d!573376 (= lt!721429 e!1197933)))

(declare-fun c!305913 () Bool)

(assert (=> d!573376 (= c!305913 ((_ is Nil!20917) (t!173228 lt!721287)))))

(assert (=> d!573376 (= (++!5684 (t!173228 lt!721287) lt!721286) lt!721429)))

(declare-fun b!1876955 () Bool)

(assert (=> b!1876955 (= e!1197933 (Cons!20917 (h!26318 (t!173228 lt!721287)) (++!5684 (t!173228 (t!173228 lt!721287)) lt!721286)))))

(declare-fun b!1876957 () Bool)

(assert (=> b!1876957 (= e!1197932 (or (not (= lt!721286 Nil!20917)) (= lt!721429 (t!173228 lt!721287))))))

(assert (= (and d!573376 c!305913) b!1876954))

(assert (= (and d!573376 (not c!305913)) b!1876955))

(assert (= (and d!573376 res!839260) b!1876956))

(assert (= (and b!1876956 res!839259) b!1876957))

(declare-fun m!2303349 () Bool)

(assert (=> b!1876956 m!2303349))

(declare-fun m!2303351 () Bool)

(assert (=> b!1876956 m!2303351))

(assert (=> b!1876956 m!2302619))

(declare-fun m!2303353 () Bool)

(assert (=> d!573376 m!2303353))

(assert (=> d!573376 m!2303217))

(assert (=> d!573376 m!2302625))

(declare-fun m!2303355 () Bool)

(assert (=> b!1876955 m!2303355))

(assert (=> b!1876470 d!573376))

(declare-fun d!573378 () Bool)

(declare-fun c!305914 () Bool)

(assert (=> d!573378 (= c!305914 ((_ is Node!6950) (left!16811 (c!305736 v!6352))))))

(declare-fun e!1197934 () Bool)

(assert (=> d!573378 (= (inv!27821 (left!16811 (c!305736 v!6352))) e!1197934)))

(declare-fun b!1876958 () Bool)

(assert (=> b!1876958 (= e!1197934 (inv!27826 (left!16811 (c!305736 v!6352))))))

(declare-fun b!1876959 () Bool)

(declare-fun e!1197935 () Bool)

(assert (=> b!1876959 (= e!1197934 e!1197935)))

(declare-fun res!839261 () Bool)

(assert (=> b!1876959 (= res!839261 (not ((_ is Leaf!10226) (left!16811 (c!305736 v!6352)))))))

(assert (=> b!1876959 (=> res!839261 e!1197935)))

(declare-fun b!1876960 () Bool)

(assert (=> b!1876960 (= e!1197935 (inv!27827 (left!16811 (c!305736 v!6352))))))

(assert (= (and d!573378 c!305914) b!1876958))

(assert (= (and d!573378 (not c!305914)) b!1876959))

(assert (= (and b!1876959 (not res!839261)) b!1876960))

(declare-fun m!2303357 () Bool)

(assert (=> b!1876958 m!2303357))

(declare-fun m!2303359 () Bool)

(assert (=> b!1876960 m!2303359))

(assert (=> b!1876509 d!573378))

(declare-fun d!573380 () Bool)

(declare-fun c!305915 () Bool)

(assert (=> d!573380 (= c!305915 ((_ is Node!6950) (right!17141 (c!305736 v!6352))))))

(declare-fun e!1197936 () Bool)

(assert (=> d!573380 (= (inv!27821 (right!17141 (c!305736 v!6352))) e!1197936)))

(declare-fun b!1876961 () Bool)

(assert (=> b!1876961 (= e!1197936 (inv!27826 (right!17141 (c!305736 v!6352))))))

(declare-fun b!1876962 () Bool)

(declare-fun e!1197937 () Bool)

(assert (=> b!1876962 (= e!1197936 e!1197937)))

(declare-fun res!839262 () Bool)

(assert (=> b!1876962 (= res!839262 (not ((_ is Leaf!10226) (right!17141 (c!305736 v!6352)))))))

(assert (=> b!1876962 (=> res!839262 e!1197937)))

(declare-fun b!1876963 () Bool)

(assert (=> b!1876963 (= e!1197937 (inv!27827 (right!17141 (c!305736 v!6352))))))

(assert (= (and d!573380 c!305915) b!1876961))

(assert (= (and d!573380 (not c!305915)) b!1876962))

(assert (= (and b!1876962 (not res!839262)) b!1876963))

(declare-fun m!2303361 () Bool)

(assert (=> b!1876961 m!2303361))

(declare-fun m!2303363 () Bool)

(assert (=> b!1876963 m!2303363))

(assert (=> b!1876509 d!573380))

(declare-fun d!573382 () Bool)

(declare-fun c!305916 () Bool)

(assert (=> d!573382 (= c!305916 ((_ is Nil!20917) lt!721347))))

(declare-fun e!1197938 () (InoxSet Token!6972))

(assert (=> d!573382 (= (content!3111 lt!721347) e!1197938)))

(declare-fun b!1876964 () Bool)

(assert (=> b!1876964 (= e!1197938 ((as const (Array Token!6972 Bool)) false))))

(declare-fun b!1876965 () Bool)

(assert (=> b!1876965 (= e!1197938 ((_ map or) (store ((as const (Array Token!6972 Bool)) false) (h!26318 lt!721347) true) (content!3111 (t!173228 lt!721347))))))

(assert (= (and d!573382 c!305916) b!1876964))

(assert (= (and d!573382 (not c!305916)) b!1876965))

(declare-fun m!2303365 () Bool)

(assert (=> b!1876965 m!2303365))

(declare-fun m!2303367 () Bool)

(assert (=> b!1876965 m!2303367))

(assert (=> d!573134 d!573382))

(declare-fun d!573384 () Bool)

(declare-fun c!305917 () Bool)

(assert (=> d!573384 (= c!305917 ((_ is Nil!20917) (list!8532 v!6352)))))

(declare-fun e!1197939 () (InoxSet Token!6972))

(assert (=> d!573384 (= (content!3111 (list!8532 v!6352)) e!1197939)))

(declare-fun b!1876966 () Bool)

(assert (=> b!1876966 (= e!1197939 ((as const (Array Token!6972 Bool)) false))))

(declare-fun b!1876967 () Bool)

(assert (=> b!1876967 (= e!1197939 ((_ map or) (store ((as const (Array Token!6972 Bool)) false) (h!26318 (list!8532 v!6352)) true) (content!3111 (t!173228 (list!8532 v!6352)))))))

(assert (= (and d!573384 c!305917) b!1876966))

(assert (= (and d!573384 (not c!305917)) b!1876967))

(declare-fun m!2303369 () Bool)

(assert (=> b!1876967 m!2303369))

(assert (=> b!1876967 m!2303237))

(assert (=> d!573134 d!573384))

(declare-fun d!573386 () Bool)

(declare-fun c!305918 () Bool)

(assert (=> d!573386 (= c!305918 ((_ is Cons!20917) ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))))

(declare-fun e!1197940 () List!20998)

(assert (=> d!573386 (= (printList!1012 thiss!13718 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)) e!1197940)))

(declare-fun b!1876968 () Bool)

(assert (=> b!1876968 (= e!1197940 (++!5686 (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))) (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))))))

(declare-fun b!1876969 () Bool)

(assert (=> b!1876969 (= e!1197940 Nil!20916)))

(assert (= (and d!573386 c!305918) b!1876968))

(assert (= (and d!573386 (not c!305918)) b!1876969))

(declare-fun m!2303371 () Bool)

(assert (=> b!1876968 m!2303371))

(assert (=> b!1876968 m!2303371))

(declare-fun m!2303373 () Bool)

(assert (=> b!1876968 m!2303373))

(declare-fun m!2303375 () Bool)

(assert (=> b!1876968 m!2303375))

(assert (=> b!1876968 m!2303373))

(assert (=> b!1876968 m!2303375))

(declare-fun m!2303377 () Bool)

(assert (=> b!1876968 m!2303377))

(assert (=> b!1876361 d!573386))

(assert (=> b!1876361 d!573162))

(assert (=> b!1876361 d!573174))

(declare-fun d!573388 () Bool)

(declare-fun res!839263 () Bool)

(declare-fun e!1197941 () Bool)

(assert (=> d!573388 (=> (not res!839263) (not e!1197941))))

(assert (=> d!573388 (= res!839263 (<= (size!16601 (list!8540 (xs!9834 (c!305736 v!6352)))) 512))))

(assert (=> d!573388 (= (inv!27827 (c!305736 v!6352)) e!1197941)))

(declare-fun b!1876970 () Bool)

(declare-fun res!839264 () Bool)

(assert (=> b!1876970 (=> (not res!839264) (not e!1197941))))

(assert (=> b!1876970 (= res!839264 (= (csize!14131 (c!305736 v!6352)) (size!16601 (list!8540 (xs!9834 (c!305736 v!6352))))))))

(declare-fun b!1876971 () Bool)

(assert (=> b!1876971 (= e!1197941 (and (> (csize!14131 (c!305736 v!6352)) 0) (<= (csize!14131 (c!305736 v!6352)) 512)))))

(assert (= (and d!573388 res!839263) b!1876970))

(assert (= (and b!1876970 res!839264) b!1876971))

(assert (=> d!573388 m!2303229))

(assert (=> d!573388 m!2303229))

(declare-fun m!2303379 () Bool)

(assert (=> d!573388 m!2303379))

(assert (=> b!1876970 m!2303229))

(assert (=> b!1876970 m!2303229))

(assert (=> b!1876970 m!2303379))

(assert (=> b!1876478 d!573388))

(declare-fun d!573390 () Bool)

(declare-fun lt!721430 () Int)

(assert (=> d!573390 (>= lt!721430 0)))

(declare-fun e!1197942 () Int)

(assert (=> d!573390 (= lt!721430 e!1197942)))

(declare-fun c!305919 () Bool)

(assert (=> d!573390 (= c!305919 ((_ is Nil!20917) lt!721350))))

(assert (=> d!573390 (= (size!16601 lt!721350) lt!721430)))

(declare-fun b!1876972 () Bool)

(assert (=> b!1876972 (= e!1197942 0)))

(declare-fun b!1876973 () Bool)

(assert (=> b!1876973 (= e!1197942 (+ 1 (size!16601 (t!173228 lt!721350))))))

(assert (= (and d!573390 c!305919) b!1876972))

(assert (= (and d!573390 (not c!305919)) b!1876973))

(declare-fun m!2303381 () Bool)

(assert (=> b!1876973 m!2303381))

(assert (=> b!1876471 d!573390))

(declare-fun d!573392 () Bool)

(declare-fun lt!721431 () Int)

(assert (=> d!573392 (>= lt!721431 0)))

(declare-fun e!1197943 () Int)

(assert (=> d!573392 (= lt!721431 e!1197943)))

(declare-fun c!305920 () Bool)

(assert (=> d!573392 (= c!305920 ((_ is Nil!20917) lt!721287))))

(assert (=> d!573392 (= (size!16601 lt!721287) lt!721431)))

(declare-fun b!1876974 () Bool)

(assert (=> b!1876974 (= e!1197943 0)))

(declare-fun b!1876975 () Bool)

(assert (=> b!1876975 (= e!1197943 (+ 1 (size!16601 (t!173228 lt!721287))))))

(assert (= (and d!573392 c!305920) b!1876974))

(assert (= (and d!573392 (not c!305920)) b!1876975))

(assert (=> b!1876975 m!2303351))

(assert (=> b!1876471 d!573392))

(declare-fun d!573394 () Bool)

(declare-fun lt!721432 () Int)

(assert (=> d!573394 (>= lt!721432 0)))

(declare-fun e!1197944 () Int)

(assert (=> d!573394 (= lt!721432 e!1197944)))

(declare-fun c!305921 () Bool)

(assert (=> d!573394 (= c!305921 ((_ is Nil!20917) lt!721286))))

(assert (=> d!573394 (= (size!16601 lt!721286) lt!721432)))

(declare-fun b!1876976 () Bool)

(assert (=> b!1876976 (= e!1197944 0)))

(declare-fun b!1876977 () Bool)

(assert (=> b!1876977 (= e!1197944 (+ 1 (size!16601 (t!173228 lt!721286))))))

(assert (= (and d!573394 c!305921) b!1876976))

(assert (= (and d!573394 (not c!305921)) b!1876977))

(declare-fun m!2303383 () Bool)

(assert (=> b!1876977 m!2303383))

(assert (=> b!1876471 d!573394))

(declare-fun d!573396 () Bool)

(assert (=> d!573396 (= (inv!27833 (xs!9834 (c!305736 v!6352))) (<= (size!16601 (innerList!7010 (xs!9834 (c!305736 v!6352)))) 2147483647))))

(declare-fun bs!412259 () Bool)

(assert (= bs!412259 d!573396))

(declare-fun m!2303385 () Bool)

(assert (=> bs!412259 m!2303385))

(assert (=> b!1876510 d!573396))

(declare-fun d!573398 () Bool)

(declare-fun lt!721433 () Int)

(assert (=> d!573398 (>= lt!721433 0)))

(declare-fun e!1197945 () Int)

(assert (=> d!573398 (= lt!721433 e!1197945)))

(declare-fun c!305922 () Bool)

(assert (=> d!573398 (= c!305922 ((_ is Nil!20917) lt!721347))))

(assert (=> d!573398 (= (size!16601 lt!721347) lt!721433)))

(declare-fun b!1876978 () Bool)

(assert (=> b!1876978 (= e!1197945 0)))

(declare-fun b!1876979 () Bool)

(assert (=> b!1876979 (= e!1197945 (+ 1 (size!16601 (t!173228 lt!721347))))))

(assert (= (and d!573398 c!305922) b!1876978))

(assert (= (and d!573398 (not c!305922)) b!1876979))

(declare-fun m!2303387 () Bool)

(assert (=> b!1876979 m!2303387))

(assert (=> b!1876436 d!573398))

(declare-fun b!1876982 () Bool)

(declare-fun e!1197946 () Bool)

(declare-fun tp!534959 () Bool)

(assert (=> b!1876982 (= e!1197946 tp!534959)))

(declare-fun b!1876981 () Bool)

(declare-fun tp!534961 () Bool)

(declare-fun tp!534958 () Bool)

(assert (=> b!1876981 (= e!1197946 (and tp!534961 tp!534958))))

(assert (=> b!1876507 (= tp!534878 e!1197946)))

(declare-fun b!1876983 () Bool)

(declare-fun tp!534957 () Bool)

(declare-fun tp!534960 () Bool)

(assert (=> b!1876983 (= e!1197946 (and tp!534957 tp!534960))))

(declare-fun b!1876980 () Bool)

(assert (=> b!1876980 (= e!1197946 tp_is_empty!8895)))

(assert (= (and b!1876507 ((_ is ElementMatch!5119) (reg!5448 (regex!3710 (rule!5903 separatorToken!84))))) b!1876980))

(assert (= (and b!1876507 ((_ is Concat!8966) (reg!5448 (regex!3710 (rule!5903 separatorToken!84))))) b!1876981))

(assert (= (and b!1876507 ((_ is Star!5119) (reg!5448 (regex!3710 (rule!5903 separatorToken!84))))) b!1876982))

(assert (= (and b!1876507 ((_ is Union!5119) (reg!5448 (regex!3710 (rule!5903 separatorToken!84))))) b!1876983))

(declare-fun tp!534962 () Bool)

(declare-fun b!1876984 () Bool)

(declare-fun e!1197948 () Bool)

(declare-fun tp!534963 () Bool)

(assert (=> b!1876984 (= e!1197948 (and (inv!27821 (left!16811 (left!16811 (c!305736 acc!408)))) tp!534963 (inv!27821 (right!17141 (left!16811 (c!305736 acc!408)))) tp!534962))))

(declare-fun b!1876986 () Bool)

(declare-fun e!1197947 () Bool)

(declare-fun tp!534964 () Bool)

(assert (=> b!1876986 (= e!1197947 tp!534964)))

(declare-fun b!1876985 () Bool)

(assert (=> b!1876985 (= e!1197948 (and (inv!27833 (xs!9834 (left!16811 (c!305736 acc!408)))) e!1197947))))

(assert (=> b!1876487 (= tp!534861 (and (inv!27821 (left!16811 (c!305736 acc!408))) e!1197948))))

(assert (= (and b!1876487 ((_ is Node!6950) (left!16811 (c!305736 acc!408)))) b!1876984))

(assert (= b!1876985 b!1876986))

(assert (= (and b!1876487 ((_ is Leaf!10226) (left!16811 (c!305736 acc!408)))) b!1876985))

(declare-fun m!2303389 () Bool)

(assert (=> b!1876984 m!2303389))

(declare-fun m!2303391 () Bool)

(assert (=> b!1876984 m!2303391))

(declare-fun m!2303393 () Bool)

(assert (=> b!1876985 m!2303393))

(assert (=> b!1876487 m!2302639))

(declare-fun tp!534965 () Bool)

(declare-fun tp!534966 () Bool)

(declare-fun b!1876987 () Bool)

(declare-fun e!1197950 () Bool)

(assert (=> b!1876987 (= e!1197950 (and (inv!27821 (left!16811 (right!17141 (c!305736 acc!408)))) tp!534966 (inv!27821 (right!17141 (right!17141 (c!305736 acc!408)))) tp!534965))))

(declare-fun b!1876989 () Bool)

(declare-fun e!1197949 () Bool)

(declare-fun tp!534967 () Bool)

(assert (=> b!1876989 (= e!1197949 tp!534967)))

(declare-fun b!1876988 () Bool)

(assert (=> b!1876988 (= e!1197950 (and (inv!27833 (xs!9834 (right!17141 (c!305736 acc!408)))) e!1197949))))

(assert (=> b!1876487 (= tp!534860 (and (inv!27821 (right!17141 (c!305736 acc!408))) e!1197950))))

(assert (= (and b!1876487 ((_ is Node!6950) (right!17141 (c!305736 acc!408)))) b!1876987))

(assert (= b!1876988 b!1876989))

(assert (= (and b!1876487 ((_ is Leaf!10226) (right!17141 (c!305736 acc!408)))) b!1876988))

(declare-fun m!2303395 () Bool)

(assert (=> b!1876987 m!2303395))

(declare-fun m!2303397 () Bool)

(assert (=> b!1876987 m!2303397))

(declare-fun m!2303399 () Bool)

(assert (=> b!1876988 m!2303399))

(assert (=> b!1876487 m!2302641))

(declare-fun b!1876992 () Bool)

(declare-fun e!1197951 () Bool)

(declare-fun tp!534970 () Bool)

(assert (=> b!1876992 (= e!1197951 tp!534970)))

(declare-fun b!1876991 () Bool)

(declare-fun tp!534972 () Bool)

(declare-fun tp!534969 () Bool)

(assert (=> b!1876991 (= e!1197951 (and tp!534972 tp!534969))))

(assert (=> b!1876508 (= tp!534876 e!1197951)))

(declare-fun b!1876993 () Bool)

(declare-fun tp!534968 () Bool)

(declare-fun tp!534971 () Bool)

(assert (=> b!1876993 (= e!1197951 (and tp!534968 tp!534971))))

(declare-fun b!1876990 () Bool)

(assert (=> b!1876990 (= e!1197951 tp_is_empty!8895)))

(assert (= (and b!1876508 ((_ is ElementMatch!5119) (regOne!10751 (regex!3710 (rule!5903 separatorToken!84))))) b!1876990))

(assert (= (and b!1876508 ((_ is Concat!8966) (regOne!10751 (regex!3710 (rule!5903 separatorToken!84))))) b!1876991))

(assert (= (and b!1876508 ((_ is Star!5119) (regOne!10751 (regex!3710 (rule!5903 separatorToken!84))))) b!1876992))

(assert (= (and b!1876508 ((_ is Union!5119) (regOne!10751 (regex!3710 (rule!5903 separatorToken!84))))) b!1876993))

(declare-fun b!1876996 () Bool)

(declare-fun e!1197952 () Bool)

(declare-fun tp!534975 () Bool)

(assert (=> b!1876996 (= e!1197952 tp!534975)))

(declare-fun b!1876995 () Bool)

(declare-fun tp!534977 () Bool)

(declare-fun tp!534974 () Bool)

(assert (=> b!1876995 (= e!1197952 (and tp!534977 tp!534974))))

(assert (=> b!1876508 (= tp!534879 e!1197952)))

(declare-fun b!1876997 () Bool)

(declare-fun tp!534973 () Bool)

(declare-fun tp!534976 () Bool)

(assert (=> b!1876997 (= e!1197952 (and tp!534973 tp!534976))))

(declare-fun b!1876994 () Bool)

(assert (=> b!1876994 (= e!1197952 tp_is_empty!8895)))

(assert (= (and b!1876508 ((_ is ElementMatch!5119) (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84))))) b!1876994))

(assert (= (and b!1876508 ((_ is Concat!8966) (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84))))) b!1876995))

(assert (= (and b!1876508 ((_ is Star!5119) (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84))))) b!1876996))

(assert (= (and b!1876508 ((_ is Union!5119) (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84))))) b!1876997))

(declare-fun tp!534986 () Bool)

(declare-fun tp!534985 () Bool)

(declare-fun b!1877006 () Bool)

(declare-fun e!1197957 () Bool)

(assert (=> b!1877006 (= e!1197957 (and (inv!27828 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))) tp!534986 (inv!27828 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))) tp!534985))))

(declare-fun b!1877008 () Bool)

(declare-fun e!1197958 () Bool)

(declare-fun tp!534984 () Bool)

(assert (=> b!1877008 (= e!1197958 tp!534984)))

(declare-fun b!1877007 () Bool)

(declare-fun inv!27839 (IArray!13903) Bool)

(assert (=> b!1877007 (= e!1197957 (and (inv!27839 (xs!9833 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))) e!1197958))))

(assert (=> b!1876259 (= tp!534823 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))) e!1197957))))

(assert (= (and b!1876259 ((_ is Node!6949) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))) b!1877006))

(assert (= b!1877007 b!1877008))

(assert (= (and b!1876259 ((_ is Leaf!10225) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))) b!1877007))

(declare-fun m!2303401 () Bool)

(assert (=> b!1877006 m!2303401))

(declare-fun m!2303403 () Bool)

(assert (=> b!1877006 m!2303403))

(declare-fun m!2303405 () Bool)

(assert (=> b!1877007 m!2303405))

(assert (=> b!1876259 m!2302429))

(declare-fun b!1877022 () Bool)

(declare-fun b_free!52221 () Bool)

(declare-fun b_next!52925 () Bool)

(assert (=> b!1877022 (= b_free!52221 (not b_next!52925))))

(declare-fun tp!534998 () Bool)

(declare-fun b_and!144535 () Bool)

(assert (=> b!1877022 (= tp!534998 b_and!144535)))

(declare-fun b_free!52223 () Bool)

(declare-fun b_next!52927 () Bool)

(assert (=> b!1877022 (= b_free!52223 (not b_next!52927))))

(declare-fun t!173270 () Bool)

(declare-fun tb!112985 () Bool)

(assert (=> (and b!1877022 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84)))) t!173270) tb!112985))

(declare-fun result!136790 () Bool)

(assert (= result!136790 result!136738))

(assert (=> b!1876253 t!173270))

(assert (=> d!573172 t!173270))

(declare-fun tb!112987 () Bool)

(declare-fun t!173272 () Bool)

(assert (=> (and b!1877022 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331))))) t!173272) tb!112987))

(declare-fun result!136792 () Bool)

(assert (= result!136792 result!136756))

(assert (=> d!573192 t!173272))

(declare-fun tb!112989 () Bool)

(declare-fun t!173274 () Bool)

(assert (=> (and b!1877022 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335))))) t!173274) tb!112989))

(declare-fun result!136794 () Bool)

(assert (= result!136794 result!136784))

(assert (=> d!573350 t!173274))

(declare-fun tb!112991 () Bool)

(declare-fun t!173276 () Bool)

(assert (=> (and b!1877022 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))) t!173276) tb!112991))

(declare-fun result!136796 () Bool)

(assert (= result!136796 result!136754))

(assert (=> d!573154 t!173276))

(declare-fun tp!535001 () Bool)

(declare-fun b_and!144537 () Bool)

(assert (=> b!1877022 (= tp!535001 (and (=> t!173276 result!136796) (=> t!173272 result!136792) (=> t!173270 result!136790) (=> t!173274 result!136794) b_and!144537))))

(declare-fun e!1197975 () Bool)

(assert (=> b!1877022 (= e!1197975 (and tp!534998 tp!535001))))

(declare-fun e!1197973 () Bool)

(assert (=> b!1876489 (= tp!534862 e!1197973)))

(declare-fun e!1197976 () Bool)

(declare-fun tp!535000 () Bool)

(declare-fun b!1877021 () Bool)

(assert (=> b!1877021 (= e!1197976 (and tp!535000 (inv!27815 (tag!4124 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (inv!27820 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) e!1197975))))

(declare-fun b!1877019 () Bool)

(declare-fun e!1197972 () Bool)

(declare-fun tp!534999 () Bool)

(assert (=> b!1877019 (= e!1197973 (and (inv!27823 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))) e!1197972 tp!534999))))

(declare-fun tp!534997 () Bool)

(declare-fun b!1877020 () Bool)

(assert (=> b!1877020 (= e!1197972 (and (inv!21 (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))) e!1197976 tp!534997))))

(assert (= b!1877021 b!1877022))

(assert (= b!1877020 b!1877021))

(assert (= b!1877019 b!1877020))

(assert (= (and b!1876489 ((_ is Cons!20917) (innerList!7010 (xs!9834 (c!305736 acc!408))))) b!1877019))

(declare-fun m!2303407 () Bool)

(assert (=> b!1877021 m!2303407))

(declare-fun m!2303409 () Bool)

(assert (=> b!1877021 m!2303409))

(declare-fun m!2303411 () Bool)

(assert (=> b!1877019 m!2303411))

(declare-fun m!2303413 () Bool)

(assert (=> b!1877020 m!2303413))

(declare-fun b!1877023 () Bool)

(declare-fun e!1197977 () Bool)

(declare-fun tp!535002 () Bool)

(assert (=> b!1877023 (= e!1197977 (and tp_is_empty!8895 tp!535002))))

(assert (=> b!1876494 (= tp!534865 e!1197977)))

(assert (= (and b!1876494 ((_ is Cons!20916) (t!173227 (originalCharacters!4517 separatorToken!84)))) b!1877023))

(declare-fun b!1877024 () Bool)

(declare-fun tp!535003 () Bool)

(declare-fun tp!535004 () Bool)

(declare-fun e!1197979 () Bool)

(assert (=> b!1877024 (= e!1197979 (and (inv!27821 (left!16811 (left!16811 (c!305736 v!6352)))) tp!535004 (inv!27821 (right!17141 (left!16811 (c!305736 v!6352)))) tp!535003))))

(declare-fun b!1877026 () Bool)

(declare-fun e!1197978 () Bool)

(declare-fun tp!535005 () Bool)

(assert (=> b!1877026 (= e!1197978 tp!535005)))

(declare-fun b!1877025 () Bool)

(assert (=> b!1877025 (= e!1197979 (and (inv!27833 (xs!9834 (left!16811 (c!305736 v!6352)))) e!1197978))))

(assert (=> b!1876509 (= tp!534882 (and (inv!27821 (left!16811 (c!305736 v!6352))) e!1197979))))

(assert (= (and b!1876509 ((_ is Node!6950) (left!16811 (c!305736 v!6352)))) b!1877024))

(assert (= b!1877025 b!1877026))

(assert (= (and b!1876509 ((_ is Leaf!10226) (left!16811 (c!305736 v!6352)))) b!1877025))

(declare-fun m!2303415 () Bool)

(assert (=> b!1877024 m!2303415))

(declare-fun m!2303417 () Bool)

(assert (=> b!1877024 m!2303417))

(declare-fun m!2303419 () Bool)

(assert (=> b!1877025 m!2303419))

(assert (=> b!1876509 m!2302645))

(declare-fun tp!535006 () Bool)

(declare-fun b!1877027 () Bool)

(declare-fun e!1197981 () Bool)

(declare-fun tp!535007 () Bool)

(assert (=> b!1877027 (= e!1197981 (and (inv!27821 (left!16811 (right!17141 (c!305736 v!6352)))) tp!535007 (inv!27821 (right!17141 (right!17141 (c!305736 v!6352)))) tp!535006))))

(declare-fun b!1877029 () Bool)

(declare-fun e!1197980 () Bool)

(declare-fun tp!535008 () Bool)

(assert (=> b!1877029 (= e!1197980 tp!535008)))

(declare-fun b!1877028 () Bool)

(assert (=> b!1877028 (= e!1197981 (and (inv!27833 (xs!9834 (right!17141 (c!305736 v!6352)))) e!1197980))))

(assert (=> b!1876509 (= tp!534881 (and (inv!27821 (right!17141 (c!305736 v!6352))) e!1197981))))

(assert (= (and b!1876509 ((_ is Node!6950) (right!17141 (c!305736 v!6352)))) b!1877027))

(assert (= b!1877028 b!1877029))

(assert (= (and b!1876509 ((_ is Leaf!10226) (right!17141 (c!305736 v!6352)))) b!1877028))

(declare-fun m!2303421 () Bool)

(assert (=> b!1877027 m!2303421))

(declare-fun m!2303423 () Bool)

(assert (=> b!1877027 m!2303423))

(declare-fun m!2303425 () Bool)

(assert (=> b!1877028 m!2303425))

(assert (=> b!1876509 m!2302647))

(declare-fun b!1877033 () Bool)

(declare-fun b_free!52225 () Bool)

(declare-fun b_next!52929 () Bool)

(assert (=> b!1877033 (= b_free!52225 (not b_next!52929))))

(declare-fun tp!535010 () Bool)

(declare-fun b_and!144539 () Bool)

(assert (=> b!1877033 (= tp!535010 b_and!144539)))

(declare-fun b_free!52227 () Bool)

(declare-fun b_next!52931 () Bool)

(assert (=> b!1877033 (= b_free!52227 (not b_next!52931))))

(declare-fun t!173278 () Bool)

(declare-fun tb!112993 () Bool)

(assert (=> (and b!1877033 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84)))) t!173278) tb!112993))

(declare-fun result!136798 () Bool)

(assert (= result!136798 result!136738))

(assert (=> b!1876253 t!173278))

(assert (=> d!573172 t!173278))

(declare-fun t!173280 () Bool)

(declare-fun tb!112995 () Bool)

(assert (=> (and b!1877033 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331))))) t!173280) tb!112995))

(declare-fun result!136800 () Bool)

(assert (= result!136800 result!136756))

(assert (=> d!573192 t!173280))

(declare-fun t!173282 () Bool)

(declare-fun tb!112997 () Bool)

(assert (=> (and b!1877033 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335))))) t!173282) tb!112997))

(declare-fun result!136802 () Bool)

(assert (= result!136802 result!136784))

(assert (=> d!573350 t!173282))

(declare-fun tb!112999 () Bool)

(declare-fun t!173284 () Bool)

(assert (=> (and b!1877033 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))) t!173284) tb!112999))

(declare-fun result!136804 () Bool)

(assert (= result!136804 result!136754))

(assert (=> d!573154 t!173284))

(declare-fun tp!535013 () Bool)

(declare-fun b_and!144541 () Bool)

(assert (=> b!1877033 (= tp!535013 (and (=> t!173280 result!136800) (=> t!173278 result!136798) (=> t!173284 result!136804) (=> t!173282 result!136802) b_and!144541))))

(declare-fun e!1197986 () Bool)

(assert (=> b!1877033 (= e!1197986 (and tp!535010 tp!535013))))

(declare-fun e!1197984 () Bool)

(assert (=> b!1876511 (= tp!534883 e!1197984)))

(declare-fun tp!535012 () Bool)

(declare-fun b!1877032 () Bool)

(declare-fun e!1197987 () Bool)

(assert (=> b!1877032 (= e!1197987 (and tp!535012 (inv!27815 (tag!4124 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (inv!27820 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) e!1197986))))

(declare-fun b!1877030 () Bool)

(declare-fun e!1197983 () Bool)

(declare-fun tp!535011 () Bool)

(assert (=> b!1877030 (= e!1197984 (and (inv!27823 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))) e!1197983 tp!535011))))

(declare-fun tp!535009 () Bool)

(declare-fun b!1877031 () Bool)

(assert (=> b!1877031 (= e!1197983 (and (inv!21 (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))) e!1197987 tp!535009))))

(assert (= b!1877032 b!1877033))

(assert (= b!1877031 b!1877032))

(assert (= b!1877030 b!1877031))

(assert (= (and b!1876511 ((_ is Cons!20917) (innerList!7010 (xs!9834 (c!305736 v!6352))))) b!1877030))

(declare-fun m!2303427 () Bool)

(assert (=> b!1877032 m!2303427))

(declare-fun m!2303429 () Bool)

(assert (=> b!1877032 m!2303429))

(declare-fun m!2303431 () Bool)

(assert (=> b!1877030 m!2303431))

(declare-fun m!2303433 () Bool)

(assert (=> b!1877031 m!2303433))

(declare-fun b!1877036 () Bool)

(declare-fun e!1197988 () Bool)

(declare-fun tp!535016 () Bool)

(assert (=> b!1877036 (= e!1197988 tp!535016)))

(declare-fun b!1877035 () Bool)

(declare-fun tp!535018 () Bool)

(declare-fun tp!535015 () Bool)

(assert (=> b!1877035 (= e!1197988 (and tp!535018 tp!535015))))

(assert (=> b!1876506 (= tp!534880 e!1197988)))

(declare-fun b!1877037 () Bool)

(declare-fun tp!535014 () Bool)

(declare-fun tp!535017 () Bool)

(assert (=> b!1877037 (= e!1197988 (and tp!535014 tp!535017))))

(declare-fun b!1877034 () Bool)

(assert (=> b!1877034 (= e!1197988 tp_is_empty!8895)))

(assert (= (and b!1876506 ((_ is ElementMatch!5119) (regOne!10750 (regex!3710 (rule!5903 separatorToken!84))))) b!1877034))

(assert (= (and b!1876506 ((_ is Concat!8966) (regOne!10750 (regex!3710 (rule!5903 separatorToken!84))))) b!1877035))

(assert (= (and b!1876506 ((_ is Star!5119) (regOne!10750 (regex!3710 (rule!5903 separatorToken!84))))) b!1877036))

(assert (= (and b!1876506 ((_ is Union!5119) (regOne!10750 (regex!3710 (rule!5903 separatorToken!84))))) b!1877037))

(declare-fun b!1877040 () Bool)

(declare-fun e!1197989 () Bool)

(declare-fun tp!535021 () Bool)

(assert (=> b!1877040 (= e!1197989 tp!535021)))

(declare-fun b!1877039 () Bool)

(declare-fun tp!535023 () Bool)

(declare-fun tp!535020 () Bool)

(assert (=> b!1877039 (= e!1197989 (and tp!535023 tp!535020))))

(assert (=> b!1876506 (= tp!534877 e!1197989)))

(declare-fun b!1877041 () Bool)

(declare-fun tp!535019 () Bool)

(declare-fun tp!535022 () Bool)

(assert (=> b!1877041 (= e!1197989 (and tp!535019 tp!535022))))

(declare-fun b!1877038 () Bool)

(assert (=> b!1877038 (= e!1197989 tp_is_empty!8895)))

(assert (= (and b!1876506 ((_ is ElementMatch!5119) (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84))))) b!1877038))

(assert (= (and b!1876506 ((_ is Concat!8966) (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84))))) b!1877039))

(assert (= (and b!1876506 ((_ is Star!5119) (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84))))) b!1877040))

(assert (= (and b!1876506 ((_ is Union!5119) (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84))))) b!1877041))

(declare-fun b_lambda!61667 () Bool)

(assert (= b_lambda!61651 (or (and b!1876224 b_free!52211) (and b!1877022 b_free!52223 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))))) (and b!1877033 b_free!52227 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))))) b_lambda!61667)))

(check-sat (not b!1877019) (not b!1876929) (not b!1876992) (not d!573334) (not d!573350) (not b!1877007) (not b!1876563) (not b!1876844) (not b!1876927) (not d!573368) (not b!1876862) (not b!1876512) (not d!573190) (not b!1876565) (not b!1876558) (not b_lambda!61667) (not b_next!52927) (not b!1877028) (not b!1876539) (not b_next!52929) (not b!1877023) (not b!1876529) b_and!144533 (not tb!112959) (not d!573374) (not b!1876544) (not b!1876900) (not b!1876842) (not d!573156) (not b!1877039) (not b!1876547) (not b!1876533) (not b!1876983) (not b!1877041) (not b!1876986) (not b!1876985) (not tb!112983) (not b!1877032) (not b!1876918) (not d!573338) (not b!1876528) (not b!1876988) (not b!1876550) (not d!573348) (not b!1876562) (not b!1876993) (not b!1876982) (not d!573180) (not b!1876970) (not b!1877029) tp_is_empty!8895 (not b!1877035) (not d!573192) (not b!1876551) (not b!1876979) (not d!573172) (not b!1877024) (not d!573188) (not bm!116165) (not b!1876906) (not b!1877020) (not b!1876882) (not b!1877030) (not b!1876259) (not b!1876968) (not b!1876553) (not b_lambda!61647) b_and!144541 (not d!573340) (not d!573174) (not b!1876947) (not b!1876546) (not d!573370) (not b!1876977) (not b!1876996) (not b!1876555) (not b!1876956) (not b!1876910) (not b!1876556) (not b!1876963) (not d!573196) (not b!1876901) (not d!573330) (not d!573164) (not d!573176) (not b!1876973) (not d!573362) (not b!1876931) (not b!1876487) (not b!1877021) (not b!1876965) b_and!144539 (not d!573154) (not b_next!52915) (not b!1876967) (not b!1876903) (not b!1876904) (not b!1876858) (not b!1876958) (not b!1876997) (not b_next!52925) (not b!1876909) (not d!573346) (not d!573396) (not b!1877008) (not b!1876899) (not b!1877037) (not b!1877027) (not d!573178) (not b!1876984) (not b!1877026) (not d!573342) (not b!1876538) (not b!1876857) (not b!1876923) (not b!1876928) b_and!144535 (not d!573160) (not b!1876875) (not b!1876925) (not b!1876930) (not b!1876981) (not d!573170) (not d!573388) (not b!1876955) (not b!1876952) (not b!1876509) (not tb!112957) (not b!1876536) (not b!1876960) (not b_lambda!61665) (not b!1876907) (not b!1877006) (not b!1876989) (not b!1876566) (not b_lambda!61649) (not d!573376) (not b!1876961) b_and!144503 b_and!144537 (not b!1877031) (not b_lambda!61653) (not b!1876926) (not b_next!52913) (not b!1877040) (not b!1876846) (not b!1876924) (not b!1876866) (not b!1876920) (not b!1876991) (not b!1877025) (not d!573168) (not b!1876517) (not b!1876902) (not b!1876940) (not b!1876535) (not b_next!52931) (not b!1876937) (not d!573332) (not b!1877036) (not b!1876975) (not d!573198) (not b!1876559) (not b!1876532) (not b!1876987) (not b!1876995))
(check-sat (not b_next!52927) b_and!144541 (not b_next!52925) b_and!144535 (not b_next!52913) (not b_next!52931) (not b_next!52929) b_and!144533 b_and!144539 (not b_next!52915) b_and!144503 b_and!144537)
(get-model)

(declare-fun d!573776 () Bool)

(declare-fun c!306060 () Bool)

(assert (=> d!573776 (= c!306060 ((_ is Nil!20917) (t!173228 lt!721286)))))

(declare-fun e!1198305 () (InoxSet Token!6972))

(assert (=> d!573776 (= (content!3111 (t!173228 lt!721286)) e!1198305)))

(declare-fun b!1877651 () Bool)

(assert (=> b!1877651 (= e!1198305 ((as const (Array Token!6972 Bool)) false))))

(declare-fun b!1877652 () Bool)

(assert (=> b!1877652 (= e!1198305 ((_ map or) (store ((as const (Array Token!6972 Bool)) false) (h!26318 (t!173228 lt!721286)) true) (content!3111 (t!173228 (t!173228 lt!721286)))))))

(assert (= (and d!573776 c!306060) b!1877651))

(assert (= (and d!573776 (not c!306060)) b!1877652))

(declare-fun m!2304515 () Bool)

(assert (=> b!1877652 m!2304515))

(declare-fun m!2304517 () Bool)

(assert (=> b!1877652 m!2304517))

(assert (=> b!1876846 d!573776))

(declare-fun d!573778 () Bool)

(declare-fun c!306061 () Bool)

(assert (=> d!573778 (= c!306061 ((_ is Node!6950) (left!16811 (left!16811 (c!305736 acc!408)))))))

(declare-fun e!1198306 () Bool)

(assert (=> d!573778 (= (inv!27821 (left!16811 (left!16811 (c!305736 acc!408)))) e!1198306)))

(declare-fun b!1877653 () Bool)

(assert (=> b!1877653 (= e!1198306 (inv!27826 (left!16811 (left!16811 (c!305736 acc!408)))))))

(declare-fun b!1877654 () Bool)

(declare-fun e!1198307 () Bool)

(assert (=> b!1877654 (= e!1198306 e!1198307)))

(declare-fun res!839421 () Bool)

(assert (=> b!1877654 (= res!839421 (not ((_ is Leaf!10226) (left!16811 (left!16811 (c!305736 acc!408))))))))

(assert (=> b!1877654 (=> res!839421 e!1198307)))

(declare-fun b!1877655 () Bool)

(assert (=> b!1877655 (= e!1198307 (inv!27827 (left!16811 (left!16811 (c!305736 acc!408)))))))

(assert (= (and d!573778 c!306061) b!1877653))

(assert (= (and d!573778 (not c!306061)) b!1877654))

(assert (= (and b!1877654 (not res!839421)) b!1877655))

(declare-fun m!2304519 () Bool)

(assert (=> b!1877653 m!2304519))

(declare-fun m!2304521 () Bool)

(assert (=> b!1877655 m!2304521))

(assert (=> b!1876984 d!573778))

(declare-fun d!573780 () Bool)

(declare-fun c!306062 () Bool)

(assert (=> d!573780 (= c!306062 ((_ is Node!6950) (right!17141 (left!16811 (c!305736 acc!408)))))))

(declare-fun e!1198308 () Bool)

(assert (=> d!573780 (= (inv!27821 (right!17141 (left!16811 (c!305736 acc!408)))) e!1198308)))

(declare-fun b!1877656 () Bool)

(assert (=> b!1877656 (= e!1198308 (inv!27826 (right!17141 (left!16811 (c!305736 acc!408)))))))

(declare-fun b!1877657 () Bool)

(declare-fun e!1198309 () Bool)

(assert (=> b!1877657 (= e!1198308 e!1198309)))

(declare-fun res!839422 () Bool)

(assert (=> b!1877657 (= res!839422 (not ((_ is Leaf!10226) (right!17141 (left!16811 (c!305736 acc!408))))))))

(assert (=> b!1877657 (=> res!839422 e!1198309)))

(declare-fun b!1877658 () Bool)

(assert (=> b!1877658 (= e!1198309 (inv!27827 (right!17141 (left!16811 (c!305736 acc!408)))))))

(assert (= (and d!573780 c!306062) b!1877656))

(assert (= (and d!573780 (not c!306062)) b!1877657))

(assert (= (and b!1877657 (not res!839422)) b!1877658))

(declare-fun m!2304523 () Bool)

(assert (=> b!1877656 m!2304523))

(declare-fun m!2304525 () Bool)

(assert (=> b!1877658 m!2304525))

(assert (=> b!1876984 d!573780))

(declare-fun b!1877662 () Bool)

(declare-fun e!1198311 () Bool)

(declare-fun lt!721514 () List!20998)

(assert (=> b!1877662 (= e!1198311 (or (not (= (printList!1012 thiss!13718 (t!173228 lt!721369)) Nil!20916)) (= lt!721514 (list!8535 (charsOf!2302 (h!26318 lt!721369))))))))

(declare-fun d!573782 () Bool)

(assert (=> d!573782 e!1198311))

(declare-fun res!839424 () Bool)

(assert (=> d!573782 (=> (not res!839424) (not e!1198311))))

(assert (=> d!573782 (= res!839424 (= (content!3113 lt!721514) ((_ map or) (content!3113 (list!8535 (charsOf!2302 (h!26318 lt!721369)))) (content!3113 (printList!1012 thiss!13718 (t!173228 lt!721369))))))))

(declare-fun e!1198310 () List!20998)

(assert (=> d!573782 (= lt!721514 e!1198310)))

(declare-fun c!306063 () Bool)

(assert (=> d!573782 (= c!306063 ((_ is Nil!20916) (list!8535 (charsOf!2302 (h!26318 lt!721369)))))))

(assert (=> d!573782 (= (++!5686 (list!8535 (charsOf!2302 (h!26318 lt!721369))) (printList!1012 thiss!13718 (t!173228 lt!721369))) lt!721514)))

(declare-fun b!1877660 () Bool)

(assert (=> b!1877660 (= e!1198310 (Cons!20916 (h!26317 (list!8535 (charsOf!2302 (h!26318 lt!721369)))) (++!5686 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721369)))) (printList!1012 thiss!13718 (t!173228 lt!721369)))))))

(declare-fun b!1877659 () Bool)

(assert (=> b!1877659 (= e!1198310 (printList!1012 thiss!13718 (t!173228 lt!721369)))))

(declare-fun b!1877661 () Bool)

(declare-fun res!839423 () Bool)

(assert (=> b!1877661 (=> (not res!839423) (not e!1198311))))

(assert (=> b!1877661 (= res!839423 (= (size!16598 lt!721514) (+ (size!16598 (list!8535 (charsOf!2302 (h!26318 lt!721369)))) (size!16598 (printList!1012 thiss!13718 (t!173228 lt!721369))))))))

(assert (= (and d!573782 c!306063) b!1877659))

(assert (= (and d!573782 (not c!306063)) b!1877660))

(assert (= (and d!573782 res!839424) b!1877661))

(assert (= (and b!1877661 res!839423) b!1877662))

(declare-fun m!2304527 () Bool)

(assert (=> d!573782 m!2304527))

(assert (=> d!573782 m!2302731))

(declare-fun m!2304529 () Bool)

(assert (=> d!573782 m!2304529))

(assert (=> d!573782 m!2302733))

(declare-fun m!2304531 () Bool)

(assert (=> d!573782 m!2304531))

(assert (=> b!1877660 m!2302733))

(declare-fun m!2304533 () Bool)

(assert (=> b!1877660 m!2304533))

(declare-fun m!2304535 () Bool)

(assert (=> b!1877661 m!2304535))

(assert (=> b!1877661 m!2302731))

(declare-fun m!2304537 () Bool)

(assert (=> b!1877661 m!2304537))

(assert (=> b!1877661 m!2302733))

(declare-fun m!2304539 () Bool)

(assert (=> b!1877661 m!2304539))

(assert (=> b!1876535 d!573782))

(declare-fun d!573784 () Bool)

(assert (=> d!573784 (= (list!8535 (charsOf!2302 (h!26318 lt!721369))) (list!8539 (c!305735 (charsOf!2302 (h!26318 lt!721369)))))))

(declare-fun bs!412295 () Bool)

(assert (= bs!412295 d!573784))

(declare-fun m!2304541 () Bool)

(assert (=> bs!412295 m!2304541))

(assert (=> b!1876535 d!573784))

(declare-fun d!573786 () Bool)

(declare-fun lt!721515 () BalanceConc!13714)

(assert (=> d!573786 (= (list!8535 lt!721515) (originalCharacters!4517 (h!26318 lt!721369)))))

(assert (=> d!573786 (= lt!721515 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721369)))) (value!117200 (h!26318 lt!721369))))))

(assert (=> d!573786 (= (charsOf!2302 (h!26318 lt!721369)) lt!721515)))

(declare-fun b_lambda!61703 () Bool)

(assert (=> (not b_lambda!61703) (not d!573786)))

(declare-fun tb!113247 () Bool)

(declare-fun t!173536 () Bool)

(assert (=> (and b!1876224 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721369))))) t!173536) tb!113247))

(declare-fun b!1877663 () Bool)

(declare-fun e!1198312 () Bool)

(declare-fun tp!535243 () Bool)

(assert (=> b!1877663 (= e!1198312 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721369)))) (value!117200 (h!26318 lt!721369))))) tp!535243))))

(declare-fun result!137052 () Bool)

(assert (=> tb!113247 (= result!137052 (and (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721369)))) (value!117200 (h!26318 lt!721369)))) e!1198312))))

(assert (= tb!113247 b!1877663))

(declare-fun m!2304543 () Bool)

(assert (=> b!1877663 m!2304543))

(declare-fun m!2304545 () Bool)

(assert (=> tb!113247 m!2304545))

(assert (=> d!573786 t!173536))

(declare-fun b_and!144633 () Bool)

(assert (= b_and!144533 (and (=> t!173536 result!137052) b_and!144633)))

(declare-fun t!173538 () Bool)

(declare-fun tb!113249 () Bool)

(assert (=> (and b!1877022 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721369))))) t!173538) tb!113249))

(declare-fun result!137054 () Bool)

(assert (= result!137054 result!137052))

(assert (=> d!573786 t!173538))

(declare-fun b_and!144635 () Bool)

(assert (= b_and!144537 (and (=> t!173538 result!137054) b_and!144635)))

(declare-fun t!173540 () Bool)

(declare-fun tb!113251 () Bool)

(assert (=> (and b!1877033 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721369))))) t!173540) tb!113251))

(declare-fun result!137056 () Bool)

(assert (= result!137056 result!137052))

(assert (=> d!573786 t!173540))

(declare-fun b_and!144637 () Bool)

(assert (= b_and!144541 (and (=> t!173540 result!137056) b_and!144637)))

(declare-fun m!2304547 () Bool)

(assert (=> d!573786 m!2304547))

(declare-fun m!2304549 () Bool)

(assert (=> d!573786 m!2304549))

(assert (=> b!1876535 d!573786))

(declare-fun d!573788 () Bool)

(declare-fun c!306064 () Bool)

(assert (=> d!573788 (= c!306064 ((_ is Cons!20917) (t!173228 lt!721369)))))

(declare-fun e!1198313 () List!20998)

(assert (=> d!573788 (= (printList!1012 thiss!13718 (t!173228 lt!721369)) e!1198313)))

(declare-fun b!1877664 () Bool)

(assert (=> b!1877664 (= e!1198313 (++!5686 (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721369)))) (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721369)))))))

(declare-fun b!1877665 () Bool)

(assert (=> b!1877665 (= e!1198313 Nil!20916)))

(assert (= (and d!573788 c!306064) b!1877664))

(assert (= (and d!573788 (not c!306064)) b!1877665))

(declare-fun m!2304551 () Bool)

(assert (=> b!1877664 m!2304551))

(assert (=> b!1877664 m!2304551))

(declare-fun m!2304553 () Bool)

(assert (=> b!1877664 m!2304553))

(declare-fun m!2304555 () Bool)

(assert (=> b!1877664 m!2304555))

(assert (=> b!1877664 m!2304553))

(assert (=> b!1877664 m!2304555))

(declare-fun m!2304557 () Bool)

(assert (=> b!1877664 m!2304557))

(assert (=> b!1876535 d!573788))

(declare-fun d!573790 () Bool)

(declare-fun lt!721516 () Int)

(assert (=> d!573790 (>= lt!721516 0)))

(declare-fun e!1198314 () Int)

(assert (=> d!573790 (= lt!721516 e!1198314)))

(declare-fun c!306065 () Bool)

(assert (=> d!573790 (= c!306065 ((_ is Nil!20917) (innerList!7010 (xs!9834 (c!305736 acc!408)))))))

(assert (=> d!573790 (= (size!16601 (innerList!7010 (xs!9834 (c!305736 acc!408)))) lt!721516)))

(declare-fun b!1877666 () Bool)

(assert (=> b!1877666 (= e!1198314 0)))

(declare-fun b!1877667 () Bool)

(assert (=> b!1877667 (= e!1198314 (+ 1 (size!16601 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))))

(assert (= (and d!573790 c!306065) b!1877666))

(assert (= (and d!573790 (not c!306065)) b!1877667))

(declare-fun m!2304559 () Bool)

(assert (=> b!1877667 m!2304559))

(assert (=> d!573196 d!573790))

(declare-fun d!573792 () Bool)

(declare-fun res!839425 () Bool)

(declare-fun e!1198315 () Bool)

(assert (=> d!573792 (=> (not res!839425) (not e!1198315))))

(assert (=> d!573792 (= res!839425 (not (isEmpty!12974 (originalCharacters!4517 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))))))

(assert (=> d!573792 (= (inv!27823 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))) e!1198315)))

(declare-fun b!1877668 () Bool)

(declare-fun res!839426 () Bool)

(assert (=> b!1877668 (=> (not res!839426) (not e!1198315))))

(assert (=> b!1877668 (= res!839426 (= (originalCharacters!4517 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))) (list!8535 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))))))

(declare-fun b!1877669 () Bool)

(assert (=> b!1877669 (= e!1198315 (= (size!16595 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))) (size!16598 (originalCharacters!4517 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))))))

(assert (= (and d!573792 res!839425) b!1877668))

(assert (= (and b!1877668 res!839426) b!1877669))

(declare-fun b_lambda!61705 () Bool)

(assert (=> (not b_lambda!61705) (not b!1877668)))

(declare-fun tb!113253 () Bool)

(declare-fun t!173542 () Bool)

(assert (=> (and b!1876224 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) t!173542) tb!113253))

(declare-fun b!1877670 () Bool)

(declare-fun e!1198316 () Bool)

(declare-fun tp!535244 () Bool)

(assert (=> b!1877670 (= e!1198316 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) tp!535244))))

(declare-fun result!137058 () Bool)

(assert (=> tb!113253 (= result!137058 (and (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) e!1198316))))

(assert (= tb!113253 b!1877670))

(declare-fun m!2304561 () Bool)

(assert (=> b!1877670 m!2304561))

(declare-fun m!2304563 () Bool)

(assert (=> tb!113253 m!2304563))

(assert (=> b!1877668 t!173542))

(declare-fun b_and!144639 () Bool)

(assert (= b_and!144633 (and (=> t!173542 result!137058) b_and!144639)))

(declare-fun t!173544 () Bool)

(declare-fun tb!113255 () Bool)

(assert (=> (and b!1877022 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) t!173544) tb!113255))

(declare-fun result!137060 () Bool)

(assert (= result!137060 result!137058))

(assert (=> b!1877668 t!173544))

(declare-fun b_and!144641 () Bool)

(assert (= b_and!144635 (and (=> t!173544 result!137060) b_and!144641)))

(declare-fun tb!113257 () Bool)

(declare-fun t!173546 () Bool)

(assert (=> (and b!1877033 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) t!173546) tb!113257))

(declare-fun result!137062 () Bool)

(assert (= result!137062 result!137058))

(assert (=> b!1877668 t!173546))

(declare-fun b_and!144643 () Bool)

(assert (= b_and!144637 (and (=> t!173546 result!137062) b_and!144643)))

(declare-fun m!2304565 () Bool)

(assert (=> d!573792 m!2304565))

(declare-fun m!2304567 () Bool)

(assert (=> b!1877668 m!2304567))

(assert (=> b!1877668 m!2304567))

(declare-fun m!2304569 () Bool)

(assert (=> b!1877668 m!2304569))

(declare-fun m!2304571 () Bool)

(assert (=> b!1877669 m!2304571))

(assert (=> b!1877019 d!573792))

(declare-fun b!1877671 () Bool)

(declare-fun e!1198317 () Int)

(declare-fun call!116172 () Int)

(assert (=> b!1877671 (= e!1198317 (- call!116172 (- (- from!845 1) 1)))))

(declare-fun b!1877672 () Bool)

(declare-fun e!1198319 () Int)

(assert (=> b!1877672 (= e!1198319 e!1198317)))

(declare-fun c!306068 () Bool)

(assert (=> b!1877672 (= c!306068 (>= (- (- from!845 1) 1) call!116172))))

(declare-fun b!1877673 () Bool)

(assert (=> b!1877673 (= e!1198317 0)))

(declare-fun b!1877674 () Bool)

(declare-fun e!1198321 () List!20999)

(assert (=> b!1877674 (= e!1198321 (drop!1030 (t!173228 (t!173228 (t!173228 (list!8532 v!6352)))) (- (- (- from!845 1) 1) 1)))))

(declare-fun bm!116167 () Bool)

(assert (=> bm!116167 (= call!116172 (size!16601 (t!173228 (t!173228 (list!8532 v!6352)))))))

(declare-fun b!1877675 () Bool)

(assert (=> b!1877675 (= e!1198321 (t!173228 (t!173228 (list!8532 v!6352))))))

(declare-fun d!573794 () Bool)

(declare-fun e!1198318 () Bool)

(assert (=> d!573794 e!1198318))

(declare-fun res!839427 () Bool)

(assert (=> d!573794 (=> (not res!839427) (not e!1198318))))

(declare-fun lt!721517 () List!20999)

(assert (=> d!573794 (= res!839427 (= ((_ map implies) (content!3111 lt!721517) (content!3111 (t!173228 (t!173228 (list!8532 v!6352))))) ((as const (InoxSet Token!6972)) true)))))

(declare-fun e!1198320 () List!20999)

(assert (=> d!573794 (= lt!721517 e!1198320)))

(declare-fun c!306067 () Bool)

(assert (=> d!573794 (= c!306067 ((_ is Nil!20917) (t!173228 (t!173228 (list!8532 v!6352)))))))

(assert (=> d!573794 (= (drop!1030 (t!173228 (t!173228 (list!8532 v!6352))) (- (- from!845 1) 1)) lt!721517)))

(declare-fun b!1877676 () Bool)

(assert (=> b!1877676 (= e!1198320 e!1198321)))

(declare-fun c!306066 () Bool)

(assert (=> b!1877676 (= c!306066 (<= (- (- from!845 1) 1) 0))))

(declare-fun b!1877677 () Bool)

(assert (=> b!1877677 (= e!1198320 Nil!20917)))

(declare-fun b!1877678 () Bool)

(assert (=> b!1877678 (= e!1198318 (= (size!16601 lt!721517) e!1198319))))

(declare-fun c!306069 () Bool)

(assert (=> b!1877678 (= c!306069 (<= (- (- from!845 1) 1) 0))))

(declare-fun b!1877679 () Bool)

(assert (=> b!1877679 (= e!1198319 call!116172)))

(assert (= (and d!573794 c!306067) b!1877677))

(assert (= (and d!573794 (not c!306067)) b!1877676))

(assert (= (and b!1877676 c!306066) b!1877675))

(assert (= (and b!1877676 (not c!306066)) b!1877674))

(assert (= (and d!573794 res!839427) b!1877678))

(assert (= (and b!1877678 c!306069) b!1877679))

(assert (= (and b!1877678 (not c!306069)) b!1877672))

(assert (= (and b!1877672 c!306068) b!1877673))

(assert (= (and b!1877672 (not c!306068)) b!1877671))

(assert (= (or b!1877679 b!1877672 b!1877671) bm!116167))

(declare-fun m!2304573 () Bool)

(assert (=> b!1877674 m!2304573))

(declare-fun m!2304575 () Bool)

(assert (=> bm!116167 m!2304575))

(declare-fun m!2304577 () Bool)

(assert (=> d!573794 m!2304577))

(declare-fun m!2304579 () Bool)

(assert (=> d!573794 m!2304579))

(declare-fun m!2304581 () Bool)

(assert (=> b!1877678 m!2304581))

(assert (=> b!1876862 d!573794))

(declare-fun d!573796 () Bool)

(assert (=> d!573796 (= (inv!27839 (xs!9833 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))) (<= (size!16598 (innerList!7009 (xs!9833 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))) 2147483647))))

(declare-fun bs!412296 () Bool)

(assert (= bs!412296 d!573796))

(declare-fun m!2304583 () Bool)

(assert (=> bs!412296 m!2304583))

(assert (=> b!1877007 d!573796))

(declare-fun d!573798 () Bool)

(declare-fun c!306070 () Bool)

(assert (=> d!573798 (= c!306070 ((_ is Nil!20917) (t!173228 (list!8532 v!6352))))))

(declare-fun e!1198322 () (InoxSet Token!6972))

(assert (=> d!573798 (= (content!3111 (t!173228 (list!8532 v!6352))) e!1198322)))

(declare-fun b!1877680 () Bool)

(assert (=> b!1877680 (= e!1198322 ((as const (Array Token!6972 Bool)) false))))

(declare-fun b!1877681 () Bool)

(assert (=> b!1877681 (= e!1198322 ((_ map or) (store ((as const (Array Token!6972 Bool)) false) (h!26318 (t!173228 (list!8532 v!6352))) true) (content!3111 (t!173228 (t!173228 (list!8532 v!6352))))))))

(assert (= (and d!573798 c!306070) b!1877680))

(assert (= (and d!573798 (not c!306070)) b!1877681))

(declare-fun m!2304585 () Bool)

(assert (=> b!1877681 m!2304585))

(assert (=> b!1877681 m!2304579))

(assert (=> b!1876967 d!573798))

(declare-fun d!573800 () Bool)

(assert (=> d!573800 (= (inv!27833 (xs!9834 (right!17141 (c!305736 v!6352)))) (<= (size!16601 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352))))) 2147483647))))

(declare-fun bs!412297 () Bool)

(assert (= bs!412297 d!573800))

(declare-fun m!2304587 () Bool)

(assert (=> bs!412297 m!2304587))

(assert (=> b!1877028 d!573800))

(declare-fun d!573802 () Bool)

(assert (=> d!573802 (= (inv!27815 (tag!4124 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (= (mod (str.len (value!117199 (tag!4124 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) 2) 0))))

(assert (=> b!1877032 d!573802))

(declare-fun d!573804 () Bool)

(declare-fun res!839428 () Bool)

(declare-fun e!1198323 () Bool)

(assert (=> d!573804 (=> (not res!839428) (not e!1198323))))

(assert (=> d!573804 (= res!839428 (semiInverseModEq!1514 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toValue!5307 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))))))

(assert (=> d!573804 (= (inv!27820 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) e!1198323)))

(declare-fun b!1877682 () Bool)

(assert (=> b!1877682 (= e!1198323 (equivClasses!1441 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toValue!5307 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))))))

(assert (= (and d!573804 res!839428) b!1877682))

(declare-fun m!2304589 () Bool)

(assert (=> d!573804 m!2304589))

(declare-fun m!2304591 () Bool)

(assert (=> b!1877682 m!2304591))

(assert (=> b!1877032 d!573804))

(declare-fun d!573806 () Bool)

(assert (=> d!573806 (= (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (value!117200 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (isBalanced!2203 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (value!117200 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))))

(declare-fun bs!412298 () Bool)

(assert (= bs!412298 d!573806))

(declare-fun m!2304593 () Bool)

(assert (=> bs!412298 m!2304593))

(assert (=> tb!112957 d!573806))

(declare-fun c!306071 () Bool)

(declare-fun d!573808 () Bool)

(assert (=> d!573808 (= c!306071 ((_ is Cons!20917) ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84) separatorToken!84)))))

(declare-fun e!1198324 () List!20998)

(assert (=> d!573808 (= (printList!1012 thiss!13718 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84) separatorToken!84)) e!1198324)))

(declare-fun b!1877683 () Bool)

(assert (=> b!1877683 (= e!1198324 (++!5686 (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84) separatorToken!84)))) (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84) separatorToken!84)))))))

(declare-fun b!1877684 () Bool)

(assert (=> b!1877684 (= e!1198324 Nil!20916)))

(assert (= (and d!573808 c!306071) b!1877683))

(assert (= (and d!573808 (not c!306071)) b!1877684))

(declare-fun m!2304595 () Bool)

(assert (=> b!1877683 m!2304595))

(assert (=> b!1877683 m!2304595))

(declare-fun m!2304597 () Bool)

(assert (=> b!1877683 m!2304597))

(declare-fun m!2304599 () Bool)

(assert (=> b!1877683 m!2304599))

(assert (=> b!1877683 m!2304597))

(assert (=> b!1877683 m!2304599))

(declare-fun m!2304601 () Bool)

(assert (=> b!1877683 m!2304601))

(assert (=> b!1876544 d!573808))

(declare-fun d!573810 () Bool)

(assert (=> d!573810 (= ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84) separatorToken!84) (Cons!20917 separatorToken!84 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84)))))

(assert (=> b!1876544 d!573810))

(declare-fun d!573812 () Bool)

(declare-fun lt!721523 () List!20999)

(assert (=> d!573812 (= (printList!1012 thiss!13718 lt!721523) (printWithSeparatorTokenList!70 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84))))

(declare-fun e!1198325 () List!20999)

(assert (=> d!573812 (= lt!721523 e!1198325)))

(declare-fun c!306074 () Bool)

(assert (=> d!573812 (= c!306074 ((_ is Cons!20917) (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))))))

(declare-fun e!1198329 () Bool)

(assert (=> d!573812 e!1198329))

(declare-fun res!839431 () Bool)

(assert (=> d!573812 (=> (not res!839431) (not e!1198329))))

(assert (=> d!573812 (= res!839431 (isSeparator!3710 (rule!5903 separatorToken!84)))))

(assert (=> d!573812 (= (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84) lt!721523)))

(declare-fun b!1877685 () Bool)

(declare-fun e!1198327 () List!20998)

(declare-fun lt!721522 () List!20999)

(assert (=> b!1877685 (= e!1198327 (++!5686 (list!8535 (charsOf!2302 (h!26318 lt!721522))) (printList!1012 thiss!13718 (t!173228 lt!721522))))))

(declare-fun b!1877686 () Bool)

(assert (=> b!1877686 (= e!1198325 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))) separatorToken!84) separatorToken!84) (h!26318 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))))

(declare-fun lt!721525 () List!20998)

(assert (=> b!1877686 (= lt!721525 (list!8535 (charsOf!2302 (h!26318 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))))))))

(declare-fun lt!721519 () List!20998)

(assert (=> b!1877686 (= lt!721519 (list!8535 (charsOf!2302 separatorToken!84)))))

(declare-fun lt!721520 () List!20998)

(assert (=> b!1877686 (= lt!721520 (printList!1012 thiss!13718 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))) separatorToken!84)))))

(declare-fun lt!721524 () Unit!35442)

(assert (=> b!1877686 (= lt!721524 (lemmaConcatAssociativity!1125 lt!721525 lt!721519 lt!721520))))

(assert (=> b!1877686 (= (++!5686 (++!5686 lt!721525 lt!721519) lt!721520) (++!5686 lt!721525 (++!5686 lt!721519 lt!721520)))))

(declare-fun lt!721521 () Unit!35442)

(assert (=> b!1877686 (= lt!721521 lt!721524)))

(declare-fun b!1877687 () Bool)

(declare-fun e!1198328 () List!20998)

(assert (=> b!1877687 (= e!1198328 Nil!20916)))

(declare-fun e!1198330 () Bool)

(declare-fun b!1877688 () Bool)

(assert (=> b!1877688 (= e!1198330 (= (printList!1012 thiss!13718 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))) separatorToken!84) separatorToken!84) (h!26318 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))))) e!1198328))))

(declare-fun c!306073 () Bool)

(declare-fun lt!721518 () List!20999)

(assert (=> b!1877688 (= c!306073 ((_ is Cons!20917) lt!721518))))

(assert (=> b!1877688 (= lt!721518 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))) separatorToken!84) separatorToken!84) (h!26318 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))))

(declare-fun b!1877689 () Bool)

(assert (=> b!1877689 (= e!1198328 (++!5686 (list!8535 (charsOf!2302 (h!26318 lt!721518))) (printList!1012 thiss!13718 (t!173228 lt!721518))))))

(declare-fun b!1877690 () Bool)

(assert (=> b!1877690 (= e!1198327 Nil!20916)))

(declare-fun b!1877691 () Bool)

(declare-fun res!839430 () Bool)

(assert (=> b!1877691 (=> (not res!839430) (not e!1198329))))

(assert (=> b!1877691 (= res!839430 e!1198330)))

(declare-fun res!839432 () Bool)

(assert (=> b!1877691 (=> res!839432 e!1198330)))

(assert (=> b!1877691 (= res!839432 (not ((_ is Cons!20917) (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))))

(declare-fun b!1877692 () Bool)

(declare-fun e!1198326 () Bool)

(assert (=> b!1877692 (= e!1198329 e!1198326)))

(declare-fun res!839429 () Bool)

(assert (=> b!1877692 (=> res!839429 e!1198326)))

(assert (=> b!1877692 (= res!839429 (not ((_ is Cons!20917) (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))))

(declare-fun b!1877693 () Bool)

(assert (=> b!1877693 (= e!1198325 Nil!20917)))

(declare-fun b!1877694 () Bool)

(assert (=> b!1877694 (= e!1198326 (= (printList!1012 thiss!13718 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))) separatorToken!84) separatorToken!84)) e!1198327))))

(declare-fun c!306072 () Bool)

(assert (=> b!1877694 (= c!306072 ((_ is Cons!20917) lt!721522))))

(assert (=> b!1877694 (= lt!721522 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))) separatorToken!84) separatorToken!84))))

(assert (= (and d!573812 res!839431) b!1877691))

(assert (= (and b!1877691 (not res!839432)) b!1877688))

(assert (= (and b!1877688 c!306073) b!1877689))

(assert (= (and b!1877688 (not c!306073)) b!1877687))

(assert (= (and b!1877691 res!839430) b!1877692))

(assert (= (and b!1877692 (not res!839429)) b!1877694))

(assert (= (and b!1877694 c!306072) b!1877685))

(assert (= (and b!1877694 (not c!306072)) b!1877690))

(assert (= (and d!573812 c!306074) b!1877686))

(assert (= (and d!573812 (not c!306074)) b!1877693))

(declare-fun m!2304603 () Bool)

(assert (=> b!1877686 m!2304603))

(declare-fun m!2304605 () Bool)

(assert (=> b!1877686 m!2304605))

(assert (=> b!1877686 m!2302515))

(declare-fun m!2304607 () Bool)

(assert (=> b!1877686 m!2304607))

(assert (=> b!1877686 m!2304603))

(declare-fun m!2304609 () Bool)

(assert (=> b!1877686 m!2304609))

(assert (=> b!1877686 m!2304605))

(declare-fun m!2304611 () Bool)

(assert (=> b!1877686 m!2304611))

(assert (=> b!1877686 m!2304611))

(declare-fun m!2304613 () Bool)

(assert (=> b!1877686 m!2304613))

(declare-fun m!2304615 () Bool)

(assert (=> b!1877686 m!2304615))

(declare-fun m!2304617 () Bool)

(assert (=> b!1877686 m!2304617))

(declare-fun m!2304619 () Bool)

(assert (=> b!1877686 m!2304619))

(declare-fun m!2304621 () Bool)

(assert (=> b!1877686 m!2304621))

(assert (=> b!1877686 m!2304605))

(declare-fun m!2304623 () Bool)

(assert (=> b!1877686 m!2304623))

(assert (=> b!1877686 m!2302515))

(assert (=> b!1877686 m!2302535))

(assert (=> b!1877686 m!2304619))

(assert (=> b!1877686 m!2304615))

(assert (=> b!1877688 m!2304605))

(assert (=> b!1877688 m!2304605))

(assert (=> b!1877688 m!2304611))

(assert (=> b!1877688 m!2304611))

(assert (=> b!1877688 m!2304613))

(assert (=> b!1877688 m!2304613))

(declare-fun m!2304625 () Bool)

(assert (=> b!1877688 m!2304625))

(assert (=> b!1877694 m!2304605))

(assert (=> b!1877694 m!2304605))

(assert (=> b!1877694 m!2304611))

(assert (=> b!1877694 m!2304611))

(declare-fun m!2304627 () Bool)

(assert (=> b!1877694 m!2304627))

(declare-fun m!2304629 () Bool)

(assert (=> b!1877685 m!2304629))

(assert (=> b!1877685 m!2304629))

(declare-fun m!2304631 () Bool)

(assert (=> b!1877685 m!2304631))

(declare-fun m!2304633 () Bool)

(assert (=> b!1877685 m!2304633))

(assert (=> b!1877685 m!2304631))

(assert (=> b!1877685 m!2304633))

(declare-fun m!2304635 () Bool)

(assert (=> b!1877685 m!2304635))

(declare-fun m!2304637 () Bool)

(assert (=> d!573812 m!2304637))

(declare-fun m!2304639 () Bool)

(assert (=> d!573812 m!2304639))

(declare-fun m!2304641 () Bool)

(assert (=> b!1877689 m!2304641))

(assert (=> b!1877689 m!2304641))

(declare-fun m!2304643 () Bool)

(assert (=> b!1877689 m!2304643))

(declare-fun m!2304645 () Bool)

(assert (=> b!1877689 m!2304645))

(assert (=> b!1877689 m!2304643))

(assert (=> b!1877689 m!2304645))

(declare-fun m!2304647 () Bool)

(assert (=> b!1877689 m!2304647))

(assert (=> b!1876544 d!573812))

(declare-fun d!573814 () Bool)

(assert (=> d!573814 (= (height!1087 (left!16811 (c!305736 acc!408))) (ite ((_ is Empty!6950) (left!16811 (c!305736 acc!408))) 0 (ite ((_ is Leaf!10226) (left!16811 (c!305736 acc!408))) 1 (cheight!7161 (left!16811 (c!305736 acc!408))))))))

(assert (=> b!1876900 d!573814))

(declare-fun d!573816 () Bool)

(assert (=> d!573816 (= (height!1087 (right!17141 (c!305736 acc!408))) (ite ((_ is Empty!6950) (right!17141 (c!305736 acc!408))) 0 (ite ((_ is Leaf!10226) (right!17141 (c!305736 acc!408))) 1 (cheight!7161 (right!17141 (c!305736 acc!408))))))))

(assert (=> b!1876900 d!573816))

(declare-fun lt!721526 () List!20998)

(declare-fun e!1198332 () Bool)

(declare-fun b!1877698 () Bool)

(assert (=> b!1877698 (= e!1198332 (or (not (= lt!721333 Nil!20916)) (= lt!721526 (t!173227 (++!5686 lt!721338 lt!721332)))))))

(declare-fun d!573818 () Bool)

(assert (=> d!573818 e!1198332))

(declare-fun res!839434 () Bool)

(assert (=> d!573818 (=> (not res!839434) (not e!1198332))))

(assert (=> d!573818 (= res!839434 (= (content!3113 lt!721526) ((_ map or) (content!3113 (t!173227 (++!5686 lt!721338 lt!721332))) (content!3113 lt!721333))))))

(declare-fun e!1198331 () List!20998)

(assert (=> d!573818 (= lt!721526 e!1198331)))

(declare-fun c!306075 () Bool)

(assert (=> d!573818 (= c!306075 ((_ is Nil!20916) (t!173227 (++!5686 lt!721338 lt!721332))))))

(assert (=> d!573818 (= (++!5686 (t!173227 (++!5686 lt!721338 lt!721332)) lt!721333) lt!721526)))

(declare-fun b!1877696 () Bool)

(assert (=> b!1877696 (= e!1198331 (Cons!20916 (h!26317 (t!173227 (++!5686 lt!721338 lt!721332))) (++!5686 (t!173227 (t!173227 (++!5686 lt!721338 lt!721332))) lt!721333)))))

(declare-fun b!1877695 () Bool)

(assert (=> b!1877695 (= e!1198331 lt!721333)))

(declare-fun b!1877697 () Bool)

(declare-fun res!839433 () Bool)

(assert (=> b!1877697 (=> (not res!839433) (not e!1198332))))

(assert (=> b!1877697 (= res!839433 (= (size!16598 lt!721526) (+ (size!16598 (t!173227 (++!5686 lt!721338 lt!721332))) (size!16598 lt!721333))))))

(assert (= (and d!573818 c!306075) b!1877695))

(assert (= (and d!573818 (not c!306075)) b!1877696))

(assert (= (and d!573818 res!839434) b!1877697))

(assert (= (and b!1877697 res!839433) b!1877698))

(declare-fun m!2304649 () Bool)

(assert (=> d!573818 m!2304649))

(declare-fun m!2304651 () Bool)

(assert (=> d!573818 m!2304651))

(assert (=> d!573818 m!2302689))

(declare-fun m!2304653 () Bool)

(assert (=> b!1877696 m!2304653))

(declare-fun m!2304655 () Bool)

(assert (=> b!1877697 m!2304655))

(declare-fun m!2304657 () Bool)

(assert (=> b!1877697 m!2304657))

(assert (=> b!1877697 m!2302697))

(assert (=> b!1876532 d!573818))

(declare-fun lt!721527 () List!20998)

(declare-fun e!1198334 () Bool)

(declare-fun b!1877702 () Bool)

(assert (=> b!1877702 (= e!1198334 (or (not (= lt!721332 Nil!20916)) (= lt!721527 (t!173227 lt!721338))))))

(declare-fun d!573820 () Bool)

(assert (=> d!573820 e!1198334))

(declare-fun res!839436 () Bool)

(assert (=> d!573820 (=> (not res!839436) (not e!1198334))))

(assert (=> d!573820 (= res!839436 (= (content!3113 lt!721527) ((_ map or) (content!3113 (t!173227 lt!721338)) (content!3113 lt!721332))))))

(declare-fun e!1198333 () List!20998)

(assert (=> d!573820 (= lt!721527 e!1198333)))

(declare-fun c!306076 () Bool)

(assert (=> d!573820 (= c!306076 ((_ is Nil!20916) (t!173227 lt!721338)))))

(assert (=> d!573820 (= (++!5686 (t!173227 lt!721338) lt!721332) lt!721527)))

(declare-fun b!1877700 () Bool)

(assert (=> b!1877700 (= e!1198333 (Cons!20916 (h!26317 (t!173227 lt!721338)) (++!5686 (t!173227 (t!173227 lt!721338)) lt!721332)))))

(declare-fun b!1877699 () Bool)

(assert (=> b!1877699 (= e!1198333 lt!721332)))

(declare-fun b!1877701 () Bool)

(declare-fun res!839435 () Bool)

(assert (=> b!1877701 (=> (not res!839435) (not e!1198334))))

(assert (=> b!1877701 (= res!839435 (= (size!16598 lt!721527) (+ (size!16598 (t!173227 lt!721338)) (size!16598 lt!721332))))))

(assert (= (and d!573820 c!306076) b!1877699))

(assert (= (and d!573820 (not c!306076)) b!1877700))

(assert (= (and d!573820 res!839436) b!1877701))

(assert (= (and b!1877701 res!839435) b!1877702))

(declare-fun m!2304659 () Bool)

(assert (=> d!573820 m!2304659))

(declare-fun m!2304661 () Bool)

(assert (=> d!573820 m!2304661))

(assert (=> d!573820 m!2302673))

(declare-fun m!2304663 () Bool)

(assert (=> b!1877700 m!2304663))

(declare-fun m!2304665 () Bool)

(assert (=> b!1877701 m!2304665))

(declare-fun m!2304667 () Bool)

(assert (=> b!1877701 m!2304667))

(assert (=> b!1877701 m!2302681))

(assert (=> b!1876528 d!573820))

(declare-fun d!573822 () Bool)

(declare-fun lt!721530 () Bool)

(declare-fun isEmpty!12979 (List!20999) Bool)

(assert (=> d!573822 (= lt!721530 (isEmpty!12979 (list!8536 (left!16811 (c!305736 v!6352)))))))

(assert (=> d!573822 (= lt!721530 (= (size!16602 (left!16811 (c!305736 v!6352))) 0))))

(assert (=> d!573822 (= (isEmpty!12976 (left!16811 (c!305736 v!6352))) lt!721530)))

(declare-fun bs!412299 () Bool)

(assert (= bs!412299 d!573822))

(assert (=> bs!412299 m!2303223))

(assert (=> bs!412299 m!2303223))

(declare-fun m!2304669 () Bool)

(assert (=> bs!412299 m!2304669))

(assert (=> bs!412299 m!2303339))

(assert (=> b!1876927 d!573822))

(declare-fun d!573824 () Bool)

(declare-fun c!306079 () Bool)

(assert (=> d!573824 (= c!306079 ((_ is Nil!20915) (text!27371 (value!117200 separatorToken!84))))))

(declare-fun e!1198337 () Int)

(assert (=> d!573824 (= (charsToBigInt!0 (text!27371 (value!117200 separatorToken!84)) 0) e!1198337)))

(declare-fun b!1877707 () Bool)

(assert (=> b!1877707 (= e!1198337 0)))

(declare-fun b!1877708 () Bool)

(declare-fun charToBigInt!0 ((_ BitVec 16)) Int)

(assert (=> b!1877708 (= e!1198337 (charsToBigInt!0 (t!173226 (text!27371 (value!117200 separatorToken!84))) (+ (* 0 10) (charToBigInt!0 (h!26316 (text!27371 (value!117200 separatorToken!84)))))))))

(assert (= (and d!573824 c!306079) b!1877707))

(assert (= (and d!573824 (not c!306079)) b!1877708))

(declare-fun m!2304671 () Bool)

(assert (=> b!1877708 m!2304671))

(declare-fun m!2304673 () Bool)

(assert (=> b!1877708 m!2304673))

(assert (=> d!573334 d!573824))

(declare-fun b!1877711 () Bool)

(declare-fun res!839437 () Bool)

(declare-fun e!1198338 () Bool)

(assert (=> b!1877711 (=> (not res!839437) (not e!1198338))))

(declare-fun lt!721531 () List!20999)

(assert (=> b!1877711 (= res!839437 (= (size!16601 lt!721531) (+ (size!16601 (list!8536 (left!16811 (c!305736 acc!408)))) (size!16601 (list!8536 (right!17141 (c!305736 acc!408)))))))))

(declare-fun b!1877709 () Bool)

(declare-fun e!1198339 () List!20999)

(assert (=> b!1877709 (= e!1198339 (list!8536 (right!17141 (c!305736 acc!408))))))

(declare-fun d!573826 () Bool)

(assert (=> d!573826 e!1198338))

(declare-fun res!839438 () Bool)

(assert (=> d!573826 (=> (not res!839438) (not e!1198338))))

(assert (=> d!573826 (= res!839438 (= (content!3111 lt!721531) ((_ map or) (content!3111 (list!8536 (left!16811 (c!305736 acc!408)))) (content!3111 (list!8536 (right!17141 (c!305736 acc!408)))))))))

(assert (=> d!573826 (= lt!721531 e!1198339)))

(declare-fun c!306080 () Bool)

(assert (=> d!573826 (= c!306080 ((_ is Nil!20917) (list!8536 (left!16811 (c!305736 acc!408)))))))

(assert (=> d!573826 (= (++!5684 (list!8536 (left!16811 (c!305736 acc!408))) (list!8536 (right!17141 (c!305736 acc!408)))) lt!721531)))

(declare-fun b!1877710 () Bool)

(assert (=> b!1877710 (= e!1198339 (Cons!20917 (h!26318 (list!8536 (left!16811 (c!305736 acc!408)))) (++!5684 (t!173228 (list!8536 (left!16811 (c!305736 acc!408)))) (list!8536 (right!17141 (c!305736 acc!408))))))))

(declare-fun b!1877712 () Bool)

(assert (=> b!1877712 (= e!1198338 (or (not (= (list!8536 (right!17141 (c!305736 acc!408))) Nil!20917)) (= lt!721531 (list!8536 (left!16811 (c!305736 acc!408))))))))

(assert (= (and d!573826 c!306080) b!1877709))

(assert (= (and d!573826 (not c!306080)) b!1877710))

(assert (= (and d!573826 res!839438) b!1877711))

(assert (= (and b!1877711 res!839437) b!1877712))

(declare-fun m!2304675 () Bool)

(assert (=> b!1877711 m!2304675))

(assert (=> b!1877711 m!2303303))

(declare-fun m!2304677 () Bool)

(assert (=> b!1877711 m!2304677))

(assert (=> b!1877711 m!2303305))

(declare-fun m!2304679 () Bool)

(assert (=> b!1877711 m!2304679))

(declare-fun m!2304681 () Bool)

(assert (=> d!573826 m!2304681))

(assert (=> d!573826 m!2303303))

(declare-fun m!2304683 () Bool)

(assert (=> d!573826 m!2304683))

(assert (=> d!573826 m!2303305))

(declare-fun m!2304685 () Bool)

(assert (=> d!573826 m!2304685))

(assert (=> b!1877710 m!2303305))

(declare-fun m!2304687 () Bool)

(assert (=> b!1877710 m!2304687))

(assert (=> b!1876924 d!573826))

(declare-fun d!573828 () Bool)

(declare-fun c!306081 () Bool)

(assert (=> d!573828 (= c!306081 ((_ is Empty!6950) (left!16811 (c!305736 acc!408))))))

(declare-fun e!1198340 () List!20999)

(assert (=> d!573828 (= (list!8536 (left!16811 (c!305736 acc!408))) e!1198340)))

(declare-fun b!1877716 () Bool)

(declare-fun e!1198341 () List!20999)

(assert (=> b!1877716 (= e!1198341 (++!5684 (list!8536 (left!16811 (left!16811 (c!305736 acc!408)))) (list!8536 (right!17141 (left!16811 (c!305736 acc!408))))))))

(declare-fun b!1877713 () Bool)

(assert (=> b!1877713 (= e!1198340 Nil!20917)))

(declare-fun b!1877715 () Bool)

(assert (=> b!1877715 (= e!1198341 (list!8540 (xs!9834 (left!16811 (c!305736 acc!408)))))))

(declare-fun b!1877714 () Bool)

(assert (=> b!1877714 (= e!1198340 e!1198341)))

(declare-fun c!306082 () Bool)

(assert (=> b!1877714 (= c!306082 ((_ is Leaf!10226) (left!16811 (c!305736 acc!408))))))

(assert (= (and d!573828 c!306081) b!1877713))

(assert (= (and d!573828 (not c!306081)) b!1877714))

(assert (= (and b!1877714 c!306082) b!1877715))

(assert (= (and b!1877714 (not c!306082)) b!1877716))

(declare-fun m!2304689 () Bool)

(assert (=> b!1877716 m!2304689))

(declare-fun m!2304691 () Bool)

(assert (=> b!1877716 m!2304691))

(assert (=> b!1877716 m!2304689))

(assert (=> b!1877716 m!2304691))

(declare-fun m!2304693 () Bool)

(assert (=> b!1877716 m!2304693))

(declare-fun m!2304695 () Bool)

(assert (=> b!1877715 m!2304695))

(assert (=> b!1876924 d!573828))

(declare-fun d!573830 () Bool)

(declare-fun c!306083 () Bool)

(assert (=> d!573830 (= c!306083 ((_ is Empty!6950) (right!17141 (c!305736 acc!408))))))

(declare-fun e!1198342 () List!20999)

(assert (=> d!573830 (= (list!8536 (right!17141 (c!305736 acc!408))) e!1198342)))

(declare-fun b!1877720 () Bool)

(declare-fun e!1198343 () List!20999)

(assert (=> b!1877720 (= e!1198343 (++!5684 (list!8536 (left!16811 (right!17141 (c!305736 acc!408)))) (list!8536 (right!17141 (right!17141 (c!305736 acc!408))))))))

(declare-fun b!1877717 () Bool)

(assert (=> b!1877717 (= e!1198342 Nil!20917)))

(declare-fun b!1877719 () Bool)

(assert (=> b!1877719 (= e!1198343 (list!8540 (xs!9834 (right!17141 (c!305736 acc!408)))))))

(declare-fun b!1877718 () Bool)

(assert (=> b!1877718 (= e!1198342 e!1198343)))

(declare-fun c!306084 () Bool)

(assert (=> b!1877718 (= c!306084 ((_ is Leaf!10226) (right!17141 (c!305736 acc!408))))))

(assert (= (and d!573830 c!306083) b!1877717))

(assert (= (and d!573830 (not c!306083)) b!1877718))

(assert (= (and b!1877718 c!306084) b!1877719))

(assert (= (and b!1877718 (not c!306084)) b!1877720))

(declare-fun m!2304697 () Bool)

(assert (=> b!1877720 m!2304697))

(declare-fun m!2304699 () Bool)

(assert (=> b!1877720 m!2304699))

(assert (=> b!1877720 m!2304697))

(assert (=> b!1877720 m!2304699))

(declare-fun m!2304701 () Bool)

(assert (=> b!1877720 m!2304701))

(declare-fun m!2304703 () Bool)

(assert (=> b!1877719 m!2304703))

(assert (=> b!1876924 d!573830))

(declare-fun d!573832 () Bool)

(declare-fun choose!644 (List!20997) Int)

(assert (=> d!573832 (= (charsToBigInt!1 (text!27370 (value!117200 separatorToken!84))) (choose!644 (text!27370 (value!117200 separatorToken!84))))))

(declare-fun bs!412300 () Bool)

(assert (= bs!412300 d!573832))

(declare-fun m!2304705 () Bool)

(assert (=> bs!412300 m!2304705))

(assert (=> d!573180 d!573832))

(declare-fun b!1877730 () Bool)

(declare-fun e!1198348 () List!20998)

(declare-fun e!1198349 () List!20998)

(assert (=> b!1877730 (= e!1198348 e!1198349)))

(declare-fun c!306090 () Bool)

(assert (=> b!1877730 (= c!306090 ((_ is Leaf!10225) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))))

(declare-fun d!573834 () Bool)

(declare-fun c!306089 () Bool)

(assert (=> d!573834 (= c!306089 ((_ is Empty!6949) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))))

(assert (=> d!573834 (= (list!8539 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))) e!1198348)))

(declare-fun b!1877729 () Bool)

(assert (=> b!1877729 (= e!1198348 Nil!20916)))

(declare-fun b!1877732 () Bool)

(assert (=> b!1877732 (= e!1198349 (++!5686 (list!8539 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))) (list!8539 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))))))

(declare-fun b!1877731 () Bool)

(declare-fun list!8542 (IArray!13903) List!20998)

(assert (=> b!1877731 (= e!1198349 (list!8542 (xs!9833 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))))))

(assert (= (and d!573834 c!306089) b!1877729))

(assert (= (and d!573834 (not c!306089)) b!1877730))

(assert (= (and b!1877730 c!306090) b!1877731))

(assert (= (and b!1877730 (not c!306090)) b!1877732))

(declare-fun m!2304707 () Bool)

(assert (=> b!1877732 m!2304707))

(declare-fun m!2304709 () Bool)

(assert (=> b!1877732 m!2304709))

(assert (=> b!1877732 m!2304707))

(assert (=> b!1877732 m!2304709))

(declare-fun m!2304711 () Bool)

(assert (=> b!1877732 m!2304711))

(declare-fun m!2304713 () Bool)

(assert (=> b!1877731 m!2304713))

(assert (=> d!573368 d!573834))

(declare-fun d!573836 () Bool)

(assert (=> d!573836 (= (max!0 (height!1087 (left!16811 (c!305736 acc!408))) (height!1087 (right!17141 (c!305736 acc!408)))) (ite (< (height!1087 (left!16811 (c!305736 acc!408))) (height!1087 (right!17141 (c!305736 acc!408)))) (height!1087 (right!17141 (c!305736 acc!408))) (height!1087 (left!16811 (c!305736 acc!408)))))))

(assert (=> b!1876875 d!573836))

(assert (=> b!1876875 d!573814))

(assert (=> b!1876875 d!573816))

(declare-fun d!573838 () Bool)

(declare-fun res!839439 () Bool)

(declare-fun e!1198350 () Bool)

(assert (=> d!573838 (=> (not res!839439) (not e!1198350))))

(assert (=> d!573838 (= res!839439 (= (csize!14130 (left!16811 (c!305736 acc!408))) (+ (size!16602 (left!16811 (left!16811 (c!305736 acc!408)))) (size!16602 (right!17141 (left!16811 (c!305736 acc!408)))))))))

(assert (=> d!573838 (= (inv!27826 (left!16811 (c!305736 acc!408))) e!1198350)))

(declare-fun b!1877733 () Bool)

(declare-fun res!839440 () Bool)

(assert (=> b!1877733 (=> (not res!839440) (not e!1198350))))

(assert (=> b!1877733 (= res!839440 (and (not (= (left!16811 (left!16811 (c!305736 acc!408))) Empty!6950)) (not (= (right!17141 (left!16811 (c!305736 acc!408))) Empty!6950))))))

(declare-fun b!1877734 () Bool)

(declare-fun res!839441 () Bool)

(assert (=> b!1877734 (=> (not res!839441) (not e!1198350))))

(assert (=> b!1877734 (= res!839441 (= (cheight!7161 (left!16811 (c!305736 acc!408))) (+ (max!0 (height!1087 (left!16811 (left!16811 (c!305736 acc!408)))) (height!1087 (right!17141 (left!16811 (c!305736 acc!408))))) 1)))))

(declare-fun b!1877735 () Bool)

(assert (=> b!1877735 (= e!1198350 (<= 0 (cheight!7161 (left!16811 (c!305736 acc!408)))))))

(assert (= (and d!573838 res!839439) b!1877733))

(assert (= (and b!1877733 res!839440) b!1877734))

(assert (= (and b!1877734 res!839441) b!1877735))

(declare-fun m!2304715 () Bool)

(assert (=> d!573838 m!2304715))

(declare-fun m!2304717 () Bool)

(assert (=> d!573838 m!2304717))

(declare-fun m!2304719 () Bool)

(assert (=> b!1877734 m!2304719))

(declare-fun m!2304721 () Bool)

(assert (=> b!1877734 m!2304721))

(assert (=> b!1877734 m!2304719))

(assert (=> b!1877734 m!2304721))

(declare-fun m!2304723 () Bool)

(assert (=> b!1877734 m!2304723))

(assert (=> b!1876553 d!573838))

(assert (=> d!573156 d!573160))

(assert (=> d!573156 d!573168))

(declare-fun d!573840 () Bool)

(assert (=> d!573840 (= (++!5686 (++!5686 lt!721338 lt!721332) lt!721333) (++!5686 lt!721338 (++!5686 lt!721332 lt!721333)))))

(assert (=> d!573840 true))

(declare-fun _$52!1144 () Unit!35442)

(assert (=> d!573840 (= (choose!11782 lt!721338 lt!721332 lt!721333) _$52!1144)))

(declare-fun bs!412301 () Bool)

(assert (= bs!412301 d!573840))

(assert (=> bs!412301 m!2302525))

(assert (=> bs!412301 m!2302525))

(assert (=> bs!412301 m!2302527))

(assert (=> bs!412301 m!2302529))

(assert (=> bs!412301 m!2302529))

(assert (=> bs!412301 m!2302531))

(assert (=> d!573156 d!573840))

(assert (=> d!573156 d!573176))

(assert (=> d!573156 d!573178))

(declare-fun d!573842 () Bool)

(declare-fun lt!721532 () Bool)

(assert (=> d!573842 (= lt!721532 (isEmpty!12979 (list!8536 (right!17141 (c!305736 acc!408)))))))

(assert (=> d!573842 (= lt!721532 (= (size!16602 (right!17141 (c!305736 acc!408))) 0))))

(assert (=> d!573842 (= (isEmpty!12976 (right!17141 (c!305736 acc!408))) lt!721532)))

(declare-fun bs!412302 () Bool)

(assert (= bs!412302 d!573842))

(assert (=> bs!412302 m!2303305))

(assert (=> bs!412302 m!2303305))

(declare-fun m!2304725 () Bool)

(assert (=> bs!412302 m!2304725))

(assert (=> bs!412302 m!2303243))

(assert (=> b!1876904 d!573842))

(declare-fun d!573844 () Bool)

(declare-fun res!839442 () Bool)

(declare-fun e!1198351 () Bool)

(assert (=> d!573844 (=> (not res!839442) (not e!1198351))))

(assert (=> d!573844 (= res!839442 (<= (size!16601 (list!8540 (xs!9834 (left!16811 (c!305736 v!6352))))) 512))))

(assert (=> d!573844 (= (inv!27827 (left!16811 (c!305736 v!6352))) e!1198351)))

(declare-fun b!1877736 () Bool)

(declare-fun res!839443 () Bool)

(assert (=> b!1877736 (=> (not res!839443) (not e!1198351))))

(assert (=> b!1877736 (= res!839443 (= (csize!14131 (left!16811 (c!305736 v!6352))) (size!16601 (list!8540 (xs!9834 (left!16811 (c!305736 v!6352)))))))))

(declare-fun b!1877737 () Bool)

(assert (=> b!1877737 (= e!1198351 (and (> (csize!14131 (left!16811 (c!305736 v!6352))) 0) (<= (csize!14131 (left!16811 (c!305736 v!6352))) 512)))))

(assert (= (and d!573844 res!839442) b!1877736))

(assert (= (and b!1877736 res!839443) b!1877737))

(declare-fun m!2304727 () Bool)

(assert (=> d!573844 m!2304727))

(assert (=> d!573844 m!2304727))

(declare-fun m!2304729 () Bool)

(assert (=> d!573844 m!2304729))

(assert (=> b!1877736 m!2304727))

(assert (=> b!1877736 m!2304727))

(assert (=> b!1877736 m!2304729))

(assert (=> b!1876960 d!573844))

(declare-fun d!573846 () Bool)

(declare-fun res!839444 () Bool)

(declare-fun e!1198352 () Bool)

(assert (=> d!573846 (=> (not res!839444) (not e!1198352))))

(assert (=> d!573846 (= res!839444 (<= (size!16601 (list!8540 (xs!9834 (right!17141 (c!305736 acc!408))))) 512))))

(assert (=> d!573846 (= (inv!27827 (right!17141 (c!305736 acc!408))) e!1198352)))

(declare-fun b!1877738 () Bool)

(declare-fun res!839445 () Bool)

(assert (=> b!1877738 (=> (not res!839445) (not e!1198352))))

(assert (=> b!1877738 (= res!839445 (= (csize!14131 (right!17141 (c!305736 acc!408))) (size!16601 (list!8540 (xs!9834 (right!17141 (c!305736 acc!408)))))))))

(declare-fun b!1877739 () Bool)

(assert (=> b!1877739 (= e!1198352 (and (> (csize!14131 (right!17141 (c!305736 acc!408))) 0) (<= (csize!14131 (right!17141 (c!305736 acc!408))) 512)))))

(assert (= (and d!573846 res!839444) b!1877738))

(assert (= (and b!1877738 res!839445) b!1877739))

(assert (=> d!573846 m!2304703))

(assert (=> d!573846 m!2304703))

(declare-fun m!2304731 () Bool)

(assert (=> d!573846 m!2304731))

(assert (=> b!1877738 m!2304703))

(assert (=> b!1877738 m!2304703))

(assert (=> b!1877738 m!2304731))

(assert (=> b!1876558 d!573846))

(assert (=> b!1876487 d!573182))

(assert (=> b!1876487 d!573184))

(declare-fun d!573848 () Bool)

(declare-fun c!306091 () Bool)

(assert (=> d!573848 (= c!306091 ((_ is Cons!20917) lt!721370))))

(declare-fun e!1198353 () List!20998)

(assert (=> d!573848 (= (printList!1012 thiss!13718 lt!721370) e!1198353)))

(declare-fun b!1877740 () Bool)

(assert (=> b!1877740 (= e!1198353 (++!5686 (list!8535 (charsOf!2302 (h!26318 lt!721370))) (printList!1012 thiss!13718 (t!173228 lt!721370))))))

(declare-fun b!1877741 () Bool)

(assert (=> b!1877741 (= e!1198353 Nil!20916)))

(assert (= (and d!573848 c!306091) b!1877740))

(assert (= (and d!573848 (not c!306091)) b!1877741))

(declare-fun m!2304733 () Bool)

(assert (=> b!1877740 m!2304733))

(assert (=> b!1877740 m!2304733))

(declare-fun m!2304735 () Bool)

(assert (=> b!1877740 m!2304735))

(declare-fun m!2304737 () Bool)

(assert (=> b!1877740 m!2304737))

(assert (=> b!1877740 m!2304735))

(assert (=> b!1877740 m!2304737))

(declare-fun m!2304739 () Bool)

(assert (=> b!1877740 m!2304739))

(assert (=> d!573174 d!573848))

(declare-fun d!573850 () Bool)

(declare-fun c!306092 () Bool)

(assert (=> d!573850 (= c!306092 ((_ is Cons!20917) (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))

(declare-fun e!1198354 () List!20998)

(assert (=> d!573850 (= (printWithSeparatorTokenList!70 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) e!1198354)))

(declare-fun b!1877742 () Bool)

(assert (=> b!1877742 (= e!1198354 (++!5686 (++!5686 (list!8535 (charsOf!2302 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))) (list!8535 (charsOf!2302 separatorToken!84))) (printWithSeparatorTokenList!70 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84)))))

(declare-fun b!1877743 () Bool)

(assert (=> b!1877743 (= e!1198354 Nil!20916)))

(assert (= (and d!573850 c!306092) b!1877742))

(assert (= (and d!573850 (not c!306092)) b!1877743))

(assert (=> b!1877742 m!2302515))

(assert (=> b!1877742 m!2302535))

(assert (=> b!1877742 m!2304639))

(assert (=> b!1877742 m!2302703))

(assert (=> b!1877742 m!2302515))

(assert (=> b!1877742 m!2302709))

(assert (=> b!1877742 m!2302535))

(declare-fun m!2304741 () Bool)

(assert (=> b!1877742 m!2304741))

(assert (=> b!1877742 m!2304741))

(assert (=> b!1877742 m!2304639))

(declare-fun m!2304743 () Bool)

(assert (=> b!1877742 m!2304743))

(assert (=> b!1877742 m!2302703))

(assert (=> b!1877742 m!2302709))

(assert (=> d!573174 d!573850))

(declare-fun b!1877745 () Bool)

(declare-fun e!1198355 () List!20998)

(declare-fun e!1198356 () List!20998)

(assert (=> b!1877745 (= e!1198355 e!1198356)))

(declare-fun c!306094 () Bool)

(assert (=> b!1877745 (= c!306094 ((_ is Leaf!10225) (c!305735 (charsOf!2302 (h!26318 lt!721331)))))))

(declare-fun d!573852 () Bool)

(declare-fun c!306093 () Bool)

(assert (=> d!573852 (= c!306093 ((_ is Empty!6949) (c!305735 (charsOf!2302 (h!26318 lt!721331)))))))

(assert (=> d!573852 (= (list!8539 (c!305735 (charsOf!2302 (h!26318 lt!721331)))) e!1198355)))

(declare-fun b!1877744 () Bool)

(assert (=> b!1877744 (= e!1198355 Nil!20916)))

(declare-fun b!1877747 () Bool)

(assert (=> b!1877747 (= e!1198356 (++!5686 (list!8539 (left!16810 (c!305735 (charsOf!2302 (h!26318 lt!721331))))) (list!8539 (right!17140 (c!305735 (charsOf!2302 (h!26318 lt!721331)))))))))

(declare-fun b!1877746 () Bool)

(assert (=> b!1877746 (= e!1198356 (list!8542 (xs!9833 (c!305735 (charsOf!2302 (h!26318 lt!721331))))))))

(assert (= (and d!573852 c!306093) b!1877744))

(assert (= (and d!573852 (not c!306093)) b!1877745))

(assert (= (and b!1877745 c!306094) b!1877746))

(assert (= (and b!1877745 (not c!306094)) b!1877747))

(declare-fun m!2304745 () Bool)

(assert (=> b!1877747 m!2304745))

(declare-fun m!2304747 () Bool)

(assert (=> b!1877747 m!2304747))

(assert (=> b!1877747 m!2304745))

(assert (=> b!1877747 m!2304747))

(declare-fun m!2304749 () Bool)

(assert (=> b!1877747 m!2304749))

(declare-fun m!2304751 () Bool)

(assert (=> b!1877746 m!2304751))

(assert (=> d!573190 d!573852))

(declare-fun d!573854 () Bool)

(assert (=> d!573854 (= (max!0 (height!1087 (left!16811 (c!305736 v!6352))) (height!1087 (right!17141 (c!305736 v!6352)))) (ite (< (height!1087 (left!16811 (c!305736 v!6352))) (height!1087 (right!17141 (c!305736 v!6352)))) (height!1087 (right!17141 (c!305736 v!6352))) (height!1087 (left!16811 (c!305736 v!6352)))))))

(assert (=> b!1876940 d!573854))

(declare-fun d!573856 () Bool)

(assert (=> d!573856 (= (height!1087 (left!16811 (c!305736 v!6352))) (ite ((_ is Empty!6950) (left!16811 (c!305736 v!6352))) 0 (ite ((_ is Leaf!10226) (left!16811 (c!305736 v!6352))) 1 (cheight!7161 (left!16811 (c!305736 v!6352))))))))

(assert (=> b!1876940 d!573856))

(declare-fun d!573858 () Bool)

(assert (=> d!573858 (= (height!1087 (right!17141 (c!305736 v!6352))) (ite ((_ is Empty!6950) (right!17141 (c!305736 v!6352))) 0 (ite ((_ is Leaf!10226) (right!17141 (c!305736 v!6352))) 1 (cheight!7161 (right!17141 (c!305736 v!6352))))))))

(assert (=> b!1876940 d!573858))

(declare-fun lt!721533 () List!20998)

(declare-fun e!1198358 () Bool)

(declare-fun b!1877751 () Bool)

(assert (=> b!1877751 (= e!1198358 (or (not (= lt!721333 Nil!20916)) (= lt!721533 (t!173227 lt!721332))))))

(declare-fun d!573860 () Bool)

(assert (=> d!573860 e!1198358))

(declare-fun res!839447 () Bool)

(assert (=> d!573860 (=> (not res!839447) (not e!1198358))))

(assert (=> d!573860 (= res!839447 (= (content!3113 lt!721533) ((_ map or) (content!3113 (t!173227 lt!721332)) (content!3113 lt!721333))))))

(declare-fun e!1198357 () List!20998)

(assert (=> d!573860 (= lt!721533 e!1198357)))

(declare-fun c!306095 () Bool)

(assert (=> d!573860 (= c!306095 ((_ is Nil!20916) (t!173227 lt!721332)))))

(assert (=> d!573860 (= (++!5686 (t!173227 lt!721332) lt!721333) lt!721533)))

(declare-fun b!1877749 () Bool)

(assert (=> b!1877749 (= e!1198357 (Cons!20916 (h!26317 (t!173227 lt!721332)) (++!5686 (t!173227 (t!173227 lt!721332)) lt!721333)))))

(declare-fun b!1877748 () Bool)

(assert (=> b!1877748 (= e!1198357 lt!721333)))

(declare-fun b!1877750 () Bool)

(declare-fun res!839446 () Bool)

(assert (=> b!1877750 (=> (not res!839446) (not e!1198358))))

(assert (=> b!1877750 (= res!839446 (= (size!16598 lt!721533) (+ (size!16598 (t!173227 lt!721332)) (size!16598 lt!721333))))))

(assert (= (and d!573860 c!306095) b!1877748))

(assert (= (and d!573860 (not c!306095)) b!1877749))

(assert (= (and d!573860 res!839447) b!1877750))

(assert (= (and b!1877750 res!839446) b!1877751))

(declare-fun m!2304753 () Bool)

(assert (=> d!573860 m!2304753))

(declare-fun m!2304755 () Bool)

(assert (=> d!573860 m!2304755))

(assert (=> d!573860 m!2302689))

(declare-fun m!2304757 () Bool)

(assert (=> b!1877749 m!2304757))

(declare-fun m!2304759 () Bool)

(assert (=> b!1877750 m!2304759))

(declare-fun m!2304761 () Bool)

(assert (=> b!1877750 m!2304761))

(assert (=> b!1877750 m!2302697))

(assert (=> b!1876550 d!573860))

(declare-fun d!573862 () Bool)

(declare-fun lt!721534 () Int)

(assert (=> d!573862 (>= lt!721534 0)))

(declare-fun e!1198359 () Int)

(assert (=> d!573862 (= lt!721534 e!1198359)))

(declare-fun c!306096 () Bool)

(assert (=> d!573862 (= c!306096 ((_ is Nil!20916) lt!721373))))

(assert (=> d!573862 (= (size!16598 lt!721373) lt!721534)))

(declare-fun b!1877752 () Bool)

(assert (=> b!1877752 (= e!1198359 0)))

(declare-fun b!1877753 () Bool)

(assert (=> b!1877753 (= e!1198359 (+ 1 (size!16598 (t!173227 lt!721373))))))

(assert (= (and d!573862 c!306096) b!1877752))

(assert (= (and d!573862 (not c!306096)) b!1877753))

(declare-fun m!2304763 () Bool)

(assert (=> b!1877753 m!2304763))

(assert (=> b!1876547 d!573862))

(declare-fun d!573864 () Bool)

(declare-fun lt!721535 () Int)

(assert (=> d!573864 (>= lt!721535 0)))

(declare-fun e!1198360 () Int)

(assert (=> d!573864 (= lt!721535 e!1198360)))

(declare-fun c!306097 () Bool)

(assert (=> d!573864 (= c!306097 ((_ is Nil!20916) lt!721338))))

(assert (=> d!573864 (= (size!16598 lt!721338) lt!721535)))

(declare-fun b!1877754 () Bool)

(assert (=> b!1877754 (= e!1198360 0)))

(declare-fun b!1877755 () Bool)

(assert (=> b!1877755 (= e!1198360 (+ 1 (size!16598 (t!173227 lt!721338))))))

(assert (= (and d!573864 c!306097) b!1877754))

(assert (= (and d!573864 (not c!306097)) b!1877755))

(assert (=> b!1877755 m!2304667))

(assert (=> b!1876547 d!573864))

(declare-fun d!573866 () Bool)

(declare-fun lt!721536 () Int)

(assert (=> d!573866 (>= lt!721536 0)))

(declare-fun e!1198361 () Int)

(assert (=> d!573866 (= lt!721536 e!1198361)))

(declare-fun c!306098 () Bool)

(assert (=> d!573866 (= c!306098 ((_ is Nil!20916) (++!5686 lt!721332 lt!721333)))))

(assert (=> d!573866 (= (size!16598 (++!5686 lt!721332 lt!721333)) lt!721536)))

(declare-fun b!1877756 () Bool)

(assert (=> b!1877756 (= e!1198361 0)))

(declare-fun b!1877757 () Bool)

(assert (=> b!1877757 (= e!1198361 (+ 1 (size!16598 (t!173227 (++!5686 lt!721332 lt!721333)))))))

(assert (= (and d!573866 c!306098) b!1877756))

(assert (= (and d!573866 (not c!306098)) b!1877757))

(declare-fun m!2304765 () Bool)

(assert (=> b!1877757 m!2304765))

(assert (=> b!1876547 d!573866))

(assert (=> b!1876925 d!573856))

(assert (=> b!1876925 d!573858))

(declare-fun b!1877759 () Bool)

(declare-fun e!1198362 () List!20998)

(declare-fun e!1198363 () List!20998)

(assert (=> b!1877759 (= e!1198362 e!1198363)))

(declare-fun c!306100 () Bool)

(assert (=> b!1877759 (= c!306100 ((_ is Leaf!10225) (c!305735 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))))

(declare-fun d!573868 () Bool)

(declare-fun c!306099 () Bool)

(assert (=> d!573868 (= c!306099 ((_ is Empty!6949) (c!305735 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))))

(assert (=> d!573868 (= (list!8539 (c!305735 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) e!1198362)))

(declare-fun b!1877758 () Bool)

(assert (=> b!1877758 (= e!1198362 Nil!20916)))

(declare-fun b!1877761 () Bool)

(assert (=> b!1877761 (= e!1198363 (++!5686 (list!8539 (left!16810 (c!305735 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))) (list!8539 (right!17140 (c!305735 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))))))

(declare-fun b!1877760 () Bool)

(assert (=> b!1877760 (= e!1198363 (list!8542 (xs!9833 (c!305735 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))))

(assert (= (and d!573868 c!306099) b!1877758))

(assert (= (and d!573868 (not c!306099)) b!1877759))

(assert (= (and b!1877759 c!306100) b!1877760))

(assert (= (and b!1877759 (not c!306100)) b!1877761))

(declare-fun m!2304767 () Bool)

(assert (=> b!1877761 m!2304767))

(declare-fun m!2304769 () Bool)

(assert (=> b!1877761 m!2304769))

(assert (=> b!1877761 m!2304767))

(assert (=> b!1877761 m!2304769))

(declare-fun m!2304771 () Bool)

(assert (=> b!1877761 m!2304771))

(declare-fun m!2304773 () Bool)

(assert (=> b!1877760 m!2304773))

(assert (=> d!573164 d!573868))

(declare-fun d!573870 () Bool)

(declare-fun c!306101 () Bool)

(assert (=> d!573870 (= c!306101 ((_ is Node!6949) (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))))))

(declare-fun e!1198364 () Bool)

(assert (=> d!573870 (= (inv!27828 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))) e!1198364)))

(declare-fun b!1877762 () Bool)

(assert (=> b!1877762 (= e!1198364 (inv!27836 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))))))

(declare-fun b!1877763 () Bool)

(declare-fun e!1198365 () Bool)

(assert (=> b!1877763 (= e!1198364 e!1198365)))

(declare-fun res!839448 () Bool)

(assert (=> b!1877763 (= res!839448 (not ((_ is Leaf!10225) (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))))))

(assert (=> b!1877763 (=> res!839448 e!1198365)))

(declare-fun b!1877764 () Bool)

(assert (=> b!1877764 (= e!1198365 (inv!27837 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))))))

(assert (= (and d!573870 c!306101) b!1877762))

(assert (= (and d!573870 (not c!306101)) b!1877763))

(assert (= (and b!1877763 (not res!839448)) b!1877764))

(declare-fun m!2304775 () Bool)

(assert (=> b!1877762 m!2304775))

(declare-fun m!2304777 () Bool)

(assert (=> b!1877764 m!2304777))

(assert (=> b!1877006 d!573870))

(declare-fun d!573872 () Bool)

(declare-fun c!306102 () Bool)

(assert (=> d!573872 (= c!306102 ((_ is Node!6949) (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))))))

(declare-fun e!1198366 () Bool)

(assert (=> d!573872 (= (inv!27828 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))) e!1198366)))

(declare-fun b!1877765 () Bool)

(assert (=> b!1877765 (= e!1198366 (inv!27836 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))))))

(declare-fun b!1877766 () Bool)

(declare-fun e!1198367 () Bool)

(assert (=> b!1877766 (= e!1198366 e!1198367)))

(declare-fun res!839449 () Bool)

(assert (=> b!1877766 (= res!839449 (not ((_ is Leaf!10225) (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))))))

(assert (=> b!1877766 (=> res!839449 e!1198367)))

(declare-fun b!1877767 () Bool)

(assert (=> b!1877767 (= e!1198367 (inv!27837 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))))))

(assert (= (and d!573872 c!306102) b!1877765))

(assert (= (and d!573872 (not c!306102)) b!1877766))

(assert (= (and b!1877766 (not res!839449)) b!1877767))

(declare-fun m!2304779 () Bool)

(assert (=> b!1877765 m!2304779))

(declare-fun m!2304781 () Bool)

(assert (=> b!1877767 m!2304781))

(assert (=> b!1877006 d!573872))

(declare-fun d!573874 () Bool)

(declare-fun c!306105 () Bool)

(assert (=> d!573874 (= c!306105 ((_ is Nil!20916) lt!721374))))

(declare-fun e!1198370 () (InoxSet C!10396))

(assert (=> d!573874 (= (content!3113 lt!721374) e!1198370)))

(declare-fun b!1877772 () Bool)

(assert (=> b!1877772 (= e!1198370 ((as const (Array C!10396 Bool)) false))))

(declare-fun b!1877773 () Bool)

(assert (=> b!1877773 (= e!1198370 ((_ map or) (store ((as const (Array C!10396 Bool)) false) (h!26317 lt!721374) true) (content!3113 (t!173227 lt!721374))))))

(assert (= (and d!573874 c!306105) b!1877772))

(assert (= (and d!573874 (not c!306105)) b!1877773))

(declare-fun m!2304783 () Bool)

(assert (=> b!1877773 m!2304783))

(declare-fun m!2304785 () Bool)

(assert (=> b!1877773 m!2304785))

(assert (=> d!573178 d!573874))

(declare-fun d!573876 () Bool)

(declare-fun c!306106 () Bool)

(assert (=> d!573876 (= c!306106 ((_ is Nil!20916) lt!721332))))

(declare-fun e!1198371 () (InoxSet C!10396))

(assert (=> d!573876 (= (content!3113 lt!721332) e!1198371)))

(declare-fun b!1877774 () Bool)

(assert (=> b!1877774 (= e!1198371 ((as const (Array C!10396 Bool)) false))))

(declare-fun b!1877775 () Bool)

(assert (=> b!1877775 (= e!1198371 ((_ map or) (store ((as const (Array C!10396 Bool)) false) (h!26317 lt!721332) true) (content!3113 (t!173227 lt!721332))))))

(assert (= (and d!573876 c!306106) b!1877774))

(assert (= (and d!573876 (not c!306106)) b!1877775))

(declare-fun m!2304787 () Bool)

(assert (=> b!1877775 m!2304787))

(assert (=> b!1877775 m!2304755))

(assert (=> d!573178 d!573876))

(declare-fun d!573878 () Bool)

(declare-fun c!306107 () Bool)

(assert (=> d!573878 (= c!306107 ((_ is Nil!20916) lt!721333))))

(declare-fun e!1198372 () (InoxSet C!10396))

(assert (=> d!573878 (= (content!3113 lt!721333) e!1198372)))

(declare-fun b!1877776 () Bool)

(assert (=> b!1877776 (= e!1198372 ((as const (Array C!10396 Bool)) false))))

(declare-fun b!1877777 () Bool)

(assert (=> b!1877777 (= e!1198372 ((_ map or) (store ((as const (Array C!10396 Bool)) false) (h!26317 lt!721333) true) (content!3113 (t!173227 lt!721333))))))

(assert (= (and d!573878 c!306107) b!1877776))

(assert (= (and d!573878 (not c!306107)) b!1877777))

(declare-fun m!2304789 () Bool)

(assert (=> b!1877777 m!2304789))

(declare-fun m!2304791 () Bool)

(assert (=> b!1877777 m!2304791))

(assert (=> d!573178 d!573878))

(declare-fun d!573880 () Bool)

(declare-fun c!306108 () Bool)

(assert (=> d!573880 (= c!306108 ((_ is Node!6949) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))) (value!117200 (h!26318 lt!721335))))))))

(declare-fun e!1198373 () Bool)

(assert (=> d!573880 (= (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))) (value!117200 (h!26318 lt!721335))))) e!1198373)))

(declare-fun b!1877778 () Bool)

(assert (=> b!1877778 (= e!1198373 (inv!27836 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))) (value!117200 (h!26318 lt!721335))))))))

(declare-fun b!1877779 () Bool)

(declare-fun e!1198374 () Bool)

(assert (=> b!1877779 (= e!1198373 e!1198374)))

(declare-fun res!839450 () Bool)

(assert (=> b!1877779 (= res!839450 (not ((_ is Leaf!10225) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))) (value!117200 (h!26318 lt!721335)))))))))

(assert (=> b!1877779 (=> res!839450 e!1198374)))

(declare-fun b!1877780 () Bool)

(assert (=> b!1877780 (= e!1198374 (inv!27837 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))) (value!117200 (h!26318 lt!721335))))))))

(assert (= (and d!573880 c!306108) b!1877778))

(assert (= (and d!573880 (not c!306108)) b!1877779))

(assert (= (and b!1877779 (not res!839450)) b!1877780))

(declare-fun m!2304793 () Bool)

(assert (=> b!1877778 m!2304793))

(declare-fun m!2304795 () Bool)

(assert (=> b!1877780 m!2304795))

(assert (=> b!1876909 d!573880))

(declare-fun d!573882 () Bool)

(declare-fun res!839451 () Bool)

(declare-fun e!1198375 () Bool)

(assert (=> d!573882 (=> (not res!839451) (not e!1198375))))

(assert (=> d!573882 (= res!839451 (= (csize!14130 (right!17141 (c!305736 v!6352))) (+ (size!16602 (left!16811 (right!17141 (c!305736 v!6352)))) (size!16602 (right!17141 (right!17141 (c!305736 v!6352)))))))))

(assert (=> d!573882 (= (inv!27826 (right!17141 (c!305736 v!6352))) e!1198375)))

(declare-fun b!1877781 () Bool)

(declare-fun res!839452 () Bool)

(assert (=> b!1877781 (=> (not res!839452) (not e!1198375))))

(assert (=> b!1877781 (= res!839452 (and (not (= (left!16811 (right!17141 (c!305736 v!6352))) Empty!6950)) (not (= (right!17141 (right!17141 (c!305736 v!6352))) Empty!6950))))))

(declare-fun b!1877782 () Bool)

(declare-fun res!839453 () Bool)

(assert (=> b!1877782 (=> (not res!839453) (not e!1198375))))

(assert (=> b!1877782 (= res!839453 (= (cheight!7161 (right!17141 (c!305736 v!6352))) (+ (max!0 (height!1087 (left!16811 (right!17141 (c!305736 v!6352)))) (height!1087 (right!17141 (right!17141 (c!305736 v!6352))))) 1)))))

(declare-fun b!1877783 () Bool)

(assert (=> b!1877783 (= e!1198375 (<= 0 (cheight!7161 (right!17141 (c!305736 v!6352)))))))

(assert (= (and d!573882 res!839451) b!1877781))

(assert (= (and b!1877781 res!839452) b!1877782))

(assert (= (and b!1877782 res!839453) b!1877783))

(declare-fun m!2304797 () Bool)

(assert (=> d!573882 m!2304797))

(declare-fun m!2304799 () Bool)

(assert (=> d!573882 m!2304799))

(declare-fun m!2304801 () Bool)

(assert (=> b!1877782 m!2304801))

(declare-fun m!2304803 () Bool)

(assert (=> b!1877782 m!2304803))

(assert (=> b!1877782 m!2304801))

(assert (=> b!1877782 m!2304803))

(declare-fun m!2304805 () Bool)

(assert (=> b!1877782 m!2304805))

(assert (=> b!1876961 d!573882))

(declare-fun d!573884 () Bool)

(declare-fun c!306109 () Bool)

(assert (=> d!573884 (= c!306109 ((_ is Node!6950) (left!16811 (right!17141 (c!305736 v!6352)))))))

(declare-fun e!1198376 () Bool)

(assert (=> d!573884 (= (inv!27821 (left!16811 (right!17141 (c!305736 v!6352)))) e!1198376)))

(declare-fun b!1877784 () Bool)

(assert (=> b!1877784 (= e!1198376 (inv!27826 (left!16811 (right!17141 (c!305736 v!6352)))))))

(declare-fun b!1877785 () Bool)

(declare-fun e!1198377 () Bool)

(assert (=> b!1877785 (= e!1198376 e!1198377)))

(declare-fun res!839454 () Bool)

(assert (=> b!1877785 (= res!839454 (not ((_ is Leaf!10226) (left!16811 (right!17141 (c!305736 v!6352))))))))

(assert (=> b!1877785 (=> res!839454 e!1198377)))

(declare-fun b!1877786 () Bool)

(assert (=> b!1877786 (= e!1198377 (inv!27827 (left!16811 (right!17141 (c!305736 v!6352)))))))

(assert (= (and d!573884 c!306109) b!1877784))

(assert (= (and d!573884 (not c!306109)) b!1877785))

(assert (= (and b!1877785 (not res!839454)) b!1877786))

(declare-fun m!2304807 () Bool)

(assert (=> b!1877784 m!2304807))

(declare-fun m!2304809 () Bool)

(assert (=> b!1877786 m!2304809))

(assert (=> b!1877027 d!573884))

(declare-fun d!573886 () Bool)

(declare-fun c!306110 () Bool)

(assert (=> d!573886 (= c!306110 ((_ is Node!6950) (right!17141 (right!17141 (c!305736 v!6352)))))))

(declare-fun e!1198378 () Bool)

(assert (=> d!573886 (= (inv!27821 (right!17141 (right!17141 (c!305736 v!6352)))) e!1198378)))

(declare-fun b!1877787 () Bool)

(assert (=> b!1877787 (= e!1198378 (inv!27826 (right!17141 (right!17141 (c!305736 v!6352)))))))

(declare-fun b!1877788 () Bool)

(declare-fun e!1198379 () Bool)

(assert (=> b!1877788 (= e!1198378 e!1198379)))

(declare-fun res!839455 () Bool)

(assert (=> b!1877788 (= res!839455 (not ((_ is Leaf!10226) (right!17141 (right!17141 (c!305736 v!6352))))))))

(assert (=> b!1877788 (=> res!839455 e!1198379)))

(declare-fun b!1877789 () Bool)

(assert (=> b!1877789 (= e!1198379 (inv!27827 (right!17141 (right!17141 (c!305736 v!6352)))))))

(assert (= (and d!573886 c!306110) b!1877787))

(assert (= (and d!573886 (not c!306110)) b!1877788))

(assert (= (and b!1877788 (not res!839455)) b!1877789))

(declare-fun m!2304811 () Bool)

(assert (=> b!1877787 m!2304811))

(declare-fun m!2304813 () Bool)

(assert (=> b!1877789 m!2304813))

(assert (=> b!1877027 d!573886))

(declare-fun d!573888 () Bool)

(declare-fun lt!721537 () Int)

(assert (=> d!573888 (>= lt!721537 0)))

(declare-fun e!1198380 () Int)

(assert (=> d!573888 (= lt!721537 e!1198380)))

(declare-fun c!306111 () Bool)

(assert (=> d!573888 (= c!306111 ((_ is Nil!20917) (t!173228 lt!721347)))))

(assert (=> d!573888 (= (size!16601 (t!173228 lt!721347)) lt!721537)))

(declare-fun b!1877790 () Bool)

(assert (=> b!1877790 (= e!1198380 0)))

(declare-fun b!1877791 () Bool)

(assert (=> b!1877791 (= e!1198380 (+ 1 (size!16601 (t!173228 (t!173228 lt!721347)))))))

(assert (= (and d!573888 c!306111) b!1877790))

(assert (= (and d!573888 (not c!306111)) b!1877791))

(declare-fun m!2304815 () Bool)

(assert (=> b!1877791 m!2304815))

(assert (=> b!1876979 d!573888))

(declare-fun d!573890 () Bool)

(declare-fun c!306112 () Bool)

(assert (=> d!573890 (= c!306112 ((_ is Node!6949) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))) (value!117200 (h!26318 lt!721331))))))))

(declare-fun e!1198381 () Bool)

(assert (=> d!573890 (= (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))) (value!117200 (h!26318 lt!721331))))) e!1198381)))

(declare-fun b!1877792 () Bool)

(assert (=> b!1877792 (= e!1198381 (inv!27836 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))) (value!117200 (h!26318 lt!721331))))))))

(declare-fun b!1877793 () Bool)

(declare-fun e!1198382 () Bool)

(assert (=> b!1877793 (= e!1198381 e!1198382)))

(declare-fun res!839456 () Bool)

(assert (=> b!1877793 (= res!839456 (not ((_ is Leaf!10225) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))) (value!117200 (h!26318 lt!721331)))))))))

(assert (=> b!1877793 (=> res!839456 e!1198382)))

(declare-fun b!1877794 () Bool)

(assert (=> b!1877794 (= e!1198382 (inv!27837 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))) (value!117200 (h!26318 lt!721331))))))))

(assert (= (and d!573890 c!306112) b!1877792))

(assert (= (and d!573890 (not c!306112)) b!1877793))

(assert (= (and b!1877793 (not res!839456)) b!1877794))

(declare-fun m!2304817 () Bool)

(assert (=> b!1877792 m!2304817))

(declare-fun m!2304819 () Bool)

(assert (=> b!1877794 m!2304819))

(assert (=> b!1876565 d!573890))

(declare-fun d!573892 () Bool)

(declare-fun lt!721538 () Int)

(assert (=> d!573892 (>= lt!721538 0)))

(declare-fun e!1198383 () Int)

(assert (=> d!573892 (= lt!721538 e!1198383)))

(declare-fun c!306113 () Bool)

(assert (=> d!573892 (= c!306113 ((_ is Nil!20917) (t!173228 lt!721287)))))

(assert (=> d!573892 (= (size!16601 (t!173228 lt!721287)) lt!721538)))

(declare-fun b!1877795 () Bool)

(assert (=> b!1877795 (= e!1198383 0)))

(declare-fun b!1877796 () Bool)

(assert (=> b!1877796 (= e!1198383 (+ 1 (size!16601 (t!173228 (t!173228 lt!721287)))))))

(assert (= (and d!573892 c!306113) b!1877795))

(assert (= (and d!573892 (not c!306113)) b!1877796))

(declare-fun m!2304821 () Bool)

(assert (=> b!1877796 m!2304821))

(assert (=> b!1876975 d!573892))

(declare-fun b!1877797 () Bool)

(declare-fun e!1198386 () Bool)

(assert (=> b!1877797 (= e!1198386 (inv!17 (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))))

(declare-fun b!1877798 () Bool)

(declare-fun e!1198384 () Bool)

(assert (=> b!1877798 (= e!1198384 e!1198386)))

(declare-fun c!306115 () Bool)

(assert (=> b!1877798 (= c!306115 ((_ is IntegerValue!11539) (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))))

(declare-fun d!573894 () Bool)

(declare-fun c!306114 () Bool)

(assert (=> d!573894 (= c!306114 ((_ is IntegerValue!11538) (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))))

(assert (=> d!573894 (= (inv!21 (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))) e!1198384)))

(declare-fun b!1877799 () Bool)

(declare-fun res!839457 () Bool)

(declare-fun e!1198385 () Bool)

(assert (=> b!1877799 (=> res!839457 e!1198385)))

(assert (=> b!1877799 (= res!839457 (not ((_ is IntegerValue!11540) (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))))))

(assert (=> b!1877799 (= e!1198386 e!1198385)))

(declare-fun b!1877800 () Bool)

(assert (=> b!1877800 (= e!1198385 (inv!15 (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))))

(declare-fun b!1877801 () Bool)

(assert (=> b!1877801 (= e!1198384 (inv!16 (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))))

(assert (= (and d!573894 c!306114) b!1877801))

(assert (= (and d!573894 (not c!306114)) b!1877798))

(assert (= (and b!1877798 c!306115) b!1877797))

(assert (= (and b!1877798 (not c!306115)) b!1877799))

(assert (= (and b!1877799 (not res!839457)) b!1877800))

(declare-fun m!2304823 () Bool)

(assert (=> b!1877797 m!2304823))

(declare-fun m!2304825 () Bool)

(assert (=> b!1877800 m!2304825))

(declare-fun m!2304827 () Bool)

(assert (=> b!1877801 m!2304827))

(assert (=> b!1877031 d!573894))

(declare-fun d!573896 () Bool)

(declare-fun choose!11785 (Int) Bool)

(assert (=> d!573896 (= (Forall!982 lambda!73801) (choose!11785 lambda!73801))))

(declare-fun bs!412303 () Bool)

(assert (= bs!412303 d!573896))

(declare-fun m!2304829 () Bool)

(assert (=> bs!412303 m!2304829))

(assert (=> d!573198 d!573896))

(declare-fun d!573898 () Bool)

(declare-fun lt!721539 () Bool)

(assert (=> d!573898 (= lt!721539 (isEmpty!12979 (list!8536 (right!17141 (c!305736 v!6352)))))))

(assert (=> d!573898 (= lt!721539 (= (size!16602 (right!17141 (c!305736 v!6352))) 0))))

(assert (=> d!573898 (= (isEmpty!12976 (right!17141 (c!305736 v!6352))) lt!721539)))

(declare-fun bs!412304 () Bool)

(assert (= bs!412304 d!573898))

(assert (=> bs!412304 m!2303225))

(assert (=> bs!412304 m!2303225))

(declare-fun m!2304831 () Bool)

(assert (=> bs!412304 m!2304831))

(assert (=> bs!412304 m!2303341))

(assert (=> b!1876930 d!573898))

(assert (=> b!1876899 d!573814))

(assert (=> b!1876899 d!573816))

(assert (=> b!1876259 d!573356))

(declare-fun lt!721540 () List!20998)

(declare-fun e!1198388 () Bool)

(declare-fun b!1877805 () Bool)

(assert (=> b!1877805 (= e!1198388 (or (not (= (printList!1012 thiss!13718 (t!173228 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))) Nil!20916)) (= lt!721540 (list!8535 (charsOf!2302 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))))))

(declare-fun d!573900 () Bool)

(assert (=> d!573900 e!1198388))

(declare-fun res!839459 () Bool)

(assert (=> d!573900 (=> (not res!839459) (not e!1198388))))

(assert (=> d!573900 (= res!839459 (= (content!3113 lt!721540) ((_ map or) (content!3113 (list!8535 (charsOf!2302 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))) (content!3113 (printList!1012 thiss!13718 (t!173228 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))))))

(declare-fun e!1198387 () List!20998)

(assert (=> d!573900 (= lt!721540 e!1198387)))

(declare-fun c!306116 () Bool)

(assert (=> d!573900 (= c!306116 ((_ is Nil!20916) (list!8535 (charsOf!2302 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))))))

(assert (=> d!573900 (= (++!5686 (list!8535 (charsOf!2302 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))) (printList!1012 thiss!13718 (t!173228 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))) lt!721540)))

(declare-fun b!1877803 () Bool)

(assert (=> b!1877803 (= e!1198387 (Cons!20916 (h!26317 (list!8535 (charsOf!2302 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))) (++!5686 (t!173227 (list!8535 (charsOf!2302 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))) (printList!1012 thiss!13718 (t!173228 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))))))

(declare-fun b!1877802 () Bool)

(assert (=> b!1877802 (= e!1198387 (printList!1012 thiss!13718 (t!173228 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))))

(declare-fun b!1877804 () Bool)

(declare-fun res!839458 () Bool)

(assert (=> b!1877804 (=> (not res!839458) (not e!1198388))))

(assert (=> b!1877804 (= res!839458 (= (size!16598 lt!721540) (+ (size!16598 (list!8535 (charsOf!2302 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))) (size!16598 (printList!1012 thiss!13718 (t!173228 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))))))

(assert (= (and d!573900 c!306116) b!1877802))

(assert (= (and d!573900 (not c!306116)) b!1877803))

(assert (= (and d!573900 res!839459) b!1877804))

(assert (= (and b!1877804 res!839458) b!1877805))

(declare-fun m!2304833 () Bool)

(assert (=> d!573900 m!2304833))

(assert (=> d!573900 m!2302663))

(declare-fun m!2304835 () Bool)

(assert (=> d!573900 m!2304835))

(assert (=> d!573900 m!2302665))

(declare-fun m!2304837 () Bool)

(assert (=> d!573900 m!2304837))

(assert (=> b!1877803 m!2302665))

(declare-fun m!2304839 () Bool)

(assert (=> b!1877803 m!2304839))

(declare-fun m!2304841 () Bool)

(assert (=> b!1877804 m!2304841))

(assert (=> b!1877804 m!2302663))

(declare-fun m!2304843 () Bool)

(assert (=> b!1877804 m!2304843))

(assert (=> b!1877804 m!2302665))

(declare-fun m!2304845 () Bool)

(assert (=> b!1877804 m!2304845))

(assert (=> b!1876517 d!573900))

(declare-fun d!573902 () Bool)

(assert (=> d!573902 (= (list!8535 (charsOf!2302 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))) (list!8539 (c!305735 (charsOf!2302 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))))))

(declare-fun bs!412305 () Bool)

(assert (= bs!412305 d!573902))

(declare-fun m!2304847 () Bool)

(assert (=> bs!412305 m!2304847))

(assert (=> b!1876517 d!573902))

(declare-fun lt!721541 () BalanceConc!13714)

(declare-fun d!573904 () Bool)

(assert (=> d!573904 (= (list!8535 lt!721541) (originalCharacters!4517 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))))

(assert (=> d!573904 (= lt!721541 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))) (value!117200 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))))

(assert (=> d!573904 (= (charsOf!2302 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))) lt!721541)))

(declare-fun b_lambda!61707 () Bool)

(assert (=> (not b_lambda!61707) (not d!573904)))

(declare-fun t!173551 () Bool)

(declare-fun tb!113259 () Bool)

(assert (=> (and b!1876224 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))) t!173551) tb!113259))

(declare-fun e!1198389 () Bool)

(declare-fun tp!535245 () Bool)

(declare-fun b!1877806 () Bool)

(assert (=> b!1877806 (= e!1198389 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))) (value!117200 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))) tp!535245))))

(declare-fun result!137064 () Bool)

(assert (=> tb!113259 (= result!137064 (and (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))) (value!117200 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))) e!1198389))))

(assert (= tb!113259 b!1877806))

(declare-fun m!2304849 () Bool)

(assert (=> b!1877806 m!2304849))

(declare-fun m!2304851 () Bool)

(assert (=> tb!113259 m!2304851))

(assert (=> d!573904 t!173551))

(declare-fun b_and!144645 () Bool)

(assert (= b_and!144639 (and (=> t!173551 result!137064) b_and!144645)))

(declare-fun tb!113261 () Bool)

(declare-fun t!173553 () Bool)

(assert (=> (and b!1877022 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))) t!173553) tb!113261))

(declare-fun result!137066 () Bool)

(assert (= result!137066 result!137064))

(assert (=> d!573904 t!173553))

(declare-fun b_and!144647 () Bool)

(assert (= b_and!144641 (and (=> t!173553 result!137066) b_and!144647)))

(declare-fun t!173555 () Bool)

(declare-fun tb!113263 () Bool)

(assert (=> (and b!1877033 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))) t!173555) tb!113263))

(declare-fun result!137068 () Bool)

(assert (= result!137068 result!137064))

(assert (=> d!573904 t!173555))

(declare-fun b_and!144649 () Bool)

(assert (= b_and!144643 (and (=> t!173555 result!137068) b_and!144649)))

(declare-fun m!2304853 () Bool)

(assert (=> d!573904 m!2304853))

(declare-fun m!2304855 () Bool)

(assert (=> d!573904 m!2304855))

(assert (=> b!1876517 d!573904))

(declare-fun d!573906 () Bool)

(declare-fun c!306117 () Bool)

(assert (=> d!573906 (= c!306117 ((_ is Cons!20917) (t!173228 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))))

(declare-fun e!1198390 () List!20998)

(assert (=> d!573906 (= (printList!1012 thiss!13718 (t!173228 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))) e!1198390)))

(declare-fun b!1877807 () Bool)

(assert (=> b!1877807 (= e!1198390 (++!5686 (list!8535 (charsOf!2302 (h!26318 (t!173228 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))) (printList!1012 thiss!13718 (t!173228 (t!173228 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))))))

(declare-fun b!1877808 () Bool)

(assert (=> b!1877808 (= e!1198390 Nil!20916)))

(assert (= (and d!573906 c!306117) b!1877807))

(assert (= (and d!573906 (not c!306117)) b!1877808))

(declare-fun m!2304857 () Bool)

(assert (=> b!1877807 m!2304857))

(assert (=> b!1877807 m!2304857))

(declare-fun m!2304859 () Bool)

(assert (=> b!1877807 m!2304859))

(declare-fun m!2304861 () Bool)

(assert (=> b!1877807 m!2304861))

(assert (=> b!1877807 m!2304859))

(assert (=> b!1877807 m!2304861))

(declare-fun m!2304863 () Bool)

(assert (=> b!1877807 m!2304863))

(assert (=> b!1876517 d!573906))

(declare-fun d!573908 () Bool)

(assert (=> d!573908 (= (list!8540 (xs!9834 (c!305736 acc!408))) (innerList!7010 (xs!9834 (c!305736 acc!408))))))

(assert (=> b!1876923 d!573908))

(assert (=> b!1876926 d!573856))

(assert (=> b!1876926 d!573858))

(declare-fun d!573910 () Bool)

(declare-fun lt!721542 () Int)

(assert (=> d!573910 (>= lt!721542 0)))

(declare-fun e!1198391 () Int)

(assert (=> d!573910 (= lt!721542 e!1198391)))

(declare-fun c!306118 () Bool)

(assert (=> d!573910 (= c!306118 ((_ is Nil!20916) lt!721374))))

(assert (=> d!573910 (= (size!16598 lt!721374) lt!721542)))

(declare-fun b!1877809 () Bool)

(assert (=> b!1877809 (= e!1198391 0)))

(declare-fun b!1877810 () Bool)

(assert (=> b!1877810 (= e!1198391 (+ 1 (size!16598 (t!173227 lt!721374))))))

(assert (= (and d!573910 c!306118) b!1877809))

(assert (= (and d!573910 (not c!306118)) b!1877810))

(declare-fun m!2304865 () Bool)

(assert (=> b!1877810 m!2304865))

(assert (=> b!1876551 d!573910))

(declare-fun d!573912 () Bool)

(declare-fun lt!721543 () Int)

(assert (=> d!573912 (>= lt!721543 0)))

(declare-fun e!1198392 () Int)

(assert (=> d!573912 (= lt!721543 e!1198392)))

(declare-fun c!306119 () Bool)

(assert (=> d!573912 (= c!306119 ((_ is Nil!20916) lt!721332))))

(assert (=> d!573912 (= (size!16598 lt!721332) lt!721543)))

(declare-fun b!1877811 () Bool)

(assert (=> b!1877811 (= e!1198392 0)))

(declare-fun b!1877812 () Bool)

(assert (=> b!1877812 (= e!1198392 (+ 1 (size!16598 (t!173227 lt!721332))))))

(assert (= (and d!573912 c!306119) b!1877811))

(assert (= (and d!573912 (not c!306119)) b!1877812))

(assert (=> b!1877812 m!2304761))

(assert (=> b!1876551 d!573912))

(declare-fun d!573914 () Bool)

(declare-fun lt!721544 () Int)

(assert (=> d!573914 (>= lt!721544 0)))

(declare-fun e!1198393 () Int)

(assert (=> d!573914 (= lt!721544 e!1198393)))

(declare-fun c!306120 () Bool)

(assert (=> d!573914 (= c!306120 ((_ is Nil!20916) lt!721333))))

(assert (=> d!573914 (= (size!16598 lt!721333) lt!721544)))

(declare-fun b!1877813 () Bool)

(assert (=> b!1877813 (= e!1198393 0)))

(declare-fun b!1877814 () Bool)

(assert (=> b!1877814 (= e!1198393 (+ 1 (size!16598 (t!173227 lt!721333))))))

(assert (= (and d!573914 c!306120) b!1877813))

(assert (= (and d!573914 (not c!306120)) b!1877814))

(declare-fun m!2304867 () Bool)

(assert (=> b!1877814 m!2304867))

(assert (=> b!1876551 d!573914))

(declare-fun d!573916 () Bool)

(declare-fun lt!721545 () Int)

(assert (=> d!573916 (>= lt!721545 0)))

(declare-fun e!1198394 () Int)

(assert (=> d!573916 (= lt!721545 e!1198394)))

(declare-fun c!306121 () Bool)

(assert (=> d!573916 (= c!306121 ((_ is Nil!20917) lt!721429))))

(assert (=> d!573916 (= (size!16601 lt!721429) lt!721545)))

(declare-fun b!1877815 () Bool)

(assert (=> b!1877815 (= e!1198394 0)))

(declare-fun b!1877816 () Bool)

(assert (=> b!1877816 (= e!1198394 (+ 1 (size!16601 (t!173228 lt!721429))))))

(assert (= (and d!573916 c!306121) b!1877815))

(assert (= (and d!573916 (not c!306121)) b!1877816))

(declare-fun m!2304869 () Bool)

(assert (=> b!1877816 m!2304869))

(assert (=> b!1876956 d!573916))

(assert (=> b!1876956 d!573892))

(assert (=> b!1876956 d!573394))

(declare-fun lt!721546 () List!20998)

(declare-fun e!1198396 () Bool)

(declare-fun b!1877820 () Bool)

(assert (=> b!1877820 (= e!1198396 (or (not (= (printList!1012 thiss!13718 (t!173228 lt!721365)) Nil!20916)) (= lt!721546 (list!8535 (charsOf!2302 (h!26318 lt!721365))))))))

(declare-fun d!573918 () Bool)

(assert (=> d!573918 e!1198396))

(declare-fun res!839461 () Bool)

(assert (=> d!573918 (=> (not res!839461) (not e!1198396))))

(assert (=> d!573918 (= res!839461 (= (content!3113 lt!721546) ((_ map or) (content!3113 (list!8535 (charsOf!2302 (h!26318 lt!721365)))) (content!3113 (printList!1012 thiss!13718 (t!173228 lt!721365))))))))

(declare-fun e!1198395 () List!20998)

(assert (=> d!573918 (= lt!721546 e!1198395)))

(declare-fun c!306122 () Bool)

(assert (=> d!573918 (= c!306122 ((_ is Nil!20916) (list!8535 (charsOf!2302 (h!26318 lt!721365)))))))

(assert (=> d!573918 (= (++!5686 (list!8535 (charsOf!2302 (h!26318 lt!721365))) (printList!1012 thiss!13718 (t!173228 lt!721365))) lt!721546)))

(declare-fun b!1877818 () Bool)

(assert (=> b!1877818 (= e!1198395 (Cons!20916 (h!26317 (list!8535 (charsOf!2302 (h!26318 lt!721365)))) (++!5686 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721365)))) (printList!1012 thiss!13718 (t!173228 lt!721365)))))))

(declare-fun b!1877817 () Bool)

(assert (=> b!1877817 (= e!1198395 (printList!1012 thiss!13718 (t!173228 lt!721365)))))

(declare-fun b!1877819 () Bool)

(declare-fun res!839460 () Bool)

(assert (=> b!1877819 (=> (not res!839460) (not e!1198396))))

(assert (=> b!1877819 (= res!839460 (= (size!16598 lt!721546) (+ (size!16598 (list!8535 (charsOf!2302 (h!26318 lt!721365)))) (size!16598 (printList!1012 thiss!13718 (t!173228 lt!721365))))))))

(assert (= (and d!573918 c!306122) b!1877817))

(assert (= (and d!573918 (not c!306122)) b!1877818))

(assert (= (and d!573918 res!839461) b!1877819))

(assert (= (and b!1877819 res!839460) b!1877820))

(declare-fun m!2304871 () Bool)

(assert (=> d!573918 m!2304871))

(assert (=> d!573918 m!2302743))

(declare-fun m!2304873 () Bool)

(assert (=> d!573918 m!2304873))

(assert (=> d!573918 m!2302745))

(declare-fun m!2304875 () Bool)

(assert (=> d!573918 m!2304875))

(assert (=> b!1877818 m!2302745))

(declare-fun m!2304877 () Bool)

(assert (=> b!1877818 m!2304877))

(declare-fun m!2304879 () Bool)

(assert (=> b!1877819 m!2304879))

(assert (=> b!1877819 m!2302743))

(declare-fun m!2304881 () Bool)

(assert (=> b!1877819 m!2304881))

(assert (=> b!1877819 m!2302745))

(declare-fun m!2304883 () Bool)

(assert (=> b!1877819 m!2304883))

(assert (=> b!1876539 d!573918))

(declare-fun d!573920 () Bool)

(assert (=> d!573920 (= (list!8535 (charsOf!2302 (h!26318 lt!721365))) (list!8539 (c!305735 (charsOf!2302 (h!26318 lt!721365)))))))

(declare-fun bs!412306 () Bool)

(assert (= bs!412306 d!573920))

(declare-fun m!2304885 () Bool)

(assert (=> bs!412306 m!2304885))

(assert (=> b!1876539 d!573920))

(declare-fun d!573922 () Bool)

(declare-fun lt!721547 () BalanceConc!13714)

(assert (=> d!573922 (= (list!8535 lt!721547) (originalCharacters!4517 (h!26318 lt!721365)))))

(assert (=> d!573922 (= lt!721547 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721365)))) (value!117200 (h!26318 lt!721365))))))

(assert (=> d!573922 (= (charsOf!2302 (h!26318 lt!721365)) lt!721547)))

(declare-fun b_lambda!61709 () Bool)

(assert (=> (not b_lambda!61709) (not d!573922)))

(declare-fun tb!113265 () Bool)

(declare-fun t!173557 () Bool)

(assert (=> (and b!1876224 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721365))))) t!173557) tb!113265))

(declare-fun b!1877821 () Bool)

(declare-fun e!1198397 () Bool)

(declare-fun tp!535246 () Bool)

(assert (=> b!1877821 (= e!1198397 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721365)))) (value!117200 (h!26318 lt!721365))))) tp!535246))))

(declare-fun result!137070 () Bool)

(assert (=> tb!113265 (= result!137070 (and (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721365)))) (value!117200 (h!26318 lt!721365)))) e!1198397))))

(assert (= tb!113265 b!1877821))

(declare-fun m!2304887 () Bool)

(assert (=> b!1877821 m!2304887))

(declare-fun m!2304889 () Bool)

(assert (=> tb!113265 m!2304889))

(assert (=> d!573922 t!173557))

(declare-fun b_and!144651 () Bool)

(assert (= b_and!144645 (and (=> t!173557 result!137070) b_and!144651)))

(declare-fun tb!113267 () Bool)

(declare-fun t!173559 () Bool)

(assert (=> (and b!1877022 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721365))))) t!173559) tb!113267))

(declare-fun result!137072 () Bool)

(assert (= result!137072 result!137070))

(assert (=> d!573922 t!173559))

(declare-fun b_and!144653 () Bool)

(assert (= b_and!144647 (and (=> t!173559 result!137072) b_and!144653)))

(declare-fun t!173561 () Bool)

(declare-fun tb!113269 () Bool)

(assert (=> (and b!1877033 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721365))))) t!173561) tb!113269))

(declare-fun result!137074 () Bool)

(assert (= result!137074 result!137070))

(assert (=> d!573922 t!173561))

(declare-fun b_and!144655 () Bool)

(assert (= b_and!144649 (and (=> t!173561 result!137074) b_and!144655)))

(declare-fun m!2304891 () Bool)

(assert (=> d!573922 m!2304891))

(declare-fun m!2304893 () Bool)

(assert (=> d!573922 m!2304893))

(assert (=> b!1876539 d!573922))

(declare-fun d!573924 () Bool)

(declare-fun c!306123 () Bool)

(assert (=> d!573924 (= c!306123 ((_ is Cons!20917) (t!173228 lt!721365)))))

(declare-fun e!1198398 () List!20998)

(assert (=> d!573924 (= (printList!1012 thiss!13718 (t!173228 lt!721365)) e!1198398)))

(declare-fun b!1877822 () Bool)

(assert (=> b!1877822 (= e!1198398 (++!5686 (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721365)))) (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721365)))))))

(declare-fun b!1877823 () Bool)

(assert (=> b!1877823 (= e!1198398 Nil!20916)))

(assert (= (and d!573924 c!306123) b!1877822))

(assert (= (and d!573924 (not c!306123)) b!1877823))

(declare-fun m!2304895 () Bool)

(assert (=> b!1877822 m!2304895))

(assert (=> b!1877822 m!2304895))

(declare-fun m!2304897 () Bool)

(assert (=> b!1877822 m!2304897))

(declare-fun m!2304899 () Bool)

(assert (=> b!1877822 m!2304899))

(assert (=> b!1877822 m!2304897))

(assert (=> b!1877822 m!2304899))

(declare-fun m!2304901 () Bool)

(assert (=> b!1877822 m!2304901))

(assert (=> b!1876539 d!573924))

(declare-fun d!573926 () Bool)

(declare-fun res!839466 () Bool)

(declare-fun e!1198401 () Bool)

(assert (=> d!573926 (=> (not res!839466) (not e!1198401))))

(assert (=> d!573926 (= res!839466 (<= (size!16598 (list!8542 (xs!9833 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))) 512))))

(assert (=> d!573926 (= (inv!27837 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))) e!1198401)))

(declare-fun b!1877828 () Bool)

(declare-fun res!839467 () Bool)

(assert (=> b!1877828 (=> (not res!839467) (not e!1198401))))

(assert (=> b!1877828 (= res!839467 (= (csize!14129 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))) (size!16598 (list!8542 (xs!9833 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))))))))

(declare-fun b!1877829 () Bool)

(assert (=> b!1877829 (= e!1198401 (and (> (csize!14129 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))) 0) (<= (csize!14129 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))) 512)))))

(assert (= (and d!573926 res!839466) b!1877828))

(assert (= (and b!1877828 res!839467) b!1877829))

(assert (=> d!573926 m!2304713))

(assert (=> d!573926 m!2304713))

(declare-fun m!2304903 () Bool)

(assert (=> d!573926 m!2304903))

(assert (=> b!1877828 m!2304713))

(assert (=> b!1877828 m!2304713))

(assert (=> b!1877828 m!2304903))

(assert (=> b!1876920 d!573926))

(declare-fun b!1877833 () Bool)

(declare-fun e!1198403 () Bool)

(declare-fun lt!721548 () List!20998)

(assert (=> b!1877833 (= e!1198403 (or (not (= (printList!1012 thiss!13718 (t!173228 lt!721336)) Nil!20916)) (= lt!721548 (list!8535 (charsOf!2302 (h!26318 lt!721336))))))))

(declare-fun d!573928 () Bool)

(assert (=> d!573928 e!1198403))

(declare-fun res!839469 () Bool)

(assert (=> d!573928 (=> (not res!839469) (not e!1198403))))

(assert (=> d!573928 (= res!839469 (= (content!3113 lt!721548) ((_ map or) (content!3113 (list!8535 (charsOf!2302 (h!26318 lt!721336)))) (content!3113 (printList!1012 thiss!13718 (t!173228 lt!721336))))))))

(declare-fun e!1198402 () List!20998)

(assert (=> d!573928 (= lt!721548 e!1198402)))

(declare-fun c!306124 () Bool)

(assert (=> d!573928 (= c!306124 ((_ is Nil!20916) (list!8535 (charsOf!2302 (h!26318 lt!721336)))))))

(assert (=> d!573928 (= (++!5686 (list!8535 (charsOf!2302 (h!26318 lt!721336))) (printList!1012 thiss!13718 (t!173228 lt!721336))) lt!721548)))

(declare-fun b!1877831 () Bool)

(assert (=> b!1877831 (= e!1198402 (Cons!20916 (h!26317 (list!8535 (charsOf!2302 (h!26318 lt!721336)))) (++!5686 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721336)))) (printList!1012 thiss!13718 (t!173228 lt!721336)))))))

(declare-fun b!1877830 () Bool)

(assert (=> b!1877830 (= e!1198402 (printList!1012 thiss!13718 (t!173228 lt!721336)))))

(declare-fun b!1877832 () Bool)

(declare-fun res!839468 () Bool)

(assert (=> b!1877832 (=> (not res!839468) (not e!1198403))))

(assert (=> b!1877832 (= res!839468 (= (size!16598 lt!721548) (+ (size!16598 (list!8535 (charsOf!2302 (h!26318 lt!721336)))) (size!16598 (printList!1012 thiss!13718 (t!173228 lt!721336))))))))

(assert (= (and d!573928 c!306124) b!1877830))

(assert (= (and d!573928 (not c!306124)) b!1877831))

(assert (= (and d!573928 res!839469) b!1877832))

(assert (= (and b!1877832 res!839468) b!1877833))

(declare-fun m!2304905 () Bool)

(assert (=> d!573928 m!2304905))

(assert (=> d!573928 m!2303327))

(declare-fun m!2304907 () Bool)

(assert (=> d!573928 m!2304907))

(assert (=> d!573928 m!2303329))

(declare-fun m!2304909 () Bool)

(assert (=> d!573928 m!2304909))

(assert (=> b!1877831 m!2303329))

(declare-fun m!2304911 () Bool)

(assert (=> b!1877831 m!2304911))

(declare-fun m!2304913 () Bool)

(assert (=> b!1877832 m!2304913))

(assert (=> b!1877832 m!2303327))

(declare-fun m!2304915 () Bool)

(assert (=> b!1877832 m!2304915))

(assert (=> b!1877832 m!2303329))

(declare-fun m!2304917 () Bool)

(assert (=> b!1877832 m!2304917))

(assert (=> b!1876931 d!573928))

(declare-fun d!573930 () Bool)

(assert (=> d!573930 (= (list!8535 (charsOf!2302 (h!26318 lt!721336))) (list!8539 (c!305735 (charsOf!2302 (h!26318 lt!721336)))))))

(declare-fun bs!412307 () Bool)

(assert (= bs!412307 d!573930))

(declare-fun m!2304919 () Bool)

(assert (=> bs!412307 m!2304919))

(assert (=> b!1876931 d!573930))

(declare-fun d!573932 () Bool)

(declare-fun lt!721549 () BalanceConc!13714)

(assert (=> d!573932 (= (list!8535 lt!721549) (originalCharacters!4517 (h!26318 lt!721336)))))

(assert (=> d!573932 (= lt!721549 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721336)))) (value!117200 (h!26318 lt!721336))))))

(assert (=> d!573932 (= (charsOf!2302 (h!26318 lt!721336)) lt!721549)))

(declare-fun b_lambda!61711 () Bool)

(assert (=> (not b_lambda!61711) (not d!573932)))

(declare-fun tb!113271 () Bool)

(declare-fun t!173563 () Bool)

(assert (=> (and b!1876224 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721336))))) t!173563) tb!113271))

(declare-fun b!1877834 () Bool)

(declare-fun e!1198404 () Bool)

(declare-fun tp!535247 () Bool)

(assert (=> b!1877834 (= e!1198404 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721336)))) (value!117200 (h!26318 lt!721336))))) tp!535247))))

(declare-fun result!137076 () Bool)

(assert (=> tb!113271 (= result!137076 (and (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721336)))) (value!117200 (h!26318 lt!721336)))) e!1198404))))

(assert (= tb!113271 b!1877834))

(declare-fun m!2304921 () Bool)

(assert (=> b!1877834 m!2304921))

(declare-fun m!2304923 () Bool)

(assert (=> tb!113271 m!2304923))

(assert (=> d!573932 t!173563))

(declare-fun b_and!144657 () Bool)

(assert (= b_and!144651 (and (=> t!173563 result!137076) b_and!144657)))

(declare-fun tb!113273 () Bool)

(declare-fun t!173565 () Bool)

(assert (=> (and b!1877022 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721336))))) t!173565) tb!113273))

(declare-fun result!137078 () Bool)

(assert (= result!137078 result!137076))

(assert (=> d!573932 t!173565))

(declare-fun b_and!144659 () Bool)

(assert (= b_and!144653 (and (=> t!173565 result!137078) b_and!144659)))

(declare-fun tb!113275 () Bool)

(declare-fun t!173567 () Bool)

(assert (=> (and b!1877033 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721336))))) t!173567) tb!113275))

(declare-fun result!137080 () Bool)

(assert (= result!137080 result!137076))

(assert (=> d!573932 t!173567))

(declare-fun b_and!144661 () Bool)

(assert (= b_and!144655 (and (=> t!173567 result!137080) b_and!144661)))

(declare-fun m!2304925 () Bool)

(assert (=> d!573932 m!2304925))

(declare-fun m!2304927 () Bool)

(assert (=> d!573932 m!2304927))

(assert (=> b!1876931 d!573932))

(declare-fun d!573934 () Bool)

(declare-fun c!306125 () Bool)

(assert (=> d!573934 (= c!306125 ((_ is Cons!20917) (t!173228 lt!721336)))))

(declare-fun e!1198405 () List!20998)

(assert (=> d!573934 (= (printList!1012 thiss!13718 (t!173228 lt!721336)) e!1198405)))

(declare-fun b!1877835 () Bool)

(assert (=> b!1877835 (= e!1198405 (++!5686 (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721336)))) (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721336)))))))

(declare-fun b!1877836 () Bool)

(assert (=> b!1877836 (= e!1198405 Nil!20916)))

(assert (= (and d!573934 c!306125) b!1877835))

(assert (= (and d!573934 (not c!306125)) b!1877836))

(declare-fun m!2304929 () Bool)

(assert (=> b!1877835 m!2304929))

(assert (=> b!1877835 m!2304929))

(declare-fun m!2304931 () Bool)

(assert (=> b!1877835 m!2304931))

(declare-fun m!2304933 () Bool)

(assert (=> b!1877835 m!2304933))

(assert (=> b!1877835 m!2304931))

(assert (=> b!1877835 m!2304933))

(declare-fun m!2304935 () Bool)

(assert (=> b!1877835 m!2304935))

(assert (=> b!1876931 d!573934))

(declare-fun d!573936 () Bool)

(declare-fun lt!721550 () Int)

(assert (=> d!573936 (>= lt!721550 0)))

(declare-fun e!1198406 () Int)

(assert (=> d!573936 (= lt!721550 e!1198406)))

(declare-fun c!306126 () Bool)

(assert (=> d!573936 (= c!306126 ((_ is Nil!20917) (list!8536 (c!305736 v!6352))))))

(assert (=> d!573936 (= (size!16601 (list!8536 (c!305736 v!6352))) lt!721550)))

(declare-fun b!1877837 () Bool)

(assert (=> b!1877837 (= e!1198406 0)))

(declare-fun b!1877838 () Bool)

(assert (=> b!1877838 (= e!1198406 (+ 1 (size!16601 (t!173228 (list!8536 (c!305736 v!6352))))))))

(assert (= (and d!573936 c!306126) b!1877837))

(assert (= (and d!573936 (not c!306126)) b!1877838))

(declare-fun m!2304937 () Bool)

(assert (=> b!1877838 m!2304937))

(assert (=> d!573338 d!573936))

(assert (=> d!573338 d!573328))

(declare-fun d!573938 () Bool)

(assert (=> d!573938 (= (list!8535 lt!721376) (list!8539 (c!305735 lt!721376)))))

(declare-fun bs!412308 () Bool)

(assert (= bs!412308 d!573938))

(declare-fun m!2304939 () Bool)

(assert (=> bs!412308 m!2304939))

(assert (=> d!573192 d!573938))

(declare-fun b!1877839 () Bool)

(declare-fun res!839470 () Bool)

(declare-fun e!1198407 () Bool)

(assert (=> b!1877839 (=> (not res!839470) (not e!1198407))))

(assert (=> b!1877839 (= res!839470 (<= (- (height!1087 (left!16811 (right!17141 (c!305736 acc!408)))) (height!1087 (right!17141 (right!17141 (c!305736 acc!408))))) 1))))

(declare-fun b!1877840 () Bool)

(declare-fun e!1198408 () Bool)

(assert (=> b!1877840 (= e!1198408 e!1198407)))

(declare-fun res!839471 () Bool)

(assert (=> b!1877840 (=> (not res!839471) (not e!1198407))))

(assert (=> b!1877840 (= res!839471 (<= (- 1) (- (height!1087 (left!16811 (right!17141 (c!305736 acc!408)))) (height!1087 (right!17141 (right!17141 (c!305736 acc!408)))))))))

(declare-fun b!1877841 () Bool)

(declare-fun res!839472 () Bool)

(assert (=> b!1877841 (=> (not res!839472) (not e!1198407))))

(assert (=> b!1877841 (= res!839472 (not (isEmpty!12976 (left!16811 (right!17141 (c!305736 acc!408))))))))

(declare-fun b!1877842 () Bool)

(declare-fun res!839473 () Bool)

(assert (=> b!1877842 (=> (not res!839473) (not e!1198407))))

(assert (=> b!1877842 (= res!839473 (isBalanced!2201 (left!16811 (right!17141 (c!305736 acc!408)))))))

(declare-fun b!1877843 () Bool)

(declare-fun res!839475 () Bool)

(assert (=> b!1877843 (=> (not res!839475) (not e!1198407))))

(assert (=> b!1877843 (= res!839475 (isBalanced!2201 (right!17141 (right!17141 (c!305736 acc!408)))))))

(declare-fun d!573940 () Bool)

(declare-fun res!839474 () Bool)

(assert (=> d!573940 (=> res!839474 e!1198408)))

(assert (=> d!573940 (= res!839474 (not ((_ is Node!6950) (right!17141 (c!305736 acc!408)))))))

(assert (=> d!573940 (= (isBalanced!2201 (right!17141 (c!305736 acc!408))) e!1198408)))

(declare-fun b!1877844 () Bool)

(assert (=> b!1877844 (= e!1198407 (not (isEmpty!12976 (right!17141 (right!17141 (c!305736 acc!408))))))))

(assert (= (and d!573940 (not res!839474)) b!1877840))

(assert (= (and b!1877840 res!839471) b!1877839))

(assert (= (and b!1877839 res!839470) b!1877842))

(assert (= (and b!1877842 res!839473) b!1877843))

(assert (= (and b!1877843 res!839475) b!1877841))

(assert (= (and b!1877841 res!839472) b!1877844))

(declare-fun m!2304941 () Bool)

(assert (=> b!1877841 m!2304941))

(declare-fun m!2304943 () Bool)

(assert (=> b!1877844 m!2304943))

(declare-fun m!2304945 () Bool)

(assert (=> b!1877840 m!2304945))

(declare-fun m!2304947 () Bool)

(assert (=> b!1877840 m!2304947))

(declare-fun m!2304949 () Bool)

(assert (=> b!1877843 m!2304949))

(assert (=> b!1877839 m!2304945))

(assert (=> b!1877839 m!2304947))

(declare-fun m!2304951 () Bool)

(assert (=> b!1877842 m!2304951))

(assert (=> b!1876903 d!573940))

(declare-fun b!1877848 () Bool)

(declare-fun e!1198410 () Bool)

(declare-fun lt!721551 () List!20998)

(assert (=> b!1877848 (= e!1198410 (or (not (= (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) Nil!20916)) (= lt!721551 (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))))))

(declare-fun d!573942 () Bool)

(assert (=> d!573942 e!1198410))

(declare-fun res!839477 () Bool)

(assert (=> d!573942 (=> (not res!839477) (not e!1198410))))

(assert (=> d!573942 (= res!839477 (= (content!3113 lt!721551) ((_ map or) (content!3113 (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) (content!3113 (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))))))

(declare-fun e!1198409 () List!20998)

(assert (=> d!573942 (= lt!721551 e!1198409)))

(declare-fun c!306127 () Bool)

(assert (=> d!573942 (= c!306127 ((_ is Nil!20916) (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))))))

(assert (=> d!573942 (= (++!5686 (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))) (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))) lt!721551)))

(declare-fun b!1877846 () Bool)

(assert (=> b!1877846 (= e!1198409 (Cons!20916 (h!26317 (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) (++!5686 (t!173227 (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))))))

(declare-fun b!1877845 () Bool)

(assert (=> b!1877845 (= e!1198409 (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))))

(declare-fun b!1877847 () Bool)

(declare-fun res!839476 () Bool)

(assert (=> b!1877847 (=> (not res!839476) (not e!1198410))))

(assert (=> b!1877847 (= res!839476 (= (size!16598 lt!721551) (+ (size!16598 (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) (size!16598 (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))))))

(assert (= (and d!573942 c!306127) b!1877845))

(assert (= (and d!573942 (not c!306127)) b!1877846))

(assert (= (and d!573942 res!839477) b!1877847))

(assert (= (and b!1877847 res!839476) b!1877848))

(declare-fun m!2304953 () Bool)

(assert (=> d!573942 m!2304953))

(assert (=> d!573942 m!2302777))

(declare-fun m!2304955 () Bool)

(assert (=> d!573942 m!2304955))

(assert (=> d!573942 m!2302779))

(declare-fun m!2304957 () Bool)

(assert (=> d!573942 m!2304957))

(assert (=> b!1877846 m!2302779))

(declare-fun m!2304959 () Bool)

(assert (=> b!1877846 m!2304959))

(declare-fun m!2304961 () Bool)

(assert (=> b!1877847 m!2304961))

(assert (=> b!1877847 m!2302777))

(declare-fun m!2304963 () Bool)

(assert (=> b!1877847 m!2304963))

(assert (=> b!1877847 m!2302779))

(declare-fun m!2304965 () Bool)

(assert (=> b!1877847 m!2304965))

(assert (=> b!1876559 d!573942))

(declare-fun d!573944 () Bool)

(assert (=> d!573944 (= (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))) (list!8539 (c!305735 (charsOf!2302 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))))))

(declare-fun bs!412309 () Bool)

(assert (= bs!412309 d!573944))

(declare-fun m!2304967 () Bool)

(assert (=> bs!412309 m!2304967))

(assert (=> b!1876559 d!573944))

(declare-fun lt!721552 () BalanceConc!13714)

(declare-fun d!573946 () Bool)

(assert (=> d!573946 (= (list!8535 lt!721552) (originalCharacters!4517 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))))

(assert (=> d!573946 (= lt!721552 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) (value!117200 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))))

(assert (=> d!573946 (= (charsOf!2302 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) lt!721552)))

(declare-fun b_lambda!61713 () Bool)

(assert (=> (not b_lambda!61713) (not d!573946)))

(declare-fun t!173569 () Bool)

(declare-fun tb!113277 () Bool)

(assert (=> (and b!1876224 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))) t!173569) tb!113277))

(declare-fun e!1198411 () Bool)

(declare-fun tp!535248 () Bool)

(declare-fun b!1877849 () Bool)

(assert (=> b!1877849 (= e!1198411 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) (value!117200 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))) tp!535248))))

(declare-fun result!137082 () Bool)

(assert (=> tb!113277 (= result!137082 (and (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) (value!117200 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) e!1198411))))

(assert (= tb!113277 b!1877849))

(declare-fun m!2304969 () Bool)

(assert (=> b!1877849 m!2304969))

(declare-fun m!2304971 () Bool)

(assert (=> tb!113277 m!2304971))

(assert (=> d!573946 t!173569))

(declare-fun b_and!144663 () Bool)

(assert (= b_and!144657 (and (=> t!173569 result!137082) b_and!144663)))

(declare-fun tb!113279 () Bool)

(declare-fun t!173571 () Bool)

(assert (=> (and b!1877022 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))) t!173571) tb!113279))

(declare-fun result!137084 () Bool)

(assert (= result!137084 result!137082))

(assert (=> d!573946 t!173571))

(declare-fun b_and!144665 () Bool)

(assert (= b_and!144659 (and (=> t!173571 result!137084) b_and!144665)))

(declare-fun t!173573 () Bool)

(declare-fun tb!113281 () Bool)

(assert (=> (and b!1877033 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))) t!173573) tb!113281))

(declare-fun result!137086 () Bool)

(assert (= result!137086 result!137082))

(assert (=> d!573946 t!173573))

(declare-fun b_and!144667 () Bool)

(assert (= b_and!144661 (and (=> t!173573 result!137086) b_and!144667)))

(declare-fun m!2304973 () Bool)

(assert (=> d!573946 m!2304973))

(declare-fun m!2304975 () Bool)

(assert (=> d!573946 m!2304975))

(assert (=> b!1876559 d!573946))

(declare-fun c!306128 () Bool)

(declare-fun d!573948 () Bool)

(assert (=> d!573948 (= c!306128 ((_ is Cons!20917) (t!173228 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))))

(declare-fun e!1198412 () List!20998)

(assert (=> d!573948 (= (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) e!1198412)))

(declare-fun b!1877850 () Bool)

(assert (=> b!1877850 (= e!1198412 (++!5686 (list!8535 (charsOf!2302 (h!26318 (t!173228 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) (printList!1012 thiss!13718 (t!173228 (t!173228 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))))))

(declare-fun b!1877851 () Bool)

(assert (=> b!1877851 (= e!1198412 Nil!20916)))

(assert (= (and d!573948 c!306128) b!1877850))

(assert (= (and d!573948 (not c!306128)) b!1877851))

(declare-fun m!2304977 () Bool)

(assert (=> b!1877850 m!2304977))

(assert (=> b!1877850 m!2304977))

(declare-fun m!2304979 () Bool)

(assert (=> b!1877850 m!2304979))

(declare-fun m!2304981 () Bool)

(assert (=> b!1877850 m!2304981))

(assert (=> b!1877850 m!2304979))

(assert (=> b!1877850 m!2304981))

(declare-fun m!2304983 () Bool)

(assert (=> b!1877850 m!2304983))

(assert (=> b!1876559 d!573948))

(declare-fun b!1877854 () Bool)

(declare-fun res!839478 () Bool)

(declare-fun e!1198413 () Bool)

(assert (=> b!1877854 (=> (not res!839478) (not e!1198413))))

(declare-fun lt!721553 () List!20999)

(assert (=> b!1877854 (= res!839478 (= (size!16601 lt!721553) (+ (size!16601 (list!8536 (left!16811 (c!305736 v!6352)))) (size!16601 (list!8536 (right!17141 (c!305736 v!6352)))))))))

(declare-fun b!1877852 () Bool)

(declare-fun e!1198414 () List!20999)

(assert (=> b!1877852 (= e!1198414 (list!8536 (right!17141 (c!305736 v!6352))))))

(declare-fun d!573950 () Bool)

(assert (=> d!573950 e!1198413))

(declare-fun res!839479 () Bool)

(assert (=> d!573950 (=> (not res!839479) (not e!1198413))))

(assert (=> d!573950 (= res!839479 (= (content!3111 lt!721553) ((_ map or) (content!3111 (list!8536 (left!16811 (c!305736 v!6352)))) (content!3111 (list!8536 (right!17141 (c!305736 v!6352)))))))))

(assert (=> d!573950 (= lt!721553 e!1198414)))

(declare-fun c!306129 () Bool)

(assert (=> d!573950 (= c!306129 ((_ is Nil!20917) (list!8536 (left!16811 (c!305736 v!6352)))))))

(assert (=> d!573950 (= (++!5684 (list!8536 (left!16811 (c!305736 v!6352))) (list!8536 (right!17141 (c!305736 v!6352)))) lt!721553)))

(declare-fun b!1877853 () Bool)

(assert (=> b!1877853 (= e!1198414 (Cons!20917 (h!26318 (list!8536 (left!16811 (c!305736 v!6352)))) (++!5684 (t!173228 (list!8536 (left!16811 (c!305736 v!6352)))) (list!8536 (right!17141 (c!305736 v!6352))))))))

(declare-fun b!1877855 () Bool)

(assert (=> b!1877855 (= e!1198413 (or (not (= (list!8536 (right!17141 (c!305736 v!6352))) Nil!20917)) (= lt!721553 (list!8536 (left!16811 (c!305736 v!6352))))))))

(assert (= (and d!573950 c!306129) b!1877852))

(assert (= (and d!573950 (not c!306129)) b!1877853))

(assert (= (and d!573950 res!839479) b!1877854))

(assert (= (and b!1877854 res!839478) b!1877855))

(declare-fun m!2304985 () Bool)

(assert (=> b!1877854 m!2304985))

(assert (=> b!1877854 m!2303223))

(declare-fun m!2304987 () Bool)

(assert (=> b!1877854 m!2304987))

(assert (=> b!1877854 m!2303225))

(declare-fun m!2304989 () Bool)

(assert (=> b!1877854 m!2304989))

(declare-fun m!2304991 () Bool)

(assert (=> d!573950 m!2304991))

(assert (=> d!573950 m!2303223))

(declare-fun m!2304993 () Bool)

(assert (=> d!573950 m!2304993))

(assert (=> d!573950 m!2303225))

(declare-fun m!2304995 () Bool)

(assert (=> d!573950 m!2304995))

(assert (=> b!1877853 m!2303225))

(declare-fun m!2304997 () Bool)

(assert (=> b!1877853 m!2304997))

(assert (=> b!1876858 d!573950))

(declare-fun d!573952 () Bool)

(declare-fun c!306130 () Bool)

(assert (=> d!573952 (= c!306130 ((_ is Empty!6950) (left!16811 (c!305736 v!6352))))))

(declare-fun e!1198415 () List!20999)

(assert (=> d!573952 (= (list!8536 (left!16811 (c!305736 v!6352))) e!1198415)))

(declare-fun b!1877859 () Bool)

(declare-fun e!1198416 () List!20999)

(assert (=> b!1877859 (= e!1198416 (++!5684 (list!8536 (left!16811 (left!16811 (c!305736 v!6352)))) (list!8536 (right!17141 (left!16811 (c!305736 v!6352))))))))

(declare-fun b!1877856 () Bool)

(assert (=> b!1877856 (= e!1198415 Nil!20917)))

(declare-fun b!1877858 () Bool)

(assert (=> b!1877858 (= e!1198416 (list!8540 (xs!9834 (left!16811 (c!305736 v!6352)))))))

(declare-fun b!1877857 () Bool)

(assert (=> b!1877857 (= e!1198415 e!1198416)))

(declare-fun c!306131 () Bool)

(assert (=> b!1877857 (= c!306131 ((_ is Leaf!10226) (left!16811 (c!305736 v!6352))))))

(assert (= (and d!573952 c!306130) b!1877856))

(assert (= (and d!573952 (not c!306130)) b!1877857))

(assert (= (and b!1877857 c!306131) b!1877858))

(assert (= (and b!1877857 (not c!306131)) b!1877859))

(declare-fun m!2304999 () Bool)

(assert (=> b!1877859 m!2304999))

(declare-fun m!2305001 () Bool)

(assert (=> b!1877859 m!2305001))

(assert (=> b!1877859 m!2304999))

(assert (=> b!1877859 m!2305001))

(declare-fun m!2305003 () Bool)

(assert (=> b!1877859 m!2305003))

(assert (=> b!1877858 m!2304727))

(assert (=> b!1876858 d!573952))

(declare-fun d!573954 () Bool)

(declare-fun c!306132 () Bool)

(assert (=> d!573954 (= c!306132 ((_ is Empty!6950) (right!17141 (c!305736 v!6352))))))

(declare-fun e!1198417 () List!20999)

(assert (=> d!573954 (= (list!8536 (right!17141 (c!305736 v!6352))) e!1198417)))

(declare-fun b!1877863 () Bool)

(declare-fun e!1198418 () List!20999)

(assert (=> b!1877863 (= e!1198418 (++!5684 (list!8536 (left!16811 (right!17141 (c!305736 v!6352)))) (list!8536 (right!17141 (right!17141 (c!305736 v!6352))))))))

(declare-fun b!1877860 () Bool)

(assert (=> b!1877860 (= e!1198417 Nil!20917)))

(declare-fun b!1877862 () Bool)

(assert (=> b!1877862 (= e!1198418 (list!8540 (xs!9834 (right!17141 (c!305736 v!6352)))))))

(declare-fun b!1877861 () Bool)

(assert (=> b!1877861 (= e!1198417 e!1198418)))

(declare-fun c!306133 () Bool)

(assert (=> b!1877861 (= c!306133 ((_ is Leaf!10226) (right!17141 (c!305736 v!6352))))))

(assert (= (and d!573954 c!306132) b!1877860))

(assert (= (and d!573954 (not c!306132)) b!1877861))

(assert (= (and b!1877861 c!306133) b!1877862))

(assert (= (and b!1877861 (not c!306133)) b!1877863))

(declare-fun m!2305005 () Bool)

(assert (=> b!1877863 m!2305005))

(declare-fun m!2305007 () Bool)

(assert (=> b!1877863 m!2305007))

(assert (=> b!1877863 m!2305005))

(assert (=> b!1877863 m!2305007))

(declare-fun m!2305009 () Bool)

(assert (=> b!1877863 m!2305009))

(declare-fun m!2305011 () Bool)

(assert (=> b!1877862 m!2305011))

(assert (=> b!1876858 d!573954))

(declare-fun d!573956 () Bool)

(assert (=> d!573956 (= (list!8535 lt!721425) (list!8539 (c!305735 lt!721425)))))

(declare-fun bs!412310 () Bool)

(assert (= bs!412310 d!573956))

(declare-fun m!2305013 () Bool)

(assert (=> bs!412310 m!2305013))

(assert (=> d!573350 d!573956))

(assert (=> b!1876937 d!573154))

(declare-fun b!1877867 () Bool)

(declare-fun e!1198420 () Bool)

(declare-fun lt!721554 () List!20998)

(assert (=> b!1877867 (= e!1198420 (or (not (= (list!8535 (charsOf!2302 separatorToken!84)) Nil!20916)) (= lt!721554 (list!8535 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))))

(declare-fun d!573958 () Bool)

(assert (=> d!573958 e!1198420))

(declare-fun res!839481 () Bool)

(assert (=> d!573958 (=> (not res!839481) (not e!1198420))))

(assert (=> d!573958 (= res!839481 (= (content!3113 lt!721554) ((_ map or) (content!3113 (list!8535 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (content!3113 (list!8535 (charsOf!2302 separatorToken!84))))))))

(declare-fun e!1198419 () List!20998)

(assert (=> d!573958 (= lt!721554 e!1198419)))

(declare-fun c!306134 () Bool)

(assert (=> d!573958 (= c!306134 ((_ is Nil!20916) (list!8535 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))))

(assert (=> d!573958 (= (++!5686 (list!8535 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))) (list!8535 (charsOf!2302 separatorToken!84))) lt!721554)))

(declare-fun b!1877865 () Bool)

(assert (=> b!1877865 (= e!1198419 (Cons!20916 (h!26317 (list!8535 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (++!5686 (t!173227 (list!8535 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (list!8535 (charsOf!2302 separatorToken!84)))))))

(declare-fun b!1877864 () Bool)

(assert (=> b!1877864 (= e!1198419 (list!8535 (charsOf!2302 separatorToken!84)))))

(declare-fun b!1877866 () Bool)

(declare-fun res!839480 () Bool)

(assert (=> b!1877866 (=> (not res!839480) (not e!1198420))))

(assert (=> b!1877866 (= res!839480 (= (size!16598 lt!721554) (+ (size!16598 (list!8535 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (size!16598 (list!8535 (charsOf!2302 separatorToken!84))))))))

(assert (= (and d!573958 c!306134) b!1877864))

(assert (= (and d!573958 (not c!306134)) b!1877865))

(assert (= (and d!573958 res!839481) b!1877866))

(assert (= (and b!1877866 res!839480) b!1877867))

(declare-fun m!2305015 () Bool)

(assert (=> d!573958 m!2305015))

(assert (=> d!573958 m!2302519))

(declare-fun m!2305017 () Bool)

(assert (=> d!573958 m!2305017))

(assert (=> d!573958 m!2302535))

(declare-fun m!2305019 () Bool)

(assert (=> d!573958 m!2305019))

(assert (=> b!1877865 m!2302535))

(declare-fun m!2305021 () Bool)

(assert (=> b!1877865 m!2305021))

(declare-fun m!2305023 () Bool)

(assert (=> b!1877866 m!2305023))

(assert (=> b!1877866 m!2302519))

(declare-fun m!2305025 () Bool)

(assert (=> b!1877866 m!2305025))

(assert (=> b!1877866 m!2302535))

(declare-fun m!2305027 () Bool)

(assert (=> b!1877866 m!2305027))

(assert (=> b!1876937 d!573958))

(assert (=> b!1876937 d!573850))

(declare-fun e!1198422 () Bool)

(declare-fun b!1877871 () Bool)

(declare-fun lt!721555 () List!20998)

(assert (=> b!1877871 (= e!1198422 (or (not (= (printWithSeparatorTokenList!70 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) Nil!20916)) (= lt!721555 (++!5686 (list!8535 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))) (list!8535 (charsOf!2302 separatorToken!84))))))))

(declare-fun d!573960 () Bool)

(assert (=> d!573960 e!1198422))

(declare-fun res!839483 () Bool)

(assert (=> d!573960 (=> (not res!839483) (not e!1198422))))

(assert (=> d!573960 (= res!839483 (= (content!3113 lt!721555) ((_ map or) (content!3113 (++!5686 (list!8535 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))) (list!8535 (charsOf!2302 separatorToken!84)))) (content!3113 (printWithSeparatorTokenList!70 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))))

(declare-fun e!1198421 () List!20998)

(assert (=> d!573960 (= lt!721555 e!1198421)))

(declare-fun c!306135 () Bool)

(assert (=> d!573960 (= c!306135 ((_ is Nil!20916) (++!5686 (list!8535 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))) (list!8535 (charsOf!2302 separatorToken!84)))))))

(assert (=> d!573960 (= (++!5686 (++!5686 (list!8535 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))) (list!8535 (charsOf!2302 separatorToken!84))) (printWithSeparatorTokenList!70 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)) lt!721555)))

(declare-fun b!1877869 () Bool)

(assert (=> b!1877869 (= e!1198421 (Cons!20916 (h!26317 (++!5686 (list!8535 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))) (list!8535 (charsOf!2302 separatorToken!84)))) (++!5686 (t!173227 (++!5686 (list!8535 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))) (list!8535 (charsOf!2302 separatorToken!84)))) (printWithSeparatorTokenList!70 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))))

(declare-fun b!1877868 () Bool)

(assert (=> b!1877868 (= e!1198421 (printWithSeparatorTokenList!70 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84))))

(declare-fun b!1877870 () Bool)

(declare-fun res!839482 () Bool)

(assert (=> b!1877870 (=> (not res!839482) (not e!1198422))))

(assert (=> b!1877870 (= res!839482 (= (size!16598 lt!721555) (+ (size!16598 (++!5686 (list!8535 (charsOf!2302 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))) (list!8535 (charsOf!2302 separatorToken!84)))) (size!16598 (printWithSeparatorTokenList!70 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))))

(assert (= (and d!573960 c!306135) b!1877868))

(assert (= (and d!573960 (not c!306135)) b!1877869))

(assert (= (and d!573960 res!839483) b!1877870))

(assert (= (and b!1877870 res!839482) b!1877871))

(declare-fun m!2305029 () Bool)

(assert (=> d!573960 m!2305029))

(assert (=> d!573960 m!2303333))

(declare-fun m!2305031 () Bool)

(assert (=> d!573960 m!2305031))

(assert (=> d!573960 m!2302739))

(declare-fun m!2305033 () Bool)

(assert (=> d!573960 m!2305033))

(assert (=> b!1877869 m!2302739))

(declare-fun m!2305035 () Bool)

(assert (=> b!1877869 m!2305035))

(declare-fun m!2305037 () Bool)

(assert (=> b!1877870 m!2305037))

(assert (=> b!1877870 m!2303333))

(declare-fun m!2305039 () Bool)

(assert (=> b!1877870 m!2305039))

(assert (=> b!1877870 m!2302739))

(declare-fun m!2305041 () Bool)

(assert (=> b!1877870 m!2305041))

(assert (=> b!1876937 d!573960))

(assert (=> b!1876937 d!573172))

(assert (=> b!1876937 d!573164))

(assert (=> b!1876937 d!573170))

(declare-fun d!573962 () Bool)

(assert (=> d!573962 (= (inv!27815 (tag!4124 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (= (mod (str.len (value!117199 (tag!4124 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) 2) 0))))

(assert (=> b!1877021 d!573962))

(declare-fun d!573964 () Bool)

(declare-fun res!839484 () Bool)

(declare-fun e!1198423 () Bool)

(assert (=> d!573964 (=> (not res!839484) (not e!1198423))))

(assert (=> d!573964 (= res!839484 (semiInverseModEq!1514 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toValue!5307 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))))))

(assert (=> d!573964 (= (inv!27820 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) e!1198423)))

(declare-fun b!1877872 () Bool)

(assert (=> b!1877872 (= e!1198423 (equivClasses!1441 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toValue!5307 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))))))

(assert (= (and d!573964 res!839484) b!1877872))

(declare-fun m!2305043 () Bool)

(assert (=> d!573964 m!2305043))

(declare-fun m!2305045 () Bool)

(assert (=> b!1877872 m!2305045))

(assert (=> b!1877021 d!573964))

(declare-fun d!573966 () Bool)

(declare-fun c!306136 () Bool)

(assert (=> d!573966 (= c!306136 ((_ is Nil!20916) lt!721362))))

(declare-fun e!1198424 () (InoxSet C!10396))

(assert (=> d!573966 (= (content!3113 lt!721362) e!1198424)))

(declare-fun b!1877873 () Bool)

(assert (=> b!1877873 (= e!1198424 ((as const (Array C!10396 Bool)) false))))

(declare-fun b!1877874 () Bool)

(assert (=> b!1877874 (= e!1198424 ((_ map or) (store ((as const (Array C!10396 Bool)) false) (h!26317 lt!721362) true) (content!3113 (t!173227 lt!721362))))))

(assert (= (and d!573966 c!306136) b!1877873))

(assert (= (and d!573966 (not c!306136)) b!1877874))

(declare-fun m!2305047 () Bool)

(assert (=> b!1877874 m!2305047))

(declare-fun m!2305049 () Bool)

(assert (=> b!1877874 m!2305049))

(assert (=> d!573160 d!573966))

(declare-fun d!573968 () Bool)

(declare-fun c!306137 () Bool)

(assert (=> d!573968 (= c!306137 ((_ is Nil!20916) lt!721338))))

(declare-fun e!1198425 () (InoxSet C!10396))

(assert (=> d!573968 (= (content!3113 lt!721338) e!1198425)))

(declare-fun b!1877875 () Bool)

(assert (=> b!1877875 (= e!1198425 ((as const (Array C!10396 Bool)) false))))

(declare-fun b!1877876 () Bool)

(assert (=> b!1877876 (= e!1198425 ((_ map or) (store ((as const (Array C!10396 Bool)) false) (h!26317 lt!721338) true) (content!3113 (t!173227 lt!721338))))))

(assert (= (and d!573968 c!306137) b!1877875))

(assert (= (and d!573968 (not c!306137)) b!1877876))

(declare-fun m!2305051 () Bool)

(assert (=> b!1877876 m!2305051))

(assert (=> b!1877876 m!2304661))

(assert (=> d!573160 d!573968))

(assert (=> d!573160 d!573876))

(declare-fun d!573970 () Bool)

(assert (=> d!573970 (= (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))) (value!117200 (h!26318 lt!721335)))) (isBalanced!2203 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))) (value!117200 (h!26318 lt!721335))))))))

(declare-fun bs!412311 () Bool)

(assert (= bs!412311 d!573970))

(declare-fun m!2305053 () Bool)

(assert (=> bs!412311 m!2305053))

(assert (=> tb!112983 d!573970))

(declare-fun e!1198427 () Bool)

(declare-fun lt!721556 () List!20998)

(declare-fun b!1877880 () Bool)

(assert (=> b!1877880 (= e!1198427 (or (not (= (++!5686 lt!721332 lt!721333) Nil!20916)) (= lt!721556 (t!173227 lt!721338))))))

(declare-fun d!573972 () Bool)

(assert (=> d!573972 e!1198427))

(declare-fun res!839486 () Bool)

(assert (=> d!573972 (=> (not res!839486) (not e!1198427))))

(assert (=> d!573972 (= res!839486 (= (content!3113 lt!721556) ((_ map or) (content!3113 (t!173227 lt!721338)) (content!3113 (++!5686 lt!721332 lt!721333)))))))

(declare-fun e!1198426 () List!20998)

(assert (=> d!573972 (= lt!721556 e!1198426)))

(declare-fun c!306138 () Bool)

(assert (=> d!573972 (= c!306138 ((_ is Nil!20916) (t!173227 lt!721338)))))

(assert (=> d!573972 (= (++!5686 (t!173227 lt!721338) (++!5686 lt!721332 lt!721333)) lt!721556)))

(declare-fun b!1877878 () Bool)

(assert (=> b!1877878 (= e!1198426 (Cons!20916 (h!26317 (t!173227 lt!721338)) (++!5686 (t!173227 (t!173227 lt!721338)) (++!5686 lt!721332 lt!721333))))))

(declare-fun b!1877877 () Bool)

(assert (=> b!1877877 (= e!1198426 (++!5686 lt!721332 lt!721333))))

(declare-fun b!1877879 () Bool)

(declare-fun res!839485 () Bool)

(assert (=> b!1877879 (=> (not res!839485) (not e!1198427))))

(assert (=> b!1877879 (= res!839485 (= (size!16598 lt!721556) (+ (size!16598 (t!173227 lt!721338)) (size!16598 (++!5686 lt!721332 lt!721333)))))))

(assert (= (and d!573972 c!306138) b!1877877))

(assert (= (and d!573972 (not c!306138)) b!1877878))

(assert (= (and d!573972 res!839486) b!1877879))

(assert (= (and b!1877879 res!839485) b!1877880))

(declare-fun m!2305055 () Bool)

(assert (=> d!573972 m!2305055))

(assert (=> d!573972 m!2304661))

(assert (=> d!573972 m!2302529))

(assert (=> d!573972 m!2302751))

(assert (=> b!1877878 m!2302529))

(declare-fun m!2305057 () Bool)

(assert (=> b!1877878 m!2305057))

(declare-fun m!2305059 () Bool)

(assert (=> b!1877879 m!2305059))

(assert (=> b!1877879 m!2304667))

(assert (=> b!1877879 m!2302529))

(assert (=> b!1877879 m!2302757))

(assert (=> b!1876546 d!573972))

(declare-fun d!573974 () Bool)

(declare-fun c!306139 () Bool)

(assert (=> d!573974 (= c!306139 ((_ is Nil!20916) lt!721373))))

(declare-fun e!1198428 () (InoxSet C!10396))

(assert (=> d!573974 (= (content!3113 lt!721373) e!1198428)))

(declare-fun b!1877881 () Bool)

(assert (=> b!1877881 (= e!1198428 ((as const (Array C!10396 Bool)) false))))

(declare-fun b!1877882 () Bool)

(assert (=> b!1877882 (= e!1198428 ((_ map or) (store ((as const (Array C!10396 Bool)) false) (h!26317 lt!721373) true) (content!3113 (t!173227 lt!721373))))))

(assert (= (and d!573974 c!306139) b!1877881))

(assert (= (and d!573974 (not c!306139)) b!1877882))

(declare-fun m!2305061 () Bool)

(assert (=> b!1877882 m!2305061))

(declare-fun m!2305063 () Bool)

(assert (=> b!1877882 m!2305063))

(assert (=> d!573176 d!573974))

(assert (=> d!573176 d!573968))

(declare-fun d!573976 () Bool)

(declare-fun c!306140 () Bool)

(assert (=> d!573976 (= c!306140 ((_ is Nil!20916) (++!5686 lt!721332 lt!721333)))))

(declare-fun e!1198429 () (InoxSet C!10396))

(assert (=> d!573976 (= (content!3113 (++!5686 lt!721332 lt!721333)) e!1198429)))

(declare-fun b!1877883 () Bool)

(assert (=> b!1877883 (= e!1198429 ((as const (Array C!10396 Bool)) false))))

(declare-fun b!1877884 () Bool)

(assert (=> b!1877884 (= e!1198429 ((_ map or) (store ((as const (Array C!10396 Bool)) false) (h!26317 (++!5686 lt!721332 lt!721333)) true) (content!3113 (t!173227 (++!5686 lt!721332 lt!721333)))))))

(assert (= (and d!573976 c!306140) b!1877883))

(assert (= (and d!573976 (not c!306140)) b!1877884))

(declare-fun m!2305065 () Bool)

(assert (=> b!1877884 m!2305065))

(declare-fun m!2305067 () Bool)

(assert (=> b!1877884 m!2305067))

(assert (=> d!573176 d!573976))

(declare-fun d!573978 () Bool)

(declare-fun choose!11786 (Int) Bool)

(assert (=> d!573978 (= (Forall2!606 lambda!73804) (choose!11786 lambda!73804))))

(declare-fun bs!412312 () Bool)

(assert (= bs!412312 d!573978))

(declare-fun m!2305069 () Bool)

(assert (=> bs!412312 m!2305069))

(assert (=> d!573340 d!573978))

(declare-fun b!1877897 () Bool)

(declare-fun res!839502 () Bool)

(declare-fun e!1198434 () Bool)

(assert (=> b!1877897 (=> (not res!839502) (not e!1198434))))

(assert (=> b!1877897 (= res!839502 (isBalanced!2203 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))))))

(declare-fun b!1877898 () Bool)

(declare-fun res!839499 () Bool)

(assert (=> b!1877898 (=> (not res!839499) (not e!1198434))))

(declare-fun isEmpty!12980 (Conc!6949) Bool)

(assert (=> b!1877898 (= res!839499 (not (isEmpty!12980 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))))))

(declare-fun b!1877899 () Bool)

(declare-fun res!839500 () Bool)

(assert (=> b!1877899 (=> (not res!839500) (not e!1198434))))

(assert (=> b!1877899 (= res!839500 (isBalanced!2203 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))))))

(declare-fun b!1877900 () Bool)

(assert (=> b!1877900 (= e!1198434 (not (isEmpty!12980 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))))))

(declare-fun d!573980 () Bool)

(declare-fun res!839501 () Bool)

(declare-fun e!1198435 () Bool)

(assert (=> d!573980 (=> res!839501 e!1198435)))

(assert (=> d!573980 (= res!839501 (not ((_ is Node!6949) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))))))

(assert (=> d!573980 (= (isBalanced!2203 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))) e!1198435)))

(declare-fun b!1877901 () Bool)

(assert (=> b!1877901 (= e!1198435 e!1198434)))

(declare-fun res!839503 () Bool)

(assert (=> b!1877901 (=> (not res!839503) (not e!1198434))))

(declare-fun height!1089 (Conc!6949) Int)

(assert (=> b!1877901 (= res!839503 (<= (- 1) (- (height!1089 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))) (height!1089 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))))))))

(declare-fun b!1877902 () Bool)

(declare-fun res!839504 () Bool)

(assert (=> b!1877902 (=> (not res!839504) (not e!1198434))))

(assert (=> b!1877902 (= res!839504 (<= (- (height!1089 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))) (height!1089 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))) 1))))

(assert (= (and d!573980 (not res!839501)) b!1877901))

(assert (= (and b!1877901 res!839503) b!1877902))

(assert (= (and b!1877902 res!839504) b!1877897))

(assert (= (and b!1877897 res!839502) b!1877899))

(assert (= (and b!1877899 res!839500) b!1877898))

(assert (= (and b!1877898 res!839499) b!1877900))

(declare-fun m!2305071 () Bool)

(assert (=> b!1877902 m!2305071))

(declare-fun m!2305073 () Bool)

(assert (=> b!1877902 m!2305073))

(assert (=> b!1877901 m!2305071))

(assert (=> b!1877901 m!2305073))

(declare-fun m!2305075 () Bool)

(assert (=> b!1877898 m!2305075))

(declare-fun m!2305077 () Bool)

(assert (=> b!1877900 m!2305077))

(declare-fun m!2305079 () Bool)

(assert (=> b!1877897 m!2305079))

(declare-fun m!2305081 () Bool)

(assert (=> b!1877899 m!2305081))

(assert (=> d!573342 d!573980))

(declare-fun d!573982 () Bool)

(declare-fun lt!721557 () Int)

(assert (=> d!573982 (>= lt!721557 0)))

(declare-fun e!1198436 () Int)

(assert (=> d!573982 (= lt!721557 e!1198436)))

(declare-fun c!306141 () Bool)

(assert (=> d!573982 (= c!306141 ((_ is Nil!20916) (t!173227 (originalCharacters!4517 separatorToken!84))))))

(assert (=> d!573982 (= (size!16598 (t!173227 (originalCharacters!4517 separatorToken!84))) lt!721557)))

(declare-fun b!1877903 () Bool)

(assert (=> b!1877903 (= e!1198436 0)))

(declare-fun b!1877904 () Bool)

(assert (=> b!1877904 (= e!1198436 (+ 1 (size!16598 (t!173227 (t!173227 (originalCharacters!4517 separatorToken!84))))))))

(assert (= (and d!573982 c!306141) b!1877903))

(assert (= (and d!573982 (not c!306141)) b!1877904))

(declare-fun m!2305083 () Bool)

(assert (=> b!1877904 m!2305083))

(assert (=> b!1876947 d!573982))

(declare-fun d!573984 () Bool)

(declare-fun c!306142 () Bool)

(assert (=> d!573984 (= c!306142 ((_ is Nil!20916) lt!721424))))

(declare-fun e!1198437 () (InoxSet C!10396))

(assert (=> d!573984 (= (content!3113 lt!721424) e!1198437)))

(declare-fun b!1877905 () Bool)

(assert (=> b!1877905 (= e!1198437 ((as const (Array C!10396 Bool)) false))))

(declare-fun b!1877906 () Bool)

(assert (=> b!1877906 (= e!1198437 ((_ map or) (store ((as const (Array C!10396 Bool)) false) (h!26317 lt!721424) true) (content!3113 (t!173227 lt!721424))))))

(assert (= (and d!573984 c!306142) b!1877905))

(assert (= (and d!573984 (not c!306142)) b!1877906))

(declare-fun m!2305085 () Bool)

(assert (=> b!1877906 m!2305085))

(declare-fun m!2305087 () Bool)

(assert (=> b!1877906 m!2305087))

(assert (=> d!573346 d!573984))

(declare-fun d!573986 () Bool)

(declare-fun c!306143 () Bool)

(assert (=> d!573986 (= c!306143 ((_ is Nil!20916) (list!8535 (charsOf!2302 (h!26318 lt!721335)))))))

(declare-fun e!1198438 () (InoxSet C!10396))

(assert (=> d!573986 (= (content!3113 (list!8535 (charsOf!2302 (h!26318 lt!721335)))) e!1198438)))

(declare-fun b!1877907 () Bool)

(assert (=> b!1877907 (= e!1198438 ((as const (Array C!10396 Bool)) false))))

(declare-fun b!1877908 () Bool)

(assert (=> b!1877908 (= e!1198438 ((_ map or) (store ((as const (Array C!10396 Bool)) false) (h!26317 (list!8535 (charsOf!2302 (h!26318 lt!721335)))) true) (content!3113 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721335)))))))))

(assert (= (and d!573986 c!306143) b!1877907))

(assert (= (and d!573986 (not c!306143)) b!1877908))

(declare-fun m!2305089 () Bool)

(assert (=> b!1877908 m!2305089))

(declare-fun m!2305091 () Bool)

(assert (=> b!1877908 m!2305091))

(assert (=> d!573346 d!573986))

(declare-fun d!573988 () Bool)

(declare-fun c!306144 () Bool)

(assert (=> d!573988 (= c!306144 ((_ is Nil!20916) (printList!1012 thiss!13718 (t!173228 lt!721335))))))

(declare-fun e!1198439 () (InoxSet C!10396))

(assert (=> d!573988 (= (content!3113 (printList!1012 thiss!13718 (t!173228 lt!721335))) e!1198439)))

(declare-fun b!1877909 () Bool)

(assert (=> b!1877909 (= e!1198439 ((as const (Array C!10396 Bool)) false))))

(declare-fun b!1877910 () Bool)

(assert (=> b!1877910 (= e!1198439 ((_ map or) (store ((as const (Array C!10396 Bool)) false) (h!26317 (printList!1012 thiss!13718 (t!173228 lt!721335))) true) (content!3113 (t!173227 (printList!1012 thiss!13718 (t!173228 lt!721335))))))))

(assert (= (and d!573988 c!306144) b!1877909))

(assert (= (and d!573988 (not c!306144)) b!1877910))

(declare-fun m!2305093 () Bool)

(assert (=> b!1877910 m!2305093))

(declare-fun m!2305095 () Bool)

(assert (=> b!1877910 m!2305095))

(assert (=> d!573346 d!573988))

(declare-fun d!573990 () Bool)

(declare-fun lt!721558 () Int)

(assert (=> d!573990 (>= lt!721558 0)))

(declare-fun e!1198440 () Int)

(assert (=> d!573990 (= lt!721558 e!1198440)))

(declare-fun c!306145 () Bool)

(assert (=> d!573990 (= c!306145 ((_ is Nil!20917) (list!8540 (xs!9834 (c!305736 acc!408)))))))

(assert (=> d!573990 (= (size!16601 (list!8540 (xs!9834 (c!305736 acc!408)))) lt!721558)))

(declare-fun b!1877911 () Bool)

(assert (=> b!1877911 (= e!1198440 0)))

(declare-fun b!1877912 () Bool)

(assert (=> b!1877912 (= e!1198440 (+ 1 (size!16601 (t!173228 (list!8540 (xs!9834 (c!305736 acc!408)))))))))

(assert (= (and d!573990 c!306145) b!1877911))

(assert (= (and d!573990 (not c!306145)) b!1877912))

(declare-fun m!2305097 () Bool)

(assert (=> b!1877912 m!2305097))

(assert (=> b!1876952 d!573990))

(assert (=> b!1876952 d!573908))

(declare-fun d!573992 () Bool)

(declare-fun c!306146 () Bool)

(assert (=> d!573992 (= c!306146 ((_ is Nil!20916) lt!721375))))

(declare-fun e!1198441 () (InoxSet C!10396))

(assert (=> d!573992 (= (content!3113 lt!721375) e!1198441)))

(declare-fun b!1877913 () Bool)

(assert (=> b!1877913 (= e!1198441 ((as const (Array C!10396 Bool)) false))))

(declare-fun b!1877914 () Bool)

(assert (=> b!1877914 (= e!1198441 ((_ map or) (store ((as const (Array C!10396 Bool)) false) (h!26317 lt!721375) true) (content!3113 (t!173227 lt!721375))))))

(assert (= (and d!573992 c!306146) b!1877913))

(assert (= (and d!573992 (not c!306146)) b!1877914))

(declare-fun m!2305099 () Bool)

(assert (=> b!1877914 m!2305099))

(declare-fun m!2305101 () Bool)

(assert (=> b!1877914 m!2305101))

(assert (=> d!573188 d!573992))

(declare-fun d!573994 () Bool)

(declare-fun c!306147 () Bool)

(assert (=> d!573994 (= c!306147 ((_ is Nil!20916) (list!8535 (charsOf!2302 (h!26318 lt!721331)))))))

(declare-fun e!1198442 () (InoxSet C!10396))

(assert (=> d!573994 (= (content!3113 (list!8535 (charsOf!2302 (h!26318 lt!721331)))) e!1198442)))

(declare-fun b!1877915 () Bool)

(assert (=> b!1877915 (= e!1198442 ((as const (Array C!10396 Bool)) false))))

(declare-fun b!1877916 () Bool)

(assert (=> b!1877916 (= e!1198442 ((_ map or) (store ((as const (Array C!10396 Bool)) false) (h!26317 (list!8535 (charsOf!2302 (h!26318 lt!721331)))) true) (content!3113 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721331)))))))))

(assert (= (and d!573994 c!306147) b!1877915))

(assert (= (and d!573994 (not c!306147)) b!1877916))

(declare-fun m!2305103 () Bool)

(assert (=> b!1877916 m!2305103))

(declare-fun m!2305105 () Bool)

(assert (=> b!1877916 m!2305105))

(assert (=> d!573188 d!573994))

(declare-fun d!573996 () Bool)

(declare-fun c!306148 () Bool)

(assert (=> d!573996 (= c!306148 ((_ is Nil!20916) (printList!1012 thiss!13718 (t!173228 lt!721331))))))

(declare-fun e!1198443 () (InoxSet C!10396))

(assert (=> d!573996 (= (content!3113 (printList!1012 thiss!13718 (t!173228 lt!721331))) e!1198443)))

(declare-fun b!1877917 () Bool)

(assert (=> b!1877917 (= e!1198443 ((as const (Array C!10396 Bool)) false))))

(declare-fun b!1877918 () Bool)

(assert (=> b!1877918 (= e!1198443 ((_ map or) (store ((as const (Array C!10396 Bool)) false) (h!26317 (printList!1012 thiss!13718 (t!173228 lt!721331))) true) (content!3113 (t!173227 (printList!1012 thiss!13718 (t!173228 lt!721331))))))))

(assert (= (and d!573996 c!306148) b!1877917))

(assert (= (and d!573996 (not c!306148)) b!1877918))

(declare-fun m!2305107 () Bool)

(assert (=> b!1877918 m!2305107))

(declare-fun m!2305109 () Bool)

(assert (=> b!1877918 m!2305109))

(assert (=> d!573188 d!573996))

(declare-fun d!573998 () Bool)

(declare-fun res!839505 () Bool)

(declare-fun e!1198444 () Bool)

(assert (=> d!573998 (=> (not res!839505) (not e!1198444))))

(assert (=> d!573998 (= res!839505 (not (isEmpty!12974 (originalCharacters!4517 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))))))

(assert (=> d!573998 (= (inv!27823 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))) e!1198444)))

(declare-fun b!1877919 () Bool)

(declare-fun res!839506 () Bool)

(assert (=> b!1877919 (=> (not res!839506) (not e!1198444))))

(assert (=> b!1877919 (= res!839506 (= (originalCharacters!4517 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))) (list!8535 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))))))

(declare-fun b!1877920 () Bool)

(assert (=> b!1877920 (= e!1198444 (= (size!16595 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))) (size!16598 (originalCharacters!4517 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))))))

(assert (= (and d!573998 res!839505) b!1877919))

(assert (= (and b!1877919 res!839506) b!1877920))

(declare-fun b_lambda!61715 () Bool)

(assert (=> (not b_lambda!61715) (not b!1877919)))

(declare-fun t!173576 () Bool)

(declare-fun tb!113283 () Bool)

(assert (=> (and b!1876224 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) t!173576) tb!113283))

(declare-fun b!1877921 () Bool)

(declare-fun e!1198445 () Bool)

(declare-fun tp!535249 () Bool)

(assert (=> b!1877921 (= e!1198445 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) tp!535249))))

(declare-fun result!137088 () Bool)

(assert (=> tb!113283 (= result!137088 (and (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) e!1198445))))

(assert (= tb!113283 b!1877921))

(declare-fun m!2305111 () Bool)

(assert (=> b!1877921 m!2305111))

(declare-fun m!2305113 () Bool)

(assert (=> tb!113283 m!2305113))

(assert (=> b!1877919 t!173576))

(declare-fun b_and!144669 () Bool)

(assert (= b_and!144663 (and (=> t!173576 result!137088) b_and!144669)))

(declare-fun t!173578 () Bool)

(declare-fun tb!113285 () Bool)

(assert (=> (and b!1877022 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) t!173578) tb!113285))

(declare-fun result!137090 () Bool)

(assert (= result!137090 result!137088))

(assert (=> b!1877919 t!173578))

(declare-fun b_and!144671 () Bool)

(assert (= b_and!144665 (and (=> t!173578 result!137090) b_and!144671)))

(declare-fun t!173580 () Bool)

(declare-fun tb!113287 () Bool)

(assert (=> (and b!1877033 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) t!173580) tb!113287))

(declare-fun result!137092 () Bool)

(assert (= result!137092 result!137088))

(assert (=> b!1877919 t!173580))

(declare-fun b_and!144673 () Bool)

(assert (= b_and!144667 (and (=> t!173580 result!137092) b_and!144673)))

(declare-fun m!2305115 () Bool)

(assert (=> d!573998 m!2305115))

(declare-fun m!2305117 () Bool)

(assert (=> b!1877919 m!2305117))

(assert (=> b!1877919 m!2305117))

(declare-fun m!2305119 () Bool)

(assert (=> b!1877919 m!2305119))

(declare-fun m!2305121 () Bool)

(assert (=> b!1877920 m!2305121))

(assert (=> b!1877030 d!573998))

(declare-fun d!574000 () Bool)

(assert (=> d!574000 (= (list!8540 (xs!9834 (c!305736 v!6352))) (innerList!7010 (xs!9834 (c!305736 v!6352))))))

(assert (=> b!1876857 d!574000))

(declare-fun d!574002 () Bool)

(declare-fun res!839507 () Bool)

(declare-fun e!1198446 () Bool)

(assert (=> d!574002 (=> (not res!839507) (not e!1198446))))

(assert (=> d!574002 (= res!839507 (= (csize!14130 (left!16811 (c!305736 v!6352))) (+ (size!16602 (left!16811 (left!16811 (c!305736 v!6352)))) (size!16602 (right!17141 (left!16811 (c!305736 v!6352)))))))))

(assert (=> d!574002 (= (inv!27826 (left!16811 (c!305736 v!6352))) e!1198446)))

(declare-fun b!1877922 () Bool)

(declare-fun res!839508 () Bool)

(assert (=> b!1877922 (=> (not res!839508) (not e!1198446))))

(assert (=> b!1877922 (= res!839508 (and (not (= (left!16811 (left!16811 (c!305736 v!6352))) Empty!6950)) (not (= (right!17141 (left!16811 (c!305736 v!6352))) Empty!6950))))))

(declare-fun b!1877923 () Bool)

(declare-fun res!839509 () Bool)

(assert (=> b!1877923 (=> (not res!839509) (not e!1198446))))

(assert (=> b!1877923 (= res!839509 (= (cheight!7161 (left!16811 (c!305736 v!6352))) (+ (max!0 (height!1087 (left!16811 (left!16811 (c!305736 v!6352)))) (height!1087 (right!17141 (left!16811 (c!305736 v!6352))))) 1)))))

(declare-fun b!1877924 () Bool)

(assert (=> b!1877924 (= e!1198446 (<= 0 (cheight!7161 (left!16811 (c!305736 v!6352)))))))

(assert (= (and d!574002 res!839507) b!1877922))

(assert (= (and b!1877922 res!839508) b!1877923))

(assert (= (and b!1877923 res!839509) b!1877924))

(declare-fun m!2305123 () Bool)

(assert (=> d!574002 m!2305123))

(declare-fun m!2305125 () Bool)

(assert (=> d!574002 m!2305125))

(declare-fun m!2305127 () Bool)

(assert (=> b!1877923 m!2305127))

(declare-fun m!2305129 () Bool)

(assert (=> b!1877923 m!2305129))

(assert (=> b!1877923 m!2305127))

(assert (=> b!1877923 m!2305129))

(declare-fun m!2305131 () Bool)

(assert (=> b!1877923 m!2305131))

(assert (=> b!1876958 d!574002))

(declare-fun b!1877928 () Bool)

(declare-fun e!1198448 () Bool)

(declare-fun lt!721559 () List!20998)

(assert (=> b!1877928 (= e!1198448 (or (not (= (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))) Nil!20916)) (= lt!721559 (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))))))))

(declare-fun d!574004 () Bool)

(assert (=> d!574004 e!1198448))

(declare-fun res!839511 () Bool)

(assert (=> d!574004 (=> (not res!839511) (not e!1198448))))

(assert (=> d!574004 (= res!839511 (= (content!3113 lt!721559) ((_ map or) (content!3113 (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))))) (content!3113 (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))))))))

(declare-fun e!1198447 () List!20998)

(assert (=> d!574004 (= lt!721559 e!1198447)))

(declare-fun c!306149 () Bool)

(assert (=> d!574004 (= c!306149 ((_ is Nil!20916) (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))))))))

(assert (=> d!574004 (= (++!5686 (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))) (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))) lt!721559)))

(declare-fun b!1877926 () Bool)

(assert (=> b!1877926 (= e!1198447 (Cons!20916 (h!26317 (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))))) (++!5686 (t!173227 (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))))) (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))))))))

(declare-fun b!1877925 () Bool)

(assert (=> b!1877925 (= e!1198447 (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))))))

(declare-fun b!1877927 () Bool)

(declare-fun res!839510 () Bool)

(assert (=> b!1877927 (=> (not res!839510) (not e!1198448))))

(assert (=> b!1877927 (= res!839510 (= (size!16598 lt!721559) (+ (size!16598 (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))))) (size!16598 (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))))))))

(assert (= (and d!574004 c!306149) b!1877925))

(assert (= (and d!574004 (not c!306149)) b!1877926))

(assert (= (and d!574004 res!839511) b!1877927))

(assert (= (and b!1877927 res!839510) b!1877928))

(declare-fun m!2305133 () Bool)

(assert (=> d!574004 m!2305133))

(assert (=> d!574004 m!2303373))

(declare-fun m!2305135 () Bool)

(assert (=> d!574004 m!2305135))

(assert (=> d!574004 m!2303375))

(declare-fun m!2305137 () Bool)

(assert (=> d!574004 m!2305137))

(assert (=> b!1877926 m!2303375))

(declare-fun m!2305139 () Bool)

(assert (=> b!1877926 m!2305139))

(declare-fun m!2305141 () Bool)

(assert (=> b!1877927 m!2305141))

(assert (=> b!1877927 m!2303373))

(declare-fun m!2305143 () Bool)

(assert (=> b!1877927 m!2305143))

(assert (=> b!1877927 m!2303375))

(declare-fun m!2305145 () Bool)

(assert (=> b!1877927 m!2305145))

(assert (=> b!1876968 d!574004))

(declare-fun d!574006 () Bool)

(assert (=> d!574006 (= (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))) (list!8539 (c!305735 (charsOf!2302 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))))))))

(declare-fun bs!412313 () Bool)

(assert (= bs!412313 d!574006))

(declare-fun m!2305147 () Bool)

(assert (=> bs!412313 m!2305147))

(assert (=> b!1876968 d!574006))

(declare-fun d!574008 () Bool)

(declare-fun lt!721560 () BalanceConc!13714)

(assert (=> d!574008 (= (list!8535 lt!721560) (originalCharacters!4517 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))))))

(assert (=> d!574008 (= lt!721560 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))))) (value!117200 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))))))

(assert (=> d!574008 (= (charsOf!2302 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))) lt!721560)))

(declare-fun b_lambda!61717 () Bool)

(assert (=> (not b_lambda!61717) (not d!574008)))

(declare-fun tb!113289 () Bool)

(declare-fun t!173582 () Bool)

(assert (=> (and b!1876224 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))))) t!173582) tb!113289))

(declare-fun e!1198449 () Bool)

(declare-fun tp!535250 () Bool)

(declare-fun b!1877929 () Bool)

(assert (=> b!1877929 (= e!1198449 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))))) (value!117200 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))))) tp!535250))))

(declare-fun result!137094 () Bool)

(assert (=> tb!113289 (= result!137094 (and (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))))) (value!117200 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))))) e!1198449))))

(assert (= tb!113289 b!1877929))

(declare-fun m!2305149 () Bool)

(assert (=> b!1877929 m!2305149))

(declare-fun m!2305151 () Bool)

(assert (=> tb!113289 m!2305151))

(assert (=> d!574008 t!173582))

(declare-fun b_and!144675 () Bool)

(assert (= b_and!144669 (and (=> t!173582 result!137094) b_and!144675)))

(declare-fun tb!113291 () Bool)

(declare-fun t!173584 () Bool)

(assert (=> (and b!1877022 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))))) t!173584) tb!113291))

(declare-fun result!137096 () Bool)

(assert (= result!137096 result!137094))

(assert (=> d!574008 t!173584))

(declare-fun b_and!144677 () Bool)

(assert (= b_and!144671 (and (=> t!173584 result!137096) b_and!144677)))

(declare-fun tb!113293 () Bool)

(declare-fun t!173586 () Bool)

(assert (=> (and b!1877033 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))))) t!173586) tb!113293))

(declare-fun result!137098 () Bool)

(assert (= result!137098 result!137094))

(assert (=> d!574008 t!173586))

(declare-fun b_and!144679 () Bool)

(assert (= b_and!144673 (and (=> t!173586 result!137098) b_and!144679)))

(declare-fun m!2305153 () Bool)

(assert (=> d!574008 m!2305153))

(declare-fun m!2305155 () Bool)

(assert (=> d!574008 m!2305155))

(assert (=> b!1876968 d!574008))

(declare-fun c!306150 () Bool)

(declare-fun d!574010 () Bool)

(assert (=> d!574010 (= c!306150 ((_ is Cons!20917) (t!173228 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))))))

(declare-fun e!1198450 () List!20998)

(assert (=> d!574010 (= (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))) e!1198450)))

(declare-fun b!1877930 () Bool)

(assert (=> b!1877930 (= e!1198450 (++!5686 (list!8535 (charsOf!2302 (h!26318 (t!173228 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))))) (printList!1012 thiss!13718 (t!173228 (t!173228 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84))))))))

(declare-fun b!1877931 () Bool)

(assert (=> b!1877931 (= e!1198450 Nil!20916)))

(assert (= (and d!574010 c!306150) b!1877930))

(assert (= (and d!574010 (not c!306150)) b!1877931))

(declare-fun m!2305157 () Bool)

(assert (=> b!1877930 m!2305157))

(assert (=> b!1877930 m!2305157))

(declare-fun m!2305159 () Bool)

(assert (=> b!1877930 m!2305159))

(declare-fun m!2305161 () Bool)

(assert (=> b!1877930 m!2305161))

(assert (=> b!1877930 m!2305159))

(assert (=> b!1877930 m!2305161))

(declare-fun m!2305163 () Bool)

(assert (=> b!1877930 m!2305163))

(assert (=> b!1876968 d!574010))

(declare-fun d!574012 () Bool)

(assert (=> d!574012 (= (inv!27833 (xs!9834 (left!16811 (c!305736 v!6352)))) (<= (size!16601 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352))))) 2147483647))))

(declare-fun bs!412314 () Bool)

(assert (= bs!412314 d!574012))

(declare-fun m!2305165 () Bool)

(assert (=> bs!412314 m!2305165))

(assert (=> b!1877025 d!574012))

(declare-fun b!1877932 () Bool)

(declare-fun res!839512 () Bool)

(declare-fun e!1198451 () Bool)

(assert (=> b!1877932 (=> (not res!839512) (not e!1198451))))

(assert (=> b!1877932 (= res!839512 (<= (- (height!1087 (left!16811 (right!17141 (c!305736 v!6352)))) (height!1087 (right!17141 (right!17141 (c!305736 v!6352))))) 1))))

(declare-fun b!1877933 () Bool)

(declare-fun e!1198452 () Bool)

(assert (=> b!1877933 (= e!1198452 e!1198451)))

(declare-fun res!839513 () Bool)

(assert (=> b!1877933 (=> (not res!839513) (not e!1198451))))

(assert (=> b!1877933 (= res!839513 (<= (- 1) (- (height!1087 (left!16811 (right!17141 (c!305736 v!6352)))) (height!1087 (right!17141 (right!17141 (c!305736 v!6352)))))))))

(declare-fun b!1877934 () Bool)

(declare-fun res!839514 () Bool)

(assert (=> b!1877934 (=> (not res!839514) (not e!1198451))))

(assert (=> b!1877934 (= res!839514 (not (isEmpty!12976 (left!16811 (right!17141 (c!305736 v!6352))))))))

(declare-fun b!1877935 () Bool)

(declare-fun res!839515 () Bool)

(assert (=> b!1877935 (=> (not res!839515) (not e!1198451))))

(assert (=> b!1877935 (= res!839515 (isBalanced!2201 (left!16811 (right!17141 (c!305736 v!6352)))))))

(declare-fun b!1877936 () Bool)

(declare-fun res!839517 () Bool)

(assert (=> b!1877936 (=> (not res!839517) (not e!1198451))))

(assert (=> b!1877936 (= res!839517 (isBalanced!2201 (right!17141 (right!17141 (c!305736 v!6352)))))))

(declare-fun d!574014 () Bool)

(declare-fun res!839516 () Bool)

(assert (=> d!574014 (=> res!839516 e!1198452)))

(assert (=> d!574014 (= res!839516 (not ((_ is Node!6950) (right!17141 (c!305736 v!6352)))))))

(assert (=> d!574014 (= (isBalanced!2201 (right!17141 (c!305736 v!6352))) e!1198452)))

(declare-fun b!1877937 () Bool)

(assert (=> b!1877937 (= e!1198451 (not (isEmpty!12976 (right!17141 (right!17141 (c!305736 v!6352))))))))

(assert (= (and d!574014 (not res!839516)) b!1877933))

(assert (= (and b!1877933 res!839513) b!1877932))

(assert (= (and b!1877932 res!839512) b!1877935))

(assert (= (and b!1877935 res!839515) b!1877936))

(assert (= (and b!1877936 res!839517) b!1877934))

(assert (= (and b!1877934 res!839514) b!1877937))

(declare-fun m!2305167 () Bool)

(assert (=> b!1877934 m!2305167))

(declare-fun m!2305169 () Bool)

(assert (=> b!1877937 m!2305169))

(assert (=> b!1877933 m!2304801))

(assert (=> b!1877933 m!2304803))

(declare-fun m!2305171 () Bool)

(assert (=> b!1877936 m!2305171))

(assert (=> b!1877932 m!2304801))

(assert (=> b!1877932 m!2304803))

(declare-fun m!2305173 () Bool)

(assert (=> b!1877935 m!2305173))

(assert (=> b!1876929 d!574014))

(declare-fun d!574016 () Bool)

(declare-fun c!306151 () Bool)

(assert (=> d!574016 (= c!306151 ((_ is Nil!20917) lt!721429))))

(declare-fun e!1198453 () (InoxSet Token!6972))

(assert (=> d!574016 (= (content!3111 lt!721429) e!1198453)))

(declare-fun b!1877938 () Bool)

(assert (=> b!1877938 (= e!1198453 ((as const (Array Token!6972 Bool)) false))))

(declare-fun b!1877939 () Bool)

(assert (=> b!1877939 (= e!1198453 ((_ map or) (store ((as const (Array Token!6972 Bool)) false) (h!26318 lt!721429) true) (content!3111 (t!173228 lt!721429))))))

(assert (= (and d!574016 c!306151) b!1877938))

(assert (= (and d!574016 (not c!306151)) b!1877939))

(declare-fun m!2305175 () Bool)

(assert (=> b!1877939 m!2305175))

(declare-fun m!2305177 () Bool)

(assert (=> b!1877939 m!2305177))

(assert (=> d!573376 d!574016))

(declare-fun d!574018 () Bool)

(declare-fun c!306152 () Bool)

(assert (=> d!574018 (= c!306152 ((_ is Nil!20917) (t!173228 lt!721287)))))

(declare-fun e!1198454 () (InoxSet Token!6972))

(assert (=> d!574018 (= (content!3111 (t!173228 lt!721287)) e!1198454)))

(declare-fun b!1877940 () Bool)

(assert (=> b!1877940 (= e!1198454 ((as const (Array Token!6972 Bool)) false))))

(declare-fun b!1877941 () Bool)

(assert (=> b!1877941 (= e!1198454 ((_ map or) (store ((as const (Array Token!6972 Bool)) false) (h!26318 (t!173228 lt!721287)) true) (content!3111 (t!173228 (t!173228 lt!721287)))))))

(assert (= (and d!574018 c!306152) b!1877940))

(assert (= (and d!574018 (not c!306152)) b!1877941))

(declare-fun m!2305179 () Bool)

(assert (=> b!1877941 m!2305179))

(declare-fun m!2305181 () Bool)

(assert (=> b!1877941 m!2305181))

(assert (=> d!573376 d!574018))

(assert (=> d!573376 d!573326))

(declare-fun d!574020 () Bool)

(assert (=> d!574020 (= (list!8535 lt!721364) (list!8539 (c!305735 lt!721364)))))

(declare-fun bs!412315 () Bool)

(assert (= bs!412315 d!574020))

(declare-fun m!2305183 () Bool)

(assert (=> bs!412315 m!2305183))

(assert (=> d!573172 d!574020))

(declare-fun b!1877943 () Bool)

(declare-fun e!1198455 () List!20998)

(declare-fun e!1198456 () List!20998)

(assert (=> b!1877943 (= e!1198455 e!1198456)))

(declare-fun c!306154 () Bool)

(assert (=> b!1877943 (= c!306154 ((_ is Leaf!10225) (c!305735 (charsOf!2302 (h!26318 lt!721335)))))))

(declare-fun d!574022 () Bool)

(declare-fun c!306153 () Bool)

(assert (=> d!574022 (= c!306153 ((_ is Empty!6949) (c!305735 (charsOf!2302 (h!26318 lt!721335)))))))

(assert (=> d!574022 (= (list!8539 (c!305735 (charsOf!2302 (h!26318 lt!721335)))) e!1198455)))

(declare-fun b!1877942 () Bool)

(assert (=> b!1877942 (= e!1198455 Nil!20916)))

(declare-fun b!1877945 () Bool)

(assert (=> b!1877945 (= e!1198456 (++!5686 (list!8539 (left!16810 (c!305735 (charsOf!2302 (h!26318 lt!721335))))) (list!8539 (right!17140 (c!305735 (charsOf!2302 (h!26318 lt!721335)))))))))

(declare-fun b!1877944 () Bool)

(assert (=> b!1877944 (= e!1198456 (list!8542 (xs!9833 (c!305735 (charsOf!2302 (h!26318 lt!721335))))))))

(assert (= (and d!574022 c!306153) b!1877942))

(assert (= (and d!574022 (not c!306153)) b!1877943))

(assert (= (and b!1877943 c!306154) b!1877944))

(assert (= (and b!1877943 (not c!306154)) b!1877945))

(declare-fun m!2305185 () Bool)

(assert (=> b!1877945 m!2305185))

(declare-fun m!2305187 () Bool)

(assert (=> b!1877945 m!2305187))

(assert (=> b!1877945 m!2305185))

(assert (=> b!1877945 m!2305187))

(declare-fun m!2305189 () Bool)

(assert (=> b!1877945 m!2305189))

(declare-fun m!2305191 () Bool)

(assert (=> b!1877944 m!2305191))

(assert (=> d!573348 d!574022))

(declare-fun d!574024 () Bool)

(assert (=> d!574024 (= (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))) (value!117200 (h!26318 lt!721331)))) (isBalanced!2203 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))) (value!117200 (h!26318 lt!721331))))))))

(declare-fun bs!412316 () Bool)

(assert (= bs!412316 d!574024))

(declare-fun m!2305193 () Bool)

(assert (=> bs!412316 m!2305193))

(assert (=> tb!112959 d!574024))

(declare-fun c!306155 () Bool)

(declare-fun d!574026 () Bool)

(assert (=> d!574026 (= c!306155 ((_ is Cons!20917) ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84) separatorToken!84) (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))))

(declare-fun e!1198457 () List!20998)

(assert (=> d!574026 (= (printList!1012 thiss!13718 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84) separatorToken!84) (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))) e!1198457)))

(declare-fun b!1877946 () Bool)

(assert (=> b!1877946 (= e!1198457 (++!5686 (list!8535 (charsOf!2302 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84) separatorToken!84) (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))) (printList!1012 thiss!13718 (t!173228 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84) separatorToken!84) (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))))))

(declare-fun b!1877947 () Bool)

(assert (=> b!1877947 (= e!1198457 Nil!20916)))

(assert (= (and d!574026 c!306155) b!1877946))

(assert (= (and d!574026 (not c!306155)) b!1877947))

(declare-fun m!2305195 () Bool)

(assert (=> b!1877946 m!2305195))

(assert (=> b!1877946 m!2305195))

(declare-fun m!2305197 () Bool)

(assert (=> b!1877946 m!2305197))

(declare-fun m!2305199 () Bool)

(assert (=> b!1877946 m!2305199))

(assert (=> b!1877946 m!2305197))

(assert (=> b!1877946 m!2305199))

(declare-fun m!2305201 () Bool)

(assert (=> b!1877946 m!2305201))

(assert (=> b!1876538 d!574026))

(declare-fun d!574028 () Bool)

(assert (=> d!574028 (= ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84) separatorToken!84) (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))) (Cons!20917 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84) separatorToken!84)))))

(assert (=> b!1876538 d!574028))

(assert (=> b!1876538 d!573810))

(assert (=> b!1876538 d!573812))

(declare-fun b!1877950 () Bool)

(declare-fun res!839518 () Bool)

(declare-fun e!1198458 () Bool)

(assert (=> b!1877950 (=> (not res!839518) (not e!1198458))))

(declare-fun lt!721561 () List!20999)

(assert (=> b!1877950 (= res!839518 (= (size!16601 lt!721561) (+ (size!16601 (t!173228 (t!173228 lt!721287))) (size!16601 lt!721286))))))

(declare-fun b!1877948 () Bool)

(declare-fun e!1198459 () List!20999)

(assert (=> b!1877948 (= e!1198459 lt!721286)))

(declare-fun d!574030 () Bool)

(assert (=> d!574030 e!1198458))

(declare-fun res!839519 () Bool)

(assert (=> d!574030 (=> (not res!839519) (not e!1198458))))

(assert (=> d!574030 (= res!839519 (= (content!3111 lt!721561) ((_ map or) (content!3111 (t!173228 (t!173228 lt!721287))) (content!3111 lt!721286))))))

(assert (=> d!574030 (= lt!721561 e!1198459)))

(declare-fun c!306156 () Bool)

(assert (=> d!574030 (= c!306156 ((_ is Nil!20917) (t!173228 (t!173228 lt!721287))))))

(assert (=> d!574030 (= (++!5684 (t!173228 (t!173228 lt!721287)) lt!721286) lt!721561)))

(declare-fun b!1877949 () Bool)

(assert (=> b!1877949 (= e!1198459 (Cons!20917 (h!26318 (t!173228 (t!173228 lt!721287))) (++!5684 (t!173228 (t!173228 (t!173228 lt!721287))) lt!721286)))))

(declare-fun b!1877951 () Bool)

(assert (=> b!1877951 (= e!1198458 (or (not (= lt!721286 Nil!20917)) (= lt!721561 (t!173228 (t!173228 lt!721287)))))))

(assert (= (and d!574030 c!306156) b!1877948))

(assert (= (and d!574030 (not c!306156)) b!1877949))

(assert (= (and d!574030 res!839519) b!1877950))

(assert (= (and b!1877950 res!839518) b!1877951))

(declare-fun m!2305203 () Bool)

(assert (=> b!1877950 m!2305203))

(assert (=> b!1877950 m!2304821))

(assert (=> b!1877950 m!2302619))

(declare-fun m!2305205 () Bool)

(assert (=> d!574030 m!2305205))

(assert (=> d!574030 m!2305181))

(assert (=> d!574030 m!2302625))

(declare-fun m!2305207 () Bool)

(assert (=> b!1877949 m!2305207))

(assert (=> b!1876955 d!574030))

(declare-fun d!574032 () Bool)

(declare-fun c!306157 () Bool)

(assert (=> d!574032 (= c!306157 ((_ is Nil!20917) (t!173228 lt!721347)))))

(declare-fun e!1198460 () (InoxSet Token!6972))

(assert (=> d!574032 (= (content!3111 (t!173228 lt!721347)) e!1198460)))

(declare-fun b!1877952 () Bool)

(assert (=> b!1877952 (= e!1198460 ((as const (Array Token!6972 Bool)) false))))

(declare-fun b!1877953 () Bool)

(assert (=> b!1877953 (= e!1198460 ((_ map or) (store ((as const (Array Token!6972 Bool)) false) (h!26318 (t!173228 lt!721347)) true) (content!3111 (t!173228 (t!173228 lt!721347)))))))

(assert (= (and d!574032 c!306157) b!1877952))

(assert (= (and d!574032 (not c!306157)) b!1877953))

(declare-fun m!2305209 () Bool)

(assert (=> b!1877953 m!2305209))

(declare-fun m!2305211 () Bool)

(assert (=> b!1877953 m!2305211))

(assert (=> b!1876965 d!574032))

(declare-fun d!574034 () Bool)

(declare-fun lt!721562 () Int)

(assert (=> d!574034 (>= lt!721562 0)))

(declare-fun e!1198461 () Int)

(assert (=> d!574034 (= lt!721562 e!1198461)))

(declare-fun c!306158 () Bool)

(assert (=> d!574034 (= c!306158 ((_ is Nil!20917) (t!173228 lt!721350)))))

(assert (=> d!574034 (= (size!16601 (t!173228 lt!721350)) lt!721562)))

(declare-fun b!1877954 () Bool)

(assert (=> b!1877954 (= e!1198461 0)))

(declare-fun b!1877955 () Bool)

(assert (=> b!1877955 (= e!1198461 (+ 1 (size!16601 (t!173228 (t!173228 lt!721350)))))))

(assert (= (and d!574034 c!306158) b!1877954))

(assert (= (and d!574034 (not c!306158)) b!1877955))

(declare-fun m!2305213 () Bool)

(assert (=> b!1877955 m!2305213))

(assert (=> b!1876973 d!574034))

(declare-fun d!574036 () Bool)

(declare-fun lt!721563 () Int)

(assert (=> d!574036 (>= lt!721563 0)))

(declare-fun e!1198462 () Int)

(assert (=> d!574036 (= lt!721563 e!1198462)))

(declare-fun c!306159 () Bool)

(assert (=> d!574036 (= c!306159 ((_ is Nil!20916) lt!721375))))

(assert (=> d!574036 (= (size!16598 lt!721375) lt!721563)))

(declare-fun b!1877956 () Bool)

(assert (=> b!1877956 (= e!1198462 0)))

(declare-fun b!1877957 () Bool)

(assert (=> b!1877957 (= e!1198462 (+ 1 (size!16598 (t!173227 lt!721375))))))

(assert (= (and d!574036 c!306159) b!1877956))

(assert (= (and d!574036 (not c!306159)) b!1877957))

(declare-fun m!2305215 () Bool)

(assert (=> b!1877957 m!2305215))

(assert (=> b!1876563 d!574036))

(declare-fun d!574038 () Bool)

(declare-fun lt!721564 () Int)

(assert (=> d!574038 (>= lt!721564 0)))

(declare-fun e!1198463 () Int)

(assert (=> d!574038 (= lt!721564 e!1198463)))

(declare-fun c!306160 () Bool)

(assert (=> d!574038 (= c!306160 ((_ is Nil!20916) (list!8535 (charsOf!2302 (h!26318 lt!721331)))))))

(assert (=> d!574038 (= (size!16598 (list!8535 (charsOf!2302 (h!26318 lt!721331)))) lt!721564)))

(declare-fun b!1877958 () Bool)

(assert (=> b!1877958 (= e!1198463 0)))

(declare-fun b!1877959 () Bool)

(assert (=> b!1877959 (= e!1198463 (+ 1 (size!16598 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721331)))))))))

(assert (= (and d!574038 c!306160) b!1877958))

(assert (= (and d!574038 (not c!306160)) b!1877959))

(declare-fun m!2305217 () Bool)

(assert (=> b!1877959 m!2305217))

(assert (=> b!1876563 d!574038))

(declare-fun d!574040 () Bool)

(declare-fun lt!721565 () Int)

(assert (=> d!574040 (>= lt!721565 0)))

(declare-fun e!1198464 () Int)

(assert (=> d!574040 (= lt!721565 e!1198464)))

(declare-fun c!306161 () Bool)

(assert (=> d!574040 (= c!306161 ((_ is Nil!20916) (printList!1012 thiss!13718 (t!173228 lt!721331))))))

(assert (=> d!574040 (= (size!16598 (printList!1012 thiss!13718 (t!173228 lt!721331))) lt!721565)))

(declare-fun b!1877960 () Bool)

(assert (=> b!1877960 (= e!1198464 0)))

(declare-fun b!1877961 () Bool)

(assert (=> b!1877961 (= e!1198464 (+ 1 (size!16598 (t!173227 (printList!1012 thiss!13718 (t!173228 lt!721331))))))))

(assert (= (and d!574040 c!306161) b!1877960))

(assert (= (and d!574040 (not c!306161)) b!1877961))

(declare-fun m!2305219 () Bool)

(assert (=> b!1877961 m!2305219))

(assert (=> b!1876563 d!574040))

(declare-fun d!574042 () Bool)

(declare-fun lt!721566 () Int)

(assert (=> d!574042 (= lt!721566 (size!16601 (list!8536 (left!16811 (c!305736 acc!408)))))))

(assert (=> d!574042 (= lt!721566 (ite ((_ is Empty!6950) (left!16811 (c!305736 acc!408))) 0 (ite ((_ is Leaf!10226) (left!16811 (c!305736 acc!408))) (csize!14131 (left!16811 (c!305736 acc!408))) (csize!14130 (left!16811 (c!305736 acc!408))))))))

(assert (=> d!574042 (= (size!16602 (left!16811 (c!305736 acc!408))) lt!721566)))

(declare-fun bs!412317 () Bool)

(assert (= bs!412317 d!574042))

(assert (=> bs!412317 m!2303303))

(assert (=> bs!412317 m!2303303))

(assert (=> bs!412317 m!2304677))

(assert (=> d!573332 d!574042))

(declare-fun d!574044 () Bool)

(declare-fun lt!721567 () Int)

(assert (=> d!574044 (= lt!721567 (size!16601 (list!8536 (right!17141 (c!305736 acc!408)))))))

(assert (=> d!574044 (= lt!721567 (ite ((_ is Empty!6950) (right!17141 (c!305736 acc!408))) 0 (ite ((_ is Leaf!10226) (right!17141 (c!305736 acc!408))) (csize!14131 (right!17141 (c!305736 acc!408))) (csize!14130 (right!17141 (c!305736 acc!408))))))))

(assert (=> d!574044 (= (size!16602 (right!17141 (c!305736 acc!408))) lt!721567)))

(declare-fun bs!412318 () Bool)

(assert (= bs!412318 d!574044))

(assert (=> bs!412318 m!2303305))

(assert (=> bs!412318 m!2303305))

(assert (=> bs!412318 m!2304679))

(assert (=> d!573332 d!574044))

(declare-fun d!574046 () Bool)

(declare-fun res!839520 () Bool)

(declare-fun e!1198465 () Bool)

(assert (=> d!574046 (=> (not res!839520) (not e!1198465))))

(assert (=> d!574046 (= res!839520 (<= (size!16601 (list!8540 (xs!9834 (left!16811 (c!305736 acc!408))))) 512))))

(assert (=> d!574046 (= (inv!27827 (left!16811 (c!305736 acc!408))) e!1198465)))

(declare-fun b!1877962 () Bool)

(declare-fun res!839521 () Bool)

(assert (=> b!1877962 (=> (not res!839521) (not e!1198465))))

(assert (=> b!1877962 (= res!839521 (= (csize!14131 (left!16811 (c!305736 acc!408))) (size!16601 (list!8540 (xs!9834 (left!16811 (c!305736 acc!408)))))))))

(declare-fun b!1877963 () Bool)

(assert (=> b!1877963 (= e!1198465 (and (> (csize!14131 (left!16811 (c!305736 acc!408))) 0) (<= (csize!14131 (left!16811 (c!305736 acc!408))) 512)))))

(assert (= (and d!574046 res!839520) b!1877962))

(assert (= (and b!1877962 res!839521) b!1877963))

(assert (=> d!574046 m!2304695))

(assert (=> d!574046 m!2304695))

(declare-fun m!2305221 () Bool)

(assert (=> d!574046 m!2305221))

(assert (=> b!1877962 m!2304695))

(assert (=> b!1877962 m!2304695))

(assert (=> b!1877962 m!2305221))

(assert (=> b!1876555 d!574046))

(declare-fun d!574048 () Bool)

(assert (=> d!574048 (= (inv!27833 (xs!9834 (right!17141 (c!305736 acc!408)))) (<= (size!16601 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408))))) 2147483647))))

(declare-fun bs!412319 () Bool)

(assert (= bs!412319 d!574048))

(declare-fun m!2305223 () Bool)

(assert (=> bs!412319 m!2305223))

(assert (=> b!1876988 d!574048))

(declare-fun d!574050 () Bool)

(declare-fun lt!721568 () Int)

(assert (=> d!574050 (>= lt!721568 0)))

(declare-fun e!1198466 () Int)

(assert (=> d!574050 (= lt!721568 e!1198466)))

(declare-fun c!306162 () Bool)

(assert (=> d!574050 (= c!306162 ((_ is Nil!20916) lt!721424))))

(assert (=> d!574050 (= (size!16598 lt!721424) lt!721568)))

(declare-fun b!1877964 () Bool)

(assert (=> b!1877964 (= e!1198466 0)))

(declare-fun b!1877965 () Bool)

(assert (=> b!1877965 (= e!1198466 (+ 1 (size!16598 (t!173227 lt!721424))))))

(assert (= (and d!574050 c!306162) b!1877964))

(assert (= (and d!574050 (not c!306162)) b!1877965))

(declare-fun m!2305225 () Bool)

(assert (=> b!1877965 m!2305225))

(assert (=> b!1876907 d!574050))

(declare-fun d!574052 () Bool)

(declare-fun lt!721569 () Int)

(assert (=> d!574052 (>= lt!721569 0)))

(declare-fun e!1198467 () Int)

(assert (=> d!574052 (= lt!721569 e!1198467)))

(declare-fun c!306163 () Bool)

(assert (=> d!574052 (= c!306163 ((_ is Nil!20916) (list!8535 (charsOf!2302 (h!26318 lt!721335)))))))

(assert (=> d!574052 (= (size!16598 (list!8535 (charsOf!2302 (h!26318 lt!721335)))) lt!721569)))

(declare-fun b!1877966 () Bool)

(assert (=> b!1877966 (= e!1198467 0)))

(declare-fun b!1877967 () Bool)

(assert (=> b!1877967 (= e!1198467 (+ 1 (size!16598 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721335)))))))))

(assert (= (and d!574052 c!306163) b!1877966))

(assert (= (and d!574052 (not c!306163)) b!1877967))

(declare-fun m!2305227 () Bool)

(assert (=> b!1877967 m!2305227))

(assert (=> b!1876907 d!574052))

(declare-fun d!574054 () Bool)

(declare-fun lt!721570 () Int)

(assert (=> d!574054 (>= lt!721570 0)))

(declare-fun e!1198468 () Int)

(assert (=> d!574054 (= lt!721570 e!1198468)))

(declare-fun c!306164 () Bool)

(assert (=> d!574054 (= c!306164 ((_ is Nil!20916) (printList!1012 thiss!13718 (t!173228 lt!721335))))))

(assert (=> d!574054 (= (size!16598 (printList!1012 thiss!13718 (t!173228 lt!721335))) lt!721570)))

(declare-fun b!1877968 () Bool)

(assert (=> b!1877968 (= e!1198468 0)))

(declare-fun b!1877969 () Bool)

(assert (=> b!1877969 (= e!1198468 (+ 1 (size!16598 (t!173227 (printList!1012 thiss!13718 (t!173228 lt!721335))))))))

(assert (= (and d!574054 c!306164) b!1877968))

(assert (= (and d!574054 (not c!306164)) b!1877969))

(declare-fun m!2305229 () Bool)

(assert (=> b!1877969 m!2305229))

(assert (=> b!1876907 d!574054))

(assert (=> b!1876844 d!574018))

(declare-fun b!1877970 () Bool)

(declare-fun res!839522 () Bool)

(declare-fun e!1198469 () Bool)

(assert (=> b!1877970 (=> (not res!839522) (not e!1198469))))

(assert (=> b!1877970 (= res!839522 (<= (- (height!1087 (left!16811 (left!16811 (c!305736 acc!408)))) (height!1087 (right!17141 (left!16811 (c!305736 acc!408))))) 1))))

(declare-fun b!1877971 () Bool)

(declare-fun e!1198470 () Bool)

(assert (=> b!1877971 (= e!1198470 e!1198469)))

(declare-fun res!839523 () Bool)

(assert (=> b!1877971 (=> (not res!839523) (not e!1198469))))

(assert (=> b!1877971 (= res!839523 (<= (- 1) (- (height!1087 (left!16811 (left!16811 (c!305736 acc!408)))) (height!1087 (right!17141 (left!16811 (c!305736 acc!408)))))))))

(declare-fun b!1877972 () Bool)

(declare-fun res!839524 () Bool)

(assert (=> b!1877972 (=> (not res!839524) (not e!1198469))))

(assert (=> b!1877972 (= res!839524 (not (isEmpty!12976 (left!16811 (left!16811 (c!305736 acc!408))))))))

(declare-fun b!1877973 () Bool)

(declare-fun res!839525 () Bool)

(assert (=> b!1877973 (=> (not res!839525) (not e!1198469))))

(assert (=> b!1877973 (= res!839525 (isBalanced!2201 (left!16811 (left!16811 (c!305736 acc!408)))))))

(declare-fun b!1877974 () Bool)

(declare-fun res!839527 () Bool)

(assert (=> b!1877974 (=> (not res!839527) (not e!1198469))))

(assert (=> b!1877974 (= res!839527 (isBalanced!2201 (right!17141 (left!16811 (c!305736 acc!408)))))))

(declare-fun d!574056 () Bool)

(declare-fun res!839526 () Bool)

(assert (=> d!574056 (=> res!839526 e!1198470)))

(assert (=> d!574056 (= res!839526 (not ((_ is Node!6950) (left!16811 (c!305736 acc!408)))))))

(assert (=> d!574056 (= (isBalanced!2201 (left!16811 (c!305736 acc!408))) e!1198470)))

(declare-fun b!1877975 () Bool)

(assert (=> b!1877975 (= e!1198469 (not (isEmpty!12976 (right!17141 (left!16811 (c!305736 acc!408))))))))

(assert (= (and d!574056 (not res!839526)) b!1877971))

(assert (= (and b!1877971 res!839523) b!1877970))

(assert (= (and b!1877970 res!839522) b!1877973))

(assert (= (and b!1877973 res!839525) b!1877974))

(assert (= (and b!1877974 res!839527) b!1877972))

(assert (= (and b!1877972 res!839524) b!1877975))

(declare-fun m!2305231 () Bool)

(assert (=> b!1877972 m!2305231))

(declare-fun m!2305233 () Bool)

(assert (=> b!1877975 m!2305233))

(assert (=> b!1877971 m!2304719))

(assert (=> b!1877971 m!2304721))

(declare-fun m!2305235 () Bool)

(assert (=> b!1877974 m!2305235))

(assert (=> b!1877970 m!2304719))

(assert (=> b!1877970 m!2304721))

(declare-fun m!2305237 () Bool)

(assert (=> b!1877973 m!2305237))

(assert (=> b!1876902 d!574056))

(declare-fun d!574058 () Bool)

(declare-fun lt!721571 () Int)

(assert (=> d!574058 (>= lt!721571 0)))

(declare-fun e!1198471 () Int)

(assert (=> d!574058 (= lt!721571 e!1198471)))

(declare-fun c!306165 () Bool)

(assert (=> d!574058 (= c!306165 ((_ is Nil!20917) (list!8540 (xs!9834 (c!305736 v!6352)))))))

(assert (=> d!574058 (= (size!16601 (list!8540 (xs!9834 (c!305736 v!6352)))) lt!721571)))

(declare-fun b!1877976 () Bool)

(assert (=> b!1877976 (= e!1198471 0)))

(declare-fun b!1877977 () Bool)

(assert (=> b!1877977 (= e!1198471 (+ 1 (size!16601 (t!173228 (list!8540 (xs!9834 (c!305736 v!6352)))))))))

(assert (= (and d!574058 c!306165) b!1877976))

(assert (= (and d!574058 (not c!306165)) b!1877977))

(declare-fun m!2305239 () Bool)

(assert (=> b!1877977 m!2305239))

(assert (=> d!573388 d!574058))

(assert (=> d!573388 d!574000))

(declare-fun d!574060 () Bool)

(declare-fun lt!721572 () Int)

(assert (=> d!574060 (>= lt!721572 0)))

(declare-fun e!1198472 () Int)

(assert (=> d!574060 (= lt!721572 e!1198472)))

(declare-fun c!306166 () Bool)

(assert (=> d!574060 (= c!306166 ((_ is Nil!20917) lt!721417))))

(assert (=> d!574060 (= (size!16601 lt!721417) lt!721572)))

(declare-fun b!1877978 () Bool)

(assert (=> b!1877978 (= e!1198472 0)))

(declare-fun b!1877979 () Bool)

(assert (=> b!1877979 (= e!1198472 (+ 1 (size!16601 (t!173228 lt!721417))))))

(assert (= (and d!574060 c!306166) b!1877978))

(assert (= (and d!574060 (not c!306166)) b!1877979))

(declare-fun m!2305241 () Bool)

(assert (=> b!1877979 m!2305241))

(assert (=> b!1876866 d!574060))

(declare-fun d!574062 () Bool)

(assert (=> d!574062 (= (inv!27833 (xs!9834 (left!16811 (c!305736 acc!408)))) (<= (size!16601 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408))))) 2147483647))))

(declare-fun bs!412320 () Bool)

(assert (= bs!412320 d!574062))

(declare-fun m!2305243 () Bool)

(assert (=> bs!412320 m!2305243))

(assert (=> b!1876985 d!574062))

(declare-fun b!1877980 () Bool)

(declare-fun e!1198475 () Bool)

(assert (=> b!1877980 (= e!1198475 (inv!17 (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))))

(declare-fun b!1877981 () Bool)

(declare-fun e!1198473 () Bool)

(assert (=> b!1877981 (= e!1198473 e!1198475)))

(declare-fun c!306168 () Bool)

(assert (=> b!1877981 (= c!306168 ((_ is IntegerValue!11539) (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))))

(declare-fun d!574064 () Bool)

(declare-fun c!306167 () Bool)

(assert (=> d!574064 (= c!306167 ((_ is IntegerValue!11538) (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))))

(assert (=> d!574064 (= (inv!21 (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))) e!1198473)))

(declare-fun b!1877982 () Bool)

(declare-fun res!839528 () Bool)

(declare-fun e!1198474 () Bool)

(assert (=> b!1877982 (=> res!839528 e!1198474)))

(assert (=> b!1877982 (= res!839528 (not ((_ is IntegerValue!11540) (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))))))

(assert (=> b!1877982 (= e!1198475 e!1198474)))

(declare-fun b!1877983 () Bool)

(assert (=> b!1877983 (= e!1198474 (inv!15 (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))))

(declare-fun b!1877984 () Bool)

(assert (=> b!1877984 (= e!1198473 (inv!16 (value!117200 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))))

(assert (= (and d!574064 c!306167) b!1877984))

(assert (= (and d!574064 (not c!306167)) b!1877981))

(assert (= (and b!1877981 c!306168) b!1877980))

(assert (= (and b!1877981 (not c!306168)) b!1877982))

(assert (= (and b!1877982 (not res!839528)) b!1877983))

(declare-fun m!2305245 () Bool)

(assert (=> b!1877980 m!2305245))

(declare-fun m!2305247 () Bool)

(assert (=> b!1877983 m!2305247))

(declare-fun m!2305249 () Bool)

(assert (=> b!1877984 m!2305249))

(assert (=> b!1877020 d!574064))

(declare-fun e!1198477 () Bool)

(declare-fun b!1877988 () Bool)

(declare-fun lt!721573 () List!20998)

(assert (=> b!1877988 (= e!1198477 (or (not (= (++!5686 lt!721366 lt!721367) Nil!20916)) (= lt!721573 lt!721372)))))

(declare-fun d!574066 () Bool)

(assert (=> d!574066 e!1198477))

(declare-fun res!839530 () Bool)

(assert (=> d!574066 (=> (not res!839530) (not e!1198477))))

(assert (=> d!574066 (= res!839530 (= (content!3113 lt!721573) ((_ map or) (content!3113 lt!721372) (content!3113 (++!5686 lt!721366 lt!721367)))))))

(declare-fun e!1198476 () List!20998)

(assert (=> d!574066 (= lt!721573 e!1198476)))

(declare-fun c!306169 () Bool)

(assert (=> d!574066 (= c!306169 ((_ is Nil!20916) lt!721372))))

(assert (=> d!574066 (= (++!5686 lt!721372 (++!5686 lt!721366 lt!721367)) lt!721573)))

(declare-fun b!1877986 () Bool)

(assert (=> b!1877986 (= e!1198476 (Cons!20916 (h!26317 lt!721372) (++!5686 (t!173227 lt!721372) (++!5686 lt!721366 lt!721367))))))

(declare-fun b!1877985 () Bool)

(assert (=> b!1877985 (= e!1198476 (++!5686 lt!721366 lt!721367))))

(declare-fun b!1877987 () Bool)

(declare-fun res!839529 () Bool)

(assert (=> b!1877987 (=> (not res!839529) (not e!1198477))))

(assert (=> b!1877987 (= res!839529 (= (size!16598 lt!721573) (+ (size!16598 lt!721372) (size!16598 (++!5686 lt!721366 lt!721367)))))))

(assert (= (and d!574066 c!306169) b!1877985))

(assert (= (and d!574066 (not c!306169)) b!1877986))

(assert (= (and d!574066 res!839530) b!1877987))

(assert (= (and b!1877987 res!839529) b!1877988))

(declare-fun m!2305251 () Bool)

(assert (=> d!574066 m!2305251))

(declare-fun m!2305253 () Bool)

(assert (=> d!574066 m!2305253))

(assert (=> d!574066 m!2302719))

(declare-fun m!2305255 () Bool)

(assert (=> d!574066 m!2305255))

(assert (=> b!1877986 m!2302719))

(declare-fun m!2305257 () Bool)

(assert (=> b!1877986 m!2305257))

(declare-fun m!2305259 () Bool)

(assert (=> b!1877987 m!2305259))

(declare-fun m!2305261 () Bool)

(assert (=> b!1877987 m!2305261))

(assert (=> b!1877987 m!2302719))

(declare-fun m!2305263 () Bool)

(assert (=> b!1877987 m!2305263))

(assert (=> b!1876536 d!574066))

(declare-fun lt!721574 () List!20998)

(declare-fun b!1877992 () Bool)

(declare-fun e!1198479 () Bool)

(assert (=> b!1877992 (= e!1198479 (or (not (= lt!721366 Nil!20916)) (= lt!721574 lt!721372)))))

(declare-fun d!574068 () Bool)

(assert (=> d!574068 e!1198479))

(declare-fun res!839532 () Bool)

(assert (=> d!574068 (=> (not res!839532) (not e!1198479))))

(assert (=> d!574068 (= res!839532 (= (content!3113 lt!721574) ((_ map or) (content!3113 lt!721372) (content!3113 lt!721366))))))

(declare-fun e!1198478 () List!20998)

(assert (=> d!574068 (= lt!721574 e!1198478)))

(declare-fun c!306170 () Bool)

(assert (=> d!574068 (= c!306170 ((_ is Nil!20916) lt!721372))))

(assert (=> d!574068 (= (++!5686 lt!721372 lt!721366) lt!721574)))

(declare-fun b!1877990 () Bool)

(assert (=> b!1877990 (= e!1198478 (Cons!20916 (h!26317 lt!721372) (++!5686 (t!173227 lt!721372) lt!721366)))))

(declare-fun b!1877989 () Bool)

(assert (=> b!1877989 (= e!1198478 lt!721366)))

(declare-fun b!1877991 () Bool)

(declare-fun res!839531 () Bool)

(assert (=> b!1877991 (=> (not res!839531) (not e!1198479))))

(assert (=> b!1877991 (= res!839531 (= (size!16598 lt!721574) (+ (size!16598 lt!721372) (size!16598 lt!721366))))))

(assert (= (and d!574068 c!306170) b!1877989))

(assert (= (and d!574068 (not c!306170)) b!1877990))

(assert (= (and d!574068 res!839532) b!1877991))

(assert (= (and b!1877991 res!839531) b!1877992))

(declare-fun m!2305265 () Bool)

(assert (=> d!574068 m!2305265))

(assert (=> d!574068 m!2305253))

(declare-fun m!2305267 () Bool)

(assert (=> d!574068 m!2305267))

(declare-fun m!2305269 () Bool)

(assert (=> b!1877990 m!2305269))

(declare-fun m!2305271 () Bool)

(assert (=> b!1877991 m!2305271))

(assert (=> b!1877991 m!2305261))

(declare-fun m!2305273 () Bool)

(assert (=> b!1877991 m!2305273))

(assert (=> b!1876536 d!574068))

(assert (=> b!1876536 d!573810))

(declare-fun d!574070 () Bool)

(declare-fun c!306171 () Bool)

(assert (=> d!574070 (= c!306171 ((_ is Cons!20917) (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84)))))

(declare-fun e!1198480 () List!20998)

(assert (=> d!574070 (= (printList!1012 thiss!13718 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84)) e!1198480)))

(declare-fun b!1877993 () Bool)

(assert (=> b!1877993 (= e!1198480 (++!5686 (list!8535 (charsOf!2302 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84)))) (printList!1012 thiss!13718 (t!173228 (withSeparatorTokenList!118 thiss!13718 (t!173228 (t!173228 (drop!1030 (list!8532 v!6352) from!845))) separatorToken!84)))))))

(declare-fun b!1877994 () Bool)

(assert (=> b!1877994 (= e!1198480 Nil!20916)))

(assert (= (and d!574070 c!306171) b!1877993))

(assert (= (and d!574070 (not c!306171)) b!1877994))

(declare-fun m!2305275 () Bool)

(assert (=> b!1877993 m!2305275))

(assert (=> b!1877993 m!2305275))

(declare-fun m!2305277 () Bool)

(assert (=> b!1877993 m!2305277))

(declare-fun m!2305279 () Bool)

(assert (=> b!1877993 m!2305279))

(assert (=> b!1877993 m!2305277))

(assert (=> b!1877993 m!2305279))

(declare-fun m!2305281 () Bool)

(assert (=> b!1877993 m!2305281))

(assert (=> b!1876536 d!574070))

(declare-fun d!574072 () Bool)

(assert (=> d!574072 (= (list!8535 (charsOf!2302 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))) (list!8539 (c!305735 (charsOf!2302 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))))))))

(declare-fun bs!412321 () Bool)

(assert (= bs!412321 d!574072))

(declare-fun m!2305283 () Bool)

(assert (=> bs!412321 m!2305283))

(assert (=> b!1876536 d!574072))

(assert (=> b!1876536 d!573170))

(assert (=> b!1876536 d!573812))

(declare-fun d!574074 () Bool)

(declare-fun lt!721575 () BalanceConc!13714)

(assert (=> d!574074 (= (list!8535 lt!721575) (originalCharacters!4517 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))))))

(assert (=> d!574074 (= lt!721575 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))))) (value!117200 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))))

(assert (=> d!574074 (= (charsOf!2302 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))) lt!721575)))

(declare-fun b_lambda!61719 () Bool)

(assert (=> (not b_lambda!61719) (not d!574074)))

(declare-fun t!173588 () Bool)

(declare-fun tb!113295 () Bool)

(assert (=> (and b!1876224 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))) t!173588) tb!113295))

(declare-fun b!1877995 () Bool)

(declare-fun tp!535251 () Bool)

(declare-fun e!1198481 () Bool)

(assert (=> b!1877995 (= e!1198481 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))))) (value!117200 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))) tp!535251))))

(declare-fun result!137100 () Bool)

(assert (=> tb!113295 (= result!137100 (and (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))))) (value!117200 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845)))))) e!1198481))))

(assert (= tb!113295 b!1877995))

(declare-fun m!2305285 () Bool)

(assert (=> b!1877995 m!2305285))

(declare-fun m!2305287 () Bool)

(assert (=> tb!113295 m!2305287))

(assert (=> d!574074 t!173588))

(declare-fun b_and!144681 () Bool)

(assert (= b_and!144675 (and (=> t!173588 result!137100) b_and!144681)))

(declare-fun t!173590 () Bool)

(declare-fun tb!113297 () Bool)

(assert (=> (and b!1877022 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))) t!173590) tb!113297))

(declare-fun result!137102 () Bool)

(assert (= result!137102 result!137100))

(assert (=> d!574074 t!173590))

(declare-fun b_and!144683 () Bool)

(assert (= b_and!144677 (and (=> t!173590 result!137102) b_and!144683)))

(declare-fun t!173592 () Bool)

(declare-fun tb!113299 () Bool)

(assert (=> (and b!1877033 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))) t!173592) tb!113299))

(declare-fun result!137104 () Bool)

(assert (= result!137104 result!137100))

(assert (=> d!574074 t!173592))

(declare-fun b_and!144685 () Bool)

(assert (= b_and!144679 (and (=> t!173592 result!137104) b_and!144685)))

(declare-fun m!2305289 () Bool)

(assert (=> d!574074 m!2305289))

(declare-fun m!2305291 () Bool)

(assert (=> d!574074 m!2305291))

(assert (=> b!1876536 d!574074))

(declare-fun d!574076 () Bool)

(assert (=> d!574076 (= (++!5686 (++!5686 lt!721372 lt!721366) lt!721367) (++!5686 lt!721372 (++!5686 lt!721366 lt!721367)))))

(declare-fun lt!721576 () Unit!35442)

(assert (=> d!574076 (= lt!721576 (choose!11782 lt!721372 lt!721366 lt!721367))))

(assert (=> d!574076 (= (lemmaConcatAssociativity!1125 lt!721372 lt!721366 lt!721367) lt!721576)))

(declare-fun bs!412322 () Bool)

(assert (= bs!412322 d!574076))

(assert (=> bs!412322 m!2302715))

(assert (=> bs!412322 m!2302717))

(declare-fun m!2305293 () Bool)

(assert (=> bs!412322 m!2305293))

(assert (=> bs!412322 m!2302719))

(assert (=> bs!412322 m!2302721))

(assert (=> bs!412322 m!2302715))

(assert (=> bs!412322 m!2302719))

(assert (=> b!1876536 d!574076))

(assert (=> b!1876536 d!573172))

(declare-fun lt!721577 () List!20998)

(declare-fun e!1198483 () Bool)

(declare-fun b!1877999 () Bool)

(assert (=> b!1877999 (= e!1198483 (or (not (= lt!721367 Nil!20916)) (= lt!721577 (++!5686 lt!721372 lt!721366))))))

(declare-fun d!574078 () Bool)

(assert (=> d!574078 e!1198483))

(declare-fun res!839534 () Bool)

(assert (=> d!574078 (=> (not res!839534) (not e!1198483))))

(assert (=> d!574078 (= res!839534 (= (content!3113 lt!721577) ((_ map or) (content!3113 (++!5686 lt!721372 lt!721366)) (content!3113 lt!721367))))))

(declare-fun e!1198482 () List!20998)

(assert (=> d!574078 (= lt!721577 e!1198482)))

(declare-fun c!306172 () Bool)

(assert (=> d!574078 (= c!306172 ((_ is Nil!20916) (++!5686 lt!721372 lt!721366)))))

(assert (=> d!574078 (= (++!5686 (++!5686 lt!721372 lt!721366) lt!721367) lt!721577)))

(declare-fun b!1877997 () Bool)

(assert (=> b!1877997 (= e!1198482 (Cons!20916 (h!26317 (++!5686 lt!721372 lt!721366)) (++!5686 (t!173227 (++!5686 lt!721372 lt!721366)) lt!721367)))))

(declare-fun b!1877996 () Bool)

(assert (=> b!1877996 (= e!1198482 lt!721367)))

(declare-fun b!1877998 () Bool)

(declare-fun res!839533 () Bool)

(assert (=> b!1877998 (=> (not res!839533) (not e!1198483))))

(assert (=> b!1877998 (= res!839533 (= (size!16598 lt!721577) (+ (size!16598 (++!5686 lt!721372 lt!721366)) (size!16598 lt!721367))))))

(assert (= (and d!574078 c!306172) b!1877996))

(assert (= (and d!574078 (not c!306172)) b!1877997))

(assert (= (and d!574078 res!839534) b!1877998))

(assert (= (and b!1877998 res!839533) b!1877999))

(declare-fun m!2305295 () Bool)

(assert (=> d!574078 m!2305295))

(assert (=> d!574078 m!2302715))

(declare-fun m!2305297 () Bool)

(assert (=> d!574078 m!2305297))

(declare-fun m!2305299 () Bool)

(assert (=> d!574078 m!2305299))

(declare-fun m!2305301 () Bool)

(assert (=> b!1877997 m!2305301))

(declare-fun m!2305303 () Bool)

(assert (=> b!1877998 m!2305303))

(assert (=> b!1877998 m!2302715))

(declare-fun m!2305305 () Bool)

(assert (=> b!1877998 m!2305305))

(declare-fun m!2305307 () Bool)

(assert (=> b!1877998 m!2305307))

(assert (=> b!1876536 d!574078))

(declare-fun lt!721578 () List!20998)

(declare-fun e!1198485 () Bool)

(declare-fun b!1878003 () Bool)

(assert (=> b!1878003 (= e!1198485 (or (not (= lt!721367 Nil!20916)) (= lt!721578 lt!721366)))))

(declare-fun d!574080 () Bool)

(assert (=> d!574080 e!1198485))

(declare-fun res!839536 () Bool)

(assert (=> d!574080 (=> (not res!839536) (not e!1198485))))

(assert (=> d!574080 (= res!839536 (= (content!3113 lt!721578) ((_ map or) (content!3113 lt!721366) (content!3113 lt!721367))))))

(declare-fun e!1198484 () List!20998)

(assert (=> d!574080 (= lt!721578 e!1198484)))

(declare-fun c!306173 () Bool)

(assert (=> d!574080 (= c!306173 ((_ is Nil!20916) lt!721366))))

(assert (=> d!574080 (= (++!5686 lt!721366 lt!721367) lt!721578)))

(declare-fun b!1878001 () Bool)

(assert (=> b!1878001 (= e!1198484 (Cons!20916 (h!26317 lt!721366) (++!5686 (t!173227 lt!721366) lt!721367)))))

(declare-fun b!1878000 () Bool)

(assert (=> b!1878000 (= e!1198484 lt!721367)))

(declare-fun b!1878002 () Bool)

(declare-fun res!839535 () Bool)

(assert (=> b!1878002 (=> (not res!839535) (not e!1198485))))

(assert (=> b!1878002 (= res!839535 (= (size!16598 lt!721578) (+ (size!16598 lt!721366) (size!16598 lt!721367))))))

(assert (= (and d!574080 c!306173) b!1878000))

(assert (= (and d!574080 (not c!306173)) b!1878001))

(assert (= (and d!574080 res!839536) b!1878002))

(assert (= (and b!1878002 res!839535) b!1878003))

(declare-fun m!2305309 () Bool)

(assert (=> d!574080 m!2305309))

(assert (=> d!574080 m!2305267))

(assert (=> d!574080 m!2305299))

(declare-fun m!2305311 () Bool)

(assert (=> b!1878001 m!2305311))

(declare-fun m!2305313 () Bool)

(assert (=> b!1878002 m!2305313))

(assert (=> b!1878002 m!2305273))

(assert (=> b!1878002 m!2305307))

(assert (=> b!1876536 d!574080))

(assert (=> b!1876536 d!574028))

(declare-fun d!574082 () Bool)

(declare-fun lt!721579 () Int)

(assert (=> d!574082 (>= lt!721579 0)))

(declare-fun e!1198486 () Int)

(assert (=> d!574082 (= lt!721579 e!1198486)))

(declare-fun c!306174 () Bool)

(assert (=> d!574082 (= c!306174 ((_ is Nil!20917) (t!173228 (list!8532 v!6352))))))

(assert (=> d!574082 (= (size!16601 (t!173228 (list!8532 v!6352))) lt!721579)))

(declare-fun b!1878004 () Bool)

(assert (=> b!1878004 (= e!1198486 0)))

(declare-fun b!1878005 () Bool)

(assert (=> b!1878005 (= e!1198486 (+ 1 (size!16601 (t!173228 (t!173228 (list!8532 v!6352))))))))

(assert (= (and d!574082 c!306174) b!1878004))

(assert (= (and d!574082 (not c!306174)) b!1878005))

(assert (=> b!1878005 m!2304575))

(assert (=> bm!116165 d!574082))

(declare-fun lt!721580 () List!20998)

(declare-fun e!1198488 () Bool)

(declare-fun b!1878009 () Bool)

(assert (=> b!1878009 (= e!1198488 (or (not (= (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721335))) Nil!20916)) (= lt!721580 (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721335)))))))))

(declare-fun d!574084 () Bool)

(assert (=> d!574084 e!1198488))

(declare-fun res!839538 () Bool)

(assert (=> d!574084 (=> (not res!839538) (not e!1198488))))

(assert (=> d!574084 (= res!839538 (= (content!3113 lt!721580) ((_ map or) (content!3113 (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721335))))) (content!3113 (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721335)))))))))

(declare-fun e!1198487 () List!20998)

(assert (=> d!574084 (= lt!721580 e!1198487)))

(declare-fun c!306175 () Bool)

(assert (=> d!574084 (= c!306175 ((_ is Nil!20916) (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721335))))))))

(assert (=> d!574084 (= (++!5686 (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721335)))) (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721335)))) lt!721580)))

(declare-fun b!1878007 () Bool)

(assert (=> b!1878007 (= e!1198487 (Cons!20916 (h!26317 (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721335))))) (++!5686 (t!173227 (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721335))))) (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721335))))))))

(declare-fun b!1878006 () Bool)

(assert (=> b!1878006 (= e!1198487 (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721335))))))

(declare-fun b!1878008 () Bool)

(declare-fun res!839537 () Bool)

(assert (=> b!1878008 (=> (not res!839537) (not e!1198488))))

(assert (=> b!1878008 (= res!839537 (= (size!16598 lt!721580) (+ (size!16598 (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721335))))) (size!16598 (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721335)))))))))

(assert (= (and d!574084 c!306175) b!1878006))

(assert (= (and d!574084 (not c!306175)) b!1878007))

(assert (= (and d!574084 res!839538) b!1878008))

(assert (= (and b!1878008 res!839537) b!1878009))

(declare-fun m!2305315 () Bool)

(assert (=> d!574084 m!2305315))

(assert (=> d!574084 m!2303293))

(declare-fun m!2305317 () Bool)

(assert (=> d!574084 m!2305317))

(assert (=> d!574084 m!2303295))

(declare-fun m!2305319 () Bool)

(assert (=> d!574084 m!2305319))

(assert (=> b!1878007 m!2303295))

(declare-fun m!2305321 () Bool)

(assert (=> b!1878007 m!2305321))

(declare-fun m!2305323 () Bool)

(assert (=> b!1878008 m!2305323))

(assert (=> b!1878008 m!2303293))

(declare-fun m!2305325 () Bool)

(assert (=> b!1878008 m!2305325))

(assert (=> b!1878008 m!2303295))

(declare-fun m!2305327 () Bool)

(assert (=> b!1878008 m!2305327))

(assert (=> b!1876910 d!574084))

(declare-fun d!574086 () Bool)

(assert (=> d!574086 (= (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721335)))) (list!8539 (c!305735 (charsOf!2302 (h!26318 (t!173228 lt!721335))))))))

(declare-fun bs!412323 () Bool)

(assert (= bs!412323 d!574086))

(declare-fun m!2305329 () Bool)

(assert (=> bs!412323 m!2305329))

(assert (=> b!1876910 d!574086))

(declare-fun d!574088 () Bool)

(declare-fun lt!721581 () BalanceConc!13714)

(assert (=> d!574088 (= (list!8535 lt!721581) (originalCharacters!4517 (h!26318 (t!173228 lt!721335))))))

(assert (=> d!574088 (= lt!721581 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721335))))) (value!117200 (h!26318 (t!173228 lt!721335)))))))

(assert (=> d!574088 (= (charsOf!2302 (h!26318 (t!173228 lt!721335))) lt!721581)))

(declare-fun b_lambda!61721 () Bool)

(assert (=> (not b_lambda!61721) (not d!574088)))

(declare-fun t!173594 () Bool)

(declare-fun tb!113301 () Bool)

(assert (=> (and b!1876224 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721335)))))) t!173594) tb!113301))

(declare-fun b!1878010 () Bool)

(declare-fun e!1198489 () Bool)

(declare-fun tp!535252 () Bool)

(assert (=> b!1878010 (= e!1198489 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721335))))) (value!117200 (h!26318 (t!173228 lt!721335)))))) tp!535252))))

(declare-fun result!137106 () Bool)

(assert (=> tb!113301 (= result!137106 (and (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721335))))) (value!117200 (h!26318 (t!173228 lt!721335))))) e!1198489))))

(assert (= tb!113301 b!1878010))

(declare-fun m!2305331 () Bool)

(assert (=> b!1878010 m!2305331))

(declare-fun m!2305333 () Bool)

(assert (=> tb!113301 m!2305333))

(assert (=> d!574088 t!173594))

(declare-fun b_and!144687 () Bool)

(assert (= b_and!144681 (and (=> t!173594 result!137106) b_and!144687)))

(declare-fun tb!113303 () Bool)

(declare-fun t!173596 () Bool)

(assert (=> (and b!1877022 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721335)))))) t!173596) tb!113303))

(declare-fun result!137108 () Bool)

(assert (= result!137108 result!137106))

(assert (=> d!574088 t!173596))

(declare-fun b_and!144689 () Bool)

(assert (= b_and!144683 (and (=> t!173596 result!137108) b_and!144689)))

(declare-fun tb!113305 () Bool)

(declare-fun t!173598 () Bool)

(assert (=> (and b!1877033 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721335)))))) t!173598) tb!113305))

(declare-fun result!137110 () Bool)

(assert (= result!137110 result!137106))

(assert (=> d!574088 t!173598))

(declare-fun b_and!144691 () Bool)

(assert (= b_and!144685 (and (=> t!173598 result!137110) b_and!144691)))

(declare-fun m!2305335 () Bool)

(assert (=> d!574088 m!2305335))

(declare-fun m!2305337 () Bool)

(assert (=> d!574088 m!2305337))

(assert (=> b!1876910 d!574088))

(declare-fun d!574090 () Bool)

(declare-fun c!306176 () Bool)

(assert (=> d!574090 (= c!306176 ((_ is Cons!20917) (t!173228 (t!173228 lt!721335))))))

(declare-fun e!1198490 () List!20998)

(assert (=> d!574090 (= (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721335))) e!1198490)))

(declare-fun b!1878011 () Bool)

(assert (=> b!1878011 (= e!1198490 (++!5686 (list!8535 (charsOf!2302 (h!26318 (t!173228 (t!173228 lt!721335))))) (printList!1012 thiss!13718 (t!173228 (t!173228 (t!173228 lt!721335))))))))

(declare-fun b!1878012 () Bool)

(assert (=> b!1878012 (= e!1198490 Nil!20916)))

(assert (= (and d!574090 c!306176) b!1878011))

(assert (= (and d!574090 (not c!306176)) b!1878012))

(declare-fun m!2305339 () Bool)

(assert (=> b!1878011 m!2305339))

(assert (=> b!1878011 m!2305339))

(declare-fun m!2305341 () Bool)

(assert (=> b!1878011 m!2305341))

(declare-fun m!2305343 () Bool)

(assert (=> b!1878011 m!2305343))

(assert (=> b!1878011 m!2305341))

(assert (=> b!1878011 m!2305343))

(declare-fun m!2305345 () Bool)

(assert (=> b!1878011 m!2305345))

(assert (=> b!1876910 d!574090))

(declare-fun d!574092 () Bool)

(declare-fun c!306177 () Bool)

(assert (=> d!574092 (= c!306177 ((_ is Nil!20916) lt!721363))))

(declare-fun e!1198491 () (InoxSet C!10396))

(assert (=> d!574092 (= (content!3113 lt!721363) e!1198491)))

(declare-fun b!1878013 () Bool)

(assert (=> b!1878013 (= e!1198491 ((as const (Array C!10396 Bool)) false))))

(declare-fun b!1878014 () Bool)

(assert (=> b!1878014 (= e!1198491 ((_ map or) (store ((as const (Array C!10396 Bool)) false) (h!26317 lt!721363) true) (content!3113 (t!173227 lt!721363))))))

(assert (= (and d!574092 c!306177) b!1878013))

(assert (= (and d!574092 (not c!306177)) b!1878014))

(declare-fun m!2305347 () Bool)

(assert (=> b!1878014 m!2305347))

(declare-fun m!2305349 () Bool)

(assert (=> b!1878014 m!2305349))

(assert (=> d!573168 d!574092))

(declare-fun d!574094 () Bool)

(declare-fun c!306178 () Bool)

(assert (=> d!574094 (= c!306178 ((_ is Nil!20916) (++!5686 lt!721338 lt!721332)))))

(declare-fun e!1198492 () (InoxSet C!10396))

(assert (=> d!574094 (= (content!3113 (++!5686 lt!721338 lt!721332)) e!1198492)))

(declare-fun b!1878015 () Bool)

(assert (=> b!1878015 (= e!1198492 ((as const (Array C!10396 Bool)) false))))

(declare-fun b!1878016 () Bool)

(assert (=> b!1878016 (= e!1198492 ((_ map or) (store ((as const (Array C!10396 Bool)) false) (h!26317 (++!5686 lt!721338 lt!721332)) true) (content!3113 (t!173227 (++!5686 lt!721338 lt!721332)))))))

(assert (= (and d!574094 c!306178) b!1878015))

(assert (= (and d!574094 (not c!306178)) b!1878016))

(declare-fun m!2305351 () Bool)

(assert (=> b!1878016 m!2305351))

(assert (=> b!1878016 m!2304651))

(assert (=> d!573168 d!574094))

(assert (=> d!573168 d!573878))

(declare-fun d!574096 () Bool)

(declare-fun c!306179 () Bool)

(assert (=> d!574096 (= c!306179 ((_ is Node!6949) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (value!117200 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))))

(declare-fun e!1198493 () Bool)

(assert (=> d!574096 (= (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (value!117200 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))) e!1198493)))

(declare-fun b!1878017 () Bool)

(assert (=> b!1878017 (= e!1198493 (inv!27836 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (value!117200 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))))

(declare-fun b!1878018 () Bool)

(declare-fun e!1198494 () Bool)

(assert (=> b!1878018 (= e!1198493 e!1198494)))

(declare-fun res!839539 () Bool)

(assert (=> b!1878018 (= res!839539 (not ((_ is Leaf!10225) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (value!117200 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))))))

(assert (=> b!1878018 (=> res!839539 e!1198494)))

(declare-fun b!1878019 () Bool)

(assert (=> b!1878019 (= e!1198494 (inv!27837 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (value!117200 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))))

(assert (= (and d!574096 c!306179) b!1878017))

(assert (= (and d!574096 (not c!306179)) b!1878018))

(assert (= (and b!1878018 (not res!839539)) b!1878019))

(declare-fun m!2305353 () Bool)

(assert (=> b!1878017 m!2305353))

(declare-fun m!2305355 () Bool)

(assert (=> b!1878019 m!2305355))

(assert (=> b!1876512 d!574096))

(declare-fun d!574098 () Bool)

(declare-fun res!839540 () Bool)

(declare-fun e!1198495 () Bool)

(assert (=> d!574098 (=> (not res!839540) (not e!1198495))))

(assert (=> d!574098 (= res!839540 (<= (size!16601 (list!8540 (xs!9834 (right!17141 (c!305736 v!6352))))) 512))))

(assert (=> d!574098 (= (inv!27827 (right!17141 (c!305736 v!6352))) e!1198495)))

(declare-fun b!1878020 () Bool)

(declare-fun res!839541 () Bool)

(assert (=> b!1878020 (=> (not res!839541) (not e!1198495))))

(assert (=> b!1878020 (= res!839541 (= (csize!14131 (right!17141 (c!305736 v!6352))) (size!16601 (list!8540 (xs!9834 (right!17141 (c!305736 v!6352)))))))))

(declare-fun b!1878021 () Bool)

(assert (=> b!1878021 (= e!1198495 (and (> (csize!14131 (right!17141 (c!305736 v!6352))) 0) (<= (csize!14131 (right!17141 (c!305736 v!6352))) 512)))))

(assert (= (and d!574098 res!839540) b!1878020))

(assert (= (and b!1878020 res!839541) b!1878021))

(assert (=> d!574098 m!2305011))

(assert (=> d!574098 m!2305011))

(declare-fun m!2305357 () Bool)

(assert (=> d!574098 m!2305357))

(assert (=> b!1878020 m!2305011))

(assert (=> b!1878020 m!2305011))

(assert (=> b!1878020 m!2305357))

(assert (=> b!1876963 d!574098))

(assert (=> b!1876970 d!574058))

(assert (=> b!1876970 d!574000))

(declare-fun d!574100 () Bool)

(declare-fun choose!625 (List!20997) (_ BitVec 32))

(assert (=> d!574100 (= (charsToInt!0 (text!27369 (value!117200 separatorToken!84))) (choose!625 (text!27369 (value!117200 separatorToken!84))))))

(declare-fun bs!412324 () Bool)

(assert (= bs!412324 d!574100))

(declare-fun m!2305359 () Bool)

(assert (=> bs!412324 m!2305359))

(assert (=> d!573362 d!574100))

(declare-fun d!574102 () Bool)

(declare-fun res!839542 () Bool)

(declare-fun e!1198496 () Bool)

(assert (=> d!574102 (=> (not res!839542) (not e!1198496))))

(assert (=> d!574102 (= res!839542 (= (csize!14130 (right!17141 (c!305736 acc!408))) (+ (size!16602 (left!16811 (right!17141 (c!305736 acc!408)))) (size!16602 (right!17141 (right!17141 (c!305736 acc!408)))))))))

(assert (=> d!574102 (= (inv!27826 (right!17141 (c!305736 acc!408))) e!1198496)))

(declare-fun b!1878022 () Bool)

(declare-fun res!839543 () Bool)

(assert (=> b!1878022 (=> (not res!839543) (not e!1198496))))

(assert (=> b!1878022 (= res!839543 (and (not (= (left!16811 (right!17141 (c!305736 acc!408))) Empty!6950)) (not (= (right!17141 (right!17141 (c!305736 acc!408))) Empty!6950))))))

(declare-fun b!1878023 () Bool)

(declare-fun res!839544 () Bool)

(assert (=> b!1878023 (=> (not res!839544) (not e!1198496))))

(assert (=> b!1878023 (= res!839544 (= (cheight!7161 (right!17141 (c!305736 acc!408))) (+ (max!0 (height!1087 (left!16811 (right!17141 (c!305736 acc!408)))) (height!1087 (right!17141 (right!17141 (c!305736 acc!408))))) 1)))))

(declare-fun b!1878024 () Bool)

(assert (=> b!1878024 (= e!1198496 (<= 0 (cheight!7161 (right!17141 (c!305736 acc!408)))))))

(assert (= (and d!574102 res!839542) b!1878022))

(assert (= (and b!1878022 res!839543) b!1878023))

(assert (= (and b!1878023 res!839544) b!1878024))

(declare-fun m!2305361 () Bool)

(assert (=> d!574102 m!2305361))

(declare-fun m!2305363 () Bool)

(assert (=> d!574102 m!2305363))

(assert (=> b!1878023 m!2304945))

(assert (=> b!1878023 m!2304947))

(assert (=> b!1878023 m!2304945))

(assert (=> b!1878023 m!2304947))

(declare-fun m!2305365 () Bool)

(assert (=> b!1878023 m!2305365))

(assert (=> b!1876556 d!574102))

(declare-fun d!574104 () Bool)

(assert (=> d!574104 (= (list!8535 lt!721356) (list!8539 (c!305735 lt!721356)))))

(declare-fun bs!412325 () Bool)

(assert (= bs!412325 d!574104))

(declare-fun m!2305367 () Bool)

(assert (=> bs!412325 m!2305367))

(assert (=> d!573154 d!574104))

(declare-fun d!574106 () Bool)

(declare-fun c!306180 () Bool)

(assert (=> d!574106 (= c!306180 ((_ is Nil!20917) (t!173228 lt!721350)))))

(declare-fun e!1198497 () (InoxSet Token!6972))

(assert (=> d!574106 (= (content!3111 (t!173228 lt!721350)) e!1198497)))

(declare-fun b!1878025 () Bool)

(assert (=> b!1878025 (= e!1198497 ((as const (Array Token!6972 Bool)) false))))

(declare-fun b!1878026 () Bool)

(assert (=> b!1878026 (= e!1198497 ((_ map or) (store ((as const (Array Token!6972 Bool)) false) (h!26318 (t!173228 lt!721350)) true) (content!3111 (t!173228 (t!173228 lt!721350)))))))

(assert (= (and d!574106 c!306180) b!1878025))

(assert (= (and d!574106 (not c!306180)) b!1878026))

(declare-fun m!2305369 () Bool)

(assert (=> b!1878026 m!2305369))

(declare-fun m!2305371 () Bool)

(assert (=> b!1878026 m!2305371))

(assert (=> b!1876842 d!574106))

(declare-fun d!574108 () Bool)

(declare-fun c!306181 () Bool)

(assert (=> d!574108 (= c!306181 ((_ is Nil!20917) lt!721417))))

(declare-fun e!1198498 () (InoxSet Token!6972))

(assert (=> d!574108 (= (content!3111 lt!721417) e!1198498)))

(declare-fun b!1878027 () Bool)

(assert (=> b!1878027 (= e!1198498 ((as const (Array Token!6972 Bool)) false))))

(declare-fun b!1878028 () Bool)

(assert (=> b!1878028 (= e!1198498 ((_ map or) (store ((as const (Array Token!6972 Bool)) false) (h!26318 lt!721417) true) (content!3111 (t!173228 lt!721417))))))

(assert (= (and d!574108 c!306181) b!1878027))

(assert (= (and d!574108 (not c!306181)) b!1878028))

(declare-fun m!2305373 () Bool)

(assert (=> b!1878028 m!2305373))

(declare-fun m!2305375 () Bool)

(assert (=> b!1878028 m!2305375))

(assert (=> d!573330 d!574108))

(assert (=> d!573330 d!573798))

(declare-fun d!574110 () Bool)

(declare-fun lt!721582 () Bool)

(assert (=> d!574110 (= lt!721582 (isEmpty!12979 (list!8536 (left!16811 (c!305736 acc!408)))))))

(assert (=> d!574110 (= lt!721582 (= (size!16602 (left!16811 (c!305736 acc!408))) 0))))

(assert (=> d!574110 (= (isEmpty!12976 (left!16811 (c!305736 acc!408))) lt!721582)))

(declare-fun bs!412326 () Bool)

(assert (= bs!412326 d!574110))

(assert (=> bs!412326 m!2303303))

(assert (=> bs!412326 m!2303303))

(declare-fun m!2305377 () Bool)

(assert (=> bs!412326 m!2305377))

(assert (=> bs!412326 m!2303241))

(assert (=> b!1876901 d!574110))

(declare-fun lt!721583 () List!20998)

(declare-fun e!1198500 () Bool)

(declare-fun b!1878032 () Bool)

(assert (=> b!1878032 (= e!1198500 (or (not (= (printList!1012 thiss!13718 (t!173228 lt!721335)) Nil!20916)) (= lt!721583 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721335)))))))))

(declare-fun d!574112 () Bool)

(assert (=> d!574112 e!1198500))

(declare-fun res!839546 () Bool)

(assert (=> d!574112 (=> (not res!839546) (not e!1198500))))

(assert (=> d!574112 (= res!839546 (= (content!3113 lt!721583) ((_ map or) (content!3113 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721335))))) (content!3113 (printList!1012 thiss!13718 (t!173228 lt!721335))))))))

(declare-fun e!1198499 () List!20998)

(assert (=> d!574112 (= lt!721583 e!1198499)))

(declare-fun c!306182 () Bool)

(assert (=> d!574112 (= c!306182 ((_ is Nil!20916) (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721335))))))))

(assert (=> d!574112 (= (++!5686 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721335)))) (printList!1012 thiss!13718 (t!173228 lt!721335))) lt!721583)))

(declare-fun b!1878030 () Bool)

(assert (=> b!1878030 (= e!1198499 (Cons!20916 (h!26317 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721335))))) (++!5686 (t!173227 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721335))))) (printList!1012 thiss!13718 (t!173228 lt!721335)))))))

(declare-fun b!1878029 () Bool)

(assert (=> b!1878029 (= e!1198499 (printList!1012 thiss!13718 (t!173228 lt!721335)))))

(declare-fun b!1878031 () Bool)

(declare-fun res!839545 () Bool)

(assert (=> b!1878031 (=> (not res!839545) (not e!1198500))))

(assert (=> b!1878031 (= res!839545 (= (size!16598 lt!721583) (+ (size!16598 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721335))))) (size!16598 (printList!1012 thiss!13718 (t!173228 lt!721335))))))))

(assert (= (and d!574112 c!306182) b!1878029))

(assert (= (and d!574112 (not c!306182)) b!1878030))

(assert (= (and d!574112 res!839546) b!1878031))

(assert (= (and b!1878031 res!839545) b!1878032))

(declare-fun m!2305379 () Bool)

(assert (=> d!574112 m!2305379))

(assert (=> d!574112 m!2305091))

(assert (=> d!574112 m!2302559))

(assert (=> d!574112 m!2303271))

(assert (=> b!1878030 m!2302559))

(declare-fun m!2305381 () Bool)

(assert (=> b!1878030 m!2305381))

(declare-fun m!2305383 () Bool)

(assert (=> b!1878031 m!2305383))

(assert (=> b!1878031 m!2305227))

(assert (=> b!1878031 m!2302559))

(assert (=> b!1878031 m!2303279))

(assert (=> b!1876906 d!574112))

(declare-fun d!574114 () Bool)

(declare-fun c!306183 () Bool)

(assert (=> d!574114 (= c!306183 ((_ is Node!6950) (left!16811 (left!16811 (c!305736 v!6352)))))))

(declare-fun e!1198501 () Bool)

(assert (=> d!574114 (= (inv!27821 (left!16811 (left!16811 (c!305736 v!6352)))) e!1198501)))

(declare-fun b!1878033 () Bool)

(assert (=> b!1878033 (= e!1198501 (inv!27826 (left!16811 (left!16811 (c!305736 v!6352)))))))

(declare-fun b!1878034 () Bool)

(declare-fun e!1198502 () Bool)

(assert (=> b!1878034 (= e!1198501 e!1198502)))

(declare-fun res!839547 () Bool)

(assert (=> b!1878034 (= res!839547 (not ((_ is Leaf!10226) (left!16811 (left!16811 (c!305736 v!6352))))))))

(assert (=> b!1878034 (=> res!839547 e!1198502)))

(declare-fun b!1878035 () Bool)

(assert (=> b!1878035 (= e!1198502 (inv!27827 (left!16811 (left!16811 (c!305736 v!6352)))))))

(assert (= (and d!574114 c!306183) b!1878033))

(assert (= (and d!574114 (not c!306183)) b!1878034))

(assert (= (and b!1878034 (not res!839547)) b!1878035))

(declare-fun m!2305385 () Bool)

(assert (=> b!1878033 m!2305385))

(declare-fun m!2305387 () Bool)

(assert (=> b!1878035 m!2305387))

(assert (=> b!1877024 d!574114))

(declare-fun d!574116 () Bool)

(declare-fun c!306184 () Bool)

(assert (=> d!574116 (= c!306184 ((_ is Node!6950) (right!17141 (left!16811 (c!305736 v!6352)))))))

(declare-fun e!1198503 () Bool)

(assert (=> d!574116 (= (inv!27821 (right!17141 (left!16811 (c!305736 v!6352)))) e!1198503)))

(declare-fun b!1878036 () Bool)

(assert (=> b!1878036 (= e!1198503 (inv!27826 (right!17141 (left!16811 (c!305736 v!6352)))))))

(declare-fun b!1878037 () Bool)

(declare-fun e!1198504 () Bool)

(assert (=> b!1878037 (= e!1198503 e!1198504)))

(declare-fun res!839548 () Bool)

(assert (=> b!1878037 (= res!839548 (not ((_ is Leaf!10226) (right!17141 (left!16811 (c!305736 v!6352))))))))

(assert (=> b!1878037 (=> res!839548 e!1198504)))

(declare-fun b!1878038 () Bool)

(assert (=> b!1878038 (= e!1198504 (inv!27827 (right!17141 (left!16811 (c!305736 v!6352)))))))

(assert (= (and d!574116 c!306184) b!1878036))

(assert (= (and d!574116 (not c!306184)) b!1878037))

(assert (= (and b!1878037 (not res!839548)) b!1878038))

(declare-fun m!2305389 () Bool)

(assert (=> b!1878036 m!2305389))

(declare-fun m!2305391 () Bool)

(assert (=> b!1878038 m!2305391))

(assert (=> b!1877024 d!574116))

(declare-fun d!574118 () Bool)

(declare-fun lt!721584 () Int)

(assert (=> d!574118 (>= lt!721584 0)))

(declare-fun e!1198505 () Int)

(assert (=> d!574118 (= lt!721584 e!1198505)))

(declare-fun c!306185 () Bool)

(assert (=> d!574118 (= c!306185 ((_ is Nil!20917) (t!173228 lt!721286)))))

(assert (=> d!574118 (= (size!16601 (t!173228 lt!721286)) lt!721584)))

(declare-fun b!1878039 () Bool)

(assert (=> b!1878039 (= e!1198505 0)))

(declare-fun b!1878040 () Bool)

(assert (=> b!1878040 (= e!1198505 (+ 1 (size!16601 (t!173228 (t!173228 lt!721286)))))))

(assert (= (and d!574118 c!306185) b!1878039))

(assert (= (and d!574118 (not c!306185)) b!1878040))

(declare-fun m!2305393 () Bool)

(assert (=> b!1878040 m!2305393))

(assert (=> b!1876977 d!574118))

(declare-fun b!1878041 () Bool)

(declare-fun res!839549 () Bool)

(declare-fun e!1198506 () Bool)

(assert (=> b!1878041 (=> (not res!839549) (not e!1198506))))

(assert (=> b!1878041 (= res!839549 (<= (- (height!1087 (left!16811 (left!16811 (c!305736 v!6352)))) (height!1087 (right!17141 (left!16811 (c!305736 v!6352))))) 1))))

(declare-fun b!1878042 () Bool)

(declare-fun e!1198507 () Bool)

(assert (=> b!1878042 (= e!1198507 e!1198506)))

(declare-fun res!839550 () Bool)

(assert (=> b!1878042 (=> (not res!839550) (not e!1198506))))

(assert (=> b!1878042 (= res!839550 (<= (- 1) (- (height!1087 (left!16811 (left!16811 (c!305736 v!6352)))) (height!1087 (right!17141 (left!16811 (c!305736 v!6352)))))))))

(declare-fun b!1878043 () Bool)

(declare-fun res!839551 () Bool)

(assert (=> b!1878043 (=> (not res!839551) (not e!1198506))))

(assert (=> b!1878043 (= res!839551 (not (isEmpty!12976 (left!16811 (left!16811 (c!305736 v!6352))))))))

(declare-fun b!1878044 () Bool)

(declare-fun res!839552 () Bool)

(assert (=> b!1878044 (=> (not res!839552) (not e!1198506))))

(assert (=> b!1878044 (= res!839552 (isBalanced!2201 (left!16811 (left!16811 (c!305736 v!6352)))))))

(declare-fun b!1878045 () Bool)

(declare-fun res!839554 () Bool)

(assert (=> b!1878045 (=> (not res!839554) (not e!1198506))))

(assert (=> b!1878045 (= res!839554 (isBalanced!2201 (right!17141 (left!16811 (c!305736 v!6352)))))))

(declare-fun d!574120 () Bool)

(declare-fun res!839553 () Bool)

(assert (=> d!574120 (=> res!839553 e!1198507)))

(assert (=> d!574120 (= res!839553 (not ((_ is Node!6950) (left!16811 (c!305736 v!6352)))))))

(assert (=> d!574120 (= (isBalanced!2201 (left!16811 (c!305736 v!6352))) e!1198507)))

(declare-fun b!1878046 () Bool)

(assert (=> b!1878046 (= e!1198506 (not (isEmpty!12976 (right!17141 (left!16811 (c!305736 v!6352))))))))

(assert (= (and d!574120 (not res!839553)) b!1878042))

(assert (= (and b!1878042 res!839550) b!1878041))

(assert (= (and b!1878041 res!839549) b!1878044))

(assert (= (and b!1878044 res!839552) b!1878045))

(assert (= (and b!1878045 res!839554) b!1878043))

(assert (= (and b!1878043 res!839551) b!1878046))

(declare-fun m!2305395 () Bool)

(assert (=> b!1878043 m!2305395))

(declare-fun m!2305397 () Bool)

(assert (=> b!1878046 m!2305397))

(assert (=> b!1878042 m!2305127))

(assert (=> b!1878042 m!2305129))

(declare-fun m!2305399 () Bool)

(assert (=> b!1878045 m!2305399))

(assert (=> b!1878041 m!2305127))

(assert (=> b!1878041 m!2305129))

(declare-fun m!2305401 () Bool)

(assert (=> b!1878044 m!2305401))

(assert (=> b!1876928 d!574120))

(declare-fun d!574122 () Bool)

(declare-fun lt!721585 () Int)

(assert (=> d!574122 (>= lt!721585 0)))

(declare-fun e!1198508 () Int)

(assert (=> d!574122 (= lt!721585 e!1198508)))

(declare-fun c!306186 () Bool)

(assert (=> d!574122 (= c!306186 ((_ is Nil!20916) lt!721363))))

(assert (=> d!574122 (= (size!16598 lt!721363) lt!721585)))

(declare-fun b!1878047 () Bool)

(assert (=> b!1878047 (= e!1198508 0)))

(declare-fun b!1878048 () Bool)

(assert (=> b!1878048 (= e!1198508 (+ 1 (size!16598 (t!173227 lt!721363))))))

(assert (= (and d!574122 c!306186) b!1878047))

(assert (= (and d!574122 (not c!306186)) b!1878048))

(declare-fun m!2305403 () Bool)

(assert (=> b!1878048 m!2305403))

(assert (=> b!1876533 d!574122))

(declare-fun d!574124 () Bool)

(declare-fun lt!721586 () Int)

(assert (=> d!574124 (>= lt!721586 0)))

(declare-fun e!1198509 () Int)

(assert (=> d!574124 (= lt!721586 e!1198509)))

(declare-fun c!306187 () Bool)

(assert (=> d!574124 (= c!306187 ((_ is Nil!20916) (++!5686 lt!721338 lt!721332)))))

(assert (=> d!574124 (= (size!16598 (++!5686 lt!721338 lt!721332)) lt!721586)))

(declare-fun b!1878049 () Bool)

(assert (=> b!1878049 (= e!1198509 0)))

(declare-fun b!1878050 () Bool)

(assert (=> b!1878050 (= e!1198509 (+ 1 (size!16598 (t!173227 (++!5686 lt!721338 lt!721332)))))))

(assert (= (and d!574124 c!306187) b!1878049))

(assert (= (and d!574124 (not c!306187)) b!1878050))

(assert (=> b!1878050 m!2304657))

(assert (=> b!1876533 d!574124))

(assert (=> b!1876533 d!573914))

(declare-fun lt!721587 () List!20998)

(declare-fun b!1878054 () Bool)

(declare-fun e!1198511 () Bool)

(assert (=> b!1878054 (= e!1198511 (or (not (= (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721331))) Nil!20916)) (= lt!721587 (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721331)))))))))

(declare-fun d!574126 () Bool)

(assert (=> d!574126 e!1198511))

(declare-fun res!839556 () Bool)

(assert (=> d!574126 (=> (not res!839556) (not e!1198511))))

(assert (=> d!574126 (= res!839556 (= (content!3113 lt!721587) ((_ map or) (content!3113 (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721331))))) (content!3113 (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721331)))))))))

(declare-fun e!1198510 () List!20998)

(assert (=> d!574126 (= lt!721587 e!1198510)))

(declare-fun c!306188 () Bool)

(assert (=> d!574126 (= c!306188 ((_ is Nil!20916) (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721331))))))))

(assert (=> d!574126 (= (++!5686 (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721331)))) (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721331)))) lt!721587)))

(declare-fun b!1878052 () Bool)

(assert (=> b!1878052 (= e!1198510 (Cons!20916 (h!26317 (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721331))))) (++!5686 (t!173227 (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721331))))) (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721331))))))))

(declare-fun b!1878051 () Bool)

(assert (=> b!1878051 (= e!1198510 (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721331))))))

(declare-fun b!1878053 () Bool)

(declare-fun res!839555 () Bool)

(assert (=> b!1878053 (=> (not res!839555) (not e!1198511))))

(assert (=> b!1878053 (= res!839555 (= (size!16598 lt!721587) (+ (size!16598 (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721331))))) (size!16598 (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721331)))))))))

(assert (= (and d!574126 c!306188) b!1878051))

(assert (= (and d!574126 (not c!306188)) b!1878052))

(assert (= (and d!574126 res!839556) b!1878053))

(assert (= (and b!1878053 res!839555) b!1878054))

(declare-fun m!2305405 () Bool)

(assert (=> d!574126 m!2305405))

(assert (=> d!574126 m!2302809))

(declare-fun m!2305407 () Bool)

(assert (=> d!574126 m!2305407))

(assert (=> d!574126 m!2302811))

(declare-fun m!2305409 () Bool)

(assert (=> d!574126 m!2305409))

(assert (=> b!1878052 m!2302811))

(declare-fun m!2305411 () Bool)

(assert (=> b!1878052 m!2305411))

(declare-fun m!2305413 () Bool)

(assert (=> b!1878053 m!2305413))

(assert (=> b!1878053 m!2302809))

(declare-fun m!2305415 () Bool)

(assert (=> b!1878053 m!2305415))

(assert (=> b!1878053 m!2302811))

(declare-fun m!2305417 () Bool)

(assert (=> b!1878053 m!2305417))

(assert (=> b!1876566 d!574126))

(declare-fun d!574128 () Bool)

(assert (=> d!574128 (= (list!8535 (charsOf!2302 (h!26318 (t!173228 lt!721331)))) (list!8539 (c!305735 (charsOf!2302 (h!26318 (t!173228 lt!721331))))))))

(declare-fun bs!412327 () Bool)

(assert (= bs!412327 d!574128))

(declare-fun m!2305419 () Bool)

(assert (=> bs!412327 m!2305419))

(assert (=> b!1876566 d!574128))

(declare-fun d!574130 () Bool)

(declare-fun lt!721588 () BalanceConc!13714)

(assert (=> d!574130 (= (list!8535 lt!721588) (originalCharacters!4517 (h!26318 (t!173228 lt!721331))))))

(assert (=> d!574130 (= lt!721588 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721331))))) (value!117200 (h!26318 (t!173228 lt!721331)))))))

(assert (=> d!574130 (= (charsOf!2302 (h!26318 (t!173228 lt!721331))) lt!721588)))

(declare-fun b_lambda!61723 () Bool)

(assert (=> (not b_lambda!61723) (not d!574130)))

(declare-fun tb!113307 () Bool)

(declare-fun t!173600 () Bool)

(assert (=> (and b!1876224 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721331)))))) t!173600) tb!113307))

(declare-fun b!1878055 () Bool)

(declare-fun e!1198512 () Bool)

(declare-fun tp!535253 () Bool)

(assert (=> b!1878055 (= e!1198512 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721331))))) (value!117200 (h!26318 (t!173228 lt!721331)))))) tp!535253))))

(declare-fun result!137112 () Bool)

(assert (=> tb!113307 (= result!137112 (and (inv!27829 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721331))))) (value!117200 (h!26318 (t!173228 lt!721331))))) e!1198512))))

(assert (= tb!113307 b!1878055))

(declare-fun m!2305421 () Bool)

(assert (=> b!1878055 m!2305421))

(declare-fun m!2305423 () Bool)

(assert (=> tb!113307 m!2305423))

(assert (=> d!574130 t!173600))

(declare-fun b_and!144693 () Bool)

(assert (= b_and!144687 (and (=> t!173600 result!137112) b_and!144693)))

(declare-fun t!173602 () Bool)

(declare-fun tb!113309 () Bool)

(assert (=> (and b!1877022 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721331)))))) t!173602) tb!113309))

(declare-fun result!137114 () Bool)

(assert (= result!137114 result!137112))

(assert (=> d!574130 t!173602))

(declare-fun b_and!144695 () Bool)

(assert (= b_and!144689 (and (=> t!173602 result!137114) b_and!144695)))

(declare-fun tb!113311 () Bool)

(declare-fun t!173604 () Bool)

(assert (=> (and b!1877033 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721331)))))) t!173604) tb!113311))

(declare-fun result!137116 () Bool)

(assert (= result!137116 result!137112))

(assert (=> d!574130 t!173604))

(declare-fun b_and!144697 () Bool)

(assert (= b_and!144691 (and (=> t!173604 result!137116) b_and!144697)))

(declare-fun m!2305425 () Bool)

(assert (=> d!574130 m!2305425))

(declare-fun m!2305427 () Bool)

(assert (=> d!574130 m!2305427))

(assert (=> b!1876566 d!574130))

(declare-fun d!574132 () Bool)

(declare-fun c!306189 () Bool)

(assert (=> d!574132 (= c!306189 ((_ is Cons!20917) (t!173228 (t!173228 lt!721331))))))

(declare-fun e!1198513 () List!20998)

(assert (=> d!574132 (= (printList!1012 thiss!13718 (t!173228 (t!173228 lt!721331))) e!1198513)))

(declare-fun b!1878056 () Bool)

(assert (=> b!1878056 (= e!1198513 (++!5686 (list!8535 (charsOf!2302 (h!26318 (t!173228 (t!173228 lt!721331))))) (printList!1012 thiss!13718 (t!173228 (t!173228 (t!173228 lt!721331))))))))

(declare-fun b!1878057 () Bool)

(assert (=> b!1878057 (= e!1198513 Nil!20916)))

(assert (= (and d!574132 c!306189) b!1878056))

(assert (= (and d!574132 (not c!306189)) b!1878057))

(declare-fun m!2305429 () Bool)

(assert (=> b!1878056 m!2305429))

(assert (=> b!1878056 m!2305429))

(declare-fun m!2305431 () Bool)

(assert (=> b!1878056 m!2305431))

(declare-fun m!2305433 () Bool)

(assert (=> b!1878056 m!2305433))

(assert (=> b!1878056 m!2305431))

(assert (=> b!1878056 m!2305433))

(declare-fun m!2305435 () Bool)

(assert (=> b!1878056 m!2305435))

(assert (=> b!1876566 d!574132))

(declare-fun d!574134 () Bool)

(declare-fun lt!721589 () Int)

(assert (=> d!574134 (>= lt!721589 0)))

(declare-fun e!1198514 () Int)

(assert (=> d!574134 (= lt!721589 e!1198514)))

(declare-fun c!306190 () Bool)

(assert (=> d!574134 (= c!306190 ((_ is Nil!20916) lt!721362))))

(assert (=> d!574134 (= (size!16598 lt!721362) lt!721589)))

(declare-fun b!1878058 () Bool)

(assert (=> b!1878058 (= e!1198514 0)))

(declare-fun b!1878059 () Bool)

(assert (=> b!1878059 (= e!1198514 (+ 1 (size!16598 (t!173227 lt!721362))))))

(assert (= (and d!574134 c!306190) b!1878058))

(assert (= (and d!574134 (not c!306190)) b!1878059))

(declare-fun m!2305437 () Bool)

(assert (=> b!1878059 m!2305437))

(assert (=> b!1876529 d!574134))

(assert (=> b!1876529 d!573864))

(assert (=> b!1876529 d!573912))

(assert (=> d!573374 d!573990))

(assert (=> d!573374 d!573908))

(declare-fun lt!721590 () List!20998)

(declare-fun e!1198516 () Bool)

(declare-fun b!1878063 () Bool)

(assert (=> b!1878063 (= e!1198516 (or (not (= (printList!1012 thiss!13718 (t!173228 lt!721331)) Nil!20916)) (= lt!721590 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721331)))))))))

(declare-fun d!574136 () Bool)

(assert (=> d!574136 e!1198516))

(declare-fun res!839558 () Bool)

(assert (=> d!574136 (=> (not res!839558) (not e!1198516))))

(assert (=> d!574136 (= res!839558 (= (content!3113 lt!721590) ((_ map or) (content!3113 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721331))))) (content!3113 (printList!1012 thiss!13718 (t!173228 lt!721331))))))))

(declare-fun e!1198515 () List!20998)

(assert (=> d!574136 (= lt!721590 e!1198515)))

(declare-fun c!306191 () Bool)

(assert (=> d!574136 (= c!306191 ((_ is Nil!20916) (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721331))))))))

(assert (=> d!574136 (= (++!5686 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721331)))) (printList!1012 thiss!13718 (t!173228 lt!721331))) lt!721590)))

(declare-fun b!1878061 () Bool)

(assert (=> b!1878061 (= e!1198515 (Cons!20916 (h!26317 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721331))))) (++!5686 (t!173227 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721331))))) (printList!1012 thiss!13718 (t!173228 lt!721331)))))))

(declare-fun b!1878060 () Bool)

(assert (=> b!1878060 (= e!1198515 (printList!1012 thiss!13718 (t!173228 lt!721331)))))

(declare-fun b!1878062 () Bool)

(declare-fun res!839557 () Bool)

(assert (=> b!1878062 (=> (not res!839557) (not e!1198516))))

(assert (=> b!1878062 (= res!839557 (= (size!16598 lt!721590) (+ (size!16598 (t!173227 (list!8535 (charsOf!2302 (h!26318 lt!721331))))) (size!16598 (printList!1012 thiss!13718 (t!173228 lt!721331))))))))

(assert (= (and d!574136 c!306191) b!1878060))

(assert (= (and d!574136 (not c!306191)) b!1878061))

(assert (= (and d!574136 res!839558) b!1878062))

(assert (= (and b!1878062 res!839557) b!1878063))

(declare-fun m!2305439 () Bool)

(assert (=> d!574136 m!2305439))

(assert (=> d!574136 m!2305105))

(assert (=> d!574136 m!2302571))

(assert (=> d!574136 m!2302787))

(assert (=> b!1878061 m!2302571))

(declare-fun m!2305441 () Bool)

(assert (=> b!1878061 m!2305441))

(declare-fun m!2305443 () Bool)

(assert (=> b!1878062 m!2305443))

(assert (=> b!1878062 m!2305217))

(assert (=> b!1878062 m!2302571))

(assert (=> b!1878062 m!2302795))

(assert (=> b!1876562 d!574136))

(assert (=> b!1876509 d!573378))

(assert (=> b!1876509 d!573380))

(declare-fun d!574138 () Bool)

(declare-fun lt!721591 () Int)

(assert (=> d!574138 (>= lt!721591 0)))

(declare-fun e!1198517 () Int)

(assert (=> d!574138 (= lt!721591 e!1198517)))

(declare-fun c!306192 () Bool)

(assert (=> d!574138 (= c!306192 ((_ is Nil!20917) (innerList!7010 (xs!9834 (c!305736 v!6352)))))))

(assert (=> d!574138 (= (size!16601 (innerList!7010 (xs!9834 (c!305736 v!6352)))) lt!721591)))

(declare-fun b!1878064 () Bool)

(assert (=> b!1878064 (= e!1198517 0)))

(declare-fun b!1878065 () Bool)

(assert (=> b!1878065 (= e!1198517 (+ 1 (size!16601 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))))

(assert (= (and d!574138 c!306192) b!1878064))

(assert (= (and d!574138 (not c!306192)) b!1878065))

(declare-fun m!2305445 () Bool)

(assert (=> b!1878065 m!2305445))

(assert (=> d!573396 d!574138))

(declare-fun d!574140 () Bool)

(declare-fun res!839565 () Bool)

(declare-fun e!1198520 () Bool)

(assert (=> d!574140 (=> (not res!839565) (not e!1198520))))

(declare-fun size!16604 (Conc!6949) Int)

(assert (=> d!574140 (= res!839565 (= (csize!14128 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))) (+ (size!16604 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))) (size!16604 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))))))))

(assert (=> d!574140 (= (inv!27836 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))) e!1198520)))

(declare-fun b!1878072 () Bool)

(declare-fun res!839566 () Bool)

(assert (=> b!1878072 (=> (not res!839566) (not e!1198520))))

(assert (=> b!1878072 (= res!839566 (and (not (= (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))) Empty!6949)) (not (= (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))) Empty!6949))))))

(declare-fun b!1878073 () Bool)

(declare-fun res!839567 () Bool)

(assert (=> b!1878073 (=> (not res!839567) (not e!1198520))))

(assert (=> b!1878073 (= res!839567 (= (cheight!7160 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))) (+ (max!0 (height!1089 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))) (height!1089 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))) 1)))))

(declare-fun b!1878074 () Bool)

(assert (=> b!1878074 (= e!1198520 (<= 0 (cheight!7160 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))))))

(assert (= (and d!574140 res!839565) b!1878072))

(assert (= (and b!1878072 res!839566) b!1878073))

(assert (= (and b!1878073 res!839567) b!1878074))

(declare-fun m!2305447 () Bool)

(assert (=> d!574140 m!2305447))

(declare-fun m!2305449 () Bool)

(assert (=> d!574140 m!2305449))

(assert (=> b!1878073 m!2305071))

(assert (=> b!1878073 m!2305073))

(assert (=> b!1878073 m!2305071))

(assert (=> b!1878073 m!2305073))

(declare-fun m!2305451 () Bool)

(assert (=> b!1878073 m!2305451))

(assert (=> b!1876918 d!574140))

(declare-fun d!574142 () Bool)

(declare-fun c!306193 () Bool)

(assert (=> d!574142 (= c!306193 ((_ is Node!6950) (left!16811 (right!17141 (c!305736 acc!408)))))))

(declare-fun e!1198521 () Bool)

(assert (=> d!574142 (= (inv!27821 (left!16811 (right!17141 (c!305736 acc!408)))) e!1198521)))

(declare-fun b!1878075 () Bool)

(assert (=> b!1878075 (= e!1198521 (inv!27826 (left!16811 (right!17141 (c!305736 acc!408)))))))

(declare-fun b!1878076 () Bool)

(declare-fun e!1198522 () Bool)

(assert (=> b!1878076 (= e!1198521 e!1198522)))

(declare-fun res!839568 () Bool)

(assert (=> b!1878076 (= res!839568 (not ((_ is Leaf!10226) (left!16811 (right!17141 (c!305736 acc!408))))))))

(assert (=> b!1878076 (=> res!839568 e!1198522)))

(declare-fun b!1878077 () Bool)

(assert (=> b!1878077 (= e!1198522 (inv!27827 (left!16811 (right!17141 (c!305736 acc!408)))))))

(assert (= (and d!574142 c!306193) b!1878075))

(assert (= (and d!574142 (not c!306193)) b!1878076))

(assert (= (and b!1878076 (not res!839568)) b!1878077))

(declare-fun m!2305453 () Bool)

(assert (=> b!1878075 m!2305453))

(declare-fun m!2305455 () Bool)

(assert (=> b!1878077 m!2305455))

(assert (=> b!1876987 d!574142))

(declare-fun d!574144 () Bool)

(declare-fun c!306194 () Bool)

(assert (=> d!574144 (= c!306194 ((_ is Node!6950) (right!17141 (right!17141 (c!305736 acc!408)))))))

(declare-fun e!1198523 () Bool)

(assert (=> d!574144 (= (inv!27821 (right!17141 (right!17141 (c!305736 acc!408)))) e!1198523)))

(declare-fun b!1878078 () Bool)

(assert (=> b!1878078 (= e!1198523 (inv!27826 (right!17141 (right!17141 (c!305736 acc!408)))))))

(declare-fun b!1878079 () Bool)

(declare-fun e!1198524 () Bool)

(assert (=> b!1878079 (= e!1198523 e!1198524)))

(declare-fun res!839569 () Bool)

(assert (=> b!1878079 (= res!839569 (not ((_ is Leaf!10226) (right!17141 (right!17141 (c!305736 acc!408))))))))

(assert (=> b!1878079 (=> res!839569 e!1198524)))

(declare-fun b!1878080 () Bool)

(assert (=> b!1878080 (= e!1198524 (inv!27827 (right!17141 (right!17141 (c!305736 acc!408)))))))

(assert (= (and d!574144 c!306194) b!1878078))

(assert (= (and d!574144 (not c!306194)) b!1878079))

(assert (= (and b!1878079 (not res!839569)) b!1878080))

(declare-fun m!2305457 () Bool)

(assert (=> b!1878078 m!2305457))

(declare-fun m!2305459 () Bool)

(assert (=> b!1878080 m!2305459))

(assert (=> b!1876987 d!574144))

(declare-fun b!1878082 () Bool)

(declare-fun e!1198525 () List!20998)

(declare-fun e!1198526 () List!20998)

(assert (=> b!1878082 (= e!1198525 e!1198526)))

(declare-fun c!306196 () Bool)

(assert (=> b!1878082 (= c!306196 ((_ is Leaf!10225) (c!305735 (charsOf!2302 separatorToken!84))))))

(declare-fun d!574146 () Bool)

(declare-fun c!306195 () Bool)

(assert (=> d!574146 (= c!306195 ((_ is Empty!6949) (c!305735 (charsOf!2302 separatorToken!84))))))

(assert (=> d!574146 (= (list!8539 (c!305735 (charsOf!2302 separatorToken!84))) e!1198525)))

(declare-fun b!1878081 () Bool)

(assert (=> b!1878081 (= e!1198525 Nil!20916)))

(declare-fun b!1878084 () Bool)

(assert (=> b!1878084 (= e!1198526 (++!5686 (list!8539 (left!16810 (c!305735 (charsOf!2302 separatorToken!84)))) (list!8539 (right!17140 (c!305735 (charsOf!2302 separatorToken!84))))))))

(declare-fun b!1878083 () Bool)

(assert (=> b!1878083 (= e!1198526 (list!8542 (xs!9833 (c!305735 (charsOf!2302 separatorToken!84)))))))

(assert (= (and d!574146 c!306195) b!1878081))

(assert (= (and d!574146 (not c!306195)) b!1878082))

(assert (= (and b!1878082 c!306196) b!1878083))

(assert (= (and b!1878082 (not c!306196)) b!1878084))

(declare-fun m!2305461 () Bool)

(assert (=> b!1878084 m!2305461))

(declare-fun m!2305463 () Bool)

(assert (=> b!1878084 m!2305463))

(assert (=> b!1878084 m!2305461))

(assert (=> b!1878084 m!2305463))

(declare-fun m!2305465 () Bool)

(assert (=> b!1878084 m!2305465))

(declare-fun m!2305467 () Bool)

(assert (=> b!1878083 m!2305467))

(assert (=> d!573170 d!574146))

(assert (=> b!1876882 d!574082))

(declare-fun d!574148 () Bool)

(declare-fun lt!721592 () Int)

(assert (=> d!574148 (= lt!721592 (size!16601 (list!8536 (left!16811 (c!305736 v!6352)))))))

(assert (=> d!574148 (= lt!721592 (ite ((_ is Empty!6950) (left!16811 (c!305736 v!6352))) 0 (ite ((_ is Leaf!10226) (left!16811 (c!305736 v!6352))) (csize!14131 (left!16811 (c!305736 v!6352))) (csize!14130 (left!16811 (c!305736 v!6352))))))))

(assert (=> d!574148 (= (size!16602 (left!16811 (c!305736 v!6352))) lt!721592)))

(declare-fun bs!412328 () Bool)

(assert (= bs!412328 d!574148))

(assert (=> bs!412328 m!2303223))

(assert (=> bs!412328 m!2303223))

(assert (=> bs!412328 m!2304987))

(assert (=> d!573370 d!574148))

(declare-fun d!574150 () Bool)

(declare-fun lt!721593 () Int)

(assert (=> d!574150 (= lt!721593 (size!16601 (list!8536 (right!17141 (c!305736 v!6352)))))))

(assert (=> d!574150 (= lt!721593 (ite ((_ is Empty!6950) (right!17141 (c!305736 v!6352))) 0 (ite ((_ is Leaf!10226) (right!17141 (c!305736 v!6352))) (csize!14131 (right!17141 (c!305736 v!6352))) (csize!14130 (right!17141 (c!305736 v!6352))))))))

(assert (=> d!574150 (= (size!16602 (right!17141 (c!305736 v!6352))) lt!721593)))

(declare-fun bs!412329 () Bool)

(assert (= bs!412329 d!574150))

(assert (=> bs!412329 m!2303225))

(assert (=> bs!412329 m!2303225))

(assert (=> bs!412329 m!2304989))

(assert (=> d!573370 d!574150))

(declare-fun b!1878088 () Bool)

(declare-fun b_free!52253 () Bool)

(declare-fun b_next!52957 () Bool)

(assert (=> b!1878088 (= b_free!52253 (not b_next!52957))))

(declare-fun tp!535255 () Bool)

(declare-fun b_and!144699 () Bool)

(assert (=> b!1878088 (= tp!535255 b_and!144699)))

(declare-fun b_free!52255 () Bool)

(declare-fun b_next!52959 () Bool)

(assert (=> b!1878088 (= b_free!52255 (not b_next!52959))))

(declare-fun tb!113313 () Bool)

(declare-fun t!173606 () Bool)

(assert (=> (and b!1878088 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84)))) t!173606) tb!113313))

(declare-fun result!137118 () Bool)

(assert (= result!137118 result!136738))

(assert (=> b!1876253 t!173606))

(assert (=> d!573172 t!173606))

(declare-fun tb!113315 () Bool)

(declare-fun t!173608 () Bool)

(assert (=> (and b!1878088 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721331)))))) t!173608) tb!113315))

(declare-fun result!137120 () Bool)

(assert (= result!137120 result!137112))

(assert (=> d!574130 t!173608))

(declare-fun tb!113317 () Bool)

(declare-fun t!173610 () Bool)

(assert (=> (and b!1878088 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331))))) t!173610) tb!113317))

(declare-fun result!137122 () Bool)

(assert (= result!137122 result!136756))

(assert (=> d!573192 t!173610))

(declare-fun tb!113319 () Bool)

(declare-fun t!173612 () Bool)

(assert (=> (and b!1878088 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) t!173612) tb!113319))

(declare-fun result!137124 () Bool)

(assert (= result!137124 result!137088))

(assert (=> b!1877919 t!173612))

(declare-fun tb!113321 () Bool)

(declare-fun t!173614 () Bool)

(assert (=> (and b!1878088 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721369))))) t!173614) tb!113321))

(declare-fun result!137126 () Bool)

(assert (= result!137126 result!137052))

(assert (=> d!573786 t!173614))

(declare-fun t!173616 () Bool)

(declare-fun tb!113323 () Bool)

(assert (=> (and b!1878088 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335))))) t!173616) tb!113323))

(declare-fun result!137128 () Bool)

(assert (= result!137128 result!136784))

(assert (=> d!573350 t!173616))

(declare-fun tb!113325 () Bool)

(declare-fun t!173618 () Bool)

(assert (=> (and b!1878088 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))) t!173618) tb!113325))

(declare-fun result!137130 () Bool)

(assert (= result!137130 result!137082))

(assert (=> d!573946 t!173618))

(declare-fun t!173620 () Bool)

(declare-fun tb!113327 () Bool)

(assert (=> (and b!1878088 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721365))))) t!173620) tb!113327))

(declare-fun result!137132 () Bool)

(assert (= result!137132 result!137070))

(assert (=> d!573922 t!173620))

(declare-fun tb!113329 () Bool)

(declare-fun t!173622 () Bool)

(assert (=> (and b!1878088 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))) t!173622) tb!113329))

(declare-fun result!137134 () Bool)

(assert (= result!137134 result!136754))

(assert (=> d!573154 t!173622))

(declare-fun tb!113331 () Bool)

(declare-fun t!173624 () Bool)

(assert (=> (and b!1878088 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))) t!173624) tb!113331))

(declare-fun result!137136 () Bool)

(assert (= result!137136 result!137064))

(assert (=> d!573904 t!173624))

(declare-fun tb!113333 () Bool)

(declare-fun t!173626 () Bool)

(assert (=> (and b!1878088 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721336))))) t!173626) tb!113333))

(declare-fun result!137138 () Bool)

(assert (= result!137138 result!137076))

(assert (=> d!573932 t!173626))

(declare-fun t!173628 () Bool)

(declare-fun tb!113335 () Bool)

(assert (=> (and b!1878088 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))) t!173628) tb!113335))

(declare-fun result!137140 () Bool)

(assert (= result!137140 result!137100))

(assert (=> d!574074 t!173628))

(declare-fun tb!113337 () Bool)

(declare-fun t!173630 () Bool)

(assert (=> (and b!1878088 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721335)))))) t!173630) tb!113337))

(declare-fun result!137142 () Bool)

(assert (= result!137142 result!137106))

(assert (=> d!574088 t!173630))

(declare-fun t!173632 () Bool)

(declare-fun tb!113339 () Bool)

(assert (=> (and b!1878088 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))))) t!173632) tb!113339))

(declare-fun result!137144 () Bool)

(assert (= result!137144 result!137094))

(assert (=> d!574008 t!173632))

(declare-fun t!173634 () Bool)

(declare-fun tb!113341 () Bool)

(assert (=> (and b!1878088 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) t!173634) tb!113341))

(declare-fun result!137146 () Bool)

(assert (= result!137146 result!137058))

(assert (=> b!1877668 t!173634))

(declare-fun b_and!144701 () Bool)

(declare-fun tp!535258 () Bool)

(assert (=> b!1878088 (= tp!535258 (and (=> t!173620 result!137132) (=> t!173634 result!137146) (=> t!173614 result!137126) (=> t!173632 result!137144) (=> t!173606 result!137118) (=> t!173630 result!137142) (=> t!173610 result!137122) (=> t!173612 result!137124) (=> t!173628 result!137140) (=> t!173626 result!137138) (=> t!173622 result!137134) (=> t!173618 result!137130) (=> t!173624 result!137136) (=> t!173616 result!137128) (=> t!173608 result!137120) b_and!144701))))

(declare-fun e!1198531 () Bool)

(assert (=> b!1878088 (= e!1198531 (and tp!535255 tp!535258))))

(declare-fun e!1198529 () Bool)

(assert (=> b!1876986 (= tp!534964 e!1198529)))

(declare-fun b!1878087 () Bool)

(declare-fun e!1198532 () Bool)

(declare-fun tp!535257 () Bool)

(assert (=> b!1878087 (= e!1198532 (and tp!535257 (inv!27815 (tag!4124 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (inv!27820 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) e!1198531))))

(declare-fun tp!535256 () Bool)

(declare-fun b!1878085 () Bool)

(declare-fun e!1198528 () Bool)

(assert (=> b!1878085 (= e!1198529 (and (inv!27823 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))) e!1198528 tp!535256))))

(declare-fun b!1878086 () Bool)

(declare-fun tp!535254 () Bool)

(assert (=> b!1878086 (= e!1198528 (and (inv!21 (value!117200 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408))))))) e!1198532 tp!535254))))

(assert (= b!1878087 b!1878088))

(assert (= b!1878086 b!1878087))

(assert (= b!1878085 b!1878086))

(assert (= (and b!1876986 ((_ is Cons!20917) (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))) b!1878085))

(declare-fun m!2305469 () Bool)

(assert (=> b!1878087 m!2305469))

(declare-fun m!2305471 () Bool)

(assert (=> b!1878087 m!2305471))

(declare-fun m!2305473 () Bool)

(assert (=> b!1878085 m!2305473))

(declare-fun m!2305475 () Bool)

(assert (=> b!1878086 m!2305475))

(declare-fun tp!535259 () Bool)

(declare-fun tp!535260 () Bool)

(declare-fun b!1878089 () Bool)

(declare-fun e!1198534 () Bool)

(assert (=> b!1878089 (= e!1198534 (and (inv!27821 (left!16811 (left!16811 (left!16811 (c!305736 acc!408))))) tp!535260 (inv!27821 (right!17141 (left!16811 (left!16811 (c!305736 acc!408))))) tp!535259))))

(declare-fun b!1878091 () Bool)

(declare-fun e!1198533 () Bool)

(declare-fun tp!535261 () Bool)

(assert (=> b!1878091 (= e!1198533 tp!535261)))

(declare-fun b!1878090 () Bool)

(assert (=> b!1878090 (= e!1198534 (and (inv!27833 (xs!9834 (left!16811 (left!16811 (c!305736 acc!408))))) e!1198533))))

(assert (=> b!1876984 (= tp!534963 (and (inv!27821 (left!16811 (left!16811 (c!305736 acc!408)))) e!1198534))))

(assert (= (and b!1876984 ((_ is Node!6950) (left!16811 (left!16811 (c!305736 acc!408))))) b!1878089))

(assert (= b!1878090 b!1878091))

(assert (= (and b!1876984 ((_ is Leaf!10226) (left!16811 (left!16811 (c!305736 acc!408))))) b!1878090))

(declare-fun m!2305477 () Bool)

(assert (=> b!1878089 m!2305477))

(declare-fun m!2305479 () Bool)

(assert (=> b!1878089 m!2305479))

(declare-fun m!2305481 () Bool)

(assert (=> b!1878090 m!2305481))

(assert (=> b!1876984 m!2303389))

(declare-fun tp!535262 () Bool)

(declare-fun b!1878092 () Bool)

(declare-fun tp!535263 () Bool)

(declare-fun e!1198536 () Bool)

(assert (=> b!1878092 (= e!1198536 (and (inv!27821 (left!16811 (right!17141 (left!16811 (c!305736 acc!408))))) tp!535263 (inv!27821 (right!17141 (right!17141 (left!16811 (c!305736 acc!408))))) tp!535262))))

(declare-fun b!1878094 () Bool)

(declare-fun e!1198535 () Bool)

(declare-fun tp!535264 () Bool)

(assert (=> b!1878094 (= e!1198535 tp!535264)))

(declare-fun b!1878093 () Bool)

(assert (=> b!1878093 (= e!1198536 (and (inv!27833 (xs!9834 (right!17141 (left!16811 (c!305736 acc!408))))) e!1198535))))

(assert (=> b!1876984 (= tp!534962 (and (inv!27821 (right!17141 (left!16811 (c!305736 acc!408)))) e!1198536))))

(assert (= (and b!1876984 ((_ is Node!6950) (right!17141 (left!16811 (c!305736 acc!408))))) b!1878092))

(assert (= b!1878093 b!1878094))

(assert (= (and b!1876984 ((_ is Leaf!10226) (right!17141 (left!16811 (c!305736 acc!408))))) b!1878093))

(declare-fun m!2305483 () Bool)

(assert (=> b!1878092 m!2305483))

(declare-fun m!2305485 () Bool)

(assert (=> b!1878092 m!2305485))

(declare-fun m!2305487 () Bool)

(assert (=> b!1878093 m!2305487))

(assert (=> b!1876984 m!2303391))

(declare-fun b!1878097 () Bool)

(declare-fun e!1198537 () Bool)

(declare-fun tp!535267 () Bool)

(assert (=> b!1878097 (= e!1198537 tp!535267)))

(declare-fun b!1878096 () Bool)

(declare-fun tp!535269 () Bool)

(declare-fun tp!535266 () Bool)

(assert (=> b!1878096 (= e!1198537 (and tp!535269 tp!535266))))

(assert (=> b!1877021 (= tp!535000 e!1198537)))

(declare-fun b!1878098 () Bool)

(declare-fun tp!535265 () Bool)

(declare-fun tp!535268 () Bool)

(assert (=> b!1878098 (= e!1198537 (and tp!535265 tp!535268))))

(declare-fun b!1878095 () Bool)

(assert (=> b!1878095 (= e!1198537 tp_is_empty!8895)))

(assert (= (and b!1877021 ((_ is ElementMatch!5119) (regex!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) b!1878095))

(assert (= (and b!1877021 ((_ is Concat!8966) (regex!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) b!1878096))

(assert (= (and b!1877021 ((_ is Star!5119) (regex!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) b!1878097))

(assert (= (and b!1877021 ((_ is Union!5119) (regex!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) b!1878098))

(declare-fun b!1878101 () Bool)

(declare-fun e!1198538 () Bool)

(declare-fun tp!535272 () Bool)

(assert (=> b!1878101 (= e!1198538 tp!535272)))

(declare-fun b!1878100 () Bool)

(declare-fun tp!535274 () Bool)

(declare-fun tp!535271 () Bool)

(assert (=> b!1878100 (= e!1198538 (and tp!535274 tp!535271))))

(assert (=> b!1876997 (= tp!534973 e!1198538)))

(declare-fun b!1878102 () Bool)

(declare-fun tp!535270 () Bool)

(declare-fun tp!535273 () Bool)

(assert (=> b!1878102 (= e!1198538 (and tp!535270 tp!535273))))

(declare-fun b!1878099 () Bool)

(assert (=> b!1878099 (= e!1198538 tp_is_empty!8895)))

(assert (= (and b!1876997 ((_ is ElementMatch!5119) (regOne!10751 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878099))

(assert (= (and b!1876997 ((_ is Concat!8966) (regOne!10751 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878100))

(assert (= (and b!1876997 ((_ is Star!5119) (regOne!10751 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878101))

(assert (= (and b!1876997 ((_ is Union!5119) (regOne!10751 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878102))

(declare-fun b!1878105 () Bool)

(declare-fun e!1198539 () Bool)

(declare-fun tp!535277 () Bool)

(assert (=> b!1878105 (= e!1198539 tp!535277)))

(declare-fun b!1878104 () Bool)

(declare-fun tp!535279 () Bool)

(declare-fun tp!535276 () Bool)

(assert (=> b!1878104 (= e!1198539 (and tp!535279 tp!535276))))

(assert (=> b!1876997 (= tp!534976 e!1198539)))

(declare-fun b!1878106 () Bool)

(declare-fun tp!535275 () Bool)

(declare-fun tp!535278 () Bool)

(assert (=> b!1878106 (= e!1198539 (and tp!535275 tp!535278))))

(declare-fun b!1878103 () Bool)

(assert (=> b!1878103 (= e!1198539 tp_is_empty!8895)))

(assert (= (and b!1876997 ((_ is ElementMatch!5119) (regTwo!10751 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878103))

(assert (= (and b!1876997 ((_ is Concat!8966) (regTwo!10751 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878104))

(assert (= (and b!1876997 ((_ is Star!5119) (regTwo!10751 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878105))

(assert (= (and b!1876997 ((_ is Union!5119) (regTwo!10751 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878106))

(declare-fun b!1878107 () Bool)

(declare-fun e!1198540 () Bool)

(declare-fun tp!535280 () Bool)

(assert (=> b!1878107 (= e!1198540 (and tp_is_empty!8895 tp!535280))))

(assert (=> b!1877020 (= tp!534997 e!1198540)))

(assert (= (and b!1877020 ((_ is Cons!20916) (originalCharacters!4517 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) b!1878107))

(declare-fun b!1878111 () Bool)

(declare-fun b_free!52257 () Bool)

(declare-fun b_next!52961 () Bool)

(assert (=> b!1878111 (= b_free!52257 (not b_next!52961))))

(declare-fun tp!535282 () Bool)

(declare-fun b_and!144703 () Bool)

(assert (=> b!1878111 (= tp!535282 b_and!144703)))

(declare-fun b_free!52259 () Bool)

(declare-fun b_next!52963 () Bool)

(assert (=> b!1878111 (= b_free!52259 (not b_next!52963))))

(declare-fun t!173636 () Bool)

(declare-fun tb!113343 () Bool)

(assert (=> (and b!1878111 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84)))) t!173636) tb!113343))

(declare-fun result!137148 () Bool)

(assert (= result!137148 result!136738))

(assert (=> b!1876253 t!173636))

(assert (=> d!573172 t!173636))

(declare-fun tb!113345 () Bool)

(declare-fun t!173638 () Bool)

(assert (=> (and b!1878111 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721331)))))) t!173638) tb!113345))

(declare-fun result!137150 () Bool)

(assert (= result!137150 result!137112))

(assert (=> d!574130 t!173638))

(declare-fun t!173640 () Bool)

(declare-fun tb!113347 () Bool)

(assert (=> (and b!1878111 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331))))) t!173640) tb!113347))

(declare-fun result!137152 () Bool)

(assert (= result!137152 result!136756))

(assert (=> d!573192 t!173640))

(declare-fun tb!113349 () Bool)

(declare-fun t!173642 () Bool)

(assert (=> (and b!1878111 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) t!173642) tb!113349))

(declare-fun result!137154 () Bool)

(assert (= result!137154 result!137088))

(assert (=> b!1877919 t!173642))

(declare-fun t!173644 () Bool)

(declare-fun tb!113351 () Bool)

(assert (=> (and b!1878111 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721369))))) t!173644) tb!113351))

(declare-fun result!137156 () Bool)

(assert (= result!137156 result!137052))

(assert (=> d!573786 t!173644))

(declare-fun tb!113353 () Bool)

(declare-fun t!173646 () Bool)

(assert (=> (and b!1878111 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335))))) t!173646) tb!113353))

(declare-fun result!137158 () Bool)

(assert (= result!137158 result!136784))

(assert (=> d!573350 t!173646))

(declare-fun t!173648 () Bool)

(declare-fun tb!113355 () Bool)

(assert (=> (and b!1878111 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))) t!173648) tb!113355))

(declare-fun result!137160 () Bool)

(assert (= result!137160 result!137082))

(assert (=> d!573946 t!173648))

(declare-fun tb!113357 () Bool)

(declare-fun t!173650 () Bool)

(assert (=> (and b!1878111 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721365))))) t!173650) tb!113357))

(declare-fun result!137162 () Bool)

(assert (= result!137162 result!137070))

(assert (=> d!573922 t!173650))

(declare-fun t!173652 () Bool)

(declare-fun tb!113359 () Bool)

(assert (=> (and b!1878111 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))) t!173652) tb!113359))

(declare-fun result!137164 () Bool)

(assert (= result!137164 result!136754))

(assert (=> d!573154 t!173652))

(declare-fun tb!113361 () Bool)

(declare-fun t!173654 () Bool)

(assert (=> (and b!1878111 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))) t!173654) tb!113361))

(declare-fun result!137166 () Bool)

(assert (= result!137166 result!137064))

(assert (=> d!573904 t!173654))

(declare-fun tb!113363 () Bool)

(declare-fun t!173656 () Bool)

(assert (=> (and b!1878111 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721336))))) t!173656) tb!113363))

(declare-fun result!137168 () Bool)

(assert (= result!137168 result!137076))

(assert (=> d!573932 t!173656))

(declare-fun tb!113365 () Bool)

(declare-fun t!173658 () Bool)

(assert (=> (and b!1878111 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))) t!173658) tb!113365))

(declare-fun result!137170 () Bool)

(assert (= result!137170 result!137100))

(assert (=> d!574074 t!173658))

(declare-fun tb!113367 () Bool)

(declare-fun t!173660 () Bool)

(assert (=> (and b!1878111 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721335)))))) t!173660) tb!113367))

(declare-fun result!137172 () Bool)

(assert (= result!137172 result!137106))

(assert (=> d!574088 t!173660))

(declare-fun t!173662 () Bool)

(declare-fun tb!113369 () Bool)

(assert (=> (and b!1878111 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))))) t!173662) tb!113369))

(declare-fun result!137174 () Bool)

(assert (= result!137174 result!137094))

(assert (=> d!574008 t!173662))

(declare-fun t!173664 () Bool)

(declare-fun tb!113371 () Bool)

(assert (=> (and b!1878111 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) t!173664) tb!113371))

(declare-fun result!137176 () Bool)

(assert (= result!137176 result!137058))

(assert (=> b!1877668 t!173664))

(declare-fun tp!535285 () Bool)

(declare-fun b_and!144705 () Bool)

(assert (=> b!1878111 (= tp!535285 (and (=> t!173646 result!137158) (=> t!173656 result!137168) (=> t!173642 result!137154) (=> t!173654 result!137166) (=> t!173644 result!137156) (=> t!173638 result!137150) (=> t!173658 result!137170) (=> t!173650 result!137162) (=> t!173660 result!137172) (=> t!173664 result!137176) (=> t!173648 result!137160) (=> t!173662 result!137174) (=> t!173652 result!137164) (=> t!173636 result!137148) (=> t!173640 result!137152) b_and!144705))))

(declare-fun e!1198545 () Bool)

(assert (=> b!1878111 (= e!1198545 (and tp!535282 tp!535285))))

(declare-fun e!1198543 () Bool)

(assert (=> b!1877019 (= tp!534999 e!1198543)))

(declare-fun b!1878110 () Bool)

(declare-fun tp!535284 () Bool)

(declare-fun e!1198546 () Bool)

(assert (=> b!1878110 (= e!1198546 (and tp!535284 (inv!27815 (tag!4124 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (inv!27820 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) e!1198545))))

(declare-fun tp!535283 () Bool)

(declare-fun e!1198542 () Bool)

(declare-fun b!1878108 () Bool)

(assert (=> b!1878108 (= e!1198543 (and (inv!27823 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))) e!1198542 tp!535283))))

(declare-fun b!1878109 () Bool)

(declare-fun tp!535281 () Bool)

(assert (=> b!1878109 (= e!1198542 (and (inv!21 (value!117200 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) e!1198546 tp!535281))))

(assert (= b!1878110 b!1878111))

(assert (= b!1878109 b!1878110))

(assert (= b!1878108 b!1878109))

(assert (= (and b!1877019 ((_ is Cons!20917) (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))) b!1878108))

(declare-fun m!2305489 () Bool)

(assert (=> b!1878110 m!2305489))

(declare-fun m!2305491 () Bool)

(assert (=> b!1878110 m!2305491))

(declare-fun m!2305493 () Bool)

(assert (=> b!1878108 m!2305493))

(declare-fun m!2305495 () Bool)

(assert (=> b!1878109 m!2305495))

(declare-fun b!1878114 () Bool)

(declare-fun e!1198547 () Bool)

(declare-fun tp!535288 () Bool)

(assert (=> b!1878114 (= e!1198547 tp!535288)))

(declare-fun b!1878113 () Bool)

(declare-fun tp!535290 () Bool)

(declare-fun tp!535287 () Bool)

(assert (=> b!1878113 (= e!1198547 (and tp!535290 tp!535287))))

(assert (=> b!1876996 (= tp!534975 e!1198547)))

(declare-fun b!1878115 () Bool)

(declare-fun tp!535286 () Bool)

(declare-fun tp!535289 () Bool)

(assert (=> b!1878115 (= e!1198547 (and tp!535286 tp!535289))))

(declare-fun b!1878112 () Bool)

(assert (=> b!1878112 (= e!1198547 tp_is_empty!8895)))

(assert (= (and b!1876996 ((_ is ElementMatch!5119) (reg!5448 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878112))

(assert (= (and b!1876996 ((_ is Concat!8966) (reg!5448 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878113))

(assert (= (and b!1876996 ((_ is Star!5119) (reg!5448 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878114))

(assert (= (and b!1876996 ((_ is Union!5119) (reg!5448 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878115))

(declare-fun b!1878118 () Bool)

(declare-fun e!1198548 () Bool)

(declare-fun tp!535293 () Bool)

(assert (=> b!1878118 (= e!1198548 tp!535293)))

(declare-fun b!1878117 () Bool)

(declare-fun tp!535295 () Bool)

(declare-fun tp!535292 () Bool)

(assert (=> b!1878117 (= e!1198548 (and tp!535295 tp!535292))))

(assert (=> b!1876995 (= tp!534977 e!1198548)))

(declare-fun b!1878119 () Bool)

(declare-fun tp!535291 () Bool)

(declare-fun tp!535294 () Bool)

(assert (=> b!1878119 (= e!1198548 (and tp!535291 tp!535294))))

(declare-fun b!1878116 () Bool)

(assert (=> b!1878116 (= e!1198548 tp_is_empty!8895)))

(assert (= (and b!1876995 ((_ is ElementMatch!5119) (regOne!10750 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878116))

(assert (= (and b!1876995 ((_ is Concat!8966) (regOne!10750 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878117))

(assert (= (and b!1876995 ((_ is Star!5119) (regOne!10750 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878118))

(assert (= (and b!1876995 ((_ is Union!5119) (regOne!10750 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878119))

(declare-fun b!1878122 () Bool)

(declare-fun e!1198549 () Bool)

(declare-fun tp!535298 () Bool)

(assert (=> b!1878122 (= e!1198549 tp!535298)))

(declare-fun b!1878121 () Bool)

(declare-fun tp!535300 () Bool)

(declare-fun tp!535297 () Bool)

(assert (=> b!1878121 (= e!1198549 (and tp!535300 tp!535297))))

(assert (=> b!1876995 (= tp!534974 e!1198549)))

(declare-fun b!1878123 () Bool)

(declare-fun tp!535296 () Bool)

(declare-fun tp!535299 () Bool)

(assert (=> b!1878123 (= e!1198549 (and tp!535296 tp!535299))))

(declare-fun b!1878120 () Bool)

(assert (=> b!1878120 (= e!1198549 tp_is_empty!8895)))

(assert (= (and b!1876995 ((_ is ElementMatch!5119) (regTwo!10750 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878120))

(assert (= (and b!1876995 ((_ is Concat!8966) (regTwo!10750 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878121))

(assert (= (and b!1876995 ((_ is Star!5119) (regTwo!10750 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878122))

(assert (= (and b!1876995 ((_ is Union!5119) (regTwo!10750 (regTwo!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878123))

(declare-fun tp!535303 () Bool)

(declare-fun b!1878124 () Bool)

(declare-fun tp!535302 () Bool)

(declare-fun e!1198550 () Bool)

(assert (=> b!1878124 (= e!1198550 (and (inv!27828 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (value!117200 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) tp!535303 (inv!27828 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (value!117200 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) tp!535302))))

(declare-fun b!1878126 () Bool)

(declare-fun e!1198551 () Bool)

(declare-fun tp!535301 () Bool)

(assert (=> b!1878126 (= e!1198551 tp!535301)))

(declare-fun b!1878125 () Bool)

(assert (=> b!1878125 (= e!1198550 (and (inv!27839 (xs!9833 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (value!117200 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) e!1198551))))

(assert (=> b!1876512 (= tp!534884 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (value!117200 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))) e!1198550))))

(assert (= (and b!1876512 ((_ is Node!6949) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (value!117200 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) b!1878124))

(assert (= b!1878125 b!1878126))

(assert (= (and b!1876512 ((_ is Leaf!10225) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))) (value!117200 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) b!1878125))

(declare-fun m!2305497 () Bool)

(assert (=> b!1878124 m!2305497))

(declare-fun m!2305499 () Bool)

(assert (=> b!1878124 m!2305499))

(declare-fun m!2305501 () Bool)

(assert (=> b!1878125 m!2305501))

(assert (=> b!1876512 m!2302651))

(declare-fun tp!535305 () Bool)

(declare-fun tp!535306 () Bool)

(declare-fun b!1878127 () Bool)

(declare-fun e!1198552 () Bool)

(assert (=> b!1878127 (= e!1198552 (and (inv!27828 (left!16810 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))) tp!535306 (inv!27828 (right!17140 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))) tp!535305))))

(declare-fun b!1878129 () Bool)

(declare-fun e!1198553 () Bool)

(declare-fun tp!535304 () Bool)

(assert (=> b!1878129 (= e!1198553 tp!535304)))

(declare-fun b!1878128 () Bool)

(assert (=> b!1878128 (= e!1198552 (and (inv!27839 (xs!9833 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))) e!1198553))))

(assert (=> b!1877006 (= tp!534986 (and (inv!27828 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))) e!1198552))))

(assert (= (and b!1877006 ((_ is Node!6949) (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))) b!1878127))

(assert (= b!1878128 b!1878129))

(assert (= (and b!1877006 ((_ is Leaf!10225) (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))) b!1878128))

(declare-fun m!2305503 () Bool)

(assert (=> b!1878127 m!2305503))

(declare-fun m!2305505 () Bool)

(assert (=> b!1878127 m!2305505))

(declare-fun m!2305507 () Bool)

(assert (=> b!1878128 m!2305507))

(assert (=> b!1877006 m!2303401))

(declare-fun tp!535308 () Bool)

(declare-fun e!1198554 () Bool)

(declare-fun b!1878130 () Bool)

(declare-fun tp!535309 () Bool)

(assert (=> b!1878130 (= e!1198554 (and (inv!27828 (left!16810 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))) tp!535309 (inv!27828 (right!17140 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))) tp!535308))))

(declare-fun b!1878132 () Bool)

(declare-fun e!1198555 () Bool)

(declare-fun tp!535307 () Bool)

(assert (=> b!1878132 (= e!1198555 tp!535307)))

(declare-fun b!1878131 () Bool)

(assert (=> b!1878131 (= e!1198554 (and (inv!27839 (xs!9833 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))) e!1198555))))

(assert (=> b!1877006 (= tp!534985 (and (inv!27828 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))) e!1198554))))

(assert (= (and b!1877006 ((_ is Node!6949) (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))) b!1878130))

(assert (= b!1878131 b!1878132))

(assert (= (and b!1877006 ((_ is Leaf!10225) (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84)))))) b!1878131))

(declare-fun m!2305509 () Bool)

(assert (=> b!1878130 m!2305509))

(declare-fun m!2305511 () Bool)

(assert (=> b!1878130 m!2305511))

(declare-fun m!2305513 () Bool)

(assert (=> b!1878131 m!2305513))

(assert (=> b!1877006 m!2303403))

(declare-fun b!1878136 () Bool)

(declare-fun b_free!52261 () Bool)

(declare-fun b_next!52965 () Bool)

(assert (=> b!1878136 (= b_free!52261 (not b_next!52965))))

(declare-fun tp!535311 () Bool)

(declare-fun b_and!144707 () Bool)

(assert (=> b!1878136 (= tp!535311 b_and!144707)))

(declare-fun b_free!52263 () Bool)

(declare-fun b_next!52967 () Bool)

(assert (=> b!1878136 (= b_free!52263 (not b_next!52967))))

(declare-fun tb!113373 () Bool)

(declare-fun t!173666 () Bool)

(assert (=> (and b!1878136 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84)))) t!173666) tb!113373))

(declare-fun result!137178 () Bool)

(assert (= result!137178 result!136738))

(assert (=> b!1876253 t!173666))

(assert (=> d!573172 t!173666))

(declare-fun t!173668 () Bool)

(declare-fun tb!113375 () Bool)

(assert (=> (and b!1878136 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721331)))))) t!173668) tb!113375))

(declare-fun result!137180 () Bool)

(assert (= result!137180 result!137112))

(assert (=> d!574130 t!173668))

(declare-fun t!173670 () Bool)

(declare-fun tb!113377 () Bool)

(assert (=> (and b!1878136 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331))))) t!173670) tb!113377))

(declare-fun result!137182 () Bool)

(assert (= result!137182 result!136756))

(assert (=> d!573192 t!173670))

(declare-fun t!173672 () Bool)

(declare-fun tb!113379 () Bool)

(assert (=> (and b!1878136 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) t!173672) tb!113379))

(declare-fun result!137184 () Bool)

(assert (= result!137184 result!137088))

(assert (=> b!1877919 t!173672))

(declare-fun t!173674 () Bool)

(declare-fun tb!113381 () Bool)

(assert (=> (and b!1878136 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721369))))) t!173674) tb!113381))

(declare-fun result!137186 () Bool)

(assert (= result!137186 result!137052))

(assert (=> d!573786 t!173674))

(declare-fun tb!113383 () Bool)

(declare-fun t!173676 () Bool)

(assert (=> (and b!1878136 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335))))) t!173676) tb!113383))

(declare-fun result!137188 () Bool)

(assert (= result!137188 result!136784))

(assert (=> d!573350 t!173676))

(declare-fun t!173678 () Bool)

(declare-fun tb!113385 () Bool)

(assert (=> (and b!1878136 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))) t!173678) tb!113385))

(declare-fun result!137190 () Bool)

(assert (= result!137190 result!137082))

(assert (=> d!573946 t!173678))

(declare-fun tb!113387 () Bool)

(declare-fun t!173680 () Bool)

(assert (=> (and b!1878136 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721365))))) t!173680) tb!113387))

(declare-fun result!137192 () Bool)

(assert (= result!137192 result!137070))

(assert (=> d!573922 t!173680))

(declare-fun tb!113389 () Bool)

(declare-fun t!173682 () Bool)

(assert (=> (and b!1878136 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))) t!173682) tb!113389))

(declare-fun result!137194 () Bool)

(assert (= result!137194 result!136754))

(assert (=> d!573154 t!173682))

(declare-fun t!173684 () Bool)

(declare-fun tb!113391 () Bool)

(assert (=> (and b!1878136 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))) t!173684) tb!113391))

(declare-fun result!137196 () Bool)

(assert (= result!137196 result!137064))

(assert (=> d!573904 t!173684))

(declare-fun t!173686 () Bool)

(declare-fun tb!113393 () Bool)

(assert (=> (and b!1878136 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721336))))) t!173686) tb!113393))

(declare-fun result!137198 () Bool)

(assert (= result!137198 result!137076))

(assert (=> d!573932 t!173686))

(declare-fun tb!113395 () Bool)

(declare-fun t!173688 () Bool)

(assert (=> (and b!1878136 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))) t!173688) tb!113395))

(declare-fun result!137200 () Bool)

(assert (= result!137200 result!137100))

(assert (=> d!574074 t!173688))

(declare-fun t!173690 () Bool)

(declare-fun tb!113397 () Bool)

(assert (=> (and b!1878136 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721335)))))) t!173690) tb!113397))

(declare-fun result!137202 () Bool)

(assert (= result!137202 result!137106))

(assert (=> d!574088 t!173690))

(declare-fun tb!113399 () Bool)

(declare-fun t!173692 () Bool)

(assert (=> (and b!1878136 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))))) t!173692) tb!113399))

(declare-fun result!137204 () Bool)

(assert (= result!137204 result!137094))

(assert (=> d!574008 t!173692))

(declare-fun t!173694 () Bool)

(declare-fun tb!113401 () Bool)

(assert (=> (and b!1878136 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) t!173694) tb!113401))

(declare-fun result!137206 () Bool)

(assert (= result!137206 result!137058))

(assert (=> b!1877668 t!173694))

(declare-fun b_and!144709 () Bool)

(declare-fun tp!535314 () Bool)

(assert (=> b!1878136 (= tp!535314 (and (=> t!173686 result!137198) (=> t!173688 result!137200) (=> t!173680 result!137192) (=> t!173694 result!137206) (=> t!173670 result!137182) (=> t!173690 result!137202) (=> t!173676 result!137188) (=> t!173674 result!137186) (=> t!173682 result!137194) (=> t!173692 result!137204) (=> t!173668 result!137180) (=> t!173678 result!137190) (=> t!173672 result!137184) (=> t!173684 result!137196) (=> t!173666 result!137178) b_and!144709))))

(declare-fun e!1198560 () Bool)

(assert (=> b!1878136 (= e!1198560 (and tp!535311 tp!535314))))

(declare-fun e!1198558 () Bool)

(assert (=> b!1877029 (= tp!535008 e!1198558)))

(declare-fun b!1878135 () Bool)

(declare-fun e!1198561 () Bool)

(declare-fun tp!535313 () Bool)

(assert (=> b!1878135 (= e!1198561 (and tp!535313 (inv!27815 (tag!4124 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (inv!27820 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) e!1198560))))

(declare-fun e!1198557 () Bool)

(declare-fun tp!535312 () Bool)

(declare-fun b!1878133 () Bool)

(assert (=> b!1878133 (= e!1198558 (and (inv!27823 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))) e!1198557 tp!535312))))

(declare-fun tp!535310 () Bool)

(declare-fun b!1878134 () Bool)

(assert (=> b!1878134 (= e!1198557 (and (inv!21 (value!117200 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352))))))) e!1198561 tp!535310))))

(assert (= b!1878135 b!1878136))

(assert (= b!1878134 b!1878135))

(assert (= b!1878133 b!1878134))

(assert (= (and b!1877029 ((_ is Cons!20917) (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))) b!1878133))

(declare-fun m!2305515 () Bool)

(assert (=> b!1878135 m!2305515))

(declare-fun m!2305517 () Bool)

(assert (=> b!1878135 m!2305517))

(declare-fun m!2305519 () Bool)

(assert (=> b!1878133 m!2305519))

(declare-fun m!2305521 () Bool)

(assert (=> b!1878134 m!2305521))

(declare-fun b!1878139 () Bool)

(declare-fun e!1198562 () Bool)

(declare-fun tp!535317 () Bool)

(assert (=> b!1878139 (= e!1198562 tp!535317)))

(declare-fun b!1878138 () Bool)

(declare-fun tp!535319 () Bool)

(declare-fun tp!535316 () Bool)

(assert (=> b!1878138 (= e!1198562 (and tp!535319 tp!535316))))

(assert (=> b!1877041 (= tp!535019 e!1198562)))

(declare-fun b!1878140 () Bool)

(declare-fun tp!535315 () Bool)

(declare-fun tp!535318 () Bool)

(assert (=> b!1878140 (= e!1198562 (and tp!535315 tp!535318))))

(declare-fun b!1878137 () Bool)

(assert (=> b!1878137 (= e!1198562 tp_is_empty!8895)))

(assert (= (and b!1877041 ((_ is ElementMatch!5119) (regOne!10751 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878137))

(assert (= (and b!1877041 ((_ is Concat!8966) (regOne!10751 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878138))

(assert (= (and b!1877041 ((_ is Star!5119) (regOne!10751 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878139))

(assert (= (and b!1877041 ((_ is Union!5119) (regOne!10751 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878140))

(declare-fun b!1878143 () Bool)

(declare-fun e!1198563 () Bool)

(declare-fun tp!535322 () Bool)

(assert (=> b!1878143 (= e!1198563 tp!535322)))

(declare-fun b!1878142 () Bool)

(declare-fun tp!535324 () Bool)

(declare-fun tp!535321 () Bool)

(assert (=> b!1878142 (= e!1198563 (and tp!535324 tp!535321))))

(assert (=> b!1877041 (= tp!535022 e!1198563)))

(declare-fun b!1878144 () Bool)

(declare-fun tp!535320 () Bool)

(declare-fun tp!535323 () Bool)

(assert (=> b!1878144 (= e!1198563 (and tp!535320 tp!535323))))

(declare-fun b!1878141 () Bool)

(assert (=> b!1878141 (= e!1198563 tp_is_empty!8895)))

(assert (= (and b!1877041 ((_ is ElementMatch!5119) (regTwo!10751 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878141))

(assert (= (and b!1877041 ((_ is Concat!8966) (regTwo!10751 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878142))

(assert (= (and b!1877041 ((_ is Star!5119) (regTwo!10751 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878143))

(assert (= (and b!1877041 ((_ is Union!5119) (regTwo!10751 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878144))

(declare-fun b!1878145 () Bool)

(declare-fun e!1198564 () Bool)

(declare-fun tp!535325 () Bool)

(assert (=> b!1878145 (= e!1198564 (and tp_is_empty!8895 tp!535325))))

(assert (=> b!1877023 (= tp!535002 e!1198564)))

(assert (= (and b!1877023 ((_ is Cons!20916) (t!173227 (t!173227 (originalCharacters!4517 separatorToken!84))))) b!1878145))

(declare-fun b!1878146 () Bool)

(declare-fun tp!535327 () Bool)

(declare-fun e!1198565 () Bool)

(declare-fun tp!535328 () Bool)

(assert (=> b!1878146 (= e!1198565 (and (inv!27828 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))) (value!117200 (h!26318 lt!721335)))))) tp!535328 (inv!27828 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))) (value!117200 (h!26318 lt!721335)))))) tp!535327))))

(declare-fun b!1878148 () Bool)

(declare-fun e!1198566 () Bool)

(declare-fun tp!535326 () Bool)

(assert (=> b!1878148 (= e!1198566 tp!535326)))

(declare-fun b!1878147 () Bool)

(assert (=> b!1878147 (= e!1198565 (and (inv!27839 (xs!9833 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))) (value!117200 (h!26318 lt!721335)))))) e!1198566))))

(assert (=> b!1876909 (= tp!534956 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))) (value!117200 (h!26318 lt!721335))))) e!1198565))))

(assert (= (and b!1876909 ((_ is Node!6949) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))) (value!117200 (h!26318 lt!721335)))))) b!1878146))

(assert (= b!1878147 b!1878148))

(assert (= (and b!1876909 ((_ is Leaf!10225) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))) (value!117200 (h!26318 lt!721335)))))) b!1878147))

(declare-fun m!2305523 () Bool)

(assert (=> b!1878146 m!2305523))

(declare-fun m!2305525 () Bool)

(assert (=> b!1878146 m!2305525))

(declare-fun m!2305527 () Bool)

(assert (=> b!1878147 m!2305527))

(assert (=> b!1876909 m!2303283))

(declare-fun b!1878149 () Bool)

(declare-fun tp!535329 () Bool)

(declare-fun tp!535330 () Bool)

(declare-fun e!1198568 () Bool)

(assert (=> b!1878149 (= e!1198568 (and (inv!27821 (left!16811 (left!16811 (right!17141 (c!305736 v!6352))))) tp!535330 (inv!27821 (right!17141 (left!16811 (right!17141 (c!305736 v!6352))))) tp!535329))))

(declare-fun b!1878151 () Bool)

(declare-fun e!1198567 () Bool)

(declare-fun tp!535331 () Bool)

(assert (=> b!1878151 (= e!1198567 tp!535331)))

(declare-fun b!1878150 () Bool)

(assert (=> b!1878150 (= e!1198568 (and (inv!27833 (xs!9834 (left!16811 (right!17141 (c!305736 v!6352))))) e!1198567))))

(assert (=> b!1877027 (= tp!535007 (and (inv!27821 (left!16811 (right!17141 (c!305736 v!6352)))) e!1198568))))

(assert (= (and b!1877027 ((_ is Node!6950) (left!16811 (right!17141 (c!305736 v!6352))))) b!1878149))

(assert (= b!1878150 b!1878151))

(assert (= (and b!1877027 ((_ is Leaf!10226) (left!16811 (right!17141 (c!305736 v!6352))))) b!1878150))

(declare-fun m!2305529 () Bool)

(assert (=> b!1878149 m!2305529))

(declare-fun m!2305531 () Bool)

(assert (=> b!1878149 m!2305531))

(declare-fun m!2305533 () Bool)

(assert (=> b!1878150 m!2305533))

(assert (=> b!1877027 m!2303421))

(declare-fun b!1878152 () Bool)

(declare-fun tp!535332 () Bool)

(declare-fun tp!535333 () Bool)

(declare-fun e!1198570 () Bool)

(assert (=> b!1878152 (= e!1198570 (and (inv!27821 (left!16811 (right!17141 (right!17141 (c!305736 v!6352))))) tp!535333 (inv!27821 (right!17141 (right!17141 (right!17141 (c!305736 v!6352))))) tp!535332))))

(declare-fun b!1878154 () Bool)

(declare-fun e!1198569 () Bool)

(declare-fun tp!535334 () Bool)

(assert (=> b!1878154 (= e!1198569 tp!535334)))

(declare-fun b!1878153 () Bool)

(assert (=> b!1878153 (= e!1198570 (and (inv!27833 (xs!9834 (right!17141 (right!17141 (c!305736 v!6352))))) e!1198569))))

(assert (=> b!1877027 (= tp!535006 (and (inv!27821 (right!17141 (right!17141 (c!305736 v!6352)))) e!1198570))))

(assert (= (and b!1877027 ((_ is Node!6950) (right!17141 (right!17141 (c!305736 v!6352))))) b!1878152))

(assert (= b!1878153 b!1878154))

(assert (= (and b!1877027 ((_ is Leaf!10226) (right!17141 (right!17141 (c!305736 v!6352))))) b!1878153))

(declare-fun m!2305535 () Bool)

(assert (=> b!1878152 m!2305535))

(declare-fun m!2305537 () Bool)

(assert (=> b!1878152 m!2305537))

(declare-fun m!2305539 () Bool)

(assert (=> b!1878153 m!2305539))

(assert (=> b!1877027 m!2303423))

(declare-fun b!1878157 () Bool)

(declare-fun e!1198571 () Bool)

(declare-fun tp!535337 () Bool)

(assert (=> b!1878157 (= e!1198571 tp!535337)))

(declare-fun b!1878156 () Bool)

(declare-fun tp!535339 () Bool)

(declare-fun tp!535336 () Bool)

(assert (=> b!1878156 (= e!1198571 (and tp!535339 tp!535336))))

(assert (=> b!1877040 (= tp!535021 e!1198571)))

(declare-fun b!1878158 () Bool)

(declare-fun tp!535335 () Bool)

(declare-fun tp!535338 () Bool)

(assert (=> b!1878158 (= e!1198571 (and tp!535335 tp!535338))))

(declare-fun b!1878155 () Bool)

(assert (=> b!1878155 (= e!1198571 tp_is_empty!8895)))

(assert (= (and b!1877040 ((_ is ElementMatch!5119) (reg!5448 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878155))

(assert (= (and b!1877040 ((_ is Concat!8966) (reg!5448 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878156))

(assert (= (and b!1877040 ((_ is Star!5119) (reg!5448 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878157))

(assert (= (and b!1877040 ((_ is Union!5119) (reg!5448 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878158))

(declare-fun b!1878161 () Bool)

(declare-fun e!1198572 () Bool)

(declare-fun tp!535342 () Bool)

(assert (=> b!1878161 (= e!1198572 tp!535342)))

(declare-fun b!1878160 () Bool)

(declare-fun tp!535344 () Bool)

(declare-fun tp!535341 () Bool)

(assert (=> b!1878160 (= e!1198572 (and tp!535344 tp!535341))))

(assert (=> b!1877032 (= tp!535012 e!1198572)))

(declare-fun b!1878162 () Bool)

(declare-fun tp!535340 () Bool)

(declare-fun tp!535343 () Bool)

(assert (=> b!1878162 (= e!1198572 (and tp!535340 tp!535343))))

(declare-fun b!1878159 () Bool)

(assert (=> b!1878159 (= e!1198572 tp_is_empty!8895)))

(assert (= (and b!1877032 ((_ is ElementMatch!5119) (regex!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) b!1878159))

(assert (= (and b!1877032 ((_ is Concat!8966) (regex!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) b!1878160))

(assert (= (and b!1877032 ((_ is Star!5119) (regex!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) b!1878161))

(assert (= (and b!1877032 ((_ is Union!5119) (regex!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) b!1878162))

(declare-fun tp!535347 () Bool)

(declare-fun e!1198573 () Bool)

(declare-fun b!1878163 () Bool)

(declare-fun tp!535346 () Bool)

(assert (=> b!1878163 (= e!1198573 (and (inv!27828 (left!16810 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))) (value!117200 (h!26318 lt!721331)))))) tp!535347 (inv!27828 (right!17140 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))) (value!117200 (h!26318 lt!721331)))))) tp!535346))))

(declare-fun b!1878165 () Bool)

(declare-fun e!1198574 () Bool)

(declare-fun tp!535345 () Bool)

(assert (=> b!1878165 (= e!1198574 tp!535345)))

(declare-fun b!1878164 () Bool)

(assert (=> b!1878164 (= e!1198573 (and (inv!27839 (xs!9833 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))) (value!117200 (h!26318 lt!721331)))))) e!1198574))))

(assert (=> b!1876565 (= tp!534885 (and (inv!27828 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))) (value!117200 (h!26318 lt!721331))))) e!1198573))))

(assert (= (and b!1876565 ((_ is Node!6949) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))) (value!117200 (h!26318 lt!721331)))))) b!1878163))

(assert (= b!1878164 b!1878165))

(assert (= (and b!1876565 ((_ is Leaf!10225) (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))) (value!117200 (h!26318 lt!721331)))))) b!1878164))

(declare-fun m!2305541 () Bool)

(assert (=> b!1878163 m!2305541))

(declare-fun m!2305543 () Bool)

(assert (=> b!1878163 m!2305543))

(declare-fun m!2305545 () Bool)

(assert (=> b!1878164 m!2305545))

(assert (=> b!1876565 m!2302799))

(declare-fun b!1878169 () Bool)

(declare-fun b_free!52265 () Bool)

(declare-fun b_next!52969 () Bool)

(assert (=> b!1878169 (= b_free!52265 (not b_next!52969))))

(declare-fun tp!535349 () Bool)

(declare-fun b_and!144711 () Bool)

(assert (=> b!1878169 (= tp!535349 b_and!144711)))

(declare-fun b_free!52267 () Bool)

(declare-fun b_next!52971 () Bool)

(assert (=> b!1878169 (= b_free!52267 (not b_next!52971))))

(declare-fun t!173696 () Bool)

(declare-fun tb!113403 () Bool)

(assert (=> (and b!1878169 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84)))) t!173696) tb!113403))

(declare-fun result!137208 () Bool)

(assert (= result!137208 result!136738))

(assert (=> b!1876253 t!173696))

(assert (=> d!573172 t!173696))

(declare-fun t!173698 () Bool)

(declare-fun tb!113405 () Bool)

(assert (=> (and b!1878169 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721331)))))) t!173698) tb!113405))

(declare-fun result!137210 () Bool)

(assert (= result!137210 result!137112))

(assert (=> d!574130 t!173698))

(declare-fun t!173700 () Bool)

(declare-fun tb!113407 () Bool)

(assert (=> (and b!1878169 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331))))) t!173700) tb!113407))

(declare-fun result!137212 () Bool)

(assert (= result!137212 result!136756))

(assert (=> d!573192 t!173700))

(declare-fun t!173702 () Bool)

(declare-fun tb!113409 () Bool)

(assert (=> (and b!1878169 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) t!173702) tb!113409))

(declare-fun result!137214 () Bool)

(assert (= result!137214 result!137088))

(assert (=> b!1877919 t!173702))

(declare-fun t!173704 () Bool)

(declare-fun tb!113411 () Bool)

(assert (=> (and b!1878169 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721369))))) t!173704) tb!113411))

(declare-fun result!137216 () Bool)

(assert (= result!137216 result!137052))

(assert (=> d!573786 t!173704))

(declare-fun t!173706 () Bool)

(declare-fun tb!113413 () Bool)

(assert (=> (and b!1878169 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335))))) t!173706) tb!113413))

(declare-fun result!137218 () Bool)

(assert (= result!137218 result!136784))

(assert (=> d!573350 t!173706))

(declare-fun tb!113415 () Bool)

(declare-fun t!173708 () Bool)

(assert (=> (and b!1878169 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))) t!173708) tb!113415))

(declare-fun result!137220 () Bool)

(assert (= result!137220 result!137082))

(assert (=> d!573946 t!173708))

(declare-fun tb!113417 () Bool)

(declare-fun t!173710 () Bool)

(assert (=> (and b!1878169 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721365))))) t!173710) tb!113417))

(declare-fun result!137222 () Bool)

(assert (= result!137222 result!137070))

(assert (=> d!573922 t!173710))

(declare-fun tb!113419 () Bool)

(declare-fun t!173712 () Bool)

(assert (=> (and b!1878169 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))) t!173712) tb!113419))

(declare-fun result!137224 () Bool)

(assert (= result!137224 result!136754))

(assert (=> d!573154 t!173712))

(declare-fun t!173714 () Bool)

(declare-fun tb!113421 () Bool)

(assert (=> (and b!1878169 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))) t!173714) tb!113421))

(declare-fun result!137226 () Bool)

(assert (= result!137226 result!137064))

(assert (=> d!573904 t!173714))

(declare-fun tb!113423 () Bool)

(declare-fun t!173716 () Bool)

(assert (=> (and b!1878169 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721336))))) t!173716) tb!113423))

(declare-fun result!137228 () Bool)

(assert (= result!137228 result!137076))

(assert (=> d!573932 t!173716))

(declare-fun t!173718 () Bool)

(declare-fun tb!113425 () Bool)

(assert (=> (and b!1878169 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))) t!173718) tb!113425))

(declare-fun result!137230 () Bool)

(assert (= result!137230 result!137100))

(assert (=> d!574074 t!173718))

(declare-fun tb!113427 () Bool)

(declare-fun t!173720 () Bool)

(assert (=> (and b!1878169 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721335)))))) t!173720) tb!113427))

(declare-fun result!137232 () Bool)

(assert (= result!137232 result!137106))

(assert (=> d!574088 t!173720))

(declare-fun t!173722 () Bool)

(declare-fun tb!113429 () Bool)

(assert (=> (and b!1878169 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))))) t!173722) tb!113429))

(declare-fun result!137234 () Bool)

(assert (= result!137234 result!137094))

(assert (=> d!574008 t!173722))

(declare-fun tb!113431 () Bool)

(declare-fun t!173724 () Bool)

(assert (=> (and b!1878169 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) t!173724) tb!113431))

(declare-fun result!137236 () Bool)

(assert (= result!137236 result!137058))

(assert (=> b!1877668 t!173724))

(declare-fun tp!535352 () Bool)

(declare-fun b_and!144713 () Bool)

(assert (=> b!1878169 (= tp!535352 (and (=> t!173714 result!137226) (=> t!173716 result!137228) (=> t!173720 result!137232) (=> t!173696 result!137208) (=> t!173698 result!137210) (=> t!173708 result!137220) (=> t!173706 result!137218) (=> t!173712 result!137224) (=> t!173700 result!137212) (=> t!173718 result!137230) (=> t!173722 result!137234) (=> t!173710 result!137222) (=> t!173704 result!137216) (=> t!173724 result!137236) (=> t!173702 result!137214) b_and!144713))))

(declare-fun e!1198579 () Bool)

(assert (=> b!1878169 (= e!1198579 (and tp!535349 tp!535352))))

(declare-fun e!1198577 () Bool)

(assert (=> b!1877030 (= tp!535011 e!1198577)))

(declare-fun tp!535351 () Bool)

(declare-fun e!1198580 () Bool)

(declare-fun b!1878168 () Bool)

(assert (=> b!1878168 (= e!1198580 (and tp!535351 (inv!27815 (tag!4124 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (inv!27820 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) e!1198579))))

(declare-fun e!1198576 () Bool)

(declare-fun b!1878166 () Bool)

(declare-fun tp!535350 () Bool)

(assert (=> b!1878166 (= e!1198577 (and (inv!27823 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))) e!1198576 tp!535350))))

(declare-fun tp!535348 () Bool)

(declare-fun b!1878167 () Bool)

(assert (=> b!1878167 (= e!1198576 (and (inv!21 (value!117200 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) e!1198580 tp!535348))))

(assert (= b!1878168 b!1878169))

(assert (= b!1878167 b!1878168))

(assert (= b!1878166 b!1878167))

(assert (= (and b!1877030 ((_ is Cons!20917) (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))) b!1878166))

(declare-fun m!2305547 () Bool)

(assert (=> b!1878168 m!2305547))

(declare-fun m!2305549 () Bool)

(assert (=> b!1878168 m!2305549))

(declare-fun m!2305551 () Bool)

(assert (=> b!1878166 m!2305551))

(declare-fun m!2305553 () Bool)

(assert (=> b!1878167 m!2305553))

(declare-fun b!1878172 () Bool)

(declare-fun e!1198581 () Bool)

(declare-fun tp!535355 () Bool)

(assert (=> b!1878172 (= e!1198581 tp!535355)))

(declare-fun b!1878171 () Bool)

(declare-fun tp!535357 () Bool)

(declare-fun tp!535354 () Bool)

(assert (=> b!1878171 (= e!1198581 (and tp!535357 tp!535354))))

(assert (=> b!1877039 (= tp!535023 e!1198581)))

(declare-fun b!1878173 () Bool)

(declare-fun tp!535353 () Bool)

(declare-fun tp!535356 () Bool)

(assert (=> b!1878173 (= e!1198581 (and tp!535353 tp!535356))))

(declare-fun b!1878170 () Bool)

(assert (=> b!1878170 (= e!1198581 tp_is_empty!8895)))

(assert (= (and b!1877039 ((_ is ElementMatch!5119) (regOne!10750 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878170))

(assert (= (and b!1877039 ((_ is Concat!8966) (regOne!10750 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878171))

(assert (= (and b!1877039 ((_ is Star!5119) (regOne!10750 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878172))

(assert (= (and b!1877039 ((_ is Union!5119) (regOne!10750 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878173))

(declare-fun b!1878176 () Bool)

(declare-fun e!1198582 () Bool)

(declare-fun tp!535360 () Bool)

(assert (=> b!1878176 (= e!1198582 tp!535360)))

(declare-fun b!1878175 () Bool)

(declare-fun tp!535362 () Bool)

(declare-fun tp!535359 () Bool)

(assert (=> b!1878175 (= e!1198582 (and tp!535362 tp!535359))))

(assert (=> b!1877039 (= tp!535020 e!1198582)))

(declare-fun b!1878177 () Bool)

(declare-fun tp!535358 () Bool)

(declare-fun tp!535361 () Bool)

(assert (=> b!1878177 (= e!1198582 (and tp!535358 tp!535361))))

(declare-fun b!1878174 () Bool)

(assert (=> b!1878174 (= e!1198582 tp_is_empty!8895)))

(assert (= (and b!1877039 ((_ is ElementMatch!5119) (regTwo!10750 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878174))

(assert (= (and b!1877039 ((_ is Concat!8966) (regTwo!10750 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878175))

(assert (= (and b!1877039 ((_ is Star!5119) (regTwo!10750 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878176))

(assert (= (and b!1877039 ((_ is Union!5119) (regTwo!10750 (regTwo!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878177))

(declare-fun b!1878178 () Bool)

(declare-fun e!1198583 () Bool)

(declare-fun tp!535363 () Bool)

(assert (=> b!1878178 (= e!1198583 (and tp_is_empty!8895 tp!535363))))

(assert (=> b!1877031 (= tp!535009 e!1198583)))

(assert (= (and b!1877031 ((_ is Cons!20916) (originalCharacters!4517 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) b!1878178))

(declare-fun b!1878179 () Bool)

(declare-fun tp!535365 () Bool)

(declare-fun e!1198585 () Bool)

(declare-fun tp!535364 () Bool)

(assert (=> b!1878179 (= e!1198585 (and (inv!27821 (left!16811 (left!16811 (left!16811 (c!305736 v!6352))))) tp!535365 (inv!27821 (right!17141 (left!16811 (left!16811 (c!305736 v!6352))))) tp!535364))))

(declare-fun b!1878181 () Bool)

(declare-fun e!1198584 () Bool)

(declare-fun tp!535366 () Bool)

(assert (=> b!1878181 (= e!1198584 tp!535366)))

(declare-fun b!1878180 () Bool)

(assert (=> b!1878180 (= e!1198585 (and (inv!27833 (xs!9834 (left!16811 (left!16811 (c!305736 v!6352))))) e!1198584))))

(assert (=> b!1877024 (= tp!535004 (and (inv!27821 (left!16811 (left!16811 (c!305736 v!6352)))) e!1198585))))

(assert (= (and b!1877024 ((_ is Node!6950) (left!16811 (left!16811 (c!305736 v!6352))))) b!1878179))

(assert (= b!1878180 b!1878181))

(assert (= (and b!1877024 ((_ is Leaf!10226) (left!16811 (left!16811 (c!305736 v!6352))))) b!1878180))

(declare-fun m!2305555 () Bool)

(assert (=> b!1878179 m!2305555))

(declare-fun m!2305557 () Bool)

(assert (=> b!1878179 m!2305557))

(declare-fun m!2305559 () Bool)

(assert (=> b!1878180 m!2305559))

(assert (=> b!1877024 m!2303415))

(declare-fun tp!535367 () Bool)

(declare-fun e!1198587 () Bool)

(declare-fun b!1878182 () Bool)

(declare-fun tp!535368 () Bool)

(assert (=> b!1878182 (= e!1198587 (and (inv!27821 (left!16811 (right!17141 (left!16811 (c!305736 v!6352))))) tp!535368 (inv!27821 (right!17141 (right!17141 (left!16811 (c!305736 v!6352))))) tp!535367))))

(declare-fun b!1878184 () Bool)

(declare-fun e!1198586 () Bool)

(declare-fun tp!535369 () Bool)

(assert (=> b!1878184 (= e!1198586 tp!535369)))

(declare-fun b!1878183 () Bool)

(assert (=> b!1878183 (= e!1198587 (and (inv!27833 (xs!9834 (right!17141 (left!16811 (c!305736 v!6352))))) e!1198586))))

(assert (=> b!1877024 (= tp!535003 (and (inv!27821 (right!17141 (left!16811 (c!305736 v!6352)))) e!1198587))))

(assert (= (and b!1877024 ((_ is Node!6950) (right!17141 (left!16811 (c!305736 v!6352))))) b!1878182))

(assert (= b!1878183 b!1878184))

(assert (= (and b!1877024 ((_ is Leaf!10226) (right!17141 (left!16811 (c!305736 v!6352))))) b!1878183))

(declare-fun m!2305561 () Bool)

(assert (=> b!1878182 m!2305561))

(declare-fun m!2305563 () Bool)

(assert (=> b!1878182 m!2305563))

(declare-fun m!2305565 () Bool)

(assert (=> b!1878183 m!2305565))

(assert (=> b!1877024 m!2303417))

(declare-fun b!1878187 () Bool)

(declare-fun e!1198588 () Bool)

(declare-fun tp!535372 () Bool)

(assert (=> b!1878187 (= e!1198588 tp!535372)))

(declare-fun b!1878186 () Bool)

(declare-fun tp!535374 () Bool)

(declare-fun tp!535371 () Bool)

(assert (=> b!1878186 (= e!1198588 (and tp!535374 tp!535371))))

(assert (=> b!1876993 (= tp!534968 e!1198588)))

(declare-fun b!1878188 () Bool)

(declare-fun tp!535370 () Bool)

(declare-fun tp!535373 () Bool)

(assert (=> b!1878188 (= e!1198588 (and tp!535370 tp!535373))))

(declare-fun b!1878185 () Bool)

(assert (=> b!1878185 (= e!1198588 tp_is_empty!8895)))

(assert (= (and b!1876993 ((_ is ElementMatch!5119) (regOne!10751 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878185))

(assert (= (and b!1876993 ((_ is Concat!8966) (regOne!10751 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878186))

(assert (= (and b!1876993 ((_ is Star!5119) (regOne!10751 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878187))

(assert (= (and b!1876993 ((_ is Union!5119) (regOne!10751 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878188))

(declare-fun b!1878191 () Bool)

(declare-fun e!1198589 () Bool)

(declare-fun tp!535377 () Bool)

(assert (=> b!1878191 (= e!1198589 tp!535377)))

(declare-fun b!1878190 () Bool)

(declare-fun tp!535379 () Bool)

(declare-fun tp!535376 () Bool)

(assert (=> b!1878190 (= e!1198589 (and tp!535379 tp!535376))))

(assert (=> b!1876993 (= tp!534971 e!1198589)))

(declare-fun b!1878192 () Bool)

(declare-fun tp!535375 () Bool)

(declare-fun tp!535378 () Bool)

(assert (=> b!1878192 (= e!1198589 (and tp!535375 tp!535378))))

(declare-fun b!1878189 () Bool)

(assert (=> b!1878189 (= e!1198589 tp_is_empty!8895)))

(assert (= (and b!1876993 ((_ is ElementMatch!5119) (regTwo!10751 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878189))

(assert (= (and b!1876993 ((_ is Concat!8966) (regTwo!10751 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878190))

(assert (= (and b!1876993 ((_ is Star!5119) (regTwo!10751 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878191))

(assert (= (and b!1876993 ((_ is Union!5119) (regTwo!10751 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878192))

(declare-fun b!1878195 () Bool)

(declare-fun e!1198590 () Bool)

(declare-fun tp!535382 () Bool)

(assert (=> b!1878195 (= e!1198590 tp!535382)))

(declare-fun b!1878194 () Bool)

(declare-fun tp!535384 () Bool)

(declare-fun tp!535381 () Bool)

(assert (=> b!1878194 (= e!1198590 (and tp!535384 tp!535381))))

(assert (=> b!1876992 (= tp!534970 e!1198590)))

(declare-fun b!1878196 () Bool)

(declare-fun tp!535380 () Bool)

(declare-fun tp!535383 () Bool)

(assert (=> b!1878196 (= e!1198590 (and tp!535380 tp!535383))))

(declare-fun b!1878193 () Bool)

(assert (=> b!1878193 (= e!1198590 tp_is_empty!8895)))

(assert (= (and b!1876992 ((_ is ElementMatch!5119) (reg!5448 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878193))

(assert (= (and b!1876992 ((_ is Concat!8966) (reg!5448 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878194))

(assert (= (and b!1876992 ((_ is Star!5119) (reg!5448 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878195))

(assert (= (and b!1876992 ((_ is Union!5119) (reg!5448 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878196))

(declare-fun b!1878199 () Bool)

(declare-fun e!1198591 () Bool)

(declare-fun tp!535387 () Bool)

(assert (=> b!1878199 (= e!1198591 tp!535387)))

(declare-fun b!1878198 () Bool)

(declare-fun tp!535389 () Bool)

(declare-fun tp!535386 () Bool)

(assert (=> b!1878198 (= e!1198591 (and tp!535389 tp!535386))))

(assert (=> b!1876991 (= tp!534972 e!1198591)))

(declare-fun b!1878200 () Bool)

(declare-fun tp!535385 () Bool)

(declare-fun tp!535388 () Bool)

(assert (=> b!1878200 (= e!1198591 (and tp!535385 tp!535388))))

(declare-fun b!1878197 () Bool)

(assert (=> b!1878197 (= e!1198591 tp_is_empty!8895)))

(assert (= (and b!1876991 ((_ is ElementMatch!5119) (regOne!10750 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878197))

(assert (= (and b!1876991 ((_ is Concat!8966) (regOne!10750 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878198))

(assert (= (and b!1876991 ((_ is Star!5119) (regOne!10750 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878199))

(assert (= (and b!1876991 ((_ is Union!5119) (regOne!10750 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878200))

(declare-fun b!1878203 () Bool)

(declare-fun e!1198592 () Bool)

(declare-fun tp!535392 () Bool)

(assert (=> b!1878203 (= e!1198592 tp!535392)))

(declare-fun b!1878202 () Bool)

(declare-fun tp!535394 () Bool)

(declare-fun tp!535391 () Bool)

(assert (=> b!1878202 (= e!1198592 (and tp!535394 tp!535391))))

(assert (=> b!1876991 (= tp!534969 e!1198592)))

(declare-fun b!1878204 () Bool)

(declare-fun tp!535390 () Bool)

(declare-fun tp!535393 () Bool)

(assert (=> b!1878204 (= e!1198592 (and tp!535390 tp!535393))))

(declare-fun b!1878201 () Bool)

(assert (=> b!1878201 (= e!1198592 tp_is_empty!8895)))

(assert (= (and b!1876991 ((_ is ElementMatch!5119) (regTwo!10750 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878201))

(assert (= (and b!1876991 ((_ is Concat!8966) (regTwo!10750 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878202))

(assert (= (and b!1876991 ((_ is Star!5119) (regTwo!10750 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878203))

(assert (= (and b!1876991 ((_ is Union!5119) (regTwo!10750 (regOne!10751 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878204))

(declare-fun b!1878205 () Bool)

(declare-fun e!1198593 () Bool)

(declare-fun tp!535395 () Bool)

(assert (=> b!1878205 (= e!1198593 (and tp_is_empty!8895 tp!535395))))

(assert (=> b!1877008 (= tp!534984 e!1198593)))

(assert (= (and b!1877008 ((_ is Cons!20916) (innerList!7009 (xs!9833 (c!305735 (dynLambda!10230 (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (value!117200 separatorToken!84))))))) b!1878205))

(declare-fun b!1878208 () Bool)

(declare-fun e!1198594 () Bool)

(declare-fun tp!535398 () Bool)

(assert (=> b!1878208 (= e!1198594 tp!535398)))

(declare-fun b!1878207 () Bool)

(declare-fun tp!535400 () Bool)

(declare-fun tp!535397 () Bool)

(assert (=> b!1878207 (= e!1198594 (and tp!535400 tp!535397))))

(assert (=> b!1877036 (= tp!535016 e!1198594)))

(declare-fun b!1878209 () Bool)

(declare-fun tp!535396 () Bool)

(declare-fun tp!535399 () Bool)

(assert (=> b!1878209 (= e!1198594 (and tp!535396 tp!535399))))

(declare-fun b!1878206 () Bool)

(assert (=> b!1878206 (= e!1198594 tp_is_empty!8895)))

(assert (= (and b!1877036 ((_ is ElementMatch!5119) (reg!5448 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878206))

(assert (= (and b!1877036 ((_ is Concat!8966) (reg!5448 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878207))

(assert (= (and b!1877036 ((_ is Star!5119) (reg!5448 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878208))

(assert (= (and b!1877036 ((_ is Union!5119) (reg!5448 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878209))

(declare-fun b!1878213 () Bool)

(declare-fun b_free!52269 () Bool)

(declare-fun b_next!52973 () Bool)

(assert (=> b!1878213 (= b_free!52269 (not b_next!52973))))

(declare-fun tp!535402 () Bool)

(declare-fun b_and!144715 () Bool)

(assert (=> b!1878213 (= tp!535402 b_and!144715)))

(declare-fun b_free!52271 () Bool)

(declare-fun b_next!52975 () Bool)

(assert (=> b!1878213 (= b_free!52271 (not b_next!52975))))

(declare-fun tb!113433 () Bool)

(declare-fun t!173726 () Bool)

(assert (=> (and b!1878213 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84)))) t!173726) tb!113433))

(declare-fun result!137238 () Bool)

(assert (= result!137238 result!136738))

(assert (=> b!1876253 t!173726))

(assert (=> d!573172 t!173726))

(declare-fun t!173728 () Bool)

(declare-fun tb!113435 () Bool)

(assert (=> (and b!1878213 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721331)))))) t!173728) tb!113435))

(declare-fun result!137240 () Bool)

(assert (= result!137240 result!137112))

(assert (=> d!574130 t!173728))

(declare-fun t!173730 () Bool)

(declare-fun tb!113437 () Bool)

(assert (=> (and b!1878213 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331))))) t!173730) tb!113437))

(declare-fun result!137242 () Bool)

(assert (= result!137242 result!136756))

(assert (=> d!573192 t!173730))

(declare-fun t!173732 () Bool)

(declare-fun tb!113439 () Bool)

(assert (=> (and b!1878213 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) t!173732) tb!113439))

(declare-fun result!137244 () Bool)

(assert (= result!137244 result!137088))

(assert (=> b!1877919 t!173732))

(declare-fun t!173734 () Bool)

(declare-fun tb!113441 () Bool)

(assert (=> (and b!1878213 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721369))))) t!173734) tb!113441))

(declare-fun result!137246 () Bool)

(assert (= result!137246 result!137052))

(assert (=> d!573786 t!173734))

(declare-fun t!173736 () Bool)

(declare-fun tb!113443 () Bool)

(assert (=> (and b!1878213 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335))))) t!173736) tb!113443))

(declare-fun result!137248 () Bool)

(assert (= result!137248 result!136784))

(assert (=> d!573350 t!173736))

(declare-fun t!173738 () Bool)

(declare-fun tb!113445 () Bool)

(assert (=> (and b!1878213 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))) t!173738) tb!113445))

(declare-fun result!137250 () Bool)

(assert (= result!137250 result!137082))

(assert (=> d!573946 t!173738))

(declare-fun t!173740 () Bool)

(declare-fun tb!113447 () Bool)

(assert (=> (and b!1878213 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721365))))) t!173740) tb!113447))

(declare-fun result!137252 () Bool)

(assert (= result!137252 result!137070))

(assert (=> d!573922 t!173740))

(declare-fun tb!113449 () Bool)

(declare-fun t!173742 () Bool)

(assert (=> (and b!1878213 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))) t!173742) tb!113449))

(declare-fun result!137254 () Bool)

(assert (= result!137254 result!136754))

(assert (=> d!573154 t!173742))

(declare-fun t!173744 () Bool)

(declare-fun tb!113451 () Bool)

(assert (=> (and b!1878213 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))) t!173744) tb!113451))

(declare-fun result!137256 () Bool)

(assert (= result!137256 result!137064))

(assert (=> d!573904 t!173744))

(declare-fun t!173746 () Bool)

(declare-fun tb!113453 () Bool)

(assert (=> (and b!1878213 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721336))))) t!173746) tb!113453))

(declare-fun result!137258 () Bool)

(assert (= result!137258 result!137076))

(assert (=> d!573932 t!173746))

(declare-fun tb!113455 () Bool)

(declare-fun t!173748 () Bool)

(assert (=> (and b!1878213 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))) t!173748) tb!113455))

(declare-fun result!137260 () Bool)

(assert (= result!137260 result!137100))

(assert (=> d!574074 t!173748))

(declare-fun t!173750 () Bool)

(declare-fun tb!113457 () Bool)

(assert (=> (and b!1878213 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721335)))))) t!173750) tb!113457))

(declare-fun result!137262 () Bool)

(assert (= result!137262 result!137106))

(assert (=> d!574088 t!173750))

(declare-fun tb!113459 () Bool)

(declare-fun t!173752 () Bool)

(assert (=> (and b!1878213 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))))) t!173752) tb!113459))

(declare-fun result!137264 () Bool)

(assert (= result!137264 result!137094))

(assert (=> d!574008 t!173752))

(declare-fun t!173754 () Bool)

(declare-fun tb!113461 () Bool)

(assert (=> (and b!1878213 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) t!173754) tb!113461))

(declare-fun result!137266 () Bool)

(assert (= result!137266 result!137058))

(assert (=> b!1877668 t!173754))

(declare-fun b_and!144717 () Bool)

(declare-fun tp!535405 () Bool)

(assert (=> b!1878213 (= tp!535405 (and (=> t!173740 result!137252) (=> t!173734 result!137246) (=> t!173726 result!137238) (=> t!173746 result!137258) (=> t!173728 result!137240) (=> t!173736 result!137248) (=> t!173730 result!137242) (=> t!173750 result!137262) (=> t!173732 result!137244) (=> t!173754 result!137266) (=> t!173748 result!137260) (=> t!173742 result!137254) (=> t!173744 result!137256) (=> t!173738 result!137250) (=> t!173752 result!137264) b_and!144717))))

(declare-fun e!1198599 () Bool)

(assert (=> b!1878213 (= e!1198599 (and tp!535402 tp!535405))))

(declare-fun e!1198597 () Bool)

(assert (=> b!1876989 (= tp!534967 e!1198597)))

(declare-fun tp!535404 () Bool)

(declare-fun b!1878212 () Bool)

(declare-fun e!1198600 () Bool)

(assert (=> b!1878212 (= e!1198600 (and tp!535404 (inv!27815 (tag!4124 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (inv!27820 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) e!1198599))))

(declare-fun e!1198596 () Bool)

(declare-fun tp!535403 () Bool)

(declare-fun b!1878210 () Bool)

(assert (=> b!1878210 (= e!1198597 (and (inv!27823 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))) e!1198596 tp!535403))))

(declare-fun tp!535401 () Bool)

(declare-fun b!1878211 () Bool)

(assert (=> b!1878211 (= e!1198596 (and (inv!21 (value!117200 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408))))))) e!1198600 tp!535401))))

(assert (= b!1878212 b!1878213))

(assert (= b!1878211 b!1878212))

(assert (= b!1878210 b!1878211))

(assert (= (and b!1876989 ((_ is Cons!20917) (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))) b!1878210))

(declare-fun m!2305567 () Bool)

(assert (=> b!1878212 m!2305567))

(declare-fun m!2305569 () Bool)

(assert (=> b!1878212 m!2305569))

(declare-fun m!2305571 () Bool)

(assert (=> b!1878210 m!2305571))

(declare-fun m!2305573 () Bool)

(assert (=> b!1878211 m!2305573))

(declare-fun b!1878216 () Bool)

(declare-fun e!1198601 () Bool)

(declare-fun tp!535408 () Bool)

(assert (=> b!1878216 (= e!1198601 tp!535408)))

(declare-fun b!1878215 () Bool)

(declare-fun tp!535410 () Bool)

(declare-fun tp!535407 () Bool)

(assert (=> b!1878215 (= e!1198601 (and tp!535410 tp!535407))))

(assert (=> b!1877037 (= tp!535014 e!1198601)))

(declare-fun b!1878217 () Bool)

(declare-fun tp!535406 () Bool)

(declare-fun tp!535409 () Bool)

(assert (=> b!1878217 (= e!1198601 (and tp!535406 tp!535409))))

(declare-fun b!1878214 () Bool)

(assert (=> b!1878214 (= e!1198601 tp_is_empty!8895)))

(assert (= (and b!1877037 ((_ is ElementMatch!5119) (regOne!10751 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878214))

(assert (= (and b!1877037 ((_ is Concat!8966) (regOne!10751 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878215))

(assert (= (and b!1877037 ((_ is Star!5119) (regOne!10751 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878216))

(assert (= (and b!1877037 ((_ is Union!5119) (regOne!10751 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878217))

(declare-fun b!1878220 () Bool)

(declare-fun e!1198602 () Bool)

(declare-fun tp!535413 () Bool)

(assert (=> b!1878220 (= e!1198602 tp!535413)))

(declare-fun b!1878219 () Bool)

(declare-fun tp!535415 () Bool)

(declare-fun tp!535412 () Bool)

(assert (=> b!1878219 (= e!1198602 (and tp!535415 tp!535412))))

(assert (=> b!1877037 (= tp!535017 e!1198602)))

(declare-fun b!1878221 () Bool)

(declare-fun tp!535411 () Bool)

(declare-fun tp!535414 () Bool)

(assert (=> b!1878221 (= e!1198602 (and tp!535411 tp!535414))))

(declare-fun b!1878218 () Bool)

(assert (=> b!1878218 (= e!1198602 tp_is_empty!8895)))

(assert (= (and b!1877037 ((_ is ElementMatch!5119) (regTwo!10751 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878218))

(assert (= (and b!1877037 ((_ is Concat!8966) (regTwo!10751 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878219))

(assert (= (and b!1877037 ((_ is Star!5119) (regTwo!10751 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878220))

(assert (= (and b!1877037 ((_ is Union!5119) (regTwo!10751 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878221))

(declare-fun b!1878224 () Bool)

(declare-fun e!1198603 () Bool)

(declare-fun tp!535418 () Bool)

(assert (=> b!1878224 (= e!1198603 tp!535418)))

(declare-fun b!1878223 () Bool)

(declare-fun tp!535420 () Bool)

(declare-fun tp!535417 () Bool)

(assert (=> b!1878223 (= e!1198603 (and tp!535420 tp!535417))))

(assert (=> b!1876983 (= tp!534957 e!1198603)))

(declare-fun b!1878225 () Bool)

(declare-fun tp!535416 () Bool)

(declare-fun tp!535419 () Bool)

(assert (=> b!1878225 (= e!1198603 (and tp!535416 tp!535419))))

(declare-fun b!1878222 () Bool)

(assert (=> b!1878222 (= e!1198603 tp_is_empty!8895)))

(assert (= (and b!1876983 ((_ is ElementMatch!5119) (regOne!10751 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878222))

(assert (= (and b!1876983 ((_ is Concat!8966) (regOne!10751 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878223))

(assert (= (and b!1876983 ((_ is Star!5119) (regOne!10751 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878224))

(assert (= (and b!1876983 ((_ is Union!5119) (regOne!10751 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878225))

(declare-fun b!1878228 () Bool)

(declare-fun e!1198604 () Bool)

(declare-fun tp!535423 () Bool)

(assert (=> b!1878228 (= e!1198604 tp!535423)))

(declare-fun b!1878227 () Bool)

(declare-fun tp!535425 () Bool)

(declare-fun tp!535422 () Bool)

(assert (=> b!1878227 (= e!1198604 (and tp!535425 tp!535422))))

(assert (=> b!1876983 (= tp!534960 e!1198604)))

(declare-fun b!1878229 () Bool)

(declare-fun tp!535421 () Bool)

(declare-fun tp!535424 () Bool)

(assert (=> b!1878229 (= e!1198604 (and tp!535421 tp!535424))))

(declare-fun b!1878226 () Bool)

(assert (=> b!1878226 (= e!1198604 tp_is_empty!8895)))

(assert (= (and b!1876983 ((_ is ElementMatch!5119) (regTwo!10751 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878226))

(assert (= (and b!1876983 ((_ is Concat!8966) (regTwo!10751 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878227))

(assert (= (and b!1876983 ((_ is Star!5119) (regTwo!10751 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878228))

(assert (= (and b!1876983 ((_ is Union!5119) (regTwo!10751 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878229))

(declare-fun b!1878232 () Bool)

(declare-fun e!1198605 () Bool)

(declare-fun tp!535428 () Bool)

(assert (=> b!1878232 (= e!1198605 tp!535428)))

(declare-fun b!1878231 () Bool)

(declare-fun tp!535430 () Bool)

(declare-fun tp!535427 () Bool)

(assert (=> b!1878231 (= e!1198605 (and tp!535430 tp!535427))))

(assert (=> b!1877035 (= tp!535018 e!1198605)))

(declare-fun b!1878233 () Bool)

(declare-fun tp!535426 () Bool)

(declare-fun tp!535429 () Bool)

(assert (=> b!1878233 (= e!1198605 (and tp!535426 tp!535429))))

(declare-fun b!1878230 () Bool)

(assert (=> b!1878230 (= e!1198605 tp_is_empty!8895)))

(assert (= (and b!1877035 ((_ is ElementMatch!5119) (regOne!10750 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878230))

(assert (= (and b!1877035 ((_ is Concat!8966) (regOne!10750 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878231))

(assert (= (and b!1877035 ((_ is Star!5119) (regOne!10750 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878232))

(assert (= (and b!1877035 ((_ is Union!5119) (regOne!10750 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878233))

(declare-fun b!1878236 () Bool)

(declare-fun e!1198606 () Bool)

(declare-fun tp!535433 () Bool)

(assert (=> b!1878236 (= e!1198606 tp!535433)))

(declare-fun b!1878235 () Bool)

(declare-fun tp!535435 () Bool)

(declare-fun tp!535432 () Bool)

(assert (=> b!1878235 (= e!1198606 (and tp!535435 tp!535432))))

(assert (=> b!1877035 (= tp!535015 e!1198606)))

(declare-fun b!1878237 () Bool)

(declare-fun tp!535431 () Bool)

(declare-fun tp!535434 () Bool)

(assert (=> b!1878237 (= e!1198606 (and tp!535431 tp!535434))))

(declare-fun b!1878234 () Bool)

(assert (=> b!1878234 (= e!1198606 tp_is_empty!8895)))

(assert (= (and b!1877035 ((_ is ElementMatch!5119) (regTwo!10750 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878234))

(assert (= (and b!1877035 ((_ is Concat!8966) (regTwo!10750 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878235))

(assert (= (and b!1877035 ((_ is Star!5119) (regTwo!10750 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878236))

(assert (= (and b!1877035 ((_ is Union!5119) (regTwo!10750 (regOne!10750 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878237))

(declare-fun b!1878238 () Bool)

(declare-fun tp!535436 () Bool)

(declare-fun e!1198608 () Bool)

(declare-fun tp!535437 () Bool)

(assert (=> b!1878238 (= e!1198608 (and (inv!27821 (left!16811 (left!16811 (right!17141 (c!305736 acc!408))))) tp!535437 (inv!27821 (right!17141 (left!16811 (right!17141 (c!305736 acc!408))))) tp!535436))))

(declare-fun b!1878240 () Bool)

(declare-fun e!1198607 () Bool)

(declare-fun tp!535438 () Bool)

(assert (=> b!1878240 (= e!1198607 tp!535438)))

(declare-fun b!1878239 () Bool)

(assert (=> b!1878239 (= e!1198608 (and (inv!27833 (xs!9834 (left!16811 (right!17141 (c!305736 acc!408))))) e!1198607))))

(assert (=> b!1876987 (= tp!534966 (and (inv!27821 (left!16811 (right!17141 (c!305736 acc!408)))) e!1198608))))

(assert (= (and b!1876987 ((_ is Node!6950) (left!16811 (right!17141 (c!305736 acc!408))))) b!1878238))

(assert (= b!1878239 b!1878240))

(assert (= (and b!1876987 ((_ is Leaf!10226) (left!16811 (right!17141 (c!305736 acc!408))))) b!1878239))

(declare-fun m!2305575 () Bool)

(assert (=> b!1878238 m!2305575))

(declare-fun m!2305577 () Bool)

(assert (=> b!1878238 m!2305577))

(declare-fun m!2305579 () Bool)

(assert (=> b!1878239 m!2305579))

(assert (=> b!1876987 m!2303395))

(declare-fun tp!535439 () Bool)

(declare-fun b!1878241 () Bool)

(declare-fun tp!535440 () Bool)

(declare-fun e!1198610 () Bool)

(assert (=> b!1878241 (= e!1198610 (and (inv!27821 (left!16811 (right!17141 (right!17141 (c!305736 acc!408))))) tp!535440 (inv!27821 (right!17141 (right!17141 (right!17141 (c!305736 acc!408))))) tp!535439))))

(declare-fun b!1878243 () Bool)

(declare-fun e!1198609 () Bool)

(declare-fun tp!535441 () Bool)

(assert (=> b!1878243 (= e!1198609 tp!535441)))

(declare-fun b!1878242 () Bool)

(assert (=> b!1878242 (= e!1198610 (and (inv!27833 (xs!9834 (right!17141 (right!17141 (c!305736 acc!408))))) e!1198609))))

(assert (=> b!1876987 (= tp!534965 (and (inv!27821 (right!17141 (right!17141 (c!305736 acc!408)))) e!1198610))))

(assert (= (and b!1876987 ((_ is Node!6950) (right!17141 (right!17141 (c!305736 acc!408))))) b!1878241))

(assert (= b!1878242 b!1878243))

(assert (= (and b!1876987 ((_ is Leaf!10226) (right!17141 (right!17141 (c!305736 acc!408))))) b!1878242))

(declare-fun m!2305581 () Bool)

(assert (=> b!1878241 m!2305581))

(declare-fun m!2305583 () Bool)

(assert (=> b!1878241 m!2305583))

(declare-fun m!2305585 () Bool)

(assert (=> b!1878242 m!2305585))

(assert (=> b!1876987 m!2303397))

(declare-fun b!1878246 () Bool)

(declare-fun e!1198611 () Bool)

(declare-fun tp!535444 () Bool)

(assert (=> b!1878246 (= e!1198611 tp!535444)))

(declare-fun b!1878245 () Bool)

(declare-fun tp!535446 () Bool)

(declare-fun tp!535443 () Bool)

(assert (=> b!1878245 (= e!1198611 (and tp!535446 tp!535443))))

(assert (=> b!1876982 (= tp!534959 e!1198611)))

(declare-fun b!1878247 () Bool)

(declare-fun tp!535442 () Bool)

(declare-fun tp!535445 () Bool)

(assert (=> b!1878247 (= e!1198611 (and tp!535442 tp!535445))))

(declare-fun b!1878244 () Bool)

(assert (=> b!1878244 (= e!1198611 tp_is_empty!8895)))

(assert (= (and b!1876982 ((_ is ElementMatch!5119) (reg!5448 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878244))

(assert (= (and b!1876982 ((_ is Concat!8966) (reg!5448 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878245))

(assert (= (and b!1876982 ((_ is Star!5119) (reg!5448 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878246))

(assert (= (and b!1876982 ((_ is Union!5119) (reg!5448 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878247))

(declare-fun b!1878250 () Bool)

(declare-fun e!1198612 () Bool)

(declare-fun tp!535449 () Bool)

(assert (=> b!1878250 (= e!1198612 tp!535449)))

(declare-fun b!1878249 () Bool)

(declare-fun tp!535451 () Bool)

(declare-fun tp!535448 () Bool)

(assert (=> b!1878249 (= e!1198612 (and tp!535451 tp!535448))))

(assert (=> b!1876981 (= tp!534961 e!1198612)))

(declare-fun b!1878251 () Bool)

(declare-fun tp!535447 () Bool)

(declare-fun tp!535450 () Bool)

(assert (=> b!1878251 (= e!1198612 (and tp!535447 tp!535450))))

(declare-fun b!1878248 () Bool)

(assert (=> b!1878248 (= e!1198612 tp_is_empty!8895)))

(assert (= (and b!1876981 ((_ is ElementMatch!5119) (regOne!10750 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878248))

(assert (= (and b!1876981 ((_ is Concat!8966) (regOne!10750 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878249))

(assert (= (and b!1876981 ((_ is Star!5119) (regOne!10750 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878250))

(assert (= (and b!1876981 ((_ is Union!5119) (regOne!10750 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878251))

(declare-fun b!1878254 () Bool)

(declare-fun e!1198613 () Bool)

(declare-fun tp!535454 () Bool)

(assert (=> b!1878254 (= e!1198613 tp!535454)))

(declare-fun b!1878253 () Bool)

(declare-fun tp!535456 () Bool)

(declare-fun tp!535453 () Bool)

(assert (=> b!1878253 (= e!1198613 (and tp!535456 tp!535453))))

(assert (=> b!1876981 (= tp!534958 e!1198613)))

(declare-fun b!1878255 () Bool)

(declare-fun tp!535452 () Bool)

(declare-fun tp!535455 () Bool)

(assert (=> b!1878255 (= e!1198613 (and tp!535452 tp!535455))))

(declare-fun b!1878252 () Bool)

(assert (=> b!1878252 (= e!1198613 tp_is_empty!8895)))

(assert (= (and b!1876981 ((_ is ElementMatch!5119) (regTwo!10750 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878252))

(assert (= (and b!1876981 ((_ is Concat!8966) (regTwo!10750 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878253))

(assert (= (and b!1876981 ((_ is Star!5119) (regTwo!10750 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878254))

(assert (= (and b!1876981 ((_ is Union!5119) (regTwo!10750 (reg!5448 (regex!3710 (rule!5903 separatorToken!84)))))) b!1878255))

(declare-fun b!1878259 () Bool)

(declare-fun b_free!52273 () Bool)

(declare-fun b_next!52977 () Bool)

(assert (=> b!1878259 (= b_free!52273 (not b_next!52977))))

(declare-fun tp!535458 () Bool)

(declare-fun b_and!144719 () Bool)

(assert (=> b!1878259 (= tp!535458 b_and!144719)))

(declare-fun b_free!52275 () Bool)

(declare-fun b_next!52979 () Bool)

(assert (=> b!1878259 (= b_free!52275 (not b_next!52979))))

(declare-fun t!173756 () Bool)

(declare-fun tb!113463 () Bool)

(assert (=> (and b!1878259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84)))) t!173756) tb!113463))

(declare-fun result!137268 () Bool)

(assert (= result!137268 result!136738))

(assert (=> b!1876253 t!173756))

(assert (=> d!573172 t!173756))

(declare-fun tb!113465 () Bool)

(declare-fun t!173758 () Bool)

(assert (=> (and b!1878259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721331)))))) t!173758) tb!113465))

(declare-fun result!137270 () Bool)

(assert (= result!137270 result!137112))

(assert (=> d!574130 t!173758))

(declare-fun tb!113467 () Bool)

(declare-fun t!173760 () Bool)

(assert (=> (and b!1878259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331))))) t!173760) tb!113467))

(declare-fun result!137272 () Bool)

(assert (= result!137272 result!136756))

(assert (=> d!573192 t!173760))

(declare-fun t!173762 () Bool)

(declare-fun tb!113469 () Bool)

(assert (=> (and b!1878259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) t!173762) tb!113469))

(declare-fun result!137274 () Bool)

(assert (= result!137274 result!137088))

(assert (=> b!1877919 t!173762))

(declare-fun tb!113471 () Bool)

(declare-fun t!173764 () Bool)

(assert (=> (and b!1878259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721369))))) t!173764) tb!113471))

(declare-fun result!137276 () Bool)

(assert (= result!137276 result!137052))

(assert (=> d!573786 t!173764))

(declare-fun t!173766 () Bool)

(declare-fun tb!113473 () Bool)

(assert (=> (and b!1878259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335))))) t!173766) tb!113473))

(declare-fun result!137278 () Bool)

(assert (= result!137278 result!136784))

(assert (=> d!573350 t!173766))

(declare-fun t!173768 () Bool)

(declare-fun tb!113475 () Bool)

(assert (=> (and b!1878259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84) (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))))) t!173768) tb!113475))

(declare-fun result!137280 () Bool)

(assert (= result!137280 result!137082))

(assert (=> d!573946 t!173768))

(declare-fun tb!113477 () Bool)

(declare-fun t!173770 () Bool)

(assert (=> (and b!1878259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721365))))) t!173770) tb!113477))

(declare-fun result!137282 () Bool)

(assert (= result!137282 result!137070))

(assert (=> d!573922 t!173770))

(declare-fun t!173772 () Bool)

(declare-fun tb!113479 () Bool)

(assert (=> (and b!1878259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845)))))) t!173772) tb!113479))

(declare-fun result!137284 () Bool)

(assert (= result!137284 result!136754))

(assert (=> d!573154 t!173772))

(declare-fun tb!113481 () Bool)

(declare-fun t!173774 () Bool)

(assert (=> (and b!1878259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84)))))) t!173774) tb!113481))

(declare-fun result!137286 () Bool)

(assert (= result!137286 result!137064))

(assert (=> d!573904 t!173774))

(declare-fun t!173776 () Bool)

(declare-fun tb!113483 () Bool)

(assert (=> (and b!1878259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721336))))) t!173776) tb!113483))

(declare-fun result!137288 () Bool)

(assert (= result!137288 result!137076))

(assert (=> d!573932 t!173776))

(declare-fun tb!113485 () Bool)

(declare-fun t!173778 () Bool)

(assert (=> (and b!1878259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (drop!1030 (list!8532 v!6352) from!845))))))) t!173778) tb!113485))

(declare-fun result!137290 () Bool)

(assert (= result!137290 result!137100))

(assert (=> d!574074 t!173778))

(declare-fun t!173780 () Bool)

(declare-fun tb!113487 () Bool)

(assert (=> (and b!1878259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 lt!721335)))))) t!173780) tb!113487))

(declare-fun result!137292 () Bool)

(assert (= result!137292 result!137106))

(assert (=> d!574088 t!173780))

(declare-fun t!173782 () Bool)

(declare-fun tb!113489 () Bool)

(assert (=> (and b!1878259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 ($colon$colon!494 (withSeparatorTokenList!118 thiss!13718 (t!173228 (drop!1030 (list!8532 v!6352) from!845)) separatorToken!84) separatorToken!84)))))) t!173782) tb!113489))

(declare-fun result!137294 () Bool)

(assert (= result!137294 result!137094))

(assert (=> d!574008 t!173782))

(declare-fun t!173784 () Bool)

(declare-fun tb!113491 () Bool)

(assert (=> (and b!1878259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) t!173784) tb!113491))

(declare-fun result!137296 () Bool)

(assert (= result!137296 result!137058))

(assert (=> b!1877668 t!173784))

(declare-fun b_and!144721 () Bool)

(declare-fun tp!535461 () Bool)

(assert (=> b!1878259 (= tp!535461 (and (=> t!173758 result!137270) (=> t!173768 result!137280) (=> t!173772 result!137284) (=> t!173756 result!137268) (=> t!173764 result!137276) (=> t!173766 result!137278) (=> t!173762 result!137274) (=> t!173778 result!137290) (=> t!173776 result!137288) (=> t!173784 result!137296) (=> t!173782 result!137294) (=> t!173780 result!137292) (=> t!173760 result!137272) (=> t!173770 result!137282) (=> t!173774 result!137286) b_and!144721))))

(declare-fun e!1198618 () Bool)

(assert (=> b!1878259 (= e!1198618 (and tp!535458 tp!535461))))

(declare-fun e!1198616 () Bool)

(assert (=> b!1877026 (= tp!535005 e!1198616)))

(declare-fun tp!535460 () Bool)

(declare-fun e!1198619 () Bool)

(declare-fun b!1878258 () Bool)

(assert (=> b!1878258 (= e!1198619 (and tp!535460 (inv!27815 (tag!4124 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (inv!27820 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) e!1198618))))

(declare-fun b!1878256 () Bool)

(declare-fun e!1198615 () Bool)

(declare-fun tp!535459 () Bool)

(assert (=> b!1878256 (= e!1198616 (and (inv!27823 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))) e!1198615 tp!535459))))

(declare-fun b!1878257 () Bool)

(declare-fun tp!535457 () Bool)

(assert (=> b!1878257 (= e!1198615 (and (inv!21 (value!117200 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352))))))) e!1198619 tp!535457))))

(assert (= b!1878258 b!1878259))

(assert (= b!1878257 b!1878258))

(assert (= b!1878256 b!1878257))

(assert (= (and b!1877026 ((_ is Cons!20917) (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))) b!1878256))

(declare-fun m!2305587 () Bool)

(assert (=> b!1878258 m!2305587))

(declare-fun m!2305589 () Bool)

(assert (=> b!1878258 m!2305589))

(declare-fun m!2305591 () Bool)

(assert (=> b!1878256 m!2305591))

(declare-fun m!2305593 () Bool)

(assert (=> b!1878257 m!2305593))

(declare-fun b_lambda!61725 () Bool)

(assert (= b_lambda!61705 (or (and b!1878088 b_free!52255 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))))) (and b!1878136 b_free!52263 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))))) (and b!1878111 b_free!52259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))))) (and b!1876224 b_free!52211 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))))) (and b!1877033 b_free!52227 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))))) (and b!1878213 b_free!52271 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))))) (and b!1877022 b_free!52223) (and b!1878259 b_free!52275 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))))) (and b!1878169 b_free!52267 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))))) b_lambda!61725)))

(declare-fun b_lambda!61727 () Bool)

(assert (= b_lambda!61649 (or (and b!1878088 b_free!52255 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) (and b!1878213 b_free!52271 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) (and b!1877033 b_free!52227 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) (and b!1878111 b_free!52259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) (and b!1878259 b_free!52275 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) (and b!1877022 b_free!52223 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) (and b!1878169 b_free!52267 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) (and b!1878136 b_free!52263 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) (and b!1876224 b_free!52211 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (drop!1030 (list!8532 v!6352) from!845))))))) b_lambda!61727)))

(declare-fun b_lambda!61729 () Bool)

(assert (= b_lambda!61665 (or (and b!1877033 b_free!52227 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))))) (and b!1878088 b_free!52255 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))))) (and b!1878259 b_free!52275 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))))) (and b!1878136 b_free!52263 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))))) (and b!1878111 b_free!52259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))))) (and b!1877022 b_free!52223 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))))) (and b!1876224 b_free!52211 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))))) (and b!1878213 b_free!52271 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))))) (and b!1878169 b_free!52267 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721335)))))) b_lambda!61729)))

(declare-fun b_lambda!61731 () Bool)

(assert (= b_lambda!61653 (or (and b!1878259 b_free!52275 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))))) (and b!1878169 b_free!52267 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))))) (and b!1878213 b_free!52271 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))))) (and b!1877022 b_free!52223 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))))) (and b!1878136 b_free!52263 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))))) (and b!1876224 b_free!52211 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))))) (and b!1878088 b_free!52255 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))))) (and b!1877033 b_free!52227 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))))) (and b!1878111 b_free!52259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 lt!721331)))))) b_lambda!61731)))

(declare-fun b_lambda!61733 () Bool)

(assert (= b_lambda!61647 (or (and b!1877033 b_free!52227 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))))) (and b!1878213 b_free!52271 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))))) (and b!1878111 b_free!52259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))))) (and b!1878169 b_free!52267 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))))) (and b!1878259 b_free!52275 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))))) (and b!1878136 b_free!52263 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))))) (and b!1878088 b_free!52255 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))))) (and b!1877022 b_free!52223 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))))) b_lambda!61733)))

(declare-fun b_lambda!61735 () Bool)

(assert (= b_lambda!61715 (or (and b!1876224 b_free!52211 (= (toChars!5166 (transformation!3710 (rule!5903 separatorToken!84))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))))) (and b!1878088 b_free!52255 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))))) (and b!1878169 b_free!52267 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))))) (and b!1878111 b_free!52259 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (t!173228 (innerList!7010 (xs!9834 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))))) (and b!1878136 b_free!52263 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))))) (and b!1878259 b_free!52275 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (left!16811 (c!305736 v!6352)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))))) (and b!1877022 b_free!52223 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 acc!408))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))))) (and b!1878213 b_free!52271 (= (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (right!17141 (c!305736 acc!408)))))))) (toChars!5166 (transformation!3710 (rule!5903 (h!26318 (innerList!7010 (xs!9834 (c!305736 v!6352))))))))) (and b!1877033 b_free!52227) b_lambda!61735)))

(check-sat (not b!1877747) (not b!1877678) b_and!144699 (not b_next!52971) (not b!1877906) (not b!1877784) (not b!1877874) (not b!1878007) (not b!1877908) (not b!1878198) b_and!144719 (not b!1877696) (not b!1878130) (not d!574068) (not d!574042) (not d!573818) (not b!1876512) (not b!1877858) (not b!1878117) (not b!1878038) (not d!573918) (not d!574130) (not b_lambda!61667) (not b_next!52927) (not d!574074) (not b!1878020) (not b!1876565) (not d!573792) (not b!1878098) (not b!1877664) (not b!1878122) (not b!1878028) (not b!1877870) (not b!1877842) (not b!1878163) (not b!1877682) (not b!1877715) (not b!1877849) (not b!1878147) (not b!1878140) (not b!1878258) (not b!1878158) (not b!1878145) (not b!1877914) (not b!1877681) (not b!1877998) (not d!573882) (not b!1878083) (not d!573800) (not d!574126) (not b!1877897) (not b!1877920) (not b!1877720) (not b!1877803) (not b!1878156) (not b!1878026) (not b!1878229) (not b!1877835) (not d!574072) (not b_next!52929) (not d!573782) (not b!1877953) (not b!1878135) (not b!1878001) (not b!1878121) (not b!1877944) (not b_lambda!61725) (not d!573812) b_and!144711 (not b!1878175) (not b!1878035) (not b!1878241) (not b!1878150) (not b!1878059) (not d!573970) (not d!574020) (not b!1878134) b_and!144721 (not b_next!52959) (not b!1877791) (not b!1877838) (not b!1877939) (not b!1877979) b_and!144709 (not b!1878110) (not b!1878187) (not d!574002) (not b!1877700) (not d!573998) (not b!1877901) (not b!1878194) (not bm!116167) (not b!1878249) (not tb!113253) (not b!1878231) (not b!1878186) (not b!1877930) (not b!1878211) (not b!1877923) (not b!1878161) (not b!1878036) (not b!1878143) (not b!1878100) (not b!1878042) (not b!1877819) b_and!144713 (not b!1878251) (not b!1877658) (not b!1878118) (not b!1877816) (not b!1877807) (not b!1877828) (not b!1878138) (not b!1877899) (not b!1877731) (not b!1878246) (not b!1878235) (not b!1878084) (not b!1877734) (not b!1878199) (not b!1877804) (not b!1877742) b_and!144695 (not b!1877961) (not b!1878181) (not b!1877882) (not b_lambda!61733) (not d!573926) (not b!1877912) (not b!1878033) b_and!144707 (not b!1877787) (not b!1878097) (not b!1877653) (not d!573960) (not d!573786) (not b!1877919) (not b!1877921) (not b!1877667) (not b!1877806) (not b!1878250) (not b_lambda!61731) (not b!1878192) (not b!1878221) (not d!573904) tp_is_empty!8895 (not d!574066) (not b!1878115) (not b!1878016) (not b!1878124) (not b!1877843) (not b!1877946) b_and!144717 (not b!1877818) (not b!1877786) (not d!573806) (not b!1877831) (not b!1877986) (not b!1878055) (not b!1877711) (not b!1877987) (not d!573902) (not b!1877850) (not tb!113277) (not b!1877024) (not b!1878184) (not b!1878253) (not b!1877962) (not b!1877685) (not b!1877761) (not b!1878092) (not tb!113301) (not b!1877736) (not b!1877927) (not b!1877934) (not b!1877853) (not b!1878256) (not b_lambda!61711) (not b!1878052) (not d!574062) (not b!1877670) (not b!1877810) (not b!1878109) (not b_next!52979) (not b!1877872) (not b!1877797) (not b!1877800) (not b!1877971) (not b!1877778) (not b!1878144) (not b!1878166) (not b!1877844) (not d!574046) (not d!573804) (not b!1877753) (not b!1878151) (not d!574100) (not b!1878005) (not b!1877900) (not b!1877796) (not b!1878132) (not d!573978) (not b!1877749) (not d!573820) (not d!573972) (not b!1877760) (not b!1877801) (not b!1878203) (not b_lambda!61721) (not b!1877862) (not d!573922) (not tb!113289) (not b!1878106) (not b_next!52957) (not b!1877812) (not b!1877950) (not b!1878002) (not b!1878172) (not b_lambda!61717) (not b!1877936) (not b!1878212) (not b!1877732) (not b!1877834) (not d!573822) (not b_lambda!61729) (not d!573950) (not b!1877865) (not b!1878208) (not b!1878219) (not b!1878104) (not b!1878180) (not b!1877945) (not b!1877974) (not b!1878154) (not b!1878225) (not b!1878123) (not b!1878196) (not d!574008) b_and!144693 (not b!1877859) (not b!1877661) (not b!1877832) (not tb!113307) (not b!1878139) (not b!1878011) (not b!1877991) (not b!1878019) (not d!573784) (not d!574112) b_and!144697 (not b!1877866) (not tb!113247) (not d!574004) (not b!1877757) (not b!1878119) (not d!573944) (not b!1878031) (not b!1878108) (not b!1878062) (not b_next!52973) (not tb!113295) (not b!1878096) (not b_next!52961) (not b!1878176) (not b!1878152) (not d!573898) (not b!1877656) (not b!1878227) (not b!1878030) (not b!1877764) (not b!1877957) (not b!1878105) (not b!1877975) (not b!1877839) (not d!574080) (not b!1877929) (not b!1878236) (not b!1878090) (not b!1877710) (not b!1877669) (not b!1877972) (not b_next!52965) (not d!573900) (not b!1878191) (not b!1878073) (not b!1878045) (not b!1878228) (not b!1877932) (not b!1878210) (not d!574044) (not b_next!52915) (not b!1877902) (not b!1877750) (not b!1877668) (not b!1878153) (not b!1877765) (not d!573930) b_and!144539 (not b!1877898) (not b!1878133) (not d!573796) (not b!1877689) (not b!1878243) (not b!1877708) (not b!1878142) (not b!1877792) (not b!1877777) (not b!1878053) (not b!1877863) (not b_next!52925) (not b!1876909) (not b!1877918) (not b!1877970) (not b!1878171) (not d!574084) (not b!1878126) (not b!1877916) (not b!1878113) b_and!144703 (not d!573846) (not d!573842) (not b!1878065) (not b!1877027) (not d!573964) (not b!1878216) (not d!573840) (not b!1878255) (not b!1878182) (not b!1878010) (not d!574098) (not b!1877993) (not b!1878204) (not b!1877990) (not d!573942) (not b!1878167) (not b!1877688) (not d!573844) (not d!574088) (not b!1878043) (not b!1876984) (not d!573826) (not b!1877674) (not b!1877841) (not b!1878238) (not b!1877995) (not d!574128) (not d!573956) (not b!1878183) (not b_next!52963) (not b!1878094) (not d!573896) (not b!1877773) (not tb!113265) (not b!1878168) (not d!573832) b_and!144535 (not b_next!52975) (not tb!113283) (not b!1877814) (not b!1878164) (not b!1877933) (not d!574110) (not b!1877879) (not b!1877719) (not d!573860) (not b!1878195) (not b!1878093) (not b!1877878) (not b!1878179) (not b!1878247) (not b!1878075) (not b!1878233) (not b!1877847) (not b!1877789) (not b_lambda!61735) (not b!1877840) (not d!574148) (not b!1878224) (not b!1878023) (not b!1878245) (not b!1878008) (not b!1878237) (not b!1878162) (not b_next!52967) (not b!1877740) (not b_lambda!61713) (not b!1877941) (not b!1878102) (not b!1877697) (not b!1877655) (not b!1878085) (not b!1878257) (not b!1878215) (not b!1878041) (not b!1878205) (not b!1878173) (not b!1877955) (not b!1877935) (not d!574150) (not b!1878017) (not d!574140) (not b!1877926) (not b!1878232) (not b!1878131) (not d!573928) (not b!1878078) (not d!573920) (not b!1878200) (not b!1878080) (not b!1878240) (not b!1877006) (not b!1877683) (not b!1877969) (not b!1877904) (not b!1878128) (not b!1877937) (not b!1877997) (not b!1877884) (not b!1877910) (not tb!113271) (not d!574104) b_and!144705 (not b!1878149) (not b!1878050) (not d!573946) (not b_next!52969) (not b!1878239) (not d!574136) (not b!1878101) (not d!574030) (not b!1878086) (not b!1878056) (not d!574006) (not b!1877846) (not b!1878202) (not b!1878207) (not b!1878223) (not b!1878178) (not b!1877746) (not d!574012) (not b!1877652) (not d!574024) (not b!1877660) (not d!574076) (not b!1877854) (not b_next!52977) (not b!1877822) (not b!1878220) (not b!1877967) (not b!1877738) (not b!1878254) (not b!1877780) (not d!574102) (not b!1877694) (not b!1877949) (not b!1877716) b_and!144503 (not b_lambda!61727) (not b!1877869) (not b!1878014) (not b!1877775) (not d!573958) (not b!1878107) (not b!1878127) (not b!1878129) (not d!574048) (not b_next!52913) (not b!1877980) (not b!1878177) (not b!1877755) (not b!1877965) (not b!1877701) (not tb!113259) (not b!1877794) (not b!1878087) (not b!1878188) (not b_lambda!61723) (not d!573838) b_and!144701 (not b!1878217) (not b_lambda!61709) (not b!1878048) (not b!1878077) (not b!1878091) (not b!1878089) (not b!1878157) (not b!1878044) (not b_lambda!61719) (not b!1878209) (not b!1877663) (not b!1878148) (not b!1878190) (not b!1877762) (not b!1877686) (not b!1877821) (not b!1878114) (not b!1877959) (not b_lambda!61703) (not d!573794) (not d!574086) (not d!573932) (not b_next!52931) (not b!1877977) (not b!1877973) (not b!1878046) (not d!574078) (not b!1877782) (not b!1878040) b_and!144715 (not b_lambda!61707) (not b!1878165) (not b!1877767) (not b!1878061) (not b!1878242) (not b!1878125) (not b!1877876) (not b!1878146) (not d!573938) (not b!1876987) (not b!1877983) (not b!1877984) (not b!1878160))
(check-sat (not b_next!52927) (not b_next!52929) b_and!144709 b_and!144713 b_and!144717 (not b_next!52979) (not b_next!52957) b_and!144693 b_and!144697 (not b_next!52965) (not b_next!52925) b_and!144703 (not b_next!52967) b_and!144705 (not b_next!52969) (not b_next!52913) b_and!144701 (not b_next!52931) b_and!144715 b_and!144699 (not b_next!52971) b_and!144719 b_and!144721 b_and!144711 (not b_next!52959) b_and!144707 b_and!144695 (not b_next!52973) (not b_next!52961) b_and!144539 (not b_next!52915) (not b_next!52963) b_and!144535 (not b_next!52975) (not b_next!52977) b_and!144503)
