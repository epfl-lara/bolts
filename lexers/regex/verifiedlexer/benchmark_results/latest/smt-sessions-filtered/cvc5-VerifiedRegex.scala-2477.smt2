; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!130882 () Bool)

(assert start!130882)

(declare-fun b!1421075 () Bool)

(declare-fun e!907091 () Bool)

(declare-datatypes ((C!7910 0))(
  ( (C!7911 (val!4525 Int)) )
))
(declare-datatypes ((List!14697 0))(
  ( (Nil!14631) (Cons!14631 (h!20032 C!7910) (t!124492 List!14697)) )
))
(declare-datatypes ((IArray!9865 0))(
  ( (IArray!9866 (innerList!4990 List!14697)) )
))
(declare-datatypes ((Conc!4930 0))(
  ( (Node!4930 (left!12509 Conc!4930) (right!12839 Conc!4930) (csize!10090 Int) (cheight!5141 Int)) (Leaf!7408 (xs!7659 IArray!9865) (csize!10091 Int)) (Empty!4930) )
))
(declare-datatypes ((BalanceConc!9800 0))(
  ( (BalanceConc!9801 (c!233615 Conc!4930)) )
))
(declare-datatypes ((List!14698 0))(
  ( (Nil!14632) (Cons!14632 (h!20033 (_ BitVec 16)) (t!124493 List!14698)) )
))
(declare-datatypes ((TokenValue!2642 0))(
  ( (FloatLiteralValue!5284 (text!18939 List!14698)) (TokenValueExt!2641 (__x!9086 Int)) (Broken!13210 (value!82355 List!14698)) (Object!2707) (End!2642) (Def!2642) (Underscore!2642) (Match!2642) (Else!2642) (Error!2642) (Case!2642) (If!2642) (Extends!2642) (Abstract!2642) (Class!2642) (Val!2642) (DelimiterValue!5284 (del!2702 List!14698)) (KeywordValue!2648 (value!82356 List!14698)) (CommentValue!5284 (value!82357 List!14698)) (WhitespaceValue!5284 (value!82358 List!14698)) (IndentationValue!2642 (value!82359 List!14698)) (String!17467) (Int32!2642) (Broken!13211 (value!82360 List!14698)) (Boolean!2643) (Unit!21822) (OperatorValue!2645 (op!2702 List!14698)) (IdentifierValue!5284 (value!82361 List!14698)) (IdentifierValue!5285 (value!82362 List!14698)) (WhitespaceValue!5285 (value!82363 List!14698)) (True!5284) (False!5284) (Broken!13212 (value!82364 List!14698)) (Broken!13213 (value!82365 List!14698)) (True!5285) (RightBrace!2642) (RightBracket!2642) (Colon!2642) (Null!2642) (Comma!2642) (LeftBracket!2642) (False!5285) (LeftBrace!2642) (ImaginaryLiteralValue!2642 (text!18940 List!14698)) (StringLiteralValue!7926 (value!82366 List!14698)) (EOFValue!2642 (value!82367 List!14698)) (IdentValue!2642 (value!82368 List!14698)) (DelimiterValue!5285 (value!82369 List!14698)) (DedentValue!2642 (value!82370 List!14698)) (NewLineValue!2642 (value!82371 List!14698)) (IntegerValue!7926 (value!82372 (_ BitVec 32)) (text!18941 List!14698)) (IntegerValue!7927 (value!82373 Int) (text!18942 List!14698)) (Times!2642) (Or!2642) (Equal!2642) (Minus!2642) (Broken!13214 (value!82374 List!14698)) (And!2642) (Div!2642) (LessEqual!2642) (Mod!2642) (Concat!6508) (Not!2642) (Plus!2642) (SpaceValue!2642 (value!82375 List!14698)) (IntegerValue!7928 (value!82376 Int) (text!18943 List!14698)) (StringLiteralValue!7927 (text!18944 List!14698)) (FloatLiteralValue!5285 (text!18945 List!14698)) (BytesLiteralValue!2642 (value!82377 List!14698)) (CommentValue!5285 (value!82378 List!14698)) (StringLiteralValue!7928 (value!82379 List!14698)) (ErrorTokenValue!2642 (msg!2703 List!14698)) )
))
(declare-datatypes ((Regex!3866 0))(
  ( (ElementMatch!3866 (c!233616 C!7910)) (Concat!6509 (regOne!8244 Regex!3866) (regTwo!8244 Regex!3866)) (EmptyExpr!3866) (Star!3866 (reg!4195 Regex!3866)) (EmptyLang!3866) (Union!3866 (regOne!8245 Regex!3866) (regTwo!8245 Regex!3866)) )
))
(declare-datatypes ((String!17468 0))(
  ( (String!17469 (value!82380 String)) )
))
(declare-datatypes ((TokenValueInjection!4944 0))(
  ( (TokenValueInjection!4945 (toValue!3851 Int) (toChars!3710 Int)) )
))
(declare-datatypes ((Rule!4904 0))(
  ( (Rule!4905 (regex!2552 Regex!3866) (tag!2814 String!17468) (isSeparator!2552 Bool) (transformation!2552 TokenValueInjection!4944)) )
))
(declare-datatypes ((Token!4766 0))(
  ( (Token!4767 (value!82381 TokenValue!2642) (rule!4315 Rule!4904) (size!12055 Int) (originalCharacters!3414 List!14697)) )
))
(declare-datatypes ((List!14699 0))(
  ( (Nil!14633) (Cons!14633 (h!20034 Token!4766) (t!124494 List!14699)) )
))
(declare-datatypes ((IArray!9867 0))(
  ( (IArray!9868 (innerList!4991 List!14699)) )
))
(declare-datatypes ((Conc!4931 0))(
  ( (Node!4931 (left!12510 Conc!4931) (right!12840 Conc!4931) (csize!10092 Int) (cheight!5142 Int)) (Leaf!7409 (xs!7660 IArray!9867) (csize!10093 Int)) (Empty!4931) )
))
(declare-datatypes ((BalanceConc!9802 0))(
  ( (BalanceConc!9803 (c!233617 Conc!4931)) )
))
(declare-datatypes ((List!14700 0))(
  ( (Nil!14634) (Cons!14634 (h!20035 Rule!4904) (t!124495 List!14700)) )
))
(declare-datatypes ((PrintableTokens!886 0))(
  ( (PrintableTokens!887 (rules!11173 List!14700) (tokens!1865 BalanceConc!9802)) )
))
(declare-datatypes ((Option!2805 0))(
  ( (None!2804) (Some!2804 (v!22204 PrintableTokens!886)) )
))
(declare-fun lt!479913 () Option!2805)

(declare-fun isDefined!2266 (Option!2805) Bool)

(assert (=> b!1421075 (= e!907091 (isDefined!2266 lt!479913))))

(declare-fun b!1421076 () Bool)

(declare-fun e!907092 () Bool)

(declare-fun thiss!10022 () PrintableTokens!886)

(declare-fun tp!402867 () Bool)

(declare-fun inv!19361 (Conc!4931) Bool)

(assert (=> b!1421076 (= e!907092 (and (inv!19361 (c!233617 (tokens!1865 thiss!10022))) tp!402867))))

(declare-fun b!1421077 () Bool)

(declare-fun e!907093 () Bool)

(declare-fun lt!479909 () List!14699)

(declare-fun e!907095 () List!14697)

(declare-datatypes ((LexerInterface!2220 0))(
  ( (LexerInterfaceExt!2217 (__x!9087 Int)) (Lexer!2218) )
))
(declare-fun printList!674 (LexerInterface!2220 List!14699) List!14697)

(assert (=> b!1421077 (= e!907093 (= (printList!674 Lexer!2218 lt!479909) e!907095))))

(declare-fun c!233614 () Bool)

(assert (=> b!1421077 (= c!233614 (is-Cons!14633 lt!479909))))

(declare-fun b!1421078 () Bool)

(declare-fun res!643412 () Bool)

(assert (=> b!1421078 (=> (not res!643412) (not e!907093))))

(declare-fun lt!479920 () BalanceConc!9800)

(declare-fun other!32 () PrintableTokens!886)

(declare-fun printTailRec!652 (LexerInterface!2220 BalanceConc!9802 Int BalanceConc!9800) BalanceConc!9800)

(assert (=> b!1421078 (= res!643412 (= lt!479920 (printTailRec!652 Lexer!2218 (tokens!1865 other!32) 0 (BalanceConc!9801 Empty!4930))))))

(declare-fun b!1421079 () Bool)

(assert (=> b!1421079 (= e!907095 Nil!14631)))

(declare-fun b!1421080 () Bool)

(declare-fun e!907098 () Bool)

(declare-fun tp!402869 () Bool)

(assert (=> b!1421080 (= e!907098 (and (inv!19361 (c!233617 (tokens!1865 other!32))) tp!402869))))

(declare-fun b!1421081 () Bool)

(declare-fun e!907090 () Bool)

(declare-fun e!907094 () Bool)

(assert (=> b!1421081 (= e!907090 (not e!907094))))

(declare-fun res!643413 () Bool)

(assert (=> b!1421081 (=> res!643413 e!907094)))

(assert (=> b!1421081 (= res!643413 (not (= lt!479920 (BalanceConc!9801 Empty!4930))))))

(assert (=> b!1421081 e!907093))

(declare-fun res!643409 () Bool)

(assert (=> b!1421081 (=> (not res!643409) (not e!907093))))

(declare-fun lt!479915 () BalanceConc!9800)

(assert (=> b!1421081 (= res!643409 (= lt!479915 lt!479920))))

(declare-fun print!999 (LexerInterface!2220 BalanceConc!9802) BalanceConc!9800)

(assert (=> b!1421081 (= lt!479920 (print!999 Lexer!2218 (tokens!1865 other!32)))))

(declare-fun print!1000 (PrintableTokens!886) BalanceConc!9800)

(assert (=> b!1421081 (= lt!479915 (print!1000 other!32))))

(declare-datatypes ((Unit!21823 0))(
  ( (Unit!21824) )
))
(declare-fun lt!479921 () Unit!21823)

(declare-fun theoremInvertabilityWhenTokenListSeparable!42 (LexerInterface!2220 List!14700 List!14699) Unit!21823)

(assert (=> b!1421081 (= lt!479921 (theoremInvertabilityWhenTokenListSeparable!42 Lexer!2218 (rules!11173 other!32) lt!479909))))

(declare-fun list!5788 (BalanceConc!9802) List!14699)

(assert (=> b!1421081 (= lt!479909 (list!5788 (tokens!1865 other!32)))))

(assert (=> b!1421081 (= (print!1000 thiss!10022) (print!999 Lexer!2218 (tokens!1865 thiss!10022)))))

(declare-fun lt!479911 () Unit!21823)

(declare-fun lt!479919 () List!14699)

(assert (=> b!1421081 (= lt!479911 (theoremInvertabilityWhenTokenListSeparable!42 Lexer!2218 (rules!11173 thiss!10022) lt!479919))))

(declare-fun e!907089 () Bool)

(assert (=> b!1421081 e!907089))

(declare-fun res!643414 () Bool)

(assert (=> b!1421081 (=> (not res!643414) (not e!907089))))

(declare-fun lt!479918 () List!14699)

(declare-fun lt!479917 () List!14697)

(declare-fun lt!479910 () List!14697)

(declare-fun ++!3858 (List!14697 List!14697) List!14697)

(assert (=> b!1421081 (= res!643414 (= (printList!674 Lexer!2218 lt!479918) (++!3858 lt!479910 lt!479917)))))

(assert (=> b!1421081 (= lt!479917 (printList!674 Lexer!2218 Nil!14633))))

(assert (=> b!1421081 (= lt!479910 (printList!674 Lexer!2218 lt!479919))))

(declare-fun ++!3859 (List!14699 List!14699) List!14699)

(assert (=> b!1421081 (= lt!479918 (++!3859 lt!479919 Nil!14633))))

(declare-fun lt!479916 () Unit!21823)

(declare-fun lemmaPrintConcatSameAsConcatPrint!39 (LexerInterface!2220 List!14699 List!14699) Unit!21823)

(assert (=> b!1421081 (= lt!479916 (lemmaPrintConcatSameAsConcatPrint!39 Lexer!2218 lt!479919 Nil!14633))))

(assert (=> b!1421081 (= lt!479919 (list!5788 (tokens!1865 thiss!10022)))))

(declare-fun b!1421083 () Bool)

(assert (=> b!1421083 (= e!907089 (= lt!479917 Nil!14631))))

(declare-fun b!1421084 () Bool)

(declare-fun list!5789 (BalanceConc!9800) List!14697)

(declare-fun charsOf!1485 (Token!4766) BalanceConc!9800)

(assert (=> b!1421084 (= e!907095 (++!3858 (list!5789 (charsOf!1485 (h!20034 lt!479909))) (printList!674 Lexer!2218 (t!124494 lt!479909))))))

(declare-fun e!907088 () Bool)

(declare-fun b!1421085 () Bool)

(declare-fun tp!402870 () Bool)

(declare-fun inv!19362 (BalanceConc!9802) Bool)

(assert (=> b!1421085 (= e!907088 (and tp!402870 (inv!19362 (tokens!1865 other!32)) e!907098))))

