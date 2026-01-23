; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189680 () Bool)

(assert start!189680)

(declare-fun b!1893236 () Bool)

(declare-fun b_free!52737 () Bool)

(declare-fun b_next!53441 () Bool)

(assert (=> b!1893236 (= b_free!52737 (not b_next!53441))))

(declare-fun tp!539923 () Bool)

(declare-fun b_and!145671 () Bool)

(assert (=> b!1893236 (= tp!539923 b_and!145671)))

(declare-fun b_free!52739 () Bool)

(declare-fun b_next!53443 () Bool)

(assert (=> b!1893236 (= b_free!52739 (not b_next!53443))))

(declare-fun tp!539918 () Bool)

(declare-fun b_and!145673 () Bool)

(assert (=> b!1893236 (= tp!539918 b_and!145673)))

(declare-fun b!1893246 () Bool)

(declare-fun b_free!52741 () Bool)

(declare-fun b_next!53445 () Bool)

(assert (=> b!1893246 (= b_free!52741 (not b_next!53445))))

(declare-fun tp!539919 () Bool)

(declare-fun b_and!145675 () Bool)

(assert (=> b!1893246 (= tp!539919 b_and!145675)))

(declare-fun b_free!52743 () Bool)

(declare-fun b_next!53447 () Bool)

(assert (=> b!1893246 (= b_free!52743 (not b_next!53447))))

(declare-fun tp!539922 () Bool)

(declare-fun b_and!145677 () Bool)

(assert (=> b!1893246 (= tp!539922 b_and!145677)))

(declare-fun b!1893251 () Bool)

(declare-fun b_free!52745 () Bool)

(declare-fun b_next!53449 () Bool)

(assert (=> b!1893251 (= b_free!52745 (not b_next!53449))))

(declare-fun tp!539917 () Bool)

(declare-fun b_and!145679 () Bool)

(assert (=> b!1893251 (= tp!539917 b_and!145679)))

(declare-fun b_free!52747 () Bool)

(declare-fun b_next!53451 () Bool)

(assert (=> b!1893251 (= b_free!52747 (not b_next!53451))))

(declare-fun tp!539916 () Bool)

(declare-fun b_and!145681 () Bool)

(assert (=> b!1893251 (= tp!539916 b_and!145681)))

(declare-fun e!1208519 () Bool)

(declare-fun tp!539926 () Bool)

(declare-fun e!1208527 () Bool)

(declare-datatypes ((List!21288 0))(
  ( (Nil!21206) (Cons!21206 (h!26607 (_ BitVec 16)) (t!175803 List!21288)) )
))
(declare-datatypes ((TokenValue!3898 0))(
  ( (FloatLiteralValue!7796 (text!27731 List!21288)) (TokenValueExt!3897 (__x!13294 Int)) (Broken!19490 (value!118782 List!21288)) (Object!3979) (End!3898) (Def!3898) (Underscore!3898) (Match!3898) (Else!3898) (Error!3898) (Case!3898) (If!3898) (Extends!3898) (Abstract!3898) (Class!3898) (Val!3898) (DelimiterValue!7796 (del!3958 List!21288)) (KeywordValue!3904 (value!118783 List!21288)) (CommentValue!7796 (value!118784 List!21288)) (WhitespaceValue!7796 (value!118785 List!21288)) (IndentationValue!3898 (value!118786 List!21288)) (String!24607) (Int32!3898) (Broken!19491 (value!118787 List!21288)) (Boolean!3899) (Unit!35581) (OperatorValue!3901 (op!3958 List!21288)) (IdentifierValue!7796 (value!118788 List!21288)) (IdentifierValue!7797 (value!118789 List!21288)) (WhitespaceValue!7797 (value!118790 List!21288)) (True!7796) (False!7796) (Broken!19492 (value!118791 List!21288)) (Broken!19493 (value!118792 List!21288)) (True!7797) (RightBrace!3898) (RightBracket!3898) (Colon!3898) (Null!3898) (Comma!3898) (LeftBracket!3898) (False!7797) (LeftBrace!3898) (ImaginaryLiteralValue!3898 (text!27732 List!21288)) (StringLiteralValue!11694 (value!118793 List!21288)) (EOFValue!3898 (value!118794 List!21288)) (IdentValue!3898 (value!118795 List!21288)) (DelimiterValue!7797 (value!118796 List!21288)) (DedentValue!3898 (value!118797 List!21288)) (NewLineValue!3898 (value!118798 List!21288)) (IntegerValue!11694 (value!118799 (_ BitVec 32)) (text!27733 List!21288)) (IntegerValue!11695 (value!118800 Int) (text!27734 List!21288)) (Times!3898) (Or!3898) (Equal!3898) (Minus!3898) (Broken!19494 (value!118801 List!21288)) (And!3898) (Div!3898) (LessEqual!3898) (Mod!3898) (Concat!9085) (Not!3898) (Plus!3898) (SpaceValue!3898 (value!118802 List!21288)) (IntegerValue!11696 (value!118803 Int) (text!27735 List!21288)) (StringLiteralValue!11695 (text!27736 List!21288)) (FloatLiteralValue!7797 (text!27737 List!21288)) (BytesLiteralValue!3898 (value!118804 List!21288)) (CommentValue!7797 (value!118805 List!21288)) (StringLiteralValue!11696 (value!118806 List!21288)) (ErrorTokenValue!3898 (msg!3959 List!21288)) )
))
(declare-datatypes ((String!24608 0))(
  ( (String!24609 (value!118807 String)) )
))
(declare-datatypes ((C!10520 0))(
  ( (C!10521 (val!6212 Int)) )
))
(declare-datatypes ((List!21289 0))(
  ( (Nil!21207) (Cons!21207 (h!26608 C!10520) (t!175804 List!21289)) )
))
(declare-datatypes ((IArray!14127 0))(
  ( (IArray!14128 (innerList!7121 List!21289)) )
))
(declare-datatypes ((Conc!7061 0))(
  ( (Node!7061 (left!17020 Conc!7061) (right!17350 Conc!7061) (csize!14352 Int) (cheight!7272 Int)) (Leaf!10405 (xs!9955 IArray!14127) (csize!14353 Int)) (Empty!7061) )
))
(declare-datatypes ((BalanceConc!13938 0))(
  ( (BalanceConc!13939 (c!308989 Conc!7061)) )
))
(declare-datatypes ((TokenValueInjection!7380 0))(
  ( (TokenValueInjection!7381 (toValue!5371 Int) (toChars!5230 Int)) )
))
(declare-datatypes ((Regex!5187 0))(
  ( (ElementMatch!5187 (c!308990 C!10520)) (Concat!9086 (regOne!10886 Regex!5187) (regTwo!10886 Regex!5187)) (EmptyExpr!5187) (Star!5187 (reg!5516 Regex!5187)) (EmptyLang!5187) (Union!5187 (regOne!10887 Regex!5187) (regTwo!10887 Regex!5187)) )
))
(declare-datatypes ((Rule!7324 0))(
  ( (Rule!7325 (regex!3762 Regex!5187) (tag!4176 String!24608) (isSeparator!3762 Bool) (transformation!3762 TokenValueInjection!7380)) )
))
(declare-datatypes ((List!21290 0))(
  ( (Nil!21208) (Cons!21208 (h!26609 Rule!7324) (t!175805 List!21290)) )
))
(declare-fun rules!3198 () List!21290)

(declare-fun b!1893234 () Bool)

(declare-fun inv!28296 (String!24608) Bool)

(declare-fun inv!28299 (TokenValueInjection!7380) Bool)

(assert (=> b!1893234 (= e!1208527 (and tp!539926 (inv!28296 (tag!4176 (h!26609 rules!3198))) (inv!28299 (transformation!3762 (h!26609 rules!3198))) e!1208519))))

(declare-fun e!1208525 () Bool)

(declare-fun e!1208522 () Bool)

(declare-fun tp!539925 () Bool)

(declare-fun b!1893235 () Bool)

(declare-datatypes ((Token!7076 0))(
  ( (Token!7077 (value!118808 TokenValue!3898) (rule!5955 Rule!7324) (size!16816 Int) (originalCharacters!4569 List!21289)) )
))
(declare-datatypes ((List!21291 0))(
  ( (Nil!21209) (Cons!21209 (h!26610 Token!7076) (t!175806 List!21291)) )
))
(declare-fun tokens!598 () List!21291)

(declare-fun inv!28300 (Token!7076) Bool)

(assert (=> b!1893235 (= e!1208522 (and (inv!28300 (h!26610 tokens!598)) e!1208525 tp!539925))))

(declare-fun e!1208517 () Bool)

(assert (=> b!1893236 (= e!1208517 (and tp!539923 tp!539918))))

(declare-fun b!1893237 () Bool)

(declare-fun res!845090 () Bool)

(declare-fun e!1208526 () Bool)

(assert (=> b!1893237 (=> (not res!845090) (not e!1208526))))

(declare-fun sepAndNonSepRulesDisjointChars!860 (List!21290 List!21290) Bool)

(assert (=> b!1893237 (= res!845090 (sepAndNonSepRulesDisjointChars!860 rules!3198 rules!3198))))

(declare-fun b!1893238 () Bool)

(declare-fun e!1208521 () Bool)

(declare-fun tp!539920 () Bool)

(assert (=> b!1893238 (= e!1208521 (and e!1208527 tp!539920))))

(declare-fun e!1208518 () Bool)

(declare-fun tp!539924 () Bool)

(declare-fun b!1893239 () Bool)

(declare-fun inv!21 (TokenValue!3898) Bool)

(assert (=> b!1893239 (= e!1208525 (and (inv!21 (value!118808 (h!26610 tokens!598))) e!1208518 tp!539924))))

(declare-fun e!1208513 () Bool)

(declare-fun tp!539927 () Bool)

(declare-fun b!1893240 () Bool)

(assert (=> b!1893240 (= e!1208518 (and tp!539927 (inv!28296 (tag!4176 (rule!5955 (h!26610 tokens!598)))) (inv!28299 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) e!1208513))))

(declare-fun res!845087 () Bool)

(assert (=> start!189680 (=> (not res!845087) (not e!1208526))))

(declare-datatypes ((LexerInterface!3375 0))(
  ( (LexerInterfaceExt!3372 (__x!13295 Int)) (Lexer!3373) )
))
(declare-fun thiss!23328 () LexerInterface!3375)

(get-info :version)

(assert (=> start!189680 (= res!845087 ((_ is Lexer!3373) thiss!23328))))

(assert (=> start!189680 e!1208526))

(assert (=> start!189680 true))

(assert (=> start!189680 e!1208521))

(assert (=> start!189680 e!1208522))

(declare-fun separatorToken!354 () Token!7076)

(declare-fun e!1208528 () Bool)

(assert (=> start!189680 (and (inv!28300 separatorToken!354) e!1208528)))

(declare-fun b!1893241 () Bool)

(declare-fun res!845092 () Bool)

(assert (=> b!1893241 (=> (not res!845092) (not e!1208526))))

(declare-fun lambda!73939 () Int)

(declare-fun forall!4434 (List!21291 Int) Bool)

(assert (=> b!1893241 (= res!845092 (forall!4434 tokens!598 lambda!73939))))

(declare-fun b!1893242 () Bool)

(declare-fun res!845093 () Bool)

(assert (=> b!1893242 (=> (not res!845093) (not e!1208526))))

(assert (=> b!1893242 (= res!845093 (isSeparator!3762 (rule!5955 separatorToken!354)))))

(declare-fun b!1893243 () Bool)

(declare-fun res!845091 () Bool)

(assert (=> b!1893243 (=> (not res!845091) (not e!1208526))))

(assert (=> b!1893243 (= res!845091 ((_ is Cons!21209) tokens!598))))

(declare-fun b!1893244 () Bool)

(declare-fun res!845088 () Bool)

(assert (=> b!1893244 (=> (not res!845088) (not e!1208526))))

(declare-fun rulesInvariant!2982 (LexerInterface!3375 List!21290) Bool)

(assert (=> b!1893244 (= res!845088 (rulesInvariant!2982 thiss!23328 rules!3198))))

(declare-fun b!1893245 () Bool)

(declare-fun res!845095 () Bool)

(assert (=> b!1893245 (=> (not res!845095) (not e!1208526))))

(declare-fun isEmpty!13018 (List!21290) Bool)

(assert (=> b!1893245 (= res!845095 (not (isEmpty!13018 rules!3198)))))

(assert (=> b!1893246 (= e!1208513 (and tp!539919 tp!539922))))

(declare-fun e!1208523 () Bool)

(declare-fun b!1893247 () Bool)

(declare-fun tp!539928 () Bool)

(assert (=> b!1893247 (= e!1208528 (and (inv!21 (value!118808 separatorToken!354)) e!1208523 tp!539928))))

(declare-fun tp!539921 () Bool)

(declare-fun b!1893248 () Bool)

(assert (=> b!1893248 (= e!1208523 (and tp!539921 (inv!28296 (tag!4176 (rule!5955 separatorToken!354))) (inv!28299 (transformation!3762 (rule!5955 separatorToken!354))) e!1208517))))

(declare-fun b!1893249 () Bool)

(declare-fun lt!724619 () BalanceConc!13938)

(declare-fun list!8618 (BalanceConc!13938) List!21289)

(declare-fun seqFromList!2634 (List!21289) BalanceConc!13938)

(assert (=> b!1893249 (= e!1208526 (not (= (list!8618 lt!724619) (list!8618 (seqFromList!2634 (originalCharacters!4569 (h!26610 tokens!598)))))))))

(declare-datatypes ((Unit!35582 0))(
  ( (Unit!35583) )
))
(declare-fun lt!724620 () Unit!35582)

(declare-fun lemmaSemiInverse!741 (TokenValueInjection!7380 BalanceConc!13938) Unit!35582)

(assert (=> b!1893249 (= lt!724620 (lemmaSemiInverse!741 (transformation!3762 (rule!5955 (h!26610 tokens!598))) lt!724619))))

(declare-fun charsOf!2318 (Token!7076) BalanceConc!13938)

(assert (=> b!1893249 (= lt!724619 (charsOf!2318 (h!26610 tokens!598)))))

(declare-fun b!1893250 () Bool)

(declare-fun res!845089 () Bool)

(assert (=> b!1893250 (=> (not res!845089) (not e!1208526))))

(declare-fun rulesProduceIndividualToken!1547 (LexerInterface!3375 List!21290 Token!7076) Bool)

(assert (=> b!1893250 (= res!845089 (rulesProduceIndividualToken!1547 thiss!23328 rules!3198 separatorToken!354))))

(assert (=> b!1893251 (= e!1208519 (and tp!539917 tp!539916))))

(declare-fun b!1893252 () Bool)

(declare-fun res!845094 () Bool)

(assert (=> b!1893252 (=> (not res!845094) (not e!1208526))))

(declare-fun rulesProduceEachTokenIndividuallyList!1106 (LexerInterface!3375 List!21290 List!21291) Bool)

(assert (=> b!1893252 (= res!845094 (rulesProduceEachTokenIndividuallyList!1106 thiss!23328 rules!3198 tokens!598))))

(assert (= (and start!189680 res!845087) b!1893245))

(assert (= (and b!1893245 res!845095) b!1893244))

(assert (= (and b!1893244 res!845088) b!1893252))

(assert (= (and b!1893252 res!845094) b!1893250))

(assert (= (and b!1893250 res!845089) b!1893242))

(assert (= (and b!1893242 res!845093) b!1893241))

(assert (= (and b!1893241 res!845092) b!1893237))

(assert (= (and b!1893237 res!845090) b!1893243))

(assert (= (and b!1893243 res!845091) b!1893249))

(assert (= b!1893234 b!1893251))

(assert (= b!1893238 b!1893234))

(assert (= (and start!189680 ((_ is Cons!21208) rules!3198)) b!1893238))

(assert (= b!1893240 b!1893246))

(assert (= b!1893239 b!1893240))

(assert (= b!1893235 b!1893239))

(assert (= (and start!189680 ((_ is Cons!21209) tokens!598)) b!1893235))

(assert (= b!1893248 b!1893236))

(assert (= b!1893247 b!1893248))

(assert (= start!189680 b!1893247))

(declare-fun m!2324725 () Bool)

(assert (=> b!1893240 m!2324725))

(declare-fun m!2324727 () Bool)

(assert (=> b!1893240 m!2324727))

(declare-fun m!2324729 () Bool)

(assert (=> b!1893234 m!2324729))

(declare-fun m!2324731 () Bool)

(assert (=> b!1893234 m!2324731))

(declare-fun m!2324733 () Bool)

(assert (=> b!1893239 m!2324733))

(declare-fun m!2324735 () Bool)

(assert (=> b!1893248 m!2324735))

(declare-fun m!2324737 () Bool)

(assert (=> b!1893248 m!2324737))

(declare-fun m!2324739 () Bool)

(assert (=> b!1893247 m!2324739))

(declare-fun m!2324741 () Bool)

(assert (=> b!1893249 m!2324741))

(assert (=> b!1893249 m!2324741))

(declare-fun m!2324743 () Bool)

(assert (=> b!1893249 m!2324743))

(declare-fun m!2324745 () Bool)

(assert (=> b!1893249 m!2324745))

(declare-fun m!2324747 () Bool)

(assert (=> b!1893249 m!2324747))

(declare-fun m!2324749 () Bool)

(assert (=> b!1893249 m!2324749))

(declare-fun m!2324751 () Bool)

(assert (=> b!1893245 m!2324751))

(declare-fun m!2324753 () Bool)

(assert (=> b!1893237 m!2324753))

(declare-fun m!2324755 () Bool)

(assert (=> start!189680 m!2324755))

(declare-fun m!2324757 () Bool)

(assert (=> b!1893235 m!2324757))

(declare-fun m!2324759 () Bool)

(assert (=> b!1893241 m!2324759))

(declare-fun m!2324761 () Bool)

(assert (=> b!1893250 m!2324761))

(declare-fun m!2324763 () Bool)

(assert (=> b!1893252 m!2324763))

(declare-fun m!2324765 () Bool)

(assert (=> b!1893244 m!2324765))

(check-sat b_and!145679 (not b!1893240) (not b!1893239) (not b_next!53443) b_and!145673 (not b!1893247) (not b_next!53449) (not b!1893241) b_and!145677 (not b!1893237) (not b!1893250) (not b!1893244) (not b!1893235) (not b_next!53445) (not b!1893249) (not b!1893248) (not b!1893234) (not b!1893238) b_and!145681 (not b!1893245) b_and!145675 b_and!145671 (not b!1893252) (not b_next!53441) (not b_next!53447) (not start!189680) (not b_next!53451))
(check-sat b_and!145679 (not b_next!53445) b_and!145681 b_and!145675 (not b_next!53443) b_and!145673 b_and!145671 (not b_next!53449) b_and!145677 (not b_next!53451) (not b_next!53441) (not b_next!53447))
(get-model)

(declare-fun d!579954 () Bool)

(assert (=> d!579954 (= (inv!28296 (tag!4176 (h!26609 rules!3198))) (= (mod (str.len (value!118807 (tag!4176 (h!26609 rules!3198)))) 2) 0))))

(assert (=> b!1893234 d!579954))

(declare-fun d!579956 () Bool)

(declare-fun res!845116 () Bool)

(declare-fun e!1208541 () Bool)

(assert (=> d!579956 (=> (not res!845116) (not e!1208541))))

(declare-fun semiInverseModEq!1525 (Int Int) Bool)

(assert (=> d!579956 (= res!845116 (semiInverseModEq!1525 (toChars!5230 (transformation!3762 (h!26609 rules!3198))) (toValue!5371 (transformation!3762 (h!26609 rules!3198)))))))

(assert (=> d!579956 (= (inv!28299 (transformation!3762 (h!26609 rules!3198))) e!1208541)))

(declare-fun b!1893265 () Bool)

(declare-fun equivClasses!1452 (Int Int) Bool)

(assert (=> b!1893265 (= e!1208541 (equivClasses!1452 (toChars!5230 (transformation!3762 (h!26609 rules!3198))) (toValue!5371 (transformation!3762 (h!26609 rules!3198)))))))

(assert (= (and d!579956 res!845116) b!1893265))

(declare-fun m!2324771 () Bool)

(assert (=> d!579956 m!2324771))

(declare-fun m!2324773 () Bool)

(assert (=> b!1893265 m!2324773))

(assert (=> b!1893234 d!579956))

(declare-fun d!579960 () Bool)

(declare-fun res!845123 () Bool)

(declare-fun e!1208548 () Bool)

(assert (=> d!579960 (=> (not res!845123) (not e!1208548))))

(declare-fun rulesValid!1412 (LexerInterface!3375 List!21290) Bool)

(assert (=> d!579960 (= res!845123 (rulesValid!1412 thiss!23328 rules!3198))))

(assert (=> d!579960 (= (rulesInvariant!2982 thiss!23328 rules!3198) e!1208548)))

(declare-fun b!1893272 () Bool)

(declare-datatypes ((List!21293 0))(
  ( (Nil!21211) (Cons!21211 (h!26612 String!24608) (t!175894 List!21293)) )
))
(declare-fun noDuplicateTag!1410 (LexerInterface!3375 List!21290 List!21293) Bool)

(assert (=> b!1893272 (= e!1208548 (noDuplicateTag!1410 thiss!23328 rules!3198 Nil!21211))))

(assert (= (and d!579960 res!845123) b!1893272))

(declare-fun m!2324779 () Bool)

(assert (=> d!579960 m!2324779))

(declare-fun m!2324781 () Bool)

(assert (=> b!1893272 m!2324781))

(assert (=> b!1893244 d!579960))

(declare-fun d!579966 () Bool)

(declare-fun c!308996 () Bool)

(assert (=> d!579966 (= c!308996 ((_ is IntegerValue!11694) (value!118808 separatorToken!354)))))

(declare-fun e!1208557 () Bool)

(assert (=> d!579966 (= (inv!21 (value!118808 separatorToken!354)) e!1208557)))

(declare-fun b!1893284 () Bool)

(declare-fun e!1208558 () Bool)

(assert (=> b!1893284 (= e!1208557 e!1208558)))

(declare-fun c!308997 () Bool)

(assert (=> b!1893284 (= c!308997 ((_ is IntegerValue!11695) (value!118808 separatorToken!354)))))

(declare-fun b!1893285 () Bool)

(declare-fun e!1208556 () Bool)

(declare-fun inv!15 (TokenValue!3898) Bool)

(assert (=> b!1893285 (= e!1208556 (inv!15 (value!118808 separatorToken!354)))))

(declare-fun b!1893286 () Bool)

(declare-fun res!845127 () Bool)

(assert (=> b!1893286 (=> res!845127 e!1208556)))

(assert (=> b!1893286 (= res!845127 (not ((_ is IntegerValue!11696) (value!118808 separatorToken!354))))))

(assert (=> b!1893286 (= e!1208558 e!1208556)))

(declare-fun b!1893287 () Bool)

(declare-fun inv!17 (TokenValue!3898) Bool)

(assert (=> b!1893287 (= e!1208558 (inv!17 (value!118808 separatorToken!354)))))

(declare-fun b!1893288 () Bool)

(declare-fun inv!16 (TokenValue!3898) Bool)

(assert (=> b!1893288 (= e!1208557 (inv!16 (value!118808 separatorToken!354)))))

(assert (= (and d!579966 c!308996) b!1893288))

(assert (= (and d!579966 (not c!308996)) b!1893284))

(assert (= (and b!1893284 c!308997) b!1893287))

(assert (= (and b!1893284 (not c!308997)) b!1893286))

(assert (= (and b!1893286 (not res!845127)) b!1893285))

(declare-fun m!2324791 () Bool)

(assert (=> b!1893285 m!2324791))

(declare-fun m!2324793 () Bool)

(assert (=> b!1893287 m!2324793))

(declare-fun m!2324795 () Bool)

