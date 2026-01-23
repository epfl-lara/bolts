; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!188824 () Bool)

(assert start!188824)

(declare-fun b!1885847 () Bool)

(declare-fun e!1203229 () Bool)

(declare-fun from!519 () Int)

(declare-datatypes ((List!21076 0))(
  ( (Nil!20994) (Cons!20994 (h!26395 (_ BitVec 16)) (t!175075 List!21076)) )
))
(declare-datatypes ((TokenValue!3853 0))(
  ( (FloatLiteralValue!7706 (text!27416 List!21076)) (TokenValueExt!3852 (__x!13213 Int)) (Broken!19265 (value!117405 List!21076)) (Object!3934) (End!3853) (Def!3853) (Underscore!3853) (Match!3853) (Else!3853) (Error!3853) (Case!3853) (If!3853) (Extends!3853) (Abstract!3853) (Class!3853) (Val!3853) (DelimiterValue!7706 (del!3913 List!21076)) (KeywordValue!3859 (value!117406 List!21076)) (CommentValue!7706 (value!117407 List!21076)) (WhitespaceValue!7706 (value!117408 List!21076)) (IndentationValue!3853 (value!117409 List!21076)) (String!24256) (Int32!3853) (Broken!19266 (value!117410 List!21076)) (Boolean!3854) (Unit!35466) (OperatorValue!3856 (op!3913 List!21076)) (IdentifierValue!7706 (value!117411 List!21076)) (IdentifierValue!7707 (value!117412 List!21076)) (WhitespaceValue!7707 (value!117413 List!21076)) (True!7706) (False!7706) (Broken!19267 (value!117414 List!21076)) (Broken!19268 (value!117415 List!21076)) (True!7707) (RightBrace!3853) (RightBracket!3853) (Colon!3853) (Null!3853) (Comma!3853) (LeftBracket!3853) (False!7707) (LeftBrace!3853) (ImaginaryLiteralValue!3853 (text!27417 List!21076)) (StringLiteralValue!11559 (value!117416 List!21076)) (EOFValue!3853 (value!117417 List!21076)) (IdentValue!3853 (value!117418 List!21076)) (DelimiterValue!7707 (value!117419 List!21076)) (DedentValue!3853 (value!117420 List!21076)) (NewLineValue!3853 (value!117421 List!21076)) (IntegerValue!11559 (value!117422 (_ BitVec 32)) (text!27418 List!21076)) (IntegerValue!11560 (value!117423 Int) (text!27419 List!21076)) (Times!3853) (Or!3853) (Equal!3853) (Minus!3853) (Broken!19269 (value!117424 List!21076)) (And!3853) (Div!3853) (LessEqual!3853) (Mod!3853) (Concat!8995) (Not!3853) (Plus!3853) (SpaceValue!3853 (value!117425 List!21076)) (IntegerValue!11561 (value!117426 Int) (text!27420 List!21076)) (StringLiteralValue!11560 (text!27421 List!21076)) (FloatLiteralValue!7707 (text!27422 List!21076)) (BytesLiteralValue!3853 (value!117427 List!21076)) (CommentValue!7707 (value!117428 List!21076)) (StringLiteralValue!11561 (value!117429 List!21076)) (ErrorTokenValue!3853 (msg!3914 List!21076)) )
))
(declare-datatypes ((Regex!5142 0))(
  ( (ElementMatch!5142 (c!308052 (_ BitVec 16))) (Concat!8996 (regOne!10796 Regex!5142) (regTwo!10796 Regex!5142)) (EmptyExpr!5142) (Star!5142 (reg!5471 Regex!5142)) (EmptyLang!5142) (Union!5142 (regOne!10797 Regex!5142) (regTwo!10797 Regex!5142)) )
))
(declare-datatypes ((String!24257 0))(
  ( (String!24258 (value!117430 String)) )
))
(declare-datatypes ((IArray!13965 0))(
  ( (IArray!13966 (innerList!7040 List!21076)) )
))
(declare-datatypes ((Conc!6980 0))(
  ( (Node!6980 (left!16865 Conc!6980) (right!17195 Conc!6980) (csize!14190 Int) (cheight!7191 Int)) (Leaf!10270 (xs!9870 IArray!13965) (csize!14191 Int)) (Empty!6980) )
))
(declare-datatypes ((BalanceConc!13776 0))(
  ( (BalanceConc!13777 (c!308053 Conc!6980)) )
))
(declare-datatypes ((TokenValueInjection!7290 0))(
  ( (TokenValueInjection!7291 (toValue!5322 Int) (toChars!5181 Int)) )
))
(declare-datatypes ((Rule!7234 0))(
  ( (Rule!7235 (regex!3717 Regex!5142) (tag!4131 String!24257) (isSeparator!3717 Bool) (transformation!3717 TokenValueInjection!7290)) )
))
(declare-datatypes ((Token!6986 0))(
  ( (Token!6987 (value!117431 TokenValue!3853) (rule!5910 Rule!7234) (size!16684 Int) (originalCharacters!4524 List!21076)) )
))
(declare-datatypes ((List!21077 0))(
  ( (Nil!20995) (Cons!20995 (h!26396 Token!6986) (t!175076 List!21077)) )
))
(declare-datatypes ((IArray!13967 0))(
  ( (IArray!13968 (innerList!7041 List!21077)) )
))
(declare-datatypes ((Conc!6981 0))(
  ( (Node!6981 (left!16866 Conc!6981) (right!17196 Conc!6981) (csize!14192 Int) (cheight!7192 Int)) (Leaf!10271 (xs!9871 IArray!13967) (csize!14193 Int)) (Empty!6981) )
))
(declare-datatypes ((List!21078 0))(
  ( (Nil!20996) (Cons!20996 (h!26397 Rule!7234) (t!175077 List!21078)) )
))
(declare-datatypes ((BalanceConc!13778 0))(
  ( (BalanceConc!13779 (c!308054 Conc!6981)) )
))
(declare-datatypes ((PrintableTokens!1246 0))(
  ( (PrintableTokens!1247 (rules!15063 List!21078) (tokens!2455 BalanceConc!13778)) )
))
(declare-fun obj!5 () PrintableTokens!1246)

