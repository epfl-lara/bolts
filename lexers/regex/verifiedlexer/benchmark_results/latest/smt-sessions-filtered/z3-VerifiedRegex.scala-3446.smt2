; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!197736 () Bool)

(assert start!197736)

(declare-fun b!2011448 () Bool)

(declare-fun b_free!56129 () Bool)

(declare-fun b_next!56833 () Bool)

(assert (=> b!2011448 (= b_free!56129 (not b_next!56833))))

(declare-fun tp!599927 () Bool)

(declare-fun b_and!159061 () Bool)

(assert (=> b!2011448 (= tp!599927 b_and!159061)))

(declare-fun b_free!56131 () Bool)

(declare-fun b_next!56835 () Bool)

(assert (=> b!2011448 (= b_free!56131 (not b_next!56835))))

(declare-fun tp!599919 () Bool)

(declare-fun b_and!159063 () Bool)

(assert (=> b!2011448 (= tp!599919 b_and!159063)))

(declare-fun b!2011434 () Bool)

(declare-fun b_free!56133 () Bool)

(declare-fun b_next!56837 () Bool)

(assert (=> b!2011434 (= b_free!56133 (not b_next!56837))))

(declare-fun tp!599921 () Bool)

(declare-fun b_and!159065 () Bool)

(assert (=> b!2011434 (= tp!599921 b_and!159065)))

(declare-fun b_free!56135 () Bool)

(declare-fun b_next!56839 () Bool)

(assert (=> b!2011434 (= b_free!56135 (not b_next!56839))))

(declare-fun tp!599925 () Bool)

(declare-fun b_and!159067 () Bool)

(assert (=> b!2011434 (= tp!599925 b_and!159067)))

(declare-fun b!2011440 () Bool)

(declare-fun b_free!56137 () Bool)

(declare-fun b_next!56841 () Bool)

(assert (=> b!2011440 (= b_free!56137 (not b_next!56841))))

(declare-fun tp!599928 () Bool)

(declare-fun b_and!159069 () Bool)

(assert (=> b!2011440 (= tp!599928 b_and!159069)))

(declare-fun b_free!56139 () Bool)

(declare-fun b_next!56843 () Bool)

(assert (=> b!2011440 (= b_free!56139 (not b_next!56843))))

(declare-fun tp!599920 () Bool)

(declare-fun b_and!159071 () Bool)

(assert (=> b!2011440 (= tp!599920 b_and!159071)))

(declare-fun b!2011428 () Bool)

(declare-fun res!882179 () Bool)

(declare-fun e!1270983 () Bool)

(assert (=> b!2011428 (=> (not res!882179) (not e!1270983))))

(declare-datatypes ((List!22178 0))(
  ( (Nil!22096) (Cons!22096 (h!27497 (_ BitVec 16)) (t!187787 List!22178)) )
))
(declare-datatypes ((TokenValue!4104 0))(
  ( (FloatLiteralValue!8208 (text!29173 List!22178)) (TokenValueExt!4103 (__x!13706 Int)) (Broken!20520 (value!124653 List!22178)) (Object!4185) (End!4104) (Def!4104) (Underscore!4104) (Match!4104) (Else!4104) (Error!4104) (Case!4104) (If!4104) (Extends!4104) (Abstract!4104) (Class!4104) (Val!4104) (DelimiterValue!8208 (del!4164 List!22178)) (KeywordValue!4110 (value!124654 List!22178)) (CommentValue!8208 (value!124655 List!22178)) (WhitespaceValue!8208 (value!124656 List!22178)) (IndentationValue!4104 (value!124657 List!22178)) (String!25637) (Int32!4104) (Broken!20521 (value!124658 List!22178)) (Boolean!4105) (Unit!36669) (OperatorValue!4107 (op!4164 List!22178)) (IdentifierValue!8208 (value!124659 List!22178)) (IdentifierValue!8209 (value!124660 List!22178)) (WhitespaceValue!8209 (value!124661 List!22178)) (True!8208) (False!8208) (Broken!20522 (value!124662 List!22178)) (Broken!20523 (value!124663 List!22178)) (True!8209) (RightBrace!4104) (RightBracket!4104) (Colon!4104) (Null!4104) (Comma!4104) (LeftBracket!4104) (False!8209) (LeftBrace!4104) (ImaginaryLiteralValue!4104 (text!29174 List!22178)) (StringLiteralValue!12312 (value!124664 List!22178)) (EOFValue!4104 (value!124665 List!22178)) (IdentValue!4104 (value!124666 List!22178)) (DelimiterValue!8209 (value!124667 List!22178)) (DedentValue!4104 (value!124668 List!22178)) (NewLineValue!4104 (value!124669 List!22178)) (IntegerValue!12312 (value!124670 (_ BitVec 32)) (text!29175 List!22178)) (IntegerValue!12313 (value!124671 Int) (text!29176 List!22178)) (Times!4104) (Or!4104) (Equal!4104) (Minus!4104) (Broken!20524 (value!124672 List!22178)) (And!4104) (Div!4104) (LessEqual!4104) (Mod!4104) (Concat!9497) (Not!4104) (Plus!4104) (SpaceValue!4104 (value!124673 List!22178)) (IntegerValue!12314 (value!124674 Int) (text!29177 List!22178)) (StringLiteralValue!12313 (text!29178 List!22178)) (FloatLiteralValue!8209 (text!29179 List!22178)) (BytesLiteralValue!4104 (value!124675 List!22178)) (CommentValue!8209 (value!124676 List!22178)) (StringLiteralValue!12314 (value!124677 List!22178)) (ErrorTokenValue!4104 (msg!4165 List!22178)) )
))
(declare-datatypes ((C!10932 0))(
  ( (C!10933 (val!6418 Int)) )
))
(declare-datatypes ((List!22179 0))(
  ( (Nil!22097) (Cons!22097 (h!27498 C!10932) (t!187788 List!22179)) )
))
(declare-datatypes ((String!25638 0))(
  ( (String!25639 (value!124678 String)) )
))
(declare-datatypes ((IArray!14771 0))(
  ( (IArray!14772 (innerList!7443 List!22179)) )
))
(declare-datatypes ((Conc!7383 0))(
  ( (Node!7383 (left!17577 Conc!7383) (right!17907 Conc!7383) (csize!14996 Int) (cheight!7594 Int)) (Leaf!10830 (xs!10281 IArray!14771) (csize!14997 Int)) (Empty!7383) )
))
(declare-datatypes ((BalanceConc!14582 0))(
  ( (BalanceConc!14583 (c!324907 Conc!7383)) )
))
(declare-datatypes ((TokenValueInjection!7792 0))(
  ( (TokenValueInjection!7793 (toValue!5637 Int) (toChars!5496 Int)) )
))
(declare-datatypes ((Regex!5393 0))(
  ( (ElementMatch!5393 (c!324908 C!10932)) (Concat!9498 (regOne!11298 Regex!5393) (regTwo!11298 Regex!5393)) (EmptyExpr!5393) (Star!5393 (reg!5722 Regex!5393)) (EmptyLang!5393) (Union!5393 (regOne!11299 Regex!5393) (regTwo!11299 Regex!5393)) )
))
(declare-datatypes ((Rule!7736 0))(
  ( (Rule!7737 (regex!3968 Regex!5393) (tag!4436 String!25638) (isSeparator!3968 Bool) (transformation!3968 TokenValueInjection!7792)) )
))
(declare-datatypes ((List!22180 0))(
  ( (Nil!22098) (Cons!22098 (h!27499 Rule!7736) (t!187789 List!22180)) )
))
(declare-fun rules!3198 () List!22180)

(declare-fun isEmpty!13708 (List!22180) Bool)

(assert (=> b!2011428 (= res!882179 (not (isEmpty!13708 rules!3198)))))

(declare-fun b!2011429 () Bool)

(declare-fun res!882177 () Bool)

(assert (=> b!2011429 (=> (not res!882177) (not e!1270983))))

(declare-fun sepAndNonSepRulesDisjointChars!1066 (List!22180 List!22180) Bool)

(assert (=> b!2011429 (= res!882177 (sepAndNonSepRulesDisjointChars!1066 rules!3198 rules!3198))))

(declare-fun b!2011430 () Bool)

(declare-fun e!1271003 () Bool)

(declare-fun e!1270994 () Bool)

(assert (=> b!2011430 (= e!1271003 e!1270994)))

(declare-fun res!882191 () Bool)

(assert (=> b!2011430 (=> (not res!882191) (not e!1270994))))

(declare-fun lt!755295 () Rule!7736)

(declare-fun lt!755306 () List!22179)

(declare-fun matchR!2659 (Regex!5393 List!22179) Bool)

(assert (=> b!2011430 (= res!882191 (matchR!2659 (regex!3968 lt!755295) lt!755306))))

(declare-datatypes ((Option!4617 0))(
  ( (None!4616) (Some!4616 (v!26865 Rule!7736)) )
))
(declare-fun lt!755304 () Option!4617)

(declare-fun get!6992 (Option!4617) Rule!7736)

(assert (=> b!2011430 (= lt!755295 (get!6992 lt!755304))))

(declare-fun b!2011431 () Bool)

(declare-fun e!1270993 () Bool)

(declare-datatypes ((Token!7488 0))(
  ( (Token!7489 (value!124679 TokenValue!4104) (rule!6195 Rule!7736) (size!17268 Int) (originalCharacters!4775 List!22179)) )
))
(declare-datatypes ((List!22181 0))(
  ( (Nil!22099) (Cons!22099 (h!27500 Token!7488) (t!187790 List!22181)) )
))
(declare-fun tokens!598 () List!22181)

(declare-fun contains!4047 (List!22180 Rule!7736) Bool)

(assert (=> b!2011431 (= e!1270993 (contains!4047 rules!3198 (rule!6195 (h!27500 tokens!598))))))

(declare-fun b!2011432 () Bool)

(declare-fun res!882192 () Bool)

(assert (=> b!2011432 (=> (not res!882192) (not e!1270983))))

(declare-datatypes ((LexerInterface!3581 0))(
  ( (LexerInterfaceExt!3578 (__x!13707 Int)) (Lexer!3579) )
))
(declare-fun thiss!23328 () LexerInterface!3581)

(declare-fun rulesProduceEachTokenIndividuallyList!1312 (LexerInterface!3581 List!22180 List!22181) Bool)

(assert (=> b!2011432 (= res!882192 (rulesProduceEachTokenIndividuallyList!1312 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!2011433 () Bool)

(declare-fun e!1270990 () Bool)

(declare-fun separatorToken!354 () Token!7488)

(declare-fun lt!755290 () Rule!7736)

(assert (=> b!2011433 (= e!1270990 (= (rule!6195 separatorToken!354) lt!755290))))

(declare-fun e!1270992 () Bool)

(assert (=> b!2011434 (= e!1270992 (and tp!599921 tp!599925))))

(declare-fun b!2011435 () Bool)

(declare-datatypes ((Unit!36670 0))(
  ( (Unit!36671) )
))
(declare-fun e!1270995 () Unit!36670)

(declare-fun Unit!36672 () Unit!36670)

(assert (=> b!2011435 (= e!1270995 Unit!36672)))

(declare-fun res!882184 () Bool)

(assert (=> start!197736 (=> (not res!882184) (not e!1270983))))

(get-info :version)

(assert (=> start!197736 (= res!882184 ((_ is Lexer!3579) thiss!23328))))

(assert (=> start!197736 e!1270983))

(assert (=> start!197736 true))

(declare-fun e!1270998 () Bool)

(assert (=> start!197736 e!1270998))

(declare-fun e!1270997 () Bool)

(assert (=> start!197736 e!1270997))

(declare-fun e!1270986 () Bool)

(declare-fun inv!29261 (Token!7488) Bool)

(assert (=> start!197736 (and (inv!29261 separatorToken!354) e!1270986)))

(declare-fun b!2011436 () Bool)

(declare-fun e!1270999 () Bool)

(assert (=> b!2011436 (= e!1270999 false)))

(declare-fun tp!599922 () Bool)

(declare-fun b!2011437 () Bool)

(declare-fun e!1270989 () Bool)

(declare-fun e!1270996 () Bool)

(declare-fun inv!29258 (String!25638) Bool)

(declare-fun inv!29262 (TokenValueInjection!7792) Bool)

(assert (=> b!2011437 (= e!1270996 (and tp!599922 (inv!29258 (tag!4436 (rule!6195 (h!27500 tokens!598)))) (inv!29262 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) e!1270989))))

(declare-fun b!2011438 () Bool)

(declare-fun res!882180 () Bool)

(assert (=> b!2011438 (=> (not res!882180) (not e!1270983))))

(assert (=> b!2011438 (= res!882180 (isSeparator!3968 (rule!6195 separatorToken!354)))))

(declare-fun b!2011439 () Bool)

(declare-fun e!1270988 () Bool)

(declare-datatypes ((tuple2!20762 0))(
  ( (tuple2!20763 (_1!11850 Token!7488) (_2!11850 List!22179)) )
))
(declare-datatypes ((Option!4618 0))(
  ( (None!4617) (Some!4617 (v!26866 tuple2!20762)) )
))
(declare-fun lt!755305 () Option!4618)

(declare-fun get!6993 (Option!4618) tuple2!20762)

(assert (=> b!2011439 (= e!1270988 (= (_1!11850 (get!6993 lt!755305)) (h!27500 tokens!598)))))

(assert (=> b!2011440 (= e!1270989 (and tp!599928 tp!599920))))

(declare-fun e!1270987 () Bool)

(declare-fun b!2011441 () Bool)

(declare-fun tp!599930 () Bool)

(assert (=> b!2011441 (= e!1270987 (and tp!599930 (inv!29258 (tag!4436 (rule!6195 separatorToken!354))) (inv!29262 (transformation!3968 (rule!6195 separatorToken!354))) e!1270992))))

(declare-fun b!2011442 () Bool)

(declare-fun Unit!36673 () Unit!36670)

(assert (=> b!2011442 (= e!1270995 Unit!36673)))

(declare-fun lt!755292 () List!22179)

(declare-fun lt!755294 () Unit!36670)

(declare-fun lt!755291 () C!10932)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!294 (Regex!5393 List!22179 C!10932) Unit!36670)

(assert (=> b!2011442 (= lt!755294 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!294 (regex!3968 (rule!6195 separatorToken!354)) lt!755292 lt!755291))))

(declare-fun res!882189 () Bool)

(assert (=> b!2011442 (= res!882189 (not (matchR!2659 (regex!3968 (rule!6195 separatorToken!354)) lt!755292)))))

(assert (=> b!2011442 (=> (not res!882189) (not e!1270999))))

(assert (=> b!2011442 e!1270999))

(declare-fun b!2011443 () Bool)

(declare-fun e!1270985 () Bool)

(assert (=> b!2011443 (= e!1270983 (not e!1270985))))

(declare-fun res!882183 () Bool)

(assert (=> b!2011443 (=> res!882183 e!1270985)))

(declare-fun lt!755299 () Bool)

(declare-fun lt!755301 () Option!4618)

(assert (=> b!2011443 (= res!882183 (or (and (not lt!755299) (= (_1!11850 (v!26866 lt!755301)) (h!27500 tokens!598))) lt!755299 (= (_1!11850 (v!26866 lt!755301)) (h!27500 tokens!598))))))

(assert (=> b!2011443 (= lt!755299 (not ((_ is Some!4617) lt!755301)))))

(declare-fun lt!755298 () List!22179)

(declare-fun maxPrefix!2017 (LexerInterface!3581 List!22180 List!22179) Option!4618)

(declare-fun ++!5963 (List!22179 List!22179) List!22179)

(assert (=> b!2011443 (= lt!755301 (maxPrefix!2017 thiss!23328 rules!3198 (++!5963 lt!755306 lt!755298)))))

(declare-fun printWithSeparatorTokenWhenNeededList!610 (LexerInterface!3581 List!22180 List!22181 Token!7488) List!22179)

(assert (=> b!2011443 (= lt!755298 (printWithSeparatorTokenWhenNeededList!610 thiss!23328 rules!3198 (t!187790 tokens!598) separatorToken!354))))

(assert (=> b!2011443 e!1271003))

(declare-fun res!882187 () Bool)

(assert (=> b!2011443 (=> (not res!882187) (not e!1271003))))

(declare-fun isDefined!3905 (Option!4617) Bool)

(assert (=> b!2011443 (= res!882187 (isDefined!3905 lt!755304))))

(declare-fun getRuleFromTag!783 (LexerInterface!3581 List!22180 String!25638) Option!4617)

(assert (=> b!2011443 (= lt!755304 (getRuleFromTag!783 thiss!23328 rules!3198 (tag!4436 (rule!6195 (h!27500 tokens!598)))))))

(declare-fun lt!755297 () Unit!36670)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!783 (LexerInterface!3581 List!22180 List!22179 Token!7488) Unit!36670)

(assert (=> b!2011443 (= lt!755297 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!783 thiss!23328 rules!3198 lt!755306 (h!27500 tokens!598)))))

(assert (=> b!2011443 e!1270988))

(declare-fun res!882181 () Bool)

(assert (=> b!2011443 (=> (not res!882181) (not e!1270988))))

(declare-fun isDefined!3906 (Option!4618) Bool)

(assert (=> b!2011443 (= res!882181 (isDefined!3906 lt!755305))))

(assert (=> b!2011443 (= lt!755305 (maxPrefix!2017 thiss!23328 rules!3198 lt!755306))))

(declare-fun lt!755296 () BalanceConc!14582)

(declare-fun list!9001 (BalanceConc!14582) List!22179)

(assert (=> b!2011443 (= lt!755306 (list!9001 lt!755296))))

(declare-fun e!1271004 () Bool)

(assert (=> b!2011443 e!1271004))

(declare-fun res!882182 () Bool)

(assert (=> b!2011443 (=> (not res!882182) (not e!1271004))))

(declare-fun lt!755303 () Option!4617)

(assert (=> b!2011443 (= res!882182 (isDefined!3905 lt!755303))))

(assert (=> b!2011443 (= lt!755303 (getRuleFromTag!783 thiss!23328 rules!3198 (tag!4436 (rule!6195 separatorToken!354))))))

(declare-fun lt!755300 () Unit!36670)

(assert (=> b!2011443 (= lt!755300 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!783 thiss!23328 rules!3198 lt!755292 separatorToken!354))))

(declare-fun charsOf!2508 (Token!7488) BalanceConc!14582)

(assert (=> b!2011443 (= lt!755292 (list!9001 (charsOf!2508 separatorToken!354)))))

(declare-fun lt!755308 () Unit!36670)

(declare-fun lemmaEqSameImage!654 (TokenValueInjection!7792 BalanceConc!14582 BalanceConc!14582) Unit!36670)

(declare-fun seqFromList!2822 (List!22179) BalanceConc!14582)

(assert (=> b!2011443 (= lt!755308 (lemmaEqSameImage!654 (transformation!3968 (rule!6195 (h!27500 tokens!598))) lt!755296 (seqFromList!2822 (originalCharacters!4775 (h!27500 tokens!598)))))))

(declare-fun lt!755307 () Unit!36670)

(declare-fun lemmaSemiInverse!925 (TokenValueInjection!7792 BalanceConc!14582) Unit!36670)

(assert (=> b!2011443 (= lt!755307 (lemmaSemiInverse!925 (transformation!3968 (rule!6195 (h!27500 tokens!598))) lt!755296))))

(assert (=> b!2011443 (= lt!755296 (charsOf!2508 (h!27500 tokens!598)))))

(declare-fun e!1270982 () Bool)

(declare-fun b!2011444 () Bool)

(declare-fun tp!599929 () Bool)

(declare-fun e!1271006 () Bool)

(assert (=> b!2011444 (= e!1271006 (and tp!599929 (inv!29258 (tag!4436 (h!27499 rules!3198))) (inv!29262 (transformation!3968 (h!27499 rules!3198))) e!1270982))))

(declare-fun b!2011445 () Bool)

(declare-fun res!882178 () Bool)

(assert (=> b!2011445 (=> (not res!882178) (not e!1270983))))

(declare-fun lambda!76129 () Int)

(declare-fun forall!4696 (List!22181 Int) Bool)

(assert (=> b!2011445 (= res!882178 (forall!4696 tokens!598 lambda!76129))))

(declare-fun b!2011446 () Bool)

(declare-fun res!882193 () Bool)

(assert (=> b!2011446 (=> (not res!882193) (not e!1270983))))

(declare-fun rulesProduceIndividualToken!1753 (LexerInterface!3581 List!22180 Token!7488) Bool)