(declare-fun b!1421082 () Bool)

(declare-fun e!907097 () Bool)

(assert (=> b!1421082 (= e!907097 e!907090)))

(declare-fun res!643410 () Bool)

(assert (=> b!1421082 (=> (not res!643410) (not e!907090))))

(declare-fun isEmpty!9013 (BalanceConc!9802) Bool)

(assert (=> b!1421082 (= res!643410 (isEmpty!9013 (tokens!1865 other!32)))))

(declare-fun lt!479912 () Unit!21823)

(declare-fun lemmaInvariant!248 (PrintableTokens!886) Unit!21823)

(assert (=> b!1421082 (= lt!479912 (lemmaInvariant!248 thiss!10022))))

(declare-fun lt!479914 () Unit!21823)

(assert (=> b!1421082 (= lt!479914 (lemmaInvariant!248 other!32))))

(declare-fun res!643415 () Bool)

(assert (=> start!130882 (=> (not res!643415) (not e!907097))))

(assert (=> start!130882 (= res!643415 (= (rules!11173 thiss!10022) (rules!11173 other!32)))))

(assert (=> start!130882 e!907097))

(declare-fun e!907096 () Bool)

(declare-fun inv!19363 (PrintableTokens!886) Bool)

(assert (=> start!130882 (and (inv!19363 thiss!10022) e!907096)))

(assert (=> start!130882 (and (inv!19363 other!32) e!907088)))

(declare-fun tp!402868 () Bool)

(declare-fun b!1421086 () Bool)

(assert (=> b!1421086 (= e!907096 (and tp!402868 (inv!19362 (tokens!1865 thiss!10022)) e!907092))))

(declare-fun b!1421087 () Bool)

(assert (=> b!1421087 (= e!907094 e!907091)))

(declare-fun res!643411 () Bool)

(assert (=> b!1421087 (=> res!643411 e!907091)))

(declare-fun isEmpty!9014 (Option!2805) Bool)

(assert (=> b!1421087 (= res!643411 (isEmpty!9014 lt!479913))))

(assert (=> b!1421087 (= lt!479913 (Some!2804 thiss!10022))))

(assert (= (and start!130882 res!643415) b!1421082))

(assert (= (and b!1421082 res!643410) b!1421081))

(assert (= (and b!1421081 res!643414) b!1421083))

(assert (= (and b!1421081 res!643409) b!1421078))

(assert (= (and b!1421078 res!643412) b!1421077))

(assert (= (and b!1421077 c!233614) b!1421084))

(assert (= (and b!1421077 (not c!233614)) b!1421079))

(assert (= (and b!1421081 (not res!643413)) b!1421087))

(assert (= (and b!1421087 (not res!643411)) b!1421075))

(assert (= b!1421086 b!1421076))

(assert (= start!130882 b!1421086))

(assert (= b!1421085 b!1421080))

(assert (= start!130882 b!1421085))

(declare-fun m!1610961 () Bool)

(assert (=> b!1421080 m!1610961))

(declare-fun m!1610963 () Bool)

(assert (=> b!1421084 m!1610963))

(assert (=> b!1421084 m!1610963))

(declare-fun m!1610965 () Bool)

(assert (=> b!1421084 m!1610965))

(declare-fun m!1610967 () Bool)

(assert (=> b!1421084 m!1610967))

(assert (=> b!1421084 m!1610965))

(assert (=> b!1421084 m!1610967))

(declare-fun m!1610969 () Bool)

(assert (=> b!1421084 m!1610969))

(declare-fun m!1610971 () Bool)

(assert (=> b!1421075 m!1610971))

(declare-fun m!1610973 () Bool)

(assert (=> b!1421077 m!1610973))

(declare-fun m!1610975 () Bool)

(assert (=> start!130882 m!1610975))

(declare-fun m!1610977 () Bool)

(assert (=> start!130882 m!1610977))

(declare-fun m!1610979 () Bool)

(assert (=> b!1421085 m!1610979))

(declare-fun m!1610981 () Bool)

(assert (=> b!1421081 m!1610981))

(declare-fun m!1610983 () Bool)

(assert (=> b!1421081 m!1610983))

(declare-fun m!1610985 () Bool)

(assert (=> b!1421081 m!1610985))

(declare-fun m!1610987 () Bool)

(assert (=> b!1421081 m!1610987))

(declare-fun m!1610989 () Bool)

(assert (=> b!1421081 m!1610989))

(declare-fun m!1610991 () Bool)

(assert (=> b!1421081 m!1610991))

(declare-fun m!1610993 () Bool)

(assert (=> b!1421081 m!1610993))

(declare-fun m!1610995 () Bool)

(assert (=> b!1421081 m!1610995))

(declare-fun m!1610997 () Bool)

(assert (=> b!1421081 m!1610997))

(declare-fun m!1610999 () Bool)

(assert (=> b!1421081 m!1610999))

(declare-fun m!1611001 () Bool)

(assert (=> b!1421081 m!1611001))

(declare-fun m!1611003 () Bool)

(assert (=> b!1421081 m!1611003))

(declare-fun m!1611005 () Bool)

(assert (=> b!1421081 m!1611005))

(declare-fun m!1611007 () Bool)

(assert (=> b!1421081 m!1611007))

(declare-fun m!1611009 () Bool)

(assert (=> b!1421076 m!1611009))

(declare-fun m!1611011 () Bool)

(assert (=> b!1421082 m!1611011))

(declare-fun m!1611013 () Bool)

(assert (=> b!1421082 m!1611013))

(declare-fun m!1611015 () Bool)

(assert (=> b!1421082 m!1611015))

(declare-fun m!1611017 () Bool)

(assert (=> b!1421086 m!1611017))

(declare-fun m!1611019 () Bool)

(assert (=> b!1421078 m!1611019))

(declare-fun m!1611021 () Bool)

(assert (=> b!1421087 m!1611021))

(push 1)

(assert (not b!1421078))

(assert (not b!1421082))

(assert (not b!1421081))

(assert (not b!1421077))

(assert (not b!1421084))

(assert (not b!1421076))

(assert (not b!1421087))

(assert (not b!1421085))

(assert (not start!130882))

(assert (not b!1421075))

(assert (not b!1421086))

(assert (not b!1421080))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!407020 () Bool)

(declare-fun c!233627 () Bool)

(assert (=> d!407020 (= c!233627 (is-Cons!14633 lt!479909))))

(declare-fun e!907134 () List!14697)

(assert (=> d!407020 (= (printList!674 Lexer!2218 lt!479909) e!907134)))

(declare-fun b!1421131 () Bool)

(assert (=> b!1421131 (= e!907134 (++!3858 (list!5789 (charsOf!1485 (h!20034 lt!479909))) (printList!674 Lexer!2218 (t!124494 lt!479909))))))

(declare-fun b!1421132 () Bool)

(assert (=> b!1421132 (= e!907134 Nil!14631)))

(assert (= (and d!407020 c!233627) b!1421131))

(assert (= (and d!407020 (not c!233627)) b!1421132))

(assert (=> b!1421131 m!1610963))

(assert (=> b!1421131 m!1610963))

(assert (=> b!1421131 m!1610965))

(assert (=> b!1421131 m!1610967))

(assert (=> b!1421131 m!1610965))

(assert (=> b!1421131 m!1610967))

(assert (=> b!1421131 m!1610969))

(assert (=> b!1421077 d!407020))

(declare-fun d!407022 () Bool)

(assert (=> d!407022 (= (isEmpty!9014 lt!479913) (not (is-Some!2804 lt!479913)))))

(assert (=> b!1421087 d!407022))

(declare-fun d!407024 () Bool)

(declare-fun c!233630 () Bool)

(assert (=> d!407024 (= c!233630 (is-Node!4931 (c!233617 (tokens!1865 thiss!10022))))))

(declare-fun e!907139 () Bool)

(assert (=> d!407024 (= (inv!19361 (c!233617 (tokens!1865 thiss!10022))) e!907139)))

(declare-fun b!1421139 () Bool)

(declare-fun inv!19367 (Conc!4931) Bool)

(assert (=> b!1421139 (= e!907139 (inv!19367 (c!233617 (tokens!1865 thiss!10022))))))

(declare-fun b!1421140 () Bool)

(declare-fun e!907140 () Bool)

(assert (=> b!1421140 (= e!907139 e!907140)))

(declare-fun res!643443 () Bool)

(assert (=> b!1421140 (= res!643443 (not (is-Leaf!7409 (c!233617 (tokens!1865 thiss!10022)))))))

(assert (=> b!1421140 (=> res!643443 e!907140)))

(declare-fun b!1421141 () Bool)

(declare-fun inv!19368 (Conc!4931) Bool)

(assert (=> b!1421141 (= e!907140 (inv!19368 (c!233617 (tokens!1865 thiss!10022))))))

(assert (= (and d!407024 c!233630) b!1421139))

(assert (= (and d!407024 (not c!233630)) b!1421140))

(assert (= (and b!1421140 (not res!643443)) b!1421141))

(declare-fun m!1611085 () Bool)

(assert (=> b!1421139 m!1611085))

(declare-fun m!1611087 () Bool)

(assert (=> b!1421141 m!1611087))

(assert (=> b!1421076 d!407024))

(declare-fun d!407026 () Bool)

(declare-fun lt!479975 () BalanceConc!9800)

(declare-fun printListTailRec!266 (LexerInterface!2220 List!14699 List!14697) List!14697)

(declare-fun dropList!439 (BalanceConc!9802 Int) List!14699)

(assert (=> d!407026 (= (list!5789 lt!479975) (printListTailRec!266 Lexer!2218 (dropList!439 (tokens!1865 other!32) 0) (list!5789 (BalanceConc!9801 Empty!4930))))))

(declare-fun e!907153 () BalanceConc!9800)

(assert (=> d!407026 (= lt!479975 e!907153)))

(declare-fun c!233637 () Bool)

(declare-fun size!12057 (BalanceConc!9802) Int)

(assert (=> d!407026 (= c!233637 (>= 0 (size!12057 (tokens!1865 other!32))))))

(declare-fun e!907154 () Bool)

(assert (=> d!407026 e!907154))

(declare-fun res!643450 () Bool)

(assert (=> d!407026 (=> (not res!643450) (not e!907154))))

(assert (=> d!407026 (= res!643450 (>= 0 0))))

(assert (=> d!407026 (= (printTailRec!652 Lexer!2218 (tokens!1865 other!32) 0 (BalanceConc!9801 Empty!4930)) lt!479975)))

(declare-fun b!1421160 () Bool)

(assert (=> b!1421160 (= e!907154 (<= 0 (size!12057 (tokens!1865 other!32))))))

(declare-fun b!1421161 () Bool)

(assert (=> b!1421161 (= e!907153 (BalanceConc!9801 Empty!4930))))

(declare-fun b!1421162 () Bool)

(declare-fun ++!3862 (BalanceConc!9800 BalanceConc!9800) BalanceConc!9800)

(declare-fun apply!3725 (BalanceConc!9802 Int) Token!4766)

(assert (=> b!1421162 (= e!907153 (printTailRec!652 Lexer!2218 (tokens!1865 other!32) (+ 0 1) (++!3862 (BalanceConc!9801 Empty!4930) (charsOf!1485 (apply!3725 (tokens!1865 other!32) 0)))))))

(declare-fun lt!479977 () List!14699)

(assert (=> b!1421162 (= lt!479977 (list!5788 (tokens!1865 other!32)))))

(declare-fun lt!479980 () Unit!21823)

(declare-fun lemmaDropApply!461 (List!14699 Int) Unit!21823)

(assert (=> b!1421162 (= lt!479980 (lemmaDropApply!461 lt!479977 0))))

(declare-fun head!2782 (List!14699) Token!4766)

(declare-fun drop!707 (List!14699 Int) List!14699)

(declare-fun apply!3726 (List!14699 Int) Token!4766)

(assert (=> b!1421162 (= (head!2782 (drop!707 lt!479977 0)) (apply!3726 lt!479977 0))))

(declare-fun lt!479979 () Unit!21823)

(assert (=> b!1421162 (= lt!479979 lt!479980)))

(declare-fun lt!479978 () List!14699)

(assert (=> b!1421162 (= lt!479978 (list!5788 (tokens!1865 other!32)))))

(declare-fun lt!479976 () Unit!21823)

(declare-fun lemmaDropTail!441 (List!14699 Int) Unit!21823)

(assert (=> b!1421162 (= lt!479976 (lemmaDropTail!441 lt!479978 0))))

(declare-fun tail!2131 (List!14699) List!14699)

(assert (=> b!1421162 (= (tail!2131 (drop!707 lt!479978 0)) (drop!707 lt!479978 (+ 0 1)))))

(declare-fun lt!479981 () Unit!21823)

(assert (=> b!1421162 (= lt!479981 lt!479976)))

(assert (= (and d!407026 res!643450) b!1421160))

(assert (= (and d!407026 c!233637) b!1421161))

(assert (= (and d!407026 (not c!233637)) b!1421162))

(declare-fun m!1611097 () Bool)

(assert (=> d!407026 m!1611097))

(declare-fun m!1611099 () Bool)

(assert (=> d!407026 m!1611099))

(assert (=> d!407026 m!1611097))

(declare-fun m!1611101 () Bool)