(assert (=> b!1893288 m!2324795))

(assert (=> b!1893247 d!579966))

(declare-fun d!579974 () Bool)

(declare-fun res!845132 () Bool)

(declare-fun e!1208561 () Bool)

(assert (=> d!579974 (=> (not res!845132) (not e!1208561))))

(declare-fun isEmpty!13021 (List!21289) Bool)

(assert (=> d!579974 (= res!845132 (not (isEmpty!13021 (originalCharacters!4569 separatorToken!354))))))

(assert (=> d!579974 (= (inv!28300 separatorToken!354) e!1208561)))

(declare-fun b!1893293 () Bool)

(declare-fun res!845133 () Bool)

(assert (=> b!1893293 (=> (not res!845133) (not e!1208561))))

(declare-fun dynLambda!10301 (Int TokenValue!3898) BalanceConc!13938)

(assert (=> b!1893293 (= res!845133 (= (originalCharacters!4569 separatorToken!354) (list!8618 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354)))))))

(declare-fun b!1893294 () Bool)

(declare-fun size!16819 (List!21289) Int)

(assert (=> b!1893294 (= e!1208561 (= (size!16816 separatorToken!354) (size!16819 (originalCharacters!4569 separatorToken!354))))))

(assert (= (and d!579974 res!845132) b!1893293))

(assert (= (and b!1893293 res!845133) b!1893294))

(declare-fun b_lambda!62055 () Bool)

(assert (=> (not b_lambda!62055) (not b!1893293)))

(declare-fun t!175808 () Bool)

(declare-fun tb!115141 () Bool)

(assert (=> (and b!1893236 (= (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354)))) t!175808) tb!115141))

(declare-fun b!1893299 () Bool)

(declare-fun e!1208564 () Bool)

(declare-fun tp!539931 () Bool)

(declare-fun inv!28303 (Conc!7061) Bool)

(assert (=> b!1893299 (= e!1208564 (and (inv!28303 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354)))) tp!539931))))

(declare-fun result!139216 () Bool)

(declare-fun inv!28304 (BalanceConc!13938) Bool)

(assert (=> tb!115141 (= result!139216 (and (inv!28304 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354))) e!1208564))))

(assert (= tb!115141 b!1893299))

(declare-fun m!2324797 () Bool)

(assert (=> b!1893299 m!2324797))

(declare-fun m!2324799 () Bool)

(assert (=> tb!115141 m!2324799))

(assert (=> b!1893293 t!175808))

(declare-fun b_and!145683 () Bool)

(assert (= b_and!145673 (and (=> t!175808 result!139216) b_and!145683)))

(declare-fun t!175810 () Bool)

(declare-fun tb!115143 () Bool)

(assert (=> (and b!1893246 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354)))) t!175810) tb!115143))

(declare-fun result!139220 () Bool)

(assert (= result!139220 result!139216))

(assert (=> b!1893293 t!175810))

(declare-fun b_and!145685 () Bool)

(assert (= b_and!145677 (and (=> t!175810 result!139220) b_and!145685)))

(declare-fun t!175812 () Bool)

(declare-fun tb!115145 () Bool)

(assert (=> (and b!1893251 (= (toChars!5230 (transformation!3762 (h!26609 rules!3198))) (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354)))) t!175812) tb!115145))

(declare-fun result!139222 () Bool)

(assert (= result!139222 result!139216))

(assert (=> b!1893293 t!175812))

(declare-fun b_and!145687 () Bool)

(assert (= b_and!145681 (and (=> t!175812 result!139222) b_and!145687)))

(declare-fun m!2324801 () Bool)

(assert (=> d!579974 m!2324801))

(declare-fun m!2324803 () Bool)

(assert (=> b!1893293 m!2324803))

(assert (=> b!1893293 m!2324803))

(declare-fun m!2324805 () Bool)

(assert (=> b!1893293 m!2324805))

(declare-fun m!2324807 () Bool)

(assert (=> b!1893294 m!2324807))

(assert (=> start!189680 d!579974))

(declare-fun d!579976 () Bool)

(declare-fun res!845134 () Bool)

(declare-fun e!1208565 () Bool)

(assert (=> d!579976 (=> (not res!845134) (not e!1208565))))

(assert (=> d!579976 (= res!845134 (not (isEmpty!13021 (originalCharacters!4569 (h!26610 tokens!598)))))))

(assert (=> d!579976 (= (inv!28300 (h!26610 tokens!598)) e!1208565)))

(declare-fun b!1893300 () Bool)

(declare-fun res!845135 () Bool)

(assert (=> b!1893300 (=> (not res!845135) (not e!1208565))))

(assert (=> b!1893300 (= res!845135 (= (originalCharacters!4569 (h!26610 tokens!598)) (list!8618 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598))))))))

(declare-fun b!1893301 () Bool)

(assert (=> b!1893301 (= e!1208565 (= (size!16816 (h!26610 tokens!598)) (size!16819 (originalCharacters!4569 (h!26610 tokens!598)))))))

(assert (= (and d!579976 res!845134) b!1893300))

(assert (= (and b!1893300 res!845135) b!1893301))

(declare-fun b_lambda!62057 () Bool)

(assert (=> (not b_lambda!62057) (not b!1893300)))

(declare-fun t!175814 () Bool)

(declare-fun tb!115147 () Bool)

(assert (=> (and b!1893236 (= (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175814) tb!115147))

(declare-fun b!1893302 () Bool)

(declare-fun e!1208566 () Bool)

(declare-fun tp!539932 () Bool)

(assert (=> b!1893302 (= e!1208566 (and (inv!28303 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598))))) tp!539932))))

(declare-fun result!139224 () Bool)

(assert (=> tb!115147 (= result!139224 (and (inv!28304 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598)))) e!1208566))))

(assert (= tb!115147 b!1893302))

(declare-fun m!2324809 () Bool)

(assert (=> b!1893302 m!2324809))

(declare-fun m!2324811 () Bool)

(assert (=> tb!115147 m!2324811))

(assert (=> b!1893300 t!175814))

(declare-fun b_and!145689 () Bool)

(assert (= b_and!145683 (and (=> t!175814 result!139224) b_and!145689)))

(declare-fun t!175816 () Bool)

(declare-fun tb!115149 () Bool)

(assert (=> (and b!1893246 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175816) tb!115149))

(declare-fun result!139226 () Bool)

(assert (= result!139226 result!139224))

(assert (=> b!1893300 t!175816))

(declare-fun b_and!145691 () Bool)

(assert (= b_and!145685 (and (=> t!175816 result!139226) b_and!145691)))

(declare-fun t!175818 () Bool)

(declare-fun tb!115151 () Bool)

(assert (=> (and b!1893251 (= (toChars!5230 (transformation!3762 (h!26609 rules!3198))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175818) tb!115151))

(declare-fun result!139228 () Bool)

(assert (= result!139228 result!139224))

(assert (=> b!1893300 t!175818))

(declare-fun b_and!145693 () Bool)

(assert (= b_and!145687 (and (=> t!175818 result!139228) b_and!145693)))

(declare-fun m!2324813 () Bool)

(assert (=> d!579976 m!2324813))

(declare-fun m!2324815 () Bool)

(assert (=> b!1893300 m!2324815))

(assert (=> b!1893300 m!2324815))

(declare-fun m!2324817 () Bool)

(assert (=> b!1893300 m!2324817))

(declare-fun m!2324819 () Bool)

(assert (=> b!1893301 m!2324819))

(assert (=> b!1893235 d!579976))

(declare-fun d!579978 () Bool)

(assert (=> d!579978 (= (isEmpty!13018 rules!3198) ((_ is Nil!21208) rules!3198))))

(assert (=> b!1893245 d!579978))

(declare-fun d!579980 () Bool)

(declare-fun c!308998 () Bool)

(assert (=> d!579980 (= c!308998 ((_ is IntegerValue!11694) (value!118808 (h!26610 tokens!598))))))

(declare-fun e!1208568 () Bool)

(assert (=> d!579980 (= (inv!21 (value!118808 (h!26610 tokens!598))) e!1208568)))

(declare-fun b!1893303 () Bool)

(declare-fun e!1208569 () Bool)

(assert (=> b!1893303 (= e!1208568 e!1208569)))

(declare-fun c!308999 () Bool)

(assert (=> b!1893303 (= c!308999 ((_ is IntegerValue!11695) (value!118808 (h!26610 tokens!598))))))

(declare-fun b!1893304 () Bool)

(declare-fun e!1208567 () Bool)

(assert (=> b!1893304 (= e!1208567 (inv!15 (value!118808 (h!26610 tokens!598))))))

(declare-fun b!1893305 () Bool)

(declare-fun res!845136 () Bool)

(assert (=> b!1893305 (=> res!845136 e!1208567)))

(assert (=> b!1893305 (= res!845136 (not ((_ is IntegerValue!11696) (value!118808 (h!26610 tokens!598)))))))

(assert (=> b!1893305 (= e!1208569 e!1208567)))

(declare-fun b!1893306 () Bool)

(assert (=> b!1893306 (= e!1208569 (inv!17 (value!118808 (h!26610 tokens!598))))))

(declare-fun b!1893307 () Bool)

(assert (=> b!1893307 (= e!1208568 (inv!16 (value!118808 (h!26610 tokens!598))))))

(assert (= (and d!579980 c!308998) b!1893307))

(assert (= (and d!579980 (not c!308998)) b!1893303))

(assert (= (and b!1893303 c!308999) b!1893306))

(assert (= (and b!1893303 (not c!308999)) b!1893305))

(assert (= (and b!1893305 (not res!845136)) b!1893304))

(declare-fun m!2324821 () Bool)

(assert (=> b!1893304 m!2324821))

(declare-fun m!2324823 () Bool)

(assert (=> b!1893306 m!2324823))

(declare-fun m!2324825 () Bool)

(assert (=> b!1893307 m!2324825))

(assert (=> b!1893239 d!579980))

(declare-fun d!579982 () Bool)

(declare-fun lt!724627 () Bool)

(declare-fun e!1208574 () Bool)

(assert (=> d!579982 (= lt!724627 e!1208574)))

(declare-fun res!845145 () Bool)

(assert (=> d!579982 (=> (not res!845145) (not e!1208574))))

(declare-datatypes ((IArray!14131 0))(
  ( (IArray!14132 (innerList!7123 List!21291)) )
))
(declare-datatypes ((Conc!7063 0))(
  ( (Node!7063 (left!17026 Conc!7063) (right!17356 Conc!7063) (csize!14356 Int) (cheight!7274 Int)) (Leaf!10407 (xs!9957 IArray!14131) (csize!14357 Int)) (Empty!7063) )
))
(declare-datatypes ((BalanceConc!13942 0))(
  ( (BalanceConc!13943 (c!309010 Conc!7063)) )
))
(declare-fun list!8621 (BalanceConc!13942) List!21291)

(declare-datatypes ((tuple2!20044 0))(
  ( (tuple2!20045 (_1!11491 BalanceConc!13942) (_2!11491 BalanceConc!13938)) )
))
(declare-fun lex!1504 (LexerInterface!3375 List!21290 BalanceConc!13938) tuple2!20044)

(declare-fun print!1433 (LexerInterface!3375 BalanceConc!13942) BalanceConc!13938)

(declare-fun singletonSeq!1831 (Token!7076) BalanceConc!13942)

(assert (=> d!579982 (= res!845145 (= (list!8621 (_1!11491 (lex!1504 thiss!23328 rules!3198 (print!1433 thiss!23328 (singletonSeq!1831 separatorToken!354))))) (list!8621 (singletonSeq!1831 separatorToken!354))))))

(declare-fun e!1208575 () Bool)

(assert (=> d!579982 (= lt!724627 e!1208575)))

(declare-fun res!845144 () Bool)

(assert (=> d!579982 (=> (not res!845144) (not e!1208575))))

(declare-fun lt!724628 () tuple2!20044)

(declare-fun size!16820 (BalanceConc!13942) Int)

(assert (=> d!579982 (= res!845144 (= (size!16820 (_1!11491 lt!724628)) 1))))

(assert (=> d!579982 (= lt!724628 (lex!1504 thiss!23328 rules!3198 (print!1433 thiss!23328 (singletonSeq!1831 separatorToken!354))))))

(assert (=> d!579982 (not (isEmpty!13018 rules!3198))))

(assert (=> d!579982 (= (rulesProduceIndividualToken!1547 thiss!23328 rules!3198 separatorToken!354) lt!724627)))

(declare-fun b!1893314 () Bool)

(declare-fun res!845143 () Bool)

(assert (=> b!1893314 (=> (not res!845143) (not e!1208575))))

(declare-fun apply!5586 (BalanceConc!13942 Int) Token!7076)

(assert (=> b!1893314 (= res!845143 (= (apply!5586 (_1!11491 lt!724628) 0) separatorToken!354))))

(declare-fun b!1893315 () Bool)

(declare-fun isEmpty!13022 (BalanceConc!13938) Bool)

(assert (=> b!1893315 (= e!1208575 (isEmpty!13022 (_2!11491 lt!724628)))))

(declare-fun b!1893316 () Bool)

(assert (=> b!1893316 (= e!1208574 (isEmpty!13022 (_2!11491 (lex!1504 thiss!23328 rules!3198 (print!1433 thiss!23328 (singletonSeq!1831 separatorToken!354))))))))

(assert (= (and d!579982 res!845144) b!1893314))

(assert (= (and b!1893314 res!845143) b!1893315))

(assert (= (and d!579982 res!845145) b!1893316))

(declare-fun m!2324827 () Bool)

(assert (=> d!579982 m!2324827))

(declare-fun m!2324829 () Bool)

(assert (=> d!579982 m!2324829))

(assert (=> d!579982 m!2324751))

(declare-fun m!2324831 () Bool)

(assert (=> d!579982 m!2324831))

(declare-fun m!2324833 () Bool)

(assert (=> d!579982 m!2324833))

(declare-fun m!2324835 () Bool)

(assert (=> d!579982 m!2324835))

(declare-fun m!2324837 () Bool)

(assert (=> d!579982 m!2324837))

(assert (=> d!579982 m!2324831))

(assert (=> d!579982 m!2324831))

(assert (=> d!579982 m!2324827))

(declare-fun m!2324839 () Bool)

(assert (=> b!1893314 m!2324839))

(declare-fun m!2324841 () Bool)

(assert (=> b!1893315 m!2324841))

(assert (=> b!1893316 m!2324831))

(assert (=> b!1893316 m!2324831))

(assert (=> b!1893316 m!2324827))

(assert (=> b!1893316 m!2324827))

(assert (=> b!1893316 m!2324829))

(declare-fun m!2324843 () Bool)

(assert (=> b!1893316 m!2324843))

(assert (=> b!1893250 d!579982))

(declare-fun d!579984 () Bool)

(declare-fun list!8622 (Conc!7061) List!21289)

(assert (=> d!579984 (= (list!8618 lt!724619) (list!8622 (c!308989 lt!724619)))))

(declare-fun bs!413227 () Bool)

(assert (= bs!413227 d!579984))

(declare-fun m!2324845 () Bool)

(assert (=> bs!413227 m!2324845))

(assert (=> b!1893249 d!579984))

(declare-fun b!1893449 () Bool)

(declare-fun e!1208670 () Bool)

(assert (=> b!1893449 (= e!1208670 true)))

(declare-fun d!579986 () Bool)

(assert (=> d!579986 e!1208670))

(assert (= d!579986 b!1893449))

(declare-fun order!13391 () Int)

(declare-fun order!13389 () Int)

(declare-fun lambda!73948 () Int)

(declare-fun dynLambda!10302 (Int Int) Int)

(declare-fun dynLambda!10303 (Int Int) Int)

(assert (=> b!1893449 (< (dynLambda!10302 order!13389 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) (dynLambda!10303 order!13391 lambda!73948))))

(declare-fun order!13393 () Int)

(declare-fun dynLambda!10304 (Int Int) Int)

(assert (=> b!1893449 (< (dynLambda!10304 order!13393 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) (dynLambda!10303 order!13391 lambda!73948))))

(declare-fun dynLambda!10305 (Int BalanceConc!13938) TokenValue!3898)

(assert (=> d!579986 (= (list!8618 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619))) (list!8618 lt!724619))))

(declare-fun lt!724644 () Unit!35582)

(declare-fun ForallOf!371 (Int BalanceConc!13938) Unit!35582)

(assert (=> d!579986 (= lt!724644 (ForallOf!371 lambda!73948 lt!724619))))

(assert (=> d!579986 (= (lemmaSemiInverse!741 (transformation!3762 (rule!5955 (h!26610 tokens!598))) lt!724619) lt!724644)))

(declare-fun b_lambda!62081 () Bool)

(assert (=> (not b_lambda!62081) (not d!579986)))

(declare-fun t!175864 () Bool)

(declare-fun tb!115193 () Bool)

(assert (=> (and b!1893236 (= (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175864) tb!115193))

(declare-fun e!1208671 () Bool)

(declare-fun tp!539994 () Bool)

(declare-fun b!1893450 () Bool)

(assert (=> b!1893450 (= e!1208671 (and (inv!28303 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619)))) tp!539994))))

(declare-fun result!139282 () Bool)

(assert (=> tb!115193 (= result!139282 (and (inv!28304 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619))) e!1208671))))

(assert (= tb!115193 b!1893450))

(declare-fun m!2324949 () Bool)

(assert (=> b!1893450 m!2324949))

(declare-fun m!2324951 () Bool)

(assert (=> tb!115193 m!2324951))

(assert (=> d!579986 t!175864))

(declare-fun b_and!145733 () Bool)

(assert (= b_and!145689 (and (=> t!175864 result!139282) b_and!145733)))

(declare-fun t!175866 () Bool)

(declare-fun tb!115195 () Bool)

(assert (=> (and b!1893246 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175866) tb!115195))

(declare-fun result!139284 () Bool)

(assert (= result!139284 result!139282))

(assert (=> d!579986 t!175866))

(declare-fun b_and!145735 () Bool)

(assert (= b_and!145691 (and (=> t!175866 result!139284) b_and!145735)))

(declare-fun tb!115197 () Bool)

(declare-fun t!175868 () Bool)