(declare-fun size!16685 (BalanceConc!13778) Int)

(assert (=> b!1885847 (= e!1203229 (>= from!519 (size!16685 (tokens!2455 obj!5))))))

(declare-fun res!841706 () Bool)

(declare-fun e!1203228 () Bool)

(assert (=> start!188824 (=> (not res!841706) (not e!1203228))))

(assert (=> start!188824 (= res!841706 (<= 0 from!519))))

(assert (=> start!188824 e!1203228))

(assert (=> start!188824 true))

(declare-fun e!1203230 () Bool)

(declare-fun inv!27985 (PrintableTokens!1246) Bool)

(assert (=> start!188824 (and (inv!27985 obj!5) e!1203230)))

(declare-fun e!1203227 () Bool)

(declare-fun tp!537635 () Bool)

(declare-fun b!1885848 () Bool)

(declare-fun inv!27986 (BalanceConc!13778) Bool)

(assert (=> b!1885848 (= e!1203230 (and tp!537635 (inv!27986 (tokens!2455 obj!5)) e!1203227))))

(declare-fun b!1885849 () Bool)

(declare-fun tp!537636 () Bool)

(declare-fun inv!27987 (Conc!6981) Bool)

(assert (=> b!1885849 (= e!1203227 (and (inv!27987 (c!308054 (tokens!2455 obj!5))) tp!537636))))

(declare-fun b!1885846 () Bool)

(assert (=> b!1885846 (= e!1203228 e!1203229)))

(declare-fun res!841707 () Bool)

(assert (=> b!1885846 (=> (not res!841707) (not e!1203229))))

