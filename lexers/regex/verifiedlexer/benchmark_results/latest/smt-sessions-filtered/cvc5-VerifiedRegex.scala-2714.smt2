; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!146086 () Bool)

(assert start!146086)

(declare-datatypes ((C!8806 0))(
  ( (C!8807 (val!4999 Int)) )
))
(declare-datatypes ((List!17124 0))(
  ( (Nil!17054) (Cons!17054 (h!22455 C!8806) (t!142421 List!17124)) )
))
(declare-datatypes ((IArray!11253 0))(
  ( (IArray!11254 (innerList!5684 List!17124)) )
))
(declare-datatypes ((Conc!5624 0))(
  ( (Node!5624 (left!13820 Conc!5624) (right!14150 Conc!5624) (csize!11478 Int) (cheight!5835 Int)) (Leaf!8339 (xs!8428 IArray!11253) (csize!11479 Int)) (Empty!5624) )
))
(declare-datatypes ((BalanceConc!11192 0))(
  ( (BalanceConc!11193 (c!254196 Conc!5624)) )
))
(declare-fun lt!543266 () BalanceConc!11192)

(declare-datatypes ((List!17125 0))(
  ( (Nil!17055) (Cons!17055 (h!22456 (_ BitVec 16)) (t!142422 List!17125)) )
))
(declare-datatypes ((TokenValue!3078 0))(
  ( (FloatLiteralValue!6156 (text!21991 List!17125)) (TokenValueExt!3077 (__x!11458 Int)) (Broken!15390 (value!94806 List!17125)) (Object!3147) (End!3078) (Def!3078) (Underscore!3078) (Match!3078) (Else!3078) (Error!3078) (Case!3078) (If!3078) (Extends!3078) (Abstract!3078) (Class!3078) (Val!3078) (DelimiterValue!6156 (del!3138 List!17125)) (KeywordValue!3084 (value!94807 List!17125)) (CommentValue!6156 (value!94808 List!17125)) (WhitespaceValue!6156 (value!94809 List!17125)) (IndentationValue!3078 (value!94810 List!17125)) (String!19723) (Int32!3078) (Broken!15391 (value!94811 List!17125)) (Boolean!3079) (Unit!26263) (OperatorValue!3081 (op!3138 List!17125)) (IdentifierValue!6156 (value!94812 List!17125)) (IdentifierValue!6157 (value!94813 List!17125)) (WhitespaceValue!6157 (value!94814 List!17125)) (True!6156) (False!6156) (Broken!15392 (value!94815 List!17125)) (Broken!15393 (value!94816 List!17125)) (True!6157) (RightBrace!3078) (RightBracket!3078) (Colon!3078) (Null!3078) (Comma!3078) (LeftBracket!3078) (False!6157) (LeftBrace!3078) (ImaginaryLiteralValue!3078 (text!21992 List!17125)) (StringLiteralValue!9234 (value!94817 List!17125)) (EOFValue!3078 (value!94818 List!17125)) (IdentValue!3078 (value!94819 List!17125)) (DelimiterValue!6157 (value!94820 List!17125)) (DedentValue!3078 (value!94821 List!17125)) (NewLineValue!3078 (value!94822 List!17125)) (IntegerValue!9234 (value!94823 (_ BitVec 32)) (text!21993 List!17125)) (IntegerValue!9235 (value!94824 Int) (text!21994 List!17125)) (Times!3078) (Or!3078) (Equal!3078) (Minus!3078) (Broken!15394 (value!94825 List!17125)) (And!3078) (Div!3078) (LessEqual!3078) (Mod!3078) (Concat!7394) (Not!3078) (Plus!3078) (SpaceValue!3078 (value!94826 List!17125)) (IntegerValue!9236 (value!94827 Int) (text!21995 List!17125)) (StringLiteralValue!9235 (text!21996 List!17125)) (FloatLiteralValue!6157 (text!21997 List!17125)) (BytesLiteralValue!3078 (value!94828 List!17125)) (CommentValue!6157 (value!94829 List!17125)) (StringLiteralValue!9236 (value!94830 List!17125)) (ErrorTokenValue!3078 (msg!3139 List!17125)) )
))
(declare-datatypes ((String!19724 0))(
  ( (String!19725 (value!94831 String)) )
))
(declare-datatypes ((Regex!4316 0))(
  ( (ElementMatch!4316 (c!254197 C!8806)) (Concat!7395 (regOne!9144 Regex!4316) (regTwo!9144 Regex!4316)) (EmptyExpr!4316) (Star!4316 (reg!4645 Regex!4316)) (EmptyLang!4316) (Union!4316 (regOne!9145 Regex!4316) (regTwo!9145 Regex!4316)) )
))
(declare-datatypes ((TokenValueInjection!5816 0))(
  ( (TokenValueInjection!5817 (toValue!4379 Int) (toChars!4238 Int)) )
))
(declare-datatypes ((Rule!5776 0))(
  ( (Rule!5777 (regex!2988 Regex!4316) (tag!3252 String!19724) (isSeparator!2988 Bool) (transformation!2988 TokenValueInjection!5816)) )
))
(declare-datatypes ((Token!5542 0))(
  ( (Token!5543 (value!94832 TokenValue!3078) (rule!4774 Rule!5776) (size!13823 Int) (originalCharacters!3802 List!17124)) )
))
(declare-datatypes ((List!17126 0))(
  ( (Nil!17056) (Cons!17056 (h!22457 Token!5542) (t!142423 List!17126)) )
))
(declare-datatypes ((IArray!11255 0))(
  ( (IArray!11256 (innerList!5685 List!17126)) )
))
(declare-datatypes ((Conc!5625 0))(
  ( (Node!5625 (left!13821 Conc!5625) (right!14151 Conc!5625) (csize!11480 Int) (cheight!5836 Int)) (Leaf!8340 (xs!8429 IArray!11255) (csize!11481 Int)) (Empty!5625) )
))
(declare-datatypes ((BalanceConc!11194 0))(
  ( (BalanceConc!11195 (c!254198 Conc!5625)) )
))
(declare-datatypes ((List!17127 0))(
  ( (Nil!17057) (Cons!17057 (h!22458 Rule!5776) (t!142424 List!17127)) )
))
(declare-datatypes ((PrintableTokens!1194 0))(
  ( (PrintableTokens!1195 (rules!12117 List!17127) (tokens!2211 BalanceConc!11194)) )
))
(declare-fun thiss!10002 () PrintableTokens!1194)

