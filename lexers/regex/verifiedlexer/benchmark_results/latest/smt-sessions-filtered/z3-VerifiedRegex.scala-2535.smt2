; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136142 () Bool)

(assert start!136142)

(declare-fun e!931539 () Bool)

(declare-fun b!1460234 () Bool)

(declare-datatypes ((C!8144 0))(
  ( (C!8145 (val!4642 Int)) )
))
(declare-datatypes ((List!15218 0))(
  ( (Nil!15152) (Cons!15152 (h!20553 C!8144) (t!134345 List!15218)) )
))
(declare-datatypes ((IArray!10333 0))(
  ( (IArray!10334 (innerList!5224 List!15218)) )
))
(declare-datatypes ((Conc!5164 0))(
  ( (Node!5164 (left!12877 Conc!5164) (right!13207 Conc!5164) (csize!10558 Int) (cheight!5375 Int)) (Leaf!7700 (xs!7911 IArray!10333) (csize!10559 Int)) (Empty!5164) )
))
(declare-datatypes ((BalanceConc!10268 0))(
  ( (BalanceConc!10269 (c!240708 Conc!5164)) )
))
(declare-datatypes ((List!15219 0))(
  ( (Nil!15153) (Cons!15153 (h!20554 (_ BitVec 16)) (t!134346 List!15219)) )
))
(declare-datatypes ((TokenValue!2759 0))(
  ( (FloatLiteralValue!5518 (text!19758 List!15219)) (TokenValueExt!2758 (__x!9308 Int)) (Broken!13795 (value!85688 List!15219)) (Object!2824) (End!2759) (Def!2759) (Underscore!2759) (Match!2759) (Else!2759) (Error!2759) (Case!2759) (If!2759) (Extends!2759) (Abstract!2759) (Class!2759) (Val!2759) (DelimiterValue!5518 (del!2819 List!15219)) (KeywordValue!2765 (value!85689 List!15219)) (CommentValue!5518 (value!85690 List!15219)) (WhitespaceValue!5518 (value!85691 List!15219)) (IndentationValue!2759 (value!85692 List!15219)) (String!18050) (Int32!2759) (Broken!13796 (value!85693 List!15219)) (Boolean!2760) (Unit!24190) (OperatorValue!2762 (op!2819 List!15219)) (IdentifierValue!5518 (value!85694 List!15219)) (IdentifierValue!5519 (value!85695 List!15219)) (WhitespaceValue!5519 (value!85696 List!15219)) (True!5518) (False!5518) (Broken!13797 (value!85697 List!15219)) (Broken!13798 (value!85698 List!15219)) (True!5519) (RightBrace!2759) (RightBracket!2759) (Colon!2759) (Null!2759) (Comma!2759) (LeftBracket!2759) (False!5519) (LeftBrace!2759) (ImaginaryLiteralValue!2759 (text!19759 List!15219)) (StringLiteralValue!8277 (value!85699 List!15219)) (EOFValue!2759 (value!85700 List!15219)) (IdentValue!2759 (value!85701 List!15219)) (DelimiterValue!5519 (value!85702 List!15219)) (DedentValue!2759 (value!85703 List!15219)) (NewLineValue!2759 (value!85704 List!15219)) (IntegerValue!8277 (value!85705 (_ BitVec 32)) (text!19760 List!15219)) (IntegerValue!8278 (value!85706 Int) (text!19761 List!15219)) (Times!2759) (Or!2759) (Equal!2759) (Minus!2759) (Broken!13799 (value!85707 List!15219)) (And!2759) (Div!2759) (LessEqual!2759) (Mod!2759) (Concat!6742) (Not!2759) (Plus!2759) (SpaceValue!2759 (value!85708 List!15219)) (IntegerValue!8279 (value!85709 Int) (text!19762 List!15219)) (StringLiteralValue!8278 (text!19763 List!15219)) (FloatLiteralValue!5519 (text!19764 List!15219)) (BytesLiteralValue!2759 (value!85710 List!15219)) (CommentValue!5519 (value!85711 List!15219)) (StringLiteralValue!8279 (value!85712 List!15219)) (ErrorTokenValue!2759 (msg!2820 List!15219)) )
))
(declare-datatypes ((Regex!3983 0))(
  ( (ElementMatch!3983 (c!240709 C!8144)) (Concat!6743 (regOne!8478 Regex!3983) (regTwo!8478 Regex!3983)) (EmptyExpr!3983) (Star!3983 (reg!4312 Regex!3983)) (EmptyLang!3983) (Union!3983 (regOne!8479 Regex!3983) (regTwo!8479 Regex!3983)) )
))
(declare-datatypes ((String!18051 0))(
  ( (String!18052 (value!85713 String)) )
))
(declare-datatypes ((TokenValueInjection!5178 0))(
  ( (TokenValueInjection!5179 (toValue!3980 Int) (toChars!3839 Int)) )
))
(declare-datatypes ((Rule!5138 0))(
  ( (Rule!5139 (regex!2669 Regex!3983) (tag!2933 String!18051) (isSeparator!2669 Bool) (transformation!2669 TokenValueInjection!5178)) )
))
(declare-datatypes ((Token!5000 0))(
  ( (Token!5001 (value!85714 TokenValue!2759) (rule!4442 Rule!5138) (size!12395 Int) (originalCharacters!3531 List!15218)) )
))
(declare-datatypes ((List!15220 0))(
  ( (Nil!15154) (Cons!15154 (h!20555 Token!5000) (t!134347 List!15220)) )
))
(declare-datatypes ((IArray!10335 0))(
  ( (IArray!10336 (innerList!5225 List!15220)) )
))
(declare-datatypes ((Conc!5165 0))(
  ( (Node!5165 (left!12878 Conc!5165) (right!13208 Conc!5165) (csize!10560 Int) (cheight!5376 Int)) (Leaf!7701 (xs!7912 IArray!10335) (csize!10561 Int)) (Empty!5165) )
))
(declare-datatypes ((BalanceConc!10270 0))(
  ( (BalanceConc!10271 (c!240710 Conc!5165)) )
))
(declare-datatypes ((List!15221 0))(
  ( (Nil!15155) (Cons!15155 (h!20556 Rule!5138) (t!134348 List!15221)) )
))
(declare-datatypes ((PrintableTokens!1120 0))(
  ( (PrintableTokens!1121 (rules!11648 List!15221) (tokens!2092 BalanceConc!10270)) )
))
(declare-fun other!32 () PrintableTokens!1120)

(declare-fun e!931540 () Bool)

(declare-fun tp!411407 () Bool)

(declare-fun inv!20241 (BalanceConc!10270) Bool)

(assert (=> b!1460234 (= e!931540 (and tp!411407 (inv!20241 (tokens!2092 other!32)) e!931539))))

(declare-fun b!1460235 () Bool)

(declare-fun res!660706 () Bool)

(declare-fun e!931537 () Bool)

(assert (=> b!1460235 (=> res!660706 e!931537)))

(declare-fun lt!504264 () List!15220)

(declare-fun thiss!10022 () PrintableTokens!1120)

(declare-datatypes ((LexerInterface!2325 0))(
  ( (LexerInterfaceExt!2322 (__x!9309 Int)) (Lexer!2323) )
))
(declare-fun tokensListTwoByTwoPredicateSeparableList!243 (LexerInterface!2325 List!15220 List!15221) Bool)

(assert (=> b!1460235 (= res!660706 (not (tokensListTwoByTwoPredicateSeparableList!243 Lexer!2323 lt!504264 (rules!11648 thiss!10022))))))

(declare-fun e!931538 () Bool)

(declare-fun e!931541 () Bool)

(declare-fun tp!411405 () Bool)

(declare-fun b!1460236 () Bool)

(assert (=> b!1460236 (= e!931541 (and tp!411405 (inv!20241 (tokens!2092 thiss!10022)) e!931538))))

(declare-fun b!1460237 () Bool)

(declare-fun res!660707 () Bool)

(assert (=> b!1460237 (=> res!660707 e!931537)))

(declare-fun rulesProduceEachTokenIndividuallyList!744 (LexerInterface!2325 List!15221 List!15220) Bool)

(assert (=> b!1460237 (= res!660707 (not (rulesProduceEachTokenIndividuallyList!744 Lexer!2323 (rules!11648 thiss!10022) lt!504264)))))

(declare-fun b!1460238 () Bool)

(declare-fun res!660699 () Bool)

(assert (=> b!1460238 (=> res!660699 e!931537)))

(declare-fun lt!504260 () List!15220)

(assert (=> b!1460238 (= res!660699 (not (rulesProduceEachTokenIndividuallyList!744 Lexer!2323 (rules!11648 thiss!10022) lt!504260)))))

(declare-fun b!1460239 () Bool)

(declare-fun tp!411406 () Bool)

(declare-fun inv!20242 (Conc!5165) Bool)

(assert (=> b!1460239 (= e!931539 (and (inv!20242 (c!240710 (tokens!2092 other!32))) tp!411406))))

(declare-fun b!1460240 () Bool)

(declare-fun res!660700 () Bool)