(declare-fun lt!723424 () Int)

(assert (=> b!1885846 (= res!841707 (and (<= from!519 lt!723424) (< from!519 lt!723424)))))

(declare-fun size!16686 (PrintableTokens!1246) Int)

(assert (=> b!1885846 (= lt!723424 (size!16686 obj!5))))

(assert (= (and start!188824 res!841706) b!1885846))

(assert (= (and b!1885846 res!841707) b!1885847))

(assert (= b!1885848 b!1885849))

(assert (= start!188824 b!1885848))

(declare-fun m!2318697 () Bool)

(assert (=> b!1885849 m!2318697))

(declare-fun m!2318699 () Bool)

(assert (=> b!1885847 m!2318699))

(declare-fun m!2318701 () Bool)

(assert (=> b!1885848 m!2318701))

(declare-fun m!2318703 () Bool)

(assert (=> b!1885846 m!2318703))

(declare-fun m!2318705 () Bool)

(assert (=> start!188824 m!2318705))

(push 1)

(assert (not b!1885849))

(assert (not start!188824))

(assert (not b!1885847))

(assert (not b!1885848))

(assert (not b!1885846))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!577908 () Bool)

(declare-fun c!308060 () Bool)

(assert (=> d!577908 (= c!308060 (is-Node!6981 (c!308054 (tokens!2455 obj!5))))))

(declare-fun e!1203247 () Bool)

(assert (=> d!577908 (= (inv!27987 (c!308054 (tokens!2455 obj!5))) e!1203247)))

(declare-fun b!1885868 () Bool)

(declare-fun inv!27991 (Conc!6981) Bool)

(assert (=> b!1885868 (= e!1203247 (inv!27991 (c!308054 (tokens!2455 obj!5))))))

(declare-fun b!1885869 () Bool)

(declare-fun e!1203248 () Bool)

(assert (=> b!1885869 (= e!1203247 e!1203248)))

(declare-fun res!841716 () Bool)

(assert (=> b!1885869 (= res!841716 (not (is-Leaf!10271 (c!308054 (tokens!2455 obj!5)))))))

(assert (=> b!1885869 (=> res!841716 e!1203248)))

(declare-fun b!1885870 () Bool)

(declare-fun inv!27992 (Conc!6981) Bool)

(assert (=> b!1885870 (= e!1203248 (inv!27992 (c!308054 (tokens!2455 obj!5))))))

(assert (= (and d!577908 c!308060) b!1885868))

(assert (= (and d!577908 (not c!308060)) b!1885869))

(assert (= (and b!1885869 (not res!841716)) b!1885870))

(declare-fun m!2318717 () Bool)

(assert (=> b!1885868 m!2318717))

(declare-fun m!2318719 () Bool)

(assert (=> b!1885870 m!2318719))

(assert (=> b!1885849 d!577908))

(declare-fun d!577912 () Bool)

(declare-fun isBalanced!2211 (Conc!6981) Bool)

(assert (=> d!577912 (= (inv!27986 (tokens!2455 obj!5)) (isBalanced!2211 (c!308054 (tokens!2455 obj!5))))))

(declare-fun bs!412935 () Bool)

(assert (= bs!412935 d!577912))

(declare-fun m!2318721 () Bool)

(assert (=> bs!412935 m!2318721))

(assert (=> b!1885848 d!577912))

(declare-fun d!577914 () Bool)

(assert (=> d!577914 (= (size!16686 obj!5) (size!16685 (tokens!2455 obj!5)))))

(declare-fun bs!412936 () Bool)

(assert (= bs!412936 d!577914))

(assert (=> bs!412936 m!2318699))

(assert (=> b!1885846 d!577914))

(declare-fun d!577916 () Bool)

(declare-fun res!841723 () Bool)

(declare-fun e!1203251 () Bool)

(assert (=> d!577916 (=> (not res!841723) (not e!1203251))))