(declare-datatypes ((LexerInterface!2617 0))(
  ( (LexerInterfaceExt!2614 (__x!11459 Int)) (Lexer!2615) )
))
(declare-fun print!1154 (LexerInterface!2617 BalanceConc!11194) BalanceConc!11192)

(assert (=> start!146086 (= lt!543266 (print!1154 Lexer!2615 (tokens!2211 thiss!10002)))))

(declare-datatypes ((Unit!26264 0))(
  ( (Unit!26265) )
))
(declare-fun lt!543265 () Unit!26264)

(declare-fun theoremInvertabilityWhenTokenListSeparable!86 (LexerInterface!2617 List!17127 List!17126) Unit!26264)

(declare-fun list!6564 (BalanceConc!11194) List!17126)

(assert (=> start!146086 (= lt!543265 (theoremInvertabilityWhenTokenListSeparable!86 Lexer!2615 (rules!12117 thiss!10002) (list!6564 (tokens!2211 thiss!10002))))))

(declare-fun isEmpty!10211 (List!17127) Bool)

(assert (=> start!146086 (isEmpty!10211 (rules!12117 thiss!10002))))

(declare-fun e!1007385 () Bool)

(declare-fun inv!22438 (PrintableTokens!1194) Bool)

(assert (=> start!146086 (and (inv!22438 thiss!10002) e!1007385)))

(declare-fun b!1568591 () Bool)

(declare-fun e!1007386 () Bool)

(declare-fun tp!461934 () Bool)

(declare-fun inv!22439 (Conc!5625) Bool)

(assert (=> b!1568591 (= e!1007386 (and (inv!22439 (c!254198 (tokens!2211 thiss!10002))) tp!461934))))

(declare-fun tp!461933 () Bool)

(declare-fun b!1568590 () Bool)

(declare-fun inv!22440 (BalanceConc!11194) Bool)

(assert (=> b!1568590 (= e!1007385 (and tp!461933 (inv!22440 (tokens!2211 thiss!10002)) e!1007386))))

(assert (= b!1568590 b!1568591))

(assert (= start!146086 b!1568590))

(declare-fun m!1842323 () Bool)

(assert (=> start!146086 m!1842323))

(declare-fun m!1842325 () Bool)

(assert (=> start!146086 m!1842325))

(declare-fun m!1842327 () Bool)

(assert (=> start!146086 m!1842327))

(declare-fun m!1842329 () Bool)

(assert (=> start!146086 m!1842329))

(assert (=> start!146086 m!1842323))

(declare-fun m!1842331 () Bool)

(assert (=> start!146086 m!1842331))

(declare-fun m!1842333 () Bool)

(assert (=> b!1568591 m!1842333))

(declare-fun m!1842335 () Bool)

(assert (=> b!1568590 m!1842335))

(push 1)

(assert (not b!1568590))

(assert (not b!1568591))

(assert (not start!146086))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!465331 () Bool)

(declare-fun isBalanced!1667 (Conc!5625) Bool)

(assert (=> d!465331 (= (inv!22440 (tokens!2211 thiss!10002)) (isBalanced!1667 (c!254198 (tokens!2211 thiss!10002))))))

(declare-fun bs!389975 () Bool)

(assert (= bs!389975 d!465331))

(declare-fun m!1842351 () Bool)

(assert (=> bs!389975 m!1842351))

(assert (=> b!1568590 d!465331))