(declare-fun e!931543 () Bool)

(assert (=> b!1460240 (=> (not res!660700) (not e!931543))))

(declare-fun isEmpty!9501 (BalanceConc!10270) Bool)

(assert (=> b!1460240 (= res!660700 (not (isEmpty!9501 (tokens!2092 thiss!10022))))))

(declare-fun b!1460241 () Bool)

(declare-fun e!931544 () Bool)

(assert (=> b!1460241 (= e!931544 e!931543)))

(declare-fun res!660703 () Bool)

(assert (=> b!1460241 (=> (not res!660703) (not e!931543))))

(assert (=> b!1460241 (= res!660703 (not (isEmpty!9501 (tokens!2092 other!32))))))

(declare-datatypes ((Unit!24191 0))(
  ( (Unit!24192) )
))
(declare-fun lt!504263 () Unit!24191)

(declare-fun lemmaInvariant!365 (PrintableTokens!1120) Unit!24191)

(assert (=> b!1460241 (= lt!504263 (lemmaInvariant!365 thiss!10022))))

(declare-fun lt!504261 () Unit!24191)

(assert (=> b!1460241 (= lt!504261 (lemmaInvariant!365 other!32))))

(declare-fun b!1460242 () Bool)

(declare-fun res!660701 () Bool)

(assert (=> b!1460242 (=> res!660701 e!931537)))

(assert (=> b!1460242 (= res!660701 (not (tokensListTwoByTwoPredicateSeparableList!243 Lexer!2323 lt!504260 (rules!11648 thiss!10022))))))

(declare-fun b!1460244 () Bool)

(declare-fun res!660702 () Bool)

(assert (=> b!1460244 (=> res!660702 e!931537)))

(declare-fun isEmpty!9502 (List!15221) Bool)

(assert (=> b!1460244 (= res!660702 (isEmpty!9502 (rules!11648 thiss!10022)))))

(declare-fun b!1460245 () Bool)

(assert (=> b!1460245 (= e!931543 (not e!931537))))

(declare-fun res!660709 () Bool)

(assert (=> b!1460245 (=> res!660709 e!931537)))

(declare-fun lt!504265 () Token!5000)

(declare-fun lt!504267 () Token!5000)

(declare-fun separableTokensPredicate!534 (LexerInterface!2325 Token!5000 Token!5000 List!15221) Bool)

(assert (=> b!1460245 (= res!660709 (not (separableTokensPredicate!534 Lexer!2323 lt!504265 lt!504267 (rules!11648 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1244 (LexerInterface!2325 List!15221 Token!5000) Bool)

(assert (=> b!1460245 (rulesProduceIndividualToken!1244 Lexer!2323 (rules!11648 thiss!10022) lt!504267)))

(declare-fun lt!504266 () Unit!24191)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!427 (LexerInterface!2325 List!15221 List!15220 Token!5000) Unit!24191)

(assert (=> b!1460245 (= lt!504266 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!427 Lexer!2323 (rules!11648 thiss!10022) lt!504260 lt!504267))))

(declare-fun head!2993 (BalanceConc!10270) Token!5000)

(assert (=> b!1460245 (= lt!504267 (head!2993 (tokens!2092 other!32)))))

(declare-fun list!6065 (BalanceConc!10270) List!15220)

(assert (=> b!1460245 (= lt!504260 (list!6065 (tokens!2092 other!32)))))

(assert (=> b!1460245 (rulesProduceIndividualToken!1244 Lexer!2323 (rules!11648 thiss!10022) lt!504265)))

(declare-fun lt!504262 () Unit!24191)

(assert (=> b!1460245 (= lt!504262 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!427 Lexer!2323 (rules!11648 thiss!10022) lt!504264 lt!504265))))

(declare-fun last!265 (BalanceConc!10270) Token!5000)

(assert (=> b!1460245 (= lt!504265 (last!265 (tokens!2092 thiss!10022)))))

(assert (=> b!1460245 (= lt!504264 (list!6065 (tokens!2092 thiss!10022)))))

(declare-fun b!1460246 () Bool)

(declare-fun e!931542 () Bool)

(declare-fun isEmpty!9503 (List!15220) Bool)

(assert (=> b!1460246 (= e!931542 (not (isEmpty!9503 lt!504260)))))

(declare-fun b!1460247 () Bool)

(declare-fun res!660704 () Bool)

(assert (=> b!1460247 (=> res!660704 e!931537)))

(declare-fun rulesInvariant!2158 (LexerInterface!2325 List!15221) Bool)

(assert (=> b!1460247 (= res!660704 (not (rulesInvariant!2158 Lexer!2323 (rules!11648 thiss!10022))))))

(declare-fun b!1460248 () Bool)

(declare-fun tp!411408 () Bool)

(assert (=> b!1460248 (= e!931538 (and (inv!20242 (c!240710 (tokens!2092 thiss!10022))) tp!411408))))

(declare-fun b!1460243 () Bool)

(assert (=> b!1460243 (= e!931537 e!931542)))

(declare-fun res!660705 () Bool)

(assert (=> b!1460243 (=> (not res!660705) (not e!931542))))

(assert (=> b!1460243 (= res!660705 (not (isEmpty!9503 lt!504264)))))

(declare-fun res!660708 () Bool)

(assert (=> start!136142 (=> (not res!660708) (not e!931544))))

(assert (=> start!136142 (= res!660708 (= (rules!11648 thiss!10022) (rules!11648 other!32)))))

(assert (=> start!136142 e!931544))

(declare-fun inv!20243 (PrintableTokens!1120) Bool)

(assert (=> start!136142 (and (inv!20243 thiss!10022) e!931541)))

(assert (=> start!136142 (and (inv!20243 other!32) e!931540)))

(assert (= (and start!136142 res!660708) b!1460241))

(assert (= (and b!1460241 res!660703) b!1460240))

(assert (= (and b!1460240 res!660700) b!1460245))

(assert (= (and b!1460245 (not res!660709)) b!1460244))

(assert (= (and b!1460244 (not res!660702)) b!1460247))

(assert (= (and b!1460247 (not res!660704)) b!1460237))

(assert (= (and b!1460237 (not res!660707)) b!1460238))

(assert (= (and b!1460238 (not res!660699)) b!1460235))

(assert (= (and b!1460235 (not res!660706)) b!1460242))

(assert (= (and b!1460242 (not res!660701)) b!1460243))

(assert (= (and b!1460243 res!660705) b!1460246))

(assert (= b!1460236 b!1460248))

(assert (= start!136142 b!1460236))

(assert (= b!1460234 b!1460239))

(assert (= start!136142 b!1460234))

(declare-fun m!1694611 () Bool)

(assert (=> b!1460244 m!1694611))

(declare-fun m!1694613 () Bool)

(assert (=> b!1460248 m!1694613))

(declare-fun m!1694615 () Bool)

(assert (=> b!1460236 m!1694615))

(declare-fun m!1694617 () Bool)

(assert (=> b!1460237 m!1694617))

(declare-fun m!1694619 () Bool)

(assert (=> b!1460245 m!1694619))

(declare-fun m!1694621 () Bool)

(assert (=> b!1460245 m!1694621))

(declare-fun m!1694623 () Bool)

(assert (=> b!1460245 m!1694623))

(declare-fun m!1694625 () Bool)

(assert (=> b!1460245 m!1694625))

(declare-fun m!1694627 () Bool)

(assert (=> b!1460245 m!1694627))

(declare-fun m!1694629 () Bool)

(assert (=> b!1460245 m!1694629))

(declare-fun m!1694631 () Bool)

(assert (=> b!1460245 m!1694631))

(declare-fun m!1694633 () Bool)

(assert (=> b!1460245 m!1694633))

(declare-fun m!1694635 () Bool)

(assert (=> b!1460245 m!1694635))

(declare-fun m!1694637 () Bool)

(assert (=> b!1460242 m!1694637))

(declare-fun m!1694639 () Bool)

(assert (=> start!136142 m!1694639))

(declare-fun m!1694641 () Bool)

(assert (=> start!136142 m!1694641))

(declare-fun m!1694643 () Bool)

(assert (=> b!1460246 m!1694643))

(declare-fun m!1694645 () Bool)

(assert (=> b!1460241 m!1694645))

(declare-fun m!1694647 () Bool)

(assert (=> b!1460241 m!1694647))

(declare-fun m!1694649 () Bool)

(assert (=> b!1460241 m!1694649))

(declare-fun m!1694651 () Bool)

(assert (=> b!1460239 m!1694651))

(declare-fun m!1694653 () Bool)

(assert (=> b!1460243 m!1694653))

(declare-fun m!1694655 () Bool)

(assert (=> b!1460240 m!1694655))

(declare-fun m!1694657 () Bool)

(assert (=> b!1460238 m!1694657))

(declare-fun m!1694659 () Bool)

(assert (=> b!1460235 m!1694659))

(declare-fun m!1694661 () Bool)

(assert (=> b!1460247 m!1694661))

(declare-fun m!1694663 () Bool)

(assert (=> b!1460234 m!1694663))

(check-sat (not start!136142) (not b!1460237) (not b!1460240) (not b!1460242) (not b!1460247) (not b!1460241) (not b!1460236) (not b!1460246) (not b!1460248) (not b!1460235) (not b!1460244) (not b!1460239) (not b!1460234) (not b!1460238) (not b!1460245) (not b!1460243))
(check-sat)
(get-model)

(declare-fun d!427400 () Bool)

(get-info :version)

(assert (=> d!427400 (= (isEmpty!9503 lt!504264) ((_ is Nil!15154) lt!504264))))

(assert (=> b!1460243 d!427400))

(declare-fun d!427402 () Bool)

(declare-fun isBalanced!1547 (Conc!5165) Bool)

(assert (=> d!427402 (= (inv!20241 (tokens!2092 other!32)) (isBalanced!1547 (c!240710 (tokens!2092 other!32))))))

(declare-fun bs!344098 () Bool)

(assert (= bs!344098 d!427402))

(declare-fun m!1694683 () Bool)

(assert (=> bs!344098 m!1694683))

(assert (=> b!1460234 d!427402))

(declare-fun d!427406 () Bool)

(assert (=> d!427406 (= (isEmpty!9502 (rules!11648 thiss!10022)) ((_ is Nil!15155) (rules!11648 thiss!10022)))))

(assert (=> b!1460244 d!427406))

(declare-fun d!427408 () Bool)

(declare-fun lt!504273 () Bool)

(assert (=> d!427408 (= lt!504273 (isEmpty!9503 (list!6065 (tokens!2092 thiss!10022))))))

(declare-fun isEmpty!9506 (Conc!5165) Bool)

(assert (=> d!427408 (= lt!504273 (isEmpty!9506 (c!240710 (tokens!2092 thiss!10022))))))

(assert (=> d!427408 (= (isEmpty!9501 (tokens!2092 thiss!10022)) lt!504273)))

(declare-fun bs!344099 () Bool)

(assert (= bs!344099 d!427408))

(assert (=> bs!344099 m!1694627))

(assert (=> bs!344099 m!1694627))

(declare-fun m!1694685 () Bool)

(assert (=> bs!344099 m!1694685))

(declare-fun m!1694687 () Bool)

(assert (=> bs!344099 m!1694687))

(assert (=> b!1460240 d!427408))

(declare-fun d!427410 () Bool)

(declare-fun res!660738 () Bool)

(declare-fun e!931564 () Bool)

(assert (=> d!427410 (=> res!660738 e!931564)))

(assert (=> d!427410 (= res!660738 (or (not ((_ is Cons!15154) lt!504260)) (not ((_ is Cons!15154) (t!134347 lt!504260)))))))

(assert (=> d!427410 (= (tokensListTwoByTwoPredicateSeparableList!243 Lexer!2323 lt!504260 (rules!11648 thiss!10022)) e!931564)))

(declare-fun b!1460280 () Bool)

(declare-fun e!931565 () Bool)

(assert (=> b!1460280 (= e!931564 e!931565)))

(declare-fun res!660737 () Bool)

(assert (=> b!1460280 (=> (not res!660737) (not e!931565))))

(assert (=> b!1460280 (= res!660737 (separableTokensPredicate!534 Lexer!2323 (h!20555 lt!504260) (h!20555 (t!134347 lt!504260)) (rules!11648 thiss!10022)))))

(declare-fun lt!504294 () Unit!24191)

(declare-fun Unit!24193 () Unit!24191)

(assert (=> b!1460280 (= lt!504294 Unit!24193)))

(declare-fun size!12397 (BalanceConc!10268) Int)

(declare-fun charsOf!1531 (Token!5000) BalanceConc!10268)

(assert (=> b!1460280 (> (size!12397 (charsOf!1531 (h!20555 (t!134347 lt!504260)))) 0)))

(declare-fun lt!504295 () Unit!24191)

(declare-fun Unit!24194 () Unit!24191)

(assert (=> b!1460280 (= lt!504295 Unit!24194)))

(assert (=> b!1460280 (rulesProduceIndividualToken!1244 Lexer!2323 (rules!11648 thiss!10022) (h!20555 (t!134347 lt!504260)))))

(declare-fun lt!504297 () Unit!24191)

(declare-fun Unit!24195 () Unit!24191)

(assert (=> b!1460280 (= lt!504297 Unit!24195)))

(assert (=> b!1460280 (rulesProduceIndividualToken!1244 Lexer!2323 (rules!11648 thiss!10022) (h!20555 lt!504260))))

(declare-fun lt!504293 () Unit!24191)

(declare-fun lt!504296 () Unit!24191)

(assert (=> b!1460280 (= lt!504293 lt!504296)))

(assert (=> b!1460280 (rulesProduceIndividualToken!1244 Lexer!2323 (rules!11648 thiss!10022) (h!20555 (t!134347 lt!504260)))))

(assert (=> b!1460280 (= lt!504296 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!427 Lexer!2323 (rules!11648 thiss!10022) lt!504260 (h!20555 (t!134347 lt!504260))))))

(declare-fun lt!504292 () Unit!24191)

(declare-fun lt!504291 () Unit!24191)

(assert (=> b!1460280 (= lt!504292 lt!504291)))

(assert (=> b!1460280 (rulesProduceIndividualToken!1244 Lexer!2323 (rules!11648 thiss!10022) (h!20555 lt!504260))))

(assert (=> b!1460280 (= lt!504291 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!427 Lexer!2323 (rules!11648 thiss!10022) lt!504260 (h!20555 lt!504260)))))