(assert (=> (and b!1893251 (= (toChars!5230 (transformation!3762 (h!26609 rules!3198))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175868) tb!115197))

(declare-fun result!139286 () Bool)

(assert (= result!139286 result!139282))

(assert (=> d!579986 t!175868))

(declare-fun b_and!145737 () Bool)

(assert (= b_and!145693 (and (=> t!175868 result!139286) b_and!145737)))

(declare-fun b_lambda!62083 () Bool)

(assert (=> (not b_lambda!62083) (not d!579986)))

(declare-fun t!175870 () Bool)

(declare-fun tb!115199 () Bool)

(assert (=> (and b!1893236 (= (toValue!5371 (transformation!3762 (rule!5955 separatorToken!354))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175870) tb!115199))

(declare-fun result!139288 () Bool)

(assert (=> tb!115199 (= result!139288 (inv!21 (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619)))))

(declare-fun m!2324953 () Bool)

(assert (=> tb!115199 m!2324953))

(assert (=> d!579986 t!175870))

(declare-fun b_and!145739 () Bool)

(assert (= b_and!145671 (and (=> t!175870 result!139288) b_and!145739)))

(declare-fun t!175872 () Bool)

(declare-fun tb!115201 () Bool)

(assert (=> (and b!1893246 (= (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175872) tb!115201))

(declare-fun result!139292 () Bool)

(assert (= result!139292 result!139288))

(assert (=> d!579986 t!175872))

(declare-fun b_and!145741 () Bool)

(assert (= b_and!145675 (and (=> t!175872 result!139292) b_and!145741)))

(declare-fun tb!115203 () Bool)

(declare-fun t!175874 () Bool)

(assert (=> (and b!1893251 (= (toValue!5371 (transformation!3762 (h!26609 rules!3198))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175874) tb!115203))

(declare-fun result!139294 () Bool)

(assert (= result!139294 result!139288))

(assert (=> d!579986 t!175874))

(declare-fun b_and!145743 () Bool)

(assert (= b_and!145679 (and (=> t!175874 result!139294) b_and!145743)))

(declare-fun m!2324955 () Bool)

(assert (=> d!579986 m!2324955))

(declare-fun m!2324957 () Bool)

(assert (=> d!579986 m!2324957))

(declare-fun m!2324959 () Bool)

(assert (=> d!579986 m!2324959))

(declare-fun m!2324961 () Bool)

(assert (=> d!579986 m!2324961))

(assert (=> d!579986 m!2324955))

(assert (=> d!579986 m!2324961))

(assert (=> d!579986 m!2324745))

(assert (=> b!1893249 d!579986))

(declare-fun d!580018 () Bool)

(assert (=> d!580018 (= (list!8618 (seqFromList!2634 (originalCharacters!4569 (h!26610 tokens!598)))) (list!8622 (c!308989 (seqFromList!2634 (originalCharacters!4569 (h!26610 tokens!598))))))))

(declare-fun bs!413231 () Bool)

(assert (= bs!413231 d!580018))

(declare-fun m!2324963 () Bool)

(assert (=> bs!413231 m!2324963))

(assert (=> b!1893249 d!580018))

(declare-fun d!580020 () Bool)

(declare-fun lt!724647 () BalanceConc!13938)

(assert (=> d!580020 (= (list!8618 lt!724647) (originalCharacters!4569 (h!26610 tokens!598)))))

(assert (=> d!580020 (= lt!724647 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598))))))

(assert (=> d!580020 (= (charsOf!2318 (h!26610 tokens!598)) lt!724647)))

(declare-fun b_lambda!62085 () Bool)

(assert (=> (not b_lambda!62085) (not d!580020)))

(assert (=> d!580020 t!175814))

(declare-fun b_and!145745 () Bool)

(assert (= b_and!145733 (and (=> t!175814 result!139224) b_and!145745)))

(assert (=> d!580020 t!175816))

(declare-fun b_and!145747 () Bool)

(assert (= b_and!145735 (and (=> t!175816 result!139226) b_and!145747)))

(assert (=> d!580020 t!175818))

(declare-fun b_and!145749 () Bool)

(assert (= b_and!145737 (and (=> t!175818 result!139228) b_and!145749)))

(declare-fun m!2324965 () Bool)

(assert (=> d!580020 m!2324965))

(assert (=> d!580020 m!2324815))

(assert (=> b!1893249 d!580020))

(declare-fun d!580022 () Bool)

(declare-fun fromListB!1204 (List!21289) BalanceConc!13938)

(assert (=> d!580022 (= (seqFromList!2634 (originalCharacters!4569 (h!26610 tokens!598))) (fromListB!1204 (originalCharacters!4569 (h!26610 tokens!598))))))

(declare-fun bs!413232 () Bool)

(assert (= bs!413232 d!580022))

(declare-fun m!2324967 () Bool)

(assert (=> bs!413232 m!2324967))

(assert (=> b!1893249 d!580022))

(declare-fun d!580024 () Bool)

(declare-fun res!845182 () Bool)

(declare-fun e!1208679 () Bool)

(assert (=> d!580024 (=> res!845182 e!1208679)))

(assert (=> d!580024 (= res!845182 (not ((_ is Cons!21208) rules!3198)))))

(assert (=> d!580024 (= (sepAndNonSepRulesDisjointChars!860 rules!3198 rules!3198) e!1208679)))

(declare-fun b!1893457 () Bool)

(declare-fun e!1208680 () Bool)

(assert (=> b!1893457 (= e!1208679 e!1208680)))

(declare-fun res!845183 () Bool)

(assert (=> b!1893457 (=> (not res!845183) (not e!1208680))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!410 (Rule!7324 List!21290) Bool)

(assert (=> b!1893457 (= res!845183 (ruleDisjointCharsFromAllFromOtherType!410 (h!26609 rules!3198) rules!3198))))

(declare-fun b!1893458 () Bool)

(assert (=> b!1893458 (= e!1208680 (sepAndNonSepRulesDisjointChars!860 rules!3198 (t!175805 rules!3198)))))

(assert (= (and d!580024 (not res!845182)) b!1893457))

(assert (= (and b!1893457 res!845183) b!1893458))

(declare-fun m!2324969 () Bool)

(assert (=> b!1893457 m!2324969))

(declare-fun m!2324971 () Bool)

(assert (=> b!1893458 m!2324971))

(assert (=> b!1893237 d!580024))

(declare-fun d!580026 () Bool)

(assert (=> d!580026 (= (inv!28296 (tag!4176 (rule!5955 separatorToken!354))) (= (mod (str.len (value!118807 (tag!4176 (rule!5955 separatorToken!354)))) 2) 0))))

(assert (=> b!1893248 d!580026))

(declare-fun d!580028 () Bool)

(declare-fun res!845184 () Bool)

(declare-fun e!1208681 () Bool)

(assert (=> d!580028 (=> (not res!845184) (not e!1208681))))

(assert (=> d!580028 (= res!845184 (semiInverseModEq!1525 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (toValue!5371 (transformation!3762 (rule!5955 separatorToken!354)))))))

(assert (=> d!580028 (= (inv!28299 (transformation!3762 (rule!5955 separatorToken!354))) e!1208681)))

(declare-fun b!1893459 () Bool)

(assert (=> b!1893459 (= e!1208681 (equivClasses!1452 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (toValue!5371 (transformation!3762 (rule!5955 separatorToken!354)))))))

(assert (= (and d!580028 res!845184) b!1893459))

(declare-fun m!2324973 () Bool)

(assert (=> d!580028 m!2324973))

(declare-fun m!2324975 () Bool)

(assert (=> b!1893459 m!2324975))

(assert (=> b!1893248 d!580028))

(declare-fun d!580030 () Bool)

(declare-fun res!845189 () Bool)

(declare-fun e!1208686 () Bool)

(assert (=> d!580030 (=> res!845189 e!1208686)))

(assert (=> d!580030 (= res!845189 ((_ is Nil!21209) tokens!598))))

(assert (=> d!580030 (= (forall!4434 tokens!598 lambda!73939) e!1208686)))

(declare-fun b!1893464 () Bool)

(declare-fun e!1208687 () Bool)

(assert (=> b!1893464 (= e!1208686 e!1208687)))

(declare-fun res!845190 () Bool)

(assert (=> b!1893464 (=> (not res!845190) (not e!1208687))))

(declare-fun dynLambda!10306 (Int Token!7076) Bool)

(assert (=> b!1893464 (= res!845190 (dynLambda!10306 lambda!73939 (h!26610 tokens!598)))))

(declare-fun b!1893465 () Bool)

(assert (=> b!1893465 (= e!1208687 (forall!4434 (t!175806 tokens!598) lambda!73939))))

(assert (= (and d!580030 (not res!845189)) b!1893464))

(assert (= (and b!1893464 res!845190) b!1893465))

(declare-fun b_lambda!62087 () Bool)

(assert (=> (not b_lambda!62087) (not b!1893464)))

(declare-fun m!2324977 () Bool)

(assert (=> b!1893464 m!2324977))

(declare-fun m!2324979 () Bool)

(assert (=> b!1893465 m!2324979))

(assert (=> b!1893241 d!580030))

(declare-fun bs!413233 () Bool)

(declare-fun d!580032 () Bool)

(assert (= bs!413233 (and d!580032 b!1893241)))

(declare-fun lambda!73951 () Int)

(assert (=> bs!413233 (not (= lambda!73951 lambda!73939))))

(declare-fun b!1893482 () Bool)

(declare-fun e!1208702 () Bool)

(assert (=> b!1893482 (= e!1208702 true)))

(declare-fun b!1893481 () Bool)

(declare-fun e!1208701 () Bool)

(assert (=> b!1893481 (= e!1208701 e!1208702)))

(declare-fun b!1893480 () Bool)

(declare-fun e!1208700 () Bool)

(assert (=> b!1893480 (= e!1208700 e!1208701)))

(assert (=> d!580032 e!1208700))

(assert (= b!1893481 b!1893482))

(assert (= b!1893480 b!1893481))

(assert (= (and d!580032 ((_ is Cons!21208) rules!3198)) b!1893480))

(declare-fun order!13395 () Int)

(declare-fun dynLambda!10307 (Int Int) Int)

(assert (=> b!1893482 (< (dynLambda!10302 order!13389 (toValue!5371 (transformation!3762 (h!26609 rules!3198)))) (dynLambda!10307 order!13395 lambda!73951))))

(assert (=> b!1893482 (< (dynLambda!10304 order!13393 (toChars!5230 (transformation!3762 (h!26609 rules!3198)))) (dynLambda!10307 order!13395 lambda!73951))))

(assert (=> d!580032 true))

(declare-fun lt!724650 () Bool)

(assert (=> d!580032 (= lt!724650 (forall!4434 tokens!598 lambda!73951))))

(declare-fun e!1208692 () Bool)

(assert (=> d!580032 (= lt!724650 e!1208692)))

(declare-fun res!845195 () Bool)

(assert (=> d!580032 (=> res!845195 e!1208692)))

(assert (=> d!580032 (= res!845195 (not ((_ is Cons!21209) tokens!598)))))

(assert (=> d!580032 (not (isEmpty!13018 rules!3198))))

(assert (=> d!580032 (= (rulesProduceEachTokenIndividuallyList!1106 thiss!23328 rules!3198 tokens!598) lt!724650)))

(declare-fun b!1893470 () Bool)

(declare-fun e!1208693 () Bool)

(assert (=> b!1893470 (= e!1208692 e!1208693)))

(declare-fun res!845196 () Bool)

(assert (=> b!1893470 (=> (not res!845196) (not e!1208693))))

(assert (=> b!1893470 (= res!845196 (rulesProduceIndividualToken!1547 thiss!23328 rules!3198 (h!26610 tokens!598)))))

(declare-fun b!1893471 () Bool)

(assert (=> b!1893471 (= e!1208693 (rulesProduceEachTokenIndividuallyList!1106 thiss!23328 rules!3198 (t!175806 tokens!598)))))

(assert (= (and d!580032 (not res!845195)) b!1893470))

(assert (= (and b!1893470 res!845196) b!1893471))

(declare-fun m!2324981 () Bool)

(assert (=> d!580032 m!2324981))

(assert (=> d!580032 m!2324751))

(declare-fun m!2324983 () Bool)

(assert (=> b!1893470 m!2324983))

(declare-fun m!2324985 () Bool)

(assert (=> b!1893471 m!2324985))

(assert (=> b!1893252 d!580032))

(declare-fun d!580034 () Bool)

(assert (=> d!580034 (= (inv!28296 (tag!4176 (rule!5955 (h!26610 tokens!598)))) (= (mod (str.len (value!118807 (tag!4176 (rule!5955 (h!26610 tokens!598))))) 2) 0))))

(assert (=> b!1893240 d!580034))

(declare-fun d!580036 () Bool)

(declare-fun res!845197 () Bool)

(declare-fun e!1208703 () Bool)

(assert (=> d!580036 (=> (not res!845197) (not e!1208703))))

(assert (=> d!580036 (= res!845197 (semiInverseModEq!1525 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598))))))))

(assert (=> d!580036 (= (inv!28299 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) e!1208703)))

(declare-fun b!1893485 () Bool)

(assert (=> b!1893485 (= e!1208703 (equivClasses!1452 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598))))))))

(assert (= (and d!580036 res!845197) b!1893485))

(declare-fun m!2324987 () Bool)

(assert (=> d!580036 m!2324987))

(declare-fun m!2324989 () Bool)

(assert (=> b!1893485 m!2324989))

(assert (=> b!1893240 d!580036))

(declare-fun b!1893490 () Bool)

(declare-fun e!1208706 () Bool)

(declare-fun tp_is_empty!9057 () Bool)

(declare-fun tp!539997 () Bool)

(assert (=> b!1893490 (= e!1208706 (and tp_is_empty!9057 tp!539997))))

(assert (=> b!1893239 (= tp!539924 e!1208706)))

(assert (= (and b!1893239 ((_ is Cons!21207) (originalCharacters!4569 (h!26610 tokens!598)))) b!1893490))

(declare-fun b!1893501 () Bool)

(declare-fun e!1208709 () Bool)

(assert (=> b!1893501 (= e!1208709 tp_is_empty!9057)))

(declare-fun b!1893504 () Bool)

(declare-fun tp!540011 () Bool)

(declare-fun tp!540010 () Bool)

(assert (=> b!1893504 (= e!1208709 (and tp!540011 tp!540010))))

(declare-fun b!1893503 () Bool)

(declare-fun tp!540012 () Bool)

(assert (=> b!1893503 (= e!1208709 tp!540012)))

(declare-fun b!1893502 () Bool)

(declare-fun tp!540009 () Bool)

(declare-fun tp!540008 () Bool)

(assert (=> b!1893502 (= e!1208709 (and tp!540009 tp!540008))))

(assert (=> b!1893234 (= tp!539926 e!1208709)))

(assert (= (and b!1893234 ((_ is ElementMatch!5187) (regex!3762 (h!26609 rules!3198)))) b!1893501))

(assert (= (and b!1893234 ((_ is Concat!9086) (regex!3762 (h!26609 rules!3198)))) b!1893502))

(assert (= (and b!1893234 ((_ is Star!5187) (regex!3762 (h!26609 rules!3198)))) b!1893503))

(assert (= (and b!1893234 ((_ is Union!5187) (regex!3762 (h!26609 rules!3198)))) b!1893504))

(declare-fun b!1893515 () Bool)

(declare-fun b_free!52757 () Bool)

(declare-fun b_next!53461 () Bool)

(assert (=> b!1893515 (= b_free!52757 (not b_next!53461))))

(declare-fun t!175879 () Bool)

(declare-fun tb!115205 () Bool)

(assert (=> (and b!1893515 (= (toValue!5371 (transformation!3762 (h!26609 (t!175805 rules!3198)))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175879) tb!115205))

(declare-fun result!139302 () Bool)

(assert (= result!139302 result!139288))

(assert (=> d!579986 t!175879))

(declare-fun tp!540021 () Bool)

(declare-fun b_and!145751 () Bool)

(assert (=> b!1893515 (= tp!540021 (and (=> t!175879 result!139302) b_and!145751))))

(declare-fun b_free!52759 () Bool)

(declare-fun b_next!53463 () Bool)

(assert (=> b!1893515 (= b_free!52759 (not b_next!53463))))

(declare-fun t!175881 () Bool)

(declare-fun tb!115207 () Bool)

(assert (=> (and b!1893515 (= (toChars!5230 (transformation!3762 (h!26609 (t!175805 rules!3198)))) (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354)))) t!175881) tb!115207))

(declare-fun result!139304 () Bool)

(assert (= result!139304 result!139216))

(assert (=> b!1893293 t!175881))

(declare-fun tb!115209 () Bool)

(declare-fun t!175883 () Bool)

(assert (=> (and b!1893515 (= (toChars!5230 (transformation!3762 (h!26609 (t!175805 rules!3198)))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175883) tb!115209))

(declare-fun result!139306 () Bool)

(assert (= result!139306 result!139224))

(assert (=> b!1893300 t!175883))

(declare-fun tb!115211 () Bool)

(declare-fun t!175885 () Bool)

(assert (=> (and b!1893515 (= (toChars!5230 (transformation!3762 (h!26609 (t!175805 rules!3198)))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175885) tb!115211))

(declare-fun result!139308 () Bool)

(assert (= result!139308 result!139282))

(assert (=> d!579986 t!175885))

(assert (=> d!580020 t!175883))

(declare-fun tp!540022 () Bool)

(declare-fun b_and!145753 () Bool)

(assert (=> b!1893515 (= tp!540022 (and (=> t!175881 result!139304) (=> t!175883 result!139306) (=> t!175885 result!139308) b_and!145753))))

(declare-fun e!1208721 () Bool)

(assert (=> b!1893515 (= e!1208721 (and tp!540021 tp!540022))))

(declare-fun b!1893514 () Bool)

(declare-fun e!1208720 () Bool)

(declare-fun tp!540023 () Bool)

(assert (=> b!1893514 (= e!1208720 (and tp!540023 (inv!28296 (tag!4176 (h!26609 (t!175805 rules!3198)))) (inv!28299 (transformation!3762 (h!26609 (t!175805 rules!3198)))) e!1208721))))

(declare-fun b!1893513 () Bool)

(declare-fun e!1208718 () Bool)

(declare-fun tp!540024 () Bool)

(assert (=> b!1893513 (= e!1208718 (and e!1208720 tp!540024))))

(assert (=> b!1893238 (= tp!539920 e!1208718)))

(assert (= b!1893514 b!1893515))

(assert (= b!1893513 b!1893514))

(assert (= (and b!1893238 ((_ is Cons!21208) (t!175805 rules!3198))) b!1893513))

(declare-fun m!2324991 () Bool)

(assert (=> b!1893514 m!2324991))

(declare-fun m!2324993 () Bool)

(assert (=> b!1893514 m!2324993))

(declare-fun b!1893516 () Bool)

(declare-fun e!1208722 () Bool)

(assert (=> b!1893516 (= e!1208722 tp_is_empty!9057)))

(declare-fun b!1893519 () Bool)

(declare-fun tp!540028 () Bool)

(declare-fun tp!540027 () Bool)

(assert (=> b!1893519 (= e!1208722 (and tp!540028 tp!540027))))

(declare-fun b!1893518 () Bool)

(declare-fun tp!540029 () Bool)

(assert (=> b!1893518 (= e!1208722 tp!540029)))

(declare-fun b!1893517 () Bool)

(declare-fun tp!540026 () Bool)

(declare-fun tp!540025 () Bool)

(assert (=> b!1893517 (= e!1208722 (and tp!540026 tp!540025))))

(assert (=> b!1893248 (= tp!539921 e!1208722)))

(assert (= (and b!1893248 ((_ is ElementMatch!5187) (regex!3762 (rule!5955 separatorToken!354)))) b!1893516))

(assert (= (and b!1893248 ((_ is Concat!9086) (regex!3762 (rule!5955 separatorToken!354)))) b!1893517))

(assert (= (and b!1893248 ((_ is Star!5187) (regex!3762 (rule!5955 separatorToken!354)))) b!1893518))

(assert (= (and b!1893248 ((_ is Union!5187) (regex!3762 (rule!5955 separatorToken!354)))) b!1893519))

(declare-fun b!1893520 () Bool)

(declare-fun e!1208723 () Bool)

(declare-fun tp!540030 () Bool)

(assert (=> b!1893520 (= e!1208723 (and tp_is_empty!9057 tp!540030))))

(assert (=> b!1893247 (= tp!539928 e!1208723)))

(assert (= (and b!1893247 ((_ is Cons!21207) (originalCharacters!4569 separatorToken!354))) b!1893520))

(declare-fun b!1893534 () Bool)

(declare-fun b_free!52761 () Bool)

(declare-fun b_next!53465 () Bool)

(assert (=> b!1893534 (= b_free!52761 (not b_next!53465))))

(declare-fun t!175887 () Bool)

(declare-fun tb!115213 () Bool)

(assert (=> (and b!1893534 (= (toValue!5371 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175887) tb!115213))

(declare-fun result!139312 () Bool)

(assert (= result!139312 result!139288))

(assert (=> d!579986 t!175887))

(declare-fun tp!540045 () Bool)

(declare-fun b_and!145755 () Bool)

(assert (=> b!1893534 (= tp!540045 (and (=> t!175887 result!139312) b_and!145755))))

(declare-fun b_free!52763 () Bool)

(declare-fun b_next!53467 () Bool)

(assert (=> b!1893534 (= b_free!52763 (not b_next!53467))))

(declare-fun t!175889 () Bool)

(declare-fun tb!115215 () Bool)

(assert (=> (and b!1893534 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))) (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354)))) t!175889) tb!115215))

(declare-fun result!139314 () Bool)

(assert (= result!139314 result!139216))

(assert (=> b!1893293 t!175889))

(declare-fun t!175891 () Bool)

(declare-fun tb!115217 () Bool)

(assert (=> (and b!1893534 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175891) tb!115217))

(declare-fun result!139316 () Bool)

(assert (= result!139316 result!139224))

(assert (=> b!1893300 t!175891))

(declare-fun t!175893 () Bool)

(declare-fun tb!115219 () Bool)

(assert (=> (and b!1893534 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175893) tb!115219))

(declare-fun result!139318 () Bool)

(assert (= result!139318 result!139282))

(assert (=> d!579986 t!175893))

(assert (=> d!580020 t!175891))

(declare-fun tp!540041 () Bool)

(declare-fun b_and!145757 () Bool)

(assert (=> b!1893534 (= tp!540041 (and (=> t!175889 result!139314) (=> t!175891 result!139316) (=> t!175893 result!139318) b_and!145757))))

(declare-fun b!1893532 () Bool)

(declare-fun e!1208738 () Bool)

(declare-fun tp!540043 () Bool)

(declare-fun e!1208736 () Bool)

(assert (=> b!1893532 (= e!1208738 (and (inv!21 (value!118808 (h!26610 (t!175806 tokens!598)))) e!1208736 tp!540043))))

(declare-fun b!1893533 () Bool)

(declare-fun e!1208739 () Bool)

(declare-fun tp!540042 () Bool)

(assert (=> b!1893533 (= e!1208736 (and tp!540042 (inv!28296 (tag!4176 (rule!5955 (h!26610 (t!175806 tokens!598))))) (inv!28299 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))) e!1208739))))

(declare-fun b!1893531 () Bool)

(declare-fun tp!540044 () Bool)

(declare-fun e!1208740 () Bool)

(assert (=> b!1893531 (= e!1208740 (and (inv!28300 (h!26610 (t!175806 tokens!598))) e!1208738 tp!540044))))

(assert (=> b!1893235 (= tp!539925 e!1208740)))

(assert (=> b!1893534 (= e!1208739 (and tp!540045 tp!540041))))

(assert (= b!1893533 b!1893534))

(assert (= b!1893532 b!1893533))

(assert (= b!1893531 b!1893532))

(assert (= (and b!1893235 ((_ is Cons!21209) (t!175806 tokens!598))) b!1893531))

(declare-fun m!2324995 () Bool)

(assert (=> b!1893532 m!2324995))

(declare-fun m!2324997 () Bool)

(assert (=> b!1893533 m!2324997))

(declare-fun m!2324999 () Bool)

(assert (=> b!1893533 m!2324999))

(declare-fun m!2325001 () Bool)

(assert (=> b!1893531 m!2325001))

(declare-fun b!1893535 () Bool)

(declare-fun e!1208742 () Bool)

(assert (=> b!1893535 (= e!1208742 tp_is_empty!9057)))

(declare-fun b!1893538 () Bool)

(declare-fun tp!540049 () Bool)

(declare-fun tp!540048 () Bool)

(assert (=> b!1893538 (= e!1208742 (and tp!540049 tp!540048))))

(declare-fun b!1893537 () Bool)

(declare-fun tp!540050 () Bool)

(assert (=> b!1893537 (= e!1208742 tp!540050)))

(declare-fun b!1893536 () Bool)

(declare-fun tp!540047 () Bool)

(declare-fun tp!540046 () Bool)

(assert (=> b!1893536 (= e!1208742 (and tp!540047 tp!540046))))

(assert (=> b!1893240 (= tp!539927 e!1208742)))

(assert (= (and b!1893240 ((_ is ElementMatch!5187) (regex!3762 (rule!5955 (h!26610 tokens!598))))) b!1893535))

(assert (= (and b!1893240 ((_ is Concat!9086) (regex!3762 (rule!5955 (h!26610 tokens!598))))) b!1893536))

(assert (= (and b!1893240 ((_ is Star!5187) (regex!3762 (rule!5955 (h!26610 tokens!598))))) b!1893537))

(assert (= (and b!1893240 ((_ is Union!5187) (regex!3762 (rule!5955 (h!26610 tokens!598))))) b!1893538))

(declare-fun b_lambda!62089 () Bool)

(assert (= b_lambda!62055 (or (and b!1893236 b_free!52739) (and b!1893246 b_free!52743 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))))) (and b!1893251 b_free!52747 (= (toChars!5230 (transformation!3762 (h!26609 rules!3198))) (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))))) (and b!1893515 b_free!52759 (= (toChars!5230 (transformation!3762 (h!26609 (t!175805 rules!3198)))) (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))))) (and b!1893534 b_free!52763 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))) (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))))) b_lambda!62089)))

(declare-fun b_lambda!62091 () Bool)

