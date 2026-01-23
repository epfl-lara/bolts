; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!276210 () Bool)

(assert start!276210)

(declare-fun b!2840062 () Bool)

(declare-fun b_free!82285 () Bool)

(declare-fun b_next!82989 () Bool)

(assert (=> b!2840062 (= b_free!82285 (not b_next!82989))))

(declare-fun tp!909646 () Bool)

(declare-fun b_and!208299 () Bool)

(assert (=> b!2840062 (= tp!909646 b_and!208299)))

(declare-fun b_free!82287 () Bool)

(declare-fun b_next!82991 () Bool)

(assert (=> b!2840062 (= b_free!82287 (not b_next!82991))))

(declare-fun tp!909640 () Bool)

(declare-fun b_and!208301 () Bool)

(assert (=> b!2840062 (= tp!909640 b_and!208301)))

(declare-fun b!2840061 () Bool)

(declare-fun b_free!82289 () Bool)

(declare-fun b_next!82993 () Bool)

(assert (=> b!2840061 (= b_free!82289 (not b_next!82993))))

(declare-fun tp!909642 () Bool)

(declare-fun b_and!208303 () Bool)

(assert (=> b!2840061 (= tp!909642 b_and!208303)))

(declare-fun b_free!82291 () Bool)

(declare-fun b_next!82995 () Bool)

(assert (=> b!2840061 (= b_free!82291 (not b_next!82995))))

(declare-fun tp!909641 () Bool)

(declare-fun b_and!208305 () Bool)

(assert (=> b!2840061 (= tp!909641 b_and!208305)))

(declare-fun b!2840063 () Bool)

(declare-fun b_free!82293 () Bool)

(declare-fun b_next!82997 () Bool)

(assert (=> b!2840063 (= b_free!82293 (not b_next!82997))))

(declare-fun tp!909635 () Bool)

(declare-fun b_and!208307 () Bool)

(assert (=> b!2840063 (= tp!909635 b_and!208307)))

(declare-fun b_free!82295 () Bool)

(declare-fun b_next!82999 () Bool)

(assert (=> b!2840063 (= b_free!82295 (not b_next!82999))))

(declare-fun tp!909648 () Bool)

(declare-fun b_and!208309 () Bool)

(assert (=> b!2840063 (= tp!909648 b_and!208309)))

(declare-fun res!1181600 () Bool)

(declare-fun e!1799097 () Bool)

(assert (=> start!276210 (=> (not res!1181600) (not e!1799097))))

(declare-datatypes ((LexerInterface!4645 0))(
  ( (LexerInterfaceExt!4642 (__x!22308 Int)) (Lexer!4643) )
))
(declare-fun thiss!27264 () LexerInterface!4645)

(assert (=> start!276210 (= res!1181600 (is-Lexer!4643 thiss!27264))))

(assert (=> start!276210 e!1799097))

(assert (=> start!276210 true))

(declare-fun e!1799099 () Bool)

(assert (=> start!276210 e!1799099))

(declare-fun e!1799091 () Bool)

(assert (=> start!276210 e!1799091))

(declare-fun e!1799095 () Bool)

(assert (=> start!276210 e!1799095))

(declare-fun b!2840047 () Bool)

(declare-fun res!1181608 () Bool)

(assert (=> b!2840047 (=> (not res!1181608) (not e!1799097))))

(declare-datatypes ((C!17074 0))(
  ( (C!17075 (val!10549 Int)) )
))
(declare-datatypes ((List!33738 0))(
  ( (Nil!33614) (Cons!33614 (h!39034 C!17074) (t!232427 List!33738)) )
))
(declare-datatypes ((Regex!8446 0))(
  ( (ElementMatch!8446 (c!458560 C!17074)) (Concat!13731 (regOne!17404 Regex!8446) (regTwo!17404 Regex!8446)) (EmptyExpr!8446) (Star!8446 (reg!8775 Regex!8446)) (EmptyLang!8446) (Union!8446 (regOne!17405 Regex!8446) (regTwo!17405 Regex!8446)) )
))
(declare-datatypes ((String!36948 0))(
  ( (String!36949 (value!162412 String)) )
))
(declare-datatypes ((List!33739 0))(
  ( (Nil!33615) (Cons!33615 (h!39035 (_ BitVec 16)) (t!232428 List!33739)) )
))
(declare-datatypes ((TokenValue!5285 0))(
  ( (FloatLiteralValue!10570 (text!37440 List!33739)) (TokenValueExt!5284 (__x!22309 Int)) (Broken!26425 (value!162413 List!33739)) (Object!5408) (End!5285) (Def!5285) (Underscore!5285) (Match!5285) (Else!5285) (Error!5285) (Case!5285) (If!5285) (Extends!5285) (Abstract!5285) (Class!5285) (Val!5285) (DelimiterValue!10570 (del!5345 List!33739)) (KeywordValue!5291 (value!162414 List!33739)) (CommentValue!10570 (value!162415 List!33739)) (WhitespaceValue!10570 (value!162416 List!33739)) (IndentationValue!5285 (value!162417 List!33739)) (String!36950) (Int32!5285) (Broken!26426 (value!162418 List!33739)) (Boolean!5286) (Unit!47469) (OperatorValue!5288 (op!5345 List!33739)) (IdentifierValue!10570 (value!162419 List!33739)) (IdentifierValue!10571 (value!162420 List!33739)) (WhitespaceValue!10571 (value!162421 List!33739)) (True!10570) (False!10570) (Broken!26427 (value!162422 List!33739)) (Broken!26428 (value!162423 List!33739)) (True!10571) (RightBrace!5285) (RightBracket!5285) (Colon!5285) (Null!5285) (Comma!5285) (LeftBracket!5285) (False!10571) (LeftBrace!5285) (ImaginaryLiteralValue!5285 (text!37441 List!33739)) (StringLiteralValue!15855 (value!162424 List!33739)) (EOFValue!5285 (value!162425 List!33739)) (IdentValue!5285 (value!162426 List!33739)) (DelimiterValue!10571 (value!162427 List!33739)) (DedentValue!5285 (value!162428 List!33739)) (NewLineValue!5285 (value!162429 List!33739)) (IntegerValue!15855 (value!162430 (_ BitVec 32)) (text!37442 List!33739)) (IntegerValue!15856 (value!162431 Int) (text!37443 List!33739)) (Times!5285) (Or!5285) (Equal!5285) (Minus!5285) (Broken!26429 (value!162432 List!33739)) (And!5285) (Div!5285) (LessEqual!5285) (Mod!5285) (Concat!13732) (Not!5285) (Plus!5285) (SpaceValue!5285 (value!162433 List!33739)) (IntegerValue!15857 (value!162434 Int) (text!37444 List!33739)) (StringLiteralValue!15856 (text!37445 List!33739)) (FloatLiteralValue!10571 (text!37446 List!33739)) (BytesLiteralValue!5285 (value!162435 List!33739)) (CommentValue!10571 (value!162436 List!33739)) (StringLiteralValue!15857 (value!162437 List!33739)) (ErrorTokenValue!5285 (msg!5346 List!33739)) )
))
(declare-datatypes ((IArray!20875 0))(
  ( (IArray!20876 (innerList!10495 List!33738)) )
))
(declare-datatypes ((Conc!10435 0))(
  ( (Node!10435 (left!25338 Conc!10435) (right!25668 Conc!10435) (csize!21100 Int) (cheight!10646 Int)) (Leaf!15871 (xs!13547 IArray!20875) (csize!21101 Int)) (Empty!10435) )
))
(declare-datatypes ((BalanceConc!20508 0))(
  ( (BalanceConc!20509 (c!458561 Conc!10435)) )
))
(declare-datatypes ((TokenValueInjection!9998 0))(
  ( (TokenValueInjection!9999 (toValue!7097 Int) (toChars!6956 Int)) )
))
(declare-datatypes ((Rule!9910 0))(
  ( (Rule!9911 (regex!5055 Regex!8446) (tag!5559 String!36948) (isSeparator!5055 Bool) (transformation!5055 TokenValueInjection!9998)) )
))
(declare-datatypes ((List!33740 0))(
  ( (Nil!33616) (Cons!33616 (h!39036 Rule!9910) (t!232429 List!33740)) )
))
(declare-fun rules!4246 () List!33740)

(declare-fun rulesInvariant!4061 (LexerInterface!4645 List!33740) Bool)

(assert (=> b!2840047 (= res!1181608 (rulesInvariant!4061 thiss!27264 rules!4246))))

(declare-fun tp!909644 () Bool)

(declare-fun e!1799100 () Bool)

(declare-datatypes ((Token!9512 0))(
  ( (Token!9513 (value!162438 TokenValue!5285) (rule!7483 Rule!9910) (size!26100 Int) (originalCharacters!5787 List!33738)) )
))
(declare-datatypes ((List!33741 0))(
  ( (Nil!33617) (Cons!33617 (h!39037 Token!9512) (t!232430 List!33741)) )
))
(declare-fun tokens!612 () List!33741)