(declare-fun isEmpty!12991 (List!21078) Bool)

(assert (=> d!577916 (= res!841723 (not (isEmpty!12991 (rules!15063 obj!5))))))

(assert (=> d!577916 (= (inv!27985 obj!5) e!1203251)))

(declare-fun b!1885877 () Bool)

(declare-fun res!841724 () Bool)

(assert (=> b!1885877 (=> (not res!841724) (not e!1203251))))

(declare-datatypes ((LexerInterface!3339 0))(
  ( (LexerInterfaceExt!3336 (__x!13215 Int)) (Lexer!3337) )
))
(declare-fun rulesInvariant!2972 (LexerInterface!3339 List!21078) Bool)

(assert (=> b!1885877 (= res!841724 (rulesInvariant!2972 Lexer!3337 (rules!15063 obj!5)))))

(declare-fun b!1885878 () Bool)

(declare-fun res!841725 () Bool)

(assert (=> b!1885878 (=> (not res!841725) (not e!1203251))))

(declare-fun rulesProduceEachTokenIndividually!924 (LexerInterface!3339 List!21078 BalanceConc!13778) Bool)

(assert (=> b!1885878 (= res!841725 (rulesProduceEachTokenIndividually!924 Lexer!3337 (rules!15063 obj!5) (tokens!2455 obj!5)))))

(declare-fun b!1885879 () Bool)

(declare-fun separableTokens!295 (LexerInterface!3339 BalanceConc!13778 List!21078) Bool)

(assert (=> b!1885879 (= e!1203251 (separableTokens!295 Lexer!3337 (tokens!2455 obj!5) (rules!15063 obj!5)))))

(assert (= (and d!577916 res!841723) b!1885877))

(assert (= (and b!1885877 res!841724) b!1885878))

(assert (= (and b!1885878 res!841725) b!1885879))

(declare-fun m!2318723 () Bool)

(assert (=> d!577916 m!2318723))

(declare-fun m!2318725 () Bool)

(assert (=> b!1885877 m!2318725))

(declare-fun m!2318727 () Bool)

(assert (=> b!1885878 m!2318727))

(declare-fun m!2318729 () Bool)

(assert (=> b!1885879 m!2318729))

(assert (=> start!188824 d!577916))

(declare-fun d!577920 () Bool)

(declare-fun lt!723430 () Int)

(declare-fun size!16690 (List!21077) Int)

(declare-fun list!8566 (BalanceConc!13778) List!21077)

(assert (=> d!577920 (= lt!723430 (size!16690 (list!8566 (tokens!2455 obj!5))))))

(declare-fun size!16691 (Conc!6981) Int)

(assert (=> d!577920 (= lt!723430 (size!16691 (c!308054 (tokens!2455 obj!5))))))

(assert (=> d!577920 (= (size!16685 (tokens!2455 obj!5)) lt!723430)))

(declare-fun bs!412938 () Bool)

(assert (= bs!412938 d!577920))

(declare-fun m!2318731 () Bool)

(assert (=> bs!412938 m!2318731))

(assert (=> bs!412938 m!2318731))

(declare-fun m!2318733 () Bool)

(assert (=> bs!412938 m!2318733))

(declare-fun m!2318735 () Bool)

(assert (=> bs!412938 m!2318735))

(assert (=> b!1885847 d!577920))

(declare-fun tp!537649 () Bool)

(declare-fun b!1885888 () Bool)

(declare-fun e!1203256 () Bool)

(declare-fun tp!537650 () Bool)

(assert (=> b!1885888 (= e!1203256 (and (inv!27987 (left!16866 (c!308054 (tokens!2455 obj!5)))) tp!537650 (inv!27987 (right!17196 (c!308054 (tokens!2455 obj!5)))) tp!537649))))

(declare-fun b!1885890 () Bool)

(declare-fun e!1203257 () Bool)

(declare-fun tp!537651 () Bool)