(assert (=> b!2011446 (= res!882193 (rulesProduceIndividualToken!1753 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!2011447 () Bool)

(declare-fun res!882188 () Bool)

(assert (=> b!2011447 (=> (not res!882188) (not e!1270983))))

(assert (=> b!2011447 (= res!882188 ((_ is Cons!22099) tokens!598))))

(assert (=> b!2011448 (= e!1270982 (and tp!599927 tp!599919))))

(declare-fun tp!599923 () Bool)

(declare-fun b!2011449 () Bool)

(declare-fun inv!21 (TokenValue!4104) Bool)

(assert (=> b!2011449 (= e!1270986 (and (inv!21 (value!124679 separatorToken!354)) e!1270987 tp!599923))))

(declare-fun b!2011450 () Bool)

(declare-fun res!882186 () Bool)

(assert (=> b!2011450 (=> (not res!882186) (not e!1270983))))

(declare-fun rulesInvariant!3188 (LexerInterface!3581 List!22180) Bool)

(assert (=> b!2011450 (= res!882186 (rulesInvariant!3188 thiss!23328 rules!3198))))

(declare-fun b!2011451 () Bool)

(assert (=> b!2011451 (= e!1270994 (= (rule!6195 (h!27500 tokens!598)) lt!755295))))

(declare-fun b!2011452 () Bool)

(declare-fun tp!599924 () Bool)

(assert (=> b!2011452 (= e!1270998 (and e!1271006 tp!599924))))

(declare-fun e!1271000 () Bool)

(declare-fun b!2011453 () Bool)

(declare-fun tp!599918 () Bool)

(assert (=> b!2011453 (= e!1270997 (and (inv!29261 (h!27500 tokens!598)) e!1271000 tp!599918))))

(declare-fun b!2011454 () Bool)

(assert (=> b!2011454 (= e!1270985 e!1270993)))

(declare-fun res!882185 () Bool)

(assert (=> b!2011454 (=> res!882185 e!1270993)))

(assert (=> b!2011454 (= res!882185 (not (contains!4047 rules!3198 (rule!6195 separatorToken!354))))))

(declare-fun lt!755302 () Unit!36670)

(assert (=> b!2011454 (= lt!755302 e!1270995)))

(declare-fun c!324906 () Bool)

(declare-fun contains!4048 (List!22179 C!10932) Bool)

(declare-fun usedCharacters!406 (Regex!5393) List!22179)

(assert (=> b!2011454 (= c!324906 (not (contains!4048 (usedCharacters!406 (regex!3968 (rule!6195 separatorToken!354))) lt!755291)))))

(declare-fun head!4546 (List!22179) C!10932)

(assert (=> b!2011454 (= lt!755291 (head!4546 lt!755292))))

(assert (=> b!2011454 (= (++!5963 (++!5963 lt!755306 lt!755292) lt!755298) (++!5963 lt!755306 (++!5963 lt!755292 lt!755298)))))

(declare-fun lt!755293 () Unit!36670)

(declare-fun lemmaConcatAssociativity!1231 (List!22179 List!22179 List!22179) Unit!36670)

(assert (=> b!2011454 (= lt!755293 (lemmaConcatAssociativity!1231 lt!755306 lt!755292 lt!755298))))

(declare-fun b!2011455 () Bool)

(assert (=> b!2011455 (= e!1271004 e!1270990)))

(declare-fun res!882190 () Bool)

(assert (=> b!2011455 (=> (not res!882190) (not e!1270990))))

(assert (=> b!2011455 (= res!882190 (matchR!2659 (regex!3968 lt!755290) lt!755292))))

(assert (=> b!2011455 (= lt!755290 (get!6992 lt!755303))))

(declare-fun b!2011456 () Bool)

(declare-fun tp!599926 () Bool)

(assert (=> b!2011456 (= e!1271000 (and (inv!21 (value!124679 (h!27500 tokens!598))) e!1270996 tp!599926))))

(assert (= (and start!197736 res!882184) b!2011428))

(assert (= (and b!2011428 res!882179) b!2011450))

(assert (= (and b!2011450 res!882186) b!2011432))

(assert (= (and b!2011432 res!882192) b!2011446))

(assert (= (and b!2011446 res!882193) b!2011438))

(assert (= (and b!2011438 res!882180) b!2011445))

(assert (= (and b!2011445 res!882178) b!2011429))

(assert (= (and b!2011429 res!882177) b!2011447))

(assert (= (and b!2011447 res!882188) b!2011443))

(assert (= (and b!2011443 res!882182) b!2011455))

(assert (= (and b!2011455 res!882190) b!2011433))

(assert (= (and b!2011443 res!882181) b!2011439))

(assert (= (and b!2011443 res!882187) b!2011430))

(assert (= (and b!2011430 res!882191) b!2011451))

(assert (= (and b!2011443 (not res!882183)) b!2011454))

(assert (= (and b!2011454 c!324906) b!2011442))

(assert (= (and b!2011454 (not c!324906)) b!2011435))

(assert (= (and b!2011442 res!882189) b!2011436))

(assert (= (and b!2011454 (not res!882185)) b!2011431))

(assert (= b!2011444 b!2011448))

(assert (= b!2011452 b!2011444))

(assert (= (and start!197736 ((_ is Cons!22098) rules!3198)) b!2011452))

(assert (= b!2011437 b!2011440))

(assert (= b!2011456 b!2011437))

(assert (= b!2011453 b!2011456))

(assert (= (and start!197736 ((_ is Cons!22099) tokens!598)) b!2011453))

(assert (= b!2011441 b!2011434))

(assert (= b!2011449 b!2011441))

(assert (= start!197736 b!2011449))

(declare-fun m!2444285 () Bool)

(assert (=> b!2011439 m!2444285))

(declare-fun m!2444287 () Bool)

(assert (=> b!2011444 m!2444287))

(declare-fun m!2444289 () Bool)

(assert (=> b!2011444 m!2444289))

(declare-fun m!2444291 () Bool)

(assert (=> b!2011445 m!2444291))

(declare-fun m!2444293 () Bool)

(assert (=> b!2011428 m!2444293))

(declare-fun m!2444295 () Bool)

(assert (=> b!2011456 m!2444295))

(declare-fun m!2444297 () Bool)

(assert (=> b!2011443 m!2444297))

(declare-fun m!2444299 () Bool)

(assert (=> b!2011443 m!2444299))

(declare-fun m!2444301 () Bool)

(assert (=> b!2011443 m!2444301))

(declare-fun m!2444303 () Bool)

(assert (=> b!2011443 m!2444303))

(declare-fun m!2444305 () Bool)

(assert (=> b!2011443 m!2444305))

(declare-fun m!2444307 () Bool)

(assert (=> b!2011443 m!2444307))

(declare-fun m!2444309 () Bool)

(assert (=> b!2011443 m!2444309))

(declare-fun m!2444311 () Bool)

(assert (=> b!2011443 m!2444311))

(declare-fun m!2444313 () Bool)

(assert (=> b!2011443 m!2444313))

(declare-fun m!2444315 () Bool)

(assert (=> b!2011443 m!2444315))

(declare-fun m!2444317 () Bool)

(assert (=> b!2011443 m!2444317))

(declare-fun m!2444319 () Bool)

(assert (=> b!2011443 m!2444319))

(declare-fun m!2444321 () Bool)

(assert (=> b!2011443 m!2444321))

(declare-fun m!2444323 () Bool)

(assert (=> b!2011443 m!2444323))

(assert (=> b!2011443 m!2444303))

(declare-fun m!2444325 () Bool)

(assert (=> b!2011443 m!2444325))

(assert (=> b!2011443 m!2444317))

(assert (=> b!2011443 m!2444301))

(declare-fun m!2444327 () Bool)

(assert (=> b!2011443 m!2444327))

(declare-fun m!2444329 () Bool)

(assert (=> b!2011443 m!2444329))

(declare-fun m!2444331 () Bool)

(assert (=> b!2011443 m!2444331))

(declare-fun m!2444333 () Bool)

(assert (=> b!2011429 m!2444333))

(declare-fun m!2444335 () Bool)

(assert (=> b!2011441 m!2444335))

(declare-fun m!2444337 () Bool)

(assert (=> b!2011441 m!2444337))

(declare-fun m!2444339 () Bool)

(assert (=> b!2011442 m!2444339))

(declare-fun m!2444341 () Bool)

(assert (=> b!2011442 m!2444341))

(declare-fun m!2444343 () Bool)

(assert (=> b!2011455 m!2444343))

(declare-fun m!2444345 () Bool)

(assert (=> b!2011455 m!2444345))

(declare-fun m!2444347 () Bool)

(assert (=> b!2011437 m!2444347))

(declare-fun m!2444349 () Bool)

(assert (=> b!2011437 m!2444349))

(declare-fun m!2444351 () Bool)

(assert (=> b!2011454 m!2444351))

(declare-fun m!2444353 () Bool)

(assert (=> b!2011454 m!2444353))

(declare-fun m!2444355 () Bool)

(assert (=> b!2011454 m!2444355))

(declare-fun m!2444357 () Bool)

(assert (=> b!2011454 m!2444357))

(declare-fun m!2444359 () Bool)

(assert (=> b!2011454 m!2444359))

(declare-fun m!2444361 () Bool)

(assert (=> b!2011454 m!2444361))

(assert (=> b!2011454 m!2444353))

(assert (=> b!2011454 m!2444361))

(declare-fun m!2444363 () Bool)

(assert (=> b!2011454 m!2444363))

(declare-fun m!2444365 () Bool)

(assert (=> b!2011454 m!2444365))

(assert (=> b!2011454 m!2444359))

(declare-fun m!2444367 () Bool)

(assert (=> b!2011454 m!2444367))

(declare-fun m!2444369 () Bool)

(assert (=> b!2011446 m!2444369))

(declare-fun m!2444371 () Bool)

(assert (=> b!2011453 m!2444371))

(declare-fun m!2444373 () Bool)

(assert (=> b!2011431 m!2444373))

(declare-fun m!2444375 () Bool)

(assert (=> b!2011449 m!2444375))

(declare-fun m!2444377 () Bool)

(assert (=> start!197736 m!2444377))

(declare-fun m!2444379 () Bool)

(assert (=> b!2011430 m!2444379))

(declare-fun m!2444381 () Bool)

(assert (=> b!2011430 m!2444381))

(declare-fun m!2444383 () Bool)

(assert (=> b!2011432 m!2444383))

(declare-fun m!2444385 () Bool)

(assert (=> b!2011450 m!2444385))

(check-sat (not b_next!56837) (not b_next!56839) b_and!159061 (not b!2011437) (not b!2011455) (not b_next!56835) b_and!159067 (not b!2011442) b_and!159069 (not b!2011450) b_and!159065 (not b!2011444) (not b!2011428) (not b!2011430) (not b!2011452) (not b_next!56841) (not start!197736) (not b_next!56843) (not b!2011441) (not b!2011443) (not b!2011431) (not b!2011456) (not b!2011453) (not b_next!56833) (not b!2011445) (not b!2011449) b_and!159063 b_and!159071 (not b!2011429) (not b!2011454) (not b!2011439) (not b!2011446) (not b!2011432))
(check-sat (not b_next!56837) (not b_next!56839) (not b_next!56841) b_and!159061 (not b_next!56843) (not b_next!56835) b_and!159067 b_and!159069 (not b_next!56833) b_and!159065 b_and!159063 b_and!159071)
(get-model)

(declare-fun bs!419820 () Bool)

(declare-fun d!614205 () Bool)

(assert (= bs!419820 (and d!614205 b!2011445)))

(declare-fun lambda!76132 () Int)

(assert (=> bs!419820 (not (= lambda!76132 lambda!76129))))

(declare-fun b!2011673 () Bool)

(declare-fun e!1271131 () Bool)

(assert (=> b!2011673 (= e!1271131 true)))

(declare-fun b!2011672 () Bool)

(declare-fun e!1271130 () Bool)

(assert (=> b!2011672 (= e!1271130 e!1271131)))

(declare-fun b!2011671 () Bool)

(declare-fun e!1271129 () Bool)

(assert (=> b!2011671 (= e!1271129 e!1271130)))

(assert (=> d!614205 e!1271129))

(assert (= b!2011672 b!2011673))

(assert (= b!2011671 b!2011672))

(assert (= (and d!614205 ((_ is Cons!22098) rules!3198)) b!2011671))

(declare-fun order!14035 () Int)

(declare-fun order!14033 () Int)

(declare-fun dynLambda!10886 (Int Int) Int)

(declare-fun dynLambda!10887 (Int Int) Int)

(assert (=> b!2011673 (< (dynLambda!10886 order!14033 (toValue!5637 (transformation!3968 (h!27499 rules!3198)))) (dynLambda!10887 order!14035 lambda!76132))))

(declare-fun order!14037 () Int)

(declare-fun dynLambda!10888 (Int Int) Int)

(assert (=> b!2011673 (< (dynLambda!10888 order!14037 (toChars!5496 (transformation!3968 (h!27499 rules!3198)))) (dynLambda!10887 order!14035 lambda!76132))))

(assert (=> d!614205 true))

(declare-fun lt!755360 () Bool)

(assert (=> d!614205 (= lt!755360 (forall!4696 tokens!598 lambda!76132))))

(declare-fun e!1271122 () Bool)

(assert (=> d!614205 (= lt!755360 e!1271122)))

(declare-fun res!882321 () Bool)

(assert (=> d!614205 (=> res!882321 e!1271122)))

(assert (=> d!614205 (= res!882321 (not ((_ is Cons!22099) tokens!598)))))

(assert (=> d!614205 (not (isEmpty!13708 rules!3198))))

(assert (=> d!614205 (= (rulesProduceEachTokenIndividuallyList!1312 thiss!23328 rules!3198 tokens!598) lt!755360)))

(declare-fun b!2011661 () Bool)

(declare-fun e!1271121 () Bool)

(assert (=> b!2011661 (= e!1271122 e!1271121)))

(declare-fun res!882320 () Bool)

(assert (=> b!2011661 (=> (not res!882320) (not e!1271121))))

(assert (=> b!2011661 (= res!882320 (rulesProduceIndividualToken!1753 thiss!23328 rules!3198 (h!27500 tokens!598)))))

(declare-fun b!2011662 () Bool)

(assert (=> b!2011662 (= e!1271121 (rulesProduceEachTokenIndividuallyList!1312 thiss!23328 rules!3198 (t!187790 tokens!598)))))

(assert (= (and d!614205 (not res!882321)) b!2011661))

(assert (= (and b!2011661 res!882320) b!2011662))

(declare-fun m!2444589 () Bool)

(assert (=> d!614205 m!2444589))

(assert (=> d!614205 m!2444293))

(declare-fun m!2444591 () Bool)

(assert (=> b!2011661 m!2444591))

(declare-fun m!2444593 () Bool)

(assert (=> b!2011662 m!2444593))

(assert (=> b!2011432 d!614205))

(declare-fun b!2011694 () Bool)

(declare-fun e!1271139 () Bool)

(declare-fun e!1271138 () Bool)

(assert (=> b!2011694 (= e!1271139 e!1271138)))

(declare-fun res!882342 () Bool)

(assert (=> b!2011694 (=> (not res!882342) (not e!1271138))))

(declare-fun lt!755373 () Option!4618)

(assert (=> b!2011694 (= res!882342 (isDefined!3906 lt!755373))))

(declare-fun b!2011695 () Bool)

(declare-fun res!882338 () Bool)

(assert (=> b!2011695 (=> (not res!882338) (not e!1271138))))

(assert (=> b!2011695 (= res!882338 (matchR!2659 (regex!3968 (rule!6195 (_1!11850 (get!6993 lt!755373)))) (list!9001 (charsOf!2508 (_1!11850 (get!6993 lt!755373))))))))

(declare-fun b!2011696 () Bool)

(declare-fun e!1271140 () Option!4618)

(declare-fun call!123032 () Option!4618)

(assert (=> b!2011696 (= e!1271140 call!123032)))

(declare-fun b!2011697 () Bool)

(declare-fun res!882337 () Bool)

(assert (=> b!2011697 (=> (not res!882337) (not e!1271138))))

(assert (=> b!2011697 (= res!882337 (= (list!9001 (charsOf!2508 (_1!11850 (get!6993 lt!755373)))) (originalCharacters!4775 (_1!11850 (get!6993 lt!755373)))))))

(declare-fun b!2011698 () Bool)

(declare-fun res!882340 () Bool)

(assert (=> b!2011698 (=> (not res!882340) (not e!1271138))))

(assert (=> b!2011698 (= res!882340 (= (++!5963 (list!9001 (charsOf!2508 (_1!11850 (get!6993 lt!755373)))) (_2!11850 (get!6993 lt!755373))) (++!5963 lt!755306 lt!755298)))))

(declare-fun b!2011699 () Bool)

(assert (=> b!2011699 (= e!1271138 (contains!4047 rules!3198 (rule!6195 (_1!11850 (get!6993 lt!755373)))))))

(declare-fun bm!123027 () Bool)

(declare-fun maxPrefixOneRule!1248 (LexerInterface!3581 Rule!7736 List!22179) Option!4618)

(assert (=> bm!123027 (= call!123032 (maxPrefixOneRule!1248 thiss!23328 (h!27499 rules!3198) (++!5963 lt!755306 lt!755298)))))

(declare-fun b!2011700 () Bool)

(declare-fun res!882339 () Bool)

(assert (=> b!2011700 (=> (not res!882339) (not e!1271138))))

(declare-fun size!17270 (List!22179) Int)

(assert (=> b!2011700 (= res!882339 (< (size!17270 (_2!11850 (get!6993 lt!755373))) (size!17270 (++!5963 lt!755306 lt!755298))))))

(declare-fun b!2011701 () Bool)

(declare-fun res!882336 () Bool)

(assert (=> b!2011701 (=> (not res!882336) (not e!1271138))))

(declare-fun apply!5792 (TokenValueInjection!7792 BalanceConc!14582) TokenValue!4104)

(assert (=> b!2011701 (= res!882336 (= (value!124679 (_1!11850 (get!6993 lt!755373))) (apply!5792 (transformation!3968 (rule!6195 (_1!11850 (get!6993 lt!755373)))) (seqFromList!2822 (originalCharacters!4775 (_1!11850 (get!6993 lt!755373)))))))))

(declare-fun b!2011702 () Bool)

(declare-fun lt!755371 () Option!4618)

(declare-fun lt!755375 () Option!4618)

(assert (=> b!2011702 (= e!1271140 (ite (and ((_ is None!4617) lt!755371) ((_ is None!4617) lt!755375)) None!4617 (ite ((_ is None!4617) lt!755375) lt!755371 (ite ((_ is None!4617) lt!755371) lt!755375 (ite (>= (size!17268 (_1!11850 (v!26866 lt!755371))) (size!17268 (_1!11850 (v!26866 lt!755375)))) lt!755371 lt!755375)))))))

(assert (=> b!2011702 (= lt!755371 call!123032)))

(assert (=> b!2011702 (= lt!755375 (maxPrefix!2017 thiss!23328 (t!187789 rules!3198) (++!5963 lt!755306 lt!755298)))))

(declare-fun d!614257 () Bool)

(assert (=> d!614257 e!1271139))

(declare-fun res!882341 () Bool)

(assert (=> d!614257 (=> res!882341 e!1271139)))

(declare-fun isEmpty!13710 (Option!4618) Bool)

(assert (=> d!614257 (= res!882341 (isEmpty!13710 lt!755373))))

(assert (=> d!614257 (= lt!755373 e!1271140)))

(declare-fun c!324953 () Bool)

(assert (=> d!614257 (= c!324953 (and ((_ is Cons!22098) rules!3198) ((_ is Nil!22098) (t!187789 rules!3198))))))

(declare-fun lt!755372 () Unit!36670)

(declare-fun lt!755374 () Unit!36670)

(assert (=> d!614257 (= lt!755372 lt!755374)))

(declare-fun isPrefix!1966 (List!22179 List!22179) Bool)

(assert (=> d!614257 (isPrefix!1966 (++!5963 lt!755306 lt!755298) (++!5963 lt!755306 lt!755298))))

(declare-fun lemmaIsPrefixRefl!1284 (List!22179 List!22179) Unit!36670)

(assert (=> d!614257 (= lt!755374 (lemmaIsPrefixRefl!1284 (++!5963 lt!755306 lt!755298) (++!5963 lt!755306 lt!755298)))))

(declare-fun rulesValidInductive!1365 (LexerInterface!3581 List!22180) Bool)

(assert (=> d!614257 (rulesValidInductive!1365 thiss!23328 rules!3198)))

(assert (=> d!614257 (= (maxPrefix!2017 thiss!23328 rules!3198 (++!5963 lt!755306 lt!755298)) lt!755373)))

(assert (= (and d!614257 c!324953) b!2011696))

(assert (= (and d!614257 (not c!324953)) b!2011702))

(assert (= (or b!2011696 b!2011702) bm!123027))

(assert (= (and d!614257 (not res!882341)) b!2011694))

(assert (= (and b!2011694 res!882342) b!2011697))

(assert (= (and b!2011697 res!882337) b!2011700))

(assert (= (and b!2011700 res!882339) b!2011698))

(assert (= (and b!2011698 res!882340) b!2011701))

(assert (= (and b!2011701 res!882336) b!2011695))

(assert (= (and b!2011695 res!882338) b!2011699))

(declare-fun m!2444595 () Bool)

(assert (=> b!2011699 m!2444595))

(declare-fun m!2444597 () Bool)

(assert (=> b!2011699 m!2444597))

(assert (=> bm!123027 m!2444303))

(declare-fun m!2444599 () Bool)

(assert (=> bm!123027 m!2444599))

(assert (=> b!2011701 m!2444595))

(declare-fun m!2444601 () Bool)

(assert (=> b!2011701 m!2444601))

(assert (=> b!2011701 m!2444601))

(declare-fun m!2444603 () Bool)

(assert (=> b!2011701 m!2444603))

(assert (=> b!2011698 m!2444595))

(declare-fun m!2444605 () Bool)

(assert (=> b!2011698 m!2444605))

(assert (=> b!2011698 m!2444605))

(declare-fun m!2444607 () Bool)

(assert (=> b!2011698 m!2444607))

(assert (=> b!2011698 m!2444607))

(declare-fun m!2444609 () Bool)

(assert (=> b!2011698 m!2444609))

(assert (=> b!2011702 m!2444303))

(declare-fun m!2444611 () Bool)

(assert (=> b!2011702 m!2444611))

(assert (=> b!2011700 m!2444595))

(declare-fun m!2444613 () Bool)

(assert (=> b!2011700 m!2444613))

(assert (=> b!2011700 m!2444303))

(declare-fun m!2444615 () Bool)

(assert (=> b!2011700 m!2444615))

(assert (=> b!2011695 m!2444595))

(assert (=> b!2011695 m!2444605))

(assert (=> b!2011695 m!2444605))

(assert (=> b!2011695 m!2444607))

(assert (=> b!2011695 m!2444607))

(declare-fun m!2444617 () Bool)

(assert (=> b!2011695 m!2444617))

(declare-fun m!2444619 () Bool)

(assert (=> d!614257 m!2444619))

(assert (=> d!614257 m!2444303))

(assert (=> d!614257 m!2444303))

(declare-fun m!2444621 () Bool)

(assert (=> d!614257 m!2444621))

(assert (=> d!614257 m!2444303))

(assert (=> d!614257 m!2444303))

(declare-fun m!2444623 () Bool)

(assert (=> d!614257 m!2444623))

(declare-fun m!2444625 () Bool)

(assert (=> d!614257 m!2444625))

(assert (=> b!2011697 m!2444595))

(assert (=> b!2011697 m!2444605))

(assert (=> b!2011697 m!2444605))

(assert (=> b!2011697 m!2444607))

(declare-fun m!2444627 () Bool)

(assert (=> b!2011694 m!2444627))

(assert (=> b!2011443 d!614257))

(declare-fun d!614259 () Bool)

(assert (=> d!614259 (= (isDefined!3906 lt!755305) (not (isEmpty!13710 lt!755305)))))

(declare-fun bs!419821 () Bool)

(assert (= bs!419821 d!614259))

(declare-fun m!2444629 () Bool)

(assert (=> bs!419821 m!2444629))

(assert (=> b!2011443 d!614259))

(declare-fun d!614261 () Bool)

(declare-fun isEmpty!13712 (Option!4617) Bool)

(assert (=> d!614261 (= (isDefined!3905 lt!755303) (not (isEmpty!13712 lt!755303)))))

(declare-fun bs!419822 () Bool)

(assert (= bs!419822 d!614261))

(declare-fun m!2444631 () Bool)

(assert (=> bs!419822 m!2444631))

(assert (=> b!2011443 d!614261))

(declare-fun d!614263 () Bool)

(declare-fun e!1271143 () Bool)

(assert (=> d!614263 e!1271143))

(declare-fun res!882347 () Bool)

(assert (=> d!614263 (=> (not res!882347) (not e!1271143))))

(assert (=> d!614263 (= res!882347 (isDefined!3905 (getRuleFromTag!783 thiss!23328 rules!3198 (tag!4436 (rule!6195 (h!27500 tokens!598))))))))

(declare-fun lt!755378 () Unit!36670)

(declare-fun choose!12253 (LexerInterface!3581 List!22180 List!22179 Token!7488) Unit!36670)

(assert (=> d!614263 (= lt!755378 (choose!12253 thiss!23328 rules!3198 lt!755306 (h!27500 tokens!598)))))

(assert (=> d!614263 (rulesInvariant!3188 thiss!23328 rules!3198)))

(assert (=> d!614263 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!783 thiss!23328 rules!3198 lt!755306 (h!27500 tokens!598)) lt!755378)))

(declare-fun b!2011707 () Bool)

(declare-fun res!882348 () Bool)

(assert (=> b!2011707 (=> (not res!882348) (not e!1271143))))

(assert (=> b!2011707 (= res!882348 (matchR!2659 (regex!3968 (get!6992 (getRuleFromTag!783 thiss!23328 rules!3198 (tag!4436 (rule!6195 (h!27500 tokens!598)))))) (list!9001 (charsOf!2508 (h!27500 tokens!598)))))))

(declare-fun b!2011708 () Bool)

(assert (=> b!2011708 (= e!1271143 (= (rule!6195 (h!27500 tokens!598)) (get!6992 (getRuleFromTag!783 thiss!23328 rules!3198 (tag!4436 (rule!6195 (h!27500 tokens!598)))))))))

(assert (= (and d!614263 res!882347) b!2011707))

(assert (= (and b!2011707 res!882348) b!2011708))

(assert (=> d!614263 m!2444321))

(assert (=> d!614263 m!2444321))

(declare-fun m!2444633 () Bool)

(assert (=> d!614263 m!2444633))

(declare-fun m!2444635 () Bool)

(assert (=> d!614263 m!2444635))

(assert (=> d!614263 m!2444385))

(assert (=> b!2011707 m!2444315))

(declare-fun m!2444637 () Bool)

(assert (=> b!2011707 m!2444637))

(assert (=> b!2011707 m!2444637))

(declare-fun m!2444639 () Bool)

(assert (=> b!2011707 m!2444639))

(assert (=> b!2011707 m!2444321))

(assert (=> b!2011707 m!2444321))

(declare-fun m!2444641 () Bool)

(assert (=> b!2011707 m!2444641))

(assert (=> b!2011707 m!2444315))

(assert (=> b!2011708 m!2444321))

(assert (=> b!2011708 m!2444321))

(assert (=> b!2011708 m!2444641))

(assert (=> b!2011443 d!614263))

(declare-fun d!614265 () Bool)

(declare-fun list!9003 (Conc!7383) List!22179)

(assert (=> d!614265 (= (list!9001 lt!755296) (list!9003 (c!324907 lt!755296)))))

(declare-fun bs!419823 () Bool)

(assert (= bs!419823 d!614265))

(declare-fun m!2444643 () Bool)

(assert (=> bs!419823 m!2444643))

(assert (=> b!2011443 d!614265))

(declare-fun bs!419830 () Bool)

(declare-fun b!2011811 () Bool)

(assert (= bs!419830 (and b!2011811 b!2011445)))

(declare-fun lambda!76141 () Int)

(assert (=> bs!419830 (not (= lambda!76141 lambda!76129))))

(declare-fun bs!419831 () Bool)

(assert (= bs!419831 (and b!2011811 d!614205)))

(assert (=> bs!419831 (= lambda!76141 lambda!76132)))

(declare-fun b!2011815 () Bool)

(declare-fun e!1271206 () Bool)

(assert (=> b!2011815 (= e!1271206 true)))

(declare-fun b!2011814 () Bool)

(declare-fun e!1271205 () Bool)

(assert (=> b!2011814 (= e!1271205 e!1271206)))

(declare-fun b!2011813 () Bool)

(declare-fun e!1271204 () Bool)

(assert (=> b!2011813 (= e!1271204 e!1271205)))

(assert (=> b!2011811 e!1271204))

(assert (= b!2011814 b!2011815))

(assert (= b!2011813 b!2011814))

(assert (= (and b!2011811 ((_ is Cons!22098) rules!3198)) b!2011813))

(assert (=> b!2011815 (< (dynLambda!10886 order!14033 (toValue!5637 (transformation!3968 (h!27499 rules!3198)))) (dynLambda!10887 order!14035 lambda!76141))))

(assert (=> b!2011815 (< (dynLambda!10888 order!14037 (toChars!5496 (transformation!3968 (h!27499 rules!3198)))) (dynLambda!10887 order!14035 lambda!76141))))

(assert (=> b!2011811 true))

(declare-fun bm!123054 () Bool)

(declare-fun call!123059 () List!22179)

(declare-fun call!123062 () List!22179)

(assert (=> bm!123054 (= call!123059 call!123062)))

(declare-fun b!2011805 () Bool)

(declare-fun e!1271200 () List!22179)

(assert (=> b!2011805 (= e!1271200 Nil!22097)))

(declare-fun b!2011806 () Bool)

(declare-fun e!1271203 () List!22179)

(declare-fun call!123063 () List!22179)

(assert (=> b!2011806 (= e!1271203 call!123063)))

(declare-fun b!2011807 () Bool)

(declare-fun c!324985 () Bool)

(declare-fun lt!755436 () Option!4618)

(assert (=> b!2011807 (= c!324985 (and ((_ is Some!4617) lt!755436) (not (= (_1!11850 (v!26866 lt!755436)) (h!27500 (t!187790 tokens!598))))))))

(declare-fun e!1271202 () List!22179)

(assert (=> b!2011807 (= e!1271203 e!1271202)))

(declare-fun b!2011808 () Bool)

(assert (=> b!2011808 (= e!1271202 Nil!22097)))

(declare-datatypes ((IArray!14775 0))(
  ( (IArray!14776 (innerList!7445 List!22181)) )
))
(declare-datatypes ((Conc!7385 0))(
  ( (Node!7385 (left!17583 Conc!7385) (right!17913 Conc!7385) (csize!15000 Int) (cheight!7596 Int)) (Leaf!10832 (xs!10283 IArray!14775) (csize!15001 Int)) (Empty!7385) )
))
(declare-datatypes ((BalanceConc!14586 0))(
  ( (BalanceConc!14587 (c!325046 Conc!7385)) )
))
(declare-fun print!1545 (LexerInterface!3581 BalanceConc!14586) BalanceConc!14582)

(declare-fun singletonSeq!1946 (Token!7488) BalanceConc!14586)

(declare-fun printTailRec!1050 (LexerInterface!3581 BalanceConc!14586 Int BalanceConc!14582) BalanceConc!14582)

(assert (=> b!2011808 (= (print!1545 thiss!23328 (singletonSeq!1946 (h!27500 (t!187790 tokens!598)))) (printTailRec!1050 thiss!23328 (singletonSeq!1946 (h!27500 (t!187790 tokens!598))) 0 (BalanceConc!14583 Empty!7383)))))

(declare-fun lt!755435 () Unit!36670)

(declare-fun Unit!36674 () Unit!36670)

(assert (=> b!2011808 (= lt!755435 Unit!36674)))

(declare-fun lt!755432 () Unit!36670)

(declare-fun lt!755437 () List!22179)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!760 (LexerInterface!3581 List!22180 List!22179 List!22179) Unit!36670)