(declare-fun d!465333 () Bool)

(declare-fun c!254205 () Bool)

(assert (=> d!465333 (= c!254205 (is-Node!5625 (c!254198 (tokens!2211 thiss!10002))))))

(declare-fun e!1007397 () Bool)

(assert (=> d!465333 (= (inv!22439 (c!254198 (tokens!2211 thiss!10002))) e!1007397)))

(declare-fun b!1568604 () Bool)

(declare-fun inv!22444 (Conc!5625) Bool)

(assert (=> b!1568604 (= e!1007397 (inv!22444 (c!254198 (tokens!2211 thiss!10002))))))

(declare-fun b!1568605 () Bool)

(declare-fun e!1007398 () Bool)

(assert (=> b!1568605 (= e!1007397 e!1007398)))

(declare-fun res!699066 () Bool)

(assert (=> b!1568605 (= res!699066 (not (is-Leaf!8340 (c!254198 (tokens!2211 thiss!10002)))))))

(assert (=> b!1568605 (=> res!699066 e!1007398)))

(declare-fun b!1568606 () Bool)

(declare-fun inv!22445 (Conc!5625) Bool)

(assert (=> b!1568606 (= e!1007398 (inv!22445 (c!254198 (tokens!2211 thiss!10002))))))

(assert (= (and d!465333 c!254205) b!1568604))

(assert (= (and d!465333 (not c!254205)) b!1568605))

(assert (= (and b!1568605 (not res!699066)) b!1568606))

(declare-fun m!1842353 () Bool)

(assert (=> b!1568604 m!1842353))

(declare-fun m!1842355 () Bool)

(assert (=> b!1568606 m!1842355))

(assert (=> b!1568591 d!465333))

(declare-fun d!465337 () Bool)

(declare-fun e!1007404 () Bool)

(assert (=> d!465337 e!1007404))

(declare-fun res!699069 () Bool)

(assert (=> d!465337 (=> (not res!699069) (not e!1007404))))

(declare-datatypes ((tuple2!16612 0))(
  ( (tuple2!16613 (_1!9708 BalanceConc!11194) (_2!9708 BalanceConc!11192)) )
))
(declare-fun lex!1117 (LexerInterface!2617 List!17127 BalanceConc!11192) tuple2!16612)

(declare-fun seqFromList!1788 (List!17126) BalanceConc!11194)

(assert (=> d!465337 (= res!699069 (= (list!6564 (_1!9708 (lex!1117 Lexer!2615 (rules!12117 thiss!10002) (print!1154 Lexer!2615 (seqFromList!1788 (list!6564 (tokens!2211 thiss!10002))))))) (list!6564 (tokens!2211 thiss!10002))))))

(declare-fun lt!543348 () Unit!26264)

(declare-fun e!1007403 () Unit!26264)

(assert (=> d!465337 (= lt!543348 e!1007403)))

(declare-fun c!254208 () Bool)

(assert (=> d!465337 (= c!254208 (or (is-Nil!17056 (list!6564 (tokens!2211 thiss!10002))) (is-Nil!17056 (t!142423 (list!6564 (tokens!2211 thiss!10002))))))))

(assert (=> d!465337 (not (isEmpty!10211 (rules!12117 thiss!10002)))))

(assert (=> d!465337 (= (theoremInvertabilityWhenTokenListSeparable!86 Lexer!2615 (rules!12117 thiss!10002) (list!6564 (tokens!2211 thiss!10002))) lt!543348)))

(declare-fun b!1568613 () Bool)

(declare-fun Unit!26269 () Unit!26264)

(assert (=> b!1568613 (= e!1007403 Unit!26269)))

(declare-fun b!1568614 () Bool)

(declare-fun Unit!26270 () Unit!26264)

(assert (=> b!1568614 (= e!1007403 Unit!26270)))

(declare-fun lt!543347 () BalanceConc!11192)

(assert (=> b!1568614 (= lt!543347 (print!1154 Lexer!2615 (seqFromList!1788 (list!6564 (tokens!2211 thiss!10002)))))))

(declare-fun lt!543342 () BalanceConc!11192)

(assert (=> b!1568614 (= lt!543342 (print!1154 Lexer!2615 (seqFromList!1788 (t!142423 (list!6564 (tokens!2211 thiss!10002))))))))

(declare-fun lt!543345 () tuple2!16612)

(assert (=> b!1568614 (= lt!543345 (lex!1117 Lexer!2615 (rules!12117 thiss!10002) lt!543342))))

(declare-fun lt!543337 () List!17124)

(declare-fun list!6566 (BalanceConc!11192) List!17124)

(declare-fun charsOf!1660 (Token!5542) BalanceConc!11192)

(assert (=> b!1568614 (= lt!543337 (list!6566 (charsOf!1660 (h!22457 (list!6564 (tokens!2211 thiss!10002))))))))

(declare-fun lt!543329 () List!17124)

