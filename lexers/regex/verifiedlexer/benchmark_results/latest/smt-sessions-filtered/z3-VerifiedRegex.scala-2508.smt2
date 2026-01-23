; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132824 () Bool)

(assert start!132824)

(declare-fun res!649339 () Bool)

(declare-fun e!915348 () Bool)

(assert (=> start!132824 (=> (not res!649339) (not e!915348))))

(declare-datatypes ((C!8036 0))(
  ( (C!8037 (val!4588 Int)) )
))
(declare-datatypes ((List!14962 0))(
  ( (Nil!14896) (Cons!14896 (h!20297 C!8036) (t!127205 List!14962)) )
))
(declare-datatypes ((IArray!10117 0))(
  ( (IArray!10118 (innerList!5116 List!14962)) )
))
(declare-datatypes ((Conc!5056 0))(
  ( (Node!5056 (left!12698 Conc!5056) (right!13028 Conc!5056) (csize!10342 Int) (cheight!5267 Int)) (Leaf!7565 (xs!7789 IArray!10117) (csize!10343 Int)) (Empty!5056) )
))
(declare-datatypes ((BalanceConc!10052 0))(
  ( (BalanceConc!10053 (c!235628 Conc!5056)) )
))
(declare-datatypes ((List!14963 0))(
  ( (Nil!14897) (Cons!14897 (h!20298 (_ BitVec 16)) (t!127206 List!14963)) )
))
(declare-datatypes ((TokenValue!2705 0))(
  ( (FloatLiteralValue!5410 (text!19380 List!14963)) (TokenValueExt!2704 (__x!9208 Int)) (Broken!13525 (value!84149 List!14963)) (Object!2770) (End!2705) (Def!2705) (Underscore!2705) (Match!2705) (Else!2705) (Error!2705) (Case!2705) (If!2705) (Extends!2705) (Abstract!2705) (Class!2705) (Val!2705) (DelimiterValue!5410 (del!2765 List!14963)) (KeywordValue!2711 (value!84150 List!14963)) (CommentValue!5410 (value!84151 List!14963)) (WhitespaceValue!5410 (value!84152 List!14963)) (IndentationValue!2705 (value!84153 List!14963)) (String!17780) (Int32!2705) (Broken!13526 (value!84154 List!14963)) (Boolean!2706) (Unit!22744) (OperatorValue!2708 (op!2765 List!14963)) (IdentifierValue!5410 (value!84155 List!14963)) (IdentifierValue!5411 (value!84156 List!14963)) (WhitespaceValue!5411 (value!84157 List!14963)) (True!5410) (False!5410) (Broken!13527 (value!84158 List!14963)) (Broken!13528 (value!84159 List!14963)) (True!5411) (RightBrace!2705) (RightBracket!2705) (Colon!2705) (Null!2705) (Comma!2705) (LeftBracket!2705) (False!5411) (LeftBrace!2705) (ImaginaryLiteralValue!2705 (text!19381 List!14963)) (StringLiteralValue!8115 (value!84160 List!14963)) (EOFValue!2705 (value!84161 List!14963)) (IdentValue!2705 (value!84162 List!14963)) (DelimiterValue!5411 (value!84163 List!14963)) (DedentValue!2705 (value!84164 List!14963)) (NewLineValue!2705 (value!84165 List!14963)) (IntegerValue!8115 (value!84166 (_ BitVec 32)) (text!19382 List!14963)) (IntegerValue!8116 (value!84167 Int) (text!19383 List!14963)) (Times!2705) (Or!2705) (Equal!2705) (Minus!2705) (Broken!13529 (value!84168 List!14963)) (And!2705) (Div!2705) (LessEqual!2705) (Mod!2705) (Concat!6634) (Not!2705) (Plus!2705) (SpaceValue!2705 (value!84169 List!14963)) (IntegerValue!8117 (value!84170 Int) (text!19384 List!14963)) (StringLiteralValue!8116 (text!19385 List!14963)) (FloatLiteralValue!5411 (text!19386 List!14963)) (BytesLiteralValue!2705 (value!84171 List!14963)) (CommentValue!5411 (value!84172 List!14963)) (StringLiteralValue!8117 (value!84173 List!14963)) (ErrorTokenValue!2705 (msg!2766 List!14963)) )
))
(declare-datatypes ((Regex!3929 0))(
  ( (ElementMatch!3929 (c!235629 C!8036)) (Concat!6635 (regOne!8370 Regex!3929) (regTwo!8370 Regex!3929)) (EmptyExpr!3929) (Star!3929 (reg!4258 Regex!3929)) (EmptyLang!3929) (Union!3929 (regOne!8371 Regex!3929) (regTwo!8371 Regex!3929)) )
))
(declare-datatypes ((String!17781 0))(
  ( (String!17782 (value!84174 String)) )
))
(declare-datatypes ((TokenValueInjection!5070 0))(
  ( (TokenValueInjection!5071 (toValue!3918 Int) (toChars!3777 Int)) )
))
(declare-datatypes ((Rule!5030 0))(
  ( (Rule!5031 (regex!2615 Regex!3929) (tag!2877 String!17781) (isSeparator!2615 Bool) (transformation!2615 TokenValueInjection!5070)) )
))
(declare-datatypes ((Token!4892 0))(
  ( (Token!4893 (value!84175 TokenValue!2705) (rule!4378 Rule!5030) (size!12227 Int) (originalCharacters!3477 List!14962)) )
))
(declare-datatypes ((List!14964 0))(
  ( (Nil!14898) (Cons!14898 (h!20299 Token!4892) (t!127207 List!14964)) )
))
(declare-datatypes ((IArray!10119 0))(
  ( (IArray!10120 (innerList!5117 List!14964)) )
))
(declare-datatypes ((Conc!5057 0))(
  ( (Node!5057 (left!12699 Conc!5057) (right!13029 Conc!5057) (csize!10344 Int) (cheight!5268 Int)) (Leaf!7566 (xs!7790 IArray!10119) (csize!10345 Int)) (Empty!5057) )
))
(declare-datatypes ((BalanceConc!10054 0))(
  ( (BalanceConc!10055 (c!235630 Conc!5057)) )
))
(declare-datatypes ((List!14965 0))(
  ( (Nil!14899) (Cons!14899 (h!20300 Rule!5030) (t!127208 List!14965)) )
))
(declare-datatypes ((PrintableTokens!1012 0))(
  ( (PrintableTokens!1013 (rules!11396 List!14965) (tokens!1976 BalanceConc!10054)) )
))
(declare-fun thiss!10022 () PrintableTokens!1012)