(assert (=> d!407026 m!1611101))

(declare-fun m!1611103 () Bool)

(assert (=> d!407026 m!1611103))

(assert (=> d!407026 m!1611099))

(declare-fun m!1611105 () Bool)

(assert (=> d!407026 m!1611105))

(assert (=> b!1421160 m!1611103))

(declare-fun m!1611107 () Bool)

(assert (=> b!1421162 m!1611107))

(declare-fun m!1611109 () Bool)

(assert (=> b!1421162 m!1611109))

(assert (=> b!1421162 m!1611007))

(declare-fun m!1611111 () Bool)

(assert (=> b!1421162 m!1611111))

(declare-fun m!1611113 () Bool)

(assert (=> b!1421162 m!1611113))

(declare-fun m!1611115 () Bool)

(assert (=> b!1421162 m!1611115))

(declare-fun m!1611117 () Bool)

(assert (=> b!1421162 m!1611117))

(declare-fun m!1611119 () Bool)

(assert (=> b!1421162 m!1611119))

(assert (=> b!1421162 m!1611113))

(declare-fun m!1611121 () Bool)

(assert (=> b!1421162 m!1611121))

(declare-fun m!1611123 () Bool)

(assert (=> b!1421162 m!1611123))

(declare-fun m!1611125 () Bool)

(assert (=> b!1421162 m!1611125))

(assert (=> b!1421162 m!1611107))

(assert (=> b!1421162 m!1611111))

(declare-fun m!1611127 () Bool)

(assert (=> b!1421162 m!1611127))

(declare-fun m!1611129 () Bool)

(assert (=> b!1421162 m!1611129))

(assert (=> b!1421162 m!1611119))

(assert (=> b!1421162 m!1611125))

(assert (=> b!1421078 d!407026))

(declare-fun d!407034 () Bool)

(declare-fun isBalanced!1467 (Conc!4931) Bool)

(assert (=> d!407034 (= (inv!19362 (tokens!1865 other!32)) (isBalanced!1467 (c!233617 (tokens!1865 other!32))))))

(declare-fun bs!339773 () Bool)

(assert (= bs!339773 d!407034))

(declare-fun m!1611131 () Bool)

(assert (=> bs!339773 m!1611131))

(assert (=> b!1421085 d!407034))

(declare-fun d!407036 () Bool)

(declare-fun e!907159 () Bool)

(assert (=> d!407036 e!907159))

(declare-fun res!643455 () Bool)

(assert (=> d!407036 (=> (not res!643455) (not e!907159))))

(declare-fun lt!479984 () List!14697)

(declare-fun content!2153 (List!14697) (Set C!7910))

(assert (=> d!407036 (= res!643455 (= (content!2153 lt!479984) (set.union (content!2153 (list!5789 (charsOf!1485 (h!20034 lt!479909)))) (content!2153 (printList!674 Lexer!2218 (t!124494 lt!479909))))))))

(declare-fun e!907160 () List!14697)

(assert (=> d!407036 (= lt!479984 e!907160)))

(declare-fun c!233640 () Bool)

(assert (=> d!407036 (= c!233640 (is-Nil!14631 (list!5789 (charsOf!1485 (h!20034 lt!479909)))))))

(assert (=> d!407036 (= (++!3858 (list!5789 (charsOf!1485 (h!20034 lt!479909))) (printList!674 Lexer!2218 (t!124494 lt!479909))) lt!479984)))

(declare-fun b!1421172 () Bool)

(assert (=> b!1421172 (= e!907160 (Cons!14631 (h!20032 (list!5789 (charsOf!1485 (h!20034 lt!479909)))) (++!3858 (t!124492 (list!5789 (charsOf!1485 (h!20034 lt!479909)))) (printList!674 Lexer!2218 (t!124494 lt!479909)))))))

(declare-fun b!1421174 () Bool)

(assert (=> b!1421174 (= e!907159 (or (not (= (printList!674 Lexer!2218 (t!124494 lt!479909)) Nil!14631)) (= lt!479984 (list!5789 (charsOf!1485 (h!20034 lt!479909))))))))

(declare-fun b!1421171 () Bool)

(assert (=> b!1421171 (= e!907160 (printList!674 Lexer!2218 (t!124494 lt!479909)))))

(declare-fun b!1421173 () Bool)

(declare-fun res!643456 () Bool)

(assert (=> b!1421173 (=> (not res!643456) (not e!907159))))

(declare-fun size!12058 (List!14697) Int)

(assert (=> b!1421173 (= res!643456 (= (size!12058 lt!479984) (+ (size!12058 (list!5789 (charsOf!1485 (h!20034 lt!479909)))) (size!12058 (printList!674 Lexer!2218 (t!124494 lt!479909))))))))

(assert (= (and d!407036 c!233640) b!1421171))

(assert (= (and d!407036 (not c!233640)) b!1421172))

(assert (= (and d!407036 res!643455) b!1421173))

(assert (= (and b!1421173 res!643456) b!1421174))

(declare-fun m!1611133 () Bool)

(assert (=> d!407036 m!1611133))

(assert (=> d!407036 m!1610965))

(declare-fun m!1611135 () Bool)

(assert (=> d!407036 m!1611135))

(assert (=> d!407036 m!1610967))

(declare-fun m!1611137 () Bool)

(assert (=> d!407036 m!1611137))

(assert (=> b!1421172 m!1610967))

(declare-fun m!1611139 () Bool)

(assert (=> b!1421172 m!1611139))

(declare-fun m!1611141 () Bool)

(assert (=> b!1421173 m!1611141))

(assert (=> b!1421173 m!1610965))

(declare-fun m!1611143 () Bool)

(assert (=> b!1421173 m!1611143))

(assert (=> b!1421173 m!1610967))

(declare-fun m!1611145 () Bool)

(assert (=> b!1421173 m!1611145))

(assert (=> b!1421084 d!407036))

(declare-fun d!407038 () Bool)

(declare-fun list!5792 (Conc!4930) List!14697)

(assert (=> d!407038 (= (list!5789 (charsOf!1485 (h!20034 lt!479909))) (list!5792 (c!233615 (charsOf!1485 (h!20034 lt!479909)))))))

(declare-fun bs!339774 () Bool)

(assert (= bs!339774 d!407038))

(declare-fun m!1611147 () Bool)

(assert (=> bs!339774 m!1611147))

(assert (=> b!1421084 d!407038))

(declare-fun d!407040 () Bool)

(declare-fun lt!479987 () BalanceConc!9800)

(assert (=> d!407040 (= (list!5789 lt!479987) (originalCharacters!3414 (h!20034 lt!479909)))))

(declare-fun dynLambda!6729 (Int TokenValue!2642) BalanceConc!9800)

(assert (=> d!407040 (= lt!479987 (dynLambda!6729 (toChars!3710 (transformation!2552 (rule!4315 (h!20034 lt!479909)))) (value!82381 (h!20034 lt!479909))))))

(assert (=> d!407040 (= (charsOf!1485 (h!20034 lt!479909)) lt!479987)))

(declare-fun b_lambda!44627 () Bool)

(assert (=> (not b_lambda!44627) (not d!407040)))

(declare-fun bs!339775 () Bool)

(assert (= bs!339775 d!407040))

(declare-fun m!1611149 () Bool)

(assert (=> bs!339775 m!1611149))

(declare-fun m!1611151 () Bool)

(assert (=> bs!339775 m!1611151))

(assert (=> b!1421084 d!407040))

(declare-fun d!407042 () Bool)

(declare-fun c!233641 () Bool)

(assert (=> d!407042 (= c!233641 (is-Cons!14633 (t!124494 lt!479909)))))

(declare-fun e!907161 () List!14697)

(assert (=> d!407042 (= (printList!674 Lexer!2218 (t!124494 lt!479909)) e!907161)))

(declare-fun b!1421175 () Bool)

(assert (=> b!1421175 (= e!907161 (++!3858 (list!5789 (charsOf!1485 (h!20034 (t!124494 lt!479909)))) (printList!674 Lexer!2218 (t!124494 (t!124494 lt!479909)))))))

(declare-fun b!1421176 () Bool)

(assert (=> b!1421176 (= e!907161 Nil!14631)))

(assert (= (and d!407042 c!233641) b!1421175))

(assert (= (and d!407042 (not c!233641)) b!1421176))

(declare-fun m!1611153 () Bool)

(assert (=> b!1421175 m!1611153))

(assert (=> b!1421175 m!1611153))

(declare-fun m!1611155 () Bool)

(assert (=> b!1421175 m!1611155))

(declare-fun m!1611157 () Bool)

(assert (=> b!1421175 m!1611157))

(assert (=> b!1421175 m!1611155))

(assert (=> b!1421175 m!1611157))

(declare-fun m!1611159 () Bool)

(assert (=> b!1421175 m!1611159))

(assert (=> b!1421084 d!407042))

(declare-fun d!407044 () Bool)

(assert (=> d!407044 (= (inv!19362 (tokens!1865 thiss!10022)) (isBalanced!1467 (c!233617 (tokens!1865 thiss!10022))))))

(declare-fun bs!339776 () Bool)

(assert (= bs!339776 d!407044))

(declare-fun m!1611161 () Bool)

(assert (=> bs!339776 m!1611161))

(assert (=> b!1421086 d!407044))

(declare-fun d!407046 () Bool)

(assert (=> d!407046 (= (isDefined!2266 lt!479913) (not (isEmpty!9014 lt!479913)))))

(declare-fun bs!339777 () Bool)

(assert (= bs!339777 d!407046))

(assert (=> bs!339777 m!1611021))

(assert (=> b!1421075 d!407046))

(declare-fun d!407048 () Bool)

(declare-fun res!643466 () Bool)

(declare-fun e!907170 () Bool)

(assert (=> d!407048 (=> (not res!643466) (not e!907170))))

(declare-fun isEmpty!9017 (List!14700) Bool)

(assert (=> d!407048 (= res!643466 (not (isEmpty!9017 (rules!11173 thiss!10022))))))

(assert (=> d!407048 (= (inv!19363 thiss!10022) e!907170)))

(declare-fun b!1421192 () Bool)

(declare-fun res!643467 () Bool)

(assert (=> b!1421192 (=> (not res!643467) (not e!907170))))

(declare-fun rulesInvariant!2082 (LexerInterface!2220 List!14700) Bool)

(assert (=> b!1421192 (= res!643467 (rulesInvariant!2082 Lexer!2218 (rules!11173 thiss!10022)))))

(declare-fun b!1421193 () Bool)

(declare-fun res!643468 () Bool)

(assert (=> b!1421193 (=> (not res!643468) (not e!907170))))

(declare-fun rulesProduceEachTokenIndividually!809 (LexerInterface!2220 List!14700 BalanceConc!9802) Bool)

(assert (=> b!1421193 (= res!643468 (rulesProduceEachTokenIndividually!809 Lexer!2218 (rules!11173 thiss!10022) (tokens!1865 thiss!10022)))))

(declare-fun b!1421194 () Bool)

(declare-fun separableTokens!194 (LexerInterface!2220 BalanceConc!9802 List!14700) Bool)

(assert (=> b!1421194 (= e!907170 (separableTokens!194 Lexer!2218 (tokens!1865 thiss!10022) (rules!11173 thiss!10022)))))

(assert (= (and d!407048 res!643466) b!1421192))

(assert (= (and b!1421192 res!643467) b!1421193))

(assert (= (and b!1421193 res!643468) b!1421194))

(declare-fun m!1611197 () Bool)

(assert (=> d!407048 m!1611197))

(declare-fun m!1611199 () Bool)

(assert (=> b!1421192 m!1611199))

(declare-fun m!1611201 () Bool)

(assert (=> b!1421193 m!1611201))

(declare-fun m!1611203 () Bool)

(assert (=> b!1421194 m!1611203))

(assert (=> start!130882 d!407048))

(declare-fun d!407052 () Bool)

(declare-fun res!643469 () Bool)

(declare-fun e!907171 () Bool)

(assert (=> d!407052 (=> (not res!643469) (not e!907171))))

(assert (=> d!407052 (= res!643469 (not (isEmpty!9017 (rules!11173 other!32))))))

(assert (=> d!407052 (= (inv!19363 other!32) e!907171)))

(declare-fun b!1421195 () Bool)

(declare-fun res!643470 () Bool)

(assert (=> b!1421195 (=> (not res!643470) (not e!907171))))

(assert (=> b!1421195 (= res!643470 (rulesInvariant!2082 Lexer!2218 (rules!11173 other!32)))))

(declare-fun b!1421196 () Bool)

(declare-fun res!643471 () Bool)

(assert (=> b!1421196 (=> (not res!643471) (not e!907171))))

(assert (=> b!1421196 (= res!643471 (rulesProduceEachTokenIndividually!809 Lexer!2218 (rules!11173 other!32) (tokens!1865 other!32)))))

(declare-fun b!1421197 () Bool)

(assert (=> b!1421197 (= e!907171 (separableTokens!194 Lexer!2218 (tokens!1865 other!32) (rules!11173 other!32)))))

(assert (= (and d!407052 res!643469) b!1421195))

(assert (= (and b!1421195 res!643470) b!1421196))

(assert (= (and b!1421196 res!643471) b!1421197))