(assert (=> b!1568614 (= lt!543329 (list!6566 lt!543342))))

(declare-fun lt!543341 () Unit!26264)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!796 (List!17124 List!17124) Unit!26264)

(assert (=> b!1568614 (= lt!543341 (lemmaConcatTwoListThenFirstIsPrefix!796 lt!543337 lt!543329))))

(declare-fun isPrefix!1271 (List!17124 List!17124) Bool)

(declare-fun ++!4439 (List!17124 List!17124) List!17124)

(assert (=> b!1568614 (isPrefix!1271 lt!543337 (++!4439 lt!543337 lt!543329))))

(declare-fun lt!543331 () Unit!26264)

(assert (=> b!1568614 (= lt!543331 lt!543341)))

(declare-fun lt!543334 () Unit!26264)

(assert (=> b!1568614 (= lt!543334 (theoremInvertabilityWhenTokenListSeparable!86 Lexer!2615 (rules!12117 thiss!10002) (t!142423 (list!6564 (tokens!2211 thiss!10002)))))))

(declare-fun lt!543343 () Unit!26264)

(declare-fun seqFromListBHdTlConstructive!100 (Token!5542 List!17126 BalanceConc!11194) Unit!26264)

(assert (=> b!1568614 (= lt!543343 (seqFromListBHdTlConstructive!100 (h!22457 (t!142423 (list!6564 (tokens!2211 thiss!10002)))) (t!142423 (t!142423 (list!6564 (tokens!2211 thiss!10002)))) (_1!9708 lt!543345)))))

(declare-fun prepend!487 (BalanceConc!11194 Token!5542) BalanceConc!11194)

(assert (=> b!1568614 (= (list!6564 (_1!9708 lt!543345)) (list!6564 (prepend!487 (seqFromList!1788 (t!142423 (t!142423 (list!6564 (tokens!2211 thiss!10002))))) (h!22457 (t!142423 (list!6564 (tokens!2211 thiss!10002)))))))))

(declare-fun lt!543330 () Unit!26264)

(assert (=> b!1568614 (= lt!543330 lt!543343)))

(declare-datatypes ((tuple2!16614 0))(
  ( (tuple2!16615 (_1!9709 Token!5542) (_2!9709 List!17124)) )
))
(declare-datatypes ((Option!3070 0))(
  ( (None!3069) (Some!3069 (v!23851 tuple2!16614)) )
))
(declare-fun lt!543339 () Option!3070)

(declare-fun maxPrefix!1224 (LexerInterface!2617 List!17127 List!17124) Option!3070)

(assert (=> b!1568614 (= lt!543339 (maxPrefix!1224 Lexer!2615 (rules!12117 thiss!10002) (list!6566 lt!543347)))))

(declare-fun singletonSeq!1352 (Token!5542) BalanceConc!11194)

(declare-fun printTailRec!710 (LexerInterface!2617 BalanceConc!11194 Int BalanceConc!11192) BalanceConc!11192)

(assert (=> b!1568614 (= (print!1154 Lexer!2615 (singletonSeq!1352 (h!22457 (list!6564 (tokens!2211 thiss!10002))))) (printTailRec!710 Lexer!2615 (singletonSeq!1352 (h!22457 (list!6564 (tokens!2211 thiss!10002)))) 0 (BalanceConc!11193 Empty!5624)))))

(declare-fun lt!543349 () Unit!26264)

(declare-fun Unit!26271 () Unit!26264)

(assert (=> b!1568614 (= lt!543349 Unit!26271)))

(declare-fun lt!543344 () Unit!26264)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!244 (LexerInterface!2617 List!17127 List!17124 List!17124) Unit!26264)

(assert (=> b!1568614 (= lt!543344 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!244 Lexer!2615 (rules!12117 thiss!10002) (list!6566 (charsOf!1660 (h!22457 (list!6564 (tokens!2211 thiss!10002))))) (list!6566 lt!543342)))))

(assert (=> b!1568614 (= (list!6566 (charsOf!1660 (h!22457 (list!6564 (tokens!2211 thiss!10002))))) (originalCharacters!3802 (h!22457 (list!6564 (tokens!2211 thiss!10002)))))))

(declare-fun lt!543327 () Unit!26264)

(declare-fun Unit!26272 () Unit!26264)

(assert (=> b!1568614 (= lt!543327 Unit!26272)))

(declare-fun singletonSeq!1353 (C!8806) BalanceConc!11192)

(declare-fun apply!4146 (BalanceConc!11192 Int) C!8806)

(declare-fun head!3132 (List!17124) C!8806)

(assert (=> b!1568614 (= (list!6566 (singletonSeq!1353 (apply!4146 (charsOf!1660 (h!22457 (t!142423 (list!6564 (tokens!2211 thiss!10002))))) 0))) (Cons!17054 (head!3132 (originalCharacters!3802 (h!22457 (t!142423 (list!6564 (tokens!2211 thiss!10002)))))) Nil!17054))))