(declare-fun b!2840048 () Bool)

(declare-fun e!1799093 () Bool)

(declare-fun inv!21 (TokenValue!5285) Bool)

(assert (=> b!2840048 (= e!1799100 (and (inv!21 (value!162438 (h!39037 tokens!612))) e!1799093 tp!909644))))

(declare-fun e!1799098 () Bool)

(declare-fun e!1799094 () Bool)

(declare-fun b!2840049 () Bool)

(declare-fun tp!909647 () Bool)

(declare-fun tokensBis!14 () List!33741)

(assert (=> b!2840049 (= e!1799094 (and (inv!21 (value!162438 (h!39037 tokensBis!14))) e!1799098 tp!909647))))

(declare-fun e!1799102 () Bool)

(declare-fun tp!909639 () Bool)

(declare-fun b!2840050 () Bool)

(declare-fun inv!45585 (String!36948) Bool)

(declare-fun inv!45588 (TokenValueInjection!9998) Bool)

(assert (=> b!2840050 (= e!1799093 (and tp!909639 (inv!45585 (tag!5559 (rule!7483 (h!39037 tokens!612)))) (inv!45588 (transformation!5055 (rule!7483 (h!39037 tokens!612)))) e!1799102))))

(declare-fun b!2840051 () Bool)

(declare-fun res!1181603 () Bool)

(assert (=> b!2840051 (=> (not res!1181603) (not e!1799097))))

(declare-fun subseq!521 (List!33741 List!33741) Bool)

(assert (=> b!2840051 (= res!1181603 (subseq!521 tokensBis!14 tokens!612))))

(declare-fun b!2840052 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1686 (LexerInterface!4645 List!33740 List!33741) Bool)

(assert (=> b!2840052 (= e!1799097 (not (rulesProduceEachTokenIndividuallyList!1686 thiss!27264 rules!4246 (t!232430 tokens!612))))))

(declare-fun b!2840053 () Bool)

(declare-fun res!1181602 () Bool)

(assert (=> b!2840053 (=> (not res!1181602) (not e!1799097))))

(assert (=> b!2840053 (= res!1181602 (and (not (is-Nil!33617 tokensBis!14)) (is-Cons!33617 tokens!612)))))

(declare-fun b!2840054 () Bool)

(declare-fun e!1799104 () Bool)

(declare-fun tp!909636 () Bool)

(assert (=> b!2840054 (= e!1799099 (and e!1799104 tp!909636))))

(declare-fun b!2840055 () Bool)

(declare-fun e!1799096 () Bool)

(assert (=> b!2840055 (= e!1799096 (not (subseq!521 (t!232430 tokensBis!14) (t!232430 tokens!612))))))

(declare-fun b!2840056 () Bool)

(declare-fun res!1181601 () Bool)

(assert (=> b!2840056 (=> (not res!1181601) (not e!1799097))))

(assert (=> b!2840056 (= res!1181601 (subseq!521 tokensBis!14 (t!232430 tokens!612)))))

(declare-fun tp!909645 () Bool)

(declare-fun b!2840057 () Bool)

(declare-fun inv!45589 (Token!9512) Bool)

(assert (=> b!2840057 (= e!1799091 (and (inv!45589 (h!39037 tokensBis!14)) e!1799094 tp!909645))))

(declare-fun tp!909643 () Bool)

(declare-fun b!2840058 () Bool)

(assert (=> b!2840058 (= e!1799095 (and (inv!45589 (h!39037 tokens!612)) e!1799100 tp!909643))))

(declare-fun e!1799092 () Bool)

(declare-fun b!2840059 () Bool)

(declare-fun tp!909638 () Bool)

(assert (=> b!2840059 (= e!1799098 (and tp!909638 (inv!45585 (tag!5559 (rule!7483 (h!39037 tokensBis!14)))) (inv!45588 (transformation!5055 (rule!7483 (h!39037 tokensBis!14)))) e!1799092))))

(declare-fun b!2840060 () Bool)

(declare-fun res!1181605 () Bool)

(assert (=> b!2840060 (=> (not res!1181605) (not e!1799097))))

(assert (=> b!2840060 (= res!1181605 e!1799096)))

(declare-fun res!1181604 () Bool)

(assert (=> b!2840060 (=> res!1181604 e!1799096)))

(assert (=> b!2840060 (= res!1181604 (not (= (h!39037 tokensBis!14) (h!39037 tokens!612))))))

(assert (=> b!2840061 (= e!1799092 (and tp!909642 tp!909641))))

(declare-fun e!1799101 () Bool)

(assert (=> b!2840062 (= e!1799101 (and tp!909646 tp!909640))))

(assert (=> b!2840063 (= e!1799102 (and tp!909635 tp!909648))))

(declare-fun tp!909637 () Bool)

(declare-fun b!2840064 () Bool)

(assert (=> b!2840064 (= e!1799104 (and tp!909637 (inv!45585 (tag!5559 (h!39036 rules!4246))) (inv!45588 (transformation!5055 (h!39036 rules!4246))) e!1799101))))

(declare-fun b!2840065 () Bool)

(declare-fun res!1181607 () Bool)

(assert (=> b!2840065 (=> (not res!1181607) (not e!1799097))))

(assert (=> b!2840065 (= res!1181607 (rulesProduceEachTokenIndividuallyList!1686 thiss!27264 rules!4246 tokens!612))))

(declare-fun b!2840066 () Bool)

(declare-fun res!1181606 () Bool)

(assert (=> b!2840066 (=> (not res!1181606) (not e!1799097))))

(declare-fun isEmpty!18512 (List!33740) Bool)

(assert (=> b!2840066 (= res!1181606 (not (isEmpty!18512 rules!4246)))))

(assert (= (and start!276210 res!1181600) b!2840066))

(assert (= (and b!2840066 res!1181606) b!2840047))

(assert (= (and b!2840047 res!1181608) b!2840051))

(assert (= (and b!2840051 res!1181603) b!2840065))

(assert (= (and b!2840065 res!1181607) b!2840053))

(assert (= (and b!2840053 res!1181602) b!2840060))

(assert (= (and b!2840060 (not res!1181604)) b!2840055))

(assert (= (and b!2840060 res!1181605) b!2840056))

(assert (= (and b!2840056 res!1181601) b!2840052))

(assert (= b!2840064 b!2840062))

(assert (= b!2840054 b!2840064))

(assert (= (and start!276210 (is-Cons!33616 rules!4246)) b!2840054))

(assert (= b!2840059 b!2840061))

(assert (= b!2840049 b!2840059))

(assert (= b!2840057 b!2840049))

(assert (= (and start!276210 (is-Cons!33617 tokensBis!14)) b!2840057))

(assert (= b!2840050 b!2840063))

(assert (= b!2840048 b!2840050))

(assert (= b!2840058 b!2840048))

(assert (= (and start!276210 (is-Cons!33617 tokens!612)) b!2840058))

(declare-fun m!3268619 () Bool)

(assert (=> b!2840047 m!3268619))

(declare-fun m!3268621 () Bool)

(assert (=> b!2840065 m!3268621))

(declare-fun m!3268623 () Bool)

(assert (=> b!2840059 m!3268623))

(declare-fun m!3268625 () Bool)

(assert (=> b!2840059 m!3268625))

(declare-fun m!3268627 () Bool)

(assert (=> b!2840066 m!3268627))

(declare-fun m!3268629 () Bool)

(assert (=> b!2840048 m!3268629))

(declare-fun m!3268631 () Bool)

(assert (=> b!2840050 m!3268631))

(declare-fun m!3268633 () Bool)

(assert (=> b!2840050 m!3268633))

(declare-fun m!3268635 () Bool)

(assert (=> b!2840064 m!3268635))

(declare-fun m!3268637 () Bool)

(assert (=> b!2840064 m!3268637))

(declare-fun m!3268639 () Bool)

(assert (=> b!2840049 m!3268639))

(declare-fun m!3268641 () Bool)

(assert (=> b!2840057 m!3268641))

(declare-fun m!3268643 () Bool)

(assert (=> b!2840056 m!3268643))

(declare-fun m!3268645 () Bool)

(assert (=> b!2840055 m!3268645))

(declare-fun m!3268647 () Bool)

(assert (=> b!2840058 m!3268647))

(declare-fun m!3268649 () Bool)

(assert (=> b!2840051 m!3268649))

(declare-fun m!3268651 () Bool)

(assert (=> b!2840052 m!3268651))

(push 1)

(assert (not b_next!82991))

(assert (not b!2840064))

(assert (not b_next!82997))

(assert (not b!2840048))

(assert b_and!208307)

(assert (not b!2840059))

(assert (not b!2840055))

(assert b_and!208309)

(assert (not b!2840047))

(assert (not b!2840065))