(declare-fun m!1611205 () Bool)

(assert (=> d!407052 m!1611205))

(declare-fun m!1611207 () Bool)

(assert (=> b!1421195 m!1611207))

(declare-fun m!1611209 () Bool)

(assert (=> b!1421196 m!1611209))

(declare-fun m!1611211 () Bool)

(assert (=> b!1421197 m!1611211))

(assert (=> start!130882 d!407052))

(declare-fun d!407054 () Bool)

(declare-fun lt!480011 () Bool)

(declare-fun isEmpty!9018 (List!14699) Bool)

(assert (=> d!407054 (= lt!480011 (isEmpty!9018 (list!5788 (tokens!1865 other!32))))))

(declare-fun isEmpty!9019 (Conc!4931) Bool)

(assert (=> d!407054 (= lt!480011 (isEmpty!9019 (c!233617 (tokens!1865 other!32))))))

(assert (=> d!407054 (= (isEmpty!9013 (tokens!1865 other!32)) lt!480011)))

(declare-fun bs!339778 () Bool)

(assert (= bs!339778 d!407054))

(assert (=> bs!339778 m!1611007))

(assert (=> bs!339778 m!1611007))

(declare-fun m!1611213 () Bool)

(assert (=> bs!339778 m!1611213))

(declare-fun m!1611215 () Bool)

(assert (=> bs!339778 m!1611215))

(assert (=> b!1421082 d!407054))

(declare-fun d!407056 () Bool)

(declare-fun e!907174 () Bool)

(assert (=> d!407056 e!907174))

(declare-fun res!643476 () Bool)

(assert (=> d!407056 (=> (not res!643476) (not e!907174))))

(assert (=> d!407056 (= res!643476 (rulesInvariant!2082 Lexer!2218 (rules!11173 thiss!10022)))))

(declare-fun Unit!21828 () Unit!21823)

(assert (=> d!407056 (= (lemmaInvariant!248 thiss!10022) Unit!21828)))

(declare-fun b!1421202 () Bool)

(declare-fun res!643477 () Bool)

(assert (=> b!1421202 (=> (not res!643477) (not e!907174))))

(assert (=> b!1421202 (= res!643477 (rulesProduceEachTokenIndividually!809 Lexer!2218 (rules!11173 thiss!10022) (tokens!1865 thiss!10022)))))

(declare-fun b!1421203 () Bool)

(assert (=> b!1421203 (= e!907174 (separableTokens!194 Lexer!2218 (tokens!1865 thiss!10022) (rules!11173 thiss!10022)))))

(assert (= (and d!407056 res!643476) b!1421202))

(assert (= (and b!1421202 res!643477) b!1421203))

(assert (=> d!407056 m!1611199))

(assert (=> b!1421202 m!1611201))

(assert (=> b!1421203 m!1611203))

(assert (=> b!1421082 d!407056))

(declare-fun d!407058 () Bool)

(declare-fun e!907175 () Bool)

(assert (=> d!407058 e!907175))

(declare-fun res!643478 () Bool)

(assert (=> d!407058 (=> (not res!643478) (not e!907175))))

(assert (=> d!407058 (= res!643478 (rulesInvariant!2082 Lexer!2218 (rules!11173 other!32)))))

(declare-fun Unit!21829 () Unit!21823)

(assert (=> d!407058 (= (lemmaInvariant!248 other!32) Unit!21829)))

(declare-fun b!1421204 () Bool)

(declare-fun res!643479 () Bool)

(assert (=> b!1421204 (=> (not res!643479) (not e!907175))))

(assert (=> b!1421204 (= res!643479 (rulesProduceEachTokenIndividually!809 Lexer!2218 (rules!11173 other!32) (tokens!1865 other!32)))))

(declare-fun b!1421205 () Bool)

(assert (=> b!1421205 (= e!907175 (separableTokens!194 Lexer!2218 (tokens!1865 other!32) (rules!11173 other!32)))))

(assert (= (and d!407058 res!643478) b!1421204))

(assert (= (and b!1421204 res!643479) b!1421205))

(assert (=> d!407058 m!1611207))

(assert (=> b!1421204 m!1611209))

(assert (=> b!1421205 m!1611211))

(assert (=> b!1421082 d!407058))

(declare-fun d!407060 () Bool)

(assert (=> d!407060 (= (printList!674 Lexer!2218 (++!3859 lt!479919 Nil!14633)) (++!3858 (printList!674 Lexer!2218 lt!479919) (printList!674 Lexer!2218 Nil!14633)))))

(declare-fun lt!480014 () Unit!21823)

(declare-fun choose!8750 (LexerInterface!2220 List!14699 List!14699) Unit!21823)

(assert (=> d!407060 (= lt!480014 (choose!8750 Lexer!2218 lt!479919 Nil!14633))))

(assert (=> d!407060 (= (lemmaPrintConcatSameAsConcatPrint!39 Lexer!2218 lt!479919 Nil!14633) lt!480014)))

(declare-fun bs!339779 () Bool)

(assert (= bs!339779 d!407060))

(declare-fun m!1611217 () Bool)

(assert (=> bs!339779 m!1611217))

(assert (=> bs!339779 m!1610997))

(assert (=> bs!339779 m!1610981))

(assert (=> bs!339779 m!1610995))

(assert (=> bs!339779 m!1610995))

(assert (=> bs!339779 m!1610981))

(declare-fun m!1611219 () Bool)

(assert (=> bs!339779 m!1611219))

(assert (=> bs!339779 m!1610997))

(declare-fun m!1611221 () Bool)

(assert (=> bs!339779 m!1611221))

(assert (=> b!1421081 d!407060))

(declare-fun d!407062 () Bool)

(declare-fun e!907176 () Bool)

(assert (=> d!407062 e!907176))

(declare-fun res!643480 () Bool)

(assert (=> d!407062 (=> (not res!643480) (not e!907176))))

(declare-fun lt!480015 () List!14697)

(assert (=> d!407062 (= res!643480 (= (content!2153 lt!480015) (set.union (content!2153 lt!479910) (content!2153 lt!479917))))))

(declare-fun e!907177 () List!14697)

(assert (=> d!407062 (= lt!480015 e!907177)))

(declare-fun c!233645 () Bool)

(assert (=> d!407062 (= c!233645 (is-Nil!14631 lt!479910))))

(assert (=> d!407062 (= (++!3858 lt!479910 lt!479917) lt!480015)))

(declare-fun b!1421207 () Bool)

(assert (=> b!1421207 (= e!907177 (Cons!14631 (h!20032 lt!479910) (++!3858 (t!124492 lt!479910) lt!479917)))))

(declare-fun b!1421209 () Bool)

(assert (=> b!1421209 (= e!907176 (or (not (= lt!479917 Nil!14631)) (= lt!480015 lt!479910)))))

(declare-fun b!1421206 () Bool)

(assert (=> b!1421206 (= e!907177 lt!479917)))

(declare-fun b!1421208 () Bool)

(declare-fun res!643481 () Bool)

(assert (=> b!1421208 (=> (not res!643481) (not e!907176))))

(assert (=> b!1421208 (= res!643481 (= (size!12058 lt!480015) (+ (size!12058 lt!479910) (size!12058 lt!479917))))))

(assert (= (and d!407062 c!233645) b!1421206))

(assert (= (and d!407062 (not c!233645)) b!1421207))

(assert (= (and d!407062 res!643480) b!1421208))

(assert (= (and b!1421208 res!643481) b!1421209))

(declare-fun m!1611223 () Bool)

(assert (=> d!407062 m!1611223))

(declare-fun m!1611225 () Bool)

(assert (=> d!407062 m!1611225))

(declare-fun m!1611227 () Bool)

(assert (=> d!407062 m!1611227))

(declare-fun m!1611229 () Bool)

(assert (=> b!1421207 m!1611229))

(declare-fun m!1611231 () Bool)

(assert (=> b!1421208 m!1611231))

(declare-fun m!1611233 () Bool)

(assert (=> b!1421208 m!1611233))

(declare-fun m!1611235 () Bool)

(assert (=> b!1421208 m!1611235))

(assert (=> b!1421081 d!407062))

(declare-fun d!407064 () Bool)

(declare-fun list!5793 (Conc!4931) List!14699)

(assert (=> d!407064 (= (list!5788 (tokens!1865 other!32)) (list!5793 (c!233617 (tokens!1865 other!32))))))

(declare-fun bs!339780 () Bool)

(assert (= bs!339780 d!407064))

(declare-fun m!1611237 () Bool)

(assert (=> bs!339780 m!1611237))

(assert (=> b!1421081 d!407064))

(declare-fun d!407066 () Bool)

(declare-fun c!233646 () Bool)

(assert (=> d!407066 (= c!233646 (is-Cons!14633 Nil!14633))))

(declare-fun e!907178 () List!14697)

(assert (=> d!407066 (= (printList!674 Lexer!2218 Nil!14633) e!907178)))

(declare-fun b!1421210 () Bool)

(assert (=> b!1421210 (= e!907178 (++!3858 (list!5789 (charsOf!1485 (h!20034 Nil!14633))) (printList!674 Lexer!2218 (t!124494 Nil!14633))))))

(declare-fun b!1421211 () Bool)

(assert (=> b!1421211 (= e!907178 Nil!14631)))

(assert (= (and d!407066 c!233646) b!1421210))

(assert (= (and d!407066 (not c!233646)) b!1421211))

(declare-fun m!1611239 () Bool)

(assert (=> b!1421210 m!1611239))

(assert (=> b!1421210 m!1611239))

(declare-fun m!1611241 () Bool)

(assert (=> b!1421210 m!1611241))

(declare-fun m!1611243 () Bool)

(assert (=> b!1421210 m!1611243))

(assert (=> b!1421210 m!1611241))

(assert (=> b!1421210 m!1611243))

(declare-fun m!1611245 () Bool)

(assert (=> b!1421210 m!1611245))

(assert (=> b!1421081 d!407066))

(declare-fun d!407068 () Bool)

(declare-fun e!907181 () Bool)

(assert (=> d!407068 e!907181))

(declare-fun res!643484 () Bool)

(assert (=> d!407068 (=> (not res!643484) (not e!907181))))

(declare-fun lt!480020 () BalanceConc!9800)

(declare-datatypes ((tuple2!14008 0))(
  ( (tuple2!14009 (_1!7890 BalanceConc!9802) (_2!7890 BalanceConc!9800)) )
))
(declare-fun lex!1014 (LexerInterface!2220 List!14700 BalanceConc!9800) tuple2!14008)

(assert (=> d!407068 (= res!643484 (= (list!5788 (_1!7890 (lex!1014 Lexer!2218 (rules!11173 other!32) lt!480020))) (list!5788 (tokens!1865 other!32))))))

(assert (=> d!407068 (= lt!480020 (print!999 Lexer!2218 (tokens!1865 other!32)))))

(declare-fun lt!480021 () Unit!21823)

(assert (=> d!407068 (= lt!480021 (theoremInvertabilityWhenTokenListSeparable!42 Lexer!2218 (rules!11173 other!32) (list!5788 (tokens!1865 other!32))))))

(assert (=> d!407068 (= (print!1000 other!32) lt!480020)))

(declare-fun b!1421214 () Bool)

(declare-fun isEmpty!9020 (List!14697) Bool)

(assert (=> b!1421214 (= e!907181 (isEmpty!9020 (list!5789 (_2!7890 (lex!1014 Lexer!2218 (rules!11173 other!32) lt!480020)))))))

(assert (= (and d!407068 res!643484) b!1421214))

(assert (=> d!407068 m!1611007))

(declare-fun m!1611247 () Bool)

(assert (=> d!407068 m!1611247))

(assert (=> d!407068 m!1611007))

(declare-fun m!1611249 () Bool)

(assert (=> d!407068 m!1611249))

(assert (=> d!407068 m!1611005))

(declare-fun m!1611251 () Bool)

(assert (=> d!407068 m!1611251))

(assert (=> b!1421214 m!1611251))

(declare-fun m!1611253 () Bool)

(assert (=> b!1421214 m!1611253))

(assert (=> b!1421214 m!1611253))

(declare-fun m!1611255 () Bool)

(assert (=> b!1421214 m!1611255))

(assert (=> b!1421081 d!407068))

(declare-fun d!407070 () Bool)

(assert (=> d!407070 (= (list!5788 (tokens!1865 thiss!10022)) (list!5793 (c!233617 (tokens!1865 thiss!10022))))))

(declare-fun bs!339781 () Bool)

(assert (= bs!339781 d!407070))

(declare-fun m!1611257 () Bool)

(assert (=> bs!339781 m!1611257))

(assert (=> b!1421081 d!407070))

(declare-fun d!407072 () Bool)

(declare-fun e!907217 () Bool)

(assert (=> d!407072 e!907217))

(declare-fun res!643507 () Bool)

(assert (=> d!407072 (=> (not res!643507) (not e!907217))))

(declare-fun seqFromList!1676 (List!14699) BalanceConc!9802)

(assert (=> d!407072 (= res!643507 (= (list!5788 (_1!7890 (lex!1014 Lexer!2218 (rules!11173 thiss!10022) (print!999 Lexer!2218 (seqFromList!1676 lt!479919))))) lt!479919))))