(declare-fun lt!543340 () Unit!26264)

(declare-fun Unit!26273 () Unit!26264)

(assert (=> b!1568614 (= lt!543340 Unit!26273)))

(assert (=> b!1568614 (= (list!6566 (singletonSeq!1353 (apply!4146 (charsOf!1660 (h!22457 (t!142423 (list!6564 (tokens!2211 thiss!10002))))) 0))) (Cons!17054 (head!3132 (list!6566 lt!543342)) Nil!17054))))

(declare-fun lt!543326 () Unit!26264)

(declare-fun Unit!26274 () Unit!26264)

(assert (=> b!1568614 (= lt!543326 Unit!26274)))

(declare-fun head!3133 (BalanceConc!11192) C!8806)

(assert (=> b!1568614 (= (list!6566 (singletonSeq!1353 (apply!4146 (charsOf!1660 (h!22457 (t!142423 (list!6564 (tokens!2211 thiss!10002))))) 0))) (Cons!17054 (head!3133 lt!543342) Nil!17054))))

(declare-fun lt!543328 () Unit!26264)

(declare-fun Unit!26275 () Unit!26264)

(assert (=> b!1568614 (= lt!543328 Unit!26275)))

(declare-fun isDefined!2465 (Option!3070) Bool)

(assert (=> b!1568614 (isDefined!2465 (maxPrefix!1224 Lexer!2615 (rules!12117 thiss!10002) (originalCharacters!3802 (h!22457 (list!6564 (tokens!2211 thiss!10002))))))))

(declare-fun lt!543346 () Unit!26264)

(declare-fun Unit!26276 () Unit!26264)

(assert (=> b!1568614 (= lt!543346 Unit!26276)))

(assert (=> b!1568614 (isDefined!2465 (maxPrefix!1224 Lexer!2615 (rules!12117 thiss!10002) (list!6566 (charsOf!1660 (h!22457 (list!6564 (tokens!2211 thiss!10002)))))))))

(declare-fun lt!543333 () Unit!26264)

(declare-fun Unit!26277 () Unit!26264)

(assert (=> b!1568614 (= lt!543333 Unit!26277)))

(declare-fun lt!543350 () Unit!26264)

(declare-fun Unit!26278 () Unit!26264)

(assert (=> b!1568614 (= lt!543350 Unit!26278)))

(declare-fun get!4898 (Option!3070) tuple2!16614)

(assert (=> b!1568614 (= (_1!9709 (get!4898 (maxPrefix!1224 Lexer!2615 (rules!12117 thiss!10002) (list!6566 (charsOf!1660 (h!22457 (list!6564 (tokens!2211 thiss!10002)))))))) (h!22457 (list!6564 (tokens!2211 thiss!10002))))))

(declare-fun lt!543338 () Unit!26264)

(declare-fun Unit!26279 () Unit!26264)

(assert (=> b!1568614 (= lt!543338 Unit!26279)))

(declare-fun isEmpty!10213 (List!17124) Bool)

(assert (=> b!1568614 (isEmpty!10213 (_2!9709 (get!4898 (maxPrefix!1224 Lexer!2615 (rules!12117 thiss!10002) (list!6566 (charsOf!1660 (h!22457 (list!6564 (tokens!2211 thiss!10002)))))))))))

(declare-fun lt!543325 () Unit!26264)

(declare-fun Unit!26280 () Unit!26264)

(assert (=> b!1568614 (= lt!543325 Unit!26280)))

(declare-fun matchR!1892 (Regex!4316 List!17124) Bool)

(assert (=> b!1568614 (matchR!1892 (regex!2988 (rule!4774 (h!22457 (list!6564 (tokens!2211 thiss!10002))))) (list!6566 (charsOf!1660 (h!22457 (list!6564 (tokens!2211 thiss!10002))))))))

(declare-fun lt!543336 () Unit!26264)

(declare-fun Unit!26281 () Unit!26264)

(assert (=> b!1568614 (= lt!543336 Unit!26281)))

(assert (=> b!1568614 (= (rule!4774 (h!22457 (list!6564 (tokens!2211 thiss!10002)))) (rule!4774 (h!22457 (list!6564 (tokens!2211 thiss!10002)))))))

(declare-fun lt!543335 () Unit!26264)

(declare-fun Unit!26282 () Unit!26264)

(assert (=> b!1568614 (= lt!543335 Unit!26282)))

(declare-fun lt!543332 () Unit!26264)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!42 (LexerInterface!2617 List!17127 Token!5542 Rule!5776 List!17124) Unit!26264)

(assert (=> b!1568614 (= lt!543332 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!42 Lexer!2615 (rules!12117 thiss!10002) (h!22457 (list!6564 (tokens!2211 thiss!10002))) (rule!4774 (h!22457 (list!6564 (tokens!2211 thiss!10002)))) (list!6566 lt!543342)))))

(declare-fun b!1568615 () Bool)