(declare-fun b!1460281 () Bool)

(assert (=> b!1460281 (= e!931565 (tokensListTwoByTwoPredicateSeparableList!243 Lexer!2323 (Cons!15154 (h!20555 (t!134347 lt!504260)) (t!134347 (t!134347 lt!504260))) (rules!11648 thiss!10022)))))

(assert (= (and d!427410 (not res!660738)) b!1460280))

(assert (= (and b!1460280 res!660737) b!1460281))

(declare-fun m!1694707 () Bool)

(assert (=> b!1460280 m!1694707))

(declare-fun m!1694709 () Bool)

(assert (=> b!1460280 m!1694709))

(declare-fun m!1694711 () Bool)

(assert (=> b!1460280 m!1694711))

(declare-fun m!1694713 () Bool)

(assert (=> b!1460280 m!1694713))

(declare-fun m!1694715 () Bool)

(assert (=> b!1460280 m!1694715))

(declare-fun m!1694717 () Bool)

(assert (=> b!1460280 m!1694717))

(assert (=> b!1460280 m!1694709))

(declare-fun m!1694719 () Bool)

(assert (=> b!1460280 m!1694719))

(declare-fun m!1694721 () Bool)

(assert (=> b!1460281 m!1694721))

(assert (=> b!1460242 d!427410))

(declare-fun d!427422 () Bool)

(declare-fun lt!504298 () Bool)

(assert (=> d!427422 (= lt!504298 (isEmpty!9503 (list!6065 (tokens!2092 other!32))))))

(assert (=> d!427422 (= lt!504298 (isEmpty!9506 (c!240710 (tokens!2092 other!32))))))

(assert (=> d!427422 (= (isEmpty!9501 (tokens!2092 other!32)) lt!504298)))

(declare-fun bs!344102 () Bool)

(assert (= bs!344102 d!427422))

(assert (=> bs!344102 m!1694633))

(assert (=> bs!344102 m!1694633))

(declare-fun m!1694723 () Bool)

(assert (=> bs!344102 m!1694723))

(declare-fun m!1694725 () Bool)

(assert (=> bs!344102 m!1694725))

(assert (=> b!1460241 d!427422))

(declare-fun d!427424 () Bool)

(declare-fun e!931576 () Bool)

(assert (=> d!427424 e!931576))

(declare-fun res!660755 () Bool)

(assert (=> d!427424 (=> (not res!660755) (not e!931576))))

(assert (=> d!427424 (= res!660755 (rulesInvariant!2158 Lexer!2323 (rules!11648 thiss!10022)))))

(declare-fun Unit!24196 () Unit!24191)

(assert (=> d!427424 (= (lemmaInvariant!365 thiss!10022) Unit!24196)))

(declare-fun b!1460298 () Bool)

(declare-fun res!660756 () Bool)

(assert (=> b!1460298 (=> (not res!660756) (not e!931576))))

(declare-fun rulesProduceEachTokenIndividually!875 (LexerInterface!2325 List!15221 BalanceConc!10270) Bool)

(assert (=> b!1460298 (= res!660756 (rulesProduceEachTokenIndividually!875 Lexer!2323 (rules!11648 thiss!10022) (tokens!2092 thiss!10022)))))

(declare-fun b!1460299 () Bool)

(declare-fun separableTokens!259 (LexerInterface!2325 BalanceConc!10270 List!15221) Bool)

(assert (=> b!1460299 (= e!931576 (separableTokens!259 Lexer!2323 (tokens!2092 thiss!10022) (rules!11648 thiss!10022)))))

(assert (= (and d!427424 res!660755) b!1460298))

(assert (= (and b!1460298 res!660756) b!1460299))