(assert (= b_lambda!62083 (or (and b!1893246 b_free!52741) (and b!1893534 b_free!52761 (= (toValue!5371 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) (and b!1893251 b_free!52745 (= (toValue!5371 (transformation!3762 (h!26609 rules!3198))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) (and b!1893236 b_free!52737 (= (toValue!5371 (transformation!3762 (rule!5955 separatorToken!354))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) (and b!1893515 b_free!52757 (= (toValue!5371 (transformation!3762 (h!26609 (t!175805 rules!3198)))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) b_lambda!62091)))

(declare-fun b_lambda!62093 () Bool)

(assert (= b_lambda!62057 (or (and b!1893236 b_free!52739 (= (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) (and b!1893515 b_free!52759 (= (toChars!5230 (transformation!3762 (h!26609 (t!175805 rules!3198)))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) (and b!1893246 b_free!52743) (and b!1893534 b_free!52763 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) (and b!1893251 b_free!52747 (= (toChars!5230 (transformation!3762 (h!26609 rules!3198))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) b_lambda!62093)))

(declare-fun b_lambda!62095 () Bool)

(assert (= b_lambda!62085 (or (and b!1893236 b_free!52739 (= (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) (and b!1893515 b_free!52759 (= (toChars!5230 (transformation!3762 (h!26609 (t!175805 rules!3198)))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) (and b!1893246 b_free!52743) (and b!1893534 b_free!52763 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) (and b!1893251 b_free!52747 (= (toChars!5230 (transformation!3762 (h!26609 rules!3198))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) b_lambda!62095)))

(declare-fun b_lambda!62097 () Bool)

(assert (= b_lambda!62087 (or b!1893241 b_lambda!62097)))

(declare-fun bs!413234 () Bool)

(declare-fun d!580038 () Bool)

(assert (= bs!413234 (and d!580038 b!1893241)))

(assert (=> bs!413234 (= (dynLambda!10306 lambda!73939 (h!26610 tokens!598)) (not (isSeparator!3762 (rule!5955 (h!26610 tokens!598)))))))

(assert (=> b!1893464 d!580038))

(declare-fun b_lambda!62099 () Bool)

(assert (= b_lambda!62081 (or (and b!1893236 b_free!52739 (= (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) (and b!1893515 b_free!52759 (= (toChars!5230 (transformation!3762 (h!26609 (t!175805 rules!3198)))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) (and b!1893246 b_free!52743) (and b!1893534 b_free!52763 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) (and b!1893251 b_free!52747 (= (toChars!5230 (transformation!3762 (h!26609 rules!3198))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) b_lambda!62099)))

(check-sat (not b!1893470) (not b_next!53443) (not b!1893288) (not b_next!53449) (not d!579986) (not b!1893514) (not b!1893304) (not b!1893316) (not b!1893490) (not b_next!53463) (not b!1893457) (not b!1893465) (not b_lambda!62099) (not b_next!53445) (not b!1893503) (not d!580022) (not b!1893520) (not b!1893517) (not b_lambda!62093) (not b!1893450) (not b!1893293) (not b!1893302) (not b!1893536) b_and!145741 (not d!579982) (not d!580020) (not d!580028) b_and!145747 (not tb!115199) (not b!1893306) (not b_next!53467) (not b!1893532) (not d!579974) (not b_lambda!62089) (not d!579956) b_and!145749 b_and!145751 b_and!145757 (not d!580036) (not b!1893301) (not d!580032) (not b!1893519) (not b!1893307) (not d!580018) (not b!1893538) (not b!1893513) (not b!1893533) (not b!1893502) (not d!579960) (not b!1893471) (not b_next!53465) (not b!1893480) (not b_next!53461) (not b!1893315) b_and!145739 tp_is_empty!9057 (not b!1893537) (not d!579984) (not b_lambda!62091) b_and!145753 (not b!1893504) (not b!1893459) b_and!145745 (not b!1893531) (not b_lambda!62097) (not d!579976) (not tb!115141) (not b!1893287) (not b_next!53441) (not b_next!53447) (not b!1893485) (not tb!115193) (not b!1893285) (not b!1893265) (not b!1893294) (not b!1893314) b_and!145755 (not tb!115147) (not b!1893518) b_and!145743 (not b!1893300) (not b!1893272) (not b_lambda!62095) (not b!1893299) (not b_next!53451) (not b!1893458))
(check-sat (not b_next!53463) (not b_next!53445) b_and!145741 b_and!145747 (not b_next!53443) (not b_next!53467) b_and!145749 (not b_next!53449) (not b_next!53465) (not b_next!53461) b_and!145739 b_and!145753 b_and!145745 (not b_next!53451) b_and!145751 b_and!145757 (not b_next!53441) (not b_next!53447) b_and!145755 b_and!145743)
(get-model)

(declare-fun d!580056 () Bool)

(assert (=> d!580056 true))

(declare-fun lambda!73958 () Int)

(declare-fun order!13397 () Int)

(declare-fun dynLambda!10308 (Int Int) Int)

(assert (=> d!580056 (< (dynLambda!10302 order!13389 (toValue!5371 (transformation!3762 (h!26609 rules!3198)))) (dynLambda!10308 order!13397 lambda!73958))))

(declare-fun Forall2!612 (Int) Bool)

(assert (=> d!580056 (= (equivClasses!1452 (toChars!5230 (transformation!3762 (h!26609 rules!3198))) (toValue!5371 (transformation!3762 (h!26609 rules!3198)))) (Forall2!612 lambda!73958))))

(declare-fun bs!413242 () Bool)

(assert (= bs!413242 d!580056))

(declare-fun m!2325029 () Bool)

(assert (=> bs!413242 m!2325029))

(assert (=> b!1893265 d!580056))

(declare-fun d!580058 () Bool)

(assert (=> d!580058 (= (isEmpty!13021 (originalCharacters!4569 separatorToken!354)) ((_ is Nil!21207) (originalCharacters!4569 separatorToken!354)))))

(assert (=> d!579974 d!580058))

(declare-fun d!580060 () Bool)

(declare-fun lt!724656 () Bool)

(declare-fun e!1208756 () Bool)

(assert (=> d!580060 (= lt!724656 e!1208756)))

(declare-fun res!845207 () Bool)

(assert (=> d!580060 (=> (not res!845207) (not e!1208756))))

(assert (=> d!580060 (= res!845207 (= (list!8621 (_1!11491 (lex!1504 thiss!23328 rules!3198 (print!1433 thiss!23328 (singletonSeq!1831 (h!26610 tokens!598)))))) (list!8621 (singletonSeq!1831 (h!26610 tokens!598)))))))

(declare-fun e!1208757 () Bool)

(assert (=> d!580060 (= lt!724656 e!1208757)))

(declare-fun res!845206 () Bool)

(assert (=> d!580060 (=> (not res!845206) (not e!1208757))))

(declare-fun lt!724657 () tuple2!20044)

(assert (=> d!580060 (= res!845206 (= (size!16820 (_1!11491 lt!724657)) 1))))

(assert (=> d!580060 (= lt!724657 (lex!1504 thiss!23328 rules!3198 (print!1433 thiss!23328 (singletonSeq!1831 (h!26610 tokens!598)))))))

(assert (=> d!580060 (not (isEmpty!13018 rules!3198))))

(assert (=> d!580060 (= (rulesProduceIndividualToken!1547 thiss!23328 rules!3198 (h!26610 tokens!598)) lt!724656)))

(declare-fun b!1893561 () Bool)

(declare-fun res!845205 () Bool)

(assert (=> b!1893561 (=> (not res!845205) (not e!1208757))))

(assert (=> b!1893561 (= res!845205 (= (apply!5586 (_1!11491 lt!724657) 0) (h!26610 tokens!598)))))

(declare-fun b!1893562 () Bool)

(assert (=> b!1893562 (= e!1208757 (isEmpty!13022 (_2!11491 lt!724657)))))

(declare-fun b!1893563 () Bool)

(assert (=> b!1893563 (= e!1208756 (isEmpty!13022 (_2!11491 (lex!1504 thiss!23328 rules!3198 (print!1433 thiss!23328 (singletonSeq!1831 (h!26610 tokens!598)))))))))

(assert (= (and d!580060 res!845206) b!1893561))

(assert (= (and b!1893561 res!845205) b!1893562))

(assert (= (and d!580060 res!845207) b!1893563))

(declare-fun m!2325031 () Bool)

(assert (=> d!580060 m!2325031))

(declare-fun m!2325033 () Bool)

(assert (=> d!580060 m!2325033))

(assert (=> d!580060 m!2324751))

(declare-fun m!2325035 () Bool)

(assert (=> d!580060 m!2325035))

(declare-fun m!2325037 () Bool)

(assert (=> d!580060 m!2325037))

(declare-fun m!2325039 () Bool)

(assert (=> d!580060 m!2325039))

(declare-fun m!2325041 () Bool)

(assert (=> d!580060 m!2325041))

(assert (=> d!580060 m!2325035))

(assert (=> d!580060 m!2325035))

(assert (=> d!580060 m!2325031))

(declare-fun m!2325043 () Bool)

(assert (=> b!1893561 m!2325043))

(declare-fun m!2325045 () Bool)

(assert (=> b!1893562 m!2325045))

(assert (=> b!1893563 m!2325035))

(assert (=> b!1893563 m!2325035))

(assert (=> b!1893563 m!2325031))

(assert (=> b!1893563 m!2325031))

(assert (=> b!1893563 m!2325033))

(declare-fun m!2325047 () Bool)

(assert (=> b!1893563 m!2325047))

(assert (=> b!1893470 d!580060))

(declare-fun bs!413243 () Bool)

(declare-fun d!580062 () Bool)

(assert (= bs!413243 (and d!580062 b!1893241)))

(declare-fun lambda!73959 () Int)

(assert (=> bs!413243 (not (= lambda!73959 lambda!73939))))

(declare-fun bs!413244 () Bool)

(assert (= bs!413244 (and d!580062 d!580032)))

(assert (=> bs!413244 (= lambda!73959 lambda!73951)))

(declare-fun b!1893568 () Bool)

(declare-fun e!1208762 () Bool)

(assert (=> b!1893568 (= e!1208762 true)))

(declare-fun b!1893567 () Bool)

(declare-fun e!1208761 () Bool)

(assert (=> b!1893567 (= e!1208761 e!1208762)))

(declare-fun b!1893566 () Bool)

(declare-fun e!1208760 () Bool)

(assert (=> b!1893566 (= e!1208760 e!1208761)))

(assert (=> d!580062 e!1208760))

(assert (= b!1893567 b!1893568))

(assert (= b!1893566 b!1893567))

(assert (= (and d!580062 ((_ is Cons!21208) rules!3198)) b!1893566))

(assert (=> b!1893568 (< (dynLambda!10302 order!13389 (toValue!5371 (transformation!3762 (h!26609 rules!3198)))) (dynLambda!10307 order!13395 lambda!73959))))

(assert (=> b!1893568 (< (dynLambda!10304 order!13393 (toChars!5230 (transformation!3762 (h!26609 rules!3198)))) (dynLambda!10307 order!13395 lambda!73959))))

(assert (=> d!580062 true))

(declare-fun lt!724658 () Bool)

(assert (=> d!580062 (= lt!724658 (forall!4434 (t!175806 tokens!598) lambda!73959))))

(declare-fun e!1208758 () Bool)

(assert (=> d!580062 (= lt!724658 e!1208758)))

(declare-fun res!845208 () Bool)

(assert (=> d!580062 (=> res!845208 e!1208758)))

(assert (=> d!580062 (= res!845208 (not ((_ is Cons!21209) (t!175806 tokens!598))))))

(assert (=> d!580062 (not (isEmpty!13018 rules!3198))))

(assert (=> d!580062 (= (rulesProduceEachTokenIndividuallyList!1106 thiss!23328 rules!3198 (t!175806 tokens!598)) lt!724658)))

(declare-fun b!1893564 () Bool)

(declare-fun e!1208759 () Bool)

(assert (=> b!1893564 (= e!1208758 e!1208759)))

(declare-fun res!845209 () Bool)

(assert (=> b!1893564 (=> (not res!845209) (not e!1208759))))

(assert (=> b!1893564 (= res!845209 (rulesProduceIndividualToken!1547 thiss!23328 rules!3198 (h!26610 (t!175806 tokens!598))))))

(declare-fun b!1893565 () Bool)

(assert (=> b!1893565 (= e!1208759 (rulesProduceEachTokenIndividuallyList!1106 thiss!23328 rules!3198 (t!175806 (t!175806 tokens!598))))))

(assert (= (and d!580062 (not res!845208)) b!1893564))

(assert (= (and b!1893564 res!845209) b!1893565))

(declare-fun m!2325049 () Bool)

(assert (=> d!580062 m!2325049))

(assert (=> d!580062 m!2324751))

(declare-fun m!2325051 () Bool)

(assert (=> b!1893564 m!2325051))

(declare-fun m!2325053 () Bool)

(assert (=> b!1893565 m!2325053))

(assert (=> b!1893471 d!580062))

(declare-fun bs!413245 () Bool)

(declare-fun d!580064 () Bool)

(assert (= bs!413245 (and d!580064 d!580056)))

(declare-fun lambda!73960 () Int)

(assert (=> bs!413245 (= (= (toValue!5371 (transformation!3762 (rule!5955 separatorToken!354))) (toValue!5371 (transformation!3762 (h!26609 rules!3198)))) (= lambda!73960 lambda!73958))))

(assert (=> d!580064 true))

(assert (=> d!580064 (< (dynLambda!10302 order!13389 (toValue!5371 (transformation!3762 (rule!5955 separatorToken!354)))) (dynLambda!10308 order!13397 lambda!73960))))

(assert (=> d!580064 (= (equivClasses!1452 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (toValue!5371 (transformation!3762 (rule!5955 separatorToken!354)))) (Forall2!612 lambda!73960))))

(declare-fun bs!413246 () Bool)

(assert (= bs!413246 d!580064))

(declare-fun m!2325055 () Bool)

(assert (=> bs!413246 m!2325055))

(assert (=> b!1893459 d!580064))

(declare-fun d!580066 () Bool)

(declare-fun isBalanced!2224 (Conc!7061) Bool)

(assert (=> d!580066 (= (inv!28304 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354))) (isBalanced!2224 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354)))))))

(declare-fun bs!413247 () Bool)

(assert (= bs!413247 d!580066))

(declare-fun m!2325057 () Bool)

(assert (=> bs!413247 m!2325057))

(assert (=> tb!115141 d!580066))

(declare-fun d!580068 () Bool)

(declare-fun c!309016 () Bool)

(assert (=> d!580068 (= c!309016 ((_ is Node!7061) (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598))))))))

(declare-fun e!1208767 () Bool)

(assert (=> d!580068 (= (inv!28303 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598))))) e!1208767)))

(declare-fun b!1893575 () Bool)

(declare-fun inv!28307 (Conc!7061) Bool)

(assert (=> b!1893575 (= e!1208767 (inv!28307 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598))))))))

(declare-fun b!1893576 () Bool)

(declare-fun e!1208768 () Bool)

(assert (=> b!1893576 (= e!1208767 e!1208768)))

(declare-fun res!845212 () Bool)

(assert (=> b!1893576 (= res!845212 (not ((_ is Leaf!10405) (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598)))))))))

(assert (=> b!1893576 (=> res!845212 e!1208768)))

(declare-fun b!1893577 () Bool)

(declare-fun inv!28308 (Conc!7061) Bool)

(assert (=> b!1893577 (= e!1208768 (inv!28308 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598))))))))

(assert (= (and d!580068 c!309016) b!1893575))

(assert (= (and d!580068 (not c!309016)) b!1893576))

(assert (= (and b!1893576 (not res!845212)) b!1893577))

(declare-fun m!2325059 () Bool)

(assert (=> b!1893575 m!2325059))

(declare-fun m!2325061 () Bool)

(assert (=> b!1893577 m!2325061))

(assert (=> b!1893302 d!580068))

(declare-fun d!580070 () Bool)

(declare-fun lt!724661 () Token!7076)

(declare-fun apply!5587 (List!21291 Int) Token!7076)

(assert (=> d!580070 (= lt!724661 (apply!5587 (list!8621 (_1!11491 lt!724628)) 0))))

(declare-fun apply!5588 (Conc!7063 Int) Token!7076)

(assert (=> d!580070 (= lt!724661 (apply!5588 (c!309010 (_1!11491 lt!724628)) 0))))

(declare-fun e!1208771 () Bool)

(assert (=> d!580070 e!1208771))

(declare-fun res!845215 () Bool)

(assert (=> d!580070 (=> (not res!845215) (not e!1208771))))

(assert (=> d!580070 (= res!845215 (<= 0 0))))

(assert (=> d!580070 (= (apply!5586 (_1!11491 lt!724628) 0) lt!724661)))

(declare-fun b!1893580 () Bool)

(assert (=> b!1893580 (= e!1208771 (< 0 (size!16820 (_1!11491 lt!724628))))))

(assert (= (and d!580070 res!845215) b!1893580))

(declare-fun m!2325063 () Bool)

(assert (=> d!580070 m!2325063))

(assert (=> d!580070 m!2325063))

(declare-fun m!2325065 () Bool)

(assert (=> d!580070 m!2325065))

(declare-fun m!2325067 () Bool)

(assert (=> d!580070 m!2325067))

(assert (=> b!1893580 m!2324835))

(assert (=> b!1893314 d!580070))

(declare-fun d!580072 () Bool)

(declare-fun res!845220 () Bool)

(declare-fun e!1208776 () Bool)

(assert (=> d!580072 (=> res!845220 e!1208776)))

(assert (=> d!580072 (= res!845220 ((_ is Nil!21208) rules!3198))))

(assert (=> d!580072 (= (noDuplicateTag!1410 thiss!23328 rules!3198 Nil!21211) e!1208776)))

(declare-fun b!1893585 () Bool)

(declare-fun e!1208777 () Bool)

(assert (=> b!1893585 (= e!1208776 e!1208777)))

(declare-fun res!845221 () Bool)

(assert (=> b!1893585 (=> (not res!845221) (not e!1208777))))

(declare-fun contains!3828 (List!21293 String!24608) Bool)

(assert (=> b!1893585 (= res!845221 (not (contains!3828 Nil!21211 (tag!4176 (h!26609 rules!3198)))))))

(declare-fun b!1893586 () Bool)

(assert (=> b!1893586 (= e!1208777 (noDuplicateTag!1410 thiss!23328 (t!175805 rules!3198) (Cons!21211 (tag!4176 (h!26609 rules!3198)) Nil!21211)))))

(assert (= (and d!580072 (not res!845220)) b!1893585))

(assert (= (and b!1893585 res!845221) b!1893586))

(declare-fun m!2325069 () Bool)

(assert (=> b!1893585 m!2325069))

(declare-fun m!2325071 () Bool)

(assert (=> b!1893586 m!2325071))

(assert (=> b!1893272 d!580072))

(declare-fun d!580074 () Bool)

(assert (=> d!580074 (= (inv!28304 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619))) (isBalanced!2224 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619)))))))

(declare-fun bs!413248 () Bool)

(assert (= bs!413248 d!580074))

(declare-fun m!2325073 () Bool)

(assert (=> bs!413248 m!2325073))

(assert (=> tb!115193 d!580074))

(declare-fun d!580076 () Bool)

(declare-fun charsToBigInt!0 (List!21288 Int) Int)

(assert (=> d!580076 (= (inv!15 (value!118808 (h!26610 tokens!598))) (= (charsToBigInt!0 (text!27735 (value!118808 (h!26610 tokens!598))) 0) (value!118803 (value!118808 (h!26610 tokens!598)))))))

(declare-fun bs!413249 () Bool)

(assert (= bs!413249 d!580076))

(declare-fun m!2325075 () Bool)

(assert (=> bs!413249 m!2325075))

(assert (=> b!1893304 d!580076))

(declare-fun d!580078 () Bool)

(declare-fun lt!724664 () Bool)

(assert (=> d!580078 (= lt!724664 (isEmpty!13021 (list!8618 (_2!11491 (lex!1504 thiss!23328 rules!3198 (print!1433 thiss!23328 (singletonSeq!1831 separatorToken!354)))))))))

(declare-fun isEmpty!13025 (Conc!7061) Bool)

(assert (=> d!580078 (= lt!724664 (isEmpty!13025 (c!308989 (_2!11491 (lex!1504 thiss!23328 rules!3198 (print!1433 thiss!23328 (singletonSeq!1831 separatorToken!354)))))))))

(assert (=> d!580078 (= (isEmpty!13022 (_2!11491 (lex!1504 thiss!23328 rules!3198 (print!1433 thiss!23328 (singletonSeq!1831 separatorToken!354))))) lt!724664)))

(declare-fun bs!413250 () Bool)

(assert (= bs!413250 d!580078))

(declare-fun m!2325077 () Bool)

(assert (=> bs!413250 m!2325077))

(assert (=> bs!413250 m!2325077))

(declare-fun m!2325079 () Bool)

(assert (=> bs!413250 m!2325079))

(declare-fun m!2325081 () Bool)

(assert (=> bs!413250 m!2325081))

(assert (=> b!1893316 d!580078))

(declare-fun d!580080 () Bool)

(declare-fun e!1208805 () Bool)

(assert (=> d!580080 e!1208805))

(declare-fun res!845244 () Bool)

(assert (=> d!580080 (=> (not res!845244) (not e!1208805))))

(declare-fun e!1208803 () Bool)

(assert (=> d!580080 (= res!845244 e!1208803)))

(declare-fun c!309025 () Bool)

(declare-fun lt!724679 () tuple2!20044)

(assert (=> d!580080 (= c!309025 (> (size!16820 (_1!11491 lt!724679)) 0))))

(declare-fun lexTailRecV2!656 (LexerInterface!3375 List!21290 BalanceConc!13938 BalanceConc!13938 BalanceConc!13938 BalanceConc!13942) tuple2!20044)

(assert (=> d!580080 (= lt!724679 (lexTailRecV2!656 thiss!23328 rules!3198 (print!1433 thiss!23328 (singletonSeq!1831 separatorToken!354)) (BalanceConc!13939 Empty!7061) (print!1433 thiss!23328 (singletonSeq!1831 separatorToken!354)) (BalanceConc!13943 Empty!7063)))))

(assert (=> d!580080 (= (lex!1504 thiss!23328 rules!3198 (print!1433 thiss!23328 (singletonSeq!1831 separatorToken!354))) lt!724679)))

(declare-fun b!1893628 () Bool)

(declare-fun e!1208804 () Bool)

(assert (=> b!1893628 (= e!1208803 e!1208804)))

(declare-fun res!845245 () Bool)

(declare-fun size!16822 (BalanceConc!13938) Int)

(assert (=> b!1893628 (= res!845245 (< (size!16822 (_2!11491 lt!724679)) (size!16822 (print!1433 thiss!23328 (singletonSeq!1831 separatorToken!354)))))))

(assert (=> b!1893628 (=> (not res!845245) (not e!1208804))))

(declare-fun b!1893629 () Bool)

(declare-fun isEmpty!13026 (BalanceConc!13942) Bool)

(assert (=> b!1893629 (= e!1208804 (not (isEmpty!13026 (_1!11491 lt!724679))))))

(declare-fun b!1893630 () Bool)

(declare-datatypes ((tuple2!20048 0))(
  ( (tuple2!20049 (_1!11493 List!21291) (_2!11493 List!21289)) )
))
(declare-fun lexList!933 (LexerInterface!3375 List!21290 List!21289) tuple2!20048)

(assert (=> b!1893630 (= e!1208805 (= (list!8618 (_2!11491 lt!724679)) (_2!11493 (lexList!933 thiss!23328 rules!3198 (list!8618 (print!1433 thiss!23328 (singletonSeq!1831 separatorToken!354)))))))))

(declare-fun b!1893631 () Bool)

(declare-fun res!845246 () Bool)

(assert (=> b!1893631 (=> (not res!845246) (not e!1208805))))

(assert (=> b!1893631 (= res!845246 (= (list!8621 (_1!11491 lt!724679)) (_1!11493 (lexList!933 thiss!23328 rules!3198 (list!8618 (print!1433 thiss!23328 (singletonSeq!1831 separatorToken!354)))))))))

(declare-fun b!1893632 () Bool)

(assert (=> b!1893632 (= e!1208803 (= (_2!11491 lt!724679) (print!1433 thiss!23328 (singletonSeq!1831 separatorToken!354))))))

(assert (= (and d!580080 c!309025) b!1893628))

(assert (= (and d!580080 (not c!309025)) b!1893632))

(assert (= (and b!1893628 res!845245) b!1893629))

(assert (= (and d!580080 res!845244) b!1893631))

(assert (= (and b!1893631 res!845246) b!1893630))

(declare-fun m!2325139 () Bool)

(assert (=> b!1893628 m!2325139))

(assert (=> b!1893628 m!2324827))

(declare-fun m!2325141 () Bool)

(assert (=> b!1893628 m!2325141))

(declare-fun m!2325143 () Bool)

(assert (=> b!1893631 m!2325143))

(assert (=> b!1893631 m!2324827))

(declare-fun m!2325145 () Bool)

(assert (=> b!1893631 m!2325145))

(assert (=> b!1893631 m!2325145))

(declare-fun m!2325147 () Bool)

(assert (=> b!1893631 m!2325147))

(declare-fun m!2325149 () Bool)

(assert (=> b!1893629 m!2325149))

(declare-fun m!2325151 () Bool)

(assert (=> b!1893630 m!2325151))

(assert (=> b!1893630 m!2324827))

(assert (=> b!1893630 m!2325145))

(assert (=> b!1893630 m!2325145))

(assert (=> b!1893630 m!2325147))

(declare-fun m!2325153 () Bool)

(assert (=> d!580080 m!2325153))

(assert (=> d!580080 m!2324827))

(assert (=> d!580080 m!2324827))

(declare-fun m!2325155 () Bool)

(assert (=> d!580080 m!2325155))

(assert (=> b!1893316 d!580080))

(declare-fun d!580104 () Bool)

(declare-fun lt!724685 () BalanceConc!13938)

(declare-fun printList!1020 (LexerInterface!3375 List!21291) List!21289)

(assert (=> d!580104 (= (list!8618 lt!724685) (printList!1020 thiss!23328 (list!8621 (singletonSeq!1831 separatorToken!354))))))

(declare-fun printTailRec!946 (LexerInterface!3375 BalanceConc!13942 Int BalanceConc!13938) BalanceConc!13938)

(assert (=> d!580104 (= lt!724685 (printTailRec!946 thiss!23328 (singletonSeq!1831 separatorToken!354) 0 (BalanceConc!13939 Empty!7061)))))

(assert (=> d!580104 (= (print!1433 thiss!23328 (singletonSeq!1831 separatorToken!354)) lt!724685)))

(declare-fun bs!413263 () Bool)

(assert (= bs!413263 d!580104))

(declare-fun m!2325191 () Bool)

(assert (=> bs!413263 m!2325191))