(declare-fun isEmpty!10214 (BalanceConc!11192) Bool)

(assert (=> b!1568615 (= e!1007404 (isEmpty!10214 (_2!9708 (lex!1117 Lexer!2615 (rules!12117 thiss!10002) (print!1154 Lexer!2615 (seqFromList!1788 (list!6564 (tokens!2211 thiss!10002))))))))))

(assert (= (and d!465337 c!254208) b!1568613))

(assert (= (and d!465337 (not c!254208)) b!1568614))

(assert (= (and d!465337 res!699069) b!1568615))

(assert (=> d!465337 m!1842329))

(declare-fun m!1842357 () Bool)

(assert (=> d!465337 m!1842357))

(assert (=> d!465337 m!1842323))

(declare-fun m!1842359 () Bool)

(assert (=> d!465337 m!1842359))

(assert (=> d!465337 m!1842359))

(declare-fun m!1842361 () Bool)

(assert (=> d!465337 m!1842361))

(assert (=> d!465337 m!1842361))

(declare-fun m!1842363 () Bool)

(assert (=> d!465337 m!1842363))

(declare-fun m!1842365 () Bool)

(assert (=> b!1568614 m!1842365))

(declare-fun m!1842367 () Bool)

(assert (=> b!1568614 m!1842367))

(declare-fun m!1842369 () Bool)

(assert (=> b!1568614 m!1842369))

(declare-fun m!1842371 () Bool)

(assert (=> b!1568614 m!1842371))

(declare-fun m!1842373 () Bool)

(assert (=> b!1568614 m!1842373))

(declare-fun m!1842375 () Bool)

(assert (=> b!1568614 m!1842375))

(declare-fun m!1842377 () Bool)

(assert (=> b!1568614 m!1842377))

(declare-fun m!1842379 () Bool)

(assert (=> b!1568614 m!1842379))

(declare-fun m!1842381 () Bool)

(assert (=> b!1568614 m!1842381))

(declare-fun m!1842383 () Bool)

(assert (=> b!1568614 m!1842383))

(assert (=> b!1568614 m!1842375))

(declare-fun m!1842385 () Bool)

(assert (=> b!1568614 m!1842385))

(assert (=> b!1568614 m!1842359))

(assert (=> b!1568614 m!1842361))

(declare-fun m!1842387 () Bool)

(assert (=> b!1568614 m!1842387))

(declare-fun m!1842389 () Bool)

(assert (=> b!1568614 m!1842389))

(declare-fun m!1842391 () Bool)

(assert (=> b!1568614 m!1842391))

(declare-fun m!1842393 () Bool)

(assert (=> b!1568614 m!1842393))

(declare-fun m!1842395 () Bool)

(assert (=> b!1568614 m!1842395))

(declare-fun m!1842397 () Bool)

(assert (=> b!1568614 m!1842397))

(declare-fun m!1842399 () Bool)

(assert (=> b!1568614 m!1842399))

(declare-fun m!1842401 () Bool)

(assert (=> b!1568614 m!1842401))

(declare-fun m!1842403 () Bool)

(assert (=> b!1568614 m!1842403))

(assert (=> b!1568614 m!1842391))

(assert (=> b!1568614 m!1842395))

(assert (=> b!1568614 m!1842395))

(declare-fun m!1842405 () Bool)

(assert (=> b!1568614 m!1842405))

(assert (=> b!1568614 m!1842369))

(declare-fun m!1842407 () Bool)

(assert (=> b!1568614 m!1842407))

(assert (=> b!1568614 m!1842371))

(declare-fun m!1842409 () Bool)

(assert (=> b!1568614 m!1842409))

(declare-fun m!1842411 () Bool)

(assert (=> b!1568614 m!1842411))

(declare-fun m!1842413 () Bool)

(assert (=> b!1568614 m!1842413))

(assert (=> b!1568614 m!1842365))

(declare-fun m!1842415 () Bool)

(assert (=> b!1568614 m!1842415))

(declare-fun m!1842417 () Bool)

(assert (=> b!1568614 m!1842417))

(assert (=> b!1568614 m!1842399))

(declare-fun m!1842419 () Bool)

(assert (=> b!1568614 m!1842419))

(assert (=> b!1568614 m!1842367))

(assert (=> b!1568614 m!1842323))

(assert (=> b!1568614 m!1842359))

(assert (=> b!1568614 m!1842391))

(assert (=> b!1568614 m!1842371))

(declare-fun m!1842421 () Bool)

(assert (=> b!1568614 m!1842421))

(declare-fun m!1842423 () Bool)

(assert (=> b!1568614 m!1842423))

(assert (=> b!1568614 m!1842417))

(assert (=> b!1568614 m!1842383))

(declare-fun m!1842425 () Bool)

(assert (=> b!1568614 m!1842425))

(declare-fun m!1842427 () Bool)

(assert (=> b!1568614 m!1842427))

(declare-fun m!1842429 () Bool)