(declare-fun other!32 () PrintableTokens!1012)

(assert (=> start!132824 (= res!649339 (= (rules!11396 thiss!10022) (rules!11396 other!32)))))

(assert (=> start!132824 e!915348))

(declare-fun e!915343 () Bool)

(declare-fun inv!19792 (PrintableTokens!1012) Bool)

(assert (=> start!132824 (and (inv!19792 thiss!10022) e!915343)))

(declare-fun e!915347 () Bool)

(assert (=> start!132824 (and (inv!19792 other!32) e!915347)))

(declare-fun b!1433921 () Bool)

(declare-fun e!915344 () Bool)

(declare-fun tp!406293 () Bool)

(declare-fun inv!19793 (Conc!5057) Bool)

(assert (=> b!1433921 (= e!915344 (and (inv!19793 (c!235630 (tokens!1976 other!32))) tp!406293))))

(declare-fun b!1433922 () Bool)

(declare-fun res!649336 () Bool)

(declare-fun e!915346 () Bool)

(assert (=> b!1433922 (=> (not res!649336) (not e!915346))))

(declare-fun isEmpty!9261 (BalanceConc!10054) Bool)

(assert (=> b!1433922 (= res!649336 (not (isEmpty!9261 (tokens!1976 thiss!10022))))))

(declare-fun b!1433923 () Bool)

(declare-fun e!915345 () Bool)

(assert (=> b!1433923 (= e!915346 (not e!915345))))

(declare-fun res!649337 () Bool)

(assert (=> b!1433923 (=> res!649337 e!915345)))

(declare-fun lt!488998 () Token!4892)

(declare-fun lt!488995 () Token!4892)

(declare-datatypes ((LexerInterface!2279 0))(
  ( (LexerInterfaceExt!2276 (__x!9209 Int)) (Lexer!2277) )
))
(declare-fun separableTokensPredicate!514 (LexerInterface!2279 Token!4892 Token!4892 List!14965) Bool)

(assert (=> b!1433923 (= res!649337 (separableTokensPredicate!514 Lexer!2277 lt!488995 lt!488998 (rules!11396 thiss!10022)))))

(declare-fun rulesProduceIndividualToken!1212 (LexerInterface!2279 List!14965 Token!4892) Bool)

(assert (=> b!1433923 (rulesProduceIndividualToken!1212 Lexer!2277 (rules!11396 thiss!10022) lt!488998)))

(declare-fun lt!488991 () List!14964)

(declare-datatypes ((Unit!22745 0))(
  ( (Unit!22746) )
))
(declare-fun lt!488994 () Unit!22745)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!397 (LexerInterface!2279 List!14965 List!14964 Token!4892) Unit!22745)

(assert (=> b!1433923 (= lt!488994 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!397 Lexer!2277 (rules!11396 thiss!10022) lt!488991 lt!488998))))

(declare-fun head!2899 (BalanceConc!10054) Token!4892)

(assert (=> b!1433923 (= lt!488998 (head!2899 (tokens!1976 other!32)))))

(declare-fun list!5924 (BalanceConc!10054) List!14964)