(declare-fun lt!480223 () Unit!21823)

(declare-fun e!907216 () Unit!21823)

(assert (=> d!407072 (= lt!480223 e!907216)))

(declare-fun c!233665 () Bool)

(assert (=> d!407072 (= c!233665 (or (is-Nil!14633 lt!479919) (is-Nil!14633 (t!124494 lt!479919))))))

(assert (=> d!407072 (not (isEmpty!9017 (rules!11173 thiss!10022)))))

(assert (=> d!407072 (= (theoremInvertabilityWhenTokenListSeparable!42 Lexer!2218 (rules!11173 thiss!10022) lt!479919) lt!480223)))

(declare-fun b!1421273 () Bool)

(declare-fun Unit!21830 () Unit!21823)

(assert (=> b!1421273 (= e!907216 Unit!21830)))

(declare-fun b!1421274 () Bool)

(declare-fun Unit!21831 () Unit!21823)

(assert (=> b!1421274 (= e!907216 Unit!21831)))

(declare-fun lt!480220 () BalanceConc!9800)

(assert (=> b!1421274 (= lt!480220 (print!999 Lexer!2218 (seqFromList!1676 lt!479919)))))

(declare-fun lt!480216 () BalanceConc!9800)

(assert (=> b!1421274 (= lt!480216 (print!999 Lexer!2218 (seqFromList!1676 (t!124494 lt!479919))))))

(declare-fun lt!480205 () tuple2!14008)

(assert (=> b!1421274 (= lt!480205 (lex!1014 Lexer!2218 (rules!11173 thiss!10022) lt!480216))))

(declare-fun lt!480204 () List!14697)

(assert (=> b!1421274 (= lt!480204 (list!5789 (charsOf!1485 (h!20034 lt!479919))))))

(declare-fun lt!480208 () List!14697)

(assert (=> b!1421274 (= lt!480208 (list!5789 lt!480216))))

(declare-fun lt!480217 () Unit!21823)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!740 (List!14697 List!14697) Unit!21823)

(assert (=> b!1421274 (= lt!480217 (lemmaConcatTwoListThenFirstIsPrefix!740 lt!480204 lt!480208))))

(declare-fun isPrefix!1173 (List!14697 List!14697) Bool)

(assert (=> b!1421274 (isPrefix!1173 lt!480204 (++!3858 lt!480204 lt!480208))))

(declare-fun lt!480213 () Unit!21823)

(assert (=> b!1421274 (= lt!480213 lt!480217)))

(declare-fun lt!480219 () Unit!21823)

(assert (=> b!1421274 (= lt!480219 (theoremInvertabilityWhenTokenListSeparable!42 Lexer!2218 (rules!11173 thiss!10022) (t!124494 lt!479919)))))

(declare-fun lt!480203 () Unit!21823)

(declare-fun seqFromListBHdTlConstructive!69 (Token!4766 List!14699 BalanceConc!9802) Unit!21823)

(assert (=> b!1421274 (= lt!480203 (seqFromListBHdTlConstructive!69 (h!20034 (t!124494 lt!479919)) (t!124494 (t!124494 lt!479919)) (_1!7890 lt!480205)))))

(declare-fun prepend!385 (BalanceConc!9802 Token!4766) BalanceConc!9802)

(assert (=> b!1421274 (= (list!5788 (_1!7890 lt!480205)) (list!5788 (prepend!385 (seqFromList!1676 (t!124494 (t!124494 lt!479919))) (h!20034 (t!124494 lt!479919)))))))

(declare-fun lt!480207 () Unit!21823)

(assert (=> b!1421274 (= lt!480207 lt!480203)))

(declare-datatypes ((tuple2!14010 0))(
  ( (tuple2!14011 (_1!7891 Token!4766) (_2!7891 List!14697)) )
))
(declare-datatypes ((Option!2807 0))(
  ( (None!2806) (Some!2806 (v!22214 tuple2!14010)) )
))
(declare-fun lt!480210 () Option!2807)

(declare-fun maxPrefix!1163 (LexerInterface!2220 List!14700 List!14697) Option!2807)

(assert (=> b!1421274 (= lt!480210 (maxPrefix!1163 Lexer!2218 (rules!11173 thiss!10022) (list!5789 lt!480220)))))

(declare-fun singletonSeq!1171 (Token!4766) BalanceConc!9802)

(assert (=> b!1421274 (= (print!999 Lexer!2218 (singletonSeq!1171 (h!20034 lt!479919))) (printTailRec!652 Lexer!2218 (singletonSeq!1171 (h!20034 lt!479919)) 0 (BalanceConc!9801 Empty!4930)))))

(declare-fun lt!480222 () Unit!21823)

(declare-fun Unit!21832 () Unit!21823)

(assert (=> b!1421274 (= lt!480222 Unit!21832)))

(declare-fun lt!480218 () Unit!21823)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!213 (LexerInterface!2220 List!14700 List!14697 List!14697) Unit!21823)

(assert (=> b!1421274 (= lt!480218 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!213 Lexer!2218 (rules!11173 thiss!10022) (list!5789 (charsOf!1485 (h!20034 lt!479919))) (list!5789 lt!480216)))))

(assert (=> b!1421274 (= (list!5789 (charsOf!1485 (h!20034 lt!479919))) (originalCharacters!3414 (h!20034 lt!479919)))))

(declare-fun lt!480224 () Unit!21823)

(declare-fun Unit!21833 () Unit!21823)

(assert (=> b!1421274 (= lt!480224 Unit!21833)))

(declare-fun singletonSeq!1172 (C!7910) BalanceConc!9800)

(declare-fun apply!3727 (BalanceConc!9800 Int) C!7910)

(declare-fun head!2783 (List!14697) C!7910)

(assert (=> b!1421274 (= (list!5789 (singletonSeq!1172 (apply!3727 (charsOf!1485 (h!20034 (t!124494 lt!479919))) 0))) (Cons!14631 (head!2783 (originalCharacters!3414 (h!20034 (t!124494 lt!479919)))) Nil!14631))))

(declare-fun lt!480211 () Unit!21823)

(declare-fun Unit!21834 () Unit!21823)

(assert (=> b!1421274 (= lt!480211 Unit!21834)))

(assert (=> b!1421274 (= (list!5789 (singletonSeq!1172 (apply!3727 (charsOf!1485 (h!20034 (t!124494 lt!479919))) 0))) (Cons!14631 (head!2783 (list!5789 lt!480216)) Nil!14631))))

(declare-fun lt!480201 () Unit!21823)

(declare-fun Unit!21835 () Unit!21823)

(assert (=> b!1421274 (= lt!480201 Unit!21835)))

(declare-fun head!2784 (BalanceConc!9800) C!7910)

(assert (=> b!1421274 (= (list!5789 (singletonSeq!1172 (apply!3727 (charsOf!1485 (h!20034 (t!124494 lt!479919))) 0))) (Cons!14631 (head!2784 lt!480216) Nil!14631))))

(declare-fun lt!480206 () Unit!21823)

(declare-fun Unit!21836 () Unit!21823)

(assert (=> b!1421274 (= lt!480206 Unit!21836)))

(declare-fun isDefined!2268 (Option!2807) Bool)

(assert (=> b!1421274 (isDefined!2268 (maxPrefix!1163 Lexer!2218 (rules!11173 thiss!10022) (originalCharacters!3414 (h!20034 lt!479919))))))

(declare-fun lt!480202 () Unit!21823)

(declare-fun Unit!21837 () Unit!21823)

(assert (=> b!1421274 (= lt!480202 Unit!21837)))

(assert (=> b!1421274 (isDefined!2268 (maxPrefix!1163 Lexer!2218 (rules!11173 thiss!10022) (list!5789 (charsOf!1485 (h!20034 lt!479919)))))))

(declare-fun lt!480221 () Unit!21823)

(declare-fun Unit!21838 () Unit!21823)

(assert (=> b!1421274 (= lt!480221 Unit!21838)))

(declare-fun lt!480215 () Unit!21823)

(declare-fun Unit!21839 () Unit!21823)

(assert (=> b!1421274 (= lt!480215 Unit!21839)))

(declare-fun get!4496 (Option!2807) tuple2!14010)

(assert (=> b!1421274 (= (_1!7891 (get!4496 (maxPrefix!1163 Lexer!2218 (rules!11173 thiss!10022) (list!5789 (charsOf!1485 (h!20034 lt!479919)))))) (h!20034 lt!479919))))

(declare-fun lt!480212 () Unit!21823)

(declare-fun Unit!21840 () Unit!21823)

(assert (=> b!1421274 (= lt!480212 Unit!21840)))

(assert (=> b!1421274 (isEmpty!9020 (_2!7891 (get!4496 (maxPrefix!1163 Lexer!2218 (rules!11173 thiss!10022) (list!5789 (charsOf!1485 (h!20034 lt!479919)))))))))

(declare-fun lt!480214 () Unit!21823)

(declare-fun Unit!21841 () Unit!21823)

(assert (=> b!1421274 (= lt!480214 Unit!21841)))

(declare-fun matchR!1799 (Regex!3866 List!14697) Bool)

(assert (=> b!1421274 (matchR!1799 (regex!2552 (rule!4315 (h!20034 lt!479919))) (list!5789 (charsOf!1485 (h!20034 lt!479919))))))

(declare-fun lt!480200 () Unit!21823)

(declare-fun Unit!21842 () Unit!21823)

(assert (=> b!1421274 (= lt!480200 Unit!21842)))

(assert (=> b!1421274 (= (rule!4315 (h!20034 lt!479919)) (rule!4315 (h!20034 lt!479919)))))

(declare-fun lt!480199 () Unit!21823)

(declare-fun Unit!21843 () Unit!21823)

(assert (=> b!1421274 (= lt!480199 Unit!21843)))

(declare-fun lt!480209 () Unit!21823)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!11 (LexerInterface!2220 List!14700 Token!4766 Rule!4904 List!14697) Unit!21823)

(assert (=> b!1421274 (= lt!480209 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!11 Lexer!2218 (rules!11173 thiss!10022) (h!20034 lt!479919) (rule!4315 (h!20034 lt!479919)) (list!5789 lt!480216)))))

(declare-fun b!1421275 () Bool)

(declare-fun isEmpty!9021 (BalanceConc!9800) Bool)

(assert (=> b!1421275 (= e!907217 (isEmpty!9021 (_2!7890 (lex!1014 Lexer!2218 (rules!11173 thiss!10022) (print!999 Lexer!2218 (seqFromList!1676 lt!479919))))))))

(assert (= (and d!407072 c!233665) b!1421273))

(assert (= (and d!407072 (not c!233665)) b!1421274))

(assert (= (and d!407072 res!643507) b!1421275))

(declare-fun m!1611515 () Bool)

(assert (=> d!407072 m!1611515))

(declare-fun m!1611517 () Bool)

(assert (=> d!407072 m!1611517))

(assert (=> d!407072 m!1611197))

(assert (=> d!407072 m!1611517))

(declare-fun m!1611519 () Bool)

(assert (=> d!407072 m!1611519))

(declare-fun m!1611521 () Bool)

(assert (=> d!407072 m!1611521))

(assert (=> d!407072 m!1611515))

(declare-fun m!1611523 () Bool)

(assert (=> b!1421274 m!1611523))

(assert (=> b!1421274 m!1611515))

(assert (=> b!1421274 m!1611517))

(declare-fun m!1611525 () Bool)

(assert (=> b!1421274 m!1611525))

(declare-fun m!1611527 () Bool)

(assert (=> b!1421274 m!1611527))

(assert (=> b!1421274 m!1611525))

(declare-fun m!1611529 () Bool)

(assert (=> b!1421274 m!1611529))

(declare-fun m!1611531 () Bool)

(assert (=> b!1421274 m!1611531))

(declare-fun m!1611533 () Bool)

(assert (=> b!1421274 m!1611533))

(declare-fun m!1611535 () Bool)

(assert (=> b!1421274 m!1611535))

(declare-fun m!1611537 () Bool)

(assert (=> b!1421274 m!1611537))

(declare-fun m!1611539 () Bool)

(assert (=> b!1421274 m!1611539))

(assert (=> b!1421274 m!1611515))

(assert (=> b!1421274 m!1611529))

(declare-fun m!1611541 () Bool)

(assert (=> b!1421274 m!1611541))

(declare-fun m!1611543 () Bool)

(assert (=> b!1421274 m!1611543))

(declare-fun m!1611545 () Bool)

(assert (=> b!1421274 m!1611545))

(declare-fun m!1611547 () Bool)

(assert (=> b!1421274 m!1611547))

(assert (=> b!1421274 m!1611525))

(declare-fun m!1611549 () Bool)

(assert (=> b!1421274 m!1611549))

(declare-fun m!1611551 () Bool)

(assert (=> b!1421274 m!1611551))

(declare-fun m!1611553 () Bool)

(assert (=> b!1421274 m!1611553))

(declare-fun m!1611555 () Bool)

(assert (=> b!1421274 m!1611555))

(assert (=> b!1421274 m!1611529))

(declare-fun m!1611557 () Bool)

(assert (=> b!1421274 m!1611557))

(declare-fun m!1611559 () Bool)

(assert (=> b!1421274 m!1611559))

(declare-fun m!1611561 () Bool)