(assert (=> b!1568614 m!1842429))

(assert (=> b!1568614 m!1842403))

(assert (=> b!1568614 m!1842427))

(assert (=> b!1568614 m!1842391))

(assert (=> b!1568614 m!1842379))

(declare-fun m!1842431 () Bool)

(assert (=> b!1568614 m!1842431))

(assert (=> b!1568614 m!1842411))

(assert (=> b!1568614 m!1842379))

(assert (=> b!1568614 m!1842379))

(declare-fun m!1842433 () Bool)

(assert (=> b!1568614 m!1842433))

(declare-fun m!1842435 () Bool)

(assert (=> b!1568614 m!1842435))

(assert (=> b!1568615 m!1842323))

(assert (=> b!1568615 m!1842359))

(assert (=> b!1568615 m!1842359))

(assert (=> b!1568615 m!1842361))

(assert (=> b!1568615 m!1842361))

(assert (=> b!1568615 m!1842363))

(declare-fun m!1842437 () Bool)

(assert (=> b!1568615 m!1842437))

(assert (=> start!146086 d!465337))

(declare-fun d!465339 () Bool)

(declare-fun res!699079 () Bool)

(declare-fun e!1007413 () Bool)

(assert (=> d!465339 (=> (not res!699079) (not e!1007413))))

(assert (=> d!465339 (= res!699079 (not (isEmpty!10211 (rules!12117 thiss!10002))))))

(assert (=> d!465339 (= (inv!22438 thiss!10002) e!1007413)))

(declare-fun b!1568631 () Bool)

(declare-fun res!699080 () Bool)

(assert (=> b!1568631 (=> (not res!699080) (not e!1007413))))

(declare-fun rulesInvariant!2290 (LexerInterface!2617 List!17127) Bool)

(assert (=> b!1568631 (= res!699080 (rulesInvariant!2290 Lexer!2615 (rules!12117 thiss!10002)))))

(declare-fun b!1568632 () Bool)

(declare-fun res!699081 () Bool)

(assert (=> b!1568632 (=> (not res!699081) (not e!1007413))))

(declare-fun rulesProduceEachTokenIndividually!910 (LexerInterface!2617 List!17127 BalanceConc!11194) Bool)

(assert (=> b!1568632 (= res!699081 (rulesProduceEachTokenIndividually!910 Lexer!2615 (rules!12117 thiss!10002) (tokens!2211 thiss!10002)))))

(declare-fun b!1568633 () Bool)

(declare-fun separableTokens!281 (LexerInterface!2617 BalanceConc!11194 List!17127) Bool)

(assert (=> b!1568633 (= e!1007413 (separableTokens!281 Lexer!2615 (tokens!2211 thiss!10002) (rules!12117 thiss!10002)))))

(assert (= (and d!465339 res!699079) b!1568631))

(assert (= (and b!1568631 res!699080) b!1568632))

(assert (= (and b!1568632 res!699081) b!1568633))

(assert (=> d!465339 m!1842329))

(declare-fun m!1842521 () Bool)

(assert (=> b!1568631 m!1842521))

(declare-fun m!1842523 () Bool)

(assert (=> b!1568632 m!1842523))

(declare-fun m!1842525 () Bool)

(assert (=> b!1568633 m!1842525))

(assert (=> start!146086 d!465339))

(declare-fun d!465343 () Bool)

(assert (=> d!465343 (= (isEmpty!10211 (rules!12117 thiss!10002)) (is-Nil!17057 (rules!12117 thiss!10002)))))

(assert (=> start!146086 d!465343))

(declare-fun d!465345 () Bool)

(declare-fun lt!543431 () BalanceConc!11192)

(declare-fun printList!774 (LexerInterface!2617 List!17126) List!17124)

(assert (=> d!465345 (= (list!6566 lt!543431) (printList!774 Lexer!2615 (list!6564 (tokens!2211 thiss!10002))))))

(assert (=> d!465345 (= lt!543431 (printTailRec!710 Lexer!2615 (tokens!2211 thiss!10002) 0 (BalanceConc!11193 Empty!5624)))))

(assert (=> d!465345 (= (print!1154 Lexer!2615 (tokens!2211 thiss!10002)) lt!543431)))

(declare-fun bs!389976 () Bool)

(assert (= bs!389976 d!465345))

(declare-fun m!1842527 () Bool)

(assert (=> bs!389976 m!1842527))

(assert (=> bs!389976 m!1842323))

(assert (=> bs!389976 m!1842323))

(declare-fun m!1842529 () Bool)

(assert (=> bs!389976 m!1842529))

(declare-fun m!1842531 () Bool)

(assert (=> bs!389976 m!1842531))

(assert (=> start!146086 d!465345))

(declare-fun d!465347 () Bool)

(declare-fun list!6567 (Conc!5625) List!17126)

(assert (=> d!465347 (= (list!6564 (tokens!2211 thiss!10002)) (list!6567 (c!254198 (tokens!2211 thiss!10002))))))