(assert (not b_next!82989))

(assert (not b!2840056))

(assert b_and!208299)

(assert (not b!2840066))

(assert b_and!208303)

(assert (not b_next!82995))

(assert (not b!2840051))

(assert (not b!2840054))

(assert (not b_next!82999))

(assert (not b!2840050))

(assert (not b!2840049))

(assert (not b!2840057))

(assert (not b!2840058))

(assert (not b!2840052))

(assert b_and!208305)

(assert (not b_next!82993))

(assert b_and!208301)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!82991))

(assert (not b_next!82999))

(assert (not b_next!82997))

(assert b_and!208307)

(assert b_and!208305)

(assert b_and!208309)

(assert (not b_next!82989))

(assert b_and!208299)

(assert b_and!208303)

(assert (not b_next!82995))

(assert (not b_next!82993))

(assert b_and!208301)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!823656 () Bool)

(declare-fun res!1181652 () Bool)

(declare-fun e!1799169 () Bool)

(assert (=> d!823656 (=> res!1181652 e!1799169)))

(assert (=> d!823656 (= res!1181652 (is-Nil!33617 tokensBis!14))))

(assert (=> d!823656 (= (subseq!521 tokensBis!14 tokens!612) e!1799169)))

(declare-fun b!2840138 () Bool)

(declare-fun e!1799171 () Bool)

(assert (=> b!2840138 (= e!1799171 (subseq!521 tokensBis!14 (t!232430 tokens!612)))))

(declare-fun b!2840137 () Bool)

(declare-fun e!1799168 () Bool)

(assert (=> b!2840137 (= e!1799168 (subseq!521 (t!232430 tokensBis!14) (t!232430 tokens!612)))))

(declare-fun b!2840136 () Bool)

(declare-fun e!1799170 () Bool)

(assert (=> b!2840136 (= e!1799170 e!1799171)))

(declare-fun res!1181654 () Bool)

(assert (=> b!2840136 (=> res!1181654 e!1799171)))

(assert (=> b!2840136 (= res!1181654 e!1799168)))

(declare-fun res!1181655 () Bool)

(assert (=> b!2840136 (=> (not res!1181655) (not e!1799168))))

(assert (=> b!2840136 (= res!1181655 (= (h!39037 tokensBis!14) (h!39037 tokens!612)))))

(declare-fun b!2840135 () Bool)

(assert (=> b!2840135 (= e!1799169 e!1799170)))

(declare-fun res!1181653 () Bool)

(assert (=> b!2840135 (=> (not res!1181653) (not e!1799170))))

(assert (=> b!2840135 (= res!1181653 (is-Cons!33617 tokens!612))))

(assert (= (and d!823656 (not res!1181652)) b!2840135))

(assert (= (and b!2840135 res!1181653) b!2840136))

(assert (= (and b!2840136 res!1181655) b!2840137))

(assert (= (and b!2840136 (not res!1181654)) b!2840138))

(assert (=> b!2840138 m!3268643))

(assert (=> b!2840137 m!3268645))

(assert (=> b!2840051 d!823656))

(declare-fun d!823660 () Bool)

(assert (=> d!823660 (= (inv!45585 (tag!5559 (rule!7483 (h!39037 tokens!612)))) (= (mod (str.len (value!162412 (tag!5559 (rule!7483 (h!39037 tokens!612))))) 2) 0))))

(assert (=> b!2840050 d!823660))

(declare-fun d!823662 () Bool)

(declare-fun res!1181660 () Bool)

(declare-fun e!1799176 () Bool)

(assert (=> d!823662 (=> (not res!1181660) (not e!1799176))))

(declare-fun semiInverseModEq!2104 (Int Int) Bool)

(assert (=> d!823662 (= res!1181660 (semiInverseModEq!2104 (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612)))) (toValue!7097 (transformation!5055 (rule!7483 (h!39037 tokens!612))))))))

(assert (=> d!823662 (= (inv!45588 (transformation!5055 (rule!7483 (h!39037 tokens!612)))) e!1799176)))

(declare-fun b!2840143 () Bool)

(declare-fun equivClasses!2003 (Int Int) Bool)

(assert (=> b!2840143 (= e!1799176 (equivClasses!2003 (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612)))) (toValue!7097 (transformation!5055 (rule!7483 (h!39037 tokens!612))))))))

(assert (= (and d!823662 res!1181660) b!2840143))

(declare-fun m!3268687 () Bool)

(assert (=> d!823662 m!3268687))

(declare-fun m!3268689 () Bool)

(assert (=> b!2840143 m!3268689))

(assert (=> b!2840050 d!823662))

(declare-fun b!2840165 () Bool)

(declare-fun e!1799196 () Bool)

(assert (=> b!2840165 (= e!1799196 true)))

(declare-fun b!2840164 () Bool)

(declare-fun e!1799195 () Bool)

(assert (=> b!2840164 (= e!1799195 e!1799196)))

(declare-fun b!2840163 () Bool)

(declare-fun e!1799194 () Bool)

(assert (=> b!2840163 (= e!1799194 e!1799195)))

(declare-fun d!823664 () Bool)

(assert (=> d!823664 e!1799194))

(assert (= b!2840164 b!2840165))

(assert (= b!2840163 b!2840164))

(assert (= (and d!823664 (is-Cons!33616 rules!4246)) b!2840163))

(declare-fun order!17965 () Int)

(declare-fun order!17967 () Int)

(declare-fun lambda!104226 () Int)

(declare-fun dynLambda!14140 (Int Int) Int)

(declare-fun dynLambda!14141 (Int Int) Int)

(assert (=> b!2840165 (< (dynLambda!14140 order!17965 (toValue!7097 (transformation!5055 (h!39036 rules!4246)))) (dynLambda!14141 order!17967 lambda!104226))))

(declare-fun order!17969 () Int)

(declare-fun dynLambda!14142 (Int Int) Int)

(assert (=> b!2840165 (< (dynLambda!14142 order!17969 (toChars!6956 (transformation!5055 (h!39036 rules!4246)))) (dynLambda!14141 order!17967 lambda!104226))))

(assert (=> d!823664 true))

(declare-fun lt!1011564 () Bool)

(declare-fun forall!6910 (List!33741 Int) Bool)

(assert (=> d!823664 (= lt!1011564 (forall!6910 (t!232430 tokens!612) lambda!104226))))

(declare-fun e!1799186 () Bool)

(assert (=> d!823664 (= lt!1011564 e!1799186)))

(declare-fun res!1181671 () Bool)

(assert (=> d!823664 (=> res!1181671 e!1799186)))

(assert (=> d!823664 (= res!1181671 (not (is-Cons!33617 (t!232430 tokens!612))))))

(assert (=> d!823664 (not (isEmpty!18512 rules!4246))))

(assert (=> d!823664 (= (rulesProduceEachTokenIndividuallyList!1686 thiss!27264 rules!4246 (t!232430 tokens!612)) lt!1011564)))

(declare-fun b!2840153 () Bool)

(declare-fun e!1799187 () Bool)

(assert (=> b!2840153 (= e!1799186 e!1799187)))

(declare-fun res!1181670 () Bool)

(assert (=> b!2840153 (=> (not res!1181670) (not e!1799187))))

(declare-fun rulesProduceIndividualToken!2157 (LexerInterface!4645 List!33740 Token!9512) Bool)

(assert (=> b!2840153 (= res!1181670 (rulesProduceIndividualToken!2157 thiss!27264 rules!4246 (h!39037 (t!232430 tokens!612))))))

(declare-fun b!2840154 () Bool)

(assert (=> b!2840154 (= e!1799187 (rulesProduceEachTokenIndividuallyList!1686 thiss!27264 rules!4246 (t!232430 (t!232430 tokens!612))))))

(assert (= (and d!823664 (not res!1181671)) b!2840153))

(assert (= (and b!2840153 res!1181670) b!2840154))

(declare-fun m!3268695 () Bool)

(assert (=> d!823664 m!3268695))

(assert (=> d!823664 m!3268627))

(declare-fun m!3268697 () Bool)

(assert (=> b!2840153 m!3268697))

(declare-fun m!3268699 () Bool)

(assert (=> b!2840154 m!3268699))

(assert (=> b!2840052 d!823664))

(declare-fun d!823668 () Bool)

(assert (=> d!823668 (= (inv!45585 (tag!5559 (h!39036 rules!4246))) (= (mod (str.len (value!162412 (tag!5559 (h!39036 rules!4246)))) 2) 0))))

(assert (=> b!2840064 d!823668))

(declare-fun d!823670 () Bool)

(declare-fun res!1181672 () Bool)

(declare-fun e!1799197 () Bool)

(assert (=> d!823670 (=> (not res!1181672) (not e!1799197))))

(assert (=> d!823670 (= res!1181672 (semiInverseModEq!2104 (toChars!6956 (transformation!5055 (h!39036 rules!4246))) (toValue!7097 (transformation!5055 (h!39036 rules!4246)))))))