(assert (=> d!427424 m!1694661))

(declare-fun m!1694769 () Bool)

(assert (=> b!1460298 m!1694769))

(declare-fun m!1694771 () Bool)

(assert (=> b!1460299 m!1694771))

(assert (=> b!1460241 d!427424))

(declare-fun d!427434 () Bool)

(declare-fun e!931577 () Bool)

(assert (=> d!427434 e!931577))

(declare-fun res!660757 () Bool)

(assert (=> d!427434 (=> (not res!660757) (not e!931577))))

(assert (=> d!427434 (= res!660757 (rulesInvariant!2158 Lexer!2323 (rules!11648 other!32)))))

(declare-fun Unit!24197 () Unit!24191)

(assert (=> d!427434 (= (lemmaInvariant!365 other!32) Unit!24197)))

(declare-fun b!1460300 () Bool)

(declare-fun res!660758 () Bool)

(assert (=> b!1460300 (=> (not res!660758) (not e!931577))))

(assert (=> b!1460300 (= res!660758 (rulesProduceEachTokenIndividually!875 Lexer!2323 (rules!11648 other!32) (tokens!2092 other!32)))))

(declare-fun b!1460301 () Bool)

(assert (=> b!1460301 (= e!931577 (separableTokens!259 Lexer!2323 (tokens!2092 other!32) (rules!11648 other!32)))))

(assert (= (and d!427434 res!660757) b!1460300))

(assert (= (and b!1460300 res!660758) b!1460301))

(declare-fun m!1694773 () Bool)

(assert (=> d!427434 m!1694773))

(declare-fun m!1694775 () Bool)

(assert (=> b!1460300 m!1694775))

(declare-fun m!1694777 () Bool)

(assert (=> b!1460301 m!1694777))

(assert (=> b!1460241 d!427434))

(declare-fun d!427436 () Bool)

(declare-fun res!660765 () Bool)

(declare-fun e!931580 () Bool)

(assert (=> d!427436 (=> (not res!660765) (not e!931580))))

(assert (=> d!427436 (= res!660765 (not (isEmpty!9502 (rules!11648 thiss!10022))))))

(assert (=> d!427436 (= (inv!20243 thiss!10022) e!931580)))

(declare-fun b!1460308 () Bool)

(declare-fun res!660766 () Bool)

(assert (=> b!1460308 (=> (not res!660766) (not e!931580))))

(assert (=> b!1460308 (= res!660766 (rulesInvariant!2158 Lexer!2323 (rules!11648 thiss!10022)))))

(declare-fun b!1460309 () Bool)

(declare-fun res!660767 () Bool)

(assert (=> b!1460309 (=> (not res!660767) (not e!931580))))

(assert (=> b!1460309 (= res!660767 (rulesProduceEachTokenIndividually!875 Lexer!2323 (rules!11648 thiss!10022) (tokens!2092 thiss!10022)))))

(declare-fun b!1460310 () Bool)

(assert (=> b!1460310 (= e!931580 (separableTokens!259 Lexer!2323 (tokens!2092 thiss!10022) (rules!11648 thiss!10022)))))

(assert (= (and d!427436 res!660765) b!1460308))

(assert (= (and b!1460308 res!660766) b!1460309))

(assert (= (and b!1460309 res!660767) b!1460310))

(assert (=> d!427436 m!1694611))

(assert (=> b!1460308 m!1694661))

(assert (=> b!1460309 m!1694769))

(assert (=> b!1460310 m!1694771))

(assert (=> start!136142 d!427436))

(declare-fun d!427444 () Bool)

(declare-fun res!660768 () Bool)

(declare-fun e!931581 () Bool)

(assert (=> d!427444 (=> (not res!660768) (not e!931581))))

(assert (=> d!427444 (= res!660768 (not (isEmpty!9502 (rules!11648 other!32))))))

(assert (=> d!427444 (= (inv!20243 other!32) e!931581)))

(declare-fun b!1460311 () Bool)

(declare-fun res!660769 () Bool)

(assert (=> b!1460311 (=> (not res!660769) (not e!931581))))

(assert (=> b!1460311 (= res!660769 (rulesInvariant!2158 Lexer!2323 (rules!11648 other!32)))))

(declare-fun b!1460312 () Bool)

(declare-fun res!660770 () Bool)

(assert (=> b!1460312 (=> (not res!660770) (not e!931581))))

(assert (=> b!1460312 (= res!660770 (rulesProduceEachTokenIndividually!875 Lexer!2323 (rules!11648 other!32) (tokens!2092 other!32)))))

(declare-fun b!1460313 () Bool)

(assert (=> b!1460313 (= e!931581 (separableTokens!259 Lexer!2323 (tokens!2092 other!32) (rules!11648 other!32)))))

(assert (= (and d!427444 res!660768) b!1460311))

(assert (= (and b!1460311 res!660769) b!1460312))

(assert (= (and b!1460312 res!660770) b!1460313))

(declare-fun m!1694797 () Bool)

(assert (=> d!427444 m!1694797))

(assert (=> b!1460311 m!1694773))

(assert (=> b!1460312 m!1694775))

(assert (=> b!1460313 m!1694777))

(assert (=> start!136142 d!427444))

(declare-fun b!1460349 () Bool)

(declare-fun e!931611 () Bool)

(assert (=> b!1460349 (= e!931611 true)))

(declare-fun b!1460348 () Bool)

(declare-fun e!931610 () Bool)

(assert (=> b!1460348 (= e!931610 e!931611)))

(declare-fun b!1460347 () Bool)

(declare-fun e!931609 () Bool)

(assert (=> b!1460347 (= e!931609 e!931610)))

(declare-fun d!427446 () Bool)

(assert (=> d!427446 e!931609))

(assert (= b!1460348 b!1460349))

(assert (= b!1460347 b!1460348))

(assert (= (and d!427446 ((_ is Cons!15155) (rules!11648 thiss!10022))) b!1460347))

(declare-fun order!9121 () Int)

(declare-fun lambda!63275 () Int)

(declare-fun order!9123 () Int)

(declare-fun dynLambda!6911 (Int Int) Int)

(declare-fun dynLambda!6912 (Int Int) Int)

(assert (=> b!1460349 (< (dynLambda!6911 order!9121 (toValue!3980 (transformation!2669 (h!20556 (rules!11648 thiss!10022))))) (dynLambda!6912 order!9123 lambda!63275))))

(declare-fun order!9125 () Int)

(declare-fun dynLambda!6913 (Int Int) Int)

(assert (=> b!1460349 (< (dynLambda!6913 order!9125 (toChars!3839 (transformation!2669 (h!20556 (rules!11648 thiss!10022))))) (dynLambda!6912 order!9123 lambda!63275))))

(assert (=> d!427446 true))

(declare-fun lt!504319 () Bool)

(declare-fun forall!3736 (List!15220 Int) Bool)

(assert (=> d!427446 (= lt!504319 (forall!3736 lt!504260 lambda!63275))))

(declare-fun e!931601 () Bool)

(assert (=> d!427446 (= lt!504319 e!931601)))

(declare-fun res!660781 () Bool)

(assert (=> d!427446 (=> res!660781 e!931601)))

(assert (=> d!427446 (= res!660781 (not ((_ is Cons!15154) lt!504260)))))

(assert (=> d!427446 (not (isEmpty!9502 (rules!11648 thiss!10022)))))

(assert (=> d!427446 (= (rulesProduceEachTokenIndividuallyList!744 Lexer!2323 (rules!11648 thiss!10022) lt!504260) lt!504319)))

(declare-fun b!1460337 () Bool)

(declare-fun e!931602 () Bool)

(assert (=> b!1460337 (= e!931601 e!931602)))

(declare-fun res!660782 () Bool)

(assert (=> b!1460337 (=> (not res!660782) (not e!931602))))

(assert (=> b!1460337 (= res!660782 (rulesProduceIndividualToken!1244 Lexer!2323 (rules!11648 thiss!10022) (h!20555 lt!504260)))))

(declare-fun b!1460338 () Bool)

(assert (=> b!1460338 (= e!931602 (rulesProduceEachTokenIndividuallyList!744 Lexer!2323 (rules!11648 thiss!10022) (t!134347 lt!504260)))))

(assert (= (and d!427446 (not res!660781)) b!1460337))

(assert (= (and b!1460337 res!660782) b!1460338))

(declare-fun m!1694805 () Bool)

(assert (=> d!427446 m!1694805))

(assert (=> d!427446 m!1694611))

(assert (=> b!1460337 m!1694707))

(declare-fun m!1694807 () Bool)

(assert (=> b!1460338 m!1694807))

(assert (=> b!1460238 d!427446))

(declare-fun bs!344108 () Bool)

(declare-fun d!427450 () Bool)

(assert (= bs!344108 (and d!427450 d!427446)))

(declare-fun lambda!63276 () Int)

(assert (=> bs!344108 (= lambda!63276 lambda!63275)))

(declare-fun b!1460356 () Bool)

(declare-fun e!931616 () Bool)

(assert (=> b!1460356 (= e!931616 true)))