(assert (=> b!1421274 m!1611561))

(assert (=> b!1421274 m!1611551))

(declare-fun m!1611563 () Bool)

(assert (=> b!1421274 m!1611563))

(declare-fun m!1611565 () Bool)

(assert (=> b!1421274 m!1611565))

(declare-fun m!1611567 () Bool)

(assert (=> b!1421274 m!1611567))

(assert (=> b!1421274 m!1611543))

(assert (=> b!1421274 m!1611565))

(assert (=> b!1421274 m!1611565))

(declare-fun m!1611569 () Bool)

(assert (=> b!1421274 m!1611569))

(declare-fun m!1611571 () Bool)

(assert (=> b!1421274 m!1611571))

(declare-fun m!1611573 () Bool)

(assert (=> b!1421274 m!1611573))

(declare-fun m!1611575 () Bool)

(assert (=> b!1421274 m!1611575))

(assert (=> b!1421274 m!1611563))

(declare-fun m!1611577 () Bool)

(assert (=> b!1421274 m!1611577))

(assert (=> b!1421274 m!1611553))

(assert (=> b!1421274 m!1611529))

(declare-fun m!1611579 () Bool)

(assert (=> b!1421274 m!1611579))

(assert (=> b!1421274 m!1611547))

(declare-fun m!1611581 () Bool)

(assert (=> b!1421274 m!1611581))

(assert (=> b!1421274 m!1611571))

(assert (=> b!1421274 m!1611573))

(declare-fun m!1611583 () Bool)

(assert (=> b!1421274 m!1611583))

(declare-fun m!1611585 () Bool)

(assert (=> b!1421274 m!1611585))

(assert (=> b!1421274 m!1611583))

(declare-fun m!1611587 () Bool)

(assert (=> b!1421274 m!1611587))

(assert (=> b!1421274 m!1611561))

(declare-fun m!1611589 () Bool)

(assert (=> b!1421274 m!1611589))

(assert (=> b!1421274 m!1611557))

(declare-fun m!1611591 () Bool)

(assert (=> b!1421274 m!1611591))

(assert (=> b!1421274 m!1611525))

(assert (=> b!1421274 m!1611583))

(assert (=> b!1421274 m!1611575))

(declare-fun m!1611593 () Bool)

(assert (=> b!1421274 m!1611593))

(assert (=> b!1421275 m!1611515))

(assert (=> b!1421275 m!1611515))

(assert (=> b!1421275 m!1611517))

(assert (=> b!1421275 m!1611517))

(assert (=> b!1421275 m!1611519))

(declare-fun m!1611595 () Bool)

(assert (=> b!1421275 m!1611595))

(assert (=> b!1421081 d!407072))

(declare-fun d!407110 () Bool)

(declare-fun c!233666 () Bool)

(assert (=> d!407110 (= c!233666 (is-Cons!14633 lt!479918))))

(declare-fun e!907218 () List!14697)

(assert (=> d!407110 (= (printList!674 Lexer!2218 lt!479918) e!907218)))

(declare-fun b!1421276 () Bool)

(assert (=> b!1421276 (= e!907218 (++!3858 (list!5789 (charsOf!1485 (h!20034 lt!479918))) (printList!674 Lexer!2218 (t!124494 lt!479918))))))

(declare-fun b!1421277 () Bool)

(assert (=> b!1421277 (= e!907218 Nil!14631)))

(assert (= (and d!407110 c!233666) b!1421276))

(assert (= (and d!407110 (not c!233666)) b!1421277))

(declare-fun m!1611597 () Bool)

(assert (=> b!1421276 m!1611597))

(assert (=> b!1421276 m!1611597))

(declare-fun m!1611599 () Bool)

(assert (=> b!1421276 m!1611599))

(declare-fun m!1611601 () Bool)

(assert (=> b!1421276 m!1611601))

(assert (=> b!1421276 m!1611599))

(assert (=> b!1421276 m!1611601))

(declare-fun m!1611603 () Bool)

(assert (=> b!1421276 m!1611603))

(assert (=> b!1421081 d!407110))

(declare-fun d!407112 () Bool)

(declare-fun e!907220 () Bool)

(assert (=> d!407112 e!907220))

(declare-fun res!643508 () Bool)

(assert (=> d!407112 (=> (not res!643508) (not e!907220))))

(assert (=> d!407112 (= res!643508 (= (list!5788 (_1!7890 (lex!1014 Lexer!2218 (rules!11173 other!32) (print!999 Lexer!2218 (seqFromList!1676 lt!479909))))) lt!479909))))

(declare-fun lt!480249 () Unit!21823)

(declare-fun e!907219 () Unit!21823)

(assert (=> d!407112 (= lt!480249 e!907219)))

(declare-fun c!233667 () Bool)

(assert (=> d!407112 (= c!233667 (or (is-Nil!14633 lt!479909) (is-Nil!14633 (t!124494 lt!479909))))))

(assert (=> d!407112 (not (isEmpty!9017 (rules!11173 other!32)))))

(assert (=> d!407112 (= (theoremInvertabilityWhenTokenListSeparable!42 Lexer!2218 (rules!11173 other!32) lt!479909) lt!480249)))

(declare-fun b!1421278 () Bool)

(declare-fun Unit!21844 () Unit!21823)

(assert (=> b!1421278 (= e!907219 Unit!21844)))

(declare-fun b!1421279 () Bool)

(declare-fun Unit!21845 () Unit!21823)

(assert (=> b!1421279 (= e!907219 Unit!21845)))

(declare-fun lt!480246 () BalanceConc!9800)

(assert (=> b!1421279 (= lt!480246 (print!999 Lexer!2218 (seqFromList!1676 lt!479909)))))

(declare-fun lt!480242 () BalanceConc!9800)

(assert (=> b!1421279 (= lt!480242 (print!999 Lexer!2218 (seqFromList!1676 (t!124494 lt!479909))))))

(declare-fun lt!480231 () tuple2!14008)

(assert (=> b!1421279 (= lt!480231 (lex!1014 Lexer!2218 (rules!11173 other!32) lt!480242))))

(declare-fun lt!480230 () List!14697)

(assert (=> b!1421279 (= lt!480230 (list!5789 (charsOf!1485 (h!20034 lt!479909))))))

(declare-fun lt!480234 () List!14697)

(assert (=> b!1421279 (= lt!480234 (list!5789 lt!480242))))

(declare-fun lt!480243 () Unit!21823)

(assert (=> b!1421279 (= lt!480243 (lemmaConcatTwoListThenFirstIsPrefix!740 lt!480230 lt!480234))))

(assert (=> b!1421279 (isPrefix!1173 lt!480230 (++!3858 lt!480230 lt!480234))))

(declare-fun lt!480239 () Unit!21823)

(assert (=> b!1421279 (= lt!480239 lt!480243)))

(declare-fun lt!480245 () Unit!21823)

(assert (=> b!1421279 (= lt!480245 (theoremInvertabilityWhenTokenListSeparable!42 Lexer!2218 (rules!11173 other!32) (t!124494 lt!479909)))))

(declare-fun lt!480229 () Unit!21823)

(assert (=> b!1421279 (= lt!480229 (seqFromListBHdTlConstructive!69 (h!20034 (t!124494 lt!479909)) (t!124494 (t!124494 lt!479909)) (_1!7890 lt!480231)))))

(assert (=> b!1421279 (= (list!5788 (_1!7890 lt!480231)) (list!5788 (prepend!385 (seqFromList!1676 (t!124494 (t!124494 lt!479909))) (h!20034 (t!124494 lt!479909)))))))

(declare-fun lt!480233 () Unit!21823)

(assert (=> b!1421279 (= lt!480233 lt!480229)))

(declare-fun lt!480236 () Option!2807)

(assert (=> b!1421279 (= lt!480236 (maxPrefix!1163 Lexer!2218 (rules!11173 other!32) (list!5789 lt!480246)))))

(assert (=> b!1421279 (= (print!999 Lexer!2218 (singletonSeq!1171 (h!20034 lt!479909))) (printTailRec!652 Lexer!2218 (singletonSeq!1171 (h!20034 lt!479909)) 0 (BalanceConc!9801 Empty!4930)))))

(declare-fun lt!480248 () Unit!21823)

(declare-fun Unit!21846 () Unit!21823)

(assert (=> b!1421279 (= lt!480248 Unit!21846)))

(declare-fun lt!480244 () Unit!21823)

(assert (=> b!1421279 (= lt!480244 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!213 Lexer!2218 (rules!11173 other!32) (list!5789 (charsOf!1485 (h!20034 lt!479909))) (list!5789 lt!480242)))))

(assert (=> b!1421279 (= (list!5789 (charsOf!1485 (h!20034 lt!479909))) (originalCharacters!3414 (h!20034 lt!479909)))))

(declare-fun lt!480250 () Unit!21823)

(declare-fun Unit!21847 () Unit!21823)

(assert (=> b!1421279 (= lt!480250 Unit!21847)))

(assert (=> b!1421279 (= (list!5789 (singletonSeq!1172 (apply!3727 (charsOf!1485 (h!20034 (t!124494 lt!479909))) 0))) (Cons!14631 (head!2783 (originalCharacters!3414 (h!20034 (t!124494 lt!479909)))) Nil!14631))))

(declare-fun lt!480237 () Unit!21823)

(declare-fun Unit!21848 () Unit!21823)

(assert (=> b!1421279 (= lt!480237 Unit!21848)))

(assert (=> b!1421279 (= (list!5789 (singletonSeq!1172 (apply!3727 (charsOf!1485 (h!20034 (t!124494 lt!479909))) 0))) (Cons!14631 (head!2783 (list!5789 lt!480242)) Nil!14631))))

(declare-fun lt!480227 () Unit!21823)

(declare-fun Unit!21849 () Unit!21823)

(assert (=> b!1421279 (= lt!480227 Unit!21849)))

(assert (=> b!1421279 (= (list!5789 (singletonSeq!1172 (apply!3727 (charsOf!1485 (h!20034 (t!124494 lt!479909))) 0))) (Cons!14631 (head!2784 lt!480242) Nil!14631))))

(declare-fun lt!480232 () Unit!21823)

(declare-fun Unit!21850 () Unit!21823)

(assert (=> b!1421279 (= lt!480232 Unit!21850)))

(assert (=> b!1421279 (isDefined!2268 (maxPrefix!1163 Lexer!2218 (rules!11173 other!32) (originalCharacters!3414 (h!20034 lt!479909))))))

(declare-fun lt!480228 () Unit!21823)

(declare-fun Unit!21851 () Unit!21823)

(assert (=> b!1421279 (= lt!480228 Unit!21851)))

(assert (=> b!1421279 (isDefined!2268 (maxPrefix!1163 Lexer!2218 (rules!11173 other!32) (list!5789 (charsOf!1485 (h!20034 lt!479909)))))))

(declare-fun lt!480247 () Unit!21823)

(declare-fun Unit!21852 () Unit!21823)

(assert (=> b!1421279 (= lt!480247 Unit!21852)))

(declare-fun lt!480241 () Unit!21823)

(declare-fun Unit!21853 () Unit!21823)

(assert (=> b!1421279 (= lt!480241 Unit!21853)))

(assert (=> b!1421279 (= (_1!7891 (get!4496 (maxPrefix!1163 Lexer!2218 (rules!11173 other!32) (list!5789 (charsOf!1485 (h!20034 lt!479909)))))) (h!20034 lt!479909))))

(declare-fun lt!480238 () Unit!21823)

(declare-fun Unit!21854 () Unit!21823)

(assert (=> b!1421279 (= lt!480238 Unit!21854)))

(assert (=> b!1421279 (isEmpty!9020 (_2!7891 (get!4496 (maxPrefix!1163 Lexer!2218 (rules!11173 other!32) (list!5789 (charsOf!1485 (h!20034 lt!479909)))))))))

(declare-fun lt!480240 () Unit!21823)

(declare-fun Unit!21855 () Unit!21823)

(assert (=> b!1421279 (= lt!480240 Unit!21855)))

(assert (=> b!1421279 (matchR!1799 (regex!2552 (rule!4315 (h!20034 lt!479909))) (list!5789 (charsOf!1485 (h!20034 lt!479909))))))

(declare-fun lt!480226 () Unit!21823)

(declare-fun Unit!21856 () Unit!21823)

(assert (=> b!1421279 (= lt!480226 Unit!21856)))

(assert (=> b!1421279 (= (rule!4315 (h!20034 lt!479909)) (rule!4315 (h!20034 lt!479909)))))

(declare-fun lt!480225 () Unit!21823)

(declare-fun Unit!21857 () Unit!21823)

(assert (=> b!1421279 (= lt!480225 Unit!21857)))

(declare-fun lt!480235 () Unit!21823)

(assert (=> b!1421279 (= lt!480235 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!11 Lexer!2218 (rules!11173 other!32) (h!20034 lt!479909) (rule!4315 (h!20034 lt!479909)) (list!5789 lt!480242)))))

(declare-fun b!1421280 () Bool)

(assert (=> b!1421280 (= e!907220 (isEmpty!9021 (_2!7890 (lex!1014 Lexer!2218 (rules!11173 other!32) (print!999 Lexer!2218 (seqFromList!1676 lt!479909))))))))