(assert (=> b!2011808 (= lt!755432 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!760 thiss!23328 rules!3198 call!123059 lt!755437))))

(assert (=> b!2011808 false))

(declare-fun lt!755434 () Unit!36670)

(declare-fun Unit!36675 () Unit!36670)

(assert (=> b!2011808 (= lt!755434 Unit!36675)))

(declare-fun d!614267 () Bool)

(declare-fun c!324986 () Bool)

(assert (=> d!614267 (= c!324986 ((_ is Cons!22099) (t!187790 tokens!598)))))

(assert (=> d!614267 (= (printWithSeparatorTokenWhenNeededList!610 thiss!23328 rules!3198 (t!187790 tokens!598) separatorToken!354) e!1271200)))

(declare-fun bm!123055 () Bool)

(declare-fun call!123061 () BalanceConc!14582)

(declare-fun c!324983 () Bool)

(declare-fun call!123060 () BalanceConc!14582)

(assert (=> bm!123055 (= call!123062 (list!9001 (ite c!324983 call!123061 call!123060)))))

(declare-fun b!2011809 () Bool)

(declare-fun e!1271201 () List!22179)

(assert (=> b!2011809 (= e!1271201 call!123062)))

(declare-fun bm!123056 () Bool)

(declare-fun c!324984 () Bool)

(assert (=> bm!123056 (= c!324984 c!324983)))

(assert (=> bm!123056 (= call!123063 (++!5963 e!1271201 (ite c!324983 lt!755437 call!123059)))))

(declare-fun b!2011810 () Bool)

(assert (=> b!2011810 (= e!1271202 (++!5963 call!123063 lt!755437))))

(declare-fun bm!123057 () Bool)

(assert (=> bm!123057 (= call!123060 call!123061)))

(declare-fun bm!123058 () Bool)

(assert (=> bm!123058 (= call!123061 (charsOf!2508 (ite c!324983 (h!27500 (t!187790 tokens!598)) (ite c!324985 separatorToken!354 (h!27500 (t!187790 tokens!598))))))))

(assert (=> b!2011811 (= e!1271200 e!1271203)))

(declare-fun lt!755433 () Unit!36670)

(declare-fun forallContained!729 (List!22181 Int Token!7488) Unit!36670)

(assert (=> b!2011811 (= lt!755433 (forallContained!729 (t!187790 tokens!598) lambda!76141 (h!27500 (t!187790 tokens!598))))))

(assert (=> b!2011811 (= lt!755437 (printWithSeparatorTokenWhenNeededList!610 thiss!23328 rules!3198 (t!187790 (t!187790 tokens!598)) separatorToken!354))))

(assert (=> b!2011811 (= lt!755436 (maxPrefix!2017 thiss!23328 rules!3198 (++!5963 (list!9001 (charsOf!2508 (h!27500 (t!187790 tokens!598)))) lt!755437)))))

(assert (=> b!2011811 (= c!324983 (and ((_ is Some!4617) lt!755436) (= (_1!11850 (v!26866 lt!755436)) (h!27500 (t!187790 tokens!598)))))))

(declare-fun b!2011812 () Bool)

(assert (=> b!2011812 (= e!1271201 (list!9001 (charsOf!2508 (h!27500 (t!187790 tokens!598)))))))

(assert (= (and d!614267 c!324986) b!2011811))

(assert (= (and d!614267 (not c!324986)) b!2011805))

(assert (= (and b!2011811 c!324983) b!2011806))

(assert (= (and b!2011811 (not c!324983)) b!2011807))

(assert (= (and b!2011807 c!324985) b!2011810))

(assert (= (and b!2011807 (not c!324985)) b!2011808))

(assert (= (or b!2011810 b!2011808) bm!123057))

(assert (= (or b!2011810 b!2011808) bm!123054))

(assert (= (or b!2011806 bm!123057) bm!123058))

(assert (= (or b!2011806 bm!123054) bm!123055))

(assert (= (or b!2011806 b!2011810) bm!123056))

(assert (= (and bm!123056 c!324984) b!2011809))

(assert (= (and bm!123056 (not c!324984)) b!2011812))

(declare-fun m!2444767 () Bool)

(assert (=> bm!123058 m!2444767))

(declare-fun m!2444769 () Bool)

(assert (=> bm!123056 m!2444769))

(declare-fun m!2444771 () Bool)

(assert (=> b!2011811 m!2444771))

(declare-fun m!2444773 () Bool)

(assert (=> b!2011811 m!2444773))

(assert (=> b!2011811 m!2444771))

(declare-fun m!2444775 () Bool)

(assert (=> b!2011811 m!2444775))

(assert (=> b!2011811 m!2444775))

(declare-fun m!2444777 () Bool)

(assert (=> b!2011811 m!2444777))

(declare-fun m!2444779 () Bool)

(assert (=> b!2011811 m!2444779))

(assert (=> b!2011811 m!2444777))

(declare-fun m!2444781 () Bool)

(assert (=> b!2011811 m!2444781))

(declare-fun m!2444783 () Bool)

(assert (=> bm!123055 m!2444783))

(declare-fun m!2444785 () Bool)

(assert (=> b!2011808 m!2444785))

(assert (=> b!2011808 m!2444785))

(declare-fun m!2444787 () Bool)

(assert (=> b!2011808 m!2444787))

(assert (=> b!2011808 m!2444785))

(declare-fun m!2444789 () Bool)

(assert (=> b!2011808 m!2444789))

(declare-fun m!2444791 () Bool)

(assert (=> b!2011808 m!2444791))

(declare-fun m!2444793 () Bool)

(assert (=> b!2011810 m!2444793))

(assert (=> b!2011812 m!2444771))

(assert (=> b!2011812 m!2444771))

(assert (=> b!2011812 m!2444775))

(assert (=> b!2011443 d!614267))

(declare-fun d!614295 () Bool)

(assert (=> d!614295 (= (list!9001 (charsOf!2508 separatorToken!354)) (list!9003 (c!324907 (charsOf!2508 separatorToken!354))))))

(declare-fun bs!419832 () Bool)

(assert (= bs!419832 d!614295))

(declare-fun m!2444795 () Bool)

(assert (=> bs!419832 m!2444795))

(assert (=> b!2011443 d!614295))

(declare-fun b!2011816 () Bool)

(declare-fun e!1271208 () Bool)

(declare-fun e!1271207 () Bool)

(assert (=> b!2011816 (= e!1271208 e!1271207)))

(declare-fun res!882374 () Bool)

(assert (=> b!2011816 (=> (not res!882374) (not e!1271207))))

(declare-fun lt!755442 () Option!4618)

(assert (=> b!2011816 (= res!882374 (isDefined!3906 lt!755442))))

(declare-fun b!2011817 () Bool)

(declare-fun res!882370 () Bool)

(assert (=> b!2011817 (=> (not res!882370) (not e!1271207))))

(assert (=> b!2011817 (= res!882370 (matchR!2659 (regex!3968 (rule!6195 (_1!11850 (get!6993 lt!755442)))) (list!9001 (charsOf!2508 (_1!11850 (get!6993 lt!755442))))))))

(declare-fun b!2011818 () Bool)

(declare-fun e!1271209 () Option!4618)

(declare-fun call!123064 () Option!4618)

(assert (=> b!2011818 (= e!1271209 call!123064)))

(declare-fun b!2011819 () Bool)

(declare-fun res!882369 () Bool)

(assert (=> b!2011819 (=> (not res!882369) (not e!1271207))))

(assert (=> b!2011819 (= res!882369 (= (list!9001 (charsOf!2508 (_1!11850 (get!6993 lt!755442)))) (originalCharacters!4775 (_1!11850 (get!6993 lt!755442)))))))

(declare-fun b!2011820 () Bool)

(declare-fun res!882372 () Bool)

(assert (=> b!2011820 (=> (not res!882372) (not e!1271207))))

(assert (=> b!2011820 (= res!882372 (= (++!5963 (list!9001 (charsOf!2508 (_1!11850 (get!6993 lt!755442)))) (_2!11850 (get!6993 lt!755442))) lt!755306))))

(declare-fun b!2011821 () Bool)

(assert (=> b!2011821 (= e!1271207 (contains!4047 rules!3198 (rule!6195 (_1!11850 (get!6993 lt!755442)))))))

(declare-fun bm!123059 () Bool)

(assert (=> bm!123059 (= call!123064 (maxPrefixOneRule!1248 thiss!23328 (h!27499 rules!3198) lt!755306))))

(declare-fun b!2011822 () Bool)

(declare-fun res!882371 () Bool)

(assert (=> b!2011822 (=> (not res!882371) (not e!1271207))))

(assert (=> b!2011822 (= res!882371 (< (size!17270 (_2!11850 (get!6993 lt!755442))) (size!17270 lt!755306)))))

(declare-fun b!2011823 () Bool)

(declare-fun res!882368 () Bool)

(assert (=> b!2011823 (=> (not res!882368) (not e!1271207))))

(assert (=> b!2011823 (= res!882368 (= (value!124679 (_1!11850 (get!6993 lt!755442))) (apply!5792 (transformation!3968 (rule!6195 (_1!11850 (get!6993 lt!755442)))) (seqFromList!2822 (originalCharacters!4775 (_1!11850 (get!6993 lt!755442)))))))))

(declare-fun b!2011824 () Bool)

(declare-fun lt!755440 () Option!4618)

(declare-fun lt!755444 () Option!4618)

(assert (=> b!2011824 (= e!1271209 (ite (and ((_ is None!4617) lt!755440) ((_ is None!4617) lt!755444)) None!4617 (ite ((_ is None!4617) lt!755444) lt!755440 (ite ((_ is None!4617) lt!755440) lt!755444 (ite (>= (size!17268 (_1!11850 (v!26866 lt!755440))) (size!17268 (_1!11850 (v!26866 lt!755444)))) lt!755440 lt!755444)))))))

(assert (=> b!2011824 (= lt!755440 call!123064)))

(assert (=> b!2011824 (= lt!755444 (maxPrefix!2017 thiss!23328 (t!187789 rules!3198) lt!755306))))

(declare-fun d!614297 () Bool)

(assert (=> d!614297 e!1271208))

(declare-fun res!882373 () Bool)

(assert (=> d!614297 (=> res!882373 e!1271208)))

(assert (=> d!614297 (= res!882373 (isEmpty!13710 lt!755442))))

(assert (=> d!614297 (= lt!755442 e!1271209)))

(declare-fun c!324987 () Bool)

(assert (=> d!614297 (= c!324987 (and ((_ is Cons!22098) rules!3198) ((_ is Nil!22098) (t!187789 rules!3198))))))

(declare-fun lt!755441 () Unit!36670)

(declare-fun lt!755443 () Unit!36670)

(assert (=> d!614297 (= lt!755441 lt!755443)))

(assert (=> d!614297 (isPrefix!1966 lt!755306 lt!755306)))

(assert (=> d!614297 (= lt!755443 (lemmaIsPrefixRefl!1284 lt!755306 lt!755306))))

(assert (=> d!614297 (rulesValidInductive!1365 thiss!23328 rules!3198)))

(assert (=> d!614297 (= (maxPrefix!2017 thiss!23328 rules!3198 lt!755306) lt!755442)))

(assert (= (and d!614297 c!324987) b!2011818))

(assert (= (and d!614297 (not c!324987)) b!2011824))

(assert (= (or b!2011818 b!2011824) bm!123059))

(assert (= (and d!614297 (not res!882373)) b!2011816))

(assert (= (and b!2011816 res!882374) b!2011819))

(assert (= (and b!2011819 res!882369) b!2011822))

(assert (= (and b!2011822 res!882371) b!2011820))

(assert (= (and b!2011820 res!882372) b!2011823))

(assert (= (and b!2011823 res!882368) b!2011817))

(assert (= (and b!2011817 res!882370) b!2011821))

(declare-fun m!2444797 () Bool)

(assert (=> b!2011821 m!2444797))

(declare-fun m!2444799 () Bool)

(assert (=> b!2011821 m!2444799))

(declare-fun m!2444801 () Bool)

(assert (=> bm!123059 m!2444801))

(assert (=> b!2011823 m!2444797))

(declare-fun m!2444803 () Bool)

(assert (=> b!2011823 m!2444803))

(assert (=> b!2011823 m!2444803))

(declare-fun m!2444805 () Bool)

(assert (=> b!2011823 m!2444805))

(assert (=> b!2011820 m!2444797))

(declare-fun m!2444807 () Bool)

(assert (=> b!2011820 m!2444807))

(assert (=> b!2011820 m!2444807))

(declare-fun m!2444809 () Bool)

(assert (=> b!2011820 m!2444809))

(assert (=> b!2011820 m!2444809))

(declare-fun m!2444811 () Bool)

(assert (=> b!2011820 m!2444811))

(declare-fun m!2444813 () Bool)

(assert (=> b!2011824 m!2444813))

(assert (=> b!2011822 m!2444797))

(declare-fun m!2444815 () Bool)

(assert (=> b!2011822 m!2444815))

(declare-fun m!2444817 () Bool)

(assert (=> b!2011822 m!2444817))

(assert (=> b!2011817 m!2444797))

(assert (=> b!2011817 m!2444807))

(assert (=> b!2011817 m!2444807))

(assert (=> b!2011817 m!2444809))

(assert (=> b!2011817 m!2444809))

(declare-fun m!2444819 () Bool)

(assert (=> b!2011817 m!2444819))

(declare-fun m!2444821 () Bool)

(assert (=> d!614297 m!2444821))

(declare-fun m!2444823 () Bool)

(assert (=> d!614297 m!2444823))

(declare-fun m!2444825 () Bool)

(assert (=> d!614297 m!2444825))

(assert (=> d!614297 m!2444625))

(assert (=> b!2011819 m!2444797))

(assert (=> b!2011819 m!2444807))

(assert (=> b!2011819 m!2444807))

(assert (=> b!2011819 m!2444809))

(declare-fun m!2444827 () Bool)

(assert (=> b!2011816 m!2444827))

(assert (=> b!2011443 d!614297))

(declare-fun b!2011874 () Bool)

(declare-fun e!1271246 () Bool)

(declare-fun lt!755454 () Option!4617)

(assert (=> b!2011874 (= e!1271246 (= (tag!4436 (get!6992 lt!755454)) (tag!4436 (rule!6195 separatorToken!354))))))

(declare-fun b!2011875 () Bool)

(declare-fun e!1271247 () Option!4617)

(assert (=> b!2011875 (= e!1271247 None!4616)))

(declare-fun d!614299 () Bool)

(declare-fun e!1271245 () Bool)

(assert (=> d!614299 e!1271245))

(declare-fun res!882401 () Bool)

(assert (=> d!614299 (=> res!882401 e!1271245)))

(assert (=> d!614299 (= res!882401 (isEmpty!13712 lt!755454))))

(declare-fun e!1271248 () Option!4617)

(assert (=> d!614299 (= lt!755454 e!1271248)))

(declare-fun c!324998 () Bool)

(assert (=> d!614299 (= c!324998 (and ((_ is Cons!22098) rules!3198) (= (tag!4436 (h!27499 rules!3198)) (tag!4436 (rule!6195 separatorToken!354)))))))

(assert (=> d!614299 (rulesInvariant!3188 thiss!23328 rules!3198)))

(assert (=> d!614299 (= (getRuleFromTag!783 thiss!23328 rules!3198 (tag!4436 (rule!6195 separatorToken!354))) lt!755454)))

(declare-fun b!2011876 () Bool)

(assert (=> b!2011876 (= e!1271248 e!1271247)))

(declare-fun c!324997 () Bool)

(assert (=> b!2011876 (= c!324997 (and ((_ is Cons!22098) rules!3198) (not (= (tag!4436 (h!27499 rules!3198)) (tag!4436 (rule!6195 separatorToken!354))))))))

(declare-fun b!2011877 () Bool)

(assert (=> b!2011877 (= e!1271248 (Some!4616 (h!27499 rules!3198)))))

(declare-fun b!2011878 () Bool)

(assert (=> b!2011878 (= e!1271245 e!1271246)))

(declare-fun res!882402 () Bool)

(assert (=> b!2011878 (=> (not res!882402) (not e!1271246))))

(assert (=> b!2011878 (= res!882402 (contains!4047 rules!3198 (get!6992 lt!755454)))))

(declare-fun b!2011879 () Bool)

(declare-fun lt!755455 () Unit!36670)

(declare-fun lt!755456 () Unit!36670)

(assert (=> b!2011879 (= lt!755455 lt!755456)))