(assert (=> d!823670 (= (inv!45588 (transformation!5055 (h!39036 rules!4246))) e!1799197)))

(declare-fun b!2840168 () Bool)

(assert (=> b!2840168 (= e!1799197 (equivClasses!2003 (toChars!6956 (transformation!5055 (h!39036 rules!4246))) (toValue!7097 (transformation!5055 (h!39036 rules!4246)))))))

(assert (= (and d!823670 res!1181672) b!2840168))

(declare-fun m!3268701 () Bool)

(assert (=> d!823670 m!3268701))

(declare-fun m!3268703 () Bool)

(assert (=> b!2840168 m!3268703))

(assert (=> b!2840064 d!823670))

(declare-fun d!823672 () Bool)

(declare-fun res!1181673 () Bool)

(declare-fun e!1799199 () Bool)

(assert (=> d!823672 (=> res!1181673 e!1799199)))

(assert (=> d!823672 (= res!1181673 (is-Nil!33617 (t!232430 tokensBis!14)))))

(assert (=> d!823672 (= (subseq!521 (t!232430 tokensBis!14) (t!232430 tokens!612)) e!1799199)))

(declare-fun b!2840172 () Bool)

(declare-fun e!1799201 () Bool)

(assert (=> b!2840172 (= e!1799201 (subseq!521 (t!232430 tokensBis!14) (t!232430 (t!232430 tokens!612))))))

(declare-fun b!2840171 () Bool)

(declare-fun e!1799198 () Bool)

(assert (=> b!2840171 (= e!1799198 (subseq!521 (t!232430 (t!232430 tokensBis!14)) (t!232430 (t!232430 tokens!612))))))

(declare-fun b!2840170 () Bool)

(declare-fun e!1799200 () Bool)

(assert (=> b!2840170 (= e!1799200 e!1799201)))

(declare-fun res!1181675 () Bool)

(assert (=> b!2840170 (=> res!1181675 e!1799201)))

(assert (=> b!2840170 (= res!1181675 e!1799198)))

(declare-fun res!1181676 () Bool)

(assert (=> b!2840170 (=> (not res!1181676) (not e!1799198))))

(assert (=> b!2840170 (= res!1181676 (= (h!39037 (t!232430 tokensBis!14)) (h!39037 (t!232430 tokens!612))))))

(declare-fun b!2840169 () Bool)

(assert (=> b!2840169 (= e!1799199 e!1799200)))

(declare-fun res!1181674 () Bool)

(assert (=> b!2840169 (=> (not res!1181674) (not e!1799200))))

(assert (=> b!2840169 (= res!1181674 (is-Cons!33617 (t!232430 tokens!612)))))

(assert (= (and d!823672 (not res!1181673)) b!2840169))

(assert (= (and b!2840169 res!1181674) b!2840170))

(assert (= (and b!2840170 res!1181676) b!2840171))

(assert (= (and b!2840170 (not res!1181675)) b!2840172))

(declare-fun m!3268705 () Bool)

(assert (=> b!2840172 m!3268705))

(declare-fun m!3268707 () Bool)

(assert (=> b!2840171 m!3268707))

(assert (=> b!2840055 d!823672))

(declare-fun bs!518874 () Bool)

(declare-fun d!823674 () Bool)

(assert (= bs!518874 (and d!823674 d!823664)))

(declare-fun lambda!104227 () Int)

(assert (=> bs!518874 (= lambda!104227 lambda!104226)))

(declare-fun b!2840177 () Bool)

(declare-fun e!1799206 () Bool)

(assert (=> b!2840177 (= e!1799206 true)))

(declare-fun b!2840176 () Bool)

(declare-fun e!1799205 () Bool)

(assert (=> b!2840176 (= e!1799205 e!1799206)))

(declare-fun b!2840175 () Bool)

(declare-fun e!1799204 () Bool)

(assert (=> b!2840175 (= e!1799204 e!1799205)))

(assert (=> d!823674 e!1799204))

(assert (= b!2840176 b!2840177))

(assert (= b!2840175 b!2840176))

(assert (= (and d!823674 (is-Cons!33616 rules!4246)) b!2840175))

(assert (=> b!2840177 (< (dynLambda!14140 order!17965 (toValue!7097 (transformation!5055 (h!39036 rules!4246)))) (dynLambda!14141 order!17967 lambda!104227))))

(assert (=> b!2840177 (< (dynLambda!14142 order!17969 (toChars!6956 (transformation!5055 (h!39036 rules!4246)))) (dynLambda!14141 order!17967 lambda!104227))))

(assert (=> d!823674 true))

(declare-fun lt!1011565 () Bool)

(assert (=> d!823674 (= lt!1011565 (forall!6910 tokens!612 lambda!104227))))

(declare-fun e!1799202 () Bool)

(assert (=> d!823674 (= lt!1011565 e!1799202)))

(declare-fun res!1181678 () Bool)

(assert (=> d!823674 (=> res!1181678 e!1799202)))

(assert (=> d!823674 (= res!1181678 (not (is-Cons!33617 tokens!612)))))

(assert (=> d!823674 (not (isEmpty!18512 rules!4246))))

(assert (=> d!823674 (= (rulesProduceEachTokenIndividuallyList!1686 thiss!27264 rules!4246 tokens!612) lt!1011565)))

(declare-fun b!2840173 () Bool)

(declare-fun e!1799203 () Bool)

(assert (=> b!2840173 (= e!1799202 e!1799203)))

(declare-fun res!1181677 () Bool)

(assert (=> b!2840173 (=> (not res!1181677) (not e!1799203))))

(assert (=> b!2840173 (= res!1181677 (rulesProduceIndividualToken!2157 thiss!27264 rules!4246 (h!39037 tokens!612)))))

(declare-fun b!2840174 () Bool)

(assert (=> b!2840174 (= e!1799203 (rulesProduceEachTokenIndividuallyList!1686 thiss!27264 rules!4246 (t!232430 tokens!612)))))

(assert (= (and d!823674 (not res!1181678)) b!2840173))

(assert (= (and b!2840173 res!1181677) b!2840174))

(declare-fun m!3268709 () Bool)

(assert (=> d!823674 m!3268709))

(assert (=> d!823674 m!3268627))

(declare-fun m!3268711 () Bool)

(assert (=> b!2840173 m!3268711))

(assert (=> b!2840174 m!3268651))

(assert (=> b!2840065 d!823674))

(declare-fun d!823676 () Bool)

(declare-fun res!1181679 () Bool)

(declare-fun e!1799208 () Bool)

(assert (=> d!823676 (=> res!1181679 e!1799208)))

(assert (=> d!823676 (= res!1181679 (is-Nil!33617 tokensBis!14))))

(assert (=> d!823676 (= (subseq!521 tokensBis!14 (t!232430 tokens!612)) e!1799208)))

(declare-fun b!2840181 () Bool)

(declare-fun e!1799210 () Bool)

(assert (=> b!2840181 (= e!1799210 (subseq!521 tokensBis!14 (t!232430 (t!232430 tokens!612))))))

(declare-fun b!2840180 () Bool)

(declare-fun e!1799207 () Bool)

(assert (=> b!2840180 (= e!1799207 (subseq!521 (t!232430 tokensBis!14) (t!232430 (t!232430 tokens!612))))))

(declare-fun b!2840179 () Bool)

(declare-fun e!1799209 () Bool)

(assert (=> b!2840179 (= e!1799209 e!1799210)))

(declare-fun res!1181681 () Bool)

(assert (=> b!2840179 (=> res!1181681 e!1799210)))

(assert (=> b!2840179 (= res!1181681 e!1799207)))

(declare-fun res!1181682 () Bool)

(assert (=> b!2840179 (=> (not res!1181682) (not e!1799207))))

(assert (=> b!2840179 (= res!1181682 (= (h!39037 tokensBis!14) (h!39037 (t!232430 tokens!612))))))

(declare-fun b!2840178 () Bool)

(assert (=> b!2840178 (= e!1799208 e!1799209)))

(declare-fun res!1181680 () Bool)

(assert (=> b!2840178 (=> (not res!1181680) (not e!1799209))))

(assert (=> b!2840178 (= res!1181680 (is-Cons!33617 (t!232430 tokens!612)))))

(assert (= (and d!823676 (not res!1181679)) b!2840178))

(assert (= (and b!2840178 res!1181680) b!2840179))

(assert (= (and b!2840179 res!1181682) b!2840180))

(assert (= (and b!2840179 (not res!1181681)) b!2840181))

(declare-fun m!3268713 () Bool)

(assert (=> b!2840181 m!3268713))

(assert (=> b!2840180 m!3268705))

(assert (=> b!2840056 d!823676))

(declare-fun d!823678 () Bool)

(assert (=> d!823678 (= (isEmpty!18512 rules!4246) (is-Nil!33616 rules!4246))))