(assert (=> bs!413263 m!2324831))

(assert (=> bs!413263 m!2324833))

(assert (=> bs!413263 m!2324833))

(declare-fun m!2325199 () Bool)

(assert (=> bs!413263 m!2325199))

(assert (=> bs!413263 m!2324831))

(declare-fun m!2325203 () Bool)

(assert (=> bs!413263 m!2325203))

(assert (=> b!1893316 d!580104))

(declare-fun d!580128 () Bool)

(declare-fun e!1208831 () Bool)

(assert (=> d!580128 e!1208831))

(declare-fun res!845260 () Bool)

(assert (=> d!580128 (=> (not res!845260) (not e!1208831))))

(declare-fun lt!724688 () BalanceConc!13942)

(assert (=> d!580128 (= res!845260 (= (list!8621 lt!724688) (Cons!21209 separatorToken!354 Nil!21209)))))

(declare-fun singleton!826 (Token!7076) BalanceConc!13942)

(assert (=> d!580128 (= lt!724688 (singleton!826 separatorToken!354))))

(assert (=> d!580128 (= (singletonSeq!1831 separatorToken!354) lt!724688)))

(declare-fun b!1893670 () Bool)

(declare-fun isBalanced!2227 (Conc!7063) Bool)

(assert (=> b!1893670 (= e!1208831 (isBalanced!2227 (c!309010 lt!724688)))))

(assert (= (and d!580128 res!845260) b!1893670))

(declare-fun m!2325215 () Bool)

(assert (=> d!580128 m!2325215))

(declare-fun m!2325217 () Bool)

(assert (=> d!580128 m!2325217))

(declare-fun m!2325219 () Bool)

(assert (=> b!1893670 m!2325219))

(assert (=> b!1893316 d!580128))

(declare-fun d!580138 () Bool)

(assert (=> d!580138 (= (inv!15 (value!118808 separatorToken!354)) (= (charsToBigInt!0 (text!27735 (value!118808 separatorToken!354)) 0) (value!118803 (value!118808 separatorToken!354))))))

(declare-fun bs!413266 () Bool)

(assert (= bs!413266 d!580138))

(declare-fun m!2325221 () Bool)

(assert (=> bs!413266 m!2325221))

(assert (=> b!1893285 d!580138))

(declare-fun b!1893693 () Bool)

(declare-fun e!1208852 () Bool)

(declare-fun call!116896 () Bool)

(assert (=> b!1893693 (= e!1208852 call!116896)))

(declare-fun d!580140 () Bool)

(declare-fun c!309042 () Bool)

(assert (=> d!580140 (= c!309042 (and ((_ is Cons!21208) rules!3198) (not (= (isSeparator!3762 (h!26609 rules!3198)) (isSeparator!3762 (h!26609 rules!3198))))))))

(declare-fun e!1208851 () Bool)

(assert (=> d!580140 (= (ruleDisjointCharsFromAllFromOtherType!410 (h!26609 rules!3198) rules!3198) e!1208851)))

(declare-fun bm!116891 () Bool)

(assert (=> bm!116891 (= call!116896 (ruleDisjointCharsFromAllFromOtherType!410 (h!26609 rules!3198) (t!175805 rules!3198)))))

(declare-fun b!1893694 () Bool)

(declare-fun e!1208853 () Bool)

(assert (=> b!1893694 (= e!1208851 e!1208853)))

(declare-fun res!845277 () Bool)

(assert (=> b!1893694 (= res!845277 (not ((_ is Cons!21208) rules!3198)))))

(assert (=> b!1893694 (=> res!845277 e!1208853)))

(declare-fun b!1893695 () Bool)

(assert (=> b!1893695 (= e!1208851 e!1208852)))

(declare-fun res!845278 () Bool)

(declare-fun rulesUseDisjointChars!193 (Rule!7324 Rule!7324) Bool)

(assert (=> b!1893695 (= res!845278 (rulesUseDisjointChars!193 (h!26609 rules!3198) (h!26609 rules!3198)))))

(assert (=> b!1893695 (=> (not res!845278) (not e!1208852))))

(declare-fun b!1893696 () Bool)

(assert (=> b!1893696 (= e!1208853 call!116896)))

(assert (= (and d!580140 c!309042) b!1893695))

(assert (= (and d!580140 (not c!309042)) b!1893694))

(assert (= (and b!1893695 res!845278) b!1893693))

(assert (= (and b!1893694 (not res!845277)) b!1893696))

(assert (= (or b!1893693 b!1893696) bm!116891))

(declare-fun m!2325231 () Bool)

(assert (=> bm!116891 m!2325231))

(declare-fun m!2325233 () Bool)

(assert (=> b!1893695 m!2325233))

(assert (=> b!1893457 d!580140))

(declare-fun d!580146 () Bool)

(declare-fun res!845280 () Bool)

(declare-fun e!1208856 () Bool)

(assert (=> d!580146 (=> res!845280 e!1208856)))

(assert (=> d!580146 (= res!845280 ((_ is Nil!21209) (t!175806 tokens!598)))))

(assert (=> d!580146 (= (forall!4434 (t!175806 tokens!598) lambda!73939) e!1208856)))

(declare-fun b!1893700 () Bool)

(declare-fun e!1208857 () Bool)

(assert (=> b!1893700 (= e!1208856 e!1208857)))

(declare-fun res!845281 () Bool)

(assert (=> b!1893700 (=> (not res!845281) (not e!1208857))))

(assert (=> b!1893700 (= res!845281 (dynLambda!10306 lambda!73939 (h!26610 (t!175806 tokens!598))))))

(declare-fun b!1893701 () Bool)

(assert (=> b!1893701 (= e!1208857 (forall!4434 (t!175806 (t!175806 tokens!598)) lambda!73939))))

(assert (= (and d!580146 (not res!845280)) b!1893700))

(assert (= (and b!1893700 res!845281) b!1893701))

(declare-fun b_lambda!62105 () Bool)

(assert (=> (not b_lambda!62105) (not b!1893700)))

(declare-fun m!2325239 () Bool)

(assert (=> b!1893700 m!2325239))

(declare-fun m!2325241 () Bool)

(assert (=> b!1893701 m!2325241))

(assert (=> b!1893465 d!580146))

(declare-fun d!580150 () Bool)

(declare-fun lt!724689 () Bool)

(assert (=> d!580150 (= lt!724689 (isEmpty!13021 (list!8618 (_2!11491 lt!724628))))))

(assert (=> d!580150 (= lt!724689 (isEmpty!13025 (c!308989 (_2!11491 lt!724628))))))

(assert (=> d!580150 (= (isEmpty!13022 (_2!11491 lt!724628)) lt!724689)))

(declare-fun bs!413267 () Bool)

(assert (= bs!413267 d!580150))

(declare-fun m!2325243 () Bool)

(assert (=> bs!413267 m!2325243))

(assert (=> bs!413267 m!2325243))

(declare-fun m!2325245 () Bool)

(assert (=> bs!413267 m!2325245))

(declare-fun m!2325247 () Bool)

(assert (=> bs!413267 m!2325247))

(assert (=> b!1893315 d!580150))

(declare-fun bs!413272 () Bool)

(declare-fun d!580152 () Bool)

(assert (= bs!413272 (and d!580152 d!579986)))

(declare-fun lambda!73967 () Int)

(assert (=> bs!413272 (= (and (= (toChars!5230 (transformation!3762 (h!26609 rules!3198))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) (= (toValue!5371 (transformation!3762 (h!26609 rules!3198))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) (= lambda!73967 lambda!73948))))

(assert (=> d!580152 true))

(assert (=> d!580152 (< (dynLambda!10304 order!13393 (toChars!5230 (transformation!3762 (h!26609 rules!3198)))) (dynLambda!10303 order!13391 lambda!73967))))

(assert (=> d!580152 true))

(assert (=> d!580152 (< (dynLambda!10302 order!13389 (toValue!5371 (transformation!3762 (h!26609 rules!3198)))) (dynLambda!10303 order!13391 lambda!73967))))

(declare-fun Forall!988 (Int) Bool)

(assert (=> d!580152 (= (semiInverseModEq!1525 (toChars!5230 (transformation!3762 (h!26609 rules!3198))) (toValue!5371 (transformation!3762 (h!26609 rules!3198)))) (Forall!988 lambda!73967))))

(declare-fun bs!413273 () Bool)

(assert (= bs!413273 d!580152))

(declare-fun m!2325261 () Bool)

(assert (=> bs!413273 m!2325261))

(assert (=> d!579956 d!580152))

(declare-fun d!580162 () Bool)

(declare-fun charsToBigInt!1 (List!21288) Int)

(assert (=> d!580162 (= (inv!17 (value!118808 (h!26610 tokens!598))) (= (charsToBigInt!1 (text!27734 (value!118808 (h!26610 tokens!598)))) (value!118800 (value!118808 (h!26610 tokens!598)))))))

(declare-fun bs!413275 () Bool)

(assert (= bs!413275 d!580162))

(declare-fun m!2325267 () Bool)

(assert (=> bs!413275 m!2325267))

(assert (=> b!1893306 d!580162))

(declare-fun b!1893718 () Bool)

(declare-fun e!1208865 () List!21289)

(declare-fun list!8624 (IArray!14127) List!21289)

(assert (=> b!1893718 (= e!1208865 (list!8624 (xs!9955 (c!308989 lt!724619))))))

(declare-fun d!580166 () Bool)

(declare-fun c!309048 () Bool)

(assert (=> d!580166 (= c!309048 ((_ is Empty!7061) (c!308989 lt!724619)))))

(declare-fun e!1208864 () List!21289)

(assert (=> d!580166 (= (list!8622 (c!308989 lt!724619)) e!1208864)))

(declare-fun b!1893719 () Bool)

(declare-fun ++!5723 (List!21289 List!21289) List!21289)

(assert (=> b!1893719 (= e!1208865 (++!5723 (list!8622 (left!17020 (c!308989 lt!724619))) (list!8622 (right!17350 (c!308989 lt!724619)))))))

(declare-fun b!1893716 () Bool)

(assert (=> b!1893716 (= e!1208864 Nil!21207)))

(declare-fun b!1893717 () Bool)

(assert (=> b!1893717 (= e!1208864 e!1208865)))

(declare-fun c!309049 () Bool)

(assert (=> b!1893717 (= c!309049 ((_ is Leaf!10405) (c!308989 lt!724619)))))

(assert (= (and d!580166 c!309048) b!1893716))

(assert (= (and d!580166 (not c!309048)) b!1893717))

(assert (= (and b!1893717 c!309049) b!1893718))

(assert (= (and b!1893717 (not c!309049)) b!1893719))

(declare-fun m!2325279 () Bool)

(assert (=> b!1893718 m!2325279))

(declare-fun m!2325281 () Bool)

(assert (=> b!1893719 m!2325281))

(declare-fun m!2325283 () Bool)

(assert (=> b!1893719 m!2325283))

(assert (=> b!1893719 m!2325281))

(assert (=> b!1893719 m!2325283))

(declare-fun m!2325285 () Bool)

(assert (=> b!1893719 m!2325285))

(assert (=> d!579984 d!580166))

(declare-fun bs!413279 () Bool)

(declare-fun d!580176 () Bool)

(assert (= bs!413279 (and d!580176 d!579986)))

(declare-fun lambda!73971 () Int)

(assert (=> bs!413279 (= lambda!73971 lambda!73948)))

(declare-fun bs!413280 () Bool)

(assert (= bs!413280 (and d!580176 d!580152)))

(assert (=> bs!413280 (= (and (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (toChars!5230 (transformation!3762 (h!26609 rules!3198)))) (= (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (toValue!5371 (transformation!3762 (h!26609 rules!3198))))) (= lambda!73971 lambda!73967))))

(assert (=> d!580176 true))

(assert (=> d!580176 (< (dynLambda!10304 order!13393 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) (dynLambda!10303 order!13391 lambda!73971))))

(assert (=> d!580176 true))

(assert (=> d!580176 (< (dynLambda!10302 order!13389 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) (dynLambda!10303 order!13391 lambda!73971))))

(assert (=> d!580176 (= (semiInverseModEq!1525 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) (Forall!988 lambda!73971))))

(declare-fun bs!413282 () Bool)

(assert (= bs!413282 d!580176))

(declare-fun m!2325289 () Bool)

(assert (=> bs!413282 m!2325289))

(assert (=> d!580036 d!580176))

(declare-fun d!580178 () Bool)

(declare-fun charsToInt!0 (List!21288) (_ BitVec 32))

(assert (=> d!580178 (= (inv!16 (value!118808 (h!26610 tokens!598))) (= (charsToInt!0 (text!27733 (value!118808 (h!26610 tokens!598)))) (value!118799 (value!118808 (h!26610 tokens!598)))))))

(declare-fun bs!413286 () Bool)

(assert (= bs!413286 d!580178))

(declare-fun m!2325293 () Bool)

(assert (=> bs!413286 m!2325293))

(assert (=> b!1893307 d!580178))

(declare-fun d!580182 () Bool)

(assert (=> d!580182 (= (isEmpty!13021 (originalCharacters!4569 (h!26610 tokens!598))) ((_ is Nil!21207) (originalCharacters!4569 (h!26610 tokens!598))))))

(assert (=> d!579976 d!580182))

(declare-fun d!580186 () Bool)

(assert (=> d!580186 (= (inv!17 (value!118808 separatorToken!354)) (= (charsToBigInt!1 (text!27734 (value!118808 separatorToken!354))) (value!118800 (value!118808 separatorToken!354))))))

(declare-fun bs!413288 () Bool)

(assert (= bs!413288 d!580186))

(declare-fun m!2325297 () Bool)

(assert (=> bs!413288 m!2325297))

(assert (=> b!1893287 d!580186))

(declare-fun d!580188 () Bool)

(assert (=> d!580188 true))

(declare-fun lt!724701 () Bool)

(declare-fun rulesValidInductive!1271 (LexerInterface!3375 List!21290) Bool)

(assert (=> d!580188 (= lt!724701 (rulesValidInductive!1271 thiss!23328 rules!3198))))

(declare-fun lambda!73976 () Int)

(declare-fun forall!4435 (List!21290 Int) Bool)

(assert (=> d!580188 (= lt!724701 (forall!4435 rules!3198 lambda!73976))))

(assert (=> d!580188 (= (rulesValid!1412 thiss!23328 rules!3198) lt!724701)))

(declare-fun bs!413290 () Bool)

(assert (= bs!413290 d!580188))

(declare-fun m!2325309 () Bool)

(assert (=> bs!413290 m!2325309))

(declare-fun m!2325311 () Bool)

(assert (=> bs!413290 m!2325311))

(assert (=> d!579960 d!580188))

(declare-fun d!580194 () Bool)

(assert (=> d!580194 (= (list!8618 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598)))) (list!8622 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598))))))))

(declare-fun bs!413291 () Bool)

(assert (= bs!413291 d!580194))

(declare-fun m!2325313 () Bool)

(assert (=> bs!413291 m!2325313))

(assert (=> b!1893300 d!580194))

(declare-fun d!580196 () Bool)

(declare-fun c!309052 () Bool)

(assert (=> d!580196 (= c!309052 ((_ is Node!7061) (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619)))))))

(declare-fun e!1208868 () Bool)

(assert (=> d!580196 (= (inv!28303 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619)))) e!1208868)))

(declare-fun b!1893728 () Bool)

(assert (=> b!1893728 (= e!1208868 (inv!28307 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619)))))))

(declare-fun b!1893729 () Bool)

(declare-fun e!1208869 () Bool)

(assert (=> b!1893729 (= e!1208868 e!1208869)))

(declare-fun res!845284 () Bool)

(assert (=> b!1893729 (= res!845284 (not ((_ is Leaf!10405) (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619))))))))

(assert (=> b!1893729 (=> res!845284 e!1208869)))

(declare-fun b!1893730 () Bool)

(assert (=> b!1893730 (= e!1208869 (inv!28308 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619)))))))

(assert (= (and d!580196 c!309052) b!1893728))

(assert (= (and d!580196 (not c!309052)) b!1893729))

(assert (= (and b!1893729 (not res!845284)) b!1893730))

(declare-fun m!2325315 () Bool)

(assert (=> b!1893728 m!2325315))

(declare-fun m!2325317 () Bool)

(assert (=> b!1893730 m!2325317))

(assert (=> b!1893450 d!580196))

(declare-fun d!580198 () Bool)

(declare-fun res!845285 () Bool)

(declare-fun e!1208870 () Bool)

(assert (=> d!580198 (=> res!845285 e!1208870)))

(assert (=> d!580198 (= res!845285 (not ((_ is Cons!21208) (t!175805 rules!3198))))))

(assert (=> d!580198 (= (sepAndNonSepRulesDisjointChars!860 rules!3198 (t!175805 rules!3198)) e!1208870)))

(declare-fun b!1893731 () Bool)

(declare-fun e!1208871 () Bool)

(assert (=> b!1893731 (= e!1208870 e!1208871)))

(declare-fun res!845286 () Bool)

(assert (=> b!1893731 (=> (not res!845286) (not e!1208871))))

(assert (=> b!1893731 (= res!845286 (ruleDisjointCharsFromAllFromOtherType!410 (h!26609 (t!175805 rules!3198)) rules!3198))))

(declare-fun b!1893732 () Bool)

(assert (=> b!1893732 (= e!1208871 (sepAndNonSepRulesDisjointChars!860 rules!3198 (t!175805 (t!175805 rules!3198))))))

(assert (= (and d!580198 (not res!845285)) b!1893731))

(assert (= (and b!1893731 res!845286) b!1893732))

(declare-fun m!2325319 () Bool)

(assert (=> b!1893731 m!2325319))

(declare-fun m!2325321 () Bool)

(assert (=> b!1893732 m!2325321))

(assert (=> b!1893458 d!580198))

(declare-fun bs!413292 () Bool)

(declare-fun d!580200 () Bool)

(assert (= bs!413292 (and d!580200 d!580056)))

(declare-fun lambda!73977 () Int)

(assert (=> bs!413292 (= (= (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (toValue!5371 (transformation!3762 (h!26609 rules!3198)))) (= lambda!73977 lambda!73958))))

(declare-fun bs!413293 () Bool)

(assert (= bs!413293 (and d!580200 d!580064)))

(assert (=> bs!413293 (= (= (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (toValue!5371 (transformation!3762 (rule!5955 separatorToken!354)))) (= lambda!73977 lambda!73960))))

(assert (=> d!580200 true))

(assert (=> d!580200 (< (dynLambda!10302 order!13389 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) (dynLambda!10308 order!13397 lambda!73977))))

(assert (=> d!580200 (= (equivClasses!1452 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) (Forall2!612 lambda!73977))))

(declare-fun bs!413294 () Bool)

(assert (= bs!413294 d!580200))

(declare-fun m!2325323 () Bool)

(assert (=> bs!413294 m!2325323))

(assert (=> b!1893485 d!580200))

(declare-fun d!580202 () Bool)

(assert (=> d!580202 (= (inv!16 (value!118808 separatorToken!354)) (= (charsToInt!0 (text!27733 (value!118808 separatorToken!354))) (value!118799 (value!118808 separatorToken!354))))))

(declare-fun bs!413295 () Bool)

(assert (= bs!413295 d!580202))

(declare-fun m!2325325 () Bool)

(assert (=> bs!413295 m!2325325))

(assert (=> b!1893288 d!580202))

(declare-fun d!580204 () Bool)

(declare-fun lt!724709 () Int)

(assert (=> d!580204 (>= lt!724709 0)))

(declare-fun e!1208879 () Int)

(assert (=> d!580204 (= lt!724709 e!1208879)))

(declare-fun c!309055 () Bool)

(assert (=> d!580204 (= c!309055 ((_ is Nil!21207) (originalCharacters!4569 (h!26610 tokens!598))))))

(assert (=> d!580204 (= (size!16819 (originalCharacters!4569 (h!26610 tokens!598))) lt!724709)))

(declare-fun b!1893743 () Bool)

(assert (=> b!1893743 (= e!1208879 0)))

(declare-fun b!1893744 () Bool)

(assert (=> b!1893744 (= e!1208879 (+ 1 (size!16819 (t!175804 (originalCharacters!4569 (h!26610 tokens!598))))))))

(assert (= (and d!580204 c!309055) b!1893743))

(assert (= (and d!580204 (not c!309055)) b!1893744))

(declare-fun m!2325347 () Bool)

(assert (=> b!1893744 m!2325347))

(assert (=> b!1893301 d!580204))

(declare-fun d!580208 () Bool)

(declare-fun c!309056 () Bool)

(assert (=> d!580208 (= c!309056 ((_ is IntegerValue!11694) (value!118808 (h!26610 (t!175806 tokens!598)))))))

(declare-fun e!1208881 () Bool)

(assert (=> d!580208 (= (inv!21 (value!118808 (h!26610 (t!175806 tokens!598)))) e!1208881)))

(declare-fun b!1893745 () Bool)

(declare-fun e!1208882 () Bool)

(assert (=> b!1893745 (= e!1208881 e!1208882)))

(declare-fun c!309057 () Bool)

(assert (=> b!1893745 (= c!309057 ((_ is IntegerValue!11695) (value!118808 (h!26610 (t!175806 tokens!598)))))))

(declare-fun b!1893746 () Bool)

(declare-fun e!1208880 () Bool)

(assert (=> b!1893746 (= e!1208880 (inv!15 (value!118808 (h!26610 (t!175806 tokens!598)))))))

(declare-fun b!1893747 () Bool)

(declare-fun res!845293 () Bool)

(assert (=> b!1893747 (=> res!845293 e!1208880)))

(assert (=> b!1893747 (= res!845293 (not ((_ is IntegerValue!11696) (value!118808 (h!26610 (t!175806 tokens!598))))))))

(assert (=> b!1893747 (= e!1208882 e!1208880)))

(declare-fun b!1893748 () Bool)

(assert (=> b!1893748 (= e!1208882 (inv!17 (value!118808 (h!26610 (t!175806 tokens!598)))))))

(declare-fun b!1893749 () Bool)

(assert (=> b!1893749 (= e!1208881 (inv!16 (value!118808 (h!26610 (t!175806 tokens!598)))))))

(assert (= (and d!580208 c!309056) b!1893749))

(assert (= (and d!580208 (not c!309056)) b!1893745))

(assert (= (and b!1893745 c!309057) b!1893748))

(assert (= (and b!1893745 (not c!309057)) b!1893747))

(assert (= (and b!1893747 (not res!845293)) b!1893746))

(declare-fun m!2325351 () Bool)

(assert (=> b!1893746 m!2325351))

(declare-fun m!2325353 () Bool)

(assert (=> b!1893748 m!2325353))

(declare-fun m!2325355 () Bool)

(assert (=> b!1893749 m!2325355))

(assert (=> b!1893532 d!580208))

(declare-fun d!580212 () Bool)

(declare-fun c!309059 () Bool)

(assert (=> d!580212 (= c!309059 ((_ is IntegerValue!11694) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619)))))

(declare-fun e!1208886 () Bool)

(assert (=> d!580212 (= (inv!21 (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619)) e!1208886)))

(declare-fun b!1893753 () Bool)

(declare-fun e!1208887 () Bool)

(assert (=> b!1893753 (= e!1208886 e!1208887)))

(declare-fun c!309060 () Bool)

(assert (=> b!1893753 (= c!309060 ((_ is IntegerValue!11695) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619)))))

(declare-fun b!1893754 () Bool)

(declare-fun e!1208885 () Bool)

(assert (=> b!1893754 (= e!1208885 (inv!15 (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619)))))

(declare-fun b!1893755 () Bool)

(declare-fun res!845295 () Bool)

(assert (=> b!1893755 (=> res!845295 e!1208885)))

(assert (=> b!1893755 (= res!845295 (not ((_ is IntegerValue!11696) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619))))))