(declare-fun b!1460355 () Bool)

(declare-fun e!931615 () Bool)

(assert (=> b!1460355 (= e!931615 e!931616)))

(declare-fun b!1460354 () Bool)

(declare-fun e!931614 () Bool)

(assert (=> b!1460354 (= e!931614 e!931615)))

(assert (=> d!427450 e!931614))

(assert (= b!1460355 b!1460356))

(assert (= b!1460354 b!1460355))

(assert (= (and d!427450 ((_ is Cons!15155) (rules!11648 thiss!10022))) b!1460354))

(assert (=> b!1460356 (< (dynLambda!6911 order!9121 (toValue!3980 (transformation!2669 (h!20556 (rules!11648 thiss!10022))))) (dynLambda!6912 order!9123 lambda!63276))))

(assert (=> b!1460356 (< (dynLambda!6913 order!9125 (toChars!3839 (transformation!2669 (h!20556 (rules!11648 thiss!10022))))) (dynLambda!6912 order!9123 lambda!63276))))

(assert (=> d!427450 true))

(declare-fun lt!504320 () Bool)

(assert (=> d!427450 (= lt!504320 (forall!3736 lt!504264 lambda!63276))))

(declare-fun e!931612 () Bool)

(assert (=> d!427450 (= lt!504320 e!931612)))

(declare-fun res!660783 () Bool)

(assert (=> d!427450 (=> res!660783 e!931612)))

(assert (=> d!427450 (= res!660783 (not ((_ is Cons!15154) lt!504264)))))

(assert (=> d!427450 (not (isEmpty!9502 (rules!11648 thiss!10022)))))

(assert (=> d!427450 (= (rulesProduceEachTokenIndividuallyList!744 Lexer!2323 (rules!11648 thiss!10022) lt!504264) lt!504320)))

(declare-fun b!1460352 () Bool)

(declare-fun e!931613 () Bool)

(assert (=> b!1460352 (= e!931612 e!931613)))

(declare-fun res!660784 () Bool)

(assert (=> b!1460352 (=> (not res!660784) (not e!931613))))

(assert (=> b!1460352 (= res!660784 (rulesProduceIndividualToken!1244 Lexer!2323 (rules!11648 thiss!10022) (h!20555 lt!504264)))))

(declare-fun b!1460353 () Bool)

(assert (=> b!1460353 (= e!931613 (rulesProduceEachTokenIndividuallyList!744 Lexer!2323 (rules!11648 thiss!10022) (t!134347 lt!504264)))))

(assert (= (and d!427450 (not res!660783)) b!1460352))

(assert (= (and b!1460352 res!660784) b!1460353))

(declare-fun m!1694809 () Bool)

(assert (=> d!427450 m!1694809))

(assert (=> d!427450 m!1694611))

(declare-fun m!1694811 () Bool)

(assert (=> b!1460352 m!1694811))

(declare-fun m!1694813 () Bool)

(assert (=> b!1460353 m!1694813))

(assert (=> b!1460237 d!427450))

(declare-fun d!427452 () Bool)

(declare-fun c!240717 () Bool)

(assert (=> d!427452 (= c!240717 ((_ is Node!5165) (c!240710 (tokens!2092 thiss!10022))))))

(declare-fun e!931621 () Bool)

(assert (=> d!427452 (= (inv!20242 (c!240710 (tokens!2092 thiss!10022))) e!931621)))

(declare-fun b!1460363 () Bool)

(declare-fun inv!20246 (Conc!5165) Bool)

(assert (=> b!1460363 (= e!931621 (inv!20246 (c!240710 (tokens!2092 thiss!10022))))))

(declare-fun b!1460364 () Bool)

(declare-fun e!931622 () Bool)

(assert (=> b!1460364 (= e!931621 e!931622)))

(declare-fun res!660787 () Bool)

(assert (=> b!1460364 (= res!660787 (not ((_ is Leaf!7701) (c!240710 (tokens!2092 thiss!10022)))))))

(assert (=> b!1460364 (=> res!660787 e!931622)))

(declare-fun b!1460365 () Bool)

(declare-fun inv!20247 (Conc!5165) Bool)

(assert (=> b!1460365 (= e!931622 (inv!20247 (c!240710 (tokens!2092 thiss!10022))))))

(assert (= (and d!427452 c!240717) b!1460363))

(assert (= (and d!427452 (not c!240717)) b!1460364))

(assert (= (and b!1460364 (not res!660787)) b!1460365))

(declare-fun m!1694815 () Bool)

(assert (=> b!1460363 m!1694815))

(declare-fun m!1694817 () Bool)

(assert (=> b!1460365 m!1694817))

(assert (=> b!1460248 d!427452))

(declare-fun d!427454 () Bool)

(declare-fun c!240718 () Bool)

(assert (=> d!427454 (= c!240718 ((_ is Node!5165) (c!240710 (tokens!2092 other!32))))))

(declare-fun e!931623 () Bool)

(assert (=> d!427454 (= (inv!20242 (c!240710 (tokens!2092 other!32))) e!931623)))

(declare-fun b!1460366 () Bool)

(assert (=> b!1460366 (= e!931623 (inv!20246 (c!240710 (tokens!2092 other!32))))))

(declare-fun b!1460367 () Bool)

(declare-fun e!931624 () Bool)

(assert (=> b!1460367 (= e!931623 e!931624)))

(declare-fun res!660788 () Bool)

(assert (=> b!1460367 (= res!660788 (not ((_ is Leaf!7701) (c!240710 (tokens!2092 other!32)))))))

(assert (=> b!1460367 (=> res!660788 e!931624)))

(declare-fun b!1460368 () Bool)

(assert (=> b!1460368 (= e!931624 (inv!20247 (c!240710 (tokens!2092 other!32))))))

(assert (= (and d!427454 c!240718) b!1460366))

(assert (= (and d!427454 (not c!240718)) b!1460367))

(assert (= (and b!1460367 (not res!660788)) b!1460368))

(declare-fun m!1694819 () Bool)

(assert (=> b!1460366 m!1694819))

(declare-fun m!1694821 () Bool)

(assert (=> b!1460368 m!1694821))

(assert (=> b!1460239 d!427454))

(declare-fun d!427456 () Bool)

(declare-fun res!660790 () Bool)

(declare-fun e!931625 () Bool)

(assert (=> d!427456 (=> res!660790 e!931625)))

(assert (=> d!427456 (= res!660790 (or (not ((_ is Cons!15154) lt!504264)) (not ((_ is Cons!15154) (t!134347 lt!504264)))))))

(assert (=> d!427456 (= (tokensListTwoByTwoPredicateSeparableList!243 Lexer!2323 lt!504264 (rules!11648 thiss!10022)) e!931625)))

(declare-fun b!1460369 () Bool)

(declare-fun e!931626 () Bool)

(assert (=> b!1460369 (= e!931625 e!931626)))

(declare-fun res!660789 () Bool)

(assert (=> b!1460369 (=> (not res!660789) (not e!931626))))

(assert (=> b!1460369 (= res!660789 (separableTokensPredicate!534 Lexer!2323 (h!20555 lt!504264) (h!20555 (t!134347 lt!504264)) (rules!11648 thiss!10022)))))

(declare-fun lt!504324 () Unit!24191)

(declare-fun Unit!24206 () Unit!24191)

(assert (=> b!1460369 (= lt!504324 Unit!24206)))

(assert (=> b!1460369 (> (size!12397 (charsOf!1531 (h!20555 (t!134347 lt!504264)))) 0)))

(declare-fun lt!504325 () Unit!24191)

(declare-fun Unit!24207 () Unit!24191)

(assert (=> b!1460369 (= lt!504325 Unit!24207)))

(assert (=> b!1460369 (rulesProduceIndividualToken!1244 Lexer!2323 (rules!11648 thiss!10022) (h!20555 (t!134347 lt!504264)))))

(declare-fun lt!504327 () Unit!24191)

(declare-fun Unit!24208 () Unit!24191)

(assert (=> b!1460369 (= lt!504327 Unit!24208)))

(assert (=> b!1460369 (rulesProduceIndividualToken!1244 Lexer!2323 (rules!11648 thiss!10022) (h!20555 lt!504264))))

(declare-fun lt!504323 () Unit!24191)

(declare-fun lt!504326 () Unit!24191)

(assert (=> b!1460369 (= lt!504323 lt!504326)))

(assert (=> b!1460369 (rulesProduceIndividualToken!1244 Lexer!2323 (rules!11648 thiss!10022) (h!20555 (t!134347 lt!504264)))))

(assert (=> b!1460369 (= lt!504326 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!427 Lexer!2323 (rules!11648 thiss!10022) lt!504264 (h!20555 (t!134347 lt!504264))))))

(declare-fun lt!504322 () Unit!24191)

(declare-fun lt!504321 () Unit!24191)

(assert (=> b!1460369 (= lt!504322 lt!504321)))

(assert (=> b!1460369 (rulesProduceIndividualToken!1244 Lexer!2323 (rules!11648 thiss!10022) (h!20555 lt!504264))))