(assert (=> b!2840066 d!823678))

(declare-fun d!823680 () Bool)

(declare-fun res!1181685 () Bool)

(declare-fun e!1799213 () Bool)

(assert (=> d!823680 (=> (not res!1181685) (not e!1799213))))

(declare-fun rulesValid!1874 (LexerInterface!4645 List!33740) Bool)

(assert (=> d!823680 (= res!1181685 (rulesValid!1874 thiss!27264 rules!4246))))

(assert (=> d!823680 (= (rulesInvariant!4061 thiss!27264 rules!4246) e!1799213)))

(declare-fun b!2840184 () Bool)

(declare-datatypes ((List!33746 0))(
  ( (Nil!33622) (Cons!33622 (h!39042 String!36948) (t!232463 List!33746)) )
))
(declare-fun noDuplicateTag!1870 (LexerInterface!4645 List!33740 List!33746) Bool)

(assert (=> b!2840184 (= e!1799213 (noDuplicateTag!1870 thiss!27264 rules!4246 Nil!33622))))

(assert (= (and d!823680 res!1181685) b!2840184))

(declare-fun m!3268715 () Bool)

(assert (=> d!823680 m!3268715))

(declare-fun m!3268717 () Bool)

(assert (=> b!2840184 m!3268717))

(assert (=> b!2840047 d!823680))

(declare-fun d!823682 () Bool)

(declare-fun res!1181690 () Bool)

(declare-fun e!1799216 () Bool)

(assert (=> d!823682 (=> (not res!1181690) (not e!1799216))))

(declare-fun isEmpty!18514 (List!33738) Bool)

(assert (=> d!823682 (= res!1181690 (not (isEmpty!18514 (originalCharacters!5787 (h!39037 tokensBis!14)))))))

(assert (=> d!823682 (= (inv!45589 (h!39037 tokensBis!14)) e!1799216)))

(declare-fun b!2840189 () Bool)

(declare-fun res!1181691 () Bool)

(assert (=> b!2840189 (=> (not res!1181691) (not e!1799216))))

(declare-fun list!12533 (BalanceConc!20508) List!33738)

(declare-fun dynLambda!14143 (Int TokenValue!5285) BalanceConc!20508)

(assert (=> b!2840189 (= res!1181691 (= (originalCharacters!5787 (h!39037 tokensBis!14)) (list!12533 (dynLambda!14143 (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14)))) (value!162438 (h!39037 tokensBis!14))))))))

(declare-fun b!2840190 () Bool)

(declare-fun size!26102 (List!33738) Int)

(assert (=> b!2840190 (= e!1799216 (= (size!26100 (h!39037 tokensBis!14)) (size!26102 (originalCharacters!5787 (h!39037 tokensBis!14)))))))

(assert (= (and d!823682 res!1181690) b!2840189))

(assert (= (and b!2840189 res!1181691) b!2840190))

(declare-fun b_lambda!85375 () Bool)

(assert (=> (not b_lambda!85375) (not b!2840189)))

(declare-fun t!232440 () Bool)

(declare-fun tb!154805 () Bool)

(assert (=> (and b!2840062 (= (toChars!6956 (transformation!5055 (h!39036 rules!4246))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14))))) t!232440) tb!154805))

(declare-fun b!2840195 () Bool)

(declare-fun e!1799219 () Bool)

(declare-fun tp!909693 () Bool)

(declare-fun inv!45592 (Conc!10435) Bool)

(assert (=> b!2840195 (= e!1799219 (and (inv!45592 (c!458561 (dynLambda!14143 (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14)))) (value!162438 (h!39037 tokensBis!14))))) tp!909693))))

(declare-fun result!193110 () Bool)

(declare-fun inv!45593 (BalanceConc!20508) Bool)

(assert (=> tb!154805 (= result!193110 (and (inv!45593 (dynLambda!14143 (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14)))) (value!162438 (h!39037 tokensBis!14)))) e!1799219))))

(assert (= tb!154805 b!2840195))

(declare-fun m!3268719 () Bool)

(assert (=> b!2840195 m!3268719))

(declare-fun m!3268721 () Bool)

(assert (=> tb!154805 m!3268721))

(assert (=> b!2840189 t!232440))

(declare-fun b_and!208323 () Bool)

(assert (= b_and!208301 (and (=> t!232440 result!193110) b_and!208323)))

(declare-fun t!232442 () Bool)

(declare-fun tb!154807 () Bool)

(assert (=> (and b!2840061 (= (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14)))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14))))) t!232442) tb!154807))

(declare-fun result!193114 () Bool)

(assert (= result!193114 result!193110))

(assert (=> b!2840189 t!232442))

(declare-fun b_and!208325 () Bool)

(assert (= b_and!208305 (and (=> t!232442 result!193114) b_and!208325)))

(declare-fun tb!154809 () Bool)

(declare-fun t!232444 () Bool)

(assert (=> (and b!2840063 (= (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612)))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14))))) t!232444) tb!154809))

(declare-fun result!193116 () Bool)

(assert (= result!193116 result!193110))

(assert (=> b!2840189 t!232444))

(declare-fun b_and!208327 () Bool)

(assert (= b_and!208309 (and (=> t!232444 result!193116) b_and!208327)))

(declare-fun m!3268723 () Bool)

(assert (=> d!823682 m!3268723))

(declare-fun m!3268725 () Bool)

(assert (=> b!2840189 m!3268725))

(assert (=> b!2840189 m!3268725))

(declare-fun m!3268727 () Bool)

(assert (=> b!2840189 m!3268727))

(declare-fun m!3268729 () Bool)

(assert (=> b!2840190 m!3268729))

(assert (=> b!2840057 d!823682))

(declare-fun d!823684 () Bool)

(assert (=> d!823684 (= (inv!45585 (tag!5559 (rule!7483 (h!39037 tokensBis!14)))) (= (mod (str.len (value!162412 (tag!5559 (rule!7483 (h!39037 tokensBis!14))))) 2) 0))))

(assert (=> b!2840059 d!823684))

(declare-fun d!823686 () Bool)

(declare-fun res!1181692 () Bool)

(declare-fun e!1799220 () Bool)

(assert (=> d!823686 (=> (not res!1181692) (not e!1799220))))

(assert (=> d!823686 (= res!1181692 (semiInverseModEq!2104 (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14)))) (toValue!7097 (transformation!5055 (rule!7483 (h!39037 tokensBis!14))))))))

(assert (=> d!823686 (= (inv!45588 (transformation!5055 (rule!7483 (h!39037 tokensBis!14)))) e!1799220)))

(declare-fun b!2840196 () Bool)

(assert (=> b!2840196 (= e!1799220 (equivClasses!2003 (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14)))) (toValue!7097 (transformation!5055 (rule!7483 (h!39037 tokensBis!14))))))))

(assert (= (and d!823686 res!1181692) b!2840196))

(declare-fun m!3268731 () Bool)

(assert (=> d!823686 m!3268731))

(declare-fun m!3268733 () Bool)

(assert (=> b!2840196 m!3268733))

(assert (=> b!2840059 d!823686))

(declare-fun b!2840207 () Bool)

(declare-fun e!1799227 () Bool)

(declare-fun inv!17 (TokenValue!5285) Bool)

(assert (=> b!2840207 (= e!1799227 (inv!17 (value!162438 (h!39037 tokens!612))))))

(declare-fun d!823688 () Bool)

(declare-fun c!458569 () Bool)

(assert (=> d!823688 (= c!458569 (is-IntegerValue!15855 (value!162438 (h!39037 tokens!612))))))

(declare-fun e!1799229 () Bool)

(assert (=> d!823688 (= (inv!21 (value!162438 (h!39037 tokens!612))) e!1799229)))

(declare-fun b!2840208 () Bool)

(declare-fun e!1799228 () Bool)

(declare-fun inv!15 (TokenValue!5285) Bool)

(assert (=> b!2840208 (= e!1799228 (inv!15 (value!162438 (h!39037 tokens!612))))))

(declare-fun b!2840209 () Bool)

(assert (=> b!2840209 (= e!1799229 e!1799227)))

(declare-fun c!458568 () Bool)

(assert (=> b!2840209 (= c!458568 (is-IntegerValue!15856 (value!162438 (h!39037 tokens!612))))))

(declare-fun b!2840210 () Bool)

(declare-fun inv!16 (TokenValue!5285) Bool)

(assert (=> b!2840210 (= e!1799229 (inv!16 (value!162438 (h!39037 tokens!612))))))

(declare-fun b!2840211 () Bool)

(declare-fun res!1181695 () Bool)

(assert (=> b!2840211 (=> res!1181695 e!1799228)))

(assert (=> b!2840211 (= res!1181695 (not (is-IntegerValue!15857 (value!162438 (h!39037 tokens!612)))))))

(assert (=> b!2840211 (= e!1799227 e!1799228)))

