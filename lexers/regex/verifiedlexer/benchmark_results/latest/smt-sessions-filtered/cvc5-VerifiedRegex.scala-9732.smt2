; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!509282 () Bool)

(assert start!509282)

(declare-fun b!4870756 () Bool)

(declare-fun b_free!130727 () Bool)

(declare-fun b_next!131517 () Bool)

(assert (=> b!4870756 (= b_free!130727 (not b_next!131517))))

(declare-fun tp!1370496 () Bool)

(declare-fun b_and!343007 () Bool)

(assert (=> b!4870756 (= tp!1370496 b_and!343007)))

(declare-fun b_free!130729 () Bool)

(declare-fun b_next!131519 () Bool)

(assert (=> b!4870756 (= b_free!130729 (not b_next!131519))))

(declare-fun tp!1370497 () Bool)

(declare-fun b_and!343009 () Bool)

(assert (=> b!4870756 (= tp!1370497 b_and!343009)))

(declare-fun res!2079197 () Bool)

(declare-fun e!3044858 () Bool)

(assert (=> start!509282 (=> (not res!2079197) (not e!3044858))))

(declare-datatypes ((LexerInterface!7635 0))(
  ( (LexerInterfaceExt!7632 (__x!33999 Int)) (Lexer!7633) )
))
(declare-fun thiss!11460 () LexerInterface!7635)

(assert (=> start!509282 (= res!2079197 (is-Lexer!7633 thiss!11460))))

(assert (=> start!509282 e!3044858))

(assert (=> start!509282 true))

(declare-fun e!3044854 () Bool)

(assert (=> start!509282 e!3044854))

(declare-datatypes ((C!26434 0))(
  ( (C!26435 (val!22539 Int)) )
))
(declare-datatypes ((List!56108 0))(
  ( (Nil!55984) (Cons!55984 (h!62432 C!26434) (t!364178 List!56108)) )
))
(declare-datatypes ((IArray!29247 0))(
  ( (IArray!29248 (innerList!14681 List!56108)) )
))
(declare-datatypes ((Conc!14593 0))(
  ( (Node!14593 (left!40663 Conc!14593) (right!40993 Conc!14593) (csize!29416 Int) (cheight!14804 Int)) (Leaf!24326 (xs!17901 IArray!29247) (csize!29417 Int)) (Empty!14593) )
))
(declare-datatypes ((BalanceConc!28628 0))(
  ( (BalanceConc!28629 (c!828451 Conc!14593)) )
))
(declare-fun input!585 () BalanceConc!28628)

(declare-fun e!3044852 () Bool)

(declare-fun inv!71909 (BalanceConc!28628) Bool)

(assert (=> start!509282 (and (inv!71909 input!585) e!3044852)))

(declare-fun b!4870750 () Bool)

(declare-fun res!2079194 () Bool)

(assert (=> b!4870750 (=> (not res!2079194) (not e!3044858))))

(declare-datatypes ((List!56109 0))(
  ( (Nil!55985) (Cons!55985 (h!62433 (_ BitVec 16)) (t!364179 List!56109)) )
))
(declare-datatypes ((TokenValue!8353 0))(
  ( (FloatLiteralValue!16706 (text!58916 List!56109)) (TokenValueExt!8352 (__x!34000 Int)) (Broken!41765 (value!258343 List!56109)) (Object!8476) (End!8353) (Def!8353) (Underscore!8353) (Match!8353) (Else!8353) (Error!8353) (Case!8353) (If!8353) (Extends!8353) (Abstract!8353) (Class!8353) (Val!8353) (DelimiterValue!16706 (del!8413 List!56109)) (KeywordValue!8359 (value!258344 List!56109)) (CommentValue!16706 (value!258345 List!56109)) (WhitespaceValue!16706 (value!258346 List!56109)) (IndentationValue!8353 (value!258347 List!56109)) (String!63184) (Int32!8353) (Broken!41766 (value!258348 List!56109)) (Boolean!8354) (Unit!145972) (OperatorValue!8356 (op!8413 List!56109)) (IdentifierValue!16706 (value!258349 List!56109)) (IdentifierValue!16707 (value!258350 List!56109)) (WhitespaceValue!16707 (value!258351 List!56109)) (True!16706) (False!16706) (Broken!41767 (value!258352 List!56109)) (Broken!41768 (value!258353 List!56109)) (True!16707) (RightBrace!8353) (RightBracket!8353) (Colon!8353) (Null!8353) (Comma!8353) (LeftBracket!8353) (False!16707) (LeftBrace!8353) (ImaginaryLiteralValue!8353 (text!58917 List!56109)) (StringLiteralValue!25059 (value!258354 List!56109)) (EOFValue!8353 (value!258355 List!56109)) (IdentValue!8353 (value!258356 List!56109)) (DelimiterValue!16707 (value!258357 List!56109)) (DedentValue!8353 (value!258358 List!56109)) (NewLineValue!8353 (value!258359 List!56109)) (IntegerValue!25059 (value!258360 (_ BitVec 32)) (text!58918 List!56109)) (IntegerValue!25060 (value!258361 Int) (text!58919 List!56109)) (Times!8353) (Or!8353) (Equal!8353) (Minus!8353) (Broken!41769 (value!258362 List!56109)) (And!8353) (Div!8353) (LessEqual!8353) (Mod!8353) (Concat!21471) (Not!8353) (Plus!8353) (SpaceValue!8353 (value!258363 List!56109)) (IntegerValue!25061 (value!258364 Int) (text!58920 List!56109)) (StringLiteralValue!25060 (text!58921 List!56109)) (FloatLiteralValue!16707 (text!58922 List!56109)) (BytesLiteralValue!8353 (value!258365 List!56109)) (CommentValue!16707 (value!258366 List!56109)) (StringLiteralValue!25061 (value!258367 List!56109)) (ErrorTokenValue!8353 (msg!8414 List!56109)) )
))
(declare-datatypes ((Regex!13118 0))(
  ( (ElementMatch!13118 (c!828452 C!26434)) (Concat!21472 (regOne!26748 Regex!13118) (regTwo!26748 Regex!13118)) (EmptyExpr!13118) (Star!13118 (reg!13447 Regex!13118)) (EmptyLang!13118) (Union!13118 (regOne!26749 Regex!13118) (regTwo!26749 Regex!13118)) )
))
(declare-datatypes ((String!63185 0))(
  ( (String!63186 (value!258368 String)) )
))
(declare-datatypes ((TokenValueInjection!16014 0))(
  ( (TokenValueInjection!16015 (toValue!10914 Int) (toChars!10773 Int)) )
))
(declare-datatypes ((Rule!15886 0))(
  ( (Rule!15887 (regex!8043 Regex!13118) (tag!8907 String!63185) (isSeparator!8043 Bool) (transformation!8043 TokenValueInjection!16014)) )
))
(declare-datatypes ((List!56110 0))(
  ( (Nil!55986) (Cons!55986 (h!62434 Rule!15886) (t!364180 List!56110)) )
))
(declare-fun rules!1164 () List!56110)

(declare-fun rulesInvariant!6733 (LexerInterface!7635 List!56110) Bool)

(assert (=> b!4870750 (= res!2079194 (rulesInvariant!6733 thiss!11460 rules!1164))))

(declare-fun b!4870751 () Bool)

(declare-fun e!3044855 () Bool)

(declare-datatypes ((Token!14670 0))(
  ( (Token!14671 (value!258369 TokenValue!8353) (rule!11181 Rule!15886) (size!36905 Int) (originalCharacters!8366 List!56108)) )
))
(declare-datatypes ((tuple2!59838 0))(
  ( (tuple2!59839 (_1!33222 Token!14670) (_2!33222 BalanceConc!28628)) )
))
(declare-datatypes ((Option!13792 0))(
  ( (None!13791) (Some!13791 (v!49713 tuple2!59838)) )
))
(declare-fun lt!1995756 () Option!13792)

(declare-fun ++!12192 (List!56108 List!56108) List!56108)

(declare-fun list!17513 (BalanceConc!28628) List!56108)

(declare-fun charsOf!5342 (Token!14670) BalanceConc!28628)

(assert (=> b!4870751 (= e!3044855 (not (= (++!12192 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))) (list!17513 (_2!33222 (v!49713 lt!1995756)))) (list!17513 input!585))))))

(declare-datatypes ((List!56111 0))(
  ( (Nil!55987) (Cons!55987 (h!62435 Token!14670) (t!364181 List!56111)) )
))
(declare-datatypes ((IArray!29249 0))(
  ( (IArray!29250 (innerList!14682 List!56111)) )
))
(declare-datatypes ((Conc!14594 0))(
  ( (Node!14594 (left!40664 Conc!14594) (right!40994 Conc!14594) (csize!29418 Int) (cheight!14805 Int)) (Leaf!24327 (xs!17902 IArray!29249) (csize!29419 Int)) (Empty!14594) )
))
(declare-datatypes ((BalanceConc!28630 0))(
  ( (BalanceConc!28631 (c!828453 Conc!14594)) )
))
(declare-datatypes ((tuple2!59840 0))(
  ( (tuple2!59841 (_1!33223 BalanceConc!28630) (_2!33223 BalanceConc!28628)) )
))
(declare-fun lt!1995755 () tuple2!59840)

(declare-fun lexRec!850 (LexerInterface!7635 List!56110 BalanceConc!28628) tuple2!59840)

(assert (=> b!4870751 (= lt!1995755 (lexRec!850 thiss!11460 rules!1164 (_2!33222 (v!49713 lt!1995756))))))

(declare-fun b!4870752 () Bool)

(declare-fun tp!1370500 () Bool)

(declare-fun inv!71910 (Conc!14593) Bool)

(assert (=> b!4870752 (= e!3044852 (and (inv!71910 (c!828451 input!585)) tp!1370500))))

(declare-fun b!4870753 () Bool)

(assert (=> b!4870753 (= e!3044858 e!3044855)))

(declare-fun res!2079196 () Bool)

(assert (=> b!4870753 (=> (not res!2079196) (not e!3044855))))

(assert (=> b!4870753 (= res!2079196 (is-Some!13791 lt!1995756))))

(declare-fun maxPrefixZipperSequence!1234 (LexerInterface!7635 List!56110 BalanceConc!28628) Option!13792)

(assert (=> b!4870753 (= lt!1995756 (maxPrefixZipperSequence!1234 thiss!11460 rules!1164 input!585))))

(declare-fun e!3044857 () Bool)

(declare-fun e!3044856 () Bool)

(declare-fun tp!1370499 () Bool)

(declare-fun b!4870754 () Bool)

(declare-fun inv!71906 (String!63185) Bool)

(declare-fun inv!71911 (TokenValueInjection!16014) Bool)

(assert (=> b!4870754 (= e!3044857 (and tp!1370499 (inv!71906 (tag!8907 (h!62434 rules!1164))) (inv!71911 (transformation!8043 (h!62434 rules!1164))) e!3044856))))

(declare-fun b!4870755 () Bool)

(declare-fun tp!1370498 () Bool)

(assert (=> b!4870755 (= e!3044854 (and e!3044857 tp!1370498))))

(assert (=> b!4870756 (= e!3044856 (and tp!1370496 tp!1370497))))

(declare-fun b!4870757 () Bool)

(declare-fun res!2079195 () Bool)

(assert (=> b!4870757 (=> (not res!2079195) (not e!3044858))))

(declare-fun isEmpty!29958 (List!56110) Bool)

(assert (=> b!4870757 (= res!2079195 (not (isEmpty!29958 rules!1164)))))

(assert (= (and start!509282 res!2079197) b!4870757))

(assert (= (and b!4870757 res!2079195) b!4870750))

(assert (= (and b!4870750 res!2079194) b!4870753))

(assert (= (and b!4870753 res!2079196) b!4870751))

(assert (= b!4870754 b!4870756))

(assert (= b!4870755 b!4870754))

(assert (= (and start!509282 (is-Cons!55986 rules!1164)) b!4870755))

(assert (= start!509282 b!4870752))

(declare-fun m!5870984 () Bool)

(assert (=> b!4870750 m!5870984))

(declare-fun m!5870986 () Bool)

(assert (=> start!509282 m!5870986))

(declare-fun m!5870988 () Bool)

(assert (=> b!4870757 m!5870988))

(declare-fun m!5870990 () Bool)

(assert (=> b!4870752 m!5870990))

(declare-fun m!5870992 () Bool)

(assert (=> b!4870751 m!5870992))

(declare-fun m!5870994 () Bool)

(assert (=> b!4870751 m!5870994))

(declare-fun m!5870996 () Bool)

(assert (=> b!4870751 m!5870996))

(assert (=> b!4870751 m!5870994))

(declare-fun m!5870998 () Bool)

(assert (=> b!4870751 m!5870998))

(declare-fun m!5871000 () Bool)

(assert (=> b!4870751 m!5871000))

(assert (=> b!4870751 m!5870996))

(assert (=> b!4870751 m!5870992))

(declare-fun m!5871002 () Bool)

(assert (=> b!4870751 m!5871002))

(declare-fun m!5871004 () Bool)

(assert (=> b!4870753 m!5871004))

(declare-fun m!5871006 () Bool)

(assert (=> b!4870754 m!5871006))

(declare-fun m!5871008 () Bool)

(assert (=> b!4870754 m!5871008))

(push 1)

(assert b_and!343009)

(assert (not b!4870751))

(assert (not b!4870752))

(assert b_and!343007)

(assert (not start!509282))

(assert (not b!4870754))

(assert (not b!4870750))

(assert (not b!4870755))

(assert (not b_next!131517))

(assert (not b_next!131519))

(assert (not b!4870753))

(assert (not b!4870757))

(check-sat)

(pop 1)

(push 1)

(assert b_and!343009)

(assert b_and!343007)

(assert (not b_next!131517))

(assert (not b_next!131519))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1564055 () Bool)

(assert (=> d!1564055 (= (isEmpty!29958 rules!1164) (is-Nil!55986 rules!1164))))

(assert (=> b!4870757 d!1564055))

(declare-fun b!4870793 () Bool)

(declare-fun e!3044885 () Bool)

(declare-fun lt!1995765 () List!56108)

(assert (=> b!4870793 (= e!3044885 (or (not (= (list!17513 (_2!33222 (v!49713 lt!1995756))) Nil!55984)) (= lt!1995765 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))

(declare-fun b!4870792 () Bool)

(declare-fun res!2079217 () Bool)

(assert (=> b!4870792 (=> (not res!2079217) (not e!3044885))))

(declare-fun size!36907 (List!56108) Int)

(assert (=> b!4870792 (= res!2079217 (= (size!36907 lt!1995765) (+ (size!36907 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))) (size!36907 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))))

(declare-fun d!1564057 () Bool)

(assert (=> d!1564057 e!3044885))

(declare-fun res!2079218 () Bool)

(assert (=> d!1564057 (=> (not res!2079218) (not e!3044885))))

(declare-fun content!9981 (List!56108) (Set C!26434))

(assert (=> d!1564057 (= res!2079218 (= (content!9981 lt!1995765) (set.union (content!9981 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))) (content!9981 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))))

(declare-fun e!3044884 () List!56108)

(assert (=> d!1564057 (= lt!1995765 e!3044884)))

(declare-fun c!828459 () Bool)

(assert (=> d!1564057 (= c!828459 (is-Nil!55984 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))))

(assert (=> d!1564057 (= (++!12192 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))) (list!17513 (_2!33222 (v!49713 lt!1995756)))) lt!1995765)))

(declare-fun b!4870790 () Bool)

(assert (=> b!4870790 (= e!3044884 (list!17513 (_2!33222 (v!49713 lt!1995756))))))

(declare-fun b!4870791 () Bool)

(assert (=> b!4870791 (= e!3044884 (Cons!55984 (h!62432 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))) (++!12192 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))) (list!17513 (_2!33222 (v!49713 lt!1995756))))))))

(assert (= (and d!1564057 c!828459) b!4870790))

(assert (= (and d!1564057 (not c!828459)) b!4870791))

(assert (= (and d!1564057 res!2079218) b!4870792))

(assert (= (and b!4870792 res!2079217) b!4870793))

(declare-fun m!5871036 () Bool)

(assert (=> b!4870792 m!5871036))

(assert (=> b!4870792 m!5870996))

(declare-fun m!5871038 () Bool)

(assert (=> b!4870792 m!5871038))

(assert (=> b!4870792 m!5870992))

(declare-fun m!5871040 () Bool)

(assert (=> b!4870792 m!5871040))

(declare-fun m!5871042 () Bool)

(assert (=> d!1564057 m!5871042))

(assert (=> d!1564057 m!5870996))

(declare-fun m!5871044 () Bool)

(assert (=> d!1564057 m!5871044))

(assert (=> d!1564057 m!5870992))

(declare-fun m!5871046 () Bool)

(assert (=> d!1564057 m!5871046))

(assert (=> b!4870791 m!5870992))

(declare-fun m!5871048 () Bool)

(assert (=> b!4870791 m!5871048))

(assert (=> b!4870751 d!1564057))

(declare-fun d!1564059 () Bool)

(declare-fun lt!1995768 () BalanceConc!28628)

(assert (=> d!1564059 (= (list!17513 lt!1995768) (originalCharacters!8366 (_1!33222 (v!49713 lt!1995756))))))

(declare-fun dynLambda!22473 (Int TokenValue!8353) BalanceConc!28628)

(assert (=> d!1564059 (= lt!1995768 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))

(assert (=> d!1564059 (= (charsOf!5342 (_1!33222 (v!49713 lt!1995756))) lt!1995768)))

(declare-fun b_lambda!193673 () Bool)

(assert (=> (not b_lambda!193673) (not d!1564059)))

(declare-fun tb!257963 () Bool)

(declare-fun t!364187 () Bool)

(assert (=> (and b!4870756 (= (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756)))))) t!364187) tb!257963))

(declare-fun b!4870798 () Bool)

(declare-fun e!3044888 () Bool)

(declare-fun tp!1370518 () Bool)

(assert (=> b!4870798 (= e!3044888 (and (inv!71910 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))) tp!1370518))))

(declare-fun result!321122 () Bool)

(assert (=> tb!257963 (= result!321122 (and (inv!71909 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))) e!3044888))))

(assert (= tb!257963 b!4870798))

(declare-fun m!5871050 () Bool)

(assert (=> b!4870798 m!5871050))

(declare-fun m!5871052 () Bool)

(assert (=> tb!257963 m!5871052))

(assert (=> d!1564059 t!364187))

(declare-fun b_and!343015 () Bool)

(assert (= b_and!343009 (and (=> t!364187 result!321122) b_and!343015)))

(declare-fun m!5871054 () Bool)

(assert (=> d!1564059 m!5871054))

(declare-fun m!5871056 () Bool)

(assert (=> d!1564059 m!5871056))

(assert (=> b!4870751 d!1564059))

(declare-fun d!1564061 () Bool)

(declare-fun e!3044898 () Bool)

(assert (=> d!1564061 e!3044898))

(declare-fun res!2079227 () Bool)

(assert (=> d!1564061 (=> (not res!2079227) (not e!3044898))))

(declare-fun e!3044899 () Bool)

(assert (=> d!1564061 (= res!2079227 e!3044899)))

(declare-fun c!828466 () Bool)

(declare-fun lt!1995776 () tuple2!59840)

(declare-fun size!36908 (BalanceConc!28630) Int)

(assert (=> d!1564061 (= c!828466 (> (size!36908 (_1!33223 lt!1995776)) 0))))

(declare-fun e!3044900 () tuple2!59840)

(assert (=> d!1564061 (= lt!1995776 e!3044900)))

(declare-fun c!828465 () Bool)

(declare-fun lt!1995775 () Option!13792)

(assert (=> d!1564061 (= c!828465 (is-Some!13791 lt!1995775))))

(assert (=> d!1564061 (= lt!1995775 (maxPrefixZipperSequence!1234 thiss!11460 rules!1164 (_2!33222 (v!49713 lt!1995756))))))

(assert (=> d!1564061 (= (lexRec!850 thiss!11460 rules!1164 (_2!33222 (v!49713 lt!1995756))) lt!1995776)))

(declare-fun b!4870813 () Bool)

(assert (=> b!4870813 (= e!3044899 (= (list!17513 (_2!33223 lt!1995776)) (list!17513 (_2!33222 (v!49713 lt!1995756)))))))

(declare-fun b!4870814 () Bool)

(declare-fun e!3044897 () Bool)

(declare-fun isEmpty!29960 (BalanceConc!28630) Bool)

(assert (=> b!4870814 (= e!3044897 (not (isEmpty!29960 (_1!33223 lt!1995776))))))

(declare-fun b!4870815 () Bool)

(assert (=> b!4870815 (= e!3044899 e!3044897)))

(declare-fun res!2079226 () Bool)

(declare-fun size!36909 (BalanceConc!28628) Int)

(assert (=> b!4870815 (= res!2079226 (< (size!36909 (_2!33223 lt!1995776)) (size!36909 (_2!33222 (v!49713 lt!1995756)))))))

(assert (=> b!4870815 (=> (not res!2079226) (not e!3044897))))

(declare-fun b!4870816 () Bool)

(assert (=> b!4870816 (= e!3044900 (tuple2!59841 (BalanceConc!28631 Empty!14594) (_2!33222 (v!49713 lt!1995756))))))

(declare-fun b!4870817 () Bool)

(declare-fun res!2079228 () Bool)

(assert (=> b!4870817 (=> (not res!2079228) (not e!3044898))))

(declare-fun list!17515 (BalanceConc!28630) List!56111)

(declare-datatypes ((tuple2!59846 0))(
  ( (tuple2!59847 (_1!33226 List!56111) (_2!33226 List!56108)) )
))
(declare-fun lexList!2108 (LexerInterface!7635 List!56110 List!56108) tuple2!59846)

(assert (=> b!4870817 (= res!2079228 (= (list!17515 (_1!33223 lt!1995776)) (_1!33226 (lexList!2108 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))))

(declare-fun b!4870818 () Bool)

(declare-fun lt!1995777 () tuple2!59840)

(declare-fun prepend!1399 (BalanceConc!28630 Token!14670) BalanceConc!28630)

(assert (=> b!4870818 (= e!3044900 (tuple2!59841 (prepend!1399 (_1!33223 lt!1995777) (_1!33222 (v!49713 lt!1995775))) (_2!33223 lt!1995777)))))

(assert (=> b!4870818 (= lt!1995777 (lexRec!850 thiss!11460 rules!1164 (_2!33222 (v!49713 lt!1995775))))))

(declare-fun b!4870819 () Bool)

(assert (=> b!4870819 (= e!3044898 (= (list!17513 (_2!33223 lt!1995776)) (_2!33226 (lexList!2108 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))))

(assert (= (and d!1564061 c!828465) b!4870818))

(assert (= (and d!1564061 (not c!828465)) b!4870816))

(assert (= (and d!1564061 c!828466) b!4870815))

(assert (= (and d!1564061 (not c!828466)) b!4870813))

(assert (= (and b!4870815 res!2079226) b!4870814))

(assert (= (and d!1564061 res!2079227) b!4870817))

(assert (= (and b!4870817 res!2079228) b!4870819))

(declare-fun m!5871058 () Bool)

(assert (=> b!4870817 m!5871058))

(assert (=> b!4870817 m!5870992))

(assert (=> b!4870817 m!5870992))

(declare-fun m!5871060 () Bool)

(assert (=> b!4870817 m!5871060))

(declare-fun m!5871062 () Bool)

(assert (=> d!1564061 m!5871062))

(declare-fun m!5871064 () Bool)

(assert (=> d!1564061 m!5871064))

(declare-fun m!5871066 () Bool)

(assert (=> b!4870814 m!5871066))

(declare-fun m!5871068 () Bool)

(assert (=> b!4870815 m!5871068))

(declare-fun m!5871070 () Bool)

(assert (=> b!4870815 m!5871070))

(declare-fun m!5871072 () Bool)

(assert (=> b!4870818 m!5871072))

(declare-fun m!5871074 () Bool)

(assert (=> b!4870818 m!5871074))

(declare-fun m!5871076 () Bool)

(assert (=> b!4870819 m!5871076))

(assert (=> b!4870819 m!5870992))

(assert (=> b!4870819 m!5870992))

(assert (=> b!4870819 m!5871060))

(assert (=> b!4870813 m!5871076))

(assert (=> b!4870813 m!5870992))

(assert (=> b!4870751 d!1564061))

(declare-fun d!1564065 () Bool)

(declare-fun list!17516 (Conc!14593) List!56108)

(assert (=> d!1564065 (= (list!17513 (_2!33222 (v!49713 lt!1995756))) (list!17516 (c!828451 (_2!33222 (v!49713 lt!1995756)))))))

(declare-fun bs!1174615 () Bool)

(assert (= bs!1174615 d!1564065))

(declare-fun m!5871078 () Bool)

(assert (=> bs!1174615 m!5871078))

(assert (=> b!4870751 d!1564065))

(declare-fun d!1564067 () Bool)

(assert (=> d!1564067 (= (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))) (list!17516 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))))

(declare-fun bs!1174616 () Bool)

(assert (= bs!1174616 d!1564067))

(declare-fun m!5871080 () Bool)

(assert (=> bs!1174616 m!5871080))

(assert (=> b!4870751 d!1564067))

(declare-fun d!1564069 () Bool)

(assert (=> d!1564069 (= (list!17513 input!585) (list!17516 (c!828451 input!585)))))

(declare-fun bs!1174617 () Bool)

(assert (= bs!1174617 d!1564069))

(declare-fun m!5871082 () Bool)

(assert (=> bs!1174617 m!5871082))

(assert (=> b!4870751 d!1564069))

(declare-fun b!4870836 () Bool)

(declare-fun e!3044913 () Bool)

(declare-fun e!3044916 () Bool)

(assert (=> b!4870836 (= e!3044913 e!3044916)))

(declare-fun res!2079245 () Bool)

(assert (=> b!4870836 (=> res!2079245 e!3044916)))

(declare-fun lt!1995795 () Option!13792)

(declare-fun isDefined!10850 (Option!13792) Bool)

(assert (=> b!4870836 (= res!2079245 (not (isDefined!10850 lt!1995795)))))

(declare-fun b!4870837 () Bool)

(declare-fun res!2079241 () Bool)

(assert (=> b!4870837 (=> (not res!2079241) (not e!3044913))))

(declare-fun e!3044915 () Bool)

(assert (=> b!4870837 (= res!2079241 e!3044915)))

(declare-fun res!2079244 () Bool)

(assert (=> b!4870837 (=> res!2079244 e!3044915)))

(assert (=> b!4870837 (= res!2079244 (not (isDefined!10850 lt!1995795)))))

(declare-fun b!4870838 () Bool)

(declare-fun e!3044917 () Bool)

(assert (=> b!4870838 (= e!3044915 e!3044917)))

(declare-fun res!2079242 () Bool)

(assert (=> b!4870838 (=> (not res!2079242) (not e!3044917))))

(declare-fun get!19235 (Option!13792) tuple2!59838)

(declare-datatypes ((tuple2!59848 0))(
  ( (tuple2!59849 (_1!33227 Token!14670) (_2!33227 List!56108)) )
))
(declare-datatypes ((Option!13794 0))(
  ( (None!13793) (Some!13793 (v!49715 tuple2!59848)) )
))
(declare-fun get!19236 (Option!13794) tuple2!59848)

(declare-fun maxPrefixZipper!564 (LexerInterface!7635 List!56110 List!56108) Option!13794)

(assert (=> b!4870838 (= res!2079242 (= (_1!33222 (get!19235 lt!1995795)) (_1!33227 (get!19236 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 input!585))))))))

(declare-fun b!4870839 () Bool)

(declare-fun e!3044914 () Bool)

(declare-fun maxPrefix!4550 (LexerInterface!7635 List!56110 List!56108) Option!13794)

(assert (=> b!4870839 (= e!3044914 (= (list!17513 (_2!33222 (get!19235 lt!1995795))) (_2!33227 (get!19236 (maxPrefix!4550 thiss!11460 rules!1164 (list!17513 input!585))))))))

(declare-fun b!4870840 () Bool)

(assert (=> b!4870840 (= e!3044917 (= (list!17513 (_2!33222 (get!19235 lt!1995795))) (_2!33227 (get!19236 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 input!585))))))))

(declare-fun b!4870842 () Bool)

(declare-fun e!3044918 () Option!13792)

(declare-fun lt!1995798 () Option!13792)

(declare-fun lt!1995797 () Option!13792)

(assert (=> b!4870842 (= e!3044918 (ite (and (is-None!13791 lt!1995798) (is-None!13791 lt!1995797)) None!13791 (ite (is-None!13791 lt!1995797) lt!1995798 (ite (is-None!13791 lt!1995798) lt!1995797 (ite (>= (size!36905 (_1!33222 (v!49713 lt!1995798))) (size!36905 (_1!33222 (v!49713 lt!1995797)))) lt!1995798 lt!1995797)))))))

(declare-fun call!338213 () Option!13792)

(assert (=> b!4870842 (= lt!1995798 call!338213)))

(assert (=> b!4870842 (= lt!1995797 (maxPrefixZipperSequence!1234 thiss!11460 (t!364180 rules!1164) input!585))))

(declare-fun b!4870843 () Bool)

(assert (=> b!4870843 (= e!3044918 call!338213)))

(declare-fun bm!338208 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!577 (LexerInterface!7635 Rule!15886 BalanceConc!28628) Option!13792)

(assert (=> bm!338208 (= call!338213 (maxPrefixOneRuleZipperSequence!577 thiss!11460 (h!62434 rules!1164) input!585))))

(declare-fun b!4870841 () Bool)

(assert (=> b!4870841 (= e!3044916 e!3044914)))

(declare-fun res!2079243 () Bool)

(assert (=> b!4870841 (=> (not res!2079243) (not e!3044914))))

(assert (=> b!4870841 (= res!2079243 (= (_1!33222 (get!19235 lt!1995795)) (_1!33227 (get!19236 (maxPrefix!4550 thiss!11460 rules!1164 (list!17513 input!585))))))))

(declare-fun d!1564071 () Bool)

(assert (=> d!1564071 e!3044913))

(declare-fun res!2079246 () Bool)

(assert (=> d!1564071 (=> (not res!2079246) (not e!3044913))))

(declare-fun isDefined!10851 (Option!13794) Bool)

(assert (=> d!1564071 (= res!2079246 (= (isDefined!10850 lt!1995795) (isDefined!10851 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 input!585)))))))

(assert (=> d!1564071 (= lt!1995795 e!3044918)))

(declare-fun c!828469 () Bool)

(assert (=> d!1564071 (= c!828469 (and (is-Cons!55986 rules!1164) (is-Nil!55986 (t!364180 rules!1164))))))

(declare-datatypes ((Unit!145974 0))(
  ( (Unit!145975) )
))
(declare-fun lt!1995793 () Unit!145974)

(declare-fun lt!1995794 () Unit!145974)

(assert (=> d!1564071 (= lt!1995793 lt!1995794)))

(declare-fun lt!1995792 () List!56108)

(declare-fun lt!1995796 () List!56108)

(declare-fun isPrefix!4767 (List!56108 List!56108) Bool)

(assert (=> d!1564071 (isPrefix!4767 lt!1995792 lt!1995796)))

(declare-fun lemmaIsPrefixRefl!3164 (List!56108 List!56108) Unit!145974)

(assert (=> d!1564071 (= lt!1995794 (lemmaIsPrefixRefl!3164 lt!1995792 lt!1995796))))

(assert (=> d!1564071 (= lt!1995796 (list!17513 input!585))))

(assert (=> d!1564071 (= lt!1995792 (list!17513 input!585))))

(declare-fun rulesValidInductive!3022 (LexerInterface!7635 List!56110) Bool)

(assert (=> d!1564071 (rulesValidInductive!3022 thiss!11460 rules!1164)))

(assert (=> d!1564071 (= (maxPrefixZipperSequence!1234 thiss!11460 rules!1164 input!585) lt!1995795)))

(assert (= (and d!1564071 c!828469) b!4870843))

(assert (= (and d!1564071 (not c!828469)) b!4870842))

(assert (= (or b!4870843 b!4870842) bm!338208))

(assert (= (and d!1564071 res!2079246) b!4870837))

(assert (= (and b!4870837 (not res!2079244)) b!4870838))

(assert (= (and b!4870838 res!2079242) b!4870840))

(assert (= (and b!4870837 res!2079241) b!4870836))

(assert (= (and b!4870836 (not res!2079245)) b!4870841))

(assert (= (and b!4870841 res!2079243) b!4870839))

(declare-fun m!5871084 () Bool)

(assert (=> b!4870838 m!5871084))

(assert (=> b!4870838 m!5870998))

(assert (=> b!4870838 m!5870998))

(declare-fun m!5871086 () Bool)

(assert (=> b!4870838 m!5871086))

(assert (=> b!4870838 m!5871086))

(declare-fun m!5871088 () Bool)

(assert (=> b!4870838 m!5871088))

(declare-fun m!5871090 () Bool)

(assert (=> b!4870836 m!5871090))

(assert (=> d!1564071 m!5871086))

(declare-fun m!5871092 () Bool)

(assert (=> d!1564071 m!5871092))

(declare-fun m!5871094 () Bool)

(assert (=> d!1564071 m!5871094))

(assert (=> d!1564071 m!5871090))

(assert (=> d!1564071 m!5870998))

(assert (=> d!1564071 m!5871086))

(declare-fun m!5871096 () Bool)

(assert (=> d!1564071 m!5871096))

(declare-fun m!5871098 () Bool)

(assert (=> d!1564071 m!5871098))

(assert (=> d!1564071 m!5870998))

(declare-fun m!5871100 () Bool)

(assert (=> b!4870842 m!5871100))

(assert (=> b!4870839 m!5870998))

(declare-fun m!5871102 () Bool)

(assert (=> b!4870839 m!5871102))

(assert (=> b!4870839 m!5871084))

(assert (=> b!4870839 m!5870998))

(assert (=> b!4870839 m!5871102))

(declare-fun m!5871104 () Bool)

(assert (=> b!4870839 m!5871104))

(declare-fun m!5871106 () Bool)

(assert (=> b!4870839 m!5871106))

(assert (=> b!4870840 m!5870998))

(assert (=> b!4870840 m!5871086))

(assert (=> b!4870840 m!5871086))

(assert (=> b!4870840 m!5871088))

(assert (=> b!4870840 m!5871106))

(assert (=> b!4870840 m!5871084))

(assert (=> b!4870840 m!5870998))

(assert (=> b!4870837 m!5871090))

(declare-fun m!5871108 () Bool)

(assert (=> bm!338208 m!5871108))

(assert (=> b!4870841 m!5871084))

(assert (=> b!4870841 m!5870998))

(assert (=> b!4870841 m!5870998))

(assert (=> b!4870841 m!5871102))

(assert (=> b!4870841 m!5871102))

(assert (=> b!4870841 m!5871104))

(assert (=> b!4870753 d!1564071))

(declare-fun d!1564073 () Bool)

(declare-fun c!828473 () Bool)

(assert (=> d!1564073 (= c!828473 (is-Node!14593 (c!828451 input!585)))))

(declare-fun e!3044923 () Bool)

(assert (=> d!1564073 (= (inv!71910 (c!828451 input!585)) e!3044923)))

(declare-fun b!4870850 () Bool)

(declare-fun inv!71915 (Conc!14593) Bool)

(assert (=> b!4870850 (= e!3044923 (inv!71915 (c!828451 input!585)))))

(declare-fun b!4870851 () Bool)

(declare-fun e!3044924 () Bool)

(assert (=> b!4870851 (= e!3044923 e!3044924)))

(declare-fun res!2079249 () Bool)

(assert (=> b!4870851 (= res!2079249 (not (is-Leaf!24326 (c!828451 input!585))))))

(assert (=> b!4870851 (=> res!2079249 e!3044924)))

(declare-fun b!4870852 () Bool)

(declare-fun inv!71916 (Conc!14593) Bool)

(assert (=> b!4870852 (= e!3044924 (inv!71916 (c!828451 input!585)))))

(assert (= (and d!1564073 c!828473) b!4870850))

(assert (= (and d!1564073 (not c!828473)) b!4870851))

(assert (= (and b!4870851 (not res!2079249)) b!4870852))

(declare-fun m!5871110 () Bool)

(assert (=> b!4870850 m!5871110))

(declare-fun m!5871112 () Bool)

(assert (=> b!4870852 m!5871112))

(assert (=> b!4870752 d!1564073))

(declare-fun d!1564075 () Bool)

(assert (=> d!1564075 (= (inv!71906 (tag!8907 (h!62434 rules!1164))) (= (mod (str.len (value!258368 (tag!8907 (h!62434 rules!1164)))) 2) 0))))

(assert (=> b!4870754 d!1564075))

(declare-fun d!1564077 () Bool)

(declare-fun res!2079252 () Bool)

(declare-fun e!3044927 () Bool)

(assert (=> d!1564077 (=> (not res!2079252) (not e!3044927))))

(declare-fun semiInverseModEq!3547 (Int Int) Bool)

(assert (=> d!1564077 (= res!2079252 (semiInverseModEq!3547 (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (toValue!10914 (transformation!8043 (h!62434 rules!1164)))))))

(assert (=> d!1564077 (= (inv!71911 (transformation!8043 (h!62434 rules!1164))) e!3044927)))

(declare-fun b!4870855 () Bool)

(declare-fun equivClasses!3426 (Int Int) Bool)

(assert (=> b!4870855 (= e!3044927 (equivClasses!3426 (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (toValue!10914 (transformation!8043 (h!62434 rules!1164)))))))

(assert (= (and d!1564077 res!2079252) b!4870855))

(declare-fun m!5871114 () Bool)

(assert (=> d!1564077 m!5871114))

(declare-fun m!5871116 () Bool)

(assert (=> b!4870855 m!5871116))

(assert (=> b!4870754 d!1564077))

(declare-fun d!1564079 () Bool)

(declare-fun isBalanced!3957 (Conc!14593) Bool)

(assert (=> d!1564079 (= (inv!71909 input!585) (isBalanced!3957 (c!828451 input!585)))))

(declare-fun bs!1174618 () Bool)

(assert (= bs!1174618 d!1564079))

(declare-fun m!5871118 () Bool)

(assert (=> bs!1174618 m!5871118))

(assert (=> start!509282 d!1564079))

(declare-fun d!1564081 () Bool)

(declare-fun res!2079255 () Bool)

(declare-fun e!3044930 () Bool)

(assert (=> d!1564081 (=> (not res!2079255) (not e!3044930))))

(declare-fun rulesValid!3123 (LexerInterface!7635 List!56110) Bool)

(assert (=> d!1564081 (= res!2079255 (rulesValid!3123 thiss!11460 rules!1164))))

(assert (=> d!1564081 (= (rulesInvariant!6733 thiss!11460 rules!1164) e!3044930)))

(declare-fun b!4870858 () Bool)

(declare-datatypes ((List!56116 0))(
  ( (Nil!55992) (Cons!55992 (h!62440 String!63185) (t!364190 List!56116)) )
))
(declare-fun noDuplicateTag!3284 (LexerInterface!7635 List!56110 List!56116) Bool)

(assert (=> b!4870858 (= e!3044930 (noDuplicateTag!3284 thiss!11460 rules!1164 Nil!55992))))

(assert (= (and d!1564081 res!2079255) b!4870858))

(declare-fun m!5871120 () Bool)

(assert (=> d!1564081 m!5871120))

(declare-fun m!5871122 () Bool)

(assert (=> b!4870858 m!5871122))

(assert (=> b!4870750 d!1564081))

(declare-fun tp!1370525 () Bool)

(declare-fun e!3044935 () Bool)

(declare-fun b!4870867 () Bool)

(declare-fun tp!1370526 () Bool)

(assert (=> b!4870867 (= e!3044935 (and (inv!71910 (left!40663 (c!828451 input!585))) tp!1370525 (inv!71910 (right!40993 (c!828451 input!585))) tp!1370526))))

(declare-fun b!4870869 () Bool)

(declare-fun e!3044936 () Bool)

(declare-fun tp!1370527 () Bool)

(assert (=> b!4870869 (= e!3044936 tp!1370527)))

(declare-fun b!4870868 () Bool)

(declare-fun inv!71917 (IArray!29247) Bool)

(assert (=> b!4870868 (= e!3044935 (and (inv!71917 (xs!17901 (c!828451 input!585))) e!3044936))))

(assert (=> b!4870752 (= tp!1370500 (and (inv!71910 (c!828451 input!585)) e!3044935))))

(assert (= (and b!4870752 (is-Node!14593 (c!828451 input!585))) b!4870867))

(assert (= b!4870868 b!4870869))

(assert (= (and b!4870752 (is-Leaf!24326 (c!828451 input!585))) b!4870868))

(declare-fun m!5871124 () Bool)

(assert (=> b!4870867 m!5871124))

(declare-fun m!5871126 () Bool)

(assert (=> b!4870867 m!5871126))

(declare-fun m!5871128 () Bool)

(assert (=> b!4870868 m!5871128))

(assert (=> b!4870752 m!5870990))

(declare-fun b!4870881 () Bool)

(declare-fun e!3044939 () Bool)

(declare-fun tp!1370540 () Bool)

(declare-fun tp!1370538 () Bool)

(assert (=> b!4870881 (= e!3044939 (and tp!1370540 tp!1370538))))

(declare-fun b!4870880 () Bool)

(declare-fun tp_is_empty!35665 () Bool)

(assert (=> b!4870880 (= e!3044939 tp_is_empty!35665)))

(assert (=> b!4870754 (= tp!1370499 e!3044939)))

(declare-fun b!4870882 () Bool)

(declare-fun tp!1370541 () Bool)

(assert (=> b!4870882 (= e!3044939 tp!1370541)))

(declare-fun b!4870883 () Bool)

(declare-fun tp!1370539 () Bool)

(declare-fun tp!1370542 () Bool)

(assert (=> b!4870883 (= e!3044939 (and tp!1370539 tp!1370542))))

(assert (= (and b!4870754 (is-ElementMatch!13118 (regex!8043 (h!62434 rules!1164)))) b!4870880))

(assert (= (and b!4870754 (is-Concat!21472 (regex!8043 (h!62434 rules!1164)))) b!4870881))

(assert (= (and b!4870754 (is-Star!13118 (regex!8043 (h!62434 rules!1164)))) b!4870882))

(assert (= (and b!4870754 (is-Union!13118 (regex!8043 (h!62434 rules!1164)))) b!4870883))

(declare-fun b!4870894 () Bool)

(declare-fun b_free!130735 () Bool)

(declare-fun b_next!131525 () Bool)

(assert (=> b!4870894 (= b_free!130735 (not b_next!131525))))

(declare-fun tp!1370554 () Bool)

(declare-fun b_and!343017 () Bool)

(assert (=> b!4870894 (= tp!1370554 b_and!343017)))

(declare-fun b_free!130737 () Bool)

(declare-fun b_next!131527 () Bool)

(assert (=> b!4870894 (= b_free!130737 (not b_next!131527))))

(declare-fun tb!257965 () Bool)

(declare-fun t!364189 () Bool)

(assert (=> (and b!4870894 (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756)))))) t!364189) tb!257965))

(declare-fun result!321132 () Bool)

(assert (= result!321132 result!321122))

(assert (=> d!1564059 t!364189))

(declare-fun tp!1370553 () Bool)

(declare-fun b_and!343019 () Bool)

(assert (=> b!4870894 (= tp!1370553 (and (=> t!364189 result!321132) b_and!343019))))

(declare-fun e!3044949 () Bool)

(assert (=> b!4870894 (= e!3044949 (and tp!1370554 tp!1370553))))

(declare-fun e!3044948 () Bool)

(declare-fun b!4870893 () Bool)

(declare-fun tp!1370551 () Bool)

(assert (=> b!4870893 (= e!3044948 (and tp!1370551 (inv!71906 (tag!8907 (h!62434 (t!364180 rules!1164)))) (inv!71911 (transformation!8043 (h!62434 (t!364180 rules!1164)))) e!3044949))))

(declare-fun b!4870892 () Bool)

(declare-fun e!3044951 () Bool)

(declare-fun tp!1370552 () Bool)

(assert (=> b!4870892 (= e!3044951 (and e!3044948 tp!1370552))))

(assert (=> b!4870755 (= tp!1370498 e!3044951)))

(assert (= b!4870893 b!4870894))

(assert (= b!4870892 b!4870893))

(assert (= (and b!4870755 (is-Cons!55986 (t!364180 rules!1164))) b!4870892))

(declare-fun m!5871130 () Bool)

(assert (=> b!4870893 m!5871130))

(declare-fun m!5871132 () Bool)

(assert (=> b!4870893 m!5871132))

(push 1)

(assert (not b!4870852))

(assert (not b!4870817))

(assert (not b_lambda!193673))

(assert b_and!343015)

(assert (not b!4870869))

(assert (not b!4870752))

(assert (not b!4870836))

(assert (not b!4870815))

(assert (not b!4870838))

(assert b_and!343019)

(assert (not b!4870842))

(assert (not tb!257963))

(assert (not b!4870855))

(assert (not b!4870858))

(assert (not d!1564077))

(assert (not b!4870893))

(assert (not b!4870882))

(assert (not d!1564079))

(assert (not b_next!131519))

(assert (not b!4870792))

(assert (not b_next!131517))

(assert (not b!4870883))

(assert (not b!4870850))

(assert (not b_next!131525))

(assert (not b!4870814))

(assert (not d!1564057))

(assert (not d!1564071))

(assert (not b!4870868))

(assert (not b_next!131527))

(assert b_and!343007)

(assert (not b!4870813))

(assert (not b!4870818))

(assert (not b!4870791))

(assert (not b!4870867))

(assert (not b!4870881))

(assert (not b!4870840))

(assert (not b!4870837))

(assert (not b!4870839))

(assert (not d!1564069))

(assert (not b!4870798))

(assert (not d!1564065))

(assert (not bm!338208))

(assert (not b!4870892))

(assert (not d!1564067))

(assert tp_is_empty!35665)

(assert b_and!343017)

(assert (not d!1564081))

(assert (not d!1564059))

(assert (not b!4870819))

(assert (not b!4870841))

(assert (not d!1564061))

(check-sat)

(pop 1)

(push 1)

(assert b_and!343015)

(assert (not b_next!131525))

(assert b_and!343019)

(assert b_and!343017)

(assert (not b_next!131517))

(assert (not b_next!131519))

(assert (not b_next!131527))

(assert b_and!343007)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1564107 () Bool)

(assert (=> d!1564107 (= (inv!71909 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))) (isBalanced!3957 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))))

(declare-fun bs!1174623 () Bool)

(assert (= bs!1174623 d!1564107))

(declare-fun m!5871232 () Bool)

(assert (=> bs!1174623 m!5871232))

(assert (=> tb!257963 d!1564107))

(declare-fun d!1564109 () Bool)

(assert (=> d!1564109 (= (list!17513 (_2!33222 (get!19235 lt!1995795))) (list!17516 (c!828451 (_2!33222 (get!19235 lt!1995795)))))))

(declare-fun bs!1174624 () Bool)

(assert (= bs!1174624 d!1564109))

(declare-fun m!5871234 () Bool)

(assert (=> bs!1174624 m!5871234))

(assert (=> b!4870840 d!1564109))

(declare-fun d!1564111 () Bool)

(declare-fun lt!1995848 () Option!13794)

(assert (=> d!1564111 (= lt!1995848 (maxPrefix!4550 thiss!11460 rules!1164 (list!17513 input!585)))))

(declare-fun e!3045026 () Option!13794)

(assert (=> d!1564111 (= lt!1995848 e!3045026)))

(declare-fun c!828491 () Bool)

(assert (=> d!1564111 (= c!828491 (and (is-Cons!55986 rules!1164) (is-Nil!55986 (t!364180 rules!1164))))))

(declare-fun lt!1995849 () Unit!145974)

(declare-fun lt!1995847 () Unit!145974)

(assert (=> d!1564111 (= lt!1995849 lt!1995847)))

(assert (=> d!1564111 (isPrefix!4767 (list!17513 input!585) (list!17513 input!585))))

(assert (=> d!1564111 (= lt!1995847 (lemmaIsPrefixRefl!3164 (list!17513 input!585) (list!17513 input!585)))))

(assert (=> d!1564111 (rulesValidInductive!3022 thiss!11460 rules!1164)))

(assert (=> d!1564111 (= (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 input!585)) lt!1995848)))

(declare-fun bm!338214 () Bool)

(declare-fun call!338219 () Option!13794)

(declare-fun maxPrefixOneRuleZipper!226 (LexerInterface!7635 Rule!15886 List!56108) Option!13794)

(assert (=> bm!338214 (= call!338219 (maxPrefixOneRuleZipper!226 thiss!11460 (h!62434 rules!1164) (list!17513 input!585)))))

(declare-fun b!4871012 () Bool)

(assert (=> b!4871012 (= e!3045026 call!338219)))

(declare-fun b!4871013 () Bool)

(declare-fun lt!1995846 () Option!13794)

(declare-fun lt!1995845 () Option!13794)

(assert (=> b!4871013 (= e!3045026 (ite (and (is-None!13793 lt!1995846) (is-None!13793 lt!1995845)) None!13793 (ite (is-None!13793 lt!1995845) lt!1995846 (ite (is-None!13793 lt!1995846) lt!1995845 (ite (>= (size!36905 (_1!33227 (v!49715 lt!1995846))) (size!36905 (_1!33227 (v!49715 lt!1995845)))) lt!1995846 lt!1995845)))))))

(assert (=> b!4871013 (= lt!1995846 call!338219)))

(assert (=> b!4871013 (= lt!1995845 (maxPrefixZipper!564 thiss!11460 (t!364180 rules!1164) (list!17513 input!585)))))

(assert (= (and d!1564111 c!828491) b!4871012))

(assert (= (and d!1564111 (not c!828491)) b!4871013))

(assert (= (or b!4871012 b!4871013) bm!338214))

(assert (=> d!1564111 m!5870998))

(assert (=> d!1564111 m!5871102))

(assert (=> d!1564111 m!5870998))

(assert (=> d!1564111 m!5870998))

(declare-fun m!5871236 () Bool)

(assert (=> d!1564111 m!5871236))

(assert (=> d!1564111 m!5870998))

(assert (=> d!1564111 m!5870998))

(declare-fun m!5871238 () Bool)

(assert (=> d!1564111 m!5871238))

(assert (=> d!1564111 m!5871096))

(assert (=> bm!338214 m!5870998))

(declare-fun m!5871240 () Bool)

(assert (=> bm!338214 m!5871240))

(assert (=> b!4871013 m!5870998))

(declare-fun m!5871242 () Bool)

(assert (=> b!4871013 m!5871242))

(assert (=> b!4870840 d!1564111))

(declare-fun d!1564113 () Bool)

(assert (=> d!1564113 (= (get!19235 lt!1995795) (v!49713 lt!1995795))))

(assert (=> b!4870840 d!1564113))

(declare-fun d!1564115 () Bool)

(assert (=> d!1564115 (= (get!19236 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 input!585))) (v!49715 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 input!585))))))

(assert (=> b!4870840 d!1564115))

(assert (=> b!4870840 d!1564069))

(assert (=> b!4870839 d!1564109))

(assert (=> b!4870839 d!1564113))

(declare-fun d!1564117 () Bool)

(assert (=> d!1564117 (= (get!19236 (maxPrefix!4550 thiss!11460 rules!1164 (list!17513 input!585))) (v!49715 (maxPrefix!4550 thiss!11460 rules!1164 (list!17513 input!585))))))

(assert (=> b!4870839 d!1564117))

(assert (=> b!4870839 d!1564069))

(declare-fun bm!338217 () Bool)

(declare-fun call!338222 () Option!13794)

(declare-fun maxPrefixOneRule!3492 (LexerInterface!7635 Rule!15886 List!56108) Option!13794)

(assert (=> bm!338217 (= call!338222 (maxPrefixOneRule!3492 thiss!11460 (h!62434 rules!1164) (list!17513 input!585)))))

(declare-fun b!4871032 () Bool)

(declare-fun res!2079314 () Bool)

(declare-fun e!3045035 () Bool)

(assert (=> b!4871032 (=> (not res!2079314) (not e!3045035))))

(declare-fun lt!1995860 () Option!13794)

(assert (=> b!4871032 (= res!2079314 (= (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860)))) (originalCharacters!8366 (_1!33227 (get!19236 lt!1995860)))))))

(declare-fun b!4871033 () Bool)

(declare-fun e!3045034 () Option!13794)

(declare-fun lt!1995861 () Option!13794)

(declare-fun lt!1995864 () Option!13794)

(assert (=> b!4871033 (= e!3045034 (ite (and (is-None!13793 lt!1995861) (is-None!13793 lt!1995864)) None!13793 (ite (is-None!13793 lt!1995864) lt!1995861 (ite (is-None!13793 lt!1995861) lt!1995864 (ite (>= (size!36905 (_1!33227 (v!49715 lt!1995861))) (size!36905 (_1!33227 (v!49715 lt!1995864)))) lt!1995861 lt!1995864)))))))

(assert (=> b!4871033 (= lt!1995861 call!338222)))

(assert (=> b!4871033 (= lt!1995864 (maxPrefix!4550 thiss!11460 (t!364180 rules!1164) (list!17513 input!585)))))

(declare-fun b!4871034 () Bool)

(declare-fun e!3045033 () Bool)

(assert (=> b!4871034 (= e!3045033 e!3045035)))

(declare-fun res!2079319 () Bool)

(assert (=> b!4871034 (=> (not res!2079319) (not e!3045035))))

(assert (=> b!4871034 (= res!2079319 (isDefined!10851 lt!1995860))))

(declare-fun b!4871035 () Bool)

(declare-fun res!2079315 () Bool)

(assert (=> b!4871035 (=> (not res!2079315) (not e!3045035))))

(declare-fun matchR!6493 (Regex!13118 List!56108) Bool)

(assert (=> b!4871035 (= res!2079315 (matchR!6493 (regex!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860)))) (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860))))))))

(declare-fun b!4871036 () Bool)

(declare-fun res!2079320 () Bool)

(assert (=> b!4871036 (=> (not res!2079320) (not e!3045035))))

(assert (=> b!4871036 (= res!2079320 (= (++!12192 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860)))) (_2!33227 (get!19236 lt!1995860))) (list!17513 input!585)))))

(declare-fun d!1564119 () Bool)

(assert (=> d!1564119 e!3045033))

(declare-fun res!2079316 () Bool)

(assert (=> d!1564119 (=> res!2079316 e!3045033)))

(declare-fun isEmpty!29962 (Option!13794) Bool)

(assert (=> d!1564119 (= res!2079316 (isEmpty!29962 lt!1995860))))

(assert (=> d!1564119 (= lt!1995860 e!3045034)))

(declare-fun c!828494 () Bool)

(assert (=> d!1564119 (= c!828494 (and (is-Cons!55986 rules!1164) (is-Nil!55986 (t!364180 rules!1164))))))

(declare-fun lt!1995863 () Unit!145974)

(declare-fun lt!1995862 () Unit!145974)

(assert (=> d!1564119 (= lt!1995863 lt!1995862)))

(assert (=> d!1564119 (isPrefix!4767 (list!17513 input!585) (list!17513 input!585))))

(assert (=> d!1564119 (= lt!1995862 (lemmaIsPrefixRefl!3164 (list!17513 input!585) (list!17513 input!585)))))

(assert (=> d!1564119 (rulesValidInductive!3022 thiss!11460 rules!1164)))

(assert (=> d!1564119 (= (maxPrefix!4550 thiss!11460 rules!1164 (list!17513 input!585)) lt!1995860)))

(declare-fun b!4871037 () Bool)

(assert (=> b!4871037 (= e!3045034 call!338222)))

(declare-fun b!4871038 () Bool)

(declare-fun res!2079317 () Bool)

(assert (=> b!4871038 (=> (not res!2079317) (not e!3045035))))

(assert (=> b!4871038 (= res!2079317 (< (size!36907 (_2!33227 (get!19236 lt!1995860))) (size!36907 (list!17513 input!585))))))

(declare-fun b!4871039 () Bool)

(declare-fun contains!19397 (List!56110 Rule!15886) Bool)

(assert (=> b!4871039 (= e!3045035 (contains!19397 rules!1164 (rule!11181 (_1!33227 (get!19236 lt!1995860)))))))

(declare-fun b!4871040 () Bool)

(declare-fun res!2079318 () Bool)

(assert (=> b!4871040 (=> (not res!2079318) (not e!3045035))))

(declare-fun apply!13503 (TokenValueInjection!16014 BalanceConc!28628) TokenValue!8353)

(declare-fun seqFromList!5899 (List!56108) BalanceConc!28628)

(assert (=> b!4871040 (= res!2079318 (= (value!258369 (_1!33227 (get!19236 lt!1995860))) (apply!13503 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860)))) (seqFromList!5899 (originalCharacters!8366 (_1!33227 (get!19236 lt!1995860)))))))))

(assert (= (and d!1564119 c!828494) b!4871037))

(assert (= (and d!1564119 (not c!828494)) b!4871033))

(assert (= (or b!4871037 b!4871033) bm!338217))

(assert (= (and d!1564119 (not res!2079316)) b!4871034))

(assert (= (and b!4871034 res!2079319) b!4871032))

(assert (= (and b!4871032 res!2079314) b!4871038))

(assert (= (and b!4871038 res!2079317) b!4871036))

(assert (= (and b!4871036 res!2079320) b!4871040))

(assert (= (and b!4871040 res!2079318) b!4871035))

(assert (= (and b!4871035 res!2079315) b!4871039))

(declare-fun m!5871244 () Bool)

(assert (=> b!4871034 m!5871244))

(assert (=> bm!338217 m!5870998))

(declare-fun m!5871246 () Bool)

(assert (=> bm!338217 m!5871246))

(declare-fun m!5871248 () Bool)

(assert (=> b!4871039 m!5871248))

(declare-fun m!5871250 () Bool)

(assert (=> b!4871039 m!5871250))

(assert (=> b!4871036 m!5871248))

(declare-fun m!5871252 () Bool)

(assert (=> b!4871036 m!5871252))

(assert (=> b!4871036 m!5871252))

(declare-fun m!5871254 () Bool)

(assert (=> b!4871036 m!5871254))

(assert (=> b!4871036 m!5871254))

(declare-fun m!5871256 () Bool)

(assert (=> b!4871036 m!5871256))

(assert (=> b!4871035 m!5871248))

(assert (=> b!4871035 m!5871252))

(assert (=> b!4871035 m!5871252))

(assert (=> b!4871035 m!5871254))

(assert (=> b!4871035 m!5871254))

(declare-fun m!5871258 () Bool)

(assert (=> b!4871035 m!5871258))

(declare-fun m!5871260 () Bool)

(assert (=> d!1564119 m!5871260))

(assert (=> d!1564119 m!5870998))

(assert (=> d!1564119 m!5870998))

(assert (=> d!1564119 m!5871236))

(assert (=> d!1564119 m!5870998))

(assert (=> d!1564119 m!5870998))

(assert (=> d!1564119 m!5871238))

(assert (=> d!1564119 m!5871096))

(assert (=> b!4871040 m!5871248))

(declare-fun m!5871262 () Bool)

(assert (=> b!4871040 m!5871262))

(assert (=> b!4871040 m!5871262))

(declare-fun m!5871264 () Bool)

(assert (=> b!4871040 m!5871264))

(assert (=> b!4871038 m!5871248))

(declare-fun m!5871266 () Bool)

(assert (=> b!4871038 m!5871266))

(assert (=> b!4871038 m!5870998))

(declare-fun m!5871268 () Bool)

(assert (=> b!4871038 m!5871268))

(assert (=> b!4871032 m!5871248))

(assert (=> b!4871032 m!5871252))

(assert (=> b!4871032 m!5871252))

(assert (=> b!4871032 m!5871254))

(assert (=> b!4871033 m!5870998))

(declare-fun m!5871270 () Bool)

(assert (=> b!4871033 m!5871270))

(assert (=> b!4870839 d!1564119))

(assert (=> b!4870841 d!1564113))

(assert (=> b!4870841 d!1564117))

(assert (=> b!4870841 d!1564119))

(assert (=> b!4870841 d!1564069))

(declare-fun d!1564121 () Bool)

(declare-fun res!2079325 () Bool)

(declare-fun e!3045040 () Bool)

(assert (=> d!1564121 (=> res!2079325 e!3045040)))

(assert (=> d!1564121 (= res!2079325 (is-Nil!55986 rules!1164))))

(assert (=> d!1564121 (= (noDuplicateTag!3284 thiss!11460 rules!1164 Nil!55992) e!3045040)))

(declare-fun b!4871045 () Bool)

(declare-fun e!3045041 () Bool)

(assert (=> b!4871045 (= e!3045040 e!3045041)))

(declare-fun res!2079326 () Bool)

(assert (=> b!4871045 (=> (not res!2079326) (not e!3045041))))

(declare-fun contains!19398 (List!56116 String!63185) Bool)

(assert (=> b!4871045 (= res!2079326 (not (contains!19398 Nil!55992 (tag!8907 (h!62434 rules!1164)))))))

(declare-fun b!4871046 () Bool)

(assert (=> b!4871046 (= e!3045041 (noDuplicateTag!3284 thiss!11460 (t!364180 rules!1164) (Cons!55992 (tag!8907 (h!62434 rules!1164)) Nil!55992)))))

(assert (= (and d!1564121 (not res!2079325)) b!4871045))

(assert (= (and b!4871045 res!2079326) b!4871046))

(declare-fun m!5871272 () Bool)

(assert (=> b!4871045 m!5871272))

(declare-fun m!5871274 () Bool)

(assert (=> b!4871046 m!5871274))

(assert (=> b!4870858 d!1564121))

(declare-fun b!4871059 () Bool)

(declare-fun res!2079339 () Bool)

(declare-fun e!3045047 () Bool)

(assert (=> b!4871059 (=> (not res!2079339) (not e!3045047))))

(declare-fun height!1930 (Conc!14593) Int)

(assert (=> b!4871059 (= res!2079339 (<= (- (height!1930 (left!40663 (c!828451 input!585))) (height!1930 (right!40993 (c!828451 input!585)))) 1))))

(declare-fun b!4871060 () Bool)

(declare-fun res!2079344 () Bool)

(assert (=> b!4871060 (=> (not res!2079344) (not e!3045047))))

(assert (=> b!4871060 (= res!2079344 (isBalanced!3957 (right!40993 (c!828451 input!585))))))

(declare-fun b!4871061 () Bool)

(declare-fun res!2079343 () Bool)

(assert (=> b!4871061 (=> (not res!2079343) (not e!3045047))))

(assert (=> b!4871061 (= res!2079343 (isBalanced!3957 (left!40663 (c!828451 input!585))))))

(declare-fun b!4871062 () Bool)

(declare-fun e!3045046 () Bool)

(assert (=> b!4871062 (= e!3045046 e!3045047)))

(declare-fun res!2079340 () Bool)

(assert (=> b!4871062 (=> (not res!2079340) (not e!3045047))))

(assert (=> b!4871062 (= res!2079340 (<= (- 1) (- (height!1930 (left!40663 (c!828451 input!585))) (height!1930 (right!40993 (c!828451 input!585))))))))

(declare-fun b!4871063 () Bool)

(declare-fun res!2079341 () Bool)

(assert (=> b!4871063 (=> (not res!2079341) (not e!3045047))))

(declare-fun isEmpty!29963 (Conc!14593) Bool)

(assert (=> b!4871063 (= res!2079341 (not (isEmpty!29963 (left!40663 (c!828451 input!585)))))))

(declare-fun b!4871064 () Bool)

(assert (=> b!4871064 (= e!3045047 (not (isEmpty!29963 (right!40993 (c!828451 input!585)))))))

(declare-fun d!1564123 () Bool)

(declare-fun res!2079342 () Bool)

(assert (=> d!1564123 (=> res!2079342 e!3045046)))

(assert (=> d!1564123 (= res!2079342 (not (is-Node!14593 (c!828451 input!585))))))

(assert (=> d!1564123 (= (isBalanced!3957 (c!828451 input!585)) e!3045046)))

(assert (= (and d!1564123 (not res!2079342)) b!4871062))

(assert (= (and b!4871062 res!2079340) b!4871059))

(assert (= (and b!4871059 res!2079339) b!4871061))

(assert (= (and b!4871061 res!2079343) b!4871060))

(assert (= (and b!4871060 res!2079344) b!4871063))

(assert (= (and b!4871063 res!2079341) b!4871064))

(declare-fun m!5871276 () Bool)

(assert (=> b!4871064 m!5871276))

(declare-fun m!5871278 () Bool)

(assert (=> b!4871063 m!5871278))

(declare-fun m!5871280 () Bool)

(assert (=> b!4871062 m!5871280))

(declare-fun m!5871282 () Bool)

(assert (=> b!4871062 m!5871282))

(declare-fun m!5871284 () Bool)

(assert (=> b!4871061 m!5871284))

(declare-fun m!5871286 () Bool)

(assert (=> b!4871060 m!5871286))

(assert (=> b!4871059 m!5871280))

(assert (=> b!4871059 m!5871282))

(assert (=> d!1564079 d!1564123))

(declare-fun d!1564125 () Bool)

(assert (=> d!1564125 (= (list!17513 (_2!33223 lt!1995776)) (list!17516 (c!828451 (_2!33223 lt!1995776))))))

(declare-fun bs!1174625 () Bool)

(assert (= bs!1174625 d!1564125))

(declare-fun m!5871288 () Bool)

(assert (=> bs!1174625 m!5871288))

(assert (=> b!4870819 d!1564125))

(declare-fun b!4871075 () Bool)

(declare-fun e!3045055 () tuple2!59846)

(declare-fun lt!1995871 () Option!13794)

(declare-fun lt!1995873 () tuple2!59846)

(assert (=> b!4871075 (= e!3045055 (tuple2!59847 (Cons!55987 (_1!33227 (v!49715 lt!1995871)) (_1!33226 lt!1995873)) (_2!33226 lt!1995873)))))

(assert (=> b!4871075 (= lt!1995873 (lexList!2108 thiss!11460 rules!1164 (_2!33227 (v!49715 lt!1995871))))))

(declare-fun b!4871076 () Bool)

(assert (=> b!4871076 (= e!3045055 (tuple2!59847 Nil!55987 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))

(declare-fun b!4871077 () Bool)

(declare-fun e!3045056 () Bool)

(declare-fun e!3045054 () Bool)

(assert (=> b!4871077 (= e!3045056 e!3045054)))

(declare-fun res!2079347 () Bool)

(declare-fun lt!1995872 () tuple2!59846)

(assert (=> b!4871077 (= res!2079347 (< (size!36907 (_2!33226 lt!1995872)) (size!36907 (list!17513 (_2!33222 (v!49713 lt!1995756))))))))

(assert (=> b!4871077 (=> (not res!2079347) (not e!3045054))))

(declare-fun b!4871078 () Bool)

(assert (=> b!4871078 (= e!3045056 (= (_2!33226 lt!1995872) (list!17513 (_2!33222 (v!49713 lt!1995756)))))))

(declare-fun d!1564127 () Bool)

(assert (=> d!1564127 e!3045056))

(declare-fun c!828500 () Bool)

(declare-fun size!36913 (List!56111) Int)

(assert (=> d!1564127 (= c!828500 (> (size!36913 (_1!33226 lt!1995872)) 0))))

(assert (=> d!1564127 (= lt!1995872 e!3045055)))

(declare-fun c!828499 () Bool)

(assert (=> d!1564127 (= c!828499 (is-Some!13793 lt!1995871))))

(assert (=> d!1564127 (= lt!1995871 (maxPrefix!4550 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))

(assert (=> d!1564127 (= (lexList!2108 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756)))) lt!1995872)))

(declare-fun b!4871079 () Bool)

(declare-fun isEmpty!29964 (List!56111) Bool)

(assert (=> b!4871079 (= e!3045054 (not (isEmpty!29964 (_1!33226 lt!1995872))))))

(assert (= (and d!1564127 c!828499) b!4871075))

(assert (= (and d!1564127 (not c!828499)) b!4871076))

(assert (= (and d!1564127 c!828500) b!4871077))

(assert (= (and d!1564127 (not c!828500)) b!4871078))

(assert (= (and b!4871077 res!2079347) b!4871079))

(declare-fun m!5871290 () Bool)

(assert (=> b!4871075 m!5871290))

(declare-fun m!5871292 () Bool)

(assert (=> b!4871077 m!5871292))

(assert (=> b!4871077 m!5870992))

(assert (=> b!4871077 m!5871040))

(declare-fun m!5871294 () Bool)

(assert (=> d!1564127 m!5871294))

(assert (=> d!1564127 m!5870992))

(declare-fun m!5871296 () Bool)

(assert (=> d!1564127 m!5871296))

(declare-fun m!5871298 () Bool)

(assert (=> b!4871079 m!5871298))

(assert (=> b!4870819 d!1564127))

(assert (=> b!4870819 d!1564065))

(declare-fun d!1564129 () Bool)

(declare-fun isEmpty!29965 (Option!13792) Bool)

(assert (=> d!1564129 (= (isDefined!10850 lt!1995795) (not (isEmpty!29965 lt!1995795)))))

(declare-fun bs!1174626 () Bool)

(assert (= bs!1174626 d!1564129))

(declare-fun m!5871300 () Bool)

(assert (=> bs!1174626 m!5871300))

(assert (=> b!4870837 d!1564129))

(declare-fun b!4871090 () Bool)

(declare-fun e!3045062 () List!56108)

(declare-fun list!17519 (IArray!29247) List!56108)

(assert (=> b!4871090 (= e!3045062 (list!17519 (xs!17901 (c!828451 (_2!33222 (v!49713 lt!1995756))))))))

(declare-fun b!4871089 () Bool)

(declare-fun e!3045061 () List!56108)

(assert (=> b!4871089 (= e!3045061 e!3045062)))

(declare-fun c!828506 () Bool)

(assert (=> b!4871089 (= c!828506 (is-Leaf!24326 (c!828451 (_2!33222 (v!49713 lt!1995756)))))))

(declare-fun d!1564131 () Bool)

(declare-fun c!828505 () Bool)

(assert (=> d!1564131 (= c!828505 (is-Empty!14593 (c!828451 (_2!33222 (v!49713 lt!1995756)))))))

(assert (=> d!1564131 (= (list!17516 (c!828451 (_2!33222 (v!49713 lt!1995756)))) e!3045061)))

(declare-fun b!4871088 () Bool)

(assert (=> b!4871088 (= e!3045061 Nil!55984)))

(declare-fun b!4871091 () Bool)

(assert (=> b!4871091 (= e!3045062 (++!12192 (list!17516 (left!40663 (c!828451 (_2!33222 (v!49713 lt!1995756))))) (list!17516 (right!40993 (c!828451 (_2!33222 (v!49713 lt!1995756)))))))))

(assert (= (and d!1564131 c!828505) b!4871088))

(assert (= (and d!1564131 (not c!828505)) b!4871089))

(assert (= (and b!4871089 c!828506) b!4871090))

(assert (= (and b!4871089 (not c!828506)) b!4871091))

(declare-fun m!5871302 () Bool)

(assert (=> b!4871090 m!5871302))

(declare-fun m!5871304 () Bool)

(assert (=> b!4871091 m!5871304))

(declare-fun m!5871306 () Bool)

(assert (=> b!4871091 m!5871306))

(assert (=> b!4871091 m!5871304))

(assert (=> b!4871091 m!5871306))

(declare-fun m!5871308 () Bool)

(assert (=> b!4871091 m!5871308))

(assert (=> d!1564065 d!1564131))

(assert (=> b!4870838 d!1564113))

(assert (=> b!4870838 d!1564115))

(assert (=> b!4870838 d!1564111))

(assert (=> b!4870838 d!1564069))

(declare-fun b!4871095 () Bool)

(declare-fun e!3045064 () Bool)

(declare-fun lt!1995874 () List!56108)

(assert (=> b!4871095 (= e!3045064 (or (not (= (list!17513 (_2!33222 (v!49713 lt!1995756))) Nil!55984)) (= lt!1995874 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))))))

(declare-fun b!4871094 () Bool)

(declare-fun res!2079348 () Bool)

(assert (=> b!4871094 (=> (not res!2079348) (not e!3045064))))

(assert (=> b!4871094 (= res!2079348 (= (size!36907 lt!1995874) (+ (size!36907 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))) (size!36907 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))))

(declare-fun d!1564133 () Bool)

(assert (=> d!1564133 e!3045064))

(declare-fun res!2079349 () Bool)

(assert (=> d!1564133 (=> (not res!2079349) (not e!3045064))))

(assert (=> d!1564133 (= res!2079349 (= (content!9981 lt!1995874) (set.union (content!9981 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))) (content!9981 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))))

(declare-fun e!3045063 () List!56108)

(assert (=> d!1564133 (= lt!1995874 e!3045063)))

(declare-fun c!828507 () Bool)

(assert (=> d!1564133 (= c!828507 (is-Nil!55984 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))

(assert (=> d!1564133 (= (++!12192 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))) (list!17513 (_2!33222 (v!49713 lt!1995756)))) lt!1995874)))

(declare-fun b!4871092 () Bool)

(assert (=> b!4871092 (= e!3045063 (list!17513 (_2!33222 (v!49713 lt!1995756))))))

(declare-fun b!4871093 () Bool)

(assert (=> b!4871093 (= e!3045063 (Cons!55984 (h!62432 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))) (++!12192 (t!364178 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))) (list!17513 (_2!33222 (v!49713 lt!1995756))))))))

(assert (= (and d!1564133 c!828507) b!4871092))

(assert (= (and d!1564133 (not c!828507)) b!4871093))

(assert (= (and d!1564133 res!2079349) b!4871094))

(assert (= (and b!4871094 res!2079348) b!4871095))

(declare-fun m!5871310 () Bool)

(assert (=> b!4871094 m!5871310))

(declare-fun m!5871312 () Bool)

(assert (=> b!4871094 m!5871312))

(assert (=> b!4871094 m!5870992))

(assert (=> b!4871094 m!5871040))

(declare-fun m!5871314 () Bool)

(assert (=> d!1564133 m!5871314))

(declare-fun m!5871316 () Bool)

(assert (=> d!1564133 m!5871316))

(assert (=> d!1564133 m!5870992))

(assert (=> d!1564133 m!5871046))

(assert (=> b!4871093 m!5870992))

(declare-fun m!5871318 () Bool)

(assert (=> b!4871093 m!5871318))

(assert (=> b!4870791 d!1564133))

(declare-fun b!4871098 () Bool)

(declare-fun e!3045066 () List!56108)

(assert (=> b!4871098 (= e!3045066 (list!17519 (xs!17901 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))

(declare-fun b!4871097 () Bool)

(declare-fun e!3045065 () List!56108)

(assert (=> b!4871097 (= e!3045065 e!3045066)))

(declare-fun c!828509 () Bool)

(assert (=> b!4871097 (= c!828509 (is-Leaf!24326 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))))

(declare-fun d!1564135 () Bool)

(declare-fun c!828508 () Bool)

(assert (=> d!1564135 (= c!828508 (is-Empty!14593 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))))

(assert (=> d!1564135 (= (list!17516 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))) e!3045065)))

(declare-fun b!4871096 () Bool)

(assert (=> b!4871096 (= e!3045065 Nil!55984)))

(declare-fun b!4871099 () Bool)

(assert (=> b!4871099 (= e!3045066 (++!12192 (list!17516 (left!40663 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))) (list!17516 (right!40993 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))))))

(assert (= (and d!1564135 c!828508) b!4871096))

(assert (= (and d!1564135 (not c!828508)) b!4871097))

(assert (= (and b!4871097 c!828509) b!4871098))

(assert (= (and b!4871097 (not c!828509)) b!4871099))

(declare-fun m!5871320 () Bool)

(assert (=> b!4871098 m!5871320))

(declare-fun m!5871322 () Bool)

(assert (=> b!4871099 m!5871322))

(declare-fun m!5871324 () Bool)

(assert (=> b!4871099 m!5871324))

(assert (=> b!4871099 m!5871322))

(assert (=> b!4871099 m!5871324))

(declare-fun m!5871326 () Bool)

(assert (=> b!4871099 m!5871326))

(assert (=> d!1564067 d!1564135))

(assert (=> b!4870752 d!1564073))

(declare-fun b!4871100 () Bool)

(declare-fun e!3045067 () Bool)

(declare-fun e!3045070 () Bool)

(assert (=> b!4871100 (= e!3045067 e!3045070)))

(declare-fun res!2079354 () Bool)

(assert (=> b!4871100 (=> res!2079354 e!3045070)))

(declare-fun lt!1995878 () Option!13792)

(assert (=> b!4871100 (= res!2079354 (not (isDefined!10850 lt!1995878)))))

(declare-fun b!4871101 () Bool)

(declare-fun res!2079350 () Bool)

(assert (=> b!4871101 (=> (not res!2079350) (not e!3045067))))

(declare-fun e!3045069 () Bool)

(assert (=> b!4871101 (= res!2079350 e!3045069)))

(declare-fun res!2079353 () Bool)

(assert (=> b!4871101 (=> res!2079353 e!3045069)))

(assert (=> b!4871101 (= res!2079353 (not (isDefined!10850 lt!1995878)))))

(declare-fun b!4871102 () Bool)

(declare-fun e!3045071 () Bool)

(assert (=> b!4871102 (= e!3045069 e!3045071)))

(declare-fun res!2079351 () Bool)

(assert (=> b!4871102 (=> (not res!2079351) (not e!3045071))))

(assert (=> b!4871102 (= res!2079351 (= (_1!33222 (get!19235 lt!1995878)) (_1!33227 (get!19236 (maxPrefixZipper!564 thiss!11460 (t!364180 rules!1164) (list!17513 input!585))))))))

(declare-fun b!4871103 () Bool)

(declare-fun e!3045068 () Bool)

(assert (=> b!4871103 (= e!3045068 (= (list!17513 (_2!33222 (get!19235 lt!1995878))) (_2!33227 (get!19236 (maxPrefix!4550 thiss!11460 (t!364180 rules!1164) (list!17513 input!585))))))))

(declare-fun b!4871104 () Bool)

(assert (=> b!4871104 (= e!3045071 (= (list!17513 (_2!33222 (get!19235 lt!1995878))) (_2!33227 (get!19236 (maxPrefixZipper!564 thiss!11460 (t!364180 rules!1164) (list!17513 input!585))))))))

(declare-fun b!4871106 () Bool)

(declare-fun e!3045072 () Option!13792)

(declare-fun lt!1995881 () Option!13792)

(declare-fun lt!1995880 () Option!13792)

(assert (=> b!4871106 (= e!3045072 (ite (and (is-None!13791 lt!1995881) (is-None!13791 lt!1995880)) None!13791 (ite (is-None!13791 lt!1995880) lt!1995881 (ite (is-None!13791 lt!1995881) lt!1995880 (ite (>= (size!36905 (_1!33222 (v!49713 lt!1995881))) (size!36905 (_1!33222 (v!49713 lt!1995880)))) lt!1995881 lt!1995880)))))))

(declare-fun call!338223 () Option!13792)

(assert (=> b!4871106 (= lt!1995881 call!338223)))

(assert (=> b!4871106 (= lt!1995880 (maxPrefixZipperSequence!1234 thiss!11460 (t!364180 (t!364180 rules!1164)) input!585))))

(declare-fun b!4871107 () Bool)

(assert (=> b!4871107 (= e!3045072 call!338223)))

(declare-fun bm!338218 () Bool)

(assert (=> bm!338218 (= call!338223 (maxPrefixOneRuleZipperSequence!577 thiss!11460 (h!62434 (t!364180 rules!1164)) input!585))))

(declare-fun b!4871105 () Bool)

(assert (=> b!4871105 (= e!3045070 e!3045068)))

(declare-fun res!2079352 () Bool)

(assert (=> b!4871105 (=> (not res!2079352) (not e!3045068))))

(assert (=> b!4871105 (= res!2079352 (= (_1!33222 (get!19235 lt!1995878)) (_1!33227 (get!19236 (maxPrefix!4550 thiss!11460 (t!364180 rules!1164) (list!17513 input!585))))))))

(declare-fun d!1564137 () Bool)

(assert (=> d!1564137 e!3045067))

(declare-fun res!2079355 () Bool)

(assert (=> d!1564137 (=> (not res!2079355) (not e!3045067))))

(assert (=> d!1564137 (= res!2079355 (= (isDefined!10850 lt!1995878) (isDefined!10851 (maxPrefixZipper!564 thiss!11460 (t!364180 rules!1164) (list!17513 input!585)))))))

(assert (=> d!1564137 (= lt!1995878 e!3045072)))

(declare-fun c!828510 () Bool)

(assert (=> d!1564137 (= c!828510 (and (is-Cons!55986 (t!364180 rules!1164)) (is-Nil!55986 (t!364180 (t!364180 rules!1164)))))))

(declare-fun lt!1995876 () Unit!145974)

(declare-fun lt!1995877 () Unit!145974)

(assert (=> d!1564137 (= lt!1995876 lt!1995877)))

(declare-fun lt!1995875 () List!56108)

(declare-fun lt!1995879 () List!56108)

(assert (=> d!1564137 (isPrefix!4767 lt!1995875 lt!1995879)))

(assert (=> d!1564137 (= lt!1995877 (lemmaIsPrefixRefl!3164 lt!1995875 lt!1995879))))

(assert (=> d!1564137 (= lt!1995879 (list!17513 input!585))))

(assert (=> d!1564137 (= lt!1995875 (list!17513 input!585))))

(assert (=> d!1564137 (rulesValidInductive!3022 thiss!11460 (t!364180 rules!1164))))

(assert (=> d!1564137 (= (maxPrefixZipperSequence!1234 thiss!11460 (t!364180 rules!1164) input!585) lt!1995878)))

(assert (= (and d!1564137 c!828510) b!4871107))

(assert (= (and d!1564137 (not c!828510)) b!4871106))

(assert (= (or b!4871107 b!4871106) bm!338218))

(assert (= (and d!1564137 res!2079355) b!4871101))

(assert (= (and b!4871101 (not res!2079353)) b!4871102))

(assert (= (and b!4871102 res!2079351) b!4871104))

(assert (= (and b!4871101 res!2079350) b!4871100))

(assert (= (and b!4871100 (not res!2079354)) b!4871105))

(assert (= (and b!4871105 res!2079352) b!4871103))

(declare-fun m!5871328 () Bool)

(assert (=> b!4871102 m!5871328))

(assert (=> b!4871102 m!5870998))

(assert (=> b!4871102 m!5870998))

(assert (=> b!4871102 m!5871242))

(assert (=> b!4871102 m!5871242))

(declare-fun m!5871330 () Bool)

(assert (=> b!4871102 m!5871330))

(declare-fun m!5871332 () Bool)

(assert (=> b!4871100 m!5871332))

(assert (=> d!1564137 m!5871242))

(declare-fun m!5871334 () Bool)

(assert (=> d!1564137 m!5871334))

(declare-fun m!5871336 () Bool)

(assert (=> d!1564137 m!5871336))

(assert (=> d!1564137 m!5871332))

(assert (=> d!1564137 m!5870998))

(assert (=> d!1564137 m!5871242))

(declare-fun m!5871338 () Bool)

(assert (=> d!1564137 m!5871338))

(declare-fun m!5871340 () Bool)

(assert (=> d!1564137 m!5871340))

(assert (=> d!1564137 m!5870998))

(declare-fun m!5871342 () Bool)

(assert (=> b!4871106 m!5871342))

(assert (=> b!4871103 m!5870998))

(assert (=> b!4871103 m!5871270))

(assert (=> b!4871103 m!5871328))

(assert (=> b!4871103 m!5870998))

(assert (=> b!4871103 m!5871270))

(declare-fun m!5871344 () Bool)

(assert (=> b!4871103 m!5871344))

(declare-fun m!5871346 () Bool)

(assert (=> b!4871103 m!5871346))

(assert (=> b!4871104 m!5870998))

(assert (=> b!4871104 m!5871242))

(assert (=> b!4871104 m!5871242))

(assert (=> b!4871104 m!5871330))

(assert (=> b!4871104 m!5871346))

(assert (=> b!4871104 m!5871328))

(assert (=> b!4871104 m!5870998))

(assert (=> b!4871101 m!5871332))

(declare-fun m!5871348 () Bool)

(assert (=> bm!338218 m!5871348))

(assert (=> b!4871105 m!5871328))

(assert (=> b!4871105 m!5870998))

(assert (=> b!4871105 m!5870998))

(assert (=> b!4871105 m!5871270))

(assert (=> b!4871105 m!5871270))

(assert (=> b!4871105 m!5871344))

(assert (=> b!4870842 d!1564137))

(declare-fun d!1564139 () Bool)

(assert (=> d!1564139 (= (list!17513 lt!1995768) (list!17516 (c!828451 lt!1995768)))))

(declare-fun bs!1174627 () Bool)

(assert (= bs!1174627 d!1564139))

(declare-fun m!5871350 () Bool)

(assert (=> bs!1174627 m!5871350))

(assert (=> d!1564059 d!1564139))

(declare-fun b!4871164 () Bool)

(declare-fun e!3045106 () Bool)

(assert (=> b!4871164 (= e!3045106 true)))

(declare-fun b!4871163 () Bool)

(declare-fun e!3045105 () Bool)

(assert (=> b!4871163 (= e!3045105 e!3045106)))

(declare-fun b!4871153 () Bool)

(assert (=> b!4871153 e!3045105))

(assert (= b!4871163 b!4871164))

(assert (= b!4871153 b!4871163))

(declare-fun order!25229 () Int)

(declare-fun order!25227 () Int)

(declare-fun lambda!243496 () Int)

(declare-fun dynLambda!22475 (Int Int) Int)

(declare-fun dynLambda!22476 (Int Int) Int)

(assert (=> b!4871164 (< (dynLambda!22475 order!25227 (toValue!10914 (transformation!8043 (h!62434 rules!1164)))) (dynLambda!22476 order!25229 lambda!243496))))

(declare-fun order!25231 () Int)

(declare-fun dynLambda!22477 (Int Int) Int)

(assert (=> b!4871164 (< (dynLambda!22477 order!25231 (toChars!10773 (transformation!8043 (h!62434 rules!1164)))) (dynLambda!22476 order!25229 lambda!243496))))

(declare-fun b!4871151 () Bool)

(declare-fun e!3045099 () Bool)

(declare-fun lt!1995910 () List!56108)

(declare-datatypes ((tuple2!59854 0))(
  ( (tuple2!59855 (_1!33230 List!56108) (_2!33230 List!56108)) )
))
(declare-fun findLongestMatchInner!1722 (Regex!13118 List!56108 Int List!56108 List!56108 Int) tuple2!59854)

(assert (=> b!4871151 (= e!3045099 (matchR!6493 (regex!8043 (h!62434 rules!1164)) (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1995910 lt!1995910 (size!36907 lt!1995910)))))))

(declare-fun b!4871152 () Bool)

(declare-fun e!3045098 () Bool)

(declare-fun e!3045096 () Bool)

(assert (=> b!4871152 (= e!3045098 e!3045096)))

(declare-fun res!2079387 () Bool)

(assert (=> b!4871152 (=> (not res!2079387) (not e!3045096))))

(declare-fun lt!1995908 () Option!13792)

(assert (=> b!4871152 (= res!2079387 (= (_1!33222 (get!19235 lt!1995908)) (_1!33227 (get!19236 (maxPrefixOneRule!3492 thiss!11460 (h!62434 rules!1164) (list!17513 input!585))))))))

(declare-fun d!1564141 () Bool)

(declare-fun e!3045100 () Bool)

(assert (=> d!1564141 e!3045100))

(declare-fun res!2079389 () Bool)

(assert (=> d!1564141 (=> (not res!2079389) (not e!3045100))))

(assert (=> d!1564141 (= res!2079389 (= (isDefined!10850 lt!1995908) (isDefined!10851 (maxPrefixOneRule!3492 thiss!11460 (h!62434 rules!1164) (list!17513 input!585)))))))

(declare-fun e!3045097 () Option!13792)

(assert (=> d!1564141 (= lt!1995908 e!3045097)))

(declare-fun c!828519 () Bool)

(declare-datatypes ((tuple2!59856 0))(
  ( (tuple2!59857 (_1!33231 BalanceConc!28628) (_2!33231 BalanceConc!28628)) )
))
(declare-fun lt!1995912 () tuple2!59856)

(declare-fun isEmpty!29966 (BalanceConc!28628) Bool)

(assert (=> d!1564141 (= c!828519 (isEmpty!29966 (_1!33231 lt!1995912)))))

(declare-fun findLongestMatchWithZipperSequence!237 (Regex!13118 BalanceConc!28628) tuple2!59856)

(assert (=> d!1564141 (= lt!1995912 (findLongestMatchWithZipperSequence!237 (regex!8043 (h!62434 rules!1164)) input!585))))

(declare-fun ruleValid!3631 (LexerInterface!7635 Rule!15886) Bool)

(assert (=> d!1564141 (ruleValid!3631 thiss!11460 (h!62434 rules!1164))))

(assert (=> d!1564141 (= (maxPrefixOneRuleZipperSequence!577 thiss!11460 (h!62434 rules!1164) input!585) lt!1995908)))

(assert (=> b!4871153 (= e!3045097 (Some!13791 (tuple2!59839 (Token!14671 (apply!13503 (transformation!8043 (h!62434 rules!1164)) (_1!33231 lt!1995912)) (h!62434 rules!1164) (size!36909 (_1!33231 lt!1995912)) (list!17513 (_1!33231 lt!1995912))) (_2!33231 lt!1995912))))))

(assert (=> b!4871153 (= lt!1995910 (list!17513 input!585))))

(declare-fun lt!1995906 () Unit!145974)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1685 (Regex!13118 List!56108) Unit!145974)

(assert (=> b!4871153 (= lt!1995906 (longestMatchIsAcceptedByMatchOrIsEmpty!1685 (regex!8043 (h!62434 rules!1164)) lt!1995910))))

(declare-fun res!2079390 () Bool)

(declare-fun isEmpty!29967 (List!56108) Bool)

(assert (=> b!4871153 (= res!2079390 (isEmpty!29967 (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1995910 lt!1995910 (size!36907 lt!1995910)))))))

(assert (=> b!4871153 (=> res!2079390 e!3045099)))

(assert (=> b!4871153 e!3045099))

(declare-fun lt!1995907 () Unit!145974)

(assert (=> b!4871153 (= lt!1995907 lt!1995906)))

(declare-fun lt!1995911 () Unit!145974)

(declare-fun lemmaInv!1205 (TokenValueInjection!16014) Unit!145974)

(assert (=> b!4871153 (= lt!1995911 (lemmaInv!1205 (transformation!8043 (h!62434 rules!1164))))))

(declare-fun lt!1995904 () Unit!145974)

(declare-fun ForallOf!1102 (Int BalanceConc!28628) Unit!145974)

(assert (=> b!4871153 (= lt!1995904 (ForallOf!1102 lambda!243496 (_1!33231 lt!1995912)))))

(declare-fun lt!1995905 () Unit!145974)

(assert (=> b!4871153 (= lt!1995905 (ForallOf!1102 lambda!243496 (seqFromList!5899 (list!17513 (_1!33231 lt!1995912)))))))

(declare-fun lt!1995909 () Option!13792)

(assert (=> b!4871153 (= lt!1995909 (Some!13791 (tuple2!59839 (Token!14671 (apply!13503 (transformation!8043 (h!62434 rules!1164)) (_1!33231 lt!1995912)) (h!62434 rules!1164) (size!36909 (_1!33231 lt!1995912)) (list!17513 (_1!33231 lt!1995912))) (_2!33231 lt!1995912))))))

(declare-fun lt!1995913 () Unit!145974)

(declare-fun lemmaEqSameImage!1059 (TokenValueInjection!16014 BalanceConc!28628 BalanceConc!28628) Unit!145974)

(assert (=> b!4871153 (= lt!1995913 (lemmaEqSameImage!1059 (transformation!8043 (h!62434 rules!1164)) (_1!33231 lt!1995912) (seqFromList!5899 (list!17513 (_1!33231 lt!1995912)))))))

(declare-fun b!4871154 () Bool)

(assert (=> b!4871154 (= e!3045096 (= (list!17513 (_2!33222 (get!19235 lt!1995908))) (_2!33227 (get!19236 (maxPrefixOneRule!3492 thiss!11460 (h!62434 rules!1164) (list!17513 input!585))))))))

(declare-fun b!4871155 () Bool)

(assert (=> b!4871155 (= e!3045097 None!13791)))

(declare-fun b!4871156 () Bool)

(assert (=> b!4871156 (= e!3045100 e!3045098)))

(declare-fun res!2079388 () Bool)

(assert (=> b!4871156 (=> res!2079388 e!3045098)))

(assert (=> b!4871156 (= res!2079388 (not (isDefined!10850 lt!1995908)))))

(assert (= (and d!1564141 c!828519) b!4871155))

(assert (= (and d!1564141 (not c!828519)) b!4871153))

(assert (= (and b!4871153 (not res!2079390)) b!4871151))

(assert (= (and d!1564141 res!2079389) b!4871156))

(assert (= (and b!4871156 (not res!2079388)) b!4871152))

(assert (= (and b!4871152 res!2079387) b!4871154))

(declare-fun m!5871376 () Bool)

(assert (=> b!4871156 m!5871376))

(assert (=> b!4871154 m!5870998))

(declare-fun m!5871378 () Bool)

(assert (=> b!4871154 m!5871378))

(assert (=> b!4871154 m!5870998))

(assert (=> b!4871154 m!5871246))

(assert (=> b!4871154 m!5871246))

(declare-fun m!5871380 () Bool)

(assert (=> b!4871154 m!5871380))

(declare-fun m!5871382 () Bool)

(assert (=> b!4871154 m!5871382))

(assert (=> b!4871152 m!5871378))

(assert (=> b!4871152 m!5870998))

(assert (=> b!4871152 m!5870998))

(assert (=> b!4871152 m!5871246))

(assert (=> b!4871152 m!5871246))

(assert (=> b!4871152 m!5871380))

(declare-fun m!5871384 () Bool)

(assert (=> b!4871153 m!5871384))

(declare-fun m!5871386 () Bool)

(assert (=> b!4871153 m!5871386))

(assert (=> b!4871153 m!5870998))

(declare-fun m!5871388 () Bool)

(assert (=> b!4871153 m!5871388))

(declare-fun m!5871390 () Bool)

(assert (=> b!4871153 m!5871390))

(declare-fun m!5871392 () Bool)

(assert (=> b!4871153 m!5871392))

(assert (=> b!4871153 m!5871388))

(declare-fun m!5871394 () Bool)

(assert (=> b!4871153 m!5871394))

(declare-fun m!5871396 () Bool)

(assert (=> b!4871153 m!5871396))

(declare-fun m!5871398 () Bool)

(assert (=> b!4871153 m!5871398))

(assert (=> b!4871153 m!5871386))

(declare-fun m!5871400 () Bool)

(assert (=> b!4871153 m!5871400))

(declare-fun m!5871402 () Bool)

(assert (=> b!4871153 m!5871402))

(declare-fun m!5871404 () Bool)

(assert (=> b!4871153 m!5871404))

(assert (=> b!4871153 m!5871402))

(assert (=> b!4871153 m!5871388))

(declare-fun m!5871406 () Bool)

(assert (=> b!4871153 m!5871406))

(declare-fun m!5871408 () Bool)

(assert (=> b!4871153 m!5871408))

(assert (=> b!4871153 m!5871398))

(assert (=> b!4871151 m!5871398))

(assert (=> b!4871151 m!5871386))

(assert (=> b!4871151 m!5871398))

(assert (=> b!4871151 m!5871386))

(assert (=> b!4871151 m!5871400))

(declare-fun m!5871410 () Bool)

(assert (=> b!4871151 m!5871410))

(assert (=> d!1564141 m!5870998))

(assert (=> d!1564141 m!5870998))

(assert (=> d!1564141 m!5871246))

(assert (=> d!1564141 m!5871246))

(declare-fun m!5871412 () Bool)

(assert (=> d!1564141 m!5871412))

(assert (=> d!1564141 m!5871376))

(declare-fun m!5871414 () Bool)

(assert (=> d!1564141 m!5871414))

(declare-fun m!5871416 () Bool)

(assert (=> d!1564141 m!5871416))

(declare-fun m!5871418 () Bool)

(assert (=> d!1564141 m!5871418))

(assert (=> bm!338208 d!1564141))

(declare-fun bs!1174628 () Bool)

(declare-fun d!1564153 () Bool)

(assert (= bs!1174628 (and d!1564153 b!4871153)))

(declare-fun lambda!243499 () Int)

(assert (=> bs!1174628 (= lambda!243499 lambda!243496)))

(assert (=> d!1564153 true))

(assert (=> d!1564153 (< (dynLambda!22477 order!25231 (toChars!10773 (transformation!8043 (h!62434 rules!1164)))) (dynLambda!22476 order!25229 lambda!243499))))

(assert (=> d!1564153 true))

(assert (=> d!1564153 (< (dynLambda!22475 order!25227 (toValue!10914 (transformation!8043 (h!62434 rules!1164)))) (dynLambda!22476 order!25229 lambda!243499))))

(declare-fun Forall!1676 (Int) Bool)

(assert (=> d!1564153 (= (semiInverseModEq!3547 (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (toValue!10914 (transformation!8043 (h!62434 rules!1164)))) (Forall!1676 lambda!243499))))

(declare-fun bs!1174629 () Bool)

(assert (= bs!1174629 d!1564153))

(declare-fun m!5871420 () Bool)

(assert (=> bs!1174629 m!5871420))

(assert (=> d!1564077 d!1564153))

(declare-fun b!4871171 () Bool)

(declare-fun e!3045108 () List!56108)

(assert (=> b!4871171 (= e!3045108 (list!17519 (xs!17901 (c!828451 input!585))))))

(declare-fun b!4871170 () Bool)

(declare-fun e!3045107 () List!56108)

(assert (=> b!4871170 (= e!3045107 e!3045108)))

(declare-fun c!828521 () Bool)

(assert (=> b!4871170 (= c!828521 (is-Leaf!24326 (c!828451 input!585)))))

(declare-fun d!1564155 () Bool)

(declare-fun c!828520 () Bool)

(assert (=> d!1564155 (= c!828520 (is-Empty!14593 (c!828451 input!585)))))

(assert (=> d!1564155 (= (list!17516 (c!828451 input!585)) e!3045107)))

(declare-fun b!4871169 () Bool)

(assert (=> b!4871169 (= e!3045107 Nil!55984)))

(declare-fun b!4871172 () Bool)

(assert (=> b!4871172 (= e!3045108 (++!12192 (list!17516 (left!40663 (c!828451 input!585))) (list!17516 (right!40993 (c!828451 input!585)))))))

(assert (= (and d!1564155 c!828520) b!4871169))

(assert (= (and d!1564155 (not c!828520)) b!4871170))

(assert (= (and b!4871170 c!828521) b!4871171))

(assert (= (and b!4871170 (not c!828521)) b!4871172))

(declare-fun m!5871422 () Bool)

(assert (=> b!4871171 m!5871422))

(declare-fun m!5871424 () Bool)

(assert (=> b!4871172 m!5871424))

(declare-fun m!5871426 () Bool)

(assert (=> b!4871172 m!5871426))

(assert (=> b!4871172 m!5871424))

(assert (=> b!4871172 m!5871426))

(declare-fun m!5871428 () Bool)

(assert (=> b!4871172 m!5871428))

(assert (=> d!1564069 d!1564155))

(declare-fun d!1564157 () Bool)

(assert (=> d!1564157 (= (inv!71906 (tag!8907 (h!62434 (t!364180 rules!1164)))) (= (mod (str.len (value!258368 (tag!8907 (h!62434 (t!364180 rules!1164))))) 2) 0))))

(assert (=> b!4870893 d!1564157))

(declare-fun d!1564159 () Bool)

(declare-fun res!2079391 () Bool)

(declare-fun e!3045109 () Bool)

(assert (=> d!1564159 (=> (not res!2079391) (not e!3045109))))

(assert (=> d!1564159 (= res!2079391 (semiInverseModEq!3547 (toChars!10773 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164))))))))

(assert (=> d!1564159 (= (inv!71911 (transformation!8043 (h!62434 (t!364180 rules!1164)))) e!3045109)))

(declare-fun b!4871173 () Bool)

(assert (=> b!4871173 (= e!3045109 (equivClasses!3426 (toChars!10773 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164))))))))

(assert (= (and d!1564159 res!2079391) b!4871173))

(declare-fun m!5871430 () Bool)

(assert (=> d!1564159 m!5871430))

(declare-fun m!5871432 () Bool)

(assert (=> b!4871173 m!5871432))

(assert (=> b!4870893 d!1564159))

(declare-fun d!1564161 () Bool)

(assert (=> d!1564161 (= (inv!71917 (xs!17901 (c!828451 input!585))) (<= (size!36907 (innerList!14681 (xs!17901 (c!828451 input!585)))) 2147483647))))

(declare-fun bs!1174630 () Bool)

(assert (= bs!1174630 d!1564161))

(declare-fun m!5871434 () Bool)

(assert (=> bs!1174630 m!5871434))

(assert (=> b!4870868 d!1564161))

(declare-fun d!1564163 () Bool)

(declare-fun c!828524 () Bool)

(assert (=> d!1564163 (= c!828524 (is-Nil!55984 lt!1995765))))

(declare-fun e!3045112 () (Set C!26434))

(assert (=> d!1564163 (= (content!9981 lt!1995765) e!3045112)))

(declare-fun b!4871178 () Bool)

(assert (=> b!4871178 (= e!3045112 (as set.empty (Set C!26434)))))

(declare-fun b!4871179 () Bool)

(assert (=> b!4871179 (= e!3045112 (set.union (set.insert (h!62432 lt!1995765) (as set.empty (Set C!26434))) (content!9981 (t!364178 lt!1995765))))))

(assert (= (and d!1564163 c!828524) b!4871178))

(assert (= (and d!1564163 (not c!828524)) b!4871179))

(declare-fun m!5871436 () Bool)

(assert (=> b!4871179 m!5871436))

(declare-fun m!5871438 () Bool)

(assert (=> b!4871179 m!5871438))

(assert (=> d!1564057 d!1564163))

(declare-fun d!1564165 () Bool)

(declare-fun c!828525 () Bool)

(assert (=> d!1564165 (= c!828525 (is-Nil!55984 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))))

(declare-fun e!3045113 () (Set C!26434))

(assert (=> d!1564165 (= (content!9981 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))) e!3045113)))

(declare-fun b!4871180 () Bool)

(assert (=> b!4871180 (= e!3045113 (as set.empty (Set C!26434)))))

(declare-fun b!4871181 () Bool)

(assert (=> b!4871181 (= e!3045113 (set.union (set.insert (h!62432 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))) (as set.empty (Set C!26434))) (content!9981 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))))))

(assert (= (and d!1564165 c!828525) b!4871180))

(assert (= (and d!1564165 (not c!828525)) b!4871181))

(declare-fun m!5871440 () Bool)

(assert (=> b!4871181 m!5871440))

(assert (=> b!4871181 m!5871316))

(assert (=> d!1564057 d!1564165))

(declare-fun d!1564167 () Bool)

(declare-fun c!828526 () Bool)

(assert (=> d!1564167 (= c!828526 (is-Nil!55984 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))

(declare-fun e!3045114 () (Set C!26434))

(assert (=> d!1564167 (= (content!9981 (list!17513 (_2!33222 (v!49713 lt!1995756)))) e!3045114)))

(declare-fun b!4871182 () Bool)

(assert (=> b!4871182 (= e!3045114 (as set.empty (Set C!26434)))))

(declare-fun b!4871183 () Bool)

(assert (=> b!4871183 (= e!3045114 (set.union (set.insert (h!62432 (list!17513 (_2!33222 (v!49713 lt!1995756)))) (as set.empty (Set C!26434))) (content!9981 (t!364178 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))))

(assert (= (and d!1564167 c!828526) b!4871182))

(assert (= (and d!1564167 (not c!828526)) b!4871183))

(declare-fun m!5871442 () Bool)

(assert (=> b!4871183 m!5871442))

(declare-fun m!5871444 () Bool)

(assert (=> b!4871183 m!5871444))

(assert (=> d!1564057 d!1564167))

(declare-fun d!1564169 () Bool)

(declare-fun c!828527 () Bool)

(assert (=> d!1564169 (= c!828527 (is-Node!14593 (left!40663 (c!828451 input!585))))))

(declare-fun e!3045115 () Bool)

(assert (=> d!1564169 (= (inv!71910 (left!40663 (c!828451 input!585))) e!3045115)))

(declare-fun b!4871184 () Bool)

(assert (=> b!4871184 (= e!3045115 (inv!71915 (left!40663 (c!828451 input!585))))))

(declare-fun b!4871185 () Bool)

(declare-fun e!3045116 () Bool)

(assert (=> b!4871185 (= e!3045115 e!3045116)))

(declare-fun res!2079392 () Bool)

(assert (=> b!4871185 (= res!2079392 (not (is-Leaf!24326 (left!40663 (c!828451 input!585)))))))

(assert (=> b!4871185 (=> res!2079392 e!3045116)))

(declare-fun b!4871186 () Bool)

(assert (=> b!4871186 (= e!3045116 (inv!71916 (left!40663 (c!828451 input!585))))))

(assert (= (and d!1564169 c!828527) b!4871184))

(assert (= (and d!1564169 (not c!828527)) b!4871185))

(assert (= (and b!4871185 (not res!2079392)) b!4871186))

(declare-fun m!5871446 () Bool)

(assert (=> b!4871184 m!5871446))

(declare-fun m!5871448 () Bool)

(assert (=> b!4871186 m!5871448))

(assert (=> b!4870867 d!1564169))

(declare-fun d!1564171 () Bool)

(declare-fun c!828528 () Bool)

(assert (=> d!1564171 (= c!828528 (is-Node!14593 (right!40993 (c!828451 input!585))))))

(declare-fun e!3045117 () Bool)

(assert (=> d!1564171 (= (inv!71910 (right!40993 (c!828451 input!585))) e!3045117)))

(declare-fun b!4871187 () Bool)

(assert (=> b!4871187 (= e!3045117 (inv!71915 (right!40993 (c!828451 input!585))))))

(declare-fun b!4871188 () Bool)

(declare-fun e!3045118 () Bool)

(assert (=> b!4871188 (= e!3045117 e!3045118)))

(declare-fun res!2079393 () Bool)

(assert (=> b!4871188 (= res!2079393 (not (is-Leaf!24326 (right!40993 (c!828451 input!585)))))))

(assert (=> b!4871188 (=> res!2079393 e!3045118)))

(declare-fun b!4871189 () Bool)

(assert (=> b!4871189 (= e!3045118 (inv!71916 (right!40993 (c!828451 input!585))))))

(assert (= (and d!1564171 c!828528) b!4871187))

(assert (= (and d!1564171 (not c!828528)) b!4871188))

(assert (= (and b!4871188 (not res!2079393)) b!4871189))

(declare-fun m!5871450 () Bool)

(assert (=> b!4871187 m!5871450))

(declare-fun m!5871452 () Bool)

(assert (=> b!4871189 m!5871452))

(assert (=> b!4870867 d!1564171))

(declare-fun d!1564173 () Bool)

(declare-fun lt!1995917 () Int)

(assert (=> d!1564173 (= lt!1995917 (size!36913 (list!17515 (_1!33223 lt!1995776))))))

(declare-fun size!36914 (Conc!14594) Int)

(assert (=> d!1564173 (= lt!1995917 (size!36914 (c!828453 (_1!33223 lt!1995776))))))

(assert (=> d!1564173 (= (size!36908 (_1!33223 lt!1995776)) lt!1995917)))

(declare-fun bs!1174632 () Bool)

(assert (= bs!1174632 d!1564173))

(assert (=> bs!1174632 m!5871058))

(assert (=> bs!1174632 m!5871058))

(declare-fun m!5871468 () Bool)

(assert (=> bs!1174632 m!5871468))

(declare-fun m!5871470 () Bool)

(assert (=> bs!1174632 m!5871470))

(assert (=> d!1564061 d!1564173))

(declare-fun b!4871201 () Bool)

(declare-fun e!3045125 () Bool)

(declare-fun e!3045128 () Bool)

(assert (=> b!4871201 (= e!3045125 e!3045128)))

(declare-fun res!2079401 () Bool)

(assert (=> b!4871201 (=> res!2079401 e!3045128)))

(declare-fun lt!1995921 () Option!13792)

(assert (=> b!4871201 (= res!2079401 (not (isDefined!10850 lt!1995921)))))

(declare-fun b!4871202 () Bool)

(declare-fun res!2079397 () Bool)

(assert (=> b!4871202 (=> (not res!2079397) (not e!3045125))))

(declare-fun e!3045127 () Bool)

(assert (=> b!4871202 (= res!2079397 e!3045127)))

(declare-fun res!2079400 () Bool)

(assert (=> b!4871202 (=> res!2079400 e!3045127)))

(assert (=> b!4871202 (= res!2079400 (not (isDefined!10850 lt!1995921)))))

(declare-fun b!4871203 () Bool)

(declare-fun e!3045129 () Bool)

(assert (=> b!4871203 (= e!3045127 e!3045129)))

(declare-fun res!2079398 () Bool)

(assert (=> b!4871203 (=> (not res!2079398) (not e!3045129))))

(assert (=> b!4871203 (= res!2079398 (= (_1!33222 (get!19235 lt!1995921)) (_1!33227 (get!19236 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756))))))))))

(declare-fun e!3045126 () Bool)

(declare-fun b!4871204 () Bool)

(assert (=> b!4871204 (= e!3045126 (= (list!17513 (_2!33222 (get!19235 lt!1995921))) (_2!33227 (get!19236 (maxPrefix!4550 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756))))))))))

(declare-fun b!4871205 () Bool)

(assert (=> b!4871205 (= e!3045129 (= (list!17513 (_2!33222 (get!19235 lt!1995921))) (_2!33227 (get!19236 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756))))))))))

(declare-fun b!4871207 () Bool)

(declare-fun e!3045130 () Option!13792)

(declare-fun lt!1995924 () Option!13792)

(declare-fun lt!1995923 () Option!13792)

(assert (=> b!4871207 (= e!3045130 (ite (and (is-None!13791 lt!1995924) (is-None!13791 lt!1995923)) None!13791 (ite (is-None!13791 lt!1995923) lt!1995924 (ite (is-None!13791 lt!1995924) lt!1995923 (ite (>= (size!36905 (_1!33222 (v!49713 lt!1995924))) (size!36905 (_1!33222 (v!49713 lt!1995923)))) lt!1995924 lt!1995923)))))))

(declare-fun call!338224 () Option!13792)

(assert (=> b!4871207 (= lt!1995924 call!338224)))

(assert (=> b!4871207 (= lt!1995923 (maxPrefixZipperSequence!1234 thiss!11460 (t!364180 rules!1164) (_2!33222 (v!49713 lt!1995756))))))

(declare-fun b!4871208 () Bool)

(assert (=> b!4871208 (= e!3045130 call!338224)))

(declare-fun bm!338219 () Bool)

(assert (=> bm!338219 (= call!338224 (maxPrefixOneRuleZipperSequence!577 thiss!11460 (h!62434 rules!1164) (_2!33222 (v!49713 lt!1995756))))))

(declare-fun b!4871206 () Bool)

(assert (=> b!4871206 (= e!3045128 e!3045126)))

(declare-fun res!2079399 () Bool)

(assert (=> b!4871206 (=> (not res!2079399) (not e!3045126))))

(assert (=> b!4871206 (= res!2079399 (= (_1!33222 (get!19235 lt!1995921)) (_1!33227 (get!19236 (maxPrefix!4550 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756))))))))))

(declare-fun d!1564183 () Bool)

(assert (=> d!1564183 e!3045125))

(declare-fun res!2079402 () Bool)

(assert (=> d!1564183 (=> (not res!2079402) (not e!3045125))))

(assert (=> d!1564183 (= res!2079402 (= (isDefined!10850 lt!1995921) (isDefined!10851 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))))

(assert (=> d!1564183 (= lt!1995921 e!3045130)))

(declare-fun c!828532 () Bool)

(assert (=> d!1564183 (= c!828532 (and (is-Cons!55986 rules!1164) (is-Nil!55986 (t!364180 rules!1164))))))

(declare-fun lt!1995919 () Unit!145974)

(declare-fun lt!1995920 () Unit!145974)

(assert (=> d!1564183 (= lt!1995919 lt!1995920)))

(declare-fun lt!1995918 () List!56108)

(declare-fun lt!1995922 () List!56108)

(assert (=> d!1564183 (isPrefix!4767 lt!1995918 lt!1995922)))

(assert (=> d!1564183 (= lt!1995920 (lemmaIsPrefixRefl!3164 lt!1995918 lt!1995922))))

(assert (=> d!1564183 (= lt!1995922 (list!17513 (_2!33222 (v!49713 lt!1995756))))))

(assert (=> d!1564183 (= lt!1995918 (list!17513 (_2!33222 (v!49713 lt!1995756))))))

(assert (=> d!1564183 (rulesValidInductive!3022 thiss!11460 rules!1164)))

(assert (=> d!1564183 (= (maxPrefixZipperSequence!1234 thiss!11460 rules!1164 (_2!33222 (v!49713 lt!1995756))) lt!1995921)))

(assert (= (and d!1564183 c!828532) b!4871208))

(assert (= (and d!1564183 (not c!828532)) b!4871207))

(assert (= (or b!4871208 b!4871207) bm!338219))

(assert (= (and d!1564183 res!2079402) b!4871202))

(assert (= (and b!4871202 (not res!2079400)) b!4871203))

(assert (= (and b!4871203 res!2079398) b!4871205))

(assert (= (and b!4871202 res!2079397) b!4871201))

(assert (= (and b!4871201 (not res!2079401)) b!4871206))

(assert (= (and b!4871206 res!2079399) b!4871204))

(declare-fun m!5871476 () Bool)

(assert (=> b!4871203 m!5871476))

(assert (=> b!4871203 m!5870992))

(assert (=> b!4871203 m!5870992))

(declare-fun m!5871478 () Bool)

(assert (=> b!4871203 m!5871478))

(assert (=> b!4871203 m!5871478))

(declare-fun m!5871480 () Bool)

(assert (=> b!4871203 m!5871480))

(declare-fun m!5871482 () Bool)

(assert (=> b!4871201 m!5871482))

(assert (=> d!1564183 m!5871478))

(declare-fun m!5871488 () Bool)

(assert (=> d!1564183 m!5871488))

(declare-fun m!5871490 () Bool)

(assert (=> d!1564183 m!5871490))

(assert (=> d!1564183 m!5871482))

(assert (=> d!1564183 m!5870992))

(assert (=> d!1564183 m!5871478))

(assert (=> d!1564183 m!5871096))

(declare-fun m!5871498 () Bool)

(assert (=> d!1564183 m!5871498))

(assert (=> d!1564183 m!5870992))

(declare-fun m!5871500 () Bool)

(assert (=> b!4871207 m!5871500))

(assert (=> b!4871204 m!5870992))

(assert (=> b!4871204 m!5871296))

(assert (=> b!4871204 m!5871476))

(assert (=> b!4871204 m!5870992))

(assert (=> b!4871204 m!5871296))

(declare-fun m!5871502 () Bool)

(assert (=> b!4871204 m!5871502))

(declare-fun m!5871504 () Bool)

(assert (=> b!4871204 m!5871504))

(assert (=> b!4871205 m!5870992))

(assert (=> b!4871205 m!5871478))

(assert (=> b!4871205 m!5871478))

(assert (=> b!4871205 m!5871480))

(assert (=> b!4871205 m!5871504))

(assert (=> b!4871205 m!5871476))

(assert (=> b!4871205 m!5870992))

(assert (=> b!4871202 m!5871482))

(declare-fun m!5871506 () Bool)

(assert (=> bm!338219 m!5871506))

(assert (=> b!4871206 m!5871476))

(assert (=> b!4871206 m!5870992))

(assert (=> b!4871206 m!5870992))

(assert (=> b!4871206 m!5871296))

(assert (=> b!4871206 m!5871296))

(assert (=> b!4871206 m!5871502))

(assert (=> d!1564061 d!1564183))

(declare-fun d!1564191 () Bool)

(declare-fun lt!1995935 () Int)

(assert (=> d!1564191 (>= lt!1995935 0)))

(declare-fun e!3045141 () Int)

(assert (=> d!1564191 (= lt!1995935 e!3045141)))

(declare-fun c!828537 () Bool)

(assert (=> d!1564191 (= c!828537 (is-Nil!55984 lt!1995765))))

(assert (=> d!1564191 (= (size!36907 lt!1995765) lt!1995935)))

(declare-fun b!4871225 () Bool)

(assert (=> b!4871225 (= e!3045141 0)))

(declare-fun b!4871226 () Bool)

(assert (=> b!4871226 (= e!3045141 (+ 1 (size!36907 (t!364178 lt!1995765))))))

(assert (= (and d!1564191 c!828537) b!4871225))

(assert (= (and d!1564191 (not c!828537)) b!4871226))

(declare-fun m!5871536 () Bool)

(assert (=> b!4871226 m!5871536))

(assert (=> b!4870792 d!1564191))

(declare-fun d!1564197 () Bool)

(declare-fun lt!1995936 () Int)

(assert (=> d!1564197 (>= lt!1995936 0)))

(declare-fun e!3045142 () Int)

(assert (=> d!1564197 (= lt!1995936 e!3045142)))

(declare-fun c!828538 () Bool)

(assert (=> d!1564197 (= c!828538 (is-Nil!55984 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))))

(assert (=> d!1564197 (= (size!36907 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))) lt!1995936)))

(declare-fun b!4871227 () Bool)

(assert (=> b!4871227 (= e!3045142 0)))

(declare-fun b!4871228 () Bool)

(assert (=> b!4871228 (= e!3045142 (+ 1 (size!36907 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))))))

(assert (= (and d!1564197 c!828538) b!4871227))

(assert (= (and d!1564197 (not c!828538)) b!4871228))

(assert (=> b!4871228 m!5871312))

(assert (=> b!4870792 d!1564197))

(declare-fun d!1564199 () Bool)

(declare-fun lt!1995937 () Int)

(assert (=> d!1564199 (>= lt!1995937 0)))

(declare-fun e!3045143 () Int)

(assert (=> d!1564199 (= lt!1995937 e!3045143)))

(declare-fun c!828539 () Bool)

(assert (=> d!1564199 (= c!828539 (is-Nil!55984 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))

(assert (=> d!1564199 (= (size!36907 (list!17513 (_2!33222 (v!49713 lt!1995756)))) lt!1995937)))

(declare-fun b!4871229 () Bool)

(assert (=> b!4871229 (= e!3045143 0)))

(declare-fun b!4871230 () Bool)

(assert (=> b!4871230 (= e!3045143 (+ 1 (size!36907 (t!364178 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))))

(assert (= (and d!1564199 c!828539) b!4871229))

(assert (= (and d!1564199 (not c!828539)) b!4871230))

(declare-fun m!5871538 () Bool)

(assert (=> b!4871230 m!5871538))

(assert (=> b!4870792 d!1564199))

(declare-fun d!1564201 () Bool)

(assert (=> d!1564201 true))

(declare-fun lt!1995940 () Bool)

(assert (=> d!1564201 (= lt!1995940 (rulesValidInductive!3022 thiss!11460 rules!1164))))

(declare-fun lambda!243505 () Int)

(declare-fun forall!13051 (List!56110 Int) Bool)

(assert (=> d!1564201 (= lt!1995940 (forall!13051 rules!1164 lambda!243505))))

(assert (=> d!1564201 (= (rulesValid!3123 thiss!11460 rules!1164) lt!1995940)))

(declare-fun bs!1174636 () Bool)

(assert (= bs!1174636 d!1564201))

(assert (=> bs!1174636 m!5871096))

(declare-fun m!5871540 () Bool)

(assert (=> bs!1174636 m!5871540))

(assert (=> d!1564081 d!1564201))

(assert (=> d!1564071 d!1564129))

(assert (=> d!1564071 d!1564111))

(declare-fun b!4871243 () Bool)

(declare-fun e!3045150 () Bool)

(declare-fun tail!9561 (List!56108) List!56108)

(assert (=> b!4871243 (= e!3045150 (isPrefix!4767 (tail!9561 lt!1995792) (tail!9561 lt!1995796)))))

(declare-fun d!1564203 () Bool)

(declare-fun e!3045151 () Bool)

(assert (=> d!1564203 e!3045151))

(declare-fun res!2079421 () Bool)

(assert (=> d!1564203 (=> res!2079421 e!3045151)))

(declare-fun lt!1995943 () Bool)

(assert (=> d!1564203 (= res!2079421 (not lt!1995943))))

(declare-fun e!3045152 () Bool)

(assert (=> d!1564203 (= lt!1995943 e!3045152)))

(declare-fun res!2079422 () Bool)

(assert (=> d!1564203 (=> res!2079422 e!3045152)))

(assert (=> d!1564203 (= res!2079422 (is-Nil!55984 lt!1995792))))

(assert (=> d!1564203 (= (isPrefix!4767 lt!1995792 lt!1995796) lt!1995943)))

(declare-fun b!4871244 () Bool)

(assert (=> b!4871244 (= e!3045151 (>= (size!36907 lt!1995796) (size!36907 lt!1995792)))))

(declare-fun b!4871241 () Bool)

(assert (=> b!4871241 (= e!3045152 e!3045150)))

(declare-fun res!2079420 () Bool)

(assert (=> b!4871241 (=> (not res!2079420) (not e!3045150))))

(assert (=> b!4871241 (= res!2079420 (not (is-Nil!55984 lt!1995796)))))

(declare-fun b!4871242 () Bool)

(declare-fun res!2079419 () Bool)

(assert (=> b!4871242 (=> (not res!2079419) (not e!3045150))))

(declare-fun head!10415 (List!56108) C!26434)

(assert (=> b!4871242 (= res!2079419 (= (head!10415 lt!1995792) (head!10415 lt!1995796)))))

(assert (= (and d!1564203 (not res!2079422)) b!4871241))

(assert (= (and b!4871241 res!2079420) b!4871242))

(assert (= (and b!4871242 res!2079419) b!4871243))

(assert (= (and d!1564203 (not res!2079421)) b!4871244))

(declare-fun m!5871542 () Bool)

(assert (=> b!4871243 m!5871542))

(declare-fun m!5871544 () Bool)

(assert (=> b!4871243 m!5871544))

(assert (=> b!4871243 m!5871542))

(assert (=> b!4871243 m!5871544))

(declare-fun m!5871546 () Bool)

(assert (=> b!4871243 m!5871546))

(declare-fun m!5871548 () Bool)

(assert (=> b!4871244 m!5871548))

(declare-fun m!5871550 () Bool)

(assert (=> b!4871244 m!5871550))

(declare-fun m!5871552 () Bool)

(assert (=> b!4871242 m!5871552))

(declare-fun m!5871554 () Bool)

(assert (=> b!4871242 m!5871554))

(assert (=> d!1564071 d!1564203))

(declare-fun d!1564205 () Bool)

(assert (=> d!1564205 (isPrefix!4767 lt!1995792 lt!1995796)))

(declare-fun lt!1995946 () Unit!145974)

(declare-fun choose!35608 (List!56108 List!56108) Unit!145974)

(assert (=> d!1564205 (= lt!1995946 (choose!35608 lt!1995792 lt!1995796))))

(assert (=> d!1564205 (= (lemmaIsPrefixRefl!3164 lt!1995792 lt!1995796) lt!1995946)))

(declare-fun bs!1174637 () Bool)

(assert (= bs!1174637 d!1564205))

(assert (=> bs!1174637 m!5871098))

(declare-fun m!5871556 () Bool)

(assert (=> bs!1174637 m!5871556))

(assert (=> d!1564071 d!1564205))

(declare-fun bs!1174638 () Bool)

(declare-fun d!1564207 () Bool)

(assert (= bs!1174638 (and d!1564207 d!1564201)))

(declare-fun lambda!243508 () Int)

(assert (=> bs!1174638 (= lambda!243508 lambda!243505)))

(assert (=> d!1564207 true))

(declare-fun lt!1995949 () Bool)

(assert (=> d!1564207 (= lt!1995949 (forall!13051 rules!1164 lambda!243508))))

(declare-fun e!3045157 () Bool)

(assert (=> d!1564207 (= lt!1995949 e!3045157)))

(declare-fun res!2079428 () Bool)

(assert (=> d!1564207 (=> res!2079428 e!3045157)))

(assert (=> d!1564207 (= res!2079428 (not (is-Cons!55986 rules!1164)))))

(assert (=> d!1564207 (= (rulesValidInductive!3022 thiss!11460 rules!1164) lt!1995949)))

(declare-fun b!4871249 () Bool)

(declare-fun e!3045158 () Bool)

(assert (=> b!4871249 (= e!3045157 e!3045158)))

(declare-fun res!2079427 () Bool)

(assert (=> b!4871249 (=> (not res!2079427) (not e!3045158))))

(assert (=> b!4871249 (= res!2079427 (ruleValid!3631 thiss!11460 (h!62434 rules!1164)))))

(declare-fun b!4871250 () Bool)

(assert (=> b!4871250 (= e!3045158 (rulesValidInductive!3022 thiss!11460 (t!364180 rules!1164)))))

(assert (= (and d!1564207 (not res!2079428)) b!4871249))

(assert (= (and b!4871249 res!2079427) b!4871250))

(declare-fun m!5871558 () Bool)

(assert (=> d!1564207 m!5871558))

(assert (=> b!4871249 m!5871418))

(assert (=> b!4871250 m!5871338))

(assert (=> d!1564071 d!1564207))

(assert (=> d!1564071 d!1564069))

(declare-fun d!1564209 () Bool)

(assert (=> d!1564209 (= (isDefined!10851 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 input!585))) (not (isEmpty!29962 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 input!585)))))))

(declare-fun bs!1174639 () Bool)

(assert (= bs!1174639 d!1564209))

(assert (=> bs!1174639 m!5871086))

(declare-fun m!5871560 () Bool)

(assert (=> bs!1174639 m!5871560))

(assert (=> d!1564071 d!1564209))

(declare-fun d!1564211 () Bool)

(assert (=> d!1564211 true))

(declare-fun lambda!243511 () Int)

(declare-fun order!25233 () Int)

(declare-fun dynLambda!22478 (Int Int) Int)

(assert (=> d!1564211 (< (dynLambda!22475 order!25227 (toValue!10914 (transformation!8043 (h!62434 rules!1164)))) (dynLambda!22478 order!25233 lambda!243511))))

(declare-fun Forall2!1256 (Int) Bool)

(assert (=> d!1564211 (= (equivClasses!3426 (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (toValue!10914 (transformation!8043 (h!62434 rules!1164)))) (Forall2!1256 lambda!243511))))

(declare-fun bs!1174640 () Bool)

(assert (= bs!1174640 d!1564211))

(declare-fun m!5871564 () Bool)

(assert (=> bs!1174640 m!5871564))

(assert (=> b!4870855 d!1564211))

(declare-fun d!1564213 () Bool)

(declare-fun e!3045172 () Bool)

(assert (=> d!1564213 e!3045172))

(declare-fun res!2079436 () Bool)

(assert (=> d!1564213 (=> (not res!2079436) (not e!3045172))))

(declare-fun isBalanced!3959 (Conc!14594) Bool)

(declare-fun prepend!1401 (Conc!14594 Token!14670) Conc!14594)

(assert (=> d!1564213 (= res!2079436 (isBalanced!3959 (prepend!1401 (c!828453 (_1!33223 lt!1995777)) (_1!33222 (v!49713 lt!1995775)))))))

(declare-fun lt!1995961 () BalanceConc!28630)

(assert (=> d!1564213 (= lt!1995961 (BalanceConc!28631 (prepend!1401 (c!828453 (_1!33223 lt!1995777)) (_1!33222 (v!49713 lt!1995775)))))))

(assert (=> d!1564213 (= (prepend!1399 (_1!33223 lt!1995777) (_1!33222 (v!49713 lt!1995775))) lt!1995961)))

(declare-fun b!4871272 () Bool)

(assert (=> b!4871272 (= e!3045172 (= (list!17515 lt!1995961) (Cons!55987 (_1!33222 (v!49713 lt!1995775)) (list!17515 (_1!33223 lt!1995777)))))))

(assert (= (and d!1564213 res!2079436) b!4871272))

(declare-fun m!5871574 () Bool)

(assert (=> d!1564213 m!5871574))

(assert (=> d!1564213 m!5871574))

(declare-fun m!5871576 () Bool)

(assert (=> d!1564213 m!5871576))

(declare-fun m!5871578 () Bool)

(assert (=> b!4871272 m!5871578))

(declare-fun m!5871580 () Bool)

(assert (=> b!4871272 m!5871580))

(assert (=> b!4870818 d!1564213))

(declare-fun d!1564221 () Bool)

(declare-fun e!3045174 () Bool)

(assert (=> d!1564221 e!3045174))

(declare-fun res!2079438 () Bool)

(assert (=> d!1564221 (=> (not res!2079438) (not e!3045174))))

(declare-fun e!3045175 () Bool)

(assert (=> d!1564221 (= res!2079438 e!3045175)))

(declare-fun c!828548 () Bool)

(declare-fun lt!1995963 () tuple2!59840)

(assert (=> d!1564221 (= c!828548 (> (size!36908 (_1!33223 lt!1995963)) 0))))

(declare-fun e!3045176 () tuple2!59840)

(assert (=> d!1564221 (= lt!1995963 e!3045176)))

(declare-fun c!828547 () Bool)

(declare-fun lt!1995962 () Option!13792)

(assert (=> d!1564221 (= c!828547 (is-Some!13791 lt!1995962))))

(assert (=> d!1564221 (= lt!1995962 (maxPrefixZipperSequence!1234 thiss!11460 rules!1164 (_2!33222 (v!49713 lt!1995775))))))

(assert (=> d!1564221 (= (lexRec!850 thiss!11460 rules!1164 (_2!33222 (v!49713 lt!1995775))) lt!1995963)))

(declare-fun b!4871273 () Bool)

(assert (=> b!4871273 (= e!3045175 (= (list!17513 (_2!33223 lt!1995963)) (list!17513 (_2!33222 (v!49713 lt!1995775)))))))

(declare-fun b!4871274 () Bool)

(declare-fun e!3045173 () Bool)

(assert (=> b!4871274 (= e!3045173 (not (isEmpty!29960 (_1!33223 lt!1995963))))))

(declare-fun b!4871275 () Bool)

(assert (=> b!4871275 (= e!3045175 e!3045173)))

(declare-fun res!2079437 () Bool)

(assert (=> b!4871275 (= res!2079437 (< (size!36909 (_2!33223 lt!1995963)) (size!36909 (_2!33222 (v!49713 lt!1995775)))))))

(assert (=> b!4871275 (=> (not res!2079437) (not e!3045173))))

(declare-fun b!4871276 () Bool)

(assert (=> b!4871276 (= e!3045176 (tuple2!59841 (BalanceConc!28631 Empty!14594) (_2!33222 (v!49713 lt!1995775))))))

(declare-fun b!4871277 () Bool)

(declare-fun res!2079439 () Bool)

(assert (=> b!4871277 (=> (not res!2079439) (not e!3045174))))

(assert (=> b!4871277 (= res!2079439 (= (list!17515 (_1!33223 lt!1995963)) (_1!33226 (lexList!2108 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995775)))))))))

(declare-fun b!4871278 () Bool)

(declare-fun lt!1995964 () tuple2!59840)

(assert (=> b!4871278 (= e!3045176 (tuple2!59841 (prepend!1399 (_1!33223 lt!1995964) (_1!33222 (v!49713 lt!1995962))) (_2!33223 lt!1995964)))))

(assert (=> b!4871278 (= lt!1995964 (lexRec!850 thiss!11460 rules!1164 (_2!33222 (v!49713 lt!1995962))))))

(declare-fun b!4871279 () Bool)

(assert (=> b!4871279 (= e!3045174 (= (list!17513 (_2!33223 lt!1995963)) (_2!33226 (lexList!2108 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995775)))))))))

(assert (= (and d!1564221 c!828547) b!4871278))

(assert (= (and d!1564221 (not c!828547)) b!4871276))

(assert (= (and d!1564221 c!828548) b!4871275))

(assert (= (and d!1564221 (not c!828548)) b!4871273))

(assert (= (and b!4871275 res!2079437) b!4871274))

(assert (= (and d!1564221 res!2079438) b!4871277))

(assert (= (and b!4871277 res!2079439) b!4871279))

(declare-fun m!5871582 () Bool)

(assert (=> b!4871277 m!5871582))

(declare-fun m!5871584 () Bool)

(assert (=> b!4871277 m!5871584))

(assert (=> b!4871277 m!5871584))

(declare-fun m!5871586 () Bool)

(assert (=> b!4871277 m!5871586))

(declare-fun m!5871588 () Bool)

(assert (=> d!1564221 m!5871588))

(declare-fun m!5871590 () Bool)

(assert (=> d!1564221 m!5871590))

(declare-fun m!5871592 () Bool)

(assert (=> b!4871274 m!5871592))

(declare-fun m!5871594 () Bool)

(assert (=> b!4871275 m!5871594))

(declare-fun m!5871596 () Bool)

(assert (=> b!4871275 m!5871596))

(declare-fun m!5871598 () Bool)

(assert (=> b!4871278 m!5871598))

(declare-fun m!5871600 () Bool)

(assert (=> b!4871278 m!5871600))

(declare-fun m!5871602 () Bool)

(assert (=> b!4871279 m!5871602))

(assert (=> b!4871279 m!5871584))

(assert (=> b!4871279 m!5871584))

(assert (=> b!4871279 m!5871586))

(assert (=> b!4871273 m!5871602))

(assert (=> b!4871273 m!5871584))

(assert (=> b!4870818 d!1564221))

(assert (=> b!4870836 d!1564129))

(declare-fun d!1564223 () Bool)

(declare-fun list!17521 (Conc!14594) List!56111)

(assert (=> d!1564223 (= (list!17515 (_1!33223 lt!1995776)) (list!17521 (c!828453 (_1!33223 lt!1995776))))))

(declare-fun bs!1174641 () Bool)

(assert (= bs!1174641 d!1564223))

(declare-fun m!5871604 () Bool)

(assert (=> bs!1174641 m!5871604))

(assert (=> b!4870817 d!1564223))

(assert (=> b!4870817 d!1564127))

(assert (=> b!4870817 d!1564065))

(declare-fun d!1564225 () Bool)

(declare-fun c!828549 () Bool)

(assert (=> d!1564225 (= c!828549 (is-Node!14593 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))))

(declare-fun e!3045177 () Bool)

(assert (=> d!1564225 (= (inv!71910 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))) e!3045177)))

(declare-fun b!4871280 () Bool)

(assert (=> b!4871280 (= e!3045177 (inv!71915 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))))

(declare-fun b!4871281 () Bool)

(declare-fun e!3045178 () Bool)

(assert (=> b!4871281 (= e!3045177 e!3045178)))

(declare-fun res!2079440 () Bool)

(assert (=> b!4871281 (= res!2079440 (not (is-Leaf!24326 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))))))

(assert (=> b!4871281 (=> res!2079440 e!3045178)))

(declare-fun b!4871282 () Bool)

(assert (=> b!4871282 (= e!3045178 (inv!71916 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))))

(assert (= (and d!1564225 c!828549) b!4871280))

(assert (= (and d!1564225 (not c!828549)) b!4871281))

(assert (= (and b!4871281 (not res!2079440)) b!4871282))

(declare-fun m!5871606 () Bool)

(assert (=> b!4871280 m!5871606))

(declare-fun m!5871608 () Bool)

(assert (=> b!4871282 m!5871608))

(assert (=> b!4870798 d!1564225))

(declare-fun d!1564227 () Bool)

(declare-fun lt!1995967 () Bool)

(assert (=> d!1564227 (= lt!1995967 (isEmpty!29964 (list!17515 (_1!33223 lt!1995776))))))

(declare-fun isEmpty!29970 (Conc!14594) Bool)

(assert (=> d!1564227 (= lt!1995967 (isEmpty!29970 (c!828453 (_1!33223 lt!1995776))))))

(assert (=> d!1564227 (= (isEmpty!29960 (_1!33223 lt!1995776)) lt!1995967)))

(declare-fun bs!1174642 () Bool)

(assert (= bs!1174642 d!1564227))

(assert (=> bs!1174642 m!5871058))

(assert (=> bs!1174642 m!5871058))

(declare-fun m!5871610 () Bool)

(assert (=> bs!1174642 m!5871610))

(declare-fun m!5871612 () Bool)

(assert (=> bs!1174642 m!5871612))

(assert (=> b!4870814 d!1564227))

(assert (=> b!4870813 d!1564125))

(assert (=> b!4870813 d!1564065))

(declare-fun d!1564229 () Bool)

(declare-fun res!2079447 () Bool)

(declare-fun e!3045181 () Bool)

(assert (=> d!1564229 (=> (not res!2079447) (not e!3045181))))

(declare-fun size!36915 (Conc!14593) Int)

(assert (=> d!1564229 (= res!2079447 (= (csize!29416 (c!828451 input!585)) (+ (size!36915 (left!40663 (c!828451 input!585))) (size!36915 (right!40993 (c!828451 input!585))))))))

(assert (=> d!1564229 (= (inv!71915 (c!828451 input!585)) e!3045181)))

(declare-fun b!4871289 () Bool)

(declare-fun res!2079448 () Bool)

(assert (=> b!4871289 (=> (not res!2079448) (not e!3045181))))

(assert (=> b!4871289 (= res!2079448 (and (not (= (left!40663 (c!828451 input!585)) Empty!14593)) (not (= (right!40993 (c!828451 input!585)) Empty!14593))))))

(declare-fun b!4871290 () Bool)

(declare-fun res!2079449 () Bool)

(assert (=> b!4871290 (=> (not res!2079449) (not e!3045181))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4871290 (= res!2079449 (= (cheight!14804 (c!828451 input!585)) (+ (max!0 (height!1930 (left!40663 (c!828451 input!585))) (height!1930 (right!40993 (c!828451 input!585)))) 1)))))

(declare-fun b!4871291 () Bool)

(assert (=> b!4871291 (= e!3045181 (<= 0 (cheight!14804 (c!828451 input!585))))))

(assert (= (and d!1564229 res!2079447) b!4871289))

(assert (= (and b!4871289 res!2079448) b!4871290))

(assert (= (and b!4871290 res!2079449) b!4871291))

(declare-fun m!5871614 () Bool)

(assert (=> d!1564229 m!5871614))

(declare-fun m!5871616 () Bool)

(assert (=> d!1564229 m!5871616))

(assert (=> b!4871290 m!5871280))

(assert (=> b!4871290 m!5871282))

(assert (=> b!4871290 m!5871280))

(assert (=> b!4871290 m!5871282))

(declare-fun m!5871618 () Bool)

(assert (=> b!4871290 m!5871618))

(assert (=> b!4870850 d!1564229))

(declare-fun d!1564231 () Bool)

(declare-fun lt!1995970 () Int)

(assert (=> d!1564231 (= lt!1995970 (size!36907 (list!17513 (_2!33223 lt!1995776))))))

(assert (=> d!1564231 (= lt!1995970 (size!36915 (c!828451 (_2!33223 lt!1995776))))))

(assert (=> d!1564231 (= (size!36909 (_2!33223 lt!1995776)) lt!1995970)))

(declare-fun bs!1174643 () Bool)

(assert (= bs!1174643 d!1564231))

(assert (=> bs!1174643 m!5871076))

(assert (=> bs!1174643 m!5871076))

(declare-fun m!5871620 () Bool)

(assert (=> bs!1174643 m!5871620))

(declare-fun m!5871622 () Bool)

(assert (=> bs!1174643 m!5871622))

(assert (=> b!4870815 d!1564231))

(declare-fun d!1564233 () Bool)

(declare-fun lt!1995971 () Int)

(assert (=> d!1564233 (= lt!1995971 (size!36907 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))

(assert (=> d!1564233 (= lt!1995971 (size!36915 (c!828451 (_2!33222 (v!49713 lt!1995756)))))))

(assert (=> d!1564233 (= (size!36909 (_2!33222 (v!49713 lt!1995756))) lt!1995971)))

(declare-fun bs!1174644 () Bool)

(assert (= bs!1174644 d!1564233))

(assert (=> bs!1174644 m!5870992))

(assert (=> bs!1174644 m!5870992))

(assert (=> bs!1174644 m!5871040))

(declare-fun m!5871624 () Bool)

(assert (=> bs!1174644 m!5871624))

(assert (=> b!4870815 d!1564233))

(declare-fun d!1564235 () Bool)

(declare-fun res!2079454 () Bool)

(declare-fun e!3045184 () Bool)

(assert (=> d!1564235 (=> (not res!2079454) (not e!3045184))))

(assert (=> d!1564235 (= res!2079454 (<= (size!36907 (list!17519 (xs!17901 (c!828451 input!585)))) 512))))

(assert (=> d!1564235 (= (inv!71916 (c!828451 input!585)) e!3045184)))

(declare-fun b!4871296 () Bool)

(declare-fun res!2079455 () Bool)

(assert (=> b!4871296 (=> (not res!2079455) (not e!3045184))))

(assert (=> b!4871296 (= res!2079455 (= (csize!29417 (c!828451 input!585)) (size!36907 (list!17519 (xs!17901 (c!828451 input!585))))))))

(declare-fun b!4871297 () Bool)

(assert (=> b!4871297 (= e!3045184 (and (> (csize!29417 (c!828451 input!585)) 0) (<= (csize!29417 (c!828451 input!585)) 512)))))

(assert (= (and d!1564235 res!2079454) b!4871296))

(assert (= (and b!4871296 res!2079455) b!4871297))

(assert (=> d!1564235 m!5871422))

(assert (=> d!1564235 m!5871422))

(declare-fun m!5871626 () Bool)

(assert (=> d!1564235 m!5871626))

(assert (=> b!4871296 m!5871422))

(assert (=> b!4871296 m!5871422))

(assert (=> b!4871296 m!5871626))

(assert (=> b!4870852 d!1564235))

(declare-fun b!4871299 () Bool)

(declare-fun e!3045185 () Bool)

(declare-fun tp!1370596 () Bool)

(declare-fun tp!1370594 () Bool)

(assert (=> b!4871299 (= e!3045185 (and tp!1370596 tp!1370594))))

(declare-fun b!4871298 () Bool)

(assert (=> b!4871298 (= e!3045185 tp_is_empty!35665)))

(assert (=> b!4870893 (= tp!1370551 e!3045185)))

(declare-fun b!4871300 () Bool)

(declare-fun tp!1370597 () Bool)

(assert (=> b!4871300 (= e!3045185 tp!1370597)))

(declare-fun b!4871301 () Bool)

(declare-fun tp!1370595 () Bool)

(declare-fun tp!1370598 () Bool)

(assert (=> b!4871301 (= e!3045185 (and tp!1370595 tp!1370598))))

(assert (= (and b!4870893 (is-ElementMatch!13118 (regex!8043 (h!62434 (t!364180 rules!1164))))) b!4871298))

(assert (= (and b!4870893 (is-Concat!21472 (regex!8043 (h!62434 (t!364180 rules!1164))))) b!4871299))

(assert (= (and b!4870893 (is-Star!13118 (regex!8043 (h!62434 (t!364180 rules!1164))))) b!4871300))

(assert (= (and b!4870893 (is-Union!13118 (regex!8043 (h!62434 (t!364180 rules!1164))))) b!4871301))

(declare-fun e!3045186 () Bool)

(declare-fun b!4871302 () Bool)

(declare-fun tp!1370599 () Bool)

(declare-fun tp!1370600 () Bool)

(assert (=> b!4871302 (= e!3045186 (and (inv!71910 (left!40663 (left!40663 (c!828451 input!585)))) tp!1370599 (inv!71910 (right!40993 (left!40663 (c!828451 input!585)))) tp!1370600))))

(declare-fun b!4871304 () Bool)

(declare-fun e!3045187 () Bool)

(declare-fun tp!1370601 () Bool)

(assert (=> b!4871304 (= e!3045187 tp!1370601)))

(declare-fun b!4871303 () Bool)

(assert (=> b!4871303 (= e!3045186 (and (inv!71917 (xs!17901 (left!40663 (c!828451 input!585)))) e!3045187))))

(assert (=> b!4870867 (= tp!1370525 (and (inv!71910 (left!40663 (c!828451 input!585))) e!3045186))))

(assert (= (and b!4870867 (is-Node!14593 (left!40663 (c!828451 input!585)))) b!4871302))

(assert (= b!4871303 b!4871304))

(assert (= (and b!4870867 (is-Leaf!24326 (left!40663 (c!828451 input!585)))) b!4871303))

(declare-fun m!5871628 () Bool)

(assert (=> b!4871302 m!5871628))

(declare-fun m!5871630 () Bool)

(assert (=> b!4871302 m!5871630))

(declare-fun m!5871632 () Bool)

(assert (=> b!4871303 m!5871632))

(assert (=> b!4870867 m!5871124))

(declare-fun tp!1370602 () Bool)

(declare-fun b!4871305 () Bool)

(declare-fun tp!1370603 () Bool)

(declare-fun e!3045188 () Bool)

(assert (=> b!4871305 (= e!3045188 (and (inv!71910 (left!40663 (right!40993 (c!828451 input!585)))) tp!1370602 (inv!71910 (right!40993 (right!40993 (c!828451 input!585)))) tp!1370603))))

(declare-fun b!4871307 () Bool)

(declare-fun e!3045189 () Bool)

(declare-fun tp!1370604 () Bool)

(assert (=> b!4871307 (= e!3045189 tp!1370604)))

(declare-fun b!4871306 () Bool)

(assert (=> b!4871306 (= e!3045188 (and (inv!71917 (xs!17901 (right!40993 (c!828451 input!585)))) e!3045189))))

(assert (=> b!4870867 (= tp!1370526 (and (inv!71910 (right!40993 (c!828451 input!585))) e!3045188))))

(assert (= (and b!4870867 (is-Node!14593 (right!40993 (c!828451 input!585)))) b!4871305))

(assert (= b!4871306 b!4871307))

(assert (= (and b!4870867 (is-Leaf!24326 (right!40993 (c!828451 input!585)))) b!4871306))

(declare-fun m!5871634 () Bool)

(assert (=> b!4871305 m!5871634))

(declare-fun m!5871636 () Bool)

(assert (=> b!4871305 m!5871636))

(declare-fun m!5871638 () Bool)

(assert (=> b!4871306 m!5871638))

(assert (=> b!4870867 m!5871126))

(declare-fun tp!1370605 () Bool)

(declare-fun b!4871308 () Bool)

(declare-fun tp!1370606 () Bool)

(declare-fun e!3045190 () Bool)

(assert (=> b!4871308 (= e!3045190 (and (inv!71910 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))) tp!1370605 (inv!71910 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))) tp!1370606))))

(declare-fun b!4871310 () Bool)

(declare-fun e!3045191 () Bool)

(declare-fun tp!1370607 () Bool)

(assert (=> b!4871310 (= e!3045191 tp!1370607)))

(declare-fun b!4871309 () Bool)

(assert (=> b!4871309 (= e!3045190 (and (inv!71917 (xs!17901 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))) e!3045191))))

(assert (=> b!4870798 (= tp!1370518 (and (inv!71910 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))) e!3045190))))

(assert (= (and b!4870798 (is-Node!14593 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))) b!4871308))

(assert (= b!4871309 b!4871310))

(assert (= (and b!4870798 (is-Leaf!24326 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))) b!4871309))

(declare-fun m!5871640 () Bool)

(assert (=> b!4871308 m!5871640))

(declare-fun m!5871642 () Bool)

(assert (=> b!4871308 m!5871642))

(declare-fun m!5871644 () Bool)

(assert (=> b!4871309 m!5871644))

(assert (=> b!4870798 m!5871050))

(declare-fun b!4871315 () Bool)

(declare-fun e!3045194 () Bool)

(declare-fun tp!1370610 () Bool)

(assert (=> b!4871315 (= e!3045194 (and tp_is_empty!35665 tp!1370610))))

(assert (=> b!4870869 (= tp!1370527 e!3045194)))

(assert (= (and b!4870869 (is-Cons!55984 (innerList!14681 (xs!17901 (c!828451 input!585))))) b!4871315))

(declare-fun b!4871317 () Bool)

(declare-fun e!3045195 () Bool)

(declare-fun tp!1370613 () Bool)

(declare-fun tp!1370611 () Bool)

(assert (=> b!4871317 (= e!3045195 (and tp!1370613 tp!1370611))))

(declare-fun b!4871316 () Bool)

(assert (=> b!4871316 (= e!3045195 tp_is_empty!35665)))

(assert (=> b!4870882 (= tp!1370541 e!3045195)))

(declare-fun b!4871318 () Bool)

(declare-fun tp!1370614 () Bool)

(assert (=> b!4871318 (= e!3045195 tp!1370614)))

(declare-fun b!4871319 () Bool)

(declare-fun tp!1370612 () Bool)

(declare-fun tp!1370615 () Bool)

(assert (=> b!4871319 (= e!3045195 (and tp!1370612 tp!1370615))))

(assert (= (and b!4870882 (is-ElementMatch!13118 (reg!13447 (regex!8043 (h!62434 rules!1164))))) b!4871316))

(assert (= (and b!4870882 (is-Concat!21472 (reg!13447 (regex!8043 (h!62434 rules!1164))))) b!4871317))

(assert (= (and b!4870882 (is-Star!13118 (reg!13447 (regex!8043 (h!62434 rules!1164))))) b!4871318))

(assert (= (and b!4870882 (is-Union!13118 (reg!13447 (regex!8043 (h!62434 rules!1164))))) b!4871319))

(declare-fun b!4871321 () Bool)

(declare-fun e!3045196 () Bool)

(declare-fun tp!1370618 () Bool)

(declare-fun tp!1370616 () Bool)

(assert (=> b!4871321 (= e!3045196 (and tp!1370618 tp!1370616))))

(declare-fun b!4871320 () Bool)

(assert (=> b!4871320 (= e!3045196 tp_is_empty!35665)))

(assert (=> b!4870881 (= tp!1370540 e!3045196)))

(declare-fun b!4871322 () Bool)

(declare-fun tp!1370619 () Bool)

(assert (=> b!4871322 (= e!3045196 tp!1370619)))

(declare-fun b!4871323 () Bool)

(declare-fun tp!1370617 () Bool)

(declare-fun tp!1370620 () Bool)

(assert (=> b!4871323 (= e!3045196 (and tp!1370617 tp!1370620))))

(assert (= (and b!4870881 (is-ElementMatch!13118 (regOne!26748 (regex!8043 (h!62434 rules!1164))))) b!4871320))

(assert (= (and b!4870881 (is-Concat!21472 (regOne!26748 (regex!8043 (h!62434 rules!1164))))) b!4871321))

(assert (= (and b!4870881 (is-Star!13118 (regOne!26748 (regex!8043 (h!62434 rules!1164))))) b!4871322))

(assert (= (and b!4870881 (is-Union!13118 (regOne!26748 (regex!8043 (h!62434 rules!1164))))) b!4871323))

(declare-fun b!4871325 () Bool)

(declare-fun e!3045197 () Bool)

(declare-fun tp!1370623 () Bool)

(declare-fun tp!1370621 () Bool)

(assert (=> b!4871325 (= e!3045197 (and tp!1370623 tp!1370621))))

(declare-fun b!4871324 () Bool)

(assert (=> b!4871324 (= e!3045197 tp_is_empty!35665)))

(assert (=> b!4870881 (= tp!1370538 e!3045197)))

(declare-fun b!4871326 () Bool)

(declare-fun tp!1370624 () Bool)

(assert (=> b!4871326 (= e!3045197 tp!1370624)))

(declare-fun b!4871327 () Bool)

(declare-fun tp!1370622 () Bool)

(declare-fun tp!1370625 () Bool)

(assert (=> b!4871327 (= e!3045197 (and tp!1370622 tp!1370625))))

(assert (= (and b!4870881 (is-ElementMatch!13118 (regTwo!26748 (regex!8043 (h!62434 rules!1164))))) b!4871324))

(assert (= (and b!4870881 (is-Concat!21472 (regTwo!26748 (regex!8043 (h!62434 rules!1164))))) b!4871325))

(assert (= (and b!4870881 (is-Star!13118 (regTwo!26748 (regex!8043 (h!62434 rules!1164))))) b!4871326))

(assert (= (and b!4870881 (is-Union!13118 (regTwo!26748 (regex!8043 (h!62434 rules!1164))))) b!4871327))

(declare-fun b!4871329 () Bool)

(declare-fun e!3045198 () Bool)

(declare-fun tp!1370628 () Bool)

(declare-fun tp!1370626 () Bool)

(assert (=> b!4871329 (= e!3045198 (and tp!1370628 tp!1370626))))

(declare-fun b!4871328 () Bool)

(assert (=> b!4871328 (= e!3045198 tp_is_empty!35665)))

(assert (=> b!4870883 (= tp!1370539 e!3045198)))

(declare-fun b!4871330 () Bool)

(declare-fun tp!1370629 () Bool)

(assert (=> b!4871330 (= e!3045198 tp!1370629)))

(declare-fun b!4871331 () Bool)

(declare-fun tp!1370627 () Bool)

(declare-fun tp!1370630 () Bool)

(assert (=> b!4871331 (= e!3045198 (and tp!1370627 tp!1370630))))

(assert (= (and b!4870883 (is-ElementMatch!13118 (regOne!26749 (regex!8043 (h!62434 rules!1164))))) b!4871328))

(assert (= (and b!4870883 (is-Concat!21472 (regOne!26749 (regex!8043 (h!62434 rules!1164))))) b!4871329))

(assert (= (and b!4870883 (is-Star!13118 (regOne!26749 (regex!8043 (h!62434 rules!1164))))) b!4871330))

(assert (= (and b!4870883 (is-Union!13118 (regOne!26749 (regex!8043 (h!62434 rules!1164))))) b!4871331))

(declare-fun b!4871333 () Bool)

(declare-fun e!3045199 () Bool)

(declare-fun tp!1370633 () Bool)

(declare-fun tp!1370631 () Bool)

(assert (=> b!4871333 (= e!3045199 (and tp!1370633 tp!1370631))))

(declare-fun b!4871332 () Bool)

(assert (=> b!4871332 (= e!3045199 tp_is_empty!35665)))

(assert (=> b!4870883 (= tp!1370542 e!3045199)))

(declare-fun b!4871334 () Bool)

(declare-fun tp!1370634 () Bool)

(assert (=> b!4871334 (= e!3045199 tp!1370634)))

(declare-fun b!4871335 () Bool)

(declare-fun tp!1370632 () Bool)

(declare-fun tp!1370635 () Bool)

(assert (=> b!4871335 (= e!3045199 (and tp!1370632 tp!1370635))))

(assert (= (and b!4870883 (is-ElementMatch!13118 (regTwo!26749 (regex!8043 (h!62434 rules!1164))))) b!4871332))

(assert (= (and b!4870883 (is-Concat!21472 (regTwo!26749 (regex!8043 (h!62434 rules!1164))))) b!4871333))

(assert (= (and b!4870883 (is-Star!13118 (regTwo!26749 (regex!8043 (h!62434 rules!1164))))) b!4871334))

(assert (= (and b!4870883 (is-Union!13118 (regTwo!26749 (regex!8043 (h!62434 rules!1164))))) b!4871335))

(declare-fun b!4871338 () Bool)

(declare-fun b_free!130743 () Bool)

(declare-fun b_next!131533 () Bool)

(assert (=> b!4871338 (= b_free!130743 (not b_next!131533))))

(declare-fun tp!1370639 () Bool)

(declare-fun b_and!343027 () Bool)

(assert (=> b!4871338 (= tp!1370639 b_and!343027)))

(declare-fun b_free!130745 () Bool)

(declare-fun b_next!131535 () Bool)

(assert (=> b!4871338 (= b_free!130745 (not b_next!131535))))

(declare-fun t!364201 () Bool)

(declare-fun tb!257971 () Bool)

(assert (=> (and b!4871338 (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 (t!364180 rules!1164))))) (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756)))))) t!364201) tb!257971))

(declare-fun result!321148 () Bool)

(assert (= result!321148 result!321122))

(assert (=> d!1564059 t!364201))

(declare-fun b_and!343029 () Bool)

(declare-fun tp!1370638 () Bool)

(assert (=> b!4871338 (= tp!1370638 (and (=> t!364201 result!321148) b_and!343029))))

(declare-fun e!3045201 () Bool)

(assert (=> b!4871338 (= e!3045201 (and tp!1370639 tp!1370638))))

(declare-fun tp!1370636 () Bool)

(declare-fun e!3045200 () Bool)

(declare-fun b!4871337 () Bool)

(assert (=> b!4871337 (= e!3045200 (and tp!1370636 (inv!71906 (tag!8907 (h!62434 (t!364180 (t!364180 rules!1164))))) (inv!71911 (transformation!8043 (h!62434 (t!364180 (t!364180 rules!1164))))) e!3045201))))

(declare-fun b!4871336 () Bool)

(declare-fun e!3045203 () Bool)

(declare-fun tp!1370637 () Bool)

(assert (=> b!4871336 (= e!3045203 (and e!3045200 tp!1370637))))

(assert (=> b!4870892 (= tp!1370552 e!3045203)))

(assert (= b!4871337 b!4871338))

(assert (= b!4871336 b!4871337))

(assert (= (and b!4870892 (is-Cons!55986 (t!364180 (t!364180 rules!1164)))) b!4871336))

(declare-fun m!5871646 () Bool)

(assert (=> b!4871337 m!5871646))

(declare-fun m!5871648 () Bool)

(assert (=> b!4871337 m!5871648))

(declare-fun b_lambda!193677 () Bool)

(assert (= b_lambda!193673 (or (and b!4870756 b_free!130729 (= (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))))) (and b!4870894 b_free!130737 (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))))) (and b!4871338 b_free!130745 (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 (t!364180 rules!1164))))) (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))))) b_lambda!193677)))

(push 1)

(assert (not b!4871098))

(assert (not d!1564127))

(assert (not b!4871094))

(assert (not b!4871034))

(assert (not b!4871064))

(assert (not b!4871204))

(assert (not b!4871102))

(assert (not b!4871173))

(assert (not b!4871244))

(assert (not d!1564133))

(assert (not b!4871060))

(assert (not b!4871103))

(assert (not d!1564119))

(assert (not b!4871250))

(assert (not b!4871327))

(assert (not b!4871172))

(assert (not b!4871329))

(assert (not d!1564221))

(assert (not b!4871183))

(assert (not b!4871309))

(assert (not b!4871063))

(assert (not b!4871325))

(assert b_and!343027)

(assert (not d!1564227))

(assert (not b!4871101))

(assert (not b!4871040))

(assert b_and!343015)

(assert (not b!4871181))

(assert (not b!4871152))

(assert (not b!4871205))

(assert (not b!4871321))

(assert (not b!4871331))

(assert (not b!4871154))

(assert (not b!4871318))

(assert (not b!4871187))

(assert (not b!4871038))

(assert (not b_next!131535))

(assert (not b_next!131519))

(assert (not b!4871323))

(assert (not b_next!131517))

(assert (not b!4871079))

(assert (not b!4871322))

(assert (not b!4871279))

(assert (not b!4871062))

(assert (not b!4871093))

(assert (not b!4871100))

(assert (not d!1564209))

(assert (not b!4871333))

(assert (not b_next!131533))

(assert (not b!4871243))

(assert (not b!4871300))

(assert (not b!4871303))

(assert (not b!4871335))

(assert (not b!4871310))

(assert (not b!4871046))

(assert (not bm!338218))

(assert (not b!4871334))

(assert (not b!4871336))

(assert (not b!4871099))

(assert (not b!4871035))

(assert (not b!4871290))

(assert (not b!4871305))

(assert (not d!1564223))

(assert (not d!1564125))

(assert (not b!4871274))

(assert (not b!4871273))

(assert (not b_next!131525))

(assert (not b!4871228))

(assert (not d!1564129))

(assert (not d!1564213))

(assert (not b!4871275))

(assert (not b!4871315))

(assert (not b!4871319))

(assert (not b!4871045))

(assert (not b!4871039))

(assert (not b_next!131527))

(assert b_and!343007)

(assert (not b!4871278))

(assert (not d!1564207))

(assert (not b!4871280))

(assert b_and!343019)

(assert (not bm!338217))

(assert (not d!1564205))

(assert (not b!4871033))

(assert (not b!4871090))

(assert (not b!4871153))

(assert (not b!4871091))

(assert (not d!1564141))

(assert (not b!4870867))

(assert (not b!4871296))

(assert (not b!4871184))

(assert (not b!4871307))

(assert (not b!4870798))

(assert (not b!4871326))

(assert (not b!4871104))

(assert (not b!4871282))

(assert (not b!4871203))

(assert (not d!1564139))

(assert (not b!4871189))

(assert (not b!4871206))

(assert (not d!1564231))

(assert (not d!1564153))

(assert (not d!1564107))

(assert (not b!4871032))

(assert (not b!4871330))

(assert (not b!4871308))

(assert (not b!4871059))

(assert (not b!4871075))

(assert (not b!4871156))

(assert (not b!4871106))

(assert (not b!4871151))

(assert (not d!1564201))

(assert (not d!1564161))

(assert (not b!4871061))

(assert (not b!4871317))

(assert (not b!4871304))

(assert (not d!1564109))

(assert (not bm!338214))

(assert (not b!4871201))

(assert (not b!4871306))

(assert b_and!343029)

(assert (not d!1564211))

(assert (not d!1564233))

(assert (not b!4871299))

(assert (not d!1564235))

(assert (not b!4871207))

(assert (not b!4871077))

(assert (not b!4871186))

(assert (not b!4871337))

(assert tp_is_empty!35665)

(assert b_and!343017)

(assert (not b!4871105))

(assert (not b!4871301))

(assert (not d!1564137))

(assert (not b!4871179))

(assert (not b!4871249))

(assert (not b!4871202))

(assert (not b!4871226))

(assert (not d!1564111))

(assert (not bm!338219))

(assert (not b!4871242))

(assert (not b!4871036))

(assert (not d!1564183))

(assert (not d!1564173))

(assert (not d!1564159))

(assert (not b!4871302))

(assert (not d!1564229))

(assert (not b!4871272))

(assert (not b!4871013))

(assert (not b!4871277))

(assert (not b_lambda!193677))

(assert (not b!4871230))

(assert (not b!4871171))

(check-sat)

(pop 1)

(push 1)

(assert b_and!343027)

(assert b_and!343015)

(assert (not b_next!131533))

(assert (not b_next!131525))

(assert b_and!343019)

(assert b_and!343029)

(assert b_and!343017)

(assert (not b_next!131517))

(assert (not b_next!131535))

(assert (not b_next!131519))

(assert (not b_next!131527))

(assert b_and!343007)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1564299 () Bool)

(declare-fun lt!1996069 () Int)

(assert (=> d!1564299 (>= lt!1996069 0)))

(declare-fun e!3045312 () Int)

(assert (=> d!1564299 (= lt!1996069 e!3045312)))

(declare-fun c!828577 () Bool)

(assert (=> d!1564299 (= c!828577 (is-Nil!55984 (list!17519 (xs!17901 (c!828451 input!585)))))))

(assert (=> d!1564299 (= (size!36907 (list!17519 (xs!17901 (c!828451 input!585)))) lt!1996069)))

(declare-fun b!4871532 () Bool)

(assert (=> b!4871532 (= e!3045312 0)))

(declare-fun b!4871533 () Bool)

(assert (=> b!4871533 (= e!3045312 (+ 1 (size!36907 (t!364178 (list!17519 (xs!17901 (c!828451 input!585)))))))))

(assert (= (and d!1564299 c!828577) b!4871532))

(assert (= (and d!1564299 (not c!828577)) b!4871533))

(declare-fun m!5871888 () Bool)

(assert (=> b!4871533 m!5871888))

(assert (=> b!4871296 d!1564299))

(declare-fun d!1564301 () Bool)

(assert (=> d!1564301 (= (list!17519 (xs!17901 (c!828451 input!585))) (innerList!14681 (xs!17901 (c!828451 input!585))))))

(assert (=> b!4871296 d!1564301))

(declare-fun d!1564303 () Bool)

(declare-fun res!2079549 () Bool)

(declare-fun e!3045315 () Bool)

(assert (=> d!1564303 (=> (not res!2079549) (not e!3045315))))

(declare-fun validRegex!5869 (Regex!13118) Bool)

(assert (=> d!1564303 (= res!2079549 (validRegex!5869 (regex!8043 (h!62434 rules!1164))))))

(assert (=> d!1564303 (= (ruleValid!3631 thiss!11460 (h!62434 rules!1164)) e!3045315)))

(declare-fun b!4871538 () Bool)

(declare-fun res!2079550 () Bool)

(assert (=> b!4871538 (=> (not res!2079550) (not e!3045315))))

(declare-fun nullable!4542 (Regex!13118) Bool)

(assert (=> b!4871538 (= res!2079550 (not (nullable!4542 (regex!8043 (h!62434 rules!1164)))))))

(declare-fun b!4871539 () Bool)

(assert (=> b!4871539 (= e!3045315 (not (= (tag!8907 (h!62434 rules!1164)) (String!63186 ""))))))

(assert (= (and d!1564303 res!2079549) b!4871538))

(assert (= (and b!4871538 res!2079550) b!4871539))

(declare-fun m!5871890 () Bool)

(assert (=> d!1564303 m!5871890))

(declare-fun m!5871892 () Bool)

(assert (=> b!4871538 m!5871892))

(assert (=> b!4871249 d!1564303))

(declare-fun d!1564305 () Bool)

(assert (=> d!1564305 (= (isEmpty!29965 lt!1995795) (not (is-Some!13791 lt!1995795)))))

(assert (=> d!1564129 d!1564305))

(declare-fun d!1564307 () Bool)

(assert (=> d!1564307 (= (list!17513 (_2!33223 lt!1995963)) (list!17516 (c!828451 (_2!33223 lt!1995963))))))

(declare-fun bs!1174659 () Bool)

(assert (= bs!1174659 d!1564307))

(declare-fun m!5871894 () Bool)

(assert (=> bs!1174659 m!5871894))

(assert (=> b!4871279 d!1564307))

(declare-fun b!4871540 () Bool)

(declare-fun e!3045317 () tuple2!59846)

(declare-fun lt!1996070 () Option!13794)

(declare-fun lt!1996072 () tuple2!59846)

(assert (=> b!4871540 (= e!3045317 (tuple2!59847 (Cons!55987 (_1!33227 (v!49715 lt!1996070)) (_1!33226 lt!1996072)) (_2!33226 lt!1996072)))))

(assert (=> b!4871540 (= lt!1996072 (lexList!2108 thiss!11460 rules!1164 (_2!33227 (v!49715 lt!1996070))))))

(declare-fun b!4871541 () Bool)

(assert (=> b!4871541 (= e!3045317 (tuple2!59847 Nil!55987 (list!17513 (_2!33222 (v!49713 lt!1995775)))))))

(declare-fun b!4871542 () Bool)

(declare-fun e!3045318 () Bool)

(declare-fun e!3045316 () Bool)

(assert (=> b!4871542 (= e!3045318 e!3045316)))

(declare-fun res!2079551 () Bool)

(declare-fun lt!1996071 () tuple2!59846)

(assert (=> b!4871542 (= res!2079551 (< (size!36907 (_2!33226 lt!1996071)) (size!36907 (list!17513 (_2!33222 (v!49713 lt!1995775))))))))

(assert (=> b!4871542 (=> (not res!2079551) (not e!3045316))))

(declare-fun b!4871543 () Bool)

(assert (=> b!4871543 (= e!3045318 (= (_2!33226 lt!1996071) (list!17513 (_2!33222 (v!49713 lt!1995775)))))))

(declare-fun d!1564309 () Bool)

(assert (=> d!1564309 e!3045318))

(declare-fun c!828579 () Bool)

(assert (=> d!1564309 (= c!828579 (> (size!36913 (_1!33226 lt!1996071)) 0))))

(assert (=> d!1564309 (= lt!1996071 e!3045317)))

(declare-fun c!828578 () Bool)

(assert (=> d!1564309 (= c!828578 (is-Some!13793 lt!1996070))))

(assert (=> d!1564309 (= lt!1996070 (maxPrefix!4550 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995775)))))))

(assert (=> d!1564309 (= (lexList!2108 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995775)))) lt!1996071)))

(declare-fun b!4871544 () Bool)

(assert (=> b!4871544 (= e!3045316 (not (isEmpty!29964 (_1!33226 lt!1996071))))))

(assert (= (and d!1564309 c!828578) b!4871540))

(assert (= (and d!1564309 (not c!828578)) b!4871541))

(assert (= (and d!1564309 c!828579) b!4871542))

(assert (= (and d!1564309 (not c!828579)) b!4871543))

(assert (= (and b!4871542 res!2079551) b!4871544))

(declare-fun m!5871896 () Bool)

(assert (=> b!4871540 m!5871896))

(declare-fun m!5871898 () Bool)

(assert (=> b!4871542 m!5871898))

(assert (=> b!4871542 m!5871584))

(declare-fun m!5871900 () Bool)

(assert (=> b!4871542 m!5871900))

(declare-fun m!5871902 () Bool)

(assert (=> d!1564309 m!5871902))

(assert (=> d!1564309 m!5871584))

(declare-fun m!5871904 () Bool)

(assert (=> d!1564309 m!5871904))

(declare-fun m!5871906 () Bool)

(assert (=> b!4871544 m!5871906))

(assert (=> b!4871279 d!1564309))

(declare-fun d!1564311 () Bool)

(assert (=> d!1564311 (= (list!17513 (_2!33222 (v!49713 lt!1995775))) (list!17516 (c!828451 (_2!33222 (v!49713 lt!1995775)))))))

(declare-fun bs!1174660 () Bool)

(assert (= bs!1174660 d!1564311))

(declare-fun m!5871908 () Bool)

(assert (=> bs!1174660 m!5871908))

(assert (=> b!4871279 d!1564311))

(declare-fun d!1564313 () Bool)

(assert (=> d!1564313 (= (inv!71906 (tag!8907 (h!62434 (t!364180 (t!364180 rules!1164))))) (= (mod (str.len (value!258368 (tag!8907 (h!62434 (t!364180 (t!364180 rules!1164)))))) 2) 0))))

(assert (=> b!4871337 d!1564313))

(declare-fun d!1564315 () Bool)

(declare-fun res!2079552 () Bool)

(declare-fun e!3045319 () Bool)

(assert (=> d!1564315 (=> (not res!2079552) (not e!3045319))))

(assert (=> d!1564315 (= res!2079552 (semiInverseModEq!3547 (toChars!10773 (transformation!8043 (h!62434 (t!364180 (t!364180 rules!1164))))) (toValue!10914 (transformation!8043 (h!62434 (t!364180 (t!364180 rules!1164)))))))))

(assert (=> d!1564315 (= (inv!71911 (transformation!8043 (h!62434 (t!364180 (t!364180 rules!1164))))) e!3045319)))

(declare-fun b!4871545 () Bool)

(assert (=> b!4871545 (= e!3045319 (equivClasses!3426 (toChars!10773 (transformation!8043 (h!62434 (t!364180 (t!364180 rules!1164))))) (toValue!10914 (transformation!8043 (h!62434 (t!364180 (t!364180 rules!1164)))))))))

(assert (= (and d!1564315 res!2079552) b!4871545))

(declare-fun m!5871910 () Bool)

(assert (=> d!1564315 m!5871910))

(declare-fun m!5871912 () Bool)

(assert (=> b!4871545 m!5871912))

(assert (=> b!4871337 d!1564315))

(declare-fun d!1564317 () Bool)

(declare-fun lt!1996073 () Int)

(assert (=> d!1564317 (= lt!1996073 (size!36907 (list!17513 (_2!33223 lt!1995963))))))

(assert (=> d!1564317 (= lt!1996073 (size!36915 (c!828451 (_2!33223 lt!1995963))))))

(assert (=> d!1564317 (= (size!36909 (_2!33223 lt!1995963)) lt!1996073)))

(declare-fun bs!1174661 () Bool)

(assert (= bs!1174661 d!1564317))

(assert (=> bs!1174661 m!5871602))

(assert (=> bs!1174661 m!5871602))

(declare-fun m!5871914 () Bool)

(assert (=> bs!1174661 m!5871914))

(declare-fun m!5871916 () Bool)

(assert (=> bs!1174661 m!5871916))

(assert (=> b!4871275 d!1564317))

(declare-fun d!1564319 () Bool)

(declare-fun lt!1996074 () Int)

(assert (=> d!1564319 (= lt!1996074 (size!36907 (list!17513 (_2!33222 (v!49713 lt!1995775)))))))

(assert (=> d!1564319 (= lt!1996074 (size!36915 (c!828451 (_2!33222 (v!49713 lt!1995775)))))))

(assert (=> d!1564319 (= (size!36909 (_2!33222 (v!49713 lt!1995775))) lt!1996074)))

(declare-fun bs!1174662 () Bool)

(assert (= bs!1174662 d!1564319))

(assert (=> bs!1174662 m!5871584))

(assert (=> bs!1174662 m!5871584))

(assert (=> bs!1174662 m!5871900))

(declare-fun m!5871918 () Bool)

(assert (=> bs!1174662 m!5871918))

(assert (=> b!4871275 d!1564319))

(declare-fun d!1564321 () Bool)

(declare-fun lt!1996077 () Int)

(assert (=> d!1564321 (>= lt!1996077 0)))

(declare-fun e!3045322 () Int)

(assert (=> d!1564321 (= lt!1996077 e!3045322)))

(declare-fun c!828582 () Bool)

(assert (=> d!1564321 (= c!828582 (is-Nil!55987 (list!17515 (_1!33223 lt!1995776))))))

(assert (=> d!1564321 (= (size!36913 (list!17515 (_1!33223 lt!1995776))) lt!1996077)))

(declare-fun b!4871550 () Bool)

(assert (=> b!4871550 (= e!3045322 0)))

(declare-fun b!4871551 () Bool)

(assert (=> b!4871551 (= e!3045322 (+ 1 (size!36913 (t!364181 (list!17515 (_1!33223 lt!1995776))))))))

(assert (= (and d!1564321 c!828582) b!4871550))

(assert (= (and d!1564321 (not c!828582)) b!4871551))

(declare-fun m!5871920 () Bool)

(assert (=> b!4871551 m!5871920))

(assert (=> d!1564173 d!1564321))

(assert (=> d!1564173 d!1564223))

(declare-fun d!1564323 () Bool)

(declare-fun lt!1996080 () Int)

(assert (=> d!1564323 (= lt!1996080 (size!36913 (list!17521 (c!828453 (_1!33223 lt!1995776)))))))

(assert (=> d!1564323 (= lt!1996080 (ite (is-Empty!14594 (c!828453 (_1!33223 lt!1995776))) 0 (ite (is-Leaf!24327 (c!828453 (_1!33223 lt!1995776))) (csize!29419 (c!828453 (_1!33223 lt!1995776))) (csize!29418 (c!828453 (_1!33223 lt!1995776))))))))

(assert (=> d!1564323 (= (size!36914 (c!828453 (_1!33223 lt!1995776))) lt!1996080)))

(declare-fun bs!1174663 () Bool)

(assert (= bs!1174663 d!1564323))

(assert (=> bs!1174663 m!5871604))

(assert (=> bs!1174663 m!5871604))

(declare-fun m!5871922 () Bool)

(assert (=> bs!1174663 m!5871922))

(assert (=> d!1564173 d!1564323))

(declare-fun d!1564325 () Bool)

(declare-fun lt!1996083 () Bool)

(declare-fun content!9983 (List!56116) (Set String!63185))

(assert (=> d!1564325 (= lt!1996083 (set.member (tag!8907 (h!62434 rules!1164)) (content!9983 Nil!55992)))))

(declare-fun e!3045328 () Bool)

(assert (=> d!1564325 (= lt!1996083 e!3045328)))

(declare-fun res!2079558 () Bool)

(assert (=> d!1564325 (=> (not res!2079558) (not e!3045328))))

(assert (=> d!1564325 (= res!2079558 (is-Cons!55992 Nil!55992))))

(assert (=> d!1564325 (= (contains!19398 Nil!55992 (tag!8907 (h!62434 rules!1164))) lt!1996083)))

(declare-fun b!4871556 () Bool)

(declare-fun e!3045327 () Bool)

(assert (=> b!4871556 (= e!3045328 e!3045327)))

(declare-fun res!2079557 () Bool)

(assert (=> b!4871556 (=> res!2079557 e!3045327)))

(assert (=> b!4871556 (= res!2079557 (= (h!62440 Nil!55992) (tag!8907 (h!62434 rules!1164))))))

(declare-fun b!4871557 () Bool)

(assert (=> b!4871557 (= e!3045327 (contains!19398 (t!364190 Nil!55992) (tag!8907 (h!62434 rules!1164))))))

(assert (= (and d!1564325 res!2079558) b!4871556))

(assert (= (and b!4871556 (not res!2079557)) b!4871557))

(declare-fun m!5871924 () Bool)

(assert (=> d!1564325 m!5871924))

(declare-fun m!5871926 () Bool)

(assert (=> d!1564325 m!5871926))

(declare-fun m!5871928 () Bool)

(assert (=> b!4871557 m!5871928))

(assert (=> b!4871045 d!1564325))

(declare-fun d!1564327 () Bool)

(assert (=> d!1564327 (= (head!10415 lt!1995792) (h!62432 lt!1995792))))

(assert (=> b!4871242 d!1564327))

(declare-fun d!1564329 () Bool)

(assert (=> d!1564329 (= (head!10415 lt!1995796) (h!62432 lt!1995796))))

(assert (=> b!4871242 d!1564329))

(declare-fun d!1564331 () Bool)

(assert (=> d!1564331 (= (height!1930 (left!40663 (c!828451 input!585))) (ite (is-Empty!14593 (left!40663 (c!828451 input!585))) 0 (ite (is-Leaf!24326 (left!40663 (c!828451 input!585))) 1 (cheight!14804 (left!40663 (c!828451 input!585))))))))

(assert (=> b!4871062 d!1564331))

(declare-fun d!1564333 () Bool)

(assert (=> d!1564333 (= (height!1930 (right!40993 (c!828451 input!585))) (ite (is-Empty!14593 (right!40993 (c!828451 input!585))) 0 (ite (is-Leaf!24326 (right!40993 (c!828451 input!585))) 1 (cheight!14804 (right!40993 (c!828451 input!585))))))))

(assert (=> b!4871062 d!1564333))

(declare-fun d!1564335 () Bool)

(declare-fun lt!1996084 () Int)

(assert (=> d!1564335 (>= lt!1996084 0)))

(declare-fun e!3045329 () Int)

(assert (=> d!1564335 (= lt!1996084 e!3045329)))

(declare-fun c!828583 () Bool)

(assert (=> d!1564335 (= c!828583 (is-Nil!55987 (_1!33226 lt!1995872)))))

(assert (=> d!1564335 (= (size!36913 (_1!33226 lt!1995872)) lt!1996084)))

(declare-fun b!4871558 () Bool)

(assert (=> b!4871558 (= e!3045329 0)))

(declare-fun b!4871559 () Bool)

(assert (=> b!4871559 (= e!3045329 (+ 1 (size!36913 (t!364181 (_1!33226 lt!1995872)))))))

(assert (= (and d!1564335 c!828583) b!4871558))

(assert (= (and d!1564335 (not c!828583)) b!4871559))

(declare-fun m!5871930 () Bool)

(assert (=> b!4871559 m!5871930))

(assert (=> d!1564127 d!1564335))

(declare-fun call!338233 () Option!13794)

(declare-fun bm!338228 () Bool)

(assert (=> bm!338228 (= call!338233 (maxPrefixOneRule!3492 thiss!11460 (h!62434 rules!1164) (list!17513 (_2!33222 (v!49713 lt!1995756)))))))

(declare-fun b!4871560 () Bool)

(declare-fun res!2079559 () Bool)

(declare-fun e!3045332 () Bool)

(assert (=> b!4871560 (=> (not res!2079559) (not e!3045332))))

(declare-fun lt!1996085 () Option!13794)

(assert (=> b!4871560 (= res!2079559 (= (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1996085)))) (originalCharacters!8366 (_1!33227 (get!19236 lt!1996085)))))))

(declare-fun b!4871561 () Bool)

(declare-fun e!3045331 () Option!13794)

(declare-fun lt!1996086 () Option!13794)

(declare-fun lt!1996089 () Option!13794)

(assert (=> b!4871561 (= e!3045331 (ite (and (is-None!13793 lt!1996086) (is-None!13793 lt!1996089)) None!13793 (ite (is-None!13793 lt!1996089) lt!1996086 (ite (is-None!13793 lt!1996086) lt!1996089 (ite (>= (size!36905 (_1!33227 (v!49715 lt!1996086))) (size!36905 (_1!33227 (v!49715 lt!1996089)))) lt!1996086 lt!1996089)))))))

(assert (=> b!4871561 (= lt!1996086 call!338233)))

(assert (=> b!4871561 (= lt!1996089 (maxPrefix!4550 thiss!11460 (t!364180 rules!1164) (list!17513 (_2!33222 (v!49713 lt!1995756)))))))

(declare-fun b!4871562 () Bool)

(declare-fun e!3045330 () Bool)

(assert (=> b!4871562 (= e!3045330 e!3045332)))

(declare-fun res!2079564 () Bool)

(assert (=> b!4871562 (=> (not res!2079564) (not e!3045332))))

(assert (=> b!4871562 (= res!2079564 (isDefined!10851 lt!1996085))))

(declare-fun b!4871563 () Bool)

(declare-fun res!2079560 () Bool)

(assert (=> b!4871563 (=> (not res!2079560) (not e!3045332))))

(assert (=> b!4871563 (= res!2079560 (matchR!6493 (regex!8043 (rule!11181 (_1!33227 (get!19236 lt!1996085)))) (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1996085))))))))

(declare-fun b!4871564 () Bool)

(declare-fun res!2079565 () Bool)

(assert (=> b!4871564 (=> (not res!2079565) (not e!3045332))))

(assert (=> b!4871564 (= res!2079565 (= (++!12192 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1996085)))) (_2!33227 (get!19236 lt!1996085))) (list!17513 (_2!33222 (v!49713 lt!1995756)))))))

(declare-fun d!1564337 () Bool)

(assert (=> d!1564337 e!3045330))

(declare-fun res!2079561 () Bool)

(assert (=> d!1564337 (=> res!2079561 e!3045330)))

(assert (=> d!1564337 (= res!2079561 (isEmpty!29962 lt!1996085))))

(assert (=> d!1564337 (= lt!1996085 e!3045331)))

(declare-fun c!828584 () Bool)

(assert (=> d!1564337 (= c!828584 (and (is-Cons!55986 rules!1164) (is-Nil!55986 (t!364180 rules!1164))))))

(declare-fun lt!1996088 () Unit!145974)

(declare-fun lt!1996087 () Unit!145974)

(assert (=> d!1564337 (= lt!1996088 lt!1996087)))

(assert (=> d!1564337 (isPrefix!4767 (list!17513 (_2!33222 (v!49713 lt!1995756))) (list!17513 (_2!33222 (v!49713 lt!1995756))))))

(assert (=> d!1564337 (= lt!1996087 (lemmaIsPrefixRefl!3164 (list!17513 (_2!33222 (v!49713 lt!1995756))) (list!17513 (_2!33222 (v!49713 lt!1995756)))))))

(assert (=> d!1564337 (rulesValidInductive!3022 thiss!11460 rules!1164)))

(assert (=> d!1564337 (= (maxPrefix!4550 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756)))) lt!1996085)))

(declare-fun b!4871565 () Bool)

(assert (=> b!4871565 (= e!3045331 call!338233)))

(declare-fun b!4871566 () Bool)

(declare-fun res!2079562 () Bool)

(assert (=> b!4871566 (=> (not res!2079562) (not e!3045332))))

(assert (=> b!4871566 (= res!2079562 (< (size!36907 (_2!33227 (get!19236 lt!1996085))) (size!36907 (list!17513 (_2!33222 (v!49713 lt!1995756))))))))

(declare-fun b!4871567 () Bool)

(assert (=> b!4871567 (= e!3045332 (contains!19397 rules!1164 (rule!11181 (_1!33227 (get!19236 lt!1996085)))))))

(declare-fun b!4871568 () Bool)

(declare-fun res!2079563 () Bool)

(assert (=> b!4871568 (=> (not res!2079563) (not e!3045332))))

(assert (=> b!4871568 (= res!2079563 (= (value!258369 (_1!33227 (get!19236 lt!1996085))) (apply!13503 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1996085)))) (seqFromList!5899 (originalCharacters!8366 (_1!33227 (get!19236 lt!1996085)))))))))

(assert (= (and d!1564337 c!828584) b!4871565))

(assert (= (and d!1564337 (not c!828584)) b!4871561))

(assert (= (or b!4871565 b!4871561) bm!338228))

(assert (= (and d!1564337 (not res!2079561)) b!4871562))

(assert (= (and b!4871562 res!2079564) b!4871560))

(assert (= (and b!4871560 res!2079559) b!4871566))

(assert (= (and b!4871566 res!2079562) b!4871564))

(assert (= (and b!4871564 res!2079565) b!4871568))

(assert (= (and b!4871568 res!2079563) b!4871563))

(assert (= (and b!4871563 res!2079560) b!4871567))

(declare-fun m!5871932 () Bool)

(assert (=> b!4871562 m!5871932))

(assert (=> bm!338228 m!5870992))

(declare-fun m!5871934 () Bool)

(assert (=> bm!338228 m!5871934))

(declare-fun m!5871936 () Bool)

(assert (=> b!4871567 m!5871936))

(declare-fun m!5871938 () Bool)

(assert (=> b!4871567 m!5871938))

(assert (=> b!4871564 m!5871936))

(declare-fun m!5871940 () Bool)

(assert (=> b!4871564 m!5871940))

(assert (=> b!4871564 m!5871940))

(declare-fun m!5871942 () Bool)

(assert (=> b!4871564 m!5871942))

(assert (=> b!4871564 m!5871942))

(declare-fun m!5871944 () Bool)

(assert (=> b!4871564 m!5871944))

(assert (=> b!4871563 m!5871936))

(assert (=> b!4871563 m!5871940))

(assert (=> b!4871563 m!5871940))

(assert (=> b!4871563 m!5871942))

(assert (=> b!4871563 m!5871942))

(declare-fun m!5871946 () Bool)

(assert (=> b!4871563 m!5871946))

(declare-fun m!5871948 () Bool)

(assert (=> d!1564337 m!5871948))

(assert (=> d!1564337 m!5870992))

(assert (=> d!1564337 m!5870992))

(declare-fun m!5871950 () Bool)

(assert (=> d!1564337 m!5871950))

(assert (=> d!1564337 m!5870992))

(assert (=> d!1564337 m!5870992))

(declare-fun m!5871952 () Bool)

(assert (=> d!1564337 m!5871952))

(assert (=> d!1564337 m!5871096))

(assert (=> b!4871568 m!5871936))

(declare-fun m!5871954 () Bool)

(assert (=> b!4871568 m!5871954))

(assert (=> b!4871568 m!5871954))

(declare-fun m!5871956 () Bool)

(assert (=> b!4871568 m!5871956))

(assert (=> b!4871566 m!5871936))

(declare-fun m!5871958 () Bool)

(assert (=> b!4871566 m!5871958))

(assert (=> b!4871566 m!5870992))

(assert (=> b!4871566 m!5871040))

(assert (=> b!4871560 m!5871936))

(assert (=> b!4871560 m!5871940))

(assert (=> b!4871560 m!5871940))

(assert (=> b!4871560 m!5871942))

(assert (=> b!4871561 m!5870992))

(declare-fun m!5871960 () Bool)

(assert (=> b!4871561 m!5871960))

(assert (=> d!1564127 d!1564337))

(declare-fun d!1564339 () Bool)

(assert (=> d!1564339 (= (get!19235 lt!1995878) (v!49713 lt!1995878))))

(assert (=> b!4871102 d!1564339))

(declare-fun d!1564341 () Bool)

(assert (=> d!1564341 (= (get!19236 (maxPrefixZipper!564 thiss!11460 (t!364180 rules!1164) (list!17513 input!585))) (v!49715 (maxPrefixZipper!564 thiss!11460 (t!364180 rules!1164) (list!17513 input!585))))))

(assert (=> b!4871102 d!1564341))

(declare-fun lt!1996093 () Option!13794)

(declare-fun d!1564343 () Bool)

(assert (=> d!1564343 (= lt!1996093 (maxPrefix!4550 thiss!11460 (t!364180 rules!1164) (list!17513 input!585)))))

(declare-fun e!3045333 () Option!13794)

(assert (=> d!1564343 (= lt!1996093 e!3045333)))

(declare-fun c!828585 () Bool)

(assert (=> d!1564343 (= c!828585 (and (is-Cons!55986 (t!364180 rules!1164)) (is-Nil!55986 (t!364180 (t!364180 rules!1164)))))))

(declare-fun lt!1996094 () Unit!145974)

(declare-fun lt!1996092 () Unit!145974)

(assert (=> d!1564343 (= lt!1996094 lt!1996092)))

(assert (=> d!1564343 (isPrefix!4767 (list!17513 input!585) (list!17513 input!585))))

(assert (=> d!1564343 (= lt!1996092 (lemmaIsPrefixRefl!3164 (list!17513 input!585) (list!17513 input!585)))))

(assert (=> d!1564343 (rulesValidInductive!3022 thiss!11460 (t!364180 rules!1164))))

(assert (=> d!1564343 (= (maxPrefixZipper!564 thiss!11460 (t!364180 rules!1164) (list!17513 input!585)) lt!1996093)))

(declare-fun call!338234 () Option!13794)

(declare-fun bm!338229 () Bool)

(assert (=> bm!338229 (= call!338234 (maxPrefixOneRuleZipper!226 thiss!11460 (h!62434 (t!364180 rules!1164)) (list!17513 input!585)))))

(declare-fun b!4871569 () Bool)

(assert (=> b!4871569 (= e!3045333 call!338234)))

(declare-fun b!4871570 () Bool)

(declare-fun lt!1996091 () Option!13794)

(declare-fun lt!1996090 () Option!13794)

(assert (=> b!4871570 (= e!3045333 (ite (and (is-None!13793 lt!1996091) (is-None!13793 lt!1996090)) None!13793 (ite (is-None!13793 lt!1996090) lt!1996091 (ite (is-None!13793 lt!1996091) lt!1996090 (ite (>= (size!36905 (_1!33227 (v!49715 lt!1996091))) (size!36905 (_1!33227 (v!49715 lt!1996090)))) lt!1996091 lt!1996090)))))))

(assert (=> b!4871570 (= lt!1996091 call!338234)))

(assert (=> b!4871570 (= lt!1996090 (maxPrefixZipper!564 thiss!11460 (t!364180 (t!364180 rules!1164)) (list!17513 input!585)))))

(assert (= (and d!1564343 c!828585) b!4871569))

(assert (= (and d!1564343 (not c!828585)) b!4871570))

(assert (= (or b!4871569 b!4871570) bm!338229))

(assert (=> d!1564343 m!5870998))

(assert (=> d!1564343 m!5871270))

(assert (=> d!1564343 m!5870998))

(assert (=> d!1564343 m!5870998))

(assert (=> d!1564343 m!5871236))

(assert (=> d!1564343 m!5870998))

(assert (=> d!1564343 m!5870998))

(assert (=> d!1564343 m!5871238))

(assert (=> d!1564343 m!5871338))

(assert (=> bm!338229 m!5870998))

(declare-fun m!5871962 () Bool)

(assert (=> bm!338229 m!5871962))

(assert (=> b!4871570 m!5870998))

(declare-fun m!5871964 () Bool)

(assert (=> b!4871570 m!5871964))

(assert (=> b!4871102 d!1564343))

(assert (=> b!4871102 d!1564069))

(assert (=> d!1564235 d!1564299))

(assert (=> d!1564235 d!1564301))

(declare-fun call!338235 () Option!13794)

(declare-fun bm!338230 () Bool)

(assert (=> bm!338230 (= call!338235 (maxPrefixOneRule!3492 thiss!11460 (h!62434 (t!364180 rules!1164)) (list!17513 input!585)))))

(declare-fun b!4871571 () Bool)

(declare-fun res!2079566 () Bool)

(declare-fun e!3045336 () Bool)

(assert (=> b!4871571 (=> (not res!2079566) (not e!3045336))))

(declare-fun lt!1996095 () Option!13794)

(assert (=> b!4871571 (= res!2079566 (= (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1996095)))) (originalCharacters!8366 (_1!33227 (get!19236 lt!1996095)))))))

(declare-fun b!4871572 () Bool)

(declare-fun e!3045335 () Option!13794)

(declare-fun lt!1996096 () Option!13794)

(declare-fun lt!1996099 () Option!13794)

(assert (=> b!4871572 (= e!3045335 (ite (and (is-None!13793 lt!1996096) (is-None!13793 lt!1996099)) None!13793 (ite (is-None!13793 lt!1996099) lt!1996096 (ite (is-None!13793 lt!1996096) lt!1996099 (ite (>= (size!36905 (_1!33227 (v!49715 lt!1996096))) (size!36905 (_1!33227 (v!49715 lt!1996099)))) lt!1996096 lt!1996099)))))))

(assert (=> b!4871572 (= lt!1996096 call!338235)))

(assert (=> b!4871572 (= lt!1996099 (maxPrefix!4550 thiss!11460 (t!364180 (t!364180 rules!1164)) (list!17513 input!585)))))

(declare-fun b!4871573 () Bool)

(declare-fun e!3045334 () Bool)

(assert (=> b!4871573 (= e!3045334 e!3045336)))

(declare-fun res!2079571 () Bool)

(assert (=> b!4871573 (=> (not res!2079571) (not e!3045336))))

(assert (=> b!4871573 (= res!2079571 (isDefined!10851 lt!1996095))))

(declare-fun b!4871574 () Bool)

(declare-fun res!2079567 () Bool)

(assert (=> b!4871574 (=> (not res!2079567) (not e!3045336))))

(assert (=> b!4871574 (= res!2079567 (matchR!6493 (regex!8043 (rule!11181 (_1!33227 (get!19236 lt!1996095)))) (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1996095))))))))

(declare-fun b!4871575 () Bool)

(declare-fun res!2079572 () Bool)

(assert (=> b!4871575 (=> (not res!2079572) (not e!3045336))))

(assert (=> b!4871575 (= res!2079572 (= (++!12192 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1996095)))) (_2!33227 (get!19236 lt!1996095))) (list!17513 input!585)))))

(declare-fun d!1564345 () Bool)

(assert (=> d!1564345 e!3045334))

(declare-fun res!2079568 () Bool)

(assert (=> d!1564345 (=> res!2079568 e!3045334)))

(assert (=> d!1564345 (= res!2079568 (isEmpty!29962 lt!1996095))))

(assert (=> d!1564345 (= lt!1996095 e!3045335)))

(declare-fun c!828586 () Bool)

(assert (=> d!1564345 (= c!828586 (and (is-Cons!55986 (t!364180 rules!1164)) (is-Nil!55986 (t!364180 (t!364180 rules!1164)))))))

(declare-fun lt!1996098 () Unit!145974)

(declare-fun lt!1996097 () Unit!145974)

(assert (=> d!1564345 (= lt!1996098 lt!1996097)))

(assert (=> d!1564345 (isPrefix!4767 (list!17513 input!585) (list!17513 input!585))))

(assert (=> d!1564345 (= lt!1996097 (lemmaIsPrefixRefl!3164 (list!17513 input!585) (list!17513 input!585)))))

(assert (=> d!1564345 (rulesValidInductive!3022 thiss!11460 (t!364180 rules!1164))))

(assert (=> d!1564345 (= (maxPrefix!4550 thiss!11460 (t!364180 rules!1164) (list!17513 input!585)) lt!1996095)))

(declare-fun b!4871576 () Bool)

(assert (=> b!4871576 (= e!3045335 call!338235)))

(declare-fun b!4871577 () Bool)

(declare-fun res!2079569 () Bool)

(assert (=> b!4871577 (=> (not res!2079569) (not e!3045336))))

(assert (=> b!4871577 (= res!2079569 (< (size!36907 (_2!33227 (get!19236 lt!1996095))) (size!36907 (list!17513 input!585))))))

(declare-fun b!4871578 () Bool)

(assert (=> b!4871578 (= e!3045336 (contains!19397 (t!364180 rules!1164) (rule!11181 (_1!33227 (get!19236 lt!1996095)))))))

(declare-fun b!4871579 () Bool)

(declare-fun res!2079570 () Bool)

(assert (=> b!4871579 (=> (not res!2079570) (not e!3045336))))

(assert (=> b!4871579 (= res!2079570 (= (value!258369 (_1!33227 (get!19236 lt!1996095))) (apply!13503 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1996095)))) (seqFromList!5899 (originalCharacters!8366 (_1!33227 (get!19236 lt!1996095)))))))))

(assert (= (and d!1564345 c!828586) b!4871576))

(assert (= (and d!1564345 (not c!828586)) b!4871572))

(assert (= (or b!4871576 b!4871572) bm!338230))

(assert (= (and d!1564345 (not res!2079568)) b!4871573))

(assert (= (and b!4871573 res!2079571) b!4871571))

(assert (= (and b!4871571 res!2079566) b!4871577))

(assert (= (and b!4871577 res!2079569) b!4871575))

(assert (= (and b!4871575 res!2079572) b!4871579))

(assert (= (and b!4871579 res!2079570) b!4871574))

(assert (= (and b!4871574 res!2079567) b!4871578))

(declare-fun m!5871966 () Bool)

(assert (=> b!4871573 m!5871966))

(assert (=> bm!338230 m!5870998))

(declare-fun m!5871968 () Bool)

(assert (=> bm!338230 m!5871968))

(declare-fun m!5871970 () Bool)

(assert (=> b!4871578 m!5871970))

(declare-fun m!5871972 () Bool)

(assert (=> b!4871578 m!5871972))

(assert (=> b!4871575 m!5871970))

(declare-fun m!5871974 () Bool)

(assert (=> b!4871575 m!5871974))

(assert (=> b!4871575 m!5871974))

(declare-fun m!5871976 () Bool)

(assert (=> b!4871575 m!5871976))

(assert (=> b!4871575 m!5871976))

(declare-fun m!5871978 () Bool)

(assert (=> b!4871575 m!5871978))

(assert (=> b!4871574 m!5871970))

(assert (=> b!4871574 m!5871974))

(assert (=> b!4871574 m!5871974))

(assert (=> b!4871574 m!5871976))

(assert (=> b!4871574 m!5871976))

(declare-fun m!5871980 () Bool)

(assert (=> b!4871574 m!5871980))

(declare-fun m!5871982 () Bool)

(assert (=> d!1564345 m!5871982))

(assert (=> d!1564345 m!5870998))

(assert (=> d!1564345 m!5870998))

(assert (=> d!1564345 m!5871236))

(assert (=> d!1564345 m!5870998))

(assert (=> d!1564345 m!5870998))

(assert (=> d!1564345 m!5871238))

(assert (=> d!1564345 m!5871338))

(assert (=> b!4871579 m!5871970))

(declare-fun m!5871984 () Bool)

(assert (=> b!4871579 m!5871984))

(assert (=> b!4871579 m!5871984))

(declare-fun m!5871986 () Bool)

(assert (=> b!4871579 m!5871986))

(assert (=> b!4871577 m!5871970))

(declare-fun m!5871988 () Bool)

(assert (=> b!4871577 m!5871988))

(assert (=> b!4871577 m!5870998))

(assert (=> b!4871577 m!5871268))

(assert (=> b!4871571 m!5871970))

(assert (=> b!4871571 m!5871974))

(assert (=> b!4871571 m!5871974))

(assert (=> b!4871571 m!5871976))

(assert (=> b!4871572 m!5870998))

(declare-fun m!5871990 () Bool)

(assert (=> b!4871572 m!5871990))

(assert (=> b!4871033 d!1564345))

(declare-fun d!1564347 () Bool)

(declare-fun dynLambda!22483 (Int BalanceConc!28628) TokenValue!8353)

(assert (=> d!1564347 (= (apply!13503 (transformation!8043 (h!62434 rules!1164)) (_1!33231 lt!1995912)) (dynLambda!22483 (toValue!10914 (transformation!8043 (h!62434 rules!1164))) (_1!33231 lt!1995912)))))

(declare-fun b_lambda!193681 () Bool)

(assert (=> (not b_lambda!193681) (not d!1564347)))

(declare-fun t!364207 () Bool)

(declare-fun tb!257975 () Bool)

(assert (=> (and b!4870756 (= (toValue!10914 (transformation!8043 (h!62434 rules!1164))) (toValue!10914 (transformation!8043 (h!62434 rules!1164)))) t!364207) tb!257975))

(declare-fun result!321154 () Bool)

(declare-fun inv!21 (TokenValue!8353) Bool)

(assert (=> tb!257975 (= result!321154 (inv!21 (dynLambda!22483 (toValue!10914 (transformation!8043 (h!62434 rules!1164))) (_1!33231 lt!1995912))))))

(declare-fun m!5871992 () Bool)

(assert (=> tb!257975 m!5871992))

(assert (=> d!1564347 t!364207))

(declare-fun b_and!343035 () Bool)

(assert (= b_and!343007 (and (=> t!364207 result!321154) b_and!343035)))

(declare-fun t!364209 () Bool)

(declare-fun tb!257977 () Bool)

(assert (=> (and b!4870894 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toValue!10914 (transformation!8043 (h!62434 rules!1164)))) t!364209) tb!257977))

(declare-fun result!321158 () Bool)

(assert (= result!321158 result!321154))

(assert (=> d!1564347 t!364209))

(declare-fun b_and!343037 () Bool)

(assert (= b_and!343017 (and (=> t!364209 result!321158) b_and!343037)))

(declare-fun t!364211 () Bool)

(declare-fun tb!257979 () Bool)

(assert (=> (and b!4871338 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 (t!364180 rules!1164))))) (toValue!10914 (transformation!8043 (h!62434 rules!1164)))) t!364211) tb!257979))

(declare-fun result!321160 () Bool)

(assert (= result!321160 result!321154))

(assert (=> d!1564347 t!364211))

(declare-fun b_and!343039 () Bool)

(assert (= b_and!343027 (and (=> t!364211 result!321160) b_and!343039)))

(declare-fun m!5871994 () Bool)

(assert (=> d!1564347 m!5871994))

(assert (=> b!4871153 d!1564347))

(declare-fun d!1564349 () Bool)

(declare-fun fromListB!2680 (List!56108) BalanceConc!28628)

(assert (=> d!1564349 (= (seqFromList!5899 (list!17513 (_1!33231 lt!1995912))) (fromListB!2680 (list!17513 (_1!33231 lt!1995912))))))

(declare-fun bs!1174664 () Bool)

(assert (= bs!1174664 d!1564349))

(assert (=> bs!1174664 m!5871402))

(declare-fun m!5871996 () Bool)

(assert (=> bs!1174664 m!5871996))

(assert (=> b!4871153 d!1564349))

(declare-fun bs!1174665 () Bool)

(declare-fun d!1564351 () Bool)

(assert (= bs!1174665 (and d!1564351 d!1564211)))

(declare-fun lambda!243528 () Int)

(assert (=> bs!1174665 (= lambda!243528 lambda!243511)))

(declare-fun b!4871588 () Bool)

(declare-fun e!3045344 () Bool)

(assert (=> b!4871588 (= e!3045344 true)))

(assert (=> d!1564351 e!3045344))

(assert (= d!1564351 b!4871588))

(assert (=> b!4871588 (< (dynLambda!22475 order!25227 (toValue!10914 (transformation!8043 (h!62434 rules!1164)))) (dynLambda!22478 order!25233 lambda!243528))))

(assert (=> b!4871588 (< (dynLambda!22477 order!25231 (toChars!10773 (transformation!8043 (h!62434 rules!1164)))) (dynLambda!22478 order!25233 lambda!243528))))

(assert (=> d!1564351 (= (dynLambda!22483 (toValue!10914 (transformation!8043 (h!62434 rules!1164))) (_1!33231 lt!1995912)) (dynLambda!22483 (toValue!10914 (transformation!8043 (h!62434 rules!1164))) (seqFromList!5899 (list!17513 (_1!33231 lt!1995912)))))))

(declare-fun lt!1996102 () Unit!145974)

(declare-fun Forall2of!435 (Int BalanceConc!28628 BalanceConc!28628) Unit!145974)

(assert (=> d!1564351 (= lt!1996102 (Forall2of!435 lambda!243528 (_1!33231 lt!1995912) (seqFromList!5899 (list!17513 (_1!33231 lt!1995912)))))))

(assert (=> d!1564351 (= (list!17513 (_1!33231 lt!1995912)) (list!17513 (seqFromList!5899 (list!17513 (_1!33231 lt!1995912)))))))

(assert (=> d!1564351 (= (lemmaEqSameImage!1059 (transformation!8043 (h!62434 rules!1164)) (_1!33231 lt!1995912) (seqFromList!5899 (list!17513 (_1!33231 lt!1995912)))) lt!1996102)))

(declare-fun b_lambda!193683 () Bool)

(assert (=> (not b_lambda!193683) (not d!1564351)))

(assert (=> d!1564351 t!364207))

(declare-fun b_and!343041 () Bool)

(assert (= b_and!343035 (and (=> t!364207 result!321154) b_and!343041)))

(assert (=> d!1564351 t!364209))

(declare-fun b_and!343043 () Bool)

(assert (= b_and!343037 (and (=> t!364209 result!321158) b_and!343043)))

(assert (=> d!1564351 t!364211))

(declare-fun b_and!343045 () Bool)

(assert (= b_and!343039 (and (=> t!364211 result!321160) b_and!343045)))

(declare-fun b_lambda!193685 () Bool)

(assert (=> (not b_lambda!193685) (not d!1564351)))

(declare-fun t!364213 () Bool)

(declare-fun tb!257981 () Bool)

(assert (=> (and b!4870756 (= (toValue!10914 (transformation!8043 (h!62434 rules!1164))) (toValue!10914 (transformation!8043 (h!62434 rules!1164)))) t!364213) tb!257981))

(declare-fun result!321162 () Bool)

(assert (=> tb!257981 (= result!321162 (inv!21 (dynLambda!22483 (toValue!10914 (transformation!8043 (h!62434 rules!1164))) (seqFromList!5899 (list!17513 (_1!33231 lt!1995912))))))))

(declare-fun m!5871998 () Bool)

(assert (=> tb!257981 m!5871998))

(assert (=> d!1564351 t!364213))

(declare-fun b_and!343047 () Bool)

(assert (= b_and!343041 (and (=> t!364213 result!321162) b_and!343047)))

(declare-fun t!364215 () Bool)

(declare-fun tb!257983 () Bool)

(assert (=> (and b!4870894 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toValue!10914 (transformation!8043 (h!62434 rules!1164)))) t!364215) tb!257983))

(declare-fun result!321164 () Bool)

(assert (= result!321164 result!321162))

(assert (=> d!1564351 t!364215))

(declare-fun b_and!343049 () Bool)

(assert (= b_and!343043 (and (=> t!364215 result!321164) b_and!343049)))

(declare-fun t!364217 () Bool)

(declare-fun tb!257985 () Bool)

(assert (=> (and b!4871338 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 (t!364180 rules!1164))))) (toValue!10914 (transformation!8043 (h!62434 rules!1164)))) t!364217) tb!257985))

(declare-fun result!321166 () Bool)

(assert (= result!321166 result!321162))

(assert (=> d!1564351 t!364217))

(declare-fun b_and!343051 () Bool)

(assert (= b_and!343045 (and (=> t!364217 result!321166) b_and!343051)))

(assert (=> d!1564351 m!5871402))

(assert (=> d!1564351 m!5871994))

(assert (=> d!1564351 m!5871388))

(declare-fun m!5872000 () Bool)

(assert (=> d!1564351 m!5872000))

(assert (=> d!1564351 m!5871388))

(declare-fun m!5872002 () Bool)

(assert (=> d!1564351 m!5872002))

(assert (=> d!1564351 m!5871388))

(declare-fun m!5872004 () Bool)

(assert (=> d!1564351 m!5872004))

(assert (=> b!4871153 d!1564351))

(declare-fun d!1564353 () Bool)

(declare-fun lt!1996103 () Int)

(assert (=> d!1564353 (>= lt!1996103 0)))

(declare-fun e!3045346 () Int)

(assert (=> d!1564353 (= lt!1996103 e!3045346)))

(declare-fun c!828587 () Bool)

(assert (=> d!1564353 (= c!828587 (is-Nil!55984 Nil!55984))))

(assert (=> d!1564353 (= (size!36907 Nil!55984) lt!1996103)))

(declare-fun b!4871589 () Bool)

(assert (=> b!4871589 (= e!3045346 0)))

(declare-fun b!4871590 () Bool)

(assert (=> b!4871590 (= e!3045346 (+ 1 (size!36907 (t!364178 Nil!55984))))))

(assert (= (and d!1564353 c!828587) b!4871589))

(assert (= (and d!1564353 (not c!828587)) b!4871590))

(declare-fun m!5872006 () Bool)

(assert (=> b!4871590 m!5872006))

(assert (=> b!4871153 d!1564353))

(declare-fun d!1564355 () Bool)

(assert (=> d!1564355 (= (list!17513 (_1!33231 lt!1995912)) (list!17516 (c!828451 (_1!33231 lt!1995912))))))

(declare-fun bs!1174666 () Bool)

(assert (= bs!1174666 d!1564355))

(declare-fun m!5872008 () Bool)

(assert (=> bs!1174666 m!5872008))

(assert (=> b!4871153 d!1564355))

(declare-fun d!1564357 () Bool)

(declare-fun e!3045349 () Bool)

(assert (=> d!1564357 e!3045349))

(declare-fun res!2079577 () Bool)

(assert (=> d!1564357 (=> (not res!2079577) (not e!3045349))))

(assert (=> d!1564357 (= res!2079577 (semiInverseModEq!3547 (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (toValue!10914 (transformation!8043 (h!62434 rules!1164)))))))

(declare-fun Unit!145978 () Unit!145974)

(assert (=> d!1564357 (= (lemmaInv!1205 (transformation!8043 (h!62434 rules!1164))) Unit!145978)))

(declare-fun b!4871593 () Bool)

(assert (=> b!4871593 (= e!3045349 (equivClasses!3426 (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (toValue!10914 (transformation!8043 (h!62434 rules!1164)))))))

(assert (= (and d!1564357 res!2079577) b!4871593))

(assert (=> d!1564357 m!5871114))

(assert (=> b!4871593 m!5871116))

(assert (=> b!4871153 d!1564357))

(assert (=> b!4871153 d!1564069))

(declare-fun b!4871622 () Bool)

(declare-fun e!3045373 () tuple2!59854)

(assert (=> b!4871622 (= e!3045373 (tuple2!59855 Nil!55984 lt!1995910))))

(declare-fun b!4871624 () Bool)

(declare-fun e!3045371 () Unit!145974)

(declare-fun Unit!145979 () Unit!145974)

(assert (=> b!4871624 (= e!3045371 Unit!145979)))

(declare-fun bm!338247 () Bool)

(declare-fun call!338255 () List!56108)

(assert (=> bm!338247 (= call!338255 (tail!9561 lt!1995910))))

(declare-fun bm!338248 () Bool)

(declare-fun call!338254 () Unit!145974)

(assert (=> bm!338248 (= call!338254 (lemmaIsPrefixRefl!3164 lt!1995910 lt!1995910))))

(declare-fun b!4871625 () Bool)

(declare-fun e!3045368 () Bool)

(declare-fun e!3045366 () Bool)

(assert (=> b!4871625 (= e!3045368 e!3045366)))

(declare-fun res!2079587 () Bool)

(assert (=> b!4871625 (=> res!2079587 e!3045366)))

(declare-fun lt!1996166 () tuple2!59854)

(assert (=> b!4871625 (= res!2079587 (isEmpty!29967 (_1!33230 lt!1996166)))))

(declare-fun bm!338249 () Bool)

(declare-fun call!338256 () C!26434)

(assert (=> bm!338249 (= call!338256 (head!10415 lt!1995910))))

(declare-fun b!4871626 () Bool)

(declare-fun c!828600 () Bool)

(declare-fun call!338259 () Bool)

(assert (=> b!4871626 (= c!828600 call!338259)))

(declare-fun lt!1996186 () Unit!145974)

(declare-fun lt!1996173 () Unit!145974)

(assert (=> b!4871626 (= lt!1996186 lt!1996173)))

(assert (=> b!4871626 (= lt!1995910 Nil!55984)))

(declare-fun call!338257 () Unit!145974)

(assert (=> b!4871626 (= lt!1996173 call!338257)))

(declare-fun lt!1996181 () Unit!145974)

(declare-fun lt!1996170 () Unit!145974)

(assert (=> b!4871626 (= lt!1996181 lt!1996170)))

(declare-fun call!338258 () Bool)

(assert (=> b!4871626 call!338258))

(assert (=> b!4871626 (= lt!1996170 call!338254)))

(declare-fun e!3045370 () tuple2!59854)

(assert (=> b!4871626 (= e!3045370 e!3045373)))

(declare-fun b!4871627 () Bool)

(declare-fun e!3045372 () tuple2!59854)

(assert (=> b!4871627 (= e!3045372 (tuple2!59855 Nil!55984 lt!1995910))))

(declare-fun b!4871628 () Bool)

(declare-fun e!3045367 () tuple2!59854)

(assert (=> b!4871628 (= e!3045367 e!3045370)))

(declare-fun c!828601 () Bool)

(assert (=> b!4871628 (= c!828601 (= (size!36907 Nil!55984) (size!36907 lt!1995910)))))

(declare-fun bm!338250 () Bool)

(assert (=> bm!338250 (= call!338259 (nullable!4542 (regex!8043 (h!62434 rules!1164))))))

(declare-fun d!1564359 () Bool)

(assert (=> d!1564359 e!3045368))

(declare-fun res!2079588 () Bool)

(assert (=> d!1564359 (=> (not res!2079588) (not e!3045368))))

(assert (=> d!1564359 (= res!2079588 (= (++!12192 (_1!33230 lt!1996166) (_2!33230 lt!1996166)) lt!1995910))))

(assert (=> d!1564359 (= lt!1996166 e!3045367)))

(declare-fun c!828605 () Bool)

(declare-fun lostCause!1074 (Regex!13118) Bool)

(assert (=> d!1564359 (= c!828605 (lostCause!1074 (regex!8043 (h!62434 rules!1164))))))

(declare-fun lt!1996178 () Unit!145974)

(declare-fun Unit!145980 () Unit!145974)

(assert (=> d!1564359 (= lt!1996178 Unit!145980)))

(declare-fun getSuffix!2875 (List!56108 List!56108) List!56108)

(assert (=> d!1564359 (= (getSuffix!2875 lt!1995910 Nil!55984) lt!1995910)))

(declare-fun lt!1996163 () Unit!145974)

(declare-fun lt!1996187 () Unit!145974)

(assert (=> d!1564359 (= lt!1996163 lt!1996187)))

(declare-fun lt!1996162 () List!56108)

(assert (=> d!1564359 (= lt!1995910 lt!1996162)))

(declare-fun lemmaSamePrefixThenSameSuffix!2291 (List!56108 List!56108 List!56108 List!56108 List!56108) Unit!145974)

(assert (=> d!1564359 (= lt!1996187 (lemmaSamePrefixThenSameSuffix!2291 Nil!55984 lt!1995910 Nil!55984 lt!1996162 lt!1995910))))

(assert (=> d!1564359 (= lt!1996162 (getSuffix!2875 lt!1995910 Nil!55984))))

(declare-fun lt!1996174 () Unit!145974)

(declare-fun lt!1996160 () Unit!145974)

(assert (=> d!1564359 (= lt!1996174 lt!1996160)))

(assert (=> d!1564359 (isPrefix!4767 Nil!55984 (++!12192 Nil!55984 lt!1995910))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3111 (List!56108 List!56108) Unit!145974)

(assert (=> d!1564359 (= lt!1996160 (lemmaConcatTwoListThenFirstIsPrefix!3111 Nil!55984 lt!1995910))))

(assert (=> d!1564359 (validRegex!5869 (regex!8043 (h!62434 rules!1164)))))

(assert (=> d!1564359 (= (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1995910 lt!1995910 (size!36907 lt!1995910)) lt!1996166)))

(declare-fun b!4871623 () Bool)

(declare-fun c!828604 () Bool)

(assert (=> b!4871623 (= c!828604 call!338259)))

(declare-fun lt!1996167 () Unit!145974)

(declare-fun lt!1996176 () Unit!145974)

(assert (=> b!4871623 (= lt!1996167 lt!1996176)))

(declare-fun lt!1996161 () C!26434)

(declare-fun lt!1996175 () List!56108)

(assert (=> b!4871623 (= (++!12192 (++!12192 Nil!55984 (Cons!55984 lt!1996161 Nil!55984)) lt!1996175) lt!1995910)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1318 (List!56108 C!26434 List!56108 List!56108) Unit!145974)

(assert (=> b!4871623 (= lt!1996176 (lemmaMoveElementToOtherListKeepsConcatEq!1318 Nil!55984 lt!1996161 lt!1996175 lt!1995910))))

(assert (=> b!4871623 (= lt!1996175 (tail!9561 lt!1995910))))

(assert (=> b!4871623 (= lt!1996161 (head!10415 lt!1995910))))

(declare-fun lt!1996180 () Unit!145974)

(declare-fun lt!1996179 () Unit!145974)

(assert (=> b!4871623 (= lt!1996180 lt!1996179)))

(assert (=> b!4871623 (isPrefix!4767 (++!12192 Nil!55984 (Cons!55984 (head!10415 (getSuffix!2875 lt!1995910 Nil!55984)) Nil!55984)) lt!1995910)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!700 (List!56108 List!56108) Unit!145974)

(assert (=> b!4871623 (= lt!1996179 (lemmaAddHeadSuffixToPrefixStillPrefix!700 Nil!55984 lt!1995910))))

(declare-fun lt!1996168 () Unit!145974)

(declare-fun lt!1996164 () Unit!145974)

(assert (=> b!4871623 (= lt!1996168 lt!1996164)))

(assert (=> b!4871623 (= lt!1996164 (lemmaAddHeadSuffixToPrefixStillPrefix!700 Nil!55984 lt!1995910))))

(declare-fun lt!1996182 () List!56108)

(assert (=> b!4871623 (= lt!1996182 (++!12192 Nil!55984 (Cons!55984 (head!10415 lt!1995910) Nil!55984)))))

(declare-fun lt!1996177 () Unit!145974)

(assert (=> b!4871623 (= lt!1996177 e!3045371)))

(declare-fun c!828603 () Bool)

(assert (=> b!4871623 (= c!828603 (= (size!36907 Nil!55984) (size!36907 lt!1995910)))))

(declare-fun lt!1996184 () Unit!145974)

(declare-fun lt!1996165 () Unit!145974)

(assert (=> b!4871623 (= lt!1996184 lt!1996165)))

(assert (=> b!4871623 (<= (size!36907 Nil!55984) (size!36907 lt!1995910))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!612 (List!56108 List!56108) Unit!145974)

(assert (=> b!4871623 (= lt!1996165 (lemmaIsPrefixThenSmallerEqSize!612 Nil!55984 lt!1995910))))

(declare-fun e!3045369 () tuple2!59854)

(assert (=> b!4871623 (= e!3045370 e!3045369)))

(declare-fun b!4871629 () Bool)

(assert (=> b!4871629 (= e!3045366 (>= (size!36907 (_1!33230 lt!1996166)) (size!36907 Nil!55984)))))

(declare-fun b!4871630 () Bool)

(assert (=> b!4871630 (= e!3045367 (tuple2!59855 Nil!55984 lt!1995910))))

(declare-fun b!4871631 () Bool)

(declare-fun call!338253 () tuple2!59854)

(assert (=> b!4871631 (= e!3045369 call!338253)))

(declare-fun bm!338251 () Bool)

(assert (=> bm!338251 (= call!338258 (isPrefix!4767 lt!1995910 lt!1995910))))

(declare-fun b!4871632 () Bool)

(assert (=> b!4871632 (= e!3045373 (tuple2!59855 Nil!55984 Nil!55984))))

(declare-fun bm!338252 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1046 (List!56108 List!56108 List!56108) Unit!145974)

(assert (=> bm!338252 (= call!338257 (lemmaIsPrefixSameLengthThenSameList!1046 lt!1995910 Nil!55984 lt!1995910))))

(declare-fun b!4871633 () Bool)

(declare-fun lt!1996185 () tuple2!59854)

(assert (=> b!4871633 (= e!3045372 lt!1996185)))

(declare-fun b!4871634 () Bool)

(assert (=> b!4871634 (= e!3045369 e!3045372)))

(assert (=> b!4871634 (= lt!1996185 call!338253)))

(declare-fun c!828602 () Bool)

(assert (=> b!4871634 (= c!828602 (isEmpty!29967 (_1!33230 lt!1996185)))))

(declare-fun bm!338253 () Bool)

(declare-fun call!338252 () Regex!13118)

(declare-fun derivativeStep!3866 (Regex!13118 C!26434) Regex!13118)

(assert (=> bm!338253 (= call!338252 (derivativeStep!3866 (regex!8043 (h!62434 rules!1164)) call!338256))))

(declare-fun bm!338254 () Bool)

(assert (=> bm!338254 (= call!338253 (findLongestMatchInner!1722 call!338252 lt!1996182 (+ (size!36907 Nil!55984) 1) call!338255 lt!1995910 (size!36907 lt!1995910)))))

(declare-fun b!4871635 () Bool)

(declare-fun Unit!145981 () Unit!145974)

(assert (=> b!4871635 (= e!3045371 Unit!145981)))

(declare-fun lt!1996169 () Unit!145974)

(assert (=> b!4871635 (= lt!1996169 call!338254)))

(assert (=> b!4871635 call!338258))

(declare-fun lt!1996172 () Unit!145974)

(assert (=> b!4871635 (= lt!1996172 lt!1996169)))

(declare-fun lt!1996183 () Unit!145974)

(assert (=> b!4871635 (= lt!1996183 call!338257)))

(assert (=> b!4871635 (= lt!1995910 Nil!55984)))

(declare-fun lt!1996171 () Unit!145974)

(assert (=> b!4871635 (= lt!1996171 lt!1996183)))

(assert (=> b!4871635 false))

(assert (= (and d!1564359 c!828605) b!4871630))

(assert (= (and d!1564359 (not c!828605)) b!4871628))

(assert (= (and b!4871628 c!828601) b!4871626))

(assert (= (and b!4871628 (not c!828601)) b!4871623))

(assert (= (and b!4871626 c!828600) b!4871632))

(assert (= (and b!4871626 (not c!828600)) b!4871622))

(assert (= (and b!4871623 c!828603) b!4871635))

(assert (= (and b!4871623 (not c!828603)) b!4871624))

(assert (= (and b!4871623 c!828604) b!4871634))

(assert (= (and b!4871623 (not c!828604)) b!4871631))

(assert (= (and b!4871634 c!828602) b!4871627))

(assert (= (and b!4871634 (not c!828602)) b!4871633))

(assert (= (or b!4871634 b!4871631) bm!338249))

(assert (= (or b!4871634 b!4871631) bm!338247))

(assert (= (or b!4871634 b!4871631) bm!338253))

(assert (= (or b!4871634 b!4871631) bm!338254))

(assert (= (or b!4871626 b!4871635) bm!338252))

(assert (= (or b!4871626 b!4871635) bm!338251))

(assert (= (or b!4871626 b!4871623) bm!338250))

(assert (= (or b!4871626 b!4871635) bm!338248))

(assert (= (and d!1564359 res!2079588) b!4871625))

(assert (= (and b!4871625 (not res!2079587)) b!4871629))

(declare-fun m!5872010 () Bool)

(assert (=> bm!338251 m!5872010))

(declare-fun m!5872012 () Bool)

(assert (=> b!4871634 m!5872012))

(assert (=> bm!338254 m!5871386))

(declare-fun m!5872014 () Bool)

(assert (=> bm!338254 m!5872014))

(declare-fun m!5872016 () Bool)

(assert (=> bm!338252 m!5872016))

(declare-fun m!5872018 () Bool)

(assert (=> bm!338253 m!5872018))

(declare-fun m!5872020 () Bool)

(assert (=> bm!338248 m!5872020))

(declare-fun m!5872022 () Bool)

(assert (=> d!1564359 m!5872022))

(declare-fun m!5872024 () Bool)

(assert (=> d!1564359 m!5872024))

(declare-fun m!5872026 () Bool)

(assert (=> d!1564359 m!5872026))

(declare-fun m!5872028 () Bool)

(assert (=> d!1564359 m!5872028))

(declare-fun m!5872030 () Bool)

(assert (=> d!1564359 m!5872030))

(assert (=> d!1564359 m!5871890))

(assert (=> d!1564359 m!5872022))

(declare-fun m!5872032 () Bool)

(assert (=> d!1564359 m!5872032))

(declare-fun m!5872034 () Bool)

(assert (=> d!1564359 m!5872034))

(declare-fun m!5872036 () Bool)

(assert (=> b!4871625 m!5872036))

(declare-fun m!5872038 () Bool)

(assert (=> bm!338249 m!5872038))

(assert (=> bm!338250 m!5871892))

(declare-fun m!5872040 () Bool)

(assert (=> bm!338247 m!5872040))

(declare-fun m!5872042 () Bool)

(assert (=> b!4871629 m!5872042))

(assert (=> b!4871629 m!5871398))

(declare-fun m!5872044 () Bool)

(assert (=> b!4871623 m!5872044))

(declare-fun m!5872046 () Bool)

(assert (=> b!4871623 m!5872046))

(declare-fun m!5872048 () Bool)

(assert (=> b!4871623 m!5872048))

(assert (=> b!4871623 m!5872040))

(declare-fun m!5872050 () Bool)

(assert (=> b!4871623 m!5872050))

(declare-fun m!5872052 () Bool)

(assert (=> b!4871623 m!5872052))

(declare-fun m!5872054 () Bool)

(assert (=> b!4871623 m!5872054))

(declare-fun m!5872056 () Bool)

(assert (=> b!4871623 m!5872056))

(assert (=> b!4871623 m!5872052))

(assert (=> b!4871623 m!5871398))

(assert (=> b!4871623 m!5871386))

(assert (=> b!4871623 m!5872050))

(declare-fun m!5872058 () Bool)

(assert (=> b!4871623 m!5872058))

(assert (=> b!4871623 m!5872030))

(assert (=> b!4871623 m!5872038))

(assert (=> b!4871623 m!5872030))

(declare-fun m!5872060 () Bool)

(assert (=> b!4871623 m!5872060))

(assert (=> b!4871153 d!1564359))

(declare-fun d!1564361 () Bool)

(declare-fun lt!1996188 () Int)

(assert (=> d!1564361 (>= lt!1996188 0)))

(declare-fun e!3045374 () Int)

(assert (=> d!1564361 (= lt!1996188 e!3045374)))

(declare-fun c!828606 () Bool)

(assert (=> d!1564361 (= c!828606 (is-Nil!55984 lt!1995910))))

(assert (=> d!1564361 (= (size!36907 lt!1995910) lt!1996188)))

(declare-fun b!4871636 () Bool)

(assert (=> b!4871636 (= e!3045374 0)))

(declare-fun b!4871637 () Bool)

(assert (=> b!4871637 (= e!3045374 (+ 1 (size!36907 (t!364178 lt!1995910))))))

(assert (= (and d!1564361 c!828606) b!4871636))

(assert (= (and d!1564361 (not c!828606)) b!4871637))

(declare-fun m!5872062 () Bool)

(assert (=> b!4871637 m!5872062))

(assert (=> b!4871153 d!1564361))

(declare-fun d!1564363 () Bool)

(declare-fun dynLambda!22484 (Int BalanceConc!28628) Bool)

(assert (=> d!1564363 (dynLambda!22484 lambda!243496 (_1!33231 lt!1995912))))

(declare-fun lt!1996191 () Unit!145974)

(declare-fun choose!35610 (Int BalanceConc!28628) Unit!145974)

(assert (=> d!1564363 (= lt!1996191 (choose!35610 lambda!243496 (_1!33231 lt!1995912)))))

(assert (=> d!1564363 (Forall!1676 lambda!243496)))

(assert (=> d!1564363 (= (ForallOf!1102 lambda!243496 (_1!33231 lt!1995912)) lt!1996191)))

(declare-fun b_lambda!193687 () Bool)

(assert (=> (not b_lambda!193687) (not d!1564363)))

(declare-fun bs!1174667 () Bool)

(assert (= bs!1174667 d!1564363))

(declare-fun m!5872064 () Bool)

(assert (=> bs!1174667 m!5872064))

(declare-fun m!5872066 () Bool)

(assert (=> bs!1174667 m!5872066))

(declare-fun m!5872068 () Bool)

(assert (=> bs!1174667 m!5872068))

(assert (=> b!4871153 d!1564363))

(declare-fun d!1564365 () Bool)

(declare-fun e!3045377 () Bool)

(assert (=> d!1564365 e!3045377))

(declare-fun res!2079591 () Bool)

(assert (=> d!1564365 (=> res!2079591 e!3045377)))

(assert (=> d!1564365 (= res!2079591 (isEmpty!29967 (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1995910 lt!1995910 (size!36907 lt!1995910)))))))

(declare-fun lt!1996194 () Unit!145974)

(declare-fun choose!35611 (Regex!13118 List!56108) Unit!145974)

(assert (=> d!1564365 (= lt!1996194 (choose!35611 (regex!8043 (h!62434 rules!1164)) lt!1995910))))

(assert (=> d!1564365 (validRegex!5869 (regex!8043 (h!62434 rules!1164)))))

(assert (=> d!1564365 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1685 (regex!8043 (h!62434 rules!1164)) lt!1995910) lt!1996194)))

(declare-fun b!4871640 () Bool)

(assert (=> b!4871640 (= e!3045377 (matchR!6493 (regex!8043 (h!62434 rules!1164)) (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1995910 lt!1995910 (size!36907 lt!1995910)))))))

(assert (= (and d!1564365 (not res!2079591)) b!4871640))

(assert (=> d!1564365 m!5871890))

(declare-fun m!5872070 () Bool)

(assert (=> d!1564365 m!5872070))

(assert (=> d!1564365 m!5871404))

(assert (=> d!1564365 m!5871398))

(assert (=> d!1564365 m!5871398))

(assert (=> d!1564365 m!5871386))

(assert (=> d!1564365 m!5871400))

(assert (=> d!1564365 m!5871386))

(assert (=> b!4871640 m!5871398))

(assert (=> b!4871640 m!5871386))

(assert (=> b!4871640 m!5871398))

(assert (=> b!4871640 m!5871386))

(assert (=> b!4871640 m!5871400))

(assert (=> b!4871640 m!5871410))

(assert (=> b!4871153 d!1564365))

(declare-fun d!1564367 () Bool)

(declare-fun lt!1996195 () Int)

(assert (=> d!1564367 (= lt!1996195 (size!36907 (list!17513 (_1!33231 lt!1995912))))))

(assert (=> d!1564367 (= lt!1996195 (size!36915 (c!828451 (_1!33231 lt!1995912))))))

(assert (=> d!1564367 (= (size!36909 (_1!33231 lt!1995912)) lt!1996195)))

(declare-fun bs!1174668 () Bool)

(assert (= bs!1174668 d!1564367))

(assert (=> bs!1174668 m!5871402))

(assert (=> bs!1174668 m!5871402))

(declare-fun m!5872072 () Bool)

(assert (=> bs!1174668 m!5872072))

(declare-fun m!5872074 () Bool)

(assert (=> bs!1174668 m!5872074))

(assert (=> b!4871153 d!1564367))

(declare-fun d!1564369 () Bool)

(assert (=> d!1564369 (= (isEmpty!29967 (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1995910 lt!1995910 (size!36907 lt!1995910)))) (is-Nil!55984 (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1995910 lt!1995910 (size!36907 lt!1995910)))))))

(assert (=> b!4871153 d!1564369))

(declare-fun d!1564371 () Bool)

(assert (=> d!1564371 (dynLambda!22484 lambda!243496 (seqFromList!5899 (list!17513 (_1!33231 lt!1995912))))))

(declare-fun lt!1996196 () Unit!145974)

(assert (=> d!1564371 (= lt!1996196 (choose!35610 lambda!243496 (seqFromList!5899 (list!17513 (_1!33231 lt!1995912)))))))

(assert (=> d!1564371 (Forall!1676 lambda!243496)))

(assert (=> d!1564371 (= (ForallOf!1102 lambda!243496 (seqFromList!5899 (list!17513 (_1!33231 lt!1995912)))) lt!1996196)))

(declare-fun b_lambda!193689 () Bool)

(assert (=> (not b_lambda!193689) (not d!1564371)))

(declare-fun bs!1174669 () Bool)

(assert (= bs!1174669 d!1564371))

(assert (=> bs!1174669 m!5871388))

(declare-fun m!5872076 () Bool)

(assert (=> bs!1174669 m!5872076))

(assert (=> bs!1174669 m!5871388))

(declare-fun m!5872078 () Bool)

(assert (=> bs!1174669 m!5872078))

(assert (=> bs!1174669 m!5872068))

(assert (=> b!4871153 d!1564371))

(declare-fun lt!1996213 () Option!13794)

(declare-fun d!1564373 () Bool)

(assert (=> d!1564373 (= lt!1996213 (maxPrefixOneRule!3492 thiss!11460 (h!62434 rules!1164) (list!17513 input!585)))))

(declare-fun e!3045383 () Option!13794)

(assert (=> d!1564373 (= lt!1996213 e!3045383)))

(declare-fun c!828609 () Bool)

(declare-fun lt!1996210 () tuple2!59854)

(assert (=> d!1564373 (= c!828609 (isEmpty!29967 (_1!33230 lt!1996210)))))

(declare-fun findLongestMatchWithZipper!71 (Regex!13118 List!56108) tuple2!59854)

(assert (=> d!1564373 (= lt!1996210 (findLongestMatchWithZipper!71 (regex!8043 (h!62434 rules!1164)) (list!17513 input!585)))))

(assert (=> d!1564373 (ruleValid!3631 thiss!11460 (h!62434 rules!1164))))

(assert (=> d!1564373 (= (maxPrefixOneRuleZipper!226 thiss!11460 (h!62434 rules!1164) (list!17513 input!585)) lt!1996213)))

(declare-fun b!4871647 () Bool)

(assert (=> b!4871647 (= e!3045383 None!13793)))

(declare-fun b!4871648 () Bool)

(assert (=> b!4871648 (= e!3045383 (Some!13793 (tuple2!59849 (Token!14671 (apply!13503 (transformation!8043 (h!62434 rules!1164)) (seqFromList!5899 (_1!33230 lt!1996210))) (h!62434 rules!1164) (size!36907 (_1!33230 lt!1996210)) (_1!33230 lt!1996210)) (_2!33230 lt!1996210))))))

(declare-fun lt!1996209 () Unit!145974)

(assert (=> b!4871648 (= lt!1996209 (longestMatchIsAcceptedByMatchOrIsEmpty!1685 (regex!8043 (h!62434 rules!1164)) (list!17513 input!585)))))

(declare-fun res!2079601 () Bool)

(assert (=> b!4871648 (= res!2079601 (isEmpty!29967 (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) (list!17513 input!585) (list!17513 input!585) (size!36907 (list!17513 input!585))))))))

(declare-fun e!3045382 () Bool)

(assert (=> b!4871648 (=> res!2079601 e!3045382)))

(assert (=> b!4871648 e!3045382))

(declare-fun lt!1996214 () Unit!145974)

(assert (=> b!4871648 (= lt!1996214 lt!1996209)))

(declare-fun lt!1996212 () Unit!145974)

(assert (=> b!4871648 (= lt!1996212 (lemmaInv!1205 (transformation!8043 (h!62434 rules!1164))))))

(declare-fun lt!1996211 () Unit!145974)

(declare-fun lemmaSemiInverse!2553 (TokenValueInjection!16014 BalanceConc!28628) Unit!145974)

(assert (=> b!4871648 (= lt!1996211 (lemmaSemiInverse!2553 (transformation!8043 (h!62434 rules!1164)) (seqFromList!5899 (_1!33230 lt!1996210))))))

(declare-fun b!4871649 () Bool)

(assert (=> b!4871649 (= e!3045382 (matchR!6493 (regex!8043 (h!62434 rules!1164)) (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) (list!17513 input!585) (list!17513 input!585) (size!36907 (list!17513 input!585))))))))

(assert (= (and d!1564373 c!828609) b!4871647))

(assert (= (and d!1564373 (not c!828609)) b!4871648))

(assert (= (and b!4871648 (not res!2079601)) b!4871649))

(assert (=> d!1564373 m!5870998))

(assert (=> d!1564373 m!5871246))

(declare-fun m!5872080 () Bool)

(assert (=> d!1564373 m!5872080))

(assert (=> d!1564373 m!5870998))

(declare-fun m!5872082 () Bool)

(assert (=> d!1564373 m!5872082))

(assert (=> d!1564373 m!5871418))

(declare-fun m!5872084 () Bool)

(assert (=> b!4871648 m!5872084))

(declare-fun m!5872086 () Bool)

(assert (=> b!4871648 m!5872086))

(declare-fun m!5872088 () Bool)

(assert (=> b!4871648 m!5872088))

(assert (=> b!4871648 m!5872084))

(declare-fun m!5872090 () Bool)

(assert (=> b!4871648 m!5872090))

(assert (=> b!4871648 m!5870998))

(declare-fun m!5872092 () Bool)

(assert (=> b!4871648 m!5872092))

(assert (=> b!4871648 m!5871408))

(assert (=> b!4871648 m!5872084))

(assert (=> b!4871648 m!5870998))

(assert (=> b!4871648 m!5871268))

(declare-fun m!5872094 () Bool)

(assert (=> b!4871648 m!5872094))

(assert (=> b!4871648 m!5871398))

(assert (=> b!4871648 m!5870998))

(assert (=> b!4871648 m!5870998))

(assert (=> b!4871648 m!5871268))

(declare-fun m!5872096 () Bool)

(assert (=> b!4871648 m!5872096))

(assert (=> b!4871648 m!5871398))

(assert (=> b!4871649 m!5871398))

(assert (=> b!4871649 m!5870998))

(assert (=> b!4871649 m!5871268))

(assert (=> b!4871649 m!5871398))

(assert (=> b!4871649 m!5870998))

(assert (=> b!4871649 m!5870998))

(assert (=> b!4871649 m!5871268))

(assert (=> b!4871649 m!5872096))

(declare-fun m!5872098 () Bool)

(assert (=> b!4871649 m!5872098))

(assert (=> bm!338214 d!1564373))

(declare-fun d!1564375 () Bool)

(declare-fun res!2079602 () Bool)

(declare-fun e!3045384 () Bool)

(assert (=> d!1564375 (=> (not res!2079602) (not e!3045384))))

(assert (=> d!1564375 (= res!2079602 (= (csize!29416 (right!40993 (c!828451 input!585))) (+ (size!36915 (left!40663 (right!40993 (c!828451 input!585)))) (size!36915 (right!40993 (right!40993 (c!828451 input!585)))))))))

(assert (=> d!1564375 (= (inv!71915 (right!40993 (c!828451 input!585))) e!3045384)))

(declare-fun b!4871650 () Bool)

(declare-fun res!2079603 () Bool)

(assert (=> b!4871650 (=> (not res!2079603) (not e!3045384))))

(assert (=> b!4871650 (= res!2079603 (and (not (= (left!40663 (right!40993 (c!828451 input!585))) Empty!14593)) (not (= (right!40993 (right!40993 (c!828451 input!585))) Empty!14593))))))

(declare-fun b!4871651 () Bool)

(declare-fun res!2079604 () Bool)

(assert (=> b!4871651 (=> (not res!2079604) (not e!3045384))))

(assert (=> b!4871651 (= res!2079604 (= (cheight!14804 (right!40993 (c!828451 input!585))) (+ (max!0 (height!1930 (left!40663 (right!40993 (c!828451 input!585)))) (height!1930 (right!40993 (right!40993 (c!828451 input!585))))) 1)))))

(declare-fun b!4871652 () Bool)

(assert (=> b!4871652 (= e!3045384 (<= 0 (cheight!14804 (right!40993 (c!828451 input!585)))))))

(assert (= (and d!1564375 res!2079602) b!4871650))

(assert (= (and b!4871650 res!2079603) b!4871651))

(assert (= (and b!4871651 res!2079604) b!4871652))

(declare-fun m!5872100 () Bool)

(assert (=> d!1564375 m!5872100))

(declare-fun m!5872102 () Bool)

(assert (=> d!1564375 m!5872102))

(declare-fun m!5872104 () Bool)

(assert (=> b!4871651 m!5872104))

(declare-fun m!5872106 () Bool)

(assert (=> b!4871651 m!5872106))

(assert (=> b!4871651 m!5872104))

(assert (=> b!4871651 m!5872106))

(declare-fun m!5872108 () Bool)

(assert (=> b!4871651 m!5872108))

(assert (=> b!4871187 d!1564375))

(declare-fun d!1564377 () Bool)

(declare-fun c!828610 () Bool)

(assert (=> d!1564377 (= c!828610 (is-Node!14593 (left!40663 (right!40993 (c!828451 input!585)))))))

(declare-fun e!3045385 () Bool)

(assert (=> d!1564377 (= (inv!71910 (left!40663 (right!40993 (c!828451 input!585)))) e!3045385)))

(declare-fun b!4871653 () Bool)

(assert (=> b!4871653 (= e!3045385 (inv!71915 (left!40663 (right!40993 (c!828451 input!585)))))))

(declare-fun b!4871654 () Bool)

(declare-fun e!3045386 () Bool)

(assert (=> b!4871654 (= e!3045385 e!3045386)))

(declare-fun res!2079605 () Bool)

(assert (=> b!4871654 (= res!2079605 (not (is-Leaf!24326 (left!40663 (right!40993 (c!828451 input!585))))))))

(assert (=> b!4871654 (=> res!2079605 e!3045386)))

(declare-fun b!4871655 () Bool)

(assert (=> b!4871655 (= e!3045386 (inv!71916 (left!40663 (right!40993 (c!828451 input!585)))))))

(assert (= (and d!1564377 c!828610) b!4871653))

(assert (= (and d!1564377 (not c!828610)) b!4871654))

(assert (= (and b!4871654 (not res!2079605)) b!4871655))

(declare-fun m!5872110 () Bool)

(assert (=> b!4871653 m!5872110))

(declare-fun m!5872112 () Bool)

(assert (=> b!4871655 m!5872112))

(assert (=> b!4871305 d!1564377))

(declare-fun d!1564379 () Bool)

(declare-fun c!828611 () Bool)

(assert (=> d!1564379 (= c!828611 (is-Node!14593 (right!40993 (right!40993 (c!828451 input!585)))))))

(declare-fun e!3045387 () Bool)

(assert (=> d!1564379 (= (inv!71910 (right!40993 (right!40993 (c!828451 input!585)))) e!3045387)))

(declare-fun b!4871656 () Bool)

(assert (=> b!4871656 (= e!3045387 (inv!71915 (right!40993 (right!40993 (c!828451 input!585)))))))

(declare-fun b!4871657 () Bool)

(declare-fun e!3045388 () Bool)

(assert (=> b!4871657 (= e!3045387 e!3045388)))

(declare-fun res!2079606 () Bool)

(assert (=> b!4871657 (= res!2079606 (not (is-Leaf!24326 (right!40993 (right!40993 (c!828451 input!585))))))))

(assert (=> b!4871657 (=> res!2079606 e!3045388)))

(declare-fun b!4871658 () Bool)

(assert (=> b!4871658 (= e!3045388 (inv!71916 (right!40993 (right!40993 (c!828451 input!585)))))))

(assert (= (and d!1564379 c!828611) b!4871656))

(assert (= (and d!1564379 (not c!828611)) b!4871657))

(assert (= (and b!4871657 (not res!2079606)) b!4871658))

(declare-fun m!5872114 () Bool)

(assert (=> b!4871656 m!5872114))

(declare-fun m!5872116 () Bool)

(assert (=> b!4871658 m!5872116))

(assert (=> b!4871305 d!1564379))

(declare-fun d!1564381 () Bool)

(declare-fun lt!1996215 () Int)

(assert (=> d!1564381 (>= lt!1996215 0)))

(declare-fun e!3045389 () Int)

(assert (=> d!1564381 (= lt!1996215 e!3045389)))

(declare-fun c!828612 () Bool)

(assert (=> d!1564381 (= c!828612 (is-Nil!55984 lt!1995874))))

(assert (=> d!1564381 (= (size!36907 lt!1995874) lt!1996215)))

(declare-fun b!4871659 () Bool)

(assert (=> b!4871659 (= e!3045389 0)))

(declare-fun b!4871660 () Bool)

(assert (=> b!4871660 (= e!3045389 (+ 1 (size!36907 (t!364178 lt!1995874))))))

(assert (= (and d!1564381 c!828612) b!4871659))

(assert (= (and d!1564381 (not c!828612)) b!4871660))

(declare-fun m!5872118 () Bool)

(assert (=> b!4871660 m!5872118))

(assert (=> b!4871094 d!1564381))

(declare-fun d!1564383 () Bool)

(declare-fun lt!1996216 () Int)

(assert (=> d!1564383 (>= lt!1996216 0)))

(declare-fun e!3045390 () Int)

(assert (=> d!1564383 (= lt!1996216 e!3045390)))

(declare-fun c!828613 () Bool)

(assert (=> d!1564383 (= c!828613 (is-Nil!55984 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))

(assert (=> d!1564383 (= (size!36907 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))) lt!1996216)))

(declare-fun b!4871661 () Bool)

(assert (=> b!4871661 (= e!3045390 0)))

(declare-fun b!4871662 () Bool)

(assert (=> b!4871662 (= e!3045390 (+ 1 (size!36907 (t!364178 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))))

(assert (= (and d!1564383 c!828613) b!4871661))

(assert (= (and d!1564383 (not c!828613)) b!4871662))

(declare-fun m!5872120 () Bool)

(assert (=> b!4871662 m!5872120))

(assert (=> b!4871094 d!1564383))

(assert (=> b!4871094 d!1564199))

(declare-fun b!4871666 () Bool)

(declare-fun e!3045392 () Bool)

(declare-fun lt!1996217 () List!56108)

(assert (=> b!4871666 (= e!3045392 (or (not (= (list!17516 (right!40993 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))) Nil!55984)) (= lt!1996217 (list!17516 (left!40663 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))))

(declare-fun b!4871665 () Bool)

(declare-fun res!2079607 () Bool)

(assert (=> b!4871665 (=> (not res!2079607) (not e!3045392))))

(assert (=> b!4871665 (= res!2079607 (= (size!36907 lt!1996217) (+ (size!36907 (list!17516 (left!40663 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))) (size!36907 (list!17516 (right!40993 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))))))))

(declare-fun d!1564385 () Bool)

(assert (=> d!1564385 e!3045392))

(declare-fun res!2079608 () Bool)

(assert (=> d!1564385 (=> (not res!2079608) (not e!3045392))))

(assert (=> d!1564385 (= res!2079608 (= (content!9981 lt!1996217) (set.union (content!9981 (list!17516 (left!40663 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))) (content!9981 (list!17516 (right!40993 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))))))))

(declare-fun e!3045391 () List!56108)

(assert (=> d!1564385 (= lt!1996217 e!3045391)))

(declare-fun c!828614 () Bool)

(assert (=> d!1564385 (= c!828614 (is-Nil!55984 (list!17516 (left!40663 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))))))

(assert (=> d!1564385 (= (++!12192 (list!17516 (left!40663 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))) (list!17516 (right!40993 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))) lt!1996217)))

(declare-fun b!4871663 () Bool)

(assert (=> b!4871663 (= e!3045391 (list!17516 (right!40993 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))

(declare-fun b!4871664 () Bool)

(assert (=> b!4871664 (= e!3045391 (Cons!55984 (h!62432 (list!17516 (left!40663 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))) (++!12192 (t!364178 (list!17516 (left!40663 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))) (list!17516 (right!40993 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))))

(assert (= (and d!1564385 c!828614) b!4871663))

(assert (= (and d!1564385 (not c!828614)) b!4871664))

(assert (= (and d!1564385 res!2079608) b!4871665))

(assert (= (and b!4871665 res!2079607) b!4871666))

(declare-fun m!5872122 () Bool)

(assert (=> b!4871665 m!5872122))

(assert (=> b!4871665 m!5871322))

(declare-fun m!5872124 () Bool)

(assert (=> b!4871665 m!5872124))

(assert (=> b!4871665 m!5871324))

(declare-fun m!5872126 () Bool)

(assert (=> b!4871665 m!5872126))

(declare-fun m!5872128 () Bool)

(assert (=> d!1564385 m!5872128))

(assert (=> d!1564385 m!5871322))

(declare-fun m!5872130 () Bool)

(assert (=> d!1564385 m!5872130))

(assert (=> d!1564385 m!5871324))

(declare-fun m!5872132 () Bool)

(assert (=> d!1564385 m!5872132))

(assert (=> b!4871664 m!5871324))

(declare-fun m!5872134 () Bool)

(assert (=> b!4871664 m!5872134))

(assert (=> b!4871099 d!1564385))

(declare-fun b!4871669 () Bool)

(declare-fun e!3045394 () List!56108)

(assert (=> b!4871669 (= e!3045394 (list!17519 (xs!17901 (left!40663 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))))))

(declare-fun b!4871668 () Bool)

(declare-fun e!3045393 () List!56108)

(assert (=> b!4871668 (= e!3045393 e!3045394)))

(declare-fun c!828616 () Bool)

(assert (=> b!4871668 (= c!828616 (is-Leaf!24326 (left!40663 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))

(declare-fun d!1564387 () Bool)

(declare-fun c!828615 () Bool)

(assert (=> d!1564387 (= c!828615 (is-Empty!14593 (left!40663 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))

(assert (=> d!1564387 (= (list!17516 (left!40663 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))) e!3045393)))

(declare-fun b!4871667 () Bool)

(assert (=> b!4871667 (= e!3045393 Nil!55984)))

(declare-fun b!4871670 () Bool)

(assert (=> b!4871670 (= e!3045394 (++!12192 (list!17516 (left!40663 (left!40663 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))) (list!17516 (right!40993 (left!40663 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))))

(assert (= (and d!1564387 c!828615) b!4871667))

(assert (= (and d!1564387 (not c!828615)) b!4871668))

(assert (= (and b!4871668 c!828616) b!4871669))

(assert (= (and b!4871668 (not c!828616)) b!4871670))

(declare-fun m!5872136 () Bool)

(assert (=> b!4871669 m!5872136))

(declare-fun m!5872138 () Bool)

(assert (=> b!4871670 m!5872138))

(declare-fun m!5872140 () Bool)

(assert (=> b!4871670 m!5872140))

(assert (=> b!4871670 m!5872138))

(assert (=> b!4871670 m!5872140))

(declare-fun m!5872142 () Bool)

(assert (=> b!4871670 m!5872142))

(assert (=> b!4871099 d!1564387))

(declare-fun b!4871673 () Bool)

(declare-fun e!3045396 () List!56108)

(assert (=> b!4871673 (= e!3045396 (list!17519 (xs!17901 (right!40993 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))))))

(declare-fun b!4871672 () Bool)

(declare-fun e!3045395 () List!56108)

(assert (=> b!4871672 (= e!3045395 e!3045396)))

(declare-fun c!828618 () Bool)

(assert (=> b!4871672 (= c!828618 (is-Leaf!24326 (right!40993 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))

(declare-fun d!1564389 () Bool)

(declare-fun c!828617 () Bool)

(assert (=> d!1564389 (= c!828617 (is-Empty!14593 (right!40993 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))

(assert (=> d!1564389 (= (list!17516 (right!40993 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))) e!3045395)))

(declare-fun b!4871671 () Bool)

(assert (=> b!4871671 (= e!3045395 Nil!55984)))

(declare-fun b!4871674 () Bool)

(assert (=> b!4871674 (= e!3045396 (++!12192 (list!17516 (left!40663 (right!40993 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))) (list!17516 (right!40993 (right!40993 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))))

(assert (= (and d!1564389 c!828617) b!4871671))

(assert (= (and d!1564389 (not c!828617)) b!4871672))

(assert (= (and b!4871672 c!828618) b!4871673))

(assert (= (and b!4871672 (not c!828618)) b!4871674))

(declare-fun m!5872144 () Bool)

(assert (=> b!4871673 m!5872144))

(declare-fun m!5872146 () Bool)

(assert (=> b!4871674 m!5872146))

(declare-fun m!5872148 () Bool)

(assert (=> b!4871674 m!5872148))

(assert (=> b!4871674 m!5872146))

(assert (=> b!4871674 m!5872148))

(declare-fun m!5872150 () Bool)

(assert (=> b!4871674 m!5872150))

(assert (=> b!4871099 d!1564389))

(declare-fun b!4871675 () Bool)

(declare-fun e!3045397 () Bool)

(declare-fun e!3045400 () Bool)

(assert (=> b!4871675 (= e!3045397 e!3045400)))

(declare-fun res!2079613 () Bool)

(assert (=> b!4871675 (=> res!2079613 e!3045400)))

(declare-fun lt!1996221 () Option!13792)

(assert (=> b!4871675 (= res!2079613 (not (isDefined!10850 lt!1996221)))))

(declare-fun b!4871676 () Bool)

(declare-fun res!2079609 () Bool)

(assert (=> b!4871676 (=> (not res!2079609) (not e!3045397))))

(declare-fun e!3045399 () Bool)

(assert (=> b!4871676 (= res!2079609 e!3045399)))

(declare-fun res!2079612 () Bool)

(assert (=> b!4871676 (=> res!2079612 e!3045399)))

(assert (=> b!4871676 (= res!2079612 (not (isDefined!10850 lt!1996221)))))

(declare-fun b!4871677 () Bool)

(declare-fun e!3045401 () Bool)

(assert (=> b!4871677 (= e!3045399 e!3045401)))

(declare-fun res!2079610 () Bool)

(assert (=> b!4871677 (=> (not res!2079610) (not e!3045401))))

(assert (=> b!4871677 (= res!2079610 (= (_1!33222 (get!19235 lt!1996221)) (_1!33227 (get!19236 (maxPrefixZipper!564 thiss!11460 (t!364180 (t!364180 rules!1164)) (list!17513 input!585))))))))

(declare-fun e!3045398 () Bool)

(declare-fun b!4871678 () Bool)

(assert (=> b!4871678 (= e!3045398 (= (list!17513 (_2!33222 (get!19235 lt!1996221))) (_2!33227 (get!19236 (maxPrefix!4550 thiss!11460 (t!364180 (t!364180 rules!1164)) (list!17513 input!585))))))))

(declare-fun b!4871679 () Bool)

(assert (=> b!4871679 (= e!3045401 (= (list!17513 (_2!33222 (get!19235 lt!1996221))) (_2!33227 (get!19236 (maxPrefixZipper!564 thiss!11460 (t!364180 (t!364180 rules!1164)) (list!17513 input!585))))))))

(declare-fun b!4871681 () Bool)

(declare-fun e!3045402 () Option!13792)

(declare-fun lt!1996224 () Option!13792)

(declare-fun lt!1996223 () Option!13792)

(assert (=> b!4871681 (= e!3045402 (ite (and (is-None!13791 lt!1996224) (is-None!13791 lt!1996223)) None!13791 (ite (is-None!13791 lt!1996223) lt!1996224 (ite (is-None!13791 lt!1996224) lt!1996223 (ite (>= (size!36905 (_1!33222 (v!49713 lt!1996224))) (size!36905 (_1!33222 (v!49713 lt!1996223)))) lt!1996224 lt!1996223)))))))

(declare-fun call!338260 () Option!13792)

(assert (=> b!4871681 (= lt!1996224 call!338260)))

(assert (=> b!4871681 (= lt!1996223 (maxPrefixZipperSequence!1234 thiss!11460 (t!364180 (t!364180 (t!364180 rules!1164))) input!585))))

(declare-fun b!4871682 () Bool)

(assert (=> b!4871682 (= e!3045402 call!338260)))

(declare-fun bm!338255 () Bool)

(assert (=> bm!338255 (= call!338260 (maxPrefixOneRuleZipperSequence!577 thiss!11460 (h!62434 (t!364180 (t!364180 rules!1164))) input!585))))

(declare-fun b!4871680 () Bool)

(assert (=> b!4871680 (= e!3045400 e!3045398)))

(declare-fun res!2079611 () Bool)

(assert (=> b!4871680 (=> (not res!2079611) (not e!3045398))))

(assert (=> b!4871680 (= res!2079611 (= (_1!33222 (get!19235 lt!1996221)) (_1!33227 (get!19236 (maxPrefix!4550 thiss!11460 (t!364180 (t!364180 rules!1164)) (list!17513 input!585))))))))

(declare-fun d!1564391 () Bool)

(assert (=> d!1564391 e!3045397))

(declare-fun res!2079614 () Bool)

(assert (=> d!1564391 (=> (not res!2079614) (not e!3045397))))

(assert (=> d!1564391 (= res!2079614 (= (isDefined!10850 lt!1996221) (isDefined!10851 (maxPrefixZipper!564 thiss!11460 (t!364180 (t!364180 rules!1164)) (list!17513 input!585)))))))

(assert (=> d!1564391 (= lt!1996221 e!3045402)))

(declare-fun c!828619 () Bool)

(assert (=> d!1564391 (= c!828619 (and (is-Cons!55986 (t!364180 (t!364180 rules!1164))) (is-Nil!55986 (t!364180 (t!364180 (t!364180 rules!1164))))))))

(declare-fun lt!1996219 () Unit!145974)

(declare-fun lt!1996220 () Unit!145974)

(assert (=> d!1564391 (= lt!1996219 lt!1996220)))

(declare-fun lt!1996218 () List!56108)

(declare-fun lt!1996222 () List!56108)

(assert (=> d!1564391 (isPrefix!4767 lt!1996218 lt!1996222)))

(assert (=> d!1564391 (= lt!1996220 (lemmaIsPrefixRefl!3164 lt!1996218 lt!1996222))))

(assert (=> d!1564391 (= lt!1996222 (list!17513 input!585))))

(assert (=> d!1564391 (= lt!1996218 (list!17513 input!585))))

(assert (=> d!1564391 (rulesValidInductive!3022 thiss!11460 (t!364180 (t!364180 rules!1164)))))

(assert (=> d!1564391 (= (maxPrefixZipperSequence!1234 thiss!11460 (t!364180 (t!364180 rules!1164)) input!585) lt!1996221)))

(assert (= (and d!1564391 c!828619) b!4871682))

(assert (= (and d!1564391 (not c!828619)) b!4871681))

(assert (= (or b!4871682 b!4871681) bm!338255))

(assert (= (and d!1564391 res!2079614) b!4871676))

(assert (= (and b!4871676 (not res!2079612)) b!4871677))

(assert (= (and b!4871677 res!2079610) b!4871679))

(assert (= (and b!4871676 res!2079609) b!4871675))

(assert (= (and b!4871675 (not res!2079613)) b!4871680))

(assert (= (and b!4871680 res!2079611) b!4871678))

(declare-fun m!5872152 () Bool)

(assert (=> b!4871677 m!5872152))

(assert (=> b!4871677 m!5870998))

(assert (=> b!4871677 m!5870998))

(assert (=> b!4871677 m!5871964))

(assert (=> b!4871677 m!5871964))

(declare-fun m!5872154 () Bool)

(assert (=> b!4871677 m!5872154))

(declare-fun m!5872156 () Bool)

(assert (=> b!4871675 m!5872156))

(assert (=> d!1564391 m!5871964))

(declare-fun m!5872158 () Bool)

(assert (=> d!1564391 m!5872158))

(declare-fun m!5872160 () Bool)

(assert (=> d!1564391 m!5872160))

(assert (=> d!1564391 m!5872156))

(assert (=> d!1564391 m!5870998))

(assert (=> d!1564391 m!5871964))

(declare-fun m!5872162 () Bool)

(assert (=> d!1564391 m!5872162))

(declare-fun m!5872164 () Bool)

(assert (=> d!1564391 m!5872164))

(assert (=> d!1564391 m!5870998))

(declare-fun m!5872166 () Bool)

(assert (=> b!4871681 m!5872166))

(assert (=> b!4871678 m!5870998))

(assert (=> b!4871678 m!5871990))

(assert (=> b!4871678 m!5872152))

(assert (=> b!4871678 m!5870998))

(assert (=> b!4871678 m!5871990))

(declare-fun m!5872168 () Bool)

(assert (=> b!4871678 m!5872168))

(declare-fun m!5872170 () Bool)

(assert (=> b!4871678 m!5872170))

(assert (=> b!4871679 m!5870998))

(assert (=> b!4871679 m!5871964))

(assert (=> b!4871679 m!5871964))

(assert (=> b!4871679 m!5872154))

(assert (=> b!4871679 m!5872170))

(assert (=> b!4871679 m!5872152))

(assert (=> b!4871679 m!5870998))

(assert (=> b!4871676 m!5872156))

(declare-fun m!5872172 () Bool)

(assert (=> bm!338255 m!5872172))

(assert (=> b!4871680 m!5872152))

(assert (=> b!4871680 m!5870998))

(assert (=> b!4871680 m!5870998))

(assert (=> b!4871680 m!5871990))

(assert (=> b!4871680 m!5871990))

(assert (=> b!4871680 m!5872168))

(assert (=> b!4871106 d!1564391))

(declare-fun d!1564393 () Bool)

(declare-fun choose!35612 (Int) Bool)

(assert (=> d!1564393 (= (Forall!1676 lambda!243499) (choose!35612 lambda!243499))))

(declare-fun bs!1174670 () Bool)

(assert (= bs!1174670 d!1564393))

(declare-fun m!5872174 () Bool)

(assert (=> bs!1174670 m!5872174))

(assert (=> d!1564153 d!1564393))

(declare-fun d!1564395 () Bool)

(assert (=> d!1564395 (= (get!19235 lt!1995921) (v!49713 lt!1995921))))

(assert (=> b!4871204 d!1564395))

(declare-fun d!1564397 () Bool)

(assert (=> d!1564397 (= (get!19236 (maxPrefix!4550 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756))))) (v!49715 (maxPrefix!4550 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756))))))))

(assert (=> b!4871204 d!1564397))

(assert (=> b!4871204 d!1564065))

(declare-fun d!1564399 () Bool)

(assert (=> d!1564399 (= (list!17513 (_2!33222 (get!19235 lt!1995921))) (list!17516 (c!828451 (_2!33222 (get!19235 lt!1995921)))))))

(declare-fun bs!1174671 () Bool)

(assert (= bs!1174671 d!1564399))

(declare-fun m!5872176 () Bool)

(assert (=> bs!1174671 m!5872176))

(assert (=> b!4871204 d!1564399))

(assert (=> b!4871204 d!1564337))

(declare-fun d!1564401 () Bool)

(declare-fun lt!1996227 () Int)

(assert (=> d!1564401 (= lt!1996227 (size!36907 (list!17516 (left!40663 (c!828451 input!585)))))))

(assert (=> d!1564401 (= lt!1996227 (ite (is-Empty!14593 (left!40663 (c!828451 input!585))) 0 (ite (is-Leaf!24326 (left!40663 (c!828451 input!585))) (csize!29417 (left!40663 (c!828451 input!585))) (csize!29416 (left!40663 (c!828451 input!585))))))))

(assert (=> d!1564401 (= (size!36915 (left!40663 (c!828451 input!585))) lt!1996227)))

(declare-fun bs!1174672 () Bool)

(assert (= bs!1174672 d!1564401))

(assert (=> bs!1174672 m!5871424))

(assert (=> bs!1174672 m!5871424))

(declare-fun m!5872178 () Bool)

(assert (=> bs!1174672 m!5872178))

(assert (=> d!1564229 d!1564401))

(declare-fun d!1564403 () Bool)

(declare-fun lt!1996228 () Int)

(assert (=> d!1564403 (= lt!1996228 (size!36907 (list!17516 (right!40993 (c!828451 input!585)))))))

(assert (=> d!1564403 (= lt!1996228 (ite (is-Empty!14593 (right!40993 (c!828451 input!585))) 0 (ite (is-Leaf!24326 (right!40993 (c!828451 input!585))) (csize!29417 (right!40993 (c!828451 input!585))) (csize!29416 (right!40993 (c!828451 input!585))))))))

(assert (=> d!1564403 (= (size!36915 (right!40993 (c!828451 input!585))) lt!1996228)))

(declare-fun bs!1174673 () Bool)

(assert (= bs!1174673 d!1564403))

(assert (=> bs!1174673 m!5871426))

(assert (=> bs!1174673 m!5871426))

(declare-fun m!5872180 () Bool)

(assert (=> bs!1174673 m!5872180))

(assert (=> d!1564229 d!1564403))

(declare-fun d!1564405 () Bool)

(declare-fun res!2079615 () Bool)

(declare-fun e!3045403 () Bool)

(assert (=> d!1564405 (=> (not res!2079615) (not e!3045403))))

(assert (=> d!1564405 (= res!2079615 (= (csize!29416 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))) (+ (size!36915 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))) (size!36915 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))))))))

(assert (=> d!1564405 (= (inv!71915 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))) e!3045403)))

(declare-fun b!4871683 () Bool)

(declare-fun res!2079616 () Bool)

(assert (=> b!4871683 (=> (not res!2079616) (not e!3045403))))

(assert (=> b!4871683 (= res!2079616 (and (not (= (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))) Empty!14593)) (not (= (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))) Empty!14593))))))

(declare-fun b!4871684 () Bool)

(declare-fun res!2079617 () Bool)

(assert (=> b!4871684 (=> (not res!2079617) (not e!3045403))))

(assert (=> b!4871684 (= res!2079617 (= (cheight!14804 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))) (+ (max!0 (height!1930 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))) (height!1930 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))) 1)))))

(declare-fun b!4871685 () Bool)

(assert (=> b!4871685 (= e!3045403 (<= 0 (cheight!14804 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))))))

(assert (= (and d!1564405 res!2079615) b!4871683))

(assert (= (and b!4871683 res!2079616) b!4871684))

(assert (= (and b!4871684 res!2079617) b!4871685))

(declare-fun m!5872182 () Bool)

(assert (=> d!1564405 m!5872182))

(declare-fun m!5872184 () Bool)

(assert (=> d!1564405 m!5872184))

(declare-fun m!5872186 () Bool)

(assert (=> b!4871684 m!5872186))

(declare-fun m!5872188 () Bool)

(assert (=> b!4871684 m!5872188))

(assert (=> b!4871684 m!5872186))

(assert (=> b!4871684 m!5872188))

(declare-fun m!5872190 () Bool)

(assert (=> b!4871684 m!5872190))

(assert (=> b!4871280 d!1564405))

(declare-fun b!4871688 () Bool)

(declare-fun e!3045405 () List!56108)

(assert (=> b!4871688 (= e!3045405 (list!17519 (xs!17901 (c!828451 (_2!33223 lt!1995776)))))))

(declare-fun b!4871687 () Bool)

(declare-fun e!3045404 () List!56108)

(assert (=> b!4871687 (= e!3045404 e!3045405)))

(declare-fun c!828621 () Bool)

(assert (=> b!4871687 (= c!828621 (is-Leaf!24326 (c!828451 (_2!33223 lt!1995776))))))

(declare-fun d!1564407 () Bool)

(declare-fun c!828620 () Bool)

(assert (=> d!1564407 (= c!828620 (is-Empty!14593 (c!828451 (_2!33223 lt!1995776))))))

(assert (=> d!1564407 (= (list!17516 (c!828451 (_2!33223 lt!1995776))) e!3045404)))

(declare-fun b!4871686 () Bool)

(assert (=> b!4871686 (= e!3045404 Nil!55984)))

(declare-fun b!4871689 () Bool)

(assert (=> b!4871689 (= e!3045405 (++!12192 (list!17516 (left!40663 (c!828451 (_2!33223 lt!1995776)))) (list!17516 (right!40993 (c!828451 (_2!33223 lt!1995776))))))))

(assert (= (and d!1564407 c!828620) b!4871686))

(assert (= (and d!1564407 (not c!828620)) b!4871687))

(assert (= (and b!4871687 c!828621) b!4871688))

(assert (= (and b!4871687 (not c!828621)) b!4871689))

(declare-fun m!5872192 () Bool)

(assert (=> b!4871688 m!5872192))

(declare-fun m!5872194 () Bool)

(assert (=> b!4871689 m!5872194))

(declare-fun m!5872196 () Bool)

(assert (=> b!4871689 m!5872196))

(assert (=> b!4871689 m!5872194))

(assert (=> b!4871689 m!5872196))

(declare-fun m!5872198 () Bool)

(assert (=> b!4871689 m!5872198))

(assert (=> d!1564125 d!1564407))

(declare-fun d!1564409 () Bool)

(declare-fun e!3045406 () Bool)

(assert (=> d!1564409 e!3045406))

(declare-fun res!2079618 () Bool)

(assert (=> d!1564409 (=> (not res!2079618) (not e!3045406))))

(assert (=> d!1564409 (= res!2079618 (isBalanced!3959 (prepend!1401 (c!828453 (_1!33223 lt!1995964)) (_1!33222 (v!49713 lt!1995962)))))))

(declare-fun lt!1996229 () BalanceConc!28630)

(assert (=> d!1564409 (= lt!1996229 (BalanceConc!28631 (prepend!1401 (c!828453 (_1!33223 lt!1995964)) (_1!33222 (v!49713 lt!1995962)))))))

(assert (=> d!1564409 (= (prepend!1399 (_1!33223 lt!1995964) (_1!33222 (v!49713 lt!1995962))) lt!1996229)))

(declare-fun b!4871690 () Bool)

(assert (=> b!4871690 (= e!3045406 (= (list!17515 lt!1996229) (Cons!55987 (_1!33222 (v!49713 lt!1995962)) (list!17515 (_1!33223 lt!1995964)))))))

(assert (= (and d!1564409 res!2079618) b!4871690))

(declare-fun m!5872200 () Bool)

(assert (=> d!1564409 m!5872200))

(assert (=> d!1564409 m!5872200))

(declare-fun m!5872202 () Bool)

(assert (=> d!1564409 m!5872202))

(declare-fun m!5872204 () Bool)

(assert (=> b!4871690 m!5872204))

(declare-fun m!5872206 () Bool)

(assert (=> b!4871690 m!5872206))

(assert (=> b!4871278 d!1564409))

(declare-fun d!1564411 () Bool)

(declare-fun e!3045408 () Bool)

(assert (=> d!1564411 e!3045408))

(declare-fun res!2079620 () Bool)

(assert (=> d!1564411 (=> (not res!2079620) (not e!3045408))))

(declare-fun e!3045409 () Bool)

(assert (=> d!1564411 (= res!2079620 e!3045409)))

(declare-fun c!828623 () Bool)

(declare-fun lt!1996231 () tuple2!59840)

(assert (=> d!1564411 (= c!828623 (> (size!36908 (_1!33223 lt!1996231)) 0))))

(declare-fun e!3045410 () tuple2!59840)

(assert (=> d!1564411 (= lt!1996231 e!3045410)))

(declare-fun c!828622 () Bool)

(declare-fun lt!1996230 () Option!13792)

(assert (=> d!1564411 (= c!828622 (is-Some!13791 lt!1996230))))

(assert (=> d!1564411 (= lt!1996230 (maxPrefixZipperSequence!1234 thiss!11460 rules!1164 (_2!33222 (v!49713 lt!1995962))))))

(assert (=> d!1564411 (= (lexRec!850 thiss!11460 rules!1164 (_2!33222 (v!49713 lt!1995962))) lt!1996231)))

(declare-fun b!4871691 () Bool)

(assert (=> b!4871691 (= e!3045409 (= (list!17513 (_2!33223 lt!1996231)) (list!17513 (_2!33222 (v!49713 lt!1995962)))))))

(declare-fun b!4871692 () Bool)

(declare-fun e!3045407 () Bool)

(assert (=> b!4871692 (= e!3045407 (not (isEmpty!29960 (_1!33223 lt!1996231))))))

(declare-fun b!4871693 () Bool)

(assert (=> b!4871693 (= e!3045409 e!3045407)))

(declare-fun res!2079619 () Bool)

(assert (=> b!4871693 (= res!2079619 (< (size!36909 (_2!33223 lt!1996231)) (size!36909 (_2!33222 (v!49713 lt!1995962)))))))

(assert (=> b!4871693 (=> (not res!2079619) (not e!3045407))))

(declare-fun b!4871694 () Bool)

(assert (=> b!4871694 (= e!3045410 (tuple2!59841 (BalanceConc!28631 Empty!14594) (_2!33222 (v!49713 lt!1995962))))))

(declare-fun b!4871695 () Bool)

(declare-fun res!2079621 () Bool)

(assert (=> b!4871695 (=> (not res!2079621) (not e!3045408))))

(assert (=> b!4871695 (= res!2079621 (= (list!17515 (_1!33223 lt!1996231)) (_1!33226 (lexList!2108 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995962)))))))))

(declare-fun b!4871696 () Bool)

(declare-fun lt!1996232 () tuple2!59840)

(assert (=> b!4871696 (= e!3045410 (tuple2!59841 (prepend!1399 (_1!33223 lt!1996232) (_1!33222 (v!49713 lt!1996230))) (_2!33223 lt!1996232)))))

(assert (=> b!4871696 (= lt!1996232 (lexRec!850 thiss!11460 rules!1164 (_2!33222 (v!49713 lt!1996230))))))

(declare-fun b!4871697 () Bool)

(assert (=> b!4871697 (= e!3045408 (= (list!17513 (_2!33223 lt!1996231)) (_2!33226 (lexList!2108 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995962)))))))))

(assert (= (and d!1564411 c!828622) b!4871696))

(assert (= (and d!1564411 (not c!828622)) b!4871694))

(assert (= (and d!1564411 c!828623) b!4871693))

(assert (= (and d!1564411 (not c!828623)) b!4871691))

(assert (= (and b!4871693 res!2079619) b!4871692))

(assert (= (and d!1564411 res!2079620) b!4871695))

(assert (= (and b!4871695 res!2079621) b!4871697))

(declare-fun m!5872208 () Bool)

(assert (=> b!4871695 m!5872208))

(declare-fun m!5872210 () Bool)

(assert (=> b!4871695 m!5872210))

(assert (=> b!4871695 m!5872210))

(declare-fun m!5872212 () Bool)

(assert (=> b!4871695 m!5872212))

(declare-fun m!5872214 () Bool)

(assert (=> d!1564411 m!5872214))

(declare-fun m!5872216 () Bool)

(assert (=> d!1564411 m!5872216))

(declare-fun m!5872218 () Bool)

(assert (=> b!4871692 m!5872218))

(declare-fun m!5872220 () Bool)

(assert (=> b!4871693 m!5872220))

(declare-fun m!5872222 () Bool)

(assert (=> b!4871693 m!5872222))

(declare-fun m!5872224 () Bool)

(assert (=> b!4871696 m!5872224))

(declare-fun m!5872226 () Bool)

(assert (=> b!4871696 m!5872226))

(declare-fun m!5872228 () Bool)

(assert (=> b!4871697 m!5872228))

(assert (=> b!4871697 m!5872210))

(assert (=> b!4871697 m!5872210))

(assert (=> b!4871697 m!5872212))

(assert (=> b!4871691 m!5872228))

(assert (=> b!4871691 m!5872210))

(assert (=> b!4871278 d!1564411))

(declare-fun b!4871710 () Bool)

(declare-fun res!2079637 () Bool)

(declare-fun e!3045415 () Bool)

(assert (=> b!4871710 (=> (not res!2079637) (not e!3045415))))

(assert (=> b!4871710 (= res!2079637 (isBalanced!3959 (right!40994 (prepend!1401 (c!828453 (_1!33223 lt!1995777)) (_1!33222 (v!49713 lt!1995775))))))))

(declare-fun b!4871711 () Bool)

(declare-fun res!2079639 () Bool)

(assert (=> b!4871711 (=> (not res!2079639) (not e!3045415))))

(assert (=> b!4871711 (= res!2079639 (isBalanced!3959 (left!40664 (prepend!1401 (c!828453 (_1!33223 lt!1995777)) (_1!33222 (v!49713 lt!1995775))))))))

(declare-fun b!4871712 () Bool)

(declare-fun res!2079636 () Bool)

(assert (=> b!4871712 (=> (not res!2079636) (not e!3045415))))

(assert (=> b!4871712 (= res!2079636 (not (isEmpty!29970 (left!40664 (prepend!1401 (c!828453 (_1!33223 lt!1995777)) (_1!33222 (v!49713 lt!1995775)))))))))

(declare-fun b!4871713 () Bool)

(declare-fun res!2079635 () Bool)

(assert (=> b!4871713 (=> (not res!2079635) (not e!3045415))))

(declare-fun height!1932 (Conc!14594) Int)

(assert (=> b!4871713 (= res!2079635 (<= (- (height!1932 (left!40664 (prepend!1401 (c!828453 (_1!33223 lt!1995777)) (_1!33222 (v!49713 lt!1995775))))) (height!1932 (right!40994 (prepend!1401 (c!828453 (_1!33223 lt!1995777)) (_1!33222 (v!49713 lt!1995775)))))) 1))))

(declare-fun b!4871714 () Bool)

(declare-fun e!3045416 () Bool)

(assert (=> b!4871714 (= e!3045416 e!3045415)))

(declare-fun res!2079634 () Bool)

(assert (=> b!4871714 (=> (not res!2079634) (not e!3045415))))

(assert (=> b!4871714 (= res!2079634 (<= (- 1) (- (height!1932 (left!40664 (prepend!1401 (c!828453 (_1!33223 lt!1995777)) (_1!33222 (v!49713 lt!1995775))))) (height!1932 (right!40994 (prepend!1401 (c!828453 (_1!33223 lt!1995777)) (_1!33222 (v!49713 lt!1995775))))))))))

(declare-fun d!1564413 () Bool)

(declare-fun res!2079638 () Bool)

(assert (=> d!1564413 (=> res!2079638 e!3045416)))

(assert (=> d!1564413 (= res!2079638 (not (is-Node!14594 (prepend!1401 (c!828453 (_1!33223 lt!1995777)) (_1!33222 (v!49713 lt!1995775))))))))

(assert (=> d!1564413 (= (isBalanced!3959 (prepend!1401 (c!828453 (_1!33223 lt!1995777)) (_1!33222 (v!49713 lt!1995775)))) e!3045416)))

(declare-fun b!4871715 () Bool)

(assert (=> b!4871715 (= e!3045415 (not (isEmpty!29970 (right!40994 (prepend!1401 (c!828453 (_1!33223 lt!1995777)) (_1!33222 (v!49713 lt!1995775)))))))))

(assert (= (and d!1564413 (not res!2079638)) b!4871714))

(assert (= (and b!4871714 res!2079634) b!4871713))

(assert (= (and b!4871713 res!2079635) b!4871711))

(assert (= (and b!4871711 res!2079639) b!4871710))

(assert (= (and b!4871710 res!2079637) b!4871712))

(assert (= (and b!4871712 res!2079636) b!4871715))

(declare-fun m!5872230 () Bool)

(assert (=> b!4871710 m!5872230))

(declare-fun m!5872232 () Bool)

(assert (=> b!4871713 m!5872232))

(declare-fun m!5872234 () Bool)

(assert (=> b!4871713 m!5872234))

(declare-fun m!5872236 () Bool)

(assert (=> b!4871712 m!5872236))

(assert (=> b!4871714 m!5872232))

(assert (=> b!4871714 m!5872234))

(declare-fun m!5872238 () Bool)

(assert (=> b!4871715 m!5872238))

(declare-fun m!5872240 () Bool)

(assert (=> b!4871711 m!5872240))

(assert (=> d!1564213 d!1564413))

(declare-fun d!1564415 () Bool)

(declare-fun e!3045419 () Bool)

(assert (=> d!1564415 e!3045419))

(declare-fun res!2079642 () Bool)

(assert (=> d!1564415 (=> (not res!2079642) (not e!3045419))))

(declare-fun lt!1996235 () Conc!14594)

(assert (=> d!1564415 (= res!2079642 (isBalanced!3959 lt!1996235))))

(declare-fun ++!12194 (Conc!14594 Conc!14594) Conc!14594)

(declare-fun fill!224 (Int Token!14670) IArray!29249)

(assert (=> d!1564415 (= lt!1996235 (++!12194 (Leaf!24327 (fill!224 1 (_1!33222 (v!49713 lt!1995775))) 1) (c!828453 (_1!33223 lt!1995777))))))

(assert (=> d!1564415 (isBalanced!3959 (c!828453 (_1!33223 lt!1995777)))))

(assert (=> d!1564415 (= (prepend!1401 (c!828453 (_1!33223 lt!1995777)) (_1!33222 (v!49713 lt!1995775))) lt!1996235)))

(declare-fun b!4871718 () Bool)

(assert (=> b!4871718 (= e!3045419 (= (list!17521 lt!1996235) (Cons!55987 (_1!33222 (v!49713 lt!1995775)) (list!17521 (c!828453 (_1!33223 lt!1995777))))))))

(assert (= (and d!1564415 res!2079642) b!4871718))

(declare-fun m!5872242 () Bool)

(assert (=> d!1564415 m!5872242))

(declare-fun m!5872244 () Bool)

(assert (=> d!1564415 m!5872244))

(declare-fun m!5872246 () Bool)

(assert (=> d!1564415 m!5872246))

(declare-fun m!5872248 () Bool)

(assert (=> d!1564415 m!5872248))

(declare-fun m!5872250 () Bool)

(assert (=> b!4871718 m!5872250))

(declare-fun m!5872252 () Bool)

(assert (=> b!4871718 m!5872252))

(assert (=> d!1564213 d!1564415))

(declare-fun d!1564417 () Bool)

(declare-fun lt!1996236 () Bool)

(assert (=> d!1564417 (= lt!1996236 (isEmpty!29964 (list!17515 (_1!33223 lt!1995963))))))

(assert (=> d!1564417 (= lt!1996236 (isEmpty!29970 (c!828453 (_1!33223 lt!1995963))))))

(assert (=> d!1564417 (= (isEmpty!29960 (_1!33223 lt!1995963)) lt!1996236)))

(declare-fun bs!1174674 () Bool)

(assert (= bs!1174674 d!1564417))

(assert (=> bs!1174674 m!5871582))

(assert (=> bs!1174674 m!5871582))

(declare-fun m!5872254 () Bool)

(assert (=> bs!1174674 m!5872254))

(declare-fun m!5872256 () Bool)

(assert (=> bs!1174674 m!5872256))

(assert (=> b!4871274 d!1564417))

(declare-fun d!1564419 () Bool)

(declare-fun res!2079643 () Bool)

(declare-fun e!3045420 () Bool)

(assert (=> d!1564419 (=> (not res!2079643) (not e!3045420))))

(assert (=> d!1564419 (= res!2079643 (= (csize!29416 (left!40663 (c!828451 input!585))) (+ (size!36915 (left!40663 (left!40663 (c!828451 input!585)))) (size!36915 (right!40993 (left!40663 (c!828451 input!585)))))))))

(assert (=> d!1564419 (= (inv!71915 (left!40663 (c!828451 input!585))) e!3045420)))

(declare-fun b!4871719 () Bool)

(declare-fun res!2079644 () Bool)

(assert (=> b!4871719 (=> (not res!2079644) (not e!3045420))))

(assert (=> b!4871719 (= res!2079644 (and (not (= (left!40663 (left!40663 (c!828451 input!585))) Empty!14593)) (not (= (right!40993 (left!40663 (c!828451 input!585))) Empty!14593))))))

(declare-fun b!4871720 () Bool)

(declare-fun res!2079645 () Bool)

(assert (=> b!4871720 (=> (not res!2079645) (not e!3045420))))

(assert (=> b!4871720 (= res!2079645 (= (cheight!14804 (left!40663 (c!828451 input!585))) (+ (max!0 (height!1930 (left!40663 (left!40663 (c!828451 input!585)))) (height!1930 (right!40993 (left!40663 (c!828451 input!585))))) 1)))))

(declare-fun b!4871721 () Bool)

(assert (=> b!4871721 (= e!3045420 (<= 0 (cheight!14804 (left!40663 (c!828451 input!585)))))))

(assert (= (and d!1564419 res!2079643) b!4871719))

(assert (= (and b!4871719 res!2079644) b!4871720))

(assert (= (and b!4871720 res!2079645) b!4871721))

(declare-fun m!5872258 () Bool)

(assert (=> d!1564419 m!5872258))

(declare-fun m!5872260 () Bool)

(assert (=> d!1564419 m!5872260))

(declare-fun m!5872262 () Bool)

(assert (=> b!4871720 m!5872262))

(declare-fun m!5872264 () Bool)

(assert (=> b!4871720 m!5872264))

(assert (=> b!4871720 m!5872262))

(assert (=> b!4871720 m!5872264))

(declare-fun m!5872266 () Bool)

(assert (=> b!4871720 m!5872266))

(assert (=> b!4871184 d!1564419))

(declare-fun d!1564421 () Bool)

(assert (=> d!1564421 (= (inv!71917 (xs!17901 (left!40663 (c!828451 input!585)))) (<= (size!36907 (innerList!14681 (xs!17901 (left!40663 (c!828451 input!585))))) 2147483647))))

(declare-fun bs!1174675 () Bool)

(assert (= bs!1174675 d!1564421))

(declare-fun m!5872268 () Bool)

(assert (=> bs!1174675 m!5872268))

(assert (=> b!4871303 d!1564421))

(declare-fun b!4871722 () Bool)

(declare-fun res!2079646 () Bool)

(declare-fun e!3045422 () Bool)

(assert (=> b!4871722 (=> (not res!2079646) (not e!3045422))))

(assert (=> b!4871722 (= res!2079646 (<= (- (height!1930 (left!40663 (left!40663 (c!828451 input!585)))) (height!1930 (right!40993 (left!40663 (c!828451 input!585))))) 1))))

(declare-fun b!4871723 () Bool)

(declare-fun res!2079651 () Bool)

(assert (=> b!4871723 (=> (not res!2079651) (not e!3045422))))

(assert (=> b!4871723 (= res!2079651 (isBalanced!3957 (right!40993 (left!40663 (c!828451 input!585)))))))

(declare-fun b!4871724 () Bool)

(declare-fun res!2079650 () Bool)

(assert (=> b!4871724 (=> (not res!2079650) (not e!3045422))))

(assert (=> b!4871724 (= res!2079650 (isBalanced!3957 (left!40663 (left!40663 (c!828451 input!585)))))))

(declare-fun b!4871725 () Bool)

(declare-fun e!3045421 () Bool)

(assert (=> b!4871725 (= e!3045421 e!3045422)))

(declare-fun res!2079647 () Bool)

(assert (=> b!4871725 (=> (not res!2079647) (not e!3045422))))

(assert (=> b!4871725 (= res!2079647 (<= (- 1) (- (height!1930 (left!40663 (left!40663 (c!828451 input!585)))) (height!1930 (right!40993 (left!40663 (c!828451 input!585)))))))))

(declare-fun b!4871726 () Bool)

(declare-fun res!2079648 () Bool)

(assert (=> b!4871726 (=> (not res!2079648) (not e!3045422))))

(assert (=> b!4871726 (= res!2079648 (not (isEmpty!29963 (left!40663 (left!40663 (c!828451 input!585))))))))

(declare-fun b!4871727 () Bool)

(assert (=> b!4871727 (= e!3045422 (not (isEmpty!29963 (right!40993 (left!40663 (c!828451 input!585))))))))

(declare-fun d!1564423 () Bool)

(declare-fun res!2079649 () Bool)

(assert (=> d!1564423 (=> res!2079649 e!3045421)))

(assert (=> d!1564423 (= res!2079649 (not (is-Node!14593 (left!40663 (c!828451 input!585)))))))

(assert (=> d!1564423 (= (isBalanced!3957 (left!40663 (c!828451 input!585))) e!3045421)))

(assert (= (and d!1564423 (not res!2079649)) b!4871725))

(assert (= (and b!4871725 res!2079647) b!4871722))

(assert (= (and b!4871722 res!2079646) b!4871724))

(assert (= (and b!4871724 res!2079650) b!4871723))

(assert (= (and b!4871723 res!2079651) b!4871726))

(assert (= (and b!4871726 res!2079648) b!4871727))

(declare-fun m!5872270 () Bool)

(assert (=> b!4871727 m!5872270))

(declare-fun m!5872272 () Bool)

(assert (=> b!4871726 m!5872272))

(assert (=> b!4871725 m!5872262))

(assert (=> b!4871725 m!5872264))

(declare-fun m!5872274 () Bool)

(assert (=> b!4871724 m!5872274))

(declare-fun m!5872276 () Bool)

(assert (=> b!4871723 m!5872276))

(assert (=> b!4871722 m!5872262))

(assert (=> b!4871722 m!5872264))

(assert (=> b!4871061 d!1564423))

(assert (=> b!4871105 d!1564339))

(declare-fun d!1564425 () Bool)

(assert (=> d!1564425 (= (get!19236 (maxPrefix!4550 thiss!11460 (t!364180 rules!1164) (list!17513 input!585))) (v!49715 (maxPrefix!4550 thiss!11460 (t!364180 rules!1164) (list!17513 input!585))))))

(assert (=> b!4871105 d!1564425))

(assert (=> b!4871105 d!1564345))

(assert (=> b!4871105 d!1564069))

(declare-fun b!4871731 () Bool)

(declare-fun e!3045424 () Bool)

(declare-fun lt!1996237 () List!56108)

(assert (=> b!4871731 (= e!3045424 (or (not (= (_2!33227 (get!19236 lt!1995860)) Nil!55984)) (= lt!1996237 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860)))))))))

(declare-fun b!4871730 () Bool)

(declare-fun res!2079652 () Bool)

(assert (=> b!4871730 (=> (not res!2079652) (not e!3045424))))

(assert (=> b!4871730 (= res!2079652 (= (size!36907 lt!1996237) (+ (size!36907 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860))))) (size!36907 (_2!33227 (get!19236 lt!1995860))))))))

(declare-fun d!1564427 () Bool)

(assert (=> d!1564427 e!3045424))

(declare-fun res!2079653 () Bool)

(assert (=> d!1564427 (=> (not res!2079653) (not e!3045424))))

(assert (=> d!1564427 (= res!2079653 (= (content!9981 lt!1996237) (set.union (content!9981 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860))))) (content!9981 (_2!33227 (get!19236 lt!1995860))))))))

(declare-fun e!3045423 () List!56108)

(assert (=> d!1564427 (= lt!1996237 e!3045423)))

(declare-fun c!828624 () Bool)

(assert (=> d!1564427 (= c!828624 (is-Nil!55984 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860))))))))

(assert (=> d!1564427 (= (++!12192 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860)))) (_2!33227 (get!19236 lt!1995860))) lt!1996237)))

(declare-fun b!4871728 () Bool)

(assert (=> b!4871728 (= e!3045423 (_2!33227 (get!19236 lt!1995860)))))

(declare-fun b!4871729 () Bool)

(assert (=> b!4871729 (= e!3045423 (Cons!55984 (h!62432 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860))))) (++!12192 (t!364178 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860))))) (_2!33227 (get!19236 lt!1995860)))))))

(assert (= (and d!1564427 c!828624) b!4871728))

(assert (= (and d!1564427 (not c!828624)) b!4871729))

(assert (= (and d!1564427 res!2079653) b!4871730))

(assert (= (and b!4871730 res!2079652) b!4871731))

(declare-fun m!5872278 () Bool)

(assert (=> b!4871730 m!5872278))

(assert (=> b!4871730 m!5871254))

(declare-fun m!5872280 () Bool)

(assert (=> b!4871730 m!5872280))

(assert (=> b!4871730 m!5871266))

(declare-fun m!5872282 () Bool)

(assert (=> d!1564427 m!5872282))

(assert (=> d!1564427 m!5871254))

(declare-fun m!5872284 () Bool)

(assert (=> d!1564427 m!5872284))

(declare-fun m!5872286 () Bool)

(assert (=> d!1564427 m!5872286))

(declare-fun m!5872288 () Bool)

(assert (=> b!4871729 m!5872288))

(assert (=> b!4871036 d!1564427))

(declare-fun d!1564429 () Bool)

(assert (=> d!1564429 (= (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860)))) (list!17516 (c!828451 (charsOf!5342 (_1!33227 (get!19236 lt!1995860))))))))

(declare-fun bs!1174676 () Bool)

(assert (= bs!1174676 d!1564429))

(declare-fun m!5872290 () Bool)

(assert (=> bs!1174676 m!5872290))

(assert (=> b!4871036 d!1564429))

(declare-fun d!1564431 () Bool)

(declare-fun lt!1996238 () BalanceConc!28628)

(assert (=> d!1564431 (= (list!17513 lt!1996238) (originalCharacters!8366 (_1!33227 (get!19236 lt!1995860))))))

(assert (=> d!1564431 (= lt!1996238 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860))))) (value!258369 (_1!33227 (get!19236 lt!1995860)))))))

(assert (=> d!1564431 (= (charsOf!5342 (_1!33227 (get!19236 lt!1995860))) lt!1996238)))

(declare-fun b_lambda!193691 () Bool)

(assert (=> (not b_lambda!193691) (not d!1564431)))

(declare-fun t!364222 () Bool)

(declare-fun tb!257987 () Bool)

(assert (=> (and b!4870756 (= (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (toChars!10773 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860)))))) t!364222) tb!257987))

(declare-fun b!4871732 () Bool)

(declare-fun e!3045425 () Bool)

(declare-fun tp!1370686 () Bool)

(assert (=> b!4871732 (= e!3045425 (and (inv!71910 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860))))) (value!258369 (_1!33227 (get!19236 lt!1995860)))))) tp!1370686))))

(declare-fun result!321168 () Bool)

(assert (=> tb!257987 (= result!321168 (and (inv!71909 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860))))) (value!258369 (_1!33227 (get!19236 lt!1995860))))) e!3045425))))

(assert (= tb!257987 b!4871732))

(declare-fun m!5872292 () Bool)

(assert (=> b!4871732 m!5872292))

(declare-fun m!5872294 () Bool)

(assert (=> tb!257987 m!5872294))

(assert (=> d!1564431 t!364222))

(declare-fun b_and!343053 () Bool)

(assert (= b_and!343015 (and (=> t!364222 result!321168) b_and!343053)))

(declare-fun t!364224 () Bool)

(declare-fun tb!257989 () Bool)

(assert (=> (and b!4870894 (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toChars!10773 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860)))))) t!364224) tb!257989))

(declare-fun result!321170 () Bool)

(assert (= result!321170 result!321168))

(assert (=> d!1564431 t!364224))

(declare-fun b_and!343055 () Bool)

(assert (= b_and!343019 (and (=> t!364224 result!321170) b_and!343055)))

(declare-fun t!364226 () Bool)

(declare-fun tb!257991 () Bool)

(assert (=> (and b!4871338 (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 (t!364180 rules!1164))))) (toChars!10773 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860)))))) t!364226) tb!257991))

(declare-fun result!321172 () Bool)

(assert (= result!321172 result!321168))

(assert (=> d!1564431 t!364226))

(declare-fun b_and!343057 () Bool)

(assert (= b_and!343029 (and (=> t!364226 result!321172) b_and!343057)))

(declare-fun m!5872296 () Bool)

(assert (=> d!1564431 m!5872296))

(declare-fun m!5872298 () Bool)

(assert (=> d!1564431 m!5872298))

(assert (=> b!4871036 d!1564431))

(declare-fun d!1564433 () Bool)

(assert (=> d!1564433 (= (get!19236 lt!1995860) (v!49715 lt!1995860))))

(assert (=> b!4871036 d!1564433))

(declare-fun d!1564435 () Bool)

(assert (=> d!1564435 (= (isDefined!10850 lt!1995878) (not (isEmpty!29965 lt!1995878)))))

(declare-fun bs!1174677 () Bool)

(assert (= bs!1174677 d!1564435))

(declare-fun m!5872300 () Bool)

(assert (=> bs!1174677 m!5872300))

(assert (=> b!4871101 d!1564435))

(assert (=> b!4871032 d!1564429))

(assert (=> b!4871032 d!1564431))

(assert (=> b!4871032 d!1564433))

(declare-fun d!1564437 () Bool)

(declare-fun lt!1996239 () Int)

(assert (=> d!1564437 (>= lt!1996239 0)))

(declare-fun e!3045426 () Int)

(assert (=> d!1564437 (= lt!1996239 e!3045426)))

(declare-fun c!828625 () Bool)

(assert (=> d!1564437 (= c!828625 (is-Nil!55984 (innerList!14681 (xs!17901 (c!828451 input!585)))))))

(assert (=> d!1564437 (= (size!36907 (innerList!14681 (xs!17901 (c!828451 input!585)))) lt!1996239)))

(declare-fun b!4871733 () Bool)

(assert (=> b!4871733 (= e!3045426 0)))

(declare-fun b!4871734 () Bool)

(assert (=> b!4871734 (= e!3045426 (+ 1 (size!36907 (t!364178 (innerList!14681 (xs!17901 (c!828451 input!585)))))))))

(assert (= (and d!1564437 c!828625) b!4871733))

(assert (= (and d!1564437 (not c!828625)) b!4871734))

(declare-fun m!5872302 () Bool)

(assert (=> b!4871734 m!5872302))

(assert (=> d!1564161 d!1564437))

(declare-fun b!4871738 () Bool)

(declare-fun e!3045428 () Bool)

(declare-fun lt!1996240 () List!56108)

(assert (=> b!4871738 (= e!3045428 (or (not (= (list!17516 (right!40993 (c!828451 input!585))) Nil!55984)) (= lt!1996240 (list!17516 (left!40663 (c!828451 input!585))))))))

(declare-fun b!4871737 () Bool)

(declare-fun res!2079654 () Bool)

(assert (=> b!4871737 (=> (not res!2079654) (not e!3045428))))

(assert (=> b!4871737 (= res!2079654 (= (size!36907 lt!1996240) (+ (size!36907 (list!17516 (left!40663 (c!828451 input!585)))) (size!36907 (list!17516 (right!40993 (c!828451 input!585)))))))))

(declare-fun d!1564439 () Bool)

(assert (=> d!1564439 e!3045428))

(declare-fun res!2079655 () Bool)

(assert (=> d!1564439 (=> (not res!2079655) (not e!3045428))))

(assert (=> d!1564439 (= res!2079655 (= (content!9981 lt!1996240) (set.union (content!9981 (list!17516 (left!40663 (c!828451 input!585)))) (content!9981 (list!17516 (right!40993 (c!828451 input!585)))))))))

(declare-fun e!3045427 () List!56108)

(assert (=> d!1564439 (= lt!1996240 e!3045427)))

(declare-fun c!828626 () Bool)

(assert (=> d!1564439 (= c!828626 (is-Nil!55984 (list!17516 (left!40663 (c!828451 input!585)))))))

(assert (=> d!1564439 (= (++!12192 (list!17516 (left!40663 (c!828451 input!585))) (list!17516 (right!40993 (c!828451 input!585)))) lt!1996240)))

(declare-fun b!4871735 () Bool)

(assert (=> b!4871735 (= e!3045427 (list!17516 (right!40993 (c!828451 input!585))))))

(declare-fun b!4871736 () Bool)

(assert (=> b!4871736 (= e!3045427 (Cons!55984 (h!62432 (list!17516 (left!40663 (c!828451 input!585)))) (++!12192 (t!364178 (list!17516 (left!40663 (c!828451 input!585)))) (list!17516 (right!40993 (c!828451 input!585))))))))

(assert (= (and d!1564439 c!828626) b!4871735))

(assert (= (and d!1564439 (not c!828626)) b!4871736))

(assert (= (and d!1564439 res!2079655) b!4871737))

(assert (= (and b!4871737 res!2079654) b!4871738))

(declare-fun m!5872304 () Bool)

(assert (=> b!4871737 m!5872304))

(assert (=> b!4871737 m!5871424))

(assert (=> b!4871737 m!5872178))

(assert (=> b!4871737 m!5871426))

(assert (=> b!4871737 m!5872180))

(declare-fun m!5872306 () Bool)

(assert (=> d!1564439 m!5872306))

(assert (=> d!1564439 m!5871424))

(declare-fun m!5872308 () Bool)

(assert (=> d!1564439 m!5872308))

(assert (=> d!1564439 m!5871426))

(declare-fun m!5872310 () Bool)

(assert (=> d!1564439 m!5872310))

(assert (=> b!4871736 m!5871426))

(declare-fun m!5872312 () Bool)

(assert (=> b!4871736 m!5872312))

(assert (=> b!4871172 d!1564439))

(declare-fun b!4871741 () Bool)

(declare-fun e!3045430 () List!56108)

(assert (=> b!4871741 (= e!3045430 (list!17519 (xs!17901 (left!40663 (c!828451 input!585)))))))

(declare-fun b!4871740 () Bool)

(declare-fun e!3045429 () List!56108)

(assert (=> b!4871740 (= e!3045429 e!3045430)))

(declare-fun c!828628 () Bool)

(assert (=> b!4871740 (= c!828628 (is-Leaf!24326 (left!40663 (c!828451 input!585))))))

(declare-fun d!1564441 () Bool)

(declare-fun c!828627 () Bool)

(assert (=> d!1564441 (= c!828627 (is-Empty!14593 (left!40663 (c!828451 input!585))))))

(assert (=> d!1564441 (= (list!17516 (left!40663 (c!828451 input!585))) e!3045429)))

(declare-fun b!4871739 () Bool)

(assert (=> b!4871739 (= e!3045429 Nil!55984)))

(declare-fun b!4871742 () Bool)

(assert (=> b!4871742 (= e!3045430 (++!12192 (list!17516 (left!40663 (left!40663 (c!828451 input!585)))) (list!17516 (right!40993 (left!40663 (c!828451 input!585))))))))

(assert (= (and d!1564441 c!828627) b!4871739))

(assert (= (and d!1564441 (not c!828627)) b!4871740))

(assert (= (and b!4871740 c!828628) b!4871741))

(assert (= (and b!4871740 (not c!828628)) b!4871742))

(declare-fun m!5872314 () Bool)

(assert (=> b!4871741 m!5872314))

(declare-fun m!5872316 () Bool)

(assert (=> b!4871742 m!5872316))

(declare-fun m!5872318 () Bool)

(assert (=> b!4871742 m!5872318))

(assert (=> b!4871742 m!5872316))

(assert (=> b!4871742 m!5872318))

(declare-fun m!5872320 () Bool)

(assert (=> b!4871742 m!5872320))

(assert (=> b!4871172 d!1564441))

(declare-fun b!4871745 () Bool)

(declare-fun e!3045432 () List!56108)

(assert (=> b!4871745 (= e!3045432 (list!17519 (xs!17901 (right!40993 (c!828451 input!585)))))))

(declare-fun b!4871744 () Bool)

(declare-fun e!3045431 () List!56108)

(assert (=> b!4871744 (= e!3045431 e!3045432)))

(declare-fun c!828630 () Bool)

(assert (=> b!4871744 (= c!828630 (is-Leaf!24326 (right!40993 (c!828451 input!585))))))

(declare-fun d!1564443 () Bool)

(declare-fun c!828629 () Bool)

(assert (=> d!1564443 (= c!828629 (is-Empty!14593 (right!40993 (c!828451 input!585))))))

(assert (=> d!1564443 (= (list!17516 (right!40993 (c!828451 input!585))) e!3045431)))

(declare-fun b!4871743 () Bool)

(assert (=> b!4871743 (= e!3045431 Nil!55984)))

(declare-fun b!4871746 () Bool)

(assert (=> b!4871746 (= e!3045432 (++!12192 (list!17516 (left!40663 (right!40993 (c!828451 input!585)))) (list!17516 (right!40993 (right!40993 (c!828451 input!585))))))))

(assert (= (and d!1564443 c!828629) b!4871743))

(assert (= (and d!1564443 (not c!828629)) b!4871744))

(assert (= (and b!4871744 c!828630) b!4871745))

(assert (= (and b!4871744 (not c!828630)) b!4871746))

(declare-fun m!5872322 () Bool)

(assert (=> b!4871745 m!5872322))

(declare-fun m!5872324 () Bool)

(assert (=> b!4871746 m!5872324))

(declare-fun m!5872326 () Bool)

(assert (=> b!4871746 m!5872326))

(assert (=> b!4871746 m!5872324))

(assert (=> b!4871746 m!5872326))

(declare-fun m!5872328 () Bool)

(assert (=> b!4871746 m!5872328))

(assert (=> b!4871172 d!1564443))

(declare-fun d!1564445 () Bool)

(declare-fun c!828631 () Bool)

(assert (=> d!1564445 (= c!828631 (is-Nil!55984 lt!1995874))))

(declare-fun e!3045433 () (Set C!26434))

(assert (=> d!1564445 (= (content!9981 lt!1995874) e!3045433)))

(declare-fun b!4871747 () Bool)

(assert (=> b!4871747 (= e!3045433 (as set.empty (Set C!26434)))))

(declare-fun b!4871748 () Bool)

(assert (=> b!4871748 (= e!3045433 (set.union (set.insert (h!62432 lt!1995874) (as set.empty (Set C!26434))) (content!9981 (t!364178 lt!1995874))))))

(assert (= (and d!1564445 c!828631) b!4871747))

(assert (= (and d!1564445 (not c!828631)) b!4871748))

(declare-fun m!5872330 () Bool)

(assert (=> b!4871748 m!5872330))

(declare-fun m!5872332 () Bool)

(assert (=> b!4871748 m!5872332))

(assert (=> d!1564133 d!1564445))

(declare-fun d!1564447 () Bool)

(declare-fun c!828632 () Bool)

(assert (=> d!1564447 (= c!828632 (is-Nil!55984 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))

(declare-fun e!3045434 () (Set C!26434))

(assert (=> d!1564447 (= (content!9981 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))) e!3045434)))

(declare-fun b!4871749 () Bool)

(assert (=> b!4871749 (= e!3045434 (as set.empty (Set C!26434)))))

(declare-fun b!4871750 () Bool)

(assert (=> b!4871750 (= e!3045434 (set.union (set.insert (h!62432 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))) (as set.empty (Set C!26434))) (content!9981 (t!364178 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))))

(assert (= (and d!1564447 c!828632) b!4871749))

(assert (= (and d!1564447 (not c!828632)) b!4871750))

(declare-fun m!5872334 () Bool)

(assert (=> b!4871750 m!5872334))

(declare-fun m!5872336 () Bool)

(assert (=> b!4871750 m!5872336))

(assert (=> d!1564133 d!1564447))

(assert (=> d!1564133 d!1564167))

(declare-fun d!1564449 () Bool)

(assert (=> d!1564449 (= (isEmpty!29964 (list!17515 (_1!33223 lt!1995776))) (is-Nil!55987 (list!17515 (_1!33223 lt!1995776))))))

(assert (=> d!1564227 d!1564449))

(assert (=> d!1564227 d!1564223))

(declare-fun d!1564451 () Bool)

(declare-fun lt!1996243 () Bool)

(assert (=> d!1564451 (= lt!1996243 (isEmpty!29964 (list!17521 (c!828453 (_1!33223 lt!1995776)))))))

(assert (=> d!1564451 (= lt!1996243 (= (size!36914 (c!828453 (_1!33223 lt!1995776))) 0))))

(assert (=> d!1564451 (= (isEmpty!29970 (c!828453 (_1!33223 lt!1995776))) lt!1996243)))

(declare-fun bs!1174678 () Bool)

(assert (= bs!1174678 d!1564451))

(assert (=> bs!1174678 m!5871604))

(assert (=> bs!1174678 m!5871604))

(declare-fun m!5872338 () Bool)

(assert (=> bs!1174678 m!5872338))

(assert (=> bs!1174678 m!5871470))

(assert (=> d!1564227 d!1564451))

(declare-fun b!4871759 () Bool)

(declare-fun e!3045439 () List!56111)

(assert (=> b!4871759 (= e!3045439 Nil!55987)))

(declare-fun d!1564453 () Bool)

(declare-fun c!828637 () Bool)

(assert (=> d!1564453 (= c!828637 (is-Empty!14594 (c!828453 (_1!33223 lt!1995776))))))

(assert (=> d!1564453 (= (list!17521 (c!828453 (_1!33223 lt!1995776))) e!3045439)))

(declare-fun b!4871762 () Bool)

(declare-fun e!3045440 () List!56111)

(declare-fun ++!12195 (List!56111 List!56111) List!56111)

(assert (=> b!4871762 (= e!3045440 (++!12195 (list!17521 (left!40664 (c!828453 (_1!33223 lt!1995776)))) (list!17521 (right!40994 (c!828453 (_1!33223 lt!1995776))))))))

(declare-fun b!4871761 () Bool)

(declare-fun list!17523 (IArray!29249) List!56111)

(assert (=> b!4871761 (= e!3045440 (list!17523 (xs!17902 (c!828453 (_1!33223 lt!1995776)))))))

(declare-fun b!4871760 () Bool)

(assert (=> b!4871760 (= e!3045439 e!3045440)))

(declare-fun c!828638 () Bool)

(assert (=> b!4871760 (= c!828638 (is-Leaf!24327 (c!828453 (_1!33223 lt!1995776))))))

(assert (= (and d!1564453 c!828637) b!4871759))

(assert (= (and d!1564453 (not c!828637)) b!4871760))

(assert (= (and b!4871760 c!828638) b!4871761))

(assert (= (and b!4871760 (not c!828638)) b!4871762))

(declare-fun m!5872340 () Bool)

(assert (=> b!4871762 m!5872340))

(declare-fun m!5872342 () Bool)

(assert (=> b!4871762 m!5872342))

(assert (=> b!4871762 m!5872340))

(assert (=> b!4871762 m!5872342))

(declare-fun m!5872344 () Bool)

(assert (=> b!4871762 m!5872344))

(declare-fun m!5872346 () Bool)

(assert (=> b!4871761 m!5872346))

(assert (=> d!1564223 d!1564453))

(assert (=> d!1564111 d!1564119))

(declare-fun b!4871765 () Bool)

(declare-fun e!3045441 () Bool)

(assert (=> b!4871765 (= e!3045441 (isPrefix!4767 (tail!9561 (list!17513 input!585)) (tail!9561 (list!17513 input!585))))))

(declare-fun d!1564455 () Bool)

(declare-fun e!3045442 () Bool)

(assert (=> d!1564455 e!3045442))

(declare-fun res!2079658 () Bool)

(assert (=> d!1564455 (=> res!2079658 e!3045442)))

(declare-fun lt!1996244 () Bool)

(assert (=> d!1564455 (= res!2079658 (not lt!1996244))))

(declare-fun e!3045443 () Bool)

(assert (=> d!1564455 (= lt!1996244 e!3045443)))

(declare-fun res!2079659 () Bool)

(assert (=> d!1564455 (=> res!2079659 e!3045443)))

(assert (=> d!1564455 (= res!2079659 (is-Nil!55984 (list!17513 input!585)))))

(assert (=> d!1564455 (= (isPrefix!4767 (list!17513 input!585) (list!17513 input!585)) lt!1996244)))

(declare-fun b!4871766 () Bool)

(assert (=> b!4871766 (= e!3045442 (>= (size!36907 (list!17513 input!585)) (size!36907 (list!17513 input!585))))))

(declare-fun b!4871763 () Bool)

(assert (=> b!4871763 (= e!3045443 e!3045441)))

(declare-fun res!2079657 () Bool)

(assert (=> b!4871763 (=> (not res!2079657) (not e!3045441))))

(assert (=> b!4871763 (= res!2079657 (not (is-Nil!55984 (list!17513 input!585))))))

(declare-fun b!4871764 () Bool)

(declare-fun res!2079656 () Bool)

(assert (=> b!4871764 (=> (not res!2079656) (not e!3045441))))

(assert (=> b!4871764 (= res!2079656 (= (head!10415 (list!17513 input!585)) (head!10415 (list!17513 input!585))))))

(assert (= (and d!1564455 (not res!2079659)) b!4871763))

(assert (= (and b!4871763 res!2079657) b!4871764))

(assert (= (and b!4871764 res!2079656) b!4871765))

(assert (= (and d!1564455 (not res!2079658)) b!4871766))

(assert (=> b!4871765 m!5870998))

(declare-fun m!5872348 () Bool)

(assert (=> b!4871765 m!5872348))

(assert (=> b!4871765 m!5870998))

(assert (=> b!4871765 m!5872348))

(assert (=> b!4871765 m!5872348))

(assert (=> b!4871765 m!5872348))

(declare-fun m!5872350 () Bool)

(assert (=> b!4871765 m!5872350))

(assert (=> b!4871766 m!5870998))

(assert (=> b!4871766 m!5871268))

(assert (=> b!4871766 m!5870998))

(assert (=> b!4871766 m!5871268))

(assert (=> b!4871764 m!5870998))

(declare-fun m!5872352 () Bool)

(assert (=> b!4871764 m!5872352))

(assert (=> b!4871764 m!5870998))

(assert (=> b!4871764 m!5872352))

(assert (=> d!1564111 d!1564455))

(declare-fun d!1564457 () Bool)

(assert (=> d!1564457 (isPrefix!4767 (list!17513 input!585) (list!17513 input!585))))

(declare-fun lt!1996245 () Unit!145974)

(assert (=> d!1564457 (= lt!1996245 (choose!35608 (list!17513 input!585) (list!17513 input!585)))))

(assert (=> d!1564457 (= (lemmaIsPrefixRefl!3164 (list!17513 input!585) (list!17513 input!585)) lt!1996245)))

(declare-fun bs!1174679 () Bool)

(assert (= bs!1174679 d!1564457))

(assert (=> bs!1174679 m!5870998))

(assert (=> bs!1174679 m!5870998))

(assert (=> bs!1174679 m!5871236))

(assert (=> bs!1174679 m!5870998))

(assert (=> bs!1174679 m!5870998))

(declare-fun m!5872354 () Bool)

(assert (=> bs!1174679 m!5872354))

(assert (=> d!1564111 d!1564457))

(assert (=> d!1564111 d!1564207))

(assert (=> b!4871040 d!1564433))

(declare-fun d!1564459 () Bool)

(assert (=> d!1564459 (= (apply!13503 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860)))) (seqFromList!5899 (originalCharacters!8366 (_1!33227 (get!19236 lt!1995860))))) (dynLambda!22483 (toValue!10914 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860))))) (seqFromList!5899 (originalCharacters!8366 (_1!33227 (get!19236 lt!1995860))))))))

(declare-fun b_lambda!193693 () Bool)

(assert (=> (not b_lambda!193693) (not d!1564459)))

(declare-fun tb!257993 () Bool)

(declare-fun t!364230 () Bool)

(assert (=> (and b!4870756 (= (toValue!10914 (transformation!8043 (h!62434 rules!1164))) (toValue!10914 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860)))))) t!364230) tb!257993))

(declare-fun result!321174 () Bool)

(assert (=> tb!257993 (= result!321174 (inv!21 (dynLambda!22483 (toValue!10914 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860))))) (seqFromList!5899 (originalCharacters!8366 (_1!33227 (get!19236 lt!1995860)))))))))

(declare-fun m!5872356 () Bool)

(assert (=> tb!257993 m!5872356))

(assert (=> d!1564459 t!364230))

(declare-fun b_and!343059 () Bool)

(assert (= b_and!343047 (and (=> t!364230 result!321174) b_and!343059)))

(declare-fun t!364232 () Bool)

(declare-fun tb!257995 () Bool)

(assert (=> (and b!4870894 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toValue!10914 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860)))))) t!364232) tb!257995))

(declare-fun result!321176 () Bool)

(assert (= result!321176 result!321174))

(assert (=> d!1564459 t!364232))

(declare-fun b_and!343061 () Bool)

(assert (= b_and!343049 (and (=> t!364232 result!321176) b_and!343061)))

(declare-fun t!364234 () Bool)

(declare-fun tb!257997 () Bool)

(assert (=> (and b!4871338 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 (t!364180 rules!1164))))) (toValue!10914 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860)))))) t!364234) tb!257997))

(declare-fun result!321178 () Bool)

(assert (= result!321178 result!321174))

(assert (=> d!1564459 t!364234))

(declare-fun b_and!343063 () Bool)

(assert (= b_and!343051 (and (=> t!364234 result!321178) b_and!343063)))

(assert (=> d!1564459 m!5871262))

(declare-fun m!5872358 () Bool)

(assert (=> d!1564459 m!5872358))

(assert (=> b!4871040 d!1564459))

(declare-fun d!1564461 () Bool)

(assert (=> d!1564461 (= (seqFromList!5899 (originalCharacters!8366 (_1!33227 (get!19236 lt!1995860)))) (fromListB!2680 (originalCharacters!8366 (_1!33227 (get!19236 lt!1995860)))))))

(declare-fun bs!1174680 () Bool)

(assert (= bs!1174680 d!1564461))

(declare-fun m!5872360 () Bool)

(assert (=> bs!1174680 m!5872360))

(assert (=> b!4871040 d!1564461))

(declare-fun d!1564463 () Bool)

(assert (=> d!1564463 (= (list!17519 (xs!17901 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))) (innerList!14681 (xs!17901 (c!828451 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))

(assert (=> b!4871098 d!1564463))

(declare-fun b!4871770 () Bool)

(declare-fun e!3045446 () Bool)

(declare-fun lt!1996246 () List!56108)

(assert (=> b!4871770 (= e!3045446 (or (not (= (list!17513 (_2!33222 (v!49713 lt!1995756))) Nil!55984)) (= lt!1996246 (t!364178 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))))))))

(declare-fun b!4871769 () Bool)

(declare-fun res!2079660 () Bool)

(assert (=> b!4871769 (=> (not res!2079660) (not e!3045446))))

(assert (=> b!4871769 (= res!2079660 (= (size!36907 lt!1996246) (+ (size!36907 (t!364178 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))) (size!36907 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))))

(declare-fun d!1564465 () Bool)

(assert (=> d!1564465 e!3045446))

(declare-fun res!2079661 () Bool)

(assert (=> d!1564465 (=> (not res!2079661) (not e!3045446))))

(assert (=> d!1564465 (= res!2079661 (= (content!9981 lt!1996246) (set.union (content!9981 (t!364178 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))) (content!9981 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))))

(declare-fun e!3045445 () List!56108)

(assert (=> d!1564465 (= lt!1996246 e!3045445)))

(declare-fun c!828639 () Bool)

(assert (=> d!1564465 (= c!828639 (is-Nil!55984 (t!364178 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))))))

(assert (=> d!1564465 (= (++!12192 (t!364178 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756)))))) (list!17513 (_2!33222 (v!49713 lt!1995756)))) lt!1996246)))

(declare-fun b!4871767 () Bool)

(assert (=> b!4871767 (= e!3045445 (list!17513 (_2!33222 (v!49713 lt!1995756))))))

(declare-fun b!4871768 () Bool)

(assert (=> b!4871768 (= e!3045445 (Cons!55984 (h!62432 (t!364178 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))) (++!12192 (t!364178 (t!364178 (t!364178 (list!17513 (charsOf!5342 (_1!33222 (v!49713 lt!1995756))))))) (list!17513 (_2!33222 (v!49713 lt!1995756))))))))

(assert (= (and d!1564465 c!828639) b!4871767))

(assert (= (and d!1564465 (not c!828639)) b!4871768))

(assert (= (and d!1564465 res!2079661) b!4871769))

(assert (= (and b!4871769 res!2079660) b!4871770))

(declare-fun m!5872362 () Bool)

(assert (=> b!4871769 m!5872362))

(assert (=> b!4871769 m!5872120))

(assert (=> b!4871769 m!5870992))

(assert (=> b!4871769 m!5871040))

(declare-fun m!5872364 () Bool)

(assert (=> d!1564465 m!5872364))

(assert (=> d!1564465 m!5872336))

(assert (=> d!1564465 m!5870992))

(assert (=> d!1564465 m!5871046))

(assert (=> b!4871768 m!5870992))

(declare-fun m!5872366 () Bool)

(assert (=> b!4871768 m!5872366))

(assert (=> b!4871093 d!1564465))

(declare-fun b!4871771 () Bool)

(declare-fun e!3045447 () Bool)

(declare-fun e!3045450 () Bool)

(assert (=> b!4871771 (= e!3045447 e!3045450)))

(declare-fun res!2079666 () Bool)

(assert (=> b!4871771 (=> res!2079666 e!3045450)))

(declare-fun lt!1996250 () Option!13792)

(assert (=> b!4871771 (= res!2079666 (not (isDefined!10850 lt!1996250)))))

(declare-fun b!4871772 () Bool)

(declare-fun res!2079662 () Bool)

(assert (=> b!4871772 (=> (not res!2079662) (not e!3045447))))

(declare-fun e!3045449 () Bool)

(assert (=> b!4871772 (= res!2079662 e!3045449)))

(declare-fun res!2079665 () Bool)

(assert (=> b!4871772 (=> res!2079665 e!3045449)))

(assert (=> b!4871772 (= res!2079665 (not (isDefined!10850 lt!1996250)))))

(declare-fun b!4871773 () Bool)

(declare-fun e!3045451 () Bool)

(assert (=> b!4871773 (= e!3045449 e!3045451)))

(declare-fun res!2079663 () Bool)

(assert (=> b!4871773 (=> (not res!2079663) (not e!3045451))))

(assert (=> b!4871773 (= res!2079663 (= (_1!33222 (get!19235 lt!1996250)) (_1!33227 (get!19236 (maxPrefixZipper!564 thiss!11460 (t!364180 rules!1164) (list!17513 (_2!33222 (v!49713 lt!1995756))))))))))

(declare-fun b!4871774 () Bool)

(declare-fun e!3045448 () Bool)

(assert (=> b!4871774 (= e!3045448 (= (list!17513 (_2!33222 (get!19235 lt!1996250))) (_2!33227 (get!19236 (maxPrefix!4550 thiss!11460 (t!364180 rules!1164) (list!17513 (_2!33222 (v!49713 lt!1995756))))))))))

(declare-fun b!4871775 () Bool)

(assert (=> b!4871775 (= e!3045451 (= (list!17513 (_2!33222 (get!19235 lt!1996250))) (_2!33227 (get!19236 (maxPrefixZipper!564 thiss!11460 (t!364180 rules!1164) (list!17513 (_2!33222 (v!49713 lt!1995756))))))))))

(declare-fun b!4871777 () Bool)

(declare-fun e!3045452 () Option!13792)

(declare-fun lt!1996253 () Option!13792)

(declare-fun lt!1996252 () Option!13792)

(assert (=> b!4871777 (= e!3045452 (ite (and (is-None!13791 lt!1996253) (is-None!13791 lt!1996252)) None!13791 (ite (is-None!13791 lt!1996252) lt!1996253 (ite (is-None!13791 lt!1996253) lt!1996252 (ite (>= (size!36905 (_1!33222 (v!49713 lt!1996253))) (size!36905 (_1!33222 (v!49713 lt!1996252)))) lt!1996253 lt!1996252)))))))

(declare-fun call!338261 () Option!13792)

(assert (=> b!4871777 (= lt!1996253 call!338261)))

(assert (=> b!4871777 (= lt!1996252 (maxPrefixZipperSequence!1234 thiss!11460 (t!364180 (t!364180 rules!1164)) (_2!33222 (v!49713 lt!1995756))))))

(declare-fun b!4871778 () Bool)

(assert (=> b!4871778 (= e!3045452 call!338261)))

(declare-fun bm!338256 () Bool)

(assert (=> bm!338256 (= call!338261 (maxPrefixOneRuleZipperSequence!577 thiss!11460 (h!62434 (t!364180 rules!1164)) (_2!33222 (v!49713 lt!1995756))))))

(declare-fun b!4871776 () Bool)

(assert (=> b!4871776 (= e!3045450 e!3045448)))

(declare-fun res!2079664 () Bool)

(assert (=> b!4871776 (=> (not res!2079664) (not e!3045448))))

(assert (=> b!4871776 (= res!2079664 (= (_1!33222 (get!19235 lt!1996250)) (_1!33227 (get!19236 (maxPrefix!4550 thiss!11460 (t!364180 rules!1164) (list!17513 (_2!33222 (v!49713 lt!1995756))))))))))

(declare-fun d!1564467 () Bool)

(assert (=> d!1564467 e!3045447))

(declare-fun res!2079667 () Bool)

(assert (=> d!1564467 (=> (not res!2079667) (not e!3045447))))

(assert (=> d!1564467 (= res!2079667 (= (isDefined!10850 lt!1996250) (isDefined!10851 (maxPrefixZipper!564 thiss!11460 (t!364180 rules!1164) (list!17513 (_2!33222 (v!49713 lt!1995756)))))))))

(assert (=> d!1564467 (= lt!1996250 e!3045452)))

(declare-fun c!828640 () Bool)

(assert (=> d!1564467 (= c!828640 (and (is-Cons!55986 (t!364180 rules!1164)) (is-Nil!55986 (t!364180 (t!364180 rules!1164)))))))

(declare-fun lt!1996248 () Unit!145974)

(declare-fun lt!1996249 () Unit!145974)

(assert (=> d!1564467 (= lt!1996248 lt!1996249)))

(declare-fun lt!1996247 () List!56108)

(declare-fun lt!1996251 () List!56108)

(assert (=> d!1564467 (isPrefix!4767 lt!1996247 lt!1996251)))

(assert (=> d!1564467 (= lt!1996249 (lemmaIsPrefixRefl!3164 lt!1996247 lt!1996251))))

(assert (=> d!1564467 (= lt!1996251 (list!17513 (_2!33222 (v!49713 lt!1995756))))))

(assert (=> d!1564467 (= lt!1996247 (list!17513 (_2!33222 (v!49713 lt!1995756))))))

(assert (=> d!1564467 (rulesValidInductive!3022 thiss!11460 (t!364180 rules!1164))))

(assert (=> d!1564467 (= (maxPrefixZipperSequence!1234 thiss!11460 (t!364180 rules!1164) (_2!33222 (v!49713 lt!1995756))) lt!1996250)))

(assert (= (and d!1564467 c!828640) b!4871778))

(assert (= (and d!1564467 (not c!828640)) b!4871777))

(assert (= (or b!4871778 b!4871777) bm!338256))

(assert (= (and d!1564467 res!2079667) b!4871772))

(assert (= (and b!4871772 (not res!2079665)) b!4871773))

(assert (= (and b!4871773 res!2079663) b!4871775))

(assert (= (and b!4871772 res!2079662) b!4871771))

(assert (= (and b!4871771 (not res!2079666)) b!4871776))

(assert (= (and b!4871776 res!2079664) b!4871774))

(declare-fun m!5872368 () Bool)

(assert (=> b!4871773 m!5872368))

(assert (=> b!4871773 m!5870992))

(assert (=> b!4871773 m!5870992))

(declare-fun m!5872370 () Bool)

(assert (=> b!4871773 m!5872370))

(assert (=> b!4871773 m!5872370))

(declare-fun m!5872372 () Bool)

(assert (=> b!4871773 m!5872372))

(declare-fun m!5872374 () Bool)

(assert (=> b!4871771 m!5872374))

(assert (=> d!1564467 m!5872370))

(declare-fun m!5872376 () Bool)

(assert (=> d!1564467 m!5872376))

(declare-fun m!5872378 () Bool)

(assert (=> d!1564467 m!5872378))

(assert (=> d!1564467 m!5872374))

(assert (=> d!1564467 m!5870992))

(assert (=> d!1564467 m!5872370))

(assert (=> d!1564467 m!5871338))

(declare-fun m!5872380 () Bool)

(assert (=> d!1564467 m!5872380))

(assert (=> d!1564467 m!5870992))

(declare-fun m!5872382 () Bool)

(assert (=> b!4871777 m!5872382))

(assert (=> b!4871774 m!5870992))

(assert (=> b!4871774 m!5871960))

(assert (=> b!4871774 m!5872368))

(assert (=> b!4871774 m!5870992))

(assert (=> b!4871774 m!5871960))

(declare-fun m!5872384 () Bool)

(assert (=> b!4871774 m!5872384))

(declare-fun m!5872386 () Bool)

(assert (=> b!4871774 m!5872386))

(assert (=> b!4871775 m!5870992))

(assert (=> b!4871775 m!5872370))

(assert (=> b!4871775 m!5872370))

(assert (=> b!4871775 m!5872372))

(assert (=> b!4871775 m!5872386))

(assert (=> b!4871775 m!5872368))

(assert (=> b!4871775 m!5870992))

(assert (=> b!4871772 m!5872374))

(declare-fun m!5872388 () Bool)

(assert (=> bm!338256 m!5872388))

(assert (=> b!4871776 m!5872368))

(assert (=> b!4871776 m!5870992))

(assert (=> b!4871776 m!5870992))

(assert (=> b!4871776 m!5871960))

(assert (=> b!4871776 m!5871960))

(assert (=> b!4871776 m!5872384))

(assert (=> b!4871207 d!1564467))

(declare-fun d!1564469 () Bool)

(assert (=> d!1564469 (= (isEmpty!29962 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 input!585))) (not (is-Some!13793 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 input!585)))))))

(assert (=> d!1564209 d!1564469))

(declare-fun d!1564471 () Bool)

(declare-fun lt!1996254 () Int)

(assert (=> d!1564471 (>= lt!1996254 0)))

(declare-fun e!3045453 () Int)

(assert (=> d!1564471 (= lt!1996254 e!3045453)))

(declare-fun c!828641 () Bool)

(assert (=> d!1564471 (= c!828641 (is-Nil!55984 (_2!33226 lt!1995872)))))

(assert (=> d!1564471 (= (size!36907 (_2!33226 lt!1995872)) lt!1996254)))

(declare-fun b!4871779 () Bool)

(assert (=> b!4871779 (= e!3045453 0)))

(declare-fun b!4871780 () Bool)

(assert (=> b!4871780 (= e!3045453 (+ 1 (size!36907 (t!364178 (_2!33226 lt!1995872)))))))

(assert (= (and d!1564471 c!828641) b!4871779))

(assert (= (and d!1564471 (not c!828641)) b!4871780))

(declare-fun m!5872390 () Bool)

(assert (=> b!4871780 m!5872390))

(assert (=> b!4871077 d!1564471))

(assert (=> b!4871077 d!1564199))

(assert (=> b!4871203 d!1564395))

(declare-fun d!1564473 () Bool)

(assert (=> d!1564473 (= (get!19236 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756))))) (v!49715 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756))))))))

(assert (=> b!4871203 d!1564473))

(declare-fun lt!1996258 () Option!13794)

(declare-fun d!1564475 () Bool)

(assert (=> d!1564475 (= lt!1996258 (maxPrefix!4550 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))

(declare-fun e!3045454 () Option!13794)

(assert (=> d!1564475 (= lt!1996258 e!3045454)))

(declare-fun c!828642 () Bool)

(assert (=> d!1564475 (= c!828642 (and (is-Cons!55986 rules!1164) (is-Nil!55986 (t!364180 rules!1164))))))

(declare-fun lt!1996259 () Unit!145974)

(declare-fun lt!1996257 () Unit!145974)

(assert (=> d!1564475 (= lt!1996259 lt!1996257)))

(assert (=> d!1564475 (isPrefix!4767 (list!17513 (_2!33222 (v!49713 lt!1995756))) (list!17513 (_2!33222 (v!49713 lt!1995756))))))

(assert (=> d!1564475 (= lt!1996257 (lemmaIsPrefixRefl!3164 (list!17513 (_2!33222 (v!49713 lt!1995756))) (list!17513 (_2!33222 (v!49713 lt!1995756)))))))

(assert (=> d!1564475 (rulesValidInductive!3022 thiss!11460 rules!1164)))

(assert (=> d!1564475 (= (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756)))) lt!1996258)))

(declare-fun call!338262 () Option!13794)

(declare-fun bm!338257 () Bool)

(assert (=> bm!338257 (= call!338262 (maxPrefixOneRuleZipper!226 thiss!11460 (h!62434 rules!1164) (list!17513 (_2!33222 (v!49713 lt!1995756)))))))

(declare-fun b!4871781 () Bool)

(assert (=> b!4871781 (= e!3045454 call!338262)))

(declare-fun b!4871782 () Bool)

(declare-fun lt!1996256 () Option!13794)

(declare-fun lt!1996255 () Option!13794)

(assert (=> b!4871782 (= e!3045454 (ite (and (is-None!13793 lt!1996256) (is-None!13793 lt!1996255)) None!13793 (ite (is-None!13793 lt!1996255) lt!1996256 (ite (is-None!13793 lt!1996256) lt!1996255 (ite (>= (size!36905 (_1!33227 (v!49715 lt!1996256))) (size!36905 (_1!33227 (v!49715 lt!1996255)))) lt!1996256 lt!1996255)))))))

(assert (=> b!4871782 (= lt!1996256 call!338262)))

(assert (=> b!4871782 (= lt!1996255 (maxPrefixZipper!564 thiss!11460 (t!364180 rules!1164) (list!17513 (_2!33222 (v!49713 lt!1995756)))))))

(assert (= (and d!1564475 c!828642) b!4871781))

(assert (= (and d!1564475 (not c!828642)) b!4871782))

(assert (= (or b!4871781 b!4871782) bm!338257))

(assert (=> d!1564475 m!5870992))

(assert (=> d!1564475 m!5871296))

(assert (=> d!1564475 m!5870992))

(assert (=> d!1564475 m!5870992))

(assert (=> d!1564475 m!5871950))

(assert (=> d!1564475 m!5870992))

(assert (=> d!1564475 m!5870992))

(assert (=> d!1564475 m!5871952))

(assert (=> d!1564475 m!5871096))

(assert (=> bm!338257 m!5870992))

(declare-fun m!5872392 () Bool)

(assert (=> bm!338257 m!5872392))

(assert (=> b!4871782 m!5870992))

(assert (=> b!4871782 m!5872370))

(assert (=> b!4871203 d!1564475))

(assert (=> b!4871203 d!1564065))

(assert (=> b!4871013 d!1564343))

(declare-fun d!1564477 () Bool)

(assert (=> d!1564477 (= (get!19235 lt!1995908) (v!49713 lt!1995908))))

(assert (=> b!4871152 d!1564477))

(declare-fun d!1564479 () Bool)

(assert (=> d!1564479 (= (get!19236 (maxPrefixOneRule!3492 thiss!11460 (h!62434 rules!1164) (list!17513 input!585))) (v!49715 (maxPrefixOneRule!3492 thiss!11460 (h!62434 rules!1164) (list!17513 input!585))))))

(assert (=> b!4871152 d!1564479))

(declare-fun b!4871801 () Bool)

(declare-fun res!2079685 () Bool)

(declare-fun e!3045466 () Bool)

(assert (=> b!4871801 (=> (not res!2079685) (not e!3045466))))

(declare-fun lt!1996271 () Option!13794)

(assert (=> b!4871801 (= res!2079685 (= (value!258369 (_1!33227 (get!19236 lt!1996271))) (apply!13503 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1996271)))) (seqFromList!5899 (originalCharacters!8366 (_1!33227 (get!19236 lt!1996271)))))))))

(declare-fun b!4871802 () Bool)

(declare-fun res!2079682 () Bool)

(assert (=> b!4871802 (=> (not res!2079682) (not e!3045466))))

(assert (=> b!4871802 (= res!2079682 (= (rule!11181 (_1!33227 (get!19236 lt!1996271))) (h!62434 rules!1164)))))

(declare-fun b!4871803 () Bool)

(declare-fun e!3045465 () Bool)

(assert (=> b!4871803 (= e!3045465 (matchR!6493 (regex!8043 (h!62434 rules!1164)) (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) (list!17513 input!585) (list!17513 input!585) (size!36907 (list!17513 input!585))))))))

(declare-fun b!4871804 () Bool)

(declare-fun e!3045463 () Option!13794)

(assert (=> b!4871804 (= e!3045463 None!13793)))

(declare-fun b!4871805 () Bool)

(declare-fun res!2079683 () Bool)

(assert (=> b!4871805 (=> (not res!2079683) (not e!3045466))))

(assert (=> b!4871805 (= res!2079683 (< (size!36907 (_2!33227 (get!19236 lt!1996271))) (size!36907 (list!17513 input!585))))))

(declare-fun b!4871806 () Bool)

(declare-fun res!2079686 () Bool)

(assert (=> b!4871806 (=> (not res!2079686) (not e!3045466))))

(assert (=> b!4871806 (= res!2079686 (= (++!12192 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1996271)))) (_2!33227 (get!19236 lt!1996271))) (list!17513 input!585)))))

(declare-fun b!4871807 () Bool)

(declare-fun lt!1996273 () tuple2!59854)

(assert (=> b!4871807 (= e!3045463 (Some!13793 (tuple2!59849 (Token!14671 (apply!13503 (transformation!8043 (h!62434 rules!1164)) (seqFromList!5899 (_1!33230 lt!1996273))) (h!62434 rules!1164) (size!36909 (seqFromList!5899 (_1!33230 lt!1996273))) (_1!33230 lt!1996273)) (_2!33230 lt!1996273))))))

(declare-fun lt!1996272 () Unit!145974)

(assert (=> b!4871807 (= lt!1996272 (longestMatchIsAcceptedByMatchOrIsEmpty!1685 (regex!8043 (h!62434 rules!1164)) (list!17513 input!585)))))

(declare-fun res!2079684 () Bool)

(assert (=> b!4871807 (= res!2079684 (isEmpty!29967 (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) (list!17513 input!585) (list!17513 input!585) (size!36907 (list!17513 input!585))))))))

(assert (=> b!4871807 (=> res!2079684 e!3045465)))

(assert (=> b!4871807 e!3045465))

(declare-fun lt!1996270 () Unit!145974)

(assert (=> b!4871807 (= lt!1996270 lt!1996272)))

(declare-fun lt!1996274 () Unit!145974)

(assert (=> b!4871807 (= lt!1996274 (lemmaSemiInverse!2553 (transformation!8043 (h!62434 rules!1164)) (seqFromList!5899 (_1!33230 lt!1996273))))))

(declare-fun d!1564481 () Bool)

(declare-fun e!3045464 () Bool)

(assert (=> d!1564481 e!3045464))

(declare-fun res!2079687 () Bool)

(assert (=> d!1564481 (=> res!2079687 e!3045464)))

(assert (=> d!1564481 (= res!2079687 (isEmpty!29962 lt!1996271))))

(assert (=> d!1564481 (= lt!1996271 e!3045463)))

(declare-fun c!828645 () Bool)

(assert (=> d!1564481 (= c!828645 (isEmpty!29967 (_1!33230 lt!1996273)))))

(declare-fun findLongestMatch!1636 (Regex!13118 List!56108) tuple2!59854)

(assert (=> d!1564481 (= lt!1996273 (findLongestMatch!1636 (regex!8043 (h!62434 rules!1164)) (list!17513 input!585)))))

(assert (=> d!1564481 (ruleValid!3631 thiss!11460 (h!62434 rules!1164))))

(assert (=> d!1564481 (= (maxPrefixOneRule!3492 thiss!11460 (h!62434 rules!1164) (list!17513 input!585)) lt!1996271)))

(declare-fun b!4871808 () Bool)

(assert (=> b!4871808 (= e!3045466 (= (size!36905 (_1!33227 (get!19236 lt!1996271))) (size!36907 (originalCharacters!8366 (_1!33227 (get!19236 lt!1996271))))))))

(declare-fun b!4871809 () Bool)

(assert (=> b!4871809 (= e!3045464 e!3045466)))

(declare-fun res!2079688 () Bool)

(assert (=> b!4871809 (=> (not res!2079688) (not e!3045466))))

(assert (=> b!4871809 (= res!2079688 (matchR!6493 (regex!8043 (h!62434 rules!1164)) (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1996271))))))))

(assert (= (and d!1564481 c!828645) b!4871804))

(assert (= (and d!1564481 (not c!828645)) b!4871807))

(assert (= (and b!4871807 (not res!2079684)) b!4871803))

(assert (= (and d!1564481 (not res!2079687)) b!4871809))

(assert (= (and b!4871809 res!2079688) b!4871806))

(assert (= (and b!4871806 res!2079686) b!4871805))

(assert (= (and b!4871805 res!2079683) b!4871802))

(assert (= (and b!4871802 res!2079682) b!4871801))

(assert (= (and b!4871801 res!2079685) b!4871808))

(declare-fun m!5872394 () Bool)

(assert (=> b!4871806 m!5872394))

(declare-fun m!5872396 () Bool)

(assert (=> b!4871806 m!5872396))

(assert (=> b!4871806 m!5872396))

(declare-fun m!5872398 () Bool)

(assert (=> b!4871806 m!5872398))

(assert (=> b!4871806 m!5872398))

(declare-fun m!5872400 () Bool)

(assert (=> b!4871806 m!5872400))

(assert (=> b!4871805 m!5872394))

(declare-fun m!5872402 () Bool)

(assert (=> b!4871805 m!5872402))

(assert (=> b!4871805 m!5870998))

(assert (=> b!4871805 m!5871268))

(assert (=> b!4871802 m!5872394))

(declare-fun m!5872404 () Bool)

(assert (=> d!1564481 m!5872404))

(declare-fun m!5872406 () Bool)

(assert (=> d!1564481 m!5872406))

(assert (=> d!1564481 m!5870998))

(declare-fun m!5872408 () Bool)

(assert (=> d!1564481 m!5872408))

(assert (=> d!1564481 m!5871418))

(assert (=> b!4871808 m!5872394))

(declare-fun m!5872410 () Bool)

(assert (=> b!4871808 m!5872410))

(assert (=> b!4871803 m!5871398))

(assert (=> b!4871803 m!5870998))

(assert (=> b!4871803 m!5871268))

(assert (=> b!4871803 m!5871398))

(assert (=> b!4871803 m!5870998))

(assert (=> b!4871803 m!5870998))

(assert (=> b!4871803 m!5871268))

(assert (=> b!4871803 m!5872096))

(assert (=> b!4871803 m!5872098))

(assert (=> b!4871809 m!5872394))

(assert (=> b!4871809 m!5872396))

(assert (=> b!4871809 m!5872396))

(assert (=> b!4871809 m!5872398))

(assert (=> b!4871809 m!5872398))

(declare-fun m!5872412 () Bool)

(assert (=> b!4871809 m!5872412))

(assert (=> b!4871807 m!5870998))

(assert (=> b!4871807 m!5872092))

(declare-fun m!5872414 () Bool)

(assert (=> b!4871807 m!5872414))

(declare-fun m!5872416 () Bool)

(assert (=> b!4871807 m!5872416))

(assert (=> b!4871807 m!5872414))

(declare-fun m!5872418 () Bool)

(assert (=> b!4871807 m!5872418))

(assert (=> b!4871807 m!5872088))

(assert (=> b!4871807 m!5870998))

(assert (=> b!4871807 m!5871268))

(assert (=> b!4871807 m!5872414))

(declare-fun m!5872420 () Bool)

(assert (=> b!4871807 m!5872420))

(assert (=> b!4871807 m!5872414))

(assert (=> b!4871807 m!5871398))

(assert (=> b!4871807 m!5870998))

(assert (=> b!4871807 m!5870998))

(assert (=> b!4871807 m!5871268))

(assert (=> b!4871807 m!5872096))

(assert (=> b!4871807 m!5871398))

(assert (=> b!4871801 m!5872394))

(declare-fun m!5872422 () Bool)

(assert (=> b!4871801 m!5872422))

(assert (=> b!4871801 m!5872422))

(declare-fun m!5872424 () Bool)

(assert (=> b!4871801 m!5872424))

(assert (=> b!4871152 d!1564481))

(assert (=> b!4871152 d!1564069))

(declare-fun d!1564483 () Bool)

(declare-fun choose!35613 (Int) Bool)

(assert (=> d!1564483 (= (Forall2!1256 lambda!243511) (choose!35613 lambda!243511))))

(declare-fun bs!1174681 () Bool)

(assert (= bs!1174681 d!1564483))

(declare-fun m!5872426 () Bool)

(assert (=> bs!1174681 m!5872426))

(assert (=> d!1564211 d!1564483))

(assert (=> b!4871273 d!1564307))

(assert (=> b!4871273 d!1564311))

(declare-fun d!1564485 () Bool)

(assert (=> d!1564485 (= (isDefined!10850 lt!1995908) (not (isEmpty!29965 lt!1995908)))))

(declare-fun bs!1174682 () Bool)

(assert (= bs!1174682 d!1564485))

(declare-fun m!5872428 () Bool)

(assert (=> bs!1174682 m!5872428))

(assert (=> b!4871156 d!1564485))

(assert (=> b!4871228 d!1564383))

(declare-fun bs!1174683 () Bool)

(declare-fun d!1564487 () Bool)

(assert (= bs!1174683 (and d!1564487 b!4871153)))

(declare-fun lambda!243529 () Int)

(assert (=> bs!1174683 (= (and (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toChars!10773 (transformation!8043 (h!62434 rules!1164)))) (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toValue!10914 (transformation!8043 (h!62434 rules!1164))))) (= lambda!243529 lambda!243496))))

(declare-fun bs!1174684 () Bool)

(assert (= bs!1174684 (and d!1564487 d!1564153)))

(assert (=> bs!1174684 (= (and (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toChars!10773 (transformation!8043 (h!62434 rules!1164)))) (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toValue!10914 (transformation!8043 (h!62434 rules!1164))))) (= lambda!243529 lambda!243499))))

(assert (=> d!1564487 true))

(assert (=> d!1564487 (< (dynLambda!22477 order!25231 (toChars!10773 (transformation!8043 (h!62434 (t!364180 rules!1164))))) (dynLambda!22476 order!25229 lambda!243529))))

(assert (=> d!1564487 true))

(assert (=> d!1564487 (< (dynLambda!22475 order!25227 (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164))))) (dynLambda!22476 order!25229 lambda!243529))))

(assert (=> d!1564487 (= (semiInverseModEq!3547 (toChars!10773 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164))))) (Forall!1676 lambda!243529))))

(declare-fun bs!1174685 () Bool)

(assert (= bs!1174685 d!1564487))

(declare-fun m!5872430 () Bool)

(assert (=> bs!1174685 m!5872430))

(assert (=> d!1564159 d!1564487))

(declare-fun d!1564489 () Bool)

(assert (=> d!1564489 (= (list!17515 (_1!33223 lt!1995963)) (list!17521 (c!828453 (_1!33223 lt!1995963))))))

(declare-fun bs!1174686 () Bool)

(assert (= bs!1174686 d!1564489))

(declare-fun m!5872432 () Bool)

(assert (=> bs!1174686 m!5872432))

(assert (=> b!4871277 d!1564489))

(assert (=> b!4871277 d!1564309))

(assert (=> b!4871277 d!1564311))

(assert (=> b!4871100 d!1564435))

(declare-fun d!1564491 () Bool)

(declare-fun c!828646 () Bool)

(assert (=> d!1564491 (= c!828646 (is-Node!14593 (left!40663 (left!40663 (c!828451 input!585)))))))

(declare-fun e!3045467 () Bool)

(assert (=> d!1564491 (= (inv!71910 (left!40663 (left!40663 (c!828451 input!585)))) e!3045467)))

(declare-fun b!4871810 () Bool)

(assert (=> b!4871810 (= e!3045467 (inv!71915 (left!40663 (left!40663 (c!828451 input!585)))))))

(declare-fun b!4871811 () Bool)

(declare-fun e!3045468 () Bool)

(assert (=> b!4871811 (= e!3045467 e!3045468)))

(declare-fun res!2079689 () Bool)

(assert (=> b!4871811 (= res!2079689 (not (is-Leaf!24326 (left!40663 (left!40663 (c!828451 input!585))))))))

(assert (=> b!4871811 (=> res!2079689 e!3045468)))

(declare-fun b!4871812 () Bool)

(assert (=> b!4871812 (= e!3045468 (inv!71916 (left!40663 (left!40663 (c!828451 input!585)))))))

(assert (= (and d!1564491 c!828646) b!4871810))

(assert (= (and d!1564491 (not c!828646)) b!4871811))

(assert (= (and b!4871811 (not res!2079689)) b!4871812))

(declare-fun m!5872434 () Bool)

(assert (=> b!4871810 m!5872434))

(declare-fun m!5872436 () Bool)

(assert (=> b!4871812 m!5872436))

(assert (=> b!4871302 d!1564491))

(declare-fun d!1564493 () Bool)

(declare-fun c!828647 () Bool)

(assert (=> d!1564493 (= c!828647 (is-Node!14593 (right!40993 (left!40663 (c!828451 input!585)))))))

(declare-fun e!3045469 () Bool)

(assert (=> d!1564493 (= (inv!71910 (right!40993 (left!40663 (c!828451 input!585)))) e!3045469)))

(declare-fun b!4871813 () Bool)

(assert (=> b!4871813 (= e!3045469 (inv!71915 (right!40993 (left!40663 (c!828451 input!585)))))))

(declare-fun b!4871814 () Bool)

(declare-fun e!3045470 () Bool)

(assert (=> b!4871814 (= e!3045469 e!3045470)))

(declare-fun res!2079690 () Bool)

(assert (=> b!4871814 (= res!2079690 (not (is-Leaf!24326 (right!40993 (left!40663 (c!828451 input!585))))))))

(assert (=> b!4871814 (=> res!2079690 e!3045470)))

(declare-fun b!4871815 () Bool)

(assert (=> b!4871815 (= e!3045470 (inv!71916 (right!40993 (left!40663 (c!828451 input!585)))))))

(assert (= (and d!1564493 c!828647) b!4871813))

(assert (= (and d!1564493 (not c!828647)) b!4871814))

(assert (= (and b!4871814 (not res!2079690)) b!4871815))

(declare-fun m!5872438 () Bool)

(assert (=> b!4871813 m!5872438))

(declare-fun m!5872440 () Bool)

(assert (=> b!4871815 m!5872440))

(assert (=> b!4871302 d!1564493))

(assert (=> d!1564233 d!1564199))

(assert (=> d!1564233 d!1564065))

(declare-fun d!1564495 () Bool)

(declare-fun lt!1996275 () Int)

(assert (=> d!1564495 (= lt!1996275 (size!36907 (list!17516 (c!828451 (_2!33222 (v!49713 lt!1995756))))))))

(assert (=> d!1564495 (= lt!1996275 (ite (is-Empty!14593 (c!828451 (_2!33222 (v!49713 lt!1995756)))) 0 (ite (is-Leaf!24326 (c!828451 (_2!33222 (v!49713 lt!1995756)))) (csize!29417 (c!828451 (_2!33222 (v!49713 lt!1995756)))) (csize!29416 (c!828451 (_2!33222 (v!49713 lt!1995756)))))))))

(assert (=> d!1564495 (= (size!36915 (c!828451 (_2!33222 (v!49713 lt!1995756)))) lt!1996275)))

(declare-fun bs!1174687 () Bool)

(assert (= bs!1174687 d!1564495))

(assert (=> bs!1174687 m!5871078))

(assert (=> bs!1174687 m!5871078))

(declare-fun m!5872442 () Bool)

(assert (=> bs!1174687 m!5872442))

(assert (=> d!1564233 d!1564495))

(declare-fun b!4871818 () Bool)

(declare-fun e!3045472 () List!56108)

(assert (=> b!4871818 (= e!3045472 (list!17519 (xs!17901 (c!828451 (_2!33222 (get!19235 lt!1995795))))))))

(declare-fun b!4871817 () Bool)

(declare-fun e!3045471 () List!56108)

(assert (=> b!4871817 (= e!3045471 e!3045472)))

(declare-fun c!828649 () Bool)

(assert (=> b!4871817 (= c!828649 (is-Leaf!24326 (c!828451 (_2!33222 (get!19235 lt!1995795)))))))

(declare-fun d!1564497 () Bool)

(declare-fun c!828648 () Bool)

(assert (=> d!1564497 (= c!828648 (is-Empty!14593 (c!828451 (_2!33222 (get!19235 lt!1995795)))))))

(assert (=> d!1564497 (= (list!17516 (c!828451 (_2!33222 (get!19235 lt!1995795)))) e!3045471)))

(declare-fun b!4871816 () Bool)

(assert (=> b!4871816 (= e!3045471 Nil!55984)))

(declare-fun b!4871819 () Bool)

(assert (=> b!4871819 (= e!3045472 (++!12192 (list!17516 (left!40663 (c!828451 (_2!33222 (get!19235 lt!1995795))))) (list!17516 (right!40993 (c!828451 (_2!33222 (get!19235 lt!1995795)))))))))

(assert (= (and d!1564497 c!828648) b!4871816))

(assert (= (and d!1564497 (not c!828648)) b!4871817))

(assert (= (and b!4871817 c!828649) b!4871818))

(assert (= (and b!4871817 (not c!828649)) b!4871819))

(declare-fun m!5872444 () Bool)

(assert (=> b!4871818 m!5872444))

(declare-fun m!5872446 () Bool)

(assert (=> b!4871819 m!5872446))

(declare-fun m!5872448 () Bool)

(assert (=> b!4871819 m!5872448))

(assert (=> b!4871819 m!5872446))

(assert (=> b!4871819 m!5872448))

(declare-fun m!5872450 () Bool)

(assert (=> b!4871819 m!5872450))

(assert (=> d!1564109 d!1564497))

(declare-fun d!1564499 () Bool)

(assert (=> d!1564499 (= (inv!71917 (xs!17901 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))) (<= (size!36907 (innerList!14681 (xs!17901 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))) 2147483647))))

(declare-fun bs!1174688 () Bool)

(assert (= bs!1174688 d!1564499))

(declare-fun m!5872452 () Bool)

(assert (=> bs!1174688 m!5872452))

(assert (=> b!4871309 d!1564499))

(declare-fun d!1564501 () Bool)

(declare-fun c!828650 () Bool)

(assert (=> d!1564501 (= c!828650 (is-Nil!55984 (t!364178 lt!1995765)))))

(declare-fun e!3045473 () (Set C!26434))

(assert (=> d!1564501 (= (content!9981 (t!364178 lt!1995765)) e!3045473)))

(declare-fun b!4871820 () Bool)

(assert (=> b!4871820 (= e!3045473 (as set.empty (Set C!26434)))))

(declare-fun b!4871821 () Bool)

(assert (=> b!4871821 (= e!3045473 (set.union (set.insert (h!62432 (t!364178 lt!1995765)) (as set.empty (Set C!26434))) (content!9981 (t!364178 (t!364178 lt!1995765)))))))

(assert (= (and d!1564501 c!828650) b!4871820))

(assert (= (and d!1564501 (not c!828650)) b!4871821))

(declare-fun m!5872454 () Bool)

(assert (=> b!4871821 m!5872454))

(declare-fun m!5872456 () Bool)

(assert (=> b!4871821 m!5872456))

(assert (=> b!4871179 d!1564501))

(assert (=> b!4871104 d!1564339))

(assert (=> b!4871104 d!1564343))

(declare-fun d!1564503 () Bool)

(assert (=> d!1564503 (= (list!17513 (_2!33222 (get!19235 lt!1995878))) (list!17516 (c!828451 (_2!33222 (get!19235 lt!1995878)))))))

(declare-fun bs!1174689 () Bool)

(assert (= bs!1174689 d!1564503))

(declare-fun m!5872458 () Bool)

(assert (=> bs!1174689 m!5872458))

(assert (=> b!4871104 d!1564503))

(assert (=> b!4871104 d!1564069))

(assert (=> b!4871104 d!1564341))

(declare-fun d!1564505 () Bool)

(declare-fun e!3045493 () Bool)

(assert (=> d!1564505 e!3045493))

(declare-fun c!828658 () Bool)

(assert (=> d!1564505 (= c!828658 (is-EmptyExpr!13118 (regex!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860))))))))

(declare-fun lt!1996278 () Bool)

(declare-fun e!3045491 () Bool)

(assert (=> d!1564505 (= lt!1996278 e!3045491)))

(declare-fun c!828657 () Bool)

(assert (=> d!1564505 (= c!828657 (isEmpty!29967 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860))))))))

(assert (=> d!1564505 (validRegex!5869 (regex!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860)))))))

(assert (=> d!1564505 (= (matchR!6493 (regex!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860)))) (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860))))) lt!1996278)))

(declare-fun b!4871850 () Bool)

(declare-fun res!2079710 () Bool)

(declare-fun e!3045490 () Bool)

(assert (=> b!4871850 (=> (not res!2079710) (not e!3045490))))

(assert (=> b!4871850 (= res!2079710 (isEmpty!29967 (tail!9561 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860)))))))))

(declare-fun b!4871851 () Bool)

(assert (=> b!4871851 (= e!3045491 (matchR!6493 (derivativeStep!3866 (regex!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860)))) (head!10415 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860)))))) (tail!9561 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860)))))))))

(declare-fun b!4871852 () Bool)

(declare-fun e!3045489 () Bool)

(assert (=> b!4871852 (= e!3045493 e!3045489)))

(declare-fun c!828659 () Bool)

(assert (=> b!4871852 (= c!828659 (is-EmptyLang!13118 (regex!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860))))))))

(declare-fun b!4871853 () Bool)

(declare-fun res!2079709 () Bool)

(declare-fun e!3045492 () Bool)

(assert (=> b!4871853 (=> res!2079709 e!3045492)))

(assert (=> b!4871853 (= res!2079709 e!3045490)))

(declare-fun res!2079708 () Bool)

(assert (=> b!4871853 (=> (not res!2079708) (not e!3045490))))

(assert (=> b!4871853 (= res!2079708 lt!1996278)))

(declare-fun b!4871854 () Bool)

(declare-fun res!2079712 () Bool)

(declare-fun e!3045488 () Bool)

(assert (=> b!4871854 (=> res!2079712 e!3045488)))

(assert (=> b!4871854 (= res!2079712 (not (isEmpty!29967 (tail!9561 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860))))))))))

(declare-fun b!4871855 () Bool)

(assert (=> b!4871855 (= e!3045491 (nullable!4542 (regex!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860))))))))

(declare-fun b!4871856 () Bool)

(declare-fun e!3045494 () Bool)

(assert (=> b!4871856 (= e!3045494 e!3045488)))

(declare-fun res!2079707 () Bool)

(assert (=> b!4871856 (=> res!2079707 e!3045488)))

(declare-fun call!338265 () Bool)

(assert (=> b!4871856 (= res!2079707 call!338265)))

(declare-fun b!4871857 () Bool)

(assert (=> b!4871857 (= e!3045489 (not lt!1996278))))

(declare-fun b!4871858 () Bool)

(assert (=> b!4871858 (= e!3045492 e!3045494)))

(declare-fun res!2079714 () Bool)

(assert (=> b!4871858 (=> (not res!2079714) (not e!3045494))))

(assert (=> b!4871858 (= res!2079714 (not lt!1996278))))

(declare-fun bm!338260 () Bool)

(assert (=> bm!338260 (= call!338265 (isEmpty!29967 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860))))))))

(declare-fun b!4871859 () Bool)

(assert (=> b!4871859 (= e!3045488 (not (= (head!10415 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860))))) (c!828452 (regex!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860))))))))))

(declare-fun b!4871860 () Bool)

(declare-fun res!2079711 () Bool)

(assert (=> b!4871860 (=> res!2079711 e!3045492)))

(assert (=> b!4871860 (= res!2079711 (not (is-ElementMatch!13118 (regex!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860)))))))))

(assert (=> b!4871860 (= e!3045489 e!3045492)))

(declare-fun b!4871861 () Bool)

(assert (=> b!4871861 (= e!3045490 (= (head!10415 (list!17513 (charsOf!5342 (_1!33227 (get!19236 lt!1995860))))) (c!828452 (regex!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860)))))))))

(declare-fun b!4871862 () Bool)

(assert (=> b!4871862 (= e!3045493 (= lt!1996278 call!338265))))

(declare-fun b!4871863 () Bool)

(declare-fun res!2079713 () Bool)

(assert (=> b!4871863 (=> (not res!2079713) (not e!3045490))))

(assert (=> b!4871863 (= res!2079713 (not call!338265))))

(assert (= (and d!1564505 c!828657) b!4871855))

(assert (= (and d!1564505 (not c!828657)) b!4871851))

(assert (= (and d!1564505 c!828658) b!4871862))

(assert (= (and d!1564505 (not c!828658)) b!4871852))

(assert (= (and b!4871852 c!828659) b!4871857))

(assert (= (and b!4871852 (not c!828659)) b!4871860))

(assert (= (and b!4871860 (not res!2079711)) b!4871853))

(assert (= (and b!4871853 res!2079708) b!4871863))

(assert (= (and b!4871863 res!2079713) b!4871850))

(assert (= (and b!4871850 res!2079710) b!4871861))

(assert (= (and b!4871853 (not res!2079709)) b!4871858))

(assert (= (and b!4871858 res!2079714) b!4871856))

(assert (= (and b!4871856 (not res!2079707)) b!4871854))

(assert (= (and b!4871854 (not res!2079712)) b!4871859))

(assert (= (or b!4871862 b!4871856 b!4871863) bm!338260))

(assert (=> bm!338260 m!5871254))

(declare-fun m!5872460 () Bool)

(assert (=> bm!338260 m!5872460))

(assert (=> b!4871854 m!5871254))

(declare-fun m!5872462 () Bool)

(assert (=> b!4871854 m!5872462))

(assert (=> b!4871854 m!5872462))

(declare-fun m!5872464 () Bool)

(assert (=> b!4871854 m!5872464))

(assert (=> d!1564505 m!5871254))

(assert (=> d!1564505 m!5872460))

(declare-fun m!5872466 () Bool)

(assert (=> d!1564505 m!5872466))

(assert (=> b!4871859 m!5871254))

(declare-fun m!5872468 () Bool)

(assert (=> b!4871859 m!5872468))

(declare-fun m!5872470 () Bool)

(assert (=> b!4871855 m!5872470))

(assert (=> b!4871850 m!5871254))

(assert (=> b!4871850 m!5872462))

(assert (=> b!4871850 m!5872462))

(assert (=> b!4871850 m!5872464))

(assert (=> b!4871861 m!5871254))

(assert (=> b!4871861 m!5872468))

(assert (=> b!4871851 m!5871254))

(assert (=> b!4871851 m!5872468))

(assert (=> b!4871851 m!5872468))

(declare-fun m!5872472 () Bool)

(assert (=> b!4871851 m!5872472))

(assert (=> b!4871851 m!5871254))

(assert (=> b!4871851 m!5872462))

(assert (=> b!4871851 m!5872472))

(assert (=> b!4871851 m!5872462))

(declare-fun m!5872474 () Bool)

(assert (=> b!4871851 m!5872474))

(assert (=> b!4871035 d!1564505))

(assert (=> b!4871035 d!1564433))

(assert (=> b!4871035 d!1564429))

(assert (=> b!4871035 d!1564431))

(declare-fun d!1564507 () Bool)

(declare-fun lt!1996279 () Int)

(assert (=> d!1564507 (>= lt!1996279 0)))

(declare-fun e!3045495 () Int)

(assert (=> d!1564507 (= lt!1996279 e!3045495)))

(declare-fun c!828660 () Bool)

(assert (=> d!1564507 (= c!828660 (is-Nil!55984 (list!17513 (_2!33223 lt!1995776))))))

(assert (=> d!1564507 (= (size!36907 (list!17513 (_2!33223 lt!1995776))) lt!1996279)))

(declare-fun b!4871864 () Bool)

(assert (=> b!4871864 (= e!3045495 0)))

(declare-fun b!4871865 () Bool)

(assert (=> b!4871865 (= e!3045495 (+ 1 (size!36907 (t!364178 (list!17513 (_2!33223 lt!1995776))))))))

(assert (= (and d!1564507 c!828660) b!4871864))

(assert (= (and d!1564507 (not c!828660)) b!4871865))

(declare-fun m!5872476 () Bool)

(assert (=> b!4871865 m!5872476))

(assert (=> d!1564231 d!1564507))

(assert (=> d!1564231 d!1564125))

(declare-fun d!1564509 () Bool)

(declare-fun lt!1996280 () Int)

(assert (=> d!1564509 (= lt!1996280 (size!36907 (list!17516 (c!828451 (_2!33223 lt!1995776)))))))

(assert (=> d!1564509 (= lt!1996280 (ite (is-Empty!14593 (c!828451 (_2!33223 lt!1995776))) 0 (ite (is-Leaf!24326 (c!828451 (_2!33223 lt!1995776))) (csize!29417 (c!828451 (_2!33223 lt!1995776))) (csize!29416 (c!828451 (_2!33223 lt!1995776))))))))

(assert (=> d!1564509 (= (size!36915 (c!828451 (_2!33223 lt!1995776))) lt!1996280)))

(declare-fun bs!1174690 () Bool)

(assert (= bs!1174690 d!1564509))

(assert (=> bs!1174690 m!5871288))

(assert (=> bs!1174690 m!5871288))

(declare-fun m!5872478 () Bool)

(assert (=> bs!1174690 m!5872478))

(assert (=> d!1564231 d!1564509))

(declare-fun d!1564511 () Bool)

(assert (=> d!1564511 (= (isDefined!10850 lt!1995921) (not (isEmpty!29965 lt!1995921)))))

(declare-fun bs!1174691 () Bool)

(assert (= bs!1174691 d!1564511))

(declare-fun m!5872480 () Bool)

(assert (=> bs!1174691 m!5872480))

(assert (=> b!4871202 d!1564511))

(assert (=> b!4871171 d!1564301))

(assert (=> bm!338217 d!1564481))

(declare-fun b!4871866 () Bool)

(declare-fun res!2079715 () Bool)

(declare-fun e!3045497 () Bool)

(assert (=> b!4871866 (=> (not res!2079715) (not e!3045497))))

(assert (=> b!4871866 (= res!2079715 (<= (- (height!1930 (left!40663 (right!40993 (c!828451 input!585)))) (height!1930 (right!40993 (right!40993 (c!828451 input!585))))) 1))))

(declare-fun b!4871867 () Bool)

(declare-fun res!2079720 () Bool)

(assert (=> b!4871867 (=> (not res!2079720) (not e!3045497))))

(assert (=> b!4871867 (= res!2079720 (isBalanced!3957 (right!40993 (right!40993 (c!828451 input!585)))))))

(declare-fun b!4871868 () Bool)

(declare-fun res!2079719 () Bool)

(assert (=> b!4871868 (=> (not res!2079719) (not e!3045497))))

(assert (=> b!4871868 (= res!2079719 (isBalanced!3957 (left!40663 (right!40993 (c!828451 input!585)))))))

(declare-fun b!4871869 () Bool)

(declare-fun e!3045496 () Bool)

(assert (=> b!4871869 (= e!3045496 e!3045497)))

(declare-fun res!2079716 () Bool)

(assert (=> b!4871869 (=> (not res!2079716) (not e!3045497))))

(assert (=> b!4871869 (= res!2079716 (<= (- 1) (- (height!1930 (left!40663 (right!40993 (c!828451 input!585)))) (height!1930 (right!40993 (right!40993 (c!828451 input!585)))))))))

(declare-fun b!4871870 () Bool)

(declare-fun res!2079717 () Bool)

(assert (=> b!4871870 (=> (not res!2079717) (not e!3045497))))

(assert (=> b!4871870 (= res!2079717 (not (isEmpty!29963 (left!40663 (right!40993 (c!828451 input!585))))))))

(declare-fun b!4871871 () Bool)

(assert (=> b!4871871 (= e!3045497 (not (isEmpty!29963 (right!40993 (right!40993 (c!828451 input!585))))))))

(declare-fun d!1564513 () Bool)

(declare-fun res!2079718 () Bool)

(assert (=> d!1564513 (=> res!2079718 e!3045496)))

(assert (=> d!1564513 (= res!2079718 (not (is-Node!14593 (right!40993 (c!828451 input!585)))))))

(assert (=> d!1564513 (= (isBalanced!3957 (right!40993 (c!828451 input!585))) e!3045496)))

(assert (= (and d!1564513 (not res!2079718)) b!4871869))

(assert (= (and b!4871869 res!2079716) b!4871866))

(assert (= (and b!4871866 res!2079715) b!4871868))

(assert (= (and b!4871868 res!2079719) b!4871867))

(assert (= (and b!4871867 res!2079720) b!4871870))

(assert (= (and b!4871870 res!2079717) b!4871871))

(declare-fun m!5872482 () Bool)

(assert (=> b!4871871 m!5872482))

(declare-fun m!5872484 () Bool)

(assert (=> b!4871870 m!5872484))

(assert (=> b!4871869 m!5872104))

(assert (=> b!4871869 m!5872106))

(declare-fun m!5872486 () Bool)

(assert (=> b!4871868 m!5872486))

(declare-fun m!5872488 () Bool)

(assert (=> b!4871867 m!5872488))

(assert (=> b!4871866 m!5872104))

(assert (=> b!4871866 m!5872106))

(assert (=> b!4871060 d!1564513))

(declare-fun d!1564515 () Bool)

(declare-fun lt!1996281 () Int)

(assert (=> d!1564515 (= lt!1996281 (size!36913 (list!17515 (_1!33223 lt!1995963))))))

(assert (=> d!1564515 (= lt!1996281 (size!36914 (c!828453 (_1!33223 lt!1995963))))))

(assert (=> d!1564515 (= (size!36908 (_1!33223 lt!1995963)) lt!1996281)))

(declare-fun bs!1174692 () Bool)

(assert (= bs!1174692 d!1564515))

(assert (=> bs!1174692 m!5871582))

(assert (=> bs!1174692 m!5871582))

(declare-fun m!5872490 () Bool)

(assert (=> bs!1174692 m!5872490))

(declare-fun m!5872492 () Bool)

(assert (=> bs!1174692 m!5872492))

(assert (=> d!1564221 d!1564515))

(declare-fun b!4871872 () Bool)

(declare-fun e!3045498 () Bool)

(declare-fun e!3045501 () Bool)

(assert (=> b!4871872 (= e!3045498 e!3045501)))

(declare-fun res!2079725 () Bool)

(assert (=> b!4871872 (=> res!2079725 e!3045501)))

(declare-fun lt!1996285 () Option!13792)

(assert (=> b!4871872 (= res!2079725 (not (isDefined!10850 lt!1996285)))))

(declare-fun b!4871873 () Bool)

(declare-fun res!2079721 () Bool)

(assert (=> b!4871873 (=> (not res!2079721) (not e!3045498))))

(declare-fun e!3045500 () Bool)

(assert (=> b!4871873 (= res!2079721 e!3045500)))

(declare-fun res!2079724 () Bool)

(assert (=> b!4871873 (=> res!2079724 e!3045500)))

(assert (=> b!4871873 (= res!2079724 (not (isDefined!10850 lt!1996285)))))

(declare-fun b!4871874 () Bool)

(declare-fun e!3045502 () Bool)

(assert (=> b!4871874 (= e!3045500 e!3045502)))

(declare-fun res!2079722 () Bool)

(assert (=> b!4871874 (=> (not res!2079722) (not e!3045502))))

(assert (=> b!4871874 (= res!2079722 (= (_1!33222 (get!19235 lt!1996285)) (_1!33227 (get!19236 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995775))))))))))

(declare-fun e!3045499 () Bool)

(declare-fun b!4871875 () Bool)

(assert (=> b!4871875 (= e!3045499 (= (list!17513 (_2!33222 (get!19235 lt!1996285))) (_2!33227 (get!19236 (maxPrefix!4550 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995775))))))))))

(declare-fun b!4871876 () Bool)

(assert (=> b!4871876 (= e!3045502 (= (list!17513 (_2!33222 (get!19235 lt!1996285))) (_2!33227 (get!19236 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995775))))))))))

(declare-fun b!4871878 () Bool)

(declare-fun e!3045503 () Option!13792)

(declare-fun lt!1996288 () Option!13792)

(declare-fun lt!1996287 () Option!13792)

(assert (=> b!4871878 (= e!3045503 (ite (and (is-None!13791 lt!1996288) (is-None!13791 lt!1996287)) None!13791 (ite (is-None!13791 lt!1996287) lt!1996288 (ite (is-None!13791 lt!1996288) lt!1996287 (ite (>= (size!36905 (_1!33222 (v!49713 lt!1996288))) (size!36905 (_1!33222 (v!49713 lt!1996287)))) lt!1996288 lt!1996287)))))))

(declare-fun call!338266 () Option!13792)

(assert (=> b!4871878 (= lt!1996288 call!338266)))

(assert (=> b!4871878 (= lt!1996287 (maxPrefixZipperSequence!1234 thiss!11460 (t!364180 rules!1164) (_2!33222 (v!49713 lt!1995775))))))

(declare-fun b!4871879 () Bool)

(assert (=> b!4871879 (= e!3045503 call!338266)))

(declare-fun bm!338261 () Bool)

(assert (=> bm!338261 (= call!338266 (maxPrefixOneRuleZipperSequence!577 thiss!11460 (h!62434 rules!1164) (_2!33222 (v!49713 lt!1995775))))))

(declare-fun b!4871877 () Bool)

(assert (=> b!4871877 (= e!3045501 e!3045499)))

(declare-fun res!2079723 () Bool)

(assert (=> b!4871877 (=> (not res!2079723) (not e!3045499))))

(assert (=> b!4871877 (= res!2079723 (= (_1!33222 (get!19235 lt!1996285)) (_1!33227 (get!19236 (maxPrefix!4550 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995775))))))))))

(declare-fun d!1564517 () Bool)

(assert (=> d!1564517 e!3045498))

(declare-fun res!2079726 () Bool)

(assert (=> d!1564517 (=> (not res!2079726) (not e!3045498))))

(assert (=> d!1564517 (= res!2079726 (= (isDefined!10850 lt!1996285) (isDefined!10851 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995775)))))))))

(assert (=> d!1564517 (= lt!1996285 e!3045503)))

(declare-fun c!828661 () Bool)

(assert (=> d!1564517 (= c!828661 (and (is-Cons!55986 rules!1164) (is-Nil!55986 (t!364180 rules!1164))))))

(declare-fun lt!1996283 () Unit!145974)

(declare-fun lt!1996284 () Unit!145974)

(assert (=> d!1564517 (= lt!1996283 lt!1996284)))

(declare-fun lt!1996282 () List!56108)

(declare-fun lt!1996286 () List!56108)

(assert (=> d!1564517 (isPrefix!4767 lt!1996282 lt!1996286)))

(assert (=> d!1564517 (= lt!1996284 (lemmaIsPrefixRefl!3164 lt!1996282 lt!1996286))))

(assert (=> d!1564517 (= lt!1996286 (list!17513 (_2!33222 (v!49713 lt!1995775))))))

(assert (=> d!1564517 (= lt!1996282 (list!17513 (_2!33222 (v!49713 lt!1995775))))))

(assert (=> d!1564517 (rulesValidInductive!3022 thiss!11460 rules!1164)))

(assert (=> d!1564517 (= (maxPrefixZipperSequence!1234 thiss!11460 rules!1164 (_2!33222 (v!49713 lt!1995775))) lt!1996285)))

(assert (= (and d!1564517 c!828661) b!4871879))

(assert (= (and d!1564517 (not c!828661)) b!4871878))

(assert (= (or b!4871879 b!4871878) bm!338261))

(assert (= (and d!1564517 res!2079726) b!4871873))

(assert (= (and b!4871873 (not res!2079724)) b!4871874))

(assert (= (and b!4871874 res!2079722) b!4871876))

(assert (= (and b!4871873 res!2079721) b!4871872))

(assert (= (and b!4871872 (not res!2079725)) b!4871877))

(assert (= (and b!4871877 res!2079723) b!4871875))

(declare-fun m!5872494 () Bool)

(assert (=> b!4871874 m!5872494))

(assert (=> b!4871874 m!5871584))

(assert (=> b!4871874 m!5871584))

(declare-fun m!5872496 () Bool)

(assert (=> b!4871874 m!5872496))

(assert (=> b!4871874 m!5872496))

(declare-fun m!5872498 () Bool)

(assert (=> b!4871874 m!5872498))

(declare-fun m!5872500 () Bool)

(assert (=> b!4871872 m!5872500))

(assert (=> d!1564517 m!5872496))

(declare-fun m!5872502 () Bool)

(assert (=> d!1564517 m!5872502))

(declare-fun m!5872504 () Bool)

(assert (=> d!1564517 m!5872504))

(assert (=> d!1564517 m!5872500))

(assert (=> d!1564517 m!5871584))

(assert (=> d!1564517 m!5872496))

(assert (=> d!1564517 m!5871096))

(declare-fun m!5872506 () Bool)

(assert (=> d!1564517 m!5872506))

(assert (=> d!1564517 m!5871584))

(declare-fun m!5872508 () Bool)

(assert (=> b!4871878 m!5872508))

(assert (=> b!4871875 m!5871584))

(assert (=> b!4871875 m!5871904))

(assert (=> b!4871875 m!5872494))

(assert (=> b!4871875 m!5871584))

(assert (=> b!4871875 m!5871904))

(declare-fun m!5872510 () Bool)

(assert (=> b!4871875 m!5872510))

(declare-fun m!5872512 () Bool)

(assert (=> b!4871875 m!5872512))

(assert (=> b!4871876 m!5871584))

(assert (=> b!4871876 m!5872496))

(assert (=> b!4871876 m!5872496))

(assert (=> b!4871876 m!5872498))

(assert (=> b!4871876 m!5872512))

(assert (=> b!4871876 m!5872494))

(assert (=> b!4871876 m!5871584))

(assert (=> b!4871873 m!5872500))

(declare-fun m!5872514 () Bool)

(assert (=> bm!338261 m!5872514))

(assert (=> b!4871877 m!5872494))

(assert (=> b!4871877 m!5871584))

(assert (=> b!4871877 m!5871584))

(assert (=> b!4871877 m!5871904))

(assert (=> b!4871877 m!5871904))

(assert (=> b!4871877 m!5872510))

(assert (=> d!1564221 d!1564517))

(declare-fun d!1564519 () Bool)

(declare-fun lt!1996291 () Bool)

(declare-fun content!9984 (List!56110) (Set Rule!15886))

(assert (=> d!1564519 (= lt!1996291 (set.member (rule!11181 (_1!33227 (get!19236 lt!1995860))) (content!9984 rules!1164)))))

(declare-fun e!3045508 () Bool)

(assert (=> d!1564519 (= lt!1996291 e!3045508)))

(declare-fun res!2079732 () Bool)

(assert (=> d!1564519 (=> (not res!2079732) (not e!3045508))))

(assert (=> d!1564519 (= res!2079732 (is-Cons!55986 rules!1164))))

(assert (=> d!1564519 (= (contains!19397 rules!1164 (rule!11181 (_1!33227 (get!19236 lt!1995860)))) lt!1996291)))

(declare-fun b!4871884 () Bool)

(declare-fun e!3045509 () Bool)

(assert (=> b!4871884 (= e!3045508 e!3045509)))

(declare-fun res!2079731 () Bool)

(assert (=> b!4871884 (=> res!2079731 e!3045509)))

(assert (=> b!4871884 (= res!2079731 (= (h!62434 rules!1164) (rule!11181 (_1!33227 (get!19236 lt!1995860)))))))

(declare-fun b!4871885 () Bool)

(assert (=> b!4871885 (= e!3045509 (contains!19397 (t!364180 rules!1164) (rule!11181 (_1!33227 (get!19236 lt!1995860)))))))

(assert (= (and d!1564519 res!2079732) b!4871884))

(assert (= (and b!4871884 (not res!2079731)) b!4871885))

(declare-fun m!5872516 () Bool)

(assert (=> d!1564519 m!5872516))

(declare-fun m!5872518 () Bool)

(assert (=> d!1564519 m!5872518))

(declare-fun m!5872520 () Bool)

(assert (=> b!4871885 m!5872520))

(assert (=> b!4871039 d!1564519))

(assert (=> b!4871039 d!1564433))

(assert (=> b!4871206 d!1564395))

(assert (=> b!4871206 d!1564397))

(assert (=> b!4871206 d!1564337))

(assert (=> b!4871206 d!1564065))

(declare-fun d!1564521 () Bool)

(declare-fun lt!1996292 () Int)

(assert (=> d!1564521 (>= lt!1996292 0)))

(declare-fun e!3045510 () Int)

(assert (=> d!1564521 (= lt!1996292 e!3045510)))

(declare-fun c!828662 () Bool)

(assert (=> d!1564521 (= c!828662 (is-Nil!55984 lt!1995796))))

(assert (=> d!1564521 (= (size!36907 lt!1995796) lt!1996292)))

(declare-fun b!4871886 () Bool)

(assert (=> b!4871886 (= e!3045510 0)))

(declare-fun b!4871887 () Bool)

(assert (=> b!4871887 (= e!3045510 (+ 1 (size!36907 (t!364178 lt!1995796))))))

(assert (= (and d!1564521 c!828662) b!4871886))

(assert (= (and d!1564521 (not c!828662)) b!4871887))

(declare-fun m!5872522 () Bool)

(assert (=> b!4871887 m!5872522))

(assert (=> b!4871244 d!1564521))

(declare-fun d!1564523 () Bool)

(declare-fun lt!1996293 () Int)

(assert (=> d!1564523 (>= lt!1996293 0)))

(declare-fun e!3045511 () Int)

(assert (=> d!1564523 (= lt!1996293 e!3045511)))

(declare-fun c!828663 () Bool)

(assert (=> d!1564523 (= c!828663 (is-Nil!55984 lt!1995792))))

(assert (=> d!1564523 (= (size!36907 lt!1995792) lt!1996293)))

(declare-fun b!4871888 () Bool)

(assert (=> b!4871888 (= e!3045511 0)))

(declare-fun b!4871889 () Bool)

(assert (=> b!4871889 (= e!3045511 (+ 1 (size!36907 (t!364178 lt!1995792))))))

(assert (= (and d!1564523 c!828663) b!4871888))

(assert (= (and d!1564523 (not c!828663)) b!4871889))

(declare-fun m!5872524 () Bool)

(assert (=> b!4871889 m!5872524))

(assert (=> b!4871244 d!1564523))

(declare-fun d!1564525 () Bool)

(declare-fun lt!1996296 () Bool)

(assert (=> d!1564525 (= lt!1996296 (isEmpty!29967 (list!17516 (right!40993 (c!828451 input!585)))))))

(assert (=> d!1564525 (= lt!1996296 (= (size!36915 (right!40993 (c!828451 input!585))) 0))))

(assert (=> d!1564525 (= (isEmpty!29963 (right!40993 (c!828451 input!585))) lt!1996296)))

(declare-fun bs!1174693 () Bool)

(assert (= bs!1174693 d!1564525))

(assert (=> bs!1174693 m!5871426))

(assert (=> bs!1174693 m!5871426))

(declare-fun m!5872526 () Bool)

(assert (=> bs!1174693 m!5872526))

(assert (=> bs!1174693 m!5871616))

(assert (=> b!4871064 d!1564525))

(declare-fun d!1564527 () Bool)

(declare-fun e!3045517 () Bool)

(assert (=> d!1564527 e!3045517))

(declare-fun c!828665 () Bool)

(assert (=> d!1564527 (= c!828665 (is-EmptyExpr!13118 (regex!8043 (h!62434 rules!1164))))))

(declare-fun lt!1996297 () Bool)

(declare-fun e!3045515 () Bool)

(assert (=> d!1564527 (= lt!1996297 e!3045515)))

(declare-fun c!828664 () Bool)

(assert (=> d!1564527 (= c!828664 (isEmpty!29967 (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1995910 lt!1995910 (size!36907 lt!1995910)))))))

(assert (=> d!1564527 (validRegex!5869 (regex!8043 (h!62434 rules!1164)))))

(assert (=> d!1564527 (= (matchR!6493 (regex!8043 (h!62434 rules!1164)) (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1995910 lt!1995910 (size!36907 lt!1995910)))) lt!1996297)))

(declare-fun b!4871890 () Bool)

(declare-fun res!2079736 () Bool)

(declare-fun e!3045514 () Bool)

(assert (=> b!4871890 (=> (not res!2079736) (not e!3045514))))

(assert (=> b!4871890 (= res!2079736 (isEmpty!29967 (tail!9561 (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1995910 lt!1995910 (size!36907 lt!1995910))))))))

(declare-fun b!4871891 () Bool)

(assert (=> b!4871891 (= e!3045515 (matchR!6493 (derivativeStep!3866 (regex!8043 (h!62434 rules!1164)) (head!10415 (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1995910 lt!1995910 (size!36907 lt!1995910))))) (tail!9561 (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1995910 lt!1995910 (size!36907 lt!1995910))))))))

(declare-fun b!4871892 () Bool)

(declare-fun e!3045513 () Bool)

(assert (=> b!4871892 (= e!3045517 e!3045513)))

(declare-fun c!828666 () Bool)

(assert (=> b!4871892 (= c!828666 (is-EmptyLang!13118 (regex!8043 (h!62434 rules!1164))))))

(declare-fun b!4871893 () Bool)

(declare-fun res!2079735 () Bool)

(declare-fun e!3045516 () Bool)

(assert (=> b!4871893 (=> res!2079735 e!3045516)))

(assert (=> b!4871893 (= res!2079735 e!3045514)))

(declare-fun res!2079734 () Bool)

(assert (=> b!4871893 (=> (not res!2079734) (not e!3045514))))

(assert (=> b!4871893 (= res!2079734 lt!1996297)))

(declare-fun b!4871894 () Bool)

(declare-fun res!2079738 () Bool)

(declare-fun e!3045512 () Bool)

(assert (=> b!4871894 (=> res!2079738 e!3045512)))

(assert (=> b!4871894 (= res!2079738 (not (isEmpty!29967 (tail!9561 (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1995910 lt!1995910 (size!36907 lt!1995910)))))))))

(declare-fun b!4871895 () Bool)

(assert (=> b!4871895 (= e!3045515 (nullable!4542 (regex!8043 (h!62434 rules!1164))))))

(declare-fun b!4871896 () Bool)

(declare-fun e!3045518 () Bool)

(assert (=> b!4871896 (= e!3045518 e!3045512)))

(declare-fun res!2079733 () Bool)

(assert (=> b!4871896 (=> res!2079733 e!3045512)))

(declare-fun call!338267 () Bool)

(assert (=> b!4871896 (= res!2079733 call!338267)))

(declare-fun b!4871897 () Bool)

(assert (=> b!4871897 (= e!3045513 (not lt!1996297))))

(declare-fun b!4871898 () Bool)

(assert (=> b!4871898 (= e!3045516 e!3045518)))

(declare-fun res!2079740 () Bool)

(assert (=> b!4871898 (=> (not res!2079740) (not e!3045518))))

(assert (=> b!4871898 (= res!2079740 (not lt!1996297))))

(declare-fun bm!338262 () Bool)

(assert (=> bm!338262 (= call!338267 (isEmpty!29967 (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1995910 lt!1995910 (size!36907 lt!1995910)))))))

(declare-fun b!4871899 () Bool)

(assert (=> b!4871899 (= e!3045512 (not (= (head!10415 (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1995910 lt!1995910 (size!36907 lt!1995910)))) (c!828452 (regex!8043 (h!62434 rules!1164))))))))

(declare-fun b!4871900 () Bool)

(declare-fun res!2079737 () Bool)

(assert (=> b!4871900 (=> res!2079737 e!3045516)))

(assert (=> b!4871900 (= res!2079737 (not (is-ElementMatch!13118 (regex!8043 (h!62434 rules!1164)))))))

(assert (=> b!4871900 (= e!3045513 e!3045516)))

(declare-fun b!4871901 () Bool)

(assert (=> b!4871901 (= e!3045514 (= (head!10415 (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1995910 lt!1995910 (size!36907 lt!1995910)))) (c!828452 (regex!8043 (h!62434 rules!1164)))))))

(declare-fun b!4871902 () Bool)

(assert (=> b!4871902 (= e!3045517 (= lt!1996297 call!338267))))

(declare-fun b!4871903 () Bool)

(declare-fun res!2079739 () Bool)

(assert (=> b!4871903 (=> (not res!2079739) (not e!3045514))))

(assert (=> b!4871903 (= res!2079739 (not call!338267))))

(assert (= (and d!1564527 c!828664) b!4871895))

(assert (= (and d!1564527 (not c!828664)) b!4871891))

(assert (= (and d!1564527 c!828665) b!4871902))

(assert (= (and d!1564527 (not c!828665)) b!4871892))

(assert (= (and b!4871892 c!828666) b!4871897))

(assert (= (and b!4871892 (not c!828666)) b!4871900))

(assert (= (and b!4871900 (not res!2079737)) b!4871893))

(assert (= (and b!4871893 res!2079734) b!4871903))

(assert (= (and b!4871903 res!2079739) b!4871890))

(assert (= (and b!4871890 res!2079736) b!4871901))

(assert (= (and b!4871893 (not res!2079735)) b!4871898))

(assert (= (and b!4871898 res!2079740) b!4871896))

(assert (= (and b!4871896 (not res!2079733)) b!4871894))

(assert (= (and b!4871894 (not res!2079738)) b!4871899))

(assert (= (or b!4871902 b!4871896 b!4871903) bm!338262))

(assert (=> bm!338262 m!5871404))

(declare-fun m!5872528 () Bool)

(assert (=> b!4871894 m!5872528))

(assert (=> b!4871894 m!5872528))

(declare-fun m!5872530 () Bool)

(assert (=> b!4871894 m!5872530))

(assert (=> d!1564527 m!5871404))

(assert (=> d!1564527 m!5871890))

(declare-fun m!5872532 () Bool)

(assert (=> b!4871899 m!5872532))

(assert (=> b!4871895 m!5871892))

(assert (=> b!4871890 m!5872528))

(assert (=> b!4871890 m!5872528))

(assert (=> b!4871890 m!5872530))

(assert (=> b!4871901 m!5872532))

(assert (=> b!4871891 m!5872532))

(assert (=> b!4871891 m!5872532))

(declare-fun m!5872534 () Bool)

(assert (=> b!4871891 m!5872534))

(assert (=> b!4871891 m!5872528))

(assert (=> b!4871891 m!5872534))

(assert (=> b!4871891 m!5872528))

(declare-fun m!5872536 () Bool)

(assert (=> b!4871891 m!5872536))

(assert (=> b!4871151 d!1564527))

(assert (=> b!4871151 d!1564359))

(assert (=> b!4871151 d!1564353))

(assert (=> b!4871151 d!1564361))

(declare-fun bs!1174694 () Bool)

(declare-fun b!4871906 () Bool)

(assert (= bs!1174694 (and b!4871906 b!4871153)))

(declare-fun lambda!243530 () Int)

(assert (=> bs!1174694 (= (and (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toChars!10773 (transformation!8043 (h!62434 rules!1164)))) (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toValue!10914 (transformation!8043 (h!62434 rules!1164))))) (= lambda!243530 lambda!243496))))

(declare-fun bs!1174695 () Bool)

(assert (= bs!1174695 (and b!4871906 d!1564153)))

(assert (=> bs!1174695 (= (and (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toChars!10773 (transformation!8043 (h!62434 rules!1164)))) (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toValue!10914 (transformation!8043 (h!62434 rules!1164))))) (= lambda!243530 lambda!243499))))

(declare-fun bs!1174696 () Bool)

(assert (= bs!1174696 (and b!4871906 d!1564487)))

(assert (=> bs!1174696 (= lambda!243530 lambda!243529)))

(declare-fun b!4871911 () Bool)

(declare-fun e!3045525 () Bool)

(assert (=> b!4871911 (= e!3045525 true)))

(declare-fun b!4871910 () Bool)

(declare-fun e!3045524 () Bool)

(assert (=> b!4871910 (= e!3045524 e!3045525)))

(assert (=> b!4871906 e!3045524))

(assert (= b!4871910 b!4871911))

(assert (= b!4871906 b!4871910))

(assert (=> b!4871911 (< (dynLambda!22475 order!25227 (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164))))) (dynLambda!22476 order!25229 lambda!243530))))

(assert (=> b!4871911 (< (dynLambda!22477 order!25231 (toChars!10773 (transformation!8043 (h!62434 (t!364180 rules!1164))))) (dynLambda!22476 order!25229 lambda!243530))))

(declare-fun b!4871904 () Bool)

(declare-fun e!3045522 () Bool)

(declare-fun lt!1996304 () List!56108)

(assert (=> b!4871904 (= e!3045522 (matchR!6493 (regex!8043 (h!62434 (t!364180 rules!1164))) (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 (t!364180 rules!1164))) Nil!55984 (size!36907 Nil!55984) lt!1996304 lt!1996304 (size!36907 lt!1996304)))))))

(declare-fun b!4871905 () Bool)

(declare-fun e!3045521 () Bool)

(declare-fun e!3045519 () Bool)

(assert (=> b!4871905 (= e!3045521 e!3045519)))

(declare-fun res!2079741 () Bool)

(assert (=> b!4871905 (=> (not res!2079741) (not e!3045519))))

(declare-fun lt!1996302 () Option!13792)

(assert (=> b!4871905 (= res!2079741 (= (_1!33222 (get!19235 lt!1996302)) (_1!33227 (get!19236 (maxPrefixOneRule!3492 thiss!11460 (h!62434 (t!364180 rules!1164)) (list!17513 input!585))))))))

(declare-fun d!1564529 () Bool)

(declare-fun e!3045523 () Bool)

(assert (=> d!1564529 e!3045523))

(declare-fun res!2079743 () Bool)

(assert (=> d!1564529 (=> (not res!2079743) (not e!3045523))))

(assert (=> d!1564529 (= res!2079743 (= (isDefined!10850 lt!1996302) (isDefined!10851 (maxPrefixOneRule!3492 thiss!11460 (h!62434 (t!364180 rules!1164)) (list!17513 input!585)))))))

(declare-fun e!3045520 () Option!13792)

(assert (=> d!1564529 (= lt!1996302 e!3045520)))

(declare-fun c!828667 () Bool)

(declare-fun lt!1996306 () tuple2!59856)

(assert (=> d!1564529 (= c!828667 (isEmpty!29966 (_1!33231 lt!1996306)))))

(assert (=> d!1564529 (= lt!1996306 (findLongestMatchWithZipperSequence!237 (regex!8043 (h!62434 (t!364180 rules!1164))) input!585))))

(assert (=> d!1564529 (ruleValid!3631 thiss!11460 (h!62434 (t!364180 rules!1164)))))

(assert (=> d!1564529 (= (maxPrefixOneRuleZipperSequence!577 thiss!11460 (h!62434 (t!364180 rules!1164)) input!585) lt!1996302)))

(assert (=> b!4871906 (= e!3045520 (Some!13791 (tuple2!59839 (Token!14671 (apply!13503 (transformation!8043 (h!62434 (t!364180 rules!1164))) (_1!33231 lt!1996306)) (h!62434 (t!364180 rules!1164)) (size!36909 (_1!33231 lt!1996306)) (list!17513 (_1!33231 lt!1996306))) (_2!33231 lt!1996306))))))

(assert (=> b!4871906 (= lt!1996304 (list!17513 input!585))))

(declare-fun lt!1996300 () Unit!145974)

(assert (=> b!4871906 (= lt!1996300 (longestMatchIsAcceptedByMatchOrIsEmpty!1685 (regex!8043 (h!62434 (t!364180 rules!1164))) lt!1996304))))

(declare-fun res!2079744 () Bool)

(assert (=> b!4871906 (= res!2079744 (isEmpty!29967 (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 (t!364180 rules!1164))) Nil!55984 (size!36907 Nil!55984) lt!1996304 lt!1996304 (size!36907 lt!1996304)))))))

(assert (=> b!4871906 (=> res!2079744 e!3045522)))

(assert (=> b!4871906 e!3045522))

(declare-fun lt!1996301 () Unit!145974)

(assert (=> b!4871906 (= lt!1996301 lt!1996300)))

(declare-fun lt!1996305 () Unit!145974)

(assert (=> b!4871906 (= lt!1996305 (lemmaInv!1205 (transformation!8043 (h!62434 (t!364180 rules!1164)))))))

(declare-fun lt!1996298 () Unit!145974)

(assert (=> b!4871906 (= lt!1996298 (ForallOf!1102 lambda!243530 (_1!33231 lt!1996306)))))

(declare-fun lt!1996299 () Unit!145974)

(assert (=> b!4871906 (= lt!1996299 (ForallOf!1102 lambda!243530 (seqFromList!5899 (list!17513 (_1!33231 lt!1996306)))))))

(declare-fun lt!1996303 () Option!13792)

(assert (=> b!4871906 (= lt!1996303 (Some!13791 (tuple2!59839 (Token!14671 (apply!13503 (transformation!8043 (h!62434 (t!364180 rules!1164))) (_1!33231 lt!1996306)) (h!62434 (t!364180 rules!1164)) (size!36909 (_1!33231 lt!1996306)) (list!17513 (_1!33231 lt!1996306))) (_2!33231 lt!1996306))))))

(declare-fun lt!1996307 () Unit!145974)

(assert (=> b!4871906 (= lt!1996307 (lemmaEqSameImage!1059 (transformation!8043 (h!62434 (t!364180 rules!1164))) (_1!33231 lt!1996306) (seqFromList!5899 (list!17513 (_1!33231 lt!1996306)))))))

(declare-fun b!4871907 () Bool)

(assert (=> b!4871907 (= e!3045519 (= (list!17513 (_2!33222 (get!19235 lt!1996302))) (_2!33227 (get!19236 (maxPrefixOneRule!3492 thiss!11460 (h!62434 (t!364180 rules!1164)) (list!17513 input!585))))))))

(declare-fun b!4871908 () Bool)

(assert (=> b!4871908 (= e!3045520 None!13791)))

(declare-fun b!4871909 () Bool)

(assert (=> b!4871909 (= e!3045523 e!3045521)))

(declare-fun res!2079742 () Bool)

(assert (=> b!4871909 (=> res!2079742 e!3045521)))

(assert (=> b!4871909 (= res!2079742 (not (isDefined!10850 lt!1996302)))))

(assert (= (and d!1564529 c!828667) b!4871908))

(assert (= (and d!1564529 (not c!828667)) b!4871906))

(assert (= (and b!4871906 (not res!2079744)) b!4871904))

(assert (= (and d!1564529 res!2079743) b!4871909))

(assert (= (and b!4871909 (not res!2079742)) b!4871905))

(assert (= (and b!4871905 res!2079741) b!4871907))

(declare-fun m!5872538 () Bool)

(assert (=> b!4871909 m!5872538))

(assert (=> b!4871907 m!5870998))

(declare-fun m!5872540 () Bool)

(assert (=> b!4871907 m!5872540))

(assert (=> b!4871907 m!5870998))

(assert (=> b!4871907 m!5871968))

(assert (=> b!4871907 m!5871968))

(declare-fun m!5872542 () Bool)

(assert (=> b!4871907 m!5872542))

(declare-fun m!5872544 () Bool)

(assert (=> b!4871907 m!5872544))

(assert (=> b!4871905 m!5872540))

(assert (=> b!4871905 m!5870998))

(assert (=> b!4871905 m!5870998))

(assert (=> b!4871905 m!5871968))

(assert (=> b!4871905 m!5871968))

(assert (=> b!4871905 m!5872542))

(declare-fun m!5872546 () Bool)

(assert (=> b!4871906 m!5872546))

(declare-fun m!5872548 () Bool)

(assert (=> b!4871906 m!5872548))

(assert (=> b!4871906 m!5870998))

(declare-fun m!5872550 () Bool)

(assert (=> b!4871906 m!5872550))

(declare-fun m!5872552 () Bool)

(assert (=> b!4871906 m!5872552))

(declare-fun m!5872554 () Bool)

(assert (=> b!4871906 m!5872554))

(assert (=> b!4871906 m!5872550))

(declare-fun m!5872556 () Bool)

(assert (=> b!4871906 m!5872556))

(declare-fun m!5872558 () Bool)

(assert (=> b!4871906 m!5872558))

(assert (=> b!4871906 m!5871398))

(assert (=> b!4871906 m!5872548))

(declare-fun m!5872560 () Bool)

(assert (=> b!4871906 m!5872560))

(declare-fun m!5872562 () Bool)

(assert (=> b!4871906 m!5872562))

(declare-fun m!5872564 () Bool)

(assert (=> b!4871906 m!5872564))

(assert (=> b!4871906 m!5872562))

(assert (=> b!4871906 m!5872550))

(declare-fun m!5872566 () Bool)

(assert (=> b!4871906 m!5872566))

(declare-fun m!5872568 () Bool)

(assert (=> b!4871906 m!5872568))

(assert (=> b!4871906 m!5871398))

(assert (=> b!4871904 m!5871398))

(assert (=> b!4871904 m!5872548))

(assert (=> b!4871904 m!5871398))

(assert (=> b!4871904 m!5872548))

(assert (=> b!4871904 m!5872560))

(declare-fun m!5872570 () Bool)

(assert (=> b!4871904 m!5872570))

(assert (=> d!1564529 m!5870998))

(assert (=> d!1564529 m!5870998))

(assert (=> d!1564529 m!5871968))

(assert (=> d!1564529 m!5871968))

(declare-fun m!5872572 () Bool)

(assert (=> d!1564529 m!5872572))

(assert (=> d!1564529 m!5872538))

(declare-fun m!5872574 () Bool)

(assert (=> d!1564529 m!5872574))

(declare-fun m!5872576 () Bool)

(assert (=> d!1564529 m!5872576))

(declare-fun m!5872578 () Bool)

(assert (=> d!1564529 m!5872578))

(assert (=> bm!338218 d!1564529))

(assert (=> d!1564141 d!1564485))

(assert (=> d!1564141 d!1564481))

(declare-fun d!1564531 () Bool)

(declare-fun lt!1996310 () Bool)

(assert (=> d!1564531 (= lt!1996310 (isEmpty!29967 (list!17513 (_1!33231 lt!1995912))))))

(assert (=> d!1564531 (= lt!1996310 (isEmpty!29963 (c!828451 (_1!33231 lt!1995912))))))

(assert (=> d!1564531 (= (isEmpty!29966 (_1!33231 lt!1995912)) lt!1996310)))

(declare-fun bs!1174697 () Bool)

(assert (= bs!1174697 d!1564531))

(assert (=> bs!1174697 m!5871402))

(assert (=> bs!1174697 m!5871402))

(declare-fun m!5872580 () Bool)

(assert (=> bs!1174697 m!5872580))

(declare-fun m!5872582 () Bool)

(assert (=> bs!1174697 m!5872582))

(assert (=> d!1564141 d!1564531))

(assert (=> d!1564141 d!1564069))

(assert (=> d!1564141 d!1564303))

(declare-fun d!1564533 () Bool)

(assert (=> d!1564533 (= (isDefined!10851 (maxPrefixOneRule!3492 thiss!11460 (h!62434 rules!1164) (list!17513 input!585))) (not (isEmpty!29962 (maxPrefixOneRule!3492 thiss!11460 (h!62434 rules!1164) (list!17513 input!585)))))))

(declare-fun bs!1174698 () Bool)

(assert (= bs!1174698 d!1564533))

(assert (=> bs!1174698 m!5871246))

(declare-fun m!5872584 () Bool)

(assert (=> bs!1174698 m!5872584))

(assert (=> d!1564141 d!1564533))

(declare-fun d!1564535 () Bool)

(declare-fun lt!1996313 () tuple2!59856)

(assert (=> d!1564535 (= (tuple2!59855 (list!17513 (_1!33231 lt!1996313)) (list!17513 (_2!33231 lt!1996313))) (findLongestMatch!1636 (regex!8043 (h!62434 rules!1164)) (list!17513 input!585)))))

(declare-fun choose!35614 (Regex!13118 BalanceConc!28628) tuple2!59856)

(assert (=> d!1564535 (= lt!1996313 (choose!35614 (regex!8043 (h!62434 rules!1164)) input!585))))

(assert (=> d!1564535 (validRegex!5869 (regex!8043 (h!62434 rules!1164)))))

(assert (=> d!1564535 (= (findLongestMatchWithZipperSequence!237 (regex!8043 (h!62434 rules!1164)) input!585) lt!1996313)))

(declare-fun bs!1174699 () Bool)

(assert (= bs!1174699 d!1564535))

(assert (=> bs!1174699 m!5871890))

(assert (=> bs!1174699 m!5870998))

(declare-fun m!5872586 () Bool)

(assert (=> bs!1174699 m!5872586))

(declare-fun m!5872588 () Bool)

(assert (=> bs!1174699 m!5872588))

(assert (=> bs!1174699 m!5870998))

(assert (=> bs!1174699 m!5872408))

(declare-fun m!5872590 () Bool)

(assert (=> bs!1174699 m!5872590))

(assert (=> d!1564141 d!1564535))

(declare-fun d!1564537 () Bool)

(declare-fun res!2079745 () Bool)

(declare-fun e!3045526 () Bool)

(assert (=> d!1564537 (=> (not res!2079745) (not e!3045526))))

(assert (=> d!1564537 (= res!2079745 (<= (size!36907 (list!17519 (xs!17901 (right!40993 (c!828451 input!585))))) 512))))

(assert (=> d!1564537 (= (inv!71916 (right!40993 (c!828451 input!585))) e!3045526)))

(declare-fun b!4871912 () Bool)

(declare-fun res!2079746 () Bool)

(assert (=> b!4871912 (=> (not res!2079746) (not e!3045526))))

(assert (=> b!4871912 (= res!2079746 (= (csize!29417 (right!40993 (c!828451 input!585))) (size!36907 (list!17519 (xs!17901 (right!40993 (c!828451 input!585)))))))))

(declare-fun b!4871913 () Bool)

(assert (=> b!4871913 (= e!3045526 (and (> (csize!29417 (right!40993 (c!828451 input!585))) 0) (<= (csize!29417 (right!40993 (c!828451 input!585))) 512)))))

(assert (= (and d!1564537 res!2079745) b!4871912))

(assert (= (and b!4871912 res!2079746) b!4871913))

(assert (=> d!1564537 m!5872322))

(assert (=> d!1564537 m!5872322))

(declare-fun m!5872592 () Bool)

(assert (=> d!1564537 m!5872592))

(assert (=> b!4871912 m!5872322))

(assert (=> b!4871912 m!5872322))

(assert (=> b!4871912 m!5872592))

(assert (=> b!4871189 d!1564537))

(declare-fun b!4871917 () Bool)

(declare-fun e!3045528 () Bool)

(declare-fun lt!1996314 () List!56108)

(assert (=> b!4871917 (= e!3045528 (or (not (= (list!17516 (right!40993 (c!828451 (_2!33222 (v!49713 lt!1995756))))) Nil!55984)) (= lt!1996314 (list!17516 (left!40663 (c!828451 (_2!33222 (v!49713 lt!1995756))))))))))

(declare-fun b!4871916 () Bool)

(declare-fun res!2079747 () Bool)

(assert (=> b!4871916 (=> (not res!2079747) (not e!3045528))))

(assert (=> b!4871916 (= res!2079747 (= (size!36907 lt!1996314) (+ (size!36907 (list!17516 (left!40663 (c!828451 (_2!33222 (v!49713 lt!1995756)))))) (size!36907 (list!17516 (right!40993 (c!828451 (_2!33222 (v!49713 lt!1995756)))))))))))

(declare-fun d!1564539 () Bool)

(assert (=> d!1564539 e!3045528))

(declare-fun res!2079748 () Bool)

(assert (=> d!1564539 (=> (not res!2079748) (not e!3045528))))

(assert (=> d!1564539 (= res!2079748 (= (content!9981 lt!1996314) (set.union (content!9981 (list!17516 (left!40663 (c!828451 (_2!33222 (v!49713 lt!1995756)))))) (content!9981 (list!17516 (right!40993 (c!828451 (_2!33222 (v!49713 lt!1995756)))))))))))

(declare-fun e!3045527 () List!56108)

(assert (=> d!1564539 (= lt!1996314 e!3045527)))

(declare-fun c!828668 () Bool)

(assert (=> d!1564539 (= c!828668 (is-Nil!55984 (list!17516 (left!40663 (c!828451 (_2!33222 (v!49713 lt!1995756)))))))))

(assert (=> d!1564539 (= (++!12192 (list!17516 (left!40663 (c!828451 (_2!33222 (v!49713 lt!1995756))))) (list!17516 (right!40993 (c!828451 (_2!33222 (v!49713 lt!1995756)))))) lt!1996314)))

(declare-fun b!4871914 () Bool)

(assert (=> b!4871914 (= e!3045527 (list!17516 (right!40993 (c!828451 (_2!33222 (v!49713 lt!1995756))))))))

(declare-fun b!4871915 () Bool)

(assert (=> b!4871915 (= e!3045527 (Cons!55984 (h!62432 (list!17516 (left!40663 (c!828451 (_2!33222 (v!49713 lt!1995756)))))) (++!12192 (t!364178 (list!17516 (left!40663 (c!828451 (_2!33222 (v!49713 lt!1995756)))))) (list!17516 (right!40993 (c!828451 (_2!33222 (v!49713 lt!1995756))))))))))

(assert (= (and d!1564539 c!828668) b!4871914))

(assert (= (and d!1564539 (not c!828668)) b!4871915))

(assert (= (and d!1564539 res!2079748) b!4871916))

(assert (= (and b!4871916 res!2079747) b!4871917))

(declare-fun m!5872594 () Bool)

(assert (=> b!4871916 m!5872594))

(assert (=> b!4871916 m!5871304))

(declare-fun m!5872596 () Bool)

(assert (=> b!4871916 m!5872596))

(assert (=> b!4871916 m!5871306))

(declare-fun m!5872598 () Bool)

(assert (=> b!4871916 m!5872598))

(declare-fun m!5872600 () Bool)

(assert (=> d!1564539 m!5872600))

(assert (=> d!1564539 m!5871304))

(declare-fun m!5872602 () Bool)

(assert (=> d!1564539 m!5872602))

(assert (=> d!1564539 m!5871306))

(declare-fun m!5872604 () Bool)

(assert (=> d!1564539 m!5872604))

(assert (=> b!4871915 m!5871306))

(declare-fun m!5872606 () Bool)

(assert (=> b!4871915 m!5872606))

(assert (=> b!4871091 d!1564539))

(declare-fun b!4871920 () Bool)

(declare-fun e!3045530 () List!56108)

(assert (=> b!4871920 (= e!3045530 (list!17519 (xs!17901 (left!40663 (c!828451 (_2!33222 (v!49713 lt!1995756)))))))))

(declare-fun b!4871919 () Bool)

(declare-fun e!3045529 () List!56108)

(assert (=> b!4871919 (= e!3045529 e!3045530)))

(declare-fun c!828670 () Bool)

(assert (=> b!4871919 (= c!828670 (is-Leaf!24326 (left!40663 (c!828451 (_2!33222 (v!49713 lt!1995756))))))))

(declare-fun d!1564541 () Bool)

(declare-fun c!828669 () Bool)

(assert (=> d!1564541 (= c!828669 (is-Empty!14593 (left!40663 (c!828451 (_2!33222 (v!49713 lt!1995756))))))))

(assert (=> d!1564541 (= (list!17516 (left!40663 (c!828451 (_2!33222 (v!49713 lt!1995756))))) e!3045529)))

(declare-fun b!4871918 () Bool)

(assert (=> b!4871918 (= e!3045529 Nil!55984)))

(declare-fun b!4871921 () Bool)

(assert (=> b!4871921 (= e!3045530 (++!12192 (list!17516 (left!40663 (left!40663 (c!828451 (_2!33222 (v!49713 lt!1995756)))))) (list!17516 (right!40993 (left!40663 (c!828451 (_2!33222 (v!49713 lt!1995756))))))))))

(assert (= (and d!1564541 c!828669) b!4871918))

(assert (= (and d!1564541 (not c!828669)) b!4871919))

(assert (= (and b!4871919 c!828670) b!4871920))

(assert (= (and b!4871919 (not c!828670)) b!4871921))

(declare-fun m!5872608 () Bool)

(assert (=> b!4871920 m!5872608))

(declare-fun m!5872610 () Bool)

(assert (=> b!4871921 m!5872610))

(declare-fun m!5872612 () Bool)

(assert (=> b!4871921 m!5872612))

(assert (=> b!4871921 m!5872610))

(assert (=> b!4871921 m!5872612))

(declare-fun m!5872614 () Bool)

(assert (=> b!4871921 m!5872614))

(assert (=> b!4871091 d!1564541))

(declare-fun b!4871924 () Bool)

(declare-fun e!3045532 () List!56108)

(assert (=> b!4871924 (= e!3045532 (list!17519 (xs!17901 (right!40993 (c!828451 (_2!33222 (v!49713 lt!1995756)))))))))

(declare-fun b!4871923 () Bool)

(declare-fun e!3045531 () List!56108)

(assert (=> b!4871923 (= e!3045531 e!3045532)))

(declare-fun c!828672 () Bool)

(assert (=> b!4871923 (= c!828672 (is-Leaf!24326 (right!40993 (c!828451 (_2!33222 (v!49713 lt!1995756))))))))

(declare-fun d!1564543 () Bool)

(declare-fun c!828671 () Bool)

(assert (=> d!1564543 (= c!828671 (is-Empty!14593 (right!40993 (c!828451 (_2!33222 (v!49713 lt!1995756))))))))

(assert (=> d!1564543 (= (list!17516 (right!40993 (c!828451 (_2!33222 (v!49713 lt!1995756))))) e!3045531)))

(declare-fun b!4871922 () Bool)

(assert (=> b!4871922 (= e!3045531 Nil!55984)))

(declare-fun b!4871925 () Bool)

(assert (=> b!4871925 (= e!3045532 (++!12192 (list!17516 (left!40663 (right!40993 (c!828451 (_2!33222 (v!49713 lt!1995756)))))) (list!17516 (right!40993 (right!40993 (c!828451 (_2!33222 (v!49713 lt!1995756))))))))))

(assert (= (and d!1564543 c!828671) b!4871922))

(assert (= (and d!1564543 (not c!828671)) b!4871923))

(assert (= (and b!4871923 c!828672) b!4871924))

(assert (= (and b!4871923 (not c!828672)) b!4871925))

(declare-fun m!5872616 () Bool)

(assert (=> b!4871924 m!5872616))

(declare-fun m!5872618 () Bool)

(assert (=> b!4871925 m!5872618))

(declare-fun m!5872620 () Bool)

(assert (=> b!4871925 m!5872620))

(assert (=> b!4871925 m!5872618))

(assert (=> b!4871925 m!5872620))

(declare-fun m!5872622 () Bool)

(assert (=> b!4871925 m!5872622))

(assert (=> b!4871091 d!1564543))

(declare-fun d!1564545 () Bool)

(declare-fun lt!1996315 () Int)

(assert (=> d!1564545 (>= lt!1996315 0)))

(declare-fun e!3045533 () Int)

(assert (=> d!1564545 (= lt!1996315 e!3045533)))

(declare-fun c!828673 () Bool)

(assert (=> d!1564545 (= c!828673 (is-Nil!55984 (t!364178 (list!17513 (_2!33222 (v!49713 lt!1995756))))))))

(assert (=> d!1564545 (= (size!36907 (t!364178 (list!17513 (_2!33222 (v!49713 lt!1995756))))) lt!1996315)))

(declare-fun b!4871926 () Bool)

(assert (=> b!4871926 (= e!3045533 0)))

(declare-fun b!4871927 () Bool)

(assert (=> b!4871927 (= e!3045533 (+ 1 (size!36907 (t!364178 (t!364178 (list!17513 (_2!33222 (v!49713 lt!1995756))))))))))

(assert (= (and d!1564545 c!828673) b!4871926))

(assert (= (and d!1564545 (not c!828673)) b!4871927))

(declare-fun m!5872624 () Bool)

(assert (=> b!4871927 m!5872624))

(assert (=> b!4871230 d!1564545))

(declare-fun d!1564547 () Bool)

(declare-fun res!2079749 () Bool)

(declare-fun e!3045534 () Bool)

(assert (=> d!1564547 (=> (not res!2079749) (not e!3045534))))

(assert (=> d!1564547 (= res!2079749 (<= (size!36907 (list!17519 (xs!17901 (left!40663 (c!828451 input!585))))) 512))))

(assert (=> d!1564547 (= (inv!71916 (left!40663 (c!828451 input!585))) e!3045534)))

(declare-fun b!4871928 () Bool)

(declare-fun res!2079750 () Bool)

(assert (=> b!4871928 (=> (not res!2079750) (not e!3045534))))

(assert (=> b!4871928 (= res!2079750 (= (csize!29417 (left!40663 (c!828451 input!585))) (size!36907 (list!17519 (xs!17901 (left!40663 (c!828451 input!585)))))))))

(declare-fun b!4871929 () Bool)

(assert (=> b!4871929 (= e!3045534 (and (> (csize!29417 (left!40663 (c!828451 input!585))) 0) (<= (csize!29417 (left!40663 (c!828451 input!585))) 512)))))

(assert (= (and d!1564547 res!2079749) b!4871928))

(assert (= (and b!4871928 res!2079750) b!4871929))

(assert (=> d!1564547 m!5872314))

(assert (=> d!1564547 m!5872314))

(declare-fun m!5872626 () Bool)

(assert (=> d!1564547 m!5872626))

(assert (=> b!4871928 m!5872314))

(assert (=> b!4871928 m!5872314))

(assert (=> b!4871928 m!5872626))

(assert (=> b!4871186 d!1564547))

(declare-fun d!1564549 () Bool)

(declare-fun lt!1996316 () Int)

(assert (=> d!1564549 (>= lt!1996316 0)))

(declare-fun e!3045535 () Int)

(assert (=> d!1564549 (= lt!1996316 e!3045535)))

(declare-fun c!828674 () Bool)

(assert (=> d!1564549 (= c!828674 (is-Nil!55984 (t!364178 lt!1995765)))))

(assert (=> d!1564549 (= (size!36907 (t!364178 lt!1995765)) lt!1996316)))

(declare-fun b!4871930 () Bool)

(assert (=> b!4871930 (= e!3045535 0)))

(declare-fun b!4871931 () Bool)

(assert (=> b!4871931 (= e!3045535 (+ 1 (size!36907 (t!364178 (t!364178 lt!1995765)))))))

(assert (= (and d!1564549 c!828674) b!4871930))

(assert (= (and d!1564549 (not c!828674)) b!4871931))

(declare-fun m!5872628 () Bool)

(assert (=> b!4871931 m!5872628))

(assert (=> b!4871226 d!1564549))

(assert (=> b!4871181 d!1564447))

(declare-fun b!4871932 () Bool)

(declare-fun res!2079751 () Bool)

(declare-fun e!3045537 () Bool)

(assert (=> b!4871932 (=> (not res!2079751) (not e!3045537))))

(assert (=> b!4871932 (= res!2079751 (<= (- (height!1930 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))) (height!1930 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))) 1))))

(declare-fun b!4871933 () Bool)

(declare-fun res!2079756 () Bool)

(assert (=> b!4871933 (=> (not res!2079756) (not e!3045537))))

(assert (=> b!4871933 (= res!2079756 (isBalanced!3957 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))))))

(declare-fun b!4871934 () Bool)

(declare-fun res!2079755 () Bool)

(assert (=> b!4871934 (=> (not res!2079755) (not e!3045537))))

(assert (=> b!4871934 (= res!2079755 (isBalanced!3957 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))))))

(declare-fun b!4871935 () Bool)

(declare-fun e!3045536 () Bool)

(assert (=> b!4871935 (= e!3045536 e!3045537)))

(declare-fun res!2079752 () Bool)

(assert (=> b!4871935 (=> (not res!2079752) (not e!3045537))))

(assert (=> b!4871935 (= res!2079752 (<= (- 1) (- (height!1930 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))) (height!1930 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))))))))

(declare-fun b!4871936 () Bool)

(declare-fun res!2079753 () Bool)

(assert (=> b!4871936 (=> (not res!2079753) (not e!3045537))))

(assert (=> b!4871936 (= res!2079753 (not (isEmpty!29963 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))))))

(declare-fun b!4871937 () Bool)

(assert (=> b!4871937 (= e!3045537 (not (isEmpty!29963 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))))))

(declare-fun d!1564551 () Bool)

(declare-fun res!2079754 () Bool)

(assert (=> d!1564551 (=> res!2079754 e!3045536)))

(assert (=> d!1564551 (= res!2079754 (not (is-Node!14593 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))))))

(assert (=> d!1564551 (= (isBalanced!3957 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))) e!3045536)))

(assert (= (and d!1564551 (not res!2079754)) b!4871935))

(assert (= (and b!4871935 res!2079752) b!4871932))

(assert (= (and b!4871932 res!2079751) b!4871934))

(assert (= (and b!4871934 res!2079755) b!4871933))

(assert (= (and b!4871933 res!2079756) b!4871936))

(assert (= (and b!4871936 res!2079753) b!4871937))

(declare-fun m!5872630 () Bool)

(assert (=> b!4871937 m!5872630))

(declare-fun m!5872632 () Bool)

(assert (=> b!4871936 m!5872632))

(assert (=> b!4871935 m!5872186))

(assert (=> b!4871935 m!5872188))

(declare-fun m!5872634 () Bool)

(assert (=> b!4871934 m!5872634))

(declare-fun m!5872636 () Bool)

(assert (=> b!4871933 m!5872636))

(assert (=> b!4871932 m!5872186))

(assert (=> b!4871932 m!5872188))

(assert (=> d!1564107 d!1564551))

(declare-fun d!1564553 () Bool)

(declare-fun res!2079757 () Bool)

(declare-fun e!3045538 () Bool)

(assert (=> d!1564553 (=> res!2079757 e!3045538)))

(assert (=> d!1564553 (= res!2079757 (is-Nil!55986 (t!364180 rules!1164)))))

(assert (=> d!1564553 (= (noDuplicateTag!3284 thiss!11460 (t!364180 rules!1164) (Cons!55992 (tag!8907 (h!62434 rules!1164)) Nil!55992)) e!3045538)))

(declare-fun b!4871938 () Bool)

(declare-fun e!3045539 () Bool)

(assert (=> b!4871938 (= e!3045538 e!3045539)))

(declare-fun res!2079758 () Bool)

(assert (=> b!4871938 (=> (not res!2079758) (not e!3045539))))

(assert (=> b!4871938 (= res!2079758 (not (contains!19398 (Cons!55992 (tag!8907 (h!62434 rules!1164)) Nil!55992) (tag!8907 (h!62434 (t!364180 rules!1164))))))))

(declare-fun b!4871939 () Bool)

(assert (=> b!4871939 (= e!3045539 (noDuplicateTag!3284 thiss!11460 (t!364180 (t!364180 rules!1164)) (Cons!55992 (tag!8907 (h!62434 (t!364180 rules!1164))) (Cons!55992 (tag!8907 (h!62434 rules!1164)) Nil!55992))))))

(assert (= (and d!1564553 (not res!2079757)) b!4871938))

(assert (= (and b!4871938 res!2079758) b!4871939))

(declare-fun m!5872638 () Bool)

(assert (=> b!4871938 m!5872638))

(declare-fun m!5872640 () Bool)

(assert (=> b!4871939 m!5872640))

(assert (=> b!4871046 d!1564553))

(declare-fun b!4871942 () Bool)

(declare-fun e!3045540 () Bool)

(assert (=> b!4871942 (= e!3045540 (isPrefix!4767 (tail!9561 lt!1995875) (tail!9561 lt!1995879)))))

(declare-fun d!1564555 () Bool)

(declare-fun e!3045541 () Bool)

(assert (=> d!1564555 e!3045541))

(declare-fun res!2079761 () Bool)

(assert (=> d!1564555 (=> res!2079761 e!3045541)))

(declare-fun lt!1996317 () Bool)

(assert (=> d!1564555 (= res!2079761 (not lt!1996317))))

(declare-fun e!3045542 () Bool)

(assert (=> d!1564555 (= lt!1996317 e!3045542)))

(declare-fun res!2079762 () Bool)

(assert (=> d!1564555 (=> res!2079762 e!3045542)))

(assert (=> d!1564555 (= res!2079762 (is-Nil!55984 lt!1995875))))

(assert (=> d!1564555 (= (isPrefix!4767 lt!1995875 lt!1995879) lt!1996317)))

(declare-fun b!4871943 () Bool)

(assert (=> b!4871943 (= e!3045541 (>= (size!36907 lt!1995879) (size!36907 lt!1995875)))))

(declare-fun b!4871940 () Bool)

(assert (=> b!4871940 (= e!3045542 e!3045540)))

(declare-fun res!2079760 () Bool)

(assert (=> b!4871940 (=> (not res!2079760) (not e!3045540))))

(assert (=> b!4871940 (= res!2079760 (not (is-Nil!55984 lt!1995879)))))

(declare-fun b!4871941 () Bool)

(declare-fun res!2079759 () Bool)

(assert (=> b!4871941 (=> (not res!2079759) (not e!3045540))))

(assert (=> b!4871941 (= res!2079759 (= (head!10415 lt!1995875) (head!10415 lt!1995879)))))

(assert (= (and d!1564555 (not res!2079762)) b!4871940))

(assert (= (and b!4871940 res!2079760) b!4871941))

(assert (= (and b!4871941 res!2079759) b!4871942))

(assert (= (and d!1564555 (not res!2079761)) b!4871943))

(declare-fun m!5872642 () Bool)

(assert (=> b!4871942 m!5872642))

(declare-fun m!5872644 () Bool)

(assert (=> b!4871942 m!5872644))

(assert (=> b!4871942 m!5872642))

(assert (=> b!4871942 m!5872644))

(declare-fun m!5872646 () Bool)

(assert (=> b!4871942 m!5872646))

(declare-fun m!5872648 () Bool)

(assert (=> b!4871943 m!5872648))

(declare-fun m!5872650 () Bool)

(assert (=> b!4871943 m!5872650))

(declare-fun m!5872652 () Bool)

(assert (=> b!4871941 m!5872652))

(declare-fun m!5872654 () Bool)

(assert (=> b!4871941 m!5872654))

(assert (=> d!1564137 d!1564555))

(declare-fun d!1564557 () Bool)

(assert (=> d!1564557 (isPrefix!4767 lt!1995875 lt!1995879)))

(declare-fun lt!1996318 () Unit!145974)

(assert (=> d!1564557 (= lt!1996318 (choose!35608 lt!1995875 lt!1995879))))

(assert (=> d!1564557 (= (lemmaIsPrefixRefl!3164 lt!1995875 lt!1995879) lt!1996318)))

(declare-fun bs!1174700 () Bool)

(assert (= bs!1174700 d!1564557))

(assert (=> bs!1174700 m!5871340))

(declare-fun m!5872656 () Bool)

(assert (=> bs!1174700 m!5872656))

(assert (=> d!1564137 d!1564557))

(declare-fun d!1564559 () Bool)

(assert (=> d!1564559 (= (isDefined!10851 (maxPrefixZipper!564 thiss!11460 (t!364180 rules!1164) (list!17513 input!585))) (not (isEmpty!29962 (maxPrefixZipper!564 thiss!11460 (t!364180 rules!1164) (list!17513 input!585)))))))

(declare-fun bs!1174701 () Bool)

(assert (= bs!1174701 d!1564559))

(assert (=> bs!1174701 m!5871242))

(declare-fun m!5872658 () Bool)

(assert (=> bs!1174701 m!5872658))

(assert (=> d!1564137 d!1564559))

(assert (=> d!1564137 d!1564343))

(declare-fun bs!1174702 () Bool)

(declare-fun d!1564561 () Bool)

(assert (= bs!1174702 (and d!1564561 d!1564201)))

(declare-fun lambda!243531 () Int)

(assert (=> bs!1174702 (= lambda!243531 lambda!243505)))

(declare-fun bs!1174703 () Bool)

(assert (= bs!1174703 (and d!1564561 d!1564207)))

(assert (=> bs!1174703 (= lambda!243531 lambda!243508)))

(assert (=> d!1564561 true))

(declare-fun lt!1996319 () Bool)

(assert (=> d!1564561 (= lt!1996319 (forall!13051 (t!364180 rules!1164) lambda!243531))))

(declare-fun e!3045543 () Bool)

(assert (=> d!1564561 (= lt!1996319 e!3045543)))

(declare-fun res!2079764 () Bool)

(assert (=> d!1564561 (=> res!2079764 e!3045543)))

(assert (=> d!1564561 (= res!2079764 (not (is-Cons!55986 (t!364180 rules!1164))))))

(assert (=> d!1564561 (= (rulesValidInductive!3022 thiss!11460 (t!364180 rules!1164)) lt!1996319)))

(declare-fun b!4871944 () Bool)

(declare-fun e!3045544 () Bool)

(assert (=> b!4871944 (= e!3045543 e!3045544)))

(declare-fun res!2079763 () Bool)

(assert (=> b!4871944 (=> (not res!2079763) (not e!3045544))))

(assert (=> b!4871944 (= res!2079763 (ruleValid!3631 thiss!11460 (h!62434 (t!364180 rules!1164))))))

(declare-fun b!4871945 () Bool)

(assert (=> b!4871945 (= e!3045544 (rulesValidInductive!3022 thiss!11460 (t!364180 (t!364180 rules!1164))))))

(assert (= (and d!1564561 (not res!2079764)) b!4871944))

(assert (= (and b!4871944 res!2079763) b!4871945))

(declare-fun m!5872660 () Bool)

(assert (=> d!1564561 m!5872660))

(assert (=> b!4871944 m!5872578))

(assert (=> b!4871945 m!5872162))

(assert (=> d!1564137 d!1564561))

(assert (=> d!1564137 d!1564435))

(assert (=> d!1564137 d!1564069))

(assert (=> b!4871250 d!1564561))

(declare-fun bs!1174704 () Bool)

(declare-fun d!1564563 () Bool)

(assert (= bs!1174704 (and d!1564563 d!1564211)))

(declare-fun lambda!243532 () Int)

(assert (=> bs!1174704 (= (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toValue!10914 (transformation!8043 (h!62434 rules!1164)))) (= lambda!243532 lambda!243511))))

(declare-fun bs!1174705 () Bool)

(assert (= bs!1174705 (and d!1564563 d!1564351)))

(assert (=> bs!1174705 (= (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toValue!10914 (transformation!8043 (h!62434 rules!1164)))) (= lambda!243532 lambda!243528))))

(assert (=> d!1564563 true))

(assert (=> d!1564563 (< (dynLambda!22475 order!25227 (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164))))) (dynLambda!22478 order!25233 lambda!243532))))

(assert (=> d!1564563 (= (equivClasses!3426 (toChars!10773 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164))))) (Forall2!1256 lambda!243532))))

(declare-fun bs!1174706 () Bool)

(assert (= bs!1174706 d!1564563))

(declare-fun m!5872662 () Bool)

(assert (=> bs!1174706 m!5872662))

(assert (=> b!4871173 d!1564563))

(declare-fun d!1564565 () Bool)

(assert (=> d!1564565 (= (max!0 (height!1930 (left!40663 (c!828451 input!585))) (height!1930 (right!40993 (c!828451 input!585)))) (ite (< (height!1930 (left!40663 (c!828451 input!585))) (height!1930 (right!40993 (c!828451 input!585)))) (height!1930 (right!40993 (c!828451 input!585))) (height!1930 (left!40663 (c!828451 input!585)))))))

(assert (=> b!4871290 d!1564565))

(assert (=> b!4871290 d!1564331))

(assert (=> b!4871290 d!1564333))

(declare-fun d!1564567 () Bool)

(declare-fun res!2079765 () Bool)

(declare-fun e!3045545 () Bool)

(assert (=> d!1564567 (=> (not res!2079765) (not e!3045545))))

(assert (=> d!1564567 (= res!2079765 (<= (size!36907 (list!17519 (xs!17901 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))) 512))))

(assert (=> d!1564567 (= (inv!71916 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))) e!3045545)))

(declare-fun b!4871946 () Bool)

(declare-fun res!2079766 () Bool)

(assert (=> b!4871946 (=> (not res!2079766) (not e!3045545))))

(assert (=> b!4871946 (= res!2079766 (= (csize!29417 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))) (size!36907 (list!17519 (xs!17901 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))))))))

(declare-fun b!4871947 () Bool)

(assert (=> b!4871947 (= e!3045545 (and (> (csize!29417 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))) 0) (<= (csize!29417 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))) 512)))))

(assert (= (and d!1564567 res!2079765) b!4871946))

(assert (= (and b!4871946 res!2079766) b!4871947))

(declare-fun m!5872664 () Bool)

(assert (=> d!1564567 m!5872664))

(assert (=> d!1564567 m!5872664))

(declare-fun m!5872666 () Bool)

(assert (=> d!1564567 m!5872666))

(assert (=> b!4871946 m!5872664))

(assert (=> b!4871946 m!5872664))

(assert (=> b!4871946 m!5872666))

(assert (=> b!4871282 d!1564567))

(declare-fun d!1564569 () Bool)

(assert (=> d!1564569 (= (isDefined!10851 lt!1995860) (not (isEmpty!29962 lt!1995860)))))

(declare-fun bs!1174707 () Bool)

(assert (= bs!1174707 d!1564569))

(assert (=> bs!1174707 m!5871260))

(assert (=> b!4871034 d!1564569))

(declare-fun b!4871948 () Bool)

(declare-fun e!3045547 () tuple2!59846)

(declare-fun lt!1996320 () Option!13794)

(declare-fun lt!1996322 () tuple2!59846)

(assert (=> b!4871948 (= e!3045547 (tuple2!59847 (Cons!55987 (_1!33227 (v!49715 lt!1996320)) (_1!33226 lt!1996322)) (_2!33226 lt!1996322)))))

(assert (=> b!4871948 (= lt!1996322 (lexList!2108 thiss!11460 rules!1164 (_2!33227 (v!49715 lt!1996320))))))

(declare-fun b!4871949 () Bool)

(assert (=> b!4871949 (= e!3045547 (tuple2!59847 Nil!55987 (_2!33227 (v!49715 lt!1995871))))))

(declare-fun b!4871950 () Bool)

(declare-fun e!3045548 () Bool)

(declare-fun e!3045546 () Bool)

(assert (=> b!4871950 (= e!3045548 e!3045546)))

(declare-fun res!2079767 () Bool)

(declare-fun lt!1996321 () tuple2!59846)

(assert (=> b!4871950 (= res!2079767 (< (size!36907 (_2!33226 lt!1996321)) (size!36907 (_2!33227 (v!49715 lt!1995871)))))))

(assert (=> b!4871950 (=> (not res!2079767) (not e!3045546))))

(declare-fun b!4871951 () Bool)

(assert (=> b!4871951 (= e!3045548 (= (_2!33226 lt!1996321) (_2!33227 (v!49715 lt!1995871))))))

(declare-fun d!1564571 () Bool)

(assert (=> d!1564571 e!3045548))

(declare-fun c!828676 () Bool)

(assert (=> d!1564571 (= c!828676 (> (size!36913 (_1!33226 lt!1996321)) 0))))

(assert (=> d!1564571 (= lt!1996321 e!3045547)))

(declare-fun c!828675 () Bool)

(assert (=> d!1564571 (= c!828675 (is-Some!13793 lt!1996320))))

(assert (=> d!1564571 (= lt!1996320 (maxPrefix!4550 thiss!11460 rules!1164 (_2!33227 (v!49715 lt!1995871))))))

(assert (=> d!1564571 (= (lexList!2108 thiss!11460 rules!1164 (_2!33227 (v!49715 lt!1995871))) lt!1996321)))

(declare-fun b!4871952 () Bool)

(assert (=> b!4871952 (= e!3045546 (not (isEmpty!29964 (_1!33226 lt!1996321))))))

(assert (= (and d!1564571 c!828675) b!4871948))

(assert (= (and d!1564571 (not c!828675)) b!4871949))

(assert (= (and d!1564571 c!828676) b!4871950))

(assert (= (and d!1564571 (not c!828676)) b!4871951))

(assert (= (and b!4871950 res!2079767) b!4871952))

(declare-fun m!5872668 () Bool)

(assert (=> b!4871948 m!5872668))

(declare-fun m!5872670 () Bool)

(assert (=> b!4871950 m!5872670))

(declare-fun m!5872672 () Bool)

(assert (=> b!4871950 m!5872672))

(declare-fun m!5872674 () Bool)

(assert (=> d!1564571 m!5872674))

(declare-fun m!5872676 () Bool)

(assert (=> d!1564571 m!5872676))

(declare-fun m!5872678 () Bool)

(assert (=> b!4871952 m!5872678))

(assert (=> b!4871075 d!1564571))

(assert (=> b!4871201 d!1564511))

(declare-fun b!4871955 () Bool)

(declare-fun e!3045549 () Bool)

(assert (=> b!4871955 (= e!3045549 (isPrefix!4767 (tail!9561 (tail!9561 lt!1995792)) (tail!9561 (tail!9561 lt!1995796))))))

(declare-fun d!1564573 () Bool)

(declare-fun e!3045550 () Bool)

(assert (=> d!1564573 e!3045550))

(declare-fun res!2079770 () Bool)

(assert (=> d!1564573 (=> res!2079770 e!3045550)))

(declare-fun lt!1996323 () Bool)

(assert (=> d!1564573 (= res!2079770 (not lt!1996323))))

(declare-fun e!3045551 () Bool)

(assert (=> d!1564573 (= lt!1996323 e!3045551)))

(declare-fun res!2079771 () Bool)

(assert (=> d!1564573 (=> res!2079771 e!3045551)))

(assert (=> d!1564573 (= res!2079771 (is-Nil!55984 (tail!9561 lt!1995792)))))

(assert (=> d!1564573 (= (isPrefix!4767 (tail!9561 lt!1995792) (tail!9561 lt!1995796)) lt!1996323)))

(declare-fun b!4871956 () Bool)

(assert (=> b!4871956 (= e!3045550 (>= (size!36907 (tail!9561 lt!1995796)) (size!36907 (tail!9561 lt!1995792))))))

(declare-fun b!4871953 () Bool)

(assert (=> b!4871953 (= e!3045551 e!3045549)))

(declare-fun res!2079769 () Bool)

(assert (=> b!4871953 (=> (not res!2079769) (not e!3045549))))

(assert (=> b!4871953 (= res!2079769 (not (is-Nil!55984 (tail!9561 lt!1995796))))))

(declare-fun b!4871954 () Bool)

(declare-fun res!2079768 () Bool)

(assert (=> b!4871954 (=> (not res!2079768) (not e!3045549))))

(assert (=> b!4871954 (= res!2079768 (= (head!10415 (tail!9561 lt!1995792)) (head!10415 (tail!9561 lt!1995796))))))

(assert (= (and d!1564573 (not res!2079771)) b!4871953))

(assert (= (and b!4871953 res!2079769) b!4871954))

(assert (= (and b!4871954 res!2079768) b!4871955))

(assert (= (and d!1564573 (not res!2079770)) b!4871956))

(assert (=> b!4871955 m!5871542))

(declare-fun m!5872680 () Bool)

(assert (=> b!4871955 m!5872680))

(assert (=> b!4871955 m!5871544))

(declare-fun m!5872682 () Bool)

(assert (=> b!4871955 m!5872682))

(assert (=> b!4871955 m!5872680))

(assert (=> b!4871955 m!5872682))

(declare-fun m!5872684 () Bool)

(assert (=> b!4871955 m!5872684))

(assert (=> b!4871956 m!5871544))

(declare-fun m!5872686 () Bool)

(assert (=> b!4871956 m!5872686))

(assert (=> b!4871956 m!5871542))

(declare-fun m!5872688 () Bool)

(assert (=> b!4871956 m!5872688))

(assert (=> b!4871954 m!5871542))

(declare-fun m!5872690 () Bool)

(assert (=> b!4871954 m!5872690))

(assert (=> b!4871954 m!5871544))

(declare-fun m!5872692 () Bool)

(assert (=> b!4871954 m!5872692))

(assert (=> b!4871243 d!1564573))

(declare-fun d!1564575 () Bool)

(assert (=> d!1564575 (= (tail!9561 lt!1995792) (t!364178 lt!1995792))))

(assert (=> b!4871243 d!1564575))

(declare-fun d!1564577 () Bool)

(assert (=> d!1564577 (= (tail!9561 lt!1995796) (t!364178 lt!1995796))))

(assert (=> b!4871243 d!1564577))

(assert (=> d!1564205 d!1564203))

(declare-fun d!1564579 () Bool)

(assert (=> d!1564579 (isPrefix!4767 lt!1995792 lt!1995796)))

(assert (=> d!1564579 true))

(declare-fun _$45!2132 () Unit!145974)

(assert (=> d!1564579 (= (choose!35608 lt!1995792 lt!1995796) _$45!2132)))

(declare-fun bs!1174708 () Bool)

(assert (= bs!1174708 d!1564579))

(assert (=> bs!1174708 m!5871098))

(assert (=> d!1564205 d!1564579))

(declare-fun d!1564581 () Bool)

(assert (=> d!1564581 (isPrefix!4767 lt!1995918 lt!1995922)))

(declare-fun lt!1996324 () Unit!145974)

(assert (=> d!1564581 (= lt!1996324 (choose!35608 lt!1995918 lt!1995922))))

(assert (=> d!1564581 (= (lemmaIsPrefixRefl!3164 lt!1995918 lt!1995922) lt!1996324)))

(declare-fun bs!1174709 () Bool)

(assert (= bs!1174709 d!1564581))

(assert (=> bs!1174709 m!5871498))

(declare-fun m!5872694 () Bool)

(assert (=> bs!1174709 m!5872694))

(assert (=> d!1564183 d!1564581))

(declare-fun b!4871959 () Bool)

(declare-fun e!3045552 () Bool)

(assert (=> b!4871959 (= e!3045552 (isPrefix!4767 (tail!9561 lt!1995918) (tail!9561 lt!1995922)))))

(declare-fun d!1564583 () Bool)

(declare-fun e!3045553 () Bool)

(assert (=> d!1564583 e!3045553))

(declare-fun res!2079774 () Bool)

(assert (=> d!1564583 (=> res!2079774 e!3045553)))

(declare-fun lt!1996325 () Bool)

(assert (=> d!1564583 (= res!2079774 (not lt!1996325))))

(declare-fun e!3045554 () Bool)

(assert (=> d!1564583 (= lt!1996325 e!3045554)))

(declare-fun res!2079775 () Bool)

(assert (=> d!1564583 (=> res!2079775 e!3045554)))

(assert (=> d!1564583 (= res!2079775 (is-Nil!55984 lt!1995918))))

(assert (=> d!1564583 (= (isPrefix!4767 lt!1995918 lt!1995922) lt!1996325)))

(declare-fun b!4871960 () Bool)

(assert (=> b!4871960 (= e!3045553 (>= (size!36907 lt!1995922) (size!36907 lt!1995918)))))

(declare-fun b!4871957 () Bool)

(assert (=> b!4871957 (= e!3045554 e!3045552)))

(declare-fun res!2079773 () Bool)

(assert (=> b!4871957 (=> (not res!2079773) (not e!3045552))))

(assert (=> b!4871957 (= res!2079773 (not (is-Nil!55984 lt!1995922)))))

(declare-fun b!4871958 () Bool)

(declare-fun res!2079772 () Bool)

(assert (=> b!4871958 (=> (not res!2079772) (not e!3045552))))

(assert (=> b!4871958 (= res!2079772 (= (head!10415 lt!1995918) (head!10415 lt!1995922)))))

(assert (= (and d!1564583 (not res!2079775)) b!4871957))

(assert (= (and b!4871957 res!2079773) b!4871958))

(assert (= (and b!4871958 res!2079772) b!4871959))

(assert (= (and d!1564583 (not res!2079774)) b!4871960))

(declare-fun m!5872696 () Bool)

(assert (=> b!4871959 m!5872696))

(declare-fun m!5872698 () Bool)

(assert (=> b!4871959 m!5872698))

(assert (=> b!4871959 m!5872696))

(assert (=> b!4871959 m!5872698))

(declare-fun m!5872700 () Bool)

(assert (=> b!4871959 m!5872700))

(declare-fun m!5872702 () Bool)

(assert (=> b!4871960 m!5872702))

(declare-fun m!5872704 () Bool)

(assert (=> b!4871960 m!5872704))

(declare-fun m!5872706 () Bool)

(assert (=> b!4871958 m!5872706))

(declare-fun m!5872708 () Bool)

(assert (=> b!4871958 m!5872708))

(assert (=> d!1564183 d!1564583))

(assert (=> d!1564183 d!1564475))

(assert (=> d!1564183 d!1564511))

(declare-fun d!1564585 () Bool)

(assert (=> d!1564585 (= (isDefined!10851 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756))))) (not (isEmpty!29962 (maxPrefixZipper!564 thiss!11460 rules!1164 (list!17513 (_2!33222 (v!49713 lt!1995756)))))))))

(declare-fun bs!1174710 () Bool)

(assert (= bs!1174710 d!1564585))

(assert (=> bs!1174710 m!5871478))

(declare-fun m!5872710 () Bool)

(assert (=> bs!1174710 m!5872710))

(assert (=> d!1564183 d!1564585))

(assert (=> d!1564183 d!1564065))

(assert (=> d!1564183 d!1564207))

(assert (=> d!1564201 d!1564207))

(declare-fun d!1564587 () Bool)

(declare-fun res!2079780 () Bool)

(declare-fun e!3045559 () Bool)

(assert (=> d!1564587 (=> res!2079780 e!3045559)))

(assert (=> d!1564587 (= res!2079780 (is-Nil!55986 rules!1164))))

(assert (=> d!1564587 (= (forall!13051 rules!1164 lambda!243505) e!3045559)))

(declare-fun b!4871965 () Bool)

(declare-fun e!3045560 () Bool)

(assert (=> b!4871965 (= e!3045559 e!3045560)))

(declare-fun res!2079781 () Bool)

(assert (=> b!4871965 (=> (not res!2079781) (not e!3045560))))

(declare-fun dynLambda!22485 (Int Rule!15886) Bool)

(assert (=> b!4871965 (= res!2079781 (dynLambda!22485 lambda!243505 (h!62434 rules!1164)))))

(declare-fun b!4871966 () Bool)

(assert (=> b!4871966 (= e!3045560 (forall!13051 (t!364180 rules!1164) lambda!243505))))

(assert (= (and d!1564587 (not res!2079780)) b!4871965))

(assert (= (and b!4871965 res!2079781) b!4871966))

(declare-fun b_lambda!193695 () Bool)

(assert (=> (not b_lambda!193695) (not b!4871965)))

(declare-fun m!5872712 () Bool)

(assert (=> b!4871965 m!5872712))

(declare-fun m!5872714 () Bool)

(assert (=> b!4871966 m!5872714))

(assert (=> d!1564201 d!1564587))

(assert (=> b!4871059 d!1564331))

(assert (=> b!4871059 d!1564333))

(assert (=> b!4871103 d!1564425))

(assert (=> b!4871103 d!1564339))

(assert (=> b!4871103 d!1564503))

(assert (=> b!4871103 d!1564069))

(assert (=> b!4871103 d!1564345))

(declare-fun d!1564589 () Bool)

(declare-fun c!828677 () Bool)

(assert (=> d!1564589 (= c!828677 (is-Node!14593 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))))))

(declare-fun e!3045561 () Bool)

(assert (=> d!1564589 (= (inv!71910 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))) e!3045561)))

(declare-fun b!4871967 () Bool)

(assert (=> b!4871967 (= e!3045561 (inv!71915 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))))))

(declare-fun b!4871968 () Bool)

(declare-fun e!3045562 () Bool)

(assert (=> b!4871968 (= e!3045561 e!3045562)))

(declare-fun res!2079782 () Bool)

(assert (=> b!4871968 (= res!2079782 (not (is-Leaf!24326 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))))))

(assert (=> b!4871968 (=> res!2079782 e!3045562)))

(declare-fun b!4871969 () Bool)

(assert (=> b!4871969 (= e!3045562 (inv!71916 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))))))

(assert (= (and d!1564589 c!828677) b!4871967))

(assert (= (and d!1564589 (not c!828677)) b!4871968))

(assert (= (and b!4871968 (not res!2079782)) b!4871969))

(declare-fun m!5872716 () Bool)

(assert (=> b!4871967 m!5872716))

(declare-fun m!5872718 () Bool)

(assert (=> b!4871969 m!5872718))

(assert (=> b!4871308 d!1564589))

(declare-fun d!1564591 () Bool)

(declare-fun c!828678 () Bool)

(assert (=> d!1564591 (= c!828678 (is-Node!14593 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))))))

(declare-fun e!3045563 () Bool)

(assert (=> d!1564591 (= (inv!71910 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))) e!3045563)))

(declare-fun b!4871970 () Bool)

(assert (=> b!4871970 (= e!3045563 (inv!71915 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))))))

(declare-fun b!4871971 () Bool)

(declare-fun e!3045564 () Bool)

(assert (=> b!4871971 (= e!3045563 e!3045564)))

(declare-fun res!2079783 () Bool)

(assert (=> b!4871971 (= res!2079783 (not (is-Leaf!24326 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))))))

(assert (=> b!4871971 (=> res!2079783 e!3045564)))

(declare-fun b!4871972 () Bool)

(assert (=> b!4871972 (= e!3045564 (inv!71916 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))))))

(assert (= (and d!1564591 c!828678) b!4871970))

(assert (= (and d!1564591 (not c!828678)) b!4871971))

(assert (= (and b!4871971 (not res!2079783)) b!4871972))

(declare-fun m!5872720 () Bool)

(assert (=> b!4871970 m!5872720))

(declare-fun m!5872722 () Bool)

(assert (=> b!4871972 m!5872722))

(assert (=> b!4871308 d!1564591))

(declare-fun d!1564593 () Bool)

(assert (=> d!1564593 (= (isEmpty!29964 (_1!33226 lt!1995872)) (is-Nil!55987 (_1!33226 lt!1995872)))))

(assert (=> b!4871079 d!1564593))

(assert (=> b!4871205 d!1564395))

(assert (=> b!4871205 d!1564473))

(assert (=> b!4871205 d!1564475))

(assert (=> b!4871205 d!1564065))

(assert (=> b!4871205 d!1564399))

(declare-fun d!1564595 () Bool)

(assert (=> d!1564595 (= (isEmpty!29962 lt!1995860) (not (is-Some!13793 lt!1995860)))))

(assert (=> d!1564119 d!1564595))

(assert (=> d!1564119 d!1564455))

(assert (=> d!1564119 d!1564457))

(assert (=> d!1564119 d!1564207))

(assert (=> b!4871154 d!1564477))

(assert (=> b!4871154 d!1564481))

(declare-fun d!1564597 () Bool)

(assert (=> d!1564597 (= (list!17513 (_2!33222 (get!19235 lt!1995908))) (list!17516 (c!828451 (_2!33222 (get!19235 lt!1995908)))))))

(declare-fun bs!1174711 () Bool)

(assert (= bs!1174711 d!1564597))

(declare-fun m!5872724 () Bool)

(assert (=> bs!1174711 m!5872724))

(assert (=> b!4871154 d!1564597))

(assert (=> b!4871154 d!1564479))

(assert (=> b!4871154 d!1564069))

(assert (=> b!4870867 d!1564169))

(assert (=> b!4870867 d!1564171))

(declare-fun b!4871975 () Bool)

(declare-fun e!3045566 () List!56108)

(assert (=> b!4871975 (= e!3045566 (list!17519 (xs!17901 (c!828451 lt!1995768))))))

(declare-fun b!4871974 () Bool)

(declare-fun e!3045565 () List!56108)

(assert (=> b!4871974 (= e!3045565 e!3045566)))

(declare-fun c!828680 () Bool)

(assert (=> b!4871974 (= c!828680 (is-Leaf!24326 (c!828451 lt!1995768)))))

(declare-fun d!1564599 () Bool)

(declare-fun c!828679 () Bool)

(assert (=> d!1564599 (= c!828679 (is-Empty!14593 (c!828451 lt!1995768)))))

(assert (=> d!1564599 (= (list!17516 (c!828451 lt!1995768)) e!3045565)))

(declare-fun b!4871973 () Bool)

(assert (=> b!4871973 (= e!3045565 Nil!55984)))

(declare-fun b!4871976 () Bool)

(assert (=> b!4871976 (= e!3045566 (++!12192 (list!17516 (left!40663 (c!828451 lt!1995768))) (list!17516 (right!40993 (c!828451 lt!1995768)))))))

(assert (= (and d!1564599 c!828679) b!4871973))

(assert (= (and d!1564599 (not c!828679)) b!4871974))

(assert (= (and b!4871974 c!828680) b!4871975))

(assert (= (and b!4871974 (not c!828680)) b!4871976))

(declare-fun m!5872726 () Bool)

(assert (=> b!4871975 m!5872726))

(declare-fun m!5872728 () Bool)

(assert (=> b!4871976 m!5872728))

(declare-fun m!5872730 () Bool)

(assert (=> b!4871976 m!5872730))

(assert (=> b!4871976 m!5872728))

(assert (=> b!4871976 m!5872730))

(declare-fun m!5872732 () Bool)

(assert (=> b!4871976 m!5872732))

(assert (=> d!1564139 d!1564599))

(declare-fun d!1564601 () Bool)

(assert (=> d!1564601 (= (inv!71917 (xs!17901 (right!40993 (c!828451 input!585)))) (<= (size!36907 (innerList!14681 (xs!17901 (right!40993 (c!828451 input!585))))) 2147483647))))

(declare-fun bs!1174712 () Bool)

(assert (= bs!1174712 d!1564601))

(declare-fun m!5872734 () Bool)

(assert (=> bs!1174712 m!5872734))

(assert (=> b!4871306 d!1564601))

(declare-fun d!1564603 () Bool)

(declare-fun lt!1996326 () Bool)

(assert (=> d!1564603 (= lt!1996326 (isEmpty!29967 (list!17516 (left!40663 (c!828451 input!585)))))))

(assert (=> d!1564603 (= lt!1996326 (= (size!36915 (left!40663 (c!828451 input!585))) 0))))

(assert (=> d!1564603 (= (isEmpty!29963 (left!40663 (c!828451 input!585))) lt!1996326)))

(declare-fun bs!1174713 () Bool)

(assert (= bs!1174713 d!1564603))

(assert (=> bs!1174713 m!5871424))

(assert (=> bs!1174713 m!5871424))

(declare-fun m!5872736 () Bool)

(assert (=> bs!1174713 m!5872736))

(assert (=> bs!1174713 m!5871614))

(assert (=> b!4871063 d!1564603))

(declare-fun d!1564605 () Bool)

(declare-fun c!828681 () Bool)

(assert (=> d!1564605 (= c!828681 (is-Nil!55984 (t!364178 (list!17513 (_2!33222 (v!49713 lt!1995756))))))))

(declare-fun e!3045567 () (Set C!26434))

(assert (=> d!1564605 (= (content!9981 (t!364178 (list!17513 (_2!33222 (v!49713 lt!1995756))))) e!3045567)))

(declare-fun b!4871977 () Bool)

(assert (=> b!4871977 (= e!3045567 (as set.empty (Set C!26434)))))

(declare-fun b!4871978 () Bool)

(assert (=> b!4871978 (= e!3045567 (set.union (set.insert (h!62432 (t!364178 (list!17513 (_2!33222 (v!49713 lt!1995756))))) (as set.empty (Set C!26434))) (content!9981 (t!364178 (t!364178 (list!17513 (_2!33222 (v!49713 lt!1995756))))))))))

(assert (= (and d!1564605 c!828681) b!4871977))

(assert (= (and d!1564605 (not c!828681)) b!4871978))

(declare-fun m!5872738 () Bool)

(assert (=> b!4871978 m!5872738))

(declare-fun m!5872740 () Bool)

(assert (=> b!4871978 m!5872740))

(assert (=> b!4871183 d!1564605))

(declare-fun d!1564607 () Bool)

(declare-fun lt!1996327 () Int)

(assert (=> d!1564607 (>= lt!1996327 0)))

(declare-fun e!3045568 () Int)

(assert (=> d!1564607 (= lt!1996327 e!3045568)))

(declare-fun c!828682 () Bool)

(assert (=> d!1564607 (= c!828682 (is-Nil!55984 (_2!33227 (get!19236 lt!1995860))))))

(assert (=> d!1564607 (= (size!36907 (_2!33227 (get!19236 lt!1995860))) lt!1996327)))

(declare-fun b!4871979 () Bool)

(assert (=> b!4871979 (= e!3045568 0)))

(declare-fun b!4871980 () Bool)

(assert (=> b!4871980 (= e!3045568 (+ 1 (size!36907 (t!364178 (_2!33227 (get!19236 lt!1995860))))))))

(assert (= (and d!1564607 c!828682) b!4871979))

(assert (= (and d!1564607 (not c!828682)) b!4871980))

(declare-fun m!5872742 () Bool)

(assert (=> b!4871980 m!5872742))

(assert (=> b!4871038 d!1564607))

(assert (=> b!4871038 d!1564433))

(declare-fun d!1564609 () Bool)

(declare-fun lt!1996328 () Int)

(assert (=> d!1564609 (>= lt!1996328 0)))

(declare-fun e!3045569 () Int)

(assert (=> d!1564609 (= lt!1996328 e!3045569)))

(declare-fun c!828683 () Bool)

(assert (=> d!1564609 (= c!828683 (is-Nil!55984 (list!17513 input!585)))))

(assert (=> d!1564609 (= (size!36907 (list!17513 input!585)) lt!1996328)))

(declare-fun b!4871981 () Bool)

(assert (=> b!4871981 (= e!3045569 0)))

(declare-fun b!4871982 () Bool)

(assert (=> b!4871982 (= e!3045569 (+ 1 (size!36907 (t!364178 (list!17513 input!585)))))))

(assert (= (and d!1564609 c!828683) b!4871981))

(assert (= (and d!1564609 (not c!828683)) b!4871982))

(declare-fun m!5872744 () Bool)

(assert (=> b!4871982 m!5872744))

(assert (=> b!4871038 d!1564609))

(declare-fun d!1564611 () Bool)

(assert (=> d!1564611 (= (list!17515 lt!1995961) (list!17521 (c!828453 lt!1995961)))))

(declare-fun bs!1174714 () Bool)

(assert (= bs!1174714 d!1564611))

(declare-fun m!5872746 () Bool)

(assert (=> bs!1174714 m!5872746))

(assert (=> b!4871272 d!1564611))

(declare-fun d!1564613 () Bool)

(assert (=> d!1564613 (= (list!17515 (_1!33223 lt!1995777)) (list!17521 (c!828453 (_1!33223 lt!1995777))))))

(declare-fun bs!1174715 () Bool)

(assert (= bs!1174715 d!1564613))

(assert (=> bs!1174715 m!5872252))

(assert (=> b!4871272 d!1564613))

(assert (=> b!4870798 d!1564225))

(declare-fun d!1564615 () Bool)

(assert (=> d!1564615 (= (list!17519 (xs!17901 (c!828451 (_2!33222 (v!49713 lt!1995756))))) (innerList!14681 (xs!17901 (c!828451 (_2!33222 (v!49713 lt!1995756))))))))

(assert (=> b!4871090 d!1564615))

(declare-fun bs!1174716 () Bool)

(declare-fun b!4871985 () Bool)

(assert (= bs!1174716 (and b!4871985 b!4871153)))

(declare-fun lambda!243533 () Int)

(assert (=> bs!1174716 (= lambda!243533 lambda!243496)))

(declare-fun bs!1174717 () Bool)

(assert (= bs!1174717 (and b!4871985 d!1564153)))

(assert (=> bs!1174717 (= lambda!243533 lambda!243499)))

(declare-fun bs!1174718 () Bool)

(assert (= bs!1174718 (and b!4871985 d!1564487)))

(assert (=> bs!1174718 (= (and (= (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (toChars!10773 (transformation!8043 (h!62434 (t!364180 rules!1164))))) (= (toValue!10914 (transformation!8043 (h!62434 rules!1164))) (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164)))))) (= lambda!243533 lambda!243529))))

(declare-fun bs!1174719 () Bool)

(assert (= bs!1174719 (and b!4871985 b!4871906)))

(assert (=> bs!1174719 (= (and (= (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (toChars!10773 (transformation!8043 (h!62434 (t!364180 rules!1164))))) (= (toValue!10914 (transformation!8043 (h!62434 rules!1164))) (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164)))))) (= lambda!243533 lambda!243530))))

(declare-fun b!4871990 () Bool)

(declare-fun e!3045576 () Bool)

(assert (=> b!4871990 (= e!3045576 true)))

(declare-fun b!4871989 () Bool)

(declare-fun e!3045575 () Bool)

(assert (=> b!4871989 (= e!3045575 e!3045576)))

(assert (=> b!4871985 e!3045575))

(assert (= b!4871989 b!4871990))

(assert (= b!4871985 b!4871989))

(assert (=> b!4871990 (< (dynLambda!22475 order!25227 (toValue!10914 (transformation!8043 (h!62434 rules!1164)))) (dynLambda!22476 order!25229 lambda!243533))))

(assert (=> b!4871990 (< (dynLambda!22477 order!25231 (toChars!10773 (transformation!8043 (h!62434 rules!1164)))) (dynLambda!22476 order!25229 lambda!243533))))

(declare-fun b!4871983 () Bool)

(declare-fun e!3045573 () Bool)

(declare-fun lt!1996335 () List!56108)

(assert (=> b!4871983 (= e!3045573 (matchR!6493 (regex!8043 (h!62434 rules!1164)) (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1996335 lt!1996335 (size!36907 lt!1996335)))))))

(declare-fun b!4871984 () Bool)

(declare-fun e!3045572 () Bool)

(declare-fun e!3045570 () Bool)

(assert (=> b!4871984 (= e!3045572 e!3045570)))

(declare-fun res!2079784 () Bool)

(assert (=> b!4871984 (=> (not res!2079784) (not e!3045570))))

(declare-fun lt!1996333 () Option!13792)

(assert (=> b!4871984 (= res!2079784 (= (_1!33222 (get!19235 lt!1996333)) (_1!33227 (get!19236 (maxPrefixOneRule!3492 thiss!11460 (h!62434 rules!1164) (list!17513 (_2!33222 (v!49713 lt!1995756))))))))))

(declare-fun d!1564617 () Bool)

(declare-fun e!3045574 () Bool)

(assert (=> d!1564617 e!3045574))

(declare-fun res!2079786 () Bool)

(assert (=> d!1564617 (=> (not res!2079786) (not e!3045574))))

(assert (=> d!1564617 (= res!2079786 (= (isDefined!10850 lt!1996333) (isDefined!10851 (maxPrefixOneRule!3492 thiss!11460 (h!62434 rules!1164) (list!17513 (_2!33222 (v!49713 lt!1995756)))))))))

(declare-fun e!3045571 () Option!13792)

(assert (=> d!1564617 (= lt!1996333 e!3045571)))

(declare-fun c!828684 () Bool)

(declare-fun lt!1996337 () tuple2!59856)

(assert (=> d!1564617 (= c!828684 (isEmpty!29966 (_1!33231 lt!1996337)))))

(assert (=> d!1564617 (= lt!1996337 (findLongestMatchWithZipperSequence!237 (regex!8043 (h!62434 rules!1164)) (_2!33222 (v!49713 lt!1995756))))))

(assert (=> d!1564617 (ruleValid!3631 thiss!11460 (h!62434 rules!1164))))

(assert (=> d!1564617 (= (maxPrefixOneRuleZipperSequence!577 thiss!11460 (h!62434 rules!1164) (_2!33222 (v!49713 lt!1995756))) lt!1996333)))

(assert (=> b!4871985 (= e!3045571 (Some!13791 (tuple2!59839 (Token!14671 (apply!13503 (transformation!8043 (h!62434 rules!1164)) (_1!33231 lt!1996337)) (h!62434 rules!1164) (size!36909 (_1!33231 lt!1996337)) (list!17513 (_1!33231 lt!1996337))) (_2!33231 lt!1996337))))))

(assert (=> b!4871985 (= lt!1996335 (list!17513 (_2!33222 (v!49713 lt!1995756))))))

(declare-fun lt!1996331 () Unit!145974)

(assert (=> b!4871985 (= lt!1996331 (longestMatchIsAcceptedByMatchOrIsEmpty!1685 (regex!8043 (h!62434 rules!1164)) lt!1996335))))

(declare-fun res!2079787 () Bool)

(assert (=> b!4871985 (= res!2079787 (isEmpty!29967 (_1!33230 (findLongestMatchInner!1722 (regex!8043 (h!62434 rules!1164)) Nil!55984 (size!36907 Nil!55984) lt!1996335 lt!1996335 (size!36907 lt!1996335)))))))

(assert (=> b!4871985 (=> res!2079787 e!3045573)))

(assert (=> b!4871985 e!3045573))

(declare-fun lt!1996332 () Unit!145974)

(assert (=> b!4871985 (= lt!1996332 lt!1996331)))

(declare-fun lt!1996336 () Unit!145974)

(assert (=> b!4871985 (= lt!1996336 (lemmaInv!1205 (transformation!8043 (h!62434 rules!1164))))))

(declare-fun lt!1996329 () Unit!145974)

(assert (=> b!4871985 (= lt!1996329 (ForallOf!1102 lambda!243533 (_1!33231 lt!1996337)))))

(declare-fun lt!1996330 () Unit!145974)

(assert (=> b!4871985 (= lt!1996330 (ForallOf!1102 lambda!243533 (seqFromList!5899 (list!17513 (_1!33231 lt!1996337)))))))

(declare-fun lt!1996334 () Option!13792)

(assert (=> b!4871985 (= lt!1996334 (Some!13791 (tuple2!59839 (Token!14671 (apply!13503 (transformation!8043 (h!62434 rules!1164)) (_1!33231 lt!1996337)) (h!62434 rules!1164) (size!36909 (_1!33231 lt!1996337)) (list!17513 (_1!33231 lt!1996337))) (_2!33231 lt!1996337))))))

(declare-fun lt!1996338 () Unit!145974)

(assert (=> b!4871985 (= lt!1996338 (lemmaEqSameImage!1059 (transformation!8043 (h!62434 rules!1164)) (_1!33231 lt!1996337) (seqFromList!5899 (list!17513 (_1!33231 lt!1996337)))))))

(declare-fun b!4871986 () Bool)

(assert (=> b!4871986 (= e!3045570 (= (list!17513 (_2!33222 (get!19235 lt!1996333))) (_2!33227 (get!19236 (maxPrefixOneRule!3492 thiss!11460 (h!62434 rules!1164) (list!17513 (_2!33222 (v!49713 lt!1995756))))))))))

(declare-fun b!4871987 () Bool)

(assert (=> b!4871987 (= e!3045571 None!13791)))

(declare-fun b!4871988 () Bool)

(assert (=> b!4871988 (= e!3045574 e!3045572)))

(declare-fun res!2079785 () Bool)

(assert (=> b!4871988 (=> res!2079785 e!3045572)))

(assert (=> b!4871988 (= res!2079785 (not (isDefined!10850 lt!1996333)))))

(assert (= (and d!1564617 c!828684) b!4871987))

(assert (= (and d!1564617 (not c!828684)) b!4871985))

(assert (= (and b!4871985 (not res!2079787)) b!4871983))

(assert (= (and d!1564617 res!2079786) b!4871988))

(assert (= (and b!4871988 (not res!2079785)) b!4871984))

(assert (= (and b!4871984 res!2079784) b!4871986))

(declare-fun m!5872748 () Bool)

(assert (=> b!4871988 m!5872748))

(assert (=> b!4871986 m!5870992))

(declare-fun m!5872750 () Bool)

(assert (=> b!4871986 m!5872750))

(assert (=> b!4871986 m!5870992))

(assert (=> b!4871986 m!5871934))

(assert (=> b!4871986 m!5871934))

(declare-fun m!5872752 () Bool)

(assert (=> b!4871986 m!5872752))

(declare-fun m!5872754 () Bool)

(assert (=> b!4871986 m!5872754))

(assert (=> b!4871984 m!5872750))

(assert (=> b!4871984 m!5870992))

(assert (=> b!4871984 m!5870992))

(assert (=> b!4871984 m!5871934))

(assert (=> b!4871984 m!5871934))

(assert (=> b!4871984 m!5872752))

(declare-fun m!5872756 () Bool)

(assert (=> b!4871985 m!5872756))

(declare-fun m!5872758 () Bool)

(assert (=> b!4871985 m!5872758))

(assert (=> b!4871985 m!5870992))

(declare-fun m!5872760 () Bool)

(assert (=> b!4871985 m!5872760))

(declare-fun m!5872762 () Bool)

(assert (=> b!4871985 m!5872762))

(declare-fun m!5872764 () Bool)

(assert (=> b!4871985 m!5872764))

(assert (=> b!4871985 m!5872760))

(declare-fun m!5872766 () Bool)

(assert (=> b!4871985 m!5872766))

(declare-fun m!5872768 () Bool)

(assert (=> b!4871985 m!5872768))

(assert (=> b!4871985 m!5871398))

(assert (=> b!4871985 m!5872758))

(declare-fun m!5872770 () Bool)

(assert (=> b!4871985 m!5872770))

(declare-fun m!5872772 () Bool)

(assert (=> b!4871985 m!5872772))

(declare-fun m!5872774 () Bool)

(assert (=> b!4871985 m!5872774))

(assert (=> b!4871985 m!5872772))

(assert (=> b!4871985 m!5872760))

(declare-fun m!5872776 () Bool)

(assert (=> b!4871985 m!5872776))

(assert (=> b!4871985 m!5871408))

(assert (=> b!4871985 m!5871398))

(assert (=> b!4871983 m!5871398))

(assert (=> b!4871983 m!5872758))

(assert (=> b!4871983 m!5871398))

(assert (=> b!4871983 m!5872758))

(assert (=> b!4871983 m!5872770))

(declare-fun m!5872778 () Bool)

(assert (=> b!4871983 m!5872778))

(assert (=> d!1564617 m!5870992))

(assert (=> d!1564617 m!5870992))

(assert (=> d!1564617 m!5871934))

(assert (=> d!1564617 m!5871934))

(declare-fun m!5872780 () Bool)

(assert (=> d!1564617 m!5872780))

(assert (=> d!1564617 m!5872748))

(declare-fun m!5872782 () Bool)

(assert (=> d!1564617 m!5872782))

(declare-fun m!5872784 () Bool)

(assert (=> d!1564617 m!5872784))

(assert (=> d!1564617 m!5871418))

(assert (=> bm!338219 d!1564617))

(declare-fun d!1564619 () Bool)

(declare-fun res!2079788 () Bool)

(declare-fun e!3045577 () Bool)

(assert (=> d!1564619 (=> res!2079788 e!3045577)))

(assert (=> d!1564619 (= res!2079788 (is-Nil!55986 rules!1164))))

(assert (=> d!1564619 (= (forall!13051 rules!1164 lambda!243508) e!3045577)))

(declare-fun b!4871991 () Bool)

(declare-fun e!3045578 () Bool)

(assert (=> b!4871991 (= e!3045577 e!3045578)))

(declare-fun res!2079789 () Bool)

(assert (=> b!4871991 (=> (not res!2079789) (not e!3045578))))

(assert (=> b!4871991 (= res!2079789 (dynLambda!22485 lambda!243508 (h!62434 rules!1164)))))

(declare-fun b!4871992 () Bool)

(assert (=> b!4871992 (= e!3045578 (forall!13051 (t!364180 rules!1164) lambda!243508))))

(assert (= (and d!1564619 (not res!2079788)) b!4871991))

(assert (= (and b!4871991 res!2079789) b!4871992))

(declare-fun b_lambda!193697 () Bool)

(assert (=> (not b_lambda!193697) (not b!4871991)))

(declare-fun m!5872786 () Bool)

(assert (=> b!4871991 m!5872786))

(declare-fun m!5872788 () Bool)

(assert (=> b!4871992 m!5872788))

(assert (=> d!1564207 d!1564619))

(declare-fun b!4871993 () Bool)

(declare-fun e!3045579 () Bool)

(declare-fun tp!1370687 () Bool)

(assert (=> b!4871993 (= e!3045579 (and tp_is_empty!35665 tp!1370687))))

(assert (=> b!4871304 (= tp!1370601 e!3045579)))

(assert (= (and b!4871304 (is-Cons!55984 (innerList!14681 (xs!17901 (left!40663 (c!828451 input!585)))))) b!4871993))

(declare-fun b!4871995 () Bool)

(declare-fun e!3045580 () Bool)

(declare-fun tp!1370690 () Bool)

(declare-fun tp!1370688 () Bool)

(assert (=> b!4871995 (= e!3045580 (and tp!1370690 tp!1370688))))

(declare-fun b!4871994 () Bool)

(assert (=> b!4871994 (= e!3045580 tp_is_empty!35665)))

(assert (=> b!4871337 (= tp!1370636 e!3045580)))

(declare-fun b!4871996 () Bool)

(declare-fun tp!1370691 () Bool)

(assert (=> b!4871996 (= e!3045580 tp!1370691)))

(declare-fun b!4871997 () Bool)

(declare-fun tp!1370689 () Bool)

(declare-fun tp!1370692 () Bool)

(assert (=> b!4871997 (= e!3045580 (and tp!1370689 tp!1370692))))

(assert (= (and b!4871337 (is-ElementMatch!13118 (regex!8043 (h!62434 (t!364180 (t!364180 rules!1164)))))) b!4871994))

(assert (= (and b!4871337 (is-Concat!21472 (regex!8043 (h!62434 (t!364180 (t!364180 rules!1164)))))) b!4871995))

(assert (= (and b!4871337 (is-Star!13118 (regex!8043 (h!62434 (t!364180 (t!364180 rules!1164)))))) b!4871996))

(assert (= (and b!4871337 (is-Union!13118 (regex!8043 (h!62434 (t!364180 (t!364180 rules!1164)))))) b!4871997))

(declare-fun tp!1370694 () Bool)

(declare-fun e!3045581 () Bool)

(declare-fun tp!1370693 () Bool)

(declare-fun b!4871998 () Bool)

(assert (=> b!4871998 (= e!3045581 (and (inv!71910 (left!40663 (left!40663 (left!40663 (c!828451 input!585))))) tp!1370693 (inv!71910 (right!40993 (left!40663 (left!40663 (c!828451 input!585))))) tp!1370694))))

(declare-fun b!4872000 () Bool)

(declare-fun e!3045582 () Bool)

(declare-fun tp!1370695 () Bool)

(assert (=> b!4872000 (= e!3045582 tp!1370695)))

(declare-fun b!4871999 () Bool)

(assert (=> b!4871999 (= e!3045581 (and (inv!71917 (xs!17901 (left!40663 (left!40663 (c!828451 input!585))))) e!3045582))))

(assert (=> b!4871302 (= tp!1370599 (and (inv!71910 (left!40663 (left!40663 (c!828451 input!585)))) e!3045581))))

(assert (= (and b!4871302 (is-Node!14593 (left!40663 (left!40663 (c!828451 input!585))))) b!4871998))

(assert (= b!4871999 b!4872000))

(assert (= (and b!4871302 (is-Leaf!24326 (left!40663 (left!40663 (c!828451 input!585))))) b!4871999))

(declare-fun m!5872790 () Bool)

(assert (=> b!4871998 m!5872790))

(declare-fun m!5872792 () Bool)

(assert (=> b!4871998 m!5872792))

(declare-fun m!5872794 () Bool)

(assert (=> b!4871999 m!5872794))

(assert (=> b!4871302 m!5871628))

(declare-fun b!4872001 () Bool)

(declare-fun e!3045583 () Bool)

(declare-fun tp!1370697 () Bool)

(declare-fun tp!1370696 () Bool)

(assert (=> b!4872001 (= e!3045583 (and (inv!71910 (left!40663 (right!40993 (left!40663 (c!828451 input!585))))) tp!1370696 (inv!71910 (right!40993 (right!40993 (left!40663 (c!828451 input!585))))) tp!1370697))))

(declare-fun b!4872003 () Bool)

(declare-fun e!3045584 () Bool)

(declare-fun tp!1370698 () Bool)

(assert (=> b!4872003 (= e!3045584 tp!1370698)))

(declare-fun b!4872002 () Bool)

(assert (=> b!4872002 (= e!3045583 (and (inv!71917 (xs!17901 (right!40993 (left!40663 (c!828451 input!585))))) e!3045584))))

(assert (=> b!4871302 (= tp!1370600 (and (inv!71910 (right!40993 (left!40663 (c!828451 input!585)))) e!3045583))))

(assert (= (and b!4871302 (is-Node!14593 (right!40993 (left!40663 (c!828451 input!585))))) b!4872001))

(assert (= b!4872002 b!4872003))

(assert (= (and b!4871302 (is-Leaf!24326 (right!40993 (left!40663 (c!828451 input!585))))) b!4872002))

(declare-fun m!5872796 () Bool)

(assert (=> b!4872001 m!5872796))

(declare-fun m!5872798 () Bool)

(assert (=> b!4872001 m!5872798))

(declare-fun m!5872800 () Bool)

(assert (=> b!4872002 m!5872800))

(assert (=> b!4871302 m!5871630))

(declare-fun b!4872005 () Bool)

(declare-fun e!3045585 () Bool)

(declare-fun tp!1370701 () Bool)

(declare-fun tp!1370699 () Bool)

(assert (=> b!4872005 (= e!3045585 (and tp!1370701 tp!1370699))))

(declare-fun b!4872004 () Bool)

(assert (=> b!4872004 (= e!3045585 tp_is_empty!35665)))

(assert (=> b!4871329 (= tp!1370628 e!3045585)))

(declare-fun b!4872006 () Bool)

(declare-fun tp!1370702 () Bool)

(assert (=> b!4872006 (= e!3045585 tp!1370702)))

(declare-fun b!4872007 () Bool)

(declare-fun tp!1370700 () Bool)

(declare-fun tp!1370703 () Bool)

(assert (=> b!4872007 (= e!3045585 (and tp!1370700 tp!1370703))))

(assert (= (and b!4871329 (is-ElementMatch!13118 (regOne!26748 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872004))

(assert (= (and b!4871329 (is-Concat!21472 (regOne!26748 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872005))

(assert (= (and b!4871329 (is-Star!13118 (regOne!26748 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872006))

(assert (= (and b!4871329 (is-Union!13118 (regOne!26748 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872007))

(declare-fun b!4872009 () Bool)

(declare-fun e!3045586 () Bool)

(declare-fun tp!1370706 () Bool)

(declare-fun tp!1370704 () Bool)

(assert (=> b!4872009 (= e!3045586 (and tp!1370706 tp!1370704))))

(declare-fun b!4872008 () Bool)

(assert (=> b!4872008 (= e!3045586 tp_is_empty!35665)))

(assert (=> b!4871329 (= tp!1370626 e!3045586)))

(declare-fun b!4872010 () Bool)

(declare-fun tp!1370707 () Bool)

(assert (=> b!4872010 (= e!3045586 tp!1370707)))

(declare-fun b!4872011 () Bool)

(declare-fun tp!1370705 () Bool)

(declare-fun tp!1370708 () Bool)

(assert (=> b!4872011 (= e!3045586 (and tp!1370705 tp!1370708))))

(assert (= (and b!4871329 (is-ElementMatch!13118 (regTwo!26748 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872008))

(assert (= (and b!4871329 (is-Concat!21472 (regTwo!26748 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872009))

(assert (= (and b!4871329 (is-Star!13118 (regTwo!26748 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872010))

(assert (= (and b!4871329 (is-Union!13118 (regTwo!26748 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872011))

(declare-fun b!4872014 () Bool)

(declare-fun b_free!130751 () Bool)

(declare-fun b_next!131541 () Bool)

(assert (=> b!4872014 (= b_free!130751 (not b_next!131541))))

(declare-fun t!364237 () Bool)

(declare-fun tb!257999 () Bool)

(assert (=> (and b!4872014 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 (t!364180 (t!364180 rules!1164)))))) (toValue!10914 (transformation!8043 (h!62434 rules!1164)))) t!364237) tb!257999))

(declare-fun result!321180 () Bool)

(assert (= result!321180 result!321154))

(assert (=> d!1564347 t!364237))

(assert (=> d!1564351 t!364237))

(declare-fun t!364239 () Bool)

(declare-fun tb!258001 () Bool)

(assert (=> (and b!4872014 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 (t!364180 (t!364180 rules!1164)))))) (toValue!10914 (transformation!8043 (h!62434 rules!1164)))) t!364239) tb!258001))

(declare-fun result!321182 () Bool)

(assert (= result!321182 result!321162))

(assert (=> d!1564351 t!364239))

(declare-fun t!364241 () Bool)

(declare-fun tb!258003 () Bool)

(assert (=> (and b!4872014 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 (t!364180 (t!364180 rules!1164)))))) (toValue!10914 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860)))))) t!364241) tb!258003))

(declare-fun result!321184 () Bool)

(assert (= result!321184 result!321174))

(assert (=> d!1564459 t!364241))

(declare-fun tp!1370712 () Bool)

(declare-fun b_and!343065 () Bool)

(assert (=> b!4872014 (= tp!1370712 (and (=> t!364237 result!321180) (=> t!364239 result!321182) (=> t!364241 result!321184) b_and!343065))))

(declare-fun b_free!130753 () Bool)

(declare-fun b_next!131543 () Bool)

(assert (=> b!4872014 (= b_free!130753 (not b_next!131543))))

(declare-fun t!364243 () Bool)

(declare-fun tb!258005 () Bool)

(assert (=> (and b!4872014 (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 (t!364180 (t!364180 rules!1164)))))) (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756)))))) t!364243) tb!258005))

(declare-fun result!321186 () Bool)

(assert (= result!321186 result!321122))

(assert (=> d!1564059 t!364243))

(declare-fun t!364245 () Bool)

(declare-fun tb!258007 () Bool)

(assert (=> (and b!4872014 (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 (t!364180 (t!364180 rules!1164)))))) (toChars!10773 (transformation!8043 (rule!11181 (_1!33227 (get!19236 lt!1995860)))))) t!364245) tb!258007))

(declare-fun result!321188 () Bool)

(assert (= result!321188 result!321168))

(assert (=> d!1564431 t!364245))

(declare-fun b_and!343067 () Bool)

(declare-fun tp!1370711 () Bool)

(assert (=> b!4872014 (= tp!1370711 (and (=> t!364243 result!321186) (=> t!364245 result!321188) b_and!343067))))

(declare-fun e!3045588 () Bool)

(assert (=> b!4872014 (= e!3045588 (and tp!1370712 tp!1370711))))

(declare-fun e!3045587 () Bool)

(declare-fun tp!1370709 () Bool)

(declare-fun b!4872013 () Bool)

(assert (=> b!4872013 (= e!3045587 (and tp!1370709 (inv!71906 (tag!8907 (h!62434 (t!364180 (t!364180 (t!364180 rules!1164)))))) (inv!71911 (transformation!8043 (h!62434 (t!364180 (t!364180 (t!364180 rules!1164)))))) e!3045588))))

(declare-fun b!4872012 () Bool)

(declare-fun e!3045590 () Bool)

(declare-fun tp!1370710 () Bool)

(assert (=> b!4872012 (= e!3045590 (and e!3045587 tp!1370710))))

(assert (=> b!4871336 (= tp!1370637 e!3045590)))

(assert (= b!4872013 b!4872014))

(assert (= b!4872012 b!4872013))

(assert (= (and b!4871336 (is-Cons!55986 (t!364180 (t!364180 (t!364180 rules!1164))))) b!4872012))

(declare-fun m!5872802 () Bool)

(assert (=> b!4872013 m!5872802))

(declare-fun m!5872804 () Bool)

(assert (=> b!4872013 m!5872804))

(declare-fun b!4872015 () Bool)

(declare-fun e!3045591 () Bool)

(declare-fun tp!1370713 () Bool)

(assert (=> b!4872015 (= e!3045591 (and tp_is_empty!35665 tp!1370713))))

(assert (=> b!4871315 (= tp!1370610 e!3045591)))

(assert (= (and b!4871315 (is-Cons!55984 (t!364178 (innerList!14681 (xs!17901 (c!828451 input!585)))))) b!4872015))

(declare-fun b!4872016 () Bool)

(declare-fun e!3045592 () Bool)

(declare-fun tp!1370714 () Bool)

(assert (=> b!4872016 (= e!3045592 (and tp_is_empty!35665 tp!1370714))))

(assert (=> b!4871310 (= tp!1370607 e!3045592)))

(assert (= (and b!4871310 (is-Cons!55984 (innerList!14681 (xs!17901 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))))) b!4872016))

(declare-fun b!4872018 () Bool)

(declare-fun e!3045593 () Bool)

(declare-fun tp!1370717 () Bool)

(declare-fun tp!1370715 () Bool)

(assert (=> b!4872018 (= e!3045593 (and tp!1370717 tp!1370715))))

(declare-fun b!4872017 () Bool)

(assert (=> b!4872017 (= e!3045593 tp_is_empty!35665)))

(assert (=> b!4871331 (= tp!1370627 e!3045593)))

(declare-fun b!4872019 () Bool)

(declare-fun tp!1370718 () Bool)

(assert (=> b!4872019 (= e!3045593 tp!1370718)))

(declare-fun b!4872020 () Bool)

(declare-fun tp!1370716 () Bool)

(declare-fun tp!1370719 () Bool)

(assert (=> b!4872020 (= e!3045593 (and tp!1370716 tp!1370719))))

(assert (= (and b!4871331 (is-ElementMatch!13118 (regOne!26749 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872017))

(assert (= (and b!4871331 (is-Concat!21472 (regOne!26749 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872018))

(assert (= (and b!4871331 (is-Star!13118 (regOne!26749 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872019))

(assert (= (and b!4871331 (is-Union!13118 (regOne!26749 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872020))

(declare-fun b!4872022 () Bool)

(declare-fun e!3045594 () Bool)

(declare-fun tp!1370722 () Bool)

(declare-fun tp!1370720 () Bool)

(assert (=> b!4872022 (= e!3045594 (and tp!1370722 tp!1370720))))

(declare-fun b!4872021 () Bool)

(assert (=> b!4872021 (= e!3045594 tp_is_empty!35665)))

(assert (=> b!4871331 (= tp!1370630 e!3045594)))

(declare-fun b!4872023 () Bool)

(declare-fun tp!1370723 () Bool)

(assert (=> b!4872023 (= e!3045594 tp!1370723)))

(declare-fun b!4872024 () Bool)

(declare-fun tp!1370721 () Bool)

(declare-fun tp!1370724 () Bool)

(assert (=> b!4872024 (= e!3045594 (and tp!1370721 tp!1370724))))

(assert (= (and b!4871331 (is-ElementMatch!13118 (regTwo!26749 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872021))

(assert (= (and b!4871331 (is-Concat!21472 (regTwo!26749 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872022))

(assert (= (and b!4871331 (is-Star!13118 (regTwo!26749 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872023))

(assert (= (and b!4871331 (is-Union!13118 (regTwo!26749 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872024))

(declare-fun b!4872026 () Bool)

(declare-fun e!3045595 () Bool)

(declare-fun tp!1370727 () Bool)

(declare-fun tp!1370725 () Bool)

(assert (=> b!4872026 (= e!3045595 (and tp!1370727 tp!1370725))))

(declare-fun b!4872025 () Bool)

(assert (=> b!4872025 (= e!3045595 tp_is_empty!35665)))

(assert (=> b!4871330 (= tp!1370629 e!3045595)))

(declare-fun b!4872027 () Bool)

(declare-fun tp!1370728 () Bool)

(assert (=> b!4872027 (= e!3045595 tp!1370728)))

(declare-fun b!4872028 () Bool)

(declare-fun tp!1370726 () Bool)

(declare-fun tp!1370729 () Bool)

(assert (=> b!4872028 (= e!3045595 (and tp!1370726 tp!1370729))))

(assert (= (and b!4871330 (is-ElementMatch!13118 (reg!13447 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872025))

(assert (= (and b!4871330 (is-Concat!21472 (reg!13447 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872026))

(assert (= (and b!4871330 (is-Star!13118 (reg!13447 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872027))

(assert (= (and b!4871330 (is-Union!13118 (reg!13447 (regOne!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872028))

(declare-fun b!4872030 () Bool)

(declare-fun e!3045596 () Bool)

(declare-fun tp!1370732 () Bool)

(declare-fun tp!1370730 () Bool)

(assert (=> b!4872030 (= e!3045596 (and tp!1370732 tp!1370730))))

(declare-fun b!4872029 () Bool)

(assert (=> b!4872029 (= e!3045596 tp_is_empty!35665)))

(assert (=> b!4871321 (= tp!1370618 e!3045596)))

(declare-fun b!4872031 () Bool)

(declare-fun tp!1370733 () Bool)

(assert (=> b!4872031 (= e!3045596 tp!1370733)))

(declare-fun b!4872032 () Bool)

(declare-fun tp!1370731 () Bool)

(declare-fun tp!1370734 () Bool)

(assert (=> b!4872032 (= e!3045596 (and tp!1370731 tp!1370734))))

(assert (= (and b!4871321 (is-ElementMatch!13118 (regOne!26748 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872029))

(assert (= (and b!4871321 (is-Concat!21472 (regOne!26748 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872030))

(assert (= (and b!4871321 (is-Star!13118 (regOne!26748 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872031))

(assert (= (and b!4871321 (is-Union!13118 (regOne!26748 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872032))

(declare-fun b!4872034 () Bool)

(declare-fun e!3045597 () Bool)

(declare-fun tp!1370737 () Bool)

(declare-fun tp!1370735 () Bool)

(assert (=> b!4872034 (= e!3045597 (and tp!1370737 tp!1370735))))

(declare-fun b!4872033 () Bool)

(assert (=> b!4872033 (= e!3045597 tp_is_empty!35665)))

(assert (=> b!4871321 (= tp!1370616 e!3045597)))

(declare-fun b!4872035 () Bool)

(declare-fun tp!1370738 () Bool)

(assert (=> b!4872035 (= e!3045597 tp!1370738)))

(declare-fun b!4872036 () Bool)

(declare-fun tp!1370736 () Bool)

(declare-fun tp!1370739 () Bool)

(assert (=> b!4872036 (= e!3045597 (and tp!1370736 tp!1370739))))

(assert (= (and b!4871321 (is-ElementMatch!13118 (regTwo!26748 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872033))

(assert (= (and b!4871321 (is-Concat!21472 (regTwo!26748 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872034))

(assert (= (and b!4871321 (is-Star!13118 (regTwo!26748 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872035))

(assert (= (and b!4871321 (is-Union!13118 (regTwo!26748 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872036))

(declare-fun b!4872038 () Bool)

(declare-fun e!3045598 () Bool)

(declare-fun tp!1370742 () Bool)

(declare-fun tp!1370740 () Bool)

(assert (=> b!4872038 (= e!3045598 (and tp!1370742 tp!1370740))))

(declare-fun b!4872037 () Bool)

(assert (=> b!4872037 (= e!3045598 tp_is_empty!35665)))

(assert (=> b!4871322 (= tp!1370619 e!3045598)))

(declare-fun b!4872039 () Bool)

(declare-fun tp!1370743 () Bool)

(assert (=> b!4872039 (= e!3045598 tp!1370743)))

(declare-fun b!4872040 () Bool)

(declare-fun tp!1370741 () Bool)

(declare-fun tp!1370744 () Bool)

(assert (=> b!4872040 (= e!3045598 (and tp!1370741 tp!1370744))))

(assert (= (and b!4871322 (is-ElementMatch!13118 (reg!13447 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872037))

(assert (= (and b!4871322 (is-Concat!21472 (reg!13447 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872038))

(assert (= (and b!4871322 (is-Star!13118 (reg!13447 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872039))

(assert (= (and b!4871322 (is-Union!13118 (reg!13447 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872040))

(declare-fun tp!1370745 () Bool)

(declare-fun b!4872041 () Bool)

(declare-fun e!3045599 () Bool)

(declare-fun tp!1370746 () Bool)

(assert (=> b!4872041 (= e!3045599 (and (inv!71910 (left!40663 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))) tp!1370745 (inv!71910 (right!40993 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))) tp!1370746))))

(declare-fun b!4872043 () Bool)

(declare-fun e!3045600 () Bool)

(declare-fun tp!1370747 () Bool)

(assert (=> b!4872043 (= e!3045600 tp!1370747)))

(declare-fun b!4872042 () Bool)

(assert (=> b!4872042 (= e!3045599 (and (inv!71917 (xs!17901 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))) e!3045600))))

(assert (=> b!4871308 (= tp!1370605 (and (inv!71910 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))) e!3045599))))

(assert (= (and b!4871308 (is-Node!14593 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))) b!4872041))

(assert (= b!4872042 b!4872043))

(assert (= (and b!4871308 (is-Leaf!24326 (left!40663 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))) b!4872042))

(declare-fun m!5872806 () Bool)

(assert (=> b!4872041 m!5872806))

(declare-fun m!5872808 () Bool)

(assert (=> b!4872041 m!5872808))

(declare-fun m!5872810 () Bool)

(assert (=> b!4872042 m!5872810))

(assert (=> b!4871308 m!5871640))

(declare-fun tp!1370749 () Bool)

(declare-fun b!4872044 () Bool)

(declare-fun tp!1370748 () Bool)

(declare-fun e!3045601 () Bool)

(assert (=> b!4872044 (= e!3045601 (and (inv!71910 (left!40663 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))) tp!1370748 (inv!71910 (right!40993 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))) tp!1370749))))

(declare-fun b!4872046 () Bool)

(declare-fun e!3045602 () Bool)

(declare-fun tp!1370750 () Bool)

(assert (=> b!4872046 (= e!3045602 tp!1370750)))

(declare-fun b!4872045 () Bool)

(assert (=> b!4872045 (= e!3045601 (and (inv!71917 (xs!17901 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))) e!3045602))))

(assert (=> b!4871308 (= tp!1370606 (and (inv!71910 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756))))))) e!3045601))))

(assert (= (and b!4871308 (is-Node!14593 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))) b!4872044))

(assert (= b!4872045 b!4872046))

(assert (= (and b!4871308 (is-Leaf!24326 (right!40993 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (rule!11181 (_1!33222 (v!49713 lt!1995756))))) (value!258369 (_1!33222 (v!49713 lt!1995756)))))))) b!4872045))

(declare-fun m!5872812 () Bool)

(assert (=> b!4872044 m!5872812))

(declare-fun m!5872814 () Bool)

(assert (=> b!4872044 m!5872814))

(declare-fun m!5872816 () Bool)

(assert (=> b!4872045 m!5872816))

(assert (=> b!4871308 m!5871642))

(declare-fun b!4872048 () Bool)

(declare-fun e!3045603 () Bool)

(declare-fun tp!1370753 () Bool)

(declare-fun tp!1370751 () Bool)

(assert (=> b!4872048 (= e!3045603 (and tp!1370753 tp!1370751))))

(declare-fun b!4872047 () Bool)

(assert (=> b!4872047 (= e!3045603 tp_is_empty!35665)))

(assert (=> b!4871323 (= tp!1370617 e!3045603)))

(declare-fun b!4872049 () Bool)

(declare-fun tp!1370754 () Bool)

(assert (=> b!4872049 (= e!3045603 tp!1370754)))

(declare-fun b!4872050 () Bool)

(declare-fun tp!1370752 () Bool)

(declare-fun tp!1370755 () Bool)

(assert (=> b!4872050 (= e!3045603 (and tp!1370752 tp!1370755))))

(assert (= (and b!4871323 (is-ElementMatch!13118 (regOne!26749 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872047))

(assert (= (and b!4871323 (is-Concat!21472 (regOne!26749 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872048))

(assert (= (and b!4871323 (is-Star!13118 (regOne!26749 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872049))

(assert (= (and b!4871323 (is-Union!13118 (regOne!26749 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872050))

(declare-fun b!4872052 () Bool)

(declare-fun e!3045604 () Bool)

(declare-fun tp!1370758 () Bool)

(declare-fun tp!1370756 () Bool)

(assert (=> b!4872052 (= e!3045604 (and tp!1370758 tp!1370756))))

(declare-fun b!4872051 () Bool)

(assert (=> b!4872051 (= e!3045604 tp_is_empty!35665)))

(assert (=> b!4871323 (= tp!1370620 e!3045604)))

(declare-fun b!4872053 () Bool)

(declare-fun tp!1370759 () Bool)

(assert (=> b!4872053 (= e!3045604 tp!1370759)))

(declare-fun b!4872054 () Bool)

(declare-fun tp!1370757 () Bool)

(declare-fun tp!1370760 () Bool)

(assert (=> b!4872054 (= e!3045604 (and tp!1370757 tp!1370760))))

(assert (= (and b!4871323 (is-ElementMatch!13118 (regTwo!26749 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872051))

(assert (= (and b!4871323 (is-Concat!21472 (regTwo!26749 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872052))

(assert (= (and b!4871323 (is-Star!13118 (regTwo!26749 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872053))

(assert (= (and b!4871323 (is-Union!13118 (regTwo!26749 (regOne!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872054))

(declare-fun b!4872056 () Bool)

(declare-fun e!3045605 () Bool)

(declare-fun tp!1370763 () Bool)

(declare-fun tp!1370761 () Bool)

(assert (=> b!4872056 (= e!3045605 (and tp!1370763 tp!1370761))))

(declare-fun b!4872055 () Bool)

(assert (=> b!4872055 (= e!3045605 tp_is_empty!35665)))

(assert (=> b!4871299 (= tp!1370596 e!3045605)))

(declare-fun b!4872057 () Bool)

(declare-fun tp!1370764 () Bool)

(assert (=> b!4872057 (= e!3045605 tp!1370764)))

(declare-fun b!4872058 () Bool)

(declare-fun tp!1370762 () Bool)

(declare-fun tp!1370765 () Bool)

(assert (=> b!4872058 (= e!3045605 (and tp!1370762 tp!1370765))))

(assert (= (and b!4871299 (is-ElementMatch!13118 (regOne!26748 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872055))

(assert (= (and b!4871299 (is-Concat!21472 (regOne!26748 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872056))

(assert (= (and b!4871299 (is-Star!13118 (regOne!26748 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872057))

(assert (= (and b!4871299 (is-Union!13118 (regOne!26748 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872058))

(declare-fun b!4872060 () Bool)

(declare-fun e!3045606 () Bool)

(declare-fun tp!1370768 () Bool)

(declare-fun tp!1370766 () Bool)

(assert (=> b!4872060 (= e!3045606 (and tp!1370768 tp!1370766))))

(declare-fun b!4872059 () Bool)

(assert (=> b!4872059 (= e!3045606 tp_is_empty!35665)))

(assert (=> b!4871299 (= tp!1370594 e!3045606)))

(declare-fun b!4872061 () Bool)

(declare-fun tp!1370769 () Bool)

(assert (=> b!4872061 (= e!3045606 tp!1370769)))

(declare-fun b!4872062 () Bool)

(declare-fun tp!1370767 () Bool)

(declare-fun tp!1370770 () Bool)

(assert (=> b!4872062 (= e!3045606 (and tp!1370767 tp!1370770))))

(assert (= (and b!4871299 (is-ElementMatch!13118 (regTwo!26748 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872059))

(assert (= (and b!4871299 (is-Concat!21472 (regTwo!26748 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872060))

(assert (= (and b!4871299 (is-Star!13118 (regTwo!26748 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872061))

(assert (= (and b!4871299 (is-Union!13118 (regTwo!26748 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872062))

(declare-fun tp!1370772 () Bool)

(declare-fun b!4872063 () Bool)

(declare-fun tp!1370771 () Bool)

(declare-fun e!3045607 () Bool)

(assert (=> b!4872063 (= e!3045607 (and (inv!71910 (left!40663 (left!40663 (right!40993 (c!828451 input!585))))) tp!1370771 (inv!71910 (right!40993 (left!40663 (right!40993 (c!828451 input!585))))) tp!1370772))))

(declare-fun b!4872065 () Bool)

(declare-fun e!3045608 () Bool)

(declare-fun tp!1370773 () Bool)

(assert (=> b!4872065 (= e!3045608 tp!1370773)))

(declare-fun b!4872064 () Bool)

(assert (=> b!4872064 (= e!3045607 (and (inv!71917 (xs!17901 (left!40663 (right!40993 (c!828451 input!585))))) e!3045608))))

(assert (=> b!4871305 (= tp!1370602 (and (inv!71910 (left!40663 (right!40993 (c!828451 input!585)))) e!3045607))))

(assert (= (and b!4871305 (is-Node!14593 (left!40663 (right!40993 (c!828451 input!585))))) b!4872063))

(assert (= b!4872064 b!4872065))

(assert (= (and b!4871305 (is-Leaf!24326 (left!40663 (right!40993 (c!828451 input!585))))) b!4872064))

(declare-fun m!5872818 () Bool)

(assert (=> b!4872063 m!5872818))

(declare-fun m!5872820 () Bool)

(assert (=> b!4872063 m!5872820))

(declare-fun m!5872822 () Bool)

(assert (=> b!4872064 m!5872822))

(assert (=> b!4871305 m!5871634))

(declare-fun b!4872066 () Bool)

(declare-fun tp!1370774 () Bool)

(declare-fun e!3045609 () Bool)

(declare-fun tp!1370775 () Bool)

(assert (=> b!4872066 (= e!3045609 (and (inv!71910 (left!40663 (right!40993 (right!40993 (c!828451 input!585))))) tp!1370774 (inv!71910 (right!40993 (right!40993 (right!40993 (c!828451 input!585))))) tp!1370775))))

(declare-fun b!4872068 () Bool)

(declare-fun e!3045610 () Bool)

(declare-fun tp!1370776 () Bool)

(assert (=> b!4872068 (= e!3045610 tp!1370776)))

(declare-fun b!4872067 () Bool)

(assert (=> b!4872067 (= e!3045609 (and (inv!71917 (xs!17901 (right!40993 (right!40993 (c!828451 input!585))))) e!3045610))))

(assert (=> b!4871305 (= tp!1370603 (and (inv!71910 (right!40993 (right!40993 (c!828451 input!585)))) e!3045609))))

(assert (= (and b!4871305 (is-Node!14593 (right!40993 (right!40993 (c!828451 input!585))))) b!4872066))

(assert (= b!4872067 b!4872068))

(assert (= (and b!4871305 (is-Leaf!24326 (right!40993 (right!40993 (c!828451 input!585))))) b!4872067))

(declare-fun m!5872824 () Bool)

(assert (=> b!4872066 m!5872824))

(declare-fun m!5872826 () Bool)

(assert (=> b!4872066 m!5872826))

(declare-fun m!5872828 () Bool)

(assert (=> b!4872067 m!5872828))

(assert (=> b!4871305 m!5871636))

(declare-fun b!4872070 () Bool)

(declare-fun e!3045611 () Bool)

(declare-fun tp!1370779 () Bool)

(declare-fun tp!1370777 () Bool)

(assert (=> b!4872070 (= e!3045611 (and tp!1370779 tp!1370777))))

(declare-fun b!4872069 () Bool)

(assert (=> b!4872069 (= e!3045611 tp_is_empty!35665)))

(assert (=> b!4871300 (= tp!1370597 e!3045611)))

(declare-fun b!4872071 () Bool)

(declare-fun tp!1370780 () Bool)

(assert (=> b!4872071 (= e!3045611 tp!1370780)))

(declare-fun b!4872072 () Bool)

(declare-fun tp!1370778 () Bool)

(declare-fun tp!1370781 () Bool)

(assert (=> b!4872072 (= e!3045611 (and tp!1370778 tp!1370781))))

(assert (= (and b!4871300 (is-ElementMatch!13118 (reg!13447 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872069))

(assert (= (and b!4871300 (is-Concat!21472 (reg!13447 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872070))

(assert (= (and b!4871300 (is-Star!13118 (reg!13447 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872071))

(assert (= (and b!4871300 (is-Union!13118 (reg!13447 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872072))

(declare-fun b!4872074 () Bool)

(declare-fun e!3045612 () Bool)

(declare-fun tp!1370784 () Bool)

(declare-fun tp!1370782 () Bool)

(assert (=> b!4872074 (= e!3045612 (and tp!1370784 tp!1370782))))

(declare-fun b!4872073 () Bool)

(assert (=> b!4872073 (= e!3045612 tp_is_empty!35665)))

(assert (=> b!4871325 (= tp!1370623 e!3045612)))

(declare-fun b!4872075 () Bool)

(declare-fun tp!1370785 () Bool)

(assert (=> b!4872075 (= e!3045612 tp!1370785)))

(declare-fun b!4872076 () Bool)

(declare-fun tp!1370783 () Bool)

(declare-fun tp!1370786 () Bool)

(assert (=> b!4872076 (= e!3045612 (and tp!1370783 tp!1370786))))

(assert (= (and b!4871325 (is-ElementMatch!13118 (regOne!26748 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872073))

(assert (= (and b!4871325 (is-Concat!21472 (regOne!26748 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872074))

(assert (= (and b!4871325 (is-Star!13118 (regOne!26748 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872075))

(assert (= (and b!4871325 (is-Union!13118 (regOne!26748 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872076))

(declare-fun b!4872078 () Bool)

(declare-fun e!3045613 () Bool)

(declare-fun tp!1370789 () Bool)

(declare-fun tp!1370787 () Bool)

(assert (=> b!4872078 (= e!3045613 (and tp!1370789 tp!1370787))))

(declare-fun b!4872077 () Bool)

(assert (=> b!4872077 (= e!3045613 tp_is_empty!35665)))

(assert (=> b!4871325 (= tp!1370621 e!3045613)))

(declare-fun b!4872079 () Bool)

(declare-fun tp!1370790 () Bool)

(assert (=> b!4872079 (= e!3045613 tp!1370790)))

(declare-fun b!4872080 () Bool)

(declare-fun tp!1370788 () Bool)

(declare-fun tp!1370791 () Bool)

(assert (=> b!4872080 (= e!3045613 (and tp!1370788 tp!1370791))))

(assert (= (and b!4871325 (is-ElementMatch!13118 (regTwo!26748 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872077))

(assert (= (and b!4871325 (is-Concat!21472 (regTwo!26748 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872078))

(assert (= (and b!4871325 (is-Star!13118 (regTwo!26748 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872079))

(assert (= (and b!4871325 (is-Union!13118 (regTwo!26748 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872080))

(declare-fun b!4872082 () Bool)

(declare-fun e!3045614 () Bool)

(declare-fun tp!1370794 () Bool)

(declare-fun tp!1370792 () Bool)

(assert (=> b!4872082 (= e!3045614 (and tp!1370794 tp!1370792))))

(declare-fun b!4872081 () Bool)

(assert (=> b!4872081 (= e!3045614 tp_is_empty!35665)))

(assert (=> b!4871334 (= tp!1370634 e!3045614)))

(declare-fun b!4872083 () Bool)

(declare-fun tp!1370795 () Bool)

(assert (=> b!4872083 (= e!3045614 tp!1370795)))

(declare-fun b!4872084 () Bool)

(declare-fun tp!1370793 () Bool)

(declare-fun tp!1370796 () Bool)

(assert (=> b!4872084 (= e!3045614 (and tp!1370793 tp!1370796))))

(assert (= (and b!4871334 (is-ElementMatch!13118 (reg!13447 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872081))

(assert (= (and b!4871334 (is-Concat!21472 (reg!13447 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872082))

(assert (= (and b!4871334 (is-Star!13118 (reg!13447 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872083))

(assert (= (and b!4871334 (is-Union!13118 (reg!13447 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872084))

(declare-fun b!4872086 () Bool)

(declare-fun e!3045615 () Bool)

(declare-fun tp!1370799 () Bool)

(declare-fun tp!1370797 () Bool)

(assert (=> b!4872086 (= e!3045615 (and tp!1370799 tp!1370797))))

(declare-fun b!4872085 () Bool)

(assert (=> b!4872085 (= e!3045615 tp_is_empty!35665)))

(assert (=> b!4871333 (= tp!1370633 e!3045615)))

(declare-fun b!4872087 () Bool)

(declare-fun tp!1370800 () Bool)

(assert (=> b!4872087 (= e!3045615 tp!1370800)))

(declare-fun b!4872088 () Bool)

(declare-fun tp!1370798 () Bool)

(declare-fun tp!1370801 () Bool)

(assert (=> b!4872088 (= e!3045615 (and tp!1370798 tp!1370801))))

(assert (= (and b!4871333 (is-ElementMatch!13118 (regOne!26748 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872085))

(assert (= (and b!4871333 (is-Concat!21472 (regOne!26748 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872086))

(assert (= (and b!4871333 (is-Star!13118 (regOne!26748 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872087))

(assert (= (and b!4871333 (is-Union!13118 (regOne!26748 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872088))

(declare-fun b!4872090 () Bool)

(declare-fun e!3045616 () Bool)

(declare-fun tp!1370804 () Bool)

(declare-fun tp!1370802 () Bool)

(assert (=> b!4872090 (= e!3045616 (and tp!1370804 tp!1370802))))

(declare-fun b!4872089 () Bool)

(assert (=> b!4872089 (= e!3045616 tp_is_empty!35665)))

(assert (=> b!4871333 (= tp!1370631 e!3045616)))

(declare-fun b!4872091 () Bool)

(declare-fun tp!1370805 () Bool)

(assert (=> b!4872091 (= e!3045616 tp!1370805)))

(declare-fun b!4872092 () Bool)

(declare-fun tp!1370803 () Bool)

(declare-fun tp!1370806 () Bool)

(assert (=> b!4872092 (= e!3045616 (and tp!1370803 tp!1370806))))

(assert (= (and b!4871333 (is-ElementMatch!13118 (regTwo!26748 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872089))

(assert (= (and b!4871333 (is-Concat!21472 (regTwo!26748 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872090))

(assert (= (and b!4871333 (is-Star!13118 (regTwo!26748 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872091))

(assert (= (and b!4871333 (is-Union!13118 (regTwo!26748 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872092))

(declare-fun b!4872094 () Bool)

(declare-fun e!3045617 () Bool)

(declare-fun tp!1370809 () Bool)

(declare-fun tp!1370807 () Bool)

(assert (=> b!4872094 (= e!3045617 (and tp!1370809 tp!1370807))))

(declare-fun b!4872093 () Bool)

(assert (=> b!4872093 (= e!3045617 tp_is_empty!35665)))

(assert (=> b!4871319 (= tp!1370612 e!3045617)))

(declare-fun b!4872095 () Bool)

(declare-fun tp!1370810 () Bool)

(assert (=> b!4872095 (= e!3045617 tp!1370810)))

(declare-fun b!4872096 () Bool)

(declare-fun tp!1370808 () Bool)

(declare-fun tp!1370811 () Bool)

(assert (=> b!4872096 (= e!3045617 (and tp!1370808 tp!1370811))))

(assert (= (and b!4871319 (is-ElementMatch!13118 (regOne!26749 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872093))

(assert (= (and b!4871319 (is-Concat!21472 (regOne!26749 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872094))

(assert (= (and b!4871319 (is-Star!13118 (regOne!26749 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872095))

(assert (= (and b!4871319 (is-Union!13118 (regOne!26749 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872096))

(declare-fun b!4872098 () Bool)

(declare-fun e!3045618 () Bool)

(declare-fun tp!1370814 () Bool)

(declare-fun tp!1370812 () Bool)

(assert (=> b!4872098 (= e!3045618 (and tp!1370814 tp!1370812))))

(declare-fun b!4872097 () Bool)

(assert (=> b!4872097 (= e!3045618 tp_is_empty!35665)))

(assert (=> b!4871319 (= tp!1370615 e!3045618)))

(declare-fun b!4872099 () Bool)

(declare-fun tp!1370815 () Bool)

(assert (=> b!4872099 (= e!3045618 tp!1370815)))

(declare-fun b!4872100 () Bool)

(declare-fun tp!1370813 () Bool)

(declare-fun tp!1370816 () Bool)

(assert (=> b!4872100 (= e!3045618 (and tp!1370813 tp!1370816))))

(assert (= (and b!4871319 (is-ElementMatch!13118 (regTwo!26749 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872097))

(assert (= (and b!4871319 (is-Concat!21472 (regTwo!26749 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872098))

(assert (= (and b!4871319 (is-Star!13118 (regTwo!26749 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872099))

(assert (= (and b!4871319 (is-Union!13118 (regTwo!26749 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872100))

(declare-fun b!4872102 () Bool)

(declare-fun e!3045619 () Bool)

(declare-fun tp!1370819 () Bool)

(declare-fun tp!1370817 () Bool)

(assert (=> b!4872102 (= e!3045619 (and tp!1370819 tp!1370817))))

(declare-fun b!4872101 () Bool)

(assert (=> b!4872101 (= e!3045619 tp_is_empty!35665)))

(assert (=> b!4871327 (= tp!1370622 e!3045619)))

(declare-fun b!4872103 () Bool)

(declare-fun tp!1370820 () Bool)

(assert (=> b!4872103 (= e!3045619 tp!1370820)))

(declare-fun b!4872104 () Bool)

(declare-fun tp!1370818 () Bool)

(declare-fun tp!1370821 () Bool)

(assert (=> b!4872104 (= e!3045619 (and tp!1370818 tp!1370821))))

(assert (= (and b!4871327 (is-ElementMatch!13118 (regOne!26749 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872101))

(assert (= (and b!4871327 (is-Concat!21472 (regOne!26749 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872102))

(assert (= (and b!4871327 (is-Star!13118 (regOne!26749 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872103))

(assert (= (and b!4871327 (is-Union!13118 (regOne!26749 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872104))

(declare-fun b!4872106 () Bool)

(declare-fun e!3045620 () Bool)

(declare-fun tp!1370824 () Bool)

(declare-fun tp!1370822 () Bool)

(assert (=> b!4872106 (= e!3045620 (and tp!1370824 tp!1370822))))

(declare-fun b!4872105 () Bool)

(assert (=> b!4872105 (= e!3045620 tp_is_empty!35665)))

(assert (=> b!4871327 (= tp!1370625 e!3045620)))

(declare-fun b!4872107 () Bool)

(declare-fun tp!1370825 () Bool)

(assert (=> b!4872107 (= e!3045620 tp!1370825)))

(declare-fun b!4872108 () Bool)

(declare-fun tp!1370823 () Bool)

(declare-fun tp!1370826 () Bool)

(assert (=> b!4872108 (= e!3045620 (and tp!1370823 tp!1370826))))

(assert (= (and b!4871327 (is-ElementMatch!13118 (regTwo!26749 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872105))

(assert (= (and b!4871327 (is-Concat!21472 (regTwo!26749 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872106))

(assert (= (and b!4871327 (is-Star!13118 (regTwo!26749 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872107))

(assert (= (and b!4871327 (is-Union!13118 (regTwo!26749 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872108))

(declare-fun b!4872110 () Bool)

(declare-fun e!3045621 () Bool)

(declare-fun tp!1370829 () Bool)

(declare-fun tp!1370827 () Bool)

(assert (=> b!4872110 (= e!3045621 (and tp!1370829 tp!1370827))))

(declare-fun b!4872109 () Bool)

(assert (=> b!4872109 (= e!3045621 tp_is_empty!35665)))

(assert (=> b!4871326 (= tp!1370624 e!3045621)))

(declare-fun b!4872111 () Bool)

(declare-fun tp!1370830 () Bool)

(assert (=> b!4872111 (= e!3045621 tp!1370830)))

(declare-fun b!4872112 () Bool)

(declare-fun tp!1370828 () Bool)

(declare-fun tp!1370831 () Bool)

(assert (=> b!4872112 (= e!3045621 (and tp!1370828 tp!1370831))))

(assert (= (and b!4871326 (is-ElementMatch!13118 (reg!13447 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872109))

(assert (= (and b!4871326 (is-Concat!21472 (reg!13447 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872110))

(assert (= (and b!4871326 (is-Star!13118 (reg!13447 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872111))

(assert (= (and b!4871326 (is-Union!13118 (reg!13447 (regTwo!26748 (regex!8043 (h!62434 rules!1164)))))) b!4872112))

(declare-fun b!4872114 () Bool)

(declare-fun e!3045622 () Bool)

(declare-fun tp!1370834 () Bool)

(declare-fun tp!1370832 () Bool)

(assert (=> b!4872114 (= e!3045622 (and tp!1370834 tp!1370832))))

(declare-fun b!4872113 () Bool)

(assert (=> b!4872113 (= e!3045622 tp_is_empty!35665)))

(assert (=> b!4871335 (= tp!1370632 e!3045622)))

(declare-fun b!4872115 () Bool)

(declare-fun tp!1370835 () Bool)

(assert (=> b!4872115 (= e!3045622 tp!1370835)))

(declare-fun b!4872116 () Bool)

(declare-fun tp!1370833 () Bool)

(declare-fun tp!1370836 () Bool)

(assert (=> b!4872116 (= e!3045622 (and tp!1370833 tp!1370836))))

(assert (= (and b!4871335 (is-ElementMatch!13118 (regOne!26749 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872113))

(assert (= (and b!4871335 (is-Concat!21472 (regOne!26749 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872114))

(assert (= (and b!4871335 (is-Star!13118 (regOne!26749 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872115))

(assert (= (and b!4871335 (is-Union!13118 (regOne!26749 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872116))

(declare-fun b!4872118 () Bool)

(declare-fun e!3045623 () Bool)

(declare-fun tp!1370839 () Bool)

(declare-fun tp!1370837 () Bool)

(assert (=> b!4872118 (= e!3045623 (and tp!1370839 tp!1370837))))

(declare-fun b!4872117 () Bool)

(assert (=> b!4872117 (= e!3045623 tp_is_empty!35665)))

(assert (=> b!4871335 (= tp!1370635 e!3045623)))

(declare-fun b!4872119 () Bool)

(declare-fun tp!1370840 () Bool)

(assert (=> b!4872119 (= e!3045623 tp!1370840)))

(declare-fun b!4872120 () Bool)

(declare-fun tp!1370838 () Bool)

(declare-fun tp!1370841 () Bool)

(assert (=> b!4872120 (= e!3045623 (and tp!1370838 tp!1370841))))

(assert (= (and b!4871335 (is-ElementMatch!13118 (regTwo!26749 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872117))

(assert (= (and b!4871335 (is-Concat!21472 (regTwo!26749 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872118))

(assert (= (and b!4871335 (is-Star!13118 (regTwo!26749 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872119))

(assert (= (and b!4871335 (is-Union!13118 (regTwo!26749 (regTwo!26749 (regex!8043 (h!62434 rules!1164)))))) b!4872120))

(declare-fun b!4872122 () Bool)

(declare-fun e!3045624 () Bool)

(declare-fun tp!1370844 () Bool)

(declare-fun tp!1370842 () Bool)

(assert (=> b!4872122 (= e!3045624 (and tp!1370844 tp!1370842))))

(declare-fun b!4872121 () Bool)

(assert (=> b!4872121 (= e!3045624 tp_is_empty!35665)))

(assert (=> b!4871301 (= tp!1370595 e!3045624)))

(declare-fun b!4872123 () Bool)

(declare-fun tp!1370845 () Bool)

(assert (=> b!4872123 (= e!3045624 tp!1370845)))

(declare-fun b!4872124 () Bool)

(declare-fun tp!1370843 () Bool)

(declare-fun tp!1370846 () Bool)

(assert (=> b!4872124 (= e!3045624 (and tp!1370843 tp!1370846))))

(assert (= (and b!4871301 (is-ElementMatch!13118 (regOne!26749 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872121))

(assert (= (and b!4871301 (is-Concat!21472 (regOne!26749 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872122))

(assert (= (and b!4871301 (is-Star!13118 (regOne!26749 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872123))

(assert (= (and b!4871301 (is-Union!13118 (regOne!26749 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872124))

(declare-fun b!4872126 () Bool)

(declare-fun e!3045625 () Bool)

(declare-fun tp!1370849 () Bool)

(declare-fun tp!1370847 () Bool)

(assert (=> b!4872126 (= e!3045625 (and tp!1370849 tp!1370847))))

(declare-fun b!4872125 () Bool)

(assert (=> b!4872125 (= e!3045625 tp_is_empty!35665)))

(assert (=> b!4871301 (= tp!1370598 e!3045625)))

(declare-fun b!4872127 () Bool)

(declare-fun tp!1370850 () Bool)

(assert (=> b!4872127 (= e!3045625 tp!1370850)))

(declare-fun b!4872128 () Bool)

(declare-fun tp!1370848 () Bool)

(declare-fun tp!1370851 () Bool)

(assert (=> b!4872128 (= e!3045625 (and tp!1370848 tp!1370851))))

(assert (= (and b!4871301 (is-ElementMatch!13118 (regTwo!26749 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872125))

(assert (= (and b!4871301 (is-Concat!21472 (regTwo!26749 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872126))

(assert (= (and b!4871301 (is-Star!13118 (regTwo!26749 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872127))

(assert (= (and b!4871301 (is-Union!13118 (regTwo!26749 (regex!8043 (h!62434 (t!364180 rules!1164)))))) b!4872128))

(declare-fun b!4872129 () Bool)

(declare-fun e!3045626 () Bool)

(declare-fun tp!1370852 () Bool)

(assert (=> b!4872129 (= e!3045626 (and tp_is_empty!35665 tp!1370852))))

(assert (=> b!4871307 (= tp!1370604 e!3045626)))

(assert (= (and b!4871307 (is-Cons!55984 (innerList!14681 (xs!17901 (right!40993 (c!828451 input!585)))))) b!4872129))

(declare-fun b!4872131 () Bool)

(declare-fun e!3045627 () Bool)

(declare-fun tp!1370855 () Bool)

(declare-fun tp!1370853 () Bool)

(assert (=> b!4872131 (= e!3045627 (and tp!1370855 tp!1370853))))

(declare-fun b!4872130 () Bool)

(assert (=> b!4872130 (= e!3045627 tp_is_empty!35665)))

(assert (=> b!4871317 (= tp!1370613 e!3045627)))

(declare-fun b!4872132 () Bool)

(declare-fun tp!1370856 () Bool)

(assert (=> b!4872132 (= e!3045627 tp!1370856)))

(declare-fun b!4872133 () Bool)

(declare-fun tp!1370854 () Bool)

(declare-fun tp!1370857 () Bool)

(assert (=> b!4872133 (= e!3045627 (and tp!1370854 tp!1370857))))

(assert (= (and b!4871317 (is-ElementMatch!13118 (regOne!26748 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872130))

(assert (= (and b!4871317 (is-Concat!21472 (regOne!26748 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872131))

(assert (= (and b!4871317 (is-Star!13118 (regOne!26748 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872132))

(assert (= (and b!4871317 (is-Union!13118 (regOne!26748 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872133))

(declare-fun b!4872135 () Bool)

(declare-fun e!3045628 () Bool)

(declare-fun tp!1370860 () Bool)

(declare-fun tp!1370858 () Bool)

(assert (=> b!4872135 (= e!3045628 (and tp!1370860 tp!1370858))))

(declare-fun b!4872134 () Bool)

(assert (=> b!4872134 (= e!3045628 tp_is_empty!35665)))

(assert (=> b!4871317 (= tp!1370611 e!3045628)))

(declare-fun b!4872136 () Bool)

(declare-fun tp!1370861 () Bool)

(assert (=> b!4872136 (= e!3045628 tp!1370861)))

(declare-fun b!4872137 () Bool)

(declare-fun tp!1370859 () Bool)

(declare-fun tp!1370862 () Bool)

(assert (=> b!4872137 (= e!3045628 (and tp!1370859 tp!1370862))))

(assert (= (and b!4871317 (is-ElementMatch!13118 (regTwo!26748 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872134))

(assert (= (and b!4871317 (is-Concat!21472 (regTwo!26748 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872135))

(assert (= (and b!4871317 (is-Star!13118 (regTwo!26748 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872136))

(assert (= (and b!4871317 (is-Union!13118 (regTwo!26748 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872137))

(declare-fun b!4872139 () Bool)

(declare-fun e!3045629 () Bool)

(declare-fun tp!1370865 () Bool)

(declare-fun tp!1370863 () Bool)

(assert (=> b!4872139 (= e!3045629 (and tp!1370865 tp!1370863))))

(declare-fun b!4872138 () Bool)

(assert (=> b!4872138 (= e!3045629 tp_is_empty!35665)))

(assert (=> b!4871318 (= tp!1370614 e!3045629)))

(declare-fun b!4872140 () Bool)

(declare-fun tp!1370866 () Bool)

(assert (=> b!4872140 (= e!3045629 tp!1370866)))

(declare-fun b!4872141 () Bool)

(declare-fun tp!1370864 () Bool)

(declare-fun tp!1370867 () Bool)

(assert (=> b!4872141 (= e!3045629 (and tp!1370864 tp!1370867))))

(assert (= (and b!4871318 (is-ElementMatch!13118 (reg!13447 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872138))

(assert (= (and b!4871318 (is-Concat!21472 (reg!13447 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872139))

(assert (= (and b!4871318 (is-Star!13118 (reg!13447 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872140))

(assert (= (and b!4871318 (is-Union!13118 (reg!13447 (reg!13447 (regex!8043 (h!62434 rules!1164)))))) b!4872141))

(declare-fun b_lambda!193699 () Bool)

(assert (= b_lambda!193681 (or (and b!4870756 b_free!130727) (and b!4870894 b_free!130735 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toValue!10914 (transformation!8043 (h!62434 rules!1164))))) (and b!4871338 b_free!130743 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 (t!364180 rules!1164))))) (toValue!10914 (transformation!8043 (h!62434 rules!1164))))) (and b!4872014 b_free!130751 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 (t!364180 (t!364180 rules!1164)))))) (toValue!10914 (transformation!8043 (h!62434 rules!1164))))) b_lambda!193699)))

(declare-fun b_lambda!193701 () Bool)

(assert (= b_lambda!193687 (or b!4871153 b_lambda!193701)))

(declare-fun bs!1174720 () Bool)

(declare-fun d!1564621 () Bool)

(assert (= bs!1174720 (and d!1564621 b!4871153)))

(assert (=> bs!1174720 (= (dynLambda!22484 lambda!243496 (_1!33231 lt!1995912)) (= (list!17513 (dynLambda!22473 (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (dynLambda!22483 (toValue!10914 (transformation!8043 (h!62434 rules!1164))) (_1!33231 lt!1995912)))) (list!17513 (_1!33231 lt!1995912))))))

(declare-fun b_lambda!193713 () Bool)

(assert (=> (not b_lambda!193713) (not bs!1174720)))

(declare-fun t!364247 () Bool)

(declare-fun tb!258009 () Bool)

(assert (=> (and b!4870756 (= (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (toChars!10773 (transformation!8043 (h!62434 rules!1164)))) t!364247) tb!258009))

(declare-fun tp!1370868 () Bool)

(declare-fun b!4872142 () Bool)

(declare-fun e!3045630 () Bool)

(assert (=> b!4872142 (= e!3045630 (and (inv!71910 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (dynLambda!22483 (toValue!10914 (transformation!8043 (h!62434 rules!1164))) (_1!33231 lt!1995912))))) tp!1370868))))

(declare-fun result!321190 () Bool)

(assert (=> tb!258009 (= result!321190 (and (inv!71909 (dynLambda!22473 (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (dynLambda!22483 (toValue!10914 (transformation!8043 (h!62434 rules!1164))) (_1!33231 lt!1995912)))) e!3045630))))

(assert (= tb!258009 b!4872142))

(declare-fun m!5872830 () Bool)

(assert (=> b!4872142 m!5872830))

(declare-fun m!5872832 () Bool)

(assert (=> tb!258009 m!5872832))

(assert (=> bs!1174720 t!364247))

(declare-fun b_and!343069 () Bool)

(assert (= b_and!343053 (and (=> t!364247 result!321190) b_and!343069)))

(declare-fun t!364249 () Bool)

(declare-fun tb!258011 () Bool)

(assert (=> (and b!4870894 (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toChars!10773 (transformation!8043 (h!62434 rules!1164)))) t!364249) tb!258011))

(declare-fun result!321192 () Bool)

(assert (= result!321192 result!321190))

(assert (=> bs!1174720 t!364249))

(declare-fun b_and!343071 () Bool)

(assert (= b_and!343055 (and (=> t!364249 result!321192) b_and!343071)))

(declare-fun t!364251 () Bool)

(declare-fun tb!258013 () Bool)

(assert (=> (and b!4871338 (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 (t!364180 rules!1164))))) (toChars!10773 (transformation!8043 (h!62434 rules!1164)))) t!364251) tb!258013))

(declare-fun result!321194 () Bool)

(assert (= result!321194 result!321190))

(assert (=> bs!1174720 t!364251))

(declare-fun b_and!343073 () Bool)

(assert (= b_and!343057 (and (=> t!364251 result!321194) b_and!343073)))

(declare-fun t!364253 () Bool)

(declare-fun tb!258015 () Bool)

(assert (=> (and b!4872014 (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 (t!364180 (t!364180 rules!1164)))))) (toChars!10773 (transformation!8043 (h!62434 rules!1164)))) t!364253) tb!258015))

(declare-fun result!321196 () Bool)

(assert (= result!321196 result!321190))

(assert (=> bs!1174720 t!364253))

(declare-fun b_and!343075 () Bool)

(assert (= b_and!343067 (and (=> t!364253 result!321196) b_and!343075)))

(declare-fun b_lambda!193715 () Bool)

(assert (=> (not b_lambda!193715) (not bs!1174720)))

(assert (=> bs!1174720 t!364207))

(declare-fun b_and!343077 () Bool)

(assert (= b_and!343059 (and (=> t!364207 result!321154) b_and!343077)))

(assert (=> bs!1174720 t!364209))

(declare-fun b_and!343079 () Bool)

(assert (= b_and!343061 (and (=> t!364209 result!321158) b_and!343079)))

(assert (=> bs!1174720 t!364211))

(declare-fun b_and!343081 () Bool)

(assert (= b_and!343063 (and (=> t!364211 result!321160) b_and!343081)))

(assert (=> bs!1174720 t!364237))

(declare-fun b_and!343083 () Bool)

(assert (= b_and!343065 (and (=> t!364237 result!321180) b_and!343083)))

(assert (=> bs!1174720 m!5871994))

(declare-fun m!5872834 () Bool)

(assert (=> bs!1174720 m!5872834))

(declare-fun m!5872836 () Bool)

(assert (=> bs!1174720 m!5872836))

(assert (=> bs!1174720 m!5871402))

(assert (=> bs!1174720 m!5871994))

(assert (=> bs!1174720 m!5872834))

(assert (=> d!1564363 d!1564621))

(declare-fun b_lambda!193703 () Bool)

(assert (= b_lambda!193683 (or (and b!4870756 b_free!130727) (and b!4870894 b_free!130735 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toValue!10914 (transformation!8043 (h!62434 rules!1164))))) (and b!4871338 b_free!130743 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 (t!364180 rules!1164))))) (toValue!10914 (transformation!8043 (h!62434 rules!1164))))) (and b!4872014 b_free!130751 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 (t!364180 (t!364180 rules!1164)))))) (toValue!10914 (transformation!8043 (h!62434 rules!1164))))) b_lambda!193703)))

(declare-fun b_lambda!193705 () Bool)

(assert (= b_lambda!193697 (or d!1564207 b_lambda!193705)))

(declare-fun bs!1174721 () Bool)

(declare-fun d!1564623 () Bool)

(assert (= bs!1174721 (and d!1564623 d!1564207)))

(assert (=> bs!1174721 (= (dynLambda!22485 lambda!243508 (h!62434 rules!1164)) (ruleValid!3631 thiss!11460 (h!62434 rules!1164)))))

(assert (=> bs!1174721 m!5871418))

(assert (=> b!4871991 d!1564623))

(declare-fun b_lambda!193707 () Bool)

(assert (= b_lambda!193695 (or d!1564201 b_lambda!193707)))

(declare-fun bs!1174722 () Bool)

(declare-fun d!1564625 () Bool)

(assert (= bs!1174722 (and d!1564625 d!1564201)))

(assert (=> bs!1174722 (= (dynLambda!22485 lambda!243505 (h!62434 rules!1164)) (ruleValid!3631 thiss!11460 (h!62434 rules!1164)))))

(assert (=> bs!1174722 m!5871418))

(assert (=> b!4871965 d!1564625))

(declare-fun b_lambda!193709 () Bool)

(assert (= b_lambda!193685 (or (and b!4870756 b_free!130727) (and b!4870894 b_free!130735 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toValue!10914 (transformation!8043 (h!62434 rules!1164))))) (and b!4871338 b_free!130743 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 (t!364180 rules!1164))))) (toValue!10914 (transformation!8043 (h!62434 rules!1164))))) (and b!4872014 b_free!130751 (= (toValue!10914 (transformation!8043 (h!62434 (t!364180 (t!364180 (t!364180 rules!1164)))))) (toValue!10914 (transformation!8043 (h!62434 rules!1164))))) b_lambda!193709)))

(declare-fun b_lambda!193711 () Bool)

(assert (= b_lambda!193689 (or b!4871153 b_lambda!193711)))

(declare-fun bs!1174723 () Bool)

(declare-fun d!1564627 () Bool)

(assert (= bs!1174723 (and d!1564627 b!4871153)))

(assert (=> bs!1174723 (= (dynLambda!22484 lambda!243496 (seqFromList!5899 (list!17513 (_1!33231 lt!1995912)))) (= (list!17513 (dynLambda!22473 (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (dynLambda!22483 (toValue!10914 (transformation!8043 (h!62434 rules!1164))) (seqFromList!5899 (list!17513 (_1!33231 lt!1995912)))))) (list!17513 (seqFromList!5899 (list!17513 (_1!33231 lt!1995912))))))))

(declare-fun b_lambda!193717 () Bool)

(assert (=> (not b_lambda!193717) (not bs!1174723)))

(declare-fun t!364255 () Bool)

(declare-fun tb!258017 () Bool)

(assert (=> (and b!4870756 (= (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (toChars!10773 (transformation!8043 (h!62434 rules!1164)))) t!364255) tb!258017))

(declare-fun b!4872143 () Bool)

(declare-fun tp!1370869 () Bool)

(declare-fun e!3045631 () Bool)

(assert (=> b!4872143 (= e!3045631 (and (inv!71910 (c!828451 (dynLambda!22473 (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (dynLambda!22483 (toValue!10914 (transformation!8043 (h!62434 rules!1164))) (seqFromList!5899 (list!17513 (_1!33231 lt!1995912))))))) tp!1370869))))

(declare-fun result!321198 () Bool)

(assert (=> tb!258017 (= result!321198 (and (inv!71909 (dynLambda!22473 (toChars!10773 (transformation!8043 (h!62434 rules!1164))) (dynLambda!22483 (toValue!10914 (transformation!8043 (h!62434 rules!1164))) (seqFromList!5899 (list!17513 (_1!33231 lt!1995912)))))) e!3045631))))

(assert (= tb!258017 b!4872143))

(declare-fun m!5872838 () Bool)

(assert (=> b!4872143 m!5872838))

(declare-fun m!5872840 () Bool)

(assert (=> tb!258017 m!5872840))

(assert (=> bs!1174723 t!364255))

(declare-fun b_and!343085 () Bool)

(assert (= b_and!343069 (and (=> t!364255 result!321198) b_and!343085)))

(declare-fun t!364257 () Bool)

(declare-fun tb!258019 () Bool)

(assert (=> (and b!4870894 (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 rules!1164)))) (toChars!10773 (transformation!8043 (h!62434 rules!1164)))) t!364257) tb!258019))

(declare-fun result!321200 () Bool)

(assert (= result!321200 result!321198))

(assert (=> bs!1174723 t!364257))

(declare-fun b_and!343087 () Bool)

(assert (= b_and!343071 (and (=> t!364257 result!321200) b_and!343087)))

(declare-fun t!364259 () Bool)

(declare-fun tb!258021 () Bool)

(assert (=> (and b!4871338 (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 (t!364180 rules!1164))))) (toChars!10773 (transformation!8043 (h!62434 rules!1164)))) t!364259) tb!258021))

(declare-fun result!321202 () Bool)

(assert (= result!321202 result!321198))

(assert (=> bs!1174723 t!364259))

(declare-fun b_and!343089 () Bool)

(assert (= b_and!343073 (and (=> t!364259 result!321202) b_and!343089)))

(declare-fun t!364261 () Bool)

(declare-fun tb!258023 () Bool)

(assert (=> (and b!4872014 (= (toChars!10773 (transformation!8043 (h!62434 (t!364180 (t!364180 (t!364180 rules!1164)))))) (toChars!10773 (transformation!8043 (h!62434 rules!1164)))) t!364261) tb!258023))

(declare-fun result!321204 () Bool)

(assert (= result!321204 result!321198))

(assert (=> bs!1174723 t!364261))

(declare-fun b_and!343091 () Bool)

(assert (= b_and!343075 (and (=> t!364261 result!321204) b_and!343091)))

(declare-fun b_lambda!193719 () Bool)

(assert (=> (not b_lambda!193719) (not bs!1174723)))

(assert (=> bs!1174723 t!364213))

(declare-fun b_and!343093 () Bool)

(assert (= b_and!343077 (and (=> t!364213 result!321162) b_and!343093)))

(assert (=> bs!1174723 t!364215))

(declare-fun b_and!343095 () Bool)

(assert (= b_and!343079 (and (=> t!364215 result!321164) b_and!343095)))

(assert (=> bs!1174723 t!364217))

(declare-fun b_and!343097 () Bool)

(assert (= b_and!343081 (and (=> t!364217 result!321166) b_and!343097)))

(assert (=> bs!1174723 t!364239))

(declare-fun b_and!343099 () Bool)

(assert (= b_and!343083 (and (=> t!364239 result!321182) b_and!343099)))

(assert (=> bs!1174723 m!5871388))

(assert (=> bs!1174723 m!5872004))

(declare-fun m!5872842 () Bool)

(assert (=> bs!1174723 m!5872842))

(declare-fun m!5872844 () Bool)

(assert (=> bs!1174723 m!5872844))

(assert (=> bs!1174723 m!5871388))

(assert (=> bs!1174723 m!5872002))

(assert (=> bs!1174723 m!5872004))

(assert (=> bs!1174723 m!5872842))

(assert (=> d!1564371 d!1564627))

(push 1)

(assert (not d!1564435))

(assert (not b!4871932))

(assert (not d!1564517))

(assert (not b!4871690))

(assert (not b!4871713))

(assert (not b!4871658))

(assert (not b!4871714))

(assert (not b!4871871))

(assert (not b!4871868))

(assert (not b!4871746))

(assert (not b!4872064))

(assert (not b!4872091))

(assert (not b!4872136))

(assert (not bm!338250))

(assert (not b!4871625))

(assert (not b!4871656))

(assert (not b!4871568))

(assert (not b_lambda!193707))

(assert (not b!4871819))

(assert (not b!4872098))

(assert (not b!4872142))

(assert (not bm!338249))

(assert (not bm!338256))

(assert (not bm!338253))

(assert (not b!4872016))

(assert (not b!4871712))

(assert (not b!4871774))

(assert (not b_lambda!193709))

(assert (not b!4871648))

(assert (not b!4871889))

(assert (not d!1564499))

(assert (not b!4871916))

(assert (not b!4871996))

(assert (not bm!338262))

(assert (not b!4872143))

(assert (not b!4871946))

(assert (not b!4871736))

(assert (not b!4871562))

(assert (not b!4872005))

(assert (not b!4871772))

(assert (not b!4871865))

(assert (not b!4872065))

(assert (not b!4871593))

(assert (not b!4871810))

(assert (not b!4871768))

(assert (not b!4872099))

(assert (not d!1564323))

(assert (not b!4871723))

(assert (not b!4871741))

(assert (not b!4871934))

(assert b_and!343091)

(assert (not b!4871983))

(assert (not b!4872133))

(assert (not b!4871978))

(assert (not bs!1174721))

(assert (not b!4871942))

(assert (not b!4871559))

(assert (not b!4872078))

(assert (not d!1564403))

(assert (not b!4871972))

(assert (not b!4871669))

(assert (not d!1564415))

(assert (not b!4871872))

(assert (not b!4871677))

(assert (not b_next!131541))

(assert (not b!4871878))

(assert (not b!4872000))

(assert (not b!4872124))

(assert (not b!4872020))

(assert (not b!4872026))

(assert (not b!4872034))

(assert (not b!4871782))

(assert (not b!4871936))

(assert (not b!4871729))

(assert (not b!4872095))

(assert (not d!1564371))

(assert (not b!4872063))

(assert (not d!1564391))

(assert (not d!1564525))

(assert (not b!4871861))

(assert (not d!1564351))

(assert (not b!4871867))

(assert (not b!4871969))

(assert (not b!4872132))

(assert (not b!4871697))

(assert (not b!4871676))

(assert (not d!1564419))

(assert (not b!4871722))

(assert (not b!4871970))

(assert (not d!1564529))

(assert (not b!4871718))

(assert (not b!4871997))

(assert (not bm!338248))

(assert (not d!1564401))

(assert (not b!4871780))

(assert (not d!1564393))

(assert (not b_next!131535))

(assert b_and!343089)

(assert (not b!4871976))

(assert (not b!4871995))

(assert (not b!4871665))

(assert (not bm!338251))

(assert (not b!4872012))

(assert (not b_next!131517))

(assert (not b_next!131519))

(assert (not b!4871998))

(assert (not b!4871725))

(assert (not b!4871745))

(assert (not d!1564495))

(assert (not b!4871803))

(assert (not d!1564613))

(assert (not d!1564325))

(assert (not b!4871691))

(assert (not b!4872019))

(assert (not d!1564367))

(assert (not b!4871901))

(assert (not b!4871678))

(assert (not b!4872072))

(assert (not d!1564411))

(assert (not bs!1174722))

(assert (not b!4872112))

(assert (not b_next!131533))

(assert (not b!4872080))

(assert b_and!343097)

(assert (not b!4871640))

(assert (not b!4871869))

(assert (not b!4872127))

(assert (not b!4871762))

(assert (not b!4872071))

(assert (not d!1564569))

(assert (not b!4871544))

(assert (not b!4871579))

(assert (not b!4871688))

(assert (not b!4871980))

(assert (not b!4872096))

(assert (not b!4871952))

(assert (not d!1564581))

(assert (not b!4871851))

(assert (not b!4871637))

(assert (not b!4871696))

(assert (not b!4871985))

(assert (not b!4872087))

(assert (not d!1564359))

(assert (not b!4871570))

(assert (not d!1564519))

(assert (not b!4872111))

(assert (not d!1564409))

(assert (not b!4871692))

(assert (not b!4871921))

(assert (not b!4872140))

(assert (not b_lambda!193705))

(assert (not d!1564303))

(assert (not d!1564557))

(assert (not b!4872046))

(assert (not b!4871890))

(assert (not b!4871906))

(assert (not b!4871540))

(assert (not b!4872002))

(assert (not b!4871726))

(assert (not b!4871937))

(assert (not b_next!131543))

(assert (not b!4871305))

(assert (not b!4872045))

(assert (not b!4871567))

(assert (not bm!338255))

(assert (not b!4871764))

(assert (not b!4871993))

(assert (not b!4872003))

(assert (not b!4871660))

(assert (not b!4871812))

(assert (not b!4871905))

(assert (not b!4871939))

(assert (not b!4871680))

(assert (not b!4871802))

(assert (not b!4871573))

(assert (not b!4872128))

(assert (not b!4871805))

(assert (not d!1564431))

(assert (not b!4871578))

(assert (not d!1564611))

(assert (not b_next!131525))

(assert (not b!4871551))

(assert (not bm!338230))

(assert (not d!1564533))

(assert (not b!4871808))

(assert (not b!4871859))

(assert (not b!4872090))

(assert (not b!4871684))

(assert (not b!4872114))

(assert (not b!4871877))

(assert (not b!4871966))

(assert (not b!4872067))

(assert (not b!4871933))

(assert (not b!4871982))

(assert (not b!4872010))

(assert (not b!4872082))

(assert (not b!4872027))

(assert (not bm!338252))

(assert (not b!4872066))

(assert (not b!4871955))

(assert (not b!4871960))

(assert (not b!4871649))

(assert (not b!4871992))

(assert (not bm!338261))

(assert (not b!4872031))

(assert (not b!4871894))

(assert (not b!4872062))

(assert (not b!4872122))

(assert (not d!1564355))

(assert (not b!4871732))

(assert (not b!4871538))

(assert (not d!1564457))

(assert (not b!4872039))

(assert (not b!4871689))

(assert (not b!4872022))

(assert (not b!4872108))

(assert (not b!4871988))

(assert (not b!4872092))

(assert (not d!1564585))

(assert (not b!4871941))

(assert (not b!4871986))

(assert (not b!4872011))

(assert (not b!4871927))

(assert (not b!4872001))

(assert (not b!4871818))

(assert (not d!1564571))

(assert (not d!1564489))

(assert (not b!4871761))

(assert (not b!4871572))

(assert (not b!4871651))

(assert (not b!4872018))

(assert (not b!4872074))

(assert (not tb!257981))

(assert (not b!4872139))

(assert (not bm!338229))

(assert (not d!1564311))

(assert (not b!4871870))

(assert (not b_next!131527))

(assert (not d!1564363))

(assert (not b!4872007))

(assert (not bm!338260))

(assert (not b!4871730))

(assert (not b!4871806))

(assert (not b!4872013))

(assert (not b!4872049))

(assert (not d!1564475))

(assert (not b!4871775))

(assert (not b!4872032))

(assert (not b!4872056))

(assert (not b!4872083))

(assert (not b!4871821))

(assert (not d!1564399))

(assert (not b_lambda!193703))

(assert (not b!4871944))

(assert (not b!4872024))

(assert (not d!1564309))

(assert (not b!4871673))

(assert (not d!1564417))

(assert (not b!4871566))

(assert (not b!4871720))

(assert (not b!4871750))

(assert (not b!4871855))

(assert (not b!4872015))

(assert (not b!4872061))

(assert (not b!4871909))

(assert (not b!4872058))

(assert (not b!4871915))

(assert (not b!4871813))

(assert (not d!1564373))

(assert (not b!4871948))

(assert (not b!4871662))

(assert (not b!4871777))

(assert (not d!1564429))

(assert (not b!4871958))

(assert (not b_lambda!193717))

(assert (not b!4872028))

(assert (not b!4872135))

(assert (not b!4871737))

(assert (not b!4872023))

(assert (not b!4871664))

(assert (not b!4871907))

(assert (not b!4871670))

(assert (not b!4872123))

(assert (not b!4871623))

(assert (not d!1564345))

(assert (not b!4871715))

(assert (not b!4871771))

(assert (not d!1564487))

(assert (not b!4872106))

(assert (not d!1564465))

(assert (not d!1564315))

(assert (not b!4872006))

(assert (not b!4872030))

(assert (not b!4872104))

(assert (not b!4871590))

(assert (not b!4871681))

(assert (not b!4872057))

(assert (not b!4872129))

(assert (not b!4871984))

(assert (not b!4871742))

(assert (not b!4871766))

(assert (not b!4872131))

(assert (not b!4872084))

(assert (not b!4872035))

(assert (not d!1564365))

(assert (not b!4871807))

(assert (not b!4871899))

(assert (not b!4871931))

(assert (not b!4872110))

(assert (not b!4872076))

(assert (not b!4872116))

(assert (not d!1564617))

(assert (not b!4872070))

(assert (not d!1564547))

(assert (not b!4872041))

(assert (not b!4871895))

(assert (not b!4871999))

(assert (not b!4871711))

(assert (not b!4871928))

(assert b_and!343085)

(assert (not b!4871679))

(assert (not b!4871545))

(assert (not b!4872079))

(assert (not d!1564337))

(assert (not b!4871308))

(assert (not b!4872103))

(assert (not b!4871695))

(assert (not b!4872107))

(assert (not b!4872075))

(assert (not b!4871577))

(assert (not b!4871634))

(assert (not b!4872119))

(assert (not b!4872038))

(assert b_and!343087)

(assert (not b!4871564))

(assert (not b!4871967))

(assert b_and!343093)

(assert (not d!1564509))

(assert (not b!4871943))

(assert (not b!4871912))

(assert (not d!1564485))

(assert (not b!4871935))

(assert (not b!4871734))

(assert (not b!4872094))

(assert (not b_lambda!193693))

(assert (not b!4872048))

(assert (not b!4871563))

(assert (not b_lambda!193713))

(assert (not b!4871925))

(assert (not tb!257993))

(assert (not b!4872040))

(assert (not d!1564603))

(assert (not b!4871904))

(assert (not b!4872068))

(assert (not b!4871956))

(assert (not b!4872126))

(assert (not b_lambda!193691))

(assert (not b!4871675))

(assert (not bm!338228))

(assert (not bm!338254))

(assert (not bm!338257))

(assert (not b!4871769))

(assert (not b!4871655))

(assert (not b_lambda!193701))

(assert (not b!4871542))

(assert (not b!4872120))

(assert (not b!4871776))

(assert (not b!4871693))

(assert (not d!1564579))

(assert (not b!4871874))

(assert (not d!1564439))

(assert (not b!4871557))

(assert (not b!4871887))

(assert (not d!1564539))

(assert (not b!4872054))

(assert (not b!4872115))

(assert (not d!1564385))

(assert (not tb!257987))

(assert (not d!1564531))

(assert (not b!4872102))

(assert b_and!343099)

(assert b_and!343095)

(assert (not bs!1174720))

(assert (not b!4871574))

(assert (not d!1564461))

(assert (not b!4872044))

(assert (not d!1564307))

(assert (not d!1564481))

(assert (not d!1564505))

(assert (not b!4871815))

(assert (not tb!258009))

(assert (not d!1564601))

(assert (not b!4871920))

(assert (not b!4871724))

(assert (not b!4871571))

(assert (not b_lambda!193711))

(assert (not b!4872118))

(assert (not tb!258017))

(assert (not d!1564535))

(assert (not b!4871560))

(assert (not b!4871575))

(assert (not d!1564527))

(assert (not b!4872036))

(assert (not bm!338247))

(assert (not b!4872042))

(assert (not b!4871875))

(assert (not b!4871945))

(assert (not b!4872050))

(assert (not d!1564515))

(assert (not d!1564597))

(assert (not d!1564375))

(assert (not d!1564405))

(assert (not d!1564511))

(assert (not d!1564319))

(assert (not b!4871954))

(assert (not d!1564483))

(assert (not d!1564349))

(assert (not b_lambda!193719))

(assert tp_is_empty!35665)

(assert (not b!4872137))

(assert (not b!4872052))

(assert (not b!4871950))

(assert (not d!1564427))

(assert (not b!4872009))

(assert (not b!4871891))

(assert (not d!1564451))

(assert (not b!4871748))

(assert (not d!1564561))

(assert (not b!4871765))

(assert (not b!4871561))

(assert (not d!1564317))

(assert (not b_lambda!193699))

(assert (not d!1564537))

(assert (not b!4871866))

(assert (not b!4871959))

(assert (not b!4871885))

(assert (not b!4871873))

(assert (not d!1564567))

(assert (not b!4871629))

(assert (not d!1564563))

(assert (not b!4871809))

(assert (not b!4871850))

(assert (not b!4872141))

(assert (not d!1564343))

(assert (not b!4871801))

(assert (not d!1564559))

(assert (not b!4872088))

(assert (not b!4871975))

(assert (not b!4871938))

(assert (not d!1564503))

(assert (not b!4872060))

(assert (not b!4871727))

(assert (not tb!257975))

(assert (not b!4871854))

(assert (not d!1564357))

(assert (not b!4871533))

(assert (not d!1564421))

(assert (not b!4871773))

(assert (not b!4871924))

(assert (not b!4871302))

(assert (not b!4871653))

(assert (not b!4871876))

(assert (not d!1564467))

(assert (not b_lambda!193677))

(assert (not b!4872086))

(assert (not b!4872043))

(assert (not b!4871710))

(assert (not b!4871674))

(assert (not b_lambda!193715))

(assert (not b!4872053))

(assert (not bs!1174723))

(assert (not b!4872100))

(check-sat)

(pop 1)

(push 1)

(assert b_and!343091)

(assert (not b_next!131541))

(assert (not b_next!131543))

(assert (not b_next!131525))

(assert (not b_next!131527))

(assert b_and!343085)

(assert b_and!343087)

(assert b_and!343093)

(assert (not b_next!131517))

(assert (not b_next!131535))

(assert (not b_next!131519))

(assert b_and!343089)

(assert (not b_next!131533))

(assert b_and!343097)

(assert b_and!343099)

(assert b_and!343095)

(check-sat)

(pop 1)