(assert (=> b!1460369 (= lt!504321 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!427 Lexer!2323 (rules!11648 thiss!10022) lt!504264 (h!20555 lt!504264)))))

(declare-fun b!1460370 () Bool)

(assert (=> b!1460370 (= e!931626 (tokensListTwoByTwoPredicateSeparableList!243 Lexer!2323 (Cons!15154 (h!20555 (t!134347 lt!504264)) (t!134347 (t!134347 lt!504264))) (rules!11648 thiss!10022)))))

(assert (= (and d!427456 (not res!660790)) b!1460369))

(assert (= (and b!1460369 res!660789) b!1460370))

(assert (=> b!1460369 m!1694811))

(declare-fun m!1694823 () Bool)

(assert (=> b!1460369 m!1694823))

(declare-fun m!1694825 () Bool)

(assert (=> b!1460369 m!1694825))

(declare-fun m!1694827 () Bool)

(assert (=> b!1460369 m!1694827))

(declare-fun m!1694829 () Bool)

(assert (=> b!1460369 m!1694829))

(declare-fun m!1694831 () Bool)

(assert (=> b!1460369 m!1694831))

(assert (=> b!1460369 m!1694823))

(declare-fun m!1694833 () Bool)

(assert (=> b!1460369 m!1694833))

(declare-fun m!1694835 () Bool)

(assert (=> b!1460370 m!1694835))

(assert (=> b!1460235 d!427456))

(declare-fun d!427458 () Bool)

(assert (=> d!427458 (= (isEmpty!9503 lt!504260) ((_ is Nil!15154) lt!504260))))

(assert (=> b!1460246 d!427458))

(declare-fun d!427460 () Bool)

(declare-fun lt!504330 () Token!5000)

(declare-fun head!2996 (List!15220) Token!5000)

(assert (=> d!427460 (= lt!504330 (head!2996 (list!6065 (tokens!2092 other!32))))))

(declare-fun head!2997 (Conc!5165) Token!5000)

(assert (=> d!427460 (= lt!504330 (head!2997 (c!240710 (tokens!2092 other!32))))))

(assert (=> d!427460 (not (isEmpty!9501 (tokens!2092 other!32)))))

(assert (=> d!427460 (= (head!2993 (tokens!2092 other!32)) lt!504330)))

(declare-fun bs!344109 () Bool)

(assert (= bs!344109 d!427460))

(assert (=> bs!344109 m!1694633))

(assert (=> bs!344109 m!1694633))

(declare-fun m!1694837 () Bool)

(assert (=> bs!344109 m!1694837))

(declare-fun m!1694839 () Bool)

(assert (=> bs!344109 m!1694839))

(assert (=> bs!344109 m!1694645))

(assert (=> b!1460245 d!427460))

(declare-fun d!427462 () Bool)

(declare-fun lt!504365 () Bool)

(declare-fun e!931639 () Bool)

(assert (=> d!427462 (= lt!504365 e!931639)))

(declare-fun res!660806 () Bool)

(assert (=> d!427462 (=> (not res!660806) (not e!931639))))

(declare-datatypes ((tuple2!14234 0))(
  ( (tuple2!14235 (_1!8003 BalanceConc!10270) (_2!8003 BalanceConc!10268)) )
))
(declare-fun lex!1070 (LexerInterface!2325 List!15221 BalanceConc!10268) tuple2!14234)

(declare-fun print!1097 (LexerInterface!2325 BalanceConc!10270) BalanceConc!10268)

(declare-fun singletonSeq!1269 (Token!5000) BalanceConc!10270)

(assert (=> d!427462 (= res!660806 (= (list!6065 (_1!8003 (lex!1070 Lexer!2323 (rules!11648 thiss!10022) (print!1097 Lexer!2323 (singletonSeq!1269 lt!504265))))) (list!6065 (singletonSeq!1269 lt!504265))))))

(declare-fun e!931640 () Bool)

(assert (=> d!427462 (= lt!504365 e!931640)))

(declare-fun res!660805 () Bool)

(assert (=> d!427462 (=> (not res!660805) (not e!931640))))

(declare-fun lt!504364 () tuple2!14234)

(declare-fun size!12399 (BalanceConc!10270) Int)

(assert (=> d!427462 (= res!660805 (= (size!12399 (_1!8003 lt!504364)) 1))))

(assert (=> d!427462 (= lt!504364 (lex!1070 Lexer!2323 (rules!11648 thiss!10022) (print!1097 Lexer!2323 (singletonSeq!1269 lt!504265))))))

(assert (=> d!427462 (not (isEmpty!9502 (rules!11648 thiss!10022)))))

(assert (=> d!427462 (= (rulesProduceIndividualToken!1244 Lexer!2323 (rules!11648 thiss!10022) lt!504265) lt!504365)))

(declare-fun b!1460385 () Bool)

(declare-fun res!660807 () Bool)

(assert (=> b!1460385 (=> (not res!660807) (not e!931640))))

(declare-fun apply!3942 (BalanceConc!10270 Int) Token!5000)

(assert (=> b!1460385 (= res!660807 (= (apply!3942 (_1!8003 lt!504364) 0) lt!504265))))

(declare-fun b!1460386 () Bool)

(declare-fun isEmpty!9507 (BalanceConc!10268) Bool)

(assert (=> b!1460386 (= e!931640 (isEmpty!9507 (_2!8003 lt!504364)))))

(declare-fun b!1460387 () Bool)

(assert (=> b!1460387 (= e!931639 (isEmpty!9507 (_2!8003 (lex!1070 Lexer!2323 (rules!11648 thiss!10022) (print!1097 Lexer!2323 (singletonSeq!1269 lt!504265))))))))

(assert (= (and d!427462 res!660805) b!1460385))

(assert (= (and b!1460385 res!660807) b!1460386))

(assert (= (and d!427462 res!660806) b!1460387))

(declare-fun m!1694875 () Bool)

(assert (=> d!427462 m!1694875))

(declare-fun m!1694877 () Bool)

(assert (=> d!427462 m!1694877))

(declare-fun m!1694879 () Bool)

(assert (=> d!427462 m!1694879))

(declare-fun m!1694881 () Bool)

(assert (=> d!427462 m!1694881))

(assert (=> d!427462 m!1694875))

(declare-fun m!1694883 () Bool)

(assert (=> d!427462 m!1694883))

(assert (=> d!427462 m!1694611))

(declare-fun m!1694885 () Bool)

(assert (=> d!427462 m!1694885))

(assert (=> d!427462 m!1694875))

(assert (=> d!427462 m!1694879))

(declare-fun m!1694887 () Bool)

(assert (=> b!1460385 m!1694887))

(declare-fun m!1694889 () Bool)

(assert (=> b!1460386 m!1694889))

(assert (=> b!1460387 m!1694875))

(assert (=> b!1460387 m!1694875))

(assert (=> b!1460387 m!1694879))

(assert (=> b!1460387 m!1694879))

(assert (=> b!1460387 m!1694881))

(declare-fun m!1694891 () Bool)

(assert (=> b!1460387 m!1694891))

(assert (=> b!1460245 d!427462))

(declare-fun d!427470 () Bool)

(declare-fun lt!504367 () Bool)

(declare-fun e!931641 () Bool)

(assert (=> d!427470 (= lt!504367 e!931641)))

(declare-fun res!660809 () Bool)

(assert (=> d!427470 (=> (not res!660809) (not e!931641))))

(assert (=> d!427470 (= res!660809 (= (list!6065 (_1!8003 (lex!1070 Lexer!2323 (rules!11648 thiss!10022) (print!1097 Lexer!2323 (singletonSeq!1269 lt!504267))))) (list!6065 (singletonSeq!1269 lt!504267))))))

(declare-fun e!931642 () Bool)

(assert (=> d!427470 (= lt!504367 e!931642)))

(declare-fun res!660808 () Bool)

(assert (=> d!427470 (=> (not res!660808) (not e!931642))))

(declare-fun lt!504366 () tuple2!14234)

(assert (=> d!427470 (= res!660808 (= (size!12399 (_1!8003 lt!504366)) 1))))

(assert (=> d!427470 (= lt!504366 (lex!1070 Lexer!2323 (rules!11648 thiss!10022) (print!1097 Lexer!2323 (singletonSeq!1269 lt!504267))))))

(assert (=> d!427470 (not (isEmpty!9502 (rules!11648 thiss!10022)))))

(assert (=> d!427470 (= (rulesProduceIndividualToken!1244 Lexer!2323 (rules!11648 thiss!10022) lt!504267) lt!504367)))

(declare-fun b!1460388 () Bool)

(declare-fun res!660810 () Bool)

(assert (=> b!1460388 (=> (not res!660810) (not e!931642))))

(assert (=> b!1460388 (= res!660810 (= (apply!3942 (_1!8003 lt!504366) 0) lt!504267))))

(declare-fun b!1460389 () Bool)

(assert (=> b!1460389 (= e!931642 (isEmpty!9507 (_2!8003 lt!504366)))))

(declare-fun b!1460390 () Bool)