(assert (= (and d!823688 c!458569) b!2840210))

(assert (= (and d!823688 (not c!458569)) b!2840209))

(assert (= (and b!2840209 c!458568) b!2840207))

(assert (= (and b!2840209 (not c!458568)) b!2840211))

(assert (= (and b!2840211 (not res!1181695)) b!2840208))

(declare-fun m!3268735 () Bool)

(assert (=> b!2840207 m!3268735))

(declare-fun m!3268737 () Bool)

(assert (=> b!2840208 m!3268737))

(declare-fun m!3268739 () Bool)

(assert (=> b!2840210 m!3268739))

(assert (=> b!2840048 d!823688))

(declare-fun d!823690 () Bool)

(declare-fun res!1181696 () Bool)

(declare-fun e!1799230 () Bool)

(assert (=> d!823690 (=> (not res!1181696) (not e!1799230))))

(assert (=> d!823690 (= res!1181696 (not (isEmpty!18514 (originalCharacters!5787 (h!39037 tokens!612)))))))

(assert (=> d!823690 (= (inv!45589 (h!39037 tokens!612)) e!1799230)))

(declare-fun b!2840212 () Bool)

(declare-fun res!1181697 () Bool)

(assert (=> b!2840212 (=> (not res!1181697) (not e!1799230))))

(assert (=> b!2840212 (= res!1181697 (= (originalCharacters!5787 (h!39037 tokens!612)) (list!12533 (dynLambda!14143 (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612)))) (value!162438 (h!39037 tokens!612))))))))

(declare-fun b!2840213 () Bool)

(assert (=> b!2840213 (= e!1799230 (= (size!26100 (h!39037 tokens!612)) (size!26102 (originalCharacters!5787 (h!39037 tokens!612)))))))

(assert (= (and d!823690 res!1181696) b!2840212))

(assert (= (and b!2840212 res!1181697) b!2840213))

(declare-fun b_lambda!85377 () Bool)

(assert (=> (not b_lambda!85377) (not b!2840212)))

(declare-fun tb!154811 () Bool)

(declare-fun t!232446 () Bool)

(assert (=> (and b!2840062 (= (toChars!6956 (transformation!5055 (h!39036 rules!4246))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612))))) t!232446) tb!154811))

(declare-fun b!2840214 () Bool)

(declare-fun e!1799231 () Bool)

(declare-fun tp!909694 () Bool)

(assert (=> b!2840214 (= e!1799231 (and (inv!45592 (c!458561 (dynLambda!14143 (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612)))) (value!162438 (h!39037 tokens!612))))) tp!909694))))

(declare-fun result!193118 () Bool)

(assert (=> tb!154811 (= result!193118 (and (inv!45593 (dynLambda!14143 (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612)))) (value!162438 (h!39037 tokens!612)))) e!1799231))))

(assert (= tb!154811 b!2840214))

(declare-fun m!3268741 () Bool)

(assert (=> b!2840214 m!3268741))

(declare-fun m!3268743 () Bool)

(assert (=> tb!154811 m!3268743))

(assert (=> b!2840212 t!232446))

(declare-fun b_and!208329 () Bool)

(assert (= b_and!208323 (and (=> t!232446 result!193118) b_and!208329)))

(declare-fun t!232448 () Bool)

(declare-fun tb!154813 () Bool)

(assert (=> (and b!2840061 (= (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14)))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612))))) t!232448) tb!154813))

(declare-fun result!193120 () Bool)

(assert (= result!193120 result!193118))

(assert (=> b!2840212 t!232448))

(declare-fun b_and!208331 () Bool)

(assert (= b_and!208325 (and (=> t!232448 result!193120) b_and!208331)))

(declare-fun t!232450 () Bool)

(declare-fun tb!154815 () Bool)

(assert (=> (and b!2840063 (= (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612)))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612))))) t!232450) tb!154815))

(declare-fun result!193122 () Bool)

(assert (= result!193122 result!193118))

(assert (=> b!2840212 t!232450))

(declare-fun b_and!208333 () Bool)

(assert (= b_and!208327 (and (=> t!232450 result!193122) b_and!208333)))

(declare-fun m!3268745 () Bool)

(assert (=> d!823690 m!3268745))

(declare-fun m!3268747 () Bool)

(assert (=> b!2840212 m!3268747))

(assert (=> b!2840212 m!3268747))

(declare-fun m!3268749 () Bool)

(assert (=> b!2840212 m!3268749))

(declare-fun m!3268751 () Bool)

(assert (=> b!2840213 m!3268751))

(assert (=> b!2840058 d!823690))

(declare-fun b!2840215 () Bool)

(declare-fun e!1799232 () Bool)

(assert (=> b!2840215 (= e!1799232 (inv!17 (value!162438 (h!39037 tokensBis!14))))))

(declare-fun d!823692 () Bool)

(declare-fun c!458571 () Bool)

(assert (=> d!823692 (= c!458571 (is-IntegerValue!15855 (value!162438 (h!39037 tokensBis!14))))))

(declare-fun e!1799234 () Bool)

(assert (=> d!823692 (= (inv!21 (value!162438 (h!39037 tokensBis!14))) e!1799234)))

(declare-fun b!2840216 () Bool)

(declare-fun e!1799233 () Bool)

(assert (=> b!2840216 (= e!1799233 (inv!15 (value!162438 (h!39037 tokensBis!14))))))

(declare-fun b!2840217 () Bool)

(assert (=> b!2840217 (= e!1799234 e!1799232)))

(declare-fun c!458570 () Bool)

(assert (=> b!2840217 (= c!458570 (is-IntegerValue!15856 (value!162438 (h!39037 tokensBis!14))))))

(declare-fun b!2840218 () Bool)

(assert (=> b!2840218 (= e!1799234 (inv!16 (value!162438 (h!39037 tokensBis!14))))))

(declare-fun b!2840219 () Bool)

(declare-fun res!1181698 () Bool)

(assert (=> b!2840219 (=> res!1181698 e!1799233)))

(assert (=> b!2840219 (= res!1181698 (not (is-IntegerValue!15857 (value!162438 (h!39037 tokensBis!14)))))))

(assert (=> b!2840219 (= e!1799232 e!1799233)))

(assert (= (and d!823692 c!458571) b!2840218))

(assert (= (and d!823692 (not c!458571)) b!2840217))

(assert (= (and b!2840217 c!458570) b!2840215))

(assert (= (and b!2840217 (not c!458570)) b!2840219))

(assert (= (and b!2840219 (not res!1181698)) b!2840216))

(declare-fun m!3268753 () Bool)

(assert (=> b!2840215 m!3268753))

(declare-fun m!3268755 () Bool)

(assert (=> b!2840216 m!3268755))

(declare-fun m!3268757 () Bool)

(assert (=> b!2840218 m!3268757))

(assert (=> b!2840049 d!823692))

(declare-fun b!2840233 () Bool)

(declare-fun e!1799237 () Bool)

(declare-fun tp!909709 () Bool)

(declare-fun tp!909706 () Bool)

(assert (=> b!2840233 (= e!1799237 (and tp!909709 tp!909706))))

(declare-fun b!2840232 () Bool)

(declare-fun tp!909705 () Bool)

(assert (=> b!2840232 (= e!1799237 tp!909705)))

(declare-fun b!2840231 () Bool)

(declare-fun tp!909708 () Bool)

(declare-fun tp!909707 () Bool)

(assert (=> b!2840231 (= e!1799237 (and tp!909708 tp!909707))))

(declare-fun b!2840230 () Bool)

(declare-fun tp_is_empty!14621 () Bool)

(assert (=> b!2840230 (= e!1799237 tp_is_empty!14621)))

(assert (=> b!2840050 (= tp!909639 e!1799237)))

(assert (= (and b!2840050 (is-ElementMatch!8446 (regex!5055 (rule!7483 (h!39037 tokens!612))))) b!2840230))

(assert (= (and b!2840050 (is-Concat!13731 (regex!5055 (rule!7483 (h!39037 tokens!612))))) b!2840231))

(assert (= (and b!2840050 (is-Star!8446 (regex!5055 (rule!7483 (h!39037 tokens!612))))) b!2840232))

(assert (= (and b!2840050 (is-Union!8446 (regex!5055 (rule!7483 (h!39037 tokens!612))))) b!2840233))

(declare-fun b!2840237 () Bool)

(declare-fun e!1799238 () Bool)

(declare-fun tp!909714 () Bool)

(declare-fun tp!909711 () Bool)

(assert (=> b!2840237 (= e!1799238 (and tp!909714 tp!909711))))

(declare-fun b!2840236 () Bool)

(declare-fun tp!909710 () Bool)

(assert (=> b!2840236 (= e!1799238 tp!909710)))

(declare-fun b!2840235 () Bool)

(declare-fun tp!909713 () Bool)

(declare-fun tp!909712 () Bool)