(assert (=> b!1885890 (= e!1203257 tp!537651)))

(declare-fun b!1885889 () Bool)

(declare-fun inv!27993 (IArray!13967) Bool)

(assert (=> b!1885889 (= e!1203256 (and (inv!27993 (xs!9871 (c!308054 (tokens!2455 obj!5)))) e!1203257))))

(assert (=> b!1885849 (= tp!537636 (and (inv!27987 (c!308054 (tokens!2455 obj!5))) e!1203256))))

(assert (= (and b!1885849 (is-Node!6981 (c!308054 (tokens!2455 obj!5)))) b!1885888))

(assert (= b!1885889 b!1885890))

(assert (= (and b!1885849 (is-Leaf!10271 (c!308054 (tokens!2455 obj!5)))) b!1885889))

(declare-fun m!2318737 () Bool)

(assert (=> b!1885888 m!2318737))

(declare-fun m!2318739 () Bool)

(assert (=> b!1885888 m!2318739))

(declare-fun m!2318741 () Bool)

(assert (=> b!1885889 m!2318741))

(assert (=> b!1885849 m!2318697))

(declare-fun b!1885901 () Bool)

(declare-fun b_free!52461 () Bool)

(declare-fun b_next!53165 () Bool)

(assert (=> b!1885901 (= b_free!52461 (not b_next!53165))))

(declare-fun tp!537660 () Bool)

(declare-fun b_and!145251 () Bool)

(assert (=> b!1885901 (= tp!537660 b_and!145251)))

(declare-fun b_free!52463 () Bool)

(declare-fun b_next!53167 () Bool)

(assert (=> b!1885901 (= b_free!52463 (not b_next!53167))))

(declare-fun tp!537658 () Bool)

(declare-fun b_and!145253 () Bool)

(assert (=> b!1885901 (= tp!537658 b_and!145253)))

(declare-fun e!1203268 () Bool)

(assert (=> b!1885901 (= e!1203268 (and tp!537660 tp!537658))))

(declare-fun b!1885900 () Bool)

(declare-fun e!1203267 () Bool)

(declare-fun inv!27982 (String!24257) Bool)

(declare-fun inv!27994 (TokenValueInjection!7290) Bool)

(assert (=> b!1885900 (= e!1203267 (and (inv!27982 (tag!4131 (h!26397 (rules!15063 obj!5)))) (inv!27994 (transformation!3717 (h!26397 (rules!15063 obj!5)))) e!1203268))))

(declare-fun b!1885899 () Bool)

(declare-fun e!1203269 () Bool)

(declare-fun tp!537659 () Bool)

(assert (=> b!1885899 (= e!1203269 (and e!1203267 tp!537659))))

(assert (=> b!1885848 (= tp!537635 e!1203269)))

(assert (= b!1885900 b!1885901))

(assert (= b!1885899 b!1885900))

(assert (= (and b!1885848 (is-Cons!20996 (rules!15063 obj!5))) b!1885899))

(declare-fun m!2318743 () Bool)

(assert (=> b!1885900 m!2318743))

(declare-fun m!2318745 () Bool)

(assert (=> b!1885900 m!2318745))

(push 1)

(assert (not b_next!53165))

(assert (not b!1885890))

(assert (not b!1885868))

(assert (not b!1885889))

(assert (not b!1885877))

(assert (not b!1885899))

(assert (not d!577912))

(assert (not b!1885879))

(assert (not b!1885888))

(assert (not d!577916))

(assert b_and!145253)

(assert (not b_next!53167))

(assert b_and!145251)

(assert (not b!1885870))

(assert (not b!1885849))

(assert (not b!1885878))

(assert (not b!1885900))

(assert (not d!577920))

(assert (not d!577914))

(check-sat)

(pop 1)

(push 1)

(assert b_and!145253)

(assert b_and!145251)

(assert (not b_next!53167))

(assert (not b_next!53165))

(check-sat)

(pop 1)