(assert (=> b!1433923 (= lt!488991 (list!5924 (tokens!1976 other!32)))))

(assert (=> b!1433923 (rulesProduceIndividualToken!1212 Lexer!2277 (rules!11396 thiss!10022) lt!488995)))

(declare-fun lt!488993 () List!14964)

(declare-fun lt!488997 () Unit!22745)

(assert (=> b!1433923 (= lt!488997 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!397 Lexer!2277 (rules!11396 thiss!10022) lt!488993 lt!488995))))

(declare-fun last!169 (BalanceConc!10054) Token!4892)

(assert (=> b!1433923 (= lt!488995 (last!169 (tokens!1976 thiss!10022)))))

(assert (=> b!1433923 (= lt!488993 (list!5924 (tokens!1976 thiss!10022)))))

(declare-fun b!1433924 () Bool)

(assert (=> b!1433924 (= e!915348 e!915346)))

(declare-fun res!649338 () Bool)

(assert (=> b!1433924 (=> (not res!649338) (not e!915346))))

(assert (=> b!1433924 (= res!649338 (not (isEmpty!9261 (tokens!1976 other!32))))))

(declare-fun lt!488996 () Unit!22745)

(declare-fun lemmaInvariant!311 (PrintableTokens!1012) Unit!22745)

(assert (=> b!1433924 (= lt!488996 (lemmaInvariant!311 thiss!10022))))

(declare-fun lt!488992 () Unit!22745)

(assert (=> b!1433924 (= lt!488992 (lemmaInvariant!311 other!32))))

(declare-fun b!1433925 () Bool)

(declare-fun e!915349 () Bool)

(declare-fun tp!406296 () Bool)

(assert (=> b!1433925 (= e!915349 (and (inv!19793 (c!235630 (tokens!1976 thiss!10022))) tp!406296))))

(declare-fun b!1433926 () Bool)

(assert (=> b!1433926 (= e!915345 true)))

(declare-fun b!1433927 () Bool)

(declare-fun tp!406295 () Bool)

(declare-fun inv!19794 (BalanceConc!10054) Bool)

(assert (=> b!1433927 (= e!915347 (and tp!406295 (inv!19794 (tokens!1976 other!32)) e!915344))))

(declare-fun b!1433928 () Bool)

(declare-fun tp!406294 () Bool)

(assert (=> b!1433928 (= e!915343 (and tp!406294 (inv!19794 (tokens!1976 thiss!10022)) e!915349))))

(assert (= (and start!132824 res!649339) b!1433924))

(assert (= (and b!1433924 res!649338) b!1433922))

(assert (= (and b!1433922 res!649336) b!1433923))

(assert (= (and b!1433923 (not res!649337)) b!1433926))

(assert (= b!1433928 b!1433925))

(assert (= start!132824 b!1433928))

(assert (= b!1433927 b!1433921))

(assert (= start!132824 b!1433927))

(declare-fun m!1636727 () Bool)

(assert (=> b!1433921 m!1636727))

(declare-fun m!1636729 () Bool)

(assert (=> b!1433924 m!1636729))

(declare-fun m!1636731 () Bool)

(assert (=> b!1433924 m!1636731))

(declare-fun m!1636733 () Bool)

(assert (=> b!1433924 m!1636733))

(declare-fun m!1636735 () Bool)

(assert (=> b!1433923 m!1636735))

(declare-fun m!1636737 () Bool)

(assert (=> b!1433923 m!1636737))

(declare-fun m!1636739 () Bool)

(assert (=> b!1433923 m!1636739))

(declare-fun m!1636741 () Bool)

(assert (=> b!1433923 m!1636741))

(declare-fun m!1636743 () Bool)

(assert (=> b!1433923 m!1636743))

(declare-fun m!1636745 () Bool)

(assert (=> b!1433923 m!1636745))

(declare-fun m!1636747 () Bool)

(assert (=> b!1433923 m!1636747))

(declare-fun m!1636749 () Bool)

(assert (=> b!1433923 m!1636749))

(declare-fun m!1636751 () Bool)

(assert (=> b!1433923 m!1636751))

(declare-fun m!1636753 () Bool)

(assert (=> b!1433928 m!1636753))

(declare-fun m!1636755 () Bool)

(assert (=> start!132824 m!1636755))

(declare-fun m!1636757 () Bool)

(assert (=> start!132824 m!1636757))

(declare-fun m!1636759 () Bool)

(assert (=> b!1433927 m!1636759))

(declare-fun m!1636761 () Bool)

(assert (=> b!1433922 m!1636761))

(declare-fun m!1636763 () Bool)

(assert (=> b!1433925 m!1636763))

(check-sat (not b!1433924) (not b!1433923) (not b!1433925) (not start!132824) (not b!1433928) (not b!1433921) (not b!1433922) (not b!1433927))
(check-sat)