(assert (=> b!2840235 (= e!1799238 (and tp!909713 tp!909712))))

(declare-fun b!2840234 () Bool)

(assert (=> b!2840234 (= e!1799238 tp_is_empty!14621)))

(assert (=> b!2840064 (= tp!909637 e!1799238)))

(assert (= (and b!2840064 (is-ElementMatch!8446 (regex!5055 (h!39036 rules!4246)))) b!2840234))

(assert (= (and b!2840064 (is-Concat!13731 (regex!5055 (h!39036 rules!4246)))) b!2840235))

(assert (= (and b!2840064 (is-Star!8446 (regex!5055 (h!39036 rules!4246)))) b!2840236))

(assert (= (and b!2840064 (is-Union!8446 (regex!5055 (h!39036 rules!4246)))) b!2840237))

(declare-fun b!2840248 () Bool)

(declare-fun b_free!82309 () Bool)

(declare-fun b_next!83013 () Bool)

(assert (=> b!2840248 (= b_free!82309 (not b_next!83013))))

(declare-fun tp!909726 () Bool)

(declare-fun b_and!208335 () Bool)

(assert (=> b!2840248 (= tp!909726 b_and!208335)))

(declare-fun b_free!82311 () Bool)

(declare-fun b_next!83015 () Bool)

(assert (=> b!2840248 (= b_free!82311 (not b_next!83015))))

(declare-fun tb!154817 () Bool)

(declare-fun t!232452 () Bool)

(assert (=> (and b!2840248 (= (toChars!6956 (transformation!5055 (h!39036 (t!232429 rules!4246)))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14))))) t!232452) tb!154817))

(declare-fun result!193128 () Bool)

(assert (= result!193128 result!193110))

(assert (=> b!2840189 t!232452))

(declare-fun tb!154819 () Bool)

(declare-fun t!232454 () Bool)

(assert (=> (and b!2840248 (= (toChars!6956 (transformation!5055 (h!39036 (t!232429 rules!4246)))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612))))) t!232454) tb!154819))

(declare-fun result!193130 () Bool)

(assert (= result!193130 result!193118))

(assert (=> b!2840212 t!232454))

(declare-fun b_and!208337 () Bool)

(declare-fun tp!909723 () Bool)

(assert (=> b!2840248 (= tp!909723 (and (=> t!232452 result!193128) (=> t!232454 result!193130) b_and!208337))))

(declare-fun e!1799249 () Bool)

(assert (=> b!2840248 (= e!1799249 (and tp!909726 tp!909723))))

(declare-fun b!2840247 () Bool)

(declare-fun tp!909724 () Bool)

(declare-fun e!1799247 () Bool)

(assert (=> b!2840247 (= e!1799247 (and tp!909724 (inv!45585 (tag!5559 (h!39036 (t!232429 rules!4246)))) (inv!45588 (transformation!5055 (h!39036 (t!232429 rules!4246)))) e!1799249))))

(declare-fun b!2840246 () Bool)

(declare-fun e!1799250 () Bool)

(declare-fun tp!909725 () Bool)

(assert (=> b!2840246 (= e!1799250 (and e!1799247 tp!909725))))

(assert (=> b!2840054 (= tp!909636 e!1799250)))

(assert (= b!2840247 b!2840248))

(assert (= b!2840246 b!2840247))

(assert (= (and b!2840054 (is-Cons!33616 (t!232429 rules!4246))) b!2840246))

(declare-fun m!3268759 () Bool)

(assert (=> b!2840247 m!3268759))

(declare-fun m!3268761 () Bool)

(assert (=> b!2840247 m!3268761))

(declare-fun b!2840262 () Bool)

(declare-fun b_free!82313 () Bool)

(declare-fun b_next!83017 () Bool)

(assert (=> b!2840262 (= b_free!82313 (not b_next!83017))))

(declare-fun tp!909740 () Bool)

(declare-fun b_and!208339 () Bool)

(assert (=> b!2840262 (= tp!909740 b_and!208339)))

(declare-fun b_free!82315 () Bool)

(declare-fun b_next!83019 () Bool)

(assert (=> b!2840262 (= b_free!82315 (not b_next!83019))))

(declare-fun t!232456 () Bool)

(declare-fun tb!154821 () Bool)

(assert (=> (and b!2840262 (= (toChars!6956 (transformation!5055 (rule!7483 (h!39037 (t!232430 tokensBis!14))))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14))))) t!232456) tb!154821))

(declare-fun result!193134 () Bool)

(assert (= result!193134 result!193110))

(assert (=> b!2840189 t!232456))

(declare-fun tb!154823 () Bool)

(declare-fun t!232458 () Bool)

(assert (=> (and b!2840262 (= (toChars!6956 (transformation!5055 (rule!7483 (h!39037 (t!232430 tokensBis!14))))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612))))) t!232458) tb!154823))

(declare-fun result!193136 () Bool)

(assert (= result!193136 result!193118))

(assert (=> b!2840212 t!232458))

(declare-fun b_and!208341 () Bool)

(declare-fun tp!909741 () Bool)

(assert (=> b!2840262 (= tp!909741 (and (=> t!232456 result!193134) (=> t!232458 result!193136) b_and!208341))))

(declare-fun b!2840260 () Bool)

(declare-fun e!1799267 () Bool)

(declare-fun e!1799263 () Bool)

(declare-fun tp!909737 () Bool)

(assert (=> b!2840260 (= e!1799267 (and (inv!21 (value!162438 (h!39037 (t!232430 tokensBis!14)))) e!1799263 tp!909737))))

(declare-fun tp!909738 () Bool)

(declare-fun e!1799264 () Bool)

(declare-fun b!2840261 () Bool)

(assert (=> b!2840261 (= e!1799263 (and tp!909738 (inv!45585 (tag!5559 (rule!7483 (h!39037 (t!232430 tokensBis!14))))) (inv!45588 (transformation!5055 (rule!7483 (h!39037 (t!232430 tokensBis!14))))) e!1799264))))

(assert (=> b!2840262 (= e!1799264 (and tp!909740 tp!909741))))

(declare-fun e!1799266 () Bool)

(declare-fun b!2840259 () Bool)

(declare-fun tp!909739 () Bool)

(assert (=> b!2840259 (= e!1799266 (and (inv!45589 (h!39037 (t!232430 tokensBis!14))) e!1799267 tp!909739))))

(assert (=> b!2840057 (= tp!909645 e!1799266)))

(assert (= b!2840261 b!2840262))

(assert (= b!2840260 b!2840261))

(assert (= b!2840259 b!2840260))

(assert (= (and b!2840057 (is-Cons!33617 (t!232430 tokensBis!14))) b!2840259))

(declare-fun m!3268763 () Bool)

(assert (=> b!2840260 m!3268763))

(declare-fun m!3268765 () Bool)

(assert (=> b!2840261 m!3268765))

(declare-fun m!3268767 () Bool)

(assert (=> b!2840261 m!3268767))

(declare-fun m!3268769 () Bool)

(assert (=> b!2840259 m!3268769))

(declare-fun b!2840266 () Bool)

(declare-fun e!1799269 () Bool)

(declare-fun tp!909746 () Bool)

(declare-fun tp!909743 () Bool)

(assert (=> b!2840266 (= e!1799269 (and tp!909746 tp!909743))))

(declare-fun b!2840265 () Bool)

(declare-fun tp!909742 () Bool)

(assert (=> b!2840265 (= e!1799269 tp!909742)))

(declare-fun b!2840264 () Bool)

(declare-fun tp!909745 () Bool)

(declare-fun tp!909744 () Bool)

(assert (=> b!2840264 (= e!1799269 (and tp!909745 tp!909744))))

(declare-fun b!2840263 () Bool)

(assert (=> b!2840263 (= e!1799269 tp_is_empty!14621)))

(assert (=> b!2840059 (= tp!909638 e!1799269)))

(assert (= (and b!2840059 (is-ElementMatch!8446 (regex!5055 (rule!7483 (h!39037 tokensBis!14))))) b!2840263))

(assert (= (and b!2840059 (is-Concat!13731 (regex!5055 (rule!7483 (h!39037 tokensBis!14))))) b!2840264))

(assert (= (and b!2840059 (is-Star!8446 (regex!5055 (rule!7483 (h!39037 tokensBis!14))))) b!2840265))

(assert (= (and b!2840059 (is-Union!8446 (regex!5055 (rule!7483 (h!39037 tokensBis!14))))) b!2840266))

(declare-fun b!2840271 () Bool)

(declare-fun e!1799272 () Bool)

(declare-fun tp!909749 () Bool)

(assert (=> b!2840271 (= e!1799272 (and tp_is_empty!14621 tp!909749))))

(assert (=> b!2840048 (= tp!909644 e!1799272)))

(assert (= (and b!2840048 (is-Cons!33614 (originalCharacters!5787 (h!39037 tokens!612)))) b!2840271))