(assert (=> b!1893755 (= e!1208887 e!1208885)))

(declare-fun b!1893756 () Bool)

(assert (=> b!1893756 (= e!1208887 (inv!17 (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619)))))

(declare-fun b!1893757 () Bool)

(assert (=> b!1893757 (= e!1208886 (inv!16 (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619)))))

(assert (= (and d!580212 c!309059) b!1893757))

(assert (= (and d!580212 (not c!309059)) b!1893753))

(assert (= (and b!1893753 c!309060) b!1893756))

(assert (= (and b!1893753 (not c!309060)) b!1893755))

(assert (= (and b!1893755 (not res!845295)) b!1893754))

(declare-fun m!2325361 () Bool)

(assert (=> b!1893754 m!2325361))

(declare-fun m!2325363 () Bool)

(assert (=> b!1893756 m!2325363))

(declare-fun m!2325365 () Bool)

(assert (=> b!1893757 m!2325365))

(assert (=> tb!115199 d!580212))

(declare-fun d!580216 () Bool)

(declare-fun lt!724710 () Int)

(assert (=> d!580216 (>= lt!724710 0)))

(declare-fun e!1208888 () Int)

(assert (=> d!580216 (= lt!724710 e!1208888)))

(declare-fun c!309061 () Bool)

(assert (=> d!580216 (= c!309061 ((_ is Nil!21207) (originalCharacters!4569 separatorToken!354)))))

(assert (=> d!580216 (= (size!16819 (originalCharacters!4569 separatorToken!354)) lt!724710)))

(declare-fun b!1893758 () Bool)

(assert (=> b!1893758 (= e!1208888 0)))

(declare-fun b!1893759 () Bool)

(assert (=> b!1893759 (= e!1208888 (+ 1 (size!16819 (t!175804 (originalCharacters!4569 separatorToken!354)))))))

(assert (= (and d!580216 c!309061) b!1893758))

(assert (= (and d!580216 (not c!309061)) b!1893759))

(declare-fun m!2325367 () Bool)

(assert (=> b!1893759 m!2325367))

(assert (=> b!1893294 d!580216))

(declare-fun d!580218 () Bool)

(assert (=> d!580218 (= (inv!28296 (tag!4176 (rule!5955 (h!26610 (t!175806 tokens!598))))) (= (mod (str.len (value!118807 (tag!4176 (rule!5955 (h!26610 (t!175806 tokens!598)))))) 2) 0))))

(assert (=> b!1893533 d!580218))

(declare-fun d!580220 () Bool)

(declare-fun res!845296 () Bool)

(declare-fun e!1208889 () Bool)

(assert (=> d!580220 (=> (not res!845296) (not e!1208889))))

(assert (=> d!580220 (= res!845296 (semiInverseModEq!1525 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598)))))))))

(assert (=> d!580220 (= (inv!28299 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))) e!1208889)))

(declare-fun b!1893760 () Bool)

(assert (=> b!1893760 (= e!1208889 (equivClasses!1452 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598)))))))))

(assert (= (and d!580220 res!845296) b!1893760))

(declare-fun m!2325371 () Bool)

(assert (=> d!580220 m!2325371))

(declare-fun m!2325373 () Bool)

(assert (=> b!1893760 m!2325373))

(assert (=> b!1893533 d!580220))

(declare-fun b!1893765 () Bool)

(declare-fun e!1208892 () List!21289)

(assert (=> b!1893765 (= e!1208892 (list!8624 (xs!9955 (c!308989 (seqFromList!2634 (originalCharacters!4569 (h!26610 tokens!598)))))))))

(declare-fun d!580224 () Bool)

(declare-fun c!309063 () Bool)

(assert (=> d!580224 (= c!309063 ((_ is Empty!7061) (c!308989 (seqFromList!2634 (originalCharacters!4569 (h!26610 tokens!598))))))))

(declare-fun e!1208891 () List!21289)

(assert (=> d!580224 (= (list!8622 (c!308989 (seqFromList!2634 (originalCharacters!4569 (h!26610 tokens!598))))) e!1208891)))

(declare-fun b!1893766 () Bool)

(assert (=> b!1893766 (= e!1208892 (++!5723 (list!8622 (left!17020 (c!308989 (seqFromList!2634 (originalCharacters!4569 (h!26610 tokens!598)))))) (list!8622 (right!17350 (c!308989 (seqFromList!2634 (originalCharacters!4569 (h!26610 tokens!598))))))))))

(declare-fun b!1893763 () Bool)

(assert (=> b!1893763 (= e!1208891 Nil!21207)))

(declare-fun b!1893764 () Bool)

(assert (=> b!1893764 (= e!1208891 e!1208892)))

(declare-fun c!309064 () Bool)

(assert (=> b!1893764 (= c!309064 ((_ is Leaf!10405) (c!308989 (seqFromList!2634 (originalCharacters!4569 (h!26610 tokens!598))))))))

(assert (= (and d!580224 c!309063) b!1893763))

(assert (= (and d!580224 (not c!309063)) b!1893764))

(assert (= (and b!1893764 c!309064) b!1893765))

(assert (= (and b!1893764 (not c!309064)) b!1893766))

(declare-fun m!2325377 () Bool)

(assert (=> b!1893765 m!2325377))

(declare-fun m!2325379 () Bool)

(assert (=> b!1893766 m!2325379))

(declare-fun m!2325381 () Bool)

(assert (=> b!1893766 m!2325381))

(assert (=> b!1893766 m!2325379))

(assert (=> b!1893766 m!2325381))

(declare-fun m!2325383 () Bool)

(assert (=> b!1893766 m!2325383))

(assert (=> d!580018 d!580224))

(declare-fun d!580226 () Bool)

(assert (=> d!580226 (= (list!8618 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619))) (list!8622 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619)))))))

(declare-fun bs!413299 () Bool)

(assert (= bs!413299 d!580226))

(declare-fun m!2325385 () Bool)

(assert (=> bs!413299 m!2325385))

(assert (=> d!579986 d!580226))

(assert (=> d!579986 d!579984))

(declare-fun d!580228 () Bool)

(declare-fun dynLambda!10311 (Int BalanceConc!13938) Bool)

(assert (=> d!580228 (dynLambda!10311 lambda!73948 lt!724619)))

(declare-fun lt!724714 () Unit!35582)

(declare-fun choose!11828 (Int BalanceConc!13938) Unit!35582)

(assert (=> d!580228 (= lt!724714 (choose!11828 lambda!73948 lt!724619))))

(assert (=> d!580228 (Forall!988 lambda!73948)))

(assert (=> d!580228 (= (ForallOf!371 lambda!73948 lt!724619) lt!724714)))

(declare-fun b_lambda!62111 () Bool)

(assert (=> (not b_lambda!62111) (not d!580228)))

(declare-fun bs!413300 () Bool)

(assert (= bs!413300 d!580228))

(declare-fun m!2325393 () Bool)

(assert (=> bs!413300 m!2325393))

(declare-fun m!2325395 () Bool)

(assert (=> bs!413300 m!2325395))

(declare-fun m!2325397 () Bool)

(assert (=> bs!413300 m!2325397))

(assert (=> d!579986 d!580228))

(declare-fun d!580230 () Bool)

(declare-fun res!845297 () Bool)

(declare-fun e!1208906 () Bool)

(assert (=> d!580230 (=> (not res!845297) (not e!1208906))))

(assert (=> d!580230 (= res!845297 (not (isEmpty!13021 (originalCharacters!4569 (h!26610 (t!175806 tokens!598))))))))

(assert (=> d!580230 (= (inv!28300 (h!26610 (t!175806 tokens!598))) e!1208906)))

(declare-fun b!1893783 () Bool)

(declare-fun res!845298 () Bool)

(assert (=> b!1893783 (=> (not res!845298) (not e!1208906))))

(assert (=> b!1893783 (= res!845298 (= (originalCharacters!4569 (h!26610 (t!175806 tokens!598))) (list!8618 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))) (value!118808 (h!26610 (t!175806 tokens!598)))))))))

(declare-fun b!1893784 () Bool)

(assert (=> b!1893784 (= e!1208906 (= (size!16816 (h!26610 (t!175806 tokens!598))) (size!16819 (originalCharacters!4569 (h!26610 (t!175806 tokens!598))))))))

(assert (= (and d!580230 res!845297) b!1893783))

(assert (= (and b!1893783 res!845298) b!1893784))

(declare-fun b_lambda!62113 () Bool)

(assert (=> (not b_lambda!62113) (not b!1893783)))

(declare-fun t!175920 () Bool)

(declare-fun tb!115241 () Bool)

(assert (=> (and b!1893534 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598)))))) t!175920) tb!115241))

(declare-fun b!1893785 () Bool)

(declare-fun e!1208907 () Bool)

(declare-fun tp!540067 () Bool)

(assert (=> b!1893785 (= e!1208907 (and (inv!28303 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))) (value!118808 (h!26610 (t!175806 tokens!598)))))) tp!540067))))

(declare-fun result!139342 () Bool)

(assert (=> tb!115241 (= result!139342 (and (inv!28304 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))) (value!118808 (h!26610 (t!175806 tokens!598))))) e!1208907))))

(assert (= tb!115241 b!1893785))

(declare-fun m!2325399 () Bool)

(assert (=> b!1893785 m!2325399))

(declare-fun m!2325401 () Bool)

(assert (=> tb!115241 m!2325401))

(assert (=> b!1893783 t!175920))

(declare-fun b_and!145773 () Bool)

(assert (= b_and!145757 (and (=> t!175920 result!139342) b_and!145773)))

(declare-fun tb!115243 () Bool)

(declare-fun t!175922 () Bool)

(assert (=> (and b!1893236 (= (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598)))))) t!175922) tb!115243))

(declare-fun result!139344 () Bool)

(assert (= result!139344 result!139342))

(assert (=> b!1893783 t!175922))

(declare-fun b_and!145775 () Bool)

(assert (= b_and!145745 (and (=> t!175922 result!139344) b_and!145775)))

(declare-fun t!175924 () Bool)

(declare-fun tb!115245 () Bool)

(assert (=> (and b!1893246 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598)))))) t!175924) tb!115245))

(declare-fun result!139346 () Bool)

(assert (= result!139346 result!139342))

(assert (=> b!1893783 t!175924))

(declare-fun b_and!145777 () Bool)

(assert (= b_and!145747 (and (=> t!175924 result!139346) b_and!145777)))

(declare-fun tb!115247 () Bool)

(declare-fun t!175926 () Bool)

(assert (=> (and b!1893251 (= (toChars!5230 (transformation!3762 (h!26609 rules!3198))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598)))))) t!175926) tb!115247))

(declare-fun result!139348 () Bool)

(assert (= result!139348 result!139342))

(assert (=> b!1893783 t!175926))

(declare-fun b_and!145779 () Bool)

(assert (= b_and!145749 (and (=> t!175926 result!139348) b_and!145779)))

(declare-fun t!175928 () Bool)

(declare-fun tb!115249 () Bool)

(assert (=> (and b!1893515 (= (toChars!5230 (transformation!3762 (h!26609 (t!175805 rules!3198)))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598)))))) t!175928) tb!115249))

(declare-fun result!139350 () Bool)

(assert (= result!139350 result!139342))

(assert (=> b!1893783 t!175928))

(declare-fun b_and!145781 () Bool)

(assert (= b_and!145753 (and (=> t!175928 result!139350) b_and!145781)))

(declare-fun m!2325411 () Bool)

(assert (=> d!580230 m!2325411))

(declare-fun m!2325413 () Bool)

(assert (=> b!1893783 m!2325413))

(assert (=> b!1893783 m!2325413))

(declare-fun m!2325415 () Bool)

(assert (=> b!1893783 m!2325415))

(declare-fun m!2325417 () Bool)

(assert (=> b!1893784 m!2325417))

(assert (=> b!1893531 d!580230))

(declare-fun d!580232 () Bool)

(assert (=> d!580232 (= (list!8618 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354))) (list!8622 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354)))))))

(declare-fun bs!413301 () Bool)

(assert (= bs!413301 d!580232))

(declare-fun m!2325419 () Bool)

(assert (=> bs!413301 m!2325419))

(assert (=> b!1893293 d!580232))

(assert (=> d!579982 d!580128))

(assert (=> d!579982 d!580104))

(declare-fun d!580234 () Bool)

(declare-fun list!8626 (Conc!7063) List!21291)

(assert (=> d!580234 (= (list!8621 (_1!11491 (lex!1504 thiss!23328 rules!3198 (print!1433 thiss!23328 (singletonSeq!1831 separatorToken!354))))) (list!8626 (c!309010 (_1!11491 (lex!1504 thiss!23328 rules!3198 (print!1433 thiss!23328 (singletonSeq!1831 separatorToken!354)))))))))

(declare-fun bs!413302 () Bool)

(assert (= bs!413302 d!580234))

(declare-fun m!2325421 () Bool)

(assert (=> bs!413302 m!2325421))

(assert (=> d!579982 d!580234))

(declare-fun d!580236 () Bool)

(assert (=> d!580236 (= (list!8621 (singletonSeq!1831 separatorToken!354)) (list!8626 (c!309010 (singletonSeq!1831 separatorToken!354))))))

(declare-fun bs!413303 () Bool)

(assert (= bs!413303 d!580236))

(declare-fun m!2325423 () Bool)

(assert (=> bs!413303 m!2325423))

(assert (=> d!579982 d!580236))

(declare-fun d!580238 () Bool)

(declare-fun lt!724717 () Int)

(declare-fun size!16825 (List!21291) Int)

(assert (=> d!580238 (= lt!724717 (size!16825 (list!8621 (_1!11491 lt!724628))))))

(declare-fun size!16826 (Conc!7063) Int)

(assert (=> d!580238 (= lt!724717 (size!16826 (c!309010 (_1!11491 lt!724628))))))

(assert (=> d!580238 (= (size!16820 (_1!11491 lt!724628)) lt!724717)))

(declare-fun bs!413304 () Bool)

(assert (= bs!413304 d!580238))

(assert (=> bs!413304 m!2325063))

(assert (=> bs!413304 m!2325063))

(declare-fun m!2325431 () Bool)

(assert (=> bs!413304 m!2325431))

(declare-fun m!2325433 () Bool)

(assert (=> bs!413304 m!2325433))

(assert (=> d!579982 d!580238))

(assert (=> d!579982 d!580080))

(assert (=> d!579982 d!579978))

(declare-fun d!580240 () Bool)

(assert (=> d!580240 (= (inv!28304 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598)))) (isBalanced!2224 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598))))))))

(declare-fun bs!413305 () Bool)

(assert (= bs!413305 d!580240))

(declare-fun m!2325435 () Bool)

(assert (=> bs!413305 m!2325435))

(assert (=> tb!115147 d!580240))

(declare-fun bs!413306 () Bool)

(declare-fun d!580242 () Bool)

(assert (= bs!413306 (and d!580242 d!579986)))

(declare-fun lambda!73979 () Int)

(assert (=> bs!413306 (= (and (= (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) (= (toValue!5371 (transformation!3762 (rule!5955 separatorToken!354))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) (= lambda!73979 lambda!73948))))

(declare-fun bs!413307 () Bool)

(assert (= bs!413307 (and d!580242 d!580152)))

(assert (=> bs!413307 (= (and (= (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (toChars!5230 (transformation!3762 (h!26609 rules!3198)))) (= (toValue!5371 (transformation!3762 (rule!5955 separatorToken!354))) (toValue!5371 (transformation!3762 (h!26609 rules!3198))))) (= lambda!73979 lambda!73967))))

(declare-fun bs!413308 () Bool)

(assert (= bs!413308 (and d!580242 d!580176)))

(assert (=> bs!413308 (= (and (= (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) (= (toValue!5371 (transformation!3762 (rule!5955 separatorToken!354))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))))) (= lambda!73979 lambda!73971))))

(assert (=> d!580242 true))

(assert (=> d!580242 (< (dynLambda!10304 order!13393 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354)))) (dynLambda!10303 order!13391 lambda!73979))))

(assert (=> d!580242 true))

(assert (=> d!580242 (< (dynLambda!10302 order!13389 (toValue!5371 (transformation!3762 (rule!5955 separatorToken!354)))) (dynLambda!10303 order!13391 lambda!73979))))

(assert (=> d!580242 (= (semiInverseModEq!1525 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (toValue!5371 (transformation!3762 (rule!5955 separatorToken!354)))) (Forall!988 lambda!73979))))

(declare-fun bs!413309 () Bool)

(assert (= bs!413309 d!580242))

(declare-fun m!2325441 () Bool)

(assert (=> bs!413309 m!2325441))

(assert (=> d!580028 d!580242))

(declare-fun d!580244 () Bool)

(assert (=> d!580244 (= (list!8618 lt!724647) (list!8622 (c!308989 lt!724647)))))

(declare-fun bs!413310 () Bool)

(assert (= bs!413310 d!580244))

(declare-fun m!2325443 () Bool)

(assert (=> bs!413310 m!2325443))

(assert (=> d!580020 d!580244))

(declare-fun d!580246 () Bool)

(assert (=> d!580246 (= (inv!28296 (tag!4176 (h!26609 (t!175805 rules!3198)))) (= (mod (str.len (value!118807 (tag!4176 (h!26609 (t!175805 rules!3198))))) 2) 0))))

(assert (=> b!1893514 d!580246))

(declare-fun d!580248 () Bool)

(declare-fun res!845299 () Bool)

(declare-fun e!1208936 () Bool)

(assert (=> d!580248 (=> (not res!845299) (not e!1208936))))

(assert (=> d!580248 (= res!845299 (semiInverseModEq!1525 (toChars!5230 (transformation!3762 (h!26609 (t!175805 rules!3198)))) (toValue!5371 (transformation!3762 (h!26609 (t!175805 rules!3198))))))))

(assert (=> d!580248 (= (inv!28299 (transformation!3762 (h!26609 (t!175805 rules!3198)))) e!1208936)))

(declare-fun b!1893860 () Bool)

(assert (=> b!1893860 (= e!1208936 (equivClasses!1452 (toChars!5230 (transformation!3762 (h!26609 (t!175805 rules!3198)))) (toValue!5371 (transformation!3762 (h!26609 (t!175805 rules!3198))))))))

(assert (= (and d!580248 res!845299) b!1893860))

(declare-fun m!2325451 () Bool)

(assert (=> d!580248 m!2325451))

(declare-fun m!2325453 () Bool)

(assert (=> b!1893860 m!2325453))

(assert (=> b!1893514 d!580248))

(declare-fun d!580250 () Bool)

(declare-fun c!309065 () Bool)

(assert (=> d!580250 (= c!309065 ((_ is Node!7061) (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354)))))))

(declare-fun e!1208939 () Bool)

(assert (=> d!580250 (= (inv!28303 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354)))) e!1208939)))

(declare-fun b!1893869 () Bool)

(assert (=> b!1893869 (= e!1208939 (inv!28307 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354)))))))

(declare-fun b!1893870 () Bool)

(declare-fun e!1208940 () Bool)

(assert (=> b!1893870 (= e!1208939 e!1208940)))

(declare-fun res!845300 () Bool)

(assert (=> b!1893870 (= res!845300 (not ((_ is Leaf!10405) (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354))))))))

(assert (=> b!1893870 (=> res!845300 e!1208940)))

(declare-fun b!1893871 () Bool)

(assert (=> b!1893871 (= e!1208940 (inv!28308 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354)))))))

(assert (= (and d!580250 c!309065) b!1893869))

(assert (= (and d!580250 (not c!309065)) b!1893870))

(assert (= (and b!1893870 (not res!845300)) b!1893871))

(declare-fun m!2325455 () Bool)

(assert (=> b!1893869 m!2325455))

(declare-fun m!2325457 () Bool)

(assert (=> b!1893871 m!2325457))

(assert (=> b!1893299 d!580250))

(declare-fun d!580252 () Bool)

(declare-fun res!845301 () Bool)

(declare-fun e!1208941 () Bool)

(assert (=> d!580252 (=> res!845301 e!1208941)))

(assert (=> d!580252 (= res!845301 ((_ is Nil!21209) tokens!598))))

(assert (=> d!580252 (= (forall!4434 tokens!598 lambda!73951) e!1208941)))

(declare-fun b!1893872 () Bool)

(declare-fun e!1208942 () Bool)

(assert (=> b!1893872 (= e!1208941 e!1208942)))

(declare-fun res!845302 () Bool)

(assert (=> b!1893872 (=> (not res!845302) (not e!1208942))))

(assert (=> b!1893872 (= res!845302 (dynLambda!10306 lambda!73951 (h!26610 tokens!598)))))

(declare-fun b!1893873 () Bool)

(assert (=> b!1893873 (= e!1208942 (forall!4434 (t!175806 tokens!598) lambda!73951))))

(assert (= (and d!580252 (not res!845301)) b!1893872))

(assert (= (and b!1893872 res!845302) b!1893873))

(declare-fun b_lambda!62123 () Bool)

(assert (=> (not b_lambda!62123) (not b!1893872)))

(declare-fun m!2325459 () Bool)

(assert (=> b!1893872 m!2325459))

(declare-fun m!2325461 () Bool)

(assert (=> b!1893873 m!2325461))

(assert (=> d!580032 d!580252))

(assert (=> d!580032 d!579978))

(declare-fun d!580258 () Bool)

(declare-fun e!1208945 () Bool)

(assert (=> d!580258 e!1208945))

(declare-fun res!845305 () Bool)

(assert (=> d!580258 (=> (not res!845305) (not e!1208945))))

(declare-fun lt!724720 () BalanceConc!13938)

(assert (=> d!580258 (= res!845305 (= (list!8618 lt!724720) (originalCharacters!4569 (h!26610 tokens!598))))))

(declare-fun fromList!468 (List!21289) Conc!7061)

(assert (=> d!580258 (= lt!724720 (BalanceConc!13939 (fromList!468 (originalCharacters!4569 (h!26610 tokens!598)))))))

(assert (=> d!580258 (= (fromListB!1204 (originalCharacters!4569 (h!26610 tokens!598))) lt!724720)))

(declare-fun b!1893876 () Bool)

(assert (=> b!1893876 (= e!1208945 (isBalanced!2224 (fromList!468 (originalCharacters!4569 (h!26610 tokens!598)))))))

(assert (= (and d!580258 res!845305) b!1893876))

(declare-fun m!2325463 () Bool)

(assert (=> d!580258 m!2325463))

(declare-fun m!2325465 () Bool)

(assert (=> d!580258 m!2325465))

(assert (=> b!1893876 m!2325465))

(assert (=> b!1893876 m!2325465))

(declare-fun m!2325467 () Bool)

(assert (=> b!1893876 m!2325467))

(assert (=> d!580022 d!580258))

(declare-fun b!1893877 () Bool)

(declare-fun e!1208946 () Bool)

(assert (=> b!1893877 (= e!1208946 tp_is_empty!9057)))

(declare-fun b!1893880 () Bool)

(declare-fun tp!540168 () Bool)

(declare-fun tp!540167 () Bool)

(assert (=> b!1893880 (= e!1208946 (and tp!540168 tp!540167))))

(declare-fun b!1893879 () Bool)

(declare-fun tp!540169 () Bool)

(assert (=> b!1893879 (= e!1208946 tp!540169)))

(declare-fun b!1893878 () Bool)

(declare-fun tp!540166 () Bool)

(declare-fun tp!540165 () Bool)

(assert (=> b!1893878 (= e!1208946 (and tp!540166 tp!540165))))

(assert (=> b!1893502 (= tp!540009 e!1208946)))

(assert (= (and b!1893502 ((_ is ElementMatch!5187) (regOne!10886 (regex!3762 (h!26609 rules!3198))))) b!1893877))

(assert (= (and b!1893502 ((_ is Concat!9086) (regOne!10886 (regex!3762 (h!26609 rules!3198))))) b!1893878))