(declare-fun bs!389977 () Bool)

(assert (= bs!389977 d!465347))

(declare-fun m!1842533 () Bool)

(assert (=> bs!389977 m!1842533))

(assert (=> start!146086 d!465347))

(declare-fun b!1568644 () Bool)

(declare-fun b_free!41983 () Bool)

(declare-fun b_next!42687 () Bool)

(assert (=> b!1568644 (= b_free!41983 (not b_next!42687))))

(declare-fun tp!461951 () Bool)

(declare-fun b_and!109553 () Bool)

(assert (=> b!1568644 (= tp!461951 b_and!109553)))

(declare-fun b_free!41985 () Bool)

(declare-fun b_next!42689 () Bool)

(assert (=> b!1568644 (= b_free!41985 (not b_next!42689))))

(declare-fun tp!461950 () Bool)

(declare-fun b_and!109555 () Bool)

(assert (=> b!1568644 (= tp!461950 b_and!109555)))

(declare-fun e!1007423 () Bool)

(assert (=> b!1568644 (= e!1007423 (and tp!461951 tp!461950))))

(declare-fun e!1007425 () Bool)

(declare-fun tp!461952 () Bool)

(declare-fun b!1568643 () Bool)

(declare-fun inv!22435 (String!19724) Bool)

(declare-fun inv!22446 (TokenValueInjection!5816) Bool)

(assert (=> b!1568643 (= e!1007425 (and tp!461952 (inv!22435 (tag!3252 (h!22458 (rules!12117 thiss!10002)))) (inv!22446 (transformation!2988 (h!22458 (rules!12117 thiss!10002)))) e!1007423))))

(declare-fun b!1568642 () Bool)

(declare-fun e!1007422 () Bool)

(declare-fun tp!461949 () Bool)

(assert (=> b!1568642 (= e!1007422 (and e!1007425 tp!461949))))

(assert (=> b!1568590 (= tp!461933 e!1007422)))

(assert (= b!1568643 b!1568644))

(assert (= b!1568642 b!1568643))

(assert (= (and b!1568590 (is-Cons!17057 (rules!12117 thiss!10002))) b!1568642))

(declare-fun m!1842535 () Bool)

(assert (=> b!1568643 m!1842535))

(declare-fun m!1842537 () Bool)

(assert (=> b!1568643 m!1842537))

(declare-fun tp!461959 () Bool)

(declare-fun e!1007430 () Bool)

(declare-fun tp!461960 () Bool)

(declare-fun b!1568653 () Bool)

(assert (=> b!1568653 (= e!1007430 (and (inv!22439 (left!13821 (c!254198 (tokens!2211 thiss!10002)))) tp!461959 (inv!22439 (right!14151 (c!254198 (tokens!2211 thiss!10002)))) tp!461960))))

(declare-fun b!1568655 () Bool)

(declare-fun e!1007431 () Bool)

(declare-fun tp!461961 () Bool)

(assert (=> b!1568655 (= e!1007431 tp!461961)))

(declare-fun b!1568654 () Bool)

(declare-fun inv!22447 (IArray!11255) Bool)

(assert (=> b!1568654 (= e!1007430 (and (inv!22447 (xs!8429 (c!254198 (tokens!2211 thiss!10002)))) e!1007431))))

(assert (=> b!1568591 (= tp!461934 (and (inv!22439 (c!254198 (tokens!2211 thiss!10002))) e!1007430))))

(assert (= (and b!1568591 (is-Node!5625 (c!254198 (tokens!2211 thiss!10002)))) b!1568653))

(assert (= b!1568654 b!1568655))

(assert (= (and b!1568591 (is-Leaf!8340 (c!254198 (tokens!2211 thiss!10002)))) b!1568654))

(declare-fun m!1842539 () Bool)

(assert (=> b!1568653 m!1842539))

(declare-fun m!1842541 () Bool)

(assert (=> b!1568653 m!1842541))

(declare-fun m!1842543 () Bool)

(assert (=> b!1568654 m!1842543))

(assert (=> b!1568591 m!1842333))

(push 1)

(assert (not d!465339))

(assert (not b!1568615))

(assert (not b!1568614))

(assert (not d!465345))

(assert (not d!465331))

(assert b_and!109553)

(assert b_and!109555)

(assert (not b!1568654))

(assert (not b!1568632))

(assert (not b!1568633))

(assert (not b!1568642))

(assert (not b!1568591))

(assert (not b!1568631))

(assert (not b!1568643))

(assert (not d!465347))

(assert (not b!1568606))

(assert (not b_next!42689))

(assert (not b!1568604))

(assert (not d!465337))

(assert (not b!1568655))

(assert (not b!1568653))

(assert (not b_next!42687))

(check-sat)

(pop 1)

(push 1)

(assert b_and!109553)

(assert b_and!109555)

(assert (not b_next!42687))

(assert (not b_next!42689))

(check-sat)

(pop 1)