(assert (=> b!2011879 (rulesInvariant!3188 thiss!23328 (t!187789 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!291 (LexerInterface!3581 Rule!7736 List!22180) Unit!36670)

(assert (=> b!2011879 (= lt!755456 (lemmaInvariantOnRulesThenOnTail!291 thiss!23328 (h!27499 rules!3198) (t!187789 rules!3198)))))

(assert (=> b!2011879 (= e!1271247 (getRuleFromTag!783 thiss!23328 (t!187789 rules!3198) (tag!4436 (rule!6195 separatorToken!354))))))

(assert (= (and d!614299 c!324998) b!2011877))

(assert (= (and d!614299 (not c!324998)) b!2011876))

(assert (= (and b!2011876 c!324997) b!2011879))

(assert (= (and b!2011876 (not c!324997)) b!2011875))

(assert (= (and d!614299 (not res!882401)) b!2011878))

(assert (= (and b!2011878 res!882402) b!2011874))

(declare-fun m!2444861 () Bool)

(assert (=> b!2011874 m!2444861))

(declare-fun m!2444863 () Bool)

(assert (=> d!614299 m!2444863))

(assert (=> d!614299 m!2444385))

(assert (=> b!2011878 m!2444861))

(assert (=> b!2011878 m!2444861))

(declare-fun m!2444865 () Bool)

(assert (=> b!2011878 m!2444865))

(declare-fun m!2444867 () Bool)

(assert (=> b!2011879 m!2444867))

(declare-fun m!2444869 () Bool)

(assert (=> b!2011879 m!2444869))

(declare-fun m!2444871 () Bool)

(assert (=> b!2011879 m!2444871))

(assert (=> b!2011443 d!614299))

(declare-fun b!2011882 () Bool)

(declare-fun e!1271252 () Bool)

(declare-fun lt!755457 () Option!4617)

(assert (=> b!2011882 (= e!1271252 (= (tag!4436 (get!6992 lt!755457)) (tag!4436 (rule!6195 (h!27500 tokens!598)))))))

(declare-fun b!2011883 () Bool)

(declare-fun e!1271253 () Option!4617)

(assert (=> b!2011883 (= e!1271253 None!4616)))

(declare-fun d!614319 () Bool)

(declare-fun e!1271251 () Bool)

(assert (=> d!614319 e!1271251))

(declare-fun res!882405 () Bool)

(assert (=> d!614319 (=> res!882405 e!1271251)))

(assert (=> d!614319 (= res!882405 (isEmpty!13712 lt!755457))))

(declare-fun e!1271254 () Option!4617)

(assert (=> d!614319 (= lt!755457 e!1271254)))

(declare-fun c!325000 () Bool)

(assert (=> d!614319 (= c!325000 (and ((_ is Cons!22098) rules!3198) (= (tag!4436 (h!27499 rules!3198)) (tag!4436 (rule!6195 (h!27500 tokens!598))))))))

(assert (=> d!614319 (rulesInvariant!3188 thiss!23328 rules!3198)))

(assert (=> d!614319 (= (getRuleFromTag!783 thiss!23328 rules!3198 (tag!4436 (rule!6195 (h!27500 tokens!598)))) lt!755457)))

(declare-fun b!2011884 () Bool)

(assert (=> b!2011884 (= e!1271254 e!1271253)))

(declare-fun c!324999 () Bool)

(assert (=> b!2011884 (= c!324999 (and ((_ is Cons!22098) rules!3198) (not (= (tag!4436 (h!27499 rules!3198)) (tag!4436 (rule!6195 (h!27500 tokens!598)))))))))

(declare-fun b!2011885 () Bool)

(assert (=> b!2011885 (= e!1271254 (Some!4616 (h!27499 rules!3198)))))

(declare-fun b!2011886 () Bool)

(assert (=> b!2011886 (= e!1271251 e!1271252)))

(declare-fun res!882406 () Bool)

(assert (=> b!2011886 (=> (not res!882406) (not e!1271252))))

(assert (=> b!2011886 (= res!882406 (contains!4047 rules!3198 (get!6992 lt!755457)))))

(declare-fun b!2011887 () Bool)

(declare-fun lt!755458 () Unit!36670)

(declare-fun lt!755459 () Unit!36670)

(assert (=> b!2011887 (= lt!755458 lt!755459)))

(assert (=> b!2011887 (rulesInvariant!3188 thiss!23328 (t!187789 rules!3198))))

(assert (=> b!2011887 (= lt!755459 (lemmaInvariantOnRulesThenOnTail!291 thiss!23328 (h!27499 rules!3198) (t!187789 rules!3198)))))

(assert (=> b!2011887 (= e!1271253 (getRuleFromTag!783 thiss!23328 (t!187789 rules!3198) (tag!4436 (rule!6195 (h!27500 tokens!598)))))))

(assert (= (and d!614319 c!325000) b!2011885))

(assert (= (and d!614319 (not c!325000)) b!2011884))

(assert (= (and b!2011884 c!324999) b!2011887))

(assert (= (and b!2011884 (not c!324999)) b!2011883))

(assert (= (and d!614319 (not res!882405)) b!2011886))

(assert (= (and b!2011886 res!882406) b!2011882))

(declare-fun m!2444877 () Bool)

(assert (=> b!2011882 m!2444877))

(declare-fun m!2444879 () Bool)

(assert (=> d!614319 m!2444879))

(assert (=> d!614319 m!2444385))

(assert (=> b!2011886 m!2444877))

(assert (=> b!2011886 m!2444877))

(declare-fun m!2444881 () Bool)

(assert (=> b!2011886 m!2444881))

(assert (=> b!2011887 m!2444867))

(assert (=> b!2011887 m!2444869))

(declare-fun m!2444883 () Bool)

(assert (=> b!2011887 m!2444883))

(assert (=> b!2011443 d!614319))

(declare-fun b!2011896 () Bool)

(declare-fun e!1271260 () List!22179)

(assert (=> b!2011896 (= e!1271260 lt!755298)))

(declare-fun b!2011897 () Bool)

(assert (=> b!2011897 (= e!1271260 (Cons!22097 (h!27498 lt!755306) (++!5963 (t!187788 lt!755306) lt!755298)))))

(declare-fun b!2011899 () Bool)

(declare-fun lt!755462 () List!22179)

(declare-fun e!1271259 () Bool)

(assert (=> b!2011899 (= e!1271259 (or (not (= lt!755298 Nil!22097)) (= lt!755462 lt!755306)))))

(declare-fun d!614323 () Bool)

(assert (=> d!614323 e!1271259))

(declare-fun res!882411 () Bool)

(assert (=> d!614323 (=> (not res!882411) (not e!1271259))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3240 (List!22179) (InoxSet C!10932))

(assert (=> d!614323 (= res!882411 (= (content!3240 lt!755462) ((_ map or) (content!3240 lt!755306) (content!3240 lt!755298))))))

(assert (=> d!614323 (= lt!755462 e!1271260)))

(declare-fun c!325003 () Bool)

(assert (=> d!614323 (= c!325003 ((_ is Nil!22097) lt!755306))))

(assert (=> d!614323 (= (++!5963 lt!755306 lt!755298) lt!755462)))

(declare-fun b!2011898 () Bool)

(declare-fun res!882412 () Bool)

(assert (=> b!2011898 (=> (not res!882412) (not e!1271259))))

(assert (=> b!2011898 (= res!882412 (= (size!17270 lt!755462) (+ (size!17270 lt!755306) (size!17270 lt!755298))))))

(assert (= (and d!614323 c!325003) b!2011896))

(assert (= (and d!614323 (not c!325003)) b!2011897))

(assert (= (and d!614323 res!882411) b!2011898))

(assert (= (and b!2011898 res!882412) b!2011899))

(declare-fun m!2444885 () Bool)

(assert (=> b!2011897 m!2444885))

(declare-fun m!2444887 () Bool)

(assert (=> d!614323 m!2444887))

(declare-fun m!2444889 () Bool)

(assert (=> d!614323 m!2444889))

(declare-fun m!2444891 () Bool)

(assert (=> d!614323 m!2444891))

(declare-fun m!2444893 () Bool)

(assert (=> b!2011898 m!2444893))

(assert (=> b!2011898 m!2444817))

(declare-fun m!2444895 () Bool)

(assert (=> b!2011898 m!2444895))

(assert (=> b!2011443 d!614323))

(declare-fun b!2011904 () Bool)

(declare-fun e!1271263 () Bool)

(assert (=> b!2011904 (= e!1271263 true)))

(declare-fun d!614325 () Bool)

(assert (=> d!614325 e!1271263))

(assert (= d!614325 b!2011904))

(declare-fun order!14049 () Int)

(declare-fun lambda!76147 () Int)

(declare-fun dynLambda!10889 (Int Int) Int)

(assert (=> b!2011904 (< (dynLambda!10886 order!14033 (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) (dynLambda!10889 order!14049 lambda!76147))))

(assert (=> b!2011904 (< (dynLambda!10888 order!14037 (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) (dynLambda!10889 order!14049 lambda!76147))))

(declare-fun dynLambda!10890 (Int TokenValue!4104) BalanceConc!14582)

(declare-fun dynLambda!10891 (Int BalanceConc!14582) TokenValue!4104)

(assert (=> d!614325 (= (list!9001 (dynLambda!10890 (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (dynLambda!10891 (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) lt!755296))) (list!9001 lt!755296))))

(declare-fun lt!755465 () Unit!36670)

(declare-fun ForallOf!430 (Int BalanceConc!14582) Unit!36670)

(assert (=> d!614325 (= lt!755465 (ForallOf!430 lambda!76147 lt!755296))))

(assert (=> d!614325 (= (lemmaSemiInverse!925 (transformation!3968 (rule!6195 (h!27500 tokens!598))) lt!755296) lt!755465)))

(declare-fun b_lambda!67223 () Bool)

(assert (=> (not b_lambda!67223) (not d!614325)))

(declare-fun t!187829 () Bool)

(declare-fun tb!125775 () Bool)

(assert (=> (and b!2011448 (= (toChars!5496 (transformation!3968 (h!27499 rules!3198))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187829) tb!125775))

(declare-fun tp!599938 () Bool)

(declare-fun b!2011909 () Bool)

(declare-fun e!1271266 () Bool)

(declare-fun inv!29265 (Conc!7383) Bool)

(assert (=> b!2011909 (= e!1271266 (and (inv!29265 (c!324907 (dynLambda!10890 (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (dynLambda!10891 (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) lt!755296)))) tp!599938))))

(declare-fun result!150698 () Bool)

(declare-fun inv!29266 (BalanceConc!14582) Bool)

(assert (=> tb!125775 (= result!150698 (and (inv!29266 (dynLambda!10890 (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (dynLambda!10891 (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) lt!755296))) e!1271266))))

(assert (= tb!125775 b!2011909))

(declare-fun m!2444897 () Bool)

(assert (=> b!2011909 m!2444897))

(declare-fun m!2444899 () Bool)

(assert (=> tb!125775 m!2444899))

(assert (=> d!614325 t!187829))

(declare-fun b_and!159121 () Bool)

(assert (= b_and!159063 (and (=> t!187829 result!150698) b_and!159121)))

(declare-fun tb!125777 () Bool)

(declare-fun t!187831 () Bool)

(assert (=> (and b!2011434 (= (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187831) tb!125777))

(declare-fun result!150702 () Bool)

(assert (= result!150702 result!150698))

(assert (=> d!614325 t!187831))

(declare-fun b_and!159123 () Bool)

(assert (= b_and!159067 (and (=> t!187831 result!150702) b_and!159123)))

(declare-fun t!187833 () Bool)

(declare-fun tb!125779 () Bool)

(assert (=> (and b!2011440 (= (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187833) tb!125779))

(declare-fun result!150704 () Bool)

(assert (= result!150704 result!150698))

(assert (=> d!614325 t!187833))

(declare-fun b_and!159125 () Bool)

(assert (= b_and!159071 (and (=> t!187833 result!150704) b_and!159125)))

(declare-fun b_lambda!67225 () Bool)

(assert (=> (not b_lambda!67225) (not d!614325)))

(declare-fun t!187835 () Bool)

(declare-fun tb!125781 () Bool)

(assert (=> (and b!2011448 (= (toValue!5637 (transformation!3968 (h!27499 rules!3198))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187835) tb!125781))

(declare-fun result!150706 () Bool)

(assert (=> tb!125781 (= result!150706 (inv!21 (dynLambda!10891 (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) lt!755296)))))

(declare-fun m!2444901 () Bool)

(assert (=> tb!125781 m!2444901))

(assert (=> d!614325 t!187835))

(declare-fun b_and!159127 () Bool)

(assert (= b_and!159061 (and (=> t!187835 result!150706) b_and!159127)))

(declare-fun t!187837 () Bool)

(declare-fun tb!125783 () Bool)

(assert (=> (and b!2011434 (= (toValue!5637 (transformation!3968 (rule!6195 separatorToken!354))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187837) tb!125783))

(declare-fun result!150710 () Bool)

(assert (= result!150710 result!150706))

(assert (=> d!614325 t!187837))

(declare-fun b_and!159129 () Bool)

(assert (= b_and!159065 (and (=> t!187837 result!150710) b_and!159129)))

(declare-fun t!187839 () Bool)

(declare-fun tb!125785 () Bool)

(assert (=> (and b!2011440 (= (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187839) tb!125785))

(declare-fun result!150712 () Bool)

(assert (= result!150712 result!150706))

(assert (=> d!614325 t!187839))

(declare-fun b_and!159131 () Bool)

(assert (= b_and!159069 (and (=> t!187839 result!150712) b_and!159131)))

(declare-fun m!2444903 () Bool)

(assert (=> d!614325 m!2444903))

(declare-fun m!2444905 () Bool)

(assert (=> d!614325 m!2444905))

(declare-fun m!2444907 () Bool)

(assert (=> d!614325 m!2444907))

(assert (=> d!614325 m!2444903))

(assert (=> d!614325 m!2444907))

(declare-fun m!2444909 () Bool)

(assert (=> d!614325 m!2444909))

(assert (=> d!614325 m!2444297))

(assert (=> b!2011443 d!614325))

(declare-fun d!614327 () Bool)

(declare-fun lt!755468 () BalanceConc!14582)

(assert (=> d!614327 (= (list!9001 lt!755468) (originalCharacters!4775 (h!27500 tokens!598)))))

(assert (=> d!614327 (= lt!755468 (dynLambda!10890 (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (value!124679 (h!27500 tokens!598))))))

(assert (=> d!614327 (= (charsOf!2508 (h!27500 tokens!598)) lt!755468)))

(declare-fun b_lambda!67227 () Bool)

(assert (=> (not b_lambda!67227) (not d!614327)))

(declare-fun t!187841 () Bool)

(declare-fun tb!125787 () Bool)

(assert (=> (and b!2011448 (= (toChars!5496 (transformation!3968 (h!27499 rules!3198))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187841) tb!125787))

(declare-fun b!2011912 () Bool)

(declare-fun e!1271270 () Bool)

(declare-fun tp!599939 () Bool)

(assert (=> b!2011912 (= e!1271270 (and (inv!29265 (c!324907 (dynLambda!10890 (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (value!124679 (h!27500 tokens!598))))) tp!599939))))

(declare-fun result!150714 () Bool)

(assert (=> tb!125787 (= result!150714 (and (inv!29266 (dynLambda!10890 (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (value!124679 (h!27500 tokens!598)))) e!1271270))))

(assert (= tb!125787 b!2011912))

(declare-fun m!2444911 () Bool)

(assert (=> b!2011912 m!2444911))

(declare-fun m!2444913 () Bool)

(assert (=> tb!125787 m!2444913))

(assert (=> d!614327 t!187841))

(declare-fun b_and!159133 () Bool)

(assert (= b_and!159121 (and (=> t!187841 result!150714) b_and!159133)))

(declare-fun tb!125789 () Bool)

(declare-fun t!187843 () Bool)

(assert (=> (and b!2011434 (= (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187843) tb!125789))

(declare-fun result!150716 () Bool)

(assert (= result!150716 result!150714))

(assert (=> d!614327 t!187843))

(declare-fun b_and!159135 () Bool)

(assert (= b_and!159123 (and (=> t!187843 result!150716) b_and!159135)))

(declare-fun t!187845 () Bool)

(declare-fun tb!125791 () Bool)

(assert (=> (and b!2011440 (= (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187845) tb!125791))

(declare-fun result!150718 () Bool)

(assert (= result!150718 result!150714))

(assert (=> d!614327 t!187845))

(declare-fun b_and!159137 () Bool)

(assert (= b_and!159125 (and (=> t!187845 result!150718) b_and!159137)))

(declare-fun m!2444915 () Bool)

(assert (=> d!614327 m!2444915))

(declare-fun m!2444917 () Bool)

(assert (=> d!614327 m!2444917))

(assert (=> b!2011443 d!614327))

(declare-fun d!614329 () Bool)

(declare-fun fromListB!1263 (List!22179) BalanceConc!14582)

(assert (=> d!614329 (= (seqFromList!2822 (originalCharacters!4775 (h!27500 tokens!598))) (fromListB!1263 (originalCharacters!4775 (h!27500 tokens!598))))))

(declare-fun bs!419833 () Bool)

(assert (= bs!419833 d!614329))

(declare-fun m!2444919 () Bool)

(assert (=> bs!419833 m!2444919))

(assert (=> b!2011443 d!614329))

(declare-fun d!614331 () Bool)

(assert (=> d!614331 (= (isDefined!3905 lt!755304) (not (isEmpty!13712 lt!755304)))))

(declare-fun bs!419834 () Bool)

(assert (= bs!419834 d!614331))

(declare-fun m!2444921 () Bool)

(assert (=> bs!419834 m!2444921))

(assert (=> b!2011443 d!614331))

(declare-fun b!2011919 () Bool)

(declare-fun e!1271275 () Bool)

(assert (=> b!2011919 (= e!1271275 true)))

(declare-fun d!614333 () Bool)

(assert (=> d!614333 e!1271275))

(assert (= d!614333 b!2011919))

(declare-fun order!14051 () Int)

(declare-fun lambda!76150 () Int)

(declare-fun dynLambda!10895 (Int Int) Int)

(assert (=> b!2011919 (< (dynLambda!10886 order!14033 (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) (dynLambda!10895 order!14051 lambda!76150))))

(assert (=> b!2011919 (< (dynLambda!10888 order!14037 (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) (dynLambda!10895 order!14051 lambda!76150))))

(assert (=> d!614333 (= (dynLambda!10891 (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) lt!755296) (dynLambda!10891 (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (seqFromList!2822 (originalCharacters!4775 (h!27500 tokens!598)))))))

(declare-fun lt!755471 () Unit!36670)

(declare-fun Forall2of!226 (Int BalanceConc!14582 BalanceConc!14582) Unit!36670)

(assert (=> d!614333 (= lt!755471 (Forall2of!226 lambda!76150 lt!755296 (seqFromList!2822 (originalCharacters!4775 (h!27500 tokens!598)))))))

(assert (=> d!614333 (= (list!9001 lt!755296) (list!9001 (seqFromList!2822 (originalCharacters!4775 (h!27500 tokens!598)))))))

(assert (=> d!614333 (= (lemmaEqSameImage!654 (transformation!3968 (rule!6195 (h!27500 tokens!598))) lt!755296 (seqFromList!2822 (originalCharacters!4775 (h!27500 tokens!598)))) lt!755471)))

(declare-fun b_lambda!67229 () Bool)

(assert (=> (not b_lambda!67229) (not d!614333)))

(assert (=> d!614333 t!187835))

(declare-fun b_and!159139 () Bool)

(assert (= b_and!159127 (and (=> t!187835 result!150706) b_and!159139)))

(assert (=> d!614333 t!187837))

(declare-fun b_and!159141 () Bool)

(assert (= b_and!159129 (and (=> t!187837 result!150710) b_and!159141)))

(assert (=> d!614333 t!187839))

(declare-fun b_and!159143 () Bool)

(assert (= b_and!159131 (and (=> t!187839 result!150712) b_and!159143)))

(declare-fun b_lambda!67231 () Bool)

(assert (=> (not b_lambda!67231) (not d!614333)))

(declare-fun t!187847 () Bool)

(declare-fun tb!125793 () Bool)

(assert (=> (and b!2011448 (= (toValue!5637 (transformation!3968 (h!27499 rules!3198))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187847) tb!125793))

(declare-fun result!150720 () Bool)

(assert (=> tb!125793 (= result!150720 (inv!21 (dynLambda!10891 (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (seqFromList!2822 (originalCharacters!4775 (h!27500 tokens!598))))))))

(declare-fun m!2444923 () Bool)

(assert (=> tb!125793 m!2444923))

(assert (=> d!614333 t!187847))

(declare-fun b_and!159145 () Bool)

(assert (= b_and!159139 (and (=> t!187847 result!150720) b_and!159145)))

(declare-fun tb!125795 () Bool)

(declare-fun t!187849 () Bool)

(assert (=> (and b!2011434 (= (toValue!5637 (transformation!3968 (rule!6195 separatorToken!354))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187849) tb!125795))

(declare-fun result!150722 () Bool)

(assert (= result!150722 result!150720))

(assert (=> d!614333 t!187849))

(declare-fun b_and!159147 () Bool)

(assert (= b_and!159141 (and (=> t!187849 result!150722) b_and!159147)))

(declare-fun t!187851 () Bool)

(declare-fun tb!125797 () Bool)

(assert (=> (and b!2011440 (= (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187851) tb!125797))

(declare-fun result!150724 () Bool)

(assert (= result!150724 result!150720))

(assert (=> d!614333 t!187851))

(declare-fun b_and!159149 () Bool)

(assert (= b_and!159143 (and (=> t!187851 result!150724) b_and!159149)))

(assert (=> d!614333 m!2444301))

(declare-fun m!2444925 () Bool)

(assert (=> d!614333 m!2444925))

(assert (=> d!614333 m!2444301))

(declare-fun m!2444927 () Bool)

(assert (=> d!614333 m!2444927))

(assert (=> d!614333 m!2444301))

(declare-fun m!2444929 () Bool)

(assert (=> d!614333 m!2444929))

(assert (=> d!614333 m!2444297))

(assert (=> d!614333 m!2444907))

(assert (=> b!2011443 d!614333))

(declare-fun d!614335 () Bool)

(declare-fun lt!755472 () BalanceConc!14582)

(assert (=> d!614335 (= (list!9001 lt!755472) (originalCharacters!4775 separatorToken!354))))

(assert (=> d!614335 (= lt!755472 (dynLambda!10890 (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))) (value!124679 separatorToken!354)))))

(assert (=> d!614335 (= (charsOf!2508 separatorToken!354) lt!755472)))

(declare-fun b_lambda!67233 () Bool)

(assert (=> (not b_lambda!67233) (not d!614335)))

(declare-fun t!187853 () Bool)

(declare-fun tb!125799 () Bool)

(assert (=> (and b!2011448 (= (toChars!5496 (transformation!3968 (h!27499 rules!3198))) (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354)))) t!187853) tb!125799))

(declare-fun b!2011920 () Bool)

(declare-fun e!1271277 () Bool)

(declare-fun tp!599940 () Bool)

(assert (=> b!2011920 (= e!1271277 (and (inv!29265 (c!324907 (dynLambda!10890 (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))) (value!124679 separatorToken!354)))) tp!599940))))

(declare-fun result!150726 () Bool)

(assert (=> tb!125799 (= result!150726 (and (inv!29266 (dynLambda!10890 (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))) (value!124679 separatorToken!354))) e!1271277))))

(assert (= tb!125799 b!2011920))

(declare-fun m!2444931 () Bool)

(assert (=> b!2011920 m!2444931))

(declare-fun m!2444933 () Bool)

(assert (=> tb!125799 m!2444933))

(assert (=> d!614335 t!187853))

(declare-fun b_and!159151 () Bool)

(assert (= b_and!159133 (and (=> t!187853 result!150726) b_and!159151)))

(declare-fun t!187855 () Bool)

(declare-fun tb!125801 () Bool)

(assert (=> (and b!2011434 (= (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))) (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354)))) t!187855) tb!125801))

(declare-fun result!150728 () Bool)

(assert (= result!150728 result!150726))

(assert (=> d!614335 t!187855))

(declare-fun b_and!159153 () Bool)

(assert (= b_and!159135 (and (=> t!187855 result!150728) b_and!159153)))

(declare-fun t!187857 () Bool)

(declare-fun tb!125803 () Bool)

(assert (=> (and b!2011440 (= (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354)))) t!187857) tb!125803))

(declare-fun result!150730 () Bool)

(assert (= result!150730 result!150726))

(assert (=> d!614335 t!187857))

(declare-fun b_and!159155 () Bool)

(assert (= b_and!159137 (and (=> t!187857 result!150730) b_and!159155)))

(declare-fun m!2444935 () Bool)

(assert (=> d!614335 m!2444935))

(declare-fun m!2444937 () Bool)

(assert (=> d!614335 m!2444937))

(assert (=> b!2011443 d!614335))

(declare-fun d!614337 () Bool)

(declare-fun e!1271278 () Bool)

(assert (=> d!614337 e!1271278))

(declare-fun res!882415 () Bool)

(assert (=> d!614337 (=> (not res!882415) (not e!1271278))))

(assert (=> d!614337 (= res!882415 (isDefined!3905 (getRuleFromTag!783 thiss!23328 rules!3198 (tag!4436 (rule!6195 separatorToken!354)))))))

(declare-fun lt!755473 () Unit!36670)

(assert (=> d!614337 (= lt!755473 (choose!12253 thiss!23328 rules!3198 lt!755292 separatorToken!354))))

(assert (=> d!614337 (rulesInvariant!3188 thiss!23328 rules!3198)))

(assert (=> d!614337 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!783 thiss!23328 rules!3198 lt!755292 separatorToken!354) lt!755473)))

(declare-fun b!2011921 () Bool)

(declare-fun res!882416 () Bool)

(assert (=> b!2011921 (=> (not res!882416) (not e!1271278))))

(assert (=> b!2011921 (= res!882416 (matchR!2659 (regex!3968 (get!6992 (getRuleFromTag!783 thiss!23328 rules!3198 (tag!4436 (rule!6195 separatorToken!354))))) (list!9001 (charsOf!2508 separatorToken!354))))))

(declare-fun b!2011922 () Bool)

(assert (=> b!2011922 (= e!1271278 (= (rule!6195 separatorToken!354) (get!6992 (getRuleFromTag!783 thiss!23328 rules!3198 (tag!4436 (rule!6195 separatorToken!354))))))))

(assert (= (and d!614337 res!882415) b!2011921))

(assert (= (and b!2011921 res!882416) b!2011922))

(assert (=> d!614337 m!2444311))

(assert (=> d!614337 m!2444311))

(declare-fun m!2444939 () Bool)

(assert (=> d!614337 m!2444939))

(declare-fun m!2444941 () Bool)

(assert (=> d!614337 m!2444941))

(assert (=> d!614337 m!2444385))

(assert (=> b!2011921 m!2444317))

(assert (=> b!2011921 m!2444319))

(assert (=> b!2011921 m!2444319))

(declare-fun m!2444943 () Bool)

(assert (=> b!2011921 m!2444943))

(assert (=> b!2011921 m!2444311))

(assert (=> b!2011921 m!2444311))

(declare-fun m!2444945 () Bool)

(assert (=> b!2011921 m!2444945))

(assert (=> b!2011921 m!2444317))

(assert (=> b!2011922 m!2444311))

(assert (=> b!2011922 m!2444311))

(assert (=> b!2011922 m!2444945))

(assert (=> b!2011443 d!614337))

(declare-fun b!2011923 () Bool)

(declare-fun e!1271280 () List!22179)

(assert (=> b!2011923 (= e!1271280 lt!755298)))

(declare-fun b!2011924 () Bool)

(assert (=> b!2011924 (= e!1271280 (Cons!22097 (h!27498 lt!755292) (++!5963 (t!187788 lt!755292) lt!755298)))))

(declare-fun e!1271279 () Bool)

(declare-fun b!2011926 () Bool)

(declare-fun lt!755474 () List!22179)

(assert (=> b!2011926 (= e!1271279 (or (not (= lt!755298 Nil!22097)) (= lt!755474 lt!755292)))))

(declare-fun d!614339 () Bool)

(assert (=> d!614339 e!1271279))

(declare-fun res!882417 () Bool)

(assert (=> d!614339 (=> (not res!882417) (not e!1271279))))

(assert (=> d!614339 (= res!882417 (= (content!3240 lt!755474) ((_ map or) (content!3240 lt!755292) (content!3240 lt!755298))))))

(assert (=> d!614339 (= lt!755474 e!1271280)))

(declare-fun c!325005 () Bool)

(assert (=> d!614339 (= c!325005 ((_ is Nil!22097) lt!755292))))

(assert (=> d!614339 (= (++!5963 lt!755292 lt!755298) lt!755474)))

(declare-fun b!2011925 () Bool)

(declare-fun res!882418 () Bool)

(assert (=> b!2011925 (=> (not res!882418) (not e!1271279))))

(assert (=> b!2011925 (= res!882418 (= (size!17270 lt!755474) (+ (size!17270 lt!755292) (size!17270 lt!755298))))))

(assert (= (and d!614339 c!325005) b!2011923))

(assert (= (and d!614339 (not c!325005)) b!2011924))

(assert (= (and d!614339 res!882417) b!2011925))

(assert (= (and b!2011925 res!882418) b!2011926))

(declare-fun m!2444947 () Bool)

(assert (=> b!2011924 m!2444947))

(declare-fun m!2444949 () Bool)

(assert (=> d!614339 m!2444949))

(declare-fun m!2444951 () Bool)

(assert (=> d!614339 m!2444951))

(assert (=> d!614339 m!2444891))

(declare-fun m!2444953 () Bool)

(assert (=> b!2011925 m!2444953))

(declare-fun m!2444955 () Bool)

(assert (=> b!2011925 m!2444955))

(assert (=> b!2011925 m!2444895))

(assert (=> b!2011454 d!614339))

(declare-fun b!2011943 () Bool)

(declare-fun e!1271291 () List!22179)

(assert (=> b!2011943 (= e!1271291 Nil!22097)))

(declare-fun bm!123069 () Bool)

(declare-fun call!123074 () List!22179)

(declare-fun call!123075 () List!22179)

(assert (=> bm!123069 (= call!123074 call!123075)))

(declare-fun b!2011944 () Bool)

(declare-fun c!325014 () Bool)

(assert (=> b!2011944 (= c!325014 ((_ is Star!5393) (regex!3968 (rule!6195 separatorToken!354))))))

(declare-fun e!1271289 () List!22179)

(declare-fun e!1271292 () List!22179)

(assert (=> b!2011944 (= e!1271289 e!1271292)))

(declare-fun b!2011945 () Bool)

(assert (=> b!2011945 (= e!1271292 call!123075)))

(declare-fun d!614341 () Bool)

(declare-fun c!325017 () Bool)

(assert (=> d!614341 (= c!325017 (or ((_ is EmptyExpr!5393) (regex!3968 (rule!6195 separatorToken!354))) ((_ is EmptyLang!5393) (regex!3968 (rule!6195 separatorToken!354)))))))

(assert (=> d!614341 (= (usedCharacters!406 (regex!3968 (rule!6195 separatorToken!354))) e!1271291)))

(declare-fun bm!123070 () Bool)

(declare-fun c!325016 () Bool)

(assert (=> bm!123070 (= call!123075 (usedCharacters!406 (ite c!325014 (reg!5722 (regex!3968 (rule!6195 separatorToken!354))) (ite c!325016 (regTwo!11299 (regex!3968 (rule!6195 separatorToken!354))) (regOne!11298 (regex!3968 (rule!6195 separatorToken!354)))))))))

(declare-fun bm!123071 () Bool)

(declare-fun call!123076 () List!22179)

(assert (=> bm!123071 (= call!123076 (usedCharacters!406 (ite c!325016 (regOne!11299 (regex!3968 (rule!6195 separatorToken!354))) (regTwo!11298 (regex!3968 (rule!6195 separatorToken!354))))))))

(declare-fun b!2011946 () Bool)

(assert (=> b!2011946 (= e!1271291 e!1271289)))

(declare-fun c!325015 () Bool)

(assert (=> b!2011946 (= c!325015 ((_ is ElementMatch!5393) (regex!3968 (rule!6195 separatorToken!354))))))

(declare-fun b!2011947 () Bool)

(declare-fun e!1271290 () List!22179)

(assert (=> b!2011947 (= e!1271292 e!1271290)))

(assert (=> b!2011947 (= c!325016 ((_ is Union!5393) (regex!3968 (rule!6195 separatorToken!354))))))

(declare-fun bm!123072 () Bool)

(declare-fun call!123077 () List!22179)

(assert (=> bm!123072 (= call!123077 (++!5963 (ite c!325016 call!123076 call!123074) (ite c!325016 call!123074 call!123076)))))

(declare-fun b!2011948 () Bool)

(assert (=> b!2011948 (= e!1271290 call!123077)))

(declare-fun b!2011949 () Bool)

(assert (=> b!2011949 (= e!1271290 call!123077)))

(declare-fun b!2011950 () Bool)

(assert (=> b!2011950 (= e!1271289 (Cons!22097 (c!324908 (regex!3968 (rule!6195 separatorToken!354))) Nil!22097))))

(assert (= (and d!614341 c!325017) b!2011943))

(assert (= (and d!614341 (not c!325017)) b!2011946))

(assert (= (and b!2011946 c!325015) b!2011950))

(assert (= (and b!2011946 (not c!325015)) b!2011944))

(assert (= (and b!2011944 c!325014) b!2011945))

(assert (= (and b!2011944 (not c!325014)) b!2011947))

(assert (= (and b!2011947 c!325016) b!2011948))

(assert (= (and b!2011947 (not c!325016)) b!2011949))

(assert (= (or b!2011948 b!2011949) bm!123071))

(assert (= (or b!2011948 b!2011949) bm!123069))

(assert (= (or b!2011948 b!2011949) bm!123072))

(assert (= (or b!2011945 bm!123069) bm!123070))

(declare-fun m!2444957 () Bool)

(assert (=> bm!123070 m!2444957))

(declare-fun m!2444959 () Bool)

(assert (=> bm!123071 m!2444959))

(declare-fun m!2444961 () Bool)

(assert (=> bm!123072 m!2444961))

(assert (=> b!2011454 d!614341))

(declare-fun d!614343 () Bool)

(assert (=> d!614343 (= (head!4546 lt!755292) (h!27498 lt!755292))))

(assert (=> b!2011454 d!614343))

(declare-fun d!614345 () Bool)

(declare-fun lt!755477 () Bool)

(declare-fun content!3241 (List!22180) (InoxSet Rule!7736))

(assert (=> d!614345 (= lt!755477 (select (content!3241 rules!3198) (rule!6195 separatorToken!354)))))

(declare-fun e!1271298 () Bool)

(assert (=> d!614345 (= lt!755477 e!1271298)))

(declare-fun res!882423 () Bool)

(assert (=> d!614345 (=> (not res!882423) (not e!1271298))))

(assert (=> d!614345 (= res!882423 ((_ is Cons!22098) rules!3198))))

(assert (=> d!614345 (= (contains!4047 rules!3198 (rule!6195 separatorToken!354)) lt!755477)))

(declare-fun b!2011955 () Bool)

(declare-fun e!1271297 () Bool)

(assert (=> b!2011955 (= e!1271298 e!1271297)))

(declare-fun res!882424 () Bool)

(assert (=> b!2011955 (=> res!882424 e!1271297)))

(assert (=> b!2011955 (= res!882424 (= (h!27499 rules!3198) (rule!6195 separatorToken!354)))))

(declare-fun b!2011956 () Bool)

(assert (=> b!2011956 (= e!1271297 (contains!4047 (t!187789 rules!3198) (rule!6195 separatorToken!354)))))

(assert (= (and d!614345 res!882423) b!2011955))

(assert (= (and b!2011955 (not res!882424)) b!2011956))

(declare-fun m!2444963 () Bool)

(assert (=> d!614345 m!2444963))

(declare-fun m!2444965 () Bool)

(assert (=> d!614345 m!2444965))

(declare-fun m!2444967 () Bool)

(assert (=> b!2011956 m!2444967))

(assert (=> b!2011454 d!614345))

(declare-fun b!2011957 () Bool)

(declare-fun e!1271300 () List!22179)

(assert (=> b!2011957 (= e!1271300 lt!755292)))

(declare-fun b!2011958 () Bool)

(assert (=> b!2011958 (= e!1271300 (Cons!22097 (h!27498 lt!755306) (++!5963 (t!187788 lt!755306) lt!755292)))))

(declare-fun e!1271299 () Bool)

(declare-fun b!2011960 () Bool)

(declare-fun lt!755478 () List!22179)

(assert (=> b!2011960 (= e!1271299 (or (not (= lt!755292 Nil!22097)) (= lt!755478 lt!755306)))))

(declare-fun d!614347 () Bool)

(assert (=> d!614347 e!1271299))

(declare-fun res!882425 () Bool)

(assert (=> d!614347 (=> (not res!882425) (not e!1271299))))

(assert (=> d!614347 (= res!882425 (= (content!3240 lt!755478) ((_ map or) (content!3240 lt!755306) (content!3240 lt!755292))))))

(assert (=> d!614347 (= lt!755478 e!1271300)))

(declare-fun c!325018 () Bool)

(assert (=> d!614347 (= c!325018 ((_ is Nil!22097) lt!755306))))

(assert (=> d!614347 (= (++!5963 lt!755306 lt!755292) lt!755478)))

(declare-fun b!2011959 () Bool)

(declare-fun res!882426 () Bool)

(assert (=> b!2011959 (=> (not res!882426) (not e!1271299))))

(assert (=> b!2011959 (= res!882426 (= (size!17270 lt!755478) (+ (size!17270 lt!755306) (size!17270 lt!755292))))))

(assert (= (and d!614347 c!325018) b!2011957))

(assert (= (and d!614347 (not c!325018)) b!2011958))

(assert (= (and d!614347 res!882425) b!2011959))

(assert (= (and b!2011959 res!882426) b!2011960))

(declare-fun m!2444969 () Bool)

(assert (=> b!2011958 m!2444969))

(declare-fun m!2444971 () Bool)

(assert (=> d!614347 m!2444971))

(assert (=> d!614347 m!2444889))

(assert (=> d!614347 m!2444951))

(declare-fun m!2444973 () Bool)

(assert (=> b!2011959 m!2444973))

(assert (=> b!2011959 m!2444817))

(assert (=> b!2011959 m!2444955))

(assert (=> b!2011454 d!614347))

(declare-fun d!614349 () Bool)

(assert (=> d!614349 (= (++!5963 (++!5963 lt!755306 lt!755292) lt!755298) (++!5963 lt!755306 (++!5963 lt!755292 lt!755298)))))

(declare-fun lt!755481 () Unit!36670)

(declare-fun choose!12255 (List!22179 List!22179 List!22179) Unit!36670)

(assert (=> d!614349 (= lt!755481 (choose!12255 lt!755306 lt!755292 lt!755298))))

(assert (=> d!614349 (= (lemmaConcatAssociativity!1231 lt!755306 lt!755292 lt!755298) lt!755481)))

(declare-fun bs!419835 () Bool)

(assert (= bs!419835 d!614349))

(assert (=> bs!419835 m!2444361))

(declare-fun m!2444975 () Bool)

(assert (=> bs!419835 m!2444975))

(assert (=> bs!419835 m!2444353))

(assert (=> bs!419835 m!2444353))

(assert (=> bs!419835 m!2444355))

(assert (=> bs!419835 m!2444361))

(assert (=> bs!419835 m!2444363))

(assert (=> b!2011454 d!614349))

(declare-fun d!614351 () Bool)

(declare-fun lt!755484 () Bool)

(assert (=> d!614351 (= lt!755484 (select (content!3240 (usedCharacters!406 (regex!3968 (rule!6195 separatorToken!354)))) lt!755291))))

(declare-fun e!1271306 () Bool)

(assert (=> d!614351 (= lt!755484 e!1271306)))

(declare-fun res!882431 () Bool)

(assert (=> d!614351 (=> (not res!882431) (not e!1271306))))

(assert (=> d!614351 (= res!882431 ((_ is Cons!22097) (usedCharacters!406 (regex!3968 (rule!6195 separatorToken!354)))))))

(assert (=> d!614351 (= (contains!4048 (usedCharacters!406 (regex!3968 (rule!6195 separatorToken!354))) lt!755291) lt!755484)))

(declare-fun b!2011965 () Bool)

(declare-fun e!1271305 () Bool)

(assert (=> b!2011965 (= e!1271306 e!1271305)))

(declare-fun res!882432 () Bool)

(assert (=> b!2011965 (=> res!882432 e!1271305)))

(assert (=> b!2011965 (= res!882432 (= (h!27498 (usedCharacters!406 (regex!3968 (rule!6195 separatorToken!354)))) lt!755291))))

(declare-fun b!2011966 () Bool)

(assert (=> b!2011966 (= e!1271305 (contains!4048 (t!187788 (usedCharacters!406 (regex!3968 (rule!6195 separatorToken!354)))) lt!755291))))

(assert (= (and d!614351 res!882431) b!2011965))

(assert (= (and b!2011965 (not res!882432)) b!2011966))

(assert (=> d!614351 m!2444359))

(declare-fun m!2444977 () Bool)

(assert (=> d!614351 m!2444977))

(declare-fun m!2444979 () Bool)

(assert (=> d!614351 m!2444979))

(declare-fun m!2444981 () Bool)

(assert (=> b!2011966 m!2444981))

(assert (=> b!2011454 d!614351))

(declare-fun b!2011967 () Bool)

(declare-fun e!1271308 () List!22179)

(assert (=> b!2011967 (= e!1271308 (++!5963 lt!755292 lt!755298))))

(declare-fun b!2011968 () Bool)

(assert (=> b!2011968 (= e!1271308 (Cons!22097 (h!27498 lt!755306) (++!5963 (t!187788 lt!755306) (++!5963 lt!755292 lt!755298))))))

(declare-fun lt!755485 () List!22179)

(declare-fun b!2011970 () Bool)

(declare-fun e!1271307 () Bool)

(assert (=> b!2011970 (= e!1271307 (or (not (= (++!5963 lt!755292 lt!755298) Nil!22097)) (= lt!755485 lt!755306)))))

(declare-fun d!614353 () Bool)

(assert (=> d!614353 e!1271307))

(declare-fun res!882433 () Bool)

(assert (=> d!614353 (=> (not res!882433) (not e!1271307))))

(assert (=> d!614353 (= res!882433 (= (content!3240 lt!755485) ((_ map or) (content!3240 lt!755306) (content!3240 (++!5963 lt!755292 lt!755298)))))))

(assert (=> d!614353 (= lt!755485 e!1271308)))

(declare-fun c!325019 () Bool)

(assert (=> d!614353 (= c!325019 ((_ is Nil!22097) lt!755306))))

(assert (=> d!614353 (= (++!5963 lt!755306 (++!5963 lt!755292 lt!755298)) lt!755485)))

(declare-fun b!2011969 () Bool)

(declare-fun res!882434 () Bool)

(assert (=> b!2011969 (=> (not res!882434) (not e!1271307))))

(assert (=> b!2011969 (= res!882434 (= (size!17270 lt!755485) (+ (size!17270 lt!755306) (size!17270 (++!5963 lt!755292 lt!755298)))))))

(assert (= (and d!614353 c!325019) b!2011967))

(assert (= (and d!614353 (not c!325019)) b!2011968))

(assert (= (and d!614353 res!882433) b!2011969))

(assert (= (and b!2011969 res!882434) b!2011970))

(assert (=> b!2011968 m!2444353))

(declare-fun m!2444983 () Bool)

(assert (=> b!2011968 m!2444983))

(declare-fun m!2444985 () Bool)

(assert (=> d!614353 m!2444985))

(assert (=> d!614353 m!2444889))

(assert (=> d!614353 m!2444353))

(declare-fun m!2444987 () Bool)

(assert (=> d!614353 m!2444987))

(declare-fun m!2444989 () Bool)

(assert (=> b!2011969 m!2444989))

(assert (=> b!2011969 m!2444817))

(assert (=> b!2011969 m!2444353))

(declare-fun m!2444991 () Bool)

(assert (=> b!2011969 m!2444991))

(assert (=> b!2011454 d!614353))

(declare-fun b!2011971 () Bool)

(declare-fun e!1271310 () List!22179)

(assert (=> b!2011971 (= e!1271310 lt!755298)))

(declare-fun b!2011972 () Bool)

(assert (=> b!2011972 (= e!1271310 (Cons!22097 (h!27498 (++!5963 lt!755306 lt!755292)) (++!5963 (t!187788 (++!5963 lt!755306 lt!755292)) lt!755298)))))

(declare-fun b!2011974 () Bool)

(declare-fun e!1271309 () Bool)

(declare-fun lt!755486 () List!22179)

(assert (=> b!2011974 (= e!1271309 (or (not (= lt!755298 Nil!22097)) (= lt!755486 (++!5963 lt!755306 lt!755292))))))

(declare-fun d!614355 () Bool)

(assert (=> d!614355 e!1271309))

(declare-fun res!882435 () Bool)

(assert (=> d!614355 (=> (not res!882435) (not e!1271309))))

(assert (=> d!614355 (= res!882435 (= (content!3240 lt!755486) ((_ map or) (content!3240 (++!5963 lt!755306 lt!755292)) (content!3240 lt!755298))))))

(assert (=> d!614355 (= lt!755486 e!1271310)))

(declare-fun c!325020 () Bool)

(assert (=> d!614355 (= c!325020 ((_ is Nil!22097) (++!5963 lt!755306 lt!755292)))))

(assert (=> d!614355 (= (++!5963 (++!5963 lt!755306 lt!755292) lt!755298) lt!755486)))

(declare-fun b!2011973 () Bool)

(declare-fun res!882436 () Bool)

(assert (=> b!2011973 (=> (not res!882436) (not e!1271309))))

(assert (=> b!2011973 (= res!882436 (= (size!17270 lt!755486) (+ (size!17270 (++!5963 lt!755306 lt!755292)) (size!17270 lt!755298))))))

(assert (= (and d!614355 c!325020) b!2011971))

(assert (= (and d!614355 (not c!325020)) b!2011972))

(assert (= (and d!614355 res!882435) b!2011973))

(assert (= (and b!2011973 res!882436) b!2011974))

(declare-fun m!2444993 () Bool)

(assert (=> b!2011972 m!2444993))

(declare-fun m!2444995 () Bool)

(assert (=> d!614355 m!2444995))

(assert (=> d!614355 m!2444361))

(declare-fun m!2444997 () Bool)

(assert (=> d!614355 m!2444997))

(assert (=> d!614355 m!2444891))

(declare-fun m!2444999 () Bool)

(assert (=> b!2011973 m!2444999))

(assert (=> b!2011973 m!2444361))

(declare-fun m!2445001 () Bool)

(assert (=> b!2011973 m!2445001))

(assert (=> b!2011973 m!2444895))

(assert (=> b!2011454 d!614355))

(declare-fun d!614357 () Bool)

(declare-fun lt!755487 () Bool)

(assert (=> d!614357 (= lt!755487 (select (content!3241 rules!3198) (rule!6195 (h!27500 tokens!598))))))

(declare-fun e!1271312 () Bool)

(assert (=> d!614357 (= lt!755487 e!1271312)))

(declare-fun res!882437 () Bool)

(assert (=> d!614357 (=> (not res!882437) (not e!1271312))))

(assert (=> d!614357 (= res!882437 ((_ is Cons!22098) rules!3198))))

(assert (=> d!614357 (= (contains!4047 rules!3198 (rule!6195 (h!27500 tokens!598))) lt!755487)))

(declare-fun b!2011975 () Bool)

(declare-fun e!1271311 () Bool)

(assert (=> b!2011975 (= e!1271312 e!1271311)))

(declare-fun res!882438 () Bool)

(assert (=> b!2011975 (=> res!882438 e!1271311)))

(assert (=> b!2011975 (= res!882438 (= (h!27499 rules!3198) (rule!6195 (h!27500 tokens!598))))))

(declare-fun b!2011976 () Bool)

(assert (=> b!2011976 (= e!1271311 (contains!4047 (t!187789 rules!3198) (rule!6195 (h!27500 tokens!598))))))

(assert (= (and d!614357 res!882437) b!2011975))

(assert (= (and b!2011975 (not res!882438)) b!2011976))

(assert (=> d!614357 m!2444963))

(declare-fun m!2445003 () Bool)

(assert (=> d!614357 m!2445003))

(declare-fun m!2445005 () Bool)

(assert (=> b!2011976 m!2445005))

(assert (=> b!2011431 d!614357))

(declare-fun d!614359 () Bool)

(assert (=> d!614359 (not (matchR!2659 (regex!3968 (rule!6195 separatorToken!354)) lt!755292))))

(declare-fun lt!755490 () Unit!36670)

(declare-fun choose!12256 (Regex!5393 List!22179 C!10932) Unit!36670)

(assert (=> d!614359 (= lt!755490 (choose!12256 (regex!3968 (rule!6195 separatorToken!354)) lt!755292 lt!755291))))

(declare-fun validRegex!2161 (Regex!5393) Bool)

(assert (=> d!614359 (validRegex!2161 (regex!3968 (rule!6195 separatorToken!354)))))

(assert (=> d!614359 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!294 (regex!3968 (rule!6195 separatorToken!354)) lt!755292 lt!755291) lt!755490)))

(declare-fun bs!419836 () Bool)

(assert (= bs!419836 d!614359))

(assert (=> bs!419836 m!2444341))

(declare-fun m!2445007 () Bool)

(assert (=> bs!419836 m!2445007))

(declare-fun m!2445009 () Bool)

(assert (=> bs!419836 m!2445009))

(assert (=> b!2011442 d!614359))

(declare-fun b!2012005 () Bool)

(declare-fun res!882456 () Bool)

(declare-fun e!1271328 () Bool)

(assert (=> b!2012005 (=> (not res!882456) (not e!1271328))))

(declare-fun isEmpty!13715 (List!22179) Bool)

(declare-fun tail!3028 (List!22179) List!22179)

(assert (=> b!2012005 (= res!882456 (isEmpty!13715 (tail!3028 lt!755292)))))

(declare-fun b!2012006 () Bool)

(declare-fun e!1271331 () Bool)

(declare-fun e!1271327 () Bool)

(assert (=> b!2012006 (= e!1271331 e!1271327)))

(declare-fun res!882458 () Bool)

(assert (=> b!2012006 (=> res!882458 e!1271327)))

(declare-fun call!123080 () Bool)

(assert (=> b!2012006 (= res!882458 call!123080)))

(declare-fun b!2012007 () Bool)

(assert (=> b!2012007 (= e!1271327 (not (= (head!4546 lt!755292) (c!324908 (regex!3968 (rule!6195 separatorToken!354))))))))

(declare-fun b!2012008 () Bool)

(declare-fun e!1271329 () Bool)

(declare-fun lt!755493 () Bool)

(assert (=> b!2012008 (= e!1271329 (not lt!755493))))

(declare-fun b!2012009 () Bool)

(declare-fun res!882461 () Bool)

(assert (=> b!2012009 (=> (not res!882461) (not e!1271328))))

(assert (=> b!2012009 (= res!882461 (not call!123080))))

(declare-fun b!2012010 () Bool)

(declare-fun e!1271332 () Bool)

(assert (=> b!2012010 (= e!1271332 e!1271331)))

(declare-fun res!882457 () Bool)

(assert (=> b!2012010 (=> (not res!882457) (not e!1271331))))

(assert (=> b!2012010 (= res!882457 (not lt!755493))))

(declare-fun b!2012011 () Bool)

(declare-fun e!1271330 () Bool)

(declare-fun nullable!1635 (Regex!5393) Bool)

(assert (=> b!2012011 (= e!1271330 (nullable!1635 (regex!3968 (rule!6195 separatorToken!354))))))

(declare-fun bm!123075 () Bool)

(assert (=> bm!123075 (= call!123080 (isEmpty!13715 lt!755292))))

(declare-fun b!2012012 () Bool)

(declare-fun derivativeStep!1394 (Regex!5393 C!10932) Regex!5393)

(assert (=> b!2012012 (= e!1271330 (matchR!2659 (derivativeStep!1394 (regex!3968 (rule!6195 separatorToken!354)) (head!4546 lt!755292)) (tail!3028 lt!755292)))))

(declare-fun b!2012014 () Bool)

(declare-fun res!882455 () Bool)

(assert (=> b!2012014 (=> res!882455 e!1271327)))

(assert (=> b!2012014 (= res!882455 (not (isEmpty!13715 (tail!3028 lt!755292))))))

(declare-fun b!2012015 () Bool)

(declare-fun e!1271333 () Bool)

(assert (=> b!2012015 (= e!1271333 (= lt!755493 call!123080))))

(declare-fun b!2012016 () Bool)

(declare-fun res!882462 () Bool)

(assert (=> b!2012016 (=> res!882462 e!1271332)))

(assert (=> b!2012016 (= res!882462 (not ((_ is ElementMatch!5393) (regex!3968 (rule!6195 separatorToken!354)))))))

(assert (=> b!2012016 (= e!1271329 e!1271332)))

(declare-fun b!2012017 () Bool)

(assert (=> b!2012017 (= e!1271333 e!1271329)))

(declare-fun c!325028 () Bool)

(assert (=> b!2012017 (= c!325028 ((_ is EmptyLang!5393) (regex!3968 (rule!6195 separatorToken!354))))))

(declare-fun b!2012018 () Bool)

(assert (=> b!2012018 (= e!1271328 (= (head!4546 lt!755292) (c!324908 (regex!3968 (rule!6195 separatorToken!354)))))))

(declare-fun b!2012013 () Bool)

(declare-fun res!882459 () Bool)

(assert (=> b!2012013 (=> res!882459 e!1271332)))

(assert (=> b!2012013 (= res!882459 e!1271328)))

(declare-fun res!882460 () Bool)

(assert (=> b!2012013 (=> (not res!882460) (not e!1271328))))

(assert (=> b!2012013 (= res!882460 lt!755493)))

(declare-fun d!614361 () Bool)

(assert (=> d!614361 e!1271333))

(declare-fun c!325029 () Bool)

(assert (=> d!614361 (= c!325029 ((_ is EmptyExpr!5393) (regex!3968 (rule!6195 separatorToken!354))))))

(assert (=> d!614361 (= lt!755493 e!1271330)))

(declare-fun c!325030 () Bool)

(assert (=> d!614361 (= c!325030 (isEmpty!13715 lt!755292))))

(assert (=> d!614361 (validRegex!2161 (regex!3968 (rule!6195 separatorToken!354)))))

(assert (=> d!614361 (= (matchR!2659 (regex!3968 (rule!6195 separatorToken!354)) lt!755292) lt!755493)))

(assert (= (and d!614361 c!325030) b!2012011))

(assert (= (and d!614361 (not c!325030)) b!2012012))

(assert (= (and d!614361 c!325029) b!2012015))

(assert (= (and d!614361 (not c!325029)) b!2012017))

(assert (= (and b!2012017 c!325028) b!2012008))

(assert (= (and b!2012017 (not c!325028)) b!2012016))

(assert (= (and b!2012016 (not res!882462)) b!2012013))

(assert (= (and b!2012013 res!882460) b!2012009))

(assert (= (and b!2012009 res!882461) b!2012005))

(assert (= (and b!2012005 res!882456) b!2012018))

(assert (= (and b!2012013 (not res!882459)) b!2012010))

(assert (= (and b!2012010 res!882457) b!2012006))

(assert (= (and b!2012006 (not res!882458)) b!2012014))

(assert (= (and b!2012014 (not res!882455)) b!2012007))

(assert (= (or b!2012015 b!2012006 b!2012009) bm!123075))

(assert (=> b!2012018 m!2444351))

(assert (=> b!2012007 m!2444351))

(assert (=> b!2012012 m!2444351))

(assert (=> b!2012012 m!2444351))

(declare-fun m!2445011 () Bool)

(assert (=> b!2012012 m!2445011))

(declare-fun m!2445013 () Bool)

(assert (=> b!2012012 m!2445013))

(assert (=> b!2012012 m!2445011))

(assert (=> b!2012012 m!2445013))

(declare-fun m!2445015 () Bool)

(assert (=> b!2012012 m!2445015))

(declare-fun m!2445017 () Bool)

(assert (=> b!2012011 m!2445017))

(assert (=> b!2012005 m!2445013))

(assert (=> b!2012005 m!2445013))

(declare-fun m!2445019 () Bool)

(assert (=> b!2012005 m!2445019))

(declare-fun m!2445021 () Bool)

(assert (=> bm!123075 m!2445021))

(assert (=> d!614361 m!2445021))

(assert (=> d!614361 m!2445009))

(assert (=> b!2012014 m!2445013))

(assert (=> b!2012014 m!2445013))

(assert (=> b!2012014 m!2445019))

(assert (=> b!2011442 d!614361))

(declare-fun d!614363 () Bool)

(declare-fun res!882467 () Bool)

(declare-fun e!1271336 () Bool)

(assert (=> d!614363 (=> (not res!882467) (not e!1271336))))

(assert (=> d!614363 (= res!882467 (not (isEmpty!13715 (originalCharacters!4775 (h!27500 tokens!598)))))))

(assert (=> d!614363 (= (inv!29261 (h!27500 tokens!598)) e!1271336)))

(declare-fun b!2012023 () Bool)

(declare-fun res!882468 () Bool)

(assert (=> b!2012023 (=> (not res!882468) (not e!1271336))))

(assert (=> b!2012023 (= res!882468 (= (originalCharacters!4775 (h!27500 tokens!598)) (list!9001 (dynLambda!10890 (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (value!124679 (h!27500 tokens!598))))))))

(declare-fun b!2012024 () Bool)

(assert (=> b!2012024 (= e!1271336 (= (size!17268 (h!27500 tokens!598)) (size!17270 (originalCharacters!4775 (h!27500 tokens!598)))))))

(assert (= (and d!614363 res!882467) b!2012023))

(assert (= (and b!2012023 res!882468) b!2012024))

(declare-fun b_lambda!67235 () Bool)

(assert (=> (not b_lambda!67235) (not b!2012023)))

(assert (=> b!2012023 t!187841))

(declare-fun b_and!159157 () Bool)

(assert (= b_and!159151 (and (=> t!187841 result!150714) b_and!159157)))

(assert (=> b!2012023 t!187843))

(declare-fun b_and!159159 () Bool)

(assert (= b_and!159153 (and (=> t!187843 result!150716) b_and!159159)))

(assert (=> b!2012023 t!187845))

(declare-fun b_and!159161 () Bool)

(assert (= b_and!159155 (and (=> t!187845 result!150718) b_and!159161)))

(declare-fun m!2445023 () Bool)

(assert (=> d!614363 m!2445023))

(assert (=> b!2012023 m!2444917))

(assert (=> b!2012023 m!2444917))

(declare-fun m!2445025 () Bool)

(assert (=> b!2012023 m!2445025))

(declare-fun m!2445027 () Bool)

(assert (=> b!2012024 m!2445027))

(assert (=> b!2011453 d!614363))

(declare-fun b!2012025 () Bool)

(declare-fun res!882470 () Bool)

(declare-fun e!1271338 () Bool)

(assert (=> b!2012025 (=> (not res!882470) (not e!1271338))))

(assert (=> b!2012025 (= res!882470 (isEmpty!13715 (tail!3028 lt!755306)))))

(declare-fun b!2012026 () Bool)

(declare-fun e!1271341 () Bool)

(declare-fun e!1271337 () Bool)

(assert (=> b!2012026 (= e!1271341 e!1271337)))

(declare-fun res!882472 () Bool)

(assert (=> b!2012026 (=> res!882472 e!1271337)))

(declare-fun call!123081 () Bool)

(assert (=> b!2012026 (= res!882472 call!123081)))

(declare-fun b!2012027 () Bool)

(assert (=> b!2012027 (= e!1271337 (not (= (head!4546 lt!755306) (c!324908 (regex!3968 lt!755295)))))))

(declare-fun b!2012028 () Bool)

(declare-fun e!1271339 () Bool)

(declare-fun lt!755494 () Bool)

(assert (=> b!2012028 (= e!1271339 (not lt!755494))))

(declare-fun b!2012029 () Bool)

(declare-fun res!882475 () Bool)

(assert (=> b!2012029 (=> (not res!882475) (not e!1271338))))

(assert (=> b!2012029 (= res!882475 (not call!123081))))

(declare-fun b!2012030 () Bool)

(declare-fun e!1271342 () Bool)

(assert (=> b!2012030 (= e!1271342 e!1271341)))

(declare-fun res!882471 () Bool)

(assert (=> b!2012030 (=> (not res!882471) (not e!1271341))))

(assert (=> b!2012030 (= res!882471 (not lt!755494))))

(declare-fun b!2012031 () Bool)

(declare-fun e!1271340 () Bool)

(assert (=> b!2012031 (= e!1271340 (nullable!1635 (regex!3968 lt!755295)))))

(declare-fun bm!123076 () Bool)

(assert (=> bm!123076 (= call!123081 (isEmpty!13715 lt!755306))))

(declare-fun b!2012032 () Bool)

(assert (=> b!2012032 (= e!1271340 (matchR!2659 (derivativeStep!1394 (regex!3968 lt!755295) (head!4546 lt!755306)) (tail!3028 lt!755306)))))

(declare-fun b!2012034 () Bool)

(declare-fun res!882469 () Bool)

(assert (=> b!2012034 (=> res!882469 e!1271337)))

(assert (=> b!2012034 (= res!882469 (not (isEmpty!13715 (tail!3028 lt!755306))))))

(declare-fun b!2012035 () Bool)

(declare-fun e!1271343 () Bool)

(assert (=> b!2012035 (= e!1271343 (= lt!755494 call!123081))))

(declare-fun b!2012036 () Bool)

(declare-fun res!882476 () Bool)

(assert (=> b!2012036 (=> res!882476 e!1271342)))

(assert (=> b!2012036 (= res!882476 (not ((_ is ElementMatch!5393) (regex!3968 lt!755295))))))

(assert (=> b!2012036 (= e!1271339 e!1271342)))

(declare-fun b!2012037 () Bool)

(assert (=> b!2012037 (= e!1271343 e!1271339)))

(declare-fun c!325031 () Bool)

(assert (=> b!2012037 (= c!325031 ((_ is EmptyLang!5393) (regex!3968 lt!755295)))))

(declare-fun b!2012038 () Bool)

(assert (=> b!2012038 (= e!1271338 (= (head!4546 lt!755306) (c!324908 (regex!3968 lt!755295))))))

(declare-fun b!2012033 () Bool)

(declare-fun res!882473 () Bool)

(assert (=> b!2012033 (=> res!882473 e!1271342)))

(assert (=> b!2012033 (= res!882473 e!1271338)))

(declare-fun res!882474 () Bool)

(assert (=> b!2012033 (=> (not res!882474) (not e!1271338))))

(assert (=> b!2012033 (= res!882474 lt!755494)))

(declare-fun d!614365 () Bool)

(assert (=> d!614365 e!1271343))

(declare-fun c!325032 () Bool)

(assert (=> d!614365 (= c!325032 ((_ is EmptyExpr!5393) (regex!3968 lt!755295)))))

(assert (=> d!614365 (= lt!755494 e!1271340)))

(declare-fun c!325033 () Bool)

(assert (=> d!614365 (= c!325033 (isEmpty!13715 lt!755306))))

(assert (=> d!614365 (validRegex!2161 (regex!3968 lt!755295))))

(assert (=> d!614365 (= (matchR!2659 (regex!3968 lt!755295) lt!755306) lt!755494)))

(assert (= (and d!614365 c!325033) b!2012031))

(assert (= (and d!614365 (not c!325033)) b!2012032))

(assert (= (and d!614365 c!325032) b!2012035))

(assert (= (and d!614365 (not c!325032)) b!2012037))

(assert (= (and b!2012037 c!325031) b!2012028))

(assert (= (and b!2012037 (not c!325031)) b!2012036))

(assert (= (and b!2012036 (not res!882476)) b!2012033))

(assert (= (and b!2012033 res!882474) b!2012029))

(assert (= (and b!2012029 res!882475) b!2012025))

(assert (= (and b!2012025 res!882470) b!2012038))

(assert (= (and b!2012033 (not res!882473)) b!2012030))

(assert (= (and b!2012030 res!882471) b!2012026))

(assert (= (and b!2012026 (not res!882472)) b!2012034))

(assert (= (and b!2012034 (not res!882469)) b!2012027))

(assert (= (or b!2012035 b!2012026 b!2012029) bm!123076))

(declare-fun m!2445029 () Bool)

(assert (=> b!2012038 m!2445029))

(assert (=> b!2012027 m!2445029))

(assert (=> b!2012032 m!2445029))

(assert (=> b!2012032 m!2445029))

(declare-fun m!2445031 () Bool)

(assert (=> b!2012032 m!2445031))

(declare-fun m!2445033 () Bool)

(assert (=> b!2012032 m!2445033))

(assert (=> b!2012032 m!2445031))

(assert (=> b!2012032 m!2445033))

(declare-fun m!2445035 () Bool)

(assert (=> b!2012032 m!2445035))

(declare-fun m!2445037 () Bool)

(assert (=> b!2012031 m!2445037))

(assert (=> b!2012025 m!2445033))

(assert (=> b!2012025 m!2445033))

(declare-fun m!2445039 () Bool)

(assert (=> b!2012025 m!2445039))

(declare-fun m!2445041 () Bool)

(assert (=> bm!123076 m!2445041))

(assert (=> d!614365 m!2445041))

(declare-fun m!2445043 () Bool)

(assert (=> d!614365 m!2445043))

(assert (=> b!2012034 m!2445033))

(assert (=> b!2012034 m!2445033))

(assert (=> b!2012034 m!2445039))

(assert (=> b!2011430 d!614365))

(declare-fun d!614367 () Bool)

(assert (=> d!614367 (= (get!6992 lt!755304) (v!26865 lt!755304))))

(assert (=> b!2011430 d!614367))

(declare-fun d!614369 () Bool)

(assert (=> d!614369 (= (inv!29258 (tag!4436 (rule!6195 separatorToken!354))) (= (mod (str.len (value!124678 (tag!4436 (rule!6195 separatorToken!354)))) 2) 0))))

(assert (=> b!2011441 d!614369))

(declare-fun d!614371 () Bool)

(declare-fun res!882479 () Bool)

(declare-fun e!1271346 () Bool)

(assert (=> d!614371 (=> (not res!882479) (not e!1271346))))

(declare-fun semiInverseModEq!1591 (Int Int) Bool)

(assert (=> d!614371 (= res!882479 (semiInverseModEq!1591 (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))) (toValue!5637 (transformation!3968 (rule!6195 separatorToken!354)))))))

(assert (=> d!614371 (= (inv!29262 (transformation!3968 (rule!6195 separatorToken!354))) e!1271346)))

(declare-fun b!2012041 () Bool)

(declare-fun equivClasses!1518 (Int Int) Bool)

(assert (=> b!2012041 (= e!1271346 (equivClasses!1518 (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))) (toValue!5637 (transformation!3968 (rule!6195 separatorToken!354)))))))

(assert (= (and d!614371 res!882479) b!2012041))

(declare-fun m!2445045 () Bool)

(assert (=> d!614371 m!2445045))

(declare-fun m!2445047 () Bool)

(assert (=> b!2012041 m!2445047))

(assert (=> b!2011441 d!614371))

(declare-fun d!614373 () Bool)

(assert (=> d!614373 (= (isEmpty!13708 rules!3198) ((_ is Nil!22098) rules!3198))))

(assert (=> b!2011428 d!614373))

(declare-fun d!614375 () Bool)

(assert (=> d!614375 (= (get!6993 lt!755305) (v!26866 lt!755305))))

(assert (=> b!2011439 d!614375))

(declare-fun d!614377 () Bool)

(declare-fun res!882486 () Bool)

(declare-fun e!1271353 () Bool)

(assert (=> d!614377 (=> (not res!882486) (not e!1271353))))

(declare-fun rulesValid!1478 (LexerInterface!3581 List!22180) Bool)

(assert (=> d!614377 (= res!882486 (rulesValid!1478 thiss!23328 rules!3198))))

(assert (=> d!614377 (= (rulesInvariant!3188 thiss!23328 rules!3198) e!1271353)))

(declare-fun b!2012048 () Bool)

(declare-datatypes ((List!22183 0))(
  ( (Nil!22101) (Cons!22101 (h!27502 String!25638) (t!187902 List!22183)) )
))
(declare-fun noDuplicateTag!1476 (LexerInterface!3581 List!22180 List!22183) Bool)

(assert (=> b!2012048 (= e!1271353 (noDuplicateTag!1476 thiss!23328 rules!3198 Nil!22101))))

(assert (= (and d!614377 res!882486) b!2012048))

(declare-fun m!2445049 () Bool)

(assert (=> d!614377 m!2445049))

(declare-fun m!2445051 () Bool)

(assert (=> b!2012048 m!2445051))

(assert (=> b!2011450 d!614377))

(declare-fun d!614379 () Bool)

(declare-fun res!882491 () Bool)

(declare-fun e!1271358 () Bool)

(assert (=> d!614379 (=> res!882491 e!1271358)))

(assert (=> d!614379 (= res!882491 (not ((_ is Cons!22098) rules!3198)))))

(assert (=> d!614379 (= (sepAndNonSepRulesDisjointChars!1066 rules!3198 rules!3198) e!1271358)))

(declare-fun b!2012053 () Bool)

(declare-fun e!1271359 () Bool)

(assert (=> b!2012053 (= e!1271358 e!1271359)))

(declare-fun res!882492 () Bool)

(assert (=> b!2012053 (=> (not res!882492) (not e!1271359))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!474 (Rule!7736 List!22180) Bool)

(assert (=> b!2012053 (= res!882492 (ruleDisjointCharsFromAllFromOtherType!474 (h!27499 rules!3198) rules!3198))))

(declare-fun b!2012054 () Bool)

(assert (=> b!2012054 (= e!1271359 (sepAndNonSepRulesDisjointChars!1066 rules!3198 (t!187789 rules!3198)))))

(assert (= (and d!614379 (not res!882491)) b!2012053))

(assert (= (and b!2012053 res!882492) b!2012054))

(declare-fun m!2445053 () Bool)

(assert (=> b!2012053 m!2445053))

(declare-fun m!2445055 () Bool)

(assert (=> b!2012054 m!2445055))

(assert (=> b!2011429 d!614379))

(declare-fun b!2012080 () Bool)

(declare-fun e!1271383 () Bool)

(declare-fun inv!15 (TokenValue!4104) Bool)

(assert (=> b!2012080 (= e!1271383 (inv!15 (value!124679 separatorToken!354)))))

(declare-fun b!2012081 () Bool)

(declare-fun e!1271385 () Bool)

(declare-fun inv!17 (TokenValue!4104) Bool)

(assert (=> b!2012081 (= e!1271385 (inv!17 (value!124679 separatorToken!354)))))

(declare-fun b!2012082 () Bool)

(declare-fun e!1271384 () Bool)

(declare-fun inv!16 (TokenValue!4104) Bool)

(assert (=> b!2012082 (= e!1271384 (inv!16 (value!124679 separatorToken!354)))))

(declare-fun b!2012083 () Bool)

(declare-fun res!882497 () Bool)

(assert (=> b!2012083 (=> res!882497 e!1271383)))

(assert (=> b!2012083 (= res!882497 (not ((_ is IntegerValue!12314) (value!124679 separatorToken!354))))))

(assert (=> b!2012083 (= e!1271385 e!1271383)))

(declare-fun d!614381 () Bool)

(declare-fun c!325038 () Bool)

(assert (=> d!614381 (= c!325038 ((_ is IntegerValue!12312) (value!124679 separatorToken!354)))))

(assert (=> d!614381 (= (inv!21 (value!124679 separatorToken!354)) e!1271384)))

(declare-fun b!2012084 () Bool)

(assert (=> b!2012084 (= e!1271384 e!1271385)))

(declare-fun c!325039 () Bool)

(assert (=> b!2012084 (= c!325039 ((_ is IntegerValue!12313) (value!124679 separatorToken!354)))))

(assert (= (and d!614381 c!325038) b!2012082))

(assert (= (and d!614381 (not c!325038)) b!2012084))

(assert (= (and b!2012084 c!325039) b!2012081))

(assert (= (and b!2012084 (not c!325039)) b!2012083))

(assert (= (and b!2012083 (not res!882497)) b!2012080))

(declare-fun m!2445063 () Bool)

(assert (=> b!2012080 m!2445063))

(declare-fun m!2445065 () Bool)

(assert (=> b!2012081 m!2445065))

(declare-fun m!2445067 () Bool)

(assert (=> b!2012082 m!2445067))

(assert (=> b!2011449 d!614381))

(declare-fun d!614383 () Bool)

(assert (=> d!614383 (= (inv!29258 (tag!4436 (rule!6195 (h!27500 tokens!598)))) (= (mod (str.len (value!124678 (tag!4436 (rule!6195 (h!27500 tokens!598))))) 2) 0))))

(assert (=> b!2011437 d!614383))

(declare-fun d!614385 () Bool)

(declare-fun res!882498 () Bool)

(declare-fun e!1271386 () Bool)

(assert (=> d!614385 (=> (not res!882498) (not e!1271386))))

(assert (=> d!614385 (= res!882498 (semiInverseModEq!1591 (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598))))))))

(assert (=> d!614385 (= (inv!29262 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) e!1271386)))

(declare-fun b!2012085 () Bool)

(assert (=> b!2012085 (= e!1271386 (equivClasses!1518 (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598))))))))

(assert (= (and d!614385 res!882498) b!2012085))

(declare-fun m!2445069 () Bool)

(assert (=> d!614385 m!2445069))

(declare-fun m!2445071 () Bool)

(assert (=> b!2012085 m!2445071))

(assert (=> b!2011437 d!614385))

(declare-fun b!2012086 () Bool)

(declare-fun e!1271387 () Bool)

(assert (=> b!2012086 (= e!1271387 (inv!15 (value!124679 (h!27500 tokens!598))))))

(declare-fun b!2012087 () Bool)

(declare-fun e!1271389 () Bool)

(assert (=> b!2012087 (= e!1271389 (inv!17 (value!124679 (h!27500 tokens!598))))))

(declare-fun b!2012088 () Bool)

(declare-fun e!1271388 () Bool)

(assert (=> b!2012088 (= e!1271388 (inv!16 (value!124679 (h!27500 tokens!598))))))

(declare-fun b!2012089 () Bool)

(declare-fun res!882499 () Bool)

(assert (=> b!2012089 (=> res!882499 e!1271387)))

(assert (=> b!2012089 (= res!882499 (not ((_ is IntegerValue!12314) (value!124679 (h!27500 tokens!598)))))))

(assert (=> b!2012089 (= e!1271389 e!1271387)))

(declare-fun d!614387 () Bool)

(declare-fun c!325040 () Bool)

(assert (=> d!614387 (= c!325040 ((_ is IntegerValue!12312) (value!124679 (h!27500 tokens!598))))))

(assert (=> d!614387 (= (inv!21 (value!124679 (h!27500 tokens!598))) e!1271388)))

(declare-fun b!2012090 () Bool)

(assert (=> b!2012090 (= e!1271388 e!1271389)))

(declare-fun c!325041 () Bool)

(assert (=> b!2012090 (= c!325041 ((_ is IntegerValue!12313) (value!124679 (h!27500 tokens!598))))))

(assert (= (and d!614387 c!325040) b!2012088))

(assert (= (and d!614387 (not c!325040)) b!2012090))

(assert (= (and b!2012090 c!325041) b!2012087))

(assert (= (and b!2012090 (not c!325041)) b!2012089))

(assert (= (and b!2012089 (not res!882499)) b!2012086))

(declare-fun m!2445073 () Bool)

(assert (=> b!2012086 m!2445073))

(declare-fun m!2445075 () Bool)

(assert (=> b!2012087 m!2445075))

(declare-fun m!2445077 () Bool)

(assert (=> b!2012088 m!2445077))

(assert (=> b!2011456 d!614387))

(declare-fun d!614389 () Bool)

(declare-fun lt!755502 () Bool)

(declare-fun e!1271422 () Bool)

(assert (=> d!614389 (= lt!755502 e!1271422)))

(declare-fun res!882507 () Bool)

(assert (=> d!614389 (=> (not res!882507) (not e!1271422))))

(declare-fun list!9005 (BalanceConc!14586) List!22181)

(declare-datatypes ((tuple2!20766 0))(
  ( (tuple2!20767 (_1!11852 BalanceConc!14586) (_2!11852 BalanceConc!14582)) )
))
(declare-fun lex!1599 (LexerInterface!3581 List!22180 BalanceConc!14582) tuple2!20766)

(assert (=> d!614389 (= res!882507 (= (list!9005 (_1!11852 (lex!1599 thiss!23328 rules!3198 (print!1545 thiss!23328 (singletonSeq!1946 separatorToken!354))))) (list!9005 (singletonSeq!1946 separatorToken!354))))))

(declare-fun e!1271421 () Bool)

(assert (=> d!614389 (= lt!755502 e!1271421)))

(declare-fun res!882508 () Bool)

(assert (=> d!614389 (=> (not res!882508) (not e!1271421))))

(declare-fun lt!755503 () tuple2!20766)

(declare-fun size!17272 (BalanceConc!14586) Int)

(assert (=> d!614389 (= res!882508 (= (size!17272 (_1!11852 lt!755503)) 1))))

(assert (=> d!614389 (= lt!755503 (lex!1599 thiss!23328 rules!3198 (print!1545 thiss!23328 (singletonSeq!1946 separatorToken!354))))))

(assert (=> d!614389 (not (isEmpty!13708 rules!3198))))

(assert (=> d!614389 (= (rulesProduceIndividualToken!1753 thiss!23328 rules!3198 separatorToken!354) lt!755502)))

(declare-fun b!2012140 () Bool)

(declare-fun res!882506 () Bool)

(assert (=> b!2012140 (=> (not res!882506) (not e!1271421))))

(declare-fun apply!5795 (BalanceConc!14586 Int) Token!7488)

(assert (=> b!2012140 (= res!882506 (= (apply!5795 (_1!11852 lt!755503) 0) separatorToken!354))))

(declare-fun b!2012141 () Bool)

(declare-fun isEmpty!13716 (BalanceConc!14582) Bool)

(assert (=> b!2012141 (= e!1271421 (isEmpty!13716 (_2!11852 lt!755503)))))

(declare-fun b!2012142 () Bool)

(assert (=> b!2012142 (= e!1271422 (isEmpty!13716 (_2!11852 (lex!1599 thiss!23328 rules!3198 (print!1545 thiss!23328 (singletonSeq!1946 separatorToken!354))))))))

(assert (= (and d!614389 res!882508) b!2012140))

(assert (= (and b!2012140 res!882506) b!2012141))

(assert (= (and d!614389 res!882507) b!2012142))

(declare-fun m!2445091 () Bool)

(assert (=> d!614389 m!2445091))

(declare-fun m!2445093 () Bool)

(assert (=> d!614389 m!2445093))

(declare-fun m!2445095 () Bool)

(assert (=> d!614389 m!2445095))

(assert (=> d!614389 m!2444293))

(declare-fun m!2445097 () Bool)

(assert (=> d!614389 m!2445097))

(assert (=> d!614389 m!2445091))

(assert (=> d!614389 m!2445097))

(declare-fun m!2445099 () Bool)

(assert (=> d!614389 m!2445099))

(assert (=> d!614389 m!2445097))

(declare-fun m!2445101 () Bool)

(assert (=> d!614389 m!2445101))

(declare-fun m!2445103 () Bool)

(assert (=> b!2012140 m!2445103))

(declare-fun m!2445105 () Bool)

(assert (=> b!2012141 m!2445105))

(assert (=> b!2012142 m!2445097))

(assert (=> b!2012142 m!2445097))

(assert (=> b!2012142 m!2445091))

(assert (=> b!2012142 m!2445091))

(assert (=> b!2012142 m!2445093))

(declare-fun m!2445107 () Bool)

(assert (=> b!2012142 m!2445107))

(assert (=> b!2011446 d!614389))

(declare-fun d!614393 () Bool)

(assert (=> d!614393 (= (inv!29258 (tag!4436 (h!27499 rules!3198))) (= (mod (str.len (value!124678 (tag!4436 (h!27499 rules!3198)))) 2) 0))))

(assert (=> b!2011444 d!614393))

(declare-fun d!614395 () Bool)

(declare-fun res!882509 () Bool)

(declare-fun e!1271423 () Bool)

(assert (=> d!614395 (=> (not res!882509) (not e!1271423))))

(assert (=> d!614395 (= res!882509 (semiInverseModEq!1591 (toChars!5496 (transformation!3968 (h!27499 rules!3198))) (toValue!5637 (transformation!3968 (h!27499 rules!3198)))))))

(assert (=> d!614395 (= (inv!29262 (transformation!3968 (h!27499 rules!3198))) e!1271423)))

(declare-fun b!2012143 () Bool)

(assert (=> b!2012143 (= e!1271423 (equivClasses!1518 (toChars!5496 (transformation!3968 (h!27499 rules!3198))) (toValue!5637 (transformation!3968 (h!27499 rules!3198)))))))

(assert (= (and d!614395 res!882509) b!2012143))

(declare-fun m!2445109 () Bool)

(assert (=> d!614395 m!2445109))

(declare-fun m!2445111 () Bool)

(assert (=> b!2012143 m!2445111))

(assert (=> b!2011444 d!614395))

(declare-fun d!614397 () Bool)

(declare-fun res!882510 () Bool)

(declare-fun e!1271424 () Bool)

(assert (=> d!614397 (=> (not res!882510) (not e!1271424))))

(assert (=> d!614397 (= res!882510 (not (isEmpty!13715 (originalCharacters!4775 separatorToken!354))))))

(assert (=> d!614397 (= (inv!29261 separatorToken!354) e!1271424)))

(declare-fun b!2012144 () Bool)

(declare-fun res!882511 () Bool)

(assert (=> b!2012144 (=> (not res!882511) (not e!1271424))))

(assert (=> b!2012144 (= res!882511 (= (originalCharacters!4775 separatorToken!354) (list!9001 (dynLambda!10890 (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))) (value!124679 separatorToken!354)))))))

(declare-fun b!2012145 () Bool)

(assert (=> b!2012145 (= e!1271424 (= (size!17268 separatorToken!354) (size!17270 (originalCharacters!4775 separatorToken!354))))))

(assert (= (and d!614397 res!882510) b!2012144))

(assert (= (and b!2012144 res!882511) b!2012145))

(declare-fun b_lambda!67255 () Bool)

(assert (=> (not b_lambda!67255) (not b!2012144)))

(assert (=> b!2012144 t!187853))

(declare-fun b_and!159171 () Bool)

(assert (= b_and!159157 (and (=> t!187853 result!150726) b_and!159171)))

(assert (=> b!2012144 t!187855))

(declare-fun b_and!159173 () Bool)

(assert (= b_and!159159 (and (=> t!187855 result!150728) b_and!159173)))

(assert (=> b!2012144 t!187857))

(declare-fun b_and!159175 () Bool)

(assert (= b_and!159161 (and (=> t!187857 result!150730) b_and!159175)))

(declare-fun m!2445113 () Bool)

(assert (=> d!614397 m!2445113))

(assert (=> b!2012144 m!2444937))

(assert (=> b!2012144 m!2444937))

(declare-fun m!2445115 () Bool)

(assert (=> b!2012144 m!2445115))

(declare-fun m!2445117 () Bool)

(assert (=> b!2012145 m!2445117))

(assert (=> start!197736 d!614397))

(declare-fun b!2012146 () Bool)

(declare-fun res!882513 () Bool)

(declare-fun e!1271426 () Bool)

(assert (=> b!2012146 (=> (not res!882513) (not e!1271426))))

(assert (=> b!2012146 (= res!882513 (isEmpty!13715 (tail!3028 lt!755292)))))

(declare-fun b!2012147 () Bool)

(declare-fun e!1271429 () Bool)

(declare-fun e!1271425 () Bool)

(assert (=> b!2012147 (= e!1271429 e!1271425)))

(declare-fun res!882515 () Bool)

(assert (=> b!2012147 (=> res!882515 e!1271425)))

(declare-fun call!123082 () Bool)

(assert (=> b!2012147 (= res!882515 call!123082)))

(declare-fun b!2012148 () Bool)

(assert (=> b!2012148 (= e!1271425 (not (= (head!4546 lt!755292) (c!324908 (regex!3968 lt!755290)))))))

(declare-fun b!2012149 () Bool)

(declare-fun e!1271427 () Bool)

(declare-fun lt!755504 () Bool)

(assert (=> b!2012149 (= e!1271427 (not lt!755504))))

(declare-fun b!2012150 () Bool)

(declare-fun res!882518 () Bool)

(assert (=> b!2012150 (=> (not res!882518) (not e!1271426))))

(assert (=> b!2012150 (= res!882518 (not call!123082))))

(declare-fun b!2012151 () Bool)

(declare-fun e!1271430 () Bool)

(assert (=> b!2012151 (= e!1271430 e!1271429)))

(declare-fun res!882514 () Bool)

(assert (=> b!2012151 (=> (not res!882514) (not e!1271429))))

(assert (=> b!2012151 (= res!882514 (not lt!755504))))

(declare-fun b!2012152 () Bool)

(declare-fun e!1271428 () Bool)

(assert (=> b!2012152 (= e!1271428 (nullable!1635 (regex!3968 lt!755290)))))

(declare-fun bm!123077 () Bool)

(assert (=> bm!123077 (= call!123082 (isEmpty!13715 lt!755292))))

(declare-fun b!2012153 () Bool)

(assert (=> b!2012153 (= e!1271428 (matchR!2659 (derivativeStep!1394 (regex!3968 lt!755290) (head!4546 lt!755292)) (tail!3028 lt!755292)))))

(declare-fun b!2012155 () Bool)

(declare-fun res!882512 () Bool)

(assert (=> b!2012155 (=> res!882512 e!1271425)))

(assert (=> b!2012155 (= res!882512 (not (isEmpty!13715 (tail!3028 lt!755292))))))

(declare-fun b!2012156 () Bool)

(declare-fun e!1271431 () Bool)

(assert (=> b!2012156 (= e!1271431 (= lt!755504 call!123082))))

(declare-fun b!2012157 () Bool)

(declare-fun res!882519 () Bool)

(assert (=> b!2012157 (=> res!882519 e!1271430)))

(assert (=> b!2012157 (= res!882519 (not ((_ is ElementMatch!5393) (regex!3968 lt!755290))))))

(assert (=> b!2012157 (= e!1271427 e!1271430)))

(declare-fun b!2012158 () Bool)

(assert (=> b!2012158 (= e!1271431 e!1271427)))

(declare-fun c!325042 () Bool)

(assert (=> b!2012158 (= c!325042 ((_ is EmptyLang!5393) (regex!3968 lt!755290)))))

(declare-fun b!2012159 () Bool)

(assert (=> b!2012159 (= e!1271426 (= (head!4546 lt!755292) (c!324908 (regex!3968 lt!755290))))))

(declare-fun b!2012154 () Bool)

(declare-fun res!882516 () Bool)

(assert (=> b!2012154 (=> res!882516 e!1271430)))

(assert (=> b!2012154 (= res!882516 e!1271426)))

(declare-fun res!882517 () Bool)

(assert (=> b!2012154 (=> (not res!882517) (not e!1271426))))

(assert (=> b!2012154 (= res!882517 lt!755504)))

(declare-fun d!614399 () Bool)

(assert (=> d!614399 e!1271431))

(declare-fun c!325043 () Bool)

(assert (=> d!614399 (= c!325043 ((_ is EmptyExpr!5393) (regex!3968 lt!755290)))))

(assert (=> d!614399 (= lt!755504 e!1271428)))

(declare-fun c!325044 () Bool)

(assert (=> d!614399 (= c!325044 (isEmpty!13715 lt!755292))))

(assert (=> d!614399 (validRegex!2161 (regex!3968 lt!755290))))

(assert (=> d!614399 (= (matchR!2659 (regex!3968 lt!755290) lt!755292) lt!755504)))

(assert (= (and d!614399 c!325044) b!2012152))

(assert (= (and d!614399 (not c!325044)) b!2012153))

(assert (= (and d!614399 c!325043) b!2012156))

(assert (= (and d!614399 (not c!325043)) b!2012158))

(assert (= (and b!2012158 c!325042) b!2012149))

(assert (= (and b!2012158 (not c!325042)) b!2012157))

(assert (= (and b!2012157 (not res!882519)) b!2012154))

(assert (= (and b!2012154 res!882517) b!2012150))

(assert (= (and b!2012150 res!882518) b!2012146))

(assert (= (and b!2012146 res!882513) b!2012159))

(assert (= (and b!2012154 (not res!882516)) b!2012151))

(assert (= (and b!2012151 res!882514) b!2012147))

(assert (= (and b!2012147 (not res!882515)) b!2012155))

(assert (= (and b!2012155 (not res!882512)) b!2012148))

(assert (= (or b!2012156 b!2012147 b!2012150) bm!123077))

(assert (=> b!2012159 m!2444351))

(assert (=> b!2012148 m!2444351))

(assert (=> b!2012153 m!2444351))

(assert (=> b!2012153 m!2444351))

(declare-fun m!2445119 () Bool)

(assert (=> b!2012153 m!2445119))

(assert (=> b!2012153 m!2445013))

(assert (=> b!2012153 m!2445119))

(assert (=> b!2012153 m!2445013))

(declare-fun m!2445121 () Bool)

(assert (=> b!2012153 m!2445121))

(declare-fun m!2445123 () Bool)

(assert (=> b!2012152 m!2445123))

(assert (=> b!2012146 m!2445013))

(assert (=> b!2012146 m!2445013))

(assert (=> b!2012146 m!2445019))

(assert (=> bm!123077 m!2445021))

(assert (=> d!614399 m!2445021))

(declare-fun m!2445125 () Bool)

(assert (=> d!614399 m!2445125))

(assert (=> b!2012155 m!2445013))

(assert (=> b!2012155 m!2445013))

(assert (=> b!2012155 m!2445019))

(assert (=> b!2011455 d!614399))

(declare-fun d!614401 () Bool)

(assert (=> d!614401 (= (get!6992 lt!755303) (v!26865 lt!755303))))

(assert (=> b!2011455 d!614401))

(declare-fun d!614403 () Bool)

(declare-fun res!882524 () Bool)

(declare-fun e!1271436 () Bool)

(assert (=> d!614403 (=> res!882524 e!1271436)))

(assert (=> d!614403 (= res!882524 ((_ is Nil!22099) tokens!598))))

(assert (=> d!614403 (= (forall!4696 tokens!598 lambda!76129) e!1271436)))

(declare-fun b!2012164 () Bool)

(declare-fun e!1271437 () Bool)

(assert (=> b!2012164 (= e!1271436 e!1271437)))

(declare-fun res!882525 () Bool)

(assert (=> b!2012164 (=> (not res!882525) (not e!1271437))))

(declare-fun dynLambda!10899 (Int Token!7488) Bool)

(assert (=> b!2012164 (= res!882525 (dynLambda!10899 lambda!76129 (h!27500 tokens!598)))))

(declare-fun b!2012165 () Bool)

(assert (=> b!2012165 (= e!1271437 (forall!4696 (t!187790 tokens!598) lambda!76129))))

(assert (= (and d!614403 (not res!882524)) b!2012164))

(assert (= (and b!2012164 res!882525) b!2012165))

(declare-fun b_lambda!67257 () Bool)

(assert (=> (not b_lambda!67257) (not b!2012164)))

(declare-fun m!2445127 () Bool)

(assert (=> b!2012164 m!2445127))

(declare-fun m!2445129 () Bool)

(assert (=> b!2012165 m!2445129))

(assert (=> b!2011445 d!614403))

(declare-fun b!2012176 () Bool)

(declare-fun b_free!56149 () Bool)

(declare-fun b_next!56853 () Bool)

(assert (=> b!2012176 (= b_free!56149 (not b_next!56853))))

(declare-fun t!187883 () Bool)

(declare-fun tb!125825 () Bool)

(assert (=> (and b!2012176 (= (toValue!5637 (transformation!3968 (h!27499 (t!187789 rules!3198)))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187883) tb!125825))

(declare-fun result!150762 () Bool)

(assert (= result!150762 result!150706))

(assert (=> d!614325 t!187883))

(assert (=> d!614333 t!187883))

(declare-fun tb!125827 () Bool)

(declare-fun t!187885 () Bool)

(assert (=> (and b!2012176 (= (toValue!5637 (transformation!3968 (h!27499 (t!187789 rules!3198)))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187885) tb!125827))

(declare-fun result!150764 () Bool)

(assert (= result!150764 result!150720))

(assert (=> d!614333 t!187885))

(declare-fun b_and!159177 () Bool)

(declare-fun tp!600006 () Bool)

(assert (=> b!2012176 (= tp!600006 (and (=> t!187883 result!150762) (=> t!187885 result!150764) b_and!159177))))

(declare-fun b_free!56151 () Bool)

(declare-fun b_next!56855 () Bool)

(assert (=> b!2012176 (= b_free!56151 (not b_next!56855))))

(declare-fun tb!125829 () Bool)

(declare-fun t!187887 () Bool)

(assert (=> (and b!2012176 (= (toChars!5496 (transformation!3968 (h!27499 (t!187789 rules!3198)))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187887) tb!125829))

(declare-fun result!150766 () Bool)

(assert (= result!150766 result!150714))

(assert (=> b!2012023 t!187887))

(declare-fun t!187889 () Bool)

(declare-fun tb!125831 () Bool)

(assert (=> (and b!2012176 (= (toChars!5496 (transformation!3968 (h!27499 (t!187789 rules!3198)))) (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354)))) t!187889) tb!125831))

(declare-fun result!150768 () Bool)

(assert (= result!150768 result!150726))

(assert (=> b!2012144 t!187889))

(assert (=> d!614327 t!187887))

(declare-fun t!187891 () Bool)

(declare-fun tb!125833 () Bool)

(assert (=> (and b!2012176 (= (toChars!5496 (transformation!3968 (h!27499 (t!187789 rules!3198)))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187891) tb!125833))

(declare-fun result!150770 () Bool)

(assert (= result!150770 result!150698))

(assert (=> d!614325 t!187891))

(assert (=> d!614335 t!187889))

(declare-fun b_and!159179 () Bool)

(declare-fun tp!600005 () Bool)

(assert (=> b!2012176 (= tp!600005 (and (=> t!187889 result!150768) (=> t!187891 result!150770) (=> t!187887 result!150766) b_and!159179))))

(declare-fun e!1271447 () Bool)

(assert (=> b!2012176 (= e!1271447 (and tp!600006 tp!600005))))

(declare-fun b!2012175 () Bool)

(declare-fun tp!600007 () Bool)

(declare-fun e!1271448 () Bool)

(assert (=> b!2012175 (= e!1271448 (and tp!600007 (inv!29258 (tag!4436 (h!27499 (t!187789 rules!3198)))) (inv!29262 (transformation!3968 (h!27499 (t!187789 rules!3198)))) e!1271447))))

(declare-fun b!2012174 () Bool)

(declare-fun e!1271449 () Bool)

(declare-fun tp!600008 () Bool)

(assert (=> b!2012174 (= e!1271449 (and e!1271448 tp!600008))))

(assert (=> b!2011452 (= tp!599924 e!1271449)))

(assert (= b!2012175 b!2012176))

(assert (= b!2012174 b!2012175))

(assert (= (and b!2011452 ((_ is Cons!22098) (t!187789 rules!3198))) b!2012174))

(declare-fun m!2445131 () Bool)

(assert (=> b!2012175 m!2445131))

(declare-fun m!2445133 () Bool)

(assert (=> b!2012175 m!2445133))

(declare-fun b!2012190 () Bool)

(declare-fun b_free!56153 () Bool)

(declare-fun b_next!56857 () Bool)

(assert (=> b!2012190 (= b_free!56153 (not b_next!56857))))

(declare-fun t!187893 () Bool)

(declare-fun tb!125835 () Bool)

(assert (=> (and b!2012190 (= (toValue!5637 (transformation!3968 (rule!6195 (h!27500 (t!187790 tokens!598))))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187893) tb!125835))

(declare-fun result!150774 () Bool)

(assert (= result!150774 result!150706))

(assert (=> d!614325 t!187893))

(assert (=> d!614333 t!187893))

(declare-fun t!187895 () Bool)

(declare-fun tb!125837 () Bool)

(assert (=> (and b!2012190 (= (toValue!5637 (transformation!3968 (rule!6195 (h!27500 (t!187790 tokens!598))))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187895) tb!125837))

(declare-fun result!150776 () Bool)

(assert (= result!150776 result!150720))

(assert (=> d!614333 t!187895))

(declare-fun b_and!159181 () Bool)

(declare-fun tp!600020 () Bool)

(assert (=> b!2012190 (= tp!600020 (and (=> t!187893 result!150774) (=> t!187895 result!150776) b_and!159181))))

(declare-fun b_free!56155 () Bool)

(declare-fun b_next!56859 () Bool)

(assert (=> b!2012190 (= b_free!56155 (not b_next!56859))))

(declare-fun t!187897 () Bool)

(declare-fun tb!125839 () Bool)

(assert (=> (and b!2012190 (= (toChars!5496 (transformation!3968 (rule!6195 (h!27500 (t!187790 tokens!598))))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187897) tb!125839))

(declare-fun result!150778 () Bool)

(assert (= result!150778 result!150714))

(assert (=> b!2012023 t!187897))

(declare-fun tb!125841 () Bool)

(declare-fun t!187899 () Bool)

(assert (=> (and b!2012190 (= (toChars!5496 (transformation!3968 (rule!6195 (h!27500 (t!187790 tokens!598))))) (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354)))) t!187899) tb!125841))

(declare-fun result!150780 () Bool)

(assert (= result!150780 result!150726))

(assert (=> b!2012144 t!187899))

(assert (=> d!614327 t!187897))

(declare-fun t!187901 () Bool)

(declare-fun tb!125843 () Bool)

(assert (=> (and b!2012190 (= (toChars!5496 (transformation!3968 (rule!6195 (h!27500 (t!187790 tokens!598))))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598))))) t!187901) tb!125843))

(declare-fun result!150782 () Bool)

(assert (= result!150782 result!150698))

(assert (=> d!614325 t!187901))

(assert (=> d!614335 t!187899))

(declare-fun b_and!159183 () Bool)

(declare-fun tp!600019 () Bool)

(assert (=> b!2012190 (= tp!600019 (and (=> t!187899 result!150780) (=> t!187901 result!150782) (=> t!187897 result!150778) b_and!159183))))

(declare-fun tp!600021 () Bool)

(declare-fun e!1271466 () Bool)

(declare-fun e!1271465 () Bool)

(declare-fun b!2012188 () Bool)

(assert (=> b!2012188 (= e!1271465 (and (inv!21 (value!124679 (h!27500 (t!187790 tokens!598)))) e!1271466 tp!600021))))

(declare-fun tp!600022 () Bool)

(declare-fun b!2012187 () Bool)

(declare-fun e!1271463 () Bool)

(assert (=> b!2012187 (= e!1271463 (and (inv!29261 (h!27500 (t!187790 tokens!598))) e!1271465 tp!600022))))

(assert (=> b!2011453 (= tp!599918 e!1271463)))

(declare-fun e!1271464 () Bool)

(assert (=> b!2012190 (= e!1271464 (and tp!600020 tp!600019))))

(declare-fun b!2012189 () Bool)

(declare-fun tp!600023 () Bool)

(assert (=> b!2012189 (= e!1271466 (and tp!600023 (inv!29258 (tag!4436 (rule!6195 (h!27500 (t!187790 tokens!598))))) (inv!29262 (transformation!3968 (rule!6195 (h!27500 (t!187790 tokens!598))))) e!1271464))))

(assert (= b!2012189 b!2012190))

(assert (= b!2012188 b!2012189))

(assert (= b!2012187 b!2012188))

(assert (= (and b!2011453 ((_ is Cons!22099) (t!187790 tokens!598))) b!2012187))

(declare-fun m!2445135 () Bool)

(assert (=> b!2012188 m!2445135))

(declare-fun m!2445137 () Bool)

(assert (=> b!2012187 m!2445137))

(declare-fun m!2445139 () Bool)

(assert (=> b!2012189 m!2445139))

(declare-fun m!2445141 () Bool)

(assert (=> b!2012189 m!2445141))

(declare-fun b!2012201 () Bool)

(declare-fun e!1271470 () Bool)

(declare-fun tp_is_empty!9189 () Bool)

(assert (=> b!2012201 (= e!1271470 tp_is_empty!9189)))

(declare-fun b!2012204 () Bool)

(declare-fun tp!600038 () Bool)

(declare-fun tp!600035 () Bool)

(assert (=> b!2012204 (= e!1271470 (and tp!600038 tp!600035))))

(declare-fun b!2012203 () Bool)

(declare-fun tp!600036 () Bool)

(assert (=> b!2012203 (= e!1271470 tp!600036)))

(assert (=> b!2011441 (= tp!599930 e!1271470)))

(declare-fun b!2012202 () Bool)

(declare-fun tp!600034 () Bool)

(declare-fun tp!600037 () Bool)

(assert (=> b!2012202 (= e!1271470 (and tp!600034 tp!600037))))

(assert (= (and b!2011441 ((_ is ElementMatch!5393) (regex!3968 (rule!6195 separatorToken!354)))) b!2012201))

(assert (= (and b!2011441 ((_ is Concat!9498) (regex!3968 (rule!6195 separatorToken!354)))) b!2012202))

(assert (= (and b!2011441 ((_ is Star!5393) (regex!3968 (rule!6195 separatorToken!354)))) b!2012203))

(assert (= (and b!2011441 ((_ is Union!5393) (regex!3968 (rule!6195 separatorToken!354)))) b!2012204))

(declare-fun b!2012209 () Bool)

(declare-fun e!1271473 () Bool)

(declare-fun tp!600041 () Bool)

(assert (=> b!2012209 (= e!1271473 (and tp_is_empty!9189 tp!600041))))

(assert (=> b!2011449 (= tp!599923 e!1271473)))

(assert (= (and b!2011449 ((_ is Cons!22097) (originalCharacters!4775 separatorToken!354))) b!2012209))

(declare-fun b!2012210 () Bool)

(declare-fun e!1271474 () Bool)

(assert (=> b!2012210 (= e!1271474 tp_is_empty!9189)))

(declare-fun b!2012213 () Bool)

(declare-fun tp!600046 () Bool)

(declare-fun tp!600043 () Bool)

(assert (=> b!2012213 (= e!1271474 (and tp!600046 tp!600043))))

(declare-fun b!2012212 () Bool)

(declare-fun tp!600044 () Bool)

(assert (=> b!2012212 (= e!1271474 tp!600044)))

(assert (=> b!2011437 (= tp!599922 e!1271474)))

(declare-fun b!2012211 () Bool)

(declare-fun tp!600042 () Bool)

(declare-fun tp!600045 () Bool)

(assert (=> b!2012211 (= e!1271474 (and tp!600042 tp!600045))))

(assert (= (and b!2011437 ((_ is ElementMatch!5393) (regex!3968 (rule!6195 (h!27500 tokens!598))))) b!2012210))

(assert (= (and b!2011437 ((_ is Concat!9498) (regex!3968 (rule!6195 (h!27500 tokens!598))))) b!2012211))

(assert (= (and b!2011437 ((_ is Star!5393) (regex!3968 (rule!6195 (h!27500 tokens!598))))) b!2012212))

(assert (= (and b!2011437 ((_ is Union!5393) (regex!3968 (rule!6195 (h!27500 tokens!598))))) b!2012213))

(declare-fun b!2012214 () Bool)

(declare-fun e!1271475 () Bool)

(declare-fun tp!600047 () Bool)

(assert (=> b!2012214 (= e!1271475 (and tp_is_empty!9189 tp!600047))))

(assert (=> b!2011456 (= tp!599926 e!1271475)))

(assert (= (and b!2011456 ((_ is Cons!22097) (originalCharacters!4775 (h!27500 tokens!598)))) b!2012214))

(declare-fun b!2012215 () Bool)

(declare-fun e!1271476 () Bool)

(assert (=> b!2012215 (= e!1271476 tp_is_empty!9189)))

(declare-fun b!2012218 () Bool)

(declare-fun tp!600052 () Bool)

(declare-fun tp!600049 () Bool)

(assert (=> b!2012218 (= e!1271476 (and tp!600052 tp!600049))))

(declare-fun b!2012217 () Bool)

(declare-fun tp!600050 () Bool)

(assert (=> b!2012217 (= e!1271476 tp!600050)))

(assert (=> b!2011444 (= tp!599929 e!1271476)))

(declare-fun b!2012216 () Bool)

(declare-fun tp!600048 () Bool)

(declare-fun tp!600051 () Bool)

(assert (=> b!2012216 (= e!1271476 (and tp!600048 tp!600051))))

(assert (= (and b!2011444 ((_ is ElementMatch!5393) (regex!3968 (h!27499 rules!3198)))) b!2012215))

(assert (= (and b!2011444 ((_ is Concat!9498) (regex!3968 (h!27499 rules!3198)))) b!2012216))

(assert (= (and b!2011444 ((_ is Star!5393) (regex!3968 (h!27499 rules!3198)))) b!2012217))

(assert (= (and b!2011444 ((_ is Union!5393) (regex!3968 (h!27499 rules!3198)))) b!2012218))

(declare-fun b_lambda!67259 () Bool)

(assert (= b_lambda!67257 (or b!2011445 b_lambda!67259)))

(declare-fun bs!419840 () Bool)

(declare-fun d!614405 () Bool)

(assert (= bs!419840 (and d!614405 b!2011445)))

(assert (=> bs!419840 (= (dynLambda!10899 lambda!76129 (h!27500 tokens!598)) (not (isSeparator!3968 (rule!6195 (h!27500 tokens!598)))))))

(assert (=> b!2012164 d!614405))

(declare-fun b_lambda!67261 () Bool)

(assert (= b_lambda!67231 (or (and b!2012190 b_free!56153 (= (toValue!5637 (transformation!3968 (rule!6195 (h!27500 (t!187790 tokens!598))))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2011440 b_free!56137) (and b!2011448 b_free!56129 (= (toValue!5637 (transformation!3968 (h!27499 rules!3198))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2011434 b_free!56133 (= (toValue!5637 (transformation!3968 (rule!6195 separatorToken!354))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2012176 b_free!56149 (= (toValue!5637 (transformation!3968 (h!27499 (t!187789 rules!3198)))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) b_lambda!67261)))

(declare-fun b_lambda!67263 () Bool)

(assert (= b_lambda!67233 (or (and b!2011448 b_free!56131 (= (toChars!5496 (transformation!3968 (h!27499 rules!3198))) (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))))) (and b!2012176 b_free!56151 (= (toChars!5496 (transformation!3968 (h!27499 (t!187789 rules!3198)))) (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))))) (and b!2011434 b_free!56135) (and b!2012190 b_free!56155 (= (toChars!5496 (transformation!3968 (rule!6195 (h!27500 (t!187790 tokens!598))))) (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))))) (and b!2011440 b_free!56139 (= (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))))) b_lambda!67263)))

(declare-fun b_lambda!67265 () Bool)

(assert (= b_lambda!67223 (or (and b!2012176 b_free!56151 (= (toChars!5496 (transformation!3968 (h!27499 (t!187789 rules!3198)))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2011448 b_free!56131 (= (toChars!5496 (transformation!3968 (h!27499 rules!3198))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2011440 b_free!56139) (and b!2012190 b_free!56155 (= (toChars!5496 (transformation!3968 (rule!6195 (h!27500 (t!187790 tokens!598))))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2011434 b_free!56135 (= (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) b_lambda!67265)))

(declare-fun b_lambda!67267 () Bool)

(assert (= b_lambda!67235 (or (and b!2012176 b_free!56151 (= (toChars!5496 (transformation!3968 (h!27499 (t!187789 rules!3198)))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2011448 b_free!56131 (= (toChars!5496 (transformation!3968 (h!27499 rules!3198))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2011440 b_free!56139) (and b!2012190 b_free!56155 (= (toChars!5496 (transformation!3968 (rule!6195 (h!27500 (t!187790 tokens!598))))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2011434 b_free!56135 (= (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) b_lambda!67267)))

(declare-fun b_lambda!67269 () Bool)

(assert (= b_lambda!67227 (or (and b!2012176 b_free!56151 (= (toChars!5496 (transformation!3968 (h!27499 (t!187789 rules!3198)))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2011448 b_free!56131 (= (toChars!5496 (transformation!3968 (h!27499 rules!3198))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2011440 b_free!56139) (and b!2012190 b_free!56155 (= (toChars!5496 (transformation!3968 (rule!6195 (h!27500 (t!187790 tokens!598))))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2011434 b_free!56135 (= (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))) (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) b_lambda!67269)))

(declare-fun b_lambda!67271 () Bool)

(assert (= b_lambda!67229 (or (and b!2012190 b_free!56153 (= (toValue!5637 (transformation!3968 (rule!6195 (h!27500 (t!187790 tokens!598))))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2011440 b_free!56137) (and b!2011448 b_free!56129 (= (toValue!5637 (transformation!3968 (h!27499 rules!3198))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2011434 b_free!56133 (= (toValue!5637 (transformation!3968 (rule!6195 separatorToken!354))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2012176 b_free!56149 (= (toValue!5637 (transformation!3968 (h!27499 (t!187789 rules!3198)))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) b_lambda!67271)))

(declare-fun b_lambda!67273 () Bool)

(assert (= b_lambda!67255 (or (and b!2011448 b_free!56131 (= (toChars!5496 (transformation!3968 (h!27499 rules!3198))) (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))))) (and b!2012176 b_free!56151 (= (toChars!5496 (transformation!3968 (h!27499 (t!187789 rules!3198)))) (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))))) (and b!2011434 b_free!56135) (and b!2012190 b_free!56155 (= (toChars!5496 (transformation!3968 (rule!6195 (h!27500 (t!187790 tokens!598))))) (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))))) (and b!2011440 b_free!56139 (= (toChars!5496 (transformation!3968 (rule!6195 (h!27500 tokens!598)))) (toChars!5496 (transformation!3968 (rule!6195 separatorToken!354))))) b_lambda!67273)))

(declare-fun b_lambda!67275 () Bool)

(assert (= b_lambda!67225 (or (and b!2012190 b_free!56153 (= (toValue!5637 (transformation!3968 (rule!6195 (h!27500 (t!187790 tokens!598))))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2011440 b_free!56137) (and b!2011448 b_free!56129 (= (toValue!5637 (transformation!3968 (h!27499 rules!3198))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2011434 b_free!56133 (= (toValue!5637 (transformation!3968 (rule!6195 separatorToken!354))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) (and b!2012176 b_free!56149 (= (toValue!5637 (transformation!3968 (h!27499 (t!187789 rules!3198)))) (toValue!5637 (transformation!3968 (rule!6195 (h!27500 tokens!598)))))) b_lambda!67275)))

(check-sat b_and!159149 (not bm!123058) (not b!2012014) (not b!2011811) (not d!614345) (not b!2011708) (not b!2011661) (not b!2012141) (not b_lambda!67267) (not b_next!56837) (not b!2012054) (not d!614363) (not d!614395) (not d!614347) b_and!159145 (not bm!123075) (not b!2012204) (not b!2012081) (not d!614385) (not b!2012034) (not d!614265) (not d!614333) (not d!614361) (not b_next!56853) (not b_next!56839) (not b!2011820) (not b!2012007) (not b!2012152) (not b_next!56841) (not d!614329) (not b!2012025) (not b_lambda!67275) (not b!2011819) (not b!2012212) (not b!2011817) (not tb!125793) (not b!2012217) (not bm!123077) (not b!2011697) (not d!614357) (not b!2011956) (not b!2011698) (not b_next!56843) (not b_next!56855) b_and!159177 (not b!2012048) (not bm!123027) (not b!2011671) (not d!614295) (not b!2011810) b_and!159147 (not d!614331) (not b!2012188) (not b!2012024) (not b!2012144) (not b_lambda!67263) (not b!2012214) b_and!159183 (not b!2011966) (not b!2011701) (not d!614351) (not b!2012202) (not d!614297) (not b!2011822) (not b_next!56857) (not d!614399) (not b!2011969) (not b!2011976) (not b_lambda!67269) (not b!2012005) (not b!2012146) (not b!2011897) (not b!2011808) (not b!2011886) (not b!2012211) (not b!2012086) (not b!2012145) (not d!614299) (not d!614359) (not b!2012011) (not b!2011887) (not d!614257) (not b!2012187) (not b_next!56835) (not b!2012140) (not b_lambda!67265) (not d!614259) (not b!2012148) b_and!159179 (not bm!123056) (not b!2012038) (not d!614319) (not b!2011874) (not b!2012031) (not b!2011695) (not d!614323) (not b!2011821) (not b!2011922) (not b!2012216) (not b!2011707) (not b!2012153) (not b!2012087) (not d!614339) (not b!2011898) (not b!2011878) (not b!2011700) (not b!2012023) (not b!2011925) (not b!2011968) (not b!2011959) (not b!2011812) (not b_lambda!67259) (not b!2011702) (not b!2011958) (not b!2011879) (not d!614263) (not b_lambda!67273) tp_is_empty!9189 (not d!614325) (not bm!123070) (not b!2011824) (not b!2011921) (not d!614335) (not b!2012175) (not b_lambda!67261) (not b_next!56833) (not d!614337) (not tb!125799) (not d!614327) b_and!159181 (not b!2012041) (not b!2012018) (not bm!123071) (not b!2012143) (not b!2012085) (not b!2012027) (not d!614353) (not b!2011882) (not bm!123059) (not tb!125775) (not d!614365) (not b!2012142) b_and!159173 (not d!614377) (not b_next!56859) (not d!614349) (not bm!123072) (not b!2011972) (not b!2012053) (not d!614371) (not b!2011813) (not bm!123076) (not b!2011973) (not tb!125781) (not tb!125787) (not b!2012155) (not b!2011662) (not b!2012012) (not b_lambda!67271) (not b!2011912) (not b!2011909) (not b!2011924) (not bm!123055) (not b!2012082) (not d!614389) (not d!614261) (not b!2012213) (not b!2011920) (not b!2012080) (not b!2012174) (not b!2012159) (not b!2011816) (not b!2012088) b_and!159175 (not b!2012165) (not d!614397) (not d!614355) (not b!2011694) (not b!2012203) (not b!2011699) (not d!614205) (not b!2012209) (not b!2012032) (not b!2012218) (not b!2012189) (not b!2011823) b_and!159171)
(check-sat (not b_next!56837) b_and!159145 (not b_next!56841) (not b_next!56857) (not b_next!56835) b_and!159179 b_and!159149 b_and!159175 b_and!159171 (not b_next!56853) (not b_next!56839) (not b_next!56843) (not b_next!56855) b_and!159177 b_and!159147 b_and!159183 (not b_next!56833) b_and!159181 b_and!159173 (not b_next!56859))