(assert (= (and b!1893502 ((_ is Star!5187) (regOne!10886 (regex!3762 (h!26609 rules!3198))))) b!1893879))

(assert (= (and b!1893502 ((_ is Union!5187) (regOne!10886 (regex!3762 (h!26609 rules!3198))))) b!1893880))

(declare-fun b!1893881 () Bool)

(declare-fun e!1208947 () Bool)

(assert (=> b!1893881 (= e!1208947 tp_is_empty!9057)))

(declare-fun b!1893884 () Bool)

(declare-fun tp!540173 () Bool)

(declare-fun tp!540172 () Bool)

(assert (=> b!1893884 (= e!1208947 (and tp!540173 tp!540172))))

(declare-fun b!1893883 () Bool)

(declare-fun tp!540174 () Bool)

(assert (=> b!1893883 (= e!1208947 tp!540174)))

(declare-fun b!1893882 () Bool)

(declare-fun tp!540171 () Bool)

(declare-fun tp!540170 () Bool)

(assert (=> b!1893882 (= e!1208947 (and tp!540171 tp!540170))))

(assert (=> b!1893502 (= tp!540008 e!1208947)))

(assert (= (and b!1893502 ((_ is ElementMatch!5187) (regTwo!10886 (regex!3762 (h!26609 rules!3198))))) b!1893881))

(assert (= (and b!1893502 ((_ is Concat!9086) (regTwo!10886 (regex!3762 (h!26609 rules!3198))))) b!1893882))

(assert (= (and b!1893502 ((_ is Star!5187) (regTwo!10886 (regex!3762 (h!26609 rules!3198))))) b!1893883))

(assert (= (and b!1893502 ((_ is Union!5187) (regTwo!10886 (regex!3762 (h!26609 rules!3198))))) b!1893884))

(declare-fun b!1893887 () Bool)

(declare-fun e!1208950 () Bool)

(assert (=> b!1893887 (= e!1208950 true)))

(declare-fun b!1893886 () Bool)

(declare-fun e!1208949 () Bool)

(assert (=> b!1893886 (= e!1208949 e!1208950)))

(declare-fun b!1893885 () Bool)

(declare-fun e!1208948 () Bool)

(assert (=> b!1893885 (= e!1208948 e!1208949)))

(assert (=> b!1893480 e!1208948))

(assert (= b!1893886 b!1893887))

(assert (= b!1893885 b!1893886))

(assert (= (and b!1893480 ((_ is Cons!21208) (t!175805 rules!3198))) b!1893885))

(assert (=> b!1893887 (< (dynLambda!10302 order!13389 (toValue!5371 (transformation!3762 (h!26609 (t!175805 rules!3198))))) (dynLambda!10307 order!13395 lambda!73951))))

(assert (=> b!1893887 (< (dynLambda!10304 order!13393 (toChars!5230 (transformation!3762 (h!26609 (t!175805 rules!3198))))) (dynLambda!10307 order!13395 lambda!73951))))

(declare-fun e!1208955 () Bool)

(declare-fun b!1893896 () Bool)

(declare-fun tp!540183 () Bool)

(declare-fun tp!540181 () Bool)

(assert (=> b!1893896 (= e!1208955 (and (inv!28303 (left!17020 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619))))) tp!540181 (inv!28303 (right!17350 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619))))) tp!540183))))

(declare-fun b!1893898 () Bool)

(declare-fun e!1208956 () Bool)

(declare-fun tp!540182 () Bool)

(assert (=> b!1893898 (= e!1208956 tp!540182)))

(declare-fun b!1893897 () Bool)

(declare-fun inv!28310 (IArray!14127) Bool)

(assert (=> b!1893897 (= e!1208955 (and (inv!28310 (xs!9955 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619))))) e!1208956))))

(assert (=> b!1893450 (= tp!539994 (and (inv!28303 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619)))) e!1208955))))

(assert (= (and b!1893450 ((_ is Node!7061) (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619))))) b!1893896))

(assert (= b!1893897 b!1893898))

(assert (= (and b!1893450 ((_ is Leaf!10405) (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619))))) b!1893897))

(declare-fun m!2325469 () Bool)

(assert (=> b!1893896 m!2325469))

(declare-fun m!2325471 () Bool)

(assert (=> b!1893896 m!2325471))

(declare-fun m!2325473 () Bool)

(assert (=> b!1893897 m!2325473))

(assert (=> b!1893450 m!2324949))

(declare-fun b!1893899 () Bool)

(declare-fun e!1208957 () Bool)

(declare-fun tp!540184 () Bool)

(assert (=> b!1893899 (= e!1208957 (and tp_is_empty!9057 tp!540184))))

(assert (=> b!1893520 (= tp!540030 e!1208957)))

(assert (= (and b!1893520 ((_ is Cons!21207) (t!175804 (originalCharacters!4569 separatorToken!354)))) b!1893899))

(declare-fun b!1893900 () Bool)

(declare-fun e!1208958 () Bool)

(declare-fun tp!540185 () Bool)

(assert (=> b!1893900 (= e!1208958 (and tp_is_empty!9057 tp!540185))))

(assert (=> b!1893490 (= tp!539997 e!1208958)))

(assert (= (and b!1893490 ((_ is Cons!21207) (t!175804 (originalCharacters!4569 (h!26610 tokens!598))))) b!1893900))

(declare-fun b!1893901 () Bool)

(declare-fun e!1208959 () Bool)

(assert (=> b!1893901 (= e!1208959 tp_is_empty!9057)))

(declare-fun b!1893904 () Bool)

(declare-fun tp!540189 () Bool)

(declare-fun tp!540188 () Bool)

(assert (=> b!1893904 (= e!1208959 (and tp!540189 tp!540188))))

(declare-fun b!1893903 () Bool)

(declare-fun tp!540190 () Bool)

(assert (=> b!1893903 (= e!1208959 tp!540190)))

(declare-fun b!1893902 () Bool)

(declare-fun tp!540187 () Bool)

(declare-fun tp!540186 () Bool)

(assert (=> b!1893902 (= e!1208959 (and tp!540187 tp!540186))))

(assert (=> b!1893504 (= tp!540011 e!1208959)))

(assert (= (and b!1893504 ((_ is ElementMatch!5187) (regOne!10887 (regex!3762 (h!26609 rules!3198))))) b!1893901))

(assert (= (and b!1893504 ((_ is Concat!9086) (regOne!10887 (regex!3762 (h!26609 rules!3198))))) b!1893902))

(assert (= (and b!1893504 ((_ is Star!5187) (regOne!10887 (regex!3762 (h!26609 rules!3198))))) b!1893903))

(assert (= (and b!1893504 ((_ is Union!5187) (regOne!10887 (regex!3762 (h!26609 rules!3198))))) b!1893904))

(declare-fun b!1893905 () Bool)

(declare-fun e!1208960 () Bool)

(assert (=> b!1893905 (= e!1208960 tp_is_empty!9057)))

(declare-fun b!1893908 () Bool)

(declare-fun tp!540194 () Bool)

(declare-fun tp!540193 () Bool)

(assert (=> b!1893908 (= e!1208960 (and tp!540194 tp!540193))))

(declare-fun b!1893907 () Bool)

(declare-fun tp!540195 () Bool)

(assert (=> b!1893907 (= e!1208960 tp!540195)))

(declare-fun b!1893906 () Bool)

(declare-fun tp!540192 () Bool)

(declare-fun tp!540191 () Bool)

(assert (=> b!1893906 (= e!1208960 (and tp!540192 tp!540191))))

(assert (=> b!1893504 (= tp!540010 e!1208960)))

(assert (= (and b!1893504 ((_ is ElementMatch!5187) (regTwo!10887 (regex!3762 (h!26609 rules!3198))))) b!1893905))

(assert (= (and b!1893504 ((_ is Concat!9086) (regTwo!10887 (regex!3762 (h!26609 rules!3198))))) b!1893906))

(assert (= (and b!1893504 ((_ is Star!5187) (regTwo!10887 (regex!3762 (h!26609 rules!3198))))) b!1893907))

(assert (= (and b!1893504 ((_ is Union!5187) (regTwo!10887 (regex!3762 (h!26609 rules!3198))))) b!1893908))

(declare-fun b!1893909 () Bool)

(declare-fun tp!540198 () Bool)

(declare-fun e!1208961 () Bool)

(declare-fun tp!540196 () Bool)

(assert (=> b!1893909 (= e!1208961 (and (inv!28303 (left!17020 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598)))))) tp!540196 (inv!28303 (right!17350 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598)))))) tp!540198))))

(declare-fun b!1893911 () Bool)

(declare-fun e!1208962 () Bool)

(declare-fun tp!540197 () Bool)

(assert (=> b!1893911 (= e!1208962 tp!540197)))

(declare-fun b!1893910 () Bool)

(assert (=> b!1893910 (= e!1208961 (and (inv!28310 (xs!9955 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598)))))) e!1208962))))

(assert (=> b!1893302 (= tp!539932 (and (inv!28303 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598))))) e!1208961))))

(assert (= (and b!1893302 ((_ is Node!7061) (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598)))))) b!1893909))

(assert (= b!1893910 b!1893911))

(assert (= (and b!1893302 ((_ is Leaf!10405) (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (value!118808 (h!26610 tokens!598)))))) b!1893910))

(declare-fun m!2325475 () Bool)

(assert (=> b!1893909 m!2325475))

(declare-fun m!2325477 () Bool)

(assert (=> b!1893909 m!2325477))

(declare-fun m!2325479 () Bool)

(assert (=> b!1893910 m!2325479))

(assert (=> b!1893302 m!2324809))

(declare-fun b!1893912 () Bool)

(declare-fun e!1208963 () Bool)

(assert (=> b!1893912 (= e!1208963 tp_is_empty!9057)))

(declare-fun b!1893915 () Bool)

(declare-fun tp!540202 () Bool)

(declare-fun tp!540201 () Bool)

(assert (=> b!1893915 (= e!1208963 (and tp!540202 tp!540201))))

(declare-fun b!1893914 () Bool)

(declare-fun tp!540203 () Bool)

(assert (=> b!1893914 (= e!1208963 tp!540203)))

(declare-fun b!1893913 () Bool)

(declare-fun tp!540200 () Bool)

(declare-fun tp!540199 () Bool)

(assert (=> b!1893913 (= e!1208963 (and tp!540200 tp!540199))))

(assert (=> b!1893503 (= tp!540012 e!1208963)))

(assert (= (and b!1893503 ((_ is ElementMatch!5187) (reg!5516 (regex!3762 (h!26609 rules!3198))))) b!1893912))

(assert (= (and b!1893503 ((_ is Concat!9086) (reg!5516 (regex!3762 (h!26609 rules!3198))))) b!1893913))

(assert (= (and b!1893503 ((_ is Star!5187) (reg!5516 (regex!3762 (h!26609 rules!3198))))) b!1893914))

(assert (= (and b!1893503 ((_ is Union!5187) (reg!5516 (regex!3762 (h!26609 rules!3198))))) b!1893915))

(declare-fun b!1893916 () Bool)

(declare-fun e!1208964 () Bool)

(declare-fun tp!540204 () Bool)

(assert (=> b!1893916 (= e!1208964 (and tp_is_empty!9057 tp!540204))))

(assert (=> b!1893532 (= tp!540043 e!1208964)))

(assert (= (and b!1893532 ((_ is Cons!21207) (originalCharacters!4569 (h!26610 (t!175806 tokens!598))))) b!1893916))

(declare-fun b!1893917 () Bool)

(declare-fun e!1208965 () Bool)

(assert (=> b!1893917 (= e!1208965 tp_is_empty!9057)))

(declare-fun b!1893920 () Bool)

(declare-fun tp!540208 () Bool)

(declare-fun tp!540207 () Bool)

(assert (=> b!1893920 (= e!1208965 (and tp!540208 tp!540207))))

(declare-fun b!1893919 () Bool)

(declare-fun tp!540209 () Bool)

(assert (=> b!1893919 (= e!1208965 tp!540209)))

(declare-fun b!1893918 () Bool)

(declare-fun tp!540206 () Bool)

(declare-fun tp!540205 () Bool)

(assert (=> b!1893918 (= e!1208965 (and tp!540206 tp!540205))))

(assert (=> b!1893518 (= tp!540029 e!1208965)))

(assert (= (and b!1893518 ((_ is ElementMatch!5187) (reg!5516 (regex!3762 (rule!5955 separatorToken!354))))) b!1893917))

(assert (= (and b!1893518 ((_ is Concat!9086) (reg!5516 (regex!3762 (rule!5955 separatorToken!354))))) b!1893918))

(assert (= (and b!1893518 ((_ is Star!5187) (reg!5516 (regex!3762 (rule!5955 separatorToken!354))))) b!1893919))

(assert (= (and b!1893518 ((_ is Union!5187) (reg!5516 (regex!3762 (rule!5955 separatorToken!354))))) b!1893920))

(declare-fun b!1893921 () Bool)

(declare-fun e!1208966 () Bool)

(assert (=> b!1893921 (= e!1208966 tp_is_empty!9057)))

(declare-fun b!1893924 () Bool)

(declare-fun tp!540213 () Bool)

(declare-fun tp!540212 () Bool)

(assert (=> b!1893924 (= e!1208966 (and tp!540213 tp!540212))))

(declare-fun b!1893923 () Bool)

(declare-fun tp!540214 () Bool)

(assert (=> b!1893923 (= e!1208966 tp!540214)))

(declare-fun b!1893922 () Bool)

(declare-fun tp!540211 () Bool)

(declare-fun tp!540210 () Bool)

(assert (=> b!1893922 (= e!1208966 (and tp!540211 tp!540210))))

(assert (=> b!1893536 (= tp!540047 e!1208966)))

(assert (= (and b!1893536 ((_ is ElementMatch!5187) (regOne!10886 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893921))

(assert (= (and b!1893536 ((_ is Concat!9086) (regOne!10886 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893922))

(assert (= (and b!1893536 ((_ is Star!5187) (regOne!10886 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893923))

(assert (= (and b!1893536 ((_ is Union!5187) (regOne!10886 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893924))

(declare-fun b!1893925 () Bool)

(declare-fun e!1208967 () Bool)

(assert (=> b!1893925 (= e!1208967 tp_is_empty!9057)))

(declare-fun b!1893928 () Bool)

(declare-fun tp!540218 () Bool)

(declare-fun tp!540217 () Bool)

(assert (=> b!1893928 (= e!1208967 (and tp!540218 tp!540217))))

(declare-fun b!1893927 () Bool)

(declare-fun tp!540219 () Bool)

(assert (=> b!1893927 (= e!1208967 tp!540219)))

(declare-fun b!1893926 () Bool)

(declare-fun tp!540216 () Bool)

(declare-fun tp!540215 () Bool)

(assert (=> b!1893926 (= e!1208967 (and tp!540216 tp!540215))))

(assert (=> b!1893536 (= tp!540046 e!1208967)))

(assert (= (and b!1893536 ((_ is ElementMatch!5187) (regTwo!10886 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893925))

(assert (= (and b!1893536 ((_ is Concat!9086) (regTwo!10886 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893926))

(assert (= (and b!1893536 ((_ is Star!5187) (regTwo!10886 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893927))

(assert (= (and b!1893536 ((_ is Union!5187) (regTwo!10886 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893928))

(declare-fun b!1893929 () Bool)

(declare-fun e!1208968 () Bool)

(assert (=> b!1893929 (= e!1208968 tp_is_empty!9057)))

(declare-fun b!1893932 () Bool)

(declare-fun tp!540223 () Bool)

(declare-fun tp!540222 () Bool)

(assert (=> b!1893932 (= e!1208968 (and tp!540223 tp!540222))))

(declare-fun b!1893931 () Bool)

(declare-fun tp!540224 () Bool)

(assert (=> b!1893931 (= e!1208968 tp!540224)))

(declare-fun b!1893930 () Bool)

(declare-fun tp!540221 () Bool)

(declare-fun tp!540220 () Bool)

(assert (=> b!1893930 (= e!1208968 (and tp!540221 tp!540220))))

(assert (=> b!1893533 (= tp!540042 e!1208968)))

(assert (= (and b!1893533 ((_ is ElementMatch!5187) (regex!3762 (rule!5955 (h!26610 (t!175806 tokens!598)))))) b!1893929))

(assert (= (and b!1893533 ((_ is Concat!9086) (regex!3762 (rule!5955 (h!26610 (t!175806 tokens!598)))))) b!1893930))

(assert (= (and b!1893533 ((_ is Star!5187) (regex!3762 (rule!5955 (h!26610 (t!175806 tokens!598)))))) b!1893931))

(assert (= (and b!1893533 ((_ is Union!5187) (regex!3762 (rule!5955 (h!26610 (t!175806 tokens!598)))))) b!1893932))

(declare-fun b!1893936 () Bool)

(declare-fun b_free!52773 () Bool)

(declare-fun b_next!53477 () Bool)

(assert (=> b!1893936 (= b_free!52773 (not b_next!53477))))

(declare-fun t!175940 () Bool)

(declare-fun tb!115261 () Bool)

(assert (=> (and b!1893936 (= (toValue!5371 (transformation!3762 (rule!5955 (h!26610 (t!175806 (t!175806 tokens!598)))))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175940) tb!115261))

(declare-fun result!139364 () Bool)

(assert (= result!139364 result!139288))

(assert (=> d!579986 t!175940))

(declare-fun tp!540229 () Bool)

(declare-fun b_and!145815 () Bool)

(assert (=> b!1893936 (= tp!540229 (and (=> t!175940 result!139364) b_and!145815))))

(declare-fun b_free!52775 () Bool)

(declare-fun b_next!53479 () Bool)

(assert (=> b!1893936 (= b_free!52775 (not b_next!53479))))

(declare-fun t!175942 () Bool)

(declare-fun tb!115263 () Bool)

(assert (=> (and b!1893936 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 (t!175806 tokens!598)))))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175942) tb!115263))

(declare-fun result!139366 () Bool)

(assert (= result!139366 result!139224))

(assert (=> d!580020 t!175942))

(declare-fun t!175944 () Bool)

(declare-fun tb!115265 () Bool)

(assert (=> (and b!1893936 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 (t!175806 tokens!598)))))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175944) tb!115265))

(declare-fun result!139368 () Bool)

(assert (= result!139368 result!139282))

(assert (=> d!579986 t!175944))

(declare-fun t!175946 () Bool)

(declare-fun tb!115267 () Bool)

(assert (=> (and b!1893936 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 (t!175806 tokens!598)))))) (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354)))) t!175946) tb!115267))

(declare-fun result!139370 () Bool)

(assert (= result!139370 result!139216))

(assert (=> b!1893293 t!175946))

(declare-fun t!175948 () Bool)

(declare-fun tb!115269 () Bool)

(assert (=> (and b!1893936 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 (t!175806 tokens!598)))))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598)))))) t!175948) tb!115269))

(declare-fun result!139372 () Bool)

(assert (= result!139372 result!139342))

(assert (=> b!1893783 t!175948))

(assert (=> b!1893300 t!175942))

(declare-fun tp!540225 () Bool)

(declare-fun b_and!145817 () Bool)

(assert (=> b!1893936 (= tp!540225 (and (=> t!175948 result!139372) (=> t!175944 result!139368) (=> t!175942 result!139366) (=> t!175946 result!139370) b_and!145817))))

(declare-fun tp!540227 () Bool)

(declare-fun e!1208969 () Bool)

(declare-fun b!1893934 () Bool)

(declare-fun e!1208971 () Bool)

(assert (=> b!1893934 (= e!1208971 (and (inv!21 (value!118808 (h!26610 (t!175806 (t!175806 tokens!598))))) e!1208969 tp!540227))))

(declare-fun b!1893935 () Bool)

(declare-fun tp!540226 () Bool)

(declare-fun e!1208972 () Bool)

(assert (=> b!1893935 (= e!1208969 (and tp!540226 (inv!28296 (tag!4176 (rule!5955 (h!26610 (t!175806 (t!175806 tokens!598)))))) (inv!28299 (transformation!3762 (rule!5955 (h!26610 (t!175806 (t!175806 tokens!598)))))) e!1208972))))

(declare-fun b!1893933 () Bool)

(declare-fun e!1208973 () Bool)

(declare-fun tp!540228 () Bool)

(assert (=> b!1893933 (= e!1208973 (and (inv!28300 (h!26610 (t!175806 (t!175806 tokens!598)))) e!1208971 tp!540228))))

(assert (=> b!1893531 (= tp!540044 e!1208973)))

(assert (=> b!1893936 (= e!1208972 (and tp!540229 tp!540225))))

(assert (= b!1893935 b!1893936))

(assert (= b!1893934 b!1893935))

(assert (= b!1893933 b!1893934))

(assert (= (and b!1893531 ((_ is Cons!21209) (t!175806 (t!175806 tokens!598)))) b!1893933))

(declare-fun m!2325481 () Bool)

(assert (=> b!1893934 m!2325481))

(declare-fun m!2325483 () Bool)

(assert (=> b!1893935 m!2325483))

(declare-fun m!2325485 () Bool)

(assert (=> b!1893935 m!2325485))

(declare-fun m!2325487 () Bool)

(assert (=> b!1893933 m!2325487))

(declare-fun b!1893937 () Bool)

(declare-fun e!1208975 () Bool)

(assert (=> b!1893937 (= e!1208975 tp_is_empty!9057)))

(declare-fun b!1893940 () Bool)

(declare-fun tp!540233 () Bool)

(declare-fun tp!540232 () Bool)

(assert (=> b!1893940 (= e!1208975 (and tp!540233 tp!540232))))

(declare-fun b!1893939 () Bool)

(declare-fun tp!540234 () Bool)

(assert (=> b!1893939 (= e!1208975 tp!540234)))

(declare-fun b!1893938 () Bool)

(declare-fun tp!540231 () Bool)

(declare-fun tp!540230 () Bool)

(assert (=> b!1893938 (= e!1208975 (and tp!540231 tp!540230))))

(assert (=> b!1893517 (= tp!540026 e!1208975)))

(assert (= (and b!1893517 ((_ is ElementMatch!5187) (regOne!10886 (regex!3762 (rule!5955 separatorToken!354))))) b!1893937))

(assert (= (and b!1893517 ((_ is Concat!9086) (regOne!10886 (regex!3762 (rule!5955 separatorToken!354))))) b!1893938))

(assert (= (and b!1893517 ((_ is Star!5187) (regOne!10886 (regex!3762 (rule!5955 separatorToken!354))))) b!1893939))

(assert (= (and b!1893517 ((_ is Union!5187) (regOne!10886 (regex!3762 (rule!5955 separatorToken!354))))) b!1893940))

(declare-fun b!1893941 () Bool)

(declare-fun e!1208976 () Bool)

(assert (=> b!1893941 (= e!1208976 tp_is_empty!9057)))

(declare-fun b!1893944 () Bool)

(declare-fun tp!540238 () Bool)

(declare-fun tp!540237 () Bool)

(assert (=> b!1893944 (= e!1208976 (and tp!540238 tp!540237))))

(declare-fun b!1893943 () Bool)

(declare-fun tp!540239 () Bool)

(assert (=> b!1893943 (= e!1208976 tp!540239)))

(declare-fun b!1893942 () Bool)

(declare-fun tp!540236 () Bool)

(declare-fun tp!540235 () Bool)

(assert (=> b!1893942 (= e!1208976 (and tp!540236 tp!540235))))

(assert (=> b!1893517 (= tp!540025 e!1208976)))

(assert (= (and b!1893517 ((_ is ElementMatch!5187) (regTwo!10886 (regex!3762 (rule!5955 separatorToken!354))))) b!1893941))

(assert (= (and b!1893517 ((_ is Concat!9086) (regTwo!10886 (regex!3762 (rule!5955 separatorToken!354))))) b!1893942))