(assert (=> b!1460390 (= e!931641 (isEmpty!9507 (_2!8003 (lex!1070 Lexer!2323 (rules!11648 thiss!10022) (print!1097 Lexer!2323 (singletonSeq!1269 lt!504267))))))))

(assert (= (and d!427470 res!660808) b!1460388))

(assert (= (and b!1460388 res!660810) b!1460389))

(assert (= (and d!427470 res!660809) b!1460390))

(declare-fun m!1694893 () Bool)

(assert (=> d!427470 m!1694893))

(declare-fun m!1694895 () Bool)

(assert (=> d!427470 m!1694895))

(declare-fun m!1694897 () Bool)

(assert (=> d!427470 m!1694897))

(declare-fun m!1694899 () Bool)

(assert (=> d!427470 m!1694899))

(assert (=> d!427470 m!1694893))

(declare-fun m!1694901 () Bool)

(assert (=> d!427470 m!1694901))

(assert (=> d!427470 m!1694611))

(declare-fun m!1694903 () Bool)

(assert (=> d!427470 m!1694903))

(assert (=> d!427470 m!1694893))

(assert (=> d!427470 m!1694897))

(declare-fun m!1694905 () Bool)

(assert (=> b!1460388 m!1694905))

(declare-fun m!1694907 () Bool)

(assert (=> b!1460389 m!1694907))

(assert (=> b!1460390 m!1694893))

(assert (=> b!1460390 m!1694893))

(assert (=> b!1460390 m!1694897))

(assert (=> b!1460390 m!1694897))

(assert (=> b!1460390 m!1694899))

(declare-fun m!1694909 () Bool)

(assert (=> b!1460390 m!1694909))

(assert (=> b!1460245 d!427470))

(declare-fun d!427472 () Bool)

(declare-fun list!6067 (Conc!5165) List!15220)

(assert (=> d!427472 (= (list!6065 (tokens!2092 other!32)) (list!6067 (c!240710 (tokens!2092 other!32))))))

(declare-fun bs!344111 () Bool)

(assert (= bs!344111 d!427472))

(declare-fun m!1694911 () Bool)

(assert (=> bs!344111 m!1694911))

(assert (=> b!1460245 d!427472))

(declare-fun d!427474 () Bool)

(declare-fun prefixMatchZipperSequence!348 (Regex!3983 BalanceConc!10268) Bool)

(declare-fun rulesRegex!406 (LexerInterface!2325 List!15221) Regex!3983)

(declare-fun ++!4073 (BalanceConc!10268 BalanceConc!10268) BalanceConc!10268)

(declare-fun singletonSeq!1270 (C!8144) BalanceConc!10268)

(declare-fun apply!3943 (BalanceConc!10268 Int) C!8144)

(assert (=> d!427474 (= (separableTokensPredicate!534 Lexer!2323 lt!504265 lt!504267 (rules!11648 thiss!10022)) (not (prefixMatchZipperSequence!348 (rulesRegex!406 Lexer!2323 (rules!11648 thiss!10022)) (++!4073 (charsOf!1531 lt!504265) (singletonSeq!1270 (apply!3943 (charsOf!1531 lt!504267) 0))))))))

(declare-fun bs!344112 () Bool)

(assert (= bs!344112 d!427474))

(declare-fun m!1694913 () Bool)

(assert (=> bs!344112 m!1694913))

(declare-fun m!1694915 () Bool)

(assert (=> bs!344112 m!1694915))

(declare-fun m!1694917 () Bool)

(assert (=> bs!344112 m!1694917))

(declare-fun m!1694919 () Bool)

(assert (=> bs!344112 m!1694919))

(declare-fun m!1694921 () Bool)

(assert (=> bs!344112 m!1694921))

(assert (=> bs!344112 m!1694913))

(declare-fun m!1694923 () Bool)

(assert (=> bs!344112 m!1694923))

(declare-fun m!1694925 () Bool)

(assert (=> bs!344112 m!1694925))

(assert (=> bs!344112 m!1694915))

(assert (=> bs!344112 m!1694919))

(assert (=> bs!344112 m!1694921))

(assert (=> bs!344112 m!1694925))

(assert (=> bs!344112 m!1694923))

(assert (=> b!1460245 d!427474))

(declare-fun d!427476 () Bool)

(assert (=> d!427476 (rulesProduceIndividualToken!1244 Lexer!2323 (rules!11648 thiss!10022) lt!504267)))

(declare-fun lt!504371 () Unit!24191)

(declare-fun choose!8974 (LexerInterface!2325 List!15221 List!15220 Token!5000) Unit!24191)

(assert (=> d!427476 (= lt!504371 (choose!8974 Lexer!2323 (rules!11648 thiss!10022) lt!504260 lt!504267))))

(assert (=> d!427476 (not (isEmpty!9502 (rules!11648 thiss!10022)))))

(assert (=> d!427476 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!427 Lexer!2323 (rules!11648 thiss!10022) lt!504260 lt!504267) lt!504371)))

(declare-fun bs!344115 () Bool)

(assert (= bs!344115 d!427476))

(assert (=> bs!344115 m!1694623))

(declare-fun m!1694953 () Bool)

(assert (=> bs!344115 m!1694953))

(assert (=> bs!344115 m!1694611))

(assert (=> b!1460245 d!427476))

(declare-fun d!427486 () Bool)

(declare-fun lt!504374 () Token!5000)

(declare-fun last!268 (List!15220) Token!5000)

(assert (=> d!427486 (= lt!504374 (last!268 (list!6065 (tokens!2092 thiss!10022))))))

(declare-fun last!269 (Conc!5165) Token!5000)

(assert (=> d!427486 (= lt!504374 (last!269 (c!240710 (tokens!2092 thiss!10022))))))

(assert (=> d!427486 (not (isEmpty!9501 (tokens!2092 thiss!10022)))))

(assert (=> d!427486 (= (last!265 (tokens!2092 thiss!10022)) lt!504374)))

(declare-fun bs!344116 () Bool)

(assert (= bs!344116 d!427486))

(assert (=> bs!344116 m!1694627))

(assert (=> bs!344116 m!1694627))

(declare-fun m!1694955 () Bool)

(assert (=> bs!344116 m!1694955))

(declare-fun m!1694957 () Bool)

(assert (=> bs!344116 m!1694957))

(assert (=> bs!344116 m!1694655))

(assert (=> b!1460245 d!427486))

(declare-fun d!427488 () Bool)

(assert (=> d!427488 (= (list!6065 (tokens!2092 thiss!10022)) (list!6067 (c!240710 (tokens!2092 thiss!10022))))))

(declare-fun bs!344117 () Bool)

(assert (= bs!344117 d!427488))

(declare-fun m!1694959 () Bool)

(assert (=> bs!344117 m!1694959))

(assert (=> b!1460245 d!427488))

(declare-fun d!427490 () Bool)

(assert (=> d!427490 (rulesProduceIndividualToken!1244 Lexer!2323 (rules!11648 thiss!10022) lt!504265)))

(declare-fun lt!504375 () Unit!24191)

(assert (=> d!427490 (= lt!504375 (choose!8974 Lexer!2323 (rules!11648 thiss!10022) lt!504264 lt!504265))))

(assert (=> d!427490 (not (isEmpty!9502 (rules!11648 thiss!10022)))))

(assert (=> d!427490 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!427 Lexer!2323 (rules!11648 thiss!10022) lt!504264 lt!504265) lt!504375)))

(declare-fun bs!344118 () Bool)

(assert (= bs!344118 d!427490))

(assert (=> bs!344118 m!1694635))

(declare-fun m!1694961 () Bool)

(assert (=> bs!344118 m!1694961))

(assert (=> bs!344118 m!1694611))

(assert (=> b!1460245 d!427490))

(declare-fun d!427492 () Bool)

(declare-fun res!660823 () Bool)

(declare-fun e!931678 () Bool)

(assert (=> d!427492 (=> (not res!660823) (not e!931678))))

(declare-fun rulesValid!986 (LexerInterface!2325 List!15221) Bool)

(assert (=> d!427492 (= res!660823 (rulesValid!986 Lexer!2323 (rules!11648 thiss!10022)))))

(assert (=> d!427492 (= (rulesInvariant!2158 Lexer!2323 (rules!11648 thiss!10022)) e!931678)))

(declare-fun b!1460434 () Bool)

(declare-datatypes ((List!15223 0))(
  ( (Nil!15157) (Cons!15157 (h!20558 String!18051) (t!134358 List!15223)) )
))
(declare-fun noDuplicateTag!986 (LexerInterface!2325 List!15221 List!15223) Bool)

(assert (=> b!1460434 (= e!931678 (noDuplicateTag!986 Lexer!2323 (rules!11648 thiss!10022) Nil!15157))))

(assert (= (and d!427492 res!660823) b!1460434))

(declare-fun m!1694963 () Bool)

(assert (=> d!427492 m!1694963))

(declare-fun m!1694965 () Bool)

(assert (=> b!1460434 m!1694965))

(assert (=> b!1460247 d!427492))

(declare-fun d!427494 () Bool)

(assert (=> d!427494 (= (inv!20241 (tokens!2092 thiss!10022)) (isBalanced!1547 (c!240710 (tokens!2092 thiss!10022))))))