(declare-fun b!2840275 () Bool)

(declare-fun b_free!82317 () Bool)

(declare-fun b_next!83021 () Bool)

(assert (=> b!2840275 (= b_free!82317 (not b_next!83021))))

(declare-fun tp!909753 () Bool)

(declare-fun b_and!208343 () Bool)

(assert (=> b!2840275 (= tp!909753 b_and!208343)))

(declare-fun b_free!82319 () Bool)

(declare-fun b_next!83023 () Bool)

(assert (=> b!2840275 (= b_free!82319 (not b_next!83023))))

(declare-fun tb!154825 () Bool)

(declare-fun t!232460 () Bool)

(assert (=> (and b!2840275 (= (toChars!6956 (transformation!5055 (rule!7483 (h!39037 (t!232430 tokens!612))))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14))))) t!232460) tb!154825))

(declare-fun result!193140 () Bool)

(assert (= result!193140 result!193110))

(assert (=> b!2840189 t!232460))

(declare-fun t!232462 () Bool)

(declare-fun tb!154827 () Bool)

(assert (=> (and b!2840275 (= (toChars!6956 (transformation!5055 (rule!7483 (h!39037 (t!232430 tokens!612))))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612))))) t!232462) tb!154827))

(declare-fun result!193142 () Bool)

(assert (= result!193142 result!193118))

(assert (=> b!2840212 t!232462))

(declare-fun b_and!208345 () Bool)

(declare-fun tp!909754 () Bool)

(assert (=> b!2840275 (= tp!909754 (and (=> t!232460 result!193140) (=> t!232462 result!193142) b_and!208345))))

(declare-fun tp!909750 () Bool)

(declare-fun e!1799277 () Bool)

(declare-fun b!2840273 () Bool)

(declare-fun e!1799273 () Bool)

(assert (=> b!2840273 (= e!1799277 (and (inv!21 (value!162438 (h!39037 (t!232430 tokens!612)))) e!1799273 tp!909750))))

(declare-fun b!2840274 () Bool)

(declare-fun tp!909751 () Bool)

(declare-fun e!1799274 () Bool)

(assert (=> b!2840274 (= e!1799273 (and tp!909751 (inv!45585 (tag!5559 (rule!7483 (h!39037 (t!232430 tokens!612))))) (inv!45588 (transformation!5055 (rule!7483 (h!39037 (t!232430 tokens!612))))) e!1799274))))

(assert (=> b!2840275 (= e!1799274 (and tp!909753 tp!909754))))

(declare-fun b!2840272 () Bool)

(declare-fun e!1799276 () Bool)

(declare-fun tp!909752 () Bool)

(assert (=> b!2840272 (= e!1799276 (and (inv!45589 (h!39037 (t!232430 tokens!612))) e!1799277 tp!909752))))

(assert (=> b!2840058 (= tp!909643 e!1799276)))

(assert (= b!2840274 b!2840275))

(assert (= b!2840273 b!2840274))

(assert (= b!2840272 b!2840273))

(assert (= (and b!2840058 (is-Cons!33617 (t!232430 tokens!612))) b!2840272))

(declare-fun m!3268771 () Bool)

(assert (=> b!2840273 m!3268771))

(declare-fun m!3268773 () Bool)

(assert (=> b!2840274 m!3268773))

(declare-fun m!3268775 () Bool)

(assert (=> b!2840274 m!3268775))

(declare-fun m!3268777 () Bool)

(assert (=> b!2840272 m!3268777))

(declare-fun b!2840276 () Bool)

(declare-fun e!1799279 () Bool)

(declare-fun tp!909755 () Bool)

(assert (=> b!2840276 (= e!1799279 (and tp_is_empty!14621 tp!909755))))

(assert (=> b!2840049 (= tp!909647 e!1799279)))

(assert (= (and b!2840049 (is-Cons!33614 (originalCharacters!5787 (h!39037 tokensBis!14)))) b!2840276))

(declare-fun b_lambda!85379 () Bool)

(assert (= b_lambda!85377 (or (and b!2840248 b_free!82311 (= (toChars!6956 (transformation!5055 (h!39036 (t!232429 rules!4246)))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612)))))) (and b!2840275 b_free!82319 (= (toChars!6956 (transformation!5055 (rule!7483 (h!39037 (t!232430 tokens!612))))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612)))))) (and b!2840063 b_free!82295) (and b!2840061 b_free!82291 (= (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14)))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612)))))) (and b!2840062 b_free!82287 (= (toChars!6956 (transformation!5055 (h!39036 rules!4246))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612)))))) (and b!2840262 b_free!82315 (= (toChars!6956 (transformation!5055 (rule!7483 (h!39037 (t!232430 tokensBis!14))))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612)))))) b_lambda!85379)))

(declare-fun b_lambda!85381 () Bool)

(assert (= b_lambda!85375 (or (and b!2840063 b_free!82295 (= (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokens!612)))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14)))))) (and b!2840248 b_free!82311 (= (toChars!6956 (transformation!5055 (h!39036 (t!232429 rules!4246)))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14)))))) (and b!2840262 b_free!82315 (= (toChars!6956 (transformation!5055 (rule!7483 (h!39037 (t!232430 tokensBis!14))))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14)))))) (and b!2840062 b_free!82287 (= (toChars!6956 (transformation!5055 (h!39036 rules!4246))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14)))))) (and b!2840275 b_free!82319 (= (toChars!6956 (transformation!5055 (rule!7483 (h!39037 (t!232430 tokens!612))))) (toChars!6956 (transformation!5055 (rule!7483 (h!39037 tokensBis!14)))))) (and b!2840061 b_free!82291) b_lambda!85381)))

(push 1)

(assert (not b!2840171))

(assert (not tb!154811))

(assert (not d!823670))

(assert (not b!2840237))

(assert (not b_next!83015))

(assert b_and!208299)

(assert b_and!208329)

(assert (not b!2840208))

(assert (not b_next!82991))

(assert b_and!208333)

(assert b_and!208345)

(assert (not b_next!83023))

(assert (not b!2840168))

(assert b_and!208335)

(assert (not b_lambda!85381))

(assert (not b!2840218))

(assert (not b!2840215))

(assert b_and!208331)

(assert (not b_next!82995))

(assert (not b!2840266))

(assert b_and!208303)

(assert (not b_next!83019))

(assert (not b!2840212))

(assert (not d!823662))

(assert (not b!2840172))

(assert (not b!2840213))

(assert (not b!2840137))

(assert (not b!2840276))

(assert (not d!823682))

(assert (not b!2840184))

(assert (not b!2840138))

(assert (not d!823680))

(assert (not b_next!83021))

(assert (not b!2840259))

(assert b_and!208337)

(assert (not b!2840232))

(assert (not d!823664))

(assert (not b_next!82999))

(assert (not b_next!82997))

(assert (not b!2840174))

(assert (not b!2840273))

(assert (not b!2840235))

(assert (not b_next!83013))

(assert (not b!2840196))

(assert (not b!2840154))

(assert (not b!2840233))

(assert b_and!208307)

(assert tp_is_empty!14621)

(assert (not b_next!83017))

(assert (not b!2840246))

(assert (not b!2840163))

(assert (not b!2840216))

(assert b_and!208343)

(assert (not b!2840181))

(assert b_and!208341)

(assert (not b!2840231))

(assert b_and!208339)

(assert (not b!2840195))

(assert (not b!2840265))

(assert (not d!823690))

(assert (not d!823674))

(assert (not b!2840214))

(assert (not b!2840260))

(assert (not b!2840180))

(assert (not b!2840189))

(assert (not b!2840190))

(assert (not b!2840175))

(assert (not b!2840274))

(assert (not b!2840153))

(assert (not b_lambda!85379))

(assert (not b_next!82989))

(assert (not b!2840264))

(assert (not b!2840210))

(assert (not b!2840247))

(assert (not b!2840236))

(assert (not b!2840207))

(assert (not tb!154805))

(assert (not b!2840173))

(assert (not b!2840261))

(assert (not b!2840272))

(assert (not b!2840271))

(assert (not b!2840143))

(assert (not b_next!82993))

(assert (not d!823686))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!83023))

(assert b_and!208335)

(assert (not b_next!83019))

(assert (not b_next!83021))

(assert (not b_next!82997))

(assert (not b_next!83013))

(assert b_and!208307)

(assert (not b_next!83017))

(assert b_and!208343)

(assert (not b_next!83015))

(assert (not b_next!82989))

(assert b_and!208299)

(assert (not b_next!82993))

(assert b_and!208329)

(assert (not b_next!82991))

(assert b_and!208333)

(assert b_and!208345)

(assert b_and!208303)

(assert b_and!208331)

(assert (not b_next!82995))

(assert b_and!208337)

(assert (not b_next!82999))

(assert b_and!208341)

(assert b_and!208339)

(check-sat)

(pop 1)