(assert (= (and b!1893517 ((_ is Star!5187) (regTwo!10886 (regex!3762 (rule!5955 separatorToken!354))))) b!1893943))

(assert (= (and b!1893517 ((_ is Union!5187) (regTwo!10886 (regex!3762 (rule!5955 separatorToken!354))))) b!1893944))

(declare-fun b!1893947 () Bool)

(declare-fun b_free!52777 () Bool)

(declare-fun b_next!53481 () Bool)

(assert (=> b!1893947 (= b_free!52777 (not b_next!53481))))

(declare-fun t!175950 () Bool)

(declare-fun tb!115271 () Bool)

(assert (=> (and b!1893947 (= (toValue!5371 (transformation!3762 (h!26609 (t!175805 (t!175805 rules!3198))))) (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175950) tb!115271))

(declare-fun result!139374 () Bool)

(assert (= result!139374 result!139288))

(assert (=> d!579986 t!175950))

(declare-fun tp!540240 () Bool)

(declare-fun b_and!145819 () Bool)

(assert (=> b!1893947 (= tp!540240 (and (=> t!175950 result!139374) b_and!145819))))

(declare-fun b_free!52779 () Bool)

(declare-fun b_next!53483 () Bool)

(assert (=> b!1893947 (= b_free!52779 (not b_next!53483))))

(declare-fun tb!115273 () Bool)

(declare-fun t!175952 () Bool)

(assert (=> (and b!1893947 (= (toChars!5230 (transformation!3762 (h!26609 (t!175805 (t!175805 rules!3198))))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175952) tb!115273))

(declare-fun result!139376 () Bool)

(assert (= result!139376 result!139224))

(assert (=> d!580020 t!175952))

(declare-fun t!175954 () Bool)

(declare-fun tb!115275 () Bool)

(assert (=> (and b!1893947 (= (toChars!5230 (transformation!3762 (h!26609 (t!175805 (t!175805 rules!3198))))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598))))) t!175954) tb!115275))

(declare-fun result!139378 () Bool)

(assert (= result!139378 result!139282))

(assert (=> d!579986 t!175954))

(declare-fun t!175956 () Bool)

(declare-fun tb!115277 () Bool)

(assert (=> (and b!1893947 (= (toChars!5230 (transformation!3762 (h!26609 (t!175805 (t!175805 rules!3198))))) (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354)))) t!175956) tb!115277))

(declare-fun result!139380 () Bool)

(assert (= result!139380 result!139216))

(assert (=> b!1893293 t!175956))

(declare-fun tb!115279 () Bool)

(declare-fun t!175958 () Bool)

(assert (=> (and b!1893947 (= (toChars!5230 (transformation!3762 (h!26609 (t!175805 (t!175805 rules!3198))))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598)))))) t!175958) tb!115279))

(declare-fun result!139382 () Bool)

(assert (= result!139382 result!139342))

(assert (=> b!1893783 t!175958))

(assert (=> b!1893300 t!175952))

(declare-fun b_and!145821 () Bool)

(declare-fun tp!540241 () Bool)

(assert (=> b!1893947 (= tp!540241 (and (=> t!175954 result!139378) (=> t!175958 result!139382) (=> t!175952 result!139376) (=> t!175956 result!139380) b_and!145821))))

(declare-fun e!1208980 () Bool)

(assert (=> b!1893947 (= e!1208980 (and tp!540240 tp!540241))))

(declare-fun b!1893946 () Bool)

(declare-fun e!1208979 () Bool)

(declare-fun tp!540242 () Bool)

(assert (=> b!1893946 (= e!1208979 (and tp!540242 (inv!28296 (tag!4176 (h!26609 (t!175805 (t!175805 rules!3198))))) (inv!28299 (transformation!3762 (h!26609 (t!175805 (t!175805 rules!3198))))) e!1208980))))

(declare-fun b!1893945 () Bool)

(declare-fun e!1208977 () Bool)

(declare-fun tp!540243 () Bool)

(assert (=> b!1893945 (= e!1208977 (and e!1208979 tp!540243))))

(assert (=> b!1893513 (= tp!540024 e!1208977)))

(assert (= b!1893946 b!1893947))

(assert (= b!1893945 b!1893946))

(assert (= (and b!1893513 ((_ is Cons!21208) (t!175805 (t!175805 rules!3198)))) b!1893945))

(declare-fun m!2325489 () Bool)

(assert (=> b!1893946 m!2325489))

(declare-fun m!2325491 () Bool)

(assert (=> b!1893946 m!2325491))

(declare-fun b!1893948 () Bool)

(declare-fun e!1208981 () Bool)

(assert (=> b!1893948 (= e!1208981 tp_is_empty!9057)))

(declare-fun b!1893951 () Bool)

(declare-fun tp!540247 () Bool)

(declare-fun tp!540246 () Bool)

(assert (=> b!1893951 (= e!1208981 (and tp!540247 tp!540246))))

(declare-fun b!1893950 () Bool)

(declare-fun tp!540248 () Bool)

(assert (=> b!1893950 (= e!1208981 tp!540248)))

(declare-fun b!1893949 () Bool)

(declare-fun tp!540245 () Bool)

(declare-fun tp!540244 () Bool)

(assert (=> b!1893949 (= e!1208981 (and tp!540245 tp!540244))))

(assert (=> b!1893538 (= tp!540049 e!1208981)))

(assert (= (and b!1893538 ((_ is ElementMatch!5187) (regOne!10887 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893948))

(assert (= (and b!1893538 ((_ is Concat!9086) (regOne!10887 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893949))

(assert (= (and b!1893538 ((_ is Star!5187) (regOne!10887 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893950))

(assert (= (and b!1893538 ((_ is Union!5187) (regOne!10887 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893951))

(declare-fun b!1893952 () Bool)

(declare-fun e!1208982 () Bool)

(assert (=> b!1893952 (= e!1208982 tp_is_empty!9057)))

(declare-fun b!1893955 () Bool)

(declare-fun tp!540252 () Bool)

(declare-fun tp!540251 () Bool)

(assert (=> b!1893955 (= e!1208982 (and tp!540252 tp!540251))))

(declare-fun b!1893954 () Bool)

(declare-fun tp!540253 () Bool)

(assert (=> b!1893954 (= e!1208982 tp!540253)))

(declare-fun b!1893953 () Bool)

(declare-fun tp!540250 () Bool)

(declare-fun tp!540249 () Bool)

(assert (=> b!1893953 (= e!1208982 (and tp!540250 tp!540249))))

(assert (=> b!1893538 (= tp!540048 e!1208982)))

(assert (= (and b!1893538 ((_ is ElementMatch!5187) (regTwo!10887 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893952))

(assert (= (and b!1893538 ((_ is Concat!9086) (regTwo!10887 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893953))

(assert (= (and b!1893538 ((_ is Star!5187) (regTwo!10887 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893954))

(assert (= (and b!1893538 ((_ is Union!5187) (regTwo!10887 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893955))

(declare-fun b!1893956 () Bool)

(declare-fun e!1208983 () Bool)

(assert (=> b!1893956 (= e!1208983 tp_is_empty!9057)))

(declare-fun b!1893959 () Bool)

(declare-fun tp!540257 () Bool)

(declare-fun tp!540256 () Bool)

(assert (=> b!1893959 (= e!1208983 (and tp!540257 tp!540256))))

(declare-fun b!1893958 () Bool)

(declare-fun tp!540258 () Bool)

(assert (=> b!1893958 (= e!1208983 tp!540258)))

(declare-fun b!1893957 () Bool)

(declare-fun tp!540255 () Bool)

(declare-fun tp!540254 () Bool)

(assert (=> b!1893957 (= e!1208983 (and tp!540255 tp!540254))))

(assert (=> b!1893514 (= tp!540023 e!1208983)))

(assert (= (and b!1893514 ((_ is ElementMatch!5187) (regex!3762 (h!26609 (t!175805 rules!3198))))) b!1893956))

(assert (= (and b!1893514 ((_ is Concat!9086) (regex!3762 (h!26609 (t!175805 rules!3198))))) b!1893957))

(assert (= (and b!1893514 ((_ is Star!5187) (regex!3762 (h!26609 (t!175805 rules!3198))))) b!1893958))

(assert (= (and b!1893514 ((_ is Union!5187) (regex!3762 (h!26609 (t!175805 rules!3198))))) b!1893959))

(declare-fun b!1893960 () Bool)

(declare-fun e!1208984 () Bool)

(assert (=> b!1893960 (= e!1208984 tp_is_empty!9057)))

(declare-fun b!1893963 () Bool)

(declare-fun tp!540262 () Bool)

(declare-fun tp!540261 () Bool)

(assert (=> b!1893963 (= e!1208984 (and tp!540262 tp!540261))))

(declare-fun b!1893962 () Bool)

(declare-fun tp!540263 () Bool)

(assert (=> b!1893962 (= e!1208984 tp!540263)))

(declare-fun b!1893961 () Bool)

(declare-fun tp!540260 () Bool)

(declare-fun tp!540259 () Bool)

(assert (=> b!1893961 (= e!1208984 (and tp!540260 tp!540259))))

(assert (=> b!1893519 (= tp!540028 e!1208984)))

(assert (= (and b!1893519 ((_ is ElementMatch!5187) (regOne!10887 (regex!3762 (rule!5955 separatorToken!354))))) b!1893960))

(assert (= (and b!1893519 ((_ is Concat!9086) (regOne!10887 (regex!3762 (rule!5955 separatorToken!354))))) b!1893961))

(assert (= (and b!1893519 ((_ is Star!5187) (regOne!10887 (regex!3762 (rule!5955 separatorToken!354))))) b!1893962))

(assert (= (and b!1893519 ((_ is Union!5187) (regOne!10887 (regex!3762 (rule!5955 separatorToken!354))))) b!1893963))

(declare-fun b!1893964 () Bool)

(declare-fun e!1208985 () Bool)

(assert (=> b!1893964 (= e!1208985 tp_is_empty!9057)))

(declare-fun b!1893967 () Bool)

(declare-fun tp!540267 () Bool)

(declare-fun tp!540266 () Bool)

(assert (=> b!1893967 (= e!1208985 (and tp!540267 tp!540266))))

(declare-fun b!1893966 () Bool)

(declare-fun tp!540268 () Bool)

(assert (=> b!1893966 (= e!1208985 tp!540268)))

(declare-fun b!1893965 () Bool)

(declare-fun tp!540265 () Bool)

(declare-fun tp!540264 () Bool)

(assert (=> b!1893965 (= e!1208985 (and tp!540265 tp!540264))))

(assert (=> b!1893519 (= tp!540027 e!1208985)))

(assert (= (and b!1893519 ((_ is ElementMatch!5187) (regTwo!10887 (regex!3762 (rule!5955 separatorToken!354))))) b!1893964))

(assert (= (and b!1893519 ((_ is Concat!9086) (regTwo!10887 (regex!3762 (rule!5955 separatorToken!354))))) b!1893965))

(assert (= (and b!1893519 ((_ is Star!5187) (regTwo!10887 (regex!3762 (rule!5955 separatorToken!354))))) b!1893966))

(assert (= (and b!1893519 ((_ is Union!5187) (regTwo!10887 (regex!3762 (rule!5955 separatorToken!354))))) b!1893967))

(declare-fun b!1893968 () Bool)

(declare-fun e!1208986 () Bool)

(assert (=> b!1893968 (= e!1208986 tp_is_empty!9057)))

(declare-fun b!1893971 () Bool)

(declare-fun tp!540272 () Bool)

(declare-fun tp!540271 () Bool)

(assert (=> b!1893971 (= e!1208986 (and tp!540272 tp!540271))))

(declare-fun b!1893970 () Bool)

(declare-fun tp!540273 () Bool)

(assert (=> b!1893970 (= e!1208986 tp!540273)))

(declare-fun b!1893969 () Bool)

(declare-fun tp!540270 () Bool)

(declare-fun tp!540269 () Bool)

(assert (=> b!1893969 (= e!1208986 (and tp!540270 tp!540269))))

(assert (=> b!1893537 (= tp!540050 e!1208986)))

(assert (= (and b!1893537 ((_ is ElementMatch!5187) (reg!5516 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893968))

(assert (= (and b!1893537 ((_ is Concat!9086) (reg!5516 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893969))

(assert (= (and b!1893537 ((_ is Star!5187) (reg!5516 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893970))

(assert (= (and b!1893537 ((_ is Union!5187) (reg!5516 (regex!3762 (rule!5955 (h!26610 tokens!598)))))) b!1893971))

(declare-fun e!1208987 () Bool)

(declare-fun b!1893972 () Bool)

(declare-fun tp!540276 () Bool)

(declare-fun tp!540274 () Bool)

(assert (=> b!1893972 (= e!1208987 (and (inv!28303 (left!17020 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354))))) tp!540274 (inv!28303 (right!17350 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354))))) tp!540276))))

(declare-fun b!1893974 () Bool)

(declare-fun e!1208988 () Bool)

(declare-fun tp!540275 () Bool)

(assert (=> b!1893974 (= e!1208988 tp!540275)))

(declare-fun b!1893973 () Bool)

(assert (=> b!1893973 (= e!1208987 (and (inv!28310 (xs!9955 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354))))) e!1208988))))

(assert (=> b!1893299 (= tp!539931 (and (inv!28303 (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354)))) e!1208987))))

(assert (= (and b!1893299 ((_ is Node!7061) (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354))))) b!1893972))

(assert (= b!1893973 b!1893974))

(assert (= (and b!1893299 ((_ is Leaf!10405) (c!308989 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (value!118808 separatorToken!354))))) b!1893973))

(declare-fun m!2325493 () Bool)

(assert (=> b!1893972 m!2325493))

(declare-fun m!2325495 () Bool)

(assert (=> b!1893972 m!2325495))

(declare-fun m!2325497 () Bool)

(assert (=> b!1893973 m!2325497))

(assert (=> b!1893299 m!2324797))

(declare-fun b_lambda!62129 () Bool)

(assert (= b_lambda!62123 (or d!580032 b_lambda!62129)))

(declare-fun bs!413314 () Bool)

(declare-fun d!580262 () Bool)

(assert (= bs!413314 (and d!580262 d!580032)))

(assert (=> bs!413314 (= (dynLambda!10306 lambda!73951 (h!26610 tokens!598)) (rulesProduceIndividualToken!1547 thiss!23328 rules!3198 (h!26610 tokens!598)))))

(assert (=> bs!413314 m!2324983))

(assert (=> b!1893872 d!580262))

(declare-fun b_lambda!62131 () Bool)

(assert (= b_lambda!62113 (or (and b!1893936 b_free!52775 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 (t!175806 tokens!598)))))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))))) (and b!1893236 b_free!52739 (= (toChars!5230 (transformation!3762 (rule!5955 separatorToken!354))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))))) (and b!1893947 b_free!52779 (= (toChars!5230 (transformation!3762 (h!26609 (t!175805 (t!175805 rules!3198))))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))))) (and b!1893534 b_free!52763) (and b!1893251 b_free!52747 (= (toChars!5230 (transformation!3762 (h!26609 rules!3198))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))))) (and b!1893246 b_free!52743 (= (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))))) (and b!1893515 b_free!52759 (= (toChars!5230 (transformation!3762 (h!26609 (t!175805 rules!3198)))) (toChars!5230 (transformation!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))))) b_lambda!62131)))

(declare-fun b_lambda!62133 () Bool)

(assert (= b_lambda!62111 (or d!579986 b_lambda!62133)))

(declare-fun bs!413315 () Bool)

(declare-fun d!580264 () Bool)

(assert (= bs!413315 (and d!580264 d!579986)))

(assert (=> bs!413315 (= (dynLambda!10311 lambda!73948 lt!724619) (= (list!8618 (dynLambda!10301 (toChars!5230 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) (dynLambda!10305 (toValue!5371 (transformation!3762 (rule!5955 (h!26610 tokens!598)))) lt!724619))) (list!8618 lt!724619)))))

(declare-fun b_lambda!62137 () Bool)

(assert (=> (not b_lambda!62137) (not bs!413315)))

(assert (=> bs!413315 t!175868))

(declare-fun b_and!145823 () Bool)

(assert (= b_and!145779 (and (=> t!175868 result!139286) b_and!145823)))

(assert (=> bs!413315 t!175954))

(declare-fun b_and!145825 () Bool)

(assert (= b_and!145821 (and (=> t!175954 result!139378) b_and!145825)))

(assert (=> bs!413315 t!175885))

(declare-fun b_and!145827 () Bool)

(assert (= b_and!145781 (and (=> t!175885 result!139308) b_and!145827)))

(assert (=> bs!413315 t!175944))

(declare-fun b_and!145829 () Bool)

(assert (= b_and!145817 (and (=> t!175944 result!139368) b_and!145829)))

(assert (=> bs!413315 t!175866))

(declare-fun b_and!145831 () Bool)

(assert (= b_and!145777 (and (=> t!175866 result!139284) b_and!145831)))

(assert (=> bs!413315 t!175893))

(declare-fun b_and!145833 () Bool)

(assert (= b_and!145773 (and (=> t!175893 result!139318) b_and!145833)))

(assert (=> bs!413315 t!175864))

(declare-fun b_and!145835 () Bool)

(assert (= b_and!145775 (and (=> t!175864 result!139282) b_and!145835)))

(declare-fun b_lambda!62139 () Bool)

(assert (=> (not b_lambda!62139) (not bs!413315)))

(assert (=> bs!413315 t!175887))

(declare-fun b_and!145837 () Bool)

(assert (= b_and!145755 (and (=> t!175887 result!139312) b_and!145837)))

(assert (=> bs!413315 t!175872))

(declare-fun b_and!145839 () Bool)

(assert (= b_and!145741 (and (=> t!175872 result!139292) b_and!145839)))

(assert (=> bs!413315 t!175879))

(declare-fun b_and!145841 () Bool)

(assert (= b_and!145751 (and (=> t!175879 result!139302) b_and!145841)))

(assert (=> bs!413315 t!175870))

(declare-fun b_and!145843 () Bool)

(assert (= b_and!145739 (and (=> t!175870 result!139288) b_and!145843)))

(assert (=> bs!413315 t!175874))

(declare-fun b_and!145845 () Bool)

(assert (= b_and!145743 (and (=> t!175874 result!139294) b_and!145845)))

(assert (=> bs!413315 t!175950))

(declare-fun b_and!145847 () Bool)

(assert (= b_and!145819 (and (=> t!175950 result!139374) b_and!145847)))

(assert (=> bs!413315 t!175940))

(declare-fun b_and!145849 () Bool)

(assert (= b_and!145815 (and (=> t!175940 result!139364) b_and!145849)))

(assert (=> bs!413315 m!2324961))

(assert (=> bs!413315 m!2324745))

(assert (=> bs!413315 m!2324961))

(assert (=> bs!413315 m!2324955))

(assert (=> bs!413315 m!2324955))

(assert (=> bs!413315 m!2324957))

(assert (=> d!580228 d!580264))

(declare-fun b_lambda!62135 () Bool)

(assert (= b_lambda!62105 (or b!1893241 b_lambda!62135)))

(declare-fun bs!413316 () Bool)

(declare-fun d!580266 () Bool)

(assert (= bs!413316 (and d!580266 b!1893241)))

(assert (=> bs!413316 (= (dynLambda!10306 lambda!73939 (h!26610 (t!175806 tokens!598))) (not (isSeparator!3762 (rule!5955 (h!26610 (t!175806 tokens!598))))))))

(assert (=> b!1893700 d!580266))

(check-sat (not b!1893757) (not b!1893748) (not b!1893963) (not b_next!53463) (not d!580152) (not b_lambda!62099) (not b!1893973) (not b!1893585) (not b_next!53445) (not b_lambda!62133) (not b!1893951) (not b!1893580) (not b!1893907) (not d!580064) (not b!1893935) b_and!145831 (not b_lambda!62093) (not b!1893450) (not b!1893904) (not d!580056) (not d!580238) (not b!1893884) (not b!1893972) (not b!1893914) (not b!1893927) (not b!1893880) (not b!1893913) (not d!580244) (not b!1893302) (not b!1893946) (not b!1893783) (not d!580228) (not b!1893670) (not b!1893732) (not b!1893701) (not b!1893970) (not b!1893931) (not b!1893882) (not b!1893628) (not b!1893899) (not b!1893916) (not d!580062) (not b!1893873) (not b!1893949) (not b!1893749) (not b!1893958) (not b!1893784) (not b!1893731) (not b!1893756) (not d!580128) (not b_next!53443) (not b!1893871) (not b!1893765) (not d!580202) (not d!580162) (not b!1893945) (not d!580080) (not bs!413314) (not b!1893565) b_and!145841 (not b!1893766) (not d!580186) (not d!580138) b_and!145835 (not b_next!53467) (not b_next!53481) (not b!1893746) (not b!1893957) (not d!580074) (not b!1893744) (not d!580150) (not b!1893898) (not b_next!53483) (not b!1893934) (not d!580242) (not b!1893586) (not b_lambda!62089) (not b!1893940) (not b!1893695) (not b!1893966) (not b!1893910) (not b!1893961) (not d!580200) (not b!1893561) (not b!1893930) (not b_lambda!62139) b_and!145849 (not b!1893563) b_and!145827 (not b!1893876) (not b_next!53449) (not b!1893629) (not bs!413315) (not b_lambda!62137) (not d!580258) b_and!145837 (not d!580178) (not b!1893920) (not b!1893630) (not b!1893939) (not b!1893754) (not b!1893926) b_and!145847 (not b!1893718) (not b!1893575) (not b!1893938) (not b!1893860) (not b_next!53479) (not bm!116891) (not d!580076) (not d!580078) (not b_next!53465) (not d!580240) (not b!1893959) b_and!145839 (not b!1893566) b_and!145843 (not b!1893878) (not d!580066) (not b!1893896) (not b!1893911) (not b!1893962) (not b!1893923) (not b!1893932) (not b!1893869) (not b!1893908) (not d!580236) (not b!1893944) (not b!1893965) (not b_lambda!62131) (not d!580176) (not d!580248) (not b_next!53461) (not d!580234) (not b!1893974) (not b!1893900) (not d!580232) (not b!1893918) (not b!1893759) b_and!145825 tp_is_empty!9057 (not d!580060) (not b_lambda!62135) (not b!1893969) (not b!1893933) (not b_lambda!62091) (not b!1893909) (not b!1893885) b_and!145829 (not d!580226) (not b!1893954) (not b!1893879) (not b!1893943) (not b_lambda!62129) (not b_lambda!62097) b_and!145833 (not b!1893919) b_and!145823 (not b_next!53441) (not b_next!53447) (not b!1893785) (not d!580194) (not d!580104) (not b!1893631) (not b!1893883) (not b!1893760) (not b!1893902) (not b!1893915) b_and!145845 (not d!580230) (not b!1893971) (not b!1893928) (not b!1893730) (not b!1893906) (not b_next!53477) (not b!1893942) (not b!1893903) (not b!1893967) (not b!1893955) (not b!1893728) (not b!1893564) (not b!1893897) (not d!580220) (not b!1893577) (not tb!115241) (not d!580070) (not b!1893953) (not b!1893562) (not b_lambda!62095) (not b!1893299) (not b!1893924) (not b!1893922) (not b!1893950) (not b_next!53451) (not b!1893719) (not d!580188))
(check-sat (not b_next!53463) (not b_next!53445) b_and!145831 (not b_next!53443) (not b_next!53481) (not b_next!53483) b_and!145849 b_and!145837 b_and!145847 (not b_next!53461) b_and!145825 b_and!145829 b_and!145845 (not b_next!53477) (not b_next!53451) b_and!145841 b_and!145835 (not b_next!53467) b_and!145827 (not b_next!53449) (not b_next!53479) (not b_next!53465) b_and!145839 b_and!145843 b_and!145833 b_and!145823 (not b_next!53441) (not b_next!53447))