(assert (= (and d!407112 c!233667) b!1421278))

(assert (= (and d!407112 (not c!233667)) b!1421279))

(assert (= (and d!407112 res!643508) b!1421280))

(declare-fun m!1611605 () Bool)

(assert (=> d!407112 m!1611605))

(declare-fun m!1611607 () Bool)

(assert (=> d!407112 m!1611607))

(assert (=> d!407112 m!1611205))

(assert (=> d!407112 m!1611607))

(declare-fun m!1611609 () Bool)

(assert (=> d!407112 m!1611609))

(declare-fun m!1611611 () Bool)

(assert (=> d!407112 m!1611611))

(assert (=> d!407112 m!1611605))

(declare-fun m!1611613 () Bool)

(assert (=> b!1421279 m!1611613))

(assert (=> b!1421279 m!1611605))

(assert (=> b!1421279 m!1611607))

(assert (=> b!1421279 m!1610965))

(declare-fun m!1611615 () Bool)

(assert (=> b!1421279 m!1611615))

(assert (=> b!1421279 m!1610965))

(declare-fun m!1611617 () Bool)

(assert (=> b!1421279 m!1611617))

(declare-fun m!1611619 () Bool)

(assert (=> b!1421279 m!1611619))

(declare-fun m!1611621 () Bool)

(assert (=> b!1421279 m!1611621))

(declare-fun m!1611623 () Bool)

(assert (=> b!1421279 m!1611623))

(declare-fun m!1611625 () Bool)

(assert (=> b!1421279 m!1611625))

(declare-fun m!1611627 () Bool)

(assert (=> b!1421279 m!1611627))

(assert (=> b!1421279 m!1611605))

(assert (=> b!1421279 m!1611617))

(declare-fun m!1611629 () Bool)

(assert (=> b!1421279 m!1611629))

(declare-fun m!1611631 () Bool)

(assert (=> b!1421279 m!1611631))

(declare-fun m!1611633 () Bool)

(assert (=> b!1421279 m!1611633))

(assert (=> b!1421279 m!1610963))

(assert (=> b!1421279 m!1610965))

(declare-fun m!1611635 () Bool)

(assert (=> b!1421279 m!1611635))

(declare-fun m!1611637 () Bool)

(assert (=> b!1421279 m!1611637))

(declare-fun m!1611639 () Bool)

(assert (=> b!1421279 m!1611639))

(declare-fun m!1611641 () Bool)

(assert (=> b!1421279 m!1611641))

(assert (=> b!1421279 m!1611617))

(declare-fun m!1611643 () Bool)

(assert (=> b!1421279 m!1611643))

(declare-fun m!1611645 () Bool)

(assert (=> b!1421279 m!1611645))

(declare-fun m!1611647 () Bool)

(assert (=> b!1421279 m!1611647))

(assert (=> b!1421279 m!1611637))

(declare-fun m!1611649 () Bool)

(assert (=> b!1421279 m!1611649))

(declare-fun m!1611651 () Bool)

(assert (=> b!1421279 m!1611651))

(declare-fun m!1611653 () Bool)

(assert (=> b!1421279 m!1611653))

(assert (=> b!1421279 m!1611631))

(assert (=> b!1421279 m!1611651))

(assert (=> b!1421279 m!1611651))

(declare-fun m!1611655 () Bool)

(assert (=> b!1421279 m!1611655))

(assert (=> b!1421279 m!1611153))

(declare-fun m!1611657 () Bool)

(assert (=> b!1421279 m!1611657))

(declare-fun m!1611659 () Bool)

(assert (=> b!1421279 m!1611659))

(assert (=> b!1421279 m!1611649))

(declare-fun m!1611661 () Bool)

(assert (=> b!1421279 m!1611661))

(assert (=> b!1421279 m!1611639))

(assert (=> b!1421279 m!1611617))

(declare-fun m!1611663 () Bool)

(assert (=> b!1421279 m!1611663))

(assert (=> b!1421279 m!1610963))

(declare-fun m!1611665 () Bool)

(assert (=> b!1421279 m!1611665))

(assert (=> b!1421279 m!1611153))

(assert (=> b!1421279 m!1611657))

(declare-fun m!1611667 () Bool)

(assert (=> b!1421279 m!1611667))

(declare-fun m!1611669 () Bool)

(assert (=> b!1421279 m!1611669))

(assert (=> b!1421279 m!1611667))

(declare-fun m!1611671 () Bool)

(assert (=> b!1421279 m!1611671))

(assert (=> b!1421279 m!1611647))

(declare-fun m!1611673 () Bool)

(assert (=> b!1421279 m!1611673))

(assert (=> b!1421279 m!1611643))

(declare-fun m!1611675 () Bool)

(assert (=> b!1421279 m!1611675))

(assert (=> b!1421279 m!1610965))

(assert (=> b!1421279 m!1611667))

(assert (=> b!1421279 m!1611659))

(declare-fun m!1611677 () Bool)

(assert (=> b!1421279 m!1611677))

(assert (=> b!1421280 m!1611605))

(assert (=> b!1421280 m!1611605))

(assert (=> b!1421280 m!1611607))

(assert (=> b!1421280 m!1611607))

(assert (=> b!1421280 m!1611609))

(declare-fun m!1611679 () Bool)

(assert (=> b!1421280 m!1611679))

(assert (=> b!1421081 d!407112))

(declare-fun d!407114 () Bool)

(declare-fun e!907221 () Bool)

(assert (=> d!407114 e!907221))

(declare-fun res!643509 () Bool)

(assert (=> d!407114 (=> (not res!643509) (not e!907221))))

(declare-fun lt!480251 () BalanceConc!9800)

(assert (=> d!407114 (= res!643509 (= (list!5788 (_1!7890 (lex!1014 Lexer!2218 (rules!11173 thiss!10022) lt!480251))) (list!5788 (tokens!1865 thiss!10022))))))

(assert (=> d!407114 (= lt!480251 (print!999 Lexer!2218 (tokens!1865 thiss!10022)))))

(declare-fun lt!480252 () Unit!21823)

(assert (=> d!407114 (= lt!480252 (theoremInvertabilityWhenTokenListSeparable!42 Lexer!2218 (rules!11173 thiss!10022) (list!5788 (tokens!1865 thiss!10022))))))

(assert (=> d!407114 (= (print!1000 thiss!10022) lt!480251)))

(declare-fun b!1421281 () Bool)

(assert (=> b!1421281 (= e!907221 (isEmpty!9020 (list!5789 (_2!7890 (lex!1014 Lexer!2218 (rules!11173 thiss!10022) lt!480251)))))))

(assert (= (and d!407114 res!643509) b!1421281))

(assert (=> d!407114 m!1610993))

(declare-fun m!1611681 () Bool)

(assert (=> d!407114 m!1611681))

(assert (=> d!407114 m!1610993))

(declare-fun m!1611683 () Bool)

(assert (=> d!407114 m!1611683))

(assert (=> d!407114 m!1610991))

(declare-fun m!1611685 () Bool)

(assert (=> d!407114 m!1611685))

(assert (=> b!1421281 m!1611685))

(declare-fun m!1611687 () Bool)

(assert (=> b!1421281 m!1611687))

(assert (=> b!1421281 m!1611687))

(declare-fun m!1611689 () Bool)

(assert (=> b!1421281 m!1611689))

(assert (=> b!1421081 d!407114))

(declare-fun d!407116 () Bool)

(declare-fun lt!480255 () BalanceConc!9800)

(assert (=> d!407116 (= (list!5789 lt!480255) (printList!674 Lexer!2218 (list!5788 (tokens!1865 thiss!10022))))))

(assert (=> d!407116 (= lt!480255 (printTailRec!652 Lexer!2218 (tokens!1865 thiss!10022) 0 (BalanceConc!9801 Empty!4930)))))

(assert (=> d!407116 (= (print!999 Lexer!2218 (tokens!1865 thiss!10022)) lt!480255)))

(declare-fun bs!339789 () Bool)

(assert (= bs!339789 d!407116))

(declare-fun m!1611691 () Bool)

(assert (=> bs!339789 m!1611691))

(assert (=> bs!339789 m!1610993))

(assert (=> bs!339789 m!1610993))

(declare-fun m!1611693 () Bool)

(assert (=> bs!339789 m!1611693))

(declare-fun m!1611695 () Bool)

(assert (=> bs!339789 m!1611695))

(assert (=> b!1421081 d!407116))

(declare-fun b!1421290 () Bool)

(declare-fun e!907227 () List!14699)

(assert (=> b!1421290 (= e!907227 Nil!14633)))

(declare-fun b!1421293 () Bool)

(declare-fun e!907226 () Bool)

(declare-fun lt!480258 () List!14699)

(assert (=> b!1421293 (= e!907226 (or (not (= Nil!14633 Nil!14633)) (= lt!480258 lt!479919)))))

(declare-fun b!1421291 () Bool)

(assert (=> b!1421291 (= e!907227 (Cons!14633 (h!20034 lt!479919) (++!3859 (t!124494 lt!479919) Nil!14633)))))

(declare-fun b!1421292 () Bool)

(declare-fun res!643515 () Bool)

(assert (=> b!1421292 (=> (not res!643515) (not e!907226))))

(declare-fun size!12060 (List!14699) Int)

(assert (=> b!1421292 (= res!643515 (= (size!12060 lt!480258) (+ (size!12060 lt!479919) (size!12060 Nil!14633))))))

(declare-fun d!407118 () Bool)

(assert (=> d!407118 e!907226))

(declare-fun res!643514 () Bool)

(assert (=> d!407118 (=> (not res!643514) (not e!907226))))

(declare-fun content!2154 (List!14699) (Set Token!4766))

(assert (=> d!407118 (= res!643514 (= (content!2154 lt!480258) (set.union (content!2154 lt!479919) (content!2154 Nil!14633))))))

(assert (=> d!407118 (= lt!480258 e!907227)))

(declare-fun c!233670 () Bool)

(assert (=> d!407118 (= c!233670 (is-Nil!14633 lt!479919))))

(assert (=> d!407118 (= (++!3859 lt!479919 Nil!14633) lt!480258)))

(assert (= (and d!407118 c!233670) b!1421290))

(assert (= (and d!407118 (not c!233670)) b!1421291))

(assert (= (and d!407118 res!643514) b!1421292))

(assert (= (and b!1421292 res!643515) b!1421293))

(declare-fun m!1611697 () Bool)

(assert (=> b!1421291 m!1611697))

(declare-fun m!1611699 () Bool)

(assert (=> b!1421292 m!1611699))

(declare-fun m!1611701 () Bool)

(assert (=> b!1421292 m!1611701))

(declare-fun m!1611703 () Bool)

(assert (=> b!1421292 m!1611703))

(declare-fun m!1611705 () Bool)

(assert (=> d!407118 m!1611705))

(declare-fun m!1611707 () Bool)

(assert (=> d!407118 m!1611707))

(declare-fun m!1611709 () Bool)

(assert (=> d!407118 m!1611709))

(assert (=> b!1421081 d!407118))

(declare-fun d!407120 () Bool)

(declare-fun lt!480259 () BalanceConc!9800)

(assert (=> d!407120 (= (list!5789 lt!480259) (printList!674 Lexer!2218 (list!5788 (tokens!1865 other!32))))))

(assert (=> d!407120 (= lt!480259 (printTailRec!652 Lexer!2218 (tokens!1865 other!32) 0 (BalanceConc!9801 Empty!4930)))))

(assert (=> d!407120 (= (print!999 Lexer!2218 (tokens!1865 other!32)) lt!480259)))

(declare-fun bs!339790 () Bool)

(assert (= bs!339790 d!407120))

(declare-fun m!1611711 () Bool)

(assert (=> bs!339790 m!1611711))

(assert (=> bs!339790 m!1611007))

(assert (=> bs!339790 m!1611007))

(declare-fun m!1611713 () Bool)

(assert (=> bs!339790 m!1611713))

(assert (=> bs!339790 m!1611019))

(assert (=> b!1421081 d!407120))

(declare-fun d!407122 () Bool)

(declare-fun c!233671 () Bool)

(assert (=> d!407122 (= c!233671 (is-Cons!14633 lt!479919))))

(declare-fun e!907228 () List!14697)

(assert (=> d!407122 (= (printList!674 Lexer!2218 lt!479919) e!907228)))

(declare-fun b!1421294 () Bool)

(assert (=> b!1421294 (= e!907228 (++!3858 (list!5789 (charsOf!1485 (h!20034 lt!479919))) (printList!674 Lexer!2218 (t!124494 lt!479919))))))

(declare-fun b!1421295 () Bool)

(assert (=> b!1421295 (= e!907228 Nil!14631)))

(assert (= (and d!407122 c!233671) b!1421294))

(assert (= (and d!407122 (not c!233671)) b!1421295))

(assert (=> b!1421294 m!1611547))

(assert (=> b!1421294 m!1611547))

(assert (=> b!1421294 m!1611525))

(declare-fun m!1611715 () Bool)

(assert (=> b!1421294 m!1611715))

(assert (=> b!1421294 m!1611525))

(assert (=> b!1421294 m!1611715))

(declare-fun m!1611717 () Bool)

(assert (=> b!1421294 m!1611717))