(declare-fun bs!344119 () Bool)

(assert (= bs!344119 d!427494))

(declare-fun m!1694967 () Bool)

(assert (=> bs!344119 m!1694967))

(assert (=> b!1460236 d!427494))

(declare-fun tp!411445 () Bool)

(declare-fun b!1460443 () Bool)

(declare-fun tp!411444 () Bool)

(declare-fun e!931684 () Bool)

(assert (=> b!1460443 (= e!931684 (and (inv!20242 (left!12878 (c!240710 (tokens!2092 thiss!10022)))) tp!411445 (inv!20242 (right!13208 (c!240710 (tokens!2092 thiss!10022)))) tp!411444))))

(declare-fun b!1460445 () Bool)

(declare-fun e!931683 () Bool)

(declare-fun tp!411443 () Bool)

(assert (=> b!1460445 (= e!931683 tp!411443)))

(declare-fun b!1460444 () Bool)

(declare-fun inv!20250 (IArray!10335) Bool)

(assert (=> b!1460444 (= e!931684 (and (inv!20250 (xs!7912 (c!240710 (tokens!2092 thiss!10022)))) e!931683))))

(assert (=> b!1460248 (= tp!411408 (and (inv!20242 (c!240710 (tokens!2092 thiss!10022))) e!931684))))

(assert (= (and b!1460248 ((_ is Node!5165) (c!240710 (tokens!2092 thiss!10022)))) b!1460443))

(assert (= b!1460444 b!1460445))

(assert (= (and b!1460248 ((_ is Leaf!7701) (c!240710 (tokens!2092 thiss!10022)))) b!1460444))

(declare-fun m!1694969 () Bool)

(assert (=> b!1460443 m!1694969))

(declare-fun m!1694971 () Bool)

(assert (=> b!1460443 m!1694971))

(declare-fun m!1694973 () Bool)

(assert (=> b!1460444 m!1694973))

(assert (=> b!1460248 m!1694613))

(declare-fun tp!411447 () Bool)

(declare-fun b!1460446 () Bool)

(declare-fun tp!411448 () Bool)

(declare-fun e!931686 () Bool)

(assert (=> b!1460446 (= e!931686 (and (inv!20242 (left!12878 (c!240710 (tokens!2092 other!32)))) tp!411448 (inv!20242 (right!13208 (c!240710 (tokens!2092 other!32)))) tp!411447))))

(declare-fun b!1460448 () Bool)

(declare-fun e!931685 () Bool)

(declare-fun tp!411446 () Bool)

(assert (=> b!1460448 (= e!931685 tp!411446)))

(declare-fun b!1460447 () Bool)

(assert (=> b!1460447 (= e!931686 (and (inv!20250 (xs!7912 (c!240710 (tokens!2092 other!32)))) e!931685))))

(assert (=> b!1460239 (= tp!411406 (and (inv!20242 (c!240710 (tokens!2092 other!32))) e!931686))))

(assert (= (and b!1460239 ((_ is Node!5165) (c!240710 (tokens!2092 other!32)))) b!1460446))

(assert (= b!1460447 b!1460448))

(assert (= (and b!1460239 ((_ is Leaf!7701) (c!240710 (tokens!2092 other!32)))) b!1460447))

(declare-fun m!1694975 () Bool)

(assert (=> b!1460446 m!1694975))

(declare-fun m!1694977 () Bool)

(assert (=> b!1460446 m!1694977))

(declare-fun m!1694979 () Bool)

(assert (=> b!1460447 m!1694979))

(assert (=> b!1460239 m!1694651))

(declare-fun b!1460459 () Bool)

(declare-fun b_free!36439 () Bool)

(declare-fun b_next!37143 () Bool)

(assert (=> b!1460459 (= b_free!36439 (not b_next!37143))))

(declare-fun tp!411459 () Bool)

(declare-fun b_and!99753 () Bool)

(assert (=> b!1460459 (= tp!411459 b_and!99753)))

(declare-fun b_free!36441 () Bool)

(declare-fun b_next!37145 () Bool)

(assert (=> b!1460459 (= b_free!36441 (not b_next!37145))))

(declare-fun tp!411458 () Bool)

(declare-fun b_and!99755 () Bool)

(assert (=> b!1460459 (= tp!411458 b_and!99755)))

(declare-fun e!931695 () Bool)

(assert (=> b!1460459 (= e!931695 (and tp!411459 tp!411458))))

(declare-fun b!1460458 () Bool)

(declare-fun e!931698 () Bool)

(declare-fun tp!411457 () Bool)

(declare-fun inv!20237 (String!18051) Bool)

(declare-fun inv!20251 (TokenValueInjection!5178) Bool)

(assert (=> b!1460458 (= e!931698 (and tp!411457 (inv!20237 (tag!2933 (h!20556 (rules!11648 other!32)))) (inv!20251 (transformation!2669 (h!20556 (rules!11648 other!32)))) e!931695))))

(declare-fun b!1460457 () Bool)

(declare-fun e!931696 () Bool)

(declare-fun tp!411460 () Bool)

(assert (=> b!1460457 (= e!931696 (and e!931698 tp!411460))))

(assert (=> b!1460234 (= tp!411407 e!931696)))

(assert (= b!1460458 b!1460459))

(assert (= b!1460457 b!1460458))

(assert (= (and b!1460234 ((_ is Cons!15155) (rules!11648 other!32))) b!1460457))

(declare-fun m!1694981 () Bool)

(assert (=> b!1460458 m!1694981))

(declare-fun m!1694983 () Bool)

(assert (=> b!1460458 m!1694983))

(declare-fun b!1460462 () Bool)

(declare-fun b_free!36443 () Bool)

(declare-fun b_next!37147 () Bool)

(assert (=> b!1460462 (= b_free!36443 (not b_next!37147))))

(declare-fun tp!411463 () Bool)

(declare-fun b_and!99757 () Bool)

(assert (=> b!1460462 (= tp!411463 b_and!99757)))

(declare-fun b_free!36445 () Bool)

(declare-fun b_next!37149 () Bool)

(assert (=> b!1460462 (= b_free!36445 (not b_next!37149))))

(declare-fun tp!411462 () Bool)

(declare-fun b_and!99759 () Bool)

(assert (=> b!1460462 (= tp!411462 b_and!99759)))

(declare-fun e!931699 () Bool)

(assert (=> b!1460462 (= e!931699 (and tp!411463 tp!411462))))

(declare-fun b!1460461 () Bool)

(declare-fun e!931702 () Bool)

(declare-fun tp!411461 () Bool)

(assert (=> b!1460461 (= e!931702 (and tp!411461 (inv!20237 (tag!2933 (h!20556 (rules!11648 thiss!10022)))) (inv!20251 (transformation!2669 (h!20556 (rules!11648 thiss!10022)))) e!931699))))

(declare-fun b!1460460 () Bool)

(declare-fun e!931700 () Bool)

(declare-fun tp!411464 () Bool)

(assert (=> b!1460460 (= e!931700 (and e!931702 tp!411464))))

(assert (=> b!1460236 (= tp!411405 e!931700)))

(assert (= b!1460461 b!1460462))

(assert (= b!1460460 b!1460461))

(assert (= (and b!1460236 ((_ is Cons!15155) (rules!11648 thiss!10022))) b!1460460))

(declare-fun m!1694985 () Bool)

(assert (=> b!1460461 m!1694985))

(declare-fun m!1694987 () Bool)

(assert (=> b!1460461 m!1694987))

(check-sat (not b_next!37143) (not b!1460338) (not d!427434) (not b!1460298) (not d!427446) (not b!1460365) (not d!427486) (not b!1460388) b_and!99759 (not d!427462) (not b!1460301) (not d!427488) (not d!427490) (not b!1460308) (not b!1460385) b_and!99757 (not b!1460363) (not b!1460386) (not b!1460347) (not b!1460443) (not d!427408) (not d!427444) (not d!427460) (not d!427474) (not b!1460310) b_and!99755 (not d!427494) (not b!1460389) (not b!1460458) (not b!1460312) (not b!1460311) (not b!1460445) (not b!1460337) (not d!427476) (not b!1460369) (not d!427424) (not b!1460447) (not b!1460300) (not d!427436) (not b!1460248) (not b!1460299) (not b!1460370) (not d!427422) b_and!99753 (not b!1460353) (not b!1460457) (not d!427450) (not d!427492) (not b!1460309) (not d!427470) (not b!1460239) (not b!1460444) (not b!1460461) (not b!1460280) (not d!427402) (not b!1460448) (not b_next!37149) (not b_next!37147) (not b!1460281) (not b!1460368) (not b!1460446) (not b_next!37145) (not b!1460313) (not b!1460460) (not b!1460352) (not d!427472) (not b!1460390) (not b!1460354) (not b!1460387) (not b!1460434) (not b!1460366))
(check-sat (not b_next!37143) b_and!99757 b_and!99755 b_and!99753 (not b_next!37145) b_and!99759 (not b_next!37149) (not b_next!37147))