(assert (=> b!1421081 d!407122))

(declare-fun d!407124 () Bool)

(declare-fun c!233672 () Bool)

(assert (=> d!407124 (= c!233672 (is-Node!4931 (c!233617 (tokens!1865 other!32))))))

(declare-fun e!907229 () Bool)

(assert (=> d!407124 (= (inv!19361 (c!233617 (tokens!1865 other!32))) e!907229)))

(declare-fun b!1421296 () Bool)

(assert (=> b!1421296 (= e!907229 (inv!19367 (c!233617 (tokens!1865 other!32))))))

(declare-fun b!1421297 () Bool)

(declare-fun e!907230 () Bool)

(assert (=> b!1421297 (= e!907229 e!907230)))

(declare-fun res!643516 () Bool)

(assert (=> b!1421297 (= res!643516 (not (is-Leaf!7409 (c!233617 (tokens!1865 other!32)))))))

(assert (=> b!1421297 (=> res!643516 e!907230)))

(declare-fun b!1421298 () Bool)

(assert (=> b!1421298 (= e!907230 (inv!19368 (c!233617 (tokens!1865 other!32))))))

(assert (= (and d!407124 c!233672) b!1421296))

(assert (= (and d!407124 (not c!233672)) b!1421297))

(assert (= (and b!1421297 (not res!643516)) b!1421298))

(declare-fun m!1611719 () Bool)

(assert (=> b!1421296 m!1611719))

(declare-fun m!1611721 () Bool)

(assert (=> b!1421298 m!1611721))

(assert (=> b!1421080 d!407124))

(declare-fun tp!402891 () Bool)

(declare-fun e!907235 () Bool)

(declare-fun tp!402889 () Bool)

(declare-fun b!1421307 () Bool)

(assert (=> b!1421307 (= e!907235 (and (inv!19361 (left!12510 (c!233617 (tokens!1865 thiss!10022)))) tp!402889 (inv!19361 (right!12840 (c!233617 (tokens!1865 thiss!10022)))) tp!402891))))

(declare-fun b!1421309 () Bool)

(declare-fun e!907236 () Bool)

(declare-fun tp!402890 () Bool)

(assert (=> b!1421309 (= e!907236 tp!402890)))

(declare-fun b!1421308 () Bool)

(declare-fun inv!19371 (IArray!9867) Bool)

(assert (=> b!1421308 (= e!907235 (and (inv!19371 (xs!7660 (c!233617 (tokens!1865 thiss!10022)))) e!907236))))

(assert (=> b!1421076 (= tp!402867 (and (inv!19361 (c!233617 (tokens!1865 thiss!10022))) e!907235))))

(assert (= (and b!1421076 (is-Node!4931 (c!233617 (tokens!1865 thiss!10022)))) b!1421307))

(assert (= b!1421308 b!1421309))

(assert (= (and b!1421076 (is-Leaf!7409 (c!233617 (tokens!1865 thiss!10022)))) b!1421308))

(declare-fun m!1611723 () Bool)

(assert (=> b!1421307 m!1611723))

(declare-fun m!1611725 () Bool)

(assert (=> b!1421307 m!1611725))

(declare-fun m!1611727 () Bool)

(assert (=> b!1421308 m!1611727))

(assert (=> b!1421076 m!1611009))

(declare-fun b!1421320 () Bool)

(declare-fun b_free!35015 () Bool)

(declare-fun b_next!35719 () Bool)

(assert (=> b!1421320 (= b_free!35015 (not b_next!35719))))

(declare-fun tp!402900 () Bool)

(declare-fun b_and!95031 () Bool)

(assert (=> b!1421320 (= tp!402900 b_and!95031)))

(declare-fun b_free!35017 () Bool)

(declare-fun b_next!35721 () Bool)

(assert (=> b!1421320 (= b_free!35017 (not b_next!35721))))

(declare-fun t!124501 () Bool)

(declare-fun tb!73593 () Bool)

(assert (=> (and b!1421320 (= (toChars!3710 (transformation!2552 (h!20035 (rules!11173 other!32)))) (toChars!3710 (transformation!2552 (rule!4315 (h!20034 lt!479909))))) t!124501) tb!73593))

(declare-fun b!1421325 () Bool)

(declare-fun e!907251 () Bool)

(declare-fun tp!402906 () Bool)

(declare-fun inv!19372 (Conc!4930) Bool)

(assert (=> b!1421325 (= e!907251 (and (inv!19372 (c!233615 (dynLambda!6729 (toChars!3710 (transformation!2552 (rule!4315 (h!20034 lt!479909)))) (value!82381 (h!20034 lt!479909))))) tp!402906))))

(declare-fun result!89722 () Bool)

(declare-fun inv!19373 (BalanceConc!9800) Bool)

(assert (=> tb!73593 (= result!89722 (and (inv!19373 (dynLambda!6729 (toChars!3710 (transformation!2552 (rule!4315 (h!20034 lt!479909)))) (value!82381 (h!20034 lt!479909)))) e!907251))))

(assert (= tb!73593 b!1421325))

(declare-fun m!1611729 () Bool)

(assert (=> b!1421325 m!1611729))

(declare-fun m!1611731 () Bool)

(assert (=> tb!73593 m!1611731))

(assert (=> d!407040 t!124501))

(declare-fun b_and!95033 () Bool)

(declare-fun tp!402903 () Bool)

(assert (=> b!1421320 (= tp!402903 (and (=> t!124501 result!89722) b_and!95033))))

(declare-fun e!907245 () Bool)

(assert (=> b!1421320 (= e!907245 (and tp!402900 tp!402903))))

(declare-fun b!1421319 () Bool)

(declare-fun e!907246 () Bool)

(declare-fun tp!402902 () Bool)

(declare-fun inv!19358 (String!17468) Bool)

(declare-fun inv!19374 (TokenValueInjection!4944) Bool)

(assert (=> b!1421319 (= e!907246 (and tp!402902 (inv!19358 (tag!2814 (h!20035 (rules!11173 other!32)))) (inv!19374 (transformation!2552 (h!20035 (rules!11173 other!32)))) e!907245))))

(declare-fun b!1421318 () Bool)

(declare-fun e!907248 () Bool)

(declare-fun tp!402901 () Bool)

(assert (=> b!1421318 (= e!907248 (and e!907246 tp!402901))))

(assert (=> b!1421085 (= tp!402870 e!907248)))

(assert (= b!1421319 b!1421320))

(assert (= b!1421318 b!1421319))

(assert (= (and b!1421085 (is-Cons!14634 (rules!11173 other!32))) b!1421318))

(declare-fun m!1611733 () Bool)

(assert (=> b!1421319 m!1611733))

(declare-fun m!1611735 () Bool)

(assert (=> b!1421319 m!1611735))

(declare-fun b!1421328 () Bool)

(declare-fun b_free!35019 () Bool)

(declare-fun b_next!35723 () Bool)

(assert (=> b!1421328 (= b_free!35019 (not b_next!35723))))

(declare-fun tp!402907 () Bool)

(declare-fun b_and!95035 () Bool)

(assert (=> b!1421328 (= tp!402907 b_and!95035)))

(declare-fun b_free!35021 () Bool)

(declare-fun b_next!35725 () Bool)

(assert (=> b!1421328 (= b_free!35021 (not b_next!35725))))

(declare-fun t!124503 () Bool)

(declare-fun tb!73595 () Bool)

(assert (=> (and b!1421328 (= (toChars!3710 (transformation!2552 (h!20035 (rules!11173 thiss!10022)))) (toChars!3710 (transformation!2552 (rule!4315 (h!20034 lt!479909))))) t!124503) tb!73595))

(declare-fun result!89726 () Bool)

(assert (= result!89726 result!89722))

(assert (=> d!407040 t!124503))

(declare-fun b_and!95037 () Bool)

(declare-fun tp!402910 () Bool)

(assert (=> b!1421328 (= tp!402910 (and (=> t!124503 result!89726) b_and!95037))))

(declare-fun e!907252 () Bool)

(assert (=> b!1421328 (= e!907252 (and tp!402907 tp!402910))))

(declare-fun tp!402909 () Bool)

(declare-fun e!907253 () Bool)

(declare-fun b!1421327 () Bool)

(assert (=> b!1421327 (= e!907253 (and tp!402909 (inv!19358 (tag!2814 (h!20035 (rules!11173 thiss!10022)))) (inv!19374 (transformation!2552 (h!20035 (rules!11173 thiss!10022)))) e!907252))))

(declare-fun b!1421326 () Bool)

(declare-fun e!907255 () Bool)

(declare-fun tp!402908 () Bool)

(assert (=> b!1421326 (= e!907255 (and e!907253 tp!402908))))

(assert (=> b!1421086 (= tp!402868 e!907255)))

(assert (= b!1421327 b!1421328))

(assert (= b!1421326 b!1421327))

(assert (= (and b!1421086 (is-Cons!14634 (rules!11173 thiss!10022))) b!1421326))

(declare-fun m!1611737 () Bool)

(assert (=> b!1421327 m!1611737))

(declare-fun m!1611739 () Bool)

(assert (=> b!1421327 m!1611739))

(declare-fun tp!402911 () Bool)

(declare-fun e!907256 () Bool)

(declare-fun tp!402913 () Bool)

(declare-fun b!1421329 () Bool)

(assert (=> b!1421329 (= e!907256 (and (inv!19361 (left!12510 (c!233617 (tokens!1865 other!32)))) tp!402911 (inv!19361 (right!12840 (c!233617 (tokens!1865 other!32)))) tp!402913))))

(declare-fun b!1421331 () Bool)

(declare-fun e!907257 () Bool)

(declare-fun tp!402912 () Bool)

(assert (=> b!1421331 (= e!907257 tp!402912)))

(declare-fun b!1421330 () Bool)

(assert (=> b!1421330 (= e!907256 (and (inv!19371 (xs!7660 (c!233617 (tokens!1865 other!32)))) e!907257))))

(assert (=> b!1421080 (= tp!402869 (and (inv!19361 (c!233617 (tokens!1865 other!32))) e!907256))))

(assert (= (and b!1421080 (is-Node!4931 (c!233617 (tokens!1865 other!32)))) b!1421329))

(assert (= b!1421330 b!1421331))

(assert (= (and b!1421080 (is-Leaf!7409 (c!233617 (tokens!1865 other!32)))) b!1421330))

(declare-fun m!1611741 () Bool)

(assert (=> b!1421329 m!1611741))

(declare-fun m!1611743 () Bool)

(assert (=> b!1421329 m!1611743))

(declare-fun m!1611745 () Bool)

(assert (=> b!1421330 m!1611745))

(assert (=> b!1421080 m!1610961))

(push 1)

(assert (not b!1421139))

(assert (not b!1421275))

(assert (not b!1421318))

(assert (not d!407064))

(assert (not b!1421325))

(assert (not d!407038))

(assert (not b!1421327))

(assert (not b!1421307))

(assert (not d!407062))

(assert (not d!407044))

(assert (not d!407026))

(assert (not b!1421210))

(assert (not b!1421319))

(assert (not b!1421207))

(assert (not d!407034))

(assert (not b!1421331))

(assert (not b!1421208))

(assert (not b!1421204))

(assert (not d!407120))

(assert (not d!407116))

(assert (not b!1421192))

(assert (not d!407048))

(assert (not b!1421131))

(assert b_and!95033)

(assert b_and!95035)

(assert (not b!1421291))

(assert (not b!1421162))

(assert (not b_next!35723))

(assert (not b!1421308))

(assert (not b!1421173))

(assert (not b!1421202))

(assert (not d!407040))

(assert (not b!1421205))

(assert (not b!1421326))

(assert (not b!1421281))

(assert (not d!407054))

(assert (not b!1421214))

(assert (not b!1421203))

(assert (not b!1421175))

(assert (not b!1421294))

(assert (not b!1421276))

(assert (not d!407036))

(assert (not b_next!35725))

(assert b_and!95031)

(assert (not d!407046))

(assert (not d!407060))

(assert (not b!1421141))

(assert (not b!1421160))

(assert (not b!1421194))

(assert (not b!1421076))

(assert (not b!1421330))

(assert (not d!407068))

(assert (not b!1421193))

(assert (not b_next!35719))

(assert (not b_lambda!44627))

(assert (not b!1421280))

(assert (not d!407112))

(assert (not b!1421298))

(assert (not b!1421274))

(assert (not b!1421197))

(assert (not d!407114))

(assert (not b!1421309))

(assert (not d!407058))

(assert (not b!1421172))

(assert (not b!1421329))

(assert (not d!407056))

(assert (not b!1421196))

(assert (not b!1421296))

(assert (not b_next!35721))

(assert (not b!1421195))

(assert b_and!95037)

(assert (not b!1421292))

(assert (not d!407052))

(assert (not d!407118))

(assert (not b!1421080))

(assert (not d!407072))

(assert (not tb!73593))

(assert (not d!407070))

(assert (not b!1421279))

(check-sat)

(pop 1)

(push 1)

(assert b_and!95033)

(assert (not b_next!35725))

(assert b_and!95031)

(assert (not b_next!35719))

(assert (not b_next!35721))

(assert b_and!95037)

(assert b_and!95035)

(assert (not b_next!35723))

(check-sat)

(pop 1)

